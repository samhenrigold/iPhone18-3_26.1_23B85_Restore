uint64_t PodcastChannelEntity.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t PodcastChannelEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t PodcastChannelEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastChannelEntity(uint64_t a1)
{
  result = qword_280072A68;
  if (!qword_280072A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26631A9E4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  v5 = *a3;

  return v5;
}

uint64_t sub_26631AA3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_26631AAD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_26631AB58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastChannelEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26631ABC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_26631AC20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2664DF8A8();
  *a1 = result;
  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

Swift::String_optional __swiftcall PrivateMediaIntentDataProviding.getSharedUserID(speakerConfidence:)(SiriAudioSupport::AcceptedSpeakerIdConfidence speakerConfidence)
{
  v4 = v2;
  v5 = v1;
  v6 = speakerConfidence;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DEA98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v6;
  v15 = *(v4 + 24);
  v37 = v5;
  v38 = v3;
  v16 = v15(v5, v4);
  if (v16 && (v17 = v16, v18 = [v16 speakerIDInfo], v17, v18) && (v19 = objc_msgSend(v18, sel_sharedUserID), v18, v19))
  {
    v20 = sub_2664E02C8();
    v22 = v21;
  }

  else
  {
    v35 = v8;
    v23 = v7;
    if (!static SiriEnvironmentWrapper.retrieve()() || (sub_2664DF4A8(), , sub_2664DEB48(), , v20 = sub_2664DEA18(), v22 = v24, (*(v12 + 8))(v14, v11), !v22))
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v26 = v23;
      v27 = __swift_project_value_buffer(v23, qword_280F914F0);
      swift_beginAccess();
      v28 = v35;
      (*(v35 + 16))(v10, v27, v26);
      v29 = sub_2664DFE18();
      v30 = sub_2664E06C8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26629C000, v29, v30, "PrivateMediaIntentDataProviding#sharedUserID and SiriEnvironment.UserIdentityProvider no sharedUserID", v31, 2u);
        MEMORY[0x266784AD0](v31, -1, -1);
      }

      (*(v28 + 8))(v10, v26);
      goto LABEL_15;
    }
  }

  v39[0] = v36;
  if (((*(v4 + 40))(v39, v37, v4) & 1) == 0)
  {

LABEL_15:
    v25 = 0;
    v22 = 0;
    goto LABEL_16;
  }

  v25 = v20;
LABEL_16:
  v32 = v22;
  result.value._object = v32;
  result.value._countAndFlagsBits = v25;
  return result;
}

Swift::Bool __swiftcall PrivateMediaIntentDataProviding.isUserConfidenceEnoughToBeRecognized(speakerConfidence:)(SiriAudioSupport::AcceptedSpeakerIdConfidence speakerConfidence)
{
  v3 = v2;
  v4 = v1;
  v5 = speakerConfidence;
  v6 = sub_2664DEA98();
  isa = v6[-1].isa;
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DEA78();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v80 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v79 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v81 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v91 = &v79 - v16;
  v17 = sub_2664DFE38();
  v96 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v87 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v79 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v95 = *v5;
  v28 = (*(v3 + 24))(v4, v3);
  if (v28 && (v29 = v28, v30 = [v28 speakerIDInfo], v29, v30))
  {
    v31 = [v30 speakerIDConfidence];
  }

  else
  {
    v31 = 0;
  }

  v32 = v96;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v86 = v13;
  v82 = v95;
  v33 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v34 = v32[2];
  v93 = (v32 + 2);
  v94 = v33;
  v92 = v34;
  v34(v27, v33, v17);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06C8();
  v37 = os_log_type_enabled(v35, v36);
  v88 = v22;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v97 = v31;
    v98 = v39;
    *v38 = 136315138;
    type metadata accessor for INSpeakerIDConfidence(0);
    v40 = sub_2664E0318();
    v42 = sub_2662A320C(v40, v41, &v98);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_26629C000, v35, v36, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized speakerID confidence: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v39, -1, -1);
    v43 = v38;
    v32 = v96;
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v44 = v32[1];
  v44(v27, v17);
  v45 = *(&off_279BCC1A0 + v95);
  v46 = *(v45 + 16);
  v47 = 32;
  do
  {
    v48 = v46;
    if (v46-- == 0)
    {
      break;
    }

    v50 = *(v45 + v47);
    v47 += 8;
  }

  while (v50 != v31);

  v92(v25, v94, v17);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 67109376;
    *(v53 + 4) = v48 != 0;
    *(v53 + 8) = 2048;
    *(v53 + 10) = v31;
    _os_log_impl(&dword_26629C000, v51, v52, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized %{BOOL}d for confidence from PrivateMediaIntentData: %ld", v53, 0x12u);
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  v44(v25, v17);
  if (v48)
  {
    return 1;
  }

  else if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4A8();

    v55 = v83;
    sub_2664DEB48();

    v56 = v81;
    sub_2664DEA88();
    (*(isa + 1))(v55, v85);
    v58 = v89;
    v57 = v90;
    v59 = v91;
    (*(v89 + 32))(v91, v56, v90);
    v92(v88, v94, v17);
    v60 = *(v58 + 16);
    v61 = v86;
    v60(v86, v59, v57);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06C8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v85 = v62;
      v65 = v64;
      v95 = swift_slowAlloc();
      v98 = v95;
      *v65 = 136315138;
      LODWORD(isa) = v63;
      v60(v80, v61, v57);
      v66 = sub_2664E0318();
      v68 = v67;
      v96 = *(v89 + 8);
      (v96)(v61, v57);
      v69 = sub_2662A320C(v66, v68, &v98);

      v70 = v65;
      *(v65 + 4) = v69;
      v71 = v85;
      _os_log_impl(&dword_26629C000, v85, isa, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized userClassification confidence: %s", v70, 0xCu);
      v72 = v95;
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x266784AD0](v72, -1, -1);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    else
    {

      v96 = *(v89 + 8);
      (v96)(v61, v57);
    }

    v44(v88, v17);
    LOBYTE(v98) = v82;
    v73 = sub_2664B74CC();
    v54 = sub_266457A34(v91, v73);

    v74 = v87;
    v92(v87, v94, v17);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06C8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 67109376;
      *(v77 + 4) = v54;
      *(v77 + 8) = 2048;
      *(v77 + 10) = v31;
      _os_log_impl(&dword_26629C000, v75, v76, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized %{BOOL}d for confidence from SiriEnvironment.UserIdentityProvider: %ld", v77, 0x12u);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v44(v74, v17);
    (v96)(v91, v90);
  }

  else
  {
    return 0;
  }

  return v54;
}

Swift::String_optional __swiftcall PrivateMediaIntentDataProviding.localizedAppName(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = (*(v1 + 24))();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 proxiedThirdPartyAppInfo];

  if (!v6)
  {
LABEL_14:
    v4 = 0;
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v7 = [v6 bundleIdentifier];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = sub_2664E02C8();
  v11 = v10;

  if (v9 == countAndFlagsBits && v11 == object)
  {
  }

  else
  {
    v13 = sub_2664E0D88();

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v14 = [v6 appName];
  if (!v14)
  {
LABEL_13:

    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_2664E02C8();
  v18 = v17;

  v19 = v18;
  v4 = v16;
LABEL_16:
  result.value._object = v19;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall PrivateMediaIntentDataProviding.getSharedUserID()()
{
  v4 = 0;
  v1 = (*(v0 + 32))(&v4);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_26631BB98(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = (*(a2 + 24))(a1);
  v5 = [v4 *a3];

  sub_266319BF4();
  v6 = sub_2664E08F8();
  if (v5)
  {
    v7 = sub_2664E0918();

    v6 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *PrivateMediaIntentDataProviding.fallbackUsername.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))(a1);
  if (result)
  {
    v3 = result;
    v4 = [result fallbackUsername];

    if (v4)
    {
      v5 = sub_2664E02C8();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26631BD34()
{
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v3[0] = qword_280F905C8;
  *(v3 + 5) = *(&qword_280F905C8 + 5);
  sub_2664DE8E8();
  type metadata accessor for SEDeviceProvider();
  v0 = swift_allocObject();
  v0[5] = &type metadata for FeatureFlagProvider;
  v0[6] = &protocol witness table for FeatureFlagProvider;
  v0[2] = v3[0];
  *(v0 + 21) = *(v3 + 5);
  result = sub_2662A8618(&v2, (v0 + 7));
  qword_280072A78 = v0;
  return result;
}

void *SEDeviceProvider.__allocating_init(featureFlagProvider:aceServiceInvoker:)(void *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_26631C5E4(v9, a2, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t static SEDeviceProvider.shared.getter()
{
  if (qword_280071AB0 != -1)
  {
    swift_once();
  }
}

void *SEDeviceProvider.init(featureFlagProvider:aceServiceInvoker:)(void *a1, __int128 *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_26631C5E4(v9, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t sub_26631C050()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v9 = 67109378;
    v10 = v1[5];
    v11 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
    *(v9 + 4) = (*(v11 + 8))(v10, v11) & 1;

    *(v9 + 8) = 2080;
    __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
    sub_2664DEAC8();
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v12 = sub_2664DEB58();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v26[0] = v12;
    v26[1] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v15 = sub_2664E0318();
    v17 = sub_2662A320C(v15, v16, &v25);

    *(v9 + 10) = v17;
    _os_log_impl(&dword_26629C000, v7, v8, "SEDeviceProvider#isSEDevice SE Logic feature flag is %{BOOL}d and endpoint Id for SE device is %s", v9, 0x12u);
    v18 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  v19 = v1[5];
  v20 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v19);
  if (((*(v20 + 8))(v19, v20) & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_2664DEAC8();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_2664DEB58();
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  if (!v22)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_26631C400(uint64_t (*a1)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_2664DEAC8();
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = a1(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t SEDeviceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t SEDeviceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_26631C550(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1((*v3 + 56), *(*v3 + 80));
  sub_2664DEAC8();
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = a3(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

void *sub_26631C5E4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  sub_2662A8618(a2, (a3 + 7));
  return a3;
}

void sub_26631C754(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    if (a3)
    {
      v8 = sub_2664E02A8();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v6 setName_];
  }
}

uint64_t sub_26631C81C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = sub_2662F3824;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2663F8490;
  v9[3] = &block_descriptor_53;
  v7 = _Block_copy(v9);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_26631C950(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_26631C99C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v27 = 0x277CD5E40;
    v36 = objc_opt_self();
    v37 = [objc_opt_self() kindWithVariants_];
    v38 = [v36 kindWithSongKind_];

    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_26631D1F4;
    *(v40 + 24) = v39;
    v41 = objc_allocWithZone(MEMORY[0x277CD5DA0]);

    v42 = sub_2664E02A8();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_26631D208;
    *(v43 + 24) = v40;
    v49 = sub_26631D20C;
    v50 = v43;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_26631C950;
    v48 = &block_descriptor_23;
    v44 = _Block_copy(&v45);

    v35 = [v41 initWithSource:v42 modelKind:v38 block:v44];

    _Block_release(v44);

    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 != 3)
  {
LABEL_7:
    v27 = 0x277CD5F58;
    v28 = [objc_opt_self() kindWithVariants_];
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_26631D19C;
    *(v30 + 24) = v29;
    v31 = objc_allocWithZone(MEMORY[0x277CD5DA0]);

    v32 = sub_2664E02A8();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_26631D1AC;
    *(v33 + 24) = v30;
    v49 = sub_2662F3824;
    v50 = v33;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_26631C950;
    v48 = &block_descriptor_8;
    v34 = _Block_copy(&v45);

    v35 = [v31 initWithSource:v32 modelKind:v28 block:v34];

    _Block_release(v34);

    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
LABEL_8:
      v25 = [objc_allocWithZone(*v27) initWithIdentifiers_];

      return v25;
    }

    goto LABEL_12;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = objc_opt_self();
  v10 = objc_opt_self();
  v11 = objc_opt_self();

  v12 = [v11 kindWithVariants_];
  v13 = [v10 kindWithSongKind_];

  v14 = [v9 kindWithAlbumKind_];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26631D1F4;
  *(v16 + 24) = v15;
  v17 = objc_allocWithZone(MEMORY[0x277CD5DA0]);

  v18 = sub_2664E02A8();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26631D208;
  *(v19 + 24) = v16;
  v49 = sub_26631D20C;
  v50 = v19;
  v45 = MEMORY[0x277D85DD0];
  v46 = 1107296256;
  v47 = sub_26631C950;
  v48 = &block_descriptor_41;
  v20 = _Block_copy(&v45);

  v21 = [v17 initWithSource:v18 modelKind:v14 block:v20];

  _Block_release(v20);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CD5E50]);
    a1 = swift_allocObject();
    *(a1 + 16) = sub_26631D1B4;
    *(a1 + 24) = v8;
    v49 = sub_26631D1BC;
    v50 = a1;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_26631C950;
    v48 = &block_descriptor_47_0;
    v24 = _Block_copy(&v45);

    v25 = [v23 initWithIdentifiers:v21 block:v24];

    _Block_release(v24);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v25;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26631D2D0(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_26631D568(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_26631D568(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

uint64_t SearchMusicAppIntent.init(criteria:searchSource:resultScope:)@<X0>(uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A80, &qword_2664E57A8);
  swift_allocObject();
  a6[1] = sub_2664DFA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A88, &unk_2664E57B0);
  swift_allocObject();
  a6[2] = sub_2664DFA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  swift_allocObject();
  *a6 = sub_2664DFA28();
  sub_2664DFA38();
  return sub_2664DFA38();
}

uint64_t sub_26631DE7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26631DEC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t INSpeakerIDConfidence.toIdentifiedUserClassification()(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return sub_2664DEA58();
      }

      return sub_2664DEA38();
    }

    return sub_2664DEA48();
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return sub_2664DEA28();
      }

      return sub_2664DEA38();
    }

    return sub_2664DEA68();
  }
}

uint64_t static INSpeakerIDConfidence.from(confidence:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification.toSpeakerIDConfidence()()
{
  v1 = v0;
  v2 = sub_2664DE5D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D396A8])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D39688])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D39698])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x277D396A0])
  {
    return 4;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_26631E10C(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(v2 + 88))(v4, a1);
  if (v5 == *MEMORY[0x277D396A8])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D39688])
  {
    return 2;
  }

  if (v5 == *MEMORY[0x277D39698])
  {
    return 3;
  }

  if (v5 == *MEMORY[0x277D396A0])
  {
    return 4;
  }

  (*(v2 + 8))(v4, a1);
  return 0;
}

