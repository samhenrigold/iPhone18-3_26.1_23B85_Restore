id sub_23D67C0F8(char *a1)
{
  sub_23D656FE0(a1, a1);
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return [*&a1[v2] stopDetection];
}

uint64_t sub_23D67C19C()
{
}

id AXSDNSControllerImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSDNSControllerImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXSDNSControllerImplementation.pipe(inFileURL:)(uint64_t a1)
{
  v2 = v1;
  v42[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23D6856A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_23D685650() & 1) == 0)
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v12 = sub_23D685860();
    __swift_project_value_buffer(v12, qword_27E2E0868);
    v41 = *(v5 + 16);
    v41(v7, a1, v4);
    v13 = v1;
    v14 = sub_23D685850();
    v15 = sub_23D685A70();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v16 = 136315394;
      v17 = v13;
      v38 = v14;
      v18 = v17;
      v19 = [v17 description];
      v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v37 = v15;
      v21 = v20;
      v40 = a1;
      v23 = v22;

      v24 = sub_23D652534(v21, v23, v42);

      *(v16 + 4) = v24;
      *(v16 + 12) = 2080;
      sub_23D67FFF0(&qword_27E2E0970, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v25 = sub_23D685CF0();
      v27 = v26;
      (*(v5 + 8))(v7, v4);
      v28 = sub_23D652534(v25, v27, v42);
      a1 = v40;

      *(v16 + 14) = v28;
      v29 = v38;
      _os_log_impl(&dword_23D62D000, v38, v37, "[%s]: piped in fileURL: %s is not a valid file URL", v16, 0x16u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v30, -1, -1);
      MEMORY[0x23EEE7580](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    type metadata accessor for AXSDError(0);
    sub_23D67FFF0(&unk_27E2E0960, type metadata accessor for AXSDError, &unk_23D689A1C);
    swift_allocError();
    v32 = v31;
    v41(v31, a1, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0920, &qword_23D689A08);
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    goto LABEL_11;
  }

  sub_23D685690();
  v8 = sub_23D6858E0();

  v42[0] = 0;
  v9 = [v2 pipeInFilePath:v8 error:v42];

  v10 = v42[0];
  if (!v9)
  {
    v34 = v42[0];
    sub_23D685640();

LABEL_11:
    swift_willThrow();
    return v4;
  }

  type metadata accessor for AXSDSoundDetectionType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0978, &qword_23D689A70);
  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType, &unk_23D6892EC);
  v4 = sub_23D6858C0();
  v11 = v10;

  return v4;
}

uint64_t AXSDNSControllerImplementation.pipe(inFilePath:)(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v7 = [v6 description];
  v8 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v10 = v9;

  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v11 = sub_23D685860();
  __swift_project_value_buffer(v11, qword_27E2E0868);

  v12 = sub_23D685850();
  v13 = sub_23D685A70();

  if (os_log_type_enabled(v12, v13))
  {
    v26[4] = v3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315394;
    v16 = sub_23D652534(v8, v10, v26);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_23D652534(a1, a2, v26);
    _os_log_impl(&dword_23D62D000, v12, v13, "[%s]: AUTOMATION: piped in file: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v15, -1, -1);
    MEMORY[0x23EEE7580](v14, -1, -1);
  }

  else
  {
  }

  v17 = sub_23D66212C(MEMORY[0x277D84F90]);
  v18 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections;
  *&v6[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections] = v17;

  v19 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  v20 = *&v6[v19];
  v21 = sub_23D6858E0();
  [v20 pipeInFile_];

  result = *&v6[v18];
  if (result)
  {
    *&v6[v18] = 0;
  }

  else
  {
    type metadata accessor for AXSDError(0);
    sub_23D67FFF0(&unk_27E2E0960, type metadata accessor for AXSDError, &unk_23D689A1C);
    swift_allocError();
    v24 = v23;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0920, &qword_23D689A08);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    swift_willThrow();
    *&v6[v18] = 0;
  }

  return result;
}

