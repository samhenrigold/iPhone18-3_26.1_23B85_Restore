uint64_t sub_2520D6848(char a1)
{
  v3 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_2520D68F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = type metadata accessor for ContinuationItem(0);
  v7 = v6 - 8;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = sub_2521418EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock);
  [v18 lock];
  sub_2521418DC();
  (*(v14 + 16))(v12, v17, v13);
  v19 = &v12[*(v7 + 28)];
  *v19 = a1;
  *(v19 + 1) = a2;

  v20 = sub_2520CF318(v32);
  if (*v21)
  {
    v22 = v21;
    v29 = v20;
    sub_2520DAD24(v12, v9);
    v23 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_25209992C(0, v23[2] + 1, 1, v23);
      *v22 = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_25209992C((v25 > 1), v26 + 1, 1, v23);
      *v22 = v23;
    }

    v23[2] = v26 + 1;
    sub_2520DAD88(v9, v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26);
    (v29)(v32, 0);
  }

  else
  {
    (v20)(v32, 0);
  }

  sub_2520DADEC(v12);
  (*(v14 + 32))(v31, v17, v13);
  return [v18 unlock];
}

id sub_2520D6BD4(uint64_t *a1, void *a2)
{
  v66 = a2;
  v62 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE068, &qword_252144AD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - v5;
  v7 = sub_2521418EC();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContinuationItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v68 = &v56 - v15;
  v16 = *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock);
  [v16 lock];
  v17 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache;
  v18 = swift_beginAccess();
  v19 = *(v2 + v17);
  if (!v19 || (v67 = v10, v20 = v16, v21 = v6, MEMORY[0x28223BE20](v18), *(&v56 - 2) = a1, , v61 = sub_2520CEF6C(sub_2520DACF4, (&v56 - 4), v19), v23 = v22, result = , v25 = v21, v16 = v20, v26 = v9, v27 = v67, (v23 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE070, &qword_252144AE0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_252143AC0;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 32) = 0xD000000000000010;
    *(v28 + 40) = 0x800000025214A070;
    sub_25214252C();

    return [v16 unlock];
  }

  v29 = *(v2 + v17);
  v30 = v61;
  if (!v29)
  {
LABEL_14:
    v53 = sub_2520CF318(v69);
    if (*v54)
    {
      sub_2520D725C(v30, v25);
      (v53)(v69, 0);
      v55 = 0;
    }

    else
    {
      (v53)(v69, 0);
      v55 = 1;
    }

    (*(v27 + 56))(v25, v55, 1, v26);
    sub_2520A2584(v25, &qword_27F4CE068, &qword_252144AD8);
    return [v16 unlock];
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    v59 = v25;
    v60 = v26;
    v32 = v66;
    if (v61 < *(v29 + 16))
    {
      sub_2520DAD24(v29 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v61, v12);
      sub_2520DAD88(v12, v68);
      v33 = v63;
      v34 = v64;
      v35 = v65;
      (*(v64 + 16))(v63, v31, v65);
      v36 = v32;
      v58 = v2;
      v37 = sub_25214196C();
      v38 = sub_252141FBC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v69[0] = v57;
        *v39 = 136446722;
        v40 = sub_2521425DC();
        v42 = sub_2520A5448(v40, v41, v69);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2080;
        sub_2520DAFF4(&qword_27F4CE078, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v43 = sub_25214244C();
        v45 = v44;
        (*(v34 + 8))(v33, v35);
        v46 = sub_2520A5448(v43, v45, v69);

        *(v39 + 14) = v46;
        *(v39 + 22) = 2112;
        if (v32)
        {
          v47 = v32;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          v49 = v48;
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }

        v25 = v59;
        v26 = v60;
        *(v39 + 24) = v48;
        v50 = v56;
        *v56 = v49;
        _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] callBlockAndRemove id:%s error:%@", v39, 0x20u);
        sub_2520A2584(v50, &unk_27F4CE080, &qword_252144E30);
        MEMORY[0x253099FD0](v50, -1, -1);
        v51 = v57;
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v51, -1, -1);
        MEMORY[0x253099FD0](v39, -1, -1);

        v27 = v67;
        v30 = v61;
      }

      else
      {

        (*(v34 + 8))(v33, v35);
        v25 = v59;
        v26 = v60;
      }

      v52 = v68;
      (*(v68 + *(v26 + 20)))(v32);
      sub_2520DADEC(v52);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_2520D725C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2520A59DC(v5);
  }

  v6 = v5[2];
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = *(type metadata accessor for ContinuationItem(0) - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_2520DAD88(v10, a2);
    if (v9 > 0 || v10 >= v10 + v9 + v9 * (v7 - a1))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v9)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v7;
    *v2 = v5;
  }
}

id sub_2520D737C()
{
  v1 = type metadata accessor for ContinuationItem(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock);
  [v6 lock];
  v7 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v19 = v6;
      v20 = v0;
      v10 = &v5[*(v1 + 20)];
      v11 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v12 = *(v2 + 72);

      do
      {
        sub_2520DAD24(v11, v5);
        v13 = *v10;
        sub_2520DAFA0();
        v14 = swift_allocError();
        v13();

        sub_2520DADEC(v5);
        v11 += v12;
        --v9;
      }

      while (v9);

      v6 = v19;
    }
  }

  v16 = sub_2520CF318(v21);
  if (*v15)
  {
    *v15 = MEMORY[0x277D84F90];
  }

  (v16)(v21, 0);
  return [v6 unlock];
}

void sub_2520D7558(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (qword_27F4CD7A8 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3491 == 1)
  {
    v1 = sub_25214196C();
    v2 = sub_252141FBC();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v19[0] = v4;
      *v3 = 136446466;
      v5 = sub_2521425DC();
      v7 = sub_2520A5448(v5, v6, v19);

      *(v3 + 4) = v7;
      *(v3 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = qword_27F4CDFC0;
      v9 = qword_27F4CDFC8;
      [v9 lock];
      [v9 unlock];

      *(v3 + 14) = v8;
      _os_log_impl(&dword_25207E000, v1, v2, "[%{public}s] Sending HT_HEARTBEAT message (%ld)", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x253099FD0](v4, -1, -1);
      MEMORY[0x253099FD0](v3, -1, -1);
    }

    else
    {
    }
  }

  sub_252104450(2, 0x1000000000000uLL, 0xD000000000000024, 0x8000000252149ED0);
  if (byte_27F4D3491 == 1)
  {
    v10 = sub_25214196C();
    v11 = sub_252141FBC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136446466;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      if (qword_27F4CD778 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v17 = qword_27F4CDFC0;
      v18 = qword_27F4CDFC8;
      [v18 lock];
      [v18 unlock];

      *(v12 + 14) = v17;
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] Reading mode after HT_HEARTBEAT (%ld)", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }
  }

  sub_2521036C4(0xD000000000000024, 0x8000000252149ED0);
  sub_2520D17C0();
}

void sub_2520D7944(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = ceil((*(a1 + 24) + -0.2) / 0.4 + 1.0);
  LOBYTE(v23[0]) = *(a1 + 16);
  v5 = LOBYTE(v23[0]);
  sub_2520F8EAC(v23, v24);
  v7 = *v24;
  v8 = v24[1];
  *(v1 + 64) = v24[0];
  *(v1 + 72) = v8;

  v9 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = sub_252141B9C();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE730, &qword_252144AE8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2521446C0;
  *(v14 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v15 = *(v2 + v9);
  if ((v15 & 1) == 0)
  {
    v16 = *(v2 + 72);
    v23[0] = *(v2 + 64);
    v23[1] = v16;
    v4 = HTHeadphoneCalibration.dBFS(fromdBHL:atFrequency:)(v4, v3);
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 2147483650.0)
  {
    v18 = objc_allocWithZone(type metadata accessor for HTAudioSequenceTone());
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] = v3;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] = v4;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses] = v6;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration] = 0x4069000000000000;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration] = 0x4069000000000000;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration] = 0x4041800000000000;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration] = 0x4059000000000000;
    *&v18[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] = 0x408F400000000000;
    *&v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = 0;
    v17 = v7;
    *&v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = v17;
    v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = 0;
    v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = 0;
    v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = v10;
    *&v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = 0;
    v19 = &v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
    *v19 = v11;
    v19[1] = v13;
    v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = 0;
    v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = 0;
    *&v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = 0;
    *&v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = v14;
    v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = v15 ^ 1;
    v20 = &v18[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
    v21 = type metadata accessor for HTAudioSequence();
    *v20 = 0;
    v20[1] = 0;
    v22.receiver = v18;
    v22.super_class = v21;
    objc_msgSendSuper2(&v22, sel_init);
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_2520D7C90(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_2520D7CB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_2520D7D08(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_2520D7D40(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void sub_2520D7D60(uint64_t a1)
{
  v2 = v1;
  v98 = a1;
  v85[0] = *v1;
  v3 = sub_252141A4C();
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x28223BE20](v3);
  v101 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252141A1C();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v97 = (v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v95 = (v85 - v8);
  v96 = sub_252141ABC();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v91 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_25214205C();
  v10 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_252141FEC();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252141FCC();
  MEMORY[0x28223BE20](v13);
  v85[1] = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_252141A8C();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v16 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v17 = qword_27F4D3498;
  *(v1 + 24) = qword_27F4D3498;
  v18 = qword_27F4CD6F0;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_27F4D3420;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v20;
  *(v2 + 56) = 0;
  *(v2 + 80) = xmmword_2521446D0;
  *(v2 + 96) = 0x3FC999999999999ALL;
  type metadata accessor for HTAudioDevice(0);
  swift_allocObject();
  v21 = v20;
  *(v2 + 104) = HTAudioDevice.init()();
  v22 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_logger;
  if (qword_27F4CD730 != -1)
  {
    swift_once();
  }

  v23 = sub_25214198C();
  v24 = __swift_project_value_buffer(v23, qword_27F4CDEE0);
  v25 = *(*(v23 - 8) + 16);
  v25(v2 + v22, v24, v23);
  v26 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_htLogger;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v23, qword_27F4CDE68);
  v25(v2 + v26, v27, v23);
  v28 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationsCache) = MEMORY[0x277D84F90];
  v29 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_continuationLock;
  v30 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  *(v2 + v29) = [v30 init];
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone) = 0;
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_isUnitTesting) = 0;
  *(v2 + OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode) = 0;
  if (qword_27F4CD780 != -1)
  {
    swift_once();
  }

  v31 = qword_27F4CE110;
  *(v2 + 64) = qword_27F4CE108;
  *(v2 + 72) = v31;
  sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);

  sub_252141A6C();
  aBlock[0] = v28;
  sub_2520DAFF4(&qword_27F4CE0E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520CEEB8(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v87 + 104))(v86, *MEMORY[0x277D85260], v88);
  v88 = sub_25214202C();
  sub_2520A5A94(0, &unk_27F4CDC60, 0x277D85CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE100, qword_252144B10);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_252143AC0;
  sub_25214204C();
  aBlock[0] = v32;
  sub_2520DAFF4(&qword_27F4CEB00, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDC70, &qword_252143E98);
  sub_2520CEEB8(&unk_27F4CEB10, &unk_27F4CDC70, &qword_252143E98);
  v33 = v89;
  v34 = v90;
  sub_25214218C();
  v35 = sub_25214206C();
  (*(v10 + 8))(v33, v34);
  ObjectType = swift_getObjectType();
  v37 = v91;
  sub_252141AAC();
  v38 = v95;
  *v95 = 1;
  v40 = v99;
  v39 = v100;
  (*(v99 + 104))(v38, *MEMORY[0x277D85188], v100);
  v41 = v97;
  sub_2520A4C7C(v97);
  MEMORY[0x253099290](v37, v38, v41, ObjectType);
  v42 = *(v40 + 8);
  v42(v41, v39);
  v42(v38, v39);
  (*(v93 + 8))(v37, v96);
  v43 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2520DB03C;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_151;
  v44 = _Block_copy(aBlock);

  sub_2520A4E14(ObjectType);
  v45 = v101;
  sub_2520A4E18();
  sub_25214207C();
  _Block_release(v44);
  (*(v102 + 8))(v45, v103);
  (*(v92 + 8))(v16, v94);

  *(v2 + 40) = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v46 = *(v2 + 48);
  v47 = v88;
  *(v2 + 48) = v88;
  v48 = v47;

  v49 = *(v2 + 32);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = v49;

  v52 = &v51[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones];
  v53 = *&v51[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones];
  v54 = *&v51[OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillTerminateForTones + 8];
  *v52 = sub_2520DB044;
  v52[1] = v50;

  sub_2520A1FE4(v53, v54);

  if (qword_27F4CD778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v55 = qword_27F4CDFC0;
  v56 = qword_27F4CDFC8;
  [v56 lock];
  [v56 unlock];

  v57 = __OFADD__(v55, 1);
  v58 = v55 + 1;
  if (v57)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v59 = qword_27F4CDFC8;
    [qword_27F4CDFC8 lock];
    qword_27F4CDFC0 = v58;
    [v59 unlock];
    swift_endAccess();
    v60 = sub_25214196C();
    v61 = sub_252141FBC();
    v62 = os_log_type_enabled(v60, v61);
    v98 = v35;
    v103 = v48;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v104[0] = v64;
      *v63 = 136446466;
      v65 = sub_2521425DC();
      v67 = sub_2520A5448(v65, v66, v104);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2048;
      v68 = qword_27F4CDFC0;
      v69 = qword_27F4CDFC8;
      [v69 &off_2796F5878];
      [v69 unlock];

      *(v63 + 14) = v68;
      _os_log_impl(&dword_25207E000, v60, v61, "[%{public}s] Init tone player (%ld)", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x253099FD0](v64, -1, -1);
      MEMORY[0x253099FD0](v63, -1, -1);
    }

    v70 = CFNotificationCenterGetDarwinNotifyCenter();
    v71 = sub_252141B6C();
    CFNotificationCenterPostNotification(v70, v71, 0, 0, 1u);

    v72 = sub_25214196C();
    v73 = sub_252141FBC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v104[0] = v102;
      *v74 = 136446722;
      v75 = sub_2521425DC();
      v77 = sub_2520A5448(v75, v76, v104);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_2520A5448(0xD000000000000022, 0x8000000252149200, v104);
      *(v74 + 22) = 2048;
      v78 = qword_27F4CDFC0;
      v79 = qword_27F4CDFC8;
      [v79 &off_2796F5878];
      [v79 unlock];

      *(v74 + 24) = v78;
      _os_log_impl(&dword_25207E000, v72, v73, "[%{public}s] posted notification %s (%ld)", v74, 0x20u);
      v80 = v102;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v80, -1, -1);
      MEMORY[0x253099FD0](v74, -1, -1);
    }

    v81 = v103;
    v82 = objc_opt_self();
    v83 = [v82 defaultCenter];
    [v83 addObserver:v2 selector:sel_handleInterruptionEnd name:*MEMORY[0x277D76E48] object:0];

    v84 = [v82 defaultCenter];
    [v84 addObserver:v2 selector:sel_handleInterruptionEnd name:*MEMORY[0x277D76E80] object:0];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2520D8CA0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2520D8D18()
{
  result = qword_27F4CDFF0;
  if (!qword_27F4CDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CDFF0);
  }

  return result;
}

void sub_2520D8D7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v83 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v83 - v7;
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_252141B6C();
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_34;
  }

  sub_2520DB7EC(v8);

  v12 = sub_25214188C();
  v13 = *(v12 - 8);
  v88 = *(v13 + 48);
  v14 = v88(v8, 1, v12);
  sub_2520A2584(v8, &qword_27F4CDD08, &unk_252144B00);
  if (v14 != 1)
  {
    v84 = v2;
    v86 = v5;
    v85 = objc_opt_self();
    v26 = [v85 processInfo];
    v27 = [v26 processName];

    v28 = sub_252141B9C();
    v30 = v29;

    v31 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v87 = "tat";
    v32 = sub_252141B6C();
    v33 = [v31 initWithSuiteName_];

    if (v33)
    {
      v83 = "HTLastSessionTimestamp";
      v34 = sub_252141B6C();
      v35 = [v33 stringForKey_];

      if (v35)
      {
        v36 = sub_252141B9C();
        v38 = v37;

        if (v28 == v36 && v30 == v38)
        {

          v39 = 0x2796F5000;
          goto LABEL_15;
        }

        v40 = sub_25214247C();

        v39 = 0x2796F5000uLL;
        if (v40)
        {
LABEL_15:
          v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
          v42 = sub_252141B6C();
          v43 = [v41 initWithSuiteName_];

          if (v43)
          {
            v44 = v86;
            (*(v13 + 56))(v86, 1, 1, v12);
            v45 = v44;
            v46 = v84;
            sub_2520AA46C(v45, v84);
            if (v88(v46, 1, v12) == 1)
            {
              v47 = 0;
            }

            else
            {
              v47 = sub_25214185C();
              (*(v13 + 8))(v46, v12);
            }

            v64 = sub_252141B6C();
            [v43 setValue:v47 forKey:v64];

            swift_unknownObjectRelease();
            sub_2520A2584(v86, &qword_27F4CDD08, &unk_252144B00);
            v65 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
            v66 = sub_252141B6C();
            v67 = [v65 initWithSuiteName_];

            if (v67)
            {
              v68 = sub_252141B6C();
              [v67 setValue:0 forKey:v68];

              v69 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
              v70 = sub_252141B6C();
              v71 = [v69 initWithSuiteName_];

              if (v71)
              {
                v72 = sub_252141B6C();
                [v71 setValue:0 forKey:v72];

                if (qword_27F4CD740 != -1)
                {
                  swift_once();
                }

                v73 = sub_25214198C();
                __swift_project_value_buffer(v73, qword_27F4CDF10);
                v49 = sub_25214196C();
                v74 = sub_252141FBC();
                if (!os_log_type_enabled(v49, v74))
                {
                  goto LABEL_32;
                }

                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                v90 = v52;
                *v51 = 136315394;
                v75 = [v85 processInfo];
                v76 = [v75 *(v39 + 3664)];

                v77 = sub_252141B9C();
                v79 = v78;

                v80 = sub_2520A5448(v77, v79, &v90);

                *(v51 + 4) = v80;
                *(v51 + 12) = 2048;
                if (qword_27F4CD778 != -1)
                {
                  swift_once();
                }

                swift_beginAccess();
                v81 = qword_27F4CDFC0;
                v82 = qword_27F4CDFC8;
                [v82 lock];
                [v82 unlock];

                *(v51 + 14) = v81;
                v59 = "Cleared previous session timestamp for %s (%ld)";
                v60 = v74;
                v61 = v49;
                v62 = v51;
                v63 = 22;
LABEL_31:
                _os_log_impl(&dword_25207E000, v61, v60, v59, v62, v63);
                __swift_destroy_boxed_opaque_existential_0(v52);
                MEMORY[0x253099FD0](v52, -1, -1);
                MEMORY[0x253099FD0](v51, -1, -1);
LABEL_32:

                return;
              }

LABEL_37:
              __break(1u);
              return;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
      }

      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v48 = sub_25214198C();
      __swift_project_value_buffer(v48, qword_27F4CDF10);
      v49 = sub_25214196C();
      v50 = sub_252141FAC();
      if (!os_log_type_enabled(v49, v50))
      {
        goto LABEL_32;
      }

      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v89[0] = v52;
      *v51 = 136315138;
      v53 = [v85 processInfo];
      v54 = [v53 processName];

      v55 = sub_252141B9C();
      v57 = v56;

      v58 = sub_2520A5448(v55, v57, v89);

      *(v51 + 4) = v58;
      v59 = "%s should not clear a different process timestamp!";
      v60 = v50;
      v61 = v49;
      v62 = v51;
      v63 = 12;
      goto LABEL_31;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v15 = sub_25214198C();
  __swift_project_value_buffer(v15, qword_27F4CDF10);
  v16 = sub_25214196C();
  v17 = sub_252141FBC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v89[0] = v19;
    *v18 = 136315138;
    v20 = [objc_opt_self() processInfo];
    v21 = [v20 processName];

    v22 = sub_252141B9C();
    v24 = v23;

    v25 = sub_2520A5448(v22, v24, v89);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_25207E000, v16, v17, "Previous session timestamp already cleared for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x253099FD0](v19, -1, -1);
    MEMORY[0x253099FD0](v18, -1, -1);
  }
}

uint64_t sub_2520D976C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_33Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2520D9820()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520D9858()
{
  v1 = sub_2521418EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2520D9928(uint64_t a1, void *a2)
{
  v5 = *(sub_2521418EC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_2520D5F5C(a1, a2, v8, (v2 + v6), v7);
}

unint64_t sub_2520D99F4()
{
  result = qword_27F4CE010;
  if (!qword_27F4CE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE010);
  }

  return result;
}

unint64_t sub_2520D9A4C()
{
  result = qword_27F4CE018;
  if (!qword_27F4CE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE018);
  }

  return result;
}

unint64_t sub_2520D9AA4()
{
  result = qword_27F4CE020;
  if (!qword_27F4CE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE020);
  }

  return result;
}

uint64_t sub_2520D9AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2520D9B40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_2520D9B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2520D9BDC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11HearingTest12HTTonePlayer_testMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HTTonePlayerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HTTonePlayerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2520D9D48(uint64_t a1)
{
  result = sub_25214198C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of HTTonePlayer.enableANCHearingTestMode()()
{
  return (*(*v0 + 424))();
}

{
  v4 = (*(*v0 + 432) + **(*v0 + 432));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2520DA018;

  return v4();
}

uint64_t sub_2520DA018()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of HTTonePlayer.enableANCHearingTestMode(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 440) + **(*v1 + 440));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DA234;

  return v6(a1);
}

uint64_t sub_2520DA234(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of HTTonePlayer.enableANCHearingTestModeWithReason()()
{
  v4 = (*(*v0 + 448) + **(*v0 + 448));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2520DA018;

  return v4();
}

uint64_t dispatch thunk of HTTonePlayer.startSession()()
{
  return (*(*v0 + 464))();
}

{
  v4 = (*(*v0 + 472) + **(*v0 + 472));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2520DB0A4;

  return v4();
}

uint64_t dispatch thunk of HTTonePlayer.startSession(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 480) + **(*v1 + 480));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2520DB0BC;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for HTTonePlayer.HTInterruptionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTonePlayer.HTInterruptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2520DA9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2521418EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2520DAAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2521418EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2520DAB78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2520DABB0(uint64_t a1)
{
  result = sub_2521418EC();
  if (v2 <= 0x3F)
  {
    result = sub_2520DAC34();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2520DAC34()
{
  result = qword_27F4CE050;
  if (!qword_27F4CE050)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4CE050);
  }

  return result;
}

unint64_t sub_2520DACA0()
{
  result = qword_27F4CE060;
  if (!qword_27F4CE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE060);
  }

  return result;
}