uint64_t IdentifiedUser.Classification.toSpeakerIDConfidence()()
{
  v1 = v0;
  v2 = sub_2664DEA78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  (*(v3 + 16))(&v15 - v7, v1, v2);
  sub_2664DEA68();
  sub_26631E4BC();
  v9 = sub_2664E0298();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(v8, v2);
    return 1;
  }

  else
  {
    sub_2664DEA28();
    v12 = sub_2664E0298();
    v10(v6, v2);
    if (v12)
    {
      v10(v8, v2);
      return 2;
    }

    else
    {
      sub_2664DEA48();
      v13 = sub_2664E0298();
      v10(v6, v2);
      if (v13)
      {
        v10(v8, v2);
        return 3;
      }

      else
      {
        sub_2664DEA58();
        v14 = sub_2664E0298();
        v10(v6, v2);
        v10(v8, v2);
        if (v14)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

unint64_t sub_26631E4BC()
{
  result = qword_280072A90;
  if (!qword_280072A90)
  {
    sub_2664DEA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072A90);
  }

  return result;
}

SiriAudioSupport::TypeOfIntent_optional __swiftcall TypeOfIntent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TypeOfIntent.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63697473756F6361;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6964654D6E65706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E696D7265746564;
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

uint64_t sub_26631E650()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26631E754(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_26631E844(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_26631E950(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004449;
  v4 = 0x63697473756F6361;
  v5 = 0x80000002664F1900;
  v6 = 0xD000000000000014;
  v7 = 0xD000000000000010;
  v8 = 0x80000002664F1920;
  if (v2 != 3)
  {
    v7 = 0x6964654D6E65706FLL;
    v8 = 0xED00006D65744961;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6E696D7265746564;
    v3 = 0xE900000000000065;
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

uint64_t sub_26631EA10()
{
  if (qword_280F90D20 != -1)
  {
    swift_once();
  }

  v0 = qword_280F90D28;
  v1 = type metadata accessor for STCAuditProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v12 = &type metadata for SubscriptionProvider;
  v13 = &protocol witness table for SubscriptionProvider;
  v9 = type metadata accessor for AccountProvider();
  v10 = &protocol witness table for AccountProvider;
  *&v8 = v0;
  v6 = v1;
  v7 = &protocol witness table for STCAuditProvider;
  *&v5 = v2;
  type metadata accessor for SiriKitTaskLoggingProvider();
  v3 = swift_allocObject();
  sub_2662A8618(&v11, v3 + 16);
  sub_2662A8618(&v8, v3 + 56);
  sub_2662A8618(&v5, v3 + 96);
  qword_280F91470 = v3;
}

uint64_t sub_26631EB20(uint64_t a1)
{
  result = AFIsInternalInstall();
  byte_280F91488 = result;
  return result;
}

uint64_t sub_26631EB48(uint64_t a1, uint64_t a2)
{
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v4 = v2[15];
    v5 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v4);
    (*(v5 + 8))(a2, v4, v5);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2664DE7E8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_26631EC2C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280F91480 != -1)
  {
    result = swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v3 = v1[15];
    v4 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
    (*(v4 + 32))(&v9, v3, v4);
    v5 = v9;
    v6 = v1[15];
    v7 = v1[16];
    __swift_project_boxed_opaque_existential_1(v1 + 12, v6);
    result = (*(v7 + 24))(v6, v7);
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_26631ED1C(unsigned int a1, uint64_t a2, char *a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v44 = *(v7 + 16);
  v45 = v16;
  v44(v15, v16, v6);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v5;
    v20 = v10;
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "SiriKitTaskLoggingProvider#submitStateType Submitting state", v21, 2u);
    v22 = v21;
    v10 = v20;
    v5 = v19;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = *(v7 + 8);
  v23(v15, v6);
  sub_2664DE8D8();

  LOBYTE(v46[0]) = 1;
  sub_2664DE8C8();
  v44(v13, v45, v6);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = v13;
    v27 = v26;
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v24, v25, "SiriKitTaskLoggingProvider#submitStateType siriKitEvent created", v26, 2u);
    v13 = v43;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v23(v13, v6);
  v28 = sub_2664DEA08();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v29 = v40[15];
    v30 = v40[16];
    __swift_project_boxed_opaque_existential_1(v40 + 12, v29);
    (*(v30 + 8))(v5, v29, v30);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_2664DE7E8();
  sub_2662A9238(v5, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  v44(v10, v45, v6);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v45 = v23;
    v34 = v33;
    v35 = swift_slowAlloc();
    v46[0] = v35;
    *v34 = 136315138;
    v36 = sub_2664DE898();
    v38 = sub_2662A320C(v36, v37, v46);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_26629C000, v31, v32, "SiriKitTaskLoggingProvider#submitStateType siriKitEvent sent %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v34, -1, -1);

    return v45(v10, v6);
  }

  else
  {

    return (v23)(v10, v6);
  }
}

uint64_t sub_26631F2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a4;
  v54 = a5;
  v55 = a2;
  v56 = a3;
  v63 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_2664DEA08();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v52 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v59 = *(v16 + 16);
  v60 = v23;
  v24 = v15;
  v59(v22, v23, v15);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v16;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "SiriKitTaskLoggingProvider#submitActivityType Submitting activity with status reason", v28, 2u);
    v29 = v28;
    v16 = v27;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v64 = *(v16 + 8);
  v64(v22, v24);
  sub_2664DE8D8();
  v30 = *(v61 + 16);
  v30(v14, v63, v62);
  sub_2662A7224(v53, v11, &qword_280072AA0, &qword_2664E9EA0);
  v31 = swift_allocObject();
  *(v31 + 16) = v54;
  *(v31 + 24) = a6;

  v32 = v24;
  sub_2664DE888();
  v33 = v52;
  v59(v52, v60, v32);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06C8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26629C000, v34, v35, "SiriKitTaskLoggingProvider#submitActivityType siriKitEvent created", v36, 2u);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  v64(v33, v32);
  v37 = v57;
  v38 = v62;
  v30(v57, v63, v62);
  (*(v61 + 56))(v37, 0, 1, v38);
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  v39 = v58;
  if (byte_280F91488 == 1)
  {
    v40 = v51[15];
    v41 = v51[16];
    __swift_project_boxed_opaque_existential_1(v51 + 12, v40);
    (*(v41 + 8))(v37, v40, v41);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  sub_2664DE7E8();
  sub_2662A9238(v37, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  v59(v39, v60, v32);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65[0] = v45;
    *v44 = 136315138;
    v46 = sub_2664DE898();
    v48 = sub_2662A320C(v46, v47, v65);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_26629C000, v42, v43, "SiriKitTaskLoggingProvider#submitActivityType siriKitEvent sent %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266784AD0](v45, -1, -1);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  else
  {
  }

  return (v64)(v39, v32);
}

uint64_t sub_26631F9B8(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v113 = a8;
  v115 = a7;
  v114 = a6;
  v101 = a5;
  v112 = a3;
  v129 = a2;
  v116 = a1;
  v10 = sub_2664E0038();
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x28223BE20](v10);
  v119 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2664E00B8();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v108 = *(v13 - 8);
  v109 = *(v108 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v111 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v106 = *(v15 - 8);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v126 = &v97 - v16;
  v128 = sub_2664E00E8();
  v131 = *(v128 - 8);
  v17 = MEMORY[0x28223BE20](v128);
  v105 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v127 = &v97 - v19;
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v97 - v28;
  sub_2662A7224(a4, &v97 - v28, &qword_280072AA8, &qword_2664E58D0);
  v30 = sub_2664DEAB8();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_2662A9238(v29, &qword_280072AA8, &qword_2664E58D0);
    v104 = 0;
    v110 = 0;
  }

  else
  {
    v104 = sub_2664DEAA8();
    v110 = v32;
    (*(v31 + 8))(v29, v30);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  v34 = v21;
  v35 = *(v21 + 16);
  v35(v26, v33, v20);
  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_26629C000, v36, v37, "SiriKitTaskLoggingProvider#submitMetric Submitting metrics", v38, 2u);
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  v39 = *(v34 + 8);
  v102 = v34 + 8;
  v99 = v39;
  v39(v26, v20);
  v125 = sub_266329994();
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  sub_266466830(&aBlock);

  type metadata accessor for AdditionalPlaybackContext(0);
  v40 = swift_dynamicCast();
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v103 = v138;
  }

  else
  {
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v44 = sub_2664DF0D8();
    (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = v41;
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    v103 = v42;
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  }

  v45 = v24;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v124 = sub_2664DFAA8();
    v47 = v46;

    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_15:
      sub_2664DF4C8();

      v123 = sub_2664DE7C8();
      v49 = v48;

      goto LABEL_18;
    }
  }

  else
  {
    v124 = 0;
    v47 = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_15;
    }
  }

  v123 = 0;
  v49 = 0;
LABEL_18:
  v35(v24, v33, v20);

  v50 = sub_2664DFE18();
  v51 = sub_2664E06E8();

  v52 = os_log_type_enabled(v50, v51);
  v100 = v47;
  v98 = v49;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v138 = v54;
    *v53 = 136446466;
    aBlock = v124;
    v133 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v55 = sub_2664E0318();
    v57 = v45;
    v58 = sub_2662A320C(v55, v56, &v138);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2082;
    aBlock = v123;
    v133 = v49;

    v59 = sub_2664E0318();
    v61 = sub_2662A320C(v59, v60, &v138);

    *(v53 + 14) = v61;
    _os_log_impl(&dword_26629C000, v50, v51, "SiriKitTaskLoggingProvider#submit (app) using interactionId: '%{public}s' and taskId: '%{public}s'", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    v62 = v57;
  }

  else
  {

    v62 = v24;
  }

  v99(v62, v20);
  v63 = v112;
  v64 = v130;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v65 = v64[15];
    v66 = v64[16];
    __swift_project_boxed_opaque_existential_1(v64 + 12, v65);
    (*(v66 + 8))(v63, v65, v66);
  }

  LODWORD(v99) = a9;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v102 = qword_280F90D38;
  v67 = v105;
  sub_2664E00C8();
  sub_2664E0138();
  v68 = *(v131 + 8);
  v131 += 8;
  v112 = v68;
  v68(v67, v128);
  sub_2662A7224(v63, v126, &qword_280072A98, &unk_2664E58C0);
  v69 = v111;
  sub_2662A7224(v101, v111, &qword_280072AA0, &qword_2664E9EA0);
  v70 = (*(v106 + 80) + 49) & ~*(v106 + 80);
  v71 = (v107 + *(v108 + 80) + v70) & ~*(v108 + 80);
  v72 = (v109 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v79 = v129;
  v78 = v130;
  *(v77 + 16) = v125;
  *(v77 + 24) = v78;
  v80 = v113;
  *(v77 + 32) = v79;
  *(v77 + 40) = v80;
  *(v77 + 48) = v99 & 1;
  sub_266319B8C(v126, v77 + v70, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v69, v77 + v71, &qword_280072AA0, &qword_2664E9EA0);
  *(v77 + v72) = v116;
  v81 = (v77 + v73);
  v82 = v110;
  *v81 = v104;
  v81[1] = v82;
  v83 = (v77 + v74);
  v84 = v115;
  *v83 = v114;
  v83[1] = v84;
  v85 = (v77 + v75);
  v86 = v100;
  *v85 = v124;
  v85[1] = v86;
  v87 = (v77 + v76);
  v88 = v98;
  *v87 = v123;
  v87[1] = v88;
  *(v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8)) = v103;
  v136 = sub_266329C84;
  v137 = v77;
  aBlock = MEMORY[0x277D85DD0];
  v133 = 1107296256;
  v134 = sub_2662A3F90;
  v135 = &block_descriptor_9;
  v89 = _Block_copy(&aBlock);

  v90 = v125;

  v91 = v129;

  v92 = v117;
  sub_2664E0068();
  v138 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v93 = v119;
  v94 = v122;
  sub_2664E0A08();
  v95 = v127;
  MEMORY[0x2667837B0](v127, v92, v93, v89);
  _Block_release(v89);

  (*(v121 + 8))(v93, v94);
  (*(v118 + 8))(v92, v120);
  v112(v95, v128);
}

uint64_t sub_266320854(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(_BYTE *, uint64_t))
{
  v112 = a8;
  v114 = a7;
  v113 = a6;
  v101 = a5;
  v110 = a3;
  v128 = a2;
  v115 = a1;
  v14 = sub_2664E0038();
  v120 = *(v14 - 8);
  v121 = v14;
  MEMORY[0x28223BE20](v14);
  v118 = &v94[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = sub_2664E00B8();
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v94[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v107 = *(v17 - 8);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v109 = &v94[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v105 = *(v19 - 8);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v125 = &v94[-v20];
  v127 = sub_2664E00E8();
  v130 = *(v127 - 8);
  v21 = MEMORY[0x28223BE20](v127);
  v103 = &v94[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v126 = &v94[-v23];
  v24 = sub_2664DFE38();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v94[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v29 = &v94[-v28];
  if (a4)
  {
    v30 = [a4 catId];
    v104 = sub_2664E02C8();
    v111 = v31;
  }

  else
  {
    v104 = 0;
    v111 = 0;
  }

  v129 = v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v24, qword_280F914F0);
  swift_beginAccess();
  v33 = *(v25 + 16);
  v33(v29, v32, v24);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26629C000, v34, v35, "SiriKitTaskLoggingProvider#submitMetric Submitting metrics", v36, 2u);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  v98 = *(v25 + 8);
  v98(v29, v24);
  v124 = sub_266329994();
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  sub_266466830(&aBlock);

  type metadata accessor for AdditionalPlaybackContext(0);
  v37 = swift_dynamicCast();
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v102 = v137;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_12:
      sub_2664DF4D8();

      v39 = sub_2664DFAA8();
      v41 = v40;

      goto LABEL_15;
    }
  }

  else
  {
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v44 = sub_2664DF0D8();
    (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = v38;
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    v102 = v42;
    *(v42 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_12;
    }
  }

  v39 = 0;
  v41 = 0;
LABEL_15:
  v45 = v24;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4C8();

    v122 = sub_2664DE7C8();
    v47 = v46;
  }

  else
  {
    v122 = 0;
    v47 = 0;
  }

  v33(v123, v32, v45);

  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();

  v50 = os_log_type_enabled(v48, v49);
  v100 = v39;
  v99 = v41;
  v97 = v47;
  if (v50)
  {
    v51 = v41;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v137 = v53;
    *v52 = 136446466;
    aBlock = v39;
    v132 = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v54 = sub_2664E0318();
    v56 = sub_2662A320C(v54, v55, &v137);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2082;
    aBlock = v122;
    v132 = v47;

    v57 = sub_2664E0318();
    v59 = sub_2662A320C(v57, v58, &v137);

    *(v52 + 14) = v59;
    _os_log_impl(&dword_26629C000, v48, v49, "SiriKitTaskLoggingProvider#submit (app) using interactionId: '%{public}s' and taskId: '%{public}s'", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v52, -1, -1);
  }

  v98(v123, v45);
  v60 = v110;
  v61 = v129;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v62 = v61[15];
    v63 = v61[16];
    __swift_project_boxed_opaque_existential_1(v61 + 12, v62);
    (*(v63 + 8))(v60, v62, v63);
  }

  v98 = a12;
  v96 = a11;
  v95 = a9;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v110 = qword_280F90D38;
  v64 = v103;
  sub_2664E00C8();
  sub_2664E0138();
  v65 = *(v130 + 8);
  v130 += 8;
  v123 = v65;
  (v65)(v64, v127);
  sub_2662A7224(v60, v125, &qword_280072A98, &unk_2664E58C0);
  v66 = v109;
  sub_2662A7224(v101, v109, &qword_280072AA0, &qword_2664E9EA0);
  v67 = (*(v105 + 80) + 49) & ~*(v105 + 80);
  v68 = (v106 + *(v107 + 80) + v67) & ~*(v107 + 80);
  v69 = (v108 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v76 = v128;
  v75 = v129;
  *(v74 + 16) = v124;
  *(v74 + 24) = v75;
  v77 = v112;
  *(v74 + 32) = v76;
  *(v74 + 40) = v77;
  *(v74 + 48) = v95 & 1;
  sub_266319B8C(v125, v74 + v67, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v66, v74 + v68, &qword_280072AA0, &qword_2664E9EA0);
  *(v74 + v69) = v115;
  v78 = (v74 + v70);
  v79 = v111;
  *v78 = v104;
  v78[1] = v79;
  v80 = (v74 + v71);
  v81 = v114;
  *v80 = v113;
  v80[1] = v81;
  v82 = (v74 + v72);
  v83 = v99;
  *v82 = v100;
  v82[1] = v83;
  v84 = (v74 + v73);
  v85 = v97;
  *v84 = v122;
  v84[1] = v85;
  *(v74 + ((v73 + 23) & 0xFFFFFFFFFFFFFFF8)) = v102;
  v135 = v96;
  v136 = v74;
  aBlock = MEMORY[0x277D85DD0];
  v132 = 1107296256;
  v133 = sub_2662A3F90;
  v134 = v98;
  v86 = _Block_copy(&aBlock);

  v87 = v124;

  v88 = v128;

  v89 = v116;
  sub_2664E0068();
  v137 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v90 = v118;
  v91 = v121;
  sub_2664E0A08();
  v92 = v126;
  MEMORY[0x2667837B0](v126, v89, v90, v86);
  _Block_release(v86);

  (*(v120 + 8))(v90, v91);
  (*(v117 + 8))(v89, v119);
  (v123)(v92, v127);
}

uint64_t sub_266321590(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21[-v13];
  v22 = *a1;
  sub_2662A7224(a3, &v21[-v13], &qword_280072AA8, &qword_2664E58D0);
  v15 = sub_2664DEAB8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2662A9238(v14, &qword_280072AA8, &qword_2664E58D0);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = sub_2664DEAA8();
    v18 = v19;
    (*(v16 + 8))(v14, v15);
  }

  sub_2663217FC(&v22, a2, v17, v18, a4, a5, a6);
}

uint64_t sub_266321734(char *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *a1;
  if (a3)
  {
    v9 = a2;
    v10 = [a3 catId];
    v11 = sub_2664E02C8();
    v13 = v12;

    a2 = v9;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_2663217FC(&v15, a2, v11, v13, a4, a5, a6);
}

uint64_t sub_2663217FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v96 = a7;
  v95 = a6;
  v83 = a5;
  v97 = a4;
  v94 = a3;
  v93 = a2;
  v8 = sub_2664E0038();
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x28223BE20](v8);
  v100 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2664E00B8();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v90 = *(v11 - 8);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v87 = *(v13 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v89 = &v80 - v14;
  v15 = sub_2664E00E8();
  v16 = *(v15 - 8);
  v109 = v15;
  v110 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v108 = &v80 - v19;
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v80 - v25;
  v86 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  v28 = *(v21 + 16);
  v28(v26, v27, v20);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v24;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "SiriKitTaskLoggingProvider#submit Submitting metrics", v32, 2u);
    v33 = v32;
    v24 = v31;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v81 = *(v21 + 8);
  v81(v26, v20);
  v107 = sub_266329994();
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v34 = sub_2664DFAA8();
    v106 = v35;

    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_7:
      sub_2664DF4C8();

      v104 = sub_2664DE7C8();
      v37 = v36;

      goto LABEL_10;
    }
  }

  else
  {
    v34 = 0;
    v106 = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_7;
    }
  }

  v104 = 0;
  v37 = 0;
LABEL_10:
  v38 = v106;
  v28(v24, v27, v20);

  v39 = sub_2664DFE18();
  v40 = sub_2664E06E8();

  v41 = os_log_type_enabled(v39, v40);
  v84 = v34;
  v82 = v37;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v80 = v24;
    v43 = v42;
    v44 = swift_slowAlloc();
    v111 = v44;
    aBlock = v34;
    *v43 = 136446466;
    v113 = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v45 = sub_2664E0318();
    v47 = sub_2662A320C(v45, v46, &v111);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    aBlock = v104;
    v113 = v37;

    v48 = sub_2664E0318();
    v50 = sub_2662A320C(v48, v49, &v111);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_26629C000, v39, v40, "SiriKitTaskLoggingProvider#submit (typeof) using interactionId: '%{public}s' and taskId: '%{public}s'", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);

    v51 = v80;
  }

  else
  {

    v51 = v24;
  }

  v81(v51, v20);
  v52 = v93;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v53 = v105[15];
    v54 = v105[16];
    __swift_project_boxed_opaque_existential_1(v105 + 12, v53);
    (*(v54 + 8))(v52, v53, v54);
  }

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v80 = qword_280F90D38;
  v55 = v85;
  sub_2664E00C8();
  sub_2664E0138();
  v56 = *(v110 + 8);
  v110 += 8;
  v81 = v56;
  v56(v55, v109);
  v57 = v89;
  sub_2662A7224(v52, v89, &qword_280072A98, &unk_2664E58C0);
  v58 = v92;
  sub_2662A7224(v83, v92, &qword_280072AA0, &qword_2664E9EA0);
  v59 = (*(v87 + 80) + 40) & ~*(v87 + 80);
  v60 = (v88 + *(v90 + 80) + v59) & ~*(v90 + 80);
  v61 = (v91 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  *(v64 + 16) = v105;
  *(v64 + 24) = v86;
  *(v64 + 32) = v107;
  sub_266319B8C(v57, v64 + v59, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v58, v64 + v60, &qword_280072AA0, &qword_2664E9EA0);
  v65 = (v64 + v61);
  v66 = v97;
  *v65 = v94;
  v65[1] = v66;
  v67 = (v64 + v62);
  v68 = v96;
  *v67 = v95;
  v67[1] = v68;
  v69 = (v64 + v63);
  v70 = v106;
  *v69 = v84;
  v69[1] = v70;
  v71 = (v64 + ((v63 + 23) & 0xFFFFFFFFFFFFFFF8));
  v72 = v82;
  *v71 = v104;
  v71[1] = v72;
  v116 = sub_26632BA98;
  v117 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v113 = 1107296256;
  v114 = sub_2662A3F90;
  v115 = &block_descriptor_64;
  v73 = _Block_copy(&aBlock);

  v74 = v107;

  v75 = v98;
  sub_2664E0068();
  v111 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v76 = v100;
  v77 = v103;
  sub_2664E0A08();
  v78 = v108;
  MEMORY[0x2667837B0](v108, v75, v76, v73);
  _Block_release(v73);

  (*(v102 + 8))(v76, v77);
  (*(v99 + 8))(v75, v101);
  v81(v78, v109);
}

