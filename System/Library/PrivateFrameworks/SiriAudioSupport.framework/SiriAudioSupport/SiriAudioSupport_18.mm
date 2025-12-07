uint64_t INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t (*a7)(uint64_t, unint64_t, void **), uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v46 = a5;
  v50 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(v8);
  v15 = 0x80000002664F2F20;
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xD000000000000018;
  }

  v45 = v16;
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x80000002664F2F20;
  }

  v51 = v8;
  sub_26645A344();
  v49 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B88, &qword_2664ED798);
  if (swift_dynamicCast())
  {
    v18 = v9;
    v19 = *(&v55 + 1);
    v20 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v21 = (*(v20 + 24))(v19, v20);
    if (v21 && (v22 = v21, v23 = [v21 proxiedThirdPartyAppInfo], v22, v23))
    {
      v24 = [v23 bundleIdentifier];

      if (v24)
      {
        v43 = sub_2664E02C8();
        v26 = v25;
      }

      else
      {
        v43 = 0;
        v26 = 0;
      }

      v9 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(&v54);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v54);
      v43 = 0;
      v26 = 0;
      v9 = v18;
    }
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_2662A9238(&v54, &qword_280073B90, &qword_2664ED7A0);
    v43 = 0;
    v26 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v27, v9);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v44 = v17;
    v31 = v30;
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = 136315394;
    v41 = v9;
    v42 = 0x80000002664F2F20;
    v33 = v45;
    *(v31 + 4) = sub_2662A320C(v45, v44, &v53);
    *(v31 + 12) = 2080;
    v51 = v43;
    v52 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v34 = sub_2664E0938();
    v36 = sub_2662A320C(v34, v35, &v53);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_26629C000, v28, v29, "INIntent#targetBundleIdentifier initial launchId: %s, proxiedBundleId: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v32, -1, -1);
    v37 = v31;
    v17 = v44;
    MEMORY[0x266784AD0](v37, -1, -1);

    v15 = v42;
    (*(v10 + 8))(v12, v41);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v33 = v45;
  }

  if (v33 == 0xD000000000000018 && v17 == v15 || (sub_2664E0D88()) && !v26)
  {
    v38 = 0;
  }

  else
  {

    v38 = 2;
  }

  sub_2664594AC(v33, v17, v47, v48, v38, v46 & 1, v49, v50);
}

uint64_t sub_2664594AC(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, void **), uint64_t a4, int a5, char a6, uint64_t a7, void *a8)
{
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v12 = sub_2664DFE38();
  v46 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = a1;
  v53[0] = a1;
  v53[1] = a2;
  v51 = v53;
  if ((sub_2662AA720(sub_2662AA7CC, v50, &unk_2877E48F0) & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v12;
    v33 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v34 = v46;
    (*(v46 + 16))(v15, v33, v32);

    v35 = sub_2664DFE18();
    v36 = sub_2664E06C8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_2662A320C(v21, a2, &v52);
      _os_log_impl(&dword_26629C000, v35, v36, "INIntent#targetBundleIdentifier using provided: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v34 + 8))(v15, v32);
    goto LABEL_16;
  }

  if ((a6 & 1) == 0 && (a1 != 0xD000000000000018 || 0x80000002664F2F20 != a2) && (sub_2664E0D88() & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = v12;
    v40 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v41 = v46;
    (*(v46 + 16))(v18, v40, v39);

    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2662A320C(v21, a2, &v52);
      _os_log_impl(&dword_26629C000, v42, v43, "INIntent#targetBundleIdentifier using provided (alwaysInferAppFromSearchResults is false): %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v41 + 8))(v18, v39);
LABEL_16:
    LOBYTE(v52) = v47;
    return v49(v21, a2, &v52);
  }

  v54.value._rawValue = a8;
  v54.is_nil = 0;
  v23 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v54, v22);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = v12;
  v25 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v26 = v46;
  (*(v46 + 16))(v20, v25, v24);

  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_2662A320C(v23._countAndFlagsBits, v23._object, &v52);
    _os_log_impl(&dword_26629C000, v27, v28, "INIntent#targetBundleIdentifier using first party: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v26 + 8))(v20, v24);
  LOBYTE(v52) = v47;
  v49(v23._countAndFlagsBits, v23._object, &v52);
}

uint64_t INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = v7;
  *(v8 + 33) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  return MEMORY[0x2822009F8](sub_266459AE4, 0, 0);
}

uint64_t sub_266459AE4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 33);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v1;
  *(v6 + 24) = v7;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  *(v6 + 64) = v2;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B98, &qword_2664ED7B0);
  *v8 = v0;
  v8[1] = sub_266459C18;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000093, 0x80000002664F8F70, sub_26645A390, v6, v9);
}

uint64_t sub_266459C18()
{

  return MEMORY[0x2822009F8](sub_266459D30, 0, 0);
}

uint64_t sub_266459D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  **(v0 + 40) = *(v0 + 32);
  return (*(v0 + 8))(v1, v2);
}

uint64_t sub_266459D54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v53 = a7;
  v54 = a6;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  (*(v14 + 16))(&v48 - v15, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  v19 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a2);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xD000000000000018;
  }

  v51 = 0x80000002664F2F20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0x80000002664F2F20;
  }

  v55 = a2;
  sub_26645A344();
  v52 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B88, &qword_2664ED798);
  if (!swift_dynamicCast())
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    sub_2662A9238(&v58, &qword_280073B90, &qword_2664ED7A0);
LABEL_14:
    v29 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  v23 = *(&v59 + 1);
  v24 = v60;
  __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
  v25 = (*(v24 + 24))(v23, v24);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v58);
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v25 proxiedThirdPartyAppInfo];

  if (v27)
  {
    v28 = [v27 bundleIdentifier];

    if (v28)
    {
      v29 = sub_2664E02C8();
      v27 = v30;
    }

    else
    {
      v29 = 0;
      v27 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v58);
    v29 = 0;
  }

LABEL_18:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v31, v9);

  v32 = sub_2664DFE18();
  v33 = v9;
  v34 = sub_2664E06C8();

  if (os_log_type_enabled(v32, v34))
  {
    v35 = swift_slowAlloc();
    v50 = v18;
    v36 = v35;
    v37 = swift_slowAlloc();
    v49 = v33;
    v38 = v29;
    v39 = v37;
    v57 = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_2662A320C(v21, v22, &v57);
    *(v36 + 12) = 2080;
    v55 = v38;
    v56 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v40 = sub_2664E0938();
    v42 = sub_2662A320C(v40, v41, &v57);
    v48 = v12;
    v43 = v21;
    v44 = v42;

    *(v36 + 14) = v44;
    v21 = v43;
    _os_log_impl(&dword_26629C000, v32, v34, "INIntent#targetBundleIdentifier initial launchId: %s, proxiedBundleId: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v39, -1, -1);
    v45 = v36;
    v18 = v50;
    MEMORY[0x266784AD0](v45, -1, -1);

    (*(v10 + 8))(v48, v49);
  }

  else
  {

    (*(v10 + 8))(v12, v33);
  }

  if (v21 == 0xD000000000000018 && v22 == v51 || (sub_2664E0D88()) && !v27)
  {
    v46 = 0;
  }

  else
  {

    v46 = 2;
  }

  sub_2664594AC(v21, v22, sub_26645A3A8, v18, v46, v53 & 1, v52, v54);
}

uint64_t sub_26645A2E8(uint64_t a1, uint64_t a2, char *a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);
  return sub_2664E0588();
}

unint64_t sub_26645A344()
{
  result = qword_280F8F560;
  if (!qword_280F8F560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F560);
  }

  return result;
}

uint64_t sub_26645A3A8(uint64_t a1, uint64_t a2, char *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);

  return sub_26645A2E8(a1, a2, a3);
}

uint64_t sub_26645A444()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1 + 100);
  return sub_2664E0EB8();
}

uint64_t sub_26645A4BC(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  MEMORY[0x266783E90](v2 + 100);
  return sub_2664E0EB8();
}

uint64_t sub_26645A500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26645A650(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_26645A53C()
{
  result = sub_26638604C(&unk_2877E4980);
  qword_28007CD08 = result;
  return result;
}

SiriAudioSupport::DisambiguateItemsReason_optional __swiftcall DisambiguateItemsReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26645A57C()
{
  result = qword_280073BA8;
  if (!qword_280073BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BA8);
  }

  return result;
}

unint64_t sub_26645A5FC()
{
  result = qword_280073BB0;
  if (!qword_280073BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BB0);
  }

  return result;
}

uint64_t sub_26645A650(uint64_t a1)
{
  if ((a1 - 100) >= 5)
  {
    return 5;
  }

  else
  {
    return a1 - 100;
  }
}

uint64_t sub_26645A66C@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      v8 = MEMORY[0x277D5EE18];
      goto LABEL_13;
    case 2:
      v8 = MEMORY[0x277D5ED98];
      goto LABEL_13;
    case 3:
      v8 = MEMORY[0x277D5ED90];
      goto LABEL_13;
    case 4:
      v8 = MEMORY[0x277D5EDF0];
      goto LABEL_13;
    case 5:
    case 6:
      v8 = MEMORY[0x277D5EE08];
      goto LABEL_13;
    case 7:
      v8 = MEMORY[0x277D5ED58];
      goto LABEL_13;
    case 8:
      v8 = MEMORY[0x277D5EDC0];
      goto LABEL_13;
    case 9:
      v8 = MEMORY[0x277D5EDA0];
      goto LABEL_13;
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xE:
    case 0xF:
      v3 = sub_2664DF248();
      v4 = *(*(v3 - 8) + 56);
      v5 = v3;
      v6 = a1;
      v7 = 1;
      goto LABEL_14;
    case 0xD:
      v8 = MEMORY[0x277D5ED28];
      goto LABEL_13;
    default:
      v8 = MEMORY[0x277D5ED48];
LABEL_13:
      v9 = *v8;
      v10 = sub_2664DF248();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a1, v9, v10);
      v4 = *(v12 + 56);
      v6 = a1;
      v7 = 0;
      v5 = v10;
LABEL_14:

      return v4(v6, v7, 1, v5);
  }
}

double sub_26645A8F4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t FlowClientEventSender.__allocating_init(sirikitEventSender:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2662D31E4(a1, v2 + 16);
  return v2;
}

uint64_t sub_26645A9C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_2664DE8D8();

  v6 = a3;
  sub_2664DE8B8();
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_2664DE7E8();
}

uint64_t FlowClientEventSender.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26645AADC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;
  sub_2664DE8D8();

  v6 = a3;
  sub_2664DE8B8();
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_2664DE7E8();
}

uint64_t sub_26645AC1C(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a4;
  v11 = sub_2664DFE08();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v48 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[1];
  v55 = *a2;
  v56 = v19;
  v57[0] = a2[2];
  *(v57 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v20, v15);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = v6;
    v24 = v12;
    v25 = a5;
    v26 = a1;
    v27 = a3;
    v28 = v23;
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "RemoteRadioPlaybackHandler#preLoadQueue Radio playback", v23, 2u);
    v29 = v28;
    a3 = v27;
    a1 = v26;
    a5 = v25;
    v12 = v24;
    v6 = v48;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v30 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v31 = swift_allocObject();
  v32 = v56;
  *(v31 + 40) = v55;
  *(v31 + 16) = v49;
  *(v31 + 24) = a5;
  *(v31 + 32) = a1;
  *(v31 + 56) = v32;
  *(v31 + 72) = v57[0];
  *(v31 + 87) = *(v57 + 15);
  *(v31 + 91) = 0;
  *(v31 + 96) = v6;
  *(v31 + 104) = a3;
  v49 = *v30;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26645DF88;
  *(v33 + 24) = v31;

  sub_2662D2A64(&v55, v54);
  v34 = qword_280F91508;

  v35 = a3;

  if (v34 != -1)
  {
    swift_once();
  }

  v36 = qword_280F91D48;
  v37 = v50;
  sub_2664DFDE8();
  v38 = v51;
  v39 = v52;
  v40 = v53;
  (*(v52 + 16))(v51, v37, v53);
  v41 = (*(v39 + 80) + 33) & ~*(v39 + 80);
  v42 = (v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = "mediaPlaybackProviderRadioAvailability";
  *(v43 + 24) = 38;
  *(v43 + 32) = 2;
  (*(v39 + 32))(v43 + v41, v38, v40);
  v44 = (v43 + v42);
  *v44 = sub_26645DFDC;
  v44[1] = v33;

  v45 = sub_2664E0848();
  sub_2664DFDC8(v45, &dword_26629C000, v36, "mediaPlaybackProviderRadioAvailability", 38, 2, v37, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2662C0D38;
  *(v46 + 24) = v43;

  sub_26648D7B8(sub_2662C0DE0, v46, 0, v49);

  return (*(v39 + 8))(v37, v40);
}

void sub_26645B178(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8)
{
  v102 = a8;
  v100 = a7;
  v104 = a6;
  v101 = a5;
  v103 = a4;
  v105 = a2;
  v106 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v98[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v98[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v98[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v98[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v98[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v98[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v98[-v29];
  switch(a1)
  {
    case 0:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v54 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      v55 = *(v10 + 16);
      v55(v25, v54, v9);
      v56 = sub_2664DFE18();
      v57 = sub_2664E06D8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_26629C000, v56, v57, "RemoteRadioPlaybackHandler#preLoadQueue Radio unavailable", v58, 2u);
        MEMORY[0x266784AD0](v58, -1, -1);
      }

      v59 = *(v10 + 8);
      v59(v25, v9);
      v37 = 0x80000002664F90F0;
      v55(v22, v54, v9);
      v60 = sub_2664DFE18();
      v61 = sub_2664E06B8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v107 = v63;
        *v62 = 134218498;
        *(v62 + 4) = 6;
        *(v62 + 12) = 2048;
        *(v62 + 14) = 28;
        *(v62 + 22) = 2080;
        *(v62 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F90F0, &v107);
        _os_log_impl(&dword_26629C000, v60, v61, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v62, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x266784AD0](v63, -1, -1);
        v64 = v62;
        v37 = 0x80000002664F90F0;
        MEMORY[0x266784AD0](v64, -1, -1);
      }

      v59(v22, v9);
      v43 = xmmword_2664EDB10;
      goto LABEL_25;
    case 2:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      v45 = *(v10 + 16);
      v45(v19, v44, v9);
      v46 = sub_2664DFE18();
      v47 = sub_2664E06D8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_26629C000, v46, v47, "RemoteRadioPlaybackHandler#preLoadQueue Companion Unavailable", v48, 2u);
        MEMORY[0x266784AD0](v48, -1, -1);
      }

      v49 = *(v10 + 8);
      v49(v19, v9);
      v45(v16, v44, v9);
      v50 = sub_2664DFE18();
      v51 = sub_2664E06B8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v107 = v53;
        *v52 = 134218498;
        *(v52 + 4) = 6;
        *(v52 + 12) = 2048;
        *(v52 + 14) = 27;
        *(v52 + 22) = 2080;
        *(v52 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F90D0, &v107);
        _os_log_impl(&dword_26629C000, v50, v51, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v52, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x266784AD0](v53, -1, -1);
        MEMORY[0x266784AD0](v52, -1, -1);
      }

      v49(v16, v9);
      v107 = xmmword_2664EDB00;
      v108 = 0x80000002664F90D0;
      goto LABEL_26;
    case 1:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      v32 = *(v10 + 16);
      v32(v30, v31, v9);
      v33 = sub_2664DFE18();
      v34 = sub_2664E06D8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26629C000, v33, v34, "RemoteRadioPlaybackHandler#preLoadQueue Network unavailable", v35, 2u);
        MEMORY[0x266784AD0](v35, -1, -1);
      }

      v36 = *(v10 + 8);
      v36(v30, v9);
      v37 = 0x80000002664F9110;
      v32(v28, v31, v9);
      v38 = sub_2664DFE18();
      v39 = sub_2664E06B8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v107 = v41;
        *v40 = 134218498;
        *(v40 + 4) = 6;
        *(v40 + 12) = 2048;
        *(v40 + 14) = 26;
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_2662A320C(0xD000000000000012, 0x80000002664F9110, &v107);
        _os_log_impl(&dword_26629C000, v38, v39, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v40, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x266784AD0](v41, -1, -1);
        v42 = v40;
        v37 = 0x80000002664F9110;
        MEMORY[0x266784AD0](v42, -1, -1);
      }

      v36(v28, v9);
      v43 = xmmword_2664EDB20;
LABEL_25:
      v107 = v43;
      v108 = v37;