id AXSDNSControllerImplementation.trackObservation(_:forDetector:)(void *a1, void *a2)
{
  result = [objc_opt_self() isInternalInstall];
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections);
    if (v6)
    {

      v7 = [a2 soundIdentifier];
      v8 = AXSDSoundDetectionTypeForIdentifier();

      if (*(v6 + 16) && (v9 = sub_23D67EF28(v8), (v10 & 1) != 0))
      {
        v15 = *(*(v6 + 56) + 8 * v9);

        v11 = a1;
        MEMORY[0x23EEE6700]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23D685990();
        }

        sub_23D6859A0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_23D67FA68(v15, v8, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0908, &qword_23D6898E8);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_23D689A60;
        *(v13 + 32) = a1;
        v14 = a1;
        sub_23D67FE5C(v13, v8);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall AXSDNSControllerImplementation.receivedBuffer(_:at:)(AVAudioPCMBuffer _, AVAudioTime *at)
{
  impl = _.super._impl;
  isa = _.super.super.isa;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AXSDNSControllerImplementation();
  objc_msgSendSuper2(&v5, sel_receivedBuffer_atTime_, isa, impl);
  [v2 receivedBuffer:isa atTime:impl isFile:0];
}

void sub_23D67D134(void *a1)
{
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager;
  if (!*(v1 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager))
  {
    [a1 sampleRate];
    v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
    v5 = 1.0 / v4;
    swift_beginAccess();
    v6 = [objc_allocWithZone(AXSDUltronInternalRecordingManager) initWithSampleLength:v5 bufferSize:{objc_msgSend(*(v1 + v3), sel_bufferSize)}];
    v7 = *(v1 + v2);
    *(v1 + v2) = v6;
  }
}

Swift::Void __swiftcall AXSDNSControllerImplementation.listenEngineDidStart(withInputFormat:)(AVAudioFormat_optional *withInputFormat)
{
  v2 = v1;
  v4 = sub_23D685880();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D6858A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AXSDNSControllerImplementation();
  v34.receiver = v2;
  v34.super_class = v12;
  [(AVAudioFormat_optional *)&v34 listenEngineDidStartWithInputFormat:withInputFormat];
  if (withInputFormat)
  {
    sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
    v32 = v8;
    v13 = withInputFormat;
    v14 = sub_23D685AA0();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v13;
    aBlock[4] = sub_23D6800F8;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D650AF8;
    aBlock[3] = &block_descriptor_12_1;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    v18 = v2;

    sub_23D685890();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
    sub_23D65444C();
    sub_23D685B10();
    MEMORY[0x23EEE6840](0, v11, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v32);
  }

  else
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v19 = sub_23D685860();
    __swift_project_value_buffer(v19, qword_27E2E0868);
    v20 = v2;
    v21 = sub_23D685850();
    v22 = sub_23D685A60();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      v25 = v20;
      v26 = [v25 description];
      v27 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v29 = v28;

      v30 = sub_23D652534(v27, v29, aBlock);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_23D62D000, v21, v22, "[%s]: Listen Engine did not return an audio format. This should NOT happen; bailing. File a radar!", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23EEE7580](v24, -1, -1);
      MEMORY[0x23EEE7580](v23, -1, -1);
    }
  }
}

void sub_23D67D63C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  [*(a1 + v4) startDetectionWithFormat_];
  if ([objc_opt_self() isInternalInstall])
  {
    if ([objc_opt_self() isEnrolled])
    {
      sub_23D67D134(a2);
    }
  }
}

