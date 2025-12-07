uint64_t sub_1B1BEE21C(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #SpeechRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #SpeechRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BEE5A8(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C7F8();
  v73 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1C2C8A8();
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2C828();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B1A95808;
  *(v18 + 24) = v17;
  aBlock = sub_1B1BFB48C;
  v75 = v18;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v80 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v19 == 2 || (v19 & 1) == 0)
    {
      v66 = v6;
      v67 = a3;
      v29 = mach_absolute_time();
      v30 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      v65 = v30;
      *&a1[v30] = v29;
      v31 = sub_1B1A919FC();
      v33 = v32;
      v68 = a2;
      v34 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      swift_beginAccess();
      *v34 = v31;
      *(v34 + 1) = v33;
      v35 = v68;

      sub_1B1A91CD0(&v35[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v16, &qword_1EB761DF8, qword_1B1C40850);
      v36 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      swift_beginAccess();
      sub_1B1A91B74(v16, &a1[v36]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v8, qword_1ED9A9120);
      (*(v69 + 16))(v10, v37, v8);
      sub_1B1C2C808();
      v38 = a1;
      v39 = v72;
      sub_1B1C2C7E8();
      v40 = sub_1B1C2C818();
      v41 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = *&a1[v65];

        v43 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v40, v41, v43, "TTSRequestReceived", "id %llu", v42, 0xCu);
        v44 = v42;
        v35 = v68;
        MEMORY[0x1B2739FD0](v44, -1, -1);
      }

      else
      {
      }

      (*(v73 + 8))(v39, v66);
      (*(v70 + 8))(v13, v71);
      v45 = v38;
      v46 = sub_1B1C2C888();
      v47 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138543362;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&dword_1B1A8A000, v46, v47, "Start #AudioRequest, %{public}@", v48, 0xCu);
        sub_1B1A90CD8(v49, &qword_1EB7625C0, &qword_1B1C37990);
        MEMORY[0x1B2739FD0](v49, -1, -1);
        MEMORY[0x1B2739FD0](v48, -1, -1);
      }

      v51 = sub_1B1AD6C0C();
      if (!v51)
      {
        v52 = [objc_opt_self() sharedInstance];
        [v52 opaqueSessionID];

        v51 = sub_1B1BCF6C4();
      }

      v53 = *&v35[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      v54 = MEMORY[0x1EEE9AC00](v51);
      *(&v64 - 2) = v35;
      *(&v64 - 1) = v45;
      MEMORY[0x1EEE9AC00](v54);
      *(&v64 - 2) = sub_1B1BFB388;
      *(&v64 - 1) = v55;
      os_unfair_lock_lock(v53 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v53 + 4);
      v56 = sub_1B1A9CB84();
      v57 = swift_allocObject();
      v57[2] = v45;
      v57[3] = sub_1B1A95808;
      v57[4] = v17;

      v58 = v45;
      v59 = sub_1B1A927C4(sub_1B1BFB3E0, v57);

      v60 = swift_allocObject();
      v60[2] = v58;
      v60[3] = v35;
      v60[4] = sub_1B1A95808;
      v60[5] = v17;
      v78 = sub_1B1BFB37C;
      v79 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v76 = sub_1B1A955E0;
      v77 = &block_descriptor_510;
      v61 = _Block_copy(&aBlock);

      v62 = v58;
      v63 = v35;

      [v59 speakWithAudioRequest:v62 reply:v61];
      _Block_release(v61);

      swift_unknownObjectRelease();
      a3 = v67;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v20 = sub_1B1C2C888();
      v21 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1B1A8A000, v20, v21, "Skipped #AudioRequest: TTS is disabled.", v22, 2u);
        MEMORY[0x1B2739FD0](v22, -1, -1);
      }

      a3[2](a3, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_1ED9A9120);
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B1A8A000, v23, v24, "speakWithAudioRequest:didFinish: requires correct parameters", v25, 2u);
      MEMORY[0x1B2739FD0](v25, -1, -1);
    }

    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v28 = sub_1B1C2C048();
    (a3)[2](a3, v28);
  }

  _Block_release(a3);
}

void sub_1B1BEEFE8()
{
  OUTLINED_FUNCTION_25();
  v84 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v10 = OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v13);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_2_11();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v3;
  v85 = sub_1B1BFB48C;
  v86 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v89 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v17 || (v16 & 1) == 0)
    {
      v81 = v8;
      v82 = v5;
      v83 = v3;
      v35 = mach_absolute_time();
      v36 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v7[v36] = v35;
      v37 = sub_1B1A919FC();
      v39 = v38;
      v40 = &v7[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *v40 = v37;
      v40[1] = v39;

      sub_1B1A91CD0(&v84[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v1, &qword_1EB761DF8, qword_1B1C40850);
      v41 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v1, &v7[v41]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      __swift_project_value_buffer(v10, qword_1ED9A9120);
      v42 = OUTLINED_FUNCTION_32_12();
      v43(v42);
      sub_1B1C2C808();
      v44 = v7;
      sub_1B1C2C7E8();
      v45 = sub_1B1C2C818();
      sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v46 = OUTLINED_FUNCTION_21_0();
        v47 = OUTLINED_FUNCTION_122_1(v46, 3.852e-34);
        *(v47 + 1) = *&v7[v48];

        v49 = sub_1B1C2C7D8();
        OUTLINED_FUNCTION_164_0(&dword_1B1A8A000, v50, v51, v49, "TTSRequestReceived", "id %llu");
        OUTLINED_FUNCTION_72_4();
      }

      else
      {
      }

      v52 = OUTLINED_FUNCTION_120_1();
      v53(v52, v81);
      v54 = OUTLINED_FUNCTION_119_2();
      v55(v54);
      v56 = v44;
      v57 = sub_1B1C2C888();
      sub_1B1C2D0D8();

      if (OUTLINED_FUNCTION_151_0())
      {
        v58 = OUTLINED_FUNCTION_21_0();
        v59 = OUTLINED_FUNCTION_17_2();
        *v58 = 138543362;
        *(v58 + 4) = v56;
        *v59 = v56;
        v60 = v56;
        OUTLINED_FUNCTION_61_4();
        _os_log_impl(v61, v62, v63, v64, v58, 0xCu);
        sub_1B1A90CD8(v59, &qword_1EB7625C0, &qword_1B1C37990);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_72_4();
      }

      v65 = sub_1B1AD6C0C();
      if (!v65)
      {
        v66 = [objc_opt_self() sharedInstance];
        [v66 opaqueSessionID];

        v65 = sub_1B1BCF6C4();
      }

      v67 = *&v84[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      MEMORY[0x1EEE9AC00](v65);
      OUTLINED_FUNCTION_65_3();
      *(v68 - 16) = v84;
      *(v68 - 8) = v56;
      MEMORY[0x1EEE9AC00](v69);
      OUTLINED_FUNCTION_66_5();
      *(v70 - 16) = sub_1B1BFB388;
      *(v70 - 8) = v71;
      os_unfair_lock_lock(v67 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v67 + 4);
      v72 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_66();
      v73 = swift_allocObject();
      v73[2] = v56;
      v73[3] = v82;
      v73[4] = v83;

      v74 = v56;
      sub_1B1A927C4(sub_1B1BF838C, v73);

      OUTLINED_FUNCTION_38_1();
      v75 = swift_allocObject();
      v75[2] = v74;
      v75[3] = v84;
      v75[4] = v82;
      v75[5] = v83;
      OUTLINED_FUNCTION_1_27(v75);
      v86 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v87 = v76;
      v88 = &block_descriptor_75;
      v77 = _Block_copy(&v85);

      v74;
      v78 = v84;

      OUTLINED_FUNCTION_5_13();
      [v79 v80];
      _Block_release(v77);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
      v18 = sub_1B1C2C888();
      v19 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_81(v19))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_29_8();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        OUTLINED_FUNCTION_11_23();
      }

      (v5)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v25 = v5;
    OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_81(v27))
    {
      v28 = OUTLINED_FUNCTION_20_0();
      *v28 = 0;
      OUTLINED_FUNCTION_61_4();
      _os_log_impl(v29, v30, v31, v32, v28, 2u);
      OUTLINED_FUNCTION_72_4();
    }

    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = OUTLINED_FUNCTION_3_27();
    v25();
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BEF778(uint64_t a1, void *a2, void (*a3)(void *))
{
  sub_1B1BF86C4(a2);
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_96_3("sirittsd connection error: ", v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  v5 = sub_1B1C2D828();
  MEMORY[0x1B27381B0](v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = sub_1B1C2CB58();
  *(inited + 40) = v7;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v26)
  {
    v9 = v25;
  }

  else
  {
    v9 = 0;
  }

  if (v26)
  {
    v10 = v26;
  }

  else
  {
    v10 = v3;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;

  v11 = OUTLINED_FUNCTION_146_0();
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v13 = OUTLINED_FUNCTION_33_10();
  sub_1B1B1AE5C(v13, v14, -9, v11);
  OUTLINED_FUNCTION_7_13();

  a3(v8);
}

uint64_t sub_1B1BEF8BC(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #AudioRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #AudioRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BEFC60(char *a1, char *a2, void (**a3)(void, void))
{
  v136 = a2;
  v137 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  MEMORY[0x1EEE9AC00](v4);
  v130 = &v118 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v131 = &v118 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v118 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v118 - v15;
  v135 = sub_1B1C2C1C8();
  v124 = *(v135 - 8);
  v16 = MEMORY[0x1EEE9AC00](v135);
  v123 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v118 - v18;
  v134 = sub_1B1C2C7F8();
  v129 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v128 = (&v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1B1C2C8A8();
  v125 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_1B1C2C828();
  v126 = *(v127 - 1);
  MEMORY[0x1EEE9AC00](v127);
  v24 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v118 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B1A95808;
  *(v29 + 24) = v28;
  aBlock = sub_1B1BFB48C;
  v139 = v29;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v145 = sub_1B1C2D7F8();
  if (!swift_dynamicCast())
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v20, qword_1ED9A9120);
    v34 = sub_1B1C2C888();
    v35 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1B1A8A000, v34, v35, "speakWithPreviewRequest:didFinish: requires correct parameters", v36, 2u);
      MEMORY[0x1B2739FD0](v36, -1, -1);
    }

    v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v38 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v39 = sub_1B1C2C048();
    (a3)[2](a3, v39);

    goto LABEL_69;
  }

  if (qword_1ED9A96B8 != -1)
  {
    goto LABEL_71;
  }

LABEL_3:
  sub_1B1A91998();
  if (v30 != 2 && (v30 & 1) != 0)
  {
    if (qword_1ED9A9288 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_73;
  }

  v121 = v14;
  v118 = v9;
  v122 = v4;
  v119 = v28;
  v120 = a3;
  v40 = mach_absolute_time();
  v41 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  v42 = v137;
  swift_beginAccess();
  *&v42[v41] = v40;
  v43 = v136;
  v44 = sub_1B1A919FC();
  v46 = v45;
  v47 = &v42[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  swift_beginAccess();
  *v47 = v44;
  v47[1] = v46;

  sub_1B1A91CD0(&v43[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v27, &qword_1EB761DF8, qword_1B1C40850);
  v48 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
  swift_beginAccess();
  sub_1B1A91B74(v27, &v42[v48]);
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v20, qword_1ED9A9120);
  (*(v125 + 16))(v22, v49, v20);
  sub_1B1C2C808();
  v50 = v42;
  v51 = v128;
  sub_1B1C2C7E8();
  v22 = sub_1B1C2C818();
  v52 = sub_1B1C2D198();
  if (sub_1B1C2D278())
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = *&v42[v41];

    v54 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v22, v52, v54, "TTSRequestReceived", "id %llu", v53, 0xCu);
    MEMORY[0x1B2739FD0](v53, -1, -1);
  }

  else
  {
  }

  v55 = v136;
  v56 = v121;
  v57 = v134;
  v58 = v129;

  (v58[1])(v51, v57);
  (*(v126 + 8))(v24, v127);
  v59 = v50;
  v121 = v49;
  v60 = sub_1B1C2C888();
  v61 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v62 = 138543362;
    *(v62 + 4) = v59;
    v22->isa = v59;
    v63 = v59;
    _os_log_impl(&dword_1B1A8A000, v60, v61, "Start #PreviewRequest, %{public}@", v62, 0xCu);
    sub_1B1A90CD8(v22, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v22, -1, -1);
    MEMORY[0x1B2739FD0](v62, -1, -1);
  }

  v134 = v59;
  v64 = sub_1B1AD6C0C();
  v24 = v132;
  v14 = v56;
  if (!v64)
  {
    v65 = [objc_opt_self() sharedInstance];
    [v65 opaqueSessionID];

    sub_1B1BCF6C4();
  }

  v66 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  swift_beginAccess();
  v27 = *&v55[v66];
  v137 = MEMORY[0x1E69E7CC0];
  aBlock = MEMORY[0x1E69E7CC0];
  v28 = (v27 + 64);
  v67 = 1 << v27[32];
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v9 = v68 & *(v27 + 8);
  a3 = ((v67 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v20 = 0;
LABEL_26:
  v4 = v134;
LABEL_27:
  if (v9)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v69 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_3;
    }

    if (v69 >= a3)
    {
      break;
    }

    v9 = *(v28 + 8 * v69);
    ++v20;
    if (v9)
    {
      v20 = v69;
LABEL_32:
      v70 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v71 = *(*(v27 + 7) + ((v20 << 9) | (8 * v70)));
      v144 = qword_1F28D9208;
      v72 = swift_dynamicCastObjCProtocolConditional();
      if (v72)
      {
        v22 = v72;
        MEMORY[0x1B2738320](v71);
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1C2CE98();
        }

        sub_1B1C2CEC8();
        v137 = aBlock;
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  v73 = v137;
  v74 = sub_1B1A9547C();
  if (!v74)
  {

LABEL_68:
    v105 = v136;
    v106 = v4;
    v107 = *&v136[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
    v108 = MEMORY[0x1EEE9AC00](v98);
    *(&v118 - 2) = v105;
    *(&v118 - 1) = v106;
    MEMORY[0x1EEE9AC00](v108);
    *(&v118 - 2) = sub_1B1BFB388;
    *(&v118 - 1) = v109;
    os_unfair_lock_lock(v107 + 4);
    sub_1B1BFB494();
    a3 = v120;
    os_unfair_lock_unlock(v107 + 4);
    v110 = sub_1B1A9CB84();
    v111 = swift_allocObject();
    v112 = v119;
    *(v111 + 16) = sub_1B1A95808;
    *(v111 + 24) = v112;

    v113 = sub_1B1A927C4(sub_1B1BFB4C8, v111);

    v114 = swift_allocObject();
    v114[2] = v106;
    v114[3] = v105;
    v114[4] = sub_1B1A95808;
    v114[5] = v112;
    v142 = sub_1B1BFB378;
    v143 = v114;
    aBlock = MEMORY[0x1E69E9820];
    v139 = 1107296256;
    v140 = sub_1B1A955E0;
    v141 = &block_descriptor_489;
    v115 = _Block_copy(&aBlock);

    v116 = v106;
    v117 = v105;

    [v113 speakWithPreviewRequest:v116 reply:v115];
    _Block_release(v115);

    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v20 = v74;
  if (v74 < 1)
  {
    __break(1u);
LABEL_73:
    swift_once();
LABEL_6:
    __swift_project_value_buffer(v20, qword_1ED9A9120);
    v31 = sub_1B1C2C888();
    v32 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B1A8A000, v31, v32, "Skipped #PreviewRequest: TTS is disabled.", v33, 2u);
      MEMORY[0x1B2739FD0](v33, -1, -1);
    }

    goto LABEL_66;
  }

  v75 = 0;
  v76 = v73 & 0xC000000000000001;
  v129 = (v124 + 32);
  v128 = (v124 + 8);
  v127 = (v124 + 16);
  v77 = 1;
  v126 = v73 & 0xC000000000000001;
  v125 = v74;
  do
  {
    if (v76)
    {
      v78 = MEMORY[0x1B2738A20](v75, v73);
    }

    else
    {
      v78 = *&v73[8 * v75 + 32];
    }

    v79 = v78;
    swift_getObjectType();
    v80 = AudibleRequestProtocol.audioSessionId.getter();
    if (v80 != sub_1B1AD6C0C())
    {

LABEL_47:
      v73 = v137;
      goto LABEL_50;
    }

    v81 = v79;
    sub_1B1BF2758(v81);

    type metadata accessor for PreviewRequest(0);
    if (!swift_dynamicCastClass())
    {

      __swift_storeEnumTagSinglePayload(v24, 1, 1, v135);
      goto LABEL_49;
    }

    v82 = v81;
    sub_1B1B12A30();

    v83 = v135;
    if (__swift_getEnumTagSinglePayload(v24, 1, v135) == 1)
    {

      v4 = v134;
LABEL_49:
      v73 = v137;
      sub_1B1A90CD8(v24, &unk_1EB761F00, &qword_1B1C36480);
      goto LABEL_50;
    }

    v84 = *v129;
    v85 = v133;
    (*v129)(v133, v24, v83);
    if ((v77 & 1) == 0)
    {
      (*v128)(v85, v83);

      v77 = 0;
      v4 = v134;
      goto LABEL_47;
    }

    (*v127)(v14, v85, v83);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v83);
    v86 = v14;
    v87 = v131;
    sub_1B1B12A30();
    v88 = v122[12];
    v89 = v130;
    sub_1B1A91CD0(v86, v130, &unk_1EB761F00, &qword_1B1C36480);
    sub_1B1A91CD0(v87, v89 + v88, &unk_1EB761F00, &qword_1B1C36480);
    if (__swift_getEnumTagSinglePayload(v89, 1, v83) != 1)
    {
      v14 = v86;
      v91 = v118;
      sub_1B1A91CD0(v89, v118, &unk_1EB761F00, &qword_1B1C36480);
      if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v83) != 1)
      {
        v93 = v91;
        v94 = v123;
        v84(v123, (v89 + v88), v83);
        sub_1B1BF83C4(&qword_1EB763F78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v95 = sub_1B1C2CB18();

        v96 = v89;
        v97 = *v128;
        (*v128)(v94, v83);
        sub_1B1A90CD8(v131, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A90CD8(v14, &unk_1EB761F00, &qword_1B1C36480);
        v97(v133, v83);
        v97(v93, v83);
        sub_1B1A90CD8(v96, &unk_1EB761F00, &qword_1B1C36480);
        v77 = v95 ^ 1;
        v24 = v132;
        v4 = v134;
        v73 = v137;
        goto LABEL_62;
      }

      sub_1B1A90CD8(v131, &unk_1EB761F00, &qword_1B1C36480);
      sub_1B1A90CD8(v14, &unk_1EB761F00, &qword_1B1C36480);
      v92 = *v128;
      (*v128)(v133, v83);
      v92(v91, v83);
      v24 = v132;
      v73 = v137;
LABEL_59:
      sub_1B1A90CD8(v89, &qword_1EB763F70, &unk_1B1C407E8);
      v77 = 1;
      goto LABEL_60;
    }

    sub_1B1A90CD8(v87, &unk_1EB761F00, &qword_1B1C36480);
    sub_1B1A90CD8(v86, &unk_1EB761F00, &qword_1B1C36480);
    (*v128)(v133, v83);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89 + v88, 1, v83);
    v14 = v86;
    v24 = v132;
    v73 = v137;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_59;
    }

    sub_1B1A90CD8(v89, &unk_1EB761F00, &qword_1B1C36480);
    v77 = 0;