uint64_t sub_2520DAD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520DAD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2520DADEC(uint64_t a1)
{
  v2 = type metadata accessor for ContinuationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_84Tm()
{
  v1 = sub_2521418EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2520DAF28(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_2521418EC() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_2520DAFA0()
{
  result = qword_27F4CE0D8;
  if (!qword_27F4CE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0D8);
  }

  return result;
}

uint64_t sub_2520DAFF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2520DB130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 40))(a3, a5);
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a1;
  v14[6] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
  sub_2520DB280(sub_2520DB248, v14, v10, AssociatedTypeWitness, a4, v12, MEMORY[0x277D84950], &v15);
}

uint64_t sub_2520DB248(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 40))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_2520DB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2520DB348(v14, v15, v16, v17, v18, v19, v20, v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

uint64_t sub_2520DB348(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = sub_2520DB598(v29, a2, a3, a4, a5, a6, v27, v18);
    v15 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v19 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v22 = sub_25214232C();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = v29(v19, v22, v15);
    if (v23)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  return result;
}

uint64_t sub_2520DB598(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2520DB6F0(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = v16[2];

  v19 = v23;
  result = a1(v16 + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

void *sub_2520DB6F0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      sub_25214224C();
      swift_getWitnessTable();
      v4 = sub_2521424AC();

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_2520DB7EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_252141B6C();
  v8 = [v2 objectForKey_];

  if (v8)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v9 = sub_25214188C();
    v10 = swift_dynamicCast();
    v11 = *(v9 - 8);
    v12 = *(v11 + 56);
    v12(v6, v10 ^ 1u, 1, v9);
    if ((*(v11 + 48))(v6, 1, v9) != 1)
    {
      (*(v11 + 32))(a1, v6, v9);
      return (v12)(a1, 0, 1, v9);
    }
  }

  else
  {
    sub_2520A2584(v17, &unk_27F4CE0B0, &unk_252144AF0);
    v9 = sub_25214188C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_25214188C();
  v13 = *(v9 - 8);
  (*(v13 + 56))(a1, 1, 1, v9);
  result = (*(v13 + 48))(v6, 1, v9);
  if (result != 1)
  {
    return sub_2520A2584(v6, &qword_27F4CDD08, &unk_252144B00);
  }

  return result;
}

id sub_2520DBAD4()
{
  v1 = sub_252141B6C();
  v2 = [v0 BOOLForKey_];

  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF10);
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v8 = [objc_opt_self() processInfo];
    v9 = [v8 processName];

    v10 = sub_252141B9C();
    v12 = v11;

    v13 = sub_2520A5448(v10, v12, &v18);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2080;
    if (v2)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v2)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_2520A5448(v14, v15, &v18);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_25207E000, v4, v5, "%s reads HTLastSessionBackgrounded as %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  return v2;
}

void sub_2520DBD08(char a1)
{
  v2 = v1;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDF10);
  v5 = sub_25214196C();
  v6 = sub_252141FBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processName];

    v11 = sub_252141B9C();
    v13 = v12;

    v14 = sub_2520A5448(v11, v13, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    if (a1)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (a1)
    {
      v16 = 0xE400000000000000;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_2520A5448(v15, v16, &v20);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_25207E000, v5, v6, "%s writes HTLastSessionBackgrounded as %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v18 = sub_252141DDC();
  v19 = sub_252141B6C();
  [v2 setValue:v18 forKey:v19];
}

uint64_t sub_2520DBF68()
{
  v1 = sub_252141B6C();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    v3 = sub_252141B6C();
    v4 = [v0 BOOLForKey_];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    return 1;
  }

  return v4;
}

uint64_t sub_2520DC064()
{
  v1 = sub_252141B6C();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    v3 = sub_252141B6C();
    v4 = [v0 BOOLForKey_];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    sub_2520A2584(v6, &unk_27F4CE0B0, &unk_252144AF0);
    return 1;
  }

  return v4;
}

void sub_2520DC160()
{
  v1 = sub_252141B6C();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_252141CDC();

    v4 = sub_2520DC52C(v3);

    if (v4)
    {
      v5 = *(v4 + 16);
      if (!v5)
      {
        goto LABEL_36;
      }

      v31 = MEMORY[0x277D84F90];
      sub_25209B2D4(0, v5, 0);
      v6 = 0;
      v7 = v31;
      v25 = v4;
      v26 = v4 + 32;
      v24 = v5;
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
LABEL_40:
          __break(1u);
          return;
        }

        v27 = v6;
        v28 = v7;
        v8 = *(v26 + 8 * v6);
        v9 = *(v8 + 16);

        if (!v9)
        {
          v13 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }

        v11 = 0;
        v12 = v8 + 40;
        v13 = MEMORY[0x277D84F90];
        do
        {
          v29 = v13;
          v14 = (v12 + 16 * v11);
          v15 = v11;
          while (1)
          {
            if (v15 >= *(v8 + 16))
            {
              __break(1u);
              goto LABEL_40;
            }

            v17 = *(v14 - 1);
            v16 = *v14;
            MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
            if ((v16 & 0x1000000000000000) == 0)
            {
              if ((v16 & 0x2000000000000000) != 0)
              {

                if (v17 >= 0x21u || ((0x100003E01uLL >> v17) & 1) == 0)
                {
                  v19 = _swift_stdlib_strtod_clocale();
                  if (v19)
                  {
LABEL_20:
                    v30 = *v19 == 0;
                    goto LABEL_22;
                  }
                }

                goto LABEL_21;
              }

              if ((v17 & 0x1000000000000000) != 0)
              {
                v18 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                if (v18 >= 0x21 || ((0x100003E01uLL >> v18) & 1) == 0)
                {
                  v19 = _swift_stdlib_strtod_clocale();
                  if (v19)
                  {
                    goto LABEL_20;
                  }
                }

LABEL_21:
                v30 = 0;
                goto LABEL_22;
              }
            }

            sub_25214221C();
LABEL_22:

            if (v30)
            {
              break;
            }

            ++v15;
            v14 += 2;
            if (v9 == v15)
            {
              v13 = v29;
              goto LABEL_33;
            }
          }

          v13 = v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_252099194(0, *(v29 + 16) + 1, 1, v29);
            v13 = isUniquelyReferenced_nonNull_native;
          }

          v21 = *(v13 + 16);
          v20 = *(v13 + 24);
          if (v21 >= v20 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_252099194((v20 > 1), v21 + 1, 1, v13);
            v13 = isUniquelyReferenced_nonNull_native;
          }

          v11 = v15 + 1;
          *(v13 + 16) = v21 + 1;
          *(v13 + 8 * v21 + 32) = 0;
          v12 = v8 + 40;
        }

        while (v9 - 1 != v15);
LABEL_33:

        v7 = v28;
        v23 = *(v28 + 16);
        v22 = *(v28 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_25209B2D4((v22 > 1), v23 + 1, 1);
          v7 = v28;
        }

        v6 = v27 + 1;
        *(v7 + 16) = v23 + 1;
        *(v7 + 8 * v23 + 32) = v13;
        v4 = v25;
        if (v27 + 1 == v24)
        {
LABEL_36:

          return;
        }
      }
    }
  }
}