Swift::Void __swiftcall AXSDNSControllerImplementation.listenEngineReceivedAudioFile(_:)(AVAudioFile a1)
{
  isa = a1.super.isa;
  v82 = sub_23D685880();
  v76 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v69[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23D6858A0();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v6 = sub_23D685860();
  v7 = __swift_project_value_buffer(v6, qword_27E2E0868);
  v8 = isa;
  v77 = v8;
  v9 = v1;
  v10 = sub_23D685850();
  v11 = sub_23D685A40();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v75 = v7;
    v15 = v14;
    aBlock = v14;
    *v12 = 136315650;
    v16 = v9;
    v17 = [v16 description];
    v18 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v20 = v19;

    v21 = sub_23D652534(v18, v20, &aBlock);
    v22 = v77;

    *(v12 + 4) = v21;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v22;
    *v13 = v22;
    *(v12 + 22) = 2112;
    v23 = [v22 processingFormat];
    *(v12 + 24) = v23;
    v13[1] = v23;
    _os_log_impl(&dword_23D62D000, v10, v11, "[%s]: Received audio file: %@ with audio format: %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E06F0, &qword_23D6893C0);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEE7580](v15, -1, -1);
    MEMORY[0x23EEE7580](v12, -1, -1);
  }

  v24 = v9;
  v25 = sub_23D685850();
  v26 = sub_23D685A50();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136315138;
    v29 = v24;
    v30 = [v29 description];
    v31 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v33 = v32;

    v34 = sub_23D652534(v31, v33, &aBlock);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_23D62D000, v25, v26, "[%s]: Stopping detector manager.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23EEE7580](v28, -1, -1);
    MEMORY[0x23EEE7580](v27, -1, -1);
  }

  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v35 = sub_23D685AA0();
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  v87 = sub_23D68068C;
  v88 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_23D650AF8;
  v86 = &block_descriptor_18_0;
  v37 = _Block_copy(&aBlock);
  v38 = v24;

  v39 = v78;
  sub_23D685890();
  aBlock = MEMORY[0x277D84F90];
  v40 = sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  v42 = sub_23D65444C();
  v43 = v81;
  v44 = v82;
  v73 = v42;
  v74 = v41;
  v75 = v40;
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v39, v43, v37);
  _Block_release(v37);

  v76 = *(v76 + 8);
  (v76)(v43, v44);
  v45 = v79 + 8;
  v72 = *(v79 + 8);
  v72(v39, v80);
  v46 = v77;
  v47 = v38;
  v48 = sub_23D685850();
  v49 = sub_23D685A50();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v79 = v45;
    v51 = v50;
    v71 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock = v77;
    *v51 = 136315394;
    v52 = v47;
    v53 = [v52 description];
    v54 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v70 = v49;
    v56 = v55;

    v57 = sub_23D652534(v54, v56, &aBlock);

    *(v51 + 4) = v57;
    *(v51 + 12) = 2112;
    v58 = [v46 processingFormat];
    *(v51 + 14) = v58;
    v59 = v71;
    *v71 = v58;
    _os_log_impl(&dword_23D62D000, v48, v70, "[%s]: Starting detector manager with audio format: %@", v51, 0x16u);
    sub_23D654530(v59);
    MEMORY[0x23EEE7580](v59, -1, -1);
    v60 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x23EEE7580](v60, -1, -1);
    MEMORY[0x23EEE7580](v51, -1, -1);
  }

  v61 = sub_23D685AA0();
  v62 = swift_allocObject();
  *(v62 + 16) = v47;
  *(v62 + 24) = v46;
  v87 = sub_23D680100;
  v88 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_23D650AF8;
  v86 = &block_descriptor_24_1;
  v63 = _Block_copy(&aBlock);
  v64 = v46;
  v65 = v47;

  v66 = v78;
  sub_23D685890();
  aBlock = MEMORY[0x277D84F90];
  v67 = v81;
  v68 = v82;
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v66, v67, v63);
  _Block_release(v63);

  (v76)(v67, v68);
  v72(v66, v80);
}

void sub_23D67DFD8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = [a2 processingFormat];
  [v5 startDetectionWithFormat_];
}