uint64_t sub_266322328(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v166 = a8;
  v176 = a7;
  v172 = a6;
  v163 = a5;
  v161 = a4;
  v167 = a3;
  v169 = a1;
  v165 = sub_2664DEA08();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v160 = *(v15 - 8);
  v16 = *(v160 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v155 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v186 = &v150 - v19;
  MEMORY[0x28223BE20](v18);
  v162 = &v150 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v159 = *(v21 - 8);
  v22 = *(v159 + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v157 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v152 = &v150 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v150 - v27;
  MEMORY[0x28223BE20](v26);
  v175 = &v150 - v29;
  v173 = sub_2664DE4A8();
  v30 = *(v173 - 1);
  MEMORY[0x28223BE20](v173);
  v32 = &v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2664DFE38();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v158 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v154 = &v150 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v153 = &v150 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v151 = &v150 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v150 - v43;
  v174 = a2;
  LOBYTE(v189) = a2;
  v182 = sub_26632A4E8(0, &v189);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v33, qword_280F914F0);
  swift_beginAccess();
  v46 = v34;
  v47 = *(v34 + 16);
  v179 = v45;
  v178 = v34 + 16;
  v177 = v47;
  v47(v44, v45, v33);
  v48 = sub_2664DFE18();
  v49 = sub_2664E06C8();
  v50 = os_log_type_enabled(v48, v49);
  v181 = v33;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    *(v51 + 4) = v182;
    _os_log_impl(&dword_26629C000, v48, v49, "SiriKitTaskLoggingProvider#submit flowTaskType established %d", v51, 8u);
    v52 = v51;
    v33 = v181;
    MEMORY[0x266784AD0](v52, -1, -1);
  }

  v183 = a13;
  v171 = a12;
  v184 = a11;
  v170 = a10;
  v185 = a9;

  v53 = *(v46 + 8);
  v168 = v46 + 8;
  v180 = v53;
  v53(v44, v33);
  v54 = v167;
  if (v167)
  {
    sub_2664DE498();
    v55 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v56 = sub_2664DE478();
    v57 = [v55 initWithNSUUID_];

    v58 = *(v30 + 8);
    v58(v32, v173);
    [v54 setLinkId_];

    v59 = [v54 radioStationContext];
    if (v59)
    {
      v60 = v59;
      sub_2664DE498();
      v61 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v62 = sub_2664DE478();
      v63 = [v61 initWithNSUUID_];

      v58(v32, v173);
      [v60 &selRef:v63 activateWithCompletion:?];
    }
  }

  v64 = v175;
  sub_2662A7224(v161, v175, &qword_280072A98, &unk_2664E58C0);
  v65 = v162;
  sub_2662A7224(v163, v162, &qword_280072AA0, &qword_2664E9EA0);
  v173 = v28;
  sub_2662A7224(v64, v28, &qword_280072A98, &unk_2664E58C0);
  sub_2662A7224(v65, v186, &qword_280072AA0, &qword_2664E9EA0);
  v66 = (*(v159 + 80) + 17) & ~*(v159 + 80);
  v67 = (v22 + *(v160 + 80) + v66) & ~*(v160 + 80);
  v68 = (v16 + v67 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v69 = (v68 + 11) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v174;
  sub_266319B8C(v175, v74 + v66, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v65, v74 + v67, &qword_280072AA0, &qword_2664E9EA0);
  *(v74 + v68) = v182;
  v75 = (v74 + v69);
  v76 = v176;
  *v75 = v172;
  v75[1] = v76;
  v77 = (v74 + v70);
  v78 = v166;
  v80 = v184;
  v79 = v185;
  *v77 = v166;
  v77[1] = v79;
  v81 = (v74 + v71);
  *v81 = v170;
  v81[1] = v80;
  v82 = (v74 + v72);
  v83 = v183;
  *v82 = v171;
  v82[1] = v83;
  v84 = v169;
  v175 = v74;
  *(v74 + v73) = v169;
  v85 = qword_280F90B20;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if (v85 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v189);
  v86 = v190;
  v87 = v191;
  __swift_project_boxed_opaque_existential_1(&v189, v190);
  v88 = (v87[2])(v86, v87);
  v90 = v89;
  __swift_destroy_boxed_opaque_existential_1Tm(&v189);
  v91 = type metadata accessor for AirPlayRouteProvider();
  v92 = swift_allocObject();
  type metadata accessor for AirPlayRouteSetupContext();
  v93 = static AirPlayRouteSetupContext.shared(refId:)(v88, v90);

  *(v92 + 16) = v93;
  v190 = v91;
  v191 = &protocol witness table for AirPlayRouteProvider;
  v189 = v92;
  v94 = objc_allocWithZone(MEMORY[0x277D57520]);

  v95 = [v94 init];
  v96 = v181;
  v163 = v92;
  if (v95)
  {
    v97 = v95;
    v98 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v98)
    {
      v99 = v98;
      v100 = v151;
      if (v167)
      {
        v101 = v167;
        if (_s16SiriAudioSupport34MediaPlayerPlaybackContextProviderC10isNotEmpty08playbackG0SbSo019FLOWSchemaFLOWMediaefG0C_tFZ_0(v101))
        {
          [v99 setMediaPlayerPlaybackContext_];

LABEL_29:
          [v99 setMediaType_];
          [v99 clearActiveSubscriptions];
          [v99 setTaskType_];
          v115 = v84[5];
          v116 = v84[6];
          __swift_project_boxed_opaque_existential_1(v84 + 2, v115);
          sub_2662A5550(&v189, &v187);
          v117 = swift_allocObject();
          v117[2] = v99;
          v117[3] = 0;
          sub_2662A8618(&v187, (v117 + 4));
          v117[9] = v97;
          v117[10] = sub_26632BBF0;
          v117[11] = v175;
          v118 = *(v116 + 16);
          v119 = v99;
          v120 = v97;

          v118(0, sub_2662AB530, v117, v115, v116);

          goto LABEL_47;
        }
      }

      v177(v100, v179, v96);
      v112 = sub_2664DFE18();
      v113 = sub_2664E06D8();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_26629C000, v112, v113, "SiriKitTaskLoggingProvider#createFLOWDomainContext mediaPlayerPlaybackContext empty, not attaching to mediaPlayerContext", v114, 2u);
        MEMORY[0x266784AD0](v114, -1, -1);
      }

      v180(v100, v96);
      goto LABEL_29;
    }
  }

  v102 = v153;
  v177(v153, v179, v96);
  v103 = sub_2664DFE18();
  v104 = sub_2664E06D8();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&dword_26629C000, v103, v104, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v105, 2u);
    MEMORY[0x266784AD0](v105, -1, -1);
  }

  v180(v102, v96);
  if (v174 > 1u || v174)
  {
    v107 = sub_2664E0D88();

    v106 = v173;
    if (v107)
    {
      goto LABEL_22;
    }

    if (v174 == 1)
    {
      v108 = v76;
      v111 = v173;

      v106 = v111;
      v109 = v169;
LABEL_32:
      v110 = v164;
      v78 = v166;
      goto LABEL_33;
    }

    v121 = sub_2664E0D88();

    if (v121)
    {
      v108 = v76;
      v109 = v169;
      v106 = v173;
      goto LABEL_32;
    }

    v148 = v173;
    if (v174 <= 1u)
    {
      v108 = v76;
    }

    else
    {
      v108 = v76;
      if (v174 == 2)
      {

        v109 = v169;
        v110 = v164;
        v78 = v166;
        v122 = v152;
        v123 = v165;
        goto LABEL_55;
      }
    }

    v109 = v169;
    v110 = v164;
    v122 = v152;
    v123 = v165;
    v149 = sub_2664E0D88();

    v78 = v166;
    if ((v149 & 1) == 0)
    {
      v106 = v148;
      goto LABEL_34;
    }

LABEL_55:
    v106 = v148;
    goto LABEL_34;
  }

  v106 = v173;
LABEL_22:
  v108 = v76;
  v109 = v169;
  v110 = v164;
LABEL_33:
  v122 = v152;
  v123 = v165;
LABEL_34:
  sub_2662A7224(v106, v122, &qword_280072A98, &unk_2664E58C0);
  v124 = *(v110 + 48);
  if (v124(v122, 1, v123) == 1)
  {
    (*(v110 + 104))(v156, *MEMORY[0x277D5BBE8], v123);
    if (v124(v122, 1, v123) != 1)
    {
      sub_2662A9238(v122, &qword_280072A98, &unk_2664E58C0);
    }
  }

  else
  {
    (*(v110 + 32))(v156, v122, v123);
  }

  sub_2664DE8D8();
  sub_2662A7224(v186, v155, &qword_280072AA0, &qword_2664E9EA0);
  v125 = swift_allocObject();
  *(v125 + 16) = v182;
  v126 = v172;
  *(v125 + 24) = 0;
  *(v125 + 32) = v126;
  *(v125 + 40) = v108;
  *(v125 + 48) = v78;
  v127 = v184;
  v128 = v170;
  *(v125 + 56) = v185;
  *(v125 + 64) = v128;
  v129 = v171;
  *(v125 + 72) = v127;
  *(v125 + 80) = v129;
  *(v125 + 88) = v183;

  sub_2664DE888();
  v130 = v154;
  v131 = v181;
  v177(v154, v179, v181);
  v132 = sub_2664DFE18();
  v133 = sub_2664E06C8();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_26629C000, v132, v133, "SiriKitTaskLoggingProvider#submit siriKitEvent created", v134, 2u);
    MEMORY[0x266784AD0](v134, -1, -1);
  }

  v180(v130, v131);
  v135 = v157;
  (*(v164 + 56))(v157, 1, 1, v165);
  v136 = v158;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v137 = v109[15];
    v138 = v109[16];
    __swift_project_boxed_opaque_existential_1(v109 + 12, v137);
    (*(v138 + 8))(v135, v137, v138);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(&v187, v188);
  sub_2664DE7E8();
  sub_2662A9238(v135, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(&v187);
  v177(v136, v179, v131);

  v139 = sub_2664DFE18();
  v140 = sub_2664E06C8();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v187 = v142;
    *v141 = 136315138;
    v143 = sub_2664DE898();
    v145 = v131;
    v146 = sub_2662A320C(v143, v144, &v187);

    *(v141 + 4) = v146;
    _os_log_impl(&dword_26629C000, v139, v140, "SiriKitTaskLoggingProvider#submit siriKitEvent sent %s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    MEMORY[0x266784AD0](v142, -1, -1);
    MEMORY[0x266784AD0](v141, -1, -1);

    v180(v158, v145);
  }

  else
  {

    v180(v136, v131);
  }

LABEL_47:
  __swift_destroy_boxed_opaque_existential_1Tm(&v189);

  sub_2662A9238(v173, &qword_280072A98, &unk_2664E58C0);
  sub_2662A9238(v186, &qword_280072AA0, &qword_2664E9EA0);
}

uint64_t sub_26632390C(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v72 = a6;
  v73 = a8;
  v71 = a5;
  v70 = a4;
  v74 = a1;
  v17 = sub_2664DFE38();
  v82 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v77 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v80 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v64 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v81 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  v79 = sub_2664DEA08();
  v28 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = v17;
  v75 = a7;
  v68 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_20;
  }

  v30 = sub_2664E0D88();

  if (v30)
  {
    goto LABEL_3;
  }

  if (a2 == 1)
  {
    goto LABEL_20;
  }

  v63 = sub_2664E0D88();

  if ((v63 & 1) == 0)
  {
    if (a2 == 2)
    {
LABEL_20:

      goto LABEL_3;
    }

    sub_2664E0D88();
  }

LABEL_3:
  v67 = a13;
  v66 = a12;
  v65 = a10;
  sub_2662A7224(a3, v27, &qword_280072A98, &unk_2664E58C0);
  v31 = *(v28 + 48);
  v32 = v79;
  v33 = v31(v27, 1, v79);
  v76 = v28;
  if (v33 == 1)
  {
    (*(v28 + 104))(v68, *MEMORY[0x277D5BBE8], v32);
    if (v31(v27, 1, v32) != 1)
    {
      sub_2662A9238(v27, &qword_280072A98, &unk_2664E58C0);
    }
  }

  else
  {
    (*(v28 + 32))(v68, v27, v32);
  }

  sub_2664DE8D8();
  sub_2662A7224(v70, v69, &qword_280072AA0, &qword_2664E9EA0);
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  v36 = v74;
  v35 = v75;
  v38 = v72;
  v37 = v73;
  *(v34 + 24) = v74;
  *(v34 + 32) = v38;
  *(v34 + 40) = v35;
  *(v34 + 48) = v37;
  v39 = v65;
  *(v34 + 56) = a9;
  *(v34 + 64) = v39;
  v40 = v66;
  *(v34 + 72) = a11;
  *(v34 + 80) = v40;
  *(v34 + 88) = v67;

  v41 = v36;

  sub_2664DE888();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = v78;
  v43 = __swift_project_value_buffer(v78, qword_280F914F0);
  swift_beginAccess();
  v44 = *(v82 + 16);
  v44(v80, v43, v42);
  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_26629C000, v45, v46, "SiriKitTaskLoggingProvider#submit siriKitEvent created", v47, 2u);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  v48 = *(v82 + 8);
  v82 += 8;
  v48(v80, v42);
  (*(v76 + 56))(v81, 1, 1, v79);
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  v49 = v77;
  if (byte_280F91488 == 1)
  {
    v50 = a14[15];
    v51 = a14[16];
    __swift_project_boxed_opaque_existential_1(a14 + 12, v50);
    (*(v51 + 8))(v81, v50, v51);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  sub_2664DE7E8();
  sub_2662A9238(v81, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  v44(v49, v43, v42);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83[0] = v55;
    *v54 = 136315138;
    v56 = sub_2664DE898();
    v58 = v42;
    v59 = sub_2662A320C(v56, v57, v83);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_26629C000, v52, v53, "SiriKitTaskLoggingProvider#submit siriKitEvent sent %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);

    v60 = v49;
    v61 = v58;
  }

  else
  {

    v60 = v49;
    v61 = v42;
  }

  return (v48)(v60, v61);
}

uint64_t sub_266324324(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_2664E08A8();
  sub_2664DE878();
  v12 = a3;
  sub_2664DE828();

  sub_2664DE818();

  sub_2664DE848();

  sub_2664DE838();

  return sub_2664DE868();
}

uint64_t sub_2663243EC(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v106 = a8;
  v105 = a7;
  v95 = a6;
  v108 = a5;
  v104 = a4;
  v103 = a3;
  v121 = a2;
  v107 = a1;
  v10 = sub_2664E0038();
  v113 = *(v10 - 8);
  v114 = v10;
  MEMORY[0x28223BE20](v10);
  v111 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2664E00B8();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v100 = *(v13 - 8);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v98 = *(v15 - 8);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = &v89 - v16;
  v120 = sub_2664E00E8();
  v123 = *(v120 - 8);
  v17 = MEMORY[0x28223BE20](v120);
  v97 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v119 = &v89 - v19;
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v89 - v25;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  v28 = *(v21 + 16);
  v28(v26, v27, v20);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "SiriKitTaskLoggingProvider#submitMetric Submitting metrics", v31, 2u);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v93 = *(v21 + 8);
  v93(v26, v20);
  v117 = sub_266329994();
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  sub_266466830(&aBlock);

  type metadata accessor for AdditionalPlaybackContext(0);
  v32 = swift_dynamicCast();
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v96 = v130;
  }

  else
  {
    v34 = swift_allocObject();
    v35 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v36 = sub_2664DF0D8();
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
    *(v34 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = v33;
    *(v34 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    v96 = v34;
    *(v34 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  }

  v37 = v24;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v116 = sub_2664DFAA8();
    v39 = v38;

    if (static SiriEnvironmentWrapper.retrieve()())
    {
LABEL_12:
      sub_2664DF4C8();

      v115 = sub_2664DE7C8();
      v41 = v40;

      goto LABEL_15;
    }
  }

  else
  {
    v116 = 0;
    v39 = 0;
    if (static SiriEnvironmentWrapper.retrieve()())
    {
      goto LABEL_12;
    }
  }

  v115 = 0;
  v41 = 0;
LABEL_15:
  v28(v37, v27, v20);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();

  v44 = os_log_type_enabled(v42, v43);
  v94 = v39;
  v92 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v39;
    v48 = v46;
    v130 = v46;
    *v45 = 136446466;
    aBlock = v116;
    v125 = v47;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v49 = sub_2664E0318();
    v91 = v37;
    v51 = sub_2662A320C(v49, v50, &v130);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2082;
    aBlock = v115;
    v125 = v41;

    v52 = sub_2664E0318();
    v54 = sub_2662A320C(v52, v53, &v130);

    *(v45 + 14) = v54;
    _os_log_impl(&dword_26629C000, v42, v43, "SiriKitTaskLoggingProvider#submit (app) using interactionId: '%{public}s' and taskId: '%{public}s'", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);

    v55 = v91;
  }

  else
  {

    v55 = v37;
  }

  v93(v55, v20);
  v56 = v103;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v57 = v122[15];
    v58 = v122[16];
    __swift_project_boxed_opaque_existential_1(v122 + 12, v57);
    (*(v58 + 8))(v56, v57, v58);
  }

  LODWORD(v91) = a10;
  v90 = a9;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v93 = qword_280F90D38;
  v59 = v97;
  sub_2664E00C8();
  sub_2664E0138();
  v60 = *(v123 + 8);
  v123 += 8;
  v103 = v60;
  v60(v59, v120);
  sub_2662A7224(v56, v118, &qword_280072A98, &unk_2664E58C0);
  v61 = v102;
  sub_2662A7224(v95, v102, &qword_280072AA0, &qword_2664E9EA0);
  v62 = (*(v98 + 80) + 49) & ~*(v98 + 80);
  v63 = (v99 + *(v100 + 80) + v62) & ~*(v100 + 80);
  v64 = (v101 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v71 = v121;
  v70 = v122;
  *(v69 + 16) = v117;
  *(v69 + 24) = v70;
  v72 = v90;
  *(v69 + 32) = v71;
  *(v69 + 40) = v72;
  *(v69 + 48) = v91 & 1;
  sub_266319B8C(v118, v69 + v62, &qword_280072A98, &unk_2664E58C0);
  sub_266319B8C(v61, v69 + v63, &qword_280072AA0, &qword_2664E9EA0);
  *(v69 + v64) = v107;
  v73 = (v69 + v65);
  v74 = v108;
  *v73 = v104;
  v73[1] = v74;
  v75 = (v69 + v66);
  v76 = v106;
  *v75 = v105;
  v75[1] = v76;
  v77 = (v69 + v67);
  v78 = v94;
  *v77 = v116;
  v77[1] = v78;
  v79 = (v69 + v68);
  v80 = v92;
  *v79 = v115;
  v79[1] = v80;
  *(v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8)) = v96;
  v128 = sub_26632C278;
  v129 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v125 = 1107296256;
  v126 = sub_2662A3F90;
  v127 = &block_descriptor_98;
  v81 = _Block_copy(&aBlock);

  v82 = v117;

  v83 = v121;

  v84 = v109;
  sub_2664E0068();
  v130 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v85 = v111;
  v86 = v114;
  sub_2664E0A08();
  v87 = v119;
  MEMORY[0x2667837B0](v119, v84, v85, v81);
  _Block_release(v81);

  (*(v113 + 8))(v85, v86);
  (*(v110 + 8))(v84, v112);
  v103(v87, v120);
}