LABEL_60:
    v4 = v134;
LABEL_62:
    v76 = v126;
    v20 = v125;
LABEL_50:
    ++v75;
  }

  while (v20 != v75);

  if (v77)
  {
    goto LABEL_68;
  }

  v99 = v4;
  v31 = sub_1B1C2C888();
  v100 = sub_1B1C2D0D8();

  v101 = os_log_type_enabled(v31, v100);
  a3 = v120;
  if (v101)
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v102 = 138543362;
    *(v102 + 4) = v99;
    *v103 = v99;
    v104 = v99;
    _os_log_impl(&dword_1B1A8A000, v31, v100, "#PreviewRequest ignored for %{public}@", v102, 0xCu);
    sub_1B1A90CD8(v103, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v103, -1, -1);
    MEMORY[0x1B2739FD0](v102, -1, -1);
  }

LABEL_66:

  a3[2](a3, 0);

LABEL_69:
  _Block_release(a3);
}

void sub_1B1BF1030()
{
  OUTLINED_FUNCTION_25();
  v183 = v0;
  v184 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  v176 = v164 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v10 = OUTLINED_FUNCTION_23(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_1();
  v177 = v15;
  OUTLINED_FUNCTION_16_0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v164 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_6(v164 - v20);
  v182 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_7();
  v171 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_1();
  v170 = v23 - v24;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_49_6(v164 - v26);
  v181 = sub_1B1C2C7F8();
  OUTLINED_FUNCTION_7();
  v180 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_49_6(v30 - v29);
  v31 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_7();
  v172 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_16();
  v36 = (v35 - v34);
  v174 = sub_1B1C2C828();
  OUTLINED_FUNCTION_7();
  v173 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_16();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v42);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v164 - v44;
  OUTLINED_FUNCTION_2_11();
  v46 = swift_allocObject();
  *(v46 + 16) = v5;
  *(v46 + 24) = v3;
  v185 = sub_1B1BFB48C;
  v186 = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v192 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      goto LABEL_70;
    }

    while (1)
    {
      sub_1B1A91998();
      OUTLINED_FUNCTION_33_5();
      if (!v132 && (v47 & 1) != 0)
      {
        if (qword_1ED9A9288 == -1)
        {
LABEL_6:
          OUTLINED_FUNCTION_12_1(v31, qword_1ED9A9120);
          v48 = sub_1B1C2C888();
          v49 = sub_1B1C2D0D8();
          if (OUTLINED_FUNCTION_10_2(v49))
          {
            v50 = OUTLINED_FUNCTION_20_0();
            OUTLINED_FUNCTION_15_2(v50);
            OUTLINED_FUNCTION_5_1();
            _os_log_impl(v51, v52, v53, v54, v55, 2u);
            OUTLINED_FUNCTION_9_1();
          }

          (v5)(0);
          goto LABEL_68;
        }

LABEL_72:
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
        goto LABEL_6;
      }

      v168 = v19;
      v165 = v13;
      v169 = v6;
      v166 = v5;
      v167 = v3;
      v66 = mach_absolute_time();
      v67 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      v68 = v184;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v68[v67] = v66;
      v69 = v183;
      v70 = sub_1B1A919FC();
      v72 = v71;
      v73 = &v68[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *v73 = v70;
      v73[1] = v72;

      sub_1B1A91CD0(&v69[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v45, &qword_1EB761DF8, qword_1B1C40850);
      v74 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      v75 = &v68[v74];
      v76 = v68;
      sub_1B1A91B74(v45, v75);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v77 = __swift_project_value_buffer(v31, qword_1ED9A9120);
      (*(v172 + 16))(v36, v77, v31);
      sub_1B1C2C808();
      v78 = v68;
      v79 = v175;
      sub_1B1C2C7E8();
      v36 = sub_1B1C2C818();
      v80 = sub_1B1C2D198();
      v81 = sub_1B1C2D278();
      v5 = v178;
      if (v81)
      {
        v82 = OUTLINED_FUNCTION_21_0();
        v83 = v76;
        v84 = v82;
        *v82 = 134217984;
        *(v82 + 4) = *&v83[v67];

        v85 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v36, v80, v85, "TTSRequestReceived", "id %llu", v84, 0xCu);
        OUTLINED_FUNCTION_72_4();
      }

      else
      {
      }

      v86 = v168;
      v87 = v181;
      v88 = v180;

      (*(v88 + 1))(v79, v87);
      (*(v173 + 8))(v41, v174);
      v89 = v78;
      v90 = sub_1B1C2C888();
      LOBYTE(v88) = sub_1B1C2D0D8();

      if (os_log_type_enabled(v90, v88))
      {
        v91 = OUTLINED_FUNCTION_21_0();
        v36 = OUTLINED_FUNCTION_17_2();
        *v91 = 138543362;
        *(v91 + 4) = v89;
        v36->isa = v89;
        v92 = v89;
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
        sub_1B1A90CD8(v36, &qword_1EB7625C0, &qword_1B1C37990);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_9_1();
      }

      v164[1] = v77;

      v19 = v86;
      if (!sub_1B1AD6C0C())
      {
        v98 = [objc_opt_self() sharedInstance];
        [v98 opaqueSessionID];

        sub_1B1BCF6C4();
      }

      v180 = v89;
      v99 = OBJC_IVAR___SiriTTSDaemonSession_requests;
      v100 = v183;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v45 = *&v100[v99];
      v6 = MEMORY[0x1E69E7CC0];
      v185 = MEMORY[0x1E69E7CC0];
      v3 = v45 + 64;
      v101 = 1 << v45[32];
      v102 = -1;
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      v41 = v102 & *(v45 + 8);
      v13 = (v101 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v31 = 0;
      while (v41)
      {
LABEL_31:
        v104 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v105 = *(*(v45 + 7) + ((v31 << 9) | (8 * v104)));
        v191 = qword_1F28D9208;
        v106 = swift_dynamicCastObjCProtocolConditional();
        if (v106)
        {
          v36 = v106;
          MEMORY[0x1B2738320](v105);
          if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1C2CE98();
          }

          sub_1B1C2CEC8();
          v6 = v185;
        }
      }

      while (1)
      {
        v103 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v103 >= v13)
        {

          v107 = sub_1B1A9547C();
          if (!v107)
          {

            v109 = v180;
            goto LABEL_67;
          }

          v108 = v107;
          v109 = v180;
          if (v107 < 1)
          {
            __break(1u);
            goto LABEL_72;
          }

          v110 = 0;
          v184 = v6 & 0xC000000000000001;
          v175 = v171 + 4;
          v174 = (v171 + 1);
          v171 += 2;
          v111 = 1;
          v181 = v6;
          v172 = v107;
          while (2)
          {
            if (v184)
            {
              v112 = MEMORY[0x1B2738A20](v110, v6);
            }

            else
            {
              v112 = *(v6 + 8 * v110 + 32);
            }

            v113 = v112;
            swift_getObjectType();
            v114 = AudibleRequestProtocol.audioSessionId.getter();
            if (v114 != sub_1B1AD6C0C())
            {

              goto LABEL_61;
            }

            v115 = v113;
            sub_1B1BF2758(v115);

            type metadata accessor for PreviewRequest(0);
            if (swift_dynamicCastClass())
            {
              v116 = v115;
              sub_1B1B12A30();

              v117 = v182;
              OUTLINED_FUNCTION_171_0(v5, 1);
              if (!v132)
              {
                v118 = *v175;
                v119 = v179;
                (*v175)(v179, v5, v117);
                if (v111)
                {
                  v168 = v118;
                  (*v171)(v19, v119, v117);
                  __swift_storeEnumTagSinglePayload(v19, 0, 1, v117);
                  v120 = v19;
                  v121 = v177;
                  sub_1B1B12A30();
                  v122 = *(v169 + 48);
                  v123 = v176;
                  sub_1B1A91CD0(v120, v176, &unk_1EB761F00, &qword_1B1C36480);
                  v173 = v122;
                  v124 = OUTLINED_FUNCTION_31_9();
                  sub_1B1A91CD0(v124, v125, v126, &qword_1B1C36480);
                  OUTLINED_FUNCTION_171_0(v123, 1);
                  if (v132)
                  {

                    sub_1B1A90CD8(v121, &unk_1EB761F00, &qword_1B1C36480);
                    sub_1B1A90CD8(v120, &unk_1EB761F00, &qword_1B1C36480);
                    v127 = OUTLINED_FUNCTION_128_1();
                    v128(v127);
                    OUTLINED_FUNCTION_171_0(v123 + v173, 1);
                    v19 = v120;
                    v5 = v178;
                    v109 = v180;
                    v108 = v172;
                    if (!v132)
                    {
                      goto LABEL_59;
                    }

                    sub_1B1A90CD8(v123, &unk_1EB761F00, &qword_1B1C36480);
                    v111 = 0;
                  }

                  else
                  {
                    v19 = v120;
                    v5 = v165;
                    v109 = &unk_1EB761F00;
                    sub_1B1A91CD0(v123, v165, &unk_1EB761F00, &qword_1B1C36480);
                    v131 = v173;
                    OUTLINED_FUNCTION_171_0(v123 + v173, 1);
                    if (!v132)
                    {
                      v134 = v5;
                      v135 = v170;
                      (v168)(v170, v123 + v131, v117);
                      sub_1B1BF83C4(&qword_1EB763F78, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                      v136 = sub_1B1C2CB18();

                      v137 = *v174;
                      (*v174)(v135, v117);
                      v5 = &qword_1B1C36480;
                      sub_1B1A90CD8(v177, &unk_1EB761F00, &qword_1B1C36480);
                      sub_1B1A90CD8(v19, &unk_1EB761F00, &qword_1B1C36480);
                      v137(v179, v117);
                      v137(v134, v117);
                      v138 = OUTLINED_FUNCTION_159();
                      sub_1B1A90CD8(v138, v139, &qword_1B1C36480);
                      v111 = v136 ^ 1;
                      OUTLINED_FUNCTION_158_0();
                      v6 = v181;
                      v108 = v172;
                      goto LABEL_61;
                    }

                    sub_1B1A90CD8(v177, &unk_1EB761F00, &qword_1B1C36480);
                    sub_1B1A90CD8(v19, &unk_1EB761F00, &qword_1B1C36480);
                    v133 = *v174;
                    (*v174)(v179, v117);
                    v133(v5, v117);
                    OUTLINED_FUNCTION_158_0();
                    v108 = v172;
LABEL_59:
                    sub_1B1A90CD8(v123, &qword_1EB763F70, &unk_1B1C407E8);
                    v111 = 1;
                  }
                }

                else
                {
                  v129 = OUTLINED_FUNCTION_128_1();
                  v130(v129);

                  v111 = 0;
                  v109 = v180;
                }

                v6 = v181;
LABEL_61:
                if (v108 == ++v110)
                {

                  if ((v111 & 1) == 0)
                  {
                    v141 = v109;
                    v142 = sub_1B1C2C888();
                    v143 = sub_1B1C2D0D8();

                    if (os_log_type_enabled(v142, v143))
                    {
                      v144 = OUTLINED_FUNCTION_21_0();
                      v145 = OUTLINED_FUNCTION_17_2();
                      *v144 = 138543362;
                      *(v144 + 4) = v141;
                      *v145 = v141;
                      v146 = v141;
                      _os_log_impl(&dword_1B1A8A000, v142, v143, "#PreviewRequest ignored for %{public}@", v144, 0xCu);
                      sub_1B1A90CD8(v145, &qword_1EB7625C0, &qword_1B1C37990);
                      OUTLINED_FUNCTION_10_1();
                      OUTLINED_FUNCTION_11_23();
                    }

                    (v166)(0);
                    goto LABEL_68;
                  }

LABEL_67:
                  v147 = v109;
                  v148 = v183;
                  v149 = *&v183[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
                  MEMORY[0x1EEE9AC00](v140);
                  OUTLINED_FUNCTION_65_3();
                  *(v150 - 16) = v148;
                  *(v150 - 8) = v147;
                  MEMORY[0x1EEE9AC00](v151);
                  OUTLINED_FUNCTION_66_5();
                  *(v152 - 16) = sub_1B1BFB388;
                  *(v152 - 8) = v153;
                  os_unfair_lock_lock(v149 + 4);
                  sub_1B1BFB494();
                  os_unfair_lock_unlock(v149 + 4);
                  v154 = sub_1B1A9CB84();
                  OUTLINED_FUNCTION_2_11();
                  v155 = swift_allocObject();
                  v156 = v166;
                  v157 = v167;
                  *(v155 + 16) = v166;
                  *(v155 + 24) = v157;

                  v158 = sub_1B1A927C4(sub_1B1BFB4C8, v155);

                  OUTLINED_FUNCTION_38_1();
                  v159 = swift_allocObject();
                  v159[2] = v147;
                  v159[3] = v148;
                  v159[4] = v156;
                  v159[5] = v157;
                  v189 = sub_1B1BF83B8;
                  v190 = v159;
                  v185 = MEMORY[0x1E69E9820];
                  v186 = 1107296256;
                  OUTLINED_FUNCTION_13_1();
                  v187 = v160;
                  v188 = &block_descriptor_89;
                  v161 = _Block_copy(&v185);

                  v162 = v147;
                  v163 = v148;

                  [v158 speakWithPreviewRequest:v162 reply:v161];
                  _Block_release(v161);
                  swift_unknownObjectRelease();
                  goto LABEL_68;
                }

                continue;
              }

              v6 = v181;
            }

            else
            {

              __swift_storeEnumTagSinglePayload(v5, 1, 1, v182);
            }

            break;
          }

          sub_1B1A90CD8(v5, &unk_1EB761F00, &qword_1B1C36480);
          goto LABEL_61;
        }

        v41 = *&v3[8 * v103];
        ++v31;
        if (v41)
        {
          v31 = v103;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_5_27(&qword_1ED9A96B8);
    }
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  OUTLINED_FUNCTION_12_1(v31, qword_1ED9A9120);
  v56 = sub_1B1C2C888();
  v57 = sub_1B1C2D0C8();
  if (OUTLINED_FUNCTION_10_2(v57))
  {
    v58 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_15_2(v58);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v59, v60, v61, v62, v63, 2u);
    OUTLINED_FUNCTION_9_1();
  }

  v64 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v65 = OUTLINED_FUNCTION_3_27();
  (v5)();

LABEL_68:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BF2130(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  v5 = a2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + v4);
  sub_1B1AD5E68();
  *(a1 + v4) = v7;
  return swift_endAccess();
}

void sub_1B1BF21E8(uint64_t a1, void (*a2)(void *))
{
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_96_3("sirittsd connection error: ", v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v4 = sub_1B1C2D828();
  MEMORY[0x1B27381B0](v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = sub_1B1C2CB58();
  *(inited + 40) = v6;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v25)
  {
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  if (v25)
  {
    v9 = v25;
  }

  else
  {
    v9 = v2;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v9;

  v10 = OUTLINED_FUNCTION_146_0();
  v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v12 = OUTLINED_FUNCTION_33_10();
  sub_1B1B1AE5C(v12, v13, -9, v10);
  OUTLINED_FUNCTION_7_13();

  a2(v7);
}

uint64_t sub_1B1BF2324(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #PreviewRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #PreviewRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BF26B0()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1A971C8();
  v1 = v0;
  swift_endAccess();
}

double sub_1B1BF27E8(void *a1, const char *a2, SEL *a3, ...)
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v7 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v7, qword_1ED9A9120);
  v8 = a1;
  v9 = sub_1B1C2C888();
  v10 = sub_1B1C2D0D8();

  if (OUTLINED_FUNCTION_124_0())
  {
    OUTLINED_FUNCTION_21_0();
    v11 = OUTLINED_FUNCTION_69_3();
    *v3 = 138412290;
    *(v3 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&dword_1B1A8A000, v9, v10, a2, v3, 0xCu);
    sub_1B1A90CD8(v11, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_39_8();
  }

  v13 = sub_1B1A9CB84();
  v14 = *&v13[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
  swift_unknownObjectRetain();

  [v14 *a3];

  swift_unknownObjectRelease();
  return result;
}

void sub_1B1BF2A24()
{
  OUTLINED_FUNCTION_62();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_11();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  aBlock = sub_1B1BF840C;
  v21 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764240, &qword_1B1C41098);
  v26 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_136_0(&aBlock, &v26, MEMORY[0x1E69E7C98] + 8))
  {

    v7 = sub_1B1A9CB84();
    v8 = *&v7[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
    swift_unknownObjectRetain();

    sub_1B1A91CD0(v1 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v3, &qword_1EB761DF8, qword_1B1C40850);
    v9 = sub_1B1C2C478();
    v10 = 0;
    if (__swift_getEnumTagSinglePayload(v3, 1, v9) != 1)
    {
      v10 = sub_1B1C2C448();
      OUTLINED_FUNCTION_59_1();
      v11 = OUTLINED_FUNCTION_159();
      v12(v11);
    }

    v24 = v2;
    v25 = v0;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    OUTLINED_FUNCTION_12_20();
    v22 = v13;
    v23 = &block_descriptor_95_0;
    v14 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_149(v8, sel_isSpeakingWithAccessoryId_reply_);
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v15 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v15, qword_1ED9A9120);
    v10 = sub_1B1C2C888();
    v16 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_82_3(v16))
    {
      v17 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v17);
      OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v18, v19, "isSpeaking: requires correct parameter");
      OUTLINED_FUNCTION_9_1();
    }
  }
}

