void *sub_29E6BFD74@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_29E6BF66C("[%{public}s] Plugin delegate is initialized");
  *a1 = v2;
  return result;
}

uint64_t sub_29E6BFDE0(uint64_t a1, uint64_t a2)
{
  v59 = *v2;
  v60 = sub_29E752098();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v60);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v57 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v57 - v11;
  v13 = sub_29E74ED28();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v18 = sub_29E74FB28();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 profileIdentifier];
      v21 = [v20 type];

      if (v21 == 1)
      {
        sub_29E6C1758(0, &qword_2A1A7BD08, &qword_2A1A7CED8, MEMORY[0x29EDC3628], 0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_29E762F30;
        swift_unknownObjectRetain();
        v23 = v19;
        sub_29E74ED18();
        type metadata accessor for BreathingDisturbancesHighlightExecutor(0);
        swift_allocObject();
        v24 = sub_29E74520C(a1, v17, v23, v15);
        sub_29E751758();

        v25 = sub_29E6C17B8(&qword_2A1A7C368, type metadata accessor for BreathingDisturbancesHighlightExecutor, &unk_29E76E590);
        *(v22 + 32) = v24;
        *(v22 + 40) = v25;
        sub_29E751758();

        return v22;
      }

      sub_29E751E48();
      swift_unknownObjectRetain();
      v47 = sub_29E752088();
      v48 = sub_29E7546C8();
      sub_29E751758();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v62 = v58;
        *v49 = 136446466;
        v50 = sub_29E755178();
        v52 = sub_29E6B9C90(v50, v51, &v62);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        v61 = a1;
        swift_unknownObjectRetain();
        v53 = sub_29E7541F8();
        v55 = sub_29E6B9C90(v53, v54, &v62);

        *(v49 + 14) = v55;
        _os_log_impl(&dword_29E5ED000, v47, v48, "[%{public}s] Sleep plugin only supports primary profile, ignoring context: %s", v49, 0x16u);
        v56 = v58;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v56, -1, -1);
        MEMORY[0x29ED98410](v49, -1, -1);
      }

      (*(v4 + 8))(v12, v60);
      sub_29E751758();
    }

    else
    {
      sub_29E751E48();
      swift_unknownObjectRetain();
      v37 = sub_29E752088();
      v38 = sub_29E7546C8();
      sub_29E751758();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v62 = v40;
        *v39 = 136446466;
        v41 = sub_29E755178();
        v43 = sub_29E6B9C90(v41, v42, &v62);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v61 = a1;
        swift_unknownObjectRetain();
        v44 = sub_29E7541F8();
        v46 = sub_29E6B9C90(v44, v45, &v62);

        *(v39 + 14) = v46;
        _os_log_impl(&dword_29E5ED000, v37, v38, "[%{public}s] Sleep plugin cannot perform work without a health store, ignoring context: %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v40, -1, -1);
        MEMORY[0x29ED98410](v39, -1, -1);
      }

      (*(v4 + 8))(v10, v60);
      sub_29E751758();
    }
  }

  else
  {
    sub_29E751E48();
    swift_unknownObjectRetain();
    v27 = sub_29E752088();
    v28 = sub_29E7546C8();
    sub_29E751758();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v30;
      *v29 = 136446466;
      v31 = sub_29E755178();
      v33 = sub_29E6B9C90(v31, v32, &v62);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v61 = a1;
      swift_unknownObjectRetain();
      v34 = sub_29E7541F8();
      v36 = sub_29E6B9C90(v34, v35, &v62);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s] Sleep plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v30, -1, -1);
      MEMORY[0x29ED98410](v29, -1, -1);
    }

    (*(v4 + 8))(v7, v60);
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E6C04E8()
{
  v0 = swift_allocObject();
  sub_29E6BF66C("[%{public}s] Plugin delegate is initialized");
  return v0;
}

void sub_29E6C0558()
{
  sub_29E6C11CC(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E769B70;
  *(v0 + 56) = &type metadata for SleepHygieneArticleDataProvider;
  *(v0 + 64) = sub_29E6C13F8();
  *(v0 + 72) = sub_29E6C144C();
  *(v0 + 104) = &type metadata for SleepImportanceArticleDataProvider;
  *(v0 + 112) = sub_29E6C14A0();
  *(v0 + 120) = sub_29E6C14F4();
  *(v0 + 152) = &type metadata for SleepApneaNotificationArticleDataProvider;
  *(v0 + 160) = sub_29E6C1548();
  *(v0 + 168) = sub_29E6C159C();
  *(v0 + 200) = &type metadata for SleepApneaArticleDataProvider;
  *(v0 + 208) = sub_29E6C15F0();
  *(v0 + 216) = sub_29E6C1644();
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 sleepDetails];

  if (v4)
  {
    v5 = sub_29E6DB41C(1, 5, 1, v0);
    v7 = &type metadata for SleepScoreArticleDataProvider;
    v8 = sub_29E6C1698();
    v9 = sub_29E6C16EC();
    v5[2] = 5;
    sub_29E6C1740(&v6, v5 + 14);
  }
}

void sub_29E6C06D0(uint64_t a1)
{
  if (!qword_2A1A7C130)
  {
    sub_29E6C072C();
    v1 = sub_29E751F68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7C130);
    }
  }
}

unint64_t sub_29E6C072C()
{
  result = qword_2A1A7CCA8;
  if (!qword_2A1A7CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCA8);
  }

  return result;
}

void *sub_29E6C0780(uint64_t a1, void *a2)
{
  v4 = sub_29E750048();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v44 = &v36 - v9;
  v10 = type metadata accessor for SleepApneaNotificationTipGeneratorPipeline(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_29E74FEB8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39 = v10;
    v40 = v8;
    v17 = *(v14 + 16);
    v38 = v14 + 16;
    v43 = a1;
    v41 = v5;
    v42 = v17;
    v17(v16, a1, v13);
    v18 = type metadata accessor for SleepOnboardingTileGeneratorPipeline(0);
    swift_allocObject();
    v19 = a2;
    v37 = sub_29E6D2F58(v16, v19);
    v20 = sub_29E6DB568(0, 1, 1, MEMORY[0x29EDCA190]);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_29E6DB568((v21 > 1), v22 + 1, 1, v20);
    }

    v46 = v18;
    v47 = sub_29E6C17B8(&unk_2A1A7D600, type metadata accessor for SleepOnboardingTileGeneratorPipeline, &unk_29E76A548);
    *&v45 = v37;
    v20[2] = v22 + 1;
    sub_29E5FAEE4(&v45, &v20[5 * v22 + 4]);
    v42(v16, v43, v13);
    v23 = v19;
    sub_29E648774(v16, v23, v12);
    v25 = v20[2];
    v24 = v20[3];
    if (v25 >= v24 >> 1)
    {
      v20 = sub_29E6DB568((v24 > 1), v25 + 1, 1, v20);
    }

    v8 = v40;

    v46 = v39;
    v47 = sub_29E6C17B8(&qword_2A1A7CB28, type metadata accessor for SleepApneaNotificationTipGeneratorPipeline, &unk_29E766518);
    v26 = sub_29E5FEBF4(&v45);
    sub_29E6C1338(v12, v26);
    v20[2] = v25 + 1;
    sub_29E5FAEE4(&v45, &v20[5 * v25 + 4]);
    sub_29E6C139C(v12);
    v5 = v41;
    v42(v16, v43, v13);
  }

  else
  {
    v20 = MEMORY[0x29EDCA190];
    (*(v14 + 16))(v16, a1, v13);
  }

  v27 = *MEMORY[0x29EDBA748];
  v46 = &type metadata for SleepApneaPromotionFeedItemProvider;
  v47 = sub_29E62F480();
  v28 = v27;
  v29 = v44;
  sub_29E750038();
  v30 = *(v5 + 16);
  v30(v8, v29, v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_29E6DB568(0, v20[2] + 1, 1, v20);
  }

  v32 = v20[2];
  v31 = v20[3];
  if (v32 >= v31 >> 1)
  {
    v20 = sub_29E6DB568((v31 > 1), v32 + 1, 1, v20);
  }

  v33 = *(v5 + 8);
  v33(v29, v4);
  v46 = v4;
  v47 = MEMORY[0x29EDC3C28];
  v34 = sub_29E5FEBF4(&v45);
  v30(v34, v8, v4);
  v20[2] = v32 + 1;
  sub_29E5FAEE4(&v45, &v20[5 * v32 + 4]);
  v33(v8, v4);
  return v20;
}

id sub_29E6C0C78(uint64_t a1)
{
  v2 = sub_29E74FEB8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x29EDCA190];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v7 = result;
    v8 = [result hksp_supportsSleep];

    if (v8 && (sub_29E74FE58(), sub_29E601938(v41, v42), v9 = sub_29E74FDD8(), v10 = objc_allocWithZone(MEMORY[0x29EDC68C8]), v11 = sub_29E754198(), v12 = [v10 initWithIdentifier:v11 healthStore:v9 options:2], v11, v9, sub_29E5FECBC(v41), v12))
    {
      sub_29E6C1758(0, &qword_2A1A7D3F0, &qword_2A1A7D6B8, MEMORY[0x29EDC38F8], 1);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_29E762F40;
      v14 = *(v3 + 16);
      v14(v5, a1, v2);
      v15 = type metadata accessor for SleepNotificationSettingsGeneratorPipeline(0);
      swift_allocObject();
      v39 = v12;
      v16 = v12;
      v17 = sub_29E661E74(v5, v16);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_29E6C17B8(qword_2A1A7CA90, type metadata accessor for SleepNotificationSettingsGeneratorPipeline, &unk_29E7672BC);
      *(v13 + 32) = v17;
      v14(v5, a1, v2);
      v18 = type metadata accessor for SleepApneaNotificationSettingsGeneratorPipeline(0);
      swift_allocObject();
      v19 = v16;
      v20 = sub_29E683CDC(v5, v19);
      *(v13 + 96) = v18;
      *(v13 + 104) = sub_29E6C17B8(qword_2A1A7C880, type metadata accessor for SleepApneaNotificationSettingsGeneratorPipeline, &unk_29E7681D0);
      *(v13 + 72) = v20;

      v21 = v13;
    }

    else
    {
      v39 = 0;
      v21 = MEMORY[0x29EDCA190];
    }

    sub_29E6DAB28(v21);
    sub_29E6C11CC(0);
    v22 = swift_allocObject();
    v40 = xmmword_29E762F30;
    *(v22 + 16) = xmmword_29E762F30;
    *(v22 + 56) = &type metadata for SleepStagesArticleDataProvider;
    *(v22 + 64) = sub_29E6C1290();
    *(v22 + 72) = sub_29E6C12E4();
    sub_29E6C1758(0, &qword_2A1A7D3F0, &qword_2A1A7D6B8, MEMORY[0x29EDC38F8], 1);
    inited = swift_initStackObject();
    *(inited + 16) = v40;
    v24 = *(v3 + 16);
    v24(v5, a1, v2);
    sub_29E6C06D0(0);
    v26 = v25;
    swift_allocObject();
    v27 = sub_29E751F58();
    *(inited + 56) = v26;
    *(inited + 64) = sub_29E6C17B8(&qword_2A1A7C138, sub_29E6C06D0, MEMORY[0x29EDC1580]);
    *(inited + 32) = v27;
    sub_29E6DAB28(inited);
    v28 = swift_initStackObject();
    *(v28 + 16) = v40;
    v24(v5, a1, v2);
    v29 = *MEMORY[0x29EDBA748];
    v30 = type metadata accessor for SleepApneaHealthChecklistFeedItemProvider();
    v31 = swift_allocObject();
    v42 = v30;
    v43 = sub_29E6C17B8(qword_2A1A7C7B8, type metadata accessor for SleepApneaHealthChecklistFeedItemProvider, &unk_29E767F0C);
    v41[0] = v31;
    v32 = sub_29E750048();
    v33 = MEMORY[0x29EDC3C28];
    *(v28 + 56) = v32;
    *(v28 + 64) = v33;
    sub_29E5FEBF4((v28 + 32));
    v34 = v29;
    sub_29E750038();
    sub_29E6DAB28(v28);
    v35 = a1;
    v36 = v39;
    v37 = sub_29E6C0780(v35, v39);
    sub_29E6DAB28(v37);

    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E6C11CC(uint64_t a1)
{
  if (!qword_2A1A7D3E8)
  {
    sub_29E6C1224();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D3E8);
    }
  }
}

unint64_t sub_29E6C1224()
{
  result = qword_2A1A7D698;
  if (!qword_2A1A7D698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7D698);
  }

  return result;
}

unint64_t sub_29E6C1290()
{
  result = qword_2A1A7D348;
  if (!qword_2A1A7D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D348);
  }

  return result;
}

unint64_t sub_29E6C12E4()
{
  result = qword_2A1A7D340;
  if (!qword_2A1A7D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D340);
  }

  return result;
}

uint64_t sub_29E6C1338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaNotificationTipGeneratorPipeline(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6C139C(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaNotificationTipGeneratorPipeline(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E6C13F8()
{
  result = qword_2A1A7D798;
  if (!qword_2A1A7D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D798);
  }

  return result;
}

unint64_t sub_29E6C144C()
{
  result = qword_2A1A7D790;
  if (!qword_2A1A7D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D790);
  }

  return result;
}

unint64_t sub_29E6C14A0()
{
  result = qword_2A1A7D6E8;
  if (!qword_2A1A7D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D6E8);
  }

  return result;
}

unint64_t sub_29E6C14F4()
{
  result = qword_2A1A7D6E0;
  if (!qword_2A1A7D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D6E0);
  }

  return result;
}

unint64_t sub_29E6C1548()
{
  result = qword_2A1A7CB38;
  if (!qword_2A1A7CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB38);
  }

  return result;
}

unint64_t sub_29E6C159C()
{
  result = qword_2A1A7CB30;
  if (!qword_2A1A7CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB30);
  }

  return result;
}

unint64_t sub_29E6C15F0()
{
  result = qword_2A1A7CCC8[0];
  if (!qword_2A1A7CCC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7CCC8);
  }

  return result;
}

unint64_t sub_29E6C1644()
{
  result = qword_2A1A7CCC0;
  if (!qword_2A1A7CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCC0);
  }

  return result;
}

unint64_t sub_29E6C1698()
{
  result = qword_2A1A7CCB8;
  if (!qword_2A1A7CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCB8);
  }

  return result;
}

unint64_t sub_29E6C16EC()
{
  result = qword_2A1A7CCB0;
  if (!qword_2A1A7CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCB0);
  }

  return result;
}