Swift::Void __swiftcall AXSDNSControllerImplementation.listenEngineFinishedAudioFile(_:)(AVAudioFile a1)
{
  isa = a1.super.isa;
  v94 = sub_23D685880();
  v3 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v80[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23D6858A0();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v80[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v7 = sub_23D685860();
  v8 = __swift_project_value_buffer(v7, qword_27E2E0868);
  v9 = v1;
  v10 = isa;
  v89 = v8;
  v11 = sub_23D685850();
  v12 = sub_23D685A40();

  v13 = os_log_type_enabled(v11, v12);
  v88 = v3;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock = v87;
    *v14 = 136315394;
    v16 = v9;
    v17 = [v16 description];
    v18 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v20 = v19;

    v21 = sub_23D652534(v18, v20, &aBlock);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v10;
    v22 = v10;
    _os_log_impl(&dword_23D62D000, v11, v12, "[%s]: Finished processing audio file: %@.", v14, 0x16u);
    sub_23D654530(v15);
    MEMORY[0x23EEE7580](v15, -1, -1);
    v23 = v87;
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x23EEE7580](v23, -1, -1);
    MEMORY[0x23EEE7580](v14, -1, -1);
  }

  v24 = v9;
  v25 = sub_23D685850();
  v26 = sub_23D685A50();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136315138;
    v29 = v24;
    v30 = [v29 description];
    v31 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v33 = v32;

    v34 = sub_23D652534(v31, v33, &aBlock);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_23D62D000, v25, v26, "[%s]: Stopping detector manager.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23EEE7580](v28, -1, -1);
    MEMORY[0x23EEE7580](v27, -1, -1);
  }

  v35 = v88;
  v36 = v91;
  v87 = sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v37 = sub_23D685AA0();
  v38 = swift_allocObject();
  *(v38 + 16) = v24;
  v99 = sub_23D680108;
  v100 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v96 = 1107296256;
  v97 = sub_23D650AF8;
  v98 = &block_descriptor_30_0;
  v39 = _Block_copy(&aBlock);
  v40 = v24;

  v41 = v90;
  sub_23D685890();
  aBlock = MEMORY[0x277D84F90];
  v42 = sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  v44 = sub_23D65444C();
  v45 = v93;
  v85 = v43;
  v84 = v44;
  v46 = v94;
  v86 = v42;
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v41, v45, v39);
  _Block_release(v39);

  v47 = v35[1];
  (v47)(v45, v46);
  v50 = *(v36 + 8);
  v48 = v36 + 8;
  v49 = v50;
  v50(v41, v92);
  v51 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  v52 = [*&v40[v51] audioFormat];
  if (v52)
  {
    v53 = v52;
    v88 = v47;
    v54 = v40;
    v55 = v53;
    v56 = sub_23D685850();
    v57 = sub_23D685A50();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v91 = v48;
      v59 = v58;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v59 = 136315394;
      v60 = v54;
      v89 = v54;
      v61 = v60;
      v62 = [v60 description];
      v63 = v49;
      v64 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v81 = v57;
      v66 = v65;

      v67 = v64;
      v49 = v63;
      v68 = sub_23D652534(v67, v66, &aBlock);

      *(v59 + 4) = v68;
      v54 = v89;
      *(v59 + 12) = 2112;
      *(v59 + 14) = v55;
      v69 = v82;
      *v82 = v53;
      v70 = v55;
      _os_log_impl(&dword_23D62D000, v56, v81, "[%s]: Starting detector manager with audio format: %@", v59, 0x16u);
      sub_23D654530(v69);
      MEMORY[0x23EEE7580](v69, -1, -1);
      v71 = v83;
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x23EEE7580](v71, -1, -1);
      MEMORY[0x23EEE7580](v59, -1, -1);
    }

    v72 = sub_23D685AA0();
    v73 = swift_allocObject();
    *(v73 + 16) = v54;
    *(v73 + 24) = v55;
    v99 = sub_23D680170;
    v100 = v73;
    aBlock = MEMORY[0x277D85DD0];
    v96 = 1107296256;
    v97 = sub_23D650AF8;
    v98 = &block_descriptor_36_0;
    v74 = _Block_copy(&aBlock);
    v75 = v54;
    v76 = v55;

    v77 = v90;
    sub_23D685890();
    aBlock = MEMORY[0x277D84F90];
    v78 = v93;
    v79 = v94;
    sub_23D685B10();
    MEMORY[0x23EEE6840](0, v77, v78, v74);
    _Block_release(v74);

    (v88)(v78, v79);
    v49(v77, v92);
  }
}