uint64_t sub_2520DC52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25209B374(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2520A5FC4(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25209B374((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2520DC654()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 localizedInfoDictionary];

  if (v2)
  {
    v3 = sub_252141B1C();

    if (*(v3 + 16) && (v4 = sub_25213E648(0xD000000000000013, 0x800000025214A0B0), (v5 & 1) != 0))
    {
      sub_2520A5FC4(*(v3 + 56) + 32 * v4, v13);

      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
    }
  }

  v6 = [v0 mainBundle];
  v7 = [v6 localizedInfoDictionary];

  if (v7)
  {
    v8 = sub_252141B1C();

    if (*(v8 + 16) && (v9 = sub_25213E648(0x656C646E75424643, 0xEC000000656D614ELL), (v10 & 1) != 0))
    {
      sub_2520A5FC4(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        return v12;
      }
    }

    else
    {
    }
  }

  return 0x20656D614E206F4ELL;
}

_BYTE *sub_2520DC854@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2520DC8D4(int a1@<W0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  switch(a1)
  {
    case 8231:
      if (a2)
      {
        if (qword_27F4CD798 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE138;
        v5 = qword_27F4CE140;
        v15 = qword_27F4CD768;

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_25214198C();
        __swift_project_value_buffer(v16, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B788 Rear Vent Occluded Calibration Table used";
      }

      else
      {
        if (qword_27F4CD790 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE128;
        v5 = qword_27F4CE130;
        v24 = qword_27F4CD768;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = sub_25214198C();
        __swift_project_value_buffer(v25, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B788 Table used";
      }

      goto LABEL_48;
    case 8228:
      if (a2)
      {
        if (qword_27F4CD788 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE118;
        v5 = qword_27F4CE120;
        v13 = qword_27F4CD768;

        if (v13 != -1)
        {
          swift_once();
        }

        v14 = sub_25214198C();
        __swift_project_value_buffer(v14, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698(c) Rear Vent Occluded Calibration Table used";
      }

      else
      {
        if (qword_27F4CD780 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE108;
        v5 = qword_27F4CE110;
        v22 = qword_27F4CD768;

        if (v22 != -1)
        {
          swift_once();
        }

        v23 = sub_25214198C();
        __swift_project_value_buffer(v23, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698(c) Table used";
      }

      goto LABEL_48;
    case 8212:
      if (a2)
      {
        if (qword_27F4CD788 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE118;
        v5 = qword_27F4CE120;
        v6 = qword_27F4CD768;

        if (v6 != -1)
        {
          swift_once();
        }

        v7 = sub_25214198C();
        __swift_project_value_buffer(v7, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698 Rear Vent Occluded Calibration Table used";
      }

      else
      {
        if (qword_27F4CD780 != -1)
        {
          swift_once();
        }

        v4 = qword_27F4CE108;
        v5 = qword_27F4CE110;
        v26 = qword_27F4CD768;

        if (v26 != -1)
        {
          swift_once();
        }

        v27 = sub_25214198C();
        __swift_project_value_buffer(v27, qword_27F4CDF68);
        v8 = sub_25214196C();
        v9 = sub_252141FBC();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_49;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136446210;
        *(v10 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
        v12 = "[%{public}s] B698 Table used";
      }

LABEL_48:
      _os_log_impl(&dword_25207E000, v8, v9, v12, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
LABEL_49:

      *a3 = v4;
      a3[1] = v5;
      return;
  }

  if (qword_27F4CD768 != -1)
  {
    swift_once();
  }

  v17 = sub_25214198C();
  __swift_project_value_buffer(v17, qword_27F4CDF68);
  v18 = sub_25214196C();
  v19 = sub_252141FAC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v28);
    _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] Product ID unsupported for calibration table", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v20, -1, -1);
  }

  *a3 = 0;
  a3[1] = 0;
}

Swift::Double __swiftcall HTHeadphoneCalibration.dBFS(fromdBHL:atFrequency:)(Swift::Double fromdBHL, Swift::Double atFrequency)
{
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v57 = MEMORY[0x277D84F90];
    v56 = v7;
    sub_25209B214(0, v7, 0);
    v9 = v57;
    v10 = v6 + 64;
    v11 = sub_25214219C();
    v12 = v56;
    v13 = 0;
    v14 = *(v6 + 36);
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v6 + 32))
    {
      v16 = v11 >> 6;
      v17 = 1 << v11;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_46;
      }

      if (v14 != *(v6 + 36))
      {
        goto LABEL_47;
      }

      v3 = *(*(v6 + 48) + 8 * v11);
      v18 = *(*(v6 + 56) + 8 * v11);
      v57 = v9;
      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v55 = v11;
        sub_25209B214((v19 > 1), v20 + 1, 1);
        v12 = v56;
        v11 = v55;
        v9 = v57;
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v3;
      *(v21 + 5) = v18;
      v15 = 1 << *(v6 + 32);
      if (v11 >= v15)
      {
        goto LABEL_48;
      }

      v22 = *(v10 + 8 * v16);
      if ((v22 & v17) == 0)
      {
        goto LABEL_49;
      }

      if (v14 != *(v6 + 36))
      {
        goto LABEL_50;
      }

      v23 = v22 & (-2 << (v11 & 0x3F));
      if (v23)
      {
        v15 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v16 << 6;
        v25 = v16 + 1;
        v26 = (v6 + 72 + 8 * v16);
        while (v25 < (v15 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_2520A1FF4(v11, v14, 0);
            v12 = v56;
            v15 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_2520A1FF4(v11, v14, 0);
        v12 = v56;
      }

LABEL_4:
      ++v13;
      v11 = v15;
      if (v13 == v12)
      {
        v8 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_22:
  v57 = v9;

  sub_2520DD9BC(&v57);

  v29 = v57;
  v30 = *(v57 + 2);
  if (v30)
  {
    v57 = v8;
    sub_2520A3448(0, v30, 0);
    v31 = v57;
    v32 = *(v57 + 2);
    v33 = 32;
    v34 = v30;
    do
    {
      v35 = *&v29[v33];
      v57 = v31;
      v36 = *(v31 + 3);
      if (v32 >= v36 >> 1)
      {
        sub_2520A3448(v36 > 1, v32 + 1, 1);
        v31 = v57;
      }

      *(v31 + 2) = v32 + 1;
      *&v31[8 * v32 + 32] = v35;
      v33 += 16;
      ++v32;
      --v34;
    }

    while (v34);
    v57 = v8;
    sub_2520A3448(0, v30, 0);
    v37 = v57;
    v38 = *(v57 + 2);
    v39 = 40;
    do
    {
      v40 = *&v29[v39];
      v57 = v37;
      v41 = *(v37 + 3);
      if (v38 >= v41 >> 1)
      {
        sub_2520A3448(v41 > 1, v38 + 1, 1);
        v37 = v57;
      }

      *(v37 + 2) = v38 + 1;
      *&v37[8 * v38 + 32] = v40;
      v39 += 16;
      ++v38;
      --v30;
    }

    while (v30);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
  }

  _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v31, v37, atFrequency);
  v43 = v42;

  v3 = v43 + fromdBHL;
  if (v3 > 4.0)
  {
    if (qword_27F4CD708 == -1)
    {
LABEL_35:
      v44 = sub_25214198C();
      __swift_project_value_buffer(v44, qword_27F4CDE68);
      v45 = sub_25214196C();
      v46 = sub_252141FAC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v57 = v48;
        *v47 = 136446978;
        *(v47 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v57);
        *(v47 + 12) = 2048;
        *(v47 + 14) = atFrequency;
        *(v47 + 22) = 2048;
        *(v47 + 24) = fromdBHL;
        *(v47 + 32) = 2048;
        *(v47 + 34) = v3;
        _os_log_impl(&dword_25207E000, v45, v46, "[%{public}s] Tone freq %f, dBHL %f, dBFS %f is louder than the current combination of calibration table, system volume and headphones are capable of playing (dbFS > 4)", v47, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x253099FD0](v48, -1, -1);
        MEMORY[0x253099FD0](v47, -1, -1);
      }

      return 4.0;
    }

LABEL_51:
    swift_once();
    goto LABEL_35;
  }

  if (v3 > 0.0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v49 = sub_25214198C();
    __swift_project_value_buffer(v49, qword_27F4CDE68);
    v50 = sub_25214196C();
    v51 = sub_252141FAC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v57 = v53;
      *v52 = 136446978;
      *(v52 + 4) = sub_2520A5448(0xD000000000000016, 0x8000000252144B30, &v57);
      *(v52 + 12) = 2048;
      *(v52 + 14) = atFrequency;
      *(v52 + 22) = 2048;
      *(v52 + 24) = fromdBHL;
      *(v52 + 32) = 2048;
      *(v52 + 34) = v3;
      _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] Tone freq %f, dBHL %f, dBFS %f may be louder than the current combination of calibration table, system volume and headphones are capable of playing (dbFS > 0)", v52, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x253099FD0](v53, -1, -1);
      MEMORY[0x253099FD0](v52, -1, -1);
    }
  }

  return v3;
}

unint64_t sub_2520DD770()
{
  result = sub_25209CA3C(&unk_28644D448);
  qword_27F4CE108 = 0x3FEA000000000000;
  qword_27F4CE110 = result;
  return result;
}

unint64_t sub_2520DD7C8()
{
  result = sub_25209CA3C(&unk_28644D718);
  qword_27F4CE118 = 0x3FEA000000000000;
  qword_27F4CE120 = result;
  return result;
}

unint64_t sub_2520DD820()
{
  result = sub_25209CA3C(&unk_28644DCB8);
  qword_27F4CE128 = 0x3FEA000000000000;
  qword_27F4CE130 = result;
  return result;
}

unint64_t sub_2520DD878()
{
  result = sub_25209CA3C(&unk_28644D9E8);
  qword_27F4CE138 = 0x3FEA000000000000;
  qword_27F4CE140 = result;
  return result;
}

double sub_2520DD8D0@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;

  return result;
}

void sub_2520DD944(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    sub_2520A3448(isUniquelyReferenced_nonNull_native, v5, 0);
  }
}

uint64_t sub_2520DD9BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2520DE2C8(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_25214243C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 32;
      do
      {
        v12 = *&v2[16 * v10 + 32];
        v13 = v9;
        v14 = v11;
        do
        {
          if (v12 >= *v14)
          {
            break;
          }

          v15 = *(v14 + 3);
          *(v14 + 1) = *v14;
          *v14 = v12;
          *(v14 + 1) = v15;
          v14 -= 16;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 16;
        --v9;
      }

      while (v10 != v3);
    }
  }

  else
  {
    v6 = result;
    v7 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE148, &unk_2521480F0);
      v8 = sub_252141D3C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v17[0] = (v8 + 32);
    v17[1] = v7;
    sub_2520DDB10(v17, v5, v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_2520DDB10(double **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v9 = sub_2520DE28C(v9);
    }

    v80 = v9 + 16;
    v81 = *(v9 + 2);
    if (v81 >= 2)
    {
      while (*a4)
      {
        v82 = &v9[16 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_2520DE088((*a4 + 16 * *v82), (*a4 + 16 * *v84), (*a4 + 16 * v85), v6);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v87 = a5;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a4 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a4 + 16 * v10);
      v15 = *v13;
      v14 = v13 + 4;
      v16 = v15;
      v17 = v10 + 2;
      v18 = v11;
      while (v7 != v17)
      {
        v19 = *v14;
        v14 += 2;
        v20 = v19 >= v18;
        ++v17;
        v18 = v19;
        if ((((v11 < v16) ^ v20) & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v16)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v16)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v21 = 16 * v8 - 16;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v25 = *a4;
            if (!*a4)
            {
              goto LABEL_125;
            }

            v24 = *(v25 + v12);
            *(v25 + v12) = *(v25 + v21);
            *(v25 + v21) = v24;
          }

          ++v23;
          v21 -= 16;
          v12 += 16;
        }

        while (v23 < v22);
        v7 = a4[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a5)
      {
        if (__OFADD__(v10, a5))
        {
          goto LABEL_120;
        }

        if (v10 + a5 < v7)
        {
          v7 = v10 + a5;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_252099298(0, *(v9 + 2) + 1, 1, v9);
    }

    v6 = *(v9 + 2);
    v34 = *(v9 + 3);
    v35 = v6 + 1;
    if (v6 >= v34 >> 1)
    {
      v9 = sub_252099298((v34 > 1), v6 + 1, 1, v9);
    }

    *(v9 + 2) = v35;
    v36 = v9 + 32;
    v37 = &v9[16 * v6 + 32];
    *v37 = v10;
    *(v37 + 1) = v8;
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v6)
    {
      while (1)
      {
        v6 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v9 + 4);
          v39 = *(v9 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v9[16 * v35];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v36[16 * v6];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v6 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v9[16 * v35];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v36[16 * v6];
        v69 = *v67;
        v68 = *(v67 + 1);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v6 - 1 >= v35)
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

        if (!*a4)
        {
          goto LABEL_124;
        }

        v75 = &v36[16 * v6 - 16];
        v76 = *v75;
        v77 = &v36[16 * v6];
        v78 = *(v77 + 1);
        sub_2520DE088((*a4 + 16 * *v75), (*a4 + 16 * *v77), (*a4 + 16 * v78), v89);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v6 > *(v9 + 2))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        *(v75 + 1) = v78;
        v79 = *(v9 + 2);
        if (v6 >= v79)
        {
          goto LABEL_101;
        }

        v35 = v79 - 1;
        memmove(&v36[16 * v6], v77 + 16, 16 * (v79 - 1 - v6));
        *(v9 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v36[16 * v35];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v9[16 * v35];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v36[16 * v6];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v6 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a4[1];
    a5 = v87;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v26 = *a4;
  v27 = *a4 + 16 * v8 - 16;
  v28 = v10 - v8;
LABEL_30:
  v29 = *(v26 + 16 * v8);
  v30 = v28;
  v31 = v27;
  while (1)
  {
    if (v29 >= *v31)
    {
LABEL_29:
      ++v8;
      v27 += 16;
      --v28;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v26)
    {
      break;
    }

    v32 = *(v31 + 24);
    *(v31 + 16) = *v31;
    *v31 = v29;
    *(v31 + 8) = v32;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
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
}

uint64_t sub_2520DE088(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t HTAudioDevice.__allocating_init()()
{
  v0 = swift_allocObject();
  HTAudioDevice.init()();
  return v0;
}

uint64_t sub_2520DE360(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

id sub_2520DE3F0(void *a1, unint64_t a2, unsigned __int8 a3)
{
  if (!a2)
  {
    sub_25209D048(MEMORY[0x277D84F90]);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_252141B9C();
  v7 = v6;
  swift_getErrorValue();
  v21 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_2520A1F80(&v20, v17);

  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2520A8B94(v17, v5, v7, isUniquelyReferenced_nonNull_native, v11);

LABEL_6:
  v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v13 = sub_252141B6C();
  v14 = sub_252141B0C();

  v15 = [v12 initWithDomain:v13 code:-a3 userInfo:v14];

  return v15;
}

uint64_t HTAudioDevice.init()()
{
  v1 = v0;
  *(v0 + 16) = sub_252141B6C();
  *(v0 + 24) = 0;
  sub_25209D56C();
  *(v0 + 32) = sub_252141FFC();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  v2 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
  if (qword_27F4CD718 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  v4 = __swift_project_value_buffer(v3, qword_27F4CDE98);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  return v1;
}

uint64_t HTAudioDevice.deinit()
{
  v1 = v0;
  *(v0 + 56) = 0;

  if (*(v0 + 48))
  {

    sub_2520E5AE4(1);
  }

  sub_2520E3C08();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
  v3 = sub_25214198C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t HTAudioDevice.__deallocating_deinit()
{
  HTAudioDevice.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2520DE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a4;
  v7 = *v4;
  v8 = sub_252141A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_252141A8C();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4[4];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v22;
  v18 = v23;
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v18;
  v16[7] = v7;
  aBlock[4] = sub_2520E44B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_106_0;
  v19 = _Block_copy(aBlock);

  sub_2520A283C(a3, v18);
  sub_252141A6C();
  v26 = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v14, v11, v19);
  _Block_release(v19);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v25);
}

void sub_2520DEAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a4;
  v84 = a5;
  v85 = a2;
  v93 = *MEMORY[0x277D85DE8];
  v8 = sub_252141A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252141A8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v79 = a3;
  v82 = v8;
  v86 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
  v18 = sub_25214196C();
  v19 = sub_252141FBC();
  v20 = os_log_type_enabled(v18, v19);
  v78[1] = a6;
  v81 = v12;
  v80 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136446210;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, &aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] setup audio session - start", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  v26 = [objc_opt_self() sharedInstance];
  v27 = *(v17 + 40);
  *(v17 + 40) = v26;
  v28 = v26;

  if (v28)
  {
    v29 = *MEMORY[0x277CB8030];
    aBlock = 0;
    v30 = [v28 setCategory:v29 error:&aBlock];
    v31 = aBlock;
    if (!v30 || (v32 = *MEMORY[0x277CB80C0], aBlock = 0, v33 = v31, v34 = [v28 setMode:v32 error:&aBlock], v31 = aBlock, !v34) || (aBlock = 0, v35 = v31, v36 = objc_msgSend(v28, sel_setEligibleForBTSmartRoutingConsideration_error_, 0, &aBlock), v31 = aBlock, !v36) || (aBlock = 0, v37 = v31, v38 = objc_msgSend(v28, sel_setActive_error_, 1, &aBlock), v31 = aBlock, !v38))
    {
      v56 = v31;
      v57 = sub_25214178C();

      swift_willThrow();
      v84 = v9;

      v58 = v57;
      v59 = sub_25214196C();
      v60 = sub_252141FAC();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock = v62;
        *v61 = 136446210;
        swift_getErrorValue();
        v63 = sub_2521424DC();
        v65 = sub_2520A5448(v63, v64, &aBlock);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_25207E000, v59, v60, "Failed to setup audio session for HearingTest %{public}s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x253099FD0](v62, -1, -1);
        MEMORY[0x253099FD0](v61, -1, -1);
      }

      v55 = v80;
      sub_25209D56C();
      v66 = sub_252141FFC();
      v67 = swift_allocObject();
      v68 = v79;
      v67[2] = v85;
      v67[3] = v68;
      v67[4] = v57;
      v91 = sub_2520E45B8;
      v92 = v67;
      aBlock = MEMORY[0x277D85DD0];
      v88 = 1107296256;
      v89 = sub_2520A3B78;
      v90 = &block_descriptor_121;
      v69 = _Block_copy(&aBlock);

      v70 = v57;

      sub_252141A6C();
      aBlock = MEMORY[0x277D84F90];
      sub_2520E3EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520E3F18();
      v54 = v82;
      sub_25214218C();
      MEMORY[0x2530991B0](0, v15, v11, v69);
      _Block_release(v69);

      v9 = v84;
      v47 = v81;
      goto LABEL_16;
    }

    v39 = aBlock;
  }

  v40 = sub_25214196C();
  v41 = sub_252141FBC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136446210;
    v44 = sub_2521425DC();
    v46 = sub_2520A5448(v44, v45, &aBlock);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] setup and activated audio session for HearingTest.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x253099FD0](v43, -1, -1);
    MEMORY[0x253099FD0](v42, -1, -1);
  }

  v47 = v81;
  v48 = swift_allocObject();
  *(v48 + 16) = v85;
  *(v48 + 24) = v79;

  sub_2520E22A0(sub_2520E44FC, v48);

  sub_25209D56C();
  v49 = sub_252141FFC();
  v50 = swift_allocObject();
  v52 = v83;
  v51 = v84;
  v50[2] = v17;
  v50[3] = v52;
  v50[4] = v51;
  v91 = sub_2520E456C;
  v92 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = sub_2520A3B78;
  v90 = &block_descriptor_115;
  v53 = _Block_copy(&aBlock);

  sub_2520A283C(v52, v51);

  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  v54 = v82;
  sub_25214218C();
  MEMORY[0x2530991B0](0, v15, v11, v53);
  _Block_release(v53);

  v55 = v80;
LABEL_16:
  (*(v9 + 8))(v11, v54);
  (*(v55 + 8))(v15, v47);
  v71 = sub_25214196C();
  v72 = sub_252141FBC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock = v74;
    *v73 = 136446210;
    v75 = sub_2521425DC();
    v77 = sub_2520A5448(v75, v76, &aBlock);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_25207E000, v71, v72, "[%{public}s] setup audio session - end", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x253099FD0](v74, -1, -1);
    MEMORY[0x253099FD0](v73, -1, -1);
  }
}

uint64_t sub_2520DF458(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + 48))
  {

    sub_2520E5AE4(1);
  }

  else
  {
    type metadata accessor for HTAudioDeviceCapturedVolume();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 18) = 0;
    *(v4 + 24) = 0;
    v5 = type metadata accessor for AVSessionCategoryVolume();
    *(v4 + 32) = [objc_allocWithZone(v5) init];
    *(v4 + 40) = [objc_allocWithZone(v5) init];
    *(a1 + 48) = v4;
  }

  if (*(a1 + 48))
  {

    sub_2520E6A2C(0.8125);
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_2520DF544(void (*a1)(id), uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE168, &unk_252144C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AC0;
  *(inited + 32) = sub_252141B9C();
  *(inited + 40) = v6;
  swift_getErrorValue();
  v7 = sub_2521424DC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_25209D048(inited);
  swift_setDeallocating();
  sub_2520E432C(inited + 32);
  v10 = sub_2520DE3F0(a3, v9, 1u);

  a1(v10);
}

void sub_2520DF644(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = v3;
  v87[1] = *MEMORY[0x277D85DE8];
  v86 = [objc_opt_self() sharedInstance];
  v7 = [v86 allowAllBuiltInDataSources];
  if (v7)
  {
    if ((*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput) & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 1;
    [v86 setAllowAllBuiltInDataSources_];
    if (*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput) != 1)
    {
      goto LABEL_9;
    }
  }

  if (([v86 categoryOptions] & 0x20) != 0)
  {
    v8 = v7 ^ 1;
LABEL_9:
    v9 = v86;
    if (*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode) == 1)
    {
      v11 = [v86 categoryOptions] & 8;
      v9 = v86;
      if (!v11)
      {
        v8 = 1;
      }

      if ((a2 & 1) == 0)
      {
        v10 = v11 ^ 8;
        goto LABEL_27;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  v9 = v86;
  if ((a2 & 1) == 0)
  {
    v8 = 1;
    v10 = 32;
LABEL_27:
    v20 = [v9 category];
    v21 = *MEMORY[0x277CB8028];
    v22 = sub_252141B9C();
    v24 = v23;
    if (v22 == sub_252141B9C() && v24 == v25)
    {
    }

    else
    {
      v27 = sub_25214247C();

      if ((v27 & 1) == 0)
      {
        v87[0] = 0;
        if ([v86 setCategory:v21 withOptions:v10 error:v87])
        {
          v28 = v87[0];
          v8 = 1;
        }

        else
        {
          v81 = v87[0];
          v82 = sub_25214178C();

          swift_willThrow();
          v83 = v82;
          v8 = 1;
          v84 = sub_2520DE3F0(v82, 0, 1u);

          a3(v84);
        }
      }
    }

    if ([v86 preferredIOBufferFrameSize] == 4096)
    {
      if (v8 & 1) == 0 && ([v86 isActive])
      {
LABEL_53:
        if (*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode))
        {
          v60 = 1936747378;
        }

        else
        {
          v60 = 0;
        }

        sub_2520E6D04(*(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone), *(a1 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone + 8), v60, 0);
        goto LABEL_57;
      }
    }

    else
    {
      v87[0] = 0;
      if ([v86 setPreferredIOBufferFrameSize:4096 error:v87])
      {
        v29 = v87[0];
      }

      else
      {
        v50 = v87[0];
        v51 = sub_25214178C();

        swift_willThrow();
      }
    }

    v52 = sub_25214196C();
    v53 = sub_252141FBC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v87[0] = v55;
      *v54 = 136446210;
      v56 = sub_2521425DC();
      v58 = sub_2520A5448(v56, v57, v87);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_25207E000, v52, v53, "[%{public}s] audio session has changed, setting active.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x253099FD0](v55, -1, -1);
      MEMORY[0x253099FD0](v54, -1, -1);
    }

    v87[0] = 0;
    if ([v86 setActive:1 error:v87])
    {
      v59 = v87[0];
      goto LABEL_53;
    }

    v61 = v87[0];
    v62 = sub_25214178C();

    swift_willThrow();
    v63 = sub_25214177C();
    if ([v63 code] == 561145203)
    {
      *(v4 + 64) = 0;
      v64 = sub_25214196C();
      v65 = sub_252141FBC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v87[0] = v67;
        *v66 = 136446210;
        v68 = sub_2521425DC();
        v70 = sub_2520A5448(v68, v69, v87);

        *(v66 + 4) = v70;
        _os_log_impl(&dword_25207E000, v64, v65, "[%{public}s] running test on platform with inadequate hardware", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x253099FD0](v67, -1, -1);
        MEMORY[0x253099FD0](v66, -1, -1);
      }

      v71 = v62;
      v72 = v62;
      v73 = 8;
    }

    else
    {
      v74 = v62;
      v72 = v62;
      v73 = 11;
    }

    v75 = sub_2520DE3F0(v72, 0, v73);

    a3(v75);
    v76 = v62;
    goto LABEL_65;
  }

LABEL_15:
  v12 = [v9 category];
  v13 = *MEMORY[0x277CB8030];
  v14 = sub_252141B9C();
  v16 = v15;
  if (v14 == sub_252141B9C() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_25214247C();

    if ((v19 & 1) == 0)
    {
      v30 = sub_25214196C();
      v31 = sub_252141FBC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v87[0] = v33;
        *v32 = 136446210;
        v34 = sub_2521425DC();
        v36 = sub_2520A5448(v34, v35, v87);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] setting session category", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x253099FD0](v33, -1, -1);
        MEMORY[0x253099FD0](v32, -1, -1);
      }

      v87[0] = 0;
      v37 = [v86 setCategory:v13 error:v87];
      v38 = v87[0];
      if (v37)
      {
        v39 = v87[0];
        v40 = sub_25214196C();
        v41 = sub_252141FBC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v87[0] = v43;
          *v42 = 136446210;
          v44 = sub_2521425DC();
          v46 = sub_2520A5448(v44, v45, v87);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_25207E000, v40, v41, "[%{public}s] setting session mode", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x253099FD0](v43, -1, -1);
          MEMORY[0x253099FD0](v42, -1, -1);
        }

        v47 = *MEMORY[0x277CB80C0];
        v87[0] = 0;
        v48 = [v86 setMode:v47 error:v87];
        v38 = v87[0];
        if (v48)
        {
          v49 = v87[0];
LABEL_57:

          return;
        }
      }

      v77 = v38;
      v78 = sub_25214178C();

      swift_willThrow();
      v79 = v78;
      v80 = sub_2520DE3F0(v78, 0, 1u);

      a3(v80);
      v76 = v78;
LABEL_65:

      return;
    }
  }
}

uint64_t sub_2520DFFDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_252141A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252141A8C();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = v3[4];
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = v6;
  aBlock[4] = sub_2520E4458;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_99_0;
  v16 = _Block_copy(aBlock);

  sub_252141A6C();
  v20 = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