_OWORD *sub_29E6C1740(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_29E6C1758(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_29E60A664(255, a3, a4, a5 & 1);
    v6 = sub_29E754FE8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29E6C17B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6C1848(uint64_t a1)
{
  sub_29E6C5AD0(319, &qword_2A18576A8, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29E65AA20(319);
    if (v2 <= 0x3F)
    {
      sub_29E6C5BF0(319, &qword_2A1859150, sub_29E650A80, MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6C1954(uint64_t a1@<X8>)
{
  v3 = sub_29E750698();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_29E752FE8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29E6C5B20(0, &qword_2A1859158, sub_29E6C34BC, MEMORY[0x29EDBC450], MEMORY[0x29EDBC448]);
  sub_29E6C1BD8(v1, a1 + *(v7 + 44));
  v8 = sub_29E7533A8();
  sub_29E6C3CFC(0);
  v10 = a1 + *(v9 + 36);
  *v10 = v8;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1;
  v11 = sub_29E753C48();
  v13 = v12;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6C3DB8(0, &qword_2A1859210, sub_29E6C3CFC, sub_29E6C3E2C);
  v15 = a1 + *(v14 + 36);
  (*(v4 + 104))(v6, *MEMORY[0x29EDC1D60], v3);
  sub_29E750678();
  (*(v4 + 8))(v6, v3);
  v18[1] = sub_29E7538E8();
  sub_29E753668();

  sub_29E6C3E2C(0);
  v17 = (v15 + *(v16 + 36));
  *v17 = v11;
  v17[1] = v13;
}

uint64_t sub_29E6C1BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v79 = a2;
  v2 = type metadata accessor for SleepScoreCard(0);
  v70 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v71 = v3;
  v74 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3960(0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v76 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v75 = &v67 - v7;
  sub_29E65AA20(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CardHeader(0);
  MEMORY[0x2A1C7C4A8](v67);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3DB8(0, &qword_2A1859178, type metadata accessor for CardHeader, sub_29E6C35A8);
  v17 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v67 - v18;
  sub_29E6C34F8(0, v20);
  v68 = v21;
  v22 = MEMORY[0x2A1C7C4A8](v21);
  v72 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v26 = &v67 - v25;
  MEMORY[0x2A1C7C4A8](v24);
  v28 = &v67 - v27;
  sub_29E7544C8();
  v69 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v73;
  sub_29E6C5E1C(v73 + *(v2 + 20), v10, sub_29E65AA20);
  v30 = type metadata accessor for SleepScoreRoomModel(0);
  if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
  {
    sub_29E6C54C4(v10, sub_29E65AA20);
    v31 = sub_29E74F2D8();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
  }

  else
  {
    sub_29E6C5E1C(&v10[*(v30 + 20)], v13, sub_29E631834);
    sub_29E6C54C4(v10, type metadata accessor for SleepScoreRoomModel);
  }

  KeyPath = swift_getKeyPath();
  sub_29E6C5C54(v13, v15, sub_29E631834);
  v33 = &v15[*(v67 + 20)];
  *v33 = KeyPath;
  v33[8] = 0;
  v34 = sub_29E753C18();
  v36 = v35;
  v37 = &v19[*(v17 + 36)];
  sub_29E6C2430(v29, v37);
  sub_29E6C35A8(0);
  v39 = (v37 + *(v38 + 36));
  *v39 = v34;
  v39[1] = v36;
  sub_29E6C5C54(v15, v19, type metadata accessor for CardHeader);
  LOBYTE(v34) = sub_29E7533C8();
  sub_29E7529C8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_29E6C5524(v19, v26, &qword_2A1859178, type metadata accessor for CardHeader, sub_29E6C35A8, sub_29E6C3DB8);
  v48 = &v26[*(v68 + 36)];
  *v48 = v34;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_29E5F61BC(v26, v28, v49);
  v80 = sub_29E74EFC8();
  swift_getKeyPath();
  v50 = v74;
  sub_29E6C5E1C(v29, v74, type metadata accessor for SleepScoreCard);
  v51 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v52 = swift_allocObject();
  sub_29E6C5C54(v50, v52 + v51, type metadata accessor for SleepScoreCard);
  sub_29E64E7F4(0);
  sub_29E6C3A64(0);
  sub_29E6C37F4(&qword_2A1857C20, sub_29E64E7F4, MEMORY[0x29EDC9A80]);
  sub_29E6C37F4(&qword_2A1857C28, MEMORY[0x29EDC6910], MEMORY[0x29EDC6918]);
  sub_29E6C37F4(&qword_2A1859228, sub_29E6C3A64, MEMORY[0x29EDBCC30]);
  v53 = v75;
  sub_29E753B38();
  v54 = v72;
  sub_29E5F6414(v28, v72, v55);
  v57 = v76;
  v56 = v77;
  v58 = *(v77 + 16);
  v59 = v78;
  v60.n128_f64[0] = v58(v76, v53, v78);
  v61 = v79;
  sub_29E5F6414(v54, v79, v60);
  sub_29E6C3AFC(0, &qword_2A1859168, sub_29E6C34F8, sub_29E6C3960);
  v58((v61 + *(v62 + 48)), v57, v59);
  v63 = *(v56 + 8);
  v64.n128_f64[0] = v63(v53, v59);
  sub_29E5F6478(v28, v64);
  v65.n128_f64[0] = v63(v57, v59);
  sub_29E5F6478(v54, v65);
}

uint64_t sub_29E6C2430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E752EB8();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C370C(0);
  v7 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C363C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v35 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5BF0(0, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = v31 - v15;
  sub_29E7544C8();
  v36 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = (a1 + *(type metadata accessor for SleepScoreCard(0) + 24));
  v18 = *v17;
  if (!*v17)
  {
    (*(v12 + 56))(v16, 1, 1, v11);
LABEL_12:
    sub_29E6C5524(v16, a2, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68], sub_29E6C5BF0);
  }

  v19 = v17[1];
  v38 = *v17;
  v39 = v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  v31[1] = v7;
  if (v21)
  {
    sub_29E5F51BC(v18, v19);

    if (v20)
    {
LABEL_6:
      v22 = MEMORY[0x29EDBC4E8];
      goto LABEL_10;
    }
  }

  else
  {
    sub_29E5F51BC(v18, v19);
    sub_29E5F51BC(v18, v19);
    sub_29E6C5598(v20, 0);
    sub_29E7546B8();
    v23 = v11;
    v24 = a2;
    v25 = sub_29E753358();
    sub_29E751F78();

    a2 = v24;
    v11 = v23;
    v26 = v32;
    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v20, 0);
    (*(v33 + 8))(v26, v34);
    if (v37)
    {
      goto LABEL_6;
    }
  }

  v22 = MEMORY[0x29EDBC510];
LABEL_10:
  v27 = *v22;
  v28 = sub_29E752BF8();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  sub_29E6C37F4(&qword_2A1859230, MEMORY[0x29EDBC518], MEMORY[0x29EDBC528]);
  result = sub_29E754108();
  if (result)
  {
    sub_29E6C37A0();
    sub_29E6C37F4(&qword_2A18591B0, sub_29E6C370C, MEMORY[0x29EDC9E78]);
    v30 = v35;
    sub_29E7537A8();
    sub_29E6459B8(v18, v19);
    sub_29E6C54C4(v9, sub_29E6C370C);
    sub_29E6459B8(v18, v19);
    (*(v12 + 32))(v16, v30, v11);
    (*(v12 + 56))(v16, 0, 1, v11);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6C296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v90 = a2;
  v4 = sub_29E7532D8();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5BF0(0, &unk_2A1856658, MEMORY[0x29EDC6AA8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v82 = &v73 - v7;
  sub_29E65AA20(0);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v73 - v12;
  sub_29E631834(0);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v74 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v93 = &v73 - v17;
  v92 = sub_29E74EFE8();
  v18 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v91 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SleepScoreCardComponentViewModel(0);
  MEMORY[0x2A1C7C4A8](v75);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CardComponentSection(0);
  MEMORY[0x2A1C7C4A8](v76);
  v77 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3C24(0);
  v78 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3BA0(0);
  v85 = v26;
  v84 = *(v26 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v26);
  v83 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27);
  v81 = &v73 - v29;
  sub_29E6C3B78(0);
  v31 = v30;
  v32 = MEMORY[0x2A1C7C4A8](v30);
  v80 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v35 = &v73 - v34;
  sub_29E7544C8();
  v79 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E753AF8();
  v36 = sub_29E7533F8();
  sub_29E7529C8();
  v37 = &v35[*(v31 + 36)];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v42 = *(v18 + 16);
  v73 = a1;
  v42(v91, a1, v92);
  v43 = *(type metadata accessor for SleepScoreCard(0) + 20);
  sub_29E6C5E1C(v90 + v43, v13, sub_29E65AA20);
  v44 = type metadata accessor for SleepScoreRoomModel(0);
  v45 = *(*(v44 - 8) + 48);
  if (v45(v13, 1, v44) == 1)
  {
    sub_29E6C54C4(v13, sub_29E65AA20);
    v46 = sub_29E74F2D8();
    (*(*(v46 - 8) + 56))(v93, 1, 1, v46);
  }

  else
  {
    sub_29E6C5E1C(&v13[*(v44 + 20)], v93, sub_29E631834);
    sub_29E6C54C4(v13, type metadata accessor for SleepScoreRoomModel);
  }

  sub_29E6C5E1C(v90 + v43, v11, sub_29E65AA20);
  if (v45(v11, 1, v44) == 1)
  {
    sub_29E6C54C4(v11, sub_29E65AA20);
    v47 = 1;
    v48 = v82;
  }

  else
  {
    v49 = &v11[*(v44 + 20)];
    v50 = v74;
    sub_29E6C5E1C(v49, v74, sub_29E631834);
    sub_29E6C54C4(v11, type metadata accessor for SleepScoreRoomModel);
    v51 = sub_29E74F2D8();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v50, 1, v51);
    v48 = v82;
    if (v53 == 1)
    {
      sub_29E6C54C4(v50, sub_29E631834);
      v47 = 1;
    }

    else
    {
      sub_29E74F268();
      (*(v52 + 8))(v50, v51);
      v47 = 0;
    }
  }

  v54 = sub_29E74F688();
  (*(*(v54 - 8) + 56))(v48, v47, 1, v54);
  (*(v18 + 32))(v21, v91, v92);
  v55 = v75;
  sub_29E6C5C54(v93, &v21[*(v75 + 20)], sub_29E631834);
  sub_29E6C5524(v48, &v21[*(v55 + 24)], &unk_2A1856658, MEMORY[0x29EDC6AA8], MEMORY[0x29EDC9C68], sub_29E6C5BF0);
  v56 = v77;
  sub_29E6C5C54(v21, v77, type metadata accessor for SleepScoreCardComponentViewModel);
  v57 = v56 + *(v76 + 20);
  *v57 = swift_getKeyPath();
  *(v57 + 8) = 0;
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6C5C54(v56, v25, type metadata accessor for CardComponentSection);
  v58 = &v25[*(v78 + 36)];
  v59 = v99;
  *(v58 + 4) = v98;
  *(v58 + 5) = v59;
  *(v58 + 6) = v100;
  v60 = v95;
  *v58 = v94;
  *(v58 + 1) = v60;
  v61 = v97;
  *(v58 + 2) = v96;
  *(v58 + 3) = v61;
  v62 = v86;
  sub_29E7532C8();
  sub_29E6C3C4C();
  v63 = v81;
  sub_29E753808();
  (*(v87 + 8))(v62, v88);
  sub_29E6C54C4(v25, sub_29E6C3C24);
  v64 = v80;
  sub_29E6C5E1C(v35, v80, sub_29E6C3B78);
  v65 = v84;
  v66 = *(v84 + 16);
  v67 = v83;
  v68 = v85;
  v66(v83, v63, v85);
  v69 = v89;
  sub_29E6C5E1C(v64, v89, sub_29E6C3B78);
  sub_29E6C3AFC(0, &qword_2A18591D0, sub_29E6C3B78, sub_29E6C3BA0);
  v66((v69 + *(v70 + 48)), v67, v68);
  v71 = *(v65 + 8);
  v71(v63, v68);
  sub_29E6C54C4(v35, sub_29E6C3B78);
  v71(v67, v68);
  sub_29E6C54C4(v64, sub_29E6C3B78);
}

void sub_29E6C34F8(uint64_t a1, __n128 a2)
{
  if (!qword_2A1859170)
  {
    sub_29E6C3DB8(255, &qword_2A1859178, type metadata accessor for CardHeader, sub_29E6C35A8);
    v2 = sub_29E752C28();
    if (!v3)
    {
      atomic_store(v2, &qword_2A1859170);
    }
  }
}

void sub_29E6C35A8(uint64_t a1)
{
  if (!qword_2A1859180)
  {
    sub_29E6C5BF0(255, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68]);
    sub_29E6C383C();
    v1 = sub_29E752CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859180);
    }
  }
}

void sub_29E6C363C(uint64_t a1)
{
  if (!qword_2A1859190)
  {
    sub_29E6C370C(255);
    sub_29E6C37A0();
    sub_29E6C37F4(&qword_2A18591B0, sub_29E6C370C, MEMORY[0x29EDC9E78]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859190);
    }
  }
}

void sub_29E6C370C(uint64_t a1)
{
  if (!qword_2A1859198)
  {
    sub_29E752BF8();
    sub_29E6C37F4(&qword_2A18591A0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC520]);
    v1 = sub_29E754ED8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859198);
    }
  }
}

unint64_t sub_29E6C37A0()
{
  result = qword_2A18591A8;
  if (!qword_2A18591A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18591A8);
  }

  return result;
}

uint64_t sub_29E6C37F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E6C383C()
{
  result = qword_2A18591B8;
  if (!qword_2A18591B8)
  {
    sub_29E6C5BF0(255, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68]);
    sub_29E6C370C(255);
    sub_29E6C37A0();
    sub_29E6C37F4(&qword_2A18591B0, sub_29E6C370C, MEMORY[0x29EDC9E78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18591B8);
  }

  return result;
}

void sub_29E6C3960(uint64_t a1)
{
  if (!qword_2A18591C0)
  {
    sub_29E64E7F4(255);
    sub_29E74EFE8();
    sub_29E6C3A64(255);
    sub_29E6C37F4(&qword_2A1857C20, sub_29E64E7F4, MEMORY[0x29EDC9A80]);
    sub_29E6C37F4(&qword_2A1857C28, MEMORY[0x29EDC6910], MEMORY[0x29EDC6918]);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18591C0);
    }
  }
}

void sub_29E6C3AA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6C3AFC(255, a3, a4, a5);
    v6 = sub_29E753C78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6C3AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E6C3BA0(uint64_t a1)
{
  if (!qword_2A18591D8)
  {
    sub_29E6C3C24(255);
    sub_29E6C3C4C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18591D8);
    }
  }
}

unint64_t sub_29E6C3C4C()
{
  result = qword_2A18591E8;
  if (!qword_2A18591E8)
  {
    sub_29E6C3C24(255);
    sub_29E6C37F4(&qword_2A18591F0, type metadata accessor for CardComponentSection, &unk_29E765AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18591E8);
  }

  return result;
}

void sub_29E6C3D24(uint64_t a1)
{
  if (!qword_2A1859200)
  {
    sub_29E6C34BC(255);
    sub_29E6C37F4(&qword_2A1859208, sub_29E6C34BC, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859200);
    }
  }
}

void sub_29E6C3DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E752C28();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6C3E2C(uint64_t a1)
{
  if (!qword_2A1859218)
  {
    sub_29E6C3EC8();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29E753108();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859218);
    }
  }
}

void sub_29E6C3EC8()
{
  if (!qword_2A1859220)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859220);
    }
  }
}