uint64_t sub_1B1BF2CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1B1BF2D2C()
{
  v5 = v1;
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v6);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_11();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v0;
  aBlock = sub_1B1BF8438;
  v22 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764248, &qword_1B1C410A0);
  v27 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    static Logger.log(_:thresholdFrequency:)(0xD000000000000014, 0x80000001B1C53640, 1.0);
    v9 = sub_1B1A9CB84();
    OUTLINED_FUNCTION_2_11();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_143_1(v10);
    v11 = sub_1B1A927C4(sub_1B1BF8468, v4);

    sub_1B1A91CD0(v5 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v3, &qword_1EB761DF8, qword_1B1C40850);
    sub_1B1C2C478();
    v12 = OUTLINED_FUNCTION_7_13();
    v13 = 0;
    if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
    {
      v13 = sub_1B1C2C448();
      OUTLINED_FUNCTION_59_1();
      (*(v14 + 8))(v3, v5);
    }

    v25 = v2;
    v26 = v0;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1B1BF3008;
    v24 = &block_descriptor_104;
    v15 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_149(v11, sel_getAudioPowerWithAccessoryId_reply_);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v16 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v16, qword_1ED9A9120);
    v13 = sub_1B1C2C888();
    v17 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_82_3(v17))
    {
      v18 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v18);
      OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v19, v20, "getAudioPower: requires correct parameter");
      OUTLINED_FUNCTION_9_1();
    }
  }
}

uint64_t sub_1B1BF3008(uint64_t a1, float a2, float a3)
{
  v5 = *(a1 + 32);

  v5(v6, a2, a3);
}

uint64_t sub_1B1BF3098(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_17();
  *(swift_allocObject() + 16) = v8;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_67_0();
  a6(v10);
}

void sub_1B1BF3124(uint64_t a1, void (**a2)(void, void), float a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B1A95808;
  *(v12 + 24) = v11;
  aBlock = sub_1B1BFB48C;
  v32 = v12;
  _Block_copy(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v37 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v13 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v13, qword_1ED9A9120);
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = a3;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a4;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Start #AdjustVolume, volume: %f, rampTime: %f", v16, 0x16u);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    v17 = sub_1B1A9CB84();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1B1A95808;
    *(v18 + 24) = v11;

    v19 = sub_1B1A927C4(sub_1B1B29EE4, v18);

    sub_1B1A91CD0(a1 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v10, &qword_1EB761DF8, qword_1B1C40850);
    v20 = sub_1B1C2C478();
    v21 = 0;
    if (__swift_getEnumTagSinglePayload(v10, 1, v20) != 1)
    {
      v21 = sub_1B1C2C448();
      (*(*(v20 - 8) + 8))(v10, v20);
    }

    v35 = sub_1B1A95808;
    v36 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1B1A955E0;
    v34 = &block_descriptor_461;
    v22 = _Block_copy(&aBlock);

    *&v23 = a3;
    [v19 adjustVolumeWithAccessoryId:v21 volume:v22 rampTime:v23 didFinish:a4];
    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v24 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v24, qword_1ED9A9120);
    v25 = sub_1B1C2C888();
    v26 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B1A8A000, v25, v26, "adjustVolume:rampTime:didFinish: requires correct parameters", v27, 2u);
      MEMORY[0x1B2739FD0](v27, -1, -1);
    }

    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v21 = sub_1B1C2C048();
    (a2)[2](a2, v21);
  }

  _Block_release(a2);
}

void sub_1B1BF3620()
{
  v5 = v1;
  OUTLINED_FUNCTION_62();
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v10);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_11();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v0;
  aBlock = sub_1B1BFB48C;
  v41 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v46 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v13 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v13, qword_1ED9A9120);
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v14, v15))
    {
      v4 = swift_slowAlloc();
      *v4 = 134218240;
      *(v4 + 4) = v9;
      *(v4 + 12) = 2048;
      *(v4 + 14) = v7;
      OUTLINED_FUNCTION_17_19();
      _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
      OUTLINED_FUNCTION_39_8();
    }

    v21 = sub_1B1A9CB84();
    OUTLINED_FUNCTION_2_11();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_143_1(v22);
    v23 = sub_1B1A927C4(sub_1B1B29D3C, v4);

    sub_1B1A91CD0(v5 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v3, &qword_1EB761DF8, qword_1B1C40850);
    v24 = sub_1B1C2C478();
    v25 = 0;
    if (__swift_getEnumTagSinglePayload(v3, 1, v24) != 1)
    {
      v25 = sub_1B1C2C448();
      OUTLINED_FUNCTION_59_1();
      (*(v26 + 8))(v3, v24);
    }

    v44 = v2;
    v45 = v0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v42 = v27;
    v43 = &block_descriptor_114;
    v28 = _Block_copy(&aBlock);

    *&v29 = v9;
    [v23 adjustVolumeWithAccessoryId:v25 volume:v28 rampTime:v29 didFinish:v7];
    _Block_release(v28);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v30 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v30, qword_1ED9A9120);
    v31 = sub_1B1C2C888();
    v32 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_22_8(v32))
    {
      v33 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_49_7(v33);
      OUTLINED_FUNCTION_7_24();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_10_1();
    }

    v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v25 = OUTLINED_FUNCTION_3_27();
    v2();
  }
}

void sub_1B1BF3A44(void *a1, uint64_t a2, void (**a3)(void, void, double))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFAC54;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3F0;
  v35 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764250, &qword_1B1C410A8);
  v40 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v7 == 2 || (v7 & 1) == 0)
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v19 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v19, qword_1ED9A9120);
      v20 = a1;
      v21 = sub_1B1C2C888();
      v22 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock = v33;
        *v23 = 136446210;
        v24 = [v20 description];
        v25 = sub_1B1C2CB58();
        v27 = v26;

        v28 = sub_1B1A930E4(v25, v27, &aBlock);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1B1A8A000, v21, v22, "Start #EstimateDuration %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1B2739FD0](v33, -1, -1);
        MEMORY[0x1B2739FD0](v23, -1, -1);
      }

      v29 = sub_1B1A9CB84();
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1B1BFAC54;
      *(v30 + 24) = v5;

      v31 = sub_1B1A927C4(sub_1B1BFB488, v30);

      v38 = sub_1B1BFAC54;
      v39 = v5;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_1B1BF4390;
      v37 = &block_descriptor_446;
      v32 = _Block_copy(&aBlock);

      [v31 estimateDurationWithRequest:v20 reply:v32];
      _Block_release(v32);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v8 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v9 = sub_1B1C2C888();
      v10 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1B1A8A000, v9, v10, "Skipped #EstimateDuration: TTS is disabled.", v11, 2u);
        MEMORY[0x1B2739FD0](v11, -1, -1);
      }

      a3[2](a3, 0, 0.0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "estimateDurationWithRequest:didFinish: requires correct parameters", v15, 2u);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v18 = sub_1B1C2C048();
    (a3)[2](a3, v18, 0.0);
  }

  _Block_release(a3);
}

void sub_1B1BF4390(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1B1BF4424(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5 = sub_1B1C2C048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a2 + 16))(a2, a3);
}

void sub_1B1BF4498(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFAC14;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3D0;
  v37 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764258, &qword_1B1C410B0);
  v42 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v7 == 2 || (v7 & 1) == 0)
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v20 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v20, qword_1ED9A9120);
      v21 = a1;
      v22 = sub_1B1C2C888();
      v23 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v24 = 136315138;
        v25 = [v21 description];
        v26 = sub_1B1C2CB58();
        v28 = v27;

        v29 = sub_1B1A930E4(v26, v28, &aBlock);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1B1A8A000, v22, v23, "#TextToPhoneme %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1B2739FD0](v35, -1, -1);
        MEMORY[0x1B2739FD0](v24, -1, -1);
      }

      v30 = sub_1B1A9CB84();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1B1BFAC14;
      *(v31 + 24) = v5;

      v32 = sub_1B1A927C4(sub_1B1BFB484, v31);

      v33 = swift_allocObject();
      *(v33 + 16) = sub_1B1BFAC14;
      *(v33 + 24) = v5;
      v40 = sub_1B1BFB4C4;
      v41 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1B1BF4E70;
      v39 = &block_descriptor_432;
      v34 = _Block_copy(&aBlock);

      [v32 textToPhonemeWithRequest:v21 reply:v34];
      _Block_release(v34);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v8 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v9 = sub_1B1C2C888();
      v10 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1B1A8A000, v9, v10, "Skipped #TextToPhoneme: TTS is disabled.", v11, 2u);
        MEMORY[0x1B2739FD0](v11, -1, -1);
      }

      v12 = sub_1B1C2CB28();
      (a3)[2](a3, v12, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v13 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v13, qword_1ED9A9120);
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "textToPhonemeWithRequest:didFinish: requires correct parameters", v16, 2u);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v19 = sub_1B1C2C048();
    (a3)[2](a3, 0, v19);
  }

  _Block_release(a3);
}