void sub_2520E02BC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v45[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 40);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
      v44 = v6;
      v8 = sub_25214196C();
      v9 = sub_252141FBC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v42 = v7;
        v11 = swift_slowAlloc();
        v45[0] = v11;
        *v10 = 136446466;
        v12 = sub_2521425DC();
        v14 = sub_2520A5448(v12, v13, v45);

        *(v10 + 4) = v14;
        *(v10 + 12) = 1024;
        LODWORD(v14) = [v44 isActive];

        *(v10 + 14) = v14;
        _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] audio session stop, isActive: %{BOOL}d", v10, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x253099FD0](v11, -1, -1);
        MEMORY[0x253099FD0](v10, -1, -1);
      }

      else
      {
      }

      if ([v44 isActive])
      {
        *(v5 + 65) = 0;
        v15 = sub_25214196C();
        v16 = sub_252141FBC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v45[0] = v18;
          *v17 = 136446210;
          v19 = sub_2521425DC();
          v21 = sub_2520A5448(v19, v20, v45);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] audio session deactivate", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x253099FD0](v18, -1, -1);
          MEMORY[0x253099FD0](v17, -1, -1);
        }

        v45[0] = 0;
        v22 = [v44 setActive:0 error:v45];
        v23 = v45[0];
        if (v22)
        {
          v24 = 0;
        }

        else
        {
          v29 = v45[0];
          v30 = sub_25214178C();

          swift_willThrow();
          v31 = v30;
          v32 = sub_25214196C();
          v33 = sub_252141FAC();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v45[0] = v35;
            *v34 = 136446210;
            swift_getErrorValue();
            v36 = sub_2521424DC();
            v38 = sub_2520A5448(v36, v37, v45);

            *(v34 + 4) = v38;
            _os_log_impl(&dword_25207E000, v32, v33, "Failed de-activate audio session. %{public}s", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x253099FD0](v35, -1, -1);
            MEMORY[0x253099FD0](v34, -1, -1);
          }

          v39 = v30;
          v23 = sub_2520DE3F0(v30, 0, 0xEu);

          v24 = v23;
        }

        v40 = v23;
        v41 = *(v5 + 56);
        if (v41)
        {
          [*(v41 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine) stop];
        }

        sub_2520E3C08();
        if (*(v5 + 48))
        {

          sub_2520E5AE4(1);
        }

        a2(v24);
      }

      else
      {
        *(v5 + 65) = 1;
        if (*(v5 + 48))
        {

          sub_2520E5AE4(1);
        }

        sub_25209D048(MEMORY[0x277D84F90]);
        v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v26 = sub_252141B6C();
        v27 = sub_252141B0C();

        v28 = [v25 initWithDomain:v26 code:-14 userInfo:v27];

        a2(v28);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2520E0844(void *a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v6 = *v3;
  v7 = sub_252141A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252141A8C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = v3[4];
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = v19[0];
  v15[5] = a3;
  v15[6] = v6;
  aBlock[4] = sub_2520E3E98;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_5;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  sub_252141A6C();
  v21 = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void sub_2520E0B30(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v93 = sub_252141A4C();
  v9 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252141A8C();
  v94 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v90 = v12;
    v91 = v9;
    v92 = OBJC_IVAR____TtC11HearingTest13HTAudioDevice_logger;
    v17 = sub_25214196C();
    v18 = sub_252141FBC();
    v19 = os_log_type_enabled(v17, v18);
    v95 = a3;
    v96 = a5;
    v97 = a4;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = v16;
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v20 = 136446210;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] playback tone - start", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v26 = v22;
      v16 = v21;
      a4 = v97;
      MEMORY[0x253099FD0](v26, -1, -1);
      MEMORY[0x253099FD0](v20, -1, -1);
    }

    aBlock[0] = 0;
    v27 = [a2 checkValidityAndReturnError_];
    v28 = aBlock[0];
    if (v27)
    {
      v29 = v95;
      if (v16[5])
      {
        v30 = aBlock[0];
      }

      else
      {
        v45 = swift_allocObject();
        *(v45 + 16) = v29;
        *(v45 + 24) = a4;
        v46 = v28;

        sub_2520DF644(a2, 1, sub_2520E4394);
      }

      sub_25209D56C();
      v47 = sub_252141FFC();
      v48 = swift_allocObject();
      v48[2] = v16;
      v48[3] = a2;
      aBlock[4] = sub_2520E4404;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2520A3B78;
      aBlock[3] = &block_descriptor_82_0;
      v49 = _Block_copy(aBlock);

      v50 = a2;

      sub_252141A6C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2520E3EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520E3F18();
      v51 = v93;
      sub_25214218C();
      MEMORY[0x2530991B0](0, v14, v11, v49);
      _Block_release(v49);

      (*(v91 + 8))(v11, v51);
      (*(v94 + 8))(v14, v90);
      v52 = sub_2521420CC();
      if (qword_27F4CD758 != -1)
      {
        swift_once();
      }

      v53 = qword_27F4CDF48;
      if (qword_27F4CD760 != -1)
      {
        swift_once();
      }

      v54 = sub_25214195C();
      v55 = __swift_project_value_buffer(v54, qword_27F4CDF50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_252143AB0;
      v57 = *&v50[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency];
      v58 = MEMORY[0x277D839F8];
      v59 = MEMORY[0x277D83A80];
      *(v56 + 56) = MEMORY[0x277D839F8];
      *(v56 + 64) = v59;
      *(v56 + 32) = v57;
      v60 = *&v50[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel];
      *(v56 + 96) = v58;
      *(v56 + 104) = v59;
      *(v56 + 72) = v60;
      LOBYTE(v88) = 2;
      v94 = v53;
      sub_25214193C(v52, &dword_25207E000, v53, "AVF tone playback", 17, 2, v55, "freq-%f, lvl=%f", COERCE_DOUBLE(15), v88);

      byte_27F4D3448 = 0;
      v62 = v16[4];
      v61 = v16[5];
      v63 = swift_allocObject();
      v63[2] = v16;
      v63[3] = v29;
      v64 = v96;
      v63[4] = v97;
      v63[5] = v64;
      type metadata accessor for HTAudioEngine(0);
      swift_allocObject();
      v65 = v61;
      v66 = v62;

      v67 = v50;
      sub_2520E88A4(v67, v61, v66, sub_2520E440C, v63, v68);
      v16[7] = v69;

      v70 = sub_25214196C();
      v71 = sub_252141FBC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        aBlock[0] = v73;
        *v72 = 136446210;
        v74 = sub_2521425DC();
        v76 = sub_2520A5448(v74, v75, aBlock);

        *(v72 + 4) = v76;
        _os_log_impl(&dword_25207E000, v70, v71, "[%{public}s] setup multichannel mixer", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x253099FD0](v73, -1, -1);
        MEMORY[0x253099FD0](v72, -1, -1);
      }

      sub_2520EDEDC(v77);
      v78 = sub_25214196C();
      v79 = sub_252141FBC();
      if (os_log_type_enabled(v78, v79))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        aBlock[0] = v82;
        *v81 = 136446210;
        v83 = sub_2521425DC();
        v85 = sub_2520A5448(v83, v84, aBlock);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_25207E000, v78, v79, "[%{public}s] Finished creating audio engine and processing chain", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x253099FD0](v82, -1, -1);
        MEMORY[0x253099FD0](v81, -1, -1);
      }

      sub_2520EC988(v86);
      sub_2520ECE30();
      sub_2520ECAE8(v87);
    }

    else
    {
      v31 = aBlock[0];
      v32 = sub_25214178C();

      swift_willThrow();
      if ((byte_27F4D3448 & 1) == 0)
      {
        v33 = sub_2521420BC();
        if (qword_27F4CD758 != -1)
        {
          swift_once();
        }

        v34 = qword_27F4CDF48;
        if (qword_27F4CD760 != -1)
        {
          swift_once();
        }

        v35 = sub_25214195C();
        v36 = __swift_project_value_buffer(v35, qword_27F4CDF50);
        sub_25214193C(v33, &dword_25207E000, v34, "AVF tone playback", 17, 2, v36, "sequence error", 14, 2, MEMORY[0x277D84F90]);
        byte_27F4D3448 = 1;
      }

      v37 = v32;
      v95(0, v32);
    }

    v38 = sub_25214196C();
    v39 = sub_252141FBC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136446210;
      v42 = sub_2521425DC();
      v44 = sub_2520A5448(v42, v43, aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_25207E000, v38, v39, "[%{public}s] playback tone - end", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x253099FD0](v41, -1, -1);
      MEMORY[0x253099FD0](v40, -1, -1);
    }
  }
}

uint64_t sub_2520E19A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {

    sub_2520E5AE4(1);
  }

  else
  {
    type metadata accessor for HTAudioDeviceCapturedVolume();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 18) = 0;
    *(v4 + 24) = 0;
    v5 = type metadata accessor for AVSessionCategoryVolume();
    *(v4 + 32) = [objc_allocWithZone(v5) init];
    *(v4 + 40) = [objc_allocWithZone(v5) init];
    *(a1 + 48) = v4;
  }

  if (*(a1 + 48))
  {
    v7 = *(a2 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume);

    sub_2520E6A2C(v7);
  }

  return result;
}

uint64_t sub_2520E1AB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6)
{

  v10 = sub_25214196C();
  v11 = sub_252141FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446466;
    v15 = sub_2521425DC();
    v17 = sub_2520A5448(v15, v16, &v25);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_2520A5448(a1, a2, &v25);
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] tone identifier: %{public}s completion event", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v14, -1, -1);
    v18 = v13;
    a4 = v12;
    MEMORY[0x253099FD0](v18, -1, -1);
  }

  if (*(a3 + 56))
  {

    sub_2520EDBB4(v19);
    if ((byte_27F4D3448 & 1) == 0)
    {
      v20 = sub_2521420BC();
      if (qword_27F4CD758 != -1)
      {
        swift_once();
      }

      v21 = qword_27F4CDF48;
      if (qword_27F4CD760 != -1)
      {
        swift_once();
      }

      v22 = sub_25214195C();
      v23 = __swift_project_value_buffer(v22, qword_27F4CDF50);
      sub_25214193C(v20, &dword_25207E000, v21, "AVF tone playback", 17, 2, v23, "duration timer", 14, 2, MEMORY[0x277D84F90]);
      byte_27F4D3448 = 1;
    }
  }

  result = a4(0, 0);
  if (*(a3 + 48))
  {

    sub_2520E5AE4(1);
  }

  return result;
}

uint64_t sub_2520E1D90()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_252141A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141A8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v1[4];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  aBlock[4] = sub_2520E4450;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_92;
  v13 = _Block_copy(aBlock);

  sub_252141A6C();
  v15[1] = MEMORY[0x277D84F90];
  sub_2520E3EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520E3F18();
  sub_25214218C();
  MEMORY[0x2530991B0](0, v10, v6, v13);
  _Block_release(v13);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_2520E205C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_25214196C();
    v5 = sub_252141FBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      v8 = sub_2521425DC();
      v10 = sub_2520A5448(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] requesting to stop tone playback.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x253099FD0](v7, -1, -1);
      MEMORY[0x253099FD0](v6, -1, -1);
    }

    if (*(v3 + 56))
    {

      sub_2520ECCA8();
    }

    if ((byte_27F4D3448 & 1) == 0)
    {
      v11 = sub_2521420BC();
      if (qword_27F4CD758 != -1)
      {
        swift_once();
      }

      v12 = qword_27F4CDF48;
      if (qword_27F4CD760 != -1)
      {
        swift_once();
      }

      v13 = sub_25214195C();
      v14 = __swift_project_value_buffer(v13, qword_27F4CDF50);
      sub_25214193C(v11, &dword_25207E000, v12, "AVF tone playback", 17, 2, v14, "user tap", 8, 2, MEMORY[0x277D84F90]);
      byte_27F4D3448 = 1;
    }
  }

  return result;
}

uint64_t sub_2520E22A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] setting up observers", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v13 = v3[9];
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    v3[9] = 0;
    swift_unknownObjectRelease();
  }

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  v18 = *MEMORY[0x277CB8210];
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = v5;
  v61 = sub_2520E425C;
  v62 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2520E3078;
  v60 = &block_descriptor_45;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);

  v3[9] = v22;
  swift_unknownObjectRelease();
  v23 = v3[10];
  if (v23)
  {
    swift_unknownObjectRetain();
    v24 = [v16 defaultCenter];
    [v24 removeObserver_];

    swift_unknownObjectRelease();
    v3[10] = 0;
    swift_unknownObjectRelease();
  }

  v25 = [v16 defaultCenter];
  v26 = *MEMORY[0x277CB8068];
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a1;
  v28[4] = a2;
  v28[5] = v5;
  v61 = sub_2520E4268;
  v62 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2520E3078;
  v60 = &block_descriptor_52;
  v29 = _Block_copy(&aBlock);

  v30 = [v25 addObserverForName:v26 object:0 queue:0 usingBlock:v29];
  _Block_release(v29);

  v3[10] = v30;
  swift_unknownObjectRelease();
  v31 = v3[11];
  if (v31)
  {
    swift_unknownObjectRetain();
    v32 = [v16 defaultCenter];
    [v32 removeObserver_];

    swift_unknownObjectRelease();
    v3[11] = 0;
    swift_unknownObjectRelease();
  }

  v33 = [v16 defaultCenter];
  v34 = *MEMORY[0x277CB8098];
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = a1;
  v36[4] = a2;
  v36[5] = v5;
  v61 = sub_2520E4274;
  v62 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2520E3078;
  v60 = &block_descriptor_59;
  v37 = _Block_copy(&aBlock);

  v38 = [v33 addObserverForName:v34 object:0 queue:0 usingBlock:v37];
  _Block_release(v37);

  v3[11] = v38;
  swift_unknownObjectRelease();
  v39 = v3[12];
  if (v39)
  {
    swift_unknownObjectRetain();
    v40 = [v16 defaultCenter];
    [v40 removeObserver_];

    swift_unknownObjectRelease();
    v3[12] = 0;
    swift_unknownObjectRelease();
  }

  v41 = [v16 defaultCenter];
  v42 = *MEMORY[0x277CB80A0];
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = a1;
  v44[4] = a2;
  v44[5] = v5;
  v61 = sub_2520E429C;
  v62 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2520E3078;
  v60 = &block_descriptor_66;
  v45 = _Block_copy(&aBlock);

  v46 = [v41 addObserverForName:v42 object:0 queue:0 usingBlock:v45];
  _Block_release(v45);

  v3[12] = v46;
  swift_unknownObjectRelease();
  v47 = v3[13];
  if (v47)
  {
    swift_unknownObjectRetain();
    v48 = [v16 defaultCenter];
    [v48 removeObserver_];

    swift_unknownObjectRelease();
    v3[13] = 0;
    swift_unknownObjectRelease();
  }

  v49 = [v16 defaultCenter];
  v50 = v3[2];
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = a1;
  v52[4] = a2;
  v61 = sub_2520E42CC;
  v62 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2520E3078;
  v60 = &block_descriptor_73;
  v53 = _Block_copy(&aBlock);

  v54 = [v49 addObserverForName:v50 object:0 queue:0 usingBlock:v53];
  _Block_release(v53);

  v3[13] = v54;
  return swift_unknownObjectRelease();
}

uint64_t sub_2520E2B28(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  result = sub_25214170C();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    v33 = sub_252141B9C();
    v8 = MEMORY[0x277D837D0];
    sub_2521421DC();
    if (!*(v7 + 16) || (v9 = sub_25213E754(v34), (v10 & 1) == 0))
    {

      return sub_2520E42D8(v34);
    }

    sub_2520A5FC4(*(v7 + 56) + 32 * v9, v35);
    sub_2520E42D8(v34);
    type metadata accessor for RouteChangeReason(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    if (v33 > 3)
    {
      if (v33 > 6)
      {
        if (v33 == 7)
        {
          v12 = 0x800000025214A390;
          v31 = 0xD00000000000001ELL;
          goto LABEL_29;
        }

        if (v33 != 8)
        {
          goto LABEL_28;
        }

        v12 = 0x800000025214A370;
        v31 = 0xD00000000000001ALL;
      }

      else if (v33 == 4)
      {
        v12 = 0xE800000000000000;
        v31 = 0x656469727265764FLL;
      }

      else
      {
        if (v33 != 6)
        {
          goto LABEL_28;
        }

        v12 = 0xEF7065656C53206DLL;
        v31 = 0x6F724620656B6157;
      }
    }

    else if (v33 > 1)
    {
      if (v33 == 2)
      {
        v11 = 543452239;
        goto LABEL_26;
      }

      v12 = 0xEF65676E61684320;
      v31 = 0x79726F6765746143;
    }

    else
    {
      if (v33)
      {
        if (v33 == 1)
        {
          v11 = 544695630;
LABEL_26:
          v31 = v11 | 0x74756F5200000000;
          v12 = 0xE900000000000065;
          goto LABEL_29;
        }

LABEL_28:
        v31 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_29;
      }

      v12 = 0xE700000000000000;
      v31 = 0x6E776F6E6B6E55;
    }

LABEL_29:
    v32 = v12;

    v13 = sub_25214196C();
    v14 = sub_252141FBC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v15 = 136446722;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, v34);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_2520A5448(v31, v32, v34);
      *(v15 + 22) = 2082;
      v19 = sub_252141B2C();
      v21 = v20;
      v22 = v31;

      v23 = sub_2520A5448(v19, v21, v34);

      *(v15 + 24) = v23;
      _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] route change %{public}s - %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      v8 = MEMORY[0x277D837D0];
      MEMORY[0x253099FD0](v30, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    else
    {

      v22 = v31;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE168, &unk_252144C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252143AC0;
    *(inited + 32) = sub_252141B9C();
    *(inited + 72) = v8;
    *(inited + 40) = v25;
    *(inited + 48) = v22;
    *(inited + 56) = v32;
    sub_25209D048(inited);
    swift_setDeallocating();
    sub_2520E432C(inited + 32);
    v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v27 = sub_252141B6C();
    v28 = sub_252141B0C();

    v29 = [v26 initWithDomain:v27 code:-2 userInfo:v28];

    a3(v29);
  }

  return result;
}