__n128 sub_29E6C3F48@<Q0>(uint64_t a1@<X8>)
{
  sub_29E6C582C(0);
  v4 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_29E752EF8();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_29E6C5B20(0, &qword_2A18592C8, sub_29E6C58E8, MEMORY[0x29EDBC418], MEMORY[0x29EDBC410]);
  sub_29E6C4100(v1, &v6[*(v7 + 44)]);
  v8 = sub_29E7533F8();
  sub_29E6C5128();
  sub_29E7529C8();
  v9 = &v6[*(v4 + 44)];
  *v9 = v8;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  *(v9 + 4) = v13;
  v9[40] = 0;
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6C5C54(v6, a1, sub_29E6C582C);
  sub_29E6C5B8C(0, &qword_2A18592D0, sub_29E6C582C, MEMORY[0x29EDBC5F8]);
  v15 = a1 + *(v14 + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_29E6C4100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v98 = a2;
  v96 = sub_29E752FB8();
  v95 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96);
  v93 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v91 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E753508();
  v90 = *(v92 - 8);
  MEMORY[0x2A1C7C4A8](v92);
  v88 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5A10(0);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v97 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v94 = &v79 - v9;
  v86 = sub_29E74F718();
  v85 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_29E74F5F8();
  v11 = *(v80 - 8);
  MEMORY[0x2A1C7C4A8](v80);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_29E74F618();
  v17 = *(v82 - 8);
  MEMORY[0x2A1C7C4A8](v82);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3DB8(0, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
  v79 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v79 - v21;
  sub_29E6C594C(0);
  v81 = v23;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5924(0);
  v83 = v26;
  v27 = MEMORY[0x2A1C7C4A8](v26);
  v89 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v79 - v30;
  MEMORY[0x2A1C7C4A8](v29);
  v99 = &v79 - v32;
  sub_29E7544C8();
  v87 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6C5E1C(v100, v16, sub_29E631834);
  (*(v11 + 104))(v13, *MEMORY[0x29EDC6A98], v80);
  sub_29E74F608();
  KeyPath = swift_getKeyPath();
  if (sub_29E6C52B4())
  {
    v34 = v84;
    sub_29E74F708();
  }

  else
  {
    v34 = v84;
    sub_29E74F6F8();
  }

  v35 = &v22[*(v79 + 36)];
  sub_29E6C59DC(0);
  (*(v85 + 32))(v35 + *(v36 + 28), v34, v86);
  *v35 = KeyPath;
  (*(v17 + 32))(v22, v19, v82);
  sub_29E6C4CE4();
  sub_29E753C48();
  sub_29E752AB8();
  sub_29E6C5524(v22, v25, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC, sub_29E6C3DB8);
  v37 = &v25[*(v81 + 36)];
  v38 = v111;
  *v37 = v110;
  *(v37 + 1) = v38;
  *(v37 + 2) = v112;
  v39 = sub_29E7533E8();
  sub_29E7529C8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_29E6C5C54(v25, v31, sub_29E6C594C);
  v48 = &v31[*(v83 + 36)];
  *v48 = v39;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_29E6C5C54(v31, v99, sub_29E6C5924);
  *&v108[0] = sub_29E6C4E70();
  *(&v108[0] + 1) = v49;
  sub_29E60DE10();
  v50 = sub_29E753608();
  v52 = v51;
  v54 = v53;
  v100 = v55;
  v56 = v90;
  v57 = v88;
  v58 = v92;
  (*(v90 + 104))(v88, *MEMORY[0x29EDBC9B8], v92);
  v59 = *MEMORY[0x29EDBC988];
  v60 = sub_29E753448();
  v61 = *(v60 - 8);
  v62 = v91;
  (*(v61 + 104))(v91, v59, v60);
  (*(v61 + 56))(v62, 0, 1, v60);
  sub_29E753458();
  sub_29E753498();
  sub_29E6C54C4(v62, sub_29E637500);
  (*(v56 + 8))(v57, v58);
  v63 = sub_29E7535D8();
  v65 = v64;
  LOBYTE(v58) = v66;
  v68 = v67;

  sub_29E60DB44(v50, v52, v54 & 1);

  v69 = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v107 = v58 & 1;
  v106 = 0;
  *&v101 = v63;
  *(&v101 + 1) = v65;
  LOBYTE(v102) = v58 & 1;
  *(&v102 + 1) = v68;
  *&v103 = v69;
  *(&v103 + 1) = 1;
  LOBYTE(v104) = 0;
  *(&v104 + 1) = v70;
  v105 = 0x3FD3333333333333;
  v71 = v93;
  sub_29E752FA8();
  sub_29E6C5A44(0);
  sub_29E6C5D20();
  v72 = v94;
  sub_29E753828();
  (*(v95 + 8))(v71, v96);
  v108[2] = v103;
  v108[3] = v104;
  v109 = v105;
  v108[0] = v101;
  v108[1] = v102;
  sub_29E6C54C4(v108, sub_29E6C5A44);
  v73 = v99;
  v74 = v89;
  sub_29E6C5E1C(v99, v89, sub_29E6C5924);
  v75 = v97;
  sub_29E6C5E1C(v72, v97, sub_29E6C5A10);
  v76 = v98;
  sub_29E6C5E1C(v74, v98, sub_29E6C5924);
  sub_29E6C3AFC(0, &qword_2A1859280, sub_29E6C5924, sub_29E6C5A10);
  sub_29E6C5E1C(v75, v76 + *(v77 + 48), sub_29E6C5A10);
  sub_29E6C54C4(v72, sub_29E6C5A10);
  sub_29E6C54C4(v73, sub_29E6C5924);
  sub_29E6C54C4(v75, sub_29E6C5A10);
  sub_29E6C54C4(v74, sub_29E6C5924);
}

uint64_t sub_29E6C4CE4()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CardHeader(0);
  v6 = v0 + *(result + 20);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v7, 0);
    result = (*(v2 + 8))(v4, v1);
    v7 = v10;
  }

  if ((v7 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v10 = v7;
    result = sub_29E755048();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6C4E70()
{
  v1 = v0;
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74EF88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5E1C(v1, v12, sub_29E631834);
  v13 = sub_29E74F2D8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E6C54C4(v12, sub_29E631834);
    sub_29E754118();
    v15 = sub_29E65B0B4(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_29E74F2C8();
    (*(v14 + 8))(v12, v13);
    v15 = sub_29E74EF58();
    (*(v7 + 8))(v9, v6);
  }

  return v15;
}

uint64_t sub_29E6C5128()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CardHeader(0);
  v6 = v0 + *(result + 20);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v7, 0);
    result = (*(v2 + 8))(v4, v1);
    v7 = v10;
  }

  if ((v7 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v10 = v7;
    result = sub_29E755048();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6C52B4()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for CardHeader(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v7 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v10;
  }

  if ((v6 - 1) < 6)
  {
    return (0x38u >> (v6 - 1)) & 1;
  }

  type metadata accessor for HKWidthDesignation(0);
  v10 = v6;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E6C5444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepScoreCard(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E6C296C(a1, v6, a2);
}

uint64_t sub_29E6C54C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6C5524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E6C5598(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_29E6C55CC(uint64_t a1)
{
  sub_29E631834(319);
  if (v1 <= 0x3F)
  {
    sub_29E6C5BF0(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E6C5680()
{
  result = qword_2A1859248;
  if (!qword_2A1859248)
  {
    sub_29E6C3DB8(255, &qword_2A1859210, sub_29E6C3CFC, sub_29E6C3E2C);
    sub_29E6C5760();
    sub_29E6C37F4(&qword_2A1859260, sub_29E6C3E2C, MEMORY[0x29EDBC7E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859248);
  }

  return result;
}

unint64_t sub_29E6C5760()
{
  result = qword_2A1859250;
  if (!qword_2A1859250)
  {
    sub_29E6C3CFC(255);
    sub_29E6C37F4(&qword_2A1859258, sub_29E6C3D24, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859250);
  }

  return result;
}

void sub_29E6C5854(uint64_t a1)
{
  if (!qword_2A1859270)
  {
    sub_29E6C58E8(255);
    sub_29E6C37F4(&qword_2A18592C0, sub_29E6C58E8, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859270);
    }
  }
}

void sub_29E6C594C(uint64_t a1)
{
  if (!qword_2A1859290)
  {
    sub_29E6C3DB8(255, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859290);
    }
  }
}

void sub_29E6C5A44(uint64_t a1)
{
  if (!qword_2A18592B0)
  {
    sub_29E637234(255);
    sub_29E6C5AD0(255, &qword_2A18592B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18592B0);
    }
  }
}

void sub_29E6C5AD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E6C5B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_29E752B08();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6C5B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6C5BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6C5C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6C5CBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_29E752E88();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_29E6C5D20()
{
  result = qword_2A18592D8;
  if (!qword_2A18592D8)
  {
    sub_29E6C5A44(255);
    sub_29E6503A4();
    sub_29E6C5DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592D8);
  }

  return result;
}

unint64_t sub_29E6C5DA0()
{
  result = qword_2A18592E0;
  if (!qword_2A18592E0)
  {
    sub_29E6C5AD0(255, &qword_2A18592B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592E0);
  }

  return result;
}

uint64_t sub_29E6C5E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E6C5E84()
{
  result = qword_2A18592E8;
  if (!qword_2A18592E8)
  {
    sub_29E6C5B8C(255, &qword_2A18592D0, sub_29E6C582C, MEMORY[0x29EDBC5F8]);
    sub_29E6C5F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592E8);
  }

  return result;
}

unint64_t sub_29E6C5F28()
{
  result = qword_2A18592F0;
  if (!qword_2A18592F0)
  {
    sub_29E6C582C(255);
    sub_29E6C37F4(&qword_2A18592F8, sub_29E6C5854, MEMORY[0x29EDBCB30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592F0);
  }

  return result;
}

uint64_t sub_29E6C5FD8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TestOptions(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E6BEDE4(a2, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_29E6BEE48(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v10 = a1;
  sub_29E69D984(sub_29E6C6FD0, v9);
}

uint64_t sub_29E6C610C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E6C7294(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_29E7544F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29E7544C8();

  v9 = sub_29E7544B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x29EDCA390];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = a3;
  sub_29E6E4804(0, 0, v7, &unk_29E769EB0, v10);
}

uint64_t sub_29E6C6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_29E7544C8();
  v5[4] = sub_29E7544B8();
  v7 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6C62F0, v7, v6);
}

uint64_t sub_29E6C62F0()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E6C635C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_29E754078();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_29E6C63EC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v59 = a4;
  v58 = sub_29E753CF8();
  v67 = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E753D18();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TestOptions(0);
  v54 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v53 = v11;
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E753D38();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v52 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v56 = &v50 - v15;
  v16 = sub_29E751FA8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v50 - v21;
  v51 = sub_29E751FE8();
  v23 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74FA18();
  v57 = a3;
  v26 = sub_29E754198();
  v62 = a2;
  [a2 startedTest_];

  byte_2A1869420 = 1;
  sub_29E751FB8();
  sub_29E751F98();
  v27 = sub_29E751FD8();
  v28 = sub_29E754958();
  if (sub_29E754BC8())
  {
    v29 = swift_slowAlloc();
    v50 = v16;
    v30 = a1;
    v31 = v29;
    *v29 = 0;
    v32 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v27, v28, v32, "SaveSingleDayOverride", "", v31, 2u);
    v33 = v31;
    a1 = v30;
    v16 = v50;
    MEMORY[0x29ED98410](v33, -1, -1);
  }

  (*(v17 + 16))(v20, v22, v16);
  sub_29E752028();
  swift_allocObject();
  v34 = sub_29E752018();
  (*(v17 + 8))(v22, v16);
  (*(v23 + 8))(v25, v51);
  qword_2A1869428 = v34;

  [a1 saveButtonPressed_];
  sub_29E602DD4();
  v35 = sub_29E754908();
  v36 = v52;
  sub_29E753D28();
  v37 = v56;
  sub_29E753D98();
  v38 = v61;
  v60 = *(v60 + 8);
  (v60)(v36, v61);
  v39 = v55;
  sub_29E6BEDE4(v57, v55);
  v40 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v41 = (v53 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v62;
  *(v42 + 16) = v62;
  sub_29E6BEE48(v39, v42 + v40);
  *(v42 + v41) = v59;
  aBlock[4] = sub_29E6C71AC;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A25017B0;
  v44 = _Block_copy(aBlock);
  v45 = v43;
  v46 = v63;
  sub_29E753D08();
  v68 = MEMORY[0x29EDCA190];
  sub_29E6C723C();
  sub_29E6C7294(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E609A80();
  v47 = v66;
  v48 = v58;
  sub_29E754C58();
  MEMORY[0x29ED971D0](v37, v46, v47, v44);
  _Block_release(v44);

  (*(v67 + 8))(v47, v48);
  (*(v64 + 8))(v46, v65);
  (v60)(v37, v38);
}

uint64_t sub_29E6C6B14(void *a1, void *a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_29E754198();
  sub_29E68B464(MEMORY[0x29EDCA190]);
  v4 = sub_29E754068();

  [a1 finishedTest:v3 extraResults:v4];

  byte_2A1869420 = 0;
}

void sub_29E6C6C24(double *a1, uint64_t (*a2)(uint64_t a1), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + *(type metadata accessor for TestOptions(0) + 32)) == 1 && (v8 = objc_opt_self(), [v8 isRecapAvailable]))
  {
    v9 = [v4 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = objc_allocWithZone(MEMORY[0x29EDC64A8]);

      v12 = sub_29E754198();
      v24 = a2;
      v25 = a3;
      v20 = MEMORY[0x29EDCA5F8];
      v21 = 1107296256;
      v22 = sub_29E6A1514;
      v23 = &unk_2A2501710;
      v13 = _Block_copy(&v20);

      v14 = [v11 initWithTestName:v12 scrollView:v10 completionHandler:v13];
      _Block_release(v13);

      [v8 runTestWithParameters_];
LABEL_11:

      return;
    }
  }

  else
  {
    v15 = [v4 collectionView];
    if (v15)
    {
      v16 = v15;
      v14 = [objc_allocWithZone(MEMORY[0x29EDC7C48]) init];
      v17 = sub_29E754198();
      [v14 setTestName_];

      if ((a1[3] & 1) == 0)
      {
        [v14 setIterations_];
      }

      if ((a1[5] & 1) == 0)
      {
        [v14 setDelta_];
      }

      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = a3;
      v24 = sub_29E6C6EF0;
      v25 = v18;
      v20 = MEMORY[0x29EDCA5F8];
      v21 = 1107296256;
      v22 = sub_29E6C635C;
      v23 = &unk_2A25016E8;
      v19 = _Block_copy(&v20);

      [v16 _performScrollTestWithParameters_completionBlock_];
      _Block_release(v19);

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E6C6EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6C6F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E605728;

  return sub_29E6C6258(a1, v4, v5, v7, v6);
}

uint64_t sub_29E6C6FD0(void *a1)
{
  v3 = *(type metadata accessor for TestOptions(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E6C63EC(a1, v5, (v1 + v4), v6);
}

uint64_t sub_29E6C7070()
{
  v1 = (type metadata accessor for TestOptions(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_29E74EAF8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29E6C71AC()
{
  v1 = *(type metadata accessor for TestOptions(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_29E6C6B14(v2, v3);
}

unint64_t sub_29E6C723C()
{
  result = qword_2A18569F8;
  if (!qword_2A18569F8)
  {
    sub_29E753CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18569F8);
  }

  return result;
}

void sub_29E6C7294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id sub_29E6C7308(char a1)
{
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_presentedFromOnboarding] = a1;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v6, v3);
  v8 = sub_29E754198();

  v9 = type metadata accessor for SleepApneaOnboardingEducationViewController();
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithTitle_detailText_icon_contentLayout_, v8, 0, 0, 2);

  return v10;
}

void sub_29E6C74B8()
{
  v1 = sub_29E74F698();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v36 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E74FA88();
  v3 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F8B8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SleepApneaOnboardingEducationViewController();
  v44 = v0;
  v45.receiver = v0;
  v45.super_class = v10;
  objc_msgSendSuper2(&v45, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v43 = qword_2A1A7FA18;
  sub_29E74F8A8();
  sub_29E74F7C8();
  v42 = *(v7 + 8);
  v42(v9, v6);
  v11 = sub_29E754198();

  v12 = sub_29E754198();
  v13 = *MEMORY[0x29EDC6B98];
  v39 = v6;
  v14 = v3;
  v15 = *(v3 + 104);
  v34[1] = v3 + 104;
  v41 = v15;
  v16 = v35;
  v15(v5, v13, v35);
  v17 = sub_29E74FA78();
  v40 = *(v14 + 8);
  v40(v5, v16);
  [v44 addBulletedListItemWithTitle:v11 description:v12 image:v17];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v42(v9, v6);
  v18 = sub_29E754198();

  v19 = sub_29E754198();
  v41(v5, *MEMORY[0x29EDC6BA8], v16);
  v20 = sub_29E74FA78();
  v40(v5, v16);
  [v44 addBulletedListItemWithTitle:v18 description:v19 image:v20];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v34[0] = v7 + 8;
  v21 = v42;
  v42(v9, v39);
  v22 = sub_29E754198();

  v23 = sub_29E754198();
  v41(v5, *MEMORY[0x29EDC6BA0], v16);
  v24 = sub_29E74FA78();
  v40(v5, v16);
  v25 = v44;
  [v44 addBulletedListItemWithTitle:v22 description:v23 image:v24];

  if (*(v25 + OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_presentedFromOnboarding))
  {
    sub_29E74F8A8();
    sub_29E74F7C8();
    v21(v9, v39);
    v26 = sub_29E754198();

    v27 = *MEMORY[0x29EDC6AC0];
    v29 = v36;
    v28 = v37;
    v30 = v38;
    (*(v37 + 104))(v36, v27, v38);
    sub_29E754238();
    (*(v28 + 8))(v29, v30);
    v31 = sub_29E754198();
  }

  else
  {
    v27 = *MEMORY[0x29EDC6AC0];
    v28 = v37;
    v30 = v38;
    v29 = v36;
  }

  v32 = [v25 headerView];
  (*(v28 + 104))(v29, v27, v30);
  sub_29E754238();
  (*(v28 + 8))(v29, v30);
  v33 = sub_29E754198();

  [v32 setTitleAccessibilityIdentifier_];
}

uint64_t sub_29E6C7C08()
{
  sub_29E6979D8(0);
  result = MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate];
  if (v5)
  {
    swift_unknownObjectRetain();
    sub_29E7544D8();
    v6 = sub_29E7544F8();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v7 = v0;
    v8 = sub_29E7544B8();
    v9 = swift_allocObject();
    v10 = MEMORY[0x29EDCA390];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v7;
    v9[6] = &off_2A25017D8;
    sub_29E6E4804(0, 0, v4, &unk_29E767EC0, v9);

    return sub_29E751758();
  }

  return result;
}

void sub_29E6C7D84(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_29E6C804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_29E6C80E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepApneaOnboardingEducationViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E6C8150(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate);
  *v3 = a1;
  v3[1] = a2;
  return sub_29E751758();
}

void sub_29E6C816C(uint64_t a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_29E6C8238();
  }

  else
  {
  }
}

id sub_29E6C8238()
{
  sub_29E601938((v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider), *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider + 24));
  sub_29E74F4D8();
  sub_29E7527B8();

  if (*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher))
  {

    sub_29E6C8728();
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v2 = result;
      [result hksp_supportsSleep];

      sub_29E7527C8();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_29E6C833C()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability];
  if (v1)
  {
    [v1 unregisterObserver_];
  }

  v2 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore];
  if (v2)
  {
    [v2 removeObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for SleepRoomDataProvider(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for SleepRoomDataProvider(uint64_t a1)
{
  result = qword_2A18593B8;
  if (!qword_2A18593B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6C8728()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E751FA8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E751FE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability);
  if (!v11)
  {
    return 0;
  }

  v22 = 0;
  v21 = v8;
  swift_unknownObjectRetain();
  sub_29E751FC8();
  sub_29E751F98();
  v12 = swift_slowAlloc();
  v20 = v2;
  v13 = v12;
  *v12 = 0;
  v14 = sub_29E751FD8();
  v15 = sub_29E754958();
  v16 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v14, v15, v16, "SleepCoachingQuery", "", v13, 2u);
  sub_29E6C89A0(&v22, v11, ObjectType);
  v17 = sub_29E754948();
  v18 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v14, v17, v18, "SleepCoachingQuery", "", v13, 2u);

  MEMORY[0x29ED98410](v13, -1, -1);
  sub_29E751758();
  (*(v3 + 8))(v5, v20);
  (*(v7 + 8))(v10, v21);
  return v22;
}

uint64_t sub_29E6C89A0(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v34[1] = *MEMORY[0x29EDCA608];
  v5 = sub_29E752098();
  v33 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34[0] = 0;
  v8 = [a2 isCurrentOnboardingVersionCompletedWithError_];
  if (v8)
  {
    v9 = v8;
    v10 = v34[0];
    v11 = [v9 BOOLValue];

    *a1 = v11;
  }

  else
  {
    v12 = v34[0];
    v13 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752048();
    v14 = v13;
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v16;
      v18 = v17;
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v18 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, v34);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v30 = &v30;
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v24 + 16))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = sub_29E7541F8();
      v27 = sub_29E6B9C90(v25, v26, v34);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_29E5ED000, v15, v31, "[%{public}s] Error reading onboarding version complete during init: %{public}s", v18, 0x16u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v18, -1, -1);
    }

    else
    {
    }

    (*(v33 + 8))(v7, v5);
  }
}

id sub_29E6C8D80()
{
  v1 = v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent + 8);
  v4 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent + 16);
  if (v2)
  {
    v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType);
    *v1 = v6;
    *(v1 + 8) = xmmword_29E769F00;
    v5 = v6;
  }

  sub_29E6CBFA8(v2, v3, v4);
  return v5;
}

__n128 sub_29E6C8E38@<Q0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepOnboardingComponent;
  swift_beginAccess();
  sub_29E6CBED4(v1 + v3, v7, &unk_2A18594B8, &qword_2A1859448, &_s24SleepOnboardingComponentVN, sub_29E6CBB58);
  if (*(&v7[0] + 1) == 1)
  {
    sub_29E6CBF48(v7, &unk_2A18594B8, &qword_2A1859448, &_s24SleepOnboardingComponentVN, sub_29E6CBB58);
    sub_29E6C8F9C(v1, a1);
    sub_29E6CBBC4(a1, v7, &qword_2A1859448, &_s24SleepOnboardingComponentVN);
    swift_beginAccess();
    sub_29E6CBE60(v7, v1 + v3, &unk_2A18594B8, &qword_2A1859448, &_s24SleepOnboardingComponentVN, sub_29E6CBB58);
    swift_endAccess();
  }

  else
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