uint64_t sub_2663250BC(void *a1, void (*a2)(char *, uint64_t), void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v138 = a4;
  v139 = a5;
  v135 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  MEMORY[0x28223BE20](v9 - 8);
  v140 = &v128 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v128 - v12;
  v14 = sub_2664DF0D8();
  v136 = *(v14 - 8);
  v137 = v14;
  MEMORY[0x28223BE20](v14);
  v134 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2664DFE38();
  v16 = *(v142 - 8);
  v17 = MEMORY[0x28223BE20](v142);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v128 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v128 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v128 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v29);
  v32 = &v128 - v31;
  if (a3)
  {
    if (a6)
    {
      v131 = v30;
      v133 = v16;
      v33 = objc_allocWithZone(MEMORY[0x277D57640]);
      v132 = a6;

      v34 = a3;
      v35 = [v33 init];
      if (v35)
      {
        v36 = v35;
        v37 = [a1 title];
        if (v37)
        {
          v38 = v37;
          v130 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
          if (v130)
          {
            [v36 setContentTitle_];

            [v36 setLinkId_];
            v39 = [a1 identifier];
            [v36 setAdamIdString_];

            v40 = v132;
            [v36 setIsNlsResult_];
            [v36 setIsNlsContainerResult_];
            sub_26632693C(v40, v135);
            sub_2662C1744(0, &qword_280072AD8, 0x277D57630);
            v41 = sub_2664E0488();

            [v36 setSearchResults_];

            v42 = v133;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v43 = v142;
            v44 = __swift_project_value_buffer(v142, qword_280F914F0);
            swift_beginAccess();
            v129 = *(v42 + 16);
            v129(v32, v44, v43);
            v45 = v36;
            v46 = sub_2664DFE18();
            v47 = sub_2664E06C8();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 67109376;
              *(v48 + 4) = [v45 isNlsResult];
              *(v48 + 8) = 1024;
              *(v48 + 10) = [v45 isNlsContainerResult];

              _os_log_impl(&dword_26629C000, v46, v47, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 setting nls: %{BOOL}d nlsContainer: %{BOOL}d", v48, 0xEu);
              MEMORY[0x266784AD0](v48, -1, -1);
            }

            else
            {

              v46 = v45;
            }

            v82 = v142;
            v135 = *(v42 + 8);
            v133 = v42 + 8;
            v135(v32, v142);
            v83 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
            v84 = v132;
            swift_beginAccess();
            sub_2662A7224(v84 + v83, v13, &qword_280072850, &qword_2664EDE70);
            v85 = v136;
            v86 = v137;
            if ((*(v136 + 48))(v13, 1, v137) == 1)
            {
              sub_2662A9238(v13, &qword_280072850, &qword_2664EDE70);
            }

            else
            {
              v87 = v34;
              v88 = v134;
              (*(v85 + 32))(v134, v13, v86);
              v89 = sub_26632AFB8();
              v91 = v85;
              if (v89)
              {
                v92 = v89;
                v93 = v90;
                [v45 setU2UsoGraph:v89];
                [v45 setU2UsoGraphTier1:v93];
              }

              (*(v91 + 8))(v88, v86);
              v34 = v87;
            }

            [v130 setMediaPlayerPlaybackContextTier1_];
            v94 = v131;
            v129(v131, v44, v82);
            v95 = v45;
            v96 = sub_2664DFE18();
            v97 = sub_2664E06C8();

            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v143 = v99;
              *v98 = 136315394;
              v100 = [v95 contentTitle];
              if (v100)
              {
                v101 = v100;
                v102 = sub_2664E02C8();
                v104 = v103;
              }

              else
              {
                v102 = 0;
                v104 = 0;
              }

              v144 = v102;
              v145 = v104;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
              v108 = sub_2664E0318();
              v110 = sub_2662A320C(v108, v109, &v143);

              *(v98 + 4) = v110;
              *(v98 + 12) = 2080;
              v111 = [v95 adamIdString];
              if (v111)
              {
                v112 = v97;
                v113 = v95;
                v114 = v99;
                v115 = v34;
                v116 = v111;
                v117 = sub_2664E02C8();
                v119 = v118;

                v34 = v115;
                v99 = v114;
                v95 = v113;
                v97 = v112;
              }

              else
              {
                v117 = 0;
                v119 = 0;
              }

              v144 = v117;
              v145 = v119;
              v120 = sub_2664E0318();
              v122 = sub_2662A320C(v120, v121, &v143);

              *(v98 + 14) = v122;
              _os_log_impl(&dword_26629C000, v96, v97, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 Logging contentTitle: %s adamIdString: %s", v98, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v99, -1, -1);
              MEMORY[0x266784AD0](v98, -1, -1);

              v105 = v131;
              v106 = v142;
            }

            else
            {

              v105 = v94;
              v106 = v82;
            }

            v135(v105, v106);
            v123 = v140;
            sub_2664DE8D8();

            v124 = v130;
            sub_2664DE8A8();
            v125 = sub_2664DEA08();
            (*(*(v125 - 8) + 56))(v123, 1, 1, v125);
            if (qword_280F91480 != -1)
            {
              swift_once();
            }

            if (byte_280F91488 == 1)
            {
              v126 = v141[15];
              v127 = v141[16];
              __swift_project_boxed_opaque_existential_1(v141 + 12, v126);
              (*(v127 + 8))(v123, v126, v127);
            }

            sub_2664DE7D8();
            __swift_project_boxed_opaque_existential_1(&v144, v146);
            sub_2664DE7E8();

            sub_2662A9238(v123, &qword_280072A98, &unk_2664E58C0);
            return __swift_destroy_boxed_opaque_existential_1Tm(&v144);
          }

          else
          {

            v76 = v133;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v77 = v142;
            v78 = __swift_project_value_buffer(v142, qword_280F914F0);
            swift_beginAccess();
            (*(v76 + 16))(v28, v78, v77);
            v79 = sub_2664DFE18();
            v80 = sub_2664E06D8();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_26629C000, v79, v80, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 unable to create FLOWSchemaFLOWClientEvent", v81, 2u);
              MEMORY[0x266784AD0](v81, -1, -1);
            }

            else
            {
            }

            return (*(v76 + 8))(v28, v77);
          }
        }
      }

      v62 = v34;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v63 = v142;
      v64 = __swift_project_value_buffer(v142, qword_280F914F0);
      swift_beginAccess();
      v65 = v133;
      (*(v133 + 16))(v25, v64, v63);
      v66 = a1;
      v67 = sub_2664DFE18();
      v68 = sub_2664E06D8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v147[0] = v70;
        *v69 = 136315138;
        v71 = [v66 title];
        if (v71)
        {
          v72 = v71;
          v73 = sub_2664E02C8();
          v75 = v74;

          v63 = v142;
        }

        else
        {
          v73 = 0;
          v75 = 0xE000000000000000;
        }

        v107 = sub_2662A320C(v73, v75, v147);

        *(v69 + 4) = v107;
        _os_log_impl(&dword_26629C000, v67, v68, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 unable to create FLOWSchemaFLOWMediaPlayerPlaybackContextTier1 with title: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x266784AD0](v70, -1, -1);
        MEMORY[0x266784AD0](v69, -1, -1);
      }

      else
      {
      }

      return (*(v65 + 8))(v25, v63);
    }

    else
    {
      v55 = qword_280F914E8;
      v56 = a3;
      if (v55 != -1)
      {
        swift_once();
      }

      v57 = v142;
      v58 = __swift_project_value_buffer(v142, qword_280F914F0);
      swift_beginAccess();
      (*(v16 + 16))(v22, v58, v57);
      v59 = sub_2664DFE18();
      v60 = sub_2664E06D8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_26629C000, v59, v60, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 additionalPlaybackContext is null", v61, 2u);
        MEMORY[0x266784AD0](v61, -1, -1);
      }

      else
      {
      }

      return (*(v16 + 8))(v22, v57);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = v142;
    v50 = __swift_project_value_buffer(v142, qword_280F914F0);
    swift_beginAccess();
    (*(v16 + 16))(v19, v50, v49);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06D8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v51, v52, "SiriKitTaskLoggingProvider#emitMediaPlayerPlaybackContextTier1 linkId is null", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    return (*(v16 + 8))(v19, v49);
  }
}