uint64_t sub_2520E3078(uint64_t a1, uint64_t a2)
{
  v3 = sub_25214171C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2521416FC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_2520E316C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v6 = sub_25214170C();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v49 = sub_252141B9C();
      sub_2521421DC();
      if (!*(v7 + 16) || (v8 = sub_25213E754(v51), (v9 & 1) == 0))
      {

        sub_2520E42D8(v51);
        return;
      }

      sub_2520A5FC4(*(v7 + 56) + 32 * v8, v52);
      sub_2520E42D8(v51);
      if (swift_dynamicCast())
      {
        v10 = v49;
        v50 = sub_252141B9C();
        sub_2521421DC();
        if (*(v7 + 16) && (v11 = sub_25213E754(v51), (v12 & 1) != 0))
        {
          sub_2520A5FC4(*(v7 + 56) + 32 * v11, v52);
          sub_2520E42D8(v51);

          if (swift_dynamicCast())
          {
            if (v50 <= 1)
            {
              if (!v50)
              {
                v13 = 0xE700000000000000;
                v14 = 0x746C7561666544;
                goto LABEL_38;
              }

              if (v50 == 1)
              {
                v13 = 0x800000025214A330;
                v14 = 0xD000000000000011;
LABEL_38:
                if (qword_27F4CD708 != -1)
                {
                  swift_once();
                }

                v39 = sub_25214198C();
                __swift_project_value_buffer(v39, qword_27F4CDE68);

                v16 = sub_25214196C();
                v40 = sub_252141FBC();

                if (!os_log_type_enabled(v16, v40))
                {

                  if (!v10)
                  {
                    goto LABEL_29;
                  }

LABEL_24:
                  if (v10 == 1)
                  {
                    sub_25209D048(MEMORY[0x277D84F90]);
                    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                    v26 = sub_252141B6C();
                    v27 = sub_252141B0C();

                    v28 = [v25 initWithDomain:v26 code:-16 userInfo:v27];
LABEL_30:
                    v37 = v28;

                    a3(v37);

                    return;
                  }

                  v29 = sub_25214196C();
                  v30 = sub_252141FBC();
                  if (os_log_type_enabled(v29, v30))
                  {
                    v31 = swift_slowAlloc();
                    v32 = swift_slowAlloc();
                    v51[0] = v32;
                    *v31 = 136446210;
                    v33 = sub_2521425DC();
                    v35 = sub_2520A5448(v33, v34, v51);

                    *(v31 + 4) = v35;
                    _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] unhandled interruption type", v31, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v32);
                    MEMORY[0x253099FD0](v32, -1, -1);
                    MEMORY[0x253099FD0](v31, -1, -1);
                  }

LABEL_29:
                  sub_25209D048(MEMORY[0x277D84F90]);
                  v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                  v26 = sub_252141B6C();
                  v27 = sub_252141B0C();

                  v28 = [v36 initWithDomain:v26 code:-17 userInfo:v27];
                  goto LABEL_30;
                }

                v48 = v10;
                v41 = swift_slowAlloc();
                v46 = swift_slowAlloc();
                v51[0] = v46;
                *v41 = 136446466;
                v42 = sub_2521425DC();
                v44 = sub_2520A5448(v42, v43, v51);

                *(v41 + 4) = v44;
                *(v41 + 12) = 2080;
                v45 = sub_2520A5448(v14, v13, v51);

                *(v41 + 14) = v45;
                _os_log_impl(&dword_25207E000, v16, v40, "[%{public}s] ReasonDescription %s", v41, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x253099FD0](v46, -1, -1);
                v24 = v41;
                v10 = v48;
                goto LABEL_22;
              }

LABEL_34:
              v14 = 0;
              v13 = 0xE000000000000000;
              goto LABEL_38;
            }

            if (v50 == 2)
            {
              v38 = "Built-In Mic Muted";
            }

            else
            {
              if (v50 != 4)
              {
                goto LABEL_34;
              }

              v38 = "Route Disconnected";
            }

            v13 = (v38 - 32) | 0x8000000000000000;
            v14 = 0xD000000000000012;
            goto LABEL_38;
          }
        }

        else
        {

          sub_2520E42D8(v51);
        }

        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v15 = sub_25214198C();
        __swift_project_value_buffer(v15, qword_27F4CDE68);
        v16 = sub_25214196C();
        v17 = sub_252141FAC();
        if (!os_log_type_enabled(v16, v17))
        {
LABEL_23:

          if (!v10)
          {
            goto LABEL_29;
          }

          goto LABEL_24;
        }

        v18 = swift_slowAlloc();
        v47 = v10;
        v19 = swift_slowAlloc();
        v51[0] = v19;
        *v18 = 136446210;
        v20 = sub_2521425DC();
        v22 = sub_2520A5448(v20, v21, v51);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] Interruption reason not valid", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        v23 = v19;
        v10 = v47;
        MEMORY[0x253099FD0](v23, -1, -1);
        v24 = v18;
LABEL_22:
        MEMORY[0x253099FD0](v24, -1, -1);
        goto LABEL_23;
      }
    }
  }
}

void sub_2520E3868(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, const char *a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_25214170C())
    {
      v8 = sub_25214196C();
      v9 = sub_252141FBC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v24 = a3;
        v25 = swift_slowAlloc();
        v11 = v25;
        *v10 = 136446466;
        v12 = sub_2521425DC();
        v14 = sub_2520A5448(v12, v13, &v25);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2082;
        v15 = sub_252141B2C();
        v17 = v16;

        v18 = sub_2520A5448(v15, v17, &v25);

        *(v10 + 14) = v18;
        _os_log_impl(&dword_25207E000, v8, v9, a6, v10, 0x16u);
        swift_arrayDestroy();
        v19 = v11;
        a3 = v24;
        MEMORY[0x253099FD0](v19, -1, -1);
        MEMORY[0x253099FD0](v10, -1, -1);
      }

      else
      {
      }
    }

    sub_25209D048(MEMORY[0x277D84F90]);
    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = sub_252141B6C();
    v22 = sub_252141B0C();

    v23 = [v20 initWithDomain:v21 code:-4 userInfo:v22];

    a3(v23);
  }
}

void sub_2520E3AFC(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_25209D048(MEMORY[0x277D84F90]);
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v5 = sub_252141B6C();
    v6 = sub_252141B0C();

    v7 = [v4 initWithDomain:v5 code:-3 userInfo:v6];

    a3(v7);
  }
}

void sub_2520E3C08()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    v0[9] = 0;
    swift_unknownObjectRelease();
  }

  v4 = v0[10];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];

    swift_unknownObjectRelease();
    v0[10] = 0;
    swift_unknownObjectRelease();
  }

  v7 = v0[11];
  if (v7)
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultCenter];
    [v9 removeObserver_];

    swift_unknownObjectRelease();
    v0[11] = 0;
    swift_unknownObjectRelease();
  }

  v10 = v0[12];
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver_];

    swift_unknownObjectRelease();
    v0[12] = 0;
    swift_unknownObjectRelease();
  }

  v13 = v0[13];
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    v0[12] = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2520E3E18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2520E3E50()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2520E3EC0()
{
  result = qword_27F4CE090;
  if (!qword_27F4CE090)
  {
    sub_252141A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE090);
  }

  return result;
}

unint64_t sub_2520E3F18()
{
  result = qword_27F4CE0A0;
  if (!qword_27F4CE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CDCB0, &qword_252143DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE0A0);
  }

  return result;
}

uint64_t sub_2520E3F7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_2520E3FC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t type metadata accessor for HTAudioDevice(uint64_t a1)
{
  result = qword_27F4CE158;
  if (!qword_27F4CE158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2520E405C(uint64_t a1)
{
  result = sub_25214198C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2520E432C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAE8, &qword_252143C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2520E43C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520E4418()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520E4464()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2520E44C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2520E4524()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2520E4578()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id HTAudioSequenceTone.__allocating_init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:frequency:soundLevel:numberOfPulses:pulseDuration:pauseDuration:rampDuration:preStimulusDuration:postStimulusDuration:)(uint64_t a1, char a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, int a23)
{
  v36 = objc_allocWithZone(v23);
  v37 = *a4;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] = a10;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] = a11;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses] = a23;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration] = a12;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration] = a13;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration] = a14;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration] = a15;
  *&v36[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] = a16;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = v37;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v38 = &v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v38 = a6;
  v38[1] = a7;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a17;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a18;
  *&v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a19;
  v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a20;
  v39 = &v36[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v39 = a21;
  v39[1] = a22;
  v45.receiver = v36;
  v45.super_class = type metadata accessor for HTAudioSequence();
  return objc_msgSendSuper2(&v45, sel_init);
}

uint64_t HTAudioSequence.OutputMode.hashValue.getter()
{
  v1 = *v0;
  sub_25214255C();
  MEMORY[0x253099700](v1);
  return sub_25214258C();
}

uint64_t HTAudioSequence.mode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode);

  return v1;
}

uint64_t HTAudioSequence.microphone.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone);

  return v1;
}

id HTAudioSequence.__allocating_init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:)(uint64_t a1, char a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v24 = objc_allocWithZone(v15);
  v25 = *a4;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = v25;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v26 = &v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v26 = a6;
  v26[1] = a7;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a10;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a11;
  *&v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a12;
  v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a13;
  v27 = &v24[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v27 = a14;
  v27[1] = a15;
  v30.receiver = v24;
  v30.super_class = v15;
  return objc_msgSendSuper2(&v30, sel_init);
}

id HTAudioSequence.init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:)(uint64_t a1, char a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = *a4;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v16 = &v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v16 = a6;
  v16[1] = a7;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a10;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a11;
  *&v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a12;
  v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a13;
  v17 = &v15[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v17 = a14;
  v17[1] = a15;
  v19.receiver = v15;
  v19.super_class = type metadata accessor for HTAudioSequence();
  return objc_msgSendSuper2(&v19, sel_init);
}

id HTAudioSequence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2520E4D90()
{
  v1 = OBJC_IVAR____TtC11HearingTest19HTAudioSequenceFile_stimulusURL;
  v2 = sub_2521417FC();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_2520E4E14(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id HTAudioSequenceTone.init(outputID:volume:needsInputFilter:needsOutputFilter:outputMode:priority:mode:calculateCrossCorrelationPeak:parallelCrossCorrelationCalculation:numberOfChannels:micBufferNumbers:requiresBluetoothOutput:microphone:frequency:soundLevel:numberOfPulses:pulseDuration:pauseDuration:rampDuration:preStimulusDuration:postStimulusDuration:)(uint64_t a1, char a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, int a23)
{
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] = a10;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] = a11;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses] = a23;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration] = a12;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration] = a13;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration] = a14;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration] = a15;
  *&v23[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] = a16;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputID] = a1;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_volume] = a9;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter] = a2;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter] = a3;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode] = *a4;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_priority] = a5;
  v24 = &v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_mode];
  *v24 = a6;
  v24[1] = a7;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_calculateCrossCorrelationPeak] = a8;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_parallelCrossCorrelationCalculation] = a17;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_numberOfChannels] = a18;
  *&v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_micBufferNumbers] = a19;
  v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput] = a20;
  v25 = &v23[OBJC_IVAR____TtC11HearingTest15HTAudioSequence_microphone];
  *v25 = a21;
  v25[1] = a22;
  v27.receiver = v23;
  v27.super_class = type metadata accessor for HTAudioSequence();
  return objc_msgSendSuper2(&v27, sel_init);
}

unint64_t sub_2520E513C()
{
  result = qword_27F4CE218;
  if (!qword_27F4CE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE218);
  }

  return result;
}

uint64_t sub_2520E51F4(uint64_t a1)
{
  result = sub_2521417FC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2520E53AC()
{
  v1 = v0;
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2521417BC();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v12[0] = 0;
    v11.receiver = v1;
    v11.super_class = type metadata accessor for HTAudioSequenceFile(0);
    if (objc_msgSendSuper2(&v11, sel_checkValidityAndReturnError_, v12))
    {
      return v12[0];
    }

    v10 = v12[0];
    sub_25214178C();
  }

  else
  {
    sub_25209D048(MEMORY[0x277D84F90]);
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v8 = sub_252141B6C();
    v9 = sub_252141B0C();

    [v7 initWithDomain:v8 code:-7 userInfo:v9];
  }

  return swift_willThrow();
}

id sub_2520E554C()
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (*&v0[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency] == 0.0 && *&v0[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel] == 0.0 && *&v0[OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration] == 0.0)
  {
    sub_25209D048(MEMORY[0x277D84F90]);
    v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v2 = sub_252141B6C();
    v3 = sub_252141B0C();

    [v1 initWithDomain:v2 code:-7 userInfo:v3];
  }

  else
  {
    v7[0] = 0;
    v6.receiver = v0;
    v6.super_class = type metadata accessor for HTAudioSequenceTone();
    if (objc_msgSendSuper2(&v6, sel_checkValidityAndReturnError_, v7))
    {
      return v7[0];
    }

    v5 = v7[0];
    sub_25214178C();
  }

  return swift_willThrow();
}

uint64_t sub_2520E56EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void sub_2520E5854()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);

  v3 = sub_25214196C();
  v4 = sub_252141F9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v1 + 32);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_25207E000, v3, v4, "initialVolume: %@", v5, 0xCu);
    sub_2520E69C4(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  *(v1 + 16) = *(*(v1 + 32) + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result);
}

void sub_2520E599C()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);

  v3 = sub_25214196C();
  v4 = sub_252141F9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *(v1 + 32);
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_25207E000, v3, v4, "sequenceVolume: %@", v5, 0xCu);
    sub_2520E69C4(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  *(v1 + 17) = *(*(v1 + 40) + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result);
}

void sub_2520E5AE4(char a1)
{
  v2 = v1;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDF80);
  v5 = sub_25214196C();
  v6 = sub_252141F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446722;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(0xD00000000000002CLL, 0x800000025214A9C0, &v15);
    *(v7 + 22) = 1024;
    *(v7 + 24) = a1 & 1;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] %s %{BOOL}d", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  if (*(v2 + 17) == 1)
  {
    *(v2 + 17) = 0;
    v12 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v13 = *(v2 + 40);
    *(v2 + 40) = v12;
    v14 = v12;

    sub_2520E599C();
  }

  sub_2520E5F1C(a1 & 1);

  sub_2520E659C();
}

void sub_2520E5D10()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(0xD000000000000016, 0x800000025214A9A0, &v13);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    v10 = sub_2520E813C();
    v11 = *(v1 + 32);
    *(v1 + 32) = v10;
    v12 = v10;

    sub_2520E5854();
  }
}

void sub_2520E5F1C(char a1)
{
  v2 = v1;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDF80);
  v5 = sub_25214196C();
  v6 = sub_252141F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446722;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(0xD00000000000002BLL, 0x800000025214A970, &v15);
    *(v7 + 22) = 1024;
    *(v7 + 24) = a1 & 1;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] %s %{BOOL}d", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  if (*(v2 + 16) == 1)
  {
    if (a1)
    {
      sub_2520E6164();
    }

    *(v2 + 16) = 0;
    v12 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v13 = *(v2 + 32);
    *(v2 + 32) = v12;
    v14 = v12;

    sub_2520E5854();
  }
}

uint64_t sub_2520E6164()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(0xD00000000000001FLL, 0x800000025214A950, &v12);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  if (sub_2520E813C()[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] == 1)
  {
    v10 = *(v1 + 32);
    if (*(v10 + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result) == 1 && !sub_2520E85F4(v10))
    {
      sub_2520E6374();
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_2520E6374()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(0xD00000000000002ALL, 0x800000025214A920, &v16);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v1 + 32);
  v11 = *&v10[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume];
  v12 = objc_opt_self();
  v15 = v10;
  v13 = [v12 sharedAVSystemController];
  LODWORD(v14) = v11;
  [v13 setActiveCategoryVolumeTo_];
}

void sub_2520E659C()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(0xD00000000000001BLL, 0x800000025214A900, &v11);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v1 + 24);
  if (v10)
  {
    *(v1 + 24) = 0;
  }
}

void *sub_2520E6788()
{
  v1 = v0;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDF80);
  v3 = sub_25214196C();
  v4 = sub_252141F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446466;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_2520A5448(0x74696E696564, 0xE600000000000000, &v11);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  if (*(v1 + 16) == 1)
  {
    sub_2520E659C();
    sub_2520E5AE4(1);
  }

  return v1;
}

uint64_t sub_2520E696C()
{
  sub_2520E6788();

  return swift_deallocClassInstance();
}

uint64_t sub_2520E69C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE080, &qword_252144E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2520E6A2C(float a1)
{
  v2 = v1;
  if (qword_27F4CD770 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDF80);
  v5 = sub_25214196C();
  v6 = sub_252141F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446722;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_2520A5448(0xD000000000000026, 0x800000025214A9F0, &v21);
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] %s %f", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  if ((*(v2 + 17) & 1) == 0)
  {
    sub_2520E5D10();
    v12 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v12[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = 1;
    *&v12[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = a1;
    *&v12[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName] = xmmword_252144DC0;

    v13 = *(v2 + 40);
    *(v2 + 40) = v12;
    v14 = v12;

    sub_2520E599C();
    v15 = *(v2 + 40);
    v16 = type metadata accessor for SystemVolumeMaintainer();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver] = 0;
    *&v17[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper] = v15;
    v22.receiver = v17;
    v22.super_class = v16;
    v18 = v15;
    v19 = objc_msgSendSuper2(&v22, sel_init);
    sub_2520E7DEC();
    sub_2520E8304();

    v20 = *(v2 + 24);
    *(v2 + 24) = v19;
  }
}

void sub_2520E6D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v88[1] = *MEMORY[0x277D85DE8];
  v8 = [v5 availableInputs];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v84 = v5;
  v82 = a3;
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v10 = sub_252141CDC();

  v83 = a4;
  if (v10 >> 62)
  {
    goto LABEL_92;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_93:

    return;
  }

LABEL_4:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530993D0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v11 = sub_25214232C();
      if (!v11)
      {
        goto LABEL_93;
      }

      goto LABEL_4;
    }

    v16 = [v13 portType];
    v17 = sub_252141B9C();
    v19 = v18;
    if (v17 == sub_252141B9C() && v19 == v20)
    {
      break;
    }

    v22 = sub_25214247C();

    if (v22)
    {
      goto LABEL_18;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_93;
    }
  }

LABEL_18:

  v87 = v14;
  v23 = [v87 dataSources];
  if (!v23)
  {

    return;
  }

  v24 = v23;
  sub_2520A5A94(0, &qword_27F4CE240, 0x277CB8400);
  v25 = sub_252141CDC();

  if (a2)
  {
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &unk_28644E198;
    v26[4] = a1;
    v26[5] = a2;

    v10 = sub_2520E7C24;
    if (!(v25 >> 62))
    {
      goto LABEL_21;
    }

LABEL_37:
    v27 = sub_25214232C();
  }

  else
  {
    v10 = sub_2520E7948;
    if (v25 >> 62)
    {
      goto LABEL_37;
    }

LABEL_21:
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27)
  {
    v28 = 0;
    v16 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x2530993D0](v28, v25);
      }

      else
      {
        if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v29 = *(v25 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_90;
      }

      if ((v10)(v29))
      {
        break;
      }

      ++v28;
      if (v31 == v27)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:

    v30 = 0;
  }

  v88[0] = 0;
  if (![v87 setPreferredDataSource:v30 error:v88])
  {
    v41 = v88[0];
    v42 = sub_25214178C();

    swift_willThrow();
    v43 = sub_25214177C();
    if (qword_27F4CD710 != -1)
    {
      swift_once();
    }

    v44 = sub_25214198C();
    __swift_project_value_buffer(v44, qword_27F4CDE80);
    v36 = v43;
    v45 = sub_25214196C();
    v46 = sub_252141FAC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67109120;
      v48 = [v36 code];
      if (v48 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_97;
      }

      if (v48 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_100;
      }

      *(v47 + 4) = v48;

      _os_log_impl(&dword_25207E000, v45, v46, "setPreferredDataSource %d", v47, 8u);
      MEMORY[0x253099FD0](v47, -1, -1);
    }

    else
    {
    }

    goto LABEL_52;
  }

  v32 = qword_27F4CD710;
  v33 = v88[0];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_25214198C();
  __swift_project_value_buffer(v34, qword_27F4CDE80);
  v35 = v30;
  v36 = sub_25214196C();
  v37 = sub_252141F8C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v30;
    v40 = v35;
    _os_log_impl(&dword_25207E000, v36, v37, "using port %@", v38, 0xCu);
    sub_2520E69C4(v39);
    MEMORY[0x253099FD0](v39, -1, -1);
    MEMORY[0x253099FD0](v38, -1, -1);
  }