LABEL_26:
      v109 = 1;
      v105(&v107);
      sub_2662D2F30(v107, *(&v107 + 1), v108, v109);
      return;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v65, v9);
  v66 = sub_2664DFE18();
  v67 = sub_2664E06C8();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v103;
  v70 = v101;
  if (v68)
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_26629C000, v66, v67, "RemoteRadioPlaybackHandler#preLoadQueue Setting radio station queue", v71, 2u);
    MEMORY[0x266784AD0](v71, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v72 = objc_allocWithZone(MEMORY[0x277D27870]);
  v73 = sub_2664E02A8();
  v74 = [v72 initWithContextID:0 stationStringID:v73];

  v75 = *(v70 + 1);
  v76 = v74;
  [v76 setShouldOverrideManuallyCuratedQueue_];
  if (v69[11])
  {
    v77 = sub_2664E02A8();
  }

  else
  {
    v77 = 0;
  }

  [v76 setSiriRecommendationID_];

  swift_beginAccess();
  if (v69[3])
  {

    v78 = sub_2664E02A8();
  }

  else
  {
    v78 = 0;
  }

  [v76 setSiriAssetInfo_];

  v79 = sub_2664E01A8();
  [v76 setSiriWHAMetricsInfo_];

  v80 = [objc_opt_self() systemMediaApplicationDestination];
  if (*(v70 + 40) && !*(*(v70 + 24) + 16))
  {
    v90 = swift_allocObject();
    v91 = *(v70 + 16);
    *(v90 + 24) = *v70;
    *(v90 + 16) = v100;
    *(v90 + 40) = v91;
    *(v90 + 56) = *(v70 + 32);
    *(v90 + 71) = *(v70 + 47);
    v92 = v102;
    *(v90 + 80) = v76;
    *(v90 + 88) = v92;
    v93 = v105;
    v94 = v106;
    *(v90 + 96) = v69;
    *(v90 + 104) = v93;
    *(v90 + 112) = v94;
    v114 = sub_26645E01C;
    v115 = v90;
    aBlock = MEMORY[0x277D85DD0];
    v111 = 1107296256;
    v112 = sub_2663A0C48;
    v113 = &block_descriptor_33_0;
    v95 = _Block_copy(&aBlock);
    v96 = v76;

    sub_2662D2A64(v70, &v107);
    v97 = v92;

    [v80 resolveWithQueue:v96 routeIdentifiers:0 localPlaybackPermitted:a1 == 4 audioRoutingInfo:v104 & 0x1010101 completion:v95];
    _Block_release(v95);
  }

  else
  {
    v99 = a1 == 4;
    v81 = sub_2664E0488();
    v82 = swift_allocObject();
    *(v82 + 16) = v100;
    *(v82 + 24) = v76;
    v83 = *(v70 + 16);
    *(v82 + 32) = *v70;
    *(v82 + 48) = v83;
    *(v82 + 64) = *(v70 + 32);
    *(v82 + 79) = *(v70 + 47);
    v84 = v102;
    *(v82 + 88) = v102;
    *(v82 + 96) = v69;
    v85 = v106;
    *(v82 + 104) = v105;
    *(v82 + 112) = v85;
    v114 = sub_26645E008;
    v115 = v82;
    aBlock = MEMORY[0x277D85DD0];
    v111 = 1107296256;
    v112 = sub_2663A0C48;
    v113 = &block_descriptor_44;
    v86 = v70;
    v87 = _Block_copy(&aBlock);
    v88 = v76;

    sub_2662D2A64(v86, &v107);
    v89 = v84;

    [v80 resolveWithQueue:v88 hashedRouteIdentifiers:v81 localPlaybackPermitted:v99 audioRoutingInfo:v104 & 0x1010101 completion:v87];
    _Block_release(v87);
  }
}

uint64_t sub_26645BEF0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v95 = a8;
  v94 = a7;
  v90 = a5;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v81[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v81[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v81[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v81[-v23];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v89 = a4;
  v25 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v26 = *(v14 + 16);
  v93 = v25;
  v92 = v14 + 16;
  v91 = v26;
  v26(v24, v25, v13);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v14;
    v30 = a1;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "RemoteRadioPlaybackHandler#preLoadQueue [SE Route Logic] Attempting to play radio station queue", v31, 2u);
    v32 = v31;
    a1 = v30;
    v14 = v29;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v35 = *(v14 + 8);
  v33 = v14 + 8;
  v34 = v35;
  v35(v24, v13);
  v36 = v13;
  v37 = sub_2664AD590(a1, *(a3 + 32), *(a3 + 40));
  v38 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
  v82 = *(a3 + 50);
  *&v39 = *(a3 + 8);
  v88 = v39;
  v40 = *(a3 + 16);
  v41 = *(a6 + 104);
  *&v39 = *(a6 + 96);
  v87 = v39;
  v102[3] = &type metadata for PlaybackAttributes;
  v102[4] = &off_2877E7D78;
  v42 = swift_allocObject();
  v102[0] = v42;
  v43 = *(a3 + 16);
  *(v42 + 16) = *a3;
  *(v42 + 32) = v43;
  *(v42 + 48) = *(a3 + 32);
  *(v42 + 63) = *(a3 + 47);
  sub_26637C7BC(v38, &v97);
  sub_2662A5550(v102, v96);
  v44 = swift_allocObject();
  v45 = v100;
  *(v44 + 48) = v99;
  *(v44 + 64) = v45;
  v46 = v98;
  *(v44 + 16) = v97;
  *(v44 + 32) = v46;
  *&v45 = v88;
  *(&v45 + 1) = v40;
  *&v47 = v87;
  *(&v47 + 1) = v41;
  v48 = v101;
  *(v44 + 96) = v45;
  *(v44 + 112) = v47;
  *(v44 + 80) = v48;
  v49 = v95;
  *(v44 + 128) = v94;
  *(v44 + 136) = v49;
  sub_2662A8618(v96, v44 + 144);
  v50 = v89;
  v51 = v90;
  *(v44 + 184) = v89;
  *(v44 + 192) = v51;
  *(v44 + 200) = 0;
  if (!v37)
  {
    v91(v86, v93, v36);
    sub_2662D2A64(a3, &v97);

    v59 = v50;
    v60 = v51;

    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();
    v63 = v36;
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v64, 2u);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    v34(v86, v63);
    v65 = v84;
    v91(v84, v93, v63);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06B8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v97 = v69;
      *v68 = 134218498;
      *(v68 + 4) = 15;
      *(v68 + 12) = 2048;
      *(v68 + 14) = 13;
      *(v68 + 22) = 2080;
      *(v68 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v97);
      _os_log_impl(&dword_26629C000, v66, v67, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v68, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    v34(v65, v63);
    v97 = xmmword_2664E8DA0;
    *&v98 = 0xE900000000000074;
    BYTE8(v98) = 1;
    v94(&v97);
    goto LABEL_19;
  }

  *&v88 = v33;
  v52 = v36;
  sub_2662D2A64(a3, &v97);

  v53 = v50;
  v54 = v51;

  [v37 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v83;
    v91(v83, v93, v36);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "Guaranteed cast to mutable RemoteControlDestination failed", v73, 2u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v34(v70, v52);
    v74 = v85;
    v91(v85, v93, v52);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v97 = v78;
      *v77 = 134218498;
      *(v77 + 4) = 15;
      *(v77 + 12) = 2048;
      *(v77 + 14) = 22;
      *(v77 + 22) = 2080;
      *(v77 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v97);
      _os_log_impl(&dword_26629C000, v75, v76, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v77, -1, -1);

      v79 = v85;
    }

    else
    {

      v79 = v74;
    }

    v34(v79, v52);
    v97 = xmmword_2664E8D90;
    *&v98 = 0x80000002664F5AE0;
    BYTE8(v98) = 1;
    v94(&v97);

LABEL_19:

    sub_2662D2F30(v97, *(&v97 + 1), v98, SBYTE8(v98));
    return __swift_destroy_boxed_opaque_existential_1Tm(v102);
  }

  v55 = v96[0];
  [v96[0] setSingleGroup_];
  v56 = v53;
  v57 = v37;

  v58 = v55;
  sub_2664ADBE8(v57, v54, v57, v56, sub_26637C818, v44, v58, v82);

  return __swift_destroy_boxed_opaque_existential_1Tm(v102);
}

uint64_t sub_26645C8C8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v89 = a8;
  v93 = a7;
  v88 = a5;
  v87 = a3;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v78[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v78[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v78[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v78[-v22];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v13 + 16);
  v92 = v24;
  v91 = v25;
  v25(v23, v24, v12);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v90 = a2;
    v29 = v12;
    v30 = a1;
    v31 = v13;
    v32 = v28;
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "RemoteRadioPlaybackHandler#preLoadQueue Attempting to play radio station queue", v28, 2u);
    v33 = v32;
    v13 = v31;
    a1 = v30;
    v12 = v29;
    a2 = v90;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v34 = *(v13 + 8);
  v83 = v13 + 8;
  v90 = v34;
  (v34)(v23, v12);
  v35 = __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
  v79 = *(a4 + 50);
  *&v36 = *(a4 + 8);
  v86 = v36;
  v37 = *(a4 + 16);
  v38 = *(a6 + 104);
  *&v36 = *(a6 + 96);
  v85 = v36;
  v100[3] = &type metadata for PlaybackAttributes;
  v100[4] = &off_2877E7D78;
  v39 = swift_allocObject();
  v100[0] = v39;
  v40 = *(a4 + 16);
  *(v39 + 16) = *a4;
  *(v39 + 32) = v40;
  *(v39 + 48) = *(a4 + 32);
  *(v39 + 63) = *(a4 + 47);
  sub_26637C7BC(v35, &v95);
  sub_2662A5550(v100, v94);
  v41 = swift_allocObject();
  v42 = v98;
  *(v41 + 48) = v97;
  *(v41 + 64) = v42;
  v43 = v96;
  *(v41 + 16) = v95;
  *(v41 + 32) = v43;
  *&v42 = v86;
  *(&v42 + 1) = v37;
  *&v44 = v85;
  *(&v44 + 1) = v38;
  v45 = v99;
  *(v41 + 96) = v42;
  *(v41 + 112) = v44;
  *(v41 + 80) = v45;
  v46 = v89;
  *(v41 + 128) = v93;
  *(v41 + 136) = v46;
  sub_2662A8618(v94, v41 + 144);
  v47 = v87;
  v48 = v88;
  *(v41 + 184) = v87;
  *(v41 + 192) = v48;
  *(v41 + 200) = 0;
  if (!a1)
  {
    v91(v84, v92, v12);
    sub_2662D2A64(a4, &v95);

    v56 = v47;
    v57 = v48;

    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    (v90)(v84, v12);
    v61 = v82;
    v91(v82, v92, v12);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06B8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v95 = v65;
      *v64 = 134218498;
      *(v64 + 4) = 15;
      *(v64 + 12) = 2048;
      *(v64 + 14) = 13;
      *(v64 + 22) = 2080;
      *(v64 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v95);
      _os_log_impl(&dword_26629C000, v62, v63, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v64, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    (v90)(v61, v12);
    v95 = xmmword_2664E8DA0;
    *&v96 = 0xE900000000000074;
    BYTE8(v96) = 1;
    v93(&v95);
    goto LABEL_19;
  }

  sub_2662D2A64(a4, &v95);

  v49 = v47;
  v50 = v48;
  v51 = a1;

  [v51 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = v80;
    v91(v80, v92, v12);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26629C000, v67, v68, "Guaranteed cast to mutable RemoteControlDestination failed", v69, 2u);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    (v90)(v66, v12);
    v70 = v81;
    v91(v81, v92, v12);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06B8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v70;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v95 = v75;
      *v74 = 134218498;
      *(v74 + 4) = 15;
      *(v74 + 12) = 2048;
      *(v74 + 14) = 22;
      *(v74 + 22) = 2080;
      *(v74 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v95);
      _os_log_impl(&dword_26629C000, v71, v72, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v74, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x266784AD0](v75, -1, -1);
      MEMORY[0x266784AD0](v74, -1, -1);

      v76 = v73;
    }

    else
    {

      v76 = v70;
    }

    (v90)(v76, v12);
    v95 = xmmword_2664E8D90;
    *&v96 = 0x80000002664F5AE0;
    BYTE8(v96) = 1;
    v93(&v95);

LABEL_19:

    sub_2662D2F30(v95, *(&v95 + 1), v96, SBYTE8(v96));
    return __swift_destroy_boxed_opaque_existential_1Tm(v100);
  }

  v52 = v94[0];
  [v94[0] setSingleGroup_];
  v53 = v49;
  v54 = v51;

  v55 = v52;
  sub_2664ADBE8(v54, v50, v54, v53, sub_26637F70C, v41, v55, v79);

  return __swift_destroy_boxed_opaque_existential_1Tm(v100);
}

id sub_26645D2A8(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2662A320C(a1[7], a1[8], v19);
    _os_log_impl(&dword_26629C000, v7, v8, "RemoteRadioPlaybackHandler#getPlaybackQueueForAddToUpNext returning radioplaybackQueue for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = objc_allocWithZone(MEMORY[0x277D27870]);
  v12 = sub_2664E02A8();
  v13 = [v11 initWithContextID:0 stationStringID:v12];

  swift_beginAccess();
  if (a1[3])
  {
    v14 = v13;

    v15 = sub_2664E02A8();
  }

  else
  {
    v16 = v13;
    v15 = 0;
  }

  [v13 setSiriAssetInfo_];

  v17 = [v13 createRemotePlaybackQueue];
  return v17;
}

uint64_t sub_26645D578(void *a1, void *a2, void *a3, void *a4)
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
  v21 = sub_26645D818(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_26645D818(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
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

void sub_26645DF88(uint64_t a1)
{
  if (*(v1 + 94))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 93))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 92))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_26645B178(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + 40, v4 | *(v1 + 91) | v3 | v2, *(v1 + 96), *(v1 + 104));
}

uint64_t SiriAudioLinkServices.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x69746E655F707061;
  *(result + 24) = 0xEF657079745F7974;
  return result;
}

uint64_t SiriAudioLinkServices.init()()
{
  result = v0;
  *(v0 + 16) = 0x69746E655F707061;
  *(v0 + 24) = 0xEF657079745F7974;
  return result;
}

void sub_26645E0A8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v128 = *MEMORY[0x277D85DE8];
  v126 = sub_2664DF198();
  v6 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v8 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v106 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v103 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v100 - v13;
  MEMORY[0x28223BE20](v12);
  v104 = v100 - v15;
  v16 = sub_2664DFE88();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v122 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFF28();
  v20 = MEMORY[0x28223BE20](v19);
  v121 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = *(a1 + 16);
  v105 = v9;
  v119 = v25;
  if (!v25)
  {
    v73 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v74 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v75 = v106;
    (*(v106 + 16))(v14, v74, v9);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06C8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26629C000, v76, v77, "SiriAudioLinkServiceConnection#mediaItems no app bundle id for connection policy.", v78, 2u);
      v79 = v78;
      v75 = v106;
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    (*(v75 + 8))(v14, v105);
    v73(MEMORY[0x277D84F90]);
    return;
  }

  v101 = a2;
  v102 = a3;
  v118 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v26 = v22;
  v27 = v24;
  v28 = v100 - v23;
  sub_2664DFE78();
  v100[0] = sub_2664DFEC8();
  v100[1] = v29;
  v30 = *(v27 + 8);
  v107 = v28;
  v113 = v26;
  v112 = v27 + 8;
  v111 = v30;
  v30(v28, v26);
  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v34 = *(v17 + 16);
  v33 = v17 + 16;
  v117 = v34;
  v125 = v6 + 16;
  v116 = *(v33 + 56);
  v124 = (v6 + 8);
  v110 = (v33 - 8);
  v35 = v6;
  v115 = v16;
  v114 = v33;
  while (2)
  {
    v123 = v32;
    v120 = v31;
    v117(v122, v118 + v116 * v31, v16);
    sub_2664DFE78();
    sub_2664DFF18();
    v36 = sub_2664DF2E8();

    v32 = *(v36 + 16);
    if (!v32)
    {
LABEL_3:

      v111(v121, v113);
      v16 = v115;
      (*v110)(v122, v115);
      v32 = v123;
      goto LABEL_4;
    }

    v37 = 0;
    v39 = *(v108 + 16);
    v38 = *(v108 + 24);
    v40 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    while (1)
    {
      if (v37 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v42 = v35;
      (*(v35 + 16))(v8, v40 + *(v35 + 72) * v37, v126);
      v43 = sub_2664DF188();
      if (!v44)
      {
        goto LABEL_8;
      }

      if (v43 == v39 && v44 == v38)
      {
        break;
      }

      v41 = sub_2664E0D88();

      if (v41)
      {
        goto LABEL_14;
      }

LABEL_8:
      ++v37;
      (*v124)(v8, v126);
      v35 = v42;
      if (v32 == v37)
      {
        goto LABEL_3;
      }
    }

LABEL_14:

    v109 = sub_2664DF178();
    (*v124)(v8, v126);
    v45 = v113;
    v46 = v111;
    v111(v121, v113);
    v47 = v107;
    v48 = v122;
    sub_2664DFE78();
    sub_2664DFEF8();
    v46(v47, v45);
    v49 = objc_allocWithZone(MEMORY[0x277D23800]);
    v50 = sub_2664E02A8();

    v51 = sub_2664E02A8();

    v52 = [v49 initWithTypeIdentifier:v50 instanceIdentifier:v51];

    v16 = v115;
    v53 = (*v110)(v48, v115);
    v32 = v123;
    v35 = v42;
    if (v52)
    {
      MEMORY[0x266783490](v53);
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2664E04C8();
        v35 = v42;
      }

      sub_2664E0518();
      v32 = aBlock[0];
    }

LABEL_4:
    v31 = v120 + 1;
    if (v120 + 1 != v119)
    {
      continue;
    }

    break;
  }

  v54 = objc_opt_self();
  v55 = sub_2664E02A8();

  v39 = [v54 policyWithBundleIdentifier_];

  if (qword_280F914E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v56 = v105;
  v57 = __swift_project_value_buffer(v105, qword_280F914F0);
  swift_beginAccess();
  v58 = v106;
  v59 = *(v106 + 16);
  v60 = v104;
  v59(v104, v57, v56);

  v61 = sub_2664DFE18();
  v62 = sub_2664E06C8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *v63 = 136315138;
    v65 = sub_2662C1744(0, &qword_280072D18, 0x277D23800);
    v123 = v32;
    v66 = MEMORY[0x2667834D0](v32, v65);
    v68 = v57;
    v69 = v59;
    v70 = v39;
    v71 = sub_2662A320C(v66, v67, aBlock);

    *(v63 + 4) = v71;
    v39 = v70;
    v59 = v69;
    v57 = v68;
    _os_log_impl(&dword_26629C000, v61, v62, "SiriAudioLinkServiceConnection#mediaItems fetching structured data for entities identifiers: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x266784AD0](v64, -1, -1);
    MEMORY[0x266784AD0](v63, -1, -1);

    v72 = *(v106 + 8);
    v72(v104, v105);
  }

  else
  {
    v123 = v32;

    v72 = *(v58 + 8);
    v72(v60, v56);
  }

  v80 = v102;
  aBlock[0] = 0;
  v81 = [v39 connectionWithError_];
  v82 = aBlock[0];
  if (v81)
  {
    v83 = v81;
    sub_2662C1744(0, &qword_280072D18, 0x277D23800);
    v84 = v82;
    v85 = v123;
    v86 = sub_2664E0488();
    v87 = swift_allocObject();
    v87[2] = v101;
    v87[3] = v80;
    v87[4] = v85;
    aBlock[4] = sub_26645F828;
    aBlock[5] = v87;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26645F6DC;
    aBlock[3] = &block_descriptor_45;
    v88 = _Block_copy(aBlock);

    [v83 fetchStructuredDataWithTypeIdentifier:9 forEntityIdentifiers:v86 completionHandler:v88];

    _Block_release(v88);
  }

  else
  {
    v89 = aBlock[0];

    v90 = sub_2664DE1A8();

    swift_willThrow();
    v91 = v105;
    v59(v103, v57, v105);
    v92 = v90;
    v93 = sub_2664DFE18();
    v94 = sub_2664E06C8();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412290;
      v97 = v90;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 4) = v98;
      *v96 = v98;
      _os_log_impl(&dword_26629C000, v93, v94, "SiriAudioLinkServiceConnection#mediaItems fetchStructuredData failed with error: %@", v95, 0xCu);
      sub_2662E4324(v96);
      MEMORY[0x266784AD0](v96, -1, -1);
      v99 = v95;
      v91 = v105;
      MEMORY[0x266784AD0](v99, -1, -1);
    }

    v72(v103, v91);
    v101(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_26645EDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, unint64_t a5)
{
  v75 = a4;
  v76 = a3;
  v7 = sub_2664DFBE8();
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFC48();
  v80 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v79 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v68 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v19 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v20 = *(v14 + 16);
    v73 = v19;
    v72 = v14 + 16;
    v71 = v20;
    v20(v18, v19, v13);

    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();

    v23 = os_log_type_enabled(v21, v22);
    v82 = v9;
    v81 = a5;
    v87 = a1;
    if (v23)
    {
      v24 = v13;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v95 = v87;
      v96[0] = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BC8, &qword_2664EDC08);
      v27 = sub_2664E0318();
      v29 = sub_2662A320C(v27, v28, v96);
      v9 = v82;

      *(v25 + 4) = v29;
      a5 = v81;
      _os_log_impl(&dword_26629C000, v21, v22, "SiriAudioLinkServiceConnection#mediaItems structuredData: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      v30 = v25;
      v13 = v24;
      a1 = v87;
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v70 = *(v14 + 8);
    v70(v18, v13);
    if (!a1)
    {
      return v76(MEMORY[0x277D84F90]);
    }

    v31 = a5 >> 62 ? sub_2664E0A68() : *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v13;
    if (!v31)
    {
      break;
    }

    v13 = 0;
    v32 = a5 & 0xC000000000000001;
    v92 = a1 & 0xC000000000000001;
    v93 = a5 & 0xFFFFFFFFFFFFFF8;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v33 = a1;
    }

    v91 = v33;
    v90 = MEMORY[0x277D84F90];
    v85 = (v80 + 32);
    v78 = v31;
    v77 = v14;
    v86 = a5 & 0xC000000000000001;
    while (1)
    {
      if (v32)
      {
        v34 = MEMORY[0x266783B70](v13, a5);
      }

      else
      {
        if (v13 >= *(v93 + 16))
        {
          goto LABEL_45;
        }

        v34 = *(a5 + 8 * v13 + 32);
      }

      v35 = v34;
      v36 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v92)
      {
        v37 = sub_2664E0C38();
        if (v37)
        {
          v94 = v37;
          sub_2662C1744(0, &qword_280073BB8, 0x277D23958);
          swift_dynamicCast();
          v18 = v95;
          if (v95)
          {
            goto LABEL_24;
          }
        }
      }

      else if (*(a1 + 16))
      {
        v18 = a1;
        v38 = sub_26634DCD8(v34);
        if (v39)
        {
          v18 = *(*(a1 + 56) + 8 * v38);
          if (v18)
          {
LABEL_24:
            v40 = [v18 value];

            sub_2664E09E8();
            swift_unknownObjectRelease();
            sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
            if (swift_dynamicCast())
            {
              v41 = v95;
              v42 = [v95 identifier];
              if (v42)
              {
                v43 = v42;
                v44 = sub_2664E02C8();
                v83 = v45;
                v84 = v44;
              }

              else
              {
                v83 = 0;
                v84 = 0;
              }

              v46 = [v41 title];
              if (v46)
              {
                v47 = v46;
                sub_2664E02C8();
              }

              v48 = [v41 type];
              sub_2663ECB60(v48, v89);
              v49 = [v41 artist];
              if (v49)
              {
                v50 = v49;
                sub_2664E02C8();
              }

              v51 = v79;
              sub_2664DFBF8();

              v52 = *v85;
              v9 = v82;
              (*v85)(v88, v51, v82);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_266385190(0, *(v90 + 2) + 1, 1, v90);
              }

              v14 = v77;
              a5 = v81;
              a1 = v87;
              v54 = *(v90 + 2);
              v53 = *(v90 + 3);
              v18 = (v54 + 1);
              if (v54 >= v53 >> 1)
              {
                v90 = sub_266385190((v53 > 1), v54 + 1, 1, v90);
              }

              v55 = v90;
              *(v90 + 2) = v18;
              v52(&v55[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v54], v88, v9);
              v31 = v78;
              v32 = v86;
            }

            else
            {

              v32 = v86;
            }

            goto LABEL_12;
          }
        }
      }