double sub_29E6C8F9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E6CBED4(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_onboardingManager, &v6, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E60BCF8);
  if (v7)
  {
    sub_29E5FAEE4(&v6, v8);
    v4 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
    if (v4)
    {
      sub_29E602E20(v8, a2 + 16);
      sub_29E602E20(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider, a2 + 56);

      sub_29E5FECBC(v8);
      *a2 = 0x626E4F7065656C53;
      *(a2 + 8) = 0xEF676E696472616FLL;
      *(a2 + 96) = v4;
      return result;
    }

    sub_29E5FECBC(v8);
  }

  else
  {
    sub_29E6CBF48(&v6, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E60BCF8);
  }

  *(a2 + 96) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_29E6C90E4()
{
  v1 = (v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent);
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 8);
  v4 = v2;
  v6 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 16);
  v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 24);
  if (v3 == 1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore);
    if (v7)
    {
      v8 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
      if (v8)
      {
        v9 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_userDefaults);
        v10 = objc_allocWithZone(type metadata accessor for SleepFocusPromotionStore(0));
        v11 = v7;

        v7 = sub_29E70A79C(v11, v9);

        v12 = 0x800000029E757130;
        v13 = *v1;
        v15 = v1[2];
        v16 = v1[3];
        v17 = v1[1];
        v4 = 0xD000000000000013;
LABEL_8:
        *v1 = v4;
        v1[1] = v12;
        v1[2] = v7;
        v1[3] = v8;
        sub_29E6CBDA8(v4, v12, v7, v8);
        sub_29E6CBDF4(v13, v17, v15, v16);
        goto LABEL_9;
      }

      v4 = 0;
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v4 = 0;
      v12 = 0;
      v8 = 0;
    }

    v16 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 24);
    v17 = 1;
    v15 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 16);
    v13 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent);
    goto LABEL_8;
  }

LABEL_9:
  sub_29E6CBE50(v2, v3, v6, v5);
  return v4;
}

uint64_t sub_29E6C9264()
{
  v1 = (v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent);
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent + 8);
  v4 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent + 16);
  v5 = v2;
  if (v3 == 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
    if (v6)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0;
    }

    if (v6)
    {
      v7 = 0x800000029E75E840;
    }

    else
    {
      v7 = 0;
    }

    *v1 = v5;
    v1[1] = v7;
    v1[2] = v6;

    sub_29E6CBD54(v5, v7, v6);
  }

  sub_29E6CBD98(v2, v3, v4);
  return v5;
}

void sub_29E6C932C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent);
  v5 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent);
  v6 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 8);
  v7 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 16);
  v8 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 24);
  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 32);
  v10 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 40);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v4[6];
  v16 = v9;
  v17 = v10;
  v18 = v15;
  if (v6 == 1)
  {
    v13 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore);
    v34 = v5;
    v33 = v7;
    v31 = v9;
    v32 = v8;
    v29 = v4[6];
    v30 = v10;
    if (v13)
    {
      v18 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
      if (v18)
      {
        sub_29E601938((v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider), *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider + 24));
        v19 = v13;

        v14 = sub_29E74F4E8();
        v16 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dateCache);
        v17 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_gregorianCalendarCache);
        v20 = v16;
        v21 = v17;
        v22 = v4[1];
        v23 = *v4;
        v24 = v4[2];
        v26 = v4[3];
        v27 = v4[4];
        v28 = v4[5];
        v12 = 0xEE0065636E657272;
        v11 = 0x7563634F7478654ELL;
        v25 = v4[6];
LABEL_8:
        *v4 = v11;
        v4[1] = v12;
        v4[2] = v13;
        v4[3] = v14;
        v4[4] = v16;
        v4[5] = v17;
        v4[6] = v18;
        sub_29E6CBC44(v11, v12, v13, v14, v16, v17, v18);
        sub_29E6CBCBC(v23, v22, v24, v26, v27, v28, v25);
        v5 = v34;
        v7 = v33;
        v6 = 1;
        v9 = v31;
        v8 = v32;
        v15 = v29;
        v10 = v30;
        goto LABEL_9;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v14 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v22 = 1;
    v25 = v4[6];
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v23 = v5;
    v24 = v7;
    goto LABEL_8;
  }

LABEL_9:
  sub_29E6CBD44(v5, v6, v7, v8, v9, v10, v15);
  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
}

uint64_t sub_29E6C9534@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleComponent;
  swift_beginAccess();
  result = sub_29E6CBED4(v1 + v3, v10, &unk_2A18594B0, &unk_2A1859450, &_s22SleepScheduleComponentVN, sub_29E6CBB58);
  if (*(&v10[0] + 1) == 1)
  {
    sub_29E6CBF48(v10, &unk_2A18594B0, &unk_2A1859450, &_s22SleepScheduleComponentVN, sub_29E6CBB58);
    v5 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
    if (v5)
    {
      sub_29E602E20(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider, a1 + 16);
      v6 = 0xED0000656C756465;
      v7 = 0x6863537065656C53;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
    }

    *a1 = v7;
    *(a1 + 8) = v6;
    *(a1 + 56) = v5;
    sub_29E6CBBC4(a1, v10, &unk_2A1859450, &_s22SleepScheduleComponentVN);
    swift_beginAccess();

    sub_29E6CBE60(v10, v1 + v3, &unk_2A18594B0, &unk_2A1859450, &_s22SleepScheduleComponentVN, sub_29E6CBB58);
    return swift_endAccess();
  }

  else
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    v9 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v9;
  }

  return result;
}

uint64_t sub_29E6C96F8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x29EDC26B8];
  v4 = MEMORY[0x29EDC9C68];
  sub_29E6CBAA4(0, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___favoritesComponent;
  swift_beginAccess();
  sub_29E6CBED4(v1 + v11, v10, &qword_2A18593C8, v3, v4, sub_29E6CBAA4);
  v12 = sub_29E751348();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_29E6CBF48(v10, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68], sub_29E6CBAA4);
  v14 = qword_2A1A7D6F0;
  v15 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType);
  if (v14 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E751328();
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_29E6CBE60(v8, v1 + v11, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68], sub_29E6CBAA4);
  return swift_endAccess();
}

uint64_t sub_29E6C9A44@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = MEMORY[0x29EDB98E8];
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6CBAA4(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_29E750528();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v9);
  v10 = sub_29E750518();
  (*(v7 + 8))(v9, v6);
  v11 = MEMORY[0x29EDC9E90];
  sub_29E6CBB08(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v26 = v10;
  sub_29E6DAC4C(inited);
  v13 = v26;
  sub_29E750088();
  sub_29E6CBAA4(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v14 = sub_29E74FB98();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E762F30;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x29EDC3760], v14);
  v18 = sub_29E74E838();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_29E6CBB08(0, &qword_2A1858820, MEMORY[0x29EDC37E0], v11);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E762F40;
  *(v19 + 32) = sub_29E74FBE8();
  *(v19 + 40) = 0;
  v20 = MEMORY[0x29ED92970](v17, v13, v5, v19);

  sub_29E6CBF48(v5, &unk_2A18594A0, v1, v2, sub_29E6CBAA4);
  v21 = v25;
  *v25 = v20;
  v22 = *MEMORY[0x29EDC2AF8];
  v23 = sub_29E7519F8();
  return (*(*(v23 - 8) + 104))(v21, v22, v23);
}

uint64_t sub_29E6C9E80()
{
  v1 = v0;
  v94 = sub_29E7519E8();
  v93 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94);
  v92 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E7519F8();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v91 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_29E751208();
  v96 = *(v97 - 8);
  MEMORY[0x2A1C7C4A8](v97);
  v95 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29E751218();
  v89 = *(v103 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v103);
  v90 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v88 = (&v85 - v9);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v87 = &v85 - v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v86 = &v85 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v85 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v85 - v17;
  sub_29E751228();
  sub_29E751298();
  v19 = sub_29E6C8D80();
  v21 = v20;
  v23 = v22;
  *(&v109 + 1) = &_s19SleepChartComponentVN;
  v24 = sub_29E6CB74C();
  *&v108 = v19;
  *(&v108 + 1) = v21;
  *&v110 = v24;
  *&v109 = v23;
  v102 = sub_29E7513D8();
  sub_29E7518F8();

  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v101 = v1;
  sub_29E6C8E38(&v108);
  if (*(&v108 + 1))
  {
    v25 = sub_29E6CBA50();
    v26 = swift_allocObject();
    v27 = v113;
    *(v26 + 80) = v112;
    *(v26 + 96) = v27;
    *(v26 + 112) = v114;
    v28 = v109;
    *(v26 + 16) = v108;
    *(v26 + 32) = v28;
    v29 = v111;
    *(v26 + 48) = v110;
    *(v26 + 64) = v29;
    v30 = &_s24SleepOnboardingComponentVN;
  }

  else
  {
    sub_29E6CB7A0(&v108, &qword_2A1859448, &_s24SleepOnboardingComponentVN);
    v26 = 0;
    v30 = 0;
    v25 = 0;
    *(&v108 + 1) = 0;
    *&v109 = 0;
  }

  *&v108 = v26;
  *(&v109 + 1) = v30;
  *&v110 = v25;
  v31 = v89;
  v32 = *(v89 + 104);
  v99 = *MEMORY[0x29EDC2618];
  v98 = v89 + 104;
  v100 = v32;
  (v32)(v18);
  sub_29E6CBED4(&v108, &v106, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v107)
  {
    sub_29E5FAEE4(&v106, &v115);
    sub_29E7518E8();
    sub_29E5FECBC(&v115);
    v33 = *(v31 + 8);
    v33(v18, v103);
  }

  else
  {
    v33 = *(v31 + 8);
    v33(v18, v103);
    sub_29E6CBF48(&v106, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v34 = sub_29E6C90E4();
  if (v35)
  {
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = sub_29E6CB9FC();
    v43 = swift_allocObject();
    v43[2] = v38;
    v43[3] = v39;
    v43[4] = v40;
    v43[5] = v41;
    v44 = &_s28SleepFocusPromotionComponentVN;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v42 = 0;
    *(&v108 + 1) = 0;
    *&v109 = 0;
  }

  *&v108 = v43;
  *(&v109 + 1) = v44;
  *&v110 = v42;
  v100(v16, v99, v103);
  sub_29E6CBED4(&v108, &v106, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v107)
  {
    sub_29E5FAEE4(&v106, &v115);
    sub_29E7518E8();
    sub_29E5FECBC(&v115);
    v45 = v33;
    v33(v16, v103);
  }

  else
  {
    v45 = v33;
    v33(v16, v103);
    sub_29E6CBF48(&v106, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v46 = sub_29E6C9264();
  v49 = v48;
  if (v48)
  {
    v50 = v46;
    v51 = v47;
    v52 = &_s25SleepScheduleOffComponentVN;
    v53 = sub_29E6CB9A8();
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
  }

  *&v108 = v50;
  *(&v108 + 1) = v49;
  *&v109 = v51;
  *(&v109 + 1) = v52;
  *&v110 = v53;
  sub_29E751258();
  v54 = v86;
  v55 = v99;
  v100(v86, v99, v103);
  sub_29E6CBED4(&v108, &v106, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v107)
  {
    sub_29E5FAEE4(&v106, &v115);
    sub_29E7518E8();

    sub_29E5FECBC(&v115);
    v45(v54, v103);
  }

  else
  {

    v45(v54, v103);
    sub_29E6CBF48(&v106, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  sub_29E6C932C(&v115);
  v56 = v116;
  if (v116)
  {
    v57 = v115;
    v58 = sub_29E6CB954();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    *(v59 + 24) = v56;
    v60 = v118;
    *(v59 + 32) = v117;
    *(v59 + 48) = v60;
    *(v59 + 64) = v119;
    v61 = &_s23NextOccurrenceComponentVN;
  }

  else
  {
    v59 = 0;
    v61 = 0;
    v58 = 0;
    *(&v108 + 1) = 0;
    *&v109 = 0;
  }

  *&v108 = v59;
  *(&v109 + 1) = v61;
  *&v110 = v58;
  v62 = v87;
  v100(v87, v55, v103);
  sub_29E6CBED4(&v108, &v104, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v105)
  {
    sub_29E5FAEE4(&v104, &v106);
    sub_29E7518E8();
    sub_29E5FECBC(&v106);
    v45(v62, v103);
  }

  else
  {
    v45(v62, v103);
    sub_29E6CBF48(&v104, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  v63 = v88;
  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  sub_29E6C9534(&v108);
  if (*(&v108 + 1))
  {
    v64 = sub_29E6CB900();
    v65 = swift_allocObject();
    v66 = v109;
    v65[1] = v108;
    v65[2] = v66;
    v67 = v111;
    v65[3] = v110;
    v65[4] = v67;
    v68 = &_s22SleepScheduleComponentVN;
  }

  else
  {
    sub_29E6CB7A0(&v108, &unk_2A1859450, &_s22SleepScheduleComponentVN);
    v65 = 0;
    v68 = 0;
    v64 = 0;
    *(&v108 + 1) = 0;
    *&v109 = 0;
  }

  *&v108 = v65;
  *(&v109 + 1) = v68;
  *&v110 = v64;
  v100(v63, v55, v103);
  sub_29E6CBED4(&v108, &v104, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v85 = v45;
  if (v105)
  {
    sub_29E5FAEE4(&v104, &v106);
    sub_29E7518E8();
    sub_29E5FECBC(&v106);
    v89 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v63, v103);
  }

  else
  {
    v89 = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45(v63, v103);
    sub_29E6CBF48(&v104, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  v69 = MEMORY[0x29EDC22E8];
  v88 = sub_29E60BCF8;
  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  sub_29E751248();
  *(&v109 + 1) = sub_29E751348();
  *&v110 = sub_29E6CB8B8(&qword_2A1858C30, MEMORY[0x29EDC26B8], MEMORY[0x29EDC26B0]);
  v70 = sub_29E5FEBF4(&v108);
  v71 = v101;
  sub_29E6C96F8(v70);
  sub_29E7518F8();

  sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, v69, sub_29E60BCF8);
  v73 = *(v71 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleDataComponent);
  v72 = *(v71 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleDataComponent + 8);
  *(&v109 + 1) = &_s26SleepScheduleDataComponentVN;
  *&v110 = sub_29E6CB810();
  *&v108 = v73;
  *(&v108 + 1) = v72;

  sub_29E751288();
  v74 = v90;
  v75 = v103;
  v76 = v100;
  v100(v90, v99, v103);
  sub_29E7518E8();

  v77 = v85;
  v85(v74, v75);
  sub_29E5FECBC(&v108);
  v79 = *(v71 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepDurationGoalComponent);
  v78 = *(v71 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepDurationGoalComponent + 8);
  *(&v109 + 1) = &_s26SleepDurationGoalComponentVN;
  *&v110 = sub_29E6CB864();
  *&v108 = v79;
  *(&v108 + 1) = v78;
  v76(v74, v99, v75);

  sub_29E7518E8();
  v77(v74, v75);
  sub_29E5FECBC(&v108);
  sub_29E6C9A44(v91);
  (*(v93 + 104))(v92, *MEMORY[0x29EDC2AF0], v94);
  v80 = v95;
  sub_29E7511F8();
  sub_29E7512A8();
  v81 = v97;
  *(&v109 + 1) = v97;
  *&v110 = sub_29E6CB8B8(&qword_2A1859470, MEMORY[0x29EDC2610], MEMORY[0x29EDC2608]);
  v82 = sub_29E5FEBF4(&v108);
  v83 = v96;
  (*(v96 + 16))(v82, v80, v81);
  sub_29E7518F8();

  (*(v83 + 8))(v80, v81);
  return sub_29E6CBF48(&v108, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], v88);
}

void sub_29E6CAFF4(uint64_t a1)
{
  sub_29E7513C8();
  if (v1 <= 0x3F)
  {
    sub_29E6CBAA4(319, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29E6CB184()
{
  v0 = sub_29E7513D8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C9E80();
  v4 = sub_29E751148();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E6CB2F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v20 = a4;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v21 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[1] = v4;
    v13 = v12;
    v22 = v12;
    *v11 = 136446210;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v22);
    v19[0] = v5;
    v17 = v16;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_29E5ED000, v9, v10, v20, v11, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);

    (*(v6 + 8))(v8, v19[0]);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_29E6C8238();
}

uint64_t initializeBufferWithCopyOfBuffer for SleepRoomState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepRoomState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepRoomState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_29E6CB74C()
{
  result = qword_2A1859430;
  if (!qword_2A1859430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859430);
  }

  return result;
}

uint64_t sub_29E6CB7A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_29E6CBB08(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E6CB810()
{
  result = qword_2A1859460;
  if (!qword_2A1859460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859460);
  }

  return result;
}

unint64_t sub_29E6CB864()
{
  result = qword_2A1859468;
  if (!qword_2A1859468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859468);
  }

  return result;
}

uint64_t sub_29E6CB8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E6CB900()
{
  result = qword_2A1859478;
  if (!qword_2A1859478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859478);
  }

  return result;
}

unint64_t sub_29E6CB954()
{
  result = qword_2A1859480;
  if (!qword_2A1859480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859480);
  }

  return result;
}

unint64_t sub_29E6CB9A8()
{
  result = qword_2A1859488;
  if (!qword_2A1859488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859488);
  }

  return result;
}

unint64_t sub_29E6CB9FC()
{
  result = qword_2A1859490;
  if (!qword_2A1859490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859490);
  }

  return result;
}

unint64_t sub_29E6CBA50()
{
  result = qword_2A1859498;
  if (!qword_2A1859498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859498);
  }

  return result;
}

void sub_29E6CBAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6CBB08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E6CBB58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E6CBB08(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6CBBC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_29E6CBB08(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29E6CBC44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  if (a2)
  {

    v10 = a3;

    v11 = a5;
    v12 = a6;
  }
}

void sub_29E6CBCBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  if (a2 != 1)
  {
    sub_29E6CBCCC(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_29E6CBCCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  if (a2)
  {
  }
}

void sub_29E6CBD44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  if (a2 != 1)
  {
    sub_29E6CBC44(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_29E6CBD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_29E6CBD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    sub_29E6CBD54(a1, a2, a3);
  }
}

void sub_29E6CBDA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {

    v5 = a3;
  }
}

void sub_29E6CBDF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_29E6CBE04(a1, a2, a3, a4);
  }
}