LABEL_52:

  v88[0] = 0;
  if (![v84 setPreferredInput:v87 error:v88])
  {
    v57 = v88[0];
    v58 = sub_25214178C();

    swift_willThrow();
    v59 = sub_25214177C();
    if (qword_27F4CD710 != -1)
    {
      swift_once();
    }

    v60 = sub_25214198C();
    __swift_project_value_buffer(v60, qword_27F4CDE80);
    v36 = v59;
    v61 = sub_25214196C();
    v62 = sub_252141FAC();
    if (!os_log_type_enabled(v61, v62))
    {

      goto LABEL_64;
    }

    v63 = swift_slowAlloc();
    *v63 = 67109120;
    v64 = [v36 code];
    if (v64 >= 0xFFFFFFFF80000000)
    {
      if (v64 <= 0x7FFFFFFF)
      {
        *(v63 + 4) = v64;

        _os_log_impl(&dword_25207E000, v61, v62, "setPreferredInput %d", v63, 8u);
        MEMORY[0x253099FD0](v63, -1, -1);
LABEL_64:

        goto LABEL_65;
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v49 = qword_27F4CD710;
  v50 = v88[0];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = sub_25214198C();
  __swift_project_value_buffer(v51, qword_27F4CDE80);
  v52 = v87;
  v36 = sub_25214196C();
  v53 = sub_252141F8C();

  if (os_log_type_enabled(v36, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v52;
    *v55 = v87;
    v56 = v52;
    _os_log_impl(&dword_25207E000, v36, v53, "using port %@", v54, 0xCu);
    sub_2520E69C4(v55);
    MEMORY[0x253099FD0](v55, -1, -1);
    MEMORY[0x253099FD0](v54, -1, -1);
  }

LABEL_65:

  if (v83)
  {
LABEL_66:

    return;
  }

  if (v82 == 1936747378)
  {
    v16 = 0x72656B61657073;
  }

  else
  {
    v16 = 1701736302;
  }

  if (v82 == 1936747378)
  {
    v36 = 0xE700000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  v88[0] = 0;
  if ([v84 overrideOutputAudioPort:v82 error:?])
  {
    v65 = qword_27F4CD710;
    v66 = v88[0];
    if (v65 == -1)
    {
LABEL_75:
      v67 = sub_25214198C();
      __swift_project_value_buffer(v67, qword_27F4CDE80);

      v68 = sub_25214196C();
      v69 = sub_252141F8C();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v88[0] = v71;
        *v70 = 136315138;
        v72 = sub_2520A5448(v16, v36, v88);

        *(v70 + 4) = v72;
        _os_log_impl(&dword_25207E000, v68, v69, "output port override %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x253099FD0](v71, -1, -1);
        MEMORY[0x253099FD0](v70, -1, -1);
      }

      else
      {
      }

      goto LABEL_66;
    }

LABEL_98:
    swift_once();
    goto LABEL_75;
  }

  v73 = v88[0];

  v74 = sub_25214178C();

  swift_willThrow();
  v75 = sub_25214177C();
  if (qword_27F4CD710 != -1)
  {
    swift_once();
  }

  v76 = sub_25214198C();
  __swift_project_value_buffer(v76, qword_27F4CDE80);
  v77 = v75;
  v78 = sub_25214196C();
  v79 = sub_252141FAC();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 67109120;
    v81 = [v77 code];
    if (v81 >= 0xFFFFFFFF80000000)
    {
      if (v81 <= 0x7FFFFFFF)
      {
        *(v80 + 4) = v81;

        _os_log_impl(&dword_25207E000, v78, v79, "overrideOutputAudioPort %d", v80, 8u);
        MEMORY[0x253099FD0](v80, -1, -1);

        goto LABEL_86;
      }

LABEL_102:
      __break(1u);
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_86:
}

uint64_t sub_2520E7948(void *a1)
{
  v1 = [a1 dataSourceID];
  [v1 integerValue];

  return 0;
}

uint64_t sub_2520E7998(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62)
  {
LABEL_24:
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    v16 = a3;
    v17 = sub_25214232C();
    a3 = v16;
    v6 = v17;
  }

  else
  {
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v20 = a3;
  v8 = (a3 + 40);
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530993D0](v7, a2);
    }

    else
    {
      if (v7 >= *(v21 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = *(a2 + 8 * v7 + 32);
    }

    v10 = v9;
    sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
    v11 = [v10 dataSourceID];
    v12 = [a1 dataSourceID];
    v13 = sub_25214210C();

    if (v13)
    {
      break;
    }

    v8 += 2;
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_23;
    }
  }

  if (v7 >= *(v20 + 16) || !a5)
  {
    return 0;
  }

  if (*(v8 - 1) == a4 && *v8 == a5)
  {
    return 1;
  }

  return sub_25214247C();
}

void *sub_2520E7B68(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CDCA0, &unk_2521440E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2520E7BDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_2520E7C70(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AVSystemControllerHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2520E7CC8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver;
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];

    swift_unknownObjectRelease();
    *&v1[v2] = 0;
    swift_unknownObjectRelease();
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for SystemVolumeMaintainer();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2520E7DEC()
{
  if (sub_2520E813C()[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper);
    if (v1[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] == 1 && !sub_2520E85F4(*(v0 + OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper)))
    {
      v2 = *&v1[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume];
      v3 = objc_opt_self();
      v4 = v1;
      v5 = [v3 sharedAVSystemController];
      LODWORD(v6) = v2;
      [v5 setActiveCategoryVolumeTo_];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_2520E7ED0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = sub_25214170C();
  if (!v4)
  {

    v24 = 0u;
    v25 = 0u;
    goto LABEL_12;
  }

  v5 = v4;
  v21 = sub_252141B9C();
  v22 = v6;
  sub_2521421DC();
  if (!*(v5 + 16) || (v7 = sub_25213E754(v23), (v8 & 1) == 0))
  {

    sub_2520E42D8(v23);
    v24 = 0u;
    v25 = 0u;
    goto LABEL_10;
  }

  sub_2520A5FC4(*(v5 + 56) + 32 * v7, &v24);
  sub_2520E42D8(v23);

  if (!*(&v25 + 1))
  {
LABEL_10:

LABEL_12:
    sub_2520E84F8(&v24);
    return;
  }

  if (swift_dynamicCast())
  {
    v9 = v23[0];
    v10 = type metadata accessor for AVSessionCategoryVolume();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
    *v12 = 0;
    v12[1] = 0;
    v11[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = 1;
    *&v11[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = v9;
    *v12 = 0;
    v12[1] = 0;
    v20.receiver = v11;
    v20.super_class = v10;
    v13 = objc_msgSendSuper2(&v20, sel_init);
    v14 = *&v3[OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_fixedVolumeHelper];
    if (sub_2520E85F4(v13))
    {
    }

    else
    {
      v15 = *&v14[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume];
      v16 = objc_opt_self();
      v17 = v14;
      v18 = [v16 sharedAVSystemController];
      LODWORD(v19) = v15;
      [v18 setActiveCategoryVolumeTo_];
    }
  }

  else
  {
  }
}

_BYTE *sub_2520E813C()
{
  v16 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedAVSystemController];
  if (v0)
  {
    v1 = v0;
    v15 = 0;
    v2 = [objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume()) init];
    v14 = 0;
    v3 = [v1 getActiveCategoryVolume:&v15 andName:&v14];
    if (v14)
    {
      v4 = v15;
      v5 = v14;
      v6 = sub_252141BBC();
      v8 = v7;

      v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = v3;
      *&v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = v4;
      v9 = &v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
      *v9 = v6;
      v9[1] = v8;
    }

    else
    {

      v12 = v15;
      v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = v3;
      *&v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = v12;
      v13 = &v2[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
      *v13 = 0;
      v13[1] = 0;
    }

    return v2;
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for AVSessionCategoryVolume());

    return [v10 init];
  }
}

uint64_t sub_2520E8304()
{
  v1 = OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC11HearingTest22SystemVolumeMaintainer_systemVolumeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + v1) = 0;
    swift_unknownObjectRelease();
  }

  v5 = [objc_opt_self() defaultCenter];
  v6 = *MEMORY[0x277D26DE8];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_2520E84D8;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2520E3078;
  v11[3] = &block_descriptor_6;
  v8 = _Block_copy(v11);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  *(v0 + v1) = v9;
  return swift_unknownObjectRelease();
}

uint64_t sub_2520E84A0()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2520E84F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE0B0, &unk_252144AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2520E85F4(_BOOL8 result)
{
  if (*(v1 + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result) != 1 || *(result + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result) != 1)
  {
    return 0;
  }

  v2 = *(result + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume);
  v3 = *(v1 + OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume);
  if (COERCE_INT(fabs(v2 + v3)) > 2139095039)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = fabsf(v2 + v3);
  if (v4 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 + 0x4000000000000000 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = vabds_f32(v2, v3);
  return v5 <= vcvts_n_f32_s64(2 * v4, 0x17uLL) || v5 < 1.1755e-38;
}

id sub_2520E86A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AVSessionCategoryVolume();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2520E870C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void *sub_2520E878C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2520E87B8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2520E8854@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2520E8864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2520EEB68(a1);

  *a2 = v3;
  return result;
}

void sub_2520E88A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v432 = a5;
  v433 = a4;
  v431 = a3;
  v434 = a2;
  v443 = *MEMORY[0x277D85DE8];
  v435 = *v6;
  v428 = sub_252141ABC();
  v427 = *(v428 - 1);
  MEMORY[0x28223BE20](v428);
  v426 = v419 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25214198C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v419 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapFileUrl;
  v15 = sub_2521417FC();
  (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine;
  *&v7[v16] = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator] = 0;
  v17 = &v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generatorId];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
  if (qword_27F4CD720 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_27F4CDEB0);
  v20 = *(v11 + 16);
  v20(&v7[v18], v19, v10);
  v20(v13, &v7[v18], v10);
  v21 = sub_25214196C();
  v22 = sub_252141FBC();
  v23 = os_log_type_enabled(v21, v22);
  v436 = v7;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v430 = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    *&aBlock = v26;
    *v25 = 136446210;
    v27 = sub_2521425DC();
    v29 = sub_2520A5448(v27, v28, &aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] Hearing test audio engine init", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v30 = v26;
    v7 = v436;
    MEMORY[0x253099FD0](v30, -1, -1);
    v31 = v25;
    a1 = v430;
    MEMORY[0x253099FD0](v31, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sequence] = a1;
  type metadata accessor for HTAudioSequenceTone();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = a1;
  v34 = [v33 isKindOfClass_];
  v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_mode] = v34;
  v35 = &v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode];
  v36 = *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode];
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode] = 0;

  v37 = *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode];
  v422 = &v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode];
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode] = 0;

  v38 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator;
  *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator] = 0;

  v421 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_mode;
  v39 = v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_mode];
  v420 = v35;
  if (v39)
  {
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v40;
      v42 = *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine];
      v43 = v33;
      v44 = [v42 outputNode];
      v45 = [v44 outputFormatForBus_];

      if (![v45 channelCount])
      {

        v52 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v49 = sub_252141B6C();
        [v52 initWithDomain:v49 code:-14 userInfo:0];
        goto LABEL_12;
      }

      v46 = &selRef_categoryOptions;
      [v45 sampleRate];
      if (v47 == 0.0)
      {

        v48 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v49 = sub_252141B6C();
        [v48 initWithDomain:v49 code:-16 userInfo:0];
LABEL_12:

        swift_willThrow();

LABEL_72:
LABEL_73:

LABEL_74:

        return;
      }

      v425 = v33;
      v424 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
      v53 = sub_25214196C();
      v54 = sub_252141FBC();
      v55 = os_log_type_enabled(v53, v54);
      v430 = v43;
      v429 = v45;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&aBlock = v57;
        *v56 = 136446210;
        v58 = v435;
        v59 = sub_2521425DC();
        v61 = sub_2520A5448(v59, v60, &aBlock);

        *(v56 + 4) = v61;
        v7 = v436;
        _os_log_impl(&dword_25207E000, v53, v54, "[%{public}s] create tone generator", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        v62 = v57;
        v46 = &selRef_categoryOptions;
        MEMORY[0x253099FD0](v62, -1, -1);
        v63 = v56;
        v45 = v429;
        MEMORY[0x253099FD0](v63, -1, -1);
      }

      else
      {

        v58 = v435;
      }

      [v45 v46[35]];
      v65 = v64;
      v66 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_frequency);
      v67 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_soundLevel);
      v68 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_numberOfPulses);
      v69 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pulseDuration);
      v70 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_pauseDuration);
      v71 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_rampDuration);
      v72 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_preStimulusDuration);
      v73 = *(v41 + OBJC_IVAR____TtC11HearingTest19HTAudioSequenceTone_postStimulusDuration);
      v74 = swift_allocObject();
      v75 = v433;
      v74[2] = v7;
      v74[3] = v75;
      v74[4] = v432;
      v74[5] = v58;
      type metadata accessor for HTToneGenerator(0);
      swift_allocObject();
      v76 = v431;

      v77 = sub_2520CE5E0(v68, v76, sub_2520EEE28, v74, v65, v66, v67, v69, v70, v71, v72, v73);

      *&v7[v38] = v77;

      v78 = *&v7[v38];
      if (v78)
      {
        v79 = *(v78 + 16);
      }

      else
      {
        v79 = 0;
        v80 = 0;
      }

      v81 = v430;
      v82 = &v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generatorId];
      *v82 = v79;
      v82[1] = v80;

      v83 = sub_25214196C();
      v84 = sub_252141FBC();

      if (os_log_type_enabled(v83, v84))
      {
        v433 = v76;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&aBlock = v86;
        *v85 = 136446466;
        v87 = sub_2521425DC();
        v89 = sub_2520A5448(v87, v88, &aBlock);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2080;
        if (v82[1])
        {
          v90 = *v82;
          v91 = v82[1];
        }

        else
        {
          v91 = 0xE400000000000000;
          v90 = 1162760014;
        }

        v81 = v430;

        v92 = sub_2520A5448(v90, v91, &aBlock);

        *(v85 + 14) = v92;
        _os_log_impl(&dword_25207E000, v83, v84, "[%{public}s] tone generator ID:%s", v85, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v86, -1, -1);
        MEMORY[0x253099FD0](v85, -1, -1);

        v76 = v433;
      }

      else
      {
      }

      v93 = v429;
      v7 = v436;
      v94 = *&v436[v38];

      v33 = v425;
      if (!v94)
      {
        v376 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v377 = sub_252141B6C();
        [v376 initWithDomain:v377 code:-10 userInfo:0];

        swift_willThrow();

        goto LABEL_73;
      }
    }

    v95 = sub_25214196C();
    v96 = sub_252141FBC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&aBlock = v98;
      *v97 = 136446210;
      v99 = sub_2521425DC();
      v101 = sub_2520A5448(v99, v100, &aBlock);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_25207E000, v95, v96, "[%{public}s] create source node for generator", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x253099FD0](v98, -1, -1);
      MEMORY[0x253099FD0](v97, -1, -1);
    }

    v102 = objc_allocWithZone(MEMORY[0x277CB8420]);
    v441 = sub_2520EED10;
    v442 = v7;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v439 = sub_2520EE96C;
    v440 = &block_descriptor_50_0;
    v103 = _Block_copy(&aBlock);

    v104 = [v102 initWithRenderBlock_];
    _Block_release(v103);

    v50 = v104;
    v51 = v422;
  }

  else
  {
    v50 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
    v51 = v35;
  }

  v105 = *v51;
  *v51 = v50;

  if (*(v33 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsInputFilter) == 1)
  {
    v106 = sub_25214196C();
    v107 = sub_252141FBC();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&aBlock = v109;
      *v108 = 136446210;
      v110 = sub_2521425DC();
      v112 = sub_2520A5448(v110, v111, &aBlock);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_25207E000, v106, v107, "[%{public}s] insert input filter", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x253099FD0](v109, -1, -1);
      MEMORY[0x253099FD0](v108, -1, -1);
    }

    v113 = *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features];
    if ((v113 & 1) == 0)
    {
      *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features] = v113 | 1;
    }
  }

  if (*(v33 + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_needsOutputFilter) == 1)
  {
    v114 = sub_25214196C();
    v115 = sub_252141FBC();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&aBlock = v117;
      *v116 = 136446210;
      v118 = sub_2521425DC();
      v120 = sub_2520A5448(v118, v119, &aBlock);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_25207E000, v114, v115, "[%{public}s] insert output filter", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x253099FD0](v117, -1, -1);
      MEMORY[0x253099FD0](v116, -1, -1);
    }

    v121 = *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features];
    if ((v121 & 2) == 0)
    {
      *&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features] = v121 | 2;
    }
  }

  v424 = [objc_opt_self() sharedInstance];
  if (!v434)
  {
LABEL_51:
    v425 = v33;
    v142 = dispatch_semaphore_create(0);
    v143 = swift_allocObject();
    v429 = v143;
    *(v143 + 16) = 0;
    v144 = (v143 + 16);
    v145 = swift_allocObject();
    v430 = v145;
    *(v145 + 16) = 0;
    v419[0] = v145 + 16;
    v433 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
    v146 = sub_25214196C();
    v147 = sub_252141FBC();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&aBlock = v149;
      *v148 = 136446210;
      v150 = v435;
      v151 = sub_2521425DC();
      v153 = sub_2520A5448(v151, v152, &aBlock);

      *(v148 + 4) = v153;
      _os_log_impl(&dword_25207E000, v146, v147, "[%{public}s] instantiate multichannel mixer", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x253099FD0](v149, -1, -1);
      MEMORY[0x253099FD0](v148, -1, -1);
    }

    else
    {

      v150 = v435;
    }

    v154 = objc_opt_self();
    v155 = swift_allocObject();
    v156 = v430;
    *(v155 + 2) = v436;
    *(v155 + 3) = v156;
    *(v155 + 4) = v429;
    *(v155 + 5) = v142;
    *(v155 + 6) = v150;
    v441 = sub_2520EEDD8;
    v442 = v155;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v439 = sub_2520EC464;
    v440 = &block_descriptor_62;
    v157 = _Block_copy(&aBlock);

    v423 = v142;

    aBlock = xmmword_252144EC0;
    LODWORD(v439) = 0;
    [v154 instantiateWithComponentDescription:&aBlock options:0 completionHandler:v157];
    _Block_release(v157);
    v158 = sub_25214196C();
    v159 = sub_252141FBC();
    v160 = os_log_type_enabled(v158, v159);
    v161 = v425;
    if (v160)
    {
      v162 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&aBlock = v163;
      *v162 = 136446210;
      v164 = sub_2521425DC();
      v166 = sub_2520A5448(v164, v165, &aBlock);

      *(v162 + 4) = v166;
      _os_log_impl(&dword_25207E000, v158, v159, "[%{public}s] wait for multichannel mixer", v162, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v163);
      MEMORY[0x253099FD0](v163, -1, -1);
      MEMORY[0x253099FD0](v162, -1, -1);
    }

    v167 = v426;
    sub_252141A9C();
    v168 = v423;
    sub_2521420DC();
    v427[1](v167, v428);
    if (sub_252141A2C())
    {
      swift_beginAccess();
      v169 = *v144;
      if (*v144)
      {
        v170 = *&v436[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer];
        *&v436[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer] = v169;
        v171 = v169;

        v172 = sub_25214196C();
        v173 = sub_252141FBC();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          v175 = swift_slowAlloc();
          inData[0] = v175;
          *v174 = 136446210;
          v176 = sub_2521425DC();
          v178 = sub_2520A5448(v176, v177, inData);

          *(v174 + 4) = v178;
          _os_log_impl(&dword_25207E000, v172, v173, "[%{public}s] attaching multichannel mixer into engine", v174, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v175);
          MEMORY[0x253099FD0](v175, -1, -1);
          MEMORY[0x253099FD0](v174, -1, -1);
        }

        if (!*v144)
        {
          __break(1u);
          return;
        }

        v179 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine;
        v180 = v436;
        v181 = &selRef_categoryOptions;
        [*&v436[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine] attachNode_];
        v182 = *v144;
        if (*v144)
        {
          v183 = v180[v421];
          v184 = v180;
          v428 = v182;
          if (v183)
          {
            v185 = *v422;
            if (*v422)
            {
              v186 = v182;
              v187 = v185;
              v188 = sub_25214196C();
              v189 = sub_252141FBC();
              if (os_log_type_enabled(v188, v189))
              {
                v190 = swift_slowAlloc();
                v191 = swift_slowAlloc();
                inData[0] = v191;
                *v190 = 136446210;
                v192 = sub_2521425DC();
                v194 = sub_2520A5448(v192, v193, inData);
                v181 = &selRef_categoryOptions;

                *(v190 + 4) = v194;
                v184 = v436;
                v195 = "[%{public}s] Attaching sourceNode to engine";
LABEL_88:
                _os_log_impl(&dword_25207E000, v188, v189, v195, v190, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v191);
                MEMORY[0x253099FD0](v191, -1, -1);
                MEMORY[0x253099FD0](v190, -1, -1);
                goto LABEL_89;
              }

              goto LABEL_89;
            }
          }

          else
          {
            v224 = *v420;
            if (*v420)
            {
              v225 = v182;
              v187 = v224;
              v188 = sub_25214196C();
              v189 = sub_252141FBC();
              if (os_log_type_enabled(v188, v189))
              {
                v190 = swift_slowAlloc();
                v191 = swift_slowAlloc();
                inData[0] = v191;
                *v190 = 136446210;
                v226 = sub_2521425DC();
                v228 = sub_2520A5448(v226, v227, inData);
                v181 = &selRef_categoryOptions;

                *(v190 + 4) = v228;
                v184 = v436;
                v195 = "[%{public}s] Attaching player to engine";
                goto LABEL_88;
              }

LABEL_89:

              [*(v184 + v179) v181[33]];
              goto LABEL_91;
            }
          }

          v229 = v182;
LABEL_91:
          v230 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features;
          if ((*(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_features) & 1) == 0)
          {
            v231 = *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
            *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter) = 0;
            while (1)
            {

              if ((*(v184 + v230) & 2) == 0)
              {
                break;
              }

              v267 = sub_25214196C();
              v268 = sub_252141FBC();
              if (os_log_type_enabled(v267, v268))
              {
                v269 = swift_slowAlloc();
                v270 = swift_slowAlloc();
                inData[0] = v270;
                *v269 = 136446210;
                v271 = sub_2521425DC();
                v273 = sub_2520A5448(v271, v272, inData);

                *(v269 + 4) = v273;
                _os_log_impl(&dword_25207E000, v267, v268, "[%{public}s] setting output processing chain", v269, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v270);
                MEMORY[0x253099FD0](v270, -1, -1);
                MEMORY[0x253099FD0](v269, -1, -1);
              }

              v239 = [objc_allocWithZone(MEMORY[0x277CB8450]) initWithNumberOfBands_];
              v274 = [v239 bands];
              v241 = sub_2520A5A94(0, &qword_27F4CE2F8, 0x277CB8458);
              v242 = sub_252141CDC();

              if ((v242 & 0xC000000000000001) != 0)
              {
                goto LABEL_182;
              }

              if (*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v275 = *(v242 + 32);
                goto LABEL_117;
              }

              __break(1u);
LABEL_187:
              v255 = MEMORY[0x2530993D0](0, v241);
LABEL_107:
              v256 = v255;

              LODWORD(v257) = 4.0;
              [v256 setBandwidth_];

              v258 = *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
              *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter) = v239;
              v231 = v239;

              v259 = sub_25214196C();
              v260 = sub_252141FBC();
              if (os_log_type_enabled(v259, v260))
              {
                v261 = swift_slowAlloc();
                v262 = swift_slowAlloc();
                inData[0] = v262;
                *v261 = 136446210;
                v263 = sub_2521425DC();
                v265 = sub_2520A5448(v263, v264, inData);

                *(v261 + 4) = v265;
                v184 = v436;
                _os_log_impl(&dword_25207E000, v259, v260, "[%{public}s] attaching inputFilter to engine", v261, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v262);
                MEMORY[0x253099FD0](v262, -1, -1);
                MEMORY[0x253099FD0](v261, -1, -1);
              }

              [*(v184 + v179) attachNode_];
            }

            v266 = *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
            *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter) = 0;