uint64_t sub_1B1BF4E70(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1B1C2CB58();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_1B1BF4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1B1C2CB28();
    if (a3)
    {
LABEL_3:
      v7 = sub_1B1C2C048();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1B1BF4FB0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  _Block_copy(a3);
  type metadata accessor for SynthesisVoice();
  v23[0] = sub_1B1C2CE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764260, &unk_1B1C410B8);
  if (swift_dynamicCast() && (, v5 = swift_allocObject(), *(v5 + 16) = sub_1B1A95AD0, *(v5 + 24) = v4, v23[0] = sub_1B1BFB48C, v23[1] = v5, , __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090), v23[2] = sub_1B1C2D7F8(), (swift_dynamicCast() & 1) != 0))
  {

    sub_1B1AF64DC();
    if (v6)
    {
      sub_1B1BF5B60();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v14 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v14, qword_1ED9A9120);

      v15 = sub_1B1C2C888();
      v16 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23[0] = v18;
        *v17 = 136315138;

        v19 = sub_1B1A930E4(0xD00000000000003ALL, 0x80000001B1C536B0, v23);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_1B1A8A000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1B2739FD0](v18, -1, -1);
        MEMORY[0x1B2739FD0](v17, -1, -1);
      }

      sub_1B1A9EC9C();
      v20 = swift_allocError();
      *v21 = 1;
      *(v21 + 8) = 0xD00000000000003ALL;
      *(v21 + 16) = 0x80000001B1C536B0;
      v22 = sub_1B1C2C048();
      (a3)[2](a3, v22);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = sub_1B1C2C888();
    v9 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B1A8A000, v8, v9, "subscribeWithVoices:reply: requires correct parameters", v10, 2u);
      MEMORY[0x1B2739FD0](v10, -1, -1);
    }

    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v13 = sub_1B1C2C048();
    (a3)[2](a3, v13);
  }

  _Block_release(a3);
}

void sub_1B1BF5410(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  type metadata accessor for SynthesisVoice();
  v29[0] = sub_1B1C2CE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764260, &unk_1B1C410B8);
  v5 = MEMORY[0x1E69E7C98];
  if ((swift_dynamicCast() & 1) != 0 && (, OUTLINED_FUNCTION_2_11(), v6 = swift_allocObject(), *(v6 + 16) = a2, *(v6 + 24) = a3, v29[0] = sub_1B1BFB48C, v29[1] = v6, , v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090), v30 = OUTLINED_FUNCTION_78_2(v7, v8), OUTLINED_FUNCTION_136_0(v29, &v30, v5 + 8)))
  {

    sub_1B1AF64DC();
    if (v9)
    {
      sub_1B1BF5B60();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v21 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v21, qword_1ED9A9120);

      v22 = sub_1B1C2C888();
      v23 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_21_0();
        v25 = OUTLINED_FUNCTION_19_0();
        v29[0] = v25;
        *v24 = 136315138;

        v26 = sub_1B1A930E4(0xD00000000000003ALL, 0x80000001B1C536B0, v29);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_1B1A8A000, v22, v23, "%s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        OUTLINED_FUNCTION_39_8();
        OUTLINED_FUNCTION_29_1();
      }

      sub_1B1A9EC9C();
      v27 = swift_allocError();
      *v28 = 1;
      *(v28 + 8) = 0xD00000000000003ALL;
      *(v28 + 16) = 0x80000001B1C536B0;
      a2();
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v10 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v10, qword_1ED9A9120);
    v11 = sub_1B1C2C888();
    v12 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_22_8(v12))
    {
      v13 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_49_7(v13);
      OUTLINED_FUNCTION_7_24();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_10_1();
    }

    v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v20 = OUTLINED_FUNCTION_3_27();
    a2();
  }
}

uint64_t sub_1B1BF57B4()
{
  OUTLINED_FUNCTION_160_0();
  v1 = SecTaskCreateFromSelf(0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB28();
  if (!SecTaskCopyValueForEntitlement(v2, v3, 0))
  {

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  v6 = sub_1B1AF64DC();
  if (v7)
  {
    if (v6 == 0xD000000000000016 && v7 == 0x80000001B1C439D0)
    {

      swift_unknownObjectRelease();

      return 1;
    }

    v9 = sub_1B1C2D7A8();

    if (v9)
    {

      swift_unknownObjectRelease();
      return 1;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_15();
    v11 = sub_1B1C2CB28();
    v0 = [v5 containsObject_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v0;
}

void sub_1B1BF5950(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_160_0();
  if (sub_1B1BF57B4())
  {
    OUTLINED_FUNCTION_15();

    sub_1B1BF5B60();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v5 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v5, qword_1ED9A9120);

    v6 = sub_1B1C2C888();
    sub_1B1C2D0D8();

    if (OUTLINED_FUNCTION_124_0())
    {
      v7 = OUTLINED_FUNCTION_21_0();
      v23 = OUTLINED_FUNCTION_19_0();
      *v7 = 136446210;
      v8 = OUTLINED_FUNCTION_15();
      *(v7 + 4) = sub_1B1A930E4(v8, v9, v10);
      OUTLINED_FUNCTION_17_19();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_45_6();
      OUTLINED_FUNCTION_39_8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    *(inited + 32) = sub_1B1C2CB58();
    *(inited + 40) = v17;
    v18 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x80000001B1C536F0;

    v19 = OUTLINED_FUNCTION_146_0();
    v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v21 = OUTLINED_FUNCTION_33_10();
    sub_1B1B1AE5C(v21, v22, 500, v19);
    OUTLINED_FUNCTION_7_13();

    a4(v18);
  }
}

void sub_1B1BF5B60()
{
  OUTLINED_FUNCTION_25();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v13);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
  }

  v15 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v15, qword_1ED9A9120);

  v16 = sub_1B1C2C888();
  v17 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v16, v17))
  {
    v36 = v6;
    v18 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v18 = 136446466;
    v19 = type metadata accessor for SynthesisVoice();
    v20 = MEMORY[0x1B2738350](v8, v19);
    v22 = v10;
    v23 = v12;
    v24 = v4;
    v25 = sub_1B1A930E4(v20, v21, v37);

    *(v18 + 4) = v25;
    v4 = v24;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1B1A930E4(v23, v22, v37);
    _os_log_impl(&dword_1B1A8A000, v16, v17, "#SubscribeVoice voices: %{public}s, clientId: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    v6 = v36;
    OUTLINED_FUNCTION_11();
  }

  v26 = sub_1B1A9CB84();
  v27 = *&v26[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
  swift_unknownObjectRetain();

  type metadata accessor for SynthesisVoice();
  v28 = sub_1B1C2CE68();
  v29 = sub_1B1C2CB28();
  sub_1B1A91CD0(v2 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v1, &qword_1EB761DF8, qword_1B1C40850);
  sub_1B1C2C478();
  v30 = OUTLINED_FUNCTION_104();
  if (__swift_getEnumTagSinglePayload(v30, 1, v2) == 1)
  {
    sub_1B1A90CD8(v1, &qword_1EB761DF8, qword_1B1C40850);
    v31 = 0;
  }

  else
  {
    sub_1B1C2C438();
    OUTLINED_FUNCTION_59_1();
    v32 = OUTLINED_FUNCTION_33();
    v33(v32);
    v31 = sub_1B1C2CB28();
  }

  v37[4] = v6;
  v37[5] = v4;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v37[2] = v34;
  v37[3] = &block_descriptor_574;
  v35 = _Block_copy(v37);

  [v27 subscribeWithVoices:v28 clientId:v29 accessoryId:v31 reply:v35];
  _Block_release(v35);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BF62B4(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFABDC;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3EC;
  v26 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764280, &qword_1B1C410E0);
  v31 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Get #SynthesisVoice voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFABDC;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB480, v15);

    v29 = sub_1B1BFABDC;
    v30 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B1BF698C;
    v28 = &block_descriptor_393;
    v17 = _Block_copy(&aBlock);

    [v16 getSynthesisVoiceMatching:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "getSynthesisVoiceMatching:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v24 = sub_1B1C2C048();
    (a3)[2](a3, 0, v24);
  }

  _Block_release(a3);
}

void sub_1B1BF698C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1B1BF6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B1C2C048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1B1BF6AA0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFB47C;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB490;
  v23 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764240, &qword_1B1C41098);
  v28 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Get #PhaticCapability voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFB47C;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB4D0, v15);

    v26 = sub_1B1BFB47C;
    v27 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1B1BF2CA4;
    v25 = &block_descriptor_379;
    v17 = _Block_copy(&aBlock);

    [v16 queryPhaticCapabilityWithVoice:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "queryPhaticCapabilityWithVoice:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void sub_1B1BF7118(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFABC4;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB490;
  v23 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764240, &qword_1B1C41098);
  v28 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "#queryWordTimingSupport voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFABC4;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB4D0, v15);

    v26 = sub_1B1BFABC4;
    v27 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1B1BF2CA4;
    v25 = &block_descriptor_364;
    v17 = _Block_copy(&aBlock);

    [v16 queryWordTimingSupportWithVoice:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "queryWordTimingSupportWithVoice:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void sub_1B1BF7790(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFABBC;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3E8;
  v26 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764288, &qword_1B1C410E8);
  v31 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Get #isANEModelCompiled voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFABBC;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB478, v15);

    v29 = sub_1B1BFABBC;
    v30 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B1B2D294;
    v28 = &block_descriptor_350;
    v17 = _Block_copy(&aBlock);

    [v16 isANEModelCompiledMatching:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "isANEModelCompiledMatching:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v24 = sub_1B1C2C048();
    (a3)[2](a3, 0, v24);
  }

  _Block_release(a3);
}

void sub_1B1BF7E80(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B1C2C048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1B1BF7EF0()
{
  v0 = sub_1B1C2C9F8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = aBlock - v8;
  v10 = dispatch_semaphore_create(0);
  v11 = sub_1B1A9CB84();
  v12 = *&v11[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_17();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  aBlock[4] = sub_1B1BF8674;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  aBlock[2] = v14;
  aBlock[3] = &block_descriptor_205;
  v15 = _Block_copy(aBlock);
  v16 = v10;

  [v12 clearDeviceCacheWithDidFinish_];
  _Block_release(v15);
  swift_unknownObjectRelease();
  sub_1B1C2C9E8();
  sub_1B1C2CA18();
  v17 = *(v2 + 8);
  v17(v6, v0);
  sub_1B1C2D1A8();

  return (v17)(v9, v0);
}

double sub_1B1BF8120()
{
  v0 = sub_1B1A9CB84();
  v1 = *&v0[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_syncProxy];
  swift_unknownObjectRetain();

  [v1 killDaemon];

  swift_unknownObjectRelease();
  return result;
}

void sub_1B1BF81CC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_1B1A954B0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
}

void *sub_1B1BF8298(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B1BF83C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B1BF8698@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1B1BF8298(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B1BF86C4(void *a1)
{
  type metadata accessor for SiriAnalyticsHandler(0);
  swift_allocObject();
  v2 = a1;
  sub_1B1BFAC5C();
  v4[0] = 3;
  v5 = 0;
  v6 = 0;
  sub_1B1BFE998(v4);
}

unint64_t sub_1B1BF8780()
{
  result = qword_1EB764290;
  if (!qword_1EB764290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764290);
  }

  return result;
}

unint64_t sub_1B1BF87D8()
{
  result = qword_1EB764298;
  if (!qword_1EB764298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764298);
  }

  return result;
}

void sub_1B1BFAC5C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v5 = OUTLINED_FUNCTION_23(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_1();
  v55 = v10;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v56 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_1();
  v52 = (v17 - v18);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_1();
  v53 = v20;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_1();
  v54 = v22;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v26 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId);
  sub_1B1C2C468();
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId);
  v27 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics;
  *(v1 + v27) = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = 0;
  v28 = (v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 28) = 0u;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues) = v26;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 0;
  v29 = (v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId);
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp) = 0;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  v30 = objc_opt_self();
  v31 = [v30 sharedAnalytics];
  v32 = [v31 defaultMessageStream];

  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) = v32;
  v33 = [objc_opt_self() loggerForCurrentProcess];
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger) = v33;
  v34 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x108))();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {

    v35 = v13;
  }

  else
  {
    v51 = v8;
    v36 = *(v56 + 32);
    v36(v25, v13, v14);
    v37 = sub_1B1C2C448();
    v38 = [v30 derivedIdentifierForComponentName:13 fromSourceIdentifier:v37];

    if (!v38)
    {
      (*(v56 + 8))(v25, v14);

      goto LABEL_9;
    }

    v50 = v25;
    v39 = v56;
    v40 = v53;
    sub_1B1C2C458();

    v41 = v54;
    v42 = (v36)(v54, v40, v14);
    v43 = v55;
    (*((*v34 & *v3) + 0x120))(v42);

    if (__swift_getEnumTagSinglePayload(v43, 1, v14) != 1)
    {
      v45 = v52;
      v36(v52, v43, v14);
      v46 = v51;
      v36(v51, v41, v14);
      OUTLINED_FUNCTION_100_3();
      v47 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v46, v1 + v47);
      swift_endAccess();
      v36(v46, v50, v14);
      OUTLINED_FUNCTION_100_3();
      v48 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v46, v1 + v48);
      swift_endAccess();
      v36(v46, v45, v14);
      OUTLINED_FUNCTION_100_3();
      v49 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v46, v1 + v49);
      swift_endAccess();
      goto LABEL_9;
    }

    v44 = *(v39 + 8);
    v44(v41, v14);
    v44(v50, v14);
    v35 = v43;
  }

  sub_1B1A90CD8(v35, &qword_1EB761DF8, qword_1B1C40850);
LABEL_9:
  OUTLINED_FUNCTION_26_1();
}

id sub_1B1BFB2B8@<X0>(void *a1@<X8>)
{
  result = sub_1B1A9BD14();
  *a1 = result;
  return result;
}

double OUTLINED_FUNCTION_71_4()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1, uint64_t a2, ...)
{

  return sub_1B1C2D7F8();
}

id OUTLINED_FUNCTION_83_3(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return sub_1B1C2CB28();
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_121_0()
{

  return result;
}

BOOL OUTLINED_FUNCTION_124_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_139_0()
{

  JUMPOUT(0x1B27381B0);
}

double OUTLINED_FUNCTION_143_1(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return result;
}

void OUTLINED_FUNCTION_144_1()
{
}

id OUTLINED_FUNCTION_145(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return sub_1B1C2CAB8();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_1B1C2C828();
}

BOOL OUTLINED_FUNCTION_151_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_164_0(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v7, a4, a5, a6, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_165()
{
}

uint64_t OUTLINED_FUNCTION_168()
{

  return sub_1B1C2D1E8();
}

id OUTLINED_FUNCTION_169_0(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1)
{

  return sub_1B1C2C888();
}

uint64_t OUTLINED_FUNCTION_172_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1B1BFB7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  result = sub_1B1C2CAB8();
  qword_1EB772EB8 = result;
  return result;
}

uint64_t sub_1B1BFB838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  result = sub_1B1C2CAB8();
  qword_1EB772EC0 = result;
  return result;
}