uint64_t sub_266326050(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a4;
  v70 = a5;
  v72 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v65 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  if (a3)
  {
    v68 = v11;
    v25 = objc_allocWithZone(MEMORY[0x277D57658]);
    v71 = a3;
    v26 = [v25 init];
    if (v26)
    {
      v27 = v26;
      v28 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v28 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v29 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
        if (v29)
        {
          v30 = v29;
          v67 = v6;
          v31 = sub_2664E02A8();
          [v27 setStationSeedName_];

          v32 = v71;
          [v27 setLinkId_];
          v66 = v30;
          [v30 setMediaPlayerRadioStationContextTier1_];
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v33 = __swift_project_value_buffer(v12, qword_280F914F0);
          swift_beginAccess();
          (*(v13 + 16))(v24, v33, v12);
          v34 = v32;

          v35 = sub_2664DFE18();
          v36 = sub_2664E06C8();

          v37 = os_log_type_enabled(v35, v36);
          v38 = v68;
          if (v37)
          {
            v39 = v34;
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v65 = v35;
            v42 = v41;
            v71 = swift_slowAlloc();
            v73[0] = v71;
            *v40 = 136315394;
            *(v40 + 4) = sub_2662A320C(v72, a2, v73);
            *(v40 + 12) = 2112;
            *(v40 + 14) = v39;
            *v42 = a3;
            v43 = v39;
            v44 = v65;
            _os_log_impl(&dword_26629C000, v65, v36, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 Logging stationSeedName %s linkId %@", v40, 0x16u);
            sub_2662A9238(v42, &qword_2800734B0, &unk_2664E3670);
            MEMORY[0x266784AD0](v42, -1, -1);
            v45 = v71;
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
            MEMORY[0x266784AD0](v45, -1, -1);
            v46 = v40;
            v34 = v39;
            v38 = v68;
            MEMORY[0x266784AD0](v46, -1, -1);
          }

          else
          {
          }

          (*(v13 + 8))(v24, v12);
          sub_2664DE8D8();

          v61 = v66;
          sub_2664DE8A8();
          v62 = sub_2664DEA08();
          (*(*(v62 - 8) + 56))(v38, 1, 1, v62);
          if (qword_280F91480 != -1)
          {
            swift_once();
          }

          if (byte_280F91488 == 1)
          {
            v63 = v67[15];
            v64 = v67[16];
            __swift_project_boxed_opaque_existential_1(v67 + 12, v63);
            (*(v64 + 8))(v38, v63, v64);
          }

          sub_2664DE7D8();
          __swift_project_boxed_opaque_existential_1(v73, v73[3]);
          sub_2664DE7E8();

          sub_2662A9238(v38, &qword_280072A98, &unk_2664E58C0);
          return __swift_destroy_boxed_opaque_existential_1Tm(v73);
        }

        else
        {
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v57 = __swift_project_value_buffer(v12, qword_280F914F0);
          swift_beginAccess();
          (*(v13 + 16))(v22, v57, v12);
          v58 = sub_2664DFE18();
          v59 = sub_2664E06D8();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_26629C000, v58, v59, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 unable to create FLOWSchemaFLOWClientEvent", v60, 2u);
            MEMORY[0x266784AD0](v60, -1, -1);
          }

          else
          {
          }

          return (*(v13 + 8))(v22, v12);
        }
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v52, v12);

    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v74[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_2662A320C(v72, a2, v74);
      _os_log_impl(&dword_26629C000, v53, v54, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 unable to create FLOWSchemaFLOWMediaPlayerRadioStationContextTier1 with stationSeedName: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    else
    {
    }

    return (*(v13 + 8))(v19, v12);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v47, v12);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "SiriKitTaskLoggingProvider#emitMediaPlayerRadioStationContextTier1 linkId is null", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_26632693C(uint64_t a1, unint64_t a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266783B70](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = v7;
      sub_266326AB0(&v12, a1, &v11);

      if (v11)
      {
        MEMORY[0x266783490]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2664E04C8();
        }

        sub_2664E0518();
        v6 = v13;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

id sub_266326AB0@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [objc_allocWithZone(MEMORY[0x277D57630]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [v10 artist];
    [v12 setArtist_];

    v14 = [v10 title];
    [v12 setTitle_];

    [v12 setMediaType_];
    v15 = [v10 identifier];
    [v12 setEntityId_];

    result = [v10 identifier];
    if (result)
    {
      v17 = result;
      v18 = sub_2664E02C8();
      v20 = v19;

      v21 = *(a2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);
      v28[0] = v18;
      v28[1] = v20;
      MEMORY[0x28223BE20](v22);
      *(&v27 - 2) = v28;

      LOBYTE(v17) = sub_2662AA720(sub_2662AA7CC, (&v27 - 4), v21);

      if (v17)
      {
        result = [v12 setIsAlternative_];
      }
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v9, v23, v6);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "SiriKitTaskLoggingProvider#convertToSearchResults unable to create FLOWSchemaFLOWMediaPlayerMediaItem", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    result = (*(v7 + 8))(v9, v6);
    v12 = 0;
  }

  *a3 = v12;
  return result;
}

void *SiriKitTaskLoggingProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t SiriKitTaskLoggingProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_266326EF4(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = a8;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v22 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  sub_2662A7224(a4, &v21 - v13, &qword_280072AA8, &qword_2664E58D0);
  v15 = sub_2664DEAB8();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2662A9238(v14, &qword_280072AA8, &qword_2664E58D0);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v17 = sub_2664DEAA8();
    v18 = v19;
    (*(v16 + 8))(v14, v15);
  }

  sub_2663243EC(a1, a2, v22, v17, v18, v24, v25, v26, v23, a9 & 1);
}

uint64_t sub_2663270AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA8, &qword_2664E58D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v21 = *a1;
  sub_2662A7224(a3, &v20 - v12, &qword_280072AA8, &qword_2664E58D0);
  v14 = sub_2664DEAB8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2662A9238(v13, &qword_280072AA8, &qword_2664E58D0);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = sub_2664DEAA8();
    v17 = v18;
    (*(v15 + 8))(v13, v14);
  }

  sub_2663217FC(&v21, a2, v16, v17, a4, a5, v20);
}

uint64_t sub_266327250(unsigned __int8 *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *a1;
  if (a3)
  {
    v9 = a2;
    v10 = [a3 catId];
    v11 = sub_2664E02C8();
    v13 = v12;

    a2 = v9;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_2663217FC(&v15, a2, v11, v13, a4, a5, a6);
}

uint64_t sub_26632731C(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a4)
  {
    v20 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a8;
    v15 = [a4 catId];
    v16 = sub_2664E02C8();
    v18 = v17;

    a8 = v14;
    a1 = v20;
    a2 = v12;
    a3 = v13;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_2663243EC(a1, a2, a3, v16, v18, a5, a6, a7, a8, a9 & 1);
}

uint64_t sub_26632740C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v5 = v4[15];
    v6 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 12, v5);
    (*(v6 + 8))(a2, v5, v6);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2664DE7E8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

SiriAudioSupport::AdditionalMetricsDescription::ModuleName_optional __swiftcall AdditionalMetricsDescription.ModuleName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = 0;
  v6 = 22;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
      goto LABEL_35;
    case 21:
      v5 = 21;
LABEL_35:
      v6 = v5;
      break;
    case 22:
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    default:
      v6 = 40;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AdditionalMetricsDescription.ModuleName.rawValue.getter()
{
  result = 1719100270;
  switch(*v0)
  {
    case 1:
      result = 0x7369686D61;
      break;
    case 2:
      result = 0x73766E6D61;
      break;
    case 3:
      result = 1935960429;
      break;
    case 4:
      result = 1935959149;
      break;
    case 5:
      result = 0x7366696363;
      break;
    case 6:
      result = 1935896163;
      break;
    case 7:
      result = 1937143139;
      break;
    case 8:
      result = 1937143140;
      break;
    case 9:
      result = 1936287844;
      break;
    case 0xA:
      result = 1885629808;
      break;
    case 0xB:
      result = 0x7376756D70;
      break;
    case 0xC:
      v2 = 1768451425;
      goto LABEL_27;
    case 0xD:
      v2 = 1986948449;
LABEL_27:
      result = (v2 & 0xFFFF0000FFFFFFFFLL | 0x7300000000) + 15;
      break;
    case 0xE:
      result = 0x7369686D6673;
      break;
    case 0xF:
      result = 0x73766E6D6673;
      break;
    case 0x10:
      result = 0x736968616D75;
      break;
    case 0x11:
      result = 0x73766E616D75;
      break;
    case 0x12:
      result = 1717856609;
      break;
    case 0x13:
      result = 6710369;
      break;
    case 0x14:
      result = 1717988723;
      break;
    case 0x15:
      result = 6842724;
      break;
    case 0x16:
      result = 6713441;
      break;
    case 0x17:
      result = 6714209;
      break;
    case 0x18:
      result = 6711651;
      break;
    case 0x19:
      result = 1718381683;
      break;
    case 0x1A:
      result = 0x7766726D70;
      break;
    case 0x1B:
      result = 0x66726F6D65;
      break;
    case 0x1C:
      result = 0x6670616673;
      break;
    case 0x1D:
      result = 0x6670736E73;
      break;
    case 0x1E:
      result = 7500389;
      break;
    case 0x1F:
      result = 7696998;
      break;
    case 0x20:
      result = 1718772065;
      break;
    case 0x21:
      result = 2020439152;
      break;
    case 0x22:
      result = 1718185327;
      break;
    case 0x23:
      result = 26227;
      break;
    case 0x24:
      result = 1885629793;
      break;
    case 0x25:
      result = 0x70646D6673;
      break;
    case 0x26:
      result = 0x7064616D75;
      break;
    case 0x27:
      result = 7562851;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2663279DC@<X0>(unint64_t *a1@<X8>)
{
  result = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriAudioSupport::AdditionalMetricsDescription::SourceFunction_optional __swiftcall AdditionalMetricsDescription.SourceFunction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = 0;
  v6 = 23;
  switch(v3)
  {
    case 0:
      goto LABEL_38;
    case 1:
      v5 = 1;
      goto LABEL_38;
    case 2:
      v5 = 2;
      goto LABEL_38;
    case 3:
      v5 = 3;
      goto LABEL_38;
    case 4:
      v5 = 4;
      goto LABEL_38;
    case 5:
      v5 = 5;
      goto LABEL_38;
    case 6:
      v5 = 6;
      goto LABEL_38;
    case 7:
      v5 = 7;
      goto LABEL_38;
    case 8:
      v5 = 8;
      goto LABEL_38;
    case 9:
      v5 = 9;
      goto LABEL_38;
    case 10:
      v5 = 10;
      goto LABEL_38;
    case 11:
      v5 = 11;
      goto LABEL_38;
    case 12:
      v5 = 12;
      goto LABEL_38;
    case 13:
      v5 = 13;
      goto LABEL_38;
    case 14:
      v5 = 14;
      goto LABEL_38;
    case 15:
      v5 = 15;
      goto LABEL_38;
    case 16:
      v5 = 16;
      goto LABEL_38;
    case 17:
      v5 = 17;
      goto LABEL_38;
    case 18:
      v5 = 18;
      goto LABEL_38;
    case 19:
      v5 = 19;
      goto LABEL_38;
    case 20:
      v5 = 20;
      goto LABEL_38;
    case 21:
      v5 = 21;
      goto LABEL_38;
    case 22:
      v5 = 22;
LABEL_38:
      v6 = v5;
      break;
    case 23:
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    default:
      v6 = 41;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t AdditionalMetricsDescription.SourceFunction.rawValue.getter()
{
  result = 0x70736552646C62;
  switch(*v0)
  {
    case 1:
      return 0x64656C646E6168;
    case 2:
      return 0x48766F7250676C64;
    case 3:
      v3 = 1818845542;
      return v3 | 0x646E614800000000;
    case 4:
      return 0x74706D6F7270;
    case 5:
      return 0x7369446670;
    case 6:
      return 0x707365526A6572;
    case 7:
      return 0x7475706E49746361;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 7304821;
    case 0xA:
      v3 = 1953722224;
      return v3 | 0x646E614800000000;
    case 0xB:
      return 0x6C646E6148657270;
    case 0xC:
      return 0x56676C446E74736CLL;
    case 0xD:
      return 0x686374614D6F6ELL;
    case 0xE:
      return 0x6673736563637573;
    case 0xF:
      v2 = 10;
      return v2 | 0xD000000000000010;
    case 0x10:
      return 0xD000000000000016;
    case 0x11:
      v2 = 5;
      return v2 | 0xD000000000000010;
    case 0x12:
      return 0x676C44727265;
    case 0x13:
      return 0x676C446E616470;
    case 0x14:
      return 0x796C506E6968746ELL;
    case 0x15:
      return 1667594341;
    case 0x16:
      return 0x5374654467697274;
    case 0x17:
      return 0x66646E4872706467;
    case 0x18:
      return 0xD000000000000014;
    case 0x19:
      return 0x6C696146656B616DLL;
    case 0x1A:
      return 0x66646E4872706467;
    case 0x1B:
      return 0x6C50776F4E736572;
    case 0x1C:
      return 0xD000000000000010;
    case 0x1D:
      return 0x6C44656C646E6168;
    case 0x1E:
      v4 = 0x74706D6F7270;
      goto LABEL_34;
    case 0x1F:
      v4 = 0x746E496A6572;
LABEL_34:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F4C000000000000;
      break;
    case 0x20:
      result = 0x4C796C506C627364;
      break;
    case 0x21:
      result = 0x796C50636F7270;
      break;
    case 0x22:
      result = 0x4F6C636E43627570;
      break;
    case 0x23:
      result = 0x6553646E416B6863;
      break;
    case 0x24:
      result = 0x61486E6F69746361;
      break;
    case 0x25:
      result = 0x746C757365526F6ELL;
      break;
    case 0x26:
      result = 0xD000000000000018;
      break;
    case 0x27:
    case 0x28:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2663280AC@<X0>(uint64_t *a1@<X8>)
{
  result = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriAudioSupport::AdditionalMetricsDescription::StatusReason_optional __swiftcall AdditionalMetricsDescription.StatusReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AdditionalMetricsDescription.StatusReason.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6F736552746F6C73;
      break;
    case 4:
      result = 0x6E696E657473696CLL;
      break;
    case 5:
      result = 0x46686374614D6F6ELL;
      break;
    case 6:
      result = 0x4E76657250736168;
      break;
    case 7:
      result = 1346925417;
      break;
    case 8:
      result = 0x6374736361;
      break;
    case 9:
      result = 0x6F70707553746F6ELL;
      break;
    case 0xA:
      result = 0x726553736465656ELL;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0x556E776F6E6B6E75;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000016;
      break;
    case 0xF:
      result = 0xD000000000000013;
      break;
    case 0x10:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0x6863726165536F6ELL;
      break;
    case 0x13:
      result = 0xD000000000000015;
      break;
    case 0x14:
      result = 0xD000000000000021;
      break;
    case 0x15:
      result = 0xD000000000000026;
      break;
    case 0x16:
      result = 0xD00000000000001CLL;
      break;
    case 0x17:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266328518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2664E0D88();
  }

  return v11 & 1;
}

uint64_t sub_2663285D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_2664E0E68();
  a3(v4);
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_266328660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_2664E0368();
}

uint64_t sub_2663286E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_2664E0E68();
  a4(v5);
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_266328758@<X0>(unint64_t *a1@<X8>)
{
  result = AdditionalMetricsDescription.StatusReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static AdditionalMetricsDescription.encodeInfo(module:source:parameterName:statusReason:intentResolutionResult:extraInfo:)(char *a1, char *a2, uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t a7, int a8)
{
  v41 = a8;
  v40 = a7;
  v14 = sub_2664DFE38();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *a2;
  v50 = *a5;
  v18 = AdditionalMetricsDescription.StatusReason.rawValue.getter();
  v20 = v19;
  LOBYTE(v48) = v16;
  v21 = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  v46 = 40;
  v47 = 0xE100000000000000;
  MEMORY[0x2667833B0](v21);

  MEMORY[0x2667833B0](35, 0xE100000000000000);

  v22 = v46;
  v23 = v47;
  LOBYTE(v48) = v17;
  v24 = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  v26 = v25;
  v46 = v22;
  v47 = v23;

  MEMORY[0x2667833B0](v24, v26);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  v48 = v46;
  v49 = v47;
  v46 = 978219048;
  v47 = 0xE400000000000000;
  MEMORY[0x2667833B0](a3, a4);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v46, v47);

  v46 = 978481960;
  v47 = 0xE400000000000000;
  MEMORY[0x2667833B0](v18, v20);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v46, v47);

  if (a6)
  {
    v46 = [a6 unsupportedReason];
    sub_266329C88();
    v27 = sub_2664E09D8();
    v46 = 978482472;
    v47 = 0xE400000000000000;
    MEMORY[0x2667833B0](v27);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v46, v47);
  }

  if ((v41 & 1) == 0)
  {
    v46 = v40;
    v28 = sub_2664E0D48();
    v46 = 977888552;
    v47 = 0xE400000000000000;
    MEMORY[0x2667833B0](v28);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v46, v47);
  }

  v30 = v43;
  v29 = v44;
  v31 = v42;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v29, qword_280F914F0);
  swift_beginAccess();
  (*(v30 + 16))(v31, v32, v29);
  v33 = v48;
  v34 = v49;

  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_2662A320C(v33, v34, &v45);
    _os_log_impl(&dword_26629C000, v35, v36, "SiriKitTaskLoggingProvider#encodeInfo: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  (*(v30 + 8))(v31, v29);
  return v33;
}

uint64_t static AdditionalMetricsDescription.encodeInfo(module:source:parameterName:statusReason:intentResolutionResult:extraInfo:)(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9)
{
  v36 = a8;
  v37 = a5;
  v38 = a6;
  v39 = a9;
  v40 = sub_2664DFE38();
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  LOBYTE(v44) = *a1;
  v18 = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  v42 = 40;
  v43 = 0xE100000000000000;
  MEMORY[0x2667833B0](v18);

  MEMORY[0x2667833B0](35, 0xE100000000000000);

  v19 = v42;
  v20 = v43;
  LOBYTE(v44) = v17;
  v21 = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  v23 = v22;
  v42 = v19;
  v43 = v20;

  MEMORY[0x2667833B0](v21, v23);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  v44 = v42;
  v45 = v43;
  v42 = 978219048;
  v43 = 0xE400000000000000;
  MEMORY[0x2667833B0](a3, a4);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v42, v43);

  v42 = 978481960;
  v43 = 0xE400000000000000;
  MEMORY[0x2667833B0](v37, v38);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v42, v43);

  if (a7)
  {
    v42 = [a7 unsupportedReason];
    sub_266329C88();
    v24 = sub_2664E09D8();
    v42 = 978482472;
    v43 = 0xE400000000000000;
    MEMORY[0x2667833B0](v24);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v42, v43);
  }

  if ((v39 & 1) == 0)
  {
    v42 = v36;
    v25 = sub_2664E0D48();
    v42 = 977888552;
    v43 = 0xE400000000000000;
    MEMORY[0x2667833B0](v25);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v42, v43);
  }

  v26 = v40;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v26, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v27, v26);
  v28 = v44;
  v29 = v45;

  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_2662A320C(v28, v29, &v41);
    _os_log_impl(&dword_26629C000, v30, v31, "SiriKitTaskLoggingProvider#encodeInfo: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  (*(v14 + 8))(v16, v26);
  return v28;
}

uint64_t static AdditionalMetricsDescription.encodeInfo(module:source:statusReason:extraInfo:)(char *a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a2;
  v13 = *a1;
  v12 = v7;
  v8 = AdditionalMetricsDescription.StatusReason.rawValue.getter();
  v10 = sub_2663291B8(&v13, &v12, v8, v9, a4, a5 & 1);

  return v10;
}

uint64_t sub_2663291B8(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v31 = a5;
  v32 = sub_2664DFE38();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  LOBYTE(v36) = *a1;
  v15 = AdditionalMetricsDescription.ModuleName.rawValue.getter();
  v34 = 40;
  v35 = 0xE100000000000000;
  MEMORY[0x2667833B0](v15);

  MEMORY[0x2667833B0](35, 0xE100000000000000);

  v16 = v34;
  v17 = v35;
  LOBYTE(v36) = v14;
  v18 = AdditionalMetricsDescription.SourceFunction.rawValue.getter();
  v20 = v19;
  v34 = v16;
  v35 = v17;

  MEMORY[0x2667833B0](v18, v20);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  v36 = v34;
  v37 = v35;
  v34 = 978481960;
  v35 = 0xE400000000000000;
  MEMORY[0x2667833B0](a3, a4);

  MEMORY[0x2667833B0](41, 0xE100000000000000);

  MEMORY[0x2667833B0](v34, v35);

  if ((a6 & 1) == 0)
  {
    v34 = v31;
    v21 = sub_2664E0D48();
    v34 = 977888552;
    v35 = 0xE400000000000000;
    MEMORY[0x2667833B0](v21);

    MEMORY[0x2667833B0](41, 0xE100000000000000);

    MEMORY[0x2667833B0](v34, v35);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = v32;
  v23 = __swift_project_value_buffer(v32, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v23, v22);
  v24 = v36;
  v25 = v37;

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_2662A320C(v24, v25, &v33);
    _os_log_impl(&dword_26629C000, v26, v27, "SiriKitTaskLoggingProvider#encodeInfo: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x266784AD0](v29, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v11 + 8))(v13, v22);
  return v24;
}

uint64_t sub_26632958C(int a1)
{
  v2 = sub_2664DE4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v6 = qword_280F90D38;
  sub_2664DE7D8();
  v7 = type metadata accessor for FlowClientEventSender();
  v8 = swift_allocObject();
  sub_2662A8618(&v16, v8 + 16);
  type metadata accessor for SiriAudioDomainExecutionLogger();
  v9 = swift_allocObject();
  v17 = v7;
  v18 = &protocol witness table for FlowClientEventSender;
  *&v16 = v8;
  *(v9 + 96) = 0;
  sub_2664DE498();
  v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v11 = sub_2664DE478();
  v12 = [v10 initWithNSUUID_];

  (*(v3 + 8))(v5, v2);
  *(v9 + 48) = v12;
  *(v9 + 40) = a1;
  *(v9 + 24) = 0x6E776F6E6B6E75;
  *(v9 + 32) = 0xE700000000000000;
  *(v9 + 16) = v6;
  sub_2662A5550(&v16, v9 + 56);
  v13 = v6;
  sub_26636B4BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  return v9;
}

uint64_t sub_266329774(uint64_t a1)
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "SiriKitTaskLoggingProvider#curareDonation Making curare donation of Pommes Response", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_2664DFCB8();
  return sub_2662A9238(v10, &qword_280072AF0, &qword_2664E5E18);
}

id sub_266329994()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  v4 = off_280073BF8;
  v5 = *(off_280073BF8 + 2);
  v6 = sub_266466A84(v5);

  LOBYTE(v5) = [v6 respondsToSelector_];
  if (v5)
  {
    v7 = v4[2];
    v8 = sub_266466A84(v7);

    return v8;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v10, v0);

    v11 = sub_2664DFE18();
    v12 = sub_2664E06D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = v4[2];
      v16 = sub_266466A84(v15);

      swift_getObjectType();
      v17 = sub_2664E0F58();
      v19 = sub_2662A320C(v17, v18, &v20);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_26629C000, v11, v12, "SiriKitTaskLoggingProvider#createFLOWDomainContext mediaPlayerPlaybackContext of type: %s, does not respond to required selector", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266784AD0](v14, -1, -1);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

unint64_t sub_266329C88()
{
  result = qword_280072AB0;
  if (!qword_280072AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AB0);
  }

  return result;
}

unint64_t sub_266329CE0()
{
  result = qword_280072AB8;
  if (!qword_280072AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AB8);
  }

  return result;
}

unint64_t sub_266329D38()
{
  result = qword_280072AC0;
  if (!qword_280072AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AC0);
  }

  return result;
}

unint64_t sub_266329D90()
{
  result = qword_280072AC8;
  if (!qword_280072AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AC8);
  }

  return result;
}

unint64_t sub_266329DE8()
{
  result = qword_280072AD0;
  if (!qword_280072AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdditionalMetricsDescription.ModuleName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdditionalMetricsDescription.ModuleName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdditionalMetricsDescription.SourceFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_17;
  }

  if (a2 + 40 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 40) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 40;
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

      return (*a1 | (v4 << 8)) - 40;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 40;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v8 = v6 - 41;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdditionalMetricsDescription.SourceFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD8)
  {
    v4 = 0;
  }

  if (a2 > 0xD7)
  {
    v5 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdditionalMetricsDescription.StatusReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdditionalMetricsDescription.StatusReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26632A4E8(void *a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 2)
  {
    if (!*a2)
    {

      return 11;
    }

    goto LABEL_8;
  }

  if (v2 == 3 || v2 == 4)
  {
LABEL_8:
    v4 = sub_2664E0D88();

    if (v4)
    {
      return 11;
    }

    if (v2 == 1)
    {

      return 4;
    }

    v7 = sub_2664E0D88();

    if (v7)
    {
      return 4;
    }

    if (v2 != 2)
    {
      sub_2664E0D88();
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
    v6 = a1;
    if (sub_2664E0918())
    {

      return 1;
    }
  }

  else
  {
    v8 = a1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
    v9 = a1;
    v10 = sub_2664E0918();

    if (v10)
    {

      return 6;
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30), v11 = a1, v12 = sub_2664E0918(), v11, (v12 & 1) == 0))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
      v16 = sub_2664E0918();

      if (v16)
      {
        return 5;
      }
    }

    else
    {
    }

    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 affinityType];

    if (v14 == 2)
    {
      v15 = 8;
    }

    else
    {
      v15 = 33;
    }

    if (v14 == 1)
    {
      return 7;
    }

    else
    {
      return v15;
    }
  }

  else
  {

    return 33;
  }
}