void sub_29E6CBE04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_29E6CBE50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_29E6CBDA8(a1, a2, a3, a4);
  }
}

uint64_t sub_29E6CBE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E6CBED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E6CBF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *sub_29E6CBFA8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
  }

  return result;
}

void *sub_29E6CBFE8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void sub_29E6CC028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    sub_29E6CC038(a1, a2, a3);
  }
}

void sub_29E6CC038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for SupplementaryTypeSection(uint64_t a1)
{
  result = qword_2A18594C0;
  if (!qword_2A18594C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6CC108(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v21 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    v5 = MEMORY[0x29EDC1910];
    v6 = MEMORY[0x29EDC18F8];
    do
    {
      sub_29E602E20(v4, v17);
      sub_29E609CF8(0, &qword_2A1858310, v5);
      sub_29E609CF8(0, &qword_2A1856FF0, v6);
      swift_dynamicCast();
      v21 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_29E6DBB54((v7 > 1), v8 + 1, 1);
      }

      v9 = v19;
      v10 = v20;
      v11 = sub_29E613218(v18, v19);
      MEMORY[0x2A1C7C4A8](v11);
      v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v14 + 16))(v13);
      sub_29E6CE380(v8, v13, &v21, v9, v10);
      sub_29E5FECBC(v18);
      v2 = v21;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_29E6CC2E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29E754C98();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x29EDCA190];
  result = sub_29E6DBB54(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x29ED976A0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_29E6DBB54((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for SettingsToggleItem(0);
        v15 = sub_29E6CEA0C(&qword_2A1859548, type metadata accessor for SettingsToggleItem, MEMORY[0x29EDC2448]);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_29E5FAEE4(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_29E6DBB54((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for SettingsToggleItem(0);
        v15 = sub_29E6CEA0C(&qword_2A1859548, type metadata accessor for SettingsToggleItem, MEMORY[0x29EDC2448]);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_29E5FAEE4(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6CC508(uint64_t a1)
{
  v2 = type metadata accessor for SleepOnboardingScheduleItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x29EDCA190];
  if (v6)
  {
    v17 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_29E6CE9A8(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_29E6DBB54((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_29E6CEA0C(&qword_2A1857018, type metadata accessor for SleepOnboardingScheduleItem, &unk_29E764544);
      v12 = sub_29E5FEBF4(&v14);
      sub_29E6CE9A8(v5, v12);
      *(v7 + 16) = v11 + 1;
      sub_29E5FAEE4(&v14, v7 + 40 * v11 + 32);
      sub_29E6CEA54(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_29E6CC6D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v1, 0);
    v2 = v18;
    v4 = (a1 + 72);
    do
    {
      v5 = *(v4 - 4);
      v7 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *v4;
      v13 = *(v4 - 1);
      v14 = *(v4 - 5);
      v18 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_29E6DBB54((v10 > 1), v9 + 1, 1);
        v2 = v18;
      }

      v4 += 6;
      v16 = &type metadata for AddScheduledItem;
      v17 = sub_29E68D0D8();
      v11 = swift_allocObject();
      *&v15 = v11;
      v11[2] = v14;
      v11[3] = v5;
      v11[4] = v7;
      v11[5] = v6;
      v11[6] = v13;
      v11[7] = v8;
      *(v2 + 16) = v9 + 1;
      sub_29E5FAEE4(&v15, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E6CC80C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v13 = MEMORY[0x29EDCA190];
    sub_29E6DBC6C(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_29E6DBC6C((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for SleepInternalSettingsViewController.ResetRow;
      v12 = &off_2A2500960;
      LOBYTE(v10) = v5;
      *(v2 + 16) = v8 + 1;
      sub_29E5FAEE4(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E6CC8FC(uint64_t a1)
{
  v2 = sub_29E751B38();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x29EDCA190];
  if (v6)
  {
    v21 = MEMORY[0x29EDCA190];
    sub_29E6DBCC4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29E6DBCC4((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x29EDC2BE0];
      v14 = sub_29E5FEBF4(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_29E5FAEE4(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_29E6CCAC8(uint64_t a1)
{
  v2 = sub_29E750EE8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x29EDCA190];
  if (v6)
  {
    v21 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29E6DBB54((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_29E6CEA0C(&qword_2A1859540, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
      v14 = sub_29E5FEBF4(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_29E5FAEE4(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_29E6CCCC0@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v46 = a1;
  v65 = a4;
  v5 = sub_29E751908();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v62 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29E74F698();
  v59 = *(v61 - 8);
  MEMORY[0x2A1C7C4A8](v61);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29E68E4E8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v57 = &v45 - v10;
  v11 = sub_29E750DC8();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v66 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E68E4E8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v8);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v47 = &v45 - v14;
  v49 = sub_29E752108();
  v48 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E7520C8();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E752258();
  v52 = *(v21 - 8);
  v22 = v52;
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();

  v25 = v24;
  v50 = v24;
  sub_29E752228();
  v26 = [a1 identifier];
  v27 = sub_29E7541D8();
  v29 = v28;

  v67 = v27;
  v68 = v29;
  MEMORY[0x29ED96C20](0x6C6C41776F68532ELL, 0xEC00000061746144);
  v53 = v68;
  v54 = v67;
  v51 = v21;
  v69 = v21;
  v70 = MEMORY[0x29EDC7800];
  v30 = sub_29E5FEBF4(&v67);
  (*(v22 + 16))(v30, v25, v21);
  sub_29E68E4E8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E752128();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  (*(v18 + 104))(v20, *MEMORY[0x29EDC7768], v17);
  v31 = sub_29E7520D8();
  (*(*(v31 - 8) + 56))(v47, 1, 1, v31);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v48 + 8))(v16, v49);
  (*(v18 + 8))(v20, v17);
  v32 = swift_allocObject();
  v33 = v46;
  v34 = v60;
  *(v32 + 16) = v46;
  *(v32 + 24) = v34;
  *v66 = 1;
  (*(v55 + 104))();
  v35 = sub_29E752178();
  (*(*(v35 - 8) + 56))(v57, 1, 1, v35);
  v37 = v58;
  v36 = v59;
  v38 = v61;
  (*(v59 + 104))(v58, *MEMORY[0x29EDC6AD0], v61);
  sub_29E662E20();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_29E762F40;
  v40 = [v33 identifier];
  v41 = sub_29E7541D8();
  v43 = v42;

  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  *(v39 + 48) = 0x446C6C41776F6853;
  *(v39 + 56) = 0xEB00000000617461;
  sub_29E754298();

  (*(v36 + 8))(v37, v38);
  (*(v63 + 104))(v62, *MEMORY[0x29EDC2A38], v64);
  sub_29E750ED8();
  return (*(v52 + 8))(v50, v51);
}

uint64_t sub_29E6CD50C@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v44 = a1;
  v64 = a4;
  v5 = sub_29E751908();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v61 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29E74F698();
  v58 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60);
  v57 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29E68E4E8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v56 = &v44 - v10;
  v11 = sub_29E750DC8();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v65 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E68E4E8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v8);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v46 = &v44 - v14;
  v48 = sub_29E752108();
  v47 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E7520C8();
  v17 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E752258();
  v51 = *(v20 - 8);
  v21 = v51;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();

  v49 = v23;
  sub_29E752228();
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_29E754D78();
  v24 = [a1 identifier];
  v25 = sub_29E7541D8();
  v27 = v26;

  v66 = v25;
  v67 = v27;
  MEMORY[0x29ED96C20](0xD000000000000015, 0x800000029E75E910);
  v52 = v67;
  v53 = v66;
  v50 = v20;
  v68 = v20;
  v69 = MEMORY[0x29EDC7800];
  v28 = sub_29E5FEBF4(&v66);
  (*(v21 + 16))(v28, v23, v20);
  sub_29E68E4E8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E752128();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v29 = v45;
  (*(v17 + 104))(v19, *MEMORY[0x29EDC7768], v45);
  v30 = sub_29E7520D8();
  (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v47 + 8))(v16, v48);
  (*(v17 + 8))(v19, v29);
  v31 = swift_allocObject();
  v32 = v44;
  v33 = v59;
  *(v31 + 16) = v44;
  *(v31 + 24) = v33;
  *v65 = 1;
  (*(v54 + 104))();
  v34 = sub_29E752178();
  (*(*(v34 - 8) + 56))(v56, 1, 1, v34);
  v36 = v57;
  v35 = v58;
  v37 = v60;
  (*(v58 + 104))(v57, *MEMORY[0x29EDC6AD0], v60);
  sub_29E662E20();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_29E762F40;
  v39 = [v32 identifier];
  v40 = sub_29E7541D8();
  v42 = v41;

  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  *(v38 + 48) = 0x72756F5361746144;
  *(v38 + 56) = 0xEB00000000736563;
  sub_29E754298();

  (*(v35 + 8))(v36, v37);
  (*(v62 + 104))(v61, *MEMORY[0x29EDC2A38], v63);
  sub_29E750ED8();
  return (*(v51 + 8))(v49, v50);
}

uint64_t sub_29E6CDDB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E38();
  v6 = sub_29E750E68();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_29E6CDF30(void *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, SEL *a6)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6CE00C(a2, a1, a5, a6);
}

void sub_29E6CE00C(void *a1, void *a2, const char *a3, SEL *a4)
{
  v7 = v4;
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v14 = a1;
  v15 = sub_29E752088();
  v16 = sub_29E7546C8();

  v17 = os_log_type_enabled(v15, v16);
  v44 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v40 = a3;
    v19 = v18;
    v41 = swift_slowAlloc();
    v45[0] = v41;
    *v19 = 136446466;
    v20 = sub_29E755178();
    v42 = v10;
    v22 = sub_29E6B9C90(v20, v21, v45);
    v43 = a2;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = v14;
    v25 = [v24 description];
    v26 = sub_29E7541D8();
    HIDWORD(v39) = v16;
    v27 = v11;
    v28 = v14;
    v29 = a4;
    v31 = v30;

    a2 = v43;
    v32 = sub_29E6B9C90(v26, v31, v45);
    a4 = v29;
    v14 = v28;

    *(v19 + 14) = v32;
    _os_log_impl(&dword_29E5ED000, v15, BYTE4(v39), v40, v19, 0x16u);
    v33 = v41;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v33, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);

    (*(v27 + 8))(v13, v42);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v34 = [a2 resolvedHealthToolbox];
  v35 = [v34 *a4];

  v45[1] = &unk_2A2538648;
  v36 = swift_dynamicCastObjCProtocolConditional();
  if (v36)
  {
    v37 = v36;
    v45[0] = v44;
    sub_29E6CE930();
    v38 = v35;
    [a2 showAdaptively:v37 sender:sub_29E755058()];

    sub_29E751758();
  }

  else
  {
    v45[0] = v44;
    sub_29E6CE930();
    [a2 showViewController:v35 sender:sub_29E755058()];
    sub_29E751758();
  }
}

uint64_t sub_29E6CE380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29E5FEBF4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29E5FAEE4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29E6CE418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v38 = a5;
  v42 = v6;
  v8 = *v6;
  v9 = sub_29E74ED88();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v39 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E750EE8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = v35 - v16;
  v35[1] = v8;
  v36 = a1;
  sub_29E6CCCC0(a1, v35 - v16);

  v18 = sub_29E6DAD84(0, 1, 1, MEMORY[0x29EDCA190]);
  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_29E6DAD84((v19 > 1), v20 + 1, 1, v18);
  }

  v44 = v11;
  v21 = sub_29E6CEA0C(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
  v45 = v21;
  v22 = sub_29E5FEBF4(&v43);
  v23 = *(v12 + 16);
  v23(v22, v17, v11);
  v18[2] = v20 + 1;
  sub_29E5FAEE4(&v43, &v18[5 * v20 + 4]);
  v24 = *(v12 + 8);
  v24(v17, v11);
  sub_29E6CD50C(v36, v15);

  v26 = v18[2];
  v25 = v18[3];
  if (v26 >= v25 >> 1)
  {
    v18 = sub_29E6DAD84((v25 > 1), v26 + 1, 1, v18);
  }

  v44 = v11;
  v45 = v21;
  v27 = sub_29E5FEBF4(&v43);
  v23(v27, v15, v11);
  v18[2] = v26 + 1;
  sub_29E5FAEE4(&v43, &v18[5 * v26 + 4]);
  v24(v15, v11);
  sub_29E68E4E8(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC108(v18);

  v28 = v39;
  sub_29E74ED78();
  sub_29E74ED48();
  v29 = v41;
  v30 = *(v40 + 8);
  v30(v28, v41);
  sub_29E750C98();
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_29E754D78();

  strcpy(&v43, "MutableArray<");
  HIWORD(v43) = -4864;
  sub_29E74ED78();
  v31 = sub_29E74ED48();
  v33 = v32;
  v30(v28, v29);
  MEMORY[0x29ED96C20](v31, v33);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

unint64_t sub_29E6CE930()
{
  result = qword_2A1859538;
  if (!qword_2A1859538)
  {
    type metadata accessor for SupplementaryTypeSection(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1859538);
  }

  return result;
}

uint64_t sub_29E6CE9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepOnboardingScheduleItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6CEA0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6CEA54(uint64_t a1)
{
  v2 = type metadata accessor for SleepOnboardingScheduleItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29E6CEAB0()
{
  v0 = sub_29E7519E8();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v12 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E7519F8();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v11 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_29E751208();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() appleSleepScoreType];
  if (result)
  {
    v9 = result;
    sub_29E751228();

    sub_29E751298();
    *(&v16 + 1) = &_s25LatestSleepScoreComponentVN;
    v17 = sub_29E6CEF3C();
    sub_29E7513D8();
    sub_29E7518F8();

    sub_29E6CF658(&v15, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751258();
    sub_29E63027C();
    MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
    sub_29E6CF4D4(&unk_2A24FCFB8);
    *(&v16 + 1) = sub_29E7512C8();
    v17 = sub_29E6CF764(&qword_2A1859558, MEMORY[0x29EDC2638], MEMORY[0x29EDC2630]);
    sub_29E5FEBF4(&v15);
    sub_29E7512B8();
    sub_29E7518F8();

    sub_29E6CF658(&v15, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751288();
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_29E7518F8();

    sub_29E6CF658(&v15, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751268();
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_29E7518F8();

    sub_29E6CF658(&v15, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E6CEFF4(v11);
    (*(v13 + 104))(v12, *MEMORY[0x29EDC2AF0], v14);
    sub_29E7511F8();
    sub_29E7512A8();
    *(&v16 + 1) = v4;
    v17 = sub_29E6CF764(&qword_2A1859470, MEMORY[0x29EDC2610], MEMORY[0x29EDC2608]);
    v10 = sub_29E5FEBF4(&v15);
    (*(v5 + 16))(v10, v7, v4);
    sub_29E7518F8();

    (*(v5 + 8))(v7, v4);
    return sub_29E6CF658(&v15, &qword_2A18582F0, sub_29E6CEF90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E6CEF3C()
{
  result = qword_2A1859550;
  if (!qword_2A1859550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859550);
  }

  return result;
}

unint64_t sub_29E6CEF90()
{
  result = qword_2A1859440;
  if (!qword_2A1859440)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1859440);
  }

  return result;
}

uint64_t sub_29E6CEFF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x29EDB98E8];
  sub_29E6CF5A4(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_29E750528();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v9);
  v10 = sub_29E750518();
  (*(v7 + 8))(v9, v6);
  sub_29E750088();
  sub_29E6CF5A4(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v11 = sub_29E74FB98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E762F30;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x29EDC3760], v11);
  v15 = sub_29E74E838();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_29E6CF608();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E762F40;
  *(v16 + 32) = sub_29E74FBE8();
  *(v16 + 40) = 0;
  v17 = MEMORY[0x29ED92970](v14, v10, v5, v16);

  sub_29E6CF658(v5, &unk_2A18594A0, v2);
  *a1 = v17;
  v18 = *MEMORY[0x29EDC2AF8];
  v19 = sub_29E7519F8();
  return (*(*(v19 - 8) + 104))(a1, v18, v19);
}

uint64_t sub_29E6CF34C(uint64_t a1)
{
  v1 = sub_29E751388();
  v2 = sub_29E7513B8();
  type metadata accessor for LatestSleepScoreSnapshotDataSource(0);
  swift_allocObject();
  sub_29E6D7190(v1, v2);
  sub_29E750828();

  v3 = sub_29E750818();

  return v3;
}

unint64_t sub_29E6CF3FC(uint64_t a1)
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](a1);
  v2 = sub_29E755108();

  return sub_29E6CF468(a1, v2);
}

unint64_t sub_29E6CF468(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_29E6CF4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E6CF6C8(0);
    v3 = sub_29E754EB8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_29E6CF3FC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E6CF5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6CF608()
{
  if (!qword_2A1858820)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858820);
    }
  }
}

uint64_t sub_29E6CF658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6CF5A4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6CF6C8(uint64_t a1)
{
  if (!qword_2A1859560)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29E6CF764(&qword_2A1859568, type metadata accessor for UIUserInterfaceSizeClass, &unk_29E762D8C);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859560);
    }
  }
}

uint64_t sub_29E6CF764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6CF7D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_29E7541D8();
  v6 = v5;

  if (v4 == 0xD00000000000003ALL && 0x800000029E75D980 == v6)
  {
  }

  else
  {
    v8 = sub_29E755028();

    if ((v8 & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = &type metadata for BreathingDisturbancesActionProvider;
  result = sub_29E6CF8A8();
  *(a2 + 32) = result;
  return result;
}

unint64_t sub_29E6CF8A8()
{
  result = qword_2A1859570;
  if (!qword_2A1859570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859570);
  }

  return result;
}

__n128 sub_29E6CF908(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E6CF91C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_29E6CF964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_29E6CF9C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_29E6D0D2C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_29E755028();
}

uint64_t sub_29E6CFA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32[1] = a1;
  v34 = a4;
  v7 = sub_29E753198();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D027C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D06AC(0, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
  v33 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = v32 - v17;
  v35 = a1;
  v36 = a2;
  v37 = a3 & 1;
  sub_29E6D0340(0);
  sub_29E6D05BC(&qword_2A18595A8, sub_29E6D0340, sub_29E6D0574, MEMORY[0x29EDBCBA0]);
  sub_29E753568();
  sub_29E753188();
  sub_29E6D0B78(&qword_2A18595D8, sub_29E6D027C, MEMORY[0x29EDBC0F0]);
  sub_29E7538B8();
  (*(v8 + 8))(v10, v7);
  (*(v13 + 8))(v15, v12);
  type metadata accessor for SleepOptionsModel(0);
  sub_29E6D0B78(&qword_2A1859600, type metadata accessor for SleepOptionsModel, &unk_29E767910);
  v19 = sub_29E752A48();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v20 = v38;
  sub_29E74F418();
  sub_29E6D0B78(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  v21 = sub_29E752748();
  sub_29E6D0720(0);
  v23 = &v18[*(v22 + 36)];
  *v23 = v21;
  v23[1] = v20;
  v24 = sub_29E752A48();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v25 = v38;
  sub_29E74F948();
  sub_29E6D0B78(&qword_2A1858198, MEMORY[0x29EDC6B68], MEMORY[0x29EDC6B60]);
  v26 = sub_29E752748();
  v27 = &v18[*(v33 + 36)];
  *v27 = v26;
  v27[1] = v25;
  v28 = sub_29E752A48();
  v29 = *&v28[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle];
  v30 = *&v28[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle + 8];

  v38 = v29;
  v39 = v30;
  sub_29E6D0968();
  sub_29E60DE10();
  sub_29E7537C8();

  return sub_29E5F69F4(v18);
}

uint64_t sub_29E6CFFA4(uint64_t a1, uint64_t a2, char a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepOptionsModel(0);
  sub_29E6D0B78(&qword_2A1859600, type metadata accessor for SleepOptionsModel, &unk_29E767910);
  v3 = sub_29E752A48();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  sub_29E6D0408();
  sub_29E6D0458(0);
  sub_29E6D0B78(&qword_2A18595A0, sub_29E6D0408, MEMORY[0x29EDC9A80]);
  sub_29E6D0574();
  sub_29E6D0CD8();
  sub_29E753B48();
}

double sub_29E6D01A0@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E623B84(v3, v7);

  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  return result;
}

void sub_29E6D027C(uint64_t a1)
{
  if (!qword_2A1859578)
  {
    sub_29E6D0340(255);
    sub_29E6D05BC(&qword_2A18595A8, sub_29E6D0340, sub_29E6D0574, MEMORY[0x29EDBCBA0]);
    v1 = sub_29E753578();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859578);
    }
  }
}

void sub_29E6D0340(uint64_t a1)
{
  if (!qword_2A1859580)
  {
    sub_29E6D0408();
    sub_29E6D0458(255);
    sub_29E6D0B78(&qword_2A18595A0, sub_29E6D0408, MEMORY[0x29EDC9A80]);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859580);
    }
  }
}

void sub_29E6D0408()
{
  if (!qword_2A1859588)
  {
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859588);
    }
  }
}

void sub_29E6D048C(uint64_t a1)
{
  if (!qword_2A1859598)
  {
    sub_29E6D0524(255, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow);
    sub_29E6D0524(255, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow);
    v1 = sub_29E753128();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859598);
    }
  }
}

void sub_29E6D0524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_29E753128();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6D05BC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E6D062C()
{
  result = qword_2A18595B8;
  if (!qword_2A18595B8)
  {
    sub_29E6D048C(255);
    sub_29E6284D0();
    sub_29E628624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18595B8);
  }

  return result;
}

void sub_29E6D06AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E752C28();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6D0754(uint64_t a1)
{
  if (!qword_2A18595D0)
  {
    sub_29E6D027C(255);
    sub_29E753198();
    sub_29E6D0B78(&qword_2A18595D8, sub_29E6D027C, MEMORY[0x29EDBC0F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18595D0);
    }
  }
}

void sub_29E6D08F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E6D0968()
{
  result = qword_2A1859608;
  if (!qword_2A1859608)
  {
    sub_29E6D06AC(255, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
    sub_29E6D0A48();
    sub_29E6D0B78(&qword_2A1859620, sub_29E6D0890, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859608);
  }

  return result;
}

unint64_t sub_29E6D0A48()
{
  result = qword_2A1859610;
  if (!qword_2A1859610)
  {
    sub_29E6D0720(255);
    sub_29E6D027C(255);
    sub_29E753198();
    sub_29E6D0B78(&qword_2A18595D8, sub_29E6D027C, MEMORY[0x29EDBC0F0]);
    swift_getOpaqueTypeConformance2();
    sub_29E6D0B78(&qword_2A1859618, sub_29E6D0828, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859610);
  }

  return result;
}

uint64_t sub_29E6D0B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_29E6D0BC0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_29E6D0C48(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_29E752898();
}

unint64_t sub_29E6D0CD8()
{
  result = qword_2A1859628;
  if (!qword_2A1859628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859628);
  }

  return result;
}

uint64_t sub_29E6D0D2C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SleepApneaOnboardingStartViewController(uint64_t a1)
{
  result = qword_2A1859638;
  if (!qword_2A1859638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6D0E20()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0;
  *(v0 + qword_2A1859630 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  sub_29E74F8A8();
  sub_29E74F7C8();
  v6 = *(v2 + 8);
  v6(v4, v1);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v6(v4, v1);
  v7 = v5;
  v8 = sub_29E754198();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  if (v9)
  {
    sub_29E7519C8();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E6D108C()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E74F8B8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for SleepApneaOnboardingStartViewController(0);
  v24.receiver = v1;
  v24.super_class = started;
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v7 + 8))(v9, v6);
  v11 = sub_29E754198();

  v12 = *MEMORY[0x29EDC6AC0];
  v23 = *(v3 + 104);
  v22 = v12;
  v23(v5, v12, v2);
  sub_29E754238();
  v13 = *(v3 + 8);
  v13(v5, v2);
  v14 = sub_29E754198();

  v15 = [v1 headerView];
  v16 = v12;
  v17 = v23;
  v23(v5, v16, v2);
  sub_29E754238();
  v13(v5, v2);
  v18 = sub_29E754198();

  [v15 setTitleAccessibilityIdentifier_];

  v19 = [v1 headerView];
  v17(v5, v22, v2);
  sub_29E754238();
  v13(v5, v2);
  v20 = sub_29E754198();

  [v19 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_29E6D14A4()
{
  sub_29E6979D8(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_29E7544D8();
    v6 = sub_29E7544F8();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v7 = v0;
    v8 = sub_29E7544B8();
    v9 = swift_allocObject();
    v10 = MEMORY[0x29EDCA390];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v7;
    v9[6] = &off_2A2501AE8;
    sub_29E6E4804(0, 0, v3, &unk_29E767EC0, v9);

    return sub_29E751758();
  }

  return result;
}

void sub_29E6D1620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E6D16EC(char *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29E6D1950(v3, 0, &unk_2A2501B20, &unk_29E76A460);

    sub_29E751758();
  }

  else
  {
  }
}

id sub_29E6D1848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaOnboardingStartViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6D1898(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A1859630 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29E751758();
}

uint64_t sub_29E6D1950(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  LODWORD(v5) = a2;
  sub_29E6979D8(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E752098();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v5;
    v5 = v15;
    v16 = swift_slowAlloc();
    v32 = a4;
    v17 = v16;
    v37 = v16;
    *v5 = 136315650;
    nullsub_1();
    v18 = sub_29E755178();
    v20 = sub_29E6B9C90(v18, v19, &v37);

    *(v5 + 4) = v20;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_29E6B9C90(0xD000000000000025, 0x800000029E75EAF0, &v37);
    *(v5 + 22) = 2080;
    v36 = v33;
    v21 = sub_29E7541F8();
    v23 = sub_29E6B9C90(v21, v22, &v37);

    *(v5 + 24) = v23;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%s.%s]: Onboarding did cancel from stage %s", v5, 0x20u);
    swift_arrayDestroy();
    v24 = v17;
    a4 = v32;
    MEMORY[0x29ED98410](v24, -1, -1);
    v25 = v5;
    LOBYTE(v5) = v33;
    MEMORY[0x29ED98410](v25, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_29E71AFB8(0, 0);
  v26 = sub_29E7544F8();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  sub_29E7544C8();

  v28 = sub_29E7544B8();
  v29 = swift_allocObject();
  v30 = MEMORY[0x29EDCA390];
  *(v29 + 16) = v28;
  *(v29 + 24) = v30;
  *(v29 + 32) = a1;
  *(v29 + 40) = v5;
  *(v29 + 41) = 1;
  sub_29E6E4804(0, 0, v27, a4, v29);
}

uint64_t sub_29E6D1CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E66A9A0;

  return sub_29E71BF18(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_29E6D1D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E605728;

  return sub_29E71BF18(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_29E6D1E4C()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 42, 7);
}

uint64_t sub_29E6D1EF8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E751D88() ^ a1;
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = a2;
    v27 = v12;
    v13 = v12;
    *v11 = 136446466;
    v14 = sub_29E755178();
    v25 = v4;
    v16 = sub_29E6B9C90(v14, v15, &v27);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    if (v8)
    {
      v17 = 0x65736C6166;
    }

    else
    {
      v17 = 1702195828;
    }

    if (v8)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = sub_29E6B9C90(v17, v18, &v27);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] isVisible: %s", v11, 0x16u);
    swift_arrayDestroy();
    v20 = v13;
    a2 = v26;
    MEMORY[0x29ED98410](v20, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);

    (*(v5 + 8))(v7, v25);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v21 = sub_29E7508F8();
  v22 = MEMORY[0x29EDC1FF8];
  if ((v8 & 1) == 0)
  {
    v22 = MEMORY[0x29EDC2000];
  }

  return (*(*(v21 - 8) + 104))(a2, *v22, v21);
}

uint64_t sub_29E6D219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_29E7508F8();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11 - v6;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v9 = *(Strong + *(*Strong + qword_2A1869458 + 24));

  sub_29E6D1EF8(v9, v7);
  sub_29E750908();
}

uint64_t sub_29E6D2358()
{
  sub_29E5FECBC((v0 + *(*v0 + qword_2A1869458 + 16)));
}

void *sub_29E6D23F4()
{
  v0 = sub_29E750938();
  sub_29E5FECBC((v0 + *(*v0 + qword_2A1869458 + 16)));

  return v0;
}

uint64_t sub_29E6D2490()
{
  sub_29E6D23F4();

  return swift_deallocClassInstance();
}

void *sub_29E6D24D8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v42 = a2;
  v7 = *v3;
  v39 = sub_29E752098();
  v38 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v50 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6894C4(0);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E751D98();
  v36 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v7;
  v16 = v7 + qword_2A1869458;
  v17 = *(v7 + qword_2A1869458);
  v43 = *(v7 + qword_2A1869458 + 8);
  v44 = v17;
  v18 = sub_29E7508F8();
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v41 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v36 - v21;
  *(v4 + *(v16 + 32)) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(a1, v4 + *(*v4 + qword_2A1869458 + 16));
  *(v4 + *(*v4 + qword_2A1869458 + 24)) = a3;
  v23 = a1[3];
  v46 = a1;
  sub_29E601938(a1, v23);
  sub_29E751DB8();
  v51 = v22;
  v40 = v15;
  sub_29E6D1EF8(a3 & 1, v22);
  (*(v36 + 8))(v14, v37);
  (*(v52 + 16))(v41, v22, v53);
  swift_unknownObjectRetain();
  v24 = sub_29E750918();
  v25 = v46;
  sub_29E601938(v46, v46[3]);
  swift_retain_n();
  v54 = sub_29E751DC8();
  sub_29E602DD4();
  v26 = sub_29E754908();
  v55 = v26;
  v27 = sub_29E7548D8();
  v28 = v45;
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  sub_29E64C52C(0);
  sub_29E6D2E6C(&qword_2A1A7BFA0, sub_29E64C52C, MEMORY[0x29EDB8A00]);
  sub_29E6D2E6C(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  v29 = v47;
  sub_29E752968();
  sub_29E6214E8(v28);

  v30 = swift_allocObject();
  swift_weakInit();

  v31 = swift_allocObject();
  v32 = v43;
  v31[2] = v44;
  v31[3] = v32;
  v33 = v40;
  v31[4] = v30;
  v31[5] = v33;
  sub_29E6D2E6C(&qword_2A18585D0, sub_29E6894C4, MEMORY[0x29EDB89E8]);
  v34 = v49;
  sub_29E7529A8();

  (*(v48 + 8))(v29, v34);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  (*(v52 + 8))(v51, v53);
  sub_29E5FECBC(v25);
  return v24;
}

void *sub_29E6D2DF8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  type metadata accessor for FeatureOnboardedHideableDataSource(0, *(v4 + qword_2A1869458), *(v4 + qword_2A1869458 + 8), a4);
  swift_allocObject();
  return sub_29E6D24D8(a1, a2, a3);
}

uint64_t sub_29E6D2E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6D2EB4(uint64_t result, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_29E6D2F58(char *a1, void *a2)
{
  v67 = a2;
  sub_29E6D5C4C(0);
  v66 = v3;
  v65 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v64 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74FEB8();
  v70 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v68 = v6;
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D5E1C(0);
  v62 = v7;
  v60 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D5EB0(0);
  v10 = v9;
  v63 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6C0 != -1)
  {
    swift_once();
  }

  v12 = sub_29E74FE48();
  v13 = sub_29E61037C(v12, qword_2A1A7FA00);
  (*(*(v12 - 8) + 16))(v71 + OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_domain, v13, v12);
  v14 = *MEMORY[0x29EDBAFB0];
  v15 = *MEMORY[0x29EDBAFC8];
  v16 = sub_29E7541D8();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v20 = v15;
  v21 = [v19 initWithSuiteName_];
  if (v21)
  {
    v22 = v21;
    v23 = type metadata accessor for UserDefaultsBooleanObserver();
    v24 = objc_allocWithZone(v23);
    v58 = v5;
    v25 = a1;
    v26 = v10;
    v27 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange;
    sub_29E622640();
    swift_allocObject();
    *&v24[v27] = sub_29E752778();
    *&v24[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] = 0;
    *&v24[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults] = v22;
    v28 = &v24[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
    *v28 = v16;
    v28[1] = v18;
    v72.receiver = v24;
    v72.super_class = v23;
    v29 = v22;
    v30 = objc_msgSendSuper2(&v72, sel_init);
    v31 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext;
    v10 = v26;
    a1 = v25;
    v5 = v58;
    v32 = v30;
    [v29 addObserver:v32 forKeyPath:v20 options:0 context:&v30[v31]];

    v75 = v23;
    v76 = &off_2A24FE4B0;
    *&v74 = v32;
    sub_29E5FAEE4(&v74, v77);
  }

  else
  {

    v33 = type metadata accessor for BooleanObserver();
    v34 = swift_allocObject();
    sub_29E622640();
    swift_allocObject();
    *(v34 + 16) = sub_29E752778();
    *(v34 + 24) = 0;
    v77[3] = v33;
    v77[4] = &off_2A24FE498;
    v77[0] = v34;
  }

  sub_29E74FE58();
  sub_29E601938(&v74, v75);
  v35 = sub_29E74FDD8();
  sub_29E602E20(v77, v73);
  v36 = objc_allocWithZone(type metadata accessor for SleepOnboardingChangeDetector());
  v37 = v67;
  v38 = sub_29E6D4DB0(v35, v37, v73, v36);
  sub_29E5FECBC(&v74);
  v39 = OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_changeDetector;
  v40 = v71;
  *(v71 + OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_changeDetector) = v38;
  v41 = sub_29E74FE68();
  *&v74 = *(*(v40 + v39) + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability);
  if (v41)
  {
    v42 = v69;
    v43 = v70;
    v44 = v5;
    (*(v70 + 16))(v69, a1, v5);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = swift_allocObject();
    (*(v43 + 32))(v46 + v45, v42, v5);
    sub_29E6D6178(0, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E66257C();
    sub_29E6D5D94();
    v69 = a1;

    v47 = v64;
    sub_29E7528F8();

    sub_29E6D6564(qword_2A1A7D538, sub_29E6D5C4C, MEMORY[0x29EDB88A0]);
    v48 = v66;
    v49 = sub_29E7528E8();

    (*(v43 + 8))(v69, v44);
    (*(v65 + 8))(v47, v48);
  }

  else
  {
    sub_29E6D6178(0, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E6D5D94();
    v50 = v59;
    sub_29E752938();
    v52 = v69;
    v51 = v70;
    (*(v70 + 16))(v69, a1, v5);
    v53 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v54 = swift_allocObject();
    (*(v51 + 32))(v54 + v53, v52, v5);
    sub_29E66257C();
    sub_29E6D6564(&qword_2A1A7D520, sub_29E6D5E1C, MEMORY[0x29EDB8940]);
    v55 = v61;
    v56 = v62;
    sub_29E752928();

    (*(v60 + 8))(v50, v56);
    sub_29E6D6564(&qword_2A1A7BFF8, sub_29E6D5EB0, MEMORY[0x29EDB8908]);
    v49 = sub_29E7528E8();

    (*(v51 + 8))(a1, v5);
    (*(v63 + 8))(v55, v10);
  }

  sub_29E5FECBC(v77);
  result = v71;
  *(v71 + 16) = v49;
  return result;
}

uint64_t sub_29E6D3858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E6D60E4(0);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74FEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = *a1;
  v12 = *(v7 + 16);
  v29 = &v27 - v13;
  v12();
  v14 = type metadata accessor for SleepOnboardingTileGenerator(0);
  a2[3] = v14;
  a2[4] = sub_29E6D6564(&qword_2A1A7D690, type metadata accessor for SleepOnboardingTileGenerator, &unk_29E76C3E8);
  v15 = sub_29E5FEBF4(a2);
  v16 = qword_2A1A7D6C0;
  v28 = v11;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_29E74FE48();
  v18 = sub_29E61037C(v17, qword_2A1A7FA00);
  (*(*(v17 - 8) + 16))(v15 + *(v14 + 20), v18, v17);
  v19 = v29;
  (v12)(v10, v29, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v20, v10, v6);
  *(v22 + v21) = v28;
  sub_29E6D6178(0, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
  sub_29E6D623C();
  v23 = v30;
  sub_29E752848();
  sub_29E6D6564(&qword_2A1A7D4B8, sub_29E6D60E4, MEMORY[0x29EDB8AE8]);
  v24 = v32;
  v25 = sub_29E7528E8();
  (*(v31 + 8))(v23, v24);
  result = (*(v7 + 8))(v19, v6);
  *v15 = v25;
  return result;
}

uint64_t sub_29E6D3C1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E6D60E4(0);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74FEB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = *a1;
  v12 = *(v7 + 16);
  v29 = &v27 - v13;
  v12();
  v14 = type metadata accessor for SleepOnboardingTileGenerator(0);
  a2[3] = v14;
  a2[4] = sub_29E6D6564(&qword_2A1A7D690, type metadata accessor for SleepOnboardingTileGenerator, &unk_29E76C3E8);
  v15 = sub_29E5FEBF4(a2);
  v16 = qword_2A1A7D6C0;
  v28 = v11;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_29E74FE48();
  v18 = sub_29E61037C(v17, qword_2A1A7FA00);
  (*(*(v17 - 8) + 16))(v15 + *(v14 + 20), v18, v17);
  v19 = v29;
  (v12)(v10, v29, v6);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v7 + 32))(v22 + v20, v10, v6);
  *(v22 + v21) = v28;
  sub_29E6D6178(0, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
  sub_29E6D623C();
  v23 = v30;
  sub_29E752848();
  sub_29E6D6564(&qword_2A1A7D4B8, sub_29E6D60E4, MEMORY[0x29EDB8AE8]);
  v24 = v32;
  v25 = sub_29E7528E8();
  (*(v31 + 8))(v23, v24);
  result = (*(v7 + 8))(v19, v6);
  *v15 = v25;
  return result;
}

uint64_t sub_29E6D3FE0()
{

  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_domain;
  v2 = sub_29E74FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepOnboardingTileGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A7D5F0;
  if (!qword_2A1A7D5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6D40E8(uint64_t a1)
{
  result = sub_29E74FE48();
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

uint64_t sub_29E6D4194@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_domain;
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E6D4210()
{
  v22 = sub_29E74FE18();
  v0 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E750528();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74FE48();
  sub_29E6103B4(v7, qword_2A1A7FA00);
  v21[2] = sub_29E61037C(v7, qword_2A1A7FA00);
  v21[1] = sub_29E74FBE8();
  sub_29E6D6400(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29E74FB98();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E762F30;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3790], v8);
  sub_29E5FF364(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  sub_29E693FB8(v6);
  v12 = sub_29E750518();
  (*(v4 + 8))(v6, v3);
  if (v12 >> 62)
  {
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);

    v20 = sub_29E754E68();
    swift_bridgeObjectRelease_n();
    v12 = v20;
    v15 = v22;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;

    sub_29E755038();
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    v14 = swift_dynamicCastMetatype();
    v15 = v22;
    if (v14 || (v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v19 = v13 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v19 += 8;
        if (!--v18)
        {
          goto LABEL_3;
        }
      }

      v12 = v13 | 1;
    }
  }

  v16 = sub_29E6D5A94(v12, &qword_2A1A7D480, 0x29EDBAD78, &qword_2A1A7D478, sub_29E64A184);

  sub_29E6D463C(v16);

  (*(v0 + 104))(v2, *MEMORY[0x29EDC3898], v15);
  return sub_29E74FE38();
}

void sub_29E6D463C(uint64_t a1)
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
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29E754C98())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E5FF284(0);
  v3 = sub_29E754D48();
LABEL_6:
  if (sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29E754C88();
      sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
      sub_29E6D5C00(&qword_2A1A7D478, &qword_2A1A7D480, 0x29EDBAD78, MEMORY[0x29EDCA2F0]);
      sub_29E754588();
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
      sub_29E6D4B68(v35);
    }

    if (sub_29E754CC8())
    {
      sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_29E6D5C44(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_29E754C88();
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    sub_29E6D5C00(&qword_2A1A7D478, &qword_2A1A7D480, 0x29EDBAD78, MEMORY[0x29EDCA2F0]);
    sub_29E754588();
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
    if (!sub_29E754CC8())
    {
LABEL_38:
      sub_29E6D5C44(v1);
      goto LABEL_57;
    }

    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_29E754B78();
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

void sub_29E6D4B68(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29E754B78();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_29E754B88();

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

void (*sub_29E6D4CA8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED976A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29E6D6664;
  }

  __break(1u);
  return result;
}

void (*sub_29E6D4D28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED976A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29E6D4DA8;
  }

  __break(1u);
  return result;
}

char *sub_29E6D4DB0(void *a1, void *a2, void *a3, char *a4)
{
  v105 = a1;
  v112[1] = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  sub_29E6D6400(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v101 = &v93 - v8;
  sub_29E6D6464(0);
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v102 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752098();
  v99 = *(v11 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v98 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v93 - v14;
  v16 = OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord] = 0;
  v100 = OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings] = 0;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange] = 0;
  v17 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA758] sleepStore:a2];
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability] = v17;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepStore] = a2;
  v112[0] = 0;
  v108 = v17;
  v18 = a2;
  v19 = [v18 currentSleepEventRecordWithError_];
  v20 = v112[0];
  v107 = a3;
  if (v19)
  {
    v106 = 0;
    v21 = v19;
  }

  else
  {
    v97 = v11;
    v22 = v20;
    v23 = sub_29E74EA48();

    swift_willThrow();
    v106 = 0;
    sub_29E752068();
    v24 = v23;
    v25 = sub_29E752088();
    v26 = sub_29E7546A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v112[0] = v96;
      *v27 = 136446466;
      nullsub_1();
      v28 = sub_29E755178();
      LODWORD(v95) = v26;
      v30 = sub_29E6B9C90(v28, v29, v112);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v94 = &v93;
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v33 + 16))(&v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = sub_29E7541F8();
      v36 = sub_29E6B9C90(v34, v35, v112);

      *(v27 + 14) = v36;
      a3 = v107;
      _os_log_impl(&dword_29E5ED000, v25, v95, "[%{public}s]: Failed to read current sleep event record: %{public}s", v27, 0x16u);
      v37 = v96;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v37, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);
    }

    else
    {
    }

    v11 = v97;
    (v99)[1](v15, v97);
    v21 = 0;
  }

  v38 = *&a4[v16];
  *&a4[v16] = v21;
  v39 = v19;

  v112[0] = 0;
  v40 = v21;
  v41 = [v18 currentSleepSettingsWithError_];
  v42 = v112[0];
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v97 = v11;
    v44 = v42;
    v45 = sub_29E74EA48();

    swift_willThrow();
    v106 = 0;
    v46 = v98;
    sub_29E752068();
    v47 = v45;
    v48 = sub_29E752088();
    v49 = sub_29E7546A8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v96 = v39;
      v51 = v50;
      v95 = swift_slowAlloc();
      v112[0] = v95;
      *v51 = 136446466;
      nullsub_1();
      v52 = sub_29E755178();
      v54 = sub_29E6B9C90(v52, v53, v112);
      LODWORD(v94) = v49;
      v55 = v54;

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v56 = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](v56);
      (*(v58 + 16))(&v93 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
      v59 = sub_29E7541F8();
      v61 = sub_29E6B9C90(v59, v60, v112);

      *(v51 + 14) = v61;
      a3 = v107;
      _os_log_impl(&dword_29E5ED000, v48, v94, "[%{public}s]: Failed to read current sleep settings: %{public}s", v51, 0x16u);
      v62 = v95;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v62, -1, -1);
      v63 = v51;
      v39 = v96;
      MEMORY[0x29ED98410](v63, -1, -1);

      (v99)[1](v98, v97);
    }

    else
    {

      (v99)[1](v46, v97);
    }

    v43 = 0;
  }

  v99 = v18;
  v64 = *&a4[v100];
  *&a4[v100] = v43;
  v65 = v41;

  sub_29E602E20(a3, &a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver]);
  v66 = qword_2A1A7D610;
  v67 = v65;
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = off_2A1A7D620;
  v69 = sub_29E68B34C(MEMORY[0x29EDCA190]);
  v70 = MEMORY[0x2A1C7C4A8](v69);
  v72 = v108;
  v71 = ObjectType;
  *(&v93 - 6) = v108;
  *(&v93 - 5) = v21;
  *(&v93 - 4) = v43;
  *(&v93 - 3) = a3;
  *(&v93 - 2) = v71;
  v73 = sub_29E6D2EB4(v70, sub_29E6D65AC, (&v93 - 8), v68);

  v112[0] = v73;
  sub_29E6D6178(0, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability] = sub_29E7527E8();
  v74 = type metadata accessor for SleepOnboardingChangeDetector();
  v111.receiver = a4;
  v111.super_class = v74;
  v75 = objc_msgSendSuper2(&v111, sel_init);
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v76 = v75;
  v77 = sub_29E754908();
  [v72 registerObserver:v76 queue:v77];

  v78 = v76;
  v79 = v99;
  [v99 addObserver_];

  v80 = a3[3];
  v81 = a3[4];
  sub_29E601938(a3, v80);
  v112[0] = (*(v81 + 8))(v80, v81);
  v82 = [objc_opt_self() mainRunLoop];
  v110 = v82;
  v83 = sub_29E754BB8();
  v84 = *(*(v83 - 8) + 56);
  v106 = v67;
  v85 = v101;
  v84(v101, 1, 1, v83);
  sub_29E622640();
  sub_29E609B5C(0, &unk_2A1A7D420, 0x29EDB8E48);
  sub_29E6D6564(&qword_2A1A7D4F0, sub_29E622640, MEMORY[0x29EDB8A58]);
  sub_29E6D5C00(&qword_2A1A7D430, &unk_2A1A7D420, 0x29EDB8E48, MEMORY[0x29EDB9E18]);
  v86 = v102;
  sub_29E752968();
  sub_29E6D65D0(v85);

  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v88 = swift_allocObject();
  v89 = ObjectType;
  *(v88 + 16) = v87;
  *(v88 + 24) = v89;
  sub_29E6D6564(&qword_2A1A7D510, sub_29E6D6464, MEMORY[0x29EDB89E8]);
  v90 = v104;
  v91 = sub_29E7529A8();

  (*(v103 + 8))(v86, v90);
  *&v78[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange] = v91;

  sub_29E5FECBC(v107);
  return v78;
}