LABEL_129:

            v296 = [*(v184 + v179) outputNode];
            v297 = [v296 outputFormatForBus_];

            [v297 sampleRate];
            v299 = v298;
            if (v298 <= 0.0)
            {
              v300 = sub_25214196C();
              v301 = sub_252141FAC();
              if (os_log_type_enabled(v300, v301))
              {
                v302 = swift_slowAlloc();
                v303 = swift_slowAlloc();
                inData[0] = v303;
                *v302 = 136446210;
                v304 = sub_2521425DC();
                v306 = sub_2520A5448(v304, v305, inData);

                *(v302 + 4) = v306;
                v184 = v436;
                _os_log_impl(&dword_25207E000, v300, v301, "[%{public}s] sampleRate for engine outputNode was <= 0. Setting to 44100", v302, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v303);
                MEMORY[0x253099FD0](v303, -1, -1);
                MEMORY[0x253099FD0](v302, -1, -1);
              }

              v299 = 44100.0;
            }

            if (![v297 channelCount])
            {
              v320 = sub_25214196C();
              v321 = sub_252141FAC();
              if (os_log_type_enabled(v320, v321))
              {
                v322 = swift_slowAlloc();
                v323 = swift_slowAlloc();
                inData[0] = v323;
                *v322 = 136446210;
                v324 = sub_2521425DC();
                v326 = sub_2520A5448(v324, v325, inData);

                *(v322 + 4) = v326;
                _os_log_impl(&dword_25207E000, v320, v321, "[%{public}s] Engine output node does not have any output channels", v322, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v323);
                MEMORY[0x253099FD0](v323, -1, -1);
                MEMORY[0x253099FD0](v322, -1, -1);
              }

              v327 = v425;
              v328 = v423;
              v329 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v330 = sub_252141B6C();
              [v329 initWithDomain:v330 code:-14 userInfo:0];

              swift_willThrow();

              goto LABEL_142;
            }

            [v297 sampleRate];
            if (v307 == 0.0)
            {
              v308 = sub_25214196C();
              v309 = sub_252141FAC();
              v310 = os_log_type_enabled(v308, v309);
              v311 = v423;
              if (v310)
              {
                v312 = swift_slowAlloc();
                v313 = swift_slowAlloc();
                inData[0] = v313;
                *v312 = 136446210;
                v314 = sub_2521425DC();
                v316 = sub_2520A5448(v314, v315, inData);

                *(v312 + 4) = v316;
                _os_log_impl(&dword_25207E000, v308, v309, "[%{public}s] Engine output node does not have a sample rate", v312, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v313);
                MEMORY[0x253099FD0](v313, -1, -1);
                MEMORY[0x253099FD0](v312, -1, -1);
              }

              v317 = v425;
              v318 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v319 = sub_252141B6C();
              [v318 initWithDomain:v319 code:-16 userInfo:0];
LABEL_138:

              swift_willThrow();

LABEL_142:
              goto LABEL_74;
            }

            v340 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:1 channels:v299];
            v311 = v423;
            v427 = v340;
            if (!v340)
            {
              v378 = sub_25214196C();
              v379 = sub_252141FAC();
              if (os_log_type_enabled(v378, v379))
              {
                v380 = swift_slowAlloc();
                v381 = swift_slowAlloc();
                inData[0] = v381;
                *v380 = 136446210;
                v382 = sub_2521425DC();
                v384 = sub_2520A5448(v382, v383, inData);

                *(v380 + 4) = v384;
                _os_log_impl(&dword_25207E000, v378, v379, "[%{public}s] Failed to create internal format from engine output node", v380, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v381);
                MEMORY[0x253099FD0](v381, -1, -1);
                MEMORY[0x253099FD0](v380, -1, -1);
              }

              v317 = v425;
              v385 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v319 = sub_252141B6C();
              [v385 initWithDomain:v319 code:-6 userInfo:0];
              goto LABEL_138;
            }

            v341 = *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
            v342 = &selRef_categoryOptions;
            if (v341)
            {
              v343 = v341;
              v344 = sub_25214196C();
              v345 = sub_252141FBC();
              if (os_log_type_enabled(v344, v345))
              {
                v346 = swift_slowAlloc();
                v347 = swift_slowAlloc();
                inData[0] = v347;
                *v346 = 136446210;
                v348 = sub_2521425DC();
                v350 = sub_2520A5448(v348, v349, inData);
                v342 = &selRef_categoryOptions;

                *(v346 + 4) = v350;
                v311 = v423;
                _os_log_impl(&dword_25207E000, v344, v345, "[%{public}s] connecting inputNode to input filter", v346, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v347);
                MEMORY[0x253099FD0](v347, -1, -1);
                MEMORY[0x253099FD0](v346, -1, -1);
              }

              v184 = v436;
              v351 = *&v436[v179];
              v352 = [v351 inputNode];
              [v351 v342[37]];
            }

            if (*v422)
            {
              v353 = *v422;
              v354 = sub_25214196C();
              v355 = sub_252141FBC();
              if (os_log_type_enabled(v354, v355))
              {
                v356 = swift_slowAlloc();
                v357 = swift_slowAlloc();
                inData[0] = v357;
                *v356 = 136446210;
                v358 = sub_2521425DC();
                v360 = sub_2520A5448(v358, v359, inData);
                v342 = &selRef_categoryOptions;

                *(v356 + 4) = v360;
                v311 = v423;
                _os_log_impl(&dword_25207E000, v354, v355, "[%{public}s] Connecting sourceNode to channel mixer", v356, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v357);
                MEMORY[0x253099FD0](v357, -1, -1);
                MEMORY[0x253099FD0](v356, -1, -1);
              }

              v184 = v436;
              [*&v436[v179] v342[37]];
            }

            v361 = *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
            if (v361)
            {
              v362 = *v420;
              if (*v420)
              {
                v363 = v361;
                v364 = v362;
                v365 = sub_25214196C();
                v366 = sub_252141FBC();
                if (os_log_type_enabled(v365, v366))
                {
                  v367 = swift_slowAlloc();
                  v426 = v363;
                  v368 = v367;
                  v369 = swift_slowAlloc();
                  v422 = v364;
                  v370 = v369;
                  inData[0] = v369;
                  *v368 = 136446210;
                  v371 = sub_2521425DC();
                  v373 = sub_2520A5448(v371, v372, inData);
                  v342 = &selRef_categoryOptions;

                  *(v368 + 4) = v373;
                  v311 = v423;
                  _os_log_impl(&dword_25207E000, v365, v366, "[%{public}s] Connecting player to output filter", v368, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v370);
                  v374 = v370;
                  v364 = v422;
                  MEMORY[0x253099FD0](v374, -1, -1);
                  v375 = v368;
                  v363 = v426;
                  MEMORY[0x253099FD0](v375, -1, -1);
                }

                v184 = v436;
                [*&v436[v179] v342[37]];
              }

              else
              {
                v393 = v361;
              }

              v394 = sub_25214196C();
              v395 = sub_252141FBC();
              if (os_log_type_enabled(v394, v395))
              {
                v396 = swift_slowAlloc();
                v397 = swift_slowAlloc();
                inData[0] = v397;
                *v396 = 136446210;
                v398 = sub_2521425DC();
                v400 = sub_2520A5448(v398, v399, inData);
                v342 = &selRef_categoryOptions;

                *(v396 + 4) = v400;
                v311 = v423;
                _os_log_impl(&dword_25207E000, v394, v395, "[%{public}s] Connecting outputFilter to channel mixer", v396, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v397);
                MEMORY[0x253099FD0](v397, -1, -1);
                v401 = v396;
                v184 = v436;
                MEMORY[0x253099FD0](v401, -1, -1);
              }
            }

            else
            {
              if (!*v420)
              {
LABEL_174:
                v402 = sub_25214196C();
                v403 = sub_252141FBC();
                if (os_log_type_enabled(v402, v403))
                {
                  v404 = swift_slowAlloc();
                  v405 = swift_slowAlloc();
                  inData[0] = v405;
                  *v404 = 136446210;
                  v406 = sub_2521425DC();
                  v408 = sub_2520A5448(v406, v407, inData);
                  v342 = &selRef_categoryOptions;

                  *(v404 + 4) = v408;
                  v184 = v436;
                  _os_log_impl(&dword_25207E000, v402, v403, "[%{public}s] connecting multichannel mixer to outputNode", v404, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v405);
                  MEMORY[0x253099FD0](v405, -1, -1);
                  MEMORY[0x253099FD0](v404, -1, -1);
                }

                v409 = *(v184 + v179);
                v410 = [v409 outputNode];
                v411 = v428;
                [v409 v342[37]];

                v412 = sub_25214196C();
                v413 = sub_252141FBC();
                if (os_log_type_enabled(v412, v413))
                {
                  v414 = swift_slowAlloc();
                  v415 = swift_slowAlloc();
                  inData[0] = v415;
                  *v414 = 136446210;
                  v416 = sub_2521425DC();
                  v418 = sub_2520A5448(v416, v417, inData);

                  *(v414 + 4) = v418;
                  _os_log_impl(&dword_25207E000, v412, v413, "[%{public}s] Hearing test audio engine connected", v414, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v415);
                  MEMORY[0x253099FD0](v415, -1, -1);
                  MEMORY[0x253099FD0](v414, -1, -1);
                }

                return;
              }

              v361 = *v420;
              v386 = sub_25214196C();
              v387 = sub_252141FBC();
              if (os_log_type_enabled(v386, v387))
              {
                v388 = swift_slowAlloc();
                v389 = swift_slowAlloc();
                inData[0] = v389;
                *v388 = 136446210;
                v390 = sub_2521425DC();
                v392 = sub_2520A5448(v390, v391, inData);
                v342 = &selRef_categoryOptions;

                *(v388 + 4) = v392;
                v311 = v423;
                _os_log_impl(&dword_25207E000, v386, v387, "[%{public}s] Connecting player to channel mixer", v388, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v389);
                MEMORY[0x253099FD0](v389, -1, -1);
                MEMORY[0x253099FD0](v388, -1, -1);
              }

              v184 = v436;
            }

            [*(v184 + v179) v342[37]];

            goto LABEL_174;
          }

          v232 = sub_25214196C();
          v233 = sub_252141FBC();
          if (os_log_type_enabled(v232, v233))
          {
            v234 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            inData[0] = v235;
            *v234 = 136446210;
            v236 = sub_2521425DC();
            v238 = sub_2520A5448(v236, v237, inData);

            *(v234 + 4) = v238;
            _os_log_impl(&dword_25207E000, v232, v233, "[%{public}s] setting input processing chain", v234, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v235);
            MEMORY[0x253099FD0](v235, -1, -1);
            MEMORY[0x253099FD0](v234, -1, -1);
          }

          v239 = [objc_allocWithZone(MEMORY[0x277CB8450]) initWithNumberOfBands_];
          v240 = [v239 bands];
          v241 = sub_2520A5A94(0, &qword_27F4CE2F8, 0x277CB8458);
          v242 = sub_252141CDC();

          if ((v242 & 0xC000000000000001) != 0)
          {
            v243 = MEMORY[0x2530993D0](0, v242);
          }

          else
          {
            if (!*((v242 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_182:
              v275 = MEMORY[0x2530993D0](0, v242);
LABEL_117:
              v276 = v275;

              [v276 setFilterType_];

              v277 = [v239 bands];
              v246 = sub_252141CDC();

              if ((v246 & 0xC000000000000001) == 0)
              {
                if (!*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_191:
                  __break(1u);
                  goto LABEL_192;
                }

                v278 = *(v246 + 32);
LABEL_120:
                v279 = v278;

                LODWORD(v280) = 1157234688;
                [v279 setFrequency_];

                v281 = [v239 bands];
                v250 = sub_252141CDC();

                if ((v250 & 0xC000000000000001) == 0)
                {
                  if (!*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_194;
                  }

                  v282 = *(v250 + 32);
LABEL_123:
                  v283 = v282;

                  LODWORD(v284) = 4.0;
                  [v283 setBandwidth_];

                  v285 = [v239 bands];
                  v241 = sub_252141CDC();

                  if ((v241 & 0xC000000000000001) != 0)
                  {
LABEL_192:
                    v286 = MEMORY[0x2530993D0](0, v241);
                    goto LABEL_126;
                  }

                  if (*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v286 = *(v241 + 32);
LABEL_126:
                    v287 = v286;

                    [v287 setBypass_];

                    v288 = *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
                    *(v184 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter) = v239;
                    v266 = v239;

                    v289 = sub_25214196C();
                    v290 = sub_252141FBC();
                    if (os_log_type_enabled(v289, v290))
                    {
                      v291 = swift_slowAlloc();
                      v292 = swift_slowAlloc();
                      inData[0] = v292;
                      *v291 = 136446210;
                      v293 = sub_2521425DC();
                      v295 = sub_2520A5448(v293, v294, inData);

                      *(v291 + 4) = v295;
                      v184 = v436;
                      _os_log_impl(&dword_25207E000, v289, v290, "[%{public}s] attaching outputFilter to engine", v291, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v292);
                      MEMORY[0x253099FD0](v292, -1, -1);
                      MEMORY[0x253099FD0](v291, -1, -1);
                    }

                    [*(v184 + v179) attachNode_];
                    goto LABEL_129;
                  }

LABEL_194:
                  __break(1u);
                }

LABEL_189:
                v282 = MEMORY[0x2530993D0](0, v250);
                goto LABEL_123;
              }

LABEL_185:
              v278 = MEMORY[0x2530993D0](0, v246);
              goto LABEL_120;
            }

            v243 = *(v242 + 32);
          }

          v244 = v243;

          [v244 setFilterType_];

          v245 = [v239 bands];
          v246 = sub_252141CDC();

          if ((v246 & 0xC000000000000001) != 0)
          {
            v247 = MEMORY[0x2530993D0](0, v246);
            goto LABEL_101;
          }

          if (*((v246 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v247 = *(v246 + 32);
LABEL_101:
            v248 = v247;

            [v248 setBypass_];

            v249 = [v239 bands];
            v250 = sub_252141CDC();

            if ((v250 & 0xC000000000000001) != 0)
            {
              v251 = MEMORY[0x2530993D0](0, v250);
              goto LABEL_104;
            }

            if (*((v250 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v251 = *(v250 + 32);
LABEL_104:
              v252 = v251;

              LODWORD(v253) = 1157234688;
              [v252 setFrequency_];

              v254 = [v239 bands];
              v241 = sub_252141CDC();

              if ((v241 & 0xC000000000000001) != 0)
              {
                goto LABEL_187;
              }

              if (*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v255 = *(v241 + 32);
                goto LABEL_107;
              }

              goto LABEL_191;
            }

            __break(1u);
            goto LABEL_189;
          }

          __break(1u);
          goto LABEL_185;
        }

        v215 = sub_25214196C();
        v216 = sub_252141FAC();
        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          *v217 = 0;
          _os_log_impl(&dword_25207E000, v215, v216, "Failed to create multichannel mixer", v217, 2u);
          MEMORY[0x253099FD0](v217, -1, -1);
        }

        v218 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v219 = sub_252141B6C();
        [v218 initWithDomain:v219 code:-5 userInfo:0];

        swift_willThrow();

LABEL_71:

        goto LABEL_72;
      }

      v205 = sub_25214196C();
      v206 = sub_252141FAC();
      if (os_log_type_enabled(v205, v206))
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        inData[0] = v208;
        *v207 = 136446210;
        v209 = sub_2521425DC();
        v211 = sub_2520A5448(v209, v210, inData);

        *(v207 + 4) = v211;
        _os_log_impl(&dword_25207E000, v205, v206, "[%{public}s] multichannel mixer error", v207, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v208);
        MEMORY[0x253099FD0](v208, -1, -1);
        MEMORY[0x253099FD0](v207, -1, -1);
      }

      v212 = v419[0];
      swift_beginAccess();
      v213 = *v212;
      if (v213)
      {
        swift_willThrow();
        v214 = v213;
        goto LABEL_70;
      }

      v331 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v204 = sub_252141B6C();
      [v331 initWithDomain:v204 code:-5 userInfo:0];
    }

    else
    {
      v196 = sub_25214196C();
      v197 = sub_252141FAC();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        *&aBlock = v199;
        *v198 = 136446210;
        v200 = sub_2521425DC();
        v202 = sub_2520A5448(v200, v201, &aBlock);

        *(v198 + 4) = v202;
        _os_log_impl(&dword_25207E000, v196, v197, "[%{public}s] creating multichannel mixer took too long", v198, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x253099FD0](v199, -1, -1);
        MEMORY[0x253099FD0](v198, -1, -1);
      }

      v203 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v204 = sub_252141B6C();
      [v203 initWithDomain:v204 code:-4 userInfo:0];
    }

    swift_willThrow();