void AXSDNSControllerImplementation.receivedObservation(_:forDetector:)(void *a1, void *a2)
{
  v3 = v2;
  if ([a1 detected])
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v6 = sub_23D685860();
    __swift_project_value_buffer(v6, qword_27E2E0868);
    v7 = a2;
    v8 = a1;
    v9 = sub_23D685850();
    v10 = sub_23D685A40();

    v11 = &selRef_bufferSize;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315394;
      v14 = [v7 soundIdentifier];
      v15 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v17 = v16;

      v18 = sub_23D652534(v15, v17, &v25);

      *(v12 + 4) = v18;
      v11 = &selRef_bufferSize;
      *(v12 + 12) = 2048;
      [v8 confidence];
      *(v12 + 14) = v19;
      _os_log_impl(&dword_23D62D000, v9, v10, "Detected type: %s at confidence level: %f", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEE7580](v13, -1, -1);
      MEMORY[0x23EEE7580](v12, -1, -1);
    }

    v20 = [v7 soundIdentifier];
    v21 = AXSDSoundDetectionTypeForIdentifier();

    v24 = v21;
    [v8 v11[16]];
    *&v22 = v22;
    AXSDSoundDetectionGenerateUserNotificationForDetectionType(v24, *&v22);

    v23 = objc_opt_self();
    if ([v23 isInternalInstall] && objc_msgSend(objc_opt_self(), sel_isEnrolled))
    {
      [*(v3 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager) saveDetectionResult_];
    }

    if ([v23 isInternalInstall] && *(v3 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections))
    {
      AXSDNSControllerImplementation.trackObservation(_:forDetector:)(v8, v7);
    }
  }
}

unint64_t sub_23D67EEB0(uint64_t a1, uint64_t a2)
{
  sub_23D685DA0();
  sub_23D685940();
  v4 = sub_23D685DC0();

  return sub_23D67FCA0(a1, a2, v4);
}

unint64_t sub_23D67EF28(uint64_t a1)
{
  _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  sub_23D685DA0();
  sub_23D685940();
  v2 = sub_23D685DC0();

  return sub_23D67FD58(a1, v2);
}