uint64_t sub_1B1BFB888(uint64_t a1, uint64_t a2)
{
  if (qword_1EB761860 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB772EC0 + 16))
  {
    sub_1B1A8EB10();
    if (v2)
    {
    }
  }

  sub_1B1A8EDAC();
  if (*(sub_1B1C2D368() + 16))
  {

    v4 = sub_1B1AE795C();

    if (v4)
    {
      return v4;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B1BFB9B4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB761858 != -1)
  {
LABEL_35:
    swift_once();
  }

  v4 = sub_1B1AE795C();
  if (v4)
  {
    v5 = v4;

    v6 = v5[2];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1B1C361C0;
    v5[4] = a1;
    v5[5] = a2;
    v6 = 1;
  }

  v7 = 0;
  v8 = v5 + 5;
  a1 = MEMORY[0x1E69E7CC0];
  a2 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v10 = *(v8 - 1);
    v9 = *v8;

    v11 = sub_1B1BFB888(v10, v9);

    v12 = *(v11 + 16);
    v13 = *(a1 + 16);
    if (__OFADD__(v13, v12))
    {
      goto LABEL_30;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(a1 + 24) >> 1)
    {
      sub_1B1A9ED54();
      a1 = v14;
    }

    if (*(v11 + 16))
    {
      if ((*(a1 + 24) >> 1) - *(a1 + 16) < v12)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(a1 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_34;
        }

        *(a1 + 16) = v17;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_31;
      }
    }

    v8 += 2;
    ++v7;
  }

  v18 = 0;
  a2 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v19 = *(a1 + 16);
LABEL_20:
  v20 = (a1 + 40 + 16 * v18);
  while (v19 != v18)
  {
    if (v18 >= *(a1 + 16))
    {
      goto LABEL_32;
    }

    v22 = *(v20 - 1);
    v21 = *v20;
    objc_allocWithZone(MEMORY[0x1E696AE70]);

    if (sub_1B1AEDFA4(v22, v21, 0))
    {
      MEMORY[0x1B2738320]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      ++v18;
      sub_1B1C2CEC8();
      v25 = v26;
      goto LABEL_20;
    }

    v20 += 2;
    ++v18;
  }

  result = v24;
  *(v24 + 16) = v25;
  return result;
}

uint64_t sub_1B1BFBCAC(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_1B1C2D468())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
    sub_1B1AEDF30();
    sub_1B1A8EDAC();
    v5 = sub_1B1C2D268();
    v7 = v6;
    result = sub_1B1A9547C();
    if (!result)
    {
      break;
    }

    v8 = result;
    for (i = 0; ; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B2738A20](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v3 + 8 * i + 32);
      }

      v11 = v10;
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v13 = sub_1B1C2CB28();
      v14 = [v11 numberOfMatchesInString:v13 options:0 range:{v5, v7}];

      result = v14 > 0;
      if (v14 > 0 || v12 == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

double sub_1B1BFBE84()
{
  swift_beginAccess();

  return result;
}

uint64_t OspreyTTSPrewarmAction.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OspreyTTSPrewarmAction.init(pool:)(a1);
  return v2;
}

void *OspreyTTSPrewarmAction.init(pool:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v1[2] = sub_1B1ADA774();
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = sub_1B1B19360();
  v3 = sub_1B1AA1E5C();

  v2[3] = v3;
  return v2;
}

uint64_t OspreyTTSPrewarmAction.deinit()
{
  sub_1B1B3244C();

  return v0;
}

uint64_t OspreyTTSPrewarmAction.__deallocating_deinit()
{
  OspreyTTSPrewarmAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void sub_1B1BFC15C(void *a1)
{
  sub_1B1AAE088(0);
  if (a1)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v2 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v2, qword_1ED9A9120);
    v3 = a1;
    oslog = sub_1B1C2C888();
    v4 = sub_1B1C2D0B8();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = sub_1B1C2D828();
      v9 = sub_1B1A930E4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1B1A8A000, oslog, v4, "Error in Osprey prewarm: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B2739FD0](v6, -1, -1);
      MEMORY[0x1B2739FD0](v5, -1, -1);
    }

    else
    {
    }
  }
}

double sub_1B1BFC30C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1B1AAE088(0);
  }

  return result;
}

uint64_t sub_1B1BFC394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OspreyTTSPrewarmAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

uint64_t SynthesisPrewarmAction.__allocating_init(pool:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SynthesisPrewarmAction.init(pool:)(a1);
  return v2;
}

uint64_t sub_1B1BFC534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SynthesisPrewarmAction.__allocating_init(pool:)(a1);
  *a2 = result;
  return result;
}

double static SiriAnalyticsHandler.reportCrash(_:)(void *a1)
{
  ObjectType = swift_getObjectType();

  return sub_1B1BFF370(a1, v1, ObjectType);
}

uint64_t sub_1B1BFC600(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1B1C41470[a1];
  }
}

uint64_t sub_1B1BFC660()
{
  result = sub_1B1ACB6B8(&unk_1F28C03D8);
  qword_1ED9AA4F8 = result;
  return result;
}

uint64_t sub_1B1BFC688()
{
  result = sub_1B1ACB6B8(&unk_1F28C0468);
  qword_1EB772CD8 = result;
  return result;
}

uint64_t SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)(void *a1, char a2)
{
  v4 = [objc_opt_self() sharedAnalytics];
  v5 = [v4 defaultMessageStream];

  type metadata accessor for SiriAnalyticsHandler(0);
  v6 = swift_allocObject();
  sub_1B1AF4260(a1, v5, 0, a2);
  return v6;
}

double sub_1B1BFC750(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_1(a1 + 16, a2);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + *a2) = mach_absolute_time();
  }

  return result;
}

void sub_1B1BFC7A8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9[0] = v2;
    v9[1] = v3;
    v10 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    sub_1B1AC2294(v9);
  }
}

void sub_1B1BFC84C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1B1ADF440();
  }
}

double sub_1B1BFC8B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

double sub_1B1BFC908(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  OUTLINED_FUNCTION_17_1(a2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    a3(v4, v5);
  }

  return result;
}

void sub_1B1BFC974()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v23 = v6;
  v7 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (v13)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v9 + 16))(v12, v5, v7);
    v14 = v1;
    v15 = v13;
    v16 = sub_1B1AABA20(v12);
    OUTLINED_FUNCTION_35_11(v16, sel_setUuid_);

    v1 = v14;
  }

  [v13 setComponent_];
  v17 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (v17)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v9 + 16))(v12, v23, v7);
    v18 = v17;
    v19 = sub_1B1AABA20(v12);
    OUTLINED_FUNCTION_51_5(v19, sel_setUuid_);

    [v18 setComponent_];
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v20)
  {
    v21 = v20;
    [v20 setSource_];
    [v21 setTarget_];
    [*(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) emitMessage_];

    v13 = v17;
    v17 = v21;
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BFCBC8()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_41_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_1();
  v234 = v8;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_1();
  v247 = v10;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_1();
  v243 = v12;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_1();
  v241 = v14;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_1();
  v239 = v16;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v231 - v19;
  v21 = sub_1B1C2C478();
  OUTLINED_FUNCTION_7();
  v249 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_1();
  v240 = v24 - v25;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_1();
  v233 = v27;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_1();
  v246 = v29;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_1();
  v244 = v31;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_1();
  v236 = v33;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7_1();
  v242 = v35;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_1();
  v237 = v37;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7_1();
  v238 = v39;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v40);
  v245 = &v231 - v41;
  v42 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v43 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_65(&v4[OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime], &v262);
  v44 = *&v4[v43];
  v45 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  OUTLINED_FUNCTION_66_0(v42 + OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime, &v261);
  v235 = v42;
  *(v42 + v45) = v44;
  if (qword_1ED9A7AC8 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A7AD5 == 1)
  {
    v46 = &v4[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    OUTLINED_FUNCTION_65(&v4[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId], &v251);
    v47 = *(v46 + 1);
    v48 = (v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
    *v48 = *v46;
    v48[1] = v47;
  }

  v248 = v0;
  v232 = v1;
  v250 = v21;
  if (qword_1ED9A5238 != -1)
  {
    swift_once();
  }

  v49 = qword_1ED9AA4F8;
  v50 = &v4[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  OUTLINED_FUNCTION_65(&v4[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId], &v260);
  v52 = *v50;
  v51 = v50[1];

  LOBYTE(v52) = sub_1B1A93A00(v52, v51, v49);

  if (v52)
  {
    v53 = OBJC_IVAR___SiriTTSBaseRequest_logLinkId;
    OUTLINED_FUNCTION_65(&v4[OBJC_IVAR___SiriTTSBaseRequest_logLinkId], &v253);
    sub_1B1AADD60(&v4[v53], v20);
    v54 = v250;
    OUTLINED_FUNCTION_48_0(v20, 1, v250);
    if (v55)
    {
      sub_1B1AABFB0(v20);
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v56 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v56, qword_1ED9A9120);
      v57 = sub_1B1C2C888();
      v58 = sub_1B1C2D0B8();
      if (OUTLINED_FUNCTION_81(v58))
      {
        v59 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_57_4(v59);
        OUTLINED_FUNCTION_14_19(&dword_1B1A8A000, v60, v61, "Ignore Siri logging due to missing Siri request id");
        OUTLINED_FUNCTION_11_23();
      }

      goto LABEL_107;
    }

    v71 = v20;
    v72 = v249[4];
    v72(v245, v71, v54);
    v73 = objc_opt_self();
    v74 = sub_1B1C2C448();
    v75 = [v73 derivedIdentifierForComponentName:13 fromSourceIdentifier:v74];

    if (!v75)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      }

      v111 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v111, qword_1ED9A9120);
      v112 = sub_1B1C2C888();
      v113 = sub_1B1C2D0B8();
      v114 = OUTLINED_FUNCTION_81(v113);
      v115 = v249;
      if (v114)
      {
        v116 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_57_4(v116);
        OUTLINED_FUNCTION_14_19(&dword_1B1A8A000, v117, v118, "Unable to obtain TTS id from SiriAnalytics. SELF logging won't be emitted.");
        OUTLINED_FUNCTION_11_23();
      }

      (v115[1])(v245, v250);
      goto LABEL_107;
    }

    v76 = v238;
    sub_1B1C2C458();

    v77 = OBJC_IVAR___SiriTTSBaseRequest_interactionLinkId;
    OUTLINED_FUNCTION_65(&v4[OBJC_IVAR___SiriTTSBaseRequest_interactionLinkId], &v252);
    sub_1B1AADD60(&v4[v77], v2);
    OUTLINED_FUNCTION_48_0(v2, 1, v54);
    v78 = v54;
    if (v55)
    {
      sub_1B1AABFB0(v2);
      if (qword_1ED9A9288 == -1)
      {
LABEL_23:
        v79 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v79, qword_1ED9A9120);
        v80 = sub_1B1C2C888();
        v81 = sub_1B1C2D0B8();
        if (OUTLINED_FUNCTION_81(v81))
        {
          v82 = OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_57_4(v82);
          OUTLINED_FUNCTION_14_19(&dword_1B1A8A000, v83, v84, "Ignore Siri logging due to missing Siri aceView id");
          OUTLINED_FUNCTION_11_23();
        }

        v85 = v249[1];
        v85(v76, v78);
        v85(v245, v78);
        goto LABEL_107;
      }

LABEL_110:
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
      goto LABEL_23;
    }

    v119 = v2;
    v120 = v72;
    v72(v237, v119, v54);
    v121 = v50[1];
    v122 = v76;
    v123 = v248;
    v124 = (v248 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
    *v124 = *v50;
    v124[1] = v121;

    v125 = v239;
    v120(v239, v122, v78);
    v70 = 1;
    OUTLINED_FUNCTION_26_9();
    v126 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
    OUTLINED_FUNCTION_29_12();
    sub_1B1A91B74(v125, v123 + v126);
    swift_endAccess();
    v120(v125, v245, v78);
    OUTLINED_FUNCTION_26_9();
    v127 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId;
    OUTLINED_FUNCTION_29_12();
    sub_1B1A91B74(v125, v123 + v127);
    swift_endAccess();
    v120(v125, v237, v78);
    v62 = v123;
    OUTLINED_FUNCTION_26_9();
    v128 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId;
    OUTLINED_FUNCTION_29_12();
    sub_1B1A91B74(v125, v123 + v128);
    swift_endAccess();
    v69 = 0;
    v66 = v246;
    v129 = v247;
  }

  else
  {
    v62 = v248;
    if (qword_1EB761270 != -1)
    {
      swift_once();
    }

    v63 = qword_1EB772CD8;
    v64 = *v50;
    v65 = v50[1];

    LOBYTE(v63) = sub_1B1A93A00(v64, v65, v63);

    v66 = v246;
    if (v63)
    {
      v67 = v50[1];
      v68 = (v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
      *v68 = *v50;
      v68[1] = v67;

      v69 = 0;
      v70 = 40;
    }

    else
    {
      v70 = 0;
      v69 = 1;
    }

    v78 = v250;
    v129 = v247;
  }

  if (*(v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest))
  {
    goto LABEL_107;
  }

  LODWORD(v245) = v69;
  LODWORD(v238) = v70;
  *(v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 1;
  v86 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v259);
  v87 = v241;
  sub_1B1AADD60(&v86[v62], v241);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v78);
  sub_1B1AABFB0(v87);
  if (EnumTagSinglePayload == 1)
  {
    v89 = v242;
    sub_1B1C2C468();
    v90 = v78;
    v91 = v249[2];
    v92 = v239;
    v91(v239, v89, v90);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_67(&v86[v62], v258);
    v241 = v86;
    v93 = &v86[v62];
    v94 = v89;
    sub_1B1A91B74(v92, v93);
    swift_endAccess();
    v91(v92, v89, v90);
    OUTLINED_FUNCTION_62_3();
    v95 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId;
    OUTLINED_FUNCTION_67(v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId, v258);
    sub_1B1A91B74(v92, v62 + v95);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1(&qword_1ED9A9288);
    }

    v96 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v96, qword_1ED9A9120);
    v97 = v236;
    v91(v236, v94, v90);
    v98 = v4;
    v99 = sub_1B1C2C888();
    v100 = sub_1B1C2D098();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v258[0] = v239;
      *v101 = 136315394;
      LODWORD(v237) = v100;
      v102 = *v50;
      v103 = v50[1];

      v104 = sub_1B1A930E4(v102, v103, v258);

      *(v101 + 4) = v104;
      *(v101 + 12) = 2080;
      v105 = sub_1B1C2C438();
      v107 = v106;
      v108 = v249[1];
      v108(v97, v90);
      v109 = sub_1B1A930E4(v105, v107, v258);

      *(v101 + 14) = v109;
      _os_log_impl(&dword_1B1A8A000, v99, v237, "Received request from non-Siri client '%s'. Log with isolated stream id: %s", v101, 0x16u);
      v110 = v239;
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v110, -1, -1);
      MEMORY[0x1B2739FD0](v101, -1, -1);

      v108(v242, v90);
      v129 = v247;
      v62 = v248;
      v78 = v90;
      v86 = v241;
      v66 = v246;
    }

    else
    {

      v130 = v249[1];
      v130(v97, v90);
      v130(v242, v90);
      v78 = v90;
      v86 = v241;
      v66 = v246;
      v129 = v247;
      v62 = v248;
    }
  }

  v131 = v243;
  sub_1B1AADD60(&v86[v62], v243);
  OUTLINED_FUNCTION_48_0(v131, 1, v78);
  if (v55)
  {
    sub_1B1AABFB0(v131);
    goto LABEL_107;
  }

  v132 = v249[4];
  v132(v244, v131, v78);
  if ((v245 & 1) == 0)
  {
    sub_1B1AADD60(&v86[v62], v129);
    OUTLINED_FUNCTION_48_0(v129, 1, v78);
    if (!v55)
    {
      v132(v66, v129, v78);
      v133 = OBJC_IVAR___SiriTTSBaseRequest_logLinkId;
      OUTLINED_FUNCTION_65(&v4[OBJC_IVAR___SiriTTSBaseRequest_logLinkId], &v254);
      v134 = &v4[v133];
      v129 = v234;
      sub_1B1AADD60(v134, v234);
      OUTLINED_FUNCTION_48_0(v129, 1, v78);
      if (!v55)
      {
        v135 = v233;
        v132(v233, v129, v78);
        sub_1B1BFC974();
        v136 = v249[1];
        v136(v135, v78);
        v136(v66, v78);
        goto LABEL_49;
      }

      (v249[1])(v66, v78);
    }

    sub_1B1AABFB0(v129);
  }