NSObject *sub_26632A988(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D5B270]) init];
  if (!v14)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v29, v4);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "SiriKitTaskLoggingProvider#convertUsoGraphRedactions Failed to initialize USOSchemaUSOGraphTier1", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v15 = v14;
  v50 = v11;
  [v14 setLinkId:a2];
  v16 = *(a1 + 16);
  if (v16)
  {
    v48 = v13;
    v49 = v4;
    v51 = v5;
    for (i = (a1 + 40); ; i += 2)
    {
      v19 = *(i - 1);
      v18 = *i;
      v20 = objc_allocWithZone(MEMORY[0x277D5B268]);
      v21 = v18;
      v22 = [v20 init];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      result = [v21 nodes];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v25 = result;
      v26 = [result lastObject];

      if (v26)
      {
        sub_2664E09E8();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      v55[0] = v53;
      v55[1] = v54;
      if (!*(&v54 + 1))
      {
        sub_2662A9238(v55, &unk_280074250, &unk_2664E3680);
LABEL_23:
        v40 = v49;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v40, qword_280F914F0);
        swift_beginAccess();
        v41 = v48;
        (*(v51 + 16))();
        v42 = v21;
        v43 = sub_2664DFE18();
        v44 = sub_2664E06D8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = v19;

          _os_log_impl(&dword_26629C000, v43, v44, "SiriKitTaskLoggingProvider#convertUsoGraphRedactions No valid UsoNode in redaction at index: %lld", v45, 0xCu);
          v41 = v48;
          MEMORY[0x266784AD0](v45, -1, -1);
          v46 = v42;
        }

        else
        {

          v46 = v15;
          v43 = v23;
          v15 = v42;
          v23 = v42;
        }

        (*(v51 + 8))(v41, v40);
        return 0;
      }

      sub_2662C1744(0, &qword_280072AE0, 0x277D5DDE8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_23;
      }

      v27 = v52;
      v28 = [objc_opt_self() convertUsoNodeDataTier1:v52 index:v19];
      [v23 setLinkedUsoNodeData:v28];

      [v15 addLinkedUsoGraphNodeData:v23];
      if (!--v16)
      {
        return v15;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v49;
    v34 = __swift_project_value_buffer(v49, qword_280F914F0);
    swift_beginAccess();
    v36 = v50;
    v35 = v51;
    (*(v51 + 16))(v50, v34, v33);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "SiriKitTaskLoggingProvider#convertUsoGraphRedactions Failed to initialize USOSchemaUSOGraphNodeDataTier1", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v36, v33);
    return 0;
  }

  return v15;
}

id sub_26632AFB8()
{
  v75 = sub_2664DFE38();
  v71 = *(v75 - 8);
  v0 = MEMORY[0x28223BE20](v75);
  v74 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v73 = &v60 - v3;
  v4 = MEMORY[0x28223BE20](v2);
  v70 = &v60 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  v8 = sub_2664DE4A8();
  v72 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DF098();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DF0F8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF0C8();
  sub_2664DF0E8();
  (*(v16 + 8))(v18, v15);
  v26 = sub_2664DF118();
  v68 = v10;
  v69 = v8;
  v67 = v7;
  (*(v12 + 8))(v14, v11);
  sub_2664DF1D8();
  sub_2664DF1F8();
  swift_allocObject();
  v27 = sub_2664DF1E8();
  v28 = sub_2664DF208();
  v30 = v29;

  v31 = sub_2664DF128();
  v65 = v28;
  v66 = v26;
  v74 = v27;

  v32 = objc_opt_self();
  v64 = v31;
  v33 = [v32 convertNonTier1UsoGraph_];
  v34 = v68;
  sub_2664DE498();
  v35 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v36 = sub_2664DE478();
  v37 = [v35 initWithNSUUID_];

  (*(v72 + 8))(v34, v69);
  v68 = v33;
  v63 = v37;
  [v33 setLinkId_];
  v38 = *(v30 + 16);
  if (v38)
  {
    v39 = 0;
    v72 = v71 + 16;
    v73 = v38;
    v40 = v30 + 40;
    v61 = v38 - 1;
    v69 = MEMORY[0x277D84F90];
    v62 = v30 + 40;
    while (1)
    {
      v41 = v39;
      if (v39 >= *(v30 + 16))
      {
        break;
      }

      v42 = v30;
      v43 = *(v40 + 16 * v39++ - 8);

      v44 = sub_2664DF128();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_266384A9C(0, v69[2] + 1, 1, v69);
      }

      v46 = v69[2];
      v45 = v69[3];
      if (v46 >= v45 >> 1)
      {
        v69 = sub_266384A9C((v45 > 1), v46 + 1, 1, v69);
      }

      v40 = v62;
      v47 = v69;
      v69[2] = v46 + 1;
      v48 = &v47[2 * v46];
      v48[4] = v43;
      v48[5] = v44;
      v49 = v75;
      v30 = v42;
      if (v61 == v41)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    swift_once();
    v19 = v75;
    v20 = __swift_project_value_buffer(v75, qword_280F914F0);
    swift_beginAccess();
    v21 = v71;
    v22 = v74;
    (*(v71 + 16))(v74, v20, v19);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "SiriKitTaskLoggingProvider#convertToUsoGraph Failed to convert graph from Swift proto", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v21 + 8))(v22, v19);
    return 0;
  }

  v69 = MEMORY[0x277D84F90];
  v49 = v75;
LABEL_16:
  v51 = sub_26645FA24(v69);

  v52 = v63;
  v53 = sub_26632A988(v51, v63);

  if (!v53)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v49, qword_280F914F0);
    swift_beginAccess();
    v56 = v70;
    v55 = v71;
    (*(v71 + 16))(v70, v54, v49);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06D8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "SiriKitTaskLoggingProvider#convertToUsoGraph Failed to convert redactions to SELF Tier1 graph", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    else
    {
    }

    (*(v55 + 8))(v56, v49);
    return 0;
  }

  return v68;
}

uint64_t sub_26632BA98()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_266322328(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_26632BBF0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_26632390C(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v11 + 8), *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_69Tm()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_72Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = sub_2664DEA08();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_2664DE808();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x2821FE8E8](v0, ((((((((((((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_26632C0F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = (*(v1 + 80) + 49) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_2662A74FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v9 + 8), *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 9;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26632C420;

  return v11(a1, a2, v4 + 32, a3, a4);
}

uint64_t sub_26632C420()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26632C554, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t AppIntentInvoking.invokeShowMusicNoticeAppIntent(noticeEntity:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = *a1;
  v8 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26632C6A4;

  return v8(v3 + 32, 0, 0, a2, a3);
}

uint64_t sub_26632C6A4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26632D2D4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenMusicItemIntent(musicItemIdentifier:noticeEntity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeShowMusicNoticeAppIntent(noticeEntity:musicItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2662C1890;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeSearchMusicAppIntent(criteria:searchSource:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 24) + **(a8 + 24));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2662C1890;

  return v19(a1, a2, a3, a4, a5, a6 & 1, a7, a8);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenPodcastShowAppIntent(showIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenPodcastChannelAppIntent(channelIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.followShowAppIntent(id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2662BD660;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeSearchPodcastsAppIntent(criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AppIntentInvoking.invokeOpenQueueAppIntent()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662BD660;

  return v7(a1, a2);
}

uint64_t AppleMediaServicesProvider.__allocating_init(featureFlagProvider:siriKitTaskLoggingProvider:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_26632E840(v9, v15, v4, v6, v11, v5, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v17;
}

uint64_t AppleMediaServicesProvider.init(featureFlagProvider:siriKitTaskLoggingProvider:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_26632E840(v10, v16, v3, v7, v12, v6, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

uint64_t sub_26632D680(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v36 = a1;
  v37 = a2;
  v7 = sub_2664DFE08();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a5;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "AppleMediaServicesProvider#acknowledgementNeeded...", v20, 2u);
    v21 = v20;
    a5 = v19;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = qword_280F91508;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  sub_2664DFDE8();
  v26 = v33;
  v25 = v34;
  v27 = v35;
  (*(v34 + 16))(v33, v11, v35);
  v28 = (*(v25 + 80) + 33) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = "gdprCheck";
  *(v29 + 24) = 9;
  *(v29 + 32) = 2;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_2662D2B60;
  v30[1] = v22;

  v31 = sub_2664E0848();
  sub_2664DFDC8(v31, &dword_26629C000, v24, "gdprCheck", 9, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);

  sub_26632F1D4(v36, v37, v38, v39, sub_2662D3010, v29);

  (*(v25 + 8))(v11, v27);
}

uint64_t sub_26632DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26632DAD4, 0, 0);
}

uint64_t sub_26632DAD4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26632DC00;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_26632DC00(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_266332828, 0, 0);
}

uint64_t sub_26632DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26632DD28, 0, 0);
}

uint64_t sub_26632DD28()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26632DE54;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_26632DE54(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_26632DF54, 0, 0);
}

uint64_t sub_26632DF54()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = sub_26632EAC0(v1, *(v0 + 64));

  *v2 = v3 & 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26632DFE4(void *a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = a1;
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v13 = 136315138;
    v14 = [v10 response];
    v24 = a3;
    v25 = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC8, &unk_2664E6038);
    v16 = sub_2664E0938();
    v22 = v5;
    v18 = v17;

    v19 = sub_2662A320C(v16, v18, &v26);

    *(v13 + 4) = v19;
    a3 = v24;
    _os_log_impl(&dword_26629C000, v11, v12, "AppleMediaServicesProvider#makeMediaAPICall Successfully got a response:%s.", v13, 0xCu);
    v20 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v6 + 8))(v8, v22);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return a3([v10 responseStatusCode], 0);
}

void sub_26632E2A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t AppleMediaServicesProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t AppleMediaServicesProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_26632E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2664DE198();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_26632E808(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppleMediaServicesRequestHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26632E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a4;
  v31 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v27 = a5;
  v28 = a7;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(a5 - 8) + 32))(v19, a2, a5);
  *(a3 + 16) = [objc_allocWithZone(type metadata accessor for AppleMediaServicesRequestHandler()) init];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v20, v14);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "AppleMediaServicesProvider#init...", v23, 2u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  sub_2662A8618(&v29, a3 + 24);
  sub_2662A8618(&v26, a3 + 64);
  return a3;
}

id sub_26632EAC0(void *a1, int a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v11 = sub_2664DFE08();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v50 = v5;
    v51 = v4;
    v49 = a2;
    v15 = objc_opt_self();
    v16 = a1;
    v17 = sub_2664E02A8();

    v18 = [v15 acknowledgementNeededForPrivacyIdentifier:v17 account:v16];

    v19 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v20 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D83B88];
    *(v21 + 16) = xmmword_2664E36F0;
    v23 = MEMORY[0x277D83C10];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = v18;
    sub_2664DFDF8();
    sub_2664DFDC8(v19, &dword_26629C000, v20, "appleMediaServicesProvider", 26, 2, v14, "status=%d enableTelemetry=YES", 29);

    (*(v12 + 8))(v14, v11);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = v51;
    v25 = __swift_project_value_buffer(v51, qword_280F914F0);
    swift_beginAccess();
    v26 = v50;
    (*(v50 + 16))(v10, v25, v24);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v16;
      v31 = v26;
      v32 = v30;
      v52 = v30;
      *v29 = 136315394;
      if (v18)
      {
        v33 = 0x736465656ELL;
      }

      else
      {
        v33 = 0x746F6E2073656F64;
      }

      if (v18)
      {
        v34 = 0xE500000000000000;
      }

      else
      {
        v34 = 0xED00006465656E20;
      }

      v35 = sub_2662A320C(v33, v34, &v52);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      if (v49)
      {
        v36 = 0x7374736163646F50;
      }

      else
      {
        v36 = 0x636973754DLL;
      }

      if (v49)
      {
        v37 = 0xE800000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      v38 = sub_2662A320C(v36, v37, &v52);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_26629C000, v27, v28, "AppleMediaServicesProvider#isGDPRAckowledgmentNeeded user %s GDPR acknowledgement for %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);

      (*(v31 + 8))(v10, v51);
    }

    else
    {

      (*(v26 + 8))(v10, v24);
    }
  }

  else
  {
    v39 = sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v40 = qword_280F91D48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2664E36F0;
    v42 = MEMORY[0x277D83C10];
    *(v41 + 56) = MEMORY[0x277D83B88];
    *(v41 + 64) = v42;
    *(v41 + 32) = -1;
    sub_2664DFDF8();
    sub_2664DFDC8(v39, &dword_26629C000, v40, "appleMediaServicesProvider", 26, 2, v14, "status=%d enableTelemetry=YES", 29);

    (*(v12 + 8))(v14, v11);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v43, v4);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "AppleMediaServicesProvider#acknowledgementNeeded not needed.", v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v18;
}

void sub_26632F1D4(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  v64 = a4;
  v62 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v61 - v11;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v22 = swift_allocObject();
  v61 = a5;
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2662D2B6C;
  *(v23 + 24) = v22;

  v66 = v22;

  v24 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a1);
  if (v25)
  {
    if (v24 == 0xD000000000000012 && v25 == 0x80000002664F2EA0)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_2664E0D88();
    }

    if (!a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v65 = 0;
    if (!a2)
    {
      goto LABEL_16;
    }
  }

  v26 = [a2 privateMediaItemValueData];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 sharedUserIdFromPlayableMusicAccount];

    if (v28)
    {
      v29 = sub_2664E02C8();
      v31 = v30;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v12, qword_280F914F0);
      swift_beginAccess();
      (*(v13 + 16))(v16, v32, v12);

      v33 = sub_2664DFE18();
      v34 = sub_2664E06C8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v67[0] = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_2662A320C(v29, v31, v67);
        _os_log_impl(&dword_26629C000, v33, v34, "AppleMediaServicesProvider#acknowledgementNeeded checking GDPR for sharedUserIdFromPlayableMusicAccount: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x266784AD0](v36, -1, -1);
        MEMORY[0x266784AD0](v35, -1, -1);
      }

      (*(v13 + 8))(v16, v12);
      v37 = swift_allocObject();
      *(v37 + 16) = sub_2662D2B74;
      *(v37 + 24) = v23;
      sub_2662A5550(v62, v67);
      v38 = swift_allocObject();
      sub_2662A8618(v67, v38 + 16);
      *(v38 + 56) = v29;
      *(v38 + 64) = v31;
      *(v38 + 72) = v64;
      *(v38 + 80) = v65 & 1;
      v39 = sub_2664E05C8();
      v40 = v63;
      (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = sub_2662D31E8;
      v41[5] = v37;
      v41[6] = &unk_2664E6068;
      v41[7] = v38;

      v42 = &unk_2664E6070;
LABEL_22:
      sub_26633E760(0, 0, v40, v42, v41);

      return;
    }
  }

LABEL_16:
  v43 = sub_26636E9A0(0);
  if (v44)
  {
    v45 = v43;
    v46 = v44;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v21, v47, v12);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06C8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v67[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2662A320C(v45, v46, v67);
      _os_log_impl(&dword_26629C000, v48, v49, "AppleMediaServicesProvider#acknowledgementNeeded checking GDPR for requestingUserId: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (*(v13 + 8))(v21, v12);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_2662D2B74;
    *(v52 + 24) = v23;
    sub_2662A5550(v62, v67);
    v53 = swift_allocObject();
    sub_2662A8618(v67, v53 + 16);
    *(v53 + 56) = v45;
    *(v53 + 64) = v46;
    *(v53 + 72) = v64;
    *(v53 + 80) = v65 & 1;
    v54 = sub_2664E05C8();
    v40 = v63;
    (*(*(v54 - 8) + 56))(v63, 1, 1, v54);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = sub_2662D31E8;
    v41[5] = v52;
    v41[6] = &unk_2664E6050;
    v41[7] = v53;

    v42 = &unk_2664E6058;
    goto LABEL_22;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v19, v55, v12);
  v56 = sub_2664DFE18();
  v57 = sub_2664E06C8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_26629C000, v56, v57, "AppleMediaServicesProvider#acknowledgementNeeded checking GDPR for active account", v58, 2u);
    MEMORY[0x266784AD0](v58, -1, -1);
  }

  (*(v13 + 8))(v19, v12);
  v59 = [objc_opt_self() ams_sharedAccountStore];
  v60 = [v59 ams_activeiTunesAccount];

  v68[0] = sub_26632EAC0(v60, v65 & 1) & 1;
  v61(v68);
}