unint64_t *sub_29E6D5A94(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E754C98())
  {
    v12 = sub_29E609B5C(0, a2, a3);
    v13 = sub_29E6D5C00(a4, a2, a3, MEMORY[0x29EDCA2F0]);
    result = MEMORY[0x29ED96E90](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x29ED976A0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_29E754C98();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29E6D5C00(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E609B5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6D5C4C(uint64_t a1)
{
  if (!qword_2A1A7D530)
  {
    sub_29E6D6178(255, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E66257C();
    sub_29E6D5D94();
    v1 = sub_29E752608();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D530);
    }
  }
}

void sub_29E6D5CF8(uint64_t a1)
{
  if (!qword_2A1A7D4A0)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29E6D6564(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier, &unk_29E762320);
    v1 = sub_29E754098();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D4A0);
    }
  }
}

unint64_t sub_29E6D5D94()
{
  result = qword_2A1A7D4E0;
  if (!qword_2A1A7D4E0)
  {
    sub_29E6D6178(255, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D4E0);
  }

  return result;
}

void sub_29E6D5E1C(uint64_t a1)
{
  if (!qword_2A1A7D518)
  {
    sub_29E6D6178(255, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E6D5D94();
    v1 = sub_29E752658();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D518);
    }
  }
}

void sub_29E6D5EB0(uint64_t a1)
{
  if (!qword_2A1A7D528)
  {
    sub_29E6D5E1C(255);
    sub_29E66257C();
    sub_29E6D6564(&qword_2A1A7D520, sub_29E6D5E1C, MEMORY[0x29EDB8940]);
    v1 = sub_29E752638();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D528);
    }
  }
}