LABEL_49:
  v257[3] = qword_1F28D9340;
  v137 = swift_dynamicCastObjCProtocolConditional();
  v138 = v137;
  if (v137)
  {
    swift_getObjectType();
    v139 = v4;
    v140 = OUTLINED_FUNCTION_24_7();
    v137 = SynthesizingRequestProtocol.voice.getter(v140);
  }

  v141 = *(v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice);
  *(v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = v137;

  v142 = &selRef_array;
  v143 = [objc_allocWithZone(MEMORY[0x1E69CF7A0]) init];
  if (v143)
  {
    v144 = sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    v145 = v143;
    v146 = v240;
    sub_1B1C2C468();
    v247 = v144;
    v147 = sub_1B1AABA20(v146);
    OUTLINED_FUNCTION_51_5(v147, sel_setLinkId_);

    v148 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
    v76 = v145;
    v149 = [v148 init];
    OUTLINED_FUNCTION_51_5(v149, sel_setRequestedVoiceContext_);

    v150 = [v76 requestedVoiceContext];
    if (v150)
    {
      v151 = v150;
      if (v138)
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_34_11();
        swift_unknownObjectRetain();
        v152 = OUTLINED_FUNCTION_24_7();
        SynthesizingRequestProtocol.voice.getter(v152);
        OUTLINED_FUNCTION_61_5();
        v153 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        OUTLINED_FUNCTION_65(&v86[OBJC_IVAR___SiriTTSSynthesisVoice_type], &v255);
        v154 = *&v86[v153];

        OUTLINED_FUNCTION_38_10();
      }

      else
      {
        v154 = 0;
      }

      [v151 setVoiceType_];
    }

    v155 = [v76 requestedVoiceContext];
    if (v155)
    {
      v156 = v155;
      if (v138)
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_34_11();
        swift_unknownObjectRetain();
        v157 = OUTLINED_FUNCTION_24_7();
        SynthesizingRequestProtocol.voice.getter(v157);
        OUTLINED_FUNCTION_61_5();
        v158 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
        OUTLINED_FUNCTION_65(&v86[OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0]], &v256);
        v159 = *&v86[v158];

        OUTLINED_FUNCTION_38_10();
      }

      else
      {
        v159 = 0;
      }

      [v156 setVoiceFootprint_];
    }

    v160 = [v76 requestedVoiceContext];
    if (v160)
    {
      v161 = v160;
      v142 = v143;
      v143 = v86;
      if (v138 && (swift_getObjectType(), OUTLINED_FUNCTION_34_11(), swift_unknownObjectRetain(), v162 = OUTLINED_FUNCTION_24_7(), v163 = SynthesizingRequestProtocol.voice.getter(v162), swift_unknownObjectRelease(), v164 = &v163[OBJC_IVAR___SiriTTSSynthesisVoice_name], OUTLINED_FUNCTION_65(&v163[OBJC_IVAR___SiriTTSSynthesisVoice_name], v257), v166 = *v164, v165 = v164[1], , v163, v165))
      {
        v86 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(v166, v165);
      }

      else
      {
        v86 = 0;
      }

      [v161 setVoiceName_];

      OUTLINED_FUNCTION_38_10();
    }

    if (!v138)
    {
      goto LABEL_72;
    }

    swift_getObjectType();
    v167 = v76;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24_7();
    SynthesizingRequestProtocol.text.getter();
    v78 = v168;
    swift_unknownObjectRelease();
    v169 = sub_1B1C2CC68();

    if (v169 >= 0xFFFFFFFF80000000)
    {
      v78 = v250;
      if (v169 <= 0x7FFFFFFF)
      {
LABEL_73:
        [v76 setInputTextLength_];

        v171 = v240;
        (v249[2])(v240, v62 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v78);
        v172 = v76;
        v173 = sub_1B1AABA20(v171);
        OUTLINED_FUNCTION_51_5(v173, sel_setContextId_);

        goto LABEL_74;
      }

      __break(1u);
LABEL_72:
      v170 = v76;
      v169 = 0;
      v78 = v250;
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_110;
  }

LABEL_74:
  v174 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v142[99]];
  if (!v174)
  {
    v188 = OUTLINED_FUNCTION_37_9();
    v189(v188, v78);

    swift_unknownObjectRelease();
    goto LABEL_107;
  }

  v175 = v174;
  [v174 setRequestReceived_];
  sub_1B1AABABC();
  v177 = v176;
  OUTLINED_FUNCTION_51_5(v176, sel_setEventMetadata_);

  v178 = [v175 eventMetadata];
  if (v178)
  {
    v179 = v178;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    v180 = v143;
    v181 = v86;
    v182 = v240;
    (v249[2])(v240, v244, v78);
    v183 = v182;
    v86 = v181;
    v143 = v180;
    v184 = sub_1B1AABA20(v183);
    [v179 setTtsId_];
  }

  v185 = [v175 eventMetadata];
  if (v185)
  {
    v186 = v185;
    if (*(v248 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {

      v187 = sub_1B1C2CB28();
    }

    else
    {
      v187 = 0;
    }

    [v186 setClientId_];

    v78 = v250;
  }

  sub_1B1AABE04(v175);
  v190 = &selRef_array;
  if (v138)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_34_11();
    swift_unknownObjectRetain();
    v191 = OUTLINED_FUNCTION_24_7();
    v192 = SynthesizingRequestProtocol.privacySensitive.getter(v191);
    swift_unknownObjectRelease();
    if ((v192 & 1) == 0)
    {
      v241 = v86;
      swift_getObjectType();
      OUTLINED_FUNCTION_34_11();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_24_7();
      v193 = SynthesizingRequestProtocol.text.getter();
      v195 = v194;
      swift_unknownObjectRelease();
      v196 = [objc_allocWithZone(MEMORY[0x1E69CF7A8]) init];
      v197 = v196;
      if (v196)
      {
        v198 = v196;
        v199 = [v143 linkId];
        [v198 setLinkId_];

        sub_1B1AD55EC(v193, v195, v198, &selRef_setTextToSynthesize_);
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        v200 = v240;
        (v249[2])(v240, v248 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v250);
        v201 = v198;
        v202 = v200;
        v190 = &selRef_array;
        v203 = sub_1B1AABA20(v202);
        OUTLINED_FUNCTION_65_4(v203, sel_setContextId_);
      }

      else
      {
      }

      v204 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v190[99]];
      if (v204)
      {
        v205 = v204;
        v247 = v197;
        [v204 setRequestReceivedTier1_];
        v206 = v248;
        sub_1B1AABABC();
        v208 = v207;
        OUTLINED_FUNCTION_65_4(v207, sel_setEventMetadata_);

        v209 = [v205 eventMetadata];
        if (v209)
        {
          v210 = v209;
          sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
          v211 = v240;
          (v249[2])(v240, v244, v250);
          v212 = sub_1B1AABA20(v211);
          [v210 setTtsId_];
        }

        v213 = [v205 eventMetadata];
        if (v213)
        {
          v214 = v213;
          if (*(v206 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
          {

            v215 = sub_1B1C2CB28();
          }

          else
          {
            v215 = 0;
          }

          OUTLINED_FUNCTION_70_3(v213, sel_setClientId_);
        }

        sub_1B1AABE04(v205);

        v78 = v250;
        v86 = v241;
        goto LABEL_98;
      }

      (v249[1])(v244, v250);
      swift_unknownObjectRelease();

LABEL_107:
      OUTLINED_FUNCTION_26_1();
      return;
    }
  }

LABEL_98:
  v216 = v248;
  if ((*(v248 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) & 1) != 0 || (v217 = *(v248 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger)) == 0 || (v218 = [v217 captureSnapshot]) == 0)
  {
    v224 = OUTLINED_FUNCTION_37_9();
    v225(v224, v78);

    swift_unknownObjectRelease();
LABEL_106:
    v226 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
    v227 = v235;
    OUTLINED_FUNCTION_66_0(v235 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, v258);
    *(v227 + v226) = 1;
    goto LABEL_107;
  }

  v219 = v218;
  v220 = [objc_opt_self() context];
  if (v220)
  {
    v221 = v220;
    v222 = v232;
    sub_1B1AADD60(&v86[v216], v232);
    v223 = v250;
    OUTLINED_FUNCTION_48_0(v222, 1, v250);
    if (v55)
    {
      v228 = 0;
    }

    else
    {
      v228 = sub_1B1C2C448();
      (v249[1])(v222, v223);
    }

    [v219 logWithEventContext:v221 ttsIdentifier:v228];

    swift_unknownObjectRelease();
    v229 = OUTLINED_FUNCTION_37_9();
    v230(v229, v223);
    goto LABEL_106;
  }

  __break(1u);
}

void sub_1B1BFE21C()
{
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) == 1)
  {
    sub_1B1BFE64C();
  }

  else
  {
    sub_1B1BFE238();
  }
}

void sub_1B1BFE238()
{
  OUTLINED_FUNCTION_25();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_42_8();
  v12 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v45);
  sub_1B1AADD60(v0 + v12, v0);
  OUTLINED_FUNCTION_48_0(v0, 1, v7);
  if (v13)
  {
    sub_1B1AABFB0(v0);
LABEL_22:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v14 = OUTLINED_FUNCTION_46_7();
  v15(v14);
  v16 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7B0]));
  v17 = v16;
  if (v16)
  {
    [v16 setExists_];
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69CF790]) (v3 + 2936)];
  [v18 setCancelled_];
  if (v18)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v9 + 16))(v2, v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v7);
    v19 = v18;
    v20 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_67_4(v20, sel_setContextId_);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69CF780]) (v3 + 2936)];
  if (!v21)
  {
    v33 = OUTLINED_FUNCTION_5_31();
    v34(v33);

    goto LABEL_22;
  }

  v22 = v21;
  [v21 setSpeechContext_];
  sub_1B1AABABC();
  v24 = v23;
  OUTLINED_FUNCTION_67_4(v23, sel_setEventMetadata_);

  OUTLINED_FUNCTION_55_4();
  v26 = [v22 v25];
  if (v26)
  {
    v27 = v26;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_20_14();
    v28(v2, v1, v7);
    v29 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_35_11(v29, sel_setTtsId_);

    v24 = &off_1E7AF4000;
  }

  v30 = [v22 v24[441]];
  if (v30)
  {
    v31 = v30;
    if (*(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {

      v32 = sub_1B1C2CB28();
    }

    else
    {
      v32 = 0;
    }

    [v31 setClientId_];
  }

  sub_1B1AABE04(v22);
  v35 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger);
  if (!v35 || (v36 = [v35 captureSnapshot]) == 0)
  {
    v43 = OUTLINED_FUNCTION_5_31();
    v44(v43);

    goto LABEL_22;
  }

  v37 = v36;
  v38 = [objc_opt_self() context];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1B1C2C448();
    [v37 logWithEventContext:v39 ttsIdentifier:v40];

    v41 = OUTLINED_FUNCTION_5_31();
    v42(v41);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_1B1BFE64C()
{
  OUTLINED_FUNCTION_25();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_28();
  v7 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v33);
  sub_1B1AADD60(v0 + v7, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v8)
  {
    sub_1B1AABFB0(v0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_21_12();
    v10(v9);
    v11 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7D0]));
    v12 = v11;
    if (v11)
    {
      [v11 setExists_];
    }

    v13 = [objc_allocWithZone(MEMORY[0x1E69CF798]) v2 + 2936];
    [v13 setCancelled_];
    if (v13)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v14(v1);
      v15 = v13;
      v16 = sub_1B1AABA20(v1);
      OUTLINED_FUNCTION_36_10(v16, sel_setContextId_);
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v2 + 2936];
    if (v17)
    {
      v18 = v17;
      [v17 setSynthesisContext_];
      sub_1B1AABABC();
      v20 = v19;
      OUTLINED_FUNCTION_36_10(v19, sel_setEventMetadata_);

      OUTLINED_FUNCTION_55_4();
      v22 = [v18 v21];
      if (v22)
      {
        v2 = v22;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        OUTLINED_FUNCTION_20_14();
        OUTLINED_FUNCTION_37_1();
        v23();
        v24 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_35_11(v24, sel_setTtsId_);

        v20 = &off_1E7AF4000;
      }

      v25 = [v18 v20[441]];
      if (v25)
      {
        v26 = v25;
        OUTLINED_FUNCTION_54_4();
        if (v2)
        {

          v28 = sub_1B1C2CB28();
        }

        else
        {
          v28 = 0;
        }

        OUTLINED_FUNCTION_69_4(v27, sel_setClientId_);
      }

      OUTLINED_FUNCTION_68_4();

      v31 = OUTLINED_FUNCTION_17_20();
      v32(v31);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_17_20();
      v30(v29);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BFE998(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) == 1)
  {
    sub_1B1BFEE54();
  }

  else
  {
    sub_1B1BFE9F4();
  }
}