uint64_t sub_26632FAF4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "AppleMediaServicesProvider#subscribeToPromotion called but not expected.", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26632FC98()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "AppleMediaServicesProvider#getBuyParams called, but not expected.", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_26632FE44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(void, uint64_t), uint64_t a7)
{
  v207 = a6;
  v203 = a5;
  v193 = a4;
  v204 = a3;
  v192 = a2;
  v206 = a1;
  v214 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BB8, &qword_2664E6028);
  MEMORY[0x28223BE20](v8 - 8);
  v197 = &v185 - v9;
  v202 = sub_2664DE0D8();
  v201 = *(v202 - 8);
  v10 = MEMORY[0x28223BE20](v202);
  v198 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v200 = &v185 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v185 - v14;
  v16 = sub_2664DE268();
  v212 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v190 = &v185 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v205 = &v185 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v191 = (&v185 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v188 = &v185 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v187 = &v185 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v189 = &v185 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v196 = &v185 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v195 = &v185 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v194 = &v185 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v199 = &v185 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v185 - v41;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v19, qword_280F914F0);
  swift_beginAccess();
  v44 = v20;
  v45 = *(v20 + 16);
  v210 = v20 + 16;
  v211 = v43;
  v208 = v19;
  v209 = v45;
  v45(v42, v43, v19);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06C8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v16;
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_26629C000, v46, v47, "AppleMediaServicesProvider#makeMediaAPICall Reached this logic.", v49, 2u);
    v50 = v49;
    v16 = v48;
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  v51 = v44 + 8;
  v52 = *(v44 + 8);
  v53 = v208;
  v52(v42, v208);
  sub_2663324F8(v206, v15);
  if ((*(v212 + 48))(v15, 1, v16) == 1)
  {
    sub_2662A9238(v15, &qword_280072BC0, &qword_2664E6030);
LABEL_13:
    v69 = v205;
    v209(v205, v211, v53);
    v70 = sub_2664DFE18();
    v71 = sub_2664E06D8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_26629C000, v70, v71, "AppleMediaServicesProvider#makeMediaAPICall Nil values were passed in to function.", v72, 2u);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    v52(v69, v53);
    return v207(0, 1);
  }

  (*(v212 + 32))(v18, v15, v16);
  if (!v204 || !v203)
  {
    (*(v212 + 8))(v18, v16);
    goto LABEL_13;
  }

  v205 = v18;
  v54 = [objc_opt_self() ams_sharedAccountStore];
  v55 = [v54 ams_activeiTunesAccount];

  v206 = v51;
  if (v55)
  {
    v56 = v199;
    v209(v199, v211, v53);
    v57 = v55;
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();

    v60 = os_log_type_enabled(v58, v59);
    v191 = v52;
    v186 = v16;
    v185 = a7;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136315138;
      v63 = [v57 debugDescription];
      v64 = sub_2664E02C8();
      v66 = v65;

      v67 = sub_2662A320C(v64, v66, aBlock);
      v53 = v208;

      *(v61 + 4) = v67;
      _os_log_impl(&dword_26629C000, v58, v59, "AppleMediaServicesProvider#makeMediaAPICall amsAccount: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x266784AD0](v62, -1, -1);
      v68 = v61;
      v52 = v191;
      MEMORY[0x266784AD0](v68, -1, -1);

      v52(v199, v53);
    }

    else
    {

      v52(v56, v53);
    }

    v78 = v194;
    v79 = [objc_opt_self() defaultSessionConfiguration];
    v80 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

    v194 = objc_opt_self();
    v81 = [v194 currentProcess];
    v82 = v57;
    v83 = sub_2664E02A8();
    v84 = sub_2664E02A8();
    v85 = [objc_opt_self() bagForProfile:v83 profileVersion:v84 processInfo:v81 account:v82];

    v204 = v82;
    v86 = objc_allocWithZone(MEMORY[0x277CEE578]);
    v87 = v85;
    v88 = sub_2664E02A8();
    v89 = [v86 initWithClientIdentifier:v88 bag:v87];

    v203 = v87;
    [v89 setSession_];
    v209(v78, v211, v53);
    v90 = v89;
    v91 = sub_2664DFE18();
    v92 = sub_2664E06C8();

    v93 = os_log_type_enabled(v91, v92);
    v199 = v90;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock[0] = v95;
      *v94 = 136315138;
      v96 = [v90 debugDescription];
      v97 = sub_2664E02C8();
      v99 = v98;

      v100 = v97;
      v90 = v199;
      v101 = sub_2662A320C(v100, v99, aBlock);
      v53 = v208;

      *(v94 + 4) = v101;
      _os_log_impl(&dword_26629C000, v91, v92, "AppleMediaServicesProvider#makeMediaAPICall amsMediaTokenService: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      v102 = v95;
      v52 = v191;
      MEMORY[0x266784AD0](v102, -1, -1);
      MEMORY[0x266784AD0](v94, -1, -1);
    }

    v52(v78, v53);
    v103 = v195;
    v104 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
    [v80 setProtocolHandler_];

    v209(v103, v211, v53);
    v105 = v80;
    v106 = sub_2664DFE18();
    v107 = sub_2664E06C8();

    v108 = os_log_type_enabled(v106, v107);
    v195 = v105;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock[0] = v110;
      *v109 = 136315138;
      v111 = [v105 debugDescription];
      v112 = sub_2664E02C8();
      v114 = v113;

      v115 = v112;
      v53 = v208;
      v116 = sub_2662A320C(v115, v114, aBlock);
      v52 = v191;

      *(v109 + 4) = v116;
      _os_log_impl(&dword_26629C000, v106, v107, "AppleMediaServicesProvider#makeMediaAPICall amsSession: %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      v117 = v110;
      v90 = v199;
      MEMORY[0x266784AD0](v117, -1, -1);
      MEMORY[0x266784AD0](v109, -1, -1);
    }

    v52(v103, v53);
    v118 = v196;
    v119 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v90 bag:v203];
    [v119 setAccount_];
    v120 = [v194 currentProcess];
    [v119 setClientInfo_];

    v209(v118, v211, v53);
    v121 = v119;
    v122 = sub_2664DFE18();
    v123 = sub_2664E06C8();

    v124 = os_log_type_enabled(v122, v123);
    v196 = v121;
    if (v124)
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      aBlock[0] = v126;
      *v125 = 136315138;
      v127 = [v121 debugDescription];
      v128 = sub_2664E02C8();
      v129 = v52;
      v131 = v130;

      v132 = v128;
      v53 = v208;
      v133 = sub_2662A320C(v132, v131, aBlock);

      *(v125 + 4) = v133;
      _os_log_impl(&dword_26629C000, v122, v123, "AppleMediaServicesProvider#makeMediaAPICall amsMediaRequestEncoder: %s", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      MEMORY[0x266784AD0](v126, -1, -1);
      MEMORY[0x266784AD0](v125, -1, -1);

      v129(v118, v53);
    }

    else
    {

      v52(v118, v53);
    }

    v16 = v186;
    v134 = v202;
    v135 = v201;
    v136 = v198;
    sub_2664DE1E8();
    v137 = v197;
    sub_2664DE0C8();

    if ((*(v135 + 48))(v137, 1, v134) == 1)
    {
      sub_2662A9238(v137, &qword_280072BB8, &qword_2664E6028);
      v138 = v188;
      v209(v188, v211, v53);
      v139 = sub_2664DFE18();
      v140 = sub_2664E06D8();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_26629C000, v139, v140, "AppleMediaServicesProvider#makeMediaAPICall AMS URL Components issue.", v141, 2u);
        MEMORY[0x266784AD0](v141, -1, -1);
      }

      v191(v138, v53);
      v207(0, 1);
    }

    else
    {
      v142 = v200;
      (*(v135 + 32))(v200, v137, v134);
      v143 = v189;
      v209(v189, v211, v53);
      (*(v135 + 16))(v136, v142, v134);
      v144 = sub_2664DFE18();
      v145 = sub_2664E06C8();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = v136;
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        aBlock[0] = v148;
        *v147 = 136315138;
        v149 = MEMORY[0x2667810C0]();
        v151 = v150;
        v198 = *(v135 + 8);
        (v198)(v146, v202);
        v152 = sub_2662A320C(v149, v151, aBlock);
        v53 = v208;

        *(v147 + 4) = v152;
        _os_log_impl(&dword_26629C000, v144, v145, "AppleMediaServicesProvider#makeMediaAPICall amsURLComponents: %s", v147, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v148);
        v153 = v148;
        v16 = v186;
        v134 = v202;
        MEMORY[0x266784AD0](v153, -1, -1);
        MEMORY[0x266784AD0](v147, -1, -1);
      }

      else
      {

        v198 = *(v135 + 8);
        (v198)(v136, v134);
      }

      v191(v143, v53);
      v154 = v190;
      v155 = sub_2664DE0B8();
      v156 = [v196 requestWithComponents_];

      aBlock[0] = 0;
      v157 = [v156 resultWithError_];

      v158 = aBlock[0];
      if (v157)
      {
        v159 = v157;
        v160 = v158;
        v161 = sub_2664E02A8();
        [v159 setHTTPMethod_];

        v162 = swift_allocObject();
        v163 = v185;
        v162[2] = v207;
        v162[3] = v163;
        aBlock[4] = sub_266332568;
        aBlock[5] = v162;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26632E2A0;
        aBlock[3] = &block_descriptor_34;
        v164 = _Block_copy(aBlock);

        v165 = [v195 dataTaskWithRequest:v159 completionHandler:v164];
        _Block_release(v164);

        v166 = v187;
        v209(v187, v211, v53);
        v167 = sub_2664DFE18();
        v168 = sub_2664E06C8();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = v16;
          v170 = swift_slowAlloc();
          *v170 = 0;
          _os_log_impl(&dword_26629C000, v167, v168, "SwitchPodcastNewsPreferenceFlow#makeMediaAPICall Resuming task.", v170, 2u);
          v171 = v170;
          v16 = v169;
          v53 = v208;
          MEMORY[0x266784AD0](v171, -1, -1);
        }

        v191(v166, v53);
        [v165 resume];
      }

      else
      {
        v172 = aBlock[0];
        v173 = sub_2664DE1A8();

        swift_willThrow();
        v209(v154, v211, v53);
        v174 = v173;
        v175 = sub_2664DFE18();
        v176 = sub_2664E06D8();

        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = v53;
          v179 = swift_slowAlloc();
          aBlock[0] = v179;
          *v177 = 136315138;
          swift_getErrorValue();
          v180 = sub_2664E0DE8();
          v182 = sub_2662A320C(v180, v181, aBlock);

          *(v177 + 4) = v182;
          v134 = v202;
          _os_log_impl(&dword_26629C000, v175, v176, "AppleMediaServicesProvider#makeMediaAPICall AMS Promise Result error: %s.", v177, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v179);
          MEMORY[0x266784AD0](v179, -1, -1);
          v183 = v177;
          v16 = v186;
          v184 = v203;
          MEMORY[0x266784AD0](v183, -1, -1);

          v191(v154, v178);
        }

        else
        {

          v191(v154, v53);
          v184 = v203;
        }

        v207(0, 1);
      }

      (v198)(v200, v134);
    }
  }

  else
  {
    v74 = v191;
    v209(v191, v211, v53);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06D8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26629C000, v75, v76, "AppleMediaServicesProvider#makeMediaAPICall Account was not retrieved.", v77, 2u);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v52(v74, v53);
    v207(0, 1);
  }

  return (*(v212 + 8))(v205, v16);
}

void sub_2663317E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "AppleMediaServicesProvider#purchaseItem handle dialogRequest", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = [objc_allocWithZone(MEMORY[0x277CEE460]) initWithRequest_];
  v15 = [v14 present];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26633283C;
  aBlock[3] = &block_descriptor_21_0;
  v16 = _Block_copy(aBlock);

  [v15 addFinishBlock_];
  _Block_release(v16);
}

void sub_266331A64(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "AppleMediaServicesProviding#purchase purchase handle engagementRequest", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = sub_2664E02A8();
  v11 = sub_2664E02A8();
  v12 = AMSError();

  v13 = sub_2664DE198();
  (*(a1 + 16))(a1, 0, v13);
}

void sub_266331CAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = a4;
    v19 = a2;
    v20 = a5;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, v18, v17, 2u);
    v22 = v21;
    a5 = v20;
    a2 = v19;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
  v24 = [v23 performAuthentication];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26633283C;
  aBlock[3] = a5;
  v25 = _Block_copy(aBlock);

  [v24 addFinishBlock_];
  _Block_release(v25);
}

void sub_266331F3C(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v49 = *(v3 + 16);
  v49(v13, v14, v2);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "AppleMediaServicesProvider#purchase purchase handle dialogRequest", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = *(v3 + 8);
  v18(v13, v2);
  v50 = [objc_allocWithZone(MEMORY[0x277D7FA50]) init];
  v49(v11, v14, v2);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v2;
    v22 = v8;
    v23 = v18;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "AppleMediaServicesProvider#purchase starting createMusicNotification", v24, 2u);
    v25 = v24;
    v18 = v23;
    v8 = v22;
    v2 = v21;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v18(v11, v2);
  v51 = 0;
  v26 = [v50 createMusicNotificationFromAMSDialogRequest:v47 error:&v51];
  v27 = v51;
  if (v26)
  {
    v49(v8, v14, v2);
    v28 = v27;
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v8;
      v32 = v18;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "AppleMediaServicesProvider#purchase createMusicNotification complete", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);

      v32(v31, v2);
    }

    else
    {

      v18(v8, v2);
    }
  }

  else
  {
    v45 = v18;
    v47 = v3 + 8;
    v34 = v51;
    v35 = sub_2664DE1A8();

    swift_willThrow();
    v36 = v46;
    v49(v46, v14, v2);
    v37 = v35;
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_2664E0DE8();
      v44 = sub_2662A320C(v42, v43, &v51);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_26629C000, v38, v39, "AppleMediaServicesProviding#purchase error %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    else
    {
    }

    v45(v36, v2);
  }

  (*(v48 + 16))(v48, 0, 0);
}

uint64_t sub_2663324F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266332570(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2662BD660;

  return sub_26632DD00(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t sub_266332638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2662C1890;

  return sub_26633992C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_46Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_266332754(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2662C1890;

  return sub_26632DAAC(a1, v1 + 16, v4, v5, v6, v7);
}

SCNetworkReachabilityRef sub_266332854()
{
  v3 = *MEMORY[0x277D85DE8];
  type metadata accessor for Reachability();
  v0 = swift_allocObject();
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  result = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (result)
  {
    *(v0 + 16) = result;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v0 = 0;
  }

  qword_280072BD8 = v0;
  return result;
}

uint64_t sub_26633293C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  flags = 0;
  v3 = *(a1 + 16);
  result = SCNetworkReachabilityGetFlags(v3, &flags);
  v5 = 0;
  if (result)
  {
    v6 = (flags & 2) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    flags = 0;
    result = SCNetworkReachabilityGetFlags(v3, &flags);
    if (result)
    {
      v7 = (flags & 4) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v5 = 1;
    }

    else
    {
      flags = 0;
      result = SCNetworkReachabilityGetFlags(v3, &flags);
      v5 = (flags & 1) == 0 || result == 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_266332A0C()
{

  return swift_deallocClassInstance();
}

BOOL sub_266332A44()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071AB8 != -1)
  {
    swift_once();
  }

  v8 = qword_280072BD8;
  if (qword_280072BD8)
  {
    v9 = qword_280F91508;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = qword_280F91D48;
    sub_2664DFDE8();
    v11 = sub_2664E0848();
    sub_2664DFDC8(v11, &dword_26629C000, v10, "networkStatusProviderIsReachable", 32, 2, v7, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_26633293C(v8, &v19);
    sub_2664E0838();
    sub_2664DFDD8();

    (*(v5 + 8))(v7, v4);
    return !v19;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v13, v0);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "Unable to get Reachability object", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

uint64_t AccountProvider.__allocating_init(serviceController:multiuserConnection:accountStoreProvider:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_266339C5C(a1, a2, v11, v6, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

id Identity.userIdentity.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Identity.privateListening.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_266332FBC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v5 = type metadata accessor for MultiUserConnectionProvider();
  v6 = &protocol witness table for MultiUserConnectionProvider;
  v4[0] = v1;
  type metadata accessor for AccountProvider();
  v2 = swift_allocObject();

  v3 = sub_266360778(v0, v4, v2);

  qword_280F90D28 = v3;
}

uint64_t static AccountProvider.shared.getter()
{
  if (qword_280F90D20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2663330EC()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000035, 0x80000002664F4F60, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280072BE0 = v8;
  return result;
}

uint64_t AccountProvider.init(serviceController:multiuserConnection:accountStoreProvider:)(void *a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_266339C5C(a1, a2, v11, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

uint64_t sub_266333390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C18, &qword_2664E62E0);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385DA4(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000002664F5000;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001DLL, 0x80000002664F5000, 1, v3);
  *(v0 + 24) = result;
  off_280072BE8 = v0;
  return result;
}

void sub_2663334A4(void (*a1)(id *))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "AccountProvider#defaultAccount Using active account with configured private listening for single user only device", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = [objc_opt_self() activeAccount];
  v12 = 0;
  a1(&v11);
  sub_26633C3AC(v11, v12);
}

void sub_266333698(uint64_t a1, void *a2, char *a3, void *a4, void (*a5)(id *), uint64_t a6)
{
  v12 = [objc_opt_self() currentDeviceInfo];
  v13 = [v12 supportsMultipleITunesAccounts];

  if (v13)
  {

    sub_26633393C(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (qword_280071AD0 != -1)
    {
      swift_once();
    }

    v14[0] = 0x755F656C676E6973;
    v14[1] = 0xEB00000000726573;
    (*(*off_280072BE8 + 160))(v14, sub_266333820, 0, 0, 1, a5, a6);
  }
}

uint64_t sub_266333824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_26633A5B4(a1, a2, 1, sub_266339DC8, v8);
}

void sub_2663338C0(uint64_t a1, void (*a2)(void **))
{
  v3 = *a1;
  if (*a1 == 1)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = v4;
    v6 = v3;
  }

  v9 = v3;
  v10 = v4;
  a2(&v9);
  v7 = v9;
  v8 = v10;

  sub_26633C3AC(v7, v8);
}

void sub_26633393C(uint64_t a1, void *a2, char *a3, void *a4, void (*a5)(id *), uint64_t a6)
{
  v83 = a1;
  v86 = a5;
  v87 = a6;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v77 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v77 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v10 + 16);
  v92 = v10 + 16;
  v93 = v24;
  v91 = v25;
  v25(v23, v24, v9);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "AccountProvider#multiuserAccount On multi user device, computing account to use", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v29 = *(v10 + 8);
  v90 = v10 + 8;
  v29(v23, v9);
  v30 = sub_266339DD0(0xD000000000000017, 0x80000002664F4FA0);
  if (v31)
  {
    v32 = v31;
    v33 = a2;
    a3 = v30;
    v89 = v31;
  }

  else
  {
    v33 = a2;

    v89 = a4;
    v32 = a4;
  }

  v91(v21, v93, v9);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  v36 = os_log_type_enabled(v34, v35);
  v84 = a3;
  v85 = v29;
  v80 = v32;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v94 = v38;
    v95 = a3;
    *v37 = 136315138;
    v96 = v89;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v39 = sub_2664E0318();
    v41 = v33;
    v42 = sub_2662A320C(v39, v40, &v94);

    *(v37 + 4) = v42;
    v33 = v41;
    _os_log_impl(&dword_26629C000, v34, v35, "AccountProvider#multiuserAccount librarySharedUserID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266784AD0](v38, -1, -1);
    v43 = v37;
    v29 = v85;
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v29(v21, v9);
  v44 = v83;
  v45 = v88;
  v46 = sub_266339DD0(0xD000000000000019, 0x80000002664F4FC0);
  if (v47)
  {
    v44 = v46;
    v33 = v47;
  }

  else
  {
  }

  v91(v45, v93, v9);

  v48 = sub_2664DFE18();
  v49 = sub_2664E06E8();

  v50 = os_log_type_enabled(v48, v49);
  v83 = v33;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v94 = v52;
    v95 = v44;
    *v51 = 136315138;
    v96 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v53 = sub_2664E0318();
    v55 = sub_2662A320C(v53, v54, &v94);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_26629C000, v48, v49, "AccountProvider#multiuserAccount requesterSharedUserID: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x266784AD0](v52, -1, -1);
    v56 = v51;
    v29 = v85;
    MEMORY[0x266784AD0](v56, -1, -1);

    v29(v88, v9);
  }

  else
  {

    v29(v45, v9);
  }

  v57 = v84;
  if (v89)
  {
    v58 = v81;
    v91(v81, v93, v9);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06E8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "AccountProvider#multiuserAccount we have libraryID, transforming to identity...", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v29(v58, v9);
    v62 = swift_allocObject();
    v62[2] = v86;
    v62[3] = v87;
    v62[4] = v44;
    v63 = v82;
    v62[5] = v83;
    v62[6] = v63;

    sub_26633A5B4(v57, v80, 1, sub_26633C4A8, v62);
  }

  else if (v83)
  {
    v64 = [objc_opt_self() activeAccount];
    v91(v79, v93, v9);
    v65 = v64;
    v66 = sub_2664DFE18();
    v67 = sub_2664E06E8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138477827;
      *(v68 + 4) = v65;
      *v69 = v65;
      v70 = v65;

      _os_log_impl(&dword_26629C000, v66, v67, "AccountProvider#multiuserAccount using %{private}@ in forced guest mode with forced private listening: true", v68, 0xCu);
      sub_2662A9238(v69, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    else
    {
    }

    v29(v79, v9);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v75 = v65;
    v76 = sub_2664E08E8();
    v95 = v65;
    v96 = v76;
    v86(&v95);

    sub_26633C3AC(v95, v96);
  }

  else
  {
    v71 = v78;
    v91(v78, v93, v9);
    v72 = sub_2664DFE18();
    v73 = sub_2664E06E8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_26629C000, v72, v73, "AccountProvider#multiuserAccount using active account with configured private listening", v74, 2u);
      MEMORY[0x266784AD0](v74, -1, -1);
    }

    v29(v71, v9);
    sub_2663334A4(v86);
  }
}

void sub_266334288(void **a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = *a1;
  if (*a1 < 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v18, v20, v9);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "AccountProvider#multiuserAccount LibraryUserIdenity was nil, returning nil", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    (*(v10 + 8))(v18, v9);
    v45 = 0;
    v46 = 0;
    v44(&v45);
LABEL_18:
    sub_26633C3AC(v45, v46);
    return;
  }

  if (!a5)
  {
    v33 = qword_280F914E8;
    v34 = v19;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v35, v9);
    v36 = v34;
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138477827;
      *(v39 + 4) = v36;
      *v40 = v19;
      v41 = v36;
      _os_log_impl(&dword_26629C000, v37, v38, "AccountProvider#multiuserAccount No requesterSharedUserID. Using %{private}@ in guest mode with forced private listening: true", v39, 0xCu);
      sub_2662A9238(v40, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v42 = v36;
    v43 = sub_2664E08E8();
    v45 = v19;
    v46 = v43;
    v44(&v45);

    goto LABEL_18;
  }

  v24 = qword_280F914E8;
  v25 = v19;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v16, v26, v9);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "AccountProvider#multiuserAccount we have valid libraryID, transforming requesterID to identity...", v29, 2u);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v10 + 8))(v16, v9);
  v30 = swift_allocObject();
  v31 = v44;
  v30[2] = v25;
  v30[3] = v31;
  v30[4] = a3;
  v32 = v25;

  sub_26633A5B4(a4, a5, 0, sub_26633C4B8, v30);
}