LABEL_12:
      ++v13;
      if (v36 == v31)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v90 = MEMORY[0x277D84F90];
LABEL_41:
  v57 = v74;
  v58 = v69;
  v71(v74, v73, v69);
  v59 = v90;

  v60 = sub_2664DFE18();
  v61 = sub_2664E06C8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v96[0] = v63;
    *v62 = 136315138;
    v64 = MEMORY[0x2667834D0](v90, v9);
    v66 = sub_2662A320C(v64, v65, v96);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_26629C000, v60, v61, "SiriAudioLinkServiceConnection#mediaItems returning mediaItems: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v67 = v63;
    v59 = v90;
    MEMORY[0x266784AD0](v67, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);
  }

  v70(v57, v58);
  v76(v59);
}

uint64_t sub_26645F6DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2662C1744(0, &qword_280072D18, 0x277D23800);
    sub_2662C1744(0, &qword_280073BB8, 0x277D23958);
    sub_26645F8BC();
    v4 = sub_2664E01C8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t SiriAudioLinkServices.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26645F8BC()
{
  result = qword_280073BC0;
  if (!qword_280073BC0)
  {
    sub_2662C1744(255, &qword_280072D18, 0x277D23800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BC0);
  }

  return result;
}

uint64_t sub_26645F924(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2662FD038(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2662FD038((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_266318804(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26645FA24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2662FD09C(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v12;
    do
    {
      v5 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F80, &unk_2664EDCC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072900, &qword_2664E4F70);
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2662FD09C((v6 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26645FB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2662FD160(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AD0, &unk_2664ED660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2662FD160((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_26645FC98(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_2664E0A68();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_2662FD038(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x266783B70](i, a1);
        sub_2662C1744(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2662FD038((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_266318804(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_2662C1744(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_2662FD038((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_266318804(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_26645FE84(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2664E0A68())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE8, &qword_2664EDCD0);
  v3 = sub_2664E0AF8();
LABEL_6:
  if (sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_2664E0A58();
      sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
      sub_26639F040(&qword_2800731E8, &qword_280072508, 0x277CD5E30);
      sub_2664E0638();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_2664629E4(v35);
    }

    if (sub_2664E0A88())
    {
      sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_2662B793C(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_2664E0A58();
    sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    sub_26639F040(&qword_2800731E8, &qword_280072508, 0x277CD5E30);
    sub_2664E0638();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_2664E0A88())
    {
LABEL_38:
      sub_2662B793C(v1);
      goto LABEL_57;
    }

    sub_2662C1744(0, &qword_280072508, 0x277CD5E30);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_2664E0908();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_2664603B0(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_2664E0A68())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = MEMORY[0x277D84FA0];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);

    v32 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  v9 = sub_2664E0AF8();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_2664E0A58();
  sub_2662C1744(0, a2, a3);
  sub_26639F040(a4, a2, a3);
  sub_2664E0638();
  v7 = v36;
  v10 = v37;
  v11 = v38;
  v32 = v39;
  v12 = v40;
LABEL_11:
  v16 = v9 + 56;
  while (v7 < 0)
  {
    v20 = sub_2664E0A88();
    if (!v20)
    {
LABEL_34:
      sub_2662B793C(v7);

      return;
    }

    *&v33 = v20;
    sub_2662C1744(0, a2, a3);
    swift_dynamicCast();
LABEL_25:
    sub_2662C1744(0, a2, a3);
    swift_dynamicCast();
    v24 = sub_2664E0A98();
    v25 = -1 << *(v9 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      do
      {
        if (++v27 == v29 && (v28 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v27);
      }

      while (v31 == -1);
      v17 = __clz(__rbit64(~v31)) + (v27 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v9 + 48) + 40 * v17;
    *(v18 + 32) = v35;
    *v18 = v33;
    *(v18 + 16) = v34;
    ++*(v9 + 16);
  }

  if (v12)
  {
    v19 = v32;
LABEL_24:
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v23 = *(*(v7 + 48) + ((v19 << 9) | (8 * v22)));
    goto LABEL_25;
  }

  v21 = v32;
  while (1)
  {
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v19 >= ((v11 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v12 = *(v10 + 8 * v19);
    ++v21;
    if (v12)
    {
      v32 = v19;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_266460710(void *a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v35 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v40 = *a2;
  v41 = v14;
  v42[0] = a2[2];
  *(v42 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "MPMediaQueryHandler#queue...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = BYTE1(a3) & 1;
  v20 = BYTE2(a3) & 1;
  v34 = a3 & 0x1000000;

  (*(v11 + 8))(v13, v10);
  if (sub_2664C8564(a1))
  {
    v38[0] = v40;
    v38[1] = v41;
    *v39 = v42[0];
    *&v39[15] = *(v42 + 15);
    v21 = swift_allocObject();
    v22 = v41;
    *(v21 + 56) = v40;
    *(v21 + 16) = v35;
    *(v21 + 24) = v36;
    *(v21 + 32) = v6;
    *(v21 + 40) = a1;
    *(v21 + 48) = a3 & 1;
    *(v21 + 49) = v19;
    *(v21 + 50) = v20;
    *(v21 + 51) = HIBYTE(v34);
    *(v21 + 72) = v22;
    *(v21 + 88) = v42[0];
    *(v21 + 103) = *(v42 + 15);

    sub_2662D2A64(&v40, v37);
    sub_2664C604C(v6 + 12, a1, v38, a3 & 0x1010101, sub_266465114, v21);
  }

  else
  {
    v23 = v6[15];
    v24 = v6[16];
    v33 = __swift_project_boxed_opaque_existential_1(v6 + 12, v23);
    v32 = *(&v40 + 1);
    v31 = v41;
    v25 = a1[13];
    v30 = a1[12];
    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 56) = v40;
    *(v26 + 16) = v35;
    *(v26 + 24) = v36;
    *(v26 + 32) = v6;
    *(v26 + 40) = a1;
    *(v26 + 48) = a3 & 1;
    *(v26 + 49) = v19;
    *(v26 + 50) = v20;
    *(v26 + 51) = HIBYTE(v34);
    *(v26 + 72) = v27;
    *(v26 + 88) = v42[0];
    *(v26 + 103) = *(v42 + 15);
    v28 = *(v24 + 8);

    sub_2662D2A64(&v40, v38);
    v28(v32, v31, v30, v25, sub_266465064, v26, v23, v24);
  }
}

void sub_266460B34(void *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v55 = a5;
  v56 = a6;
  v48 = a3;
  v49 = a2;
  v54 = a1;
  v53 = sub_2664DFE08();
  v7 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = a4[1];
  v60 = *a4;
  v61 = v18;
  v62[0] = a4[2];
  *(v62 + 15) = *(a4 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v46 = *(v11 + 16);
  v46(v17, v19, v10);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "MPMediaQueryHandler:queue investigating if library has songs", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = *(v11 + 8);
  v52 = v11 + 8;
  v23(v17, v10);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  sub_2664DFDE8();
  v25 = sub_2664E0848();
  sub_2664DFDC8(v25, &dword_26629C000, v24, "mediaPlaybackProviderHasSongs", 29, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v26 = v54;
  sub_266493A88(v54, &v57);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v7 + 8))(v9, v53);
  if (v57 == 1)
  {
    v27 = swift_allocObject();
    v28 = v61;
    *(v27 + 56) = v60;
    *(v27 + 16) = v55;
    v29 = v50;
    *(v27 + 24) = v56;
    *(v27 + 32) = v29;
    v30 = v48;
    *(v27 + 40) = v48 & 1;
    *(v27 + 41) = BYTE1(v30) & 1;
    *(v27 + 42) = BYTE2(v30) & 1;
    *(v27 + 43) = HIBYTE(v30) & 1;
    *(v27 + 48) = v26;
    *(v27 + 72) = v28;
    *(v27 + 88) = v62[0];
    *(v27 + 103) = *(v62 + 15);
    v31 = *(*v29 + 192);

    v32 = v26;
    sub_2662D2A64(&v60, &v57);
    v31(v49, v32, sub_266462990, v27);
  }

  else
  {
    v33 = v47;
    v34 = v46;
    v46(v47, v19, v10);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "MPMediaQueryHandler:queue resolved library does not have any songs", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v23(v33, v10);
    v38 = v51;
    v34(v51, v19, v10);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06B8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v38;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v57 = v43;
      *v42 = 134218498;
      *(v42 + 4) = 11;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 19;
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_2662A320C(0x62694C7974706D45, 0xEC00000079726172, &v57);
      _os_log_impl(&dword_26629C000, v39, v40, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);

      v44 = v41;
    }

    else
    {

      v44 = v38;
    }

    v23(v44, v10);
    v57 = xmmword_2664EDC10;
    v58 = 0xEC00000079726172;
    v59 = 1;
    v55(&v57);
    sub_2664017EC(v57, SDWORD2(v57), v58, v59);
  }
}

void sub_266461204(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, __int128 *a7)
{
  v48 = a5;
  v49 = a7;
  v47 = a6;
  v50 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v53 = v11;
  v51 = *(v11 + 16);
  v51(v17, v20, v10);
  sub_266465164(v18, v19);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = v20;
    v24 = a2;
    v25 = a3;
    v26 = v23;
    *v23 = 67109120;
    *(v23 + 1) = v18 != 1;
    sub_26633C3AC(v18, v19);
    _os_log_impl(&dword_26629C000, v21, v22, "MPMediaQueryHandler:queue using identity: %{BOOL}d", v26, 8u);
    v27 = v26;
    a3 = v25;
    a2 = v24;
    v20 = v45;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  else
  {
    sub_26633C3AC(v18, v19);
  }

  v28 = *(v53 + 8);
  v28(v17, v10);
  v29 = objc_opt_self();
  if (v18 > 1)
  {
    v30 = [v29 deviceMediaLibraryWithUserIdentity_];
  }

  else
  {
    v30 = [v29 deviceMediaLibrary];
  }

  v31 = v30;
  if (v31)
  {
    v32 = v31;
    sub_266460B34(v31, v48, v47 & 0x1010101, v49, a2, a3);
  }

  else
  {
    v51(v52, v20, v10);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "MPMediaQueryHandler:queue unexpected error resolving library", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v28(v52, v10);
    v36 = v46;
    v51(v46, v20, v10);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06B8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = a2;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v54 = v41;
      *v40 = 134218498;
      *(v40 + 4) = 11;
      *(v40 + 12) = 2048;
      *(v40 + 14) = 31;
      *(v40 + 22) = 2080;
      *(v40 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F92E0, &v54);
      _os_log_impl(&dword_26629C000, v37, v38, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v40, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v41, -1, -1);
      v42 = v40;
      a2 = v39;
      MEMORY[0x266784AD0](v42, -1, -1);

      v43 = v46;
    }

    else
    {

      v43 = v36;
    }

    v28(v43, v10);
    v54 = xmmword_2664EDC20;
    v55 = 0x80000002664F92E0;
    v56 = 1;
    a2(&v54);
    sub_2664017EC(v54, SDWORD2(v54), v55, v56);
  }
}

void sub_2664616E4(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, __int128 *a7)
{
  v65 = a3;
  v13 = sub_2664DFE38();
  v66 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v22 = &v57 - v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = qword_280F914E8;
    v25 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v27 = v66;
    (*(v66 + 16))(v22, v26, v13);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "MPMediaQueryHandler#queue using x scheme", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v27 + 8))(v22, v13);
    v68 = 0;
    v67 = v23;
    v69 = 0;
    v31 = v25;
    a2(&v67);

LABEL_7:
    sub_2664017EC(v67, SDWORD2(v67), v68, v69);
    return;
  }

  v61 = v20;
  v62 = a7;
  v63 = a4;
  v64 = a2;
  v58 = v19;
  v32 = *a1;
  v33 = *(a1 + 8);
  v34 = *(a1 + 24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v36 = *(v66 + 16);
  v57 = v35;
  v59 = v36;
  v60 = v66 + 16;
  v36(v18, v35, v13);
  sub_266465164(v32, v33);
  v37 = v34;
  v38 = sub_2664DFE18();
  v39 = sub_2664E06C8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    *(v40 + 4) = v32 != 1;
    sub_26633C3AC(v32, v33);

    _os_log_impl(&dword_26629C000, v38, v39, "MPMediaQueryHandler:queue using identity: %{BOOL}d", v40, 8u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  else
  {
    sub_26633C3AC(v32, v33);

    v38 = v37;
  }

  v41 = *(v66 + 8);
  v41(v18, v13);
  v42 = objc_opt_self();
  v43 = v64;
  v44 = v62;
  if (v32 > 1)
  {
    v45 = [v42 deviceMediaLibraryWithUserIdentity_];
  }

  else
  {
    v45 = [v42 deviceMediaLibrary];
  }

  v46 = v45;
  if (!v46)
  {
    v48 = v57;
    v59(v61, v57, v13);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "MPMediaQueryHandler:queue unexpected error resolving library", v51, 2u);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    v41(v61, v13);
    v52 = v58;
    v59(v58, v48, v13);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06B8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v67 = v56;
      *v55 = 134218498;
      *(v55 + 4) = 11;
      *(v55 + 12) = 2048;
      *(v55 + 14) = 31;
      *(v55 + 22) = 2080;
      *(v55 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F92E0, &v67);
      _os_log_impl(&dword_26629C000, v53, v54, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v55, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    v41(v52, v13);
    v67 = xmmword_2664EDC20;
    v68 = 0x80000002664F92E0;
    v69 = 1;
    v43(&v67);
    goto LABEL_7;
  }

  v47 = v46;
  sub_266460B34(v46, a5, a6 & 0x1010101, v44, v43, v65);
}

void sub_266461D34(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v50 = a6;
  v49 = a5;
  v51 = a4;
  v56 = a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v48 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v19 = *(v10 + 16);
  v54 = v18;
  v53 = v19;
  v19(v17, v18, v9);
  v55 = v10;
  sub_2662A7224(a1, v58, &qword_280073BD0, &qword_2664EDCA8);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  sub_2662A9238(a1, &qword_280073BD0, &qword_2664EDCA8);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v59[0] = v23;
    *v22 = 136315138;
    v24 = *(a1 + 16);
    *v58 = *a1;
    *&v58[16] = v24;
    *&v58[32] = *(a1 + 32);
    *&v58[48] = *(a1 + 48);
    v46 = v13;
    v47 = v9;
    v25 = a3;
    sub_2662A7224(a1, v57, &qword_280073BD0, &qword_2664EDCA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BD0, &qword_2664EDCA8);
    v26 = sub_2664E0318();
    v28 = sub_2662A320C(v26, v27, v59);
    v13 = v46;

    *(v22 + 4) = v28;
    a3 = v25;
    v9 = v47;
    _os_log_impl(&dword_26629C000, v20, v21, "MPMediaQueryHandler:queue received query attributes: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v29 = *(v55 + 8);
  v29(v17, v9);
  v30 = *a1;
  if (*a1)
  {
    *v58 = *a1;
    *&v58[40] = *(a1 + 40);
    *&v58[8] = *(a1 + 8);
    *&v58[24] = *(a1 + 24);
    v59[0] = v30;
    v31 = *&v58[40];

    v32 = v51;

    v33 = v52;
    sub_2662D2A64(v52, v57);
    sub_2662A7224(v59, v57, &qword_280073BD8, &qword_2664EDCB0);

    sub_266463DE4(v58, v49 & 0x1010101, v50, v32, v56, a3, v33, v31);

    sub_2662D2B88(v33);
    sub_2662A9238(v59, &qword_280073BD8, &qword_2664EDCB0);
  }

  else
  {
    v55 = a3;
    v34 = v48;
    v53(v48, v54, v9);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v13;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "MPMediaQueryHandler:queue unexpected error building query", v38, 2u);
      v39 = v38;
      v13 = v37;
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v29(v34, v9);
    v53(v13, v54, v9);
    v40 = sub_2664DFE18();
    v41 = v13;
    v42 = sub_2664E06B8();
    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v58 = v44;
      *v43 = 134218498;
      *(v43 + 4) = 11;
      *(v43 + 12) = 2048;
      *(v43 + 14) = 32;
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_2662A320C(0xD00000000000001CLL, 0x80000002664F9260, v58);
      _os_log_impl(&dword_26629C000, v40, v42, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v43, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v29(v41, v9);
    *v58 = xmmword_2664EDC30;
    *&v58[16] = 0x80000002664F9260;
    v58[24] = 1;
    v56(v58);
    sub_2664017EC(*v58, *&v58[8], *&v58[16], v58[24]);
  }
}

void *sub_2664623E4(void *a1, void *a2, __int128 *a3, void *a4)
{
  v48 = a3;
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v8);
  v10 = (&v49[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v12);
  v14 = (&v49[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v16);
  v18 = (&v49[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v10;
  v21 = type metadata accessor for MediaPlaybackProvider();
  v55[3] = v21;
  v55[4] = &off_2877F3740;
  v55[0] = v20;
  v53 = &type metadata for PlaybackStarter;
  v54 = &off_2877EE098;
  v22 = swift_allocObject();
  v52[0] = v22;
  v23 = v14[3];
  v22[3] = v14[2];
  v22[4] = v23;
  v22[5] = v14[4];
  v24 = v14[1];
  v22[1] = *v14;
  v22[2] = v24;
  v50 = &type metadata for PlaybackQueueLocationProvider;
  v51 = &off_2877E8100;
  v25 = swift_allocObject();
  v49[0] = v25;
  v26 = v18[3];
  v25[3] = v18[2];
  v25[4] = v26;
  v25[5] = v18[4];
  v27 = v18[1];
  v25[1] = *v18;
  v25[2] = v27;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v55, v21);
  MEMORY[0x28223BE20](v28);
  v30 = (&v49[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  MEMORY[0x28223BE20](v32);
  v34 = (&v49[-1] - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x28223BE20](v36);
  v38 = (&v49[-1] - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v30;
  v7[5] = v21;
  v7[6] = &off_2877F3740;
  v7[2] = v40;
  v7[10] = &type metadata for PlaybackStarter;
  v7[11] = &off_2877EE098;
  v41 = swift_allocObject();
  v7[7] = v41;
  v42 = v34[3];
  v41[3] = v34[2];
  v41[4] = v42;
  v41[5] = v34[4];
  v43 = v34[1];
  v41[1] = *v34;
  v41[2] = v43;
  v7[20] = &type metadata for PlaybackQueueLocationProvider;
  v7[21] = &off_2877E8100;
  v44 = swift_allocObject();
  v7[17] = v44;
  v45 = v38[3];
  v44[3] = v38[2];
  v44[4] = v45;
  v44[5] = v38[4];
  v46 = v38[1];
  v44[1] = *v38;
  v44[2] = v46;
  sub_2662D31E4(v48, (v7 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

void sub_266462990(uint64_t a1)
{
  if (*(v1 + 43))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 42))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 41))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_266461D34(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v4 | *(v1 + 40) | v3 | v2, *(v1 + 48), v1 + 56);
}

void sub_2664629E4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2664E0908();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_2664E0918();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_266462B24(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v138 = a5;
  v140 = a4;
  v143 = a3;
  v144 = a2;
  v6 = sub_2664DFE08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2664DFE38();
  v10 = *(v147 - 8);
  v11 = MEMORY[0x28223BE20](v147);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v139 = &v130 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v130 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](&v130 - v23);
  v137 = &v130 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v130 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v130 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v38 = &v130 - v37;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v58 = v147;
    v59 = __swift_project_value_buffer(v147, qword_280F914F0);
    swift_beginAccess();
    v60 = *(v10 + 16);
    v60(v38, v59, v58);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "MPMediaQueryHandler:queue error building query", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v64 = *(v10 + 8);
    v65 = v147;
    v64(v38, v147);
    v60(v13, v59, v65);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06B8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v148 = v69;
      *v68 = 134218498;
      *(v68 + 4) = 11;
      *(v68 + 12) = 2048;
      *(v68 + 14) = 32;
      *(v68 + 22) = 2080;
      *(v68 + 24) = sub_2662A320C(0xD000000000000012, 0x80000002664F9280, &v148);
      _os_log_impl(&dword_26629C000, v66, v67, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v68, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    v64(v13, v65);
    v148 = xmmword_2664EDC60;
    v149 = 0x80000002664F9280;
    v150 = 1;
    v144(&v148);
    goto LABEL_46;
  }

  v134 = v33;
  v135 = v32;
  v132 = v36;
  v133 = v35;
  v131 = v34;
  v39 = qword_280F914E8;
  v146 = a1;
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = v147;
  v41 = __swift_project_value_buffer(v147, qword_280F914F0);
  swift_beginAccess();
  v42 = *(v10 + 16);
  v141 = v41;
  v142 = v10 + 16;
  v145 = v42;
  v42(v31, v41, v40);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06C8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_26629C000, v43, v44, "MPMediaQueryHandler:queue inspecting if query has items...", v45, 2u);
    v46 = v45;
    v40 = v147;
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  v47 = *(v10 + 8);
  v136 = v10 + 8;
  v48 = v47;
  v47(v31, v40);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v49 = qword_280F91D48;
  sub_2664DFDE8();
  v50 = sub_2664E0848();
  sub_2664DFDC8(v50, &dword_26629C000, v49, "mediaPlaybackProviderHasItems", 29, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_26649377C(v146, &v148);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v7 + 8))(v9, v6);
  if (v148 != 1)
  {
    v70 = v141;
    v145(v18, v141, v40);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "MPMediaQueryHandler:queue MPMediaQuery#_hasItems is false", v73, 2u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v48(v18, v40);
    v74 = v139;
    v145(v139, v70, v40);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v148 = v78;
      *v77 = 134218498;
      *(v77 + 4) = 11;
      *(v77 + 12) = 2048;
      *(v77 + 14) = 18;
      *(v77 + 22) = 2080;
      *(v77 + 24) = sub_2662A320C(0x736D6574496F4ELL, 0xE700000000000000, &v148);
      _os_log_impl(&dword_26629C000, v75, v76, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    v48(v74, v40);
    v148 = xmmword_2664EDC40;
    v149 = 0xE700000000000000;
    goto LABEL_25;
  }

  v51 = v141;
  v145(v28, v141, v40);
  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();
  v54 = v48;
  if (os_log_type_enabled(v52, v53))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_26629C000, v52, v53, "MPMediaQueryHandler:queue items present and playable", v55, 2u);
    v56 = v55;
    v51 = v141;
    MEMORY[0x266784AD0](v56, -1, -1);
  }

  v48(v28, v147);
  v57 = *(v140 + 48);
  if (v57 <= 1 && !*(v140 + 48))
  {
    goto LABEL_30;
  }

  v79 = sub_2664E0D88();

  if (v79)
  {
    goto LABEL_32;
  }

  if (v57 == 3)
  {
LABEL_30:

    goto LABEL_32;
  }

  v80 = sub_2664E0D88();

  if ((v80 & 1) == 0)
  {
    v98 = v134;
    v99 = v51;
    v100 = v147;
    v145(v134, v99, v147);
    v101 = v140;
    sub_2662D2A64(v140, &v148);
    v102 = sub_2664DFE18();
    v103 = sub_2664E06C8();
    sub_2662D2B88(v101);
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v148 = v105;
      *v104 = 136315138;
      v106 = 0xE400000000000000;
      v107 = 0x726574616CLL;
      if (v57 == 1)
      {
        v107 = 1954047342;
      }

      else
      {
        v106 = 0xE500000000000000;
      }

      if (v57 <= 2)
      {
        v108 = v107;
      }

      else
      {
        v108 = 0x726F707075736E75;
      }

      if (v57 <= 2)
      {
        v109 = v106;
      }

      else
      {
        v109 = 0xEB00000000646574;
      }

      v110 = sub_2662A320C(v108, v109, &v148);

      *(v104 + 4) = v110;
      _os_log_impl(&dword_26629C000, v102, v103, "MPMediaQueryHandler:queue non-now location:%s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x266784AD0](v105, -1, -1);
      MEMORY[0x266784AD0](v104, -1, -1);

      v111 = v147;
      v54(v134, v147);
    }

    else
    {

      v54(v98, v100);
      v111 = v100;
    }

    v112 = [v146 items];
    if (v112)
    {
      v113 = v112;
      sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
      v114 = sub_2664E04A8();

      sub_26645FC98(v114, &qword_280072D58, 0x277CD5DE0);

      v115 = sub_2664E0488();
    }

    else
    {
      v115 = 0;
    }

    v116 = v141;
    v117 = [objc_allocWithZone(MEMORY[0x277CD5E38]) initWithEntities:v115 entityType:0];

    if (v117)
    {
      v145(v133, v116, v111);
      v118 = sub_2664DFE18();
      v119 = sub_2664E06C8();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_26629C000, v118, v119, "MPMediaQueryHandler:queue setting upnext via continuation", v120, 2u);
        MEMORY[0x266784AD0](v120, -1, -1);
      }

      v54(v133, v111);
      v121 = [objc_allocWithZone(MEMORY[0x277D27868]) initWithContextID:0 query:v117];
      v149 = 0;
      v148 = v121;
      v150 = 0;
      v144(&v148);

      goto LABEL_26;
    }

    v145(v132, v116, v111);
    v122 = sub_2664DFE18();
    v123 = sub_2664E06D8();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_26629C000, v122, v123, "MPMediaQueryHandler:queue Unable to build MPMediaQuery from items for upnext", v124, 2u);
      MEMORY[0x266784AD0](v124, -1, -1);
    }

    v54(v132, v111);
    v125 = v131;
    v145(v131, v116, v111);
    v126 = sub_2664DFE18();
    v127 = sub_2664E06B8();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v148 = v129;
      *v128 = 134218498;
      *(v128 + 4) = 11;
      *(v128 + 12) = 2048;
      *(v128 + 14) = 11;
      *(v128 + 22) = 2080;
      *(v128 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F92C0, &v148);
      _os_log_impl(&dword_26629C000, v126, v127, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v128, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x266784AD0](v129, -1, -1);
      MEMORY[0x266784AD0](v128, -1, -1);
    }

    v54(v125, v111);
    v148 = xmmword_2664EDC50;
    v149 = 0x80000002664F92C0;
LABEL_25:
    v150 = 1;
    v144(&v148);
LABEL_26:

LABEL_46:
    sub_2664017EC(v148, SDWORD2(v148), v149, v150);
    return;
  }

LABEL_32:
  v81 = v137;
  v82 = v147;
  v145(v137, v51, v147);
  v83 = sub_2664DFE18();
  v84 = sub_2664E06C8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_26629C000, v83, v84, "MPMediaQueryHandler:queue creating queue from query...", v85, 2u);
    MEMORY[0x266784AD0](v85, -1, -1);
  }

  v48(v81, v82);
  v86 = objc_allocWithZone(MEMORY[0x277D27868]);
  v87 = [v86 initWithContextID:0 query:v146];
  v88 = v138;
  if (!v138)
  {
    goto LABEL_45;
  }

  if (!(v138 >> 62))
  {
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_45:
    v149 = 0;
    v148 = v87;
    v150 = 0;
    v97 = v87;
    v144(&v148);

    goto LABEL_46;
  }

  if (!sub_2664E0A68())
  {
    goto LABEL_45;
  }

LABEL_37:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = MEMORY[0x266783B70](0, v88);
    goto LABEL_40;
  }

  if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v89 = *(v88 + 32);
LABEL_40:
    v90 = v89;
    objc_opt_self();
    v91 = swift_dynamicCastObjCClass();
    if (v91)
    {
      v92 = v91;
      v145(v135, v141, v82);
      v93 = sub_2664DFE18();
      v94 = sub_2664E06C8();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_26629C000, v93, v94, "MPMediaQueryHandler:queue set first item from MPMediaQuery entities", v95, 2u);
        v96 = v95;
        v82 = v147;
        MEMORY[0x266784AD0](v96, -1, -1);
      }

      v48(v135, v82);
      [v87 setFirstItem_];
    }

    goto LABEL_45;
  }

  __break(1u);
}

void sub_266463DE4(void *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, unint64_t a8)
{
  v134 = a7;
  v135 = a8;
  v133 = a6;
  v132 = a5;
  v136 = a4;
  v127 = a3;
  v137 = a2;
  v138 = sub_2664DFE08();
  v9 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v126 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v131 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v141 = &v126 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v126 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v129 = &v126 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v126 = &v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v139 = &v126 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v130 = &v126 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v126 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v126 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v126 - v38;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v40 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v41 = v13[2];
    v147 = v13 + 2;
    v148 = v40;
    v146 = v41;
    (v41)(v39, v40, v12);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();
    v44 = os_log_type_enabled(v42, v43);
    v144 = a1;
    if (v44)
    {
      v45 = v13;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "MPMediaQueryHandler#build: building query...", v46, 2u);
      v47 = v46;
      v13 = v45;
      a1 = v144;
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v49 = v13[1];
    v48 = v13 + 1;
    v145 = v49;
    (v49)(v39, v12);
    v151[0] = *a1;
    v150 = v151[0];
    (v146)(v37, v148, v12);

    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "MPMediaQueryHandler#build: only playable items", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    (v145)(v37, v12);
    v53 = *MEMORY[0x277CD57A0];
    LOBYTE(v149) = 1;
    v54 = v53;
    v55 = sub_2664E0DB8();
    v56 = objc_opt_self();
    v57 = [v56 predicateWithValue:v55 forProperty:v54];
    swift_unknownObjectRelease();

    MEMORY[0x266783490]();
    if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2664E04C8();
    }

    v143 = v48;
    sub_2664E0518();
    v37 = v150;
    v58 = *__swift_project_boxed_opaque_existential_1((v136 + 16), *(v136 + 40));
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v59 = qword_280F91D48;
    sub_2664DFDE8();
    v60 = sub_2664E0848();
    LOBYTE(v125) = 2;
    sub_2664DFDC8(v60, &dword_26629C000, v59, "mediaPlaybackProviderStreamingAvailability", 42, 2, v11, " enableTelemetry=YES ", 21, v125, MEMORY[0x277D84F90]);
    sub_26648D3D0(v137 & 0x1010101, v58, &v149);
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v9 + 1))(v11, v138);
    v61 = v149;
    if (v149 > 2)
    {
      v71 = v128;
      (v146)(v128, v148, v12);
      v72 = sub_2664DFE18();
      v73 = sub_2664E06C8();
      v74 = os_log_type_enabled(v72, v73);
      v9 = v143;
      v65 = v144;
      v66 = v145;
      if (v74)
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = v61;
        _os_log_impl(&dword_26629C000, v72, v73, "MPMediaQueryHandler#build: streamingAvailability: %ld allows streaming", v75, 0xCu);
        MEMORY[0x266784AD0](v75, -1, -1);
      }

      (v66)(v71, v12);
    }

    else
    {
      (v146)(v34, v148, v12);
      v62 = sub_2664DFE18();
      v63 = sub_2664E06C8();
      v64 = os_log_type_enabled(v62, v63);
      v9 = v143;
      v65 = v144;
      v66 = v145;
      if (v64)
      {
        v67 = swift_slowAlloc();
        *v67 = 134217984;
        *(v67 + 4) = v61;
        _os_log_impl(&dword_26629C000, v62, v63, "MPMediaQueryHandler#build: streamingAvailability: %ld requires local only", v67, 0xCu);
        MEMORY[0x266784AD0](v67, -1, -1);
      }

      (v66)(v34, v12);
      v68 = *MEMORY[0x277CD5790];
      LOBYTE(v149) = 1;
      v69 = v68;
      v70 = [v56 predicateWithValue:sub_2664E0DB8() forProperty:v69];
      swift_unknownObjectRelease();

      MEMORY[0x266783490]();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2664E04C8();
      }

      sub_2664E0518();
      v37 = v150;
    }

    v76 = v139;
    v77 = v65[5];
    v138 = v77;
    if (!v77)
    {
      (v146)(v139, v148, v12);

      v84 = sub_2664DFE18();
      v85 = sub_2664E06E8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v149 = v87;
        *v86 = 136315138;
        v88 = sub_2662C1744(0, &qword_280072EE8, 0x277CD5E28);
        v89 = MEMORY[0x2667834D0](v37, v88);
        v91 = sub_2662A320C(v89, v90, &v149);

        *(v86 + 4) = v91;
        v65 = v144;

        _os_log_impl(&dword_26629C000, v84, v85, "MPMediaQueryHandler#build: building from predicates: %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x266784AD0](v87, -1, -1);
        MEMORY[0x266784AD0](v86, -1, -1);

        (v66)(v139, v12);
      }

      else
      {

        (v66)(v76, v12);
      }

      v96 = sub_26639ED50(v37);

      sub_2664603B0(v96, &qword_280072EE8, 0x277CD5E28, &qword_280072EF0);

      v97 = objc_allocWithZone(MEMORY[0x277CD5E38]);
      v98 = sub_2664E05F8();

      v11 = [v97 initWithFilterPredicates:v98 library:v127];

      if (v11)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v78 = v65[6];
    v79 = v130;
    (v146)(v130, v148, v12);

    v80 = sub_2664DFE18();
    v81 = sub_2664E06E8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 134218240;
      v83 = v77 >> 62 ? sub_2664E0A68() : *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v82 + 4) = v83;
      *(v82 + 12) = 2048;
      *(v82 + 14) = v78;

      _os_log_impl(&dword_26629C000, v80, v81, "MPMediaQueryHandler#build: building from entities:%ld and entityType:%ld", v82, 0x16u);
      MEMORY[0x266784AD0](v82, -1, -1);
    }

    else
    {
    }

    (v66)(v79, v12);
    sub_26645FC98(v77, &qword_280073790, 0x277CD5DD8);
    v92 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v93 = sub_2664E0488();

    v11 = [v92 initWithEntities:v93 entityType:v78];

    if (v37 >> 62)
    {
      break;
    }

    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_46;
    }

LABEL_29:
    v34 = 0;
    a1 = (v37 & 0xFFFFFFFFFFFFFF8);
    v13 = &selRef_setUniversalStoreIdentifiersWithBlock_;
    while (1)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v94 = MEMORY[0x266783B70](v34, v37);
      }

      else
      {
        if (v34 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v94 = *(v37 + 8 * v34 + 32);
      }

      v95 = v94;
      v9 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      [v11 addFilterPredicate_];

      ++v34;
      if (v9 == v39)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v39 = sub_2664E0A68();
  if (v39)
  {
    goto LABEL_29;
  }

LABEL_46:

  v65 = v144;
  v66 = v145;
  if (v11)
  {
LABEL_47:
    if (v65[3])
    {
      v103 = v11;
    }

    else
    {
      v104 = v65[2];
      (v146)(v129, v148, v12);
      v105 = v11;
      v106 = sub_2664DFE18();
      v107 = sub_2664E06C8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 134217984;
        *(v108 + 4) = v104;
        _os_log_impl(&dword_26629C000, v106, v107, "MPMediaQueryHandler#build: grouping set to %ld", v108, 0xCu);
        v109 = v108;
        v65 = v144;
        MEMORY[0x266784AD0](v109, -1, -1);
      }

      (v66)(v129, v12);
      [v105 setGroupingType_];
    }

    (v146)(v140, v148, v12);
    sub_2662A7224(v151, &v149, &qword_280073BD8, &qword_2664EDCB0);

    v110 = sub_2664DFE18();
    v111 = sub_2664E06C8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 67109120;
      *(v112 + 4) = v65[1] & 1;
      sub_2662A9238(v151, &qword_280073BD8, &qword_2664EDCB0);

      _os_log_impl(&dword_26629C000, v110, v111, "MPMediaQueryHandler#build: non-library items?:%{BOOL}d", v112, 8u);
      MEMORY[0x266784AD0](v112, -1, -1);
    }

    else
    {
      sub_2662A9238(v151, &qword_280073BD8, &qword_2664EDCB0);
    }

    (v66)(v140, v12);
    [v11 setShouldIncludeNonLibraryEntities_];
    (v146)(v141, v148, v12);
    sub_2662A7224(v151, &v149, &qword_280073BD8, &qword_2664EDCB0);

    v113 = sub_2664DFE18();
    v114 = sub_2664E06C8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 134217984;
      *(v115 + 4) = v65[4];
      sub_2662A9238(v151, &qword_280073BD8, &qword_2664EDCB0);

      _os_log_impl(&dword_26629C000, v113, v114, "MPMediaQueryHandler#build: setting limit: %ld", v115, 0xCu);
      MEMORY[0x266784AD0](v115, -1, -1);
    }

    else
    {
      sub_2662A9238(v151, &qword_280073BD8, &qword_2664EDCB0);
    }

    v116 = v131;
    (v66)(v141, v12);
    [v11 setEntityLimit_];
    (v146)(v116, v148, v12);
    v117 = sub_2664DFE18();
    v118 = sub_2664E06C8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_26629C000, v117, v118, "MPMediaQueryHandler#build: ignoring system filter predicates", v119, 2u);
      v120 = v119;
      v116 = v131;
      MEMORY[0x266784AD0](v120, -1, -1);
    }

    (v66)(v116, v12);
    [v11 setIgnoreSystemFilterPredicates_];
    (v146)(v142, v148, v12);
    v121 = sub_2664DFE18();
    v122 = sub_2664E06C8();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_26629C000, v121, v122, "MPMediaQueryHandler#build: completed", v123, 2u);
      MEMORY[0x266784AD0](v123, -1, -1);
    }

    (v66)(v142, v12);
    v124 = v11;
    sub_266462B24(v11, v132, v133, v134, v135);

    return;
  }