void sub_1B1BFE9F4()
{
  OUTLINED_FUNCTION_25();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_42_8();
  v14 = *v6;
  v15 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v48);
  sub_1B1AADD60(v0 + v15, v0);
  OUTLINED_FUNCTION_48_0(v0, 1, v9);
  if (v16)
  {
    sub_1B1AABFB0(v0);
LABEL_22:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v17 = OUTLINED_FUNCTION_46_7();
  v18(v17);
  v19 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7C0]));
  v20 = v19;
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B1C37D90;
    *(v21 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1B1AAB8A8(v21, v20);
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69CF790]) (v3 + 2936)];
  [v22 setFailed_];
  if (v22)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v11 + 16))(v2, v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v9);
    v23 = v22;
    v24 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_36_10(v24, sel_setContextId_);
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E69CF780]) (v3 + 2936)];
  if (!v25)
  {
    v36 = OUTLINED_FUNCTION_5_31();
    v37(v36);

    goto LABEL_22;
  }

  v26 = v25;
  [v25 setSpeechContext_];
  sub_1B1AABABC();
  v28 = v27;
  OUTLINED_FUNCTION_36_10(v27, sel_setEventMetadata_);

  v29 = OUTLINED_FUNCTION_50_6();
  if (v29)
  {
    v30 = v29;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_20_14();
    v31(v2, v1, v9);
    v32 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_35_11(v32, sel_setTtsId_);
  }

  v33 = OUTLINED_FUNCTION_50_6();
  if (v33)
  {
    v34 = v33;
    if (*(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {

      v35 = sub_1B1C2CB28();
    }

    else
    {
      v35 = 0;
    }

    OUTLINED_FUNCTION_69_4(v33, sel_setClientId_);
  }

  sub_1B1AABE04(v26);
  v38 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger);
  if (!v38 || (v39 = [v38 captureSnapshot]) == 0)
  {
    v46 = OUTLINED_FUNCTION_5_31();
    v47(v46);

    goto LABEL_22;
  }

  v40 = v39;
  v41 = [objc_opt_self() context];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1B1C2C448();
    [v40 logWithEventContext:v42 ttsIdentifier:v43];

    v44 = OUTLINED_FUNCTION_5_31();
    v45(v44);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_1B1BFEE54()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_28();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_41_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_28();
  v9 = *v4;
  v10 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, &v37);
  sub_1B1AADD60(v0 + v10, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v11)
  {
    sub_1B1AABFB0(v0);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_21_12();
    v13(v12);
    v14 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7E0]));
    v15 = v14;
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1B1C37D90;
      *(v16 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1B1AAB8A8(v16, v15);
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69CF798]) v2 + 2936];
    [v17 setFailed_];
    if (v17)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v18(v1);
      v19 = v17;
      v20 = sub_1B1AABA20(v1);
      OUTLINED_FUNCTION_36_10(v20, sel_setContextId_);
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v2 + 2936];
    if (v21)
    {
      v22 = v21;
      [v21 setSynthesisContext_];
      sub_1B1AABABC();
      v24 = v23;
      OUTLINED_FUNCTION_36_10(v23, sel_setEventMetadata_);

      OUTLINED_FUNCTION_55_4();
      v26 = [v22 v25];
      if (v26)
      {
        v2 = v26;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        OUTLINED_FUNCTION_20_14();
        OUTLINED_FUNCTION_37_1();
        v27();
        v28 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_35_11(v28, sel_setTtsId_);

        v24 = &off_1E7AF4000;
      }

      v29 = [v22 v24[441]];
      if (v29)
      {
        v30 = v29;
        OUTLINED_FUNCTION_54_4();
        if (v2)
        {

          v32 = sub_1B1C2CB28();
        }

        else
        {
          v32 = 0;
        }

        OUTLINED_FUNCTION_70_3(v31, sel_setClientId_);
      }

      OUTLINED_FUNCTION_68_4();

      v35 = OUTLINED_FUNCTION_17_20();
      v36(v35);
    }

    else
    {
      v33 = OUTLINED_FUNCTION_17_20();
      v34(v33);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BFF1FC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = a1;
  v2 = a1;
}

uint64_t sub_1B1BFF244()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  result = OUTLINED_FUNCTION_66_0(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, v4);
  *(v1 + v2) = 0;
  return result;
}

uint64_t sub_1B1BFF290()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  result = OUTLINED_FUNCTION_66_0(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount, v7);
  v4 = *(v1 + v2);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v6;
  }

  return result;
}

uint64_t sub_1B1BFF304(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(v3 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics) + *a3);
  OUTLINED_FUNCTION_66_0(v6, v8);
  *v6 = a1;
  v6[1] = a2;
}

double sub_1B1BFF370(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SiriAnalyticsHandler(0);
  v4 = swift_allocObject();
  sub_1B1BFF828(a1, v4);
  v6[0] = 3;
  v7 = 0;
  v8 = 0;
  sub_1B1BFE998(v6);

  return result;
}

void sub_1B1BFF408(uint64_t a1)
{
  sub_1B1AF6018(319);
  if (v1 <= 0x3F)
  {
    sub_1B1C2C478();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B1BFF828(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = sub_1B1C2C478();
  v52 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v46 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v50 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, 1, 1, v12);
  sub_1B1C2C468();
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId, 1, 1, v12);
  v22 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics;
  *(a2 + v22) = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = 0;
  v23 = (a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo);
  *v23 = 0u;
  v23[1] = 0u;
  *(v23 + 28) = 0u;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues) = v21;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 0;
  v24 = (a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
  *v24 = 0;
  v24[1] = 0;
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId, 1, 1, v12);
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId, 1, 1, v12);
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp) = 0;
  *(a2 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  v25 = objc_opt_self();
  v26 = [v25 sharedAnalytics];
  v27 = [v26 defaultMessageStream];

  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) = v27;
  v28 = [objc_opt_self() loggerForCurrentProcess];
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger) = v28;
  v29 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    v30 = v11;
  }

  else
  {
    v47 = v7;
    v31 = *(v52 + 32);
    v31(v20, v11, v12);
    v32 = sub_1B1C2C448();
    v33 = [v25 derivedIdentifierForComponentName:13 fromSourceIdentifier:v32];

    if (!v33)
    {
      (*(v52 + 8))(v20, v12);

      return a2;
    }

    v46 = v20;
    v34 = v52;
    v35 = v49;
    sub_1B1C2C458();

    v36 = v50;
    v37 = (v31)(v50, v35, v12);
    v38 = v51;
    (*((*v29 & *a1) + 0x120))(v37);

    if (__swift_getEnumTagSinglePayload(v38, 1, v12) != 1)
    {
      v40 = v48;
      v31(v48, v38, v12);
      v41 = v47;
      v31(v47, v36, v12);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v12);
      v42 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
      swift_beginAccess();
      sub_1B1A91B74(v41, a2 + v42);
      swift_endAccess();
      v31(v41, v46, v12);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v12);
      v43 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId;
      swift_beginAccess();
      sub_1B1A91B74(v41, a2 + v43);
      swift_endAccess();
      v31(v41, v40, v12);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v12);
      v44 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId;
      swift_beginAccess();
      sub_1B1A91B74(v41, a2 + v44);
      swift_endAccess();
      return a2;
    }

    v39 = *(v34 + 8);
    v39(v36, v12);
    v39(v46, v12);
    v30 = v38;
  }

  sub_1B1AABFB0(v30);
  return a2;
}

id sub_1B1BFFEC8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_72();
  v1 = sub_1B1C2CB28();

  v2 = [v0 initWithString_];

  return v2;
}

unint64_t sub_1B1BFFF38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1B1A9EEE0(&v22, v24);
    sub_1B1A9EEE0(v24, v25);
    sub_1B1A9EEE0(v25, &v23);
    result = sub_1B1A8EB10();
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_1B1A9EEE0(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1B1A9EEE0(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B1C00184(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7642F8, &qword_1B1C41650);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 48) + v11);
    v22 = *(*(a1 + 56) + v11);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_1B1A9EEE0((v23 + 8), v21);
    sub_1B1A9EEE0(v21, v23);
    sub_1B1C2D888();
    MEMORY[0x1B2738D60](v12);
    result = sub_1B1C2D8E8();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v16) = v12;
    result = sub_1B1A9EEE0(v23, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1B1C003EC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B1AC067C(v4, 1, sub_1B1B04740);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_27_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C10, &qword_1B1C35D88);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t static TTSAsset.listAssets(ofTypes:matching:)(int64_t a1, uint64_t a2)
{
  sub_1B1C0054C(a2);
  v4 = sub_1B1C00184(v3);

  v5 = static TTSAsset.listAssets(ofTypes:matching:)(a1, v4);

  return v5;
}

void sub_1B1C0054C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
        v11 = *(*(a1 + 48) + v10);
        v12 = *(*(a1 + 56) + v10);
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B1B04AB8();
          v8 = v15;
        }

        v13 = *(v8 + 16);
        if (v13 >= *(v8 + 24) >> 1)
        {
          sub_1B1B04AB8();
          v8 = v16;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v12;
      }

      while (v5);
    }
  }

  sub_1B1BDE5D0(v8);
}