void sub_2663347D0(uint64_t a1, void *a2, void (*a3)(id *), uint64_t a4)
{
  v36[1] = a4;
  v37 = a3;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  v13 = *a1;
  if (*a1 == 1)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *(a1 + 8);
    v16 = v14;
    v15 = v13;
  }

  v17 = [v15 DSID];
  v18 = [a2 DSID];
  v19 = v18;
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_9;
    }

LABEL_15:

LABEL_16:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v27, v6);
    v28 = a2;
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138477827;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_26629C000, v29, v30, "AccountProvider#multiuserAccount using %{private}@ in guest mode with forced private listening: true", v31, 0xCu);
      sub_2662A9238(v32, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v34 = sub_2664E08E8();
    v38 = v28;
    v39 = v34;
    v35 = v28;
    v37(&v38);

    goto LABEL_21;
  }

  if (!v18)
  {
    v19 = v17;
    goto LABEL_15;
  }

  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v20 = sub_2664E0918();

  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v12, v21, v6);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "AccountProvider#multiuserAccount Owner spoke so return the active account and the configured private listening", v24, 2u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v7 + 8))(v12, v6);
  v38 = a2;
  v39 = v14;
  v25 = v14;
  v26 = a2;
  v37(&v38);

LABEL_21:
  sub_26633C3AC(v38, v39);
}

void sub_266334C2C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void **), uint64_t a6, int a7, uint64_t a8, char *a9)
{
  v81 = a8;
  v82 = a2;
  v80 = a7;
  v85 = a5;
  v86 = a6;
  v87 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v76 - v12;
  v14 = sub_2664DE4A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  v21 = sub_2664DFE38();
  v22 = *(v21 - 8);
  v83 = v21;
  v84 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v76 - v25;
  MEMORY[0x28223BE20](v24);
  v29 = &v76 - v28;
  if (a3)
  {
    v30 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = v83;
    v32 = __swift_project_value_buffer(v83, qword_280F914F0);
    swift_beginAccess();
    v33 = v84;
    (v84[2])(v29, v32, v31);
    v34 = a3;
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = sub_2664E0DE8();
      v41 = sub_2662A320C(v39, v40, &v89);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_26629C000, v35, v36, "AccountProvider#sharedIDToICUser Error returned from getHomeUserId: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v33[1](v29, v31);
    v89 = 0;
    v90 = 0;
    v85(&v89);

    goto LABEL_22;
  }

  v42 = v82;
  if (!v82)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = v83;
    v55 = __swift_project_value_buffer(v83, qword_280F914F0);
    swift_beginAccess();
    v56 = v84;
    (v84[2])(v26, v55, v54);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06D8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "AccountProvider#sharedIDToICUser Missing homeID from getHomeUserId", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v56[1](v26, v54);
    goto LABEL_21;
  }

  v43 = v15;
  v79 = v27;

  v44 = a1;
  sub_2664DE448();
  if ((*(v43 + 48))(v13, 1, v14) == 1)
  {
    sub_2662A9238(v13, &qword_280073C60, &unk_2664EE400);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = v83;
    v46 = __swift_project_value_buffer(v83, qword_280F914F0);
    swift_beginAccess();
    v47 = v84;
    v48 = v79;
    (v84[2])(v79, v46, v45);

    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v89 = v52;
      *v51 = 136315138;
      v53 = sub_2662A320C(v44, v42, &v89);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_26629C000, v49, v50, "AccountProvider#sharedIDToICUser Couldn't grab home identifier from homeID: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    else
    {
    }

    v47[1](v48, v45);
LABEL_21:
    v89 = 0;
    v90 = 0;
    v85(&v89);
LABEL_22:
    sub_26633C3AC(v89, v90);
    goto LABEL_23;
  }

  v79 = a9;
  v77 = a1;
  v60 = *(v43 + 32);
  v60(v20, v13, v14);
  v84 = [objc_opt_self() ic_sharedAccountStore];
  v61 = v14;
  v62 = v43;
  v78 = v20;
  v83 = sub_2664DE478();
  (*(v43 + 16))(v18, v20, v61);
  v63 = (*(v62 + 80) + 48) & ~*(v62 + 80);
  v64 = v63 + v16;
  v65 = (v63 + v16) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v82;
  *(v66 + 2) = v77;
  *(v66 + 3) = v67;
  v68 = v86;
  *(v66 + 4) = v85;
  *(v66 + 5) = v68;
  v60(&v66[v63], v18, v61);
  v66[v64] = v80 & 1;
  v69 = &v66[v65];
  v70 = v79;
  *(v69 + 1) = v81;
  *(v69 + 2) = v70;
  aBlock[4] = sub_26633C3F0;
  aBlock[5] = v66;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A6624;
  aBlock[3] = &block_descriptor_98_0;
  v71 = _Block_copy(aBlock);

  v73 = v83;
  v72 = v84;
  [v84 ic:v83 storeAccountForHomeUserIdentifier:v71 completion:?];
  _Block_release(v71);

  (*(v62 + 8))(v78, v61);
LABEL_23:
  v74 = v87;
  swift_beginAccess();
  v75 = *(v74 + 16);
  *(v74 + 16) = 0;
}

void sub_2663354E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id *), uint64_t a6, uint64_t a7, char a8, uint64_t a9, unint64_t a10)
{
  v116 = a6;
  v117 = a5;
  v114 = a3;
  v115 = a4;
  v14 = sub_2664DE4A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DFE38();
  v118 = *(v18 - 8);
  v119 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v112 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v112 - v27;
  MEMORY[0x28223BE20](v26);
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v31 = v119;
    v32 = __swift_project_value_buffer(v119, qword_280F914F0);
    swift_beginAccess();
    v33 = v118;
    (*(v118 + 16))(v21, v32, v31);
    v34 = v115;

    v35 = a2;
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v120 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_2662A320C(v114, v34, &v120);
      *(v38 + 12) = 2080;
      swift_getErrorValue();
      v121 = sub_2664E0DE8();
      v122 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v41 = sub_2664E0318();
      v43 = sub_2662A320C(v41, v42, &v120);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_26629C000, v36, v37, "AccountProvider#sharedIDToICUser homeID %s not found in database. Error: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v33 + 8))(v21, v31);
LABEL_7:
    v121 = 0;
    v122 = 0;
    v117(&v121);
LABEL_8:
    sub_26633C3AC(v121, v122);
    return;
  }

  v44 = a7;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v57 = v119;
    v58 = __swift_project_value_buffer(v119, qword_280F914F0);
    swift_beginAccess();
    v59 = v118;
    (*(v118 + 16))(v24, v58, v57);
    v60 = v15;
    v61 = v14;
    (*(v15 + 16))(v17, v44, v14);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v121 = v65;
      *v64 = 136315138;
      v66 = MEMORY[0x266781480]();
      v68 = v67;
      (*(v60 + 8))(v17, v61);
      v69 = sub_2662A320C(v66, v68, &v121);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_26629C000, v62, v63, "AccountProvider#sharedIDToICUser store Account is nil for homeIdentifier: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);

      (*(v118 + 8))(v24, v119);
    }

    else
    {

      (*(v60 + 8))(v17, v14);
      (*(v59 + 8))(v24, v57);
    }

    goto LABEL_7;
  }

  v45 = v30;
  v46 = &v112 - v29;
  v47 = a1;
  v48 = [v47 ic_DSID];
  if (!v48)
  {
    if (a8)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v70 = v119;
      v71 = __swift_project_value_buffer(v119, qword_280F914F0);
      swift_beginAccess();
      v72 = v118;
      (*(v118 + 16))(v45, v71, v70);
      v73 = v115;

      v74 = sub_2664DFE18();
      v75 = sub_2664E06C8();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = v47;
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v121 = v78;
        *v77 = 136315138;
        *(v77 + 4) = sub_2662A320C(v114, v73, &v121);
        _os_log_impl(&dword_26629C000, v74, v75, "AccountProvider#sharedIDToICUser no DSID for homeID: %s, but it is NOT required", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x266784AD0](v78, -1, -1);
        v47 = v76;
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      (*(v72 + 8))(v45, v70);
      sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
      v79 = sub_2664E08E8();
      v121 = 0;
      v122 = v79;
      v117(&v121);
    }

    else
    {
      v86 = v47;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v87 = v119;
      v88 = __swift_project_value_buffer(v119, qword_280F914F0);
      swift_beginAccess();
      v89 = v118;
      (*(v118 + 16))(v28, v88, v87);
      v90 = v115;

      v91 = sub_2664DFE18();
      v92 = sub_2664E06C8();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v121 = v94;
        *v93 = 136315138;
        *(v93 + 4) = sub_2662A320C(v114, v90, &v121);
        _os_log_impl(&dword_26629C000, v91, v92, "AccountProvider#sharedIDToICUser no DSID for homeID: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v94);
        MEMORY[0x266784AD0](v94, -1, -1);
        MEMORY[0x266784AD0](v93, -1, -1);
      }

      (*(v89 + 8))(v28, v87);
      v121 = 0;
      v122 = 0;
      v117(&v121);
    }

    goto LABEL_8;
  }

  v49 = v48;
  v50 = [v47 ic_privateListeningEnabledForHomeUsers];
  v113 = v47;
  if (v50)
  {
    v51 = v50;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    sub_2662A3D30(&qword_280072C08, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v52 = sub_2664E01C8();

    if (*(v52 + 16) && (v53 = sub_26634D960(v44), (v54 & 1) != 0))
    {
      v55 = *(*(v52 + 56) + 8 * v53);
      v56 = v55;
    }

    else
    {
      v55 = 0;
    }

    v80 = v118;
    v81 = v119;
  }

  else
  {
    v55 = 0;
    v80 = v118;
    v81 = v119;
  }

  if ([objc_opt_self() isCurrentDeviceValidHomeAccessory])
  {
    v82 = sub_2664DE478();
    v83 = [objc_opt_self() userMonitorWithHomeIdentifier_];

    if (v83)
    {
      v84 = [v83 isPrivateListeningEnabledForCurrentAccessory];
      v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    else
    {
      v85 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    v55 = v85;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v95 = __swift_project_value_buffer(v81, qword_280F914F0);
  swift_beginAccess();
  (*(v80 + 16))(v46, v95, v81);
  v96 = v49;

  v97 = sub_2664DFE18();
  v98 = v81;
  v99 = sub_2664E06C8();

  if (os_log_type_enabled(v97, v99))
  {
    v112 = a9;
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v115 = v55;
    v102 = v101;
    v103 = swift_slowAlloc();
    v114 = v103;
    *v100 = 138478339;
    *(v100 + 4) = v96;
    *v102 = v49;
    *(v100 + 12) = 2080;
    v120 = v115;
    v121 = v103;
    v104 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
    v105 = sub_2664E0938();
    v107 = sub_2662A320C(v105, v106, &v121);

    *(v100 + 14) = v107;
    *(v100 + 22) = 2080;
    *(v100 + 24) = sub_2662A320C(v112, a10, &v121);
    _os_log_impl(&dword_26629C000, v97, v99, "AccountProvider#sharedIDToICUser Returning Identity(withDSID: %{private}@, privateListening: %s) for sharedUserID: %s", v100, 0x20u);
    sub_2662A9238(v102, &qword_2800734B0, &unk_2664E3670);
    v55 = v115;
    MEMORY[0x266784AD0](v102, -1, -1);
    v108 = v114;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v108, -1, -1);
    v109 = v100;
    v110 = v113;
    MEMORY[0x266784AD0](v109, -1, -1);

    (*(v80 + 8))(v46, v119);
  }

  else
  {

    (*(v80 + 8))(v46, v98);
    v110 = v113;
  }

  v121 = [objc_opt_self() specificAccountWithDSID_];
  v122 = v55;
  v111 = v55;
  v117(&v121);

  sub_26633C3AC(v121, v122);
}

uint64_t sub_266336224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a1;
  v13[4] = a2;
  v14 = sub_2664E05C8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_26633A764;
  v15[5] = v12;
  v15[6] = &unk_2664E6150;
  v15[7] = v13;

  sub_26633E760(0, 0, v11, &unk_2664E6160, v15);
}

uint64_t sub_2663363DC()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  return (*(v0 + 8))();
}

uint64_t sub_2663363F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266336498;

  return sub_26633A8F4();
}

uint64_t sub_266336498(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_266336594(uint64_t a1, uint64_t a2)
{
  v34 = *v2;
  v35 = v2;
  v5 = sub_2664DFE08();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "AccountProvider#gdprPopIfNeeded", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = qword_280F91508;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_280F91D48;
  sub_2664DFDE8();
  v21 = v31;
  v22 = v32;
  v23 = v33;
  (*(v32 + 16))(v31, v9, v33);
  v24 = (*(v22 + 80) + 33) & ~*(v22 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = "gdprPop";
  *(v26 + 24) = 7;
  *(v26 + 32) = 2;
  (*(v22 + 32))(v26 + v24, v21, v23);
  v27 = (v26 + v25);
  *v27 = sub_2662D2B60;
  v27[1] = v18;

  v28 = sub_2664E0848();
  sub_2664DFDC8(v28, &dword_26629C000, v20, "gdprPop", 7, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2662D3010;
  *(v29 + 24) = v26;

  sub_266336A04(sub_2662DAE90, v29, v35, v34);

  return (*(v22 + 8))(v9, v23);
}

void sub_266336A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  v10 = swift_allocObject();
  v10[2] = sub_2662D2B74;
  v10[3] = v8;
  v10[4] = a4;
  v12[4] = sub_26633C308;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2663371F8;
  v12[3] = &block_descriptor_11;
  v11 = _Block_copy(v12);

  [v9 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v11);
}