uint64_t sub_29E6D5F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E74FEB8();

  return sub_29E6D3C1C(a1, a2);
}

uint64_t sub_29E6D5FDC()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E6D6064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E74FEB8();

  return sub_29E6D3858(a1, a2);
}

void sub_29E6D60E4(uint64_t a1)
{
  if (!qword_2A1A7D4B0)
  {
    sub_29E6D6178(255, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
    sub_29E6D623C();
    v1 = sub_29E752858();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D4B0);
    }
  }
}

void sub_29E6D6178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6D61EC()
{
  if (!qword_2A1A7D498)
  {
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D498);
    }
  }
}

unint64_t sub_29E6D623C()
{
  result = qword_2A1A7D500;
  if (!qword_2A1A7D500)
  {
    sub_29E6D6178(255, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D500);
  }

  return result;
}

uint64_t sub_29E6D62C8()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E6D6364@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E7153C0(a1, v1 + v4, v5);
}

void sub_29E6D6400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6D6464(uint64_t a1)
{
  if (!qword_2A1A7D508)
  {
    sub_29E622640();
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E6D6564(&qword_2A1A7D4F0, sub_29E622640, MEMORY[0x29EDB8A58]);
    sub_29E6D5C00(&qword_2A1A7D430, &unk_2A1A7D420, 0x29EDB8E48, MEMORY[0x29EDB9E18]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D508);
    }
  }
}