uint64_t sub_1B1C00910()
{
  v11 = MEMORY[0x1E69E7CC0];
  if (qword_1EB7614A0 != -1)
  {
    swift_once();
  }

  v0 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7CC0];
  if ((byte_1ED9AA5A8 & 1) == 0)
  {
    sub_1B1ABF93C(&unk_1F28BA568);
    v1 = v11;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1B1AC9FA8();
    v3 = v0;
    v4 = v1 + 40;
    do
    {
      v5 = sub_1B1C2CBE8();
      v7 = v6;
      v8 = *(v3 + 16);
      if (v8 >= *(v3 + 24) >> 1)
      {
        sub_1B1AC9FA8();
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  return sub_1B1ACB6B8(v3);
}

uint64_t sub_1B1C00A6C()
{
  type metadata accessor for TTSAssetVoiceGender(0);
  sub_1B1C00E64();
  result = sub_1B1C2CAB8();
  qword_1ED9AA460 = result;
  return result;
}

unint64_t sub_1B1C00ABC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1C00ADC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = sub_1B1A95484(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_1B1A9547C();
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1B1A9E870(result, 1);
  v8 = OUTLINED_FUNCTION_72();

  return sub_1B1C00BBC(v8, v9, 0);
}

uint64_t sub_1B1C00BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1B1A8E474(0, &qword_1EB764320, 0x1E69C7AC8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1B1C2D468();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1B1AA8B80(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = sub_1B1C2D468();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1C00CF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1C2D468();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1A9547C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TTSAssetUAFAsset(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B1B9A440(&qword_1EB764310, &qword_1EB764308, &qword_1B1C41658);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764308, &qword_1B1C41658);
          v9 = sub_1B1B37C88(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1C00E64()
{
  result = qword_1ED9A4C88;
  if (!qword_1ED9A4C88)
  {
    type metadata accessor for TTSAssetVoiceGender(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A4C88);
  }

  return result;
}

void SiriTTS::TextToPhoneme::~TextToPhoneme(SiriTTS::TextToPhoneme *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7AF2370, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

id TTSGetServiceLog()
{
  if (TTSGetServiceLog_onceToken != -1)
  {
    dispatch_once(&TTSGetServiceLog_onceToken, &__block_literal_global);
  }

  v1 = TTSGetServiceLog_log;

  return v1;
}

uint64_t __TTSGetServiceLog_block_invoke()
{
  TTSGetServiceLog_log = os_log_create("com.apple.siri.tts", "service");

  return MEMORY[0x1EEE66BB8]();
}

void __assign_helper_atomic_property_(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B1C01AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    if (v11)
    {
      v13 = MEMORY[0x1E696ABC0];
      a10 = *MEMORY[0x1E696A588];
      v14 = MEMORY[0x1E696AEC0];
      (*(*v12 + 16))(v12);
      v15 = [v14 stringWithFormat:@"TTSSynthesizer::preheat error: %s"];
      a11 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      *v11 = [v13 errorWithDomain:@"SiriTTSSynthesisEngine" code:1 userInfo:v16];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B1C01AA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B1C02810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_objecta, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  std::optional<TTSSynthesizer::DynamicPrompts>::~optional(&a33);
  a33 = &a46;
  std::vector<std::shared_ptr<Observer>>::__destroy_vector::operator()[abi:ne200100](&a33);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<Observer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::optional<TTSSynthesizer::DynamicPrompts>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1B1C03BF4(_Unwind_Exception *a1)
{
  v4 = v2;

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void sub_1B1C03F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C041E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C043C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SiriTTSSynthesisEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B1C04DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C04E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C0D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2, const char *a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 7) = *(this + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, 4, *(this + 9));
  v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, a2);
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, v5);
  *(this + 71) = 1;
  return result;
}

double apple::aiml::flatbuffers2::FlatBufferBuilder::Release(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2)
{
  if ((*(a2 + 71) & 1) == 0)
  {
    __assert_rtn("Finished", "flatbuffers.h", 1319, "finished");
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *this = *a2;
  *(this + 8) = v3;
  *(this + 2) = v4;
  *(this + 3) = v2;
  *(this + 4) = v5;
  *(this + 5) = (v2 + v4 - v5);
  if (v3 == 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*(v2 + 8));
    MEMORY[0x1B27394E0](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x1B27394C0](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*a1);
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x1B27394C0);
  }
}

void apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(apple::aiml::flatbuffers2::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x1B27394C0](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return this;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_1F28B6B88;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_1F28B6B88;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return (v6 + 4);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 1uLL);
    v6 = (*(v5 + 6) - 1);
    *(v5 + 6) = v6;
    *v6 = v3;
    v7 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  v4 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v5);
  v6 = (*(this + 6) - v5);
  *(this + 6) = v6;
  bzero(v6, v5);
  v7 = v4 - a2;
  if ((v4 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v8 = *(this + 6);
  if (!v8)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v8[1] = v7;
  *v8 = *(this + 34);
  v9 = *(this + 7);
  if (!v9)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v10 = *(this + 16);
  v11 = v9 - 8 * v10;
  if (v10)
  {
    v12 = (v9 - 8 * v10);
    do
    {
      v13 = *(v12 + 2);
      if (*(v8 + v13))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v14 = *v12;
      v12 += 2;
      *(v8 + v13) = v4 - v14;
    }

    while (v12 < v9);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v16 = *(this + 4);
  v15 = *(this + 5);
  v17 = v16 - v8 + v15;
  if (*(this + 81))
  {
    if (!v15)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v15 < v11)
    {
      v18 = *v8;
      v19 = v15 + v16;
      v20 = *(this + 5);
      while (1)
      {
        v21 = *v20;
        if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v8, v18))
        {
          break;
        }

        if (++v20 >= v11)
        {
          v17 = v16 - v8 + v15;
          goto LABEL_21;
        }
      }

      v8 = (v8 + (v16 - v8 + v15 - v4));
      *(this + 6) = v8;
      v17 = v21;
    }
  }

LABEL_21:
  if (v17 == v16 + v15 - v8)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v17;
    *(this + 7) = v22 + 1;
    v16 = *(this + 4);
    v15 = *(this + 5);
  }

  *(v15 + v16 - v4) = v17 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

BOOL siri::speech::schema_fb::TTSRequestFeatureFlags::Verify(siri::speech::schema_fb::TTSRequestFeatureFlags *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

void sub_1B1C0EA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL);
  v6 = (*(this + 6) - 1);
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a3);
    v7 = (*(this + 6) - a3);
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

BOOL siri::speech::schema_fb::TextToSpeechVoice::Verify(siri::speech::schema_fb::TextToSpeechVoice *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
                          {
                            v22 = this + v21 + *(this + v21);
                          }

                          else
                          {
                            v22 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v22);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Table::VerifyOffset(apple::aiml::flatbuffers2::Table *this, const apple::aiml::flatbuffers2::Verifier *a2, unsigned int a3)
{
  v3 = (this - *this);
  if (*v3 <= a3)
  {
    return 1;
  }

  v4 = *(v3 + a3);
  if (!v4)
  {
    return 1;
  }

  v5 = this + v4 - *a2;
  if (v5 & 3) != 0 && (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  v7 = *(a2 + 1);
  if (v7 >= 5 && v7 - 4 >= v5)
  {
    v8 = *(*a2 + v5);
    if (v8 >= 1)
    {
      return v7 - 1 >= v5 + v8;
    }

    return 0;
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

void sub_1B1C0F860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechResource::Verify(siri::speech::schema_fb::TextToSpeechResource *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C0FEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechMeta::Verify(siri::speech::schema_fb::TextToSpeechMeta *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoice::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResource::Verify((this + v8 + *(this + v8)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C105E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestMeta::Verify(siri::speech::schema_fb::TextToSpeechRequestMeta *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 >= 7 && v5[3])
        {
          v8 = this + v5[3] + *(this + v5[3]);
        }

        else
        {
          v8 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v8);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_1B1C10BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C10E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(a2);
    }

    std::vector<short>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<short>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a2);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1B1C11464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestContext::Verify(siri::speech::schema_fb::TextToSpeechRequestContext *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TextToSpeechResource::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C12020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify(siri::speech::schema_fb::TextToSpeechRequestExperiment *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, float a3)
{
  v5 = this;
  if (a3 != 0.0 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 4uLL);
    v6 = *(v5 + 6);
    *(v6 - 4) = a3;
    v6 -= 4;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2) && (v6 < 0xB || (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2) && (v6 < 0xD || (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2) && (v6 < 0xF || (!v5[7] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v5[7] - *a2) && (v6 < 0x11 || (!v5[8] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v5[8] - *a2) && (v6 < 0x13 || (v14 = v5[9]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2))))))))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_1B1C12E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C130CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 4, v3);
  }

  return result;
}

BOOL siri::speech::schema_fb::TTSWordPhonemes::Verify(siri::speech::schema_fb::TTSWordPhonemes *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a1, &v5[*v5]);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C13A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C13DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TTSPhonemeSequence::Verify(siri::speech::schema_fb::TTSPhonemeSequence *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TTSWordPhonemes::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C14868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B1C14FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C152EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, const void *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 1uLL);
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, a3);
    v6 = (*(a1 + 6) - a3);
    *(a1 + 6) = v6;
    memcpy(v6, a2, a3);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

BOOL siri::speech::schema_fb::TTSPrompts::Verify(siri::speech::schema_fb::TTSPrompts *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *(this - v8 + 6);
          if (!v9)
          {
LABEL_18:
            v10 = 0;
          }

          else
          {
            v10 = (this + v9 + *(this + v9));
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C15DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C16360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C16828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C173F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, void *a14, void *a15, void *a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechFeature::Verify(siri::speech::schema_fb::TextToSpeechFeature *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) >= 5u)
      {
        if (!*(this - v5 + 4))
        {
          goto LABEL_54;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) >= 5u)
        {
LABEL_54:
          v6 = *(this - v5 + 4);
          if (v6)
          {
            v7 = (this + v6 + *(this + v6));
            if (*v7)
            {
              v8 = 0;
              v9 = v7 + 1;
              while (siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((v9 + *v9), a2))
              {
                ++v8;
                ++v9;
                if (v8 >= *v7)
                {
                  goto LABEL_12;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_12:
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (!result)
      {
        return result;
      }

      v10 = *this;
      if (*(this - v10) >= 7u)
      {
        if (!*(this - v10 + 6))
        {
          goto LABEL_55;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v10 = *this;
        if (*(this - v10) >= 7u)
        {
LABEL_55:
          v11 = *(this - v10 + 6);
          if (v11)
          {
            v12 = (this + v11 + *(this + v11));
            if (*v12)
            {
              v13 = 0;
              v14 = v12 + 1;
              while (siri::speech::schema_fb::TTSPhonemeSequence::Verify((v14 + *v14), a2))
              {
                ++v13;
                ++v14;
                if (v13 >= *v12)
                {
                  goto LABEL_22;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_22:
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
      if (!result)
      {
        return result;
      }

      v15 = *this;
      if (*(this - v15) < 9u)
      {
        goto LABEL_29;
      }

      if (*(this - v15 + 8))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v15 + 8) + *(this + *(this - v15 + 8)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v15 = *this;
        if (*(this - v15) < 9u)
        {
          goto LABEL_29;
        }
      }

      v16 = *(this - v15 + 8);
      if (!v16)
      {
LABEL_29:
        v17 = 0;
      }

      else
      {
        v17 = (this + v16 + *(this + v16));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(a2, v17);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v18 = *this;
          if (*(this - v18) < 0xBu)
          {
            goto LABEL_40;
          }

          if (*(this - v18 + 10))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 10) + *(this + *(this - v18 + 10)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v18 = *this;
            if (*(this - v18) < 0xBu)
            {
              goto LABEL_40;
            }
          }

          v19 = *(this - v18 + 10);
          if (!v19)
          {
LABEL_40:
            v20 = 0;
          }

          else
          {
            v20 = (this + v19 + *(this + v19));
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a2, v20);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
            if (result)
            {
              v21 = *this;
              if (*(this - v21) < 0xDu)
              {
                goto LABEL_49;
              }

              if (*(this - v21 + 12))
              {
                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 12) + *(this + *(this - v21 + 12)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v21 = *this;
                if (*(this - v21) < 0xDu)
                {
                  goto LABEL_49;
                }
              }

              v22 = *(this - v21 + 12);
              if (!v22)
              {
LABEL_49:
                v23 = 0;
              }

              else
              {
                v23 = (this + v22 + *(this + v22));
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(a2, v23);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TTSPrompts::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TTSWordPhonemes::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C19194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C19628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C197E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1C19C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C19F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechUserProfile::Verify(siri::speech::schema_fb::TextToSpeechUserProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1A7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestDevConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = v6 >= 7 && v5[3] ? this + v5[3] + *(this + v5[3]) : 0;
        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v8);
        if (result)
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v9 = (this - *this);
            if (*v9 >= 9u && (v10 = v9[4]) != 0)
            {
              v11 = this + v10 + *(this + v10);
            }

            else
            {
              v11 = 0;
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11);
            if (result)
            {
              v12 = (this - *this);
              if (*v12 < 0xBu || (v13 = v12[5]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v13 - *a2)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C1B164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result && (v6 < 7 || !v5[3] || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v5[3] + *(this + v5[3]), 1uLL, 0))))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify(siri::speech::schema_fb::TextToSpeechUserVoiceProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2) && (v6 < 0xB || (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2) && (v6 < 0xD || (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2) && (v6 < 0xF || (v12 = v5[7]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2))))))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_1B1C1BDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v9 = (this - *this);
              if (*v9 >= 9u && (v10 = v9[4]) != 0)
              {
                v11 = this + v10 + *(this + v10);
              }

              else
              {
                v11 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C1CC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C1E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::AudioDescription::Verify(siri::speech::schema_fb::AudioDescription *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2) && (v6 < 7 || (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2) && (v6 < 9 || (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2) && (v6 < 0xB || (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2) && (v6 < 0xD || (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2) && (v6 < 0xF || (!v5[7] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v5[7] - *a2) && (v6 < 0x11 || (!v5[8] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v5[8] - *a2) && (v6 < 0x13 || (!v5[9] || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v5[9] - *a2) && (v6 < 0x15 || (v15 = v5[10]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)))))))))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

void sub_1B1C1EEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::WordTimingInfo::Verify(siri::speech::schema_fb::WordTimingInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2) && (v9 < 9 || (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2) && (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (v13 = v8[6]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v13 - *a2))))
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_1B1C1F654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C1FE0C(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C20970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(siri::speech::schema_fb::StartTextToSpeechStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
                          {
                            v22 = this + v21 + *(this + v21);
                          }

                          else
                          {
                            v22 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v22);
                          if (result)
                          {
                            v23 = (this - *this);
                            v24 = *v23;
                            if (v24 < 0x11 || (!v23[8] || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + v23[8] - *a2) && (v24 < 0x13 || !v23[9] || (result = 0, v26 = *(a2 + 1), v26 >= 2) && v26 - 1 >= this + v23[9] - *a2))
                            {
                              v27 = this - *this;
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v28 = v24 >= 0x15 && *(v27 + 10) ? this + *(v27 + 10) + *(this + *(v27 + 10)) : 0;
                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
                                if (result)
                                {
                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                  if (result)
                                  {
                                    v29 = *this;
                                    if (*(this - v29) < 0x17u)
                                    {
                                      goto LABEL_59;
                                    }

                                    if (*(this - v29 + 22))
                                    {
                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v29 + 22) + *(this + *(this - v29 + 22)), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v29 = *this;
                                      if (*(this - v29) < 0x17u)
                                      {
                                        goto LABEL_59;
                                      }
                                    }

                                    v30 = *(this - v29 + 22);
                                    if (!v30)
                                    {
LABEL_59:
                                      v31 = 0;
                                    }

                                    else
                                    {
                                      v31 = (this + v30 + *(this + v30));
                                    }

                                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a2, v31);
                                    if (result)
                                    {
                                      v32 = (this - *this);
                                      v33 = *v32;
                                      if (v33 < 0x19 || !v32[12] || (result = 0, v34 = *(a2 + 1), v34 >= 5) && v34 - 4 >= this + v32[12] - *a2)
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                        if (result && (v33 < 0x1B || !v32[13] || (result = siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((this + v32[13] + *(this + v32[13])), a2))))
                                        {
                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Cu);
                                          if (result)
                                          {
                                            v35 = (this - *this);
                                            if (*v35 < 0x1Du || (v36 = v35[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestContext::Verify((this + v36 + *(this + v36)), a2)))
                                            {
                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Eu);
                                              if (result)
                                              {
                                                v37 = (this - *this);
                                                if (*v37 < 0x1Fu || (v38 = v37[15]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((this + v38 + *(this + v38)), a2)))
                                                {
                                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x20u);
                                                  if (result)
                                                  {
                                                    v39 = (this - *this);
                                                    if (*v39 < 0x21u || (v40 = v39[16]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v40 + *(this + v40)), a2)))
                                                    {
                                                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                                      if (result)
                                                      {
                                                        v41 = (this - *this);
                                                        if (*v41 < 0x23u || (v42 = v41[17]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v42 + *(this + v42)), a2)))
                                                        {
                                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x24u);
                                                          if (result)
                                                          {
                                                            v43 = (this - *this);
                                                            if (*v43 < 0x25u || (v44 = v43[18]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserProfile::Verify((this + v44 + *(this + v44)), a2)))
                                                            {
                                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x26u);
                                                              if (result)
                                                              {
                                                                v45 = (this - *this);
                                                                if (*v45 < 0x27u || (v46 = v45[19]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((this + v46 + *(this + v46)), a2)))
                                                                {
                                                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x28u);
                                                                  if (result)
                                                                  {
                                                                    v47 = (this - *this);
                                                                    if (*v47 < 0x29u || (v48 = v47[20]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((this + v48 + *(this + v48)), a2)))
                                                                    {
                                                                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x2Au);
                                                                      if (result)
                                                                      {
                                                                        v49 = (this - *this);
                                                                        if (*v49 < 0x2Bu || (v50 = v49[21]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((this + v50 + *(this + v50)), a2)))
                                                                        {
                                                                          --*(a2 + 4);
                                                                          return 1;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C21DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::BeginTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      v19 = *v18;
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v18[8] + *(this + v18[8])), a2))))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v21 = (this - *this);
                            if (*v21 < 0x13u || (v22 = v21[9]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v22 + *(this + v22)), a2)))
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v23 = *this;
                                v24 = *(this - v23);
                                if (v24 < 0x15)
                                {
                                  goto LABEL_52;
                                }

                                if (*(this - v23 + 20))
                                {
                                  result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + *(this - v23 + 20) + *(this + *(this - v23 + 20))), a2);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v25 = *this;
                                  v26 = -v25;
                                  v24 = *(this - v25);
                                }

                                else
                                {
                                  v26 = -v23;
                                }

                                if (v24 < 0x17 || (v27 = *(this + v26 + 22), !*(this + v26 + 22)) || (result = 0, v28 = *(a2 + 1), v28 >= 5) && v28 - 4 >= this + v27 - *a2)
                                {
LABEL_52:
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C22C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C23234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);

  if (v30)
  {
    operator delete(v30);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::PartialTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      v19 = *v18;
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v18[8] + *(this + v18[8]), 1uLL, 0))))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v21 = *this;
                            if (*(this - v21) < 0x13u)
                            {
                              goto LABEL_45;
                            }

                            if (*(this - v21 + 18))
                            {
                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 18) + *(this + *(this - v21 + 18)), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v21 = *this;
                              if (*(this - v21) < 0x13u)
                              {
                                goto LABEL_45;
                              }
                            }

                            v22 = *(this - v21 + 18);
                            if (!v22)
                            {
LABEL_45:
                              v23 = 0;
                            }

                            else
                            {
                              v23 = (this + v22 + *(this + v22));
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v23);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v24 = (this - *this);
                                if (*v24 < 0x15u || (v25 = v24[10]) == 0 || (result = siri::speech::schema_fb::TextToSpeechFeature::Verify((this + v25 + *(this + v25)), a2)))
                                {
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::WordTimingInfo::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C241B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::FinalTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      if (*v18 < 0xFu || (v19 = v18[7]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)
                      {
                        --*(a2 + 4);
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C24BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 6, v3);
  }

  return result;
}

void sub_1B1C25338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x1B27394E0](v13, 0x1030C40E9F947FBLL, a3, a4, a5, a6, a7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C273B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__667(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void SiriTTSHTMLSAXParserHandleCharacters(void *a1, uint64_t a2, int a3)
{
  v9 = a1;
  v5 = [v9 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
    v8 = [v9 delegate];
    [v8 parser:v9 foundCharacters:v7];
  }
}

void SiriTTSHTMLSAXParserHandleElementEnd(void *a1, uint64_t a2)
{
  v7 = a1;
  v3 = [v7 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    v6 = [v7 delegate];
    [v6 parser:v7 didEndElement:v5];
  }
}

void SiriTTSHTMLSAXParserHandleElementStart(void *a1, uint64_t a2, void *a3)
{
  v14 = a1;
  v5 = [v14 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    if (a3 && *a3)
    {
      v9 = a3 + 2;
      do
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:*(v9 - 1) encoding:4];
        [v8 setObject:v11 forKeyedSubscript:v10];

        v12 = *v9;
        v9 += 2;
      }

      while (v12);
    }

    v13 = [v14 delegate];
    [v13 parser:v14 didStartElement:v7 attributes:v8];
  }
}

Class __getTTSAXResourceManagerClass_block_invoke(uint64_t a1)
{
  TextToSpeechLibrary();
  result = objc_getClass("TTSAXResourceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTTSAXResourceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "TTSAXResourceManager");
    return TextToSpeechLibrary();
  }

  return result;
}

uint64_t TextToSpeechLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!TextToSpeechLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __TextToSpeechLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7AF39A8;
    v5 = 0;
    TextToSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = TextToSpeechLibraryCore_frameworkLibrary;
    if (TextToSpeechLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return TextToSpeechLibraryCore_frameworkLibrary;
}

uint64_t __TextToSpeechLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  TextToSpeechLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getTTSSpeechTransformTextWithLanguageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TextToSpeechLibrary();
  result = dlsym(v2, "TTSSpeechTransformTextWithLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTTSSpeechTransformTextWithLanguageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B1C2B79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v36 = -48;
  do
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v33);
    v33 = (v33 - 16);
    v36 += 16;
  }

  while (v36);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100](void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a2);
    }

    std::vector<short>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *this = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2739480](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_1B1C2BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t TTSSynthesizer::set_global_property()
{
  return MEMORY[0x1EEE40B18]();
}

{
  return MEMORY[0x1EEE40B20]();
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}