LABEL_70:

    goto LABEL_71;
  }

  sub_2520A5A94(0, &qword_27F4CE300, 0x277CB83F8);
  v122 = v434;
  if (sub_25214210C())
  {
    goto LABEL_50;
  }

  v123 = sub_25214196C();
  v124 = sub_252141FBC();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *&aBlock = v126;
    *v125 = 136446210;
    v127 = sub_2521425DC();
    v129 = sub_2520A5448(v127, v128, &aBlock);

    *(v125 + 4) = v129;
    v7 = v436;
    _os_log_impl(&dword_25207E000, v123, v124, "[%{public}s] assign sessionID to outputNode", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v126);
    MEMORY[0x253099FD0](v126, -1, -1);
    MEMORY[0x253099FD0](v125, -1, -1);
  }

  LODWORD(inData[0]) = [v122 opaqueSessionID];
  v130 = [*&v7[OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine] outputNode];
  v131 = [v130 audioUnit];

  if (!v131)
  {
LABEL_50:

    goto LABEL_51;
  }

  v132 = sub_25214199C();
  v133 = AudioUnitSetProperty(v131, 0x7E7u, 0, 0, inData, 4u);
  v134 = sub_25214196C();
  if (v132 == v133)
  {
    v135 = sub_252141FBC();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *&aBlock = v137;
      *v136 = 136446210;
      v138 = sub_2521425DC();
      v140 = sub_2520A5448(v138, v139, &aBlock);

      *(v136 + 4) = v140;
      _os_log_impl(&dword_25207E000, v134, v135, "[%{public}s] deactiveate audio session caused by outputNode sessionID", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x253099FD0](v137, -1, -1);
      MEMORY[0x253099FD0](v136, -1, -1);
    }

    *&aBlock = 0;
    if ([v424 setActive:0 error:&aBlock])
    {
      v141 = aBlock;
      goto LABEL_50;
    }

    v332 = aBlock;
    v333 = sub_25214178C();

    swift_willThrow();
    v334 = sub_25214177C();
    v335 = sub_25214196C();
    v336 = sub_252141FAC();
    if (os_log_type_enabled(v335, v336))
    {
      v337 = swift_slowAlloc();
      *v337 = 134217984;
      *(v337 + 4) = [v334 code];
      _os_log_impl(&dword_25207E000, v335, v336, "audio session setActive %ld", v337, 0xCu);
      MEMORY[0x253099FD0](v337, -1, -1);
    }

    v338 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v339 = sub_252141B6C();
    [v338 initWithDomain:v339 code:-2 userInfo:0];

    swift_willThrow();
  }

  else
  {
    v220 = sub_252141FAC();
    if (os_log_type_enabled(v134, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 0;
      _os_log_impl(&dword_25207E000, v134, v220, "Unable to set session on engine", v221, 2u);
      MEMORY[0x253099FD0](v221, -1, -1);
    }

    v222 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v223 = sub_252141B6C();
    [v222 initWithDomain:v223 code:-1 userInfo:0];

    swift_willThrow();
  }
}

uint64_t sub_2520EBDBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{

  v9 = sub_25214196C();
  v10 = sub_252141FBC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446466;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2520A5448(a1, a2, &v17);
    _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] Tone complete with identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }

  return a4(a1, a2);
}

void sub_2520EBF3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator);
  if (!v5)
  {
    LOBYTE(v22) = 1;
LABEL_63:
    *a1 = v22 & 1;

    sub_25214199C();
    return;
  }

  v41 = *(v5 + 168);
  v42 = a1;
  v7 = *(v5 + 72);
  v6 = *(v5 + 80);
  v8 = *(v5 + 128);
  v9 = *(v5 + 56);
  v10 = *(a4 + 16);
  if (!v10 || !a3)
  {
    v22 = 1;
LABEL_51:
    *(v5 + 72) = v7;
    *(v5 + 80) = v6;
    *(v5 + 128) = v8;
    *(v5 + 56) = v9;
    a1 = v42;
    if (v41 >= v9 && v8 == 0)
    {
      goto LABEL_61;
    }

    if ((*(v5 + 160) & 1) == 0 && ((v22 ^ 1) & 1) == 0)
    {
      v34 = *(v5 + 136);
      v35 = __CFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_69;
      }

      *(v5 + 136) = v36;
      if (v36 >= 0xA)
      {
        *(v5 + 160) = 1;
      }
    }

    if ((v8 & 1) == 0)
    {
LABEL_61:
      LOBYTE(v22) = 0;
    }

    goto LABEL_63;
  }

  v11 = *(v5 + 64);
  v12 = *(v5 + 88);
  v13 = *(v5 + 104);
  v14 = *(v5 + 112);
  v37 = *(v5 + 120);
  v15 = *(v5 + 176);
  v16 = *(v5 + 48);
  v17 = *(v5 + 161);
  v18 = v13;
  v39 = v13;
  v40 = *(v5 + 96);
  v38 = (v40 != 0) | v17;
  v19 = v13;
  v20 = a3;
  v21 = v9 ^ 0x7FFFFFFFu;
  v22 = 1;
  v43 = v17;
  v44 = v15;
  while (v21)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_67;
    }

    ++v9;
    v25 = 0.0;
    if (v8 & 1 | (v6 == 0))
    {
      v8 = v17;
    }

    else
    {
      if (v7 < 1)
      {
        goto LABEL_48;
      }

      if (v15)
      {
        if (v12 >= v7)
        {
          goto LABEL_48;
        }

        if (!v40)
        {
          if (v17)
          {
            if (v14 > v7)
            {
              v26 = 0.0;
LABEL_41:
              v22 = 0;
              v8 = 0;
              v30 = (v14 - v7) / v19;
              if (v30 > 0.0)
              {
                v31 = (v14 - v7) / v19;
              }

              else
              {
                v31 = 0.0;
              }

              if (v30 <= 1.0)
              {
                v32 = v31;
              }

              else
              {
                v32 = 1.0;
              }

              v25 = v32 * v26;
              goto LABEL_6;
            }

LABEL_49:
            v6 = -1;
            v8 = 1;
            v7 = v37;
            goto LABEL_6;
          }

LABEL_48:
          v8 = 0;
          goto LABEL_6;
        }

        v26 = 0.0;
        if (v14 > v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v26 = v16 * sin((v11 * v9 + v11 * v9) * 3.14159265);
        if (v12 >= v7)
        {
          if (v7 >= v39)
          {
            v22 = 0;
            v8 = 0;
            v25 = v26;
          }

          else
          {
            v22 = 0;
            v8 = 0;
            v27 = v7 / v18;
            if (v27 > 0.0)
            {
              v28 = v7 / v18;
            }

            else
            {
              v28 = 0.0;
            }

            if (v27 <= 1.0)
            {
              v29 = v28;
            }

            else
            {
              v29 = 1.0;
            }

            v25 = v26 * v29;
          }

          goto LABEL_37;
        }

        if ((v38 & 1) == 0)
        {
          v8 = 0;
          v22 = (v14 < v7) & v22;
          if (v14 >= v7)
          {
            v25 = v26;
          }

          else
          {
            v25 = 0.0;
          }

LABEL_37:
          v17 = v43;
          v15 = v44;
          goto LABEL_6;
        }

        v17 = v43;
        v15 = v44;
        if (v14 > v7)
        {
          goto LABEL_41;
        }
      }

      if (v17)
      {
        goto LABEL_49;
      }

      if (__OFSUB__(v6, 1))
      {
        goto LABEL_68;
      }

      v8 = 0;
      if (v6 - 1 < 0)
      {
        v6 = -1;
      }

      else
      {
        --v6;
      }

      v7 = v37;
    }

LABEL_6:
    v23 = v25;
    *v10++ = v23;
    --v21;
    if (!--v20)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_2520EC228(void *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v9 = a2;
    v10 = sub_25214196C();
    v11 = sub_252141FAC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29[0] = v13;
      *v12 = 136446466;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, v29);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v17 = sub_2521424DC();
      v19 = sub_2520A5448(v17, v18, v29);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] Error instantiating AVAudioUnit: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }

    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = sub_252141B6C();
    v22 = [v20 initWithDomain:v21 code:-3 userInfo:0];

    swift_beginAccess();
    v23 = *(a4 + 16);
    *(a4 + 16) = v22;
  }

  else
  {
    swift_beginAccess();
    v26 = *(a5 + 16);
    *(a5 + 16) = a1;
    v27 = a1;
  }

  return sub_2521420EC();
}

void sub_2520EC464(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

char *sub_2520EC4F0()
{
  v1 = v0;
  v2 = sub_25214198C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger, v2, v4);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v7;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] Hearing test audio engine deinit", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    v16 = v11;
    v7 = v20;
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v18 = v17(v6, v2);
  sub_2520EDBB4(v18);
  sub_2520A2584(v1 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapFileUrl, &qword_27F4CE2E8, &unk_252145170);

  v17((v1 + v7), v2);
  return v1;
}

uint64_t sub_2520EC7CC()
{
  sub_2520EC4F0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HTAudioEngine(uint64_t a1)
{
  result = qword_27F4CE2A8;
  if (!qword_27F4CE2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2520EC878(uint64_t a1)
{
  sub_2520EE73C(319);
  if (v1 <= 0x3F)
  {
    sub_25214198C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_2520EC988(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Hearing test audio engine prepare", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine);

  return [v10 prepare];
}

id sub_2520ECAE8(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Hearing test audio engine start", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine);
  v13[0] = 0;
  if ([v10 startAndReturnError_])
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_25214178C();

  return swift_willThrow();
}

void sub_2520ECCA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator);
  if (v1)
  {

    v2 = sub_25214196C();
    v3 = sub_252141FBC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_2521425DC();
      v8 = sub_2520A5448(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Hearing test tone generator stop", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x253099FD0](v5, -1, -1);
      MEMORY[0x253099FD0](v4, -1, -1);
    }

    *(v1 + 161) = 1;
  }
}

void sub_2520ECE30()
{
  v94 = *v0;
  v98 = sub_2521417FC();
  v1 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = v87 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = v87 - v6;
  v8 = sub_2521417AC();
  v96 = *(v8 - 8);
  v97 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE2E8, &unk_252145170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v87 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v87 - v18;
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_252141B6C();
  v22 = [v20 initWithSuiteName_];

  if (v22)
  {
    v23 = sub_252141B6C();
    v24 = [v22 BOOLForKey_];

    if (v24)
    {
      v25 = *(v99 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer);
      if (v25)
      {
        v88 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer;
        v92 = v7;
        v91 = v25;
        v90 = [v91 outputFormatForBus_];
        v26 = [v90 settings];
        v89 = sub_252141B1C();

        v27 = v1;
        v28 = *(v1 + 56);
        v29 = v98;
        v28(v16, 1, 1, v98);
        (*(v96 + 104))(v10, *MEMORY[0x277CC91D8], v97);
        v30 = v99;
        sub_2521417EC();
        v28(v19, 0, 1, v29);
        v31 = v27;
        v32 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapFileUrl;
        swift_beginAccess();
        sub_2520EEBA0(v19, v30 + v32);
        swift_endAccess();
        sub_2520EEC10(v30 + v32, v13);
        if ((*(v27 + 48))(v13, 1, v29) == 1)
        {

          sub_2520A2584(v13, &qword_27F4CE2E8, &unk_252145170);
          return;
        }

        v33 = v92;
        (*(v27 + 32))(v92, v13, v29);
        v34 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_logger;
        v35 = v95;
        v96 = *(v27 + 16);
        (v96)(v95, v33, v29);
        v97 = v34;
        v36 = sub_25214196C();
        v37 = sub_252141F8C();
        v38 = os_log_type_enabled(v36, v37);
        v87[1] = v27;
        if (v38)
        {
          v39 = v35;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock[0] = v41;
          *v40 = 136446466;
          v42 = sub_2521425DC();
          v44 = sub_2520A5448(v42, v43, aBlock);

          *(v40 + 4) = v44;
          *(v40 + 12) = 2080;
          v45 = sub_2521417BC();
          v47 = v46;
          v48 = *(v31 + 8);
          v49 = v39;
          v29 = v98;
          v48(v49, v98);
          v50 = sub_2520A5448(v45, v47, aBlock);

          *(v40 + 14) = v50;
          _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] file writer tap to: %s", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v41, -1, -1);
          MEMORY[0x253099FD0](v40, -1, -1);
        }

        else
        {

          v48 = *(v27 + 8);
          v48(v35, v29);
        }

        v51 = v89;
        v52 = [objc_opt_self() defaultManager];
        v53 = v92;
        sub_25214179C();
        v54 = sub_252141B6C();

        v55 = [v52 createFileAtPath:v54 contents:0 attributes:0];

        if (v55)
        {
          v56 = v93;
          (v96)(v93, v53, v29);
          v57 = objc_allocWithZone(MEMORY[0x277CB8398]);
          v58 = v101;
          v59 = sub_2520EE9E0(v56, v51);
          v101 = v58;
          if (v58)
          {
            v48(v53, v29);

            return;
          }

          v73 = *(v99 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile);
          *(v99 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile) = v59;

          v74 = sub_25214196C();
          v75 = sub_252141FBC();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            aBlock[0] = v77;
            *v76 = 136446210;
            v78 = v94;
            v79 = sub_2521425DC();
            v97 = v48;
            v81 = sub_2520A5448(v79, v80, aBlock);
            v48 = v97;

            *(v76 + 4) = v81;
            _os_log_impl(&dword_25207E000, v74, v75, "[%{public}s] Installing file writer tap", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v77);
            MEMORY[0x253099FD0](v77, -1, -1);
            MEMORY[0x253099FD0](v76, -1, -1);
          }

          else
          {

            v78 = v94;
          }

          v82 = swift_allocObject();
          swift_weakInit();
          v83 = swift_allocObject();
          *(v83 + 16) = v82;
          *(v83 + 24) = v78;
          aBlock[4] = sub_2520EECF0;
          aBlock[5] = v83;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_2520EDB30;
          aBlock[3] = &block_descriptor_7;
          v84 = _Block_copy(aBlock);
          v85 = v90;

          v86 = v91;
          [v91 installTapOnBus:0 bufferSize:1024 format:v85 block:v84];
          _Block_release(v84);
        }

        else
        {

          v60 = v99;
          v61 = sub_25214196C();
          v62 = sub_252141FAC();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            aBlock[0] = v64;
            *v63 = 136446210;
            v65 = sub_2521425DC();
            v67 = sub_2520A5448(v65, v66, aBlock);

            *(v63 + 4) = v67;
            _os_log_impl(&dword_25207E000, v61, v62, "[%{public}s] HearingTest audio write failed", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
            v68 = v64;
            v60 = v99;
            MEMORY[0x253099FD0](v68, -1, -1);
            MEMORY[0x253099FD0](v63, -1, -1);
          }

          v70 = v90;
          v69 = v91;
          v71 = *(v60 + v88);
          if (v71)
          {
            [v71 removeTapOnBus_];
            v72 = v70;
          }

          else
          {
            v72 = v91;
            v69 = v90;
          }
        }

        v48(v92, v29);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2520ED898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[7] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [a1 copy];
    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A5A94(0, &qword_27F4CE2F0, 0x277CB83C8);
    swift_dynamicCast();
    v7 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile;
    v8 = *(v6 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile);
    if (!v8)
    {
LABEL_5:

      return;
    }

    v22[0] = 0;
    if ([v8 writeFromBuffer:v21 error:v22])
    {
      v9 = v22[0];
      goto LABEL_5;
    }

    v10 = v22[0];
    v11 = sub_25214178C();

    swift_willThrow();
    [*(v6 + v7) close];
    v12 = sub_25214196C();
    v13 = sub_252141FAC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136446210;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] HearingTest audio write failed", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }

    v19 = *(v6 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer);
    if (v19)
    {
      v20 = v19;
      [v20 removeTapOnBus_];
    }

    else
    {
    }
  }
}

void sub_2520EDB30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_2520EDBB4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] cleanup", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode;
  [*(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_playerNode) stop];
  v11 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_engine);
  if ([v11 isRunning])
  {
    [v11 stop];
  }

  [v11 reset];
  v12 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode;
  v13 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_sourceNode);
  if (v13)
  {
    [v13 reset];
    v14 = *(v2 + v12);
    *(v2 + v12) = 0;

    if (*(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator))
    {
      *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_generator) = 0;
    }
  }

  v15 = *(v2 + v10);
  if (v15)
  {
    *(v2 + v10) = 0;
  }

  v16 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter);
  if (v16)
  {
    *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_inputFilter) = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter);
  if (v17)
  {
    *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_outputFilter) = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v19 = sub_252141B6C();
  v20 = [v18 initWithSuiteName_];

  if (v20)
  {
    v21 = sub_252141B6C();
    v22 = [v20 BOOLForKey_];

    if (v22)
    {
      v23 = OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile;
      [*(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_tapDebugFile) close];
      v24 = *(v2 + v23);
      *(v2 + v23) = 0;

      v25 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer);
      if (v25)
      {
        [v25 removeTapOnBus_];
      }
    }

    v26 = *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer);
    if (v26)
    {
      *(v2 + OBJC_IVAR____TtC11HearingTest13HTAudioEngine_multichannelMixer) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}