LABEL_39:
  v99 = v126;
  (v146)(v126, v148, v12);
  v100 = sub_2664DFE18();
  v101 = sub_2664E06D8();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_26629C000, v100, v101, "MPMediaQueryHandler#build: unexpected nil response from initializer", v102, 2u);
    MEMORY[0x266784AD0](v102, -1, -1);
  }

  (v66)(v99, v12);
  sub_266462B24(0, v132, v133, v134, v135);
}

void sub_266465064(uint64_t a1)
{
  if (*(v1 + 51))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 50))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_266461204(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v4 | *(v1 + 48) | v3 | v2, (v1 + 56));
}

uint64_t objectdestroy_11Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 107, 7);
}

void sub_266465114(uint64_t a1)
{
  if (*(v1 + 51))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 50))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_2664616E4(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v4 | *(v1 + 48) | v3 | v2, (v1 + 56));
}

id sub_266465164(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_2664651A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2664651F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26646525C(unsigned __int8 a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26646537C(uint64_t a1, unsigned __int8 a2)
{
  sub_2664E0368();
}

uint64_t sub_2664654C4(uint64_t a1, unsigned __int8 a2)
{
  sub_2664E0368();
}

uint64_t sub_2664655F4(uint64_t a1, unsigned __int8 a2)
{
  sub_2664E0368();
}

uint64_t sub_266465778(uint64_t a1, unsigned __int8 a2)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2664658BC(uint64_t a1, unsigned __int8 a2)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2664659D8(uint64_t a1, unsigned __int8 a2)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

SiriAudioSupport::STCAuditStatus_optional __swiftcall STCAuditStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t STCAuditStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574656C706D6F63;
  v3 = 0xD000000000000013;
  v4 = 0x656C7069746C756DLL;
  if (v1 != 4)
  {
    v4 = 0x656C706D6F636E69;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

unint64_t sub_266465C74()
{
  result = qword_280073BF0;
  if (!qword_280073BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073BF0);
  }

  return result;
}

uint64_t sub_266465CD0(uint64_t a1)
{
  sub_2664E0368();
}

void sub_266465DEC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x6574656C706D6F63;
  v5 = 0x80000002664F3300;
  v6 = 0xD000000000000013;
  v7 = 0xEE0064656C696146;
  v8 = 0x656C7069746C756DLL;
  if (v2 != 4)
  {
    v8 = 0x656C706D6F636E69;
    v7 = 0xEA00000000006574;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x64656C696166;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x80000002664F32E0;
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

id sub_266465F28()
{
  type metadata accessor for MediaPlayerPlaybackContextProvider();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  if (result)
  {
    *(v0 + 16) = result;
    type metadata accessor for AdditionalPlaybackContext(0);
    v2 = swift_allocObject();
    v3 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    v4 = sub_2664DF0D8();
    result = (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
    *(v2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];
    *(v2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    *(v2 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
    *(v0 + 24) = v2;
    off_280073BF8 = v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double static MediaPlayerPlaybackContextProvider.shared.getter()
{
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  return result;
}

id sub_266466078()
{
  v1 = *(v0 + 16);
  v2 = sub_266466A84(v1);

  return v2;
}

uint64_t sub_2664660B0()
{

  sub_266466830(v5);

  type metadata accessor for AdditionalPlaybackContext(0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  v3 = sub_2664DF0D8();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  result = v1;
  *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
  *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  return result;
}

id sub_266466264()
{
  v1 = [*(v0 + 16) radioStationContext];

  return v1;
}

id sub_2664662B0()
{
  v1 = [*(v0 + 16) playlistContext];

  return v1;
}

id sub_2664662FC()
{
  v1 = [*(v0 + 16) linkId];

  return v1;
}

void sub_266466334(uint64_t a1)
{
  v3 = [*(v1 + 16) radioStationContext];
  if (v3)
  {
    v4 = v3;
    [v3 setLinkId_];
  }
}

id sub_2664663B0()
{
  v1 = [*(v0 + 16) radioStationContext];
  v2 = [v1 linkId];

  return v2;
}

uint64_t sub_266466408(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + 24);
  v7 = sub_2664DF0D8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  swift_beginAccess();

  sub_266466C44(v5, v6 + v9);
  swift_endAccess();
}

uint64_t sub_266466544@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  swift_beginAccess();
  return sub_266466CB4(v3 + v4, a1);
}

uint64_t sub_2664665A0(uint64_t a1)
{
  *(*(v1 + 24) + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = a1;
}

id sub_26646666C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  result = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  if (result)
  {
    v5 = *(v0 + 16);
    *(v0 + 16) = result;

    v6 = *(v0 + 24);
    v7 = sub_2664DF0D8();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
    swift_beginAccess();

    sub_266466C44(v3, v6 + v8);
    swift_endAccess();
    *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];

    *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
    *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MediaPlayerPlaybackContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_266466830@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for AdditionalPlaybackContext(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  v8 = sub_2664DF0D8();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds;
  *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult;
  *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 0;
  v11 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult;
  *(v6 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 0;
  v12 = OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct;
  swift_beginAccess();
  sub_266466CB4(v1 + v12, v4);
  swift_beginAccess();
  sub_266466C44(v4, v6 + v7);
  swift_endAccess();
  *(v6 + v9) = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);

  *(v6 + v10) = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult);
  *(v6 + v11) = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult);
  v14 = v16;
  v16[3] = v5;
  *v14 = v6;
  return result;
}

uint64_t AdditionalPlaybackContext.deinit()
{
  sub_2662ABE1C(v0 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct);

  return v0;
}

id sub_266466A84(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 linkId];
    [v3 setLinkId_];

    [v3 setExecutionSource_];
    [v3 setContentSource_];
    [v3 setEndpoint_];
    v5 = [a1 playlistContext];
    [v3 setPlaylistContext_];

    v6 = [a1 radioStationContext];
    [v3 setRadioStationContext_];

    return v3;
  }

  result = [objc_allocWithZone(MEMORY[0x277D57638]) init];
  v3 = result;
  if (result)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AdditionalPlaybackContext(uint64_t a1)
{
  result = qword_280073C00;
  if (!qword_280073C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266466C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266466CB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2664671C4(uint64_t a1)
{
  sub_2664672A8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2664672A8(uint64_t a1)
{
  if (!qword_280073C10)
  {
    sub_2664DF0D8();
    v1 = sub_2664E0948();
    if (!v2)
    {
      atomic_store(v1, &qword_280073C10);
    }
  }
}

uint64_t sub_266467300()
{
  v0 = sub_2662C3A68(&unk_2877E1930);
  result = swift_arrayDestroy();
  qword_280F91C48 = v0;
  return result;
}

unint64_t sub_26646734C(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EBEE0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000002664F1550;
  v6 = MEMORY[0x277D839B0];
  *(inited + 48) = *(v2 + 16);
  *(inited + 72) = v6;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000002664F1570;
  if (*(v2 + 24) == __PAIR128__(a2, a1))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2664E0D88();
  }

  *(inited + 96) = v7 & 1;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000002664F1590;
  v8 = *(v2 + 48);
  v9 = MEMORY[0x277D837D0];
  *(inited + 144) = *(v2 + 40);
  *(inited + 152) = v8;
  *(inited + 168) = v9;
  *(inited + 176) = 0xD000000000000025;
  *(inited + 184) = 0x80000002664F15B0;
  v10 = *(v2 + 64);
  *(inited + 192) = *(v2 + 56);
  *(inited + 200) = v10;
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000025;
  *(inited + 232) = 0x80000002664F15E0;
  v11 = MEMORY[0x277D839F8];
  *(inited + 240) = *(v2 + 72);
  *(inited + 264) = v11;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000002664F1610;
  v12 = *(v2 + 88);
  *(inited + 288) = *(v2 + 80);
  *(inited + 296) = v12;
  *(inited + 312) = v9;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = 0x80000002664F1630;
  *(inited + 336) = *(v2 + 96);
  *(inited + 360) = v11;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x80000002664F1650;
  v13 = *(v2 + 112);
  *(inited + 384) = *(v2 + 104);
  *(inited + 392) = v13;
  *(inited + 408) = v9;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000002664F1670;
  *(inited + 432) = *(v2 + 120);
  *(inited + 456) = v11;
  strcpy((inited + 464), "serverSignals");
  *(inited + 478) = -4864;
  v14 = *(v2 + 128);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  *(inited + 480) = v14;
  *(inited + 504) = v15;
  *(inited + 512) = 0x756F526F69647561;
  *(inited + 520) = 0xEB00000000736574;
  v16 = *(v2 + 136);
  *(inited + 552) = MEMORY[0x277D83B88];
  *(inited + 528) = v16;

  v17 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_26646762C()
{

  return swift_deallocClassInstance();
}

double sub_2664676C8()
{
  if (qword_280F8F940 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_266467724(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(v3 + 32);

  sub_2664475B4(a1, v4, v5);
  v7 = v6;
  v9 = v8;

  *(v3 + 24) = v7;
  *(v3 + 32) = v9;
}

uint64_t sub_2664677B8(void *a1, uint64_t a2, void (*a3)(uint64_t *, __n128), uint64_t a4)
{
  v90 = a3;
  v7 = sub_2664DE438();
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v89 = sub_26632958C(1018);
  v10 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
  v11 = [a1 privatePlayMediaIntentData];
  v88 = a2;
  if (!v11 || (v13 = v11, v14 = [v11 audioSearchResults], v13, !v14))
  {
    v97.value._rawValue = 0;
    v97.is_nil = 0;
    v23 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v97, v12);
    object = v23._object;
    countAndFlagsBits = v23._countAndFlagsBits;
    goto LABEL_14;
  }

  sub_2663D9B50();
  v15 = sub_2664E04A8();

  v96.value._rawValue = v15;
  v96.is_nil = 0;
  v17 = INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(v96, v16);
  object = v17._object;
  countAndFlagsBits = v17._countAndFlagsBits;
  if (!v15)
  {
LABEL_14:
    v84 = 0;
    v15 = 0;
    v21 = 0;
    v91 = 1701869940;
    v92 = 0xE400000000000000;
    v22 = 1;
    goto LABEL_15;
  }

  v10 = (v15 & 0xFFFFFFFFFFFFFF8);
  if (v15 >> 62)
  {
    goto LABEL_70;
  }

  v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v91 = 1701869940;
  v92 = 0xE400000000000000;
  for (result = v18; ; result = sub_2664E0A68())
  {
    v84 = v18 != 0;
    if (result)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {

        v20 = MEMORY[0x266783B70](0, v15);
      }

      else
      {
        if (!*(v10 + 2))
        {
          __break(1u);
          return result;
        }

        v20 = *(v15 + 32);
      }

      v10 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
      v21 = [v20 type];

      v22 = 0;
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v10 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
    }

LABEL_15:
    v95 = v21;
    v24 = sub_2664E0D48();
    MEMORY[0x2667833B0](v24);

    v82 = v92;
    v83 = v91;
    v91 = 1701869940;
    v92 = 0xE400000000000000;
    if (v22)
    {
      goto LABEL_24;
    }

    if (!(v15 >> 62 ? sub_2664E0A68() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)))
    {
      goto LABEL_24;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {

      v26 = MEMORY[0x266783B70](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_69;
      }

      v26 = *(v15 + 32);
    }

    v27 = [v26 privateMediaItemValueData];

    if (v27)
    {
      v28 = [v27 ampConfidenceLevel];
    }

    else
    {
LABEL_24:
      v28 = 0;
    }

    v95 = v28;
    v29 = sub_2664E0D48();
    MEMORY[0x2667833B0](v29);

    v30 = v91;
    v81 = v92;
    if (v22)
    {
      goto LABEL_38;
    }

    if (v15 >> 62)
    {
      if (!sub_2664E0A68())
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v15 + 32);
      goto LABEL_31;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    v18 = sub_2664E0A68();
    v91 = 1701869940;
    v92 = 0xE400000000000000;
  }

  v31 = MEMORY[0x266783B70](0, v15);
LABEL_31:
  v32 = v31;

  v33 = [v32 privateMediaItemValueData];

  if (v33)
  {
    v34 = [v33 ampConfidenceScore];

    if (v34)
    {
      [v34 doubleValue];
    }
  }

LABEL_38:
  v35 = Double.rounded(to:)(2);
  v36 = [a1 *(v10 + 456)];
  if (v36 && (v37 = v36, v38 = [v36 internalSignals], v37, v38))
  {
    v79 = sub_2664E04A8();
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  v80 = v30;
  v39 = [a1 hashedRouteUIDs];
  if (v39)
  {
    v40 = v39;
    v41 = sub_2664E04A8();

    v78 = *(v41 + 16);
  }

  else
  {
    v78 = 0;
  }

  v91 = 1701869940;
  v92 = 0xE400000000000000;
  v42 = [a1 *(v10 + 456)];
  if (v42 && (v43 = v42, v44 = [v42 privateMediaIntentData], v43, v44))
  {
    v45 = [v44 asrConfidenceLevel];
  }

  else
  {
    v45 = 0;
  }

  v95 = v45;
  v46 = sub_2664E0D48();
  MEMORY[0x2667833B0](v46);

  v47 = v91;
  v77[0] = v92;
  v48 = [a1 *(v10 + 456)];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 privateMediaIntentData];

    if (v50)
    {
      v51 = [v50 asrConfidenceScore];

      if (v51)
      {
        [v51 doubleValue];
      }
    }
  }

  v52 = Double.rounded(to:)(2);
  v91 = 1701869940;
  v92 = 0xE400000000000000;
  v53 = [a1 *(v10 + 456)];
  v77[1] = a4;
  if (v53 && (v54 = v53, v55 = [v53 privateMediaIntentData], v54, v55))
  {
    v56 = [v55 nlConfidenceLevel];
  }

  else
  {
    v56 = 0;
  }

  v95 = v56;
  v57 = sub_2664E0D48();
  MEMORY[0x2667833B0](v57);

  v58 = v91;
  v59 = v92;
  v60 = [a1 *(v10 + 456)];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 privateMediaIntentData];

    v63 = v89;
    v64 = v83;
    if (v62)
    {
      v65 = [v62 nlConfidenceScore];

      v66 = v87;
      if (v65)
      {
        [v65 doubleValue];
      }
    }

    else
    {
      v66 = v87;
    }
  }

  else
  {
    v63 = v89;
    v66 = v87;
    v64 = v83;
  }

  v67 = Double.rounded(to:)(2);
  sub_2664DE428();
  sub_2664DE388();
  v69 = v68;
  (*(v66 + 8))(v9, v7);
  v70 = type metadata accessor for PrivateIntentDataSignal();
  v71 = swift_allocObject();
  *(v71 + 16) = v84;
  v72 = object;
  *(v71 + 24) = countAndFlagsBits;
  *(v71 + 32) = v72;
  v73 = v82;
  *(v71 + 40) = v64;
  *(v71 + 48) = v73;
  v74 = v81;
  *(v71 + 56) = v80;
  *(v71 + 64) = v74;
  *(v71 + 72) = v35;
  v75 = v77[0];
  *(v71 + 80) = v47;
  *(v71 + 88) = v75;
  *(v71 + 96) = v52;
  *(v71 + 104) = v58;
  *(v71 + 112) = v59;
  *(v71 + 120) = v67;
  v76 = v78;
  *(v71 + 128) = v79;
  *(v71 + 136) = v76;
  *(v71 + 144) = v69;
  if (v63)
  {

    sub_26636B8D0();
  }

  v93 = v70;
  v94 = &off_2877F2D48;
  v91 = v71;

  (v90)(&v91);
  __swift_destroy_boxed_opaque_existential_1Tm(&v91);
}

uint64_t sub_2664680A8(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v31 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = sub_2664DE438();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE428();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C18, &qword_2664EDFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C20, qword_2664EE000);
  v13 = sub_2664E0318();
  v25 = v14;
  v26 = v13;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v16 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v17 = (v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "appSelectionSignalsSignal";
  *(v18 + 24) = 25;
  *(v18 + 32) = 2;
  (*(v4 + 32))(v18 + v16, v7, v3);
  v19 = (v18 + v17);
  v20 = v28;
  *v19 = v27;
  v19[1] = v20;

  v21 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2664E36F0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2662C4094();
  v23 = v25;
  *(v22 + 32) = v26;
  *(v22 + 40) = v23;
  sub_2664DFDC8(v21, &dword_26629C000, v15, "appSelectionSignalsSignal", 25, 2, v9, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v22);

  sub_2664677B8(v31, v12, sub_266352A18, v18);

  (*(v4 + 8))(v9, v3);
  return (*(v29 + 8))(v12, v30);
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = sub_2664DE518();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_2664DE4B8();
  v16 = sub_2664DE4E8();
  (*(v12 + 8))(v14, v11);
  [v15 setLocale_];

  [v15 setUsesSignificantDigits_];
  [v15 setMaximumSignificantDigits_];
  v17 = sub_2664E02A8();
  [v15 setDecimalSeparator_];

  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v19 = [v15 stringFromNumber_];

  if (v19)
  {
    v20 = sub_2664E02C8();
    v22 = v21;

    v36[0] = 0.0;
    if (sub_2664689C4(v20, v22, v36))
    {

      return v36[0];
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v10, v27, v4);

      v28 = sub_2664DFE18();
      v29 = sub_2664E06D8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v35 = v31;
        *v30 = 136446210;
        v32 = sub_2662A320C(v20, v22, &v35);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_26629C000, v28, v29, "Double#rounded error converting rounded result %{public}s back to Double", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x266784AD0](v31, -1, -1);
        MEMORY[0x266784AD0](v30, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v23, v4);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134349312;
      *(v26 + 4) = v2;
      *(v26 + 12) = 2050;
      *(v26 + 14) = to;
      _os_log_impl(&dword_26629C000, v24, v25, "Double#rounded error converting %{public}f to %{public}ld sig figs", v26, 0x16u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v2;
}

BOOL sub_2664689C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_2664E0B18();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_266468ABC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_266468B3C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a4;
  v33 = a3;
  v34 = a2;
  v4 = sub_2664DE438();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v14 = *(v8 + 16);
  v14(v12, v13, v7);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "UserContextSignal#signal got results", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = *(v8 + 8);
  v18(v12, v7);
  sub_266468EB4(v29);
  if (!v19)
  {
    v14(v28, v13, v7);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "UserContextSignal#signal missing, or error coercing INMediaUserContext results to type", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    v18(v28, v7);
    v19 = sub_266386688(MEMORY[0x277D84F90]);
  }

  v23 = v19;
  sub_2664DE428();
  sub_2664DE388();
  v25 = v24;
  (*(v31 + 8))(v6, v32);
  v35[3] = &type metadata for UserContextSignal;
  v35[4] = &off_2877F2E40;
  v35[0] = v23;
  v35[1] = v25;
  v34(v35);
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

void sub_266468EB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073020, &unk_2664EE170);
    v2 = sub_2664E0C98();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v13 = __clz(__rbit64(v5)) | (v12 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v5 &= v5 - 1;

    v20 = v17;
    v21 = sub_2662A3E98(v16, v15);
    if (v22)
    {
      v8 = (v2[6] + 16 * v21);
      *v8 = v16;
      v8[1] = v15;
      v9 = v21;

      v10 = v2[7];
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v19;

      v7 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
      v23 = (v2[6] + 16 * v21);
      *v23 = v16;
      v23[1] = v15;
      *(v2[7] + 8 * v21) = v19;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      v2[2] = v26;
      v7 = v12;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v12 = v7;
  }
}

uint64_t sub_2664690C8()
{
  v0 = sub_2662C3A68(&unk_2877E14E0);
  result = swift_arrayDestroy();
  qword_280F91CE8 = v0;
  return result;
}

unint64_t sub_266469114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16) || (v4 = sub_2662A3E98(a1, a2), (v5 & 1) == 0))
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  sub_2664E0818();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    v10 = v7;
    v11 = sub_2664E0818();
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v11 = -1;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_2664E34E0;
  *(inited + 40) = 0x80000002664F1070;
  if (v6)
  {
    [v6 subscriptionStatus];
    v15 = [v6 subscriptionStatus];
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x277D83B88];
  *(inited + 48) = v15;
  *(inited + 72) = v16;
  strcpy((inited + 80), "libraryItems");
  *(inited + 120) = v16;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v11;
  v17 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();

  return v17;
}

uint64_t sub_266469298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2662C1744(0, &qword_280F8F640, 0x277CD42D8);
  v3 = sub_2664E01C8();

  v2(v3);
}

double sub_26646936C()
{
  if (qword_280F90918 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2664693D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  sub_2664DE428();
  sub_2662C1744(0, &unk_280F8F5A8, 0x277CD3DD8);
  (*(v5 + 16))(v8, v10, v4);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  (*(v5 + 32))(v12 + v11, v8, v4);
  v13 = objc_opt_self();

  v14 = [v13 sharedStore];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock[4] = sub_266469BB0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266469298;
  aBlock[3] = &block_descriptor_46;
  v16 = _Block_copy(aBlock);

  [v14 userContextOfClass:ObjCClassFromMetadata withCompletion:v16];
  _Block_release(v16);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_26646963C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = sub_26632958C(1021);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "UserContextSignal#signal", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = a1;
  v13[4] = a2;

  sub_2664693D0(sub_266352BC8, v13);
}

uint64_t sub_266469890(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C28, &qword_2664EE158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C30, &unk_2664EE160);
  v10 = sub_2664E0318();
  v22 = v11;
  v23 = v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "appSelectionSignalsSignal";
  *(v15 + 24) = 25;
  *(v15 + 32) = 2;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  *v16 = v24;
  v16[1] = a2;

  v17 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v22;
  *(v18 + 32) = v23;
  *(v18 + 40) = v19;
  sub_2664DFDC8(v17, &dword_26629C000, v12, "appSelectionSignalsSignal", 25, 2, v9, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v18);

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v15;

  sub_26646963C(sub_266352AC0, v20);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_266469BB0(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_266468B3C(a1, v4, v5, v6);
}

uint64_t AtomicOnce.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_280F91468;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_280F91470;
  v8[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v8[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v8[0] = v6;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v4 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v8);
  return v4;
}

uint64_t AtomicOnce.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v6 = qword_280F91468;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v9[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v9[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v9[0] = v7;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v3 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v9);
  return v3;
}

uint64_t sub_266469DF8(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v42 = a1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v45 = *(v5 + 16);
  v46 = v5 + 16;
  v45(v15, v16, v4);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v44 = v5;
    v21 = v20;
    v47 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v47);
    _os_log_impl(&dword_26629C000, v17, v18, "AtomicOnce#once [%{public}s] acquiring global lock", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v22 = v21;
    v5 = v44;
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v15, v4);
  v24 = sub_2662A98AC();
  if (*(v3 + 24) == 1)
  {
    sub_2662AA89C();
    v45(v13, v16, v4);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06E8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v47);
      _os_log_impl(&dword_26629C000, v25, v26, "AtomicOnce#once [%{public}s] already complete, skipping...", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v29 = v13;
  }

  else
  {
    v42(v24);
    v45(v10, v16, v4);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v44 = v5;
      v33 = v32;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v47);
      _os_log_impl(&dword_26629C000, v30, v31, "AtomicOnce#once [%{public}s] complete...", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v23(v10, v4);
    *(v3 + 24) = 1;
    sub_2662AA89C();
    v35 = v43;
    v45(v43, v16, v4);

    v36 = sub_2664DFE18();
    v37 = sub_2664E06E8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_2662A320C(*(v3 + 32), *(v3 + 40), &v47);
      _os_log_impl(&dword_26629C000, v36, v37, "AtomicOnce#once [%{public}s] unlocked...", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v29 = v35;
  }

  return (v23)(v29, v4);
}

uint64_t AtomicOnce.deinit()
{

  return v0;
}

uint64_t AtomicOnce.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PlaybackRepeatMode.mrRepeatMode.getter()
{
  v1 = *v0;
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

SiriAudioSupport::PlaybackRepeatMode __swiftcall INPlaybackRepeatMode.repeatMode()()
{
  v2 = v0;
  v3 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 4)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v10, v4);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18[1] = v2;
      v19 = v14;
      *v13 = 136315138;
      type metadata accessor for INPlaybackRepeatMode(0);
      v15 = sub_2664E0318();
      v17 = sub_2662A320C(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_26629C000, v11, v12, "Unknown INPlaybackRepeatMode: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x266784AD0](v14, -1, -1);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
    LOBYTE(v9) = 4;
  }

  else
  {
    v9 = 0x1020003u >> (8 * v2);
  }

  *v3 = v9;
  return result;
}

SiriAudioSupport::TCCStatus __swiftcall TCCProvider.getSiriTCCStatusForBundle(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v4 = v1;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = sub_2664E02A8();
  v16 = TCCAccessCopyInformationForBundleId();

  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_21;
  }

  v73 = 0;
  sub_2664E0498();

  v18 = v73;
  if (!v73)
  {
LABEL_21:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v41, v5);

    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_2662A320C(countAndFlagsBits, object, v75);
      _os_log_impl(&dword_26629C000, v42, v43, "TCCProvider#getSiriTCCStatusForBundle failed to pull TCC info for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    result = (*(v6 + 8))(v9, v5);
    goto LABEL_31;
  }

  v69 = v4;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v20 = *(v6 + 16);
  v66 = v6 + 16;
  v67 = v19;
  v65 = v20;
  v20(v14, v19, v5);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06B8();

  v23 = os_log_type_enabled(v21, v22);
  v68 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v64 = v12;
    v25 = v24;
    v26 = swift_slowAlloc();
    v73 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_2662A320C(countAndFlagsBits, object, &v73);
    *(v25 + 12) = 2080;
    v27 = MEMORY[0x2667834D0](v18, MEMORY[0x277D84F68] + 8);
    v29 = sub_2662A320C(v27, v28, &v73);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_26629C000, v21, v22, "TCCProvider#getSiriTCCStatusForBundle bundle:%s, TCC info:%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v26, -1, -1);
    v30 = v25;
    v12 = v64;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v31 = *(v6 + 8);
  v31(v14, v5);
  v4 = v69;
  if (!*MEMORY[0x277D6C0E8])
  {
    goto LABEL_26;
  }

  v32 = *MEMORY[0x277D6C0E8];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_27:

    goto LABEL_28;
  }

  v73 = 0;
  v74 = 0;
  sub_2664E02B8();

  v33 = v74;
  if (!v74)
  {
LABEL_26:

LABEL_28:
    v65(v12, v67, v5);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "TCCProvider#getSiriTCCStatusForBundle failed to access TCC strings", v49, 2u);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    result = v31(v12, v5);
    goto LABEL_31;
  }

  v34 = *MEMORY[0x277D6C210];
  if (!*MEMORY[0x277D6C210])
  {
LABEL_57:

    goto LABEL_26;
  }

  v64 = v73;
  v32 = v34;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_27;
  }

  v73 = 0;
  v74 = 0;
  sub_2664E02B8();

  if (!v74)
  {
    goto LABEL_57;
  }

  v35 = *MEMORY[0x277D6C0D0];
  if (!*MEMORY[0x277D6C0D0])
  {
LABEL_59:

    goto LABEL_26;
  }

  v62 = v73;
  v63 = v74;
  v32 = v35;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_27;
  }

  v73 = 0;
  v74 = 0;
  sub_2664E02B8();

  v61 = v74;
  if (!v74)
  {
    goto LABEL_59;
  }

  v36 = v68;
  v66 = v73;
  v67 = v68 & 0xFFFFFFFFFFFFFF8;
  if (v68 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v38 = 0;
    v39 = &unk_280073C38;
    v40 = v36 & 0xC000000000000001;
    while (1)
    {
      if (v40)
      {
        v4 = MEMORY[0x266783B70](v38, v36);
      }

      else
      {
        if (v38 >= *(v67 + 16))
        {
          goto LABEL_64;
        }

        v4 = *(v36 + 8 * v38 + 32);
        swift_unknownObjectRetain();
      }

      v51 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v73 = v4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39, &qword_2664EE240);
      if (swift_dynamicCast())
      {
        v52 = v39;
        v53 = v71;
        v71 = v64;
        v72 = v33;

        sub_2664E0AB8();
        if (!*(v53 + 16))
        {
          goto LABEL_53;
        }

        v54 = sub_26634D9F8(&v73);
        if ((v55 & 1) == 0)
        {
          goto LABEL_53;
        }

        v56 = *(*(v53 + 56) + 8 * v54);
        swift_unknownObjectRetain();
        sub_266350284(&v73);
        v70 = v56;
        if (swift_dynamicCast())
        {
          if (v71 == v62 && v63 == v72)
          {

LABEL_49:
            v71 = v66;
            v72 = v61;

            sub_2664E0AB8();
            v36 = v68;
            if (*(v53 + 16))
            {
              sub_26634D9F8(&v73);
              if (v57)
              {
                swift_unknownObjectRetain();
                sub_266350284(&v73);

                objc_opt_self();
                v58 = swift_dynamicCastObjCClass();
                if (v58)
                {
                  v59 = v58;

                  LOBYTE(v59) = [v59 BOOLValue];
                  swift_unknownObjectRelease();
                  result = swift_unknownObjectRelease();
                  v50 = v59 ^ 1;
                  v4 = v69;
                  goto LABEL_32;
                }

                swift_unknownObjectRelease();
                goto LABEL_56;
              }
            }

LABEL_53:

            swift_unknownObjectRelease();
            sub_266350284(&v73);
          }

          else
          {
            LODWORD(v65) = sub_2664E0D88();

            if (v65)
            {
              goto LABEL_49;
            }

LABEL_56:
            swift_unknownObjectRelease();
            v36 = v68;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          v36 = v68;
        }

        v39 = v52;
        goto LABEL_34;
      }

      swift_unknownObjectRelease();
LABEL_34:
      ++v38;
      v4 = v69;
      if (v51 == i)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

LABEL_66:

LABEL_31:
  v50 = 2;
LABEL_32:
  *v4 = v50;
  return result;
}

Swift::Void __swiftcall TCCProvider.rejectTCC(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  if (*MEMORY[0x277D6C210])
  {
    v10 = qword_280F914E8;
    v11 = *MEMORY[0x277D6C210];
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v9, v12, v3);

    v13 = sub_2664DFE18();
    v14 = sub_2664E06E8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2662A320C(countAndFlagsBits, object, &v23);
      _os_log_impl(&dword_26629C000, v13, v14, "TCCProvider#rejectTCC explicitly denying TCC access for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266784AD0](v16, -1, -1);
      MEMORY[0x266784AD0](v15, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    v17 = v11;
    v18 = sub_2664E02A8();
    TCCAccessSetForBundleId();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v19, v3);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "TCCProvider#rejectTCC failed to access kTCCServiceSiri string", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_26646B4C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26646B50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26646B568(void (*a1)(void *), uint64_t a2)
{
  v4 = sub_2664DEC48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DEF28();
  if (*(v12 + 16))
  {
    sub_2662A5550(v12 + 32, v21);

    sub_2662A8618(v21, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    sub_2664DF048();

    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    v20 = a1;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v11, v15, v8);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "NowPlayingStateIndependentSignal: Got error to read signal", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    *v7 = -1;
    (*(v5 + 104))(v7, *MEMORY[0x277D60170], v4);
    v20(v7);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26646B8AC(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_2664DEC48();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v31 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  (*(v5 + 16))(&v31 - v12, a1, v4);
  if ((*(v5 + 88))(v13, v4) == *MEMORY[0x277D60188])
  {
    v35 = a2;
    (*(v5 + 96))(v13, v4);
    v14 = 0;
    result = *v13;
    v16 = *v13 + 64;
    v17 = 1 << *(*v13 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(*v13 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = MEMORY[0x277D84F90];
    if (!v19)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v23 = *(*(result + 56) + ((v14 << 9) | (8 * v22)));
        if (v23)
        {
          break;
        }

        if (!v19)
        {
          goto LABEL_7;
        }
      }

      v34 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD0FC(0, v21[2] + 1, 1);
        v21 = v36;
      }

      v27 = v21[2];
      v26 = v21[3];
      v28 = v27 + 1;
      result = v34;
      if (v27 >= v26 >> 1)
      {
        v32 = v21[2];
        v33 = v27 + 1;
        sub_2662FD0FC((v26 > 1), v27 + 1, 1);
        v27 = v32;
        v28 = v33;
        result = v34;
        v21 = v36;
      }

      v21[2] = v28;
      v21[v27 + 4] = v23;
    }

    while (v19);
    while (1)
    {
LABEL_7:
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v24 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v24);
      ++v14;
      if (v19)
      {
        v14 = v24;
        goto LABEL_5;
      }
    }

    if (v21[2])
    {
      v30 = v21[4];
    }

    else
    {
      v30 = 0;
    }

    *v11 = v30;
    (*(v5 + 104))(v11, *MEMORY[0x277D60170], v4);
    v35(v11);
    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    *v8 = -1;
    (*(v5 + 104))(v8, *MEMORY[0x277D60170], v4);
    a2(v8);
    v29 = *(v5 + 8);
    v29(v8, v4);
    return v29(v13, v4);
  }
}

uint64_t sub_26646BC24()
{
  v0 = qword_280073C40;

  return v0;
}

void sub_26646BC5C()
{
  sub_266456F50();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_26646BC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266456F50();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_26646BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266456F50();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_26646BD68()
{
  result = qword_280F8F720;
  if (!qword_280F8F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F720);
  }

  return result;
}

id sub_26646BDC4()
{
  v0 = [objc_opt_self() sharedStream];

  return v0;
}

id sub_26646BE04(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DE4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_266475DC8(a1, a2);
  if (result)
  {
    v15 = result;
    v33 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v13, v16, v10);
    (*(v7 + 16))(v9, a2, v6);
    v17 = v11;
    v18 = sub_2664DFE18();
    v19 = sub_2664E06C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v15;
      v21 = v20;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v21 = 134218242;
      *(v21 + 4) = v33;
      *(v21 + 12) = 2080;
      sub_2663EF71C();
      v30 = v19;
      v22 = sub_2664E0D48();
      v33 = v3;
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      v25 = sub_2662A320C(v22, v24, &v34);
      v3 = v33;

      *(v21 + 14) = v25;
      _os_log_impl(&dword_26629C000, v18, v30, "SiriAudioSelfLogger#emitMWTCheckPoint Logging MWT checkpoint %ld for requestId: %s", v21, 0x16u);
      v26 = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266784AD0](v26, -1, -1);
      v27 = v21;
      v15 = v32;
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v28 = (*(v17 + 8))(v13, v10);
    [(*((*MEMORY[0x277D85000] & *v3) + 0x50))(v28) emitMessage_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_26646C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_266475DC8(a1, a2);
  if (result)
  {
    v6 = result;
    [(*((*MEMORY[0x277D85000] & *v3) + 0x50))() emitMessage:result timestamp:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26646C500(char *a1, uint64_t a2)
{
  v157 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v134[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v154 = &v134[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v134[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v134[-v14];
  v16 = sub_2664DE4A8();
  v158 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v156 = &v134[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v155 = &v134[-v20];
  MEMORY[0x28223BE20](v19);
  v160 = &v134[-v21];
  v22 = [objc_allocWithZone(MEMORY[0x277D58B50]) init];
  if (!v22)
  {
    goto LABEL_12;
  }

  v159 = v22;
  v23 = [objc_allocWithZone(MEMORY[0x277D58B58]) init];
  if (!v23)
  {
    v45 = v159;
LABEL_8:

LABEL_12:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v49, v4);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "SiriAudioSelfLogger#emitMWTMusicMetadata error creating SELF objects", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  v152 = v23;
  v153 = v16;
  v24 = [objc_allocWithZone(MEMORY[0x277D58B60]) init];
  if (!v24)
  {

    v45 = v152;
    goto LABEL_8;
  }

  v25 = v24;
  v150 = v2;
  v151 = v4;
  v26 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  v144 = *&a1[v26];
  v27 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  v143 = *&a1[v27];
  v28 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  v142 = *&a1[v28];
  v29 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  v141 = *&a1[v29];
  v30 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  v140 = *&a1[v30];
  v31 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  v139 = *&a1[v31];
  v32 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  v138 = *&a1[v32];
  v33 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  v137 = *&a1[v33];
  v34 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  v136 = *&a1[v34];
  v35 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  v135 = *&a1[v35];
  v36 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  LODWORD(v146) = *&a1[v36];
  v37 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  v145 = *&a1[v37];
  v38 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  LODWORD(v149) = *&a1[v38];
  v39 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  LODWORD(v148) = *&a1[v39];
  v40 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  LODWORD(v147) = *&a1[v40];
  v41 = objc_opt_self();
  v42 = sub_2664DE478();
  v43 = [v41 derivedIdentifierForComponentName:25 fromSourceIdentifier:v42];

  if (v43)
  {
    sub_2664DE488();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v46 = v158;
  v47 = v153;
  (*(v158 + 56))(v13, v44, 1, v153);
  sub_266476340(v13, v15);
  v48 = (*(v46 + 48))(v15, 1, v47);
  v4 = v151;
  if (v48 == 1)
  {

    sub_2662A9238(v15, &qword_280073C60, &unk_2664EE400);
    goto LABEL_12;
  }

  (*(v46 + 32))(v160, v15, v47);
  [v25 setMusicDomain_];
  [v25 setQueueType_];
  [v25 setPrefetchedMetadataSource_];
  [v25 setAssetEndPoint_];
  [v25 setStreamingContentType_];
  [v25 setFormatCodec_];
  [v25 setFormatLayout_];
  [v25 setFormatTier_];
  [v25 setRouteConfiguration_];
  [v25 setNetworkConnectionType_];
  v54 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  [v25 setQueueSize_];
  v55 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  [v25 setIsShuffled_];
  v56 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  [v25 setFormatBitrate_];
  v57 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  [v25 setFormatBitDepth_];
  v58 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  [v25 setFormatChannels_];
  v59 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  [v25 setFormatSampleRate_];
  v60 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  [v25 setNumberOfSpeakers_];
  v61 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  [v25 setIsAccountDataReady_];
  v62 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  [v25 setIsStoreBagReady_];
  v63 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  [v25 setIsLeaseReady_];
  v64 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  [v25 setIsOnlineKeyReady_];
  v65 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  [v25 setIsOfflineKeyReady_];
  v66 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  [v25 setIsHlsKeysReady_];
  v67 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  [v25 setIsInterruptingPlayback_];
  v68 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  [v25 setIsRemoteSetQueue_];
  v69 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  [v25 setIsDelegatedPlayback_];
  v70 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  [v25 setIsNonDefaultUser_];
  v71 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  [v25 setIsAutoPlay_];
  v72 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  [v25 setIsFirstPlayAfterAppLaunch_];
  v73 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  [v25 setIsMiniSinfAvailable_];
  v74 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  [v25 setIsSharePlayPlayback_];
  v75 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  [v25 setIsSuzeLease_];
  v76 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  [v25 setWasMediaLibraryDatabaseUpgraded_];
  v77 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  [v25 setIsPrimaryUser_];
  v78 = &a1[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_errorResolutionType];
  swift_beginAccess();
  if (*(v78 + 1))
  {

    v79 = sub_2664E02A8();
  }

  else
  {
    v79 = 0;
  }

  [v25 setErrorResolutionType_];

  [v25 setEndPointType_];
  [v25 setRouteType_];
  v80 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  [v25 setFormatLayoutValue_];
  [v25 setAssetSource_];
  [v25 setAssetLocation_];
  [v25 setSubscriptionType_];
  v81 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  [v25 setHasLookupWaitTime_];
  v82 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  [v25 setHasBagWaitTime_];
  v83 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  [v25 setHasLeaseWaitTime_];
  v84 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  [v25 setHasSuzeLeaseWaitTime_];
  v85 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  [v25 setHasSubscriptionAssetLoadWaitTime_];
  v86 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  [v25 setHasMediaRedownloadWaitTime_];
  v87 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  [v25 setCmInitialStartupItemCreationToReadyToPlayDurationInMs_];
  v88 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  [v25 setCmInitialStartupItemCreationToLtluDurationInMs_];
  v89 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  [v25 setMasterPlaylistConnectionTlsHandshakeDurationInMs_];
  v90 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  [v25 setMasterPlaylistRequestDurationInMs_];
  v91 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  [v25 setSubPlaylistConnectionTlsHandshakeDurationInMs_];
  v92 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  [v25 setSubPlaylistRequestDurationInMs_];
  v93 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  [v25 setContentConnectionTlsHandshakeDurationInMs_];
  v94 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  [v25 setContentFirstSegmentDurationInMs_];
  v95 = &a1[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_audioQueueType];
  swift_beginAccess();
  if (*(v95 + 1))
  {

    v96 = sub_2664E02A8();
  }

  else
  {
    v96 = 0;
  }

  v97 = v154;
  [v25 setAudioQueueType_];

  v98 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v99 = sub_2664DE478();
  v100 = [v98 initWithNSUUID_];

  v101 = v152;
  [v152 setMwtId_];

  v102 = v159;
  [v159 setMwtMusicMetadataReported_];
  [v102 setEventMetadata_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v103 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v149 = v5;
  (*(v5 + 16))(v97, v103, v4);
  v104 = v158;
  v105 = *(v158 + 16);
  v106 = v153;
  v105(v155, v157, v153);
  v105(v156, v160, v106);
  v107 = v4;
  v108 = a1;
  v109 = sub_2664DFE18();
  v110 = sub_2664E06C8();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v148 = v109;
    v112 = v111;
    v113 = swift_slowAlloc();
    v147 = v113;
    v157 = swift_slowAlloc();
    v161[0] = v157;
    *v112 = 138412802;
    *(v112 + 4) = v108;
    *v113 = v108;
    *(v112 + 12) = 2080;
    v146 = sub_2663EF71C();
    v114 = v108;
    v115 = v155;
    v116 = v153;
    v117 = sub_2664E0D48();
    v119 = v118;
    v120 = *(v104 + 8);
    LODWORD(v158) = v110;
    v120(v115, v116);
    v121 = sub_2662A320C(v117, v119, v161);

    *(v112 + 14) = v121;
    *(v112 + 22) = 2080;
    v122 = v156;
    v123 = sub_2664E0D48();
    v125 = v124;
    v120(v122, v116);
    v126 = sub_2662A320C(v123, v125, v161);

    *(v112 + 24) = v126;
    v127 = v148;
    _os_log_impl(&dword_26629C000, v148, v158, "SiriAudioSelfLogger#emitMWTCheckPoint Logging MWT metadata %@ for requestId: %s, mwtId: %s", v112, 0x20u);
    v128 = v147;
    sub_2662A9238(v147, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v128, -1, -1);
    v129 = v157;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v129, -1, -1);
    MEMORY[0x266784AD0](v112, -1, -1);

    v130 = (*(v149 + 8))(v154, v151);
  }

  else
  {

    v120 = *(v104 + 8);
    v131 = v153;
    v120(v156, v153);
    v120(v155, v131);
    v130 = (*(v149 + 8))(v97, v107);
  }

  v132 = (*((*MEMORY[0x277D85000] & *v150) + 0x50))(v130);
  v133 = v159;
  [v132 emitMessage_];

  swift_unknownObjectRelease();
  return (v120)(v160, v153);
}

uint64_t sub_26646DA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664765F8(a1, a2);
  if (v9 >> 60 == 15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v10, v4);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26629C000, v11, v12, "SiriAudioSelfLogger#emitVMCPUStats error collecting VM/CPU stats", v13, 2u);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v15 = v8;
    v16 = v9;
    sub_26646DD6C(v8, v9);

    return sub_2662B79A8(v15, v16);
  }
}

uint64_t sub_26646DC6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v8 = sub_2664DE4A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE488();
  v12 = a1;
  a5(a3, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26646DD6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2664DE4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v69 = v6;
  v70 = v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  type metadata accessor for SiriAudioSelfLogger.VMCPUStats(0);
  v19 = sub_2664E0718();
  v66 = v5;
  v67 = v18;
  if (v19)
  {
    v20 = v16;
    v21 = [objc_allocWithZone(MEMORY[0x277D58B50]) init];
    if (v21)
    {
      v22 = v21;
      v23 = [objc_allocWithZone(MEMORY[0x277D58B58]) init];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_allocWithZone(MEMORY[0x277D58B68]) init];
        if (v25)
        {
          v26 = *&v19[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage];
          if (v26 < 0xFFFFFFFF80000000)
          {
            __break(1u);
          }

          else
          {
            v63 = OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage;
            if (v26 <= 0x7FFFFFFF)
            {
              v10 = v25;
              v20 = v3;
              v27 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
              v28 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v62 = v27;
              v29 = sub_2664DE478();
              v30 = [v28 initWithNSUUID_];

              [v24 setMwtId_];
              [v10 setSnapshotStage_];
              [v10 setCpuTicksUser_];
              [v10 setCpuTicksSystem_];
              [v10 setCpuTicksIdle_];
              [v10 setCpuTicksNice_];
              [v10 setCompressions_];
              [v10 setDecompressions_];
              [v10 setPageins_];
              [v10 setFaults_];
              v64 = v24;
              [v22 setEventMetadata_];
              [v22 setMwtVMCpuStatsReported_];
              v3 = v69;
              if (qword_280F914E8 == -1)
              {
LABEL_8:
                v31 = __swift_project_value_buffer(v3, qword_280F914F0);
                swift_beginAccess();
                v32 = v70;
                v33 = v67;
                (*(v70 + 16))(v67, v31, v3);
                v65 = v19;
                v34 = sub_2664DFE18();
                v35 = sub_2664E06C8();
                if (os_log_type_enabled(v34, v35))
                {
                  v36 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v71 = v61;
                  *v36 = 134218242;
                  *(v36 + 4) = *&v19[v63];

                  *(v36 + 12) = 2080;
                  v37 = *(v20 + 2);
                  LODWORD(v63) = v35;
                  v38 = v66;
                  v37(v66, &v19[v62], v2);
                  sub_2663EF71C();
                  v39 = sub_2664E0D48();
                  v40 = v20;
                  v41 = v39;
                  v43 = v42;
                  (*(v40 + 1))(v38, v2);
                  v44 = sub_2662A320C(v41, v43, &v71);

                  *(v36 + 14) = v44;
                  _os_log_impl(&dword_26629C000, v34, v63, "SiriAudioSelfLogger#emitMWTCheckPoint Logging VM/CPU snapshot for stage %ld, mwtId: %s", v36, 0x16u);
                  v45 = v61;
                  __swift_destroy_boxed_opaque_existential_1Tm(v61);
                  MEMORY[0x266784AD0](v45, -1, -1);
                  MEMORY[0x266784AD0](v36, -1, -1);

                  v46 = (*(v70 + 8))(v33, v3);
                }

                else
                {

                  v46 = (*(v32 + 8))(v33, v3);
                }

                [(*((*MEMORY[0x277D85000] & *v68) + 0x50))(v46) emitMessage_];

                return swift_unknownObjectRelease();
              }

LABEL_28:
              swift_once();
              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        v24 = v22;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = v69;
    v55 = __swift_project_value_buffer(v69, qword_280F914F0);
    swift_beginAccess();
    v56 = v70;
    v57 = v20;
    (*(v70 + 16))(v20, v55, v54);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "SiriAudioSelfLogger#emitVMCPUStats error creating SELF objects", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    else
    {
    }

    return (*(v56 + 8))(v57, v54);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v69;
    v48 = __swift_project_value_buffer(v69, qword_280F914F0);
    swift_beginAccess();
    v49 = v70;
    (*(v70 + 16))(v13, v48, v47);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "SiriAudioSelfLogger#emitVMCPUStats error decoding VM/CPU stats", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    return (*(v49 + 8))(v13, v47);
  }
}

id SiriAudioSelfLogger.VMCPUStats.__allocating_init(mwtId:snapshotStage:cpuTicksUser:cpuTicksSystem:cpuTicksIdle:cpuTicksNice:compressions:decompressions:pageins:faults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = objc_allocWithZone(v10);
  v17 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
  v18 = sub_2664DE4A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v16[v17], a1, v18);
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = a2;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = a3;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = a4;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = a5;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = a6;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = a7;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = a8;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = a9;
  *&v16[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = a10;
  v25.receiver = v16;
  v25.super_class = v10;
  v20 = objc_msgSendSuper2(&v25, sel_init);
  (*(v19 + 8))(a1, v18);
  return v20;
}

uint64_t sub_26646EAE8(uint64_t a1)
{
  v98 = a1;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v99 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v85[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v85[-v12];
  v14 = sub_2664DE4A8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v16);
  v94 = &v85[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v85[-v22];
  MEMORY[0x28223BE20](v21);
  v95 = &v85[-v23];
  v24 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (!v24)
  {
    goto LABEL_13;
  }

  v96 = v24;
  v97 = v3;
  v25 = v2;
  v26 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v26)
  {
    v32 = v96;
LABEL_8:

LABEL_12:
    v2 = v25;
    v3 = v97;
LABEL_13:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v34 = v99;
    (*(v3 + 16))(v99, v33, v2);
    v35 = v15;
    (*(v15 + 16))(v18, v98, v14);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v100 = v39;
      *v38 = 136315138;
      sub_2663EF71C();
      v40 = sub_2664E0D48();
      v41 = v14;
      v42 = v2;
      v44 = v43;
      (*(v35 + 8))(v18, v41);
      v45 = sub_2662A320C(v40, v44, &v100);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_26629C000, v36, v37, "SiriAudioSelfLogger#emitRequestLink Unable to create request link info for SELF for interactionId: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);

      return (*(v3 + 8))(v99, v42);
    }

    else
    {

      (*(v35 + 8))(v18, v14);
      return (*(v3 + 8))(v34, v2);
    }
  }

  v92 = v26;
  v27 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
  if (!v27)
  {

    v32 = v92;
    goto LABEL_8;
  }

  v90 = v1;
  v91 = v27;
  v28 = objc_opt_self();
  v29 = sub_2664DE478();
  v30 = [v28 derivedIdentifierForComponentName:25 fromSourceIdentifier:v29];

  if (v30)
  {
    sub_2664DE488();

    v31 = v15;
    (*(v15 + 56))(v11, 0, 1, v14);
  }

  else
  {
    v31 = v15;
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  sub_266476340(v11, v13);
  if ((*(v31 + 48))(v13, 1, v14) == 1)
  {

    sub_2662A9238(v13, &qword_280073C60, &unk_2664EE400);
    goto LABEL_12;
  }

  v89 = v7;
  v47 = v95;
  (*(v31 + 32))(v95, v13, v14);
  v48 = v92;
  [v92 setComponent_];
  v99 = v31;
  v49 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v50 = sub_2664DE478();
  v51 = [v49 initWithNSUUID_];

  [v48 setUuid_];
  v52 = v91;
  [v91 setComponent_];
  v53 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v54 = v98;
  v55 = sub_2664DE478();
  v56 = [v53 initWithNSUUID_];

  [v52 setUuid_];
  v57 = v96;
  [v96 setSource_];
  [v57 setTarget_];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v58 = v25;
  v59 = __swift_project_value_buffer(v25, qword_280F914F0);
  swift_beginAccess();
  (*(v97 + 16))(v89, v59, v25);
  v60 = v99;
  v61 = *(v99 + 2);
  v62 = v93;
  v61(v93, v47, v14);
  v63 = v94;
  v61(v94, v54, v14);
  v64 = sub_2664DFE18();
  v65 = sub_2664E06C8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v100 = v88;
    *v66 = 136315394;
    sub_2663EF71C();
    v87 = v64;
    v67 = v62;
    v68 = v63;
    v69 = sub_2664E0D48();
    v98 = v58;
    v71 = v70;
    v86 = v65;
    v72 = *(v60 + 1);
    v72(v67, v14);
    v73 = sub_2662A320C(v69, v71, &v100);

    *(v66 + 4) = v73;
    *(v66 + 12) = 2080;
    v74 = sub_2664E0D48();
    v76 = v75;
    v72(v68, v14);
    v77 = sub_2662A320C(v74, v76, &v100);

    *(v66 + 14) = v77;
    v78 = v87;
    _os_log_impl(&dword_26629C000, v87, v86, "SiriAudioSelfLogger#emitRequestLink Logging request link for mwtId: %s, executionRequestId: %s", v66, 0x16u);
    v79 = v88;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v79, -1, -1);
    v80 = v66;
    v81 = v95;
    MEMORY[0x266784AD0](v80, -1, -1);

    v82 = (*(v97 + 8))(v89, v98);
  }

  else
  {
    v81 = v47;

    v72 = *(v60 + 1);
    v72(v63, v14);
    v72(v62, v14);
    v82 = (*(v97 + 8))(v89, v58);
  }

  v83 = (*((*MEMORY[0x277D85000] & *v90) + 0x50))(v82);
  v84 = v96;
  [v83 emitMessage_];

  swift_unknownObjectRelease();
  return (v72)(v81, v14);
}

uint64_t sub_26646F4E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477310(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_26646F68C(void *a1)
{
  v2 = v1;
  v4 = sub_2664DE478();
  v5 = sub_2664E02A8();
  [a1 encodeObject:v4 forKey:v5];

  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_2664E02A8();
  [a1 encodeObject:v6 forKey:v7];

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v9 = sub_2664E02A8();
  [a1 encodeObject:v8 forKey:v9];

  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v11 = sub_2664E02A8();
  [a1 encodeObject:v10 forKey:v11];

  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v13 = sub_2664E02A8();
  [a1 encodeObject:v12 forKey:v13];

  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v15 = sub_2664E02A8();
  [a1 encodeObject:v14 forKey:v15];

  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v17 = sub_2664E02A8();
  [a1 encodeObject:v16 forKey:v17];

  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v19 = sub_2664E02A8();
  [a1 encodeObject:v18 forKey:v19];

  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v21 = sub_2664E02A8();
  [a1 encodeObject:v20 forKey:v21];

  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v23 = sub_2664E02A8();
  [a1 encodeObject:v22 forKey:v23];
}

id SiriAudioSelfLogger.VMCPUStats.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_266477338();

  return v4;
}

id SiriAudioSelfLogger.VMCPUStats.init(coder:)(void *a1)
{
  v2 = sub_266477338();

  return v2;
}

id SiriAudioSelfLogger.VMCPUStats.init(mwtId:snapshotStage:cpuTicksUser:cpuTicksSystem:cpuTicksIdle:cpuTicksNice:compressions:decompressions:pageins:faults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
  v18 = sub_2664DE4A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a1, v18);
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = a2;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = a3;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = a4;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = a5;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = a6;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = a7;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = a8;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = a9;
  *&v10[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = a10;
  v24.receiver = v10;
  v24.super_class = type metadata accessor for SiriAudioSelfLogger.VMCPUStats(0);
  v20 = objc_msgSendSuper2(&v24, sel_init);
  (*(v19 + 8))(a1, v18);
  return v20;
}

uint64_t SiriAudioSelfLogger.VMCPUStats.mwtId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId;
  v4 = sub_2664DE4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SiriAudioSelfLogger.VMCPUStats.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26646FF84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477324(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SiriAudioSelfLogger.MWTMusicMetadata.init()()
{
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser] = 0;
  v1 = &v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_errorResolutionType];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime] = 0;
  v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs] = 0;
  *&v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs] = 0;
  v2 = &v0[OBJC_IVAR___SASelfLoggerMWTMusicMetadata_audioQueueType];
  v3 = type metadata accessor for SiriAudioSelfLogger.MWTMusicMetadata();
  *v2 = 0;
  v2[1] = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_266470308()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664703A0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_musicDomain;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470498()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266470530(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470628()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664706C0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_queueSize;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664707B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266470850(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isShuffled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470948()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664709E0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_prefetchedMetadataSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470AD8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266470B70(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetEndPoint;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470C68()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266470D00(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_streamingContentType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470DF8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266470E90(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatCodec;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266470F88()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471020(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitrate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471118()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664711B0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatBitDepth;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664712A8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471340(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatChannels;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471438()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664714D0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664715C8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471660(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatSampleRate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471758()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664717F0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatTier;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664718E8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471980(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_numberOfSpeakers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471A78()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471B10(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeConfiguration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471C08()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471CA0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAccountDataReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471D98()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471E30(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isStoreBagReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266471F28()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266471FC0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isLeaseReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664720B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472150(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOnlineKeyReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472248()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664722E0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isOfflineKeyReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664723D8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472470(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isHlsKeysReady;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472568()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472600(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isInterruptingPlayback;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664726F8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472790(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isRemoteSetQueue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472888()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472920(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isDelegatedPlayback;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472A18()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472AB0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isNonDefaultUser;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472BA8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472C40(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isAutoPlay;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472D38()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472DD0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isFirstPlayAfterAppLaunch;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266472EC8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266472F60(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isMiniSinfAvailable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473058()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664730F0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSharePlayPlayback;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664731E8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473280(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isSuzeLease;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473378()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473410(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_networkConnectionType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473508()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664735A0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_wasMediaLibraryDatabaseUpgraded;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473698()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473730(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_isPrimaryUser;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664738B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473950(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_endPointType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473A48()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473AE0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_routeType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473BD8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473C70(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_formatLayoutValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473D68()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473E00(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266473EF8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266473F90(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_assetLocation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474088()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474120(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subscriptionType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474218()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664742B0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLookupWaitTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664743A8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474440(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasBagWaitTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474538()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664745D0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasLeaseWaitTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664746C8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474760(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSuzeLeaseWaitTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474858()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664748F0(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasSubscriptionAssetLoadWaitTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664749E8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474A80(char a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_hasMediaRedownloadWaitTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474B78()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474C10(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToReadyToPlayDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474D08()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474DA0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_cmInitialStartupItemCreationToLtluDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266474E98()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266474F30(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266475028()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664750C0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_primaryPlaylistRequestDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664751B8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266475250(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266475348()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2664753E0(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_subPlaylistRequestDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2664754D8()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266475570(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentConnectionTlsHandshakeDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_266475668()
{
  v1 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_266475700(int a1)
{
  v3 = OBJC_IVAR___SASelfLoggerMWTMusicMetadata_contentFirstSegmentDurationInMs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_2664757BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_2664E02A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_266475850(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2664758B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_2664E02C8();
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

uint64_t sub_266475938(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_266475994(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

unint64_t sub_266475B5C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477928(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_266475BA8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266477B5C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_266475C0C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664780EC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_266475C70@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664781E8(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t _s16SiriAudioSupport0aB10SelfLoggerC12MWTQueueTypeO8rawValueAESgs5Int32V_tcfC_0(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

id SiriAudioSelfLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriAudioSelfLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_266475D90(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_266475DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_2664DE4A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v44 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277D58B50]) init];
  if (v17)
  {
    v45 = v17;
    v18 = [objc_allocWithZone(MEMORY[0x277D58B58]) init];
    if (v18)
    {
      v43 = v18;
      result = [objc_allocWithZone(MEMORY[0x277D58B48]) init];
      if (result)
      {
        if (a1 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v42 = result;
          v40 = a1;
          if (a1 <= 0x7FFFFFFF)
          {
            v20 = objc_opt_self();
            v41 = a2;
            v21 = sub_2664DE478();
            v22 = [v20 derivedIdentifierForComponentName:25 fromSourceIdentifier:v21];

            if (v22)
            {
              sub_2664DE488();

              v23 = v15;
              (*(v15 + 56))(v11, 0, 1, v14);
            }

            else
            {
              v23 = v15;
              (*(v15 + 56))(v11, 1, 1, v14);
            }

            sub_266476340(v11, v13);
            if ((*(v23 + 48))(v13, 1, v14) != 1)
            {
              v29 = v44;
              (*(v23 + 32))(v44, v13, v14);
              v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v31 = sub_2664DE478();
              v32 = [v30 initWithNSUUID_];

              v33 = v43;
              [v43 setMwtId_];

              v34 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v35 = sub_2664DE478();
              v36 = [v34 initWithNSUUID_];

              [v33 setRequestId_];
              v37 = v42;
              [v42 setStepType_];
              v38 = v45;
              [v45 setEventMetadata_];
              [v38 setMwtCheckpointReported_];

              (*(v23 + 8))(v29, v14);
              return v38;
            }

            sub_2662A9238(v13, &qword_280073C60, &unk_2664EE400);
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v24 = v43;
    }

    else
    {
      v24 = v45;
    }
  }

LABEL_14:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v25, v4);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06D8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "SiriAudioSelfLogger#createCheckpointClientEvent error creating SELF objects", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_266476340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2664763B0()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  host_info_outCnt = 4;
  v4 = swift_slowAlloc();
  v5 = MEMORY[0x2667843F0]();
  v6 = host_statistics(v5, 3, v4, &host_info_outCnt);
  if (v6)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v7, v0);
    v8 = sub_2664DFE18();
    v9 = sub_2664E06D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_26629C000, v8, v9, "SiriAudioSelfLogger#hostCPULoadInfo error retrieving CPU load info - kern_result_t = %d", v10, 8u);
      MEMORY[0x266784AD0](v10, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  else
  {
    v11 = *v4;
    MEMORY[0x266784AD0](v4, -1, -1);
  }

  return v11;
}

uint64_t sub_2664765F8(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v127 = *MEMORY[0x277D85DE8];
  v112 = sub_2664DFE38();
  v113 = *(v112 - 8);
  v3 = MEMORY[0x28223BE20](v112);
  v108 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v93 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v93 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v93 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v93 - v17;
  v19 = sub_2664DE4A8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v110 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v109 = &v93 - v24;
  MEMORY[0x28223BE20](v23);
  v114 = &v93 - v25;
  v26 = objc_opt_self();
  v27 = sub_2664DE478();
  v28 = [v26 derivedIdentifierForComponentName:25 fromSourceIdentifier:v27];

  if (v28)
  {
    sub_2664DE488();

    (*(v20 + 56))(v16, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v16, 1, 1, v19);
  }

  sub_266476340(v16, v18);
  v29 = (*(v20 + 48))(v18, 1, v19);
  v30 = v114;
  if (v29 == 1)
  {
    sub_2662A9238(v18, &qword_280073C60, &unk_2664EE400);
    v31 = v113;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v112;
    v33 = __swift_project_value_buffer(v112, qword_280F914F0);
    swift_beginAccess();
    (*(v31 + 16))(v7, v33, v32);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "SiriAudioSelfLogger#collectVMCPUStats error getting derived identifier", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v31 + 8))(v7, v32);
    return 0;
  }

  v37 = v12;
  v38 = *(v20 + 32);
  v107 = v19;
  v38(v114, v18, v19);
  v39 = sub_2664763B0();
  v41 = v112;
  v42 = v113;
  if ((v43 & 1) != 0 || (v44 = v39, v45 = v40, v46 = MEMORY[0x2667843F0](), LODWORD(host_info64_outCnt) = 40, v125 = 0u, v126 = 0u, v123 = 0u, v124 = 0u, v121 = 0u, v122 = 0u, v119 = 0u, v120 = 0u, *host_info64_out = 0u, v118 = 0u, host_statistics64(v46, 4, host_info64_out, &host_info64_outCnt)))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v41, qword_280F914F0);
    swift_beginAccess();
    (*(v42 + 16))(v10, v47, v41);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "SiriAudioSelfLogger#collectVMCPUStats error retrieving VM and/or CPU stats", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (*(v42 + 8))(v10, v41);
    (*(v20 + 8))(v30, v107);
    return 0;
  }

  v105 = v119;
  v106 = v120;
  v102 = *(&v123 + 1);
  v103 = v123;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v100 = HIDWORD(v44);
  v104 = v45;
  v101 = HIDWORD(v45);
  v52 = __swift_project_value_buffer(v41, qword_280F914F0);
  swift_beginAccess();
  v53 = *(v42 + 16);
  v97 = v52;
  v95 = v42 + 16;
  v94 = v53;
  v53(v12, v52, v41);
  v54 = v109;
  v55 = v107;
  v98 = *(v20 + 16);
  v98(v109, a2, v107);
  v56 = v42;
  v57 = sub_2664DFE18();
  v58 = sub_2664E06C8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    host_info64_outCnt = v93;
    *v59 = 136315138;
    sub_2663EF71C();
    v60 = sub_2664E0D48();
    v96 = v37;
    v61 = v60;
    v63 = v62;
    v64 = *(v20 + 8);
    v99 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v109 = v64;
    (v64)(v54, v55);
    v65 = sub_2662A320C(v61, v63, &host_info64_outCnt);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_26629C000, v57, v58, "SiriAudioSelfLogger#emitMWTCheckPoint Collecting VM/CPU snapshot for stage for requestId: %s", v59, 0xCu);
    v66 = v93;
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x266784AD0](v66, -1, -1);
    v67 = v59;
    v41 = v112;
    MEMORY[0x266784AD0](v67, -1, -1);

    v68 = *(v113 + 8);
    v69 = v96;
  }

  else
  {

    v70 = *(v20 + 8);
    v99 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v109 = v70;
    (v70)(v54, v55);
    v68 = *(v56 + 8);
    v69 = v37;
  }

  v96 = v68;
  v68(v69, v41);
  v71 = v110;
  v72 = v98;
  v98(v110, v114, v55);
  v73 = v104;
  v74 = type metadata accessor for SiriAudioSelfLogger.VMCPUStats(0);
  v75 = objc_allocWithZone(v74);
  v72(&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId], v71, v55);
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = v111;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = v44;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = v100;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = v73;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = v101;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = v102;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = v103;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = v105;
  *&v75[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = v106;
  v115.receiver = v75;
  v115.super_class = v74;
  v76 = objc_msgSendSuper2(&v115, sel_init);
  v77 = v109;
  (v109)(v71, v55);
  v78 = objc_opt_self();
  host_info64_outCnt = 0;
  v79 = [v78 archivedDataWithRootObject:v76 requiringSecureCoding:1 error:&host_info64_outCnt];
  v80 = host_info64_outCnt;
  if (!v79)
  {
    v82 = v80;
    v83 = sub_2664DE1A8();

    swift_willThrow();
    v84 = v108;
    v94(v108, v97, v41);
    v85 = v83;
    v86 = sub_2664DFE18();
    v87 = sub_2664E06D8();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      host_info64_outCnt = v89;
      *v88 = 136315138;
      swift_getErrorValue();
      v90 = sub_2664E0DE8();
      v92 = sub_2662A320C(v90, v91, &host_info64_outCnt);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_26629C000, v86, v87, "SiriAudioSelfLogger: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x266784AD0](v89, -1, -1);
      MEMORY[0x266784AD0](v88, -1, -1);

      v96(v84, v112);
    }

    else
    {

      v96(v84, v41);
    }

    (v109)(v114, v107);
    return 0;
  }

  v81 = sub_2664DE2F8();

  v77(v114, v55);
  return v81;
}