uint64_t sub_29E6D6564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6D65D0(uint64_t a1)
{
  sub_29E6D6400(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SleepCoachingOnboardingTileActionHandler(uint64_t a1)
{
  result = qword_2A1A7D320;
  if (!qword_2A1A7D320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_29E6D6704@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_2A1A7D338;
  swift_beginAccess();
  sub_29E6A127C(v1 + v3, &v6);
  if (*(&v7 + 1) == 1)
  {
    sub_29E6D6FD4(&v6);
    sub_29E7499A4(0xD000000000000019, 0x800000029E75ECE0, 0);
    sub_29E69FA08(a1, &v6);
    swift_beginAccess();
    sub_29E6A12E0(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_29E6D67DC()
{
  ObjectType = swift_getObjectType();
  v48 = sub_29E74F488();
  v46 = *(v48 - 8);
  MEMORY[0x2A1C7C4A8](v48);
  v44 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_29E74F4A8();
  v45 = *(v47 - 8);
  MEMORY[0x2A1C7C4A8](v47);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E752098();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E7515A8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E750698();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v37 - v15;
  sub_29E7518B8();
  sub_29E751578();
  (*(v7 + 8))(v9, v6);
  sub_29E601938(v50, v50[3]);
  sub_29E751538();
  sub_29E5FECBC(v50);
  sub_29E752048();
  v17 = *(v11 + 16);
  v49 = v10;
  v17(v14, v16, v10);
  v40 = v5;
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v20 = 136446466;
    v21 = sub_29E755178();
    v23 = sub_29E6B9C90(v21, v22, v50);
    ObjectType = v0;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    sub_29E6D70A0(&qword_2A1858B18, MEMORY[0x29EDC1D90], MEMORY[0x29EDC1DA0]);
    v25 = v49;
    v26 = sub_29E754FD8();
    v28 = v27;
    v29 = v25;
    v30 = *(v11 + 8);
    v30(v14, v29);
    v31 = sub_29E6B9C90(v26, v28, v50);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Sleep coaching onboarding button tapped (presentation: %{public}s", v20, 0x16u);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v32, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);
  }

  else
  {

    v30 = *(v11 + 8);
    v30(v14, v49);
  }

  (*(v41 + 8))(v40, v42);
  v33 = *MEMORY[0x29EDC67E0];
  v34 = sub_29E71237C();
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v33 presentation:v34];

  (*(v46 + 104))(v44, *MEMORY[0x29EDC6A60], v48);
  v35 = v43;
  sub_29E74F498();
  sub_29E749B58(v35, 0, 0);
  (*(v45 + 8))(v35, v47);
  return (v30)(v16, v49);
}

uint64_t sub_29E6D6DB8(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  v8 = &v7[qword_2A1A7D338];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  *(v8 + 24) = xmmword_29E768E70;
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29E6D6EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepCoachingOnboardingTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6D6FD4(uint64_t a1)
{
  sub_29E6D704C(0, &qword_2A1A7CF88, sub_29E63DE6C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6D704C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6D70A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LatestSleepScoreSnapshotDataSource(uint64_t a1)
{
  result = qword_2A18596E0;
  if (!qword_2A18596E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6D7190(void *a1, int a2)
{
  v97 = a2;
  v112 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6D884C(0, &qword_2A1856C88, MEMORY[0x29EDC6C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v101 = &v88 - v4;
  sub_29E6D884C(0, &qword_2A1856C90, MEMORY[0x29EDC6C38], v2);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v98 = &v88 - v6;
  v103 = sub_29E74FB08();
  v102 = *(v103 - 8);
  MEMORY[0x2A1C7C4A8](v103);
  v99 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29E754048();
  v94 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95);
  v107 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74F0D8();
  v10 = *(v9 - 8);
  v116 = v9;
  v117 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v106 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v88 - v13;
  v108 = sub_29E74ED28();
  v118 = *(v108 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v108);
  v105 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v115 = &v88 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v88 - v19;
  v21 = sub_29E74EDB8();
  v22 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E74EE78();
  v88 = *(v25 - 8);
  v26 = v88;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v104 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v88 - v30;
  v90 = &v88 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29);
  v34 = &v88 - v33;
  MEMORY[0x2A1C7C4A8](v32);
  v36 = &v88 - v35;
  (*(v22 + 104))(v24, *MEMORY[0x29EDB9C78], v21);
  v114 = v36;
  sub_29E74EDC8();
  (*(v22 + 8))(v24, v21);
  v113 = v20;
  sub_29E74ECE8();
  sub_29E74F148();
  sub_29E74F138();
  v100 = v14;
  sub_29E74F128();

  v37 = *(v26 + 16);
  v37(v34, v36, v25);
  v39 = v118 + 16;
  v38 = *(v118 + 16);
  v40 = v115;
  v41 = v20;
  v42 = v108;
  v38(v115, v41, v108);
  v93 = v39;
  v92 = v38;
  (*(v117 + 16))(v106, v14, v116);
  v91 = v37;
  v37(v31, v34, v25);
  v43 = v40;
  v44 = v40;
  v45 = v42;
  v38(v105, v44, v42);
  v37(v104, v34, v25);
  v46 = v112;
  v89 = v46;
  v47 = v107;
  sub_29E754008();
  v48 = *(v118 + 8);
  v118 += 8;
  v112 = v48;
  (v48)(v43, v45);
  v49 = v88;
  v50 = *(v88 + 8);
  v110 = v88 + 8;
  v111 = v50;
  v50(v34, v25);
  type metadata accessor for SleepScoreRoomModelProvider(0);
  v51 = swift_allocObject();
  v52 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel;
  v53 = type metadata accessor for SleepScoreRoomModel(0);
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  *(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel) = 0;
  *(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) = 0;
  *(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery) = 0;
  *(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_hasReceivedQueryResult) = 0;
  v54 = (v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler);
  *v54 = 0;
  v54[1] = 0;
  *(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) = v46;
  v55 = *(v49 + 32);
  v56 = v90;
  v55(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_gregorianCalendar, v90, v25);
  (*(v94 + 32))(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_today, v47, v95);
  (*(v117 + 32))(v51 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_algorithmVersion, v106, v116);
  v95 = qword_2A18596C8;
  *(v109 + qword_2A18596C8) = v51;
  v57 = v34;
  v58 = v91;
  v91(v34, v114, v25);
  v59 = v115;
  v60 = v92;
  v92(v115, v113, v45);
  v58(v56, v57, v25);
  v60(v105, v59, v45);
  v96 = v25;
  v58(v104, v57, v25);
  v61 = v89;
  v106 = v61;
  v62 = v107;
  sub_29E754008();
  type metadata accessor for VitalsRoomModelProvider(0);
  swift_allocObject();
  v63 = sub_29E6B2018(v61, v56, v62);

  (v112)(v115, v45);
  v111(v57, v25);
  v64 = qword_2A18596D0;
  v65 = v109;
  *(v109 + qword_2A18596D0) = v63;
  LOBYTE(v14) = v97;
  *(v65 + qword_2A18596D8) = v97;
  v66 = MEMORY[0x29EDC9E90];
  sub_29E6D884C(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6D884C(0, &qword_2A185A510, sub_29E61BFEC, v66);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_29E764170;
  v68 = *(v65 + v95);
  v69 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel;
  swift_beginAccess();
  v70 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  *(v67 + 56) = v70;
  *(v67 + 64) = sub_29E6D88B0(&qword_2A18596F8, type metadata accessor for LatestSleepScoreVisualizationItem, &unk_29E765344);
  v71 = sub_29E5FEBF4((v67 + 32));
  sub_29E62D760(v68 + v69, v71);
  *(v71 + *(v70 + 20)) = (*(v68 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_hasReceivedQueryResult) & 1) == 0;
  v72 = sub_29E74FAA8();
  (*(*(v72 - 8) + 56))(v98, 1, 1, v72);
  v73 = sub_29E74FAD8();
  (*(*(v73 - 8) + 56))(v101, 1, 1, v73);
  v74 = v99;
  sub_29E74FAE8();
  v75 = type metadata accessor for SleepStageWidgetItem(0);
  *(v67 + 96) = v75;
  *(v67 + 104) = sub_29E6D88B0(&qword_2A1859700, type metadata accessor for SleepStageWidgetItem, &unk_29E763C18);
  v76 = sub_29E5FEBF4((v67 + 72));
  (*(v102 + 32))(v76, v74, v103);
  *(v76 + *(v75 + 20)) = v14;
  v77 = *(v65 + v64);
  v78 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel;
  swift_beginAccess();
  v79 = type metadata accessor for VitalsWidgetItem(0);
  *(v67 + 136) = v79;
  *(v67 + 144) = sub_29E6D88B0(&qword_2A1859708, type metadata accessor for VitalsWidgetItem, &unk_29E767AD4);
  v80 = sub_29E5FEBF4((v67 + 112));
  v81 = sub_29E7500C8();
  (*(*(v81 - 8) + 16))(v80, v77 + v78, v81);
  *(v80 + *(v79 + 20)) = v14;
  sub_29E750C98();
  v82 = sub_29E750D08();
  v83 = swift_allocObject();
  swift_weakInit();
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v14;
  swift_retain_n();

  sub_29E6B610C(sub_29E6D88F8, v84);

  v85 = swift_allocObject();
  swift_weakInit();

  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v14;

  sub_29E6AFF88(sub_29E6D8904, v86);

  (*(v117 + 8))(v100, v116);
  (v112)(v113, v108);
  v111(v114, v96);

  return v82;
}

uint64_t sub_29E6D80A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x29EDC9C68];
  sub_29E6D884C(0, &qword_2A1856C88, MEMORY[0x29EDC6C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v25 = v26 - v7 + 16;
  v8 = sub_29E74FB18();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_29E6D884C(0, &qword_2A1856C90, MEMORY[0x29EDC6C38], v5);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v26 - v13 + 16;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v15 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
    v27 = v15;
    v28 = sub_29E6D88B0(&qword_2A18596F8, type metadata accessor for LatestSleepScoreVisualizationItem, &unk_29E765344);
    v16 = a3;
    v17 = sub_29E5FEBF4(v26);
    sub_29E6D8910(a1, v17);
    v18 = type metadata accessor for SleepScoreRoomModel(0);
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    *(v17 + *(v15 + 20)) = 0;
    a3 = v16;
    sub_29E750D38();

    sub_29E5FECBC(v26);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E6163F8();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E764160;
    *(v20 + 32) = sub_29E74EFF8();
    (*(v9 + 104))(v11, *MEMORY[0x29EDC6C60], v8);
    sub_29E74FA98();
    v21 = sub_29E74FAA8();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
    v22 = sub_29E74FAD8();
    (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
    v23 = type metadata accessor for SleepStageWidgetItem(0);
    v27 = v23;
    v28 = sub_29E6D88B0(&qword_2A1859700, type metadata accessor for SleepStageWidgetItem, &unk_29E763C18);
    v24 = sub_29E5FEBF4(v26);
    sub_29E74FAE8();
    *(v24 + *(v23 + 20)) = a3;
    sub_29E750D38();

    return sub_29E5FECBC(v26);
  }

  return result;
}

uint64_t sub_29E6D84C0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = type metadata accessor for VitalsWidgetItem(0);
    v9[3] = v6;
    v9[4] = sub_29E6D88B0(&qword_2A1859708, type metadata accessor for VitalsWidgetItem, &unk_29E767AD4);
    v7 = sub_29E5FEBF4(v9);
    v8 = sub_29E7500C8();
    (*(*(v8 - 8) + 16))(v7, a1, v8);
    *(v7 + *(v6 + 20)) = a3;
    sub_29E750D38();

    return sub_29E5FECBC(v9);
  }

  return result;
}

uint64_t sub_29E6D8608()
{
}

uint64_t sub_29E6D8648()
{
  sub_29E750D58();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6D86DC(uint64_t a1)
{
  v1 = [sub_29E751098() traitCollection];
  sub_29E751758();
  v2 = [v1 preferredContentSizeCategory];

  v3 = [sub_29E751098() traitCollection];
  sub_29E751758();
  v4 = sub_29E754938();

  v5 = v2;
  v6 = sub_29E6B3B54(v4, v5);
  v8 = v7;
  v10 = v9;
  v11 = v6;
  v13 = v12;
  sub_29E6D8800();
  v14 = sub_29E6B338C(v11, v13, v8, v10);
  v15 = sub_29E754A38();

  return v15;
}

unint64_t sub_29E6D8800()
{
  result = qword_2A18596F0;
  if (!qword_2A18596F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A18596F0);
  }

  return result;
}

void sub_29E6D884C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6D88B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6D8910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreRoomModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6D89A0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_29E754A58();
  a3[3] = &type metadata for SharingChartItem;
  a3[4] = sub_29E62E3FC();
  v7 = a2;
  v8 = a1;

  *a3 = v7;
  a3[1] = v8;
  a3[2] = v6;
  return result;
}

uint64_t sub_29E6D8A74(uint64_t a1)
{
  v2 = sub_29E7511A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_29E751198();
  v7 = sub_29E751188();
  v9 = v8;
  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_29E6D8B84(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E750528();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  MEMORY[0x2A1C7C4A8](v7);
  v8 = sub_29E7504F8();
  v9 = [v8 categoryID];

  if (v9 == 5)
  {
    sub_29E6E78F8(a1);
  }

  else
  {
    (*(v4 + 16))(v6, a1, v3);
    sub_29E750A78();
    sub_29E750A58();
    sub_29E750A88();
    v10 = objc_allocWithZone(sub_29E750CC8());
    sub_29E750CB8();
  }
}

uint64_t type metadata accessor for ScheduleOffDataSource(uint64_t a1)
{
  result = qword_2A1859728;
  if (!qword_2A1859728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6D8FB4(uint64_t a1)
{
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C(0);
  v25 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D9940(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v24 - v14;
  type metadata accessor for SleepRoomDisabledScheduleSection(0);
  swift_allocObject();
  sub_29E748360();
  sub_29E7527B8();
  if (BYTE1(v28) & 1 | ((v28 & BYTE2(v28) & 1) == 0))
  {
    v16 = MEMORY[0x29EDC1FF8];
  }

  else
  {
    v16 = MEMORY[0x29EDC2000];
  }

  (*(v10 + 104))(v15, *v16, v9);
  type metadata accessor for ScheduleOffDataSource(0);
  *(swift_allocObject() + qword_2A1859710) = MEMORY[0x29EDCA1A0];
  (*(v10 + 16))(v13, v15, v9);

  v17 = sub_29E750918();
  (*(v10 + 8))(v15, v9);
  v28 = a1;
  sub_29E602DD4();
  swift_retain_n();
  v18 = sub_29E754908();
  v29 = v18;
  v19 = sub_29E7548D8();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_29E621428();
  sub_29E6D99AC(&qword_2A18572A8, sub_29E621428, MEMORY[0x29EDB8A70]);
  sub_29E6D99AC(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  sub_29E752968();
  sub_29E6214E8(v4);

  v20 = swift_allocObject();
  swift_weakInit();

  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = v26;
  sub_29E6D99AC(&qword_2A18572B8, sub_29E62133C, MEMORY[0x29EDB89E8]);

  v22 = v25;
  sub_29E7529A8();

  (*(v27 + 8))(v7, v22);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  return v17;
}

uint64_t sub_29E6D948C()
{
  type metadata accessor for ScheduleOffDataSource(0);

  sub_29E6D8FB4(v0);
  sub_29E6D99AC(&qword_2A1859738, type metadata accessor for ScheduleOffDataSource, MEMORY[0x29EDC2030]);
  sub_29E750828();

  v1 = sub_29E750818();

  return v1;
}

uint64_t sub_29E6D954C(uint64_t a1, uint64_t a2)
{
  sub_29E6D9940(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if (v9[6] & 1 | ((v9[5] & v9[7] & 1) == 0))
    {
      v7 = MEMORY[0x29EDC1FF8];
    }

    else
    {
      v7 = MEMORY[0x29EDC2000];
    }

    (*(v4 + 104))(v6, *v7, v3);
    sub_29E750908();
  }
}

uint64_t sub_29E6D9700(uint64_t a1, uint64_t a2)
{
  sub_29E6D9940(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + qword_2A1859710) = MEMORY[0x29EDCA1A0];
  (*(v5 + 16))(v7, a2, v4);
  v8 = sub_29E750918();
  (*(v5 + 8))(a2, v4);
  return v8;
}

uint64_t sub_29E6D9834()
{
  sub_29E750938();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6D988C(uint64_t a1, int a2)
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

uint64_t sub_29E6D98D4(uint64_t result, int a2, int a3)
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

void sub_29E6D9940(uint64_t a1)
{
  if (!qword_2A1859740)
  {
    type metadata accessor for SleepRoomDisabledScheduleSection(255);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859740);
    }
  }
}

uint64_t sub_29E6D99AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_29E6D99F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v7 = OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_textView;
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_textView] = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_imageView] = v8;
  sub_29E6163F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E7655E0;
  v10 = *&v4[v7];
  *(v9 + 32) = v8;
  *(v9 + 40) = v10;
  v11 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  sub_29E609B5C(0, &qword_2A1859770, 0x29EDC7DA0);
  v12 = v8;
  v13 = v10;
  v14 = sub_29E7543D8();

  v15 = [v11 initWithArrangedSubviews_];

  *&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_stackView] = v15;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for IllustratedListItemView();
  v16 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v16 setLayoutMargins_];
  v17 = *&v16[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_textView];
  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setNumberOfLines_];
  v18 = sub_29E754198();
  [v17 setText_];

  v19 = [objc_opt_self() preferredFontForTextStyle_];
  [v17 setFont_];

  sub_29E6D9EAC(a3, a4);

  sub_29E6DA0EC();
  sub_29E6DA5DC(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E762F30;
  v21 = sub_29E752288();
  v22 = MEMORY[0x29EDC7870];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E6DA6E8();
  sub_29E754B18();

  sub_29E751758();

  return v16;
}

void sub_29E6D9D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_29E6DA3E4();
  }

  else
  {
  }
}

void sub_29E6D9EAC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_imageView);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v4 = qword_2A1A7FA18;
  v5 = sub_29E754198();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  [v3 setImage_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setContentMode_];
  [v3 setClipsToBounds_];
  v7 = objc_opt_self();
  sub_29E6163F8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E7655E0;
  v9 = [v3 heightAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v8 + 32) = v10;
  v11 = [v3 widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v8 + 40) = v12;
  sub_29E609B5C(0, &qword_2A185AC70, 0x29EDBA008);
  v13 = sub_29E7543D8();

  [v7 activateConstraints_];
}

void sub_29E6DA0EC()
{
  sub_29E6DA3E4();
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_stackView];
  [v1 setSpacing_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = objc_opt_self();
  sub_29E6163F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E7678B0;
  v4 = [v1 topAnchor];
  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v1 bottomAnchor];
  v13 = [v0 layoutMarginsGuide];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v1 trailingAnchor];
  v17 = [v0 layoutMarginsGuide];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v3 + 56) = v19;
  sub_29E609B5C(0, &qword_2A185AC70, 0x29EDBA008);
  v20 = sub_29E7543D8();

  [v2 activateConstraints_];
}

id sub_29E6DA3E4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_29E7549D8();
  v4 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_stackView];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  [v4 setAxis_];

  return [v4 setAlignment_];
}

id sub_29E6DA528()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IllustratedListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E6DA5DC(uint64_t a1)
{
  if (!qword_2A1859778)
  {
    sub_29E6DA634();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859778);
    }
  }
}

unint64_t sub_29E6DA634()
{
  result = qword_2A1859780;
  if (!qword_2A1859780)
  {
    sub_29E6DA67C();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1859780);
  }

  return result;
}

unint64_t sub_29E6DA67C()
{
  result = qword_2A1859788;
  if (!qword_2A1859788)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1859788);
  }

  return result;
}

unint64_t sub_29E6DA6E8()
{
  result = qword_2A1859790;
  if (!qword_2A1859790)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1859790);
  }

  return result;
}

uint64_t sub_29E6DA778(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_29E6DADA0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29E6DA86C(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_29E6DB1E8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_29E6DCB60(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_29E6DB1E8((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_29E6D5C44(result);
  *v1 = v4;
  return result;
}

void *sub_29E6DAB28(void *result)
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

  result = sub_29E6DB584(result, v10, 1, v3, &qword_2A1A7D3F0, &qword_2A1A7D6B8, MEMORY[0x29EDC38F8]);
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

  sub_29E609CF8(0, &qword_2A1A7D6B8, MEMORY[0x29EDC38F8]);
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

uint64_t sub_29E6DAC78(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_29E754C98();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_29E754C98();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29E6DAD78@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_29E6DADA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859798, &type metadata for SleepScoreInfographicContentItem);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E6DAEE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A18597C0, &type metadata for SleepOptionSetting);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E6DAFDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6DD0F4(0, &qword_2A1859810, sub_29E6DD268);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E6DB0F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A18597B8, &type metadata for SleepRoomViewController.RightBarButtonItem);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E6DB1E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0]);
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
    v10 = MEMORY[0x29EDCA190];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E6DB314(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859828, MEMORY[0x29EDC9AD8]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_29E6DB41C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E6DD0F4(0, &qword_2A1A7D3E8, sub_29E6C1224);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E6C1224();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E6DB584(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_29E6DD09C(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E609CF8(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_29E6DB70C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1A7BD20, MEMORY[0x29EDC3A38]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E6DB82C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6DD0F4(0, &qword_2A1A7BCE8, type metadata accessor for HKAppleSleepingBreathingDisturbancesClassification);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_29E6DB974(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E6DD0F4(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}