uint64_t sub_23D67EFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0750, &qword_23D689620);
  result = sub_23D685CB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_23D685AF0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23D67F22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0760, &unk_23D689630);
  result = sub_23D685CB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      result = sub_23D685AF0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23D67F4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0A40, &qword_23D689618);
  v35 = v4;
  result = sub_23D685CB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      sub_23D685DA0();
      sub_23D685940();
      v24 = sub_23D685DC0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_23D67F768(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23D67EE10(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23D67EFBC(v13, a3 & 1);
      v8 = sub_23D67EE10(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_23D654A7C(0, &qword_27E2E0560, off_278BDC930);
        result = sub_23D685D20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_23D678B34();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

id sub_23D67F8E4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23D67EE60(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_23D67F22C(v15, a4 & 1);
      v10 = sub_23D67EE60(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_23D654A7C(0, &qword_27E2E0720, 0x277CCABB0);
        result = sub_23D685D20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_23D678C98();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

id sub_23D67FA68(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23D67EF28(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23D67F4A0(v13, a3 & 1);
      v8 = sub_23D67EF28(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for AXSDSoundDetectionType();
        result = sub_23D685D20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_23D678E10();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_23D67FBD4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_23D654A7C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_23D685B00();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_23D67FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D685D00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23D67FD58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v8 = v7;
      if (v6 == _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0() && v8 == v9)
      {
        break;
      }

      v11 = sub_23D685D00();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23D67FE5C(uint64_t a1, void *a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  result = sub_23D67EF28(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_23D67F4A0(v14, isUniquelyReferenced_nonNull_native);
    result = sub_23D67EF28(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for AXSDSoundDetectionType();
    result = sub_23D685D20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = result;
    sub_23D678E10();
    result = v18;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v3)
  {
LABEL_7:
    v16 = v8[7];
    v17 = *(v16 + 8 * result);
    *(v16 + 8 * result) = a1;
LABEL_12:
    *v4 = v8;
    return v17;
  }

LABEL_10:
  v8[(result >> 6) + 8] |= 1 << result;
  *(v8[6] + 8 * result) = a2;
  *(v8[7] + 8 * result) = a1;
  v19 = v8[2];
  v13 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (!v13)
  {
    v8[2] = v20;
    v21 = a2;
    v17 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D67FFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id _s18AXSoundDetectionUI30AXSDNSControllerImplementationC14receivedBuffer_2at6isFileySo16AVAudioPCMBufferC_So0K4TimeCSbtF_0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  [*(v2 + v5) processAudioBuffer:a1 atTime:a2];
  result = [objc_opt_self() isInternalInstall];
  if (result)
  {
    result = [objc_opt_self() isEnrolled];
    if (result)
    {
      return [*(v2 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager) trackBuffer:a1 atTime:a2];
    }
  }

  return result;
}

id sub_23D680114(SEL *a1)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return [*(v3 + v4) *a1];
}

id sub_23D680170()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return [*(v2 + v3) startDetectionWithFormat_];
}

void _s18AXSoundDetectionUI30AXSDNSControllerImplementationC18receivedCompletionyySo20SNDetectSoundRequestCF_0(void *a1)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = a1;
  oslog = sub_23D685850();
  v4 = sub_23D685A50();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_23D62D000, oslog, v4, "Received completion for request: %@", v5, 0xCu);
    sub_23D654530(v6);
    MEMORY[0x23EEE7580](v6, -1, -1);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }
}

void _s18AXSoundDetectionUI30AXSDNSControllerImplementationC13receivedError_12fromDetectorys0G0_p_So20SNDetectSoundRequestCtF_0(void *a1, void *a2)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v4 = sub_23D685860();
  __swift_project_value_buffer(v4, qword_27E2E0868);
  v5 = a2;
  v6 = a1;
  oslog = sub_23D685850();
  v7 = sub_23D685A60();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2112;
    v10 = v5;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    v9[1] = v12;
    _os_log_impl(&dword_23D62D000, oslog, v7, "Received error for request: %@ - error: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E06F0, &qword_23D6893C0);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v9, -1, -1);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }
}

void AXSDSoundDetectionGenerateUserNotificationForDetectionType_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_23D62D000, v1, OS_LOG_TYPE_FAULT, "Asked to send notification for type %{public}@, but it's not in the list of detectors %@", v2, 0x16u);
}

void AXSDSoundDetectionGenerateUserNotificationForDetectionType_cold_2(uint64_t a1, NSObject *a2, float a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "Requesting send notification for detection: %@ w/ confidence %f", &v3, 0x16u);
}

void _SoundDetectionSendNotificationForCustomDetector_cold_1(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_23D62D000, v4, v5, "Requesting send notification for detector: %@ %@", v6, v7, v8, v9);
}

void AXSDSoundDetectionSendKShotModelFailedNotification_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Requesting send notification for failed training of detector: %@ with reason: unknown error.", v1, 0xCu);
}

void AXSDSoundDetectionSendKShotModelFailedWithEmptySoundEmbeddingsNotification_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Requesting send notification for failed training of detector: %@ with reason: empty sound embeddings.", v1, 0xCu);
}

void AXSDKShotGatherFilesAndGenerateRadarForDetector_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_23D62D000, v0, OS_LOG_TYPE_FAULT, "no detector identifier! %@", v1, 0xCu);
}