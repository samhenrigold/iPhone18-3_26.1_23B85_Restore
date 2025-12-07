uint64_t sub_1E61FF640()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DBEF8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1E6434F88((v0 + v2), v0 + v5, v7, v8);
}

uint64_t sub_1E61FF73C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *(type metadata accessor for AppComposer(0) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E5DFA78C;

  return sub_1E64B5C28(a1, a2, a3, v5 + v13, a4, a5);
}

uint64_t objectdestroy_23Tm()
{
  v105 = type metadata accessor for AppComposer(0);
  v101 = *(*(v105 - 1) + 80);
  v97 = *(*(v105 - 1) + 64);
  v103 = sub_1E65DBDF8();
  v100 = *(v103 - 8);
  v96 = *(v100 + 80);
  v95 = *(v100 + 64);
  v102 = sub_1E65DBB28();
  v98 = *(v102 - 8);
  v94 = *(v98 + 80);
  v104 = v0;
  v99 = (v101 + 16) & ~v101;
  v91 = v0 + v99;

  v1 = v0 + v99 + v105[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v93 = type metadata accessor for AccountService();
  v92 = *(v93[-1].Description + 1);
  v92(v1 + v3, v93);
  v4 = v2[7];
  v90 = type metadata accessor for AppStateService();
  v89 = *(v90[-1].Description + 1);
  v89(v1 + v4, v90);
  v5 = v2[8];
  v88 = type metadata accessor for ArchivedSessionService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v5, v88);
  v6 = v2[9];
  v86 = type metadata accessor for AssetService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v6, v86);
  v7 = v2[10];
  v84 = type metadata accessor for AwardsService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v7, v84);
  v8 = v2[11];
  v82 = type metadata accessor for BookmarkService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v8, v82);
  v9 = v2[12];
  v80 = type metadata accessor for CatalogService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v9, v80);
  v10 = v2[13];
  v78 = type metadata accessor for ConfigurationService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v10, v78);
  v11 = v2[14];
  v76 = type metadata accessor for ContentAvailabilityService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v11, v76);
  v12 = v2[15];
  v74 = type metadata accessor for EngagementService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v12, v74);
  v13 = v2[16];
  v72 = type metadata accessor for HealthDataService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v13, v72);
  v14 = v2[17];
  v70 = type metadata accessor for InteropService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v14, v70);
  v15 = v2[18];
  v68 = type metadata accessor for LocalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v15, v68);
  v16 = v2[19];
  v66 = type metadata accessor for MarketingService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v16, v66);
  v17 = v2[20];
  v64 = type metadata accessor for MetricService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v17, v64);
  v18 = v2[21];
  v62 = type metadata accessor for PersonalizationService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v18, v62);
  v19 = v2[22];
  v60 = type metadata accessor for PlayerService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v19, v60);
  v20 = v2[23];
  v58 = type metadata accessor for PrivacyPreferenceService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v20, v58);
  v21 = v2[24];
  v56 = type metadata accessor for RecommendationService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v21, v56);
  v22 = v2[25];
  v54 = type metadata accessor for RemoteBrowsingService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v22, v54);
  v23 = v2[26];
  v52 = type metadata accessor for SearchService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v23, v52);
  v24 = v2[27];
  v50 = type metadata accessor for ServiceSubscriptionService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v24, v50);
  v25 = v2[28];
  v43 = type metadata accessor for SessionService();
  v48 = *(v43[-1].Description + 1);
  v48(v1 + v25, v43);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v47 = *(v27[-1].Description + 1);
  v47(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v46 = *(v29[-1].Description + 1);
  v46(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v45 = *(v31[-1].Description + 1);
  v45(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v44 = *(QueueService[-1].Description + 1);
  v44(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v42 = *(v35[-1].Description + 1);
  v42(v1 + v34, v35);

  v36 = v91 + v105[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v92(v37 + v2[6], v93);
  v89(v37 + v2[7], v90);
  v87(v37 + v2[8], v88);
  v85(v37 + v2[9], v86);
  v83(v37 + v2[10], v84);
  v81(v37 + v2[11], v82);
  v79(v37 + v2[12], v80);
  v77(v37 + v2[13], v78);
  v75(v37 + v2[14], v76);
  v73(v37 + v2[15], v74);
  v71(v37 + v2[16], v72);
  v69(v37 + v2[17], v70);
  v67(v37 + v2[18], v68);
  v65(v37 + v2[19], v66);
  v63(v37 + v2[20], v64);
  v61(v37 + v2[21], v62);
  v59(v37 + v2[22], v60);
  v57(v37 + v2[23], v58);
  v55(v37 + v2[24], v56);
  v53(v37 + v2[25], v54);
  v51(v37 + v2[26], v52);
  v49(v37 + v2[27], v50);
  v48(v37 + v2[28], v43);
  v47(v37 + v2[29], v27);
  v46(v37 + v2[30], v29);
  v45(v37 + v2[31], v31);

  v44(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v42(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v91 + v105[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v91 + v105[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = (v99 + v97 + v96) & ~v96;
  v40 = (((v95 + v39 + 7) & 0xFFFFFFFFFFFFFFF8) + v94 + 16) & ~v94;
  (*(v100 + 8))(v104 + v39, v103);

  (*(v98 + 8))(v104 + v40, v102);

  return swift_deallocObject();
}

uint64_t sub_1E620065C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DBDF8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1E65DBB28() - 8);
  v8 = *(v0 + v6);
  v9 = *(v0 + v6 + 8);
  v10 = v0 + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E64B5520((v0 + v2), v0 + v5, v8, v9, v10);
}

uint64_t sub_1E6200798(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61FE1D0(a1, a2, v2 + v7);
}

uint64_t sub_1E6200880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E62008D0()
{
  v1 = v0;
  v2 = sub_1E65E0FD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5FC55E8(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v10 = *v8;
        v11 = v8[1];
        v12 = 0x6E656D7069757165;
        v13 = 0xEA00000000005F74;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        v12 = 0x7974696C61646F6DLL;
        v13 = 0xE90000000000005FLL;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v19 = 0;
        v20 = 0xE000000000000000;
        sub_1E65E68A8();

        v19 = 0x75645F616964656DLL;
        v20 = 0xEF5F6E6F69746172;
        v15 = sub_1E65E0F98();
        MEMORY[0x1E694D7C0](v15);

        v16 = v19;
        (*(v3 + 8))(v5, v2);
        return v16;
      }

      v10 = *v8;
      v11 = v8[1];
      v12 = 0x636F665F79646F62;
      v13 = 0xEB000000005F7375;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v10 = *v8;
      v11 = v8[1];
      v12 = 0x65675F636973756DLL;
      v14 = 1600483950;
    }

    else
    {
      v10 = *v8;
      v11 = v8[1];
      v12 = 0x656C5F6C6C696B73;
      v14 = 1600939382;
    }

    v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v10 = *v8;
    v11 = v8[1];
    v12 = 0x5F656D656874;
    v13 = 0xE600000000000000;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v10 = *v8;
    v11 = v8[1];
    v12 = 0x5F72656E69617274;
    v13 = 0xE800000000000000;
LABEL_19:
    v19 = v12;
    v20 = v13;
    v18 = v11;
    goto LABEL_20;
  }

  v19 = 0x5F7469617274;
  v20 = 0xE600000000000000;
  v10 = sub_1E65E0D38();
LABEL_20:
  MEMORY[0x1E694D7C0](v10, v18);

  return v19;
}

uint64_t sub_1E6200BE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5FC55E8(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1E601B6C4(v6);
        v8 = MEMORY[0x1E69CC4C8];
      }

      else
      {
        sub_1E601B6C4(v6);
        v8 = MEMORY[0x1E69CC4B0];
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v9 = *MEMORY[0x1E69CC4A0];
        v10 = sub_1E65D9908();
        (*(*(v10 - 8) + 104))(a1, v9, v10);
        return sub_1E601B6C4(v6);
      }

      sub_1E601B6C4(v6);
      v8 = MEMORY[0x1E69CC4C0];
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1E601B6C4(v6);
      v8 = MEMORY[0x1E69CC470];
    }

    else
    {
      sub_1E601B6C4(v6);
      v8 = MEMORY[0x1E69CC430];
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_1E601B6C4(v6);
    v8 = MEMORY[0x1E69CC478];
  }

  else if (EnumCaseMultiPayload == 7)
  {
    sub_1E601B6C4(v6);
    v8 = MEMORY[0x1E69CC490];
  }

  else
  {
    v8 = MEMORY[0x1E69CC480];
  }

  v12 = *v8;
  v13 = sub_1E65D9908();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

uint64_t sub_1E6200DD8(uint64_t a1, unint64_t a2, void *a3)
{
  v56 = a2;
  v57 = a3;
  v5 = sub_1E65D76F8();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v52 = *(v7 - 8);
  v63 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A60, &qword_1E65F76D8);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v47 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A68, &qword_1E65F76E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A70, &qword_1E65F76E8);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v55 = &v47 - v17;
  v47 = v15;
  v48 = v3;
  v58 = *v3;
  sub_1E5E1DEAC(v3, v15);
  v18 = *(v13 + 80);
  v19 = ((v18 + 16) & ~v18) + v14;
  v20 = (v18 + 16) & ~v18;
  v51 = v20;
  v49 = v19;
  v50 = v18 | 7;
  v21 = swift_allocObject();
  sub_1E5E1FA80(v15, v21 + v20);
  sub_1E604C89C();
  sub_1E65DEB58();
  sub_1E65DE8C8();
  v22 = a1;
  v23 = a1;
  v24 = v9;
  sub_1E6202E08(v23, v9);
  v26 = v53;
  v25 = v54;
  v27 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v27, v56, v54);
  v28 = *(v52 + 80);
  v29 = (v28 + 16) & ~v28;
  v56 = v29 + v63;
  v30 = (v29 + v63 + *(v26 + 80)) & ~*(v26 + 80);
  v31 = swift_allocObject();
  sub_1E6202E78(v24, v31 + v29);
  (*(v26 + 32))(v31 + v30, v27, v25);
  sub_1E6202E08(v22, v24);
  v32 = swift_allocObject();
  sub_1E6202E78(v24, v32 + v29);
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  v56 = sub_1E6203058();
  sub_1E65E4DE8();
  v33 = v47;
  sub_1E5E1DEAC(v48, v47);
  v54 = v57[9];
  v34 = v57;
  sub_1E6202E08(v22, v24);
  v35 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + v28 + 80) & ~v28;
  v37 = swift_allocObject();
  sub_1E5E1FA80(v33, v37 + v51);
  v38 = (v37 + v35);
  v39 = v34[3];
  v38[2] = v34[2];
  v38[3] = v39;
  v38[4] = v34[4];
  v40 = v34[1];
  *v38 = *v34;
  v38[1] = v40;
  sub_1E6202E78(v24, v37 + v36);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1E62030BC;
  *(v41 + 24) = v37;

  v42 = v55;
  v43 = v64;
  v44 = v62;
  v45 = sub_1E65E4F08();

  (*(v60 + 8))(v43, v61);
  (*(v59 + 8))(v42, v44);
  return v45;
}

uint64_t sub_1E6201444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65F76D0, v6);
}

uint64_t sub_1E6201570()
{
  *(v0 + 32) = 0;
  sub_1E65E6058();
  *(v0 + 24) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6203294, v2, v1);
}

uint64_t sub_1E6201638(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A80, &qword_1E65F7710);
  *(v2 + 280) = v4;
  *(v2 + 288) = *(v4 - 8);
  *(v2 + 296) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A88, &qword_1E65F7718);
  *(v2 + 304) = v5;
  *(v2 + 312) = *(v5 - 8);
  *(v2 + 320) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A90, &qword_1E65F7720);
  *(v2 + 328) = v6;
  *(v2 + 336) = *(v6 - 8);
  *(v2 + 344) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A98, &qword_1E65F7728);
  *(v2 + 352) = v7;
  *(v2 + 360) = *(v7 - 8);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = *a1;
  *(v2 + 600) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6201854, 0, 0);
}

uint64_t sub_1E6201854()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 272);
  v3 = *(v2 + *(type metadata accessor for AppComposer(0) + 24));
  if (v1 <= 1)
  {
    if (v1)
    {
      *(v0 + 408) = v3;
      *(v0 + 416) = sub_1E65E6058();
      *(v0 + 424) = sub_1E65E6048();
      v4 = sub_1E65E5FC8();
      v6 = v11;
      v7 = sub_1E6201AF4;
    }

    else
    {
      *(v0 + 392) = v3;
      sub_1E65E6058();
      *(v0 + 400) = sub_1E65E6048();
      v4 = sub_1E65E5FC8();
      v6 = v8;
      v7 = sub_1E6201A50;
    }
  }

  else if (v1 == 2)
  {
    *(v0 + 432) = v3;
    *(v0 + 440) = sub_1E65E6058();
    *(v0 + 448) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v9;
    v7 = sub_1E6201BCC;
  }

  else if (v1 == 3)
  {
    *(v0 + 456) = v3;
    *(v0 + 464) = sub_1E65E6058();
    *(v0 + 472) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E6201CA4;
  }

  else
  {
    *(v0 + 480) = v3;
    *(v0 + 488) = sub_1E65E6058();
    *(v0 + 496) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v10;
    v7 = sub_1E6201D7C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E6201A50()
{
  v2 = v0[47];
  v1 = v0[48];

  sub_1E64D7F80(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6201AF4()
{

  sub_1E5E20198(19, v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075310, &qword_1E65F1610);
  if (swift_dynamicCast())
  {
    *(v0 + 504) = *(v0 + 264);
    v1 = sub_1E6201E54;
  }

  else
  {
    v1 = sub_1E6203290;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6201BCC()
{

  sub_1E5E20198(9, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA8, &qword_1E65F7738);
  if (swift_dynamicCast())
  {
    *(v0 + 528) = *(v0 + 256);
    v1 = sub_1E620213C;
  }

  else
  {
    v1 = sub_1E62020B0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6201CA4()
{

  sub_1E5E20198(25, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA0, &qword_1E65F7730);
  if (swift_dynamicCast())
  {
    *(v0 + 552) = *(v0 + 248);
    v1 = sub_1E620239C;
  }

  else
  {
    v1 = sub_1E6203290;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6201D7C()
{

  sub_1E5E20198(14, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EE8, &qword_1E65F45C8);
  if (swift_dynamicCast())
  {
    *(v0 + 576) = *(v0 + 240);
    v1 = sub_1E62025FC;
  }

  else
  {
    v1 = sub_1E6203290;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6201E54(uint64_t a1)
{
  v2 = v1[48];
  v1[28] = v1[47];
  v1[29] = v2;
  v1[64] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6201EE8, v4, v3);
}

uint64_t sub_1E6201EE8()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6201F68, 0, 0);
}

uint64_t sub_1E6201F68(uint64_t a1)
{
  *(v1 + 520) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6201FF4, v3, v2);
}

uint64_t sub_1E6201FF4()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E62020B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E620213C(uint64_t a1)
{
  v2 = v1[48];
  v1[26] = v1[47];
  v1[27] = v2;
  v1[67] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62021D0, v4, v3);
}

uint64_t sub_1E62021D0()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6202254, 0, 0);
}

uint64_t sub_1E6202254(uint64_t a1)
{
  *(v1 + 544) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62022E0, v3, v2);
}

uint64_t sub_1E62022E0()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E620239C(uint64_t a1)
{
  v2 = v1[48];
  v1[24] = v1[47];
  v1[25] = v2;
  v1[70] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202430, v4, v3);
}

uint64_t sub_1E6202430()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E62024B4, 0, 0);
}

uint64_t sub_1E62024B4(uint64_t a1)
{
  *(v1 + 568) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202540, v3, v2);
}

uint64_t sub_1E6202540()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E62025FC(uint64_t a1)
{
  v2 = v1[48];
  v1[22] = v1[47];
  v1[23] = v2;
  v1[73] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202690, v4, v3);
}

uint64_t sub_1E6202690()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6202714, 0, 0);
}

uint64_t sub_1E6202714(uint64_t a1)
{
  *(v1 + 592) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E62027A0, v3, v2);
}

uint64_t sub_1E62027A0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E620285C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v8 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E65DE488();
  v3 = v8[1];
  v4 = v8[2];
  v5 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A78, &qword_1E65F7708);
  sub_1E65DE708();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  type metadata accessor for AppState(0);
  return sub_1E64076CC(v2, v3, v4, v5);
}

uint64_t sub_1E62029A8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  HIDWORD(v16) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E65DE488();
  v10 = v17;
  v9 = v18;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v13 = *a4;
  *(v12 + 72) = *(a4 + 1);
  v14 = *(a4 + 3);
  *(v12 + 88) = *(a4 + 2);
  *(v12 + 104) = v14;
  *(v12 + 120) = *(a4 + 4);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = BYTE4(v16);
  *(v12 + 40) = v10;
  *(v12 + 48) = v9;
  *(v12 + 56) = v13;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E65F7700, v12);
}

uint64_t sub_1E6202B7C()
{
  *(v0 + 32) = 0;
  sub_1E65E6058();
  *(v0 + 24) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6202C14, v2, v1);
}

uint64_t sub_1E6202C14()
{

  sub_1E65E4EE8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6202C7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6201550(a1, v4, v5, v6);
}

uint64_t sub_1E6202D30(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6201638(a1, v1 + v5);
}

uint64_t sub_1E6202E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6202E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6202EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  return sub_1E62D9508(a1, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1E6202FCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);

  return sub_1E620285C();
}

unint64_t sub_1E6203058()
{
  result = qword_1EE2D6868;
  if (!qword_1EE2D6868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076A70, &qword_1E65F76E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6868);
  }

  return result;
}

uint64_t sub_1E62030BC(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);

  return sub_1E62029A8(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E62031BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6348824(a1, v4, v5, v8, v6, v7, v1 + 56);
}

uint64_t sub_1E6203298(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618) - 8);
    v9 = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1E62033A4(uint64_t a1)
{
  v3 = sub_1E65D9F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = v1;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601BF04(0, v7, 0);
    v48 = v50;
    v9 = a1 + 64;
    result = sub_1E65E6748();
    v10 = 0;
    v49 = v4 + 16;
    v38 = a1;
    v39 = v4;
    v11 = (v4 + 8);
    v37 = a1 + 72;
    v40 = v7;
    v41 = a1 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v9 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_30;
      }

      v16 = *(a1 + 36);
      v17 = *(*(a1 + 56) + 8 * result);
      v18 = *(v17 + 16);
      v47 = v10;
      if (v18)
      {
        v43 = 1 << result;
        v44 = result >> 6;
        v45 = v16;
        v46 = result;
        v19 = v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v20 = *(v39 + 72);
        v21 = *(v39 + 16);
        v42 = v17;

        v22 = 0;
        while (1)
        {
          v21(v6, v19, v3);
          v23 = sub_1E65D9F28();
          result = (*v11)(v6, v3);
          v24 = __OFADD__(v22, v23);
          v22 += v23;
          if (v24)
          {
            break;
          }

          v19 += v20;
          if (!--v18)
          {

            a1 = v38;
            result = v46;
            v10 = v47;
            v14 = v44;
            v16 = v45;
            v15 = v43;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v22 = 0;
LABEL_14:
      v25 = v48;
      v50 = v48;
      v27 = *(v48 + 16);
      v26 = *(v48 + 24);
      if (v27 >= v26 >> 1)
      {
        v45 = v16;
        v46 = result;
        v35 = v10;
        v43 = v15;
        v44 = v14;
        sub_1E601BF04((v26 > 1), v27 + 1, 1);
        v15 = v43;
        v14 = v44;
        v16 = v45;
        result = v46;
        v10 = v35;
        v25 = v50;
      }

      *(v25 + 16) = v27 + 1;
      *(v25 + 8 * v27 + 32) = v22;
      v12 = 1 << *(a1 + 32);
      if (result >= v12)
      {
        goto LABEL_31;
      }

      v9 = v41;
      v28 = *(v41 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_32;
      }

      if (v16 != *(a1 + 36))
      {
        goto LABEL_33;
      }

      v29 = v28 & (-2 << (result & 0x3F));
      v48 = v25;
      if (v29)
      {
        v12 = __clz(__rbit64(v29)) | result & 0x7FFFFFFFFFFFFFC0;
        v13 = v40;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v37 + 8 * v14);
        v13 = v40;
        while (v31 < (v12 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E5F87098(result, v16, 0);
            v12 = __clz(__rbit64(v33)) + v30;
            goto LABEL_25;
          }
        }

        sub_1E5F87098(result, v16, 0);
LABEL_25:
        v10 = v47;
      }

      ++v10;
      result = v12;
      if (v10 == v13)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E620371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v15;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  sub_1E65D7848();
  *(v8 + 56) = swift_task_alloc();
  sub_1E65E5C28();
  *(v8 + 64) = swift_task_alloc();
  type metadata accessor for SectionMetrics(0);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  v9 = sub_1E65D8F28();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = type metadata accessor for PageMetricsClick(0);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B80, &qword_1E65F7870);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_1E65E26E8();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B70, &qword_1E65F7850);
  *(v8 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753D0, &qword_1E65F1A50);
  *(v8 + 184) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B88, &qword_1E65F7878);
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  *(v8 + 224) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  *(v8 + 232) = v12;
  *(v8 + 240) = *(v12 - 8);
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6203B3C, 0, 0);
}

uint64_t sub_1E6203B3C()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v93 = v0[27];
  v94 = v0[25];
  v7 = v0[23];
  v91 = v0[24];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v2);
  sub_1E5DFE50C(v5, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v3 + 8))(v1, v4);
  v8 = sub_1E65D7EB8();
  (*(*(v8 - 8) + 48))(v2, 1, v8);
  sub_1E5DFE50C(v2, &qword_1ED072968, &unk_1E6609800);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEA00(v93);
  v9 = v7;
  v10 = v0;
  sub_1E5DFE50C(v9, &qword_1ED0753D0, &qword_1E65F1A50);
  (*(v94 + 8))(v6, v91);
  v11 = sub_1E65E1F68();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v93, 1, v11);
  v14 = v10[27];
  if (v13 == 1)
  {
    sub_1E5DFE50C(v10[27], &qword_1ED076B88, &qword_1E65F7878);
  }

  else
  {
    sub_1E65E1F48();
    (*(v12 + 8))(v14, v11);
  }

  sub_1E5DFD1CC(v10[3], v10[22], &qword_1ED076B70, &qword_1E65F7850);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v43 = v10[17];
        (*(v10[19] + 32))(v10[20], v10[22], v10[18]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820);
        sub_1E65E2428();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B78, &qword_1E65F7860);
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v43, 1, v44) == 1)
        {
          sub_1E5DFE50C(v10[17], &qword_1ED076B80, &qword_1E65F7870);
        }

        else
        {
          v47 = v10[20];
          v48 = v10[17];
          v49 = sub_1E65E05D8();
          (*(v45 + 8))(v48, v44);
          v50 = swift_task_alloc();
          *(v50 + 16) = v47;
          v51 = sub_1E6203298(sub_1E621765C, v50, v49);
          LOBYTE(v47) = v52;

          if ((v47 & 1) == 0)
          {
            v55 = v10[14];
            v54 = v10[15];
            v56 = sub_1E65D9D78();
            (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
            v57 = *(v55 + 20);
            v58 = *MEMORY[0x1E69CBAA0];
            v59 = sub_1E65D8C68();
            (*(*(v59 - 8) + 104))(v54 + v57, v58, v59);
            v60 = *(v55 + 24);
            v61 = sub_1E65D74E8();
            (*(*(v61 - 8) + 56))(v54 + v60, 1, 1, v61);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
            sub_1E65D86A8();
            result = swift_allocObject();
            *(result + 16) = xmmword_1E65EB9E0;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
              return result;
            }

            v63 = v10[14];
            v62 = v10[15];
            v64 = v10[10];
            v86 = v10[11];
            v65 = v10[9];
            v90 = v10[6];
            v87 = *MEMORY[0x1E69CBCD8];
            v66 = *(v10[12] + 104);
            v88 = result;
            v82 = v10[13];
            v66(v82);
            v81 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
            sub_1E65D8678();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
            sub_1E65E23D8();

            sub_1E6217CC0(v64, type metadata accessor for SectionMetrics);
            sub_1E65E23D8();
            _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
            sub_1E6217CC0(v65, type metadata accessor for SectionMetrics);
            sub_1E65E5BA8();
            type metadata accessor for LocalizationBundle();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v68 = [objc_opt_self() bundleForClass_];
            sub_1E65E23E8();
            sub_1E65E5D48();
            (v66)(v82, *MEMORY[0x1E69CBCB0], v86);
            sub_1E6427498(MEMORY[0x1E69E7CC0]);
            sub_1E65D8678();
            v69 = v63[8];
            v70 = sub_1E65DA208();
            (*(*(v70 - 8) + 56))(v62 + v69, 1, 1, v70);
            (v66)(v62 + v63[14], v87, v86);
            v71 = v63[15];
            v72 = *MEMORY[0x1E69CC448];
            v73 = sub_1E65D9908();
            v74 = *(v73 - 8);
            (*(v74 + 104))(v62 + v71, v72, v73);
            (*(v74 + 56))(v62 + v71, 0, 1, v73);
            v75 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
            *(v62 + v63[7]) = v88;
            v76 = (v62 + v63[9]);
            *v76 = 0;
            v76[1] = 0;
            v77 = (v62 + v63[10]);
            *v77 = 0;
            v77[1] = 0;
            *(v62 + v63[11]) = v75;
            v78 = (v62 + v63[12]);
            *v78 = 0;
            v78[1] = 0;
            *(v62 + v63[13]) = xmmword_1E65F4AC0;
            v95 = (*(v90 + 48) + **(v90 + 48));
            v79 = swift_task_alloc();
            v10[35] = v79;
            *v79 = v10;
            v79[1] = sub_1E6204DB0;
            v41 = v10[15];
            goto LABEL_8;
          }
        }

        (*(v10[19] + 8))(v10[20], v10[18]);
      }

      else
      {
        sub_1E5DFE50C(v10[22], &qword_1ED076B70, &qword_1E65F7850);
      }
    }
  }

  else if ((EnumCaseMultiPayload - 3) >= 2)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v16 = v10[16];
      v18 = v10[13];
      v17 = v10[14];
      v19 = v10[11];
      v20 = v10[12];
      v83 = v19;
      v21 = v10[10];
      v85 = v10[9];
      v92 = v10[6];
      v22 = sub_1E65D9D78();
      (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
      v23 = v17[5];
      v24 = *MEMORY[0x1E69CBAA0];
      v25 = sub_1E65D8C68();
      (*(*(v25 - 8) + 104))(v16 + v23, v24, v25);
      v26 = v17[6];
      v27 = sub_1E65D74E8();
      (*(*(v27 - 8) + 56))(v16 + v26, 1, 1, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      sub_1E65D86A8();
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1E65EB9E0;
      v84 = *(v20 + 104);
      v84(v18, *MEMORY[0x1E69CBCC8], v19);
      v80 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
      sub_1E65E23D8();

      sub_1E6217CC0(v21, type metadata accessor for SectionMetrics);
      sub_1E65E23D8();
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E6217CC0(v85, type metadata accessor for SectionMetrics);
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v28 = swift_getObjCClassFromMetadata();
      v29 = [objc_opt_self() bundleForClass_];
      sub_1E65E23E8();
      sub_1E65E5D48();
      v84(v18, *MEMORY[0x1E69CBCB0], v19);
      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v30 = v17[8];
      v31 = sub_1E65DA208();
      (*(*(v31 - 8) + 56))(v16 + v30, 1, 1, v31);
      v84(v16 + v17[14], *MEMORY[0x1E69CBCF0], v83);
      v32 = v17[15];
      v33 = *MEMORY[0x1E69CC488];
      v34 = sub_1E65D9908();
      v35 = *(v34 - 8);
      (*(v35 + 104))(v16 + v32, v33, v34);
      (*(v35 + 56))(v16 + v32, 0, 1, v34);
      v36 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v16 + v17[7]) = v89;
      v37 = (v16 + v17[9]);
      *v37 = 0;
      v37[1] = 0;
      v38 = (v16 + v17[10]);
      *v38 = 0;
      v38[1] = 0;
      *(v16 + v17[11]) = v36;
      v39 = (v16 + v17[12]);
      *v39 = 0;
      v39[1] = 0;
      *(v16 + v17[13]) = xmmword_1E65F7740;
      v95 = (*(v92 + 48) + **(v92 + 48));
      v40 = swift_task_alloc();
      v10[33] = v40;
      *v40 = v10;
      v40[1] = sub_1E6204C9C;
      v41 = v10[16];
LABEL_8:

      return v95(v41);
    }

    if (sub_1E65E2DA8())
    {
      v96 = (*(v10[6] + 16) + **(v10[6] + 16));
      v46 = swift_task_alloc();
      v10[37] = v46;
      *v46 = v10;
      v46[1] = sub_1E620542C;

      return v96();
    }
  }

  v53 = v10[1];

  return v53();
}

uint64_t sub_1E6204C9C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1E62052DC;
  }

  else
  {
    v2 = sub_1E6205194;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6204DB0()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1E6205024;
  }

  else
  {
    v2 = sub_1E6204EC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6204EC4()
{
  sub_1E6217CC0(v0[15], type metadata accessor for PageMetricsClick);
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6205024()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_1E6217CC0(v0[15], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6205194()
{
  sub_1E6217CC0(*(v0 + 128), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62052DC()
{
  sub_1E6217CC0(*(v0 + 128), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E620542C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1E620566C;
  }

  else
  {
    v2 = sub_1E6205540;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6205540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E620566C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62057A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65E26E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618);
  MEMORY[0x1E6947EA0](v7);
  v8 = MEMORY[0x1E694A0E0](v6, a2);
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1E62058A0@<X0>(uint64_t a1@<X8>)
{
  v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v7 = 0;
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_1E621722C(&v3[4], v5);
  os_unfair_lock_unlock(v3 + 6);
  sub_1E5DF599C(v5, v8);
  sub_1E608E17C(v6);
  sub_1E5DF650C(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B30, &qword_1E65F7808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B38, &qword_1E65F7810);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    return sub_1E5DF599C(v5, a1);
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E62059D4@<X0>(uint64_t a1@<X8>)
{
  v6[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v7 = 0;
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_1E6219ED4(&v3[4], v5);
  os_unfair_lock_unlock(v3 + 6);
  sub_1E5DF599C(v5, v8);
  sub_1E608E17C(v6);
  sub_1E5DF650C(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B30, &qword_1E65F7808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C48, &qword_1E65F7A48);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    return sub_1E5DF599C(v5, a1);
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6205B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v566 = a4;
  v574 = a3;
  v503 = a2;
  v567 = a1;
  v573 = a5;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD0, &unk_1E65FA8B0);
  v478 = *(v515 - 8);
  MEMORY[0x1EEE9AC00](v515);
  v477 = &v446 - v5;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED0, &qword_1E65EEE88);
  MEMORY[0x1EEE9AC00](v513);
  v514 = &v446 - v6;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED8, &qword_1E65EEE90);
  MEMORY[0x1EEE9AC00](v507);
  v508 = &v446 - v7;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  MEMORY[0x1EEE9AC00](v511);
  v512 = &v446 - v8;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD8, &qword_1E65EEE20);
  v462 = *(v510 - 8);
  MEMORY[0x1EEE9AC00](v510);
  v461 = &v446 - v9;
  v10 = sub_1E65E5128();
  v459 = *(v10 - 8);
  v460 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v458 = &v446 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E5038();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v455 = &v446 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65D8F28();
  v451 = *(v14 - 8);
  v452 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v450 = &v446 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E5058();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v475 = &v446 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v454 = &v446 - v19;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077BF0, &qword_1E65EEE68);
  v453 = *(v482 - 8);
  MEMORY[0x1EEE9AC00](v482);
  v476 = &v446 - v20;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AB0, &qword_1E65F7770);
  v457 = *(v483 - 8);
  MEMORY[0x1EEE9AC00](v483);
  v456 = &v446 - v21;
  v468 = sub_1E65E2178();
  v447 = *(v468 - 8);
  MEMORY[0x1EEE9AC00](v468);
  v446 = &v446 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AB8, &qword_1E65F7778);
  MEMORY[0x1EEE9AC00](v480);
  v481 = &v446 - v23;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v449 = *(v516 - 8);
  MEMORY[0x1EEE9AC00](v516);
  v448 = &v446 - v24;
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AC0, &qword_1E65F7780);
  MEMORY[0x1EEE9AC00](v470);
  v473 = &v446 - v25;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AC8, &qword_1E65F7788);
  MEMORY[0x1EEE9AC00](v463);
  v465 = &v446 - v26;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E98, &unk_1E65FA860);
  MEMORY[0x1EEE9AC00](v471);
  v467 = &v446 - v27;
  v472 = sub_1E65E2198();
  v466 = *(v472 - 8);
  MEMORY[0x1EEE9AC00](v472);
  v464 = &v446 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E90, &qword_1E65EEE60);
  MEMORY[0x1EEE9AC00](v479);
  v474 = &v446 - v29;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA0, &unk_1E65FA8A0);
  v30 = MEMORY[0x1EEE9AC00](v539);
  v504 = &v446 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v505 = &v446 - v32;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AD0, &qword_1E65F7790);
  MEMORY[0x1EEE9AC00](v535);
  v536 = &v446 - v33;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EC0, &unk_1E65FA890);
  MEMORY[0x1EEE9AC00](v563);
  v542 = &v446 - v34;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EC8, &qword_1E65EEE80);
  v499 = *(v541 - 1);
  MEMORY[0x1EEE9AC00](v541);
  v497 = &v446 - v35;
  v528 = sub_1E65E1518();
  v527 = *(v528 - 8);
  MEMORY[0x1EEE9AC00](v528);
  v526 = &v446 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v525 = sub_1E65E24F8();
  v494 = *(v525 - 8);
  v37 = MEMORY[0x1EEE9AC00](v525);
  v492 = v38;
  v493 = &v446 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v524 = &v446 - v39;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EB8, &qword_1E65EEE78);
  v500 = *(v534 - 1);
  MEMORY[0x1EEE9AC00](v534);
  v498 = &v446 - v40;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AD8, &qword_1E65F7798);
  MEMORY[0x1EEE9AC00](v559);
  v561 = &v446 - v41;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AE0, &qword_1E65F77A0);
  MEMORY[0x1EEE9AC00](v530);
  v531 = &v446 - v42;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EA8, &qword_1E65EEE70);
  MEMORY[0x1EEE9AC00](v560);
  v533 = &v446 - v43;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EA0, &unk_1E65FA870);
  MEMORY[0x1EEE9AC00](v572);
  v562 = &v446 - v44;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EB0, &unk_1E65FA880);
  v502 = *(v532 - 8);
  MEMORY[0x1EEE9AC00](v532);
  v501 = &v446 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v496 = &v446 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v551 = (&v446 - v49);
  v552 = sub_1E65D72D8();
  v550 = *(v552 - 1);
  v50 = MEMORY[0x1EEE9AC00](v552);
  v495 = &v446 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v549 = (&v446 - v52);
  v53 = type metadata accessor for SectionMetrics(0);
  v490 = *(v53 - 8);
  v54 = *(v490 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v491 = &v446 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v529 = &v446 - v56;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E80, &qword_1E65EEE58);
  v57 = MEMORY[0x1EEE9AC00](v544);
  v506 = &v446 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v509 = &v446 - v59;
  v547 = sub_1E65DFAE8();
  v546 = *(v547 - 8);
  v60 = *(v546 + 64);
  v61 = MEMORY[0x1EEE9AC00](v547);
  v469 = &v446 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v545 = (&v446 - v62);
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AE8, &qword_1E65F77A8);
  MEMORY[0x1EEE9AC00](v537);
  v538 = &v446 - v63;
  v558 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077BC0, &unk_1E65FA840);
  MEMORY[0x1EEE9AC00](v558);
  v543 = (&v446 - v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF0, &qword_1E65F77B0);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v67 = &v446 - v66;
  v68 = sub_1E65E07B8();
  v484 = *(v68 - 8);
  v485 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v446 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = sub_1E65E1538();
  v487 = *(v540 - 1);
  MEMORY[0x1EEE9AC00](v540);
  v486 = &v446 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF8, &qword_1E65F77B8);
  MEMORY[0x1EEE9AC00](v569);
  v571 = &v446 - v72;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B00, &qword_1E65F77C0);
  MEMORY[0x1EEE9AC00](v554);
  v556 = &v446 - v73;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B08, &qword_1E65F77C8);
  MEMORY[0x1EEE9AC00](v520);
  v522 = (&v446 - v74);
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077BA0, &unk_1E65FA830);
  MEMORY[0x1EEE9AC00](v555);
  v523 = &v446 - v75;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B90, &qword_1E65EEE48);
  MEMORY[0x1EEE9AC00](v570);
  v557 = (&v446 - v76);
  v553 = type metadata accessor for AppComposer(0);
  v565 = *(v553 - 1);
  v77 = *(v565 + 8);
  v78 = MEMORY[0x1EEE9AC00](v553);
  v519 = &v446 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v78);
  v564 = &v446 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v568 = &v446 - v81;
  v548 = sub_1E65DBEC8();
  v518 = *(v548 - 8);
  v82 = *(v518 + 64);
  v83 = MEMORY[0x1EEE9AC00](v548);
  v84 = &v446 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83);
  v517 = &v446 - v85;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077BB0, &qword_1E65EEE50);
  v489 = *(v521 - 8);
  MEMORY[0x1EEE9AC00](v521);
  v488 = &v446 - v86;
  v87 = type metadata accessor for ViewDescriptor(0);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v446 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E621770C(v567, v89, type metadata accessor for ViewDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v91 = *v89;
        v92 = *(v89 + 1);
        sub_1E6049490();
        if (!sub_1E63E9F24(v91, v92))
        {
          v93 = [objc_opt_self() grayColor];
        }

        v94 = sub_1E65E4968();
        v95 = v522;
        *v522 = v94;
        *(v95 + 4) = 256;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
        sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
        sub_1E5FED46C(&qword_1EE2D6BF0, &unk_1ED077BB0, &qword_1E65EEE50, MEMORY[0x1E699D1B8]);
        v96 = v523;
        sub_1E65E4138();
        sub_1E5DFD1CC(v96, v556, &unk_1ED077BA0, &unk_1E65FA830);
        swift_storeEnumTagMultiPayload();
        sub_1E60729C8();
        sub_1E6072AAC();
        v97 = v557;
        sub_1E65E4138();
        sub_1E5DFE50C(v96, &unk_1ED077BA0, &unk_1E65FA830);
        sub_1E5DFD1CC(v97, v571, &unk_1ED077B90, &qword_1E65EEE48);
        swift_storeEnumTagMultiPayload();
        sub_1E607293C();
        sub_1E6072E98();
        sub_1E65E4138();

        return sub_1E5DFE50C(v97, &unk_1ED077B90, &qword_1E65EEE48);
      }

      v197 = *(v89 + 1);
      v567 = *v89;
      v551 = v197;
      sub_1E5DF650C(v574, &v582);
      v198 = swift_allocObject();
      sub_1E5DF599C(&v582, v198 + 16);
      v199 = v575;
      v200 = v568;
      v550 = type metadata accessor for AppComposer;
      sub_1E621770C(v575, v568, type metadata accessor for AppComposer);
      v201 = *(v565 + 80);
      v565 = (((v201 + 16) & ~v201) + v77);
      v202 = (v201 + 16) & ~v201;
      v574 = v202;
      v549 = (v201 | 7);
      v203 = swift_allocObject();
      v563 = type metadata accessor for AppComposer;
      sub_1E5E1E388(v200, v203 + v202, type metadata accessor for AppComposer);
      v204 = v517;
      sub_1E65DBEB8();
      sub_1E621770C(v199, v200, type metadata accessor for AppComposer);
      v205 = v518;
      (*(v518 + 16))(v84, v204, v548);
      v206 = v566;
      v553 = *v566;
      v559 = v566[3];
      v560 = v566[5];
      v561 = v566[7];
      v562 = v566[9];
      v207 = (v565 + *(v205 + 80)) & ~*(v205 + 80);
      v208 = (v82 + v207 + 7) & 0xFFFFFFFFFFFFFFF8;
      v209 = (v208 + 23) & 0xFFFFFFFFFFFFFFF8;
      v210 = swift_allocObject();
      v211 = v563;
      sub_1E5E1E388(v568, &v210[v574], v563);
      (*(v205 + 32))(&v210[v207], v84, v548);
      v552 = v210;
      v212 = &v210[v208];
      v213 = v551;
      *v212 = v567;
      *(v212 + 1) = v213;
      v214 = &v210[v209];
      v215 = *(v206 + 4);
      *(v214 + 3) = *(v206 + 3);
      *(v214 + 4) = v215;
      v216 = *(v206 + 2);
      *(v214 + 1) = *(v206 + 1);
      *(v214 + 2) = v216;
      *v214 = *v206;
      v217 = v575;
      v218 = v564;
      v219 = v550;
      sub_1E621770C(v575, v564, v550);
      v220 = (v565 + 7) & 0xFFFFFFFFFFFFFFF8;
      v221 = swift_allocObject();
      v222 = v574;
      sub_1E5E1E388(v218, v221 + v574, v211);
      v223 = (v221 + v220);
      v224 = v567;
      *v223 = v567;
      v223[1] = v213;
      sub_1E621770C(v217, v218, v219);
      v225 = swift_allocObject();
      sub_1E5E1E388(v218, v225 + v222, v563);
      v226 = (v225 + v220);
      *v226 = v224;
      v226[1] = v213;
      sub_1E65DB9C8();
      sub_1E65DBC48();
      sub_1E6217774(qword_1EE2D6BF8, MEMORY[0x1E699D198], MEMORY[0x1E699D190]);
      sub_1E6217774(&qword_1EE2D6BD8, MEMORY[0x1E699D228], MEMORY[0x1E699D220]);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();

      v227 = v488;
      sub_1E65DBA48();
      (*(v518 + 8))(v517, v548);
      v228 = v489;
      v229 = v521;
      (*(v489 + 16))(v522, v227, v521);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
      sub_1E5FED46C(&qword_1EE2D6BF0, &unk_1ED077BB0, &qword_1E65EEE50, MEMORY[0x1E699D1B8]);
      v230 = v523;
      sub_1E65E4138();
      sub_1E5DFD1CC(v230, v556, &unk_1ED077BA0, &unk_1E65FA830);
      swift_storeEnumTagMultiPayload();
      sub_1E60729C8();
      sub_1E6072AAC();
      v231 = v557;
      sub_1E65E4138();
      sub_1E5DFE50C(v230, &unk_1ED077BA0, &unk_1E65FA830);
LABEL_19:
      sub_1E5DFD1CC(v231, v571, &unk_1ED077B90, &qword_1E65EEE48);
      swift_storeEnumTagMultiPayload();
      sub_1E607293C();
      sub_1E6072E98();
      sub_1E65E4138();
      sub_1E5DFE50C(v231, &unk_1ED077B90, &qword_1E65EEE48);
      return (*(v228 + 8))(v227, v229);
    }

    if (EnumCaseMultiPayload != 2)
    {
      v270 = *v89;
      v271 = *(v89 + 1);
      sub_1E65E0668();
      v273 = v484;
      v272 = v485;
      (*(v484 + 16))(v67, v70, v485);
      (*(v273 + 56))(v67, 0, 1, v272);
      sub_1E6375DA0(v270, v271, v67, v566);

      sub_1E5DFE50C(v67, &qword_1ED076AF0, &qword_1E65F77B0);
      v274 = v486;
      sub_1E65E1528();
      (*(v273 + 8))(v70, v272);
      v228 = v487;
      v227 = v274;
      v229 = v540;
      (*(v487 + 16))(v538, v274, v540);
      swift_storeEnumTagMultiPayload();
      sub_1E6217774(&qword_1EE2D64E8, MEMORY[0x1E699E888], MEMORY[0x1E699E880]);
      sub_1E6072B68();
      v275 = v543;
      sub_1E65E4138();
      sub_1E5DFD1CC(v275, v556, &unk_1ED077BC0, &unk_1E65FA840);
      swift_storeEnumTagMultiPayload();
      sub_1E60729C8();
      sub_1E6072AAC();
      v231 = v557;
      sub_1E65E4138();
      sub_1E5DFE50C(v275, &unk_1ED077BC0, &unk_1E65FA840);
      goto LABEL_19;
    }

    v140 = *(v89 + 1);
    v562 = *v89;
    v563 = v140;
    v141 = *(v89 + 3);
    v549 = *(v89 + 2);
    v561 = v141;
    v142 = *(v89 + 5);
    v542 = *(v89 + 4);
    v560 = v142;
    v143 = &v89[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B28, &qword_1E6604130) + 80)];
    v541 = *(v546 + 32);
    v539 = v546 + 32;
    (v541)(v545, v143, v547);
    sub_1E5DF650C(v574, &v582);
    v144 = v566;
    v145 = *v566;
    v146 = v566[3];
    v147 = v566[5];
    v148 = v566[7];
    v149 = v566[9];
    v150 = swift_allocObject();
    sub_1E5DF599C(&v582, v150 + 16);
    v151 = *v144;
    *(v150 + 72) = *(v144 + 1);
    v152 = *(v144 + 3);
    *(v150 + 88) = *(v144 + 2);
    *(v150 + 104) = v152;
    *(v150 + 120) = *(v144 + 4);
    v567 = v150;
    *(v150 + 56) = v151;
    v153 = v149;
    v154 = sub_1E65DDF08();
    v580 = v154;
    v581 = sub_1E6217774(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v579);
    (*(*(v154 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABE8], v154);
    v550 = v145;
    swift_unknownObjectRetain();
    v551 = v146;

    v552 = v147;

    v559 = v148;

    LOBYTE(v154) = sub_1E65DAF58();
    __swift_destroy_boxed_opaque_existential_1(&v579);
    if (v154)
    {
      v548 = v149;

      v156 = v575;
      v157 = sub_1E65DAE38();
      v158 = sub_1E65DAE38();
      v159 = v568;
      if (v157 == v158)
      {
        sub_1E621770C(v156, v568, type metadata accessor for AppComposer);
        v160 = (*(v565 + 80) + 16) & ~*(v565 + 80);
        v161 = (v77 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
        v162 = (v161 + 23) & 0xFFFFFFFFFFFFFFF8;
        v163 = swift_allocObject();
        sub_1E5E1E388(v159, v163 + v160, type metadata accessor for AppComposer);
        v164 = (v163 + v161);
        v165 = v561;
        *v164 = v549;
        v164[1] = v165;
        v166 = (v163 + v162);
        v167 = v563;
        *v166 = v562;
        v166[1] = v167;
        v168 = (v163 + ((v162 + 23) & 0xFFFFFFFFFFFFFFF8));
        v169 = v566;
        v170 = *(v566 + 4);
        v168[3] = *(v566 + 3);
        v168[4] = v170;
        v171 = *(v169 + 2);
        v168[1] = *(v169 + 1);
        v168[2] = v171;
        *v168 = *v169;
        swift_unknownObjectRetain();

        v172 = v464;
        sub_1E65E2188();
        v173 = v466;
        v174 = v472;
        (*(v466 + 16))(v465, v172, v472);
        swift_storeEnumTagMultiPayload();
        sub_1E6217774(&qword_1EE2D6280, MEMORY[0x1E699F228], MEMORY[0x1E699F220]);
        sub_1E6217774(&qword_1EE2D6288, MEMORY[0x1E699F218], MEMORY[0x1E699F210]);
        v175 = v467;
        sub_1E65E4138();
        sub_1E5DFD1CC(v175, v473, &qword_1ED073E98, &unk_1E65FA860);
        swift_storeEnumTagMultiPayload();
        sub_1E6072DAC();
        v176 = v474;
        sub_1E65E4138();
        sub_1E5DFE50C(v175, &qword_1ED073E98, &unk_1E65FA860);
        (*(v173 + 8))(v172, v174);
      }

      else
      {
        swift_getKeyPath();
        v408 = v448;
        sub_1E65E4EC8();

        v409 = v516;
        sub_1E65E0708();
        (*(v449 + 8))(v408, v409);
        v410 = v579;
        sub_1E621770C(v156, v159, type metadata accessor for AppComposer);
        v411 = (*(v565 + 80) + 16) & ~*(v565 + 80);
        v412 = (v77 + v411 + 7) & 0xFFFFFFFFFFFFFFF8;
        v413 = (v412 + 23) & 0xFFFFFFFFFFFFFFF8;
        v414 = (v413 + 23) & 0xFFFFFFFFFFFFFFF8;
        if (v410 >= 2)
        {
          v429 = swift_allocObject();
          sub_1E5E1E388(v159, v429 + v411, type metadata accessor for AppComposer);
          v430 = (v429 + v412);
          v431 = v561;
          *v430 = v549;
          v430[1] = v431;
          v432 = (v429 + v413);
          v433 = v563;
          *v432 = v562;
          v432[1] = v433;
          v434 = (v429 + v414);
          v435 = v566;
          v436 = *(v566 + 4);
          v434[3] = *(v566 + 3);
          v434[4] = v436;
          v437 = *(v435 + 2);
          v434[1] = *(v435 + 1);
          v434[2] = v437;
          *v434 = *v435;
          swift_unknownObjectRetain();

          v438 = v464;
          sub_1E65E2188();
          v439 = v466;
          v440 = v472;
          (*(v466 + 16))(v473, v438, v472);
          swift_storeEnumTagMultiPayload();
          sub_1E6072DAC();
          sub_1E6217774(&qword_1EE2D6280, MEMORY[0x1E699F228], MEMORY[0x1E699F220]);
          v176 = v474;
          sub_1E65E4138();
          (*(v439 + 8))(v438, v440);
        }

        else
        {
          v415 = swift_allocObject();
          sub_1E5E1E388(v159, v415 + v411, type metadata accessor for AppComposer);
          v416 = (v415 + v412);
          v417 = v561;
          *v416 = v549;
          v416[1] = v417;
          v418 = (v415 + v413);
          v419 = v563;
          *v418 = v562;
          v418[1] = v419;
          v420 = (v415 + v414);
          v421 = v566;
          v422 = *(v566 + 4);
          v420[3] = *(v566 + 3);
          v420[4] = v422;
          v423 = *(v421 + 2);
          v420[1] = *(v421 + 1);
          v420[2] = v423;
          *v420 = *v421;
          swift_unknownObjectRetain();

          v424 = v446;
          sub_1E65E2168();
          v425 = v447;
          v426 = v468;
          (*(v447 + 16))(v465, v424, v468);
          swift_storeEnumTagMultiPayload();
          sub_1E6217774(&qword_1EE2D6280, MEMORY[0x1E699F228], MEMORY[0x1E699F220]);
          sub_1E6217774(&qword_1EE2D6288, MEMORY[0x1E699F218], MEMORY[0x1E699F210]);
          v427 = v467;
          sub_1E65E4138();
          sub_1E5DFD1CC(v427, v473, &qword_1ED073E98, &unk_1E65FA860);
          swift_storeEnumTagMultiPayload();
          sub_1E6072DAC();
          v176 = v474;
          sub_1E65E4138();
          sub_1E5DFE50C(v427, &qword_1ED073E98, &unk_1E65FA860);
          (*(v425 + 8))(v424, v426);
        }
      }

      v372 = v506;
      sub_1E5DFD1CC(v176, v481, &qword_1ED073E90, &qword_1E65EEE60);
      swift_storeEnumTagMultiPayload();
      sub_1E6072CF0();
      v441 = sub_1E5FED46C(&qword_1EE2D65F0, &unk_1ED077BF0, &qword_1E65EEE68, MEMORY[0x1E699D570]);
      *&v579 = v482;
      *(&v579 + 1) = v441;
      swift_getOpaqueTypeConformance2();
      sub_1E65E4138();

      sub_1E5DFE50C(v176, &qword_1ED073E90, &qword_1E65EEE60);
    }

    else
    {
      v318 = v575;
      v319 = sub_1E6482BC0();
      v320 = v568;
      if ((v319 & 1) == 0)
      {

        v428 = 1;
        v372 = v506;
LABEL_33:
        v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E88, &unk_1E65FA850);
        (*(*(v442 - 8) + 56))(v372, v428, 1, v442);
        v443 = v509;
        sub_1E5FAB460(v372, v509, &qword_1ED073E80, &qword_1E65EEE58);
        sub_1E5DFD1CC(v443, v538, &qword_1ED073E80, &qword_1E65EEE58);
        swift_storeEnumTagMultiPayload();
        sub_1E6217774(&qword_1EE2D64E8, MEMORY[0x1E699E888], MEMORY[0x1E699E880]);
        sub_1E6072B68();
        v444 = v543;
        sub_1E65E4138();
        sub_1E5DFD1CC(v444, v556, &unk_1ED077BC0, &unk_1E65FA840);
        swift_storeEnumTagMultiPayload();
        sub_1E60729C8();
        sub_1E6072AAC();
        v445 = v557;
        sub_1E65E4138();
        sub_1E5DFE50C(v444, &unk_1ED077BC0, &unk_1E65FA840);
        sub_1E5DFD1CC(v445, v571, &unk_1ED077B90, &qword_1E65EEE48);
        swift_storeEnumTagMultiPayload();
        sub_1E607293C();
        sub_1E6072E98();
        sub_1E65E4138();
        sub_1E5DFE50C(v445, &unk_1ED077B90, &qword_1E65EEE48);
        sub_1E5DFE50C(v443, &qword_1ED073E80, &qword_1E65EEE58);
        return (*(v546 + 8))(v545, v547);
      }

      v553 = type metadata accessor for AppComposer;
      sub_1E621770C(v318, v568, type metadata accessor for AppComposer);
      v321 = v546 + 16;
      (*(v546 + 16))(v469, v545, v547);
      v322 = *(v565 + 80);
      v565 = (((v322 + 16) & ~v322) + v77);
      v323 = (v322 + 16) & ~v322;
      v535 = v323;
      v536 = v322 | 7;
      v324 = (v565 + 7) & 0xFFFFFFFFFFFFFFF8;
      v325 = (v324 + 23) & 0xFFFFFFFFFFFFFFF8;
      v326 = (*(v321 + 64) + v325 + 16) & ~*(v321 + 64);
      v548 = v153;
      v327 = (v60 + v326 + 7) & 0xFFFFFFFFFFFFFFF8;
      v328 = (v327 + 23) & 0xFFFFFFFFFFFFFFF8;
      v329 = swift_allocObject();
      v534 = type metadata accessor for AppComposer;
      sub_1E5E1E388(v320, v329 + v323, type metadata accessor for AppComposer);
      v330 = (v329 + v324);
      v331 = v567;
      *v330 = sub_1E6214E40;
      v330[1] = v331;
      v332 = (v329 + v325);
      v333 = v560;
      *v332 = v542;
      v332[1] = v333;
      (v541)(v329 + v326, v469, v547);
      v334 = (v329 + v327);
      v335 = v561;
      *v334 = v549;
      v334[1] = v335;
      v336 = (v329 + v328);
      v337 = v563;
      *v336 = v562;
      v336[1] = v337;
      v338 = (v329 + ((v328 + 23) & 0xFFFFFFFFFFFFFFF8));
      v339 = v566;
      v340 = *(v566 + 4);
      v338[3] = *(v566 + 3);
      v338[4] = v340;
      v341 = *(v339 + 2);
      v338[1] = *(v339 + 1);
      v338[2] = v341;
      *v338 = *v339;
      v342 = v564;
      sub_1E621770C(v575, v564, v553);
      sub_1E5DF650C(v574, &v579);
      v343 = v565;
      v344 = v565 & 0xFFFFFFFFFFFFFFF8;
      v345 = ((v565 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;
      v346 = swift_allocObject();
      sub_1E5E1E388(v342, v346 + v535, v534);
      *(v343 + v346) = 0;
      sub_1E5DF599C(&v579, v346 + v344 + 8);
      v347 = (v346 + v345);
      v348 = *(v339 + 3);
      v347[2] = *(v339 + 2);
      v347[3] = v348;
      v347[4] = *(v339 + 4);
      v349 = *(v339 + 1);
      *v347 = *v339;
      v347[1] = v349;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      sub_1E60731B0();
      sub_1E65DFD18();
      sub_1E65E28F8();
      sub_1E65E5048();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
      inited = swift_initStackObject();
      *(inited + 32) = 1701667182;
      *(inited + 16) = xmmword_1E65EA190;
      v351 = MEMORY[0x1E69E6158];
      v352 = v562;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v352;
      *(inited + 56) = v337;
      *(inited + 72) = v351;
      strcpy((inited + 80), "impressionType");
      *(inited + 95) = -18;
      v353 = v450;
      v354 = v451;
      v355 = v452;
      (*(v451 + 104))(v450, *MEMORY[0x1E69CBC78], v452);
      v356 = sub_1E65D8F18();
      v358 = v357;
      (*(v354 + 8))(v353, v355);
      *(inited + 96) = v356;
      *(inited + 104) = v358;
      *(inited + 120) = v351;
      *(inited + 128) = 0x6973736572706D69;
      v359 = MEMORY[0x1E69E6530];
      *(inited + 136) = 0xEF7865646E496E6FLL;
      *(inited + 144) = 0;
      *(inited + 168) = v359;
      *(inited + 176) = 0x657079546469;
      *(inited + 184) = 0xE600000000000000;
      v360 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      *(inited + 216) = v351;
      *(inited + 192) = v360;
      *(inited + 200) = v361;
      sub_1E6215168(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
      swift_arrayDestroy();
      sub_1E65E5028();
      v362 = MEMORY[0x1E69E7CC0];
      sub_1E6215168(MEMORY[0x1E69E7CC0]);
      sub_1E6215168(v362);
      v363 = v454;
      sub_1E65E5068();
      v364 = sub_1E65E5078();
      (*(*(v364 - 8) + 56))(v363, 0, 1, v364);
      v365 = v458;
      sub_1E65E5118();
      v366 = sub_1E5FED46C(&qword_1EE2D65F0, &unk_1ED077BF0, &qword_1E65EEE68, MEMORY[0x1E699D570]);
      v367 = v456;
      v368 = v482;
      v369 = v476;
      sub_1E65E4738();
      (*(v459 + 8))(v365, v460);
      sub_1E5DFE50C(v363, &qword_1ED073660, &qword_1E65ED8C0);
      (*(v453 + 8))(v369, v368);
      v370 = v457;
      v371 = v483;
      (*(v457 + 16))(v481, v367, v483);
      swift_storeEnumTagMultiPayload();
      sub_1E6072CF0();
      *&v579 = v368;
      *(&v579 + 1) = v366;
      swift_getOpaqueTypeConformance2();
      v372 = v506;
      sub_1E65E4138();

      (*(v370 + 8))(v367, v371);
    }

    v428 = 0;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v177 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B10, &unk_1E6604120) + 48);
      v178 = sub_1E65E1458();
      (*(*(v178 - 8) + 8))(v89, v178);
      v179 = &v89[v177];
      v180 = v526;
      (*(v527 + 32))(v526, v179, v528);
      v181 = v180;
      v182 = v574;
      v183 = v575;
      v567 = sub_1E632B32C(v181);
      v184 = v568;
      sub_1E621770C(v183, v568, type metadata accessor for AppComposer);
      sub_1E5DF650C(v182, &v582);
      v185 = v566;
      v574 = v566[7];
      v575 = v566[9];
      v186 = (*(v565 + 80) + 16) & ~*(v565 + 80);
      v187 = (v77 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
      v188 = swift_allocObject();
      sub_1E5E1E388(v184, v188 + v186, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v582, v188 + v187);
      v189 = (v188 + ((v187 + 47) & 0xFFFFFFFFFFFFFFF8));
      v190 = *(v185 + 3);
      v189[2] = *(v185 + 2);
      v189[3] = v190;
      v189[4] = *(v185 + 4);
      v191 = *(v185 + 1);
      *v189 = *v185;
      v189[1] = v191;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B18, &qword_1E65F77D0);
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
      sub_1E6214800();
      v192 = v497;
      sub_1E65E1128();
      v193 = v499;
      v194 = v541;
      (*(v499 + 16))(v536, v192, v541);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D6540, &qword_1ED073EC8, &qword_1E65EEE80, MEMORY[0x1E699E760]);
      sub_1E60C20F0();
      v195 = v542;
      sub_1E65E4138();
      sub_1E5DFD1CC(v195, v561, &qword_1ED073EC0, &unk_1E65FA890);
      swift_storeEnumTagMultiPayload();
      sub_1E6072F24();
      sub_1E6073008();
      v196 = v562;
      sub_1E65E4138();
      sub_1E5DFE50C(v195, &qword_1ED073EC0, &unk_1E65FA890);
      sub_1E5DFD1CC(v196, v571, &qword_1ED073EA0, &unk_1E65FA870);
      swift_storeEnumTagMultiPayload();
      sub_1E607293C();
      sub_1E6072E98();
      sub_1E65E4138();
      sub_1E5DFE50C(v196, &qword_1ED073EA0, &unk_1E65FA870);
      (*(v193 + 8))(v192, v194);
      return (*(v527 + 8))(v526, v528);
    }

    v276 = *v89;
    v278 = *(v89 + 1);
    v277 = *(v89 + 2);
    v280 = *(v89 + 3);
    v279 = *(v89 + 4);
    v281 = v575;
    v282 = *(v575 + *(v553 + 5) + 8);
    v567 = v277;
    v558 = v278;
    v557 = v279;
    v556 = v280;
    LODWORD(v555) = v276;
    if (v282 >= 2)
    {
      if (v282 != 3)
      {
        result = sub_1E65E69D8();
        __break(1u);
        return result;
      }

      v554 = type metadata accessor for AppComposer;
      v373 = v568;
      sub_1E621770C(v575, v568, type metadata accessor for AppComposer);
      sub_1E5DF650C(v574, &v582);
      v374 = *(v565 + 80);
      v552 = ((v374 + 16) & ~v374);
      v375 = (v552 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v376 = (v552 + v77 + 55) & 0xFFFFFFFFFFFFFFF8;
      v377 = swift_allocObject();
      v551 = type metadata accessor for AppComposer;
      sub_1E5E1E388(v373, v377 + ((v374 + 16) & ~v374), type metadata accessor for AppComposer);
      sub_1E5DF599C(&v582, v377 + v375);
      *(v377 + v375 + 40) = v276;
      v565 = v377;
      v378 = (v377 + v376);
      v379 = v557;
      *v378 = v556;
      v378[1] = v379;
      v380 = (v377 + ((v376 + 23) & 0xFFFFFFFFFFFFFFF8));
      v381 = v567;
      *v380 = v558;
      v380[1] = v381;
      v382 = v564;
      sub_1E621770C(v281, v564, v554);
      sub_1E5DF650C(v574, &v579);
      v383 = v566;
      v553 = *v566;
      v556 = v566[3];
      v557 = v566[5];
      v558 = v566[7];
      v567 = v566[9];
      v384 = (v375 + 47) & 0xFFFFFFFFFFFFFFF8;
      v385 = v384 + 80;
      v386 = swift_allocObject();
      v387 = v552;
      sub_1E5E1E388(v382, v552 + v386, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v579, v386 + v375);
      v568 = v386;
      v388 = (v386 + v384);
      v389 = *(v383 + 3);
      v388[2] = *(v383 + 2);
      v388[3] = v389;
      v388[4] = *(v383 + 4);
      v390 = *(v383 + 1);
      *v388 = *v383;
      v388[1] = v390;
      v391 = v555;
      *(v386 + v385) = v555;
      v392 = v519;
      sub_1E621770C(v575, v519, v554);
      sub_1E5DF650C(v574, v578);
      v393 = swift_allocObject();
      sub_1E5E1E388(v392, v387 + v393, v551);
      sub_1E5DF599C(v578, v393 + v375);
      v394 = (v393 + v384);
      v395 = *(v383 + 3);
      v394[2] = *(v383 + 2);
      v394[3] = v395;
      v394[4] = *(v383 + 4);
      v396 = *(v383 + 1);
      *v394 = *v383;
      v394[1] = v396;
      *(v393 + v385) = v391;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
      v398 = sub_1E60731B0();
      v399 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
      v576 = v397;
      v577 = v398;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v576 = v399;
      v577 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v401 = v461;
      sub_1E65E20B8();
      v402 = v462;
      v403 = v510;
      (*(v462 + 16))(v508, v401, v510);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
      sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
      v404 = v512;
      sub_1E65E4138();
      sub_1E5DFD1CC(v404, v514, &qword_1ED073DC8, &qword_1E65EEE18);
      swift_storeEnumTagMultiPayload();
      sub_1E6071CE8();
      v317 = v504;
      sub_1E65E4138();
      sub_1E5DFE50C(v404, &qword_1ED073DC8, &qword_1E65EEE18);
      (*(v402 + 8))(v401, v403);
    }

    else
    {
      v552 = type metadata accessor for AppComposer;
      v283 = v568;
      sub_1E621770C(v575, v568, type metadata accessor for AppComposer);
      sub_1E5DF650C(v574, &v582);
      v284 = *(v565 + 80);
      v551 = ((v284 + 16) & ~v284);
      v285 = (v551 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v286 = v281;
      v287 = (v551 + v77 + 55) & 0xFFFFFFFFFFFFFFF8;
      v288 = swift_allocObject();
      v565 = type metadata accessor for AppComposer;
      sub_1E5E1E388(v283, v288 + ((v284 + 16) & ~v284), type metadata accessor for AppComposer);
      sub_1E5DF599C(&v582, v288 + v285);
      *(v288 + v285 + 40) = v276;
      v554 = v288;
      v289 = (v288 + v287);
      v290 = v557;
      *v289 = v556;
      v289[1] = v290;
      v291 = (v288 + ((v287 + 23) & 0xFFFFFFFFFFFFFFF8));
      v292 = v567;
      *v291 = v558;
      v291[1] = v292;
      v293 = v564;
      v294 = v552;
      sub_1E621770C(v286, v564, v552);
      sub_1E5DF650C(v574, &v579);
      v295 = v566;
      v553 = *v566;
      v556 = v566[3];
      v557 = v566[5];
      v558 = v566[7];
      v567 = v566[9];
      v296 = (v285 + 47) & 0xFFFFFFFFFFFFFFF8;
      v297 = v296 + 80;
      v298 = swift_allocObject();
      v299 = v551;
      sub_1E5E1E388(v293, v551 + v298, v565);
      sub_1E5DF599C(&v579, v298 + v285);
      v300 = (v298 + v296);
      v301 = v298;
      v568 = v298;
      v302 = *(v295 + 3);
      v300[2] = *(v295 + 2);
      v300[3] = v302;
      v300[4] = *(v295 + 4);
      v303 = *(v295 + 1);
      *v300 = *v295;
      v300[1] = v303;
      LOBYTE(v298) = v555;
      *(v301 + v297) = v555;
      v304 = v519;
      sub_1E621770C(v575, v519, v294);
      sub_1E5DF650C(v574, v578);
      v305 = swift_allocObject();
      sub_1E5E1E388(v304, v299 + v305, v565);
      sub_1E5DF599C(v578, v305 + v285);
      v306 = (v305 + v296);
      v307 = *(v295 + 3);
      v306[2] = *(v295 + 2);
      v306[3] = v307;
      v306[4] = *(v295 + 4);
      v308 = *(v295 + 1);
      *v306 = *v295;
      v306[1] = v308;
      *(v305 + v297) = v298;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
      v310 = sub_1E60731B0();
      v311 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
      v576 = v309;
      v577 = v310;
      v312 = swift_getOpaqueTypeConformance2();
      v576 = v311;
      v577 = v312;
      swift_getOpaqueTypeConformance2();
      v313 = v477;
      sub_1E65E1F38();
      v314 = v478;
      v315 = v515;
      (*(v478 + 16))(v508, v313, v515);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
      sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
      v316 = v512;
      sub_1E65E4138();
      sub_1E5DFD1CC(v316, v514, &qword_1ED073DC8, &qword_1E65EEE18);
      swift_storeEnumTagMultiPayload();
      sub_1E6071CE8();
      v317 = v504;
      sub_1E65E4138();
      sub_1E5DFE50C(v316, &qword_1ED073DC8, &qword_1E65EEE18);
      (*(v314 + 8))(v313, v315);
    }

    v405 = v505;
    sub_1E5FAB460(v317, v505, &qword_1ED073DA0, &unk_1E65FA8A0);
    sub_1E5DFD1CC(v405, v536, &qword_1ED073DA0, &unk_1E65FA8A0);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D6540, &qword_1ED073EC8, &qword_1E65EEE80, MEMORY[0x1E699E760]);
    sub_1E60C20F0();
    v406 = v542;
    sub_1E65E4138();
    sub_1E5DFD1CC(v406, v561, &qword_1ED073EC0, &unk_1E65FA890);
    swift_storeEnumTagMultiPayload();
    sub_1E6072F24();
    sub_1E6073008();
    v407 = v562;
    sub_1E65E4138();
    sub_1E5DFE50C(v406, &qword_1ED073EC0, &unk_1E65FA890);
    sub_1E5DFD1CC(v407, v571, &qword_1ED073EA0, &unk_1E65FA870);
    swift_storeEnumTagMultiPayload();
    sub_1E607293C();
    sub_1E6072E98();
    sub_1E65E4138();
    sub_1E5DFE50C(v407, &qword_1ED073EA0, &unk_1E65FA870);
    return sub_1E5DFE50C(v405, &qword_1ED073DA0, &unk_1E65FA8A0);
  }

  if (EnumCaseMultiPayload == 4)
  {
    LODWORD(v546) = *v89;
    LODWORD(v557) = v89[1];
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B20, &qword_1E65F77F0);
    v100 = v99[16];
    v101 = v99[20];
    v102 = v99[24];
    v556 = *&v89[v99[28]];
    v543 = type metadata accessor for SectionMetrics;
    v103 = v529;
    sub_1E5E1E388(&v89[v100], v529, type metadata accessor for SectionMetrics);
    (*(v550 + 4))(v549, &v89[v101], v552);
    sub_1E5FAB460(&v89[v102], v551, &qword_1ED072D90, &qword_1E66040F0);
    v104 = v575;
    sub_1E62058A0(&v582);
    v567 = v583;
    v564 = v584;
    v545 = __swift_project_boxed_opaque_existential_1(&v582, v583);
    v544 = type metadata accessor for AppComposer;
    v105 = v568;
    sub_1E621770C(v104, v568, type metadata accessor for AppComposer);
    sub_1E5DF650C(v574, &v579);
    v106 = v491;
    sub_1E621770C(v103, v491, type metadata accessor for SectionMetrics);
    v107 = v566;
    v547 = *v566;
    v548 = v566[3];
    v553 = v566[5];
    v554 = v566[7];
    v555 = v566[9];
    v108 = *(v565 + 80);
    v109 = (v108 + 16) & ~v108;
    v110 = v109 + v77;
    v541 = v109;
    v542 = (v108 | 7);
    v111 = (v109 + v77) & 0xFFFFFFFFFFFFFFF8;
    v112 = (*(v490 + 80) + v111 + 48) & ~*(v490 + 80);
    v539 = (v112 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = swift_allocObject();
    v540 = type metadata accessor for AppComposer;
    sub_1E5E1E388(v105, v113 + v109, type metadata accessor for AppComposer);
    *(v113 + v110) = v546;
    sub_1E5DF599C(&v579, v113 + v111 + 8);
    v114 = sub_1E5E1E388(v106, v113 + v112, v543);
    v565 = &v446;
    v558 = v113;
    v115 = v113 + v539;
    *v115 = v556;
    *(v115 + 8) = v557;
    v116 = (v113 + ((v112 + v54 + 23) & 0xFFFFFFFFFFFFFFF8));
    v117 = *(v107 + 4);
    v116[3] = *(v107 + 3);
    v116[4] = v117;
    v118 = *(v107 + 2);
    v116[1] = *(v107 + 1);
    v116[2] = v118;
    *v116 = *v107;
    MEMORY[0x1EEE9AC00](v114);
    v557 = (&v446 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v120 + 16))();
    v121 = v575;
    v122 = v544;
    sub_1E621770C(v575, v105, v544);
    v556 = swift_allocObject();
    v123 = v541;
    v124 = v540;
    sub_1E5E1E388(v105, v541 + v556, v540);
    sub_1E621770C(v121, v105, v122);
    sub_1E5DF650C(v574, &v579);
    v125 = (v110 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    v575 = v126;
    sub_1E5E1E388(v105, v123 + v126, v124);
    sub_1E5DF599C(&v579, v126 + v125);
    v127 = (v126 + ((v125 + 47) & 0xFFFFFFFFFFFFFFF8));
    v128 = *(v107 + 3);
    v127[2] = *(v107 + 2);
    v127[3] = v128;
    v127[4] = *(v107 + 4);
    v129 = *(v107 + 1);
    *v127 = *v107;
    v127[1] = v129;
    (*(v550 + 2))(v495, v549, v552);
    sub_1E5DFD1CC(v551, v496, &qword_1ED072D90, &qword_1E66040F0);
    v574 = type metadata accessor for ArtworkDescriptor(0);
    v568 = sub_1E65D9CC8();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
    v554 = sub_1E6217774(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v553 = sub_1E6217774(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v548 = sub_1E6217774(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v130 = MEMORY[0x1E69CC888];
    sub_1E6217774(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
    sub_1E6217774(&qword_1EE2D7030, v130, MEMORY[0x1E69CC890]);
    sub_1E5FEB2FC();
    v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
    v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v133 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
    *&v579 = v132;
    *(&v579 + 1) = v133;
    v134 = swift_getOpaqueTypeConformance2();
    *&v579 = v131;
    *(&v579 + 1) = v134;
    swift_getOpaqueTypeConformance2();
    v135 = v501;
    sub_1E65DFBA8();
    __swift_destroy_boxed_opaque_existential_1(&v582);
    v136 = v502;
    v137 = v532;
    (*(v502 + 16))(v531, v135, v532);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&unk_1ED077C20, &qword_1ED073EB0, &unk_1E65FA880, MEMORY[0x1E699D538]);
    sub_1E5FED46C(&qword_1EE2D6240, &qword_1ED073EB8, &qword_1E65EEE78, MEMORY[0x1E699F2B8]);
    v138 = v533;
    sub_1E65E4138();
    sub_1E5DFD1CC(v138, v561, &qword_1ED073EA8, &qword_1E65EEE70);
    swift_storeEnumTagMultiPayload();
    sub_1E6072F24();
    sub_1E6073008();
    v139 = v562;
    sub_1E65E4138();
    sub_1E5DFE50C(v138, &qword_1ED073EA8, &qword_1E65EEE70);
    sub_1E5DFD1CC(v139, v571, &qword_1ED073EA0, &unk_1E65FA870);
    swift_storeEnumTagMultiPayload();
    sub_1E607293C();
    sub_1E6072E98();
    sub_1E65E4138();
    sub_1E5DFE50C(v139, &qword_1ED073EA0, &unk_1E65FA870);
    (*(v136 + 8))(v135, v137);
    sub_1E5DFE50C(v551, &qword_1ED072D90, &qword_1E66040F0);
    (*(v550 + 1))(v549, v552);
    return sub_1E6217CC0(v529, type metadata accessor for SectionMetrics);
  }

  else
  {
    v232 = *(v89 + 1);
    v567 = *v89;
    v558 = v232;
    v233 = v575;
    v234 = v568;
    sub_1E621770C(v575, v568, type metadata accessor for AppComposer);
    v235 = *(v565 + 80);
    v236 = (v235 + 16) & ~v235;
    v237 = v235 | 7;
    v555 = swift_allocObject();
    sub_1E5E1E388(v234, v555 + v236, type metadata accessor for AppComposer);
    v238 = v564;
    sub_1E621770C(v233, v564, type metadata accessor for AppComposer);
    v574 = v237;
    v239 = swift_allocObject();
    v549 = type metadata accessor for AppComposer;
    sub_1E5E1E388(v238, v239 + v236, type metadata accessor for AppComposer);
    v240 = v519;
    v557 = type metadata accessor for AppComposer;
    sub_1E621770C(v233, v519, type metadata accessor for AppComposer);
    v565 = (v236 + v77);
    v241 = swift_allocObject();
    v556 = v236;
    sub_1E5E1E388(v240, v241 + v236, type metadata accessor for AppComposer);
    v242 = v524;
    sub_1E65E24E8();
    v243 = v233;
    v244 = v568;
    sub_1E621770C(v243, v568, type metadata accessor for AppComposer);
    v246 = v493;
    v245 = v494;
    (*(v494 + 16))(v493, v242, v525);
    v247 = v566;
    v550 = *v566;
    v551 = v566[3];
    v552 = v566[5];
    v554 = v566[7];
    v555 = v566[9];
    v248 = (v236 + v77 + *(v245 + 80)) & ~*(v245 + 80);
    v249 = (v492 + v248 + 7) & 0xFFFFFFFFFFFFFFF8;
    v250 = swift_allocObject();
    v251 = v250 + v236;
    v252 = v549;
    sub_1E5E1E388(v244, v251, v549);
    v253 = v246;
    v254 = v525;
    (*(v245 + 32))(v250 + v248, v253, v525);
    v255 = (v250 + v249);
    v256 = v558;
    *v255 = v567;
    v255[1] = v256;
    v257 = (v250 + ((v249 + 23) & 0xFFFFFFFFFFFFFFF8));
    v258 = *(v247 + 4);
    v257[3] = *(v247 + 3);
    v257[4] = v258;
    v259 = *(v247 + 2);
    v257[1] = *(v247 + 1);
    v257[2] = v259;
    *v257 = *v247;
    v260 = v575;
    type metadata accessor for AppEnvironment(0);
    swift_unknownObjectRetain();

    v261 = LocalizationService.localizedDateComponentsFormatter.getter();
    v261();

    v262 = v260;
    v263 = v564;
    sub_1E621770C(v262, v564, v557);
    v264 = swift_allocObject();
    sub_1E5E1E388(v263, v264 + v556, v252);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    sub_1E5FEB2FC();
    v265 = v498;
    sub_1E65E2458();
    (*(v245 + 8))(v524, v254);
    v266 = v500;
    v267 = v534;
    (*(v500 + 16))(v531, v265, v534);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&unk_1ED077C20, &qword_1ED073EB0, &unk_1E65FA880, MEMORY[0x1E699D538]);
    sub_1E5FED46C(&qword_1EE2D6240, &qword_1ED073EB8, &qword_1E65EEE78, MEMORY[0x1E699F2B8]);
    v268 = v533;
    sub_1E65E4138();
    sub_1E5DFD1CC(v268, v561, &qword_1ED073EA8, &qword_1E65EEE70);
    swift_storeEnumTagMultiPayload();
    sub_1E6072F24();
    sub_1E6073008();
    v269 = v562;
    sub_1E65E4138();
    sub_1E5DFE50C(v268, &qword_1ED073EA8, &qword_1E65EEE70);
    sub_1E5DFD1CC(v269, v571, &qword_1ED073EA0, &unk_1E65FA870);
    swift_storeEnumTagMultiPayload();
    sub_1E607293C();
    sub_1E6072E98();
    sub_1E65E4138();
    sub_1E5DFE50C(v269, &qword_1ED073EA0, &unk_1E65FA870);
    return (*(v266 + 8))(v265, v267);
  }
}

uint64_t sub_1E620AA8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v60 = a6;
  v59 = a5;
  v54 = a3;
  v55 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B40, &qword_1E65F7818);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = v45 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v14;
  v49 = v14;
  v16 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B50, &qword_1E65F7828);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v45 - v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B58, &qword_1E65F7830);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = v45 - v20;
  v56 = *a1;
  v48 = a1;
  sub_1E620B2F0(a2, v19);
  v47 = type metadata accessor for AppComposer;
  v46 = v16;
  sub_1E621770C(a1, v16, type metadata accessor for AppComposer);
  v65 = *(v13 + 80);
  v51 = ((v65 + 16) & ~v65) + v15;
  v52 = (v65 + 16) & ~v65;
  v21 = v52;
  v22 = swift_allocObject();
  v66 = type metadata accessor for AppComposer;
  sub_1E5E1E388(v16, v22 + v21, type metadata accessor for AppComposer);
  v45[4] = type metadata accessor for ArtworkDescriptor(0);
  v45[3] = type metadata accessor for ItemMetrics(0);
  v45[2] = type metadata accessor for SectionMetrics(0);
  v45[0] = type metadata accessor for ViewDescriptor(0);
  v45[1] = sub_1E6217774(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6217774(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E5DF11E0();
  sub_1E6217774(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF1338();
  sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65E2408();
  sub_1E65E26E8();
  v23 = MEMORY[0x1E699F400];
  sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
  sub_1E6217774(&qword_1ED076640, v23, MEMORY[0x1E699F408]);
  sub_1E6217774(&qword_1ED0766C8, v23, MEMORY[0x1E699F410]);
  sub_1E65E2418();
  v25 = v47;
  v24 = v48;
  v26 = v46;
  sub_1E621770C(v48, v46, v47);
  v27 = (v65 + 32) & ~v65;
  v28 = swift_allocObject();
  v29 = v54;
  v30 = v55;
  *(v28 + 16) = v54;
  *(v28 + 24) = v30;
  sub_1E5E1E388(v26, v28 + v27, v66);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  type metadata accessor for AppFeature(0);
  sub_1E6217774(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v54 = sub_1E5FED46C(&qword_1ED076B60, &qword_1ED076B58, &qword_1E65F7830, MEMORY[0x1E699F2A8]);
  swift_bridgeObjectRetain_n();
  v32 = v57;
  v33 = v53;
  sub_1E65E4DE8();
  sub_1E621770C(v24, v26, v25);
  v34 = v59;
  v55 = v59[7];
  v35 = (v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1E5E1E388(v26, v36 + v52, v66);
  v37 = v36 + v35;
  v38 = v34[3];
  *(v37 + 32) = v34[2];
  *(v37 + 48) = v38;
  *(v37 + 64) = v34[4];
  v39 = v34[1];
  *v37 = *v34;
  *(v37 + 16) = v39;
  *(v37 + 80) = v60 & 1;
  swift_unknownObjectRetain();

  v40 = v50;
  v41 = v67;
  v42 = v32;
  v43 = sub_1E65E4F08();

  (*(v63 + 8))(v42, v64);
  (*(v61 + 8))(v41, v62);
  (*(v58 + 8))(v40, v33);
  return v43;
}

uint64_t sub_1E620B2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v31 = a2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  sub_1E621770C(v2, v23 - v14, type metadata accessor for AppComposer);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = v16 + v6;
  v30 = swift_allocObject();
  sub_1E5E1E388(v15, v30 + v16, type metadata accessor for AppComposer);
  sub_1E621770C(v3, v15, type metadata accessor for AppComposer);
  v29 = swift_allocObject();
  sub_1E5E1E388(v15, v29 + v16, type metadata accessor for AppComposer);
  sub_1E621770C(v3, v13, type metadata accessor for AppComposer);
  v28 = swift_allocObject();
  sub_1E5E1E388(v13, v28 + v16, type metadata accessor for AppComposer);
  sub_1E621770C(v3, v10, type metadata accessor for AppComposer);
  v27 = swift_allocObject();
  sub_1E5E1E388(v10, v27 + v16, type metadata accessor for AppComposer);
  v18 = v25;
  sub_1E5DF650C(v25, v33);
  v26 = swift_allocObject();
  sub_1E5DF599C(v33, v26 + 16);
  v19 = v24;
  sub_1E621770C(v3, v24, type metadata accessor for AppComposer);
  sub_1E5DF650C(v18, v32);
  v20 = swift_allocObject();
  sub_1E5E1E388(v19, v20 + v16, type metadata accessor for AppComposer);
  sub_1E5DF599C(v32, v20 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v25 = sub_1E65E0A38();
  v24 = type metadata accessor for ArtworkDescriptor(0);
  v23[2] = sub_1E65E07E8();
  v23[1] = sub_1E65E26E8();
  type metadata accessor for ItemMetrics(0);
  type metadata accessor for ViewDescriptor(0);
  sub_1E6217774(&qword_1ED076BC0, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E6217774(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6217774(&qword_1ED076BC8, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v21 = MEMORY[0x1E699F400];
  sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
  sub_1E6217774(&qword_1ED076640, v21, MEMORY[0x1E699F408]);
  sub_1E6217774(&qword_1ED0766C8, v21, MEMORY[0x1E699F410]);
  sub_1E6217774(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  return sub_1E65E2438();
}

uint64_t sub_1E620B870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E620B908(a1);
}

uint64_t sub_1E620B908(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = sub_1E65D9D28();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_1E65D82F8();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v2[22] = swift_task_alloc();
  v5 = sub_1E65D76F8();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_1E65E26E8();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BA0, &qword_1E65F7900);
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E620BBFC, 0, 0);
}

unint64_t sub_1E620BBFC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 64);
  v4 = sub_1E6428234(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v65 = (v2 + 8);
  v64 = (v1 + 8);
  v66 = v3;
  v68 = v1;
  v60 = (v1 + 40);
  v61 = (v1 + 32);

  v11 = 0;
  v62 = v9;
  v63 = v3 + 56;
  v70 = v0;
  while (1)
  {
    *(v0 + 264) = v4;
    if (!v8)
    {
      while (1)
      {
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v15 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v15);
        ++v11;
        if (v8)
        {
          v73 = v4;
          goto LABEL_12;
        }
      }

      v40 = *(v0 + 192);

      v41 = v4 + 64;
      v42 = -1;
      v43 = -1 << *(v4 + 32);
      if (-v43 < 64)
      {
        v42 = ~(-1 << -v43);
      }

      v44 = v42 & *(v4 + 64);
      v45 = (63 - v43) >> 6;
      v75 = (v40 + 48);
      v67 = v40;
      v69 = (v40 + 32);
      result = swift_bridgeObjectRetain_n();
      v46 = 0;
      for (i = MEMORY[0x1E69E7CC0]; v44; v4 = v50)
      {
        v47 = v46;
LABEL_28:
        v49 = *(v0 + 176);
        v48 = *(v0 + 184);
        v44 &= v44 - 1;
        v50 = v4;

        sub_1E65D76B8();

        if ((*v75)(v49, 1, v48) == 1)
        {
          result = sub_1E5DFE50C(*(v0 + 176), &unk_1ED077760, &unk_1E66011D0);
        }

        else
        {
          v51 = *v69;
          (*v69)(*(v0 + 200), *(v0 + 176), *(v0 + 184));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = sub_1E64F6BA0(0, *(i + 2) + 1, 1, i);
          }

          v53 = *(i + 2);
          v52 = *(i + 3);
          if (v53 >= v52 >> 1)
          {
            i = sub_1E64F6BA0((v52 > 1), v53 + 1, 1, i);
          }

          v54 = *(v0 + 200);
          v55 = *(v0 + 184);
          *(i + 2) = v53 + 1;
          result = v51(&i[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v53], v54, v55);
        }

        v46 = v47;
      }

      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v47 >= v45)
        {

          *(v0 + 36) = *(type metadata accessor for AppComposer(0) + 20);
          *(v0 + 272) = type metadata accessor for AppEnvironment(0);
          v56 = WorkoutPlanService.queryWorkoutPlanTemplateMetadata.getter();
          *(v0 + 280) = v57;
          v58 = sub_1E600C8B4(i);
          *(v0 + 288) = v58;

          v76 = (v56 + *v56);
          v59 = swift_task_alloc();
          *(v0 + 296) = v59;
          *v59 = v0;
          v59[1] = sub_1E620C2BC;

          return v76(v58);
        }

        v44 = *(v41 + 8 * v47);
        ++v46;
        if (v44)
        {
          goto LABEL_28;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v73 = v4;
    v15 = v11;
LABEL_12:
    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 232);
    v71 = *(v68 + 72);
    v19 = *(v68 + 16);
    v19(v16, *(v66 + 48) + v71 * (__clz(__rbit64(v8)) | (v15 << 6)), v18);
    sub_1E65E04E8();
    v20 = sub_1E65E26C8();
    v22 = v21;
    v19(v17, v16, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v73;
    result = sub_1E6215038(v20, v22);
    v25 = v73[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_45;
    }

    v29 = v24;
    if (v73[3] < v28)
    {
      break;
    }

    v0 = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = result;
      sub_1E6425478();
      result = v39;
      v0 = v70;
    }

LABEL_18:
    v8 &= v8 - 1;
    v32 = *(v0 + 248);
    v31 = *(v0 + 256);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v74 = *(v0 + 208);
    if (v29)
    {
      v12 = result;

      v13 = v77[7] + v12 * v71;
      v0 = v70;
      (*v60)(v13, v32, v34);
      (*v65)(v33, v74);
      v14 = v34;
      v4 = v77;
      result = (*v64)(v31, v14);
    }

    else
    {
      v77[(result >> 6) + 8] |= 1 << result;
      v35 = (v77[6] + 16 * result);
      *v35 = v20;
      v35[1] = v22;
      (*v61)(v77[7] + result * v71, v32, v34);
      (*v65)(v33, v74);
      v36 = v34;
      v4 = v77;
      result = (*v64)(v31, v36);
      v37 = v77[2];
      v27 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v27)
      {
        goto LABEL_46;
      }

      v77[2] = v38;
    }

    v11 = v15;
    v9 = v62;
    v5 = v63;
  }

  sub_1E641CF40(v28, isUniquelyReferenced_nonNull_native);
  result = sub_1E6215038(v20, v22);
  v0 = v70;
  if ((v29 & 1) == (v30 & 1))
  {
    goto LABEL_18;
  }

  return sub_1E65E6C68();
}

uint64_t sub_1E620C2BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_1E620CF18;
  }

  else
  {

    v4 = sub_1E620C3E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E620C3E0()
{
  v1 = ConfigurationService.queryConfiguration.getter();
  v0[40] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_1E620C4F0;
  v4 = v0[21];

  return v6(v4);
}

uint64_t sub_1E620C4F0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_1E620D040;
  }

  else
  {
    v2 = sub_1E620C640;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E620C640()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[43] = sub_1E65D8298();
  (*(v2 + 8))(v1, v3);
  v4 = CatalogService.queryAllCatalogModalityReferences.getter();
  v0[44] = v5;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_1E620C780;

  return v8();
}

uint64_t sub_1E620C780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_1E620D14C;
  }

  else
  {
    v4 = sub_1E620C894;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E620C894()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 72);

  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  v55 = sub_1E6409A24(v5, sub_1E621767C, v6, v1);

  v57 = *(v2 + 16);
  v58 = v2;
  if (!v57)
  {
LABEL_28:
    v48 = *(v0 + 304);
    v49 = *(v0 + 264);
    v50 = *(v0 + 72);

    v51 = swift_task_alloc();
    v51[2] = v49;
    v51[3] = v4;
    v51[4] = v55;
    v51[5] = v50;
    v52 = sub_1E640576C(sub_1E62176EC, v51, v48);

    v53 = sub_1E600CA50(v52);

    v54 = *(v0 + 8);

    return v54(v53);
  }

  v8 = 0;
  v9 = *(v0 + 112);
  v56 = *(v0 + 344) + 32;
  v10 = *(v0 + 368) + 56;
  v64 = v9;
  v65 = *(v0 + 368);
  v66 = (v9 + 32);
  v63 = (v9 + 8);
  v62 = (v9 + 56);
  v61 = (v9 + 48);
  while (1)
  {
    if (v8 >= *(v58 + 16))
    {
      goto LABEL_32;
    }

    v11 = v56 + 24 * v8;
    v59 = v8 + 1;
    v60 = v4;
    v12 = -1 << *(v65 + 32);
    v13 = -v12 < 64 ? ~(-1 << -v12) : -1;
    v14 = v13 & *(v65 + 56);
    v68 = *(v11 + 8);
    v69 = *v11;
    v67 = *(v11 + 16);
    sub_1E5F8710C(*v11, v68, v67);
    v15 = (63 - v12) >> 6;

    v16 = 0;
    if (!v14)
    {
      break;
    }

    while (1)
    {
      v17 = v16;
LABEL_14:
      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      v20 = *(v0 + 104);
      (*(v64 + 16))(v18, *(v65 + 48) + *(v64 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v20);
      v21 = *(v64 + 32);
      v21(v19, v18, v20);
      v22 = sub_1E65D9D08();
      v24 = v23;
      *(v0 + 16) = v22;
      *(v0 + 24) = v23;
      LOBYTE(v20) = v25 & 1;
      *(v0 + 32) = v25 & 1;
      *(v0 + 40) = v69;
      *(v0 + 48) = v68;
      *(v0 + 56) = v67;
      sub_1E6217698();
      sub_1E6069558();
      v26 = sub_1E65D7FD8();
      sub_1E5F87058(v22, v24, v20);
      if (v26)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v63)(*(v0 + 128), *(v0 + 104));
      v16 = v17;
      if (!v14)
      {
        goto LABEL_11;
      }
    }

    v45 = *(v0 + 128);
    v46 = *(v0 + 104);
    v47 = *(v0 + 88);
    sub_1E5F87058(v69, v68, v67);

    v21(v47, v45, v46);
    v27 = 0;
LABEL_18:
    v28 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *v62;
    (*v62)(v29, v27, 1, v28);
    sub_1E5FAB460(v29, v30, &qword_1ED076B98, &qword_1E65F78F8);
    v32 = *v61;
    if ((*v61)(v30, 1, v28) == 1)
    {
      sub_1E5DFE50C(*(v0 + 80), &qword_1ED076B98, &qword_1E65F78F8);
      v33 = 1;
    }

    else
    {
      v34 = *(v0 + 120);
      v36 = *(v0 + 96);
      v35 = *(v0 + 104);
      v37 = *v66;
      (*v66)(v34, *(v0 + 80), v35);
      v37(v36, v34, v35);
      v33 = 0;
    }

    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v31(v38, v33, 1, v39);
    if (v32(v38, 1, v39) == 1)
    {
      result = sub_1E5DFE50C(*(v0 + 96), &qword_1ED076B98, &qword_1E65F78F8);
      v4 = v60;
    }

    else
    {
      v40 = *v66;
      (*v66)(*(v0 + 144), *(v0 + 96), *(v0 + 104));
      v4 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1E64F6B78(0, v60[2] + 1, 1, v60);
      }

      v42 = v4[2];
      v41 = v4[3];
      if (v42 >= v41 >> 1)
      {
        v4 = sub_1E64F6B78((v41 > 1), v42 + 1, 1, v4);
      }

      v43 = *(v0 + 144);
      v44 = *(v0 + 104);
      v4[2] = v42 + 1;
      result = (v40)(v4 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v42, v43, v44);
    }

    v8 = v59;
    if (v59 == v57)
    {
      goto LABEL_28;
    }
  }

LABEL_11:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      sub_1E5F87058(v69, v68, v67);

      v27 = 1;
      goto LABEL_18;
    }

    v14 = *(v10 + 8 * v17);
    ++v16;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E620CF18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E620D040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E620D14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E620D280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a4;
  v57 = a2;
  v58 = a3;
  v60 = a1;
  v75 = a5;
  v5 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for SectionMetrics(0);
  MEMORY[0x1EEE9AC00](v74);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v56 - v12;
  v65 = sub_1E65D7848();
  v63 = *(v65 - 8);
  v13 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v56 - v15;
  v16 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B90, &qword_1E65F78C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_1E65E05C8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v67 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v56 - v26);
  *v27 = 3;
  v27[1] = 0x4044000000000000;
  v28 = *MEMORY[0x1E699D840];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v31 = type metadata accessor for ViewDescriptor(0);
  v32 = sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v69 = v22;
  v61 = v32;
  v62 = v31;
  v33 = v60;
  sub_1E65E0648();
  sub_1E65E0768();
  sub_1E65E0678();
  sub_1E65E0708();
  v76 = v77;
  v34 = sub_1E5DF1338();
  v70 = v19;
  v59 = v34;
  sub_1E65E23F8();
  v35 = *(v33 + *(v30 + 44) + 8);
  if (*(v35 + 16) && (v36 = sub_1E6215038(v57, v58), (v37 & 1) != 0))
  {
    v38 = *(*(v35 + 56) + v36);
  }

  else
  {
    v38 = 1;
  }

  LODWORD(v58) = v38;
  v39 = v71;
  v40 = v66;
  v41 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v42 = v64;
  sub_1E65E4C98();
  sub_1E5E1F544(v40);
  sub_1E5DFE50C(v42, &qword_1ED071F78, &unk_1E65EA3F0);
  v43 = *(v41 + 48);
  v44 = v65;
  if (v43(v40, 1, v65) == 1)
  {
    sub_1E65D77C8();
    if (v43(v40, 1, v44) != 1)
    {
      sub_1E5DFE50C(v40, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v41 + 32))(v39, v40, v44);
  }

  sub_1E5DFD1CC(v27, v67, &qword_1ED072650, &qword_1E65EB968);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v47 = sub_1E65E5D48();
  v49 = v48;
  v50 = v74;
  v51 = *(v74 + 24);
  v52 = *MEMORY[0x1E69CBCB0];
  v53 = sub_1E65D8F28();
  (*(*(v53 - 8) + 104))(&v8[v51], v52, v53);
  v54 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  strcpy(v8, "workoutPlans");
  v8[13] = 0;
  *(v8 + 7) = -5120;
  *(v8 + 2) = v47;
  *(v8 + 3) = v49;
  *&v8[*(v50 + 32)] = v54;
  sub_1E5DF11E0();
  sub_1E6217774(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E65E23C8();
  return sub_1E5DFE50C(v27, &qword_1ED072650, &qword_1E65EB968);
}

uint64_t sub_1E620DAB4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v63 = a6;
  v58 = a4;
  v59 = a5;
  v54 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B40, &qword_1E65F7818);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v72 = v50 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v14;
  v51 = v14;
  v16 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B50, &qword_1E65F7828);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v50 - v18;
  v50[6] = v50 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B58, &qword_1E65F7830);
  v62 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v70 = v50 - v20;
  v60 = *a1;
  v53 = a1;
  sub_1E620B2F0(a2, v19);
  v52 = type metadata accessor for AppComposer;
  v69 = v16;
  sub_1E621770C(a1, v16, type metadata accessor for AppComposer);
  v68 = *(v13 + 80);
  v55 = ((v68 + 16) & ~v68) + v15;
  v56 = (v68 + 16) & ~v68;
  v21 = v56;
  v22 = swift_allocObject();
  v71 = type metadata accessor for AppComposer;
  sub_1E5E1E388(v16, v22 + v21, type metadata accessor for AppComposer);
  v50[5] = type metadata accessor for ArtworkDescriptor(0);
  v50[4] = type metadata accessor for ItemMetrics(0);
  v50[0] = type metadata accessor for SectionMetrics(0);
  v50[2] = type metadata accessor for ViewDescriptor(0);
  v50[3] = sub_1E6217774(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v50[1] = sub_1E6217774(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E5DF11E0();
  sub_1E6217774(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF1338();
  sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v23 = v54 & 1;
  sub_1E65E2408();
  v24 = v23;
  v54 = v23;
  sub_1E65E2DA8();
  sub_1E65E26E8();
  v25 = MEMORY[0x1E699F400];
  sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
  sub_1E6217774(&qword_1ED076640, v25, MEMORY[0x1E699F408]);
  sub_1E6217774(&qword_1ED0766C8, v25, MEMORY[0x1E699F410]);
  sub_1E65E2418();
  v27 = v52;
  v26 = v53;
  v28 = v69;
  sub_1E621770C(v53, v69, v52);
  v29 = (v68 + 32) & ~v68;
  v30 = v29 + v51;
  v31 = swift_allocObject();
  v33 = v58;
  v32 = v59;
  *(v31 + 16) = v58;
  *(v31 + 24) = v32;
  sub_1E5E1E388(v28, v31 + v29, v71);
  *(v31 + v30) = v24;
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  type metadata accessor for AppFeature(0);
  sub_1E6217774(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v58 = sub_1E5FED46C(&qword_1ED076B60, &qword_1ED076B58, &qword_1E65F7830, MEMORY[0x1E699F2A8]);
  swift_bridgeObjectRetain_n();
  v35 = v61;
  v36 = v57;
  sub_1E65E4DE8();
  v37 = v26;
  v38 = v69;
  sub_1E621770C(v37, v69, v27);
  v39 = v63;
  v59 = v63[7];
  v40 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_1E5E1E388(v38, v41 + v56, v71);
  v42 = v41 + v40;
  v43 = v39[3];
  *(v42 + 32) = v39[2];
  *(v42 + 48) = v43;
  *(v42 + 64) = v39[4];
  v44 = v39[1];
  *v42 = *v39;
  *(v42 + 16) = v44;
  *(v42 + 80) = v54;
  swift_unknownObjectRetain();

  v45 = v70;
  v46 = v72;
  v47 = v35;
  v48 = sub_1E65E4F08();

  (*(v66 + 8))(v47, v67);
  (*(v64 + 8))(v46, v65);
  (*(v62 + 8))(v45, v36);
  return v48;
}

uint64_t sub_1E620E36C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E620B908(a1);
}

uint64_t sub_1E620E404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v77 = a5;
  v74 = a4;
  v63 = a3;
  v62 = a2;
  v76 = a6;
  v7 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SectionMetrics(0);
  MEMORY[0x1EEE9AC00](v75);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v62 - v14;
  v69 = sub_1E65D7848();
  v67 = *(v69 - 8);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v72 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B90, &qword_1E65F78C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = &v62 - v19;
  v20 = sub_1E65E05C8();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65E07B8();
  v79 = *(v81 - 8);
  v22 = MEMORY[0x1EEE9AC00](v81);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v62 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v71 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v62 - v30;
  v32 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v78 = v26;
  sub_1E65E0668();
  sub_1E65E0708();
  if (v86 - 2 >= 3)
  {
    if (v86 < 2u)
    {
      *v31 = 2;
      goto LABEL_9;
    }

    v33 = sub_1E65E0678() >= 7u;
    v34 = 2;
  }

  else
  {
    v33 = sub_1E65E0678() >= 7u;
    v34 = 1;
  }

  if (!v33)
  {
    ++v34;
  }

  *v31 = v34;
  *(v31 + 1) = 0x4034000000000000;
  v35 = *MEMORY[0x1E699D840];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  (*(*(v36 - 8) + 104))(v31, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  swift_storeEnumTagMultiPayload();
LABEL_9:
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for ViewDescriptor(0);
  v65 = sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v66 = v37;
  sub_1E65E0648();
  (*(v79 + 16))(v24, v78, v81);
  sub_1E65E0678();
  sub_1E65E0708();
  v84 = v85;
  v64 = sub_1E5DF1338();
  sub_1E65E23F8();
  v38 = *(a1 + *(v32 + 44) + 8);
  if (*(v38 + 16))
  {
    v39 = sub_1E6215038(v62, v63);
    v40 = v83;
    v42 = v69;
    v41 = v70;
    v43 = v67;
    if (v44)
    {
      v45 = *(*(v38 + 56) + v39);
    }

    else
    {
      v45 = 1;
    }

    LODWORD(v63) = v45;
  }

  else
  {
    LODWORD(v63) = 1;
    v40 = v83;
    v42 = v69;
    v41 = v70;
    v43 = v67;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v46 = v68;
  sub_1E65E4C98();
  sub_1E5E1F544(v41);
  sub_1E5DFE50C(v46, &qword_1ED071F78, &unk_1E65EA3F0);
  v47 = *(v43 + 48);
  if (v47(v41, 1, v42) == 1)
  {
    sub_1E65D77C8();
    if (v47(v41, 1, v42) != 1)
    {
      sub_1E5DFE50C(v41, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v43 + 32))(v40, v41, v42);
  }

  sub_1E5DFD1CC(v31, v71, &qword_1ED072650, &qword_1E65EB968);
  v48 = sub_1E65E28B8();
  v50 = v49;
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v53 = sub_1E65E5D48();
  v55 = v54;
  v56 = v75;
  v57 = *(v75 + 24);
  v58 = *MEMORY[0x1E69CBCB0];
  v59 = sub_1E65D8F28();
  (*(*(v59 - 8) + 104))(v10 + v57, v58, v59);
  v60 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v10 = v48;
  v10[1] = v50;
  v10[2] = v53;
  v10[3] = v55;
  *(v10 + *(v56 + 32)) = v60;
  sub_1E5DF11E0();
  sub_1E6217774(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E65E23C8();
  (*(v79 + 8))(v78, v81);
  return sub_1E5DFE50C(v31, &qword_1ED072650, &qword_1E65EB968);
}

unint64_t sub_1E620ED50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
  v7 = sub_1E65E23B8();
  v8 = a1 + *(type metadata accessor for AppState(0) + 44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + 8);
  result = sub_1E6421698(v7, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_1E620EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v53 = a7;
  v54 = a6;
  v47 = a4;
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
  v56 = *(v9 - 8);
  v57 = v9;
  v52 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v42 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820);
  v41 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B70, &qword_1E65F7850);
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v40 - v18;
  v40 = &v40 - v18;
  v20 = type metadata accessor for AppComposer(0);
  v43 = *(v20 - 8);
  v21 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v40 - v24;
  v48 = &v40 - v24;
  v26 = sub_1E65E60A8();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  sub_1E621770C(v47, v22, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v49, v19, &qword_1ED076B70, &qword_1E65F7850);
  v27 = v45;
  (*(v13 + 16))(v45, v50, v12);
  v28 = v56;
  (*(v56 + 16))(v11, v51, v57);
  v44 = *a5;
  v47 = a5[3];
  v29 = a5[7];
  v49 = a5[5];
  v50 = v29;
  v51 = a5[9];
  v30 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v31 = (v21 + *(v46 + 80) + v30) & ~*(v46 + 80);
  v32 = (v17 + *(v13 + 80) + v31) & ~*(v13 + 80);
  v33 = (v14 + *(v28 + 80) + v32) & ~*(v28 + 80);
  v34 = (v52 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  sub_1E5E1E388(v22, v35 + v30, type metadata accessor for AppComposer);
  sub_1E5FAB460(v40, v35 + v31, &qword_1ED076B70, &qword_1E65F7850);
  (*(v13 + 32))(v35 + v32, v27, v41);
  (*(v56 + 32))(v35 + v33, v42, v57);
  v36 = v35 + v34;
  v37 = *(a5 + 3);
  *(v36 + 32) = *(a5 + 2);
  *(v36 + 48) = v37;
  *(v36 + 64) = *(a5 + 4);
  v38 = *(a5 + 1);
  *v36 = *a5;
  *(v36 + 16) = v38;
  *(v36 + 80) = v54 & 1;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v48, v55, v35);
}

uint64_t sub_1E620F2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v14[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6205B08(a1, v12, a2, a3, a5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1E620F410(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BB0, &qword_1E65F7908);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BB8, &qword_1E65F7910);
  v2[8] = swift_task_alloc();
  v3 = sub_1E65E26E8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072090, &qword_1E65EA778);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1E65E09C8();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = sub_1E65DA488();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = sub_1E65D7908();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v8 = sub_1E65D76F8();
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();
  v9 = sub_1E65D7EB8();
  v2[27] = v9;
  v2[28] = *(v9 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E620F7B0, 0, 0);
}

uint64_t sub_1E620F7B0()
{
  *(v0 + 304) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 308) = *(type metadata accessor for AppEnvironment(0) + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  *(v0 + 240) = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_1E620F8D4;
  v4 = *(v0 + 232);

  return v6(v4);
}

uint64_t sub_1E620F8D4()
{

  if (v0)
  {

    v1 = sub_1E621076C;
  }

  else
  {

    v1 = sub_1E620FA1C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E620FA1C(uint64_t a1)
{
  v3 = v1[28];
  v2 = v1[29];
  v5 = v1[26];
  v4 = v1[27];
  v6 = v1[24];
  v7 = v1[25];
  sub_1E65D7E08();
  (*(v3 + 8))(v2, v4);
  v8 = sub_1E65D76C8();
  v10 = v9;
  (*(v7 + 8))(v5, v6);
  v1[32] = v8;
  v1[33] = v10;
  v11 = WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter();
  v1[34] = v12;
  v15 = (v11 + *v11);
  v13 = swift_task_alloc();
  v1[35] = v13;
  *v13 = v1;
  v13[1] = sub_1E620FB8C;

  return v15();
}

uint64_t sub_1E620FB8C(uint64_t a1)
{
  v4 = *v2;
  v4[36] = v1;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v4[37] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E620FD94, 0, 0);
  }
}

uint64_t sub_1E620FD94()
{
  v0[2] = v0[37];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1E65D7858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C38, &qword_1E65F7A28);
  sub_1E5FED46C(&qword_1ED076C40, &qword_1ED076C38, &qword_1E65F7A28, MEMORY[0x1E69E6518]);
  v4 = sub_1E65E62A8();
  (*(v2 + 8))(v1, v3);

  v5 = *(v4 + 16);
  v92 = v0;
  if (v5)
  {
    v6 = v0[25];
    v7 = v0[19];
    v93 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v5, 0);
    v8 = *(v7 + 16);
    v7 += 16;
    v9 = v4 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v86 = *(v7 + 56);
    v88 = v8;
    v85 = (v6 + 8);
    v84 = (v7 - 8);
    v10 = v0;
    v11 = v93;
    do
    {
      v12 = v10[26];
      v13 = v10[24];
      v14 = v10[20];
      v15 = v10[18];
      v88(v14, v9, v15);
      sub_1E65DA418();
      v16 = sub_1E65D76C8();
      v18 = v17;
      (*v85)(v12, v13);
      (*v84)(v14, v15);
      v20 = *(v93 + 16);
      v19 = *(v93 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E601C0B8((v19 > 1), v20 + 1, 1);
      }

      *(v93 + 16) = v20 + 1;
      v21 = v93 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v9 += v86;
      --v5;
      v10 = v92;
    }

    while (v5);
  }

  else
  {

    v10 = v0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v11 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v25 = 0;
    v26 = v10[33];
    v27 = -v23;
    do
    {
      v28 = (v11 + 40 + 16 * v25++);
      while (1)
      {
        if ((v25 - 1) >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_48;
        }

        v29 = *(v28 - 1);
        v30 = *v28;
        if (!v26)
        {
          break;
        }

        if (v29 != v10[32] || v10[33] != v30)
        {
          result = sub_1E65E6C18();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v25;
        v28 += 2;
        if (v27 + v25 == 1)
        {
          goto LABEL_24;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E601C0B8(0, *(v24 + 16) + 1, 1);
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_1E601C0B8((v32 > 1), v33 + 1, 1);
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v30;
      v10 = v92;
    }

    while (v27 + v25);
  }

LABEL_24:
  v35 = *(v10 + 76);
  v36 = v10[3];
  v37 = v10[4];

  v38 = sub_1E5FA0AFC(v36, v24);
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = *(v37 + v35 + 8);
  if (v45 <= 1)
  {
    if (*(v37 + v35 + 8))
    {
      MEMORY[0x1E69483C0](v38);
    }

    else
    {
      MEMORY[0x1E69483B0](v38);
    }

    v46 = v10[17];

    v47 = swift_task_alloc();
    *(v47 + 16) = v46;
    v90 = sub_1E5FAACF0(sub_1E6217D20, v47, v40, v42, v44);
    swift_unknownObjectRelease();

    goto LABEL_44;
  }

  if (v45 == 2)
  {
    return sub_1E65E69D8();
  }

  sub_1E65E0998();

  v48 = (v44 >> 1) - v42;
  if (__OFSUB__(v44 >> 1, v42))
  {
    goto LABEL_49;
  }

  if (v48)
  {
    v94 = MEMORY[0x1E69E7CC0];
    result = sub_1E601CB98(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
LABEL_50:
      __break(1u);
      return result;
    }

    v79 = (v10[10] + 104);
    v80 = v10[11];
    if (v42 <= (v44 >> 1))
    {
      v54 = v44 >> 1;
    }

    else
    {
      v54 = v42;
    }

    v55 = v54 - v42;
    v78 = v10[13];
    v56 = v10;
    v57 = (v40 + 16 * v42 + 8);
    v77 = v56[8];
    v58 = v94;
    v76 = *MEMORY[0x1E699F3F8];
    while (v55)
    {
      v87 = v55;
      v89 = v48;
      v60 = v92[8];
      v59 = v92[9];
      v82 = v59;
      v83 = v92[11];
      v91 = v58;
      v61 = v92[6];
      v62 = v92[5];
      v64 = *(v57 - 1);
      v63 = *v57;
      *v83 = v64;
      *(v80 + 8) = v63;
      v65 = v63;
      (*v79)(v83, v76, v59, v49, v50, v51, v52, v53, v73, v74, v75);
      *v60 = v64;
      *(v77 + 8) = v65;
      v81 = type metadata accessor for ViewDescriptor(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v66 = sub_1E65E07E8();
      (*(*(v66 - 8) + 56))(v61, 1, 1, v66);
      v67 = type metadata accessor for ItemMetrics(0);
      (*(*(v67 - 8) + 56))(v62, 1, 1, v67);
      sub_1E65E0A38();
      type metadata accessor for ArtworkDescriptor(0);
      sub_1E6217774(&qword_1ED076BC0, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
      sub_1E6217774(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      sub_1E6217774(&qword_1ED076BC8, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
      v68 = MEMORY[0x1E699F400];
      sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
      sub_1E6217774(&qword_1ED076640, v68, MEMORY[0x1E699F408]);
      sub_1E6217774(&qword_1ED0766C8, v68, MEMORY[0x1E699F410]);
      sub_1E6217774(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      swift_bridgeObjectRetain_n();
      v74 = v67;
      v75 = v81;
      v58 = v91;
      v73 = v82;
      sub_1E65E0488();
      swift_storeEnumTagMultiPayload();
      v70 = *(v91 + 16);
      v69 = *(v91 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1E601CB98((v69 > 1), v70 + 1, 1);
        v58 = v91;
      }

      v71 = v92[14];
      *(v58 + 16) = v70 + 1;
      result = sub_1E5FAB460(v71, v58 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v70, &qword_1ED072090, &qword_1E65EA778);
      v55 = v87 - 1;
      v57 += 2;
      v48 = v89 - 1;
      if (v89 == 1)
      {
        swift_unknownObjectRelease();
        v10 = v92;
        v90 = v58;
        goto LABEL_44;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  swift_unknownObjectRelease();
  v90 = MEMORY[0x1E69E7CC0];
LABEL_44:
  (*(v10[16] + 8))(v10[17], v10[15]);

  v72 = v10[1];

  return v72(v90);
}

uint64_t sub_1E621076C(uint64_t a1)
{
  v1[32] = 0;
  v1[33] = 0;
  v2 = WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter();
  v1[34] = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[35] = v4;
  *v4 = v1;
  v4[1] = sub_1E620FB8C;

  return v6();
}

uint64_t sub_1E6210874(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E26E8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = a1[1];
  *v10 = v11;
  v10[1] = v12;
  (*(v13 + 104))(v10, *MEMORY[0x1E699F3F0], v8);
  v14 = sub_1E65E09C8();
  (*(*(v14 - 8) + 16))(v7, a2, v14);
  swift_storeEnumTagMultiPayload();
  v15 = MEMORY[0x1E699F400];
  sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
  sub_1E6217774(&qword_1ED076640, v15, MEMORY[0x1E699F408]);
  sub_1E6217774(&qword_1ED0766C8, v15, MEMORY[0x1E699F410]);

  sub_1E65E04D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072090, &qword_1E65EA778);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6210ADC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6210B7C, 0, 0);
}

uint64_t sub_1E6210B7C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[6] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6210C98;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E6210C98()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6210DB0, 0, 0);
}

uint64_t sub_1E6210DB0()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A8, &qword_1E65EBF30);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4468, &qword_1ED0728A8, &qword_1E65EBF30, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6210EE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6210F88, 0, 0);
}

uint64_t sub_1E6210F88()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E62110A4;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E62110A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E62111D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E62111D4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A8, &qword_1E65EBF30);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4468, &qword_1ED0728A8, &qword_1E65EBF30, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6211310(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62113B0, 0, 0);
}

uint64_t sub_1E62113B0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E62114CC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E62114CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E62115E4, 0, 0);
}

uint64_t sub_1E62115E4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C20, &qword_1E65F7A10);
  v1[4] = sub_1E5FED46C(&qword_1ED076C28, &qword_1ED076C20, &qword_1E65F7A10, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1ED076C30, &qword_1ED076C18, &qword_1E65F7A00, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E621171C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for RouteSource(0);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for RouteDestination(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62117E0, 0, 0);
}

uint64_t sub_1E62117E0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v6 = v4[3];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E388(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1E6211928;
  v8 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v8, (v0 + 72), v6, v5);
}

uint64_t sub_1E6211928()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1E6217CC0(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6211AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v3[5] = swift_task_alloc();
  v4 = sub_1E65D76F8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6211BAC, 0, 0);
}

uint64_t sub_1E6211BAC(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[5];
  sub_1E65E26C8();
  sub_1E65D76B8();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1E5DFE50C(v1[5], &unk_1ED077760, &unk_1E66011D0);

    v5 = v1[1];

    return v5();
  }

  else
  {
    v7 = v1[3];
    (*(v1[7] + 32))(v1[8], v1[5], v1[6]);
    v8 = *(v7 + *(type metadata accessor for AppComposer(0) + 20) + 8);
    v9 = swift_task_alloc();
    v1[9] = v9;
    *v9 = v1;
    v9[1] = sub_1E6211D2C;
    v10 = v1[8];
    v11 = v1[4];

    return sub_1E613D2DC(v10, v11, v8);
  }
}

uint64_t sub_1E6211D2C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E6211EC8;
  }

  else
  {
    v2 = sub_1E6211E40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6211E40()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6211EC8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6211F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E65D9CD8();
  v6 = v5;
  v7 = sub_1E65D9D08();
  v9 = v8;
  v11 = v10;
  v12 = a3 + *(type metadata accessor for AppComposer(0) + 20);
  v13 = type metadata accessor for AppEnvironment(0);
  __swift_project_boxed_opaque_existential_1((v12 + *(v13 + 136)), *(v12 + *(v13 + 136) + 24));
  v14 = sub_1E65DB448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65D7FB8();
  sub_1E5F87058(v7, v9, v11 & 1);
  v15 = 0;
  v16 = 0;
  if (v18 != 14)
  {
    v15 = sub_1E6289E48(v14 & 1, v18);
  }

  return sub_1E64074A8(v15, v16, v4, v6);
}

uint64_t sub_1E6212070@<X0>(void (*a1)(char *, void, uint64_t, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v166 = a5;
  v162 = a4;
  v161 = a3;
  v186 = a2;
  v188 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v170 = &v146 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BB0, &qword_1E65F7908);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v172 = &v146 - v10;
  v156 = sub_1E65D7348();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v153);
  v157 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BB8, &qword_1E65F7910);
  v13 = MEMORY[0x1EEE9AC00](v167);
  v152 = (&v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v146 - v15;
  v169 = sub_1E65E26E8();
  v16 = MEMORY[0x1EEE9AC00](v169);
  v158 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v171 = &v146 - v18;
  v175 = type metadata accessor for ItemMetrics(0);
  v168 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v180 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v165 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v164 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v163 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E65D72D8();
  v181 = *(v178 - 8);
  v26 = MEMORY[0x1EEE9AC00](v178);
  v28 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v146 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v160 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v159 = &v146 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v146 - v35;
  v36 = sub_1E65D9388();
  v184 = *(v36 - 8);
  v185 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E65D76F8();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v149 = &v146 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v146 - v42;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BA0, &qword_1E65F7900);
  v179 = *(v183 - 8);
  v44 = MEMORY[0x1EEE9AC00](v183);
  v46 = &v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v146 - v47;
  v182 = a1;
  sub_1E65DA418();
  v49 = sub_1E65D76C8();
  v51 = v50;
  v52 = *(v39 + 8);
  v151 = v38;
  v53 = v186;
  v150 = v39 + 8;
  v148 = v52;
  v52(v43, v38);
  if (!v53[2])
  {

    goto LABEL_6;
  }

  v54 = sub_1E6215038(v49, v51);
  v56 = v55;

  if ((v56 & 1) == 0)
  {
LABEL_6:
    v64 = 1;
    v65 = v188;
    goto LABEL_7;
  }

  v57 = v179;
  v58 = v183;
  (*(v179 + 16))(v46, v53[7] + *(v179 + 72) * v54, v183);
  (*(v57 + 32))(v48, v46, v58);
  v59 = v173;
  sub_1E65DA468();
  v61 = v184;
  v60 = v185;
  v186 = *(v184 + 48);
  v62 = (v186)(v59, 1, v185);
  v63 = v187;
  if (v62 == 1)
  {
    (*(v57 + 8))(v48, v58);
    sub_1E5DFE50C(v59, &qword_1ED075D78, &qword_1E65F38F8);
    v64 = 1;
    v65 = v188;
LABEL_7:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618);
    return (*(*(v66 - 8) + 56))(v65, v64, 1, v66);
  }

  v147 = v48;
  (*(v61 + 32))(v176, v59, v60);
  sub_1E65D72C8();
  v68 = 0;
  v69 = v161;
  v70 = *(v161 + 16);
  v71 = v182;
  v72 = v162;
  while (v70 != v68)
  {
    v73 = *(sub_1E65D9D28() - 8);
    sub_1E6213A18(v28, v69 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v68++, v71, v72);
    if (v63)
    {

      (*(v181 + 8))(v28, v178);
      __break(1u);
      break;
    }
  }

  (*(v181 + 32))(v177, v28, v178);
  v74 = v159;
  sub_1E65DA468();
  v75 = v185;
  v76 = v186;
  if ((v186)(v74, 1, v185) == 1)
  {
    sub_1E5DFE50C(v74, &qword_1ED075D78, &qword_1E65F38F8);
    v77 = 0;
  }

  else
  {
    v78 = sub_1E65D9368();
    (*(v184 + 8))(v74, v75);
    v77 = *(v78 + 16);
  }

  v79 = v166;
  v80 = v160;
  sub_1E65DA468();
  if (v76(v80, 1, v75) == 1)
  {
    sub_1E5DFE50C(v80, &qword_1ED075D78, &qword_1E65F38F8);
    v81 = 0;
LABEL_21:
    v88 = 0;
    goto LABEL_23;
  }

  v82 = sub_1E65D9368();
  (*(v184 + 8))(v80, v75);
  v83 = sub_1E62033A4(v82);

  v84 = sub_1E64E0704(v83);
  if (v85)
  {
    v81 = 0;
  }

  else
  {
    v81 = v84;
  }

  v86 = sub_1E64E0B9C(v83);
  if (v87)
  {
    goto LABEL_21;
  }

  v88 = v86;
LABEL_23:
  sub_1E65E5BF8();
  sub_1E65E5BE8();
  v189 = v77;
  if (v81 != v88)
  {
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    v189 = v81;
  }

  sub_1E65E5BC8();
  sub_1E65E5BE8();
  v189 = v88;
  sub_1E65E5BC8();
  sub_1E65E5BE8();
  sub_1E65E5C18();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v90 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v186 = sub_1E65E5D48();
  v187 = v91;
  v92 = v175;
  v93 = *(v175 + 20);
  v94 = *MEMORY[0x1E69CBAA0];
  v95 = sub_1E65D8C68();
  v96 = v180;
  (*(*(v95 - 8) + 104))(&v180[v93], v94, v95);
  v97 = v92[7];
  v98 = *MEMORY[0x1E69CC448];
  v99 = sub_1E65D9908();
  (*(*(v99 - 8) + 104))(&v96[v97], v98, v99);
  v100 = v92[8];
  v101 = *MEMORY[0x1E69CBCD8];
  v102 = sub_1E65D8F28();
  (*(*(v102 - 8) + 104))(&v96[v100], v101, v102);
  v103 = v92[10];
  v104 = *MEMORY[0x1E69CCA80];
  v105 = sub_1E65D9F88();
  (*(*(v105 - 8) + 104))(&v96[v103], v104, v105);
  *v96 = 0x616C506465766153;
  *(v96 + 1) = 0xE90000000000006ELL;
  *&v96[v92[6]] = xmmword_1E65F4AC0;
  v106 = *(v79 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v106 < 2)
  {

    sub_1E65E04E8();
    v107 = sub_1E65DAE38();
    if (v107 == sub_1E65DAE38())
    {
      v108 = v174;
      MEMORY[0x1E69483B0]();
    }

    else
    {
      v108 = v174;
      MEMORY[0x1E69483C0]();
    }

    v109 = v185;
    v110 = v157;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
    v112 = *(v111 + 48);
    v113 = *(v111 + 64);
    sub_1E65DA418();
    v114 = v184;
    (*(v184 + 16))(v110 + v112, v176, v109);
    (*(v114 + 56))(v110 + v112, 0, 1, v109);
    v115 = *(sub_1E65DA428() + 16);

    *(v110 + v113) = v115;
    swift_storeEnumTagMultiPayload();
    if (sub_1E65E4B48())
    {
      v116 = 8.0;
    }

    else
    {
      v116 = 4.0;
    }

    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD0, &qword_1E65F7918);
    v118 = &v108[v117[12]];
    v119 = v117[16];
    v165 = v117[20];
    v166 = v117[24];
    sub_1E5E1E388(v110, v118, type metadata accessor for ArtworkContent);
    v120 = type metadata accessor for ArtworkDescriptor(0);
    v173 = v120;
    *(v118 + v120[5]) = MEMORY[0x1E69E7CD0];
    v121 = v118 + v120[6];
    *v121 = 0;
    *(v121 + 8) = v116;
    *(v121 + 16) = v116;
    *(v121 + 24) = 0x4020000000000000;
    *(v118 + v120[7]) = 1;
    v122 = (v118 + v120[8]);
    *v122 = 0;
    v122[1] = 0;
    sub_1E65DA458();
    v123 = v154;
    sub_1E65D7338();
    sub_1E65E4528();
    sub_1E65E44D8();
    v124 = sub_1E65E4538();

    v189 = v124;
    sub_1E608F9E4();
    sub_1E65D7358();
    v125 = v119;
    sub_1E65E5D38();

    v126 = *(v155 + 8);
    v127 = v156;
    v126(v123, v156);
    v182 = *(v181 + 56);
    v128 = &v108[v125];
    v129 = v178;
    v130 = (v182)(v128, 0, 1, v178);
    sub_1E62F8DDC(v130);
    v131 = v165;
    sub_1E65E5D38();

    v126(v123, v127);
    v132 = v174;
    v133 = v182;
    v182(&v131[v174], 0, 1, v129);
    v134 = v166;
    (*(v181 + 16))(&v132[v166], v177, v129);
    v133(&v132[v134], 0, 1, v129);
    swift_storeEnumTagMultiPayload();
    v135 = sub_1E65E07E8();
    (*(*(v135 - 8) + 56))(v172, 1, 1, v135);
    v136 = v170;
    sub_1E621770C(v180, v170, type metadata accessor for ItemMetrics);
    (*(v168 + 56))(v136, 0, 1, v175);
    v187 = sub_1E65E0A38();
    v186 = type metadata accessor for ViewDescriptor(0);
    v182 = sub_1E6217774(&qword_1ED076BC0, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
    v168 = sub_1E6217774(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v167 = sub_1E6217774(&qword_1ED076BC8, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
    v137 = MEMORY[0x1E699F400];
    sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
    sub_1E6217774(&qword_1ED076640, v137, MEMORY[0x1E699F408]);
    sub_1E6217774(&qword_1ED0766C8, v137, MEMORY[0x1E699F410]);
    sub_1E6217774(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v65 = v188;
    goto LABEL_35;
  }

  if (v106 == 3)
  {

    sub_1E65E04E8();
    v138 = v149;
    sub_1E65DA418();
    v139 = sub_1E65D76C8();
    v141 = v140;
    v148(v138, v151);
    v142 = v152;
    *v152 = v139;
    v142[1] = v141;
    v187 = type metadata accessor for ViewDescriptor(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v143 = sub_1E65E07E8();
    (*(*(v143 - 8) + 56))(v172, 1, 1, v143);
    v144 = v170;
    sub_1E621770C(v180, v170, type metadata accessor for ItemMetrics);
    (*(v168 + 56))(v144, 0, 1, v175);
    v186 = sub_1E65E0A38();
    v182 = type metadata accessor for ArtworkDescriptor(0);
    v174 = sub_1E6217774(&qword_1ED076BC0, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
    v173 = sub_1E6217774(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E6217774(&qword_1ED076BC8, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
    v145 = MEMORY[0x1E699F400];
    sub_1E6217774(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
    sub_1E6217774(&qword_1ED076640, v145, MEMORY[0x1E699F408]);
    sub_1E6217774(&qword_1ED0766C8, v145, MEMORY[0x1E699F410]);
    sub_1E6217774(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E6217774(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v65 = v188;
LABEL_35:
    sub_1E65E0488();
    sub_1E6217CC0(v180, type metadata accessor for ItemMetrics);
    (*(v181 + 8))(v177, v178);
    (*(v184 + 8))(v176, v185);
    (*(v179 + 8))(v147, v183);
    v64 = 0;
    goto LABEL_7;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E6213A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD8, &qword_1E65F7920);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v76 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE0, &qword_1E65F7928);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE8, &qword_1E65F7930);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v76 - v13;
  v99 = sub_1E65D72A8();
  v87 = *(v99 - 8);
  v14 = MEMORY[0x1EEE9AC00](v99);
  v93 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v76 - v18;
  v20 = sub_1E65D72D8();
  v95 = *(v20 - 8);
  v96 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v85 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v76 - v25;
  v26 = sub_1E65DA428();
  v27 = sub_1E65D9CD8();
  v29 = sub_1E637CA94(v27, v28, v26);

  if (v29)
  {
    v31 = sub_1E65D9CD8();
    if (*(a4 + 16))
    {
      v33 = sub_1E6215038(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = (*(a4 + 56) + 16 * v33);
        v38 = *v36;
        v37 = v36[1];
        v39 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

        v82 = v38;
        v83 = v37;
        v40 = sub_1E65E5C48();
        [v39 initWithString_];

        swift_getKeyPath();
        v41 = sub_1E65D71D8();
        v42 = sub_1E6217774(&qword_1ED076BF0, MEMORY[0x1E699D770], MEMORY[0x1E699D768]);
        sub_1E65D72F8();
        if (v4)
        {

          (*(v95 + 56))(v19, 1, 1, v96);
          return sub_1E5DFE50C(v19, &qword_1ED072D90, &qword_1E66040F0);
        }

        v79 = v42;
        v80 = v41;
        v81 = 0;
        v43 = v95;
        v44 = v96;
        (*(v95 + 56))(v19, 0, 1, v96);
        (*(v43 + 32))(v94, v19, v44);
        v45 = v92;
        sub_1E65D7208();
        v46 = v93;
        sub_1E65D72B8();
        if (v82 == 0x656D2E656C707061 && v83 == 0xEE00657461746964 || (sub_1E65E6C18() & 1) != 0)
        {
          sub_1E6217774(&qword_1ED076BF8, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
          v47 = v99;
          result = sub_1E65E5B88();
          if (result)
          {
            v48 = v87;
            v49 = *(v87 + 16);
            v49(v12, v45, v47);
            v50 = v88;
            v49(&v12[*(v88 + 48)], v46, v47);
            sub_1E5DFD1CC(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v77 = *(v50 + 48);
            v51 = *(v48 + 32);
            v52 = v91;
            v51(v91, v10, v99);
            v53 = *(v48 + 8);
            v78 = v53;
            v87 = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v53(&v10[v77], v99);
            sub_1E5FAB460(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v51(&v52[*(v89 + 36)], &v10[*(v50 + 48)], v99);
            v53(v10, v99);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1E65D9D18();
            v54 = v90;
            sub_1E65E0AE8();
            v55 = sub_1E65E0AF8();
            (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
            sub_1E5FED46C(&qword_1ED076C00, &qword_1ED076BE8, &qword_1E65F7930, MEMORY[0x1E69E66D8]);
            v56 = v52;
LABEL_15:
            v66 = v94;
            v67 = sub_1E65D7318();
            v68 = sub_1E65D7368();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
            sub_1E6217774(&qword_1ED076C10, MEMORY[0x1E699D9A0], MEMORY[0x1E699D998]);
            sub_1E65D73D8();
            v68(v97, 0);

            v67(v98, 0);
            sub_1E5DFE50C(v56, &qword_1ED076BE8, &qword_1E65F7930);
            v69 = v84;
            sub_1E65D7228();
            v70 = v85;
            sub_1E65D7258();
            v71 = *(v95 + 8);
            v72 = v69;
            v73 = v96;
            v71(v72, v96);
            sub_1E65D7298();
            v71(v70, v73);
            v74 = v99;
            v75 = v78;
            v78(v93, v99);
            v75(v92, v74);
            return (v71)(v66, v73);
          }

          __break(1u);
        }

        else
        {
          sub_1E6217774(&qword_1ED076BF8, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
          v57 = v99;
          result = sub_1E65E5B88();
          if (result)
          {
            v58 = v87;
            v59 = *(v87 + 16);
            v59(v12, v45, v57);
            v60 = v88;
            v59(&v12[*(v88 + 48)], v46, v57);
            sub_1E5DFD1CC(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v77 = *(v60 + 48);
            v61 = *(v58 + 32);
            v62 = v91;
            v61(v91, v10, v99);
            v63 = *(v58 + 8);
            v78 = v63;
            v87 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v63(&v10[v77], v99);
            sub_1E5FAB460(v12, v10, &qword_1ED076BE0, &qword_1E65F7928);
            v61(&v62[*(v89 + 36)], &v10[*(v60 + 48)], v99);
            v63(v10, v99);
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1E65D9D18();
            v64 = v90;
            sub_1E65E0AE8();
            v65 = sub_1E65E0AF8();
            (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
            sub_1E5FED46C(&qword_1ED076C00, &qword_1ED076BE8, &qword_1E65F7930, MEMORY[0x1E69E66D8]);
            v56 = v62;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E6214624(uint64_t (*a1)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + v5 + 40);

  return a1(v1 + v3, v1 + v5, v13, v9, v10, v11, v12);
}

uint64_t sub_1E6214700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a4(a1, a2, a3, v4 + v9, v10);
}

unint64_t sub_1E6214800()
{
  result = qword_1EE2D4ED8;
  if (!qword_1EE2D4ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076B18, &qword_1E65F77D0);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4ED8);
  }

  return result;
}

uint64_t sub_1E62148B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppComposer(0);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E64E0C50(a1, a2, a3);
}

uint64_t sub_1E62149AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppComposer(0);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E64E37E0(a1, a2, a3);
}

uint64_t sub_1E6214A9C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E64E4D18(a1, v1 + v5);
}

uint64_t sub_1E6214BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E64E652C(a1, a2, a3, v10, a4);
}

uint64_t sub_1E6214C3C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(type metadata accessor for SectionMetrics(0) - 8);
  v5 = ((v3 & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v0 + v3);
  v8 = v0 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1E607EB54((v0 + v2), v7, v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8, (v0 + v5), v9, v10, (v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E6214D74(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, unint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return a2(a1, v2 + v5, v2 + v6, v2 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E6214E4C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1E65DFAE8() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E6484858((v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), v0 + v6, *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), (v0 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E6214F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(v1 + v4);

  return sub_1E6485D6C(v5, v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8, (v1 + (((v4 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8)), a1);
}

unint64_t sub_1E6215038(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  v4 = sub_1E65E6D78();

  return sub_1E62150B0(a1, a2, v4);
}

unint64_t sub_1E62150B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E65E6C18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E6215168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075840, &qword_1E65F1DF8);
    v3 = sub_1E65E6A28();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5DFD1CC(v4, &v13, &qword_1ED0737A0, &qword_1E65FF0D0);
      v5 = v13;
      v6 = v14;
      result = sub_1E6215038(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E6121EB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t objectdestroy_63Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E621600C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);

  return a1(v1 + v3, v7, v8, v9, v10, v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E62160CC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E64E8B20(a1, a2, v2 + 16);
}

uint64_t sub_1E6216174(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61FE1D0(a1, a2, v2 + v7);
}

uint64_t objectdestroy_38Tm(uint64_t (*a1)(void))
{
  v102 = type metadata accessor for AppComposer(0);
  v100 = *(*(v102 - 1) + 80);
  v96 = *(*(v102 - 1) + 64);
  v3 = a1(0);
  v98 = *(v3 - 8);
  v99 = v3;
  v95 = *(v98 + 80);
  v101 = v1;
  v97 = (v100 + 16) & ~v100;
  v92 = v1 + v97;

  v4 = v1 + v97 + v102[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v94 = type metadata accessor for AccountService();
  v93 = *(v94[-1].Description + 1);
  v93(v4 + v6, v94);
  v7 = v5[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(v4 + v7, v91);
  v8 = v5[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(v4 + v8, v89);
  v9 = v5[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(v4 + v9, v87);
  v10 = v5[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(v4 + v10, v85);
  v11 = v5[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(v4 + v11, v83);
  v12 = v5[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(v4 + v12, v81);
  v13 = v5[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(v4 + v13, v79);
  v14 = v5[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(v4 + v14, v77);
  v15 = v5[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(v4 + v15, v75);
  v16 = v5[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(v4 + v16, v73);
  v17 = v5[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(v4 + v17, v71);
  v18 = v5[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v4 + v18, v69);
  v19 = v5[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(v4 + v19, v67);
  v20 = v5[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(v4 + v20, v65);
  v21 = v5[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(v4 + v21, v63);
  v22 = v5[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(v4 + v22, v61);
  v23 = v5[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(v4 + v23, v59);
  v24 = v5[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(v4 + v24, v57);
  v25 = v5[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(v4 + v25, v55);
  v26 = v5[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(v4 + v26, v53);
  v27 = v5[27];
  v51 = type metadata accessor for ServiceSubscriptionService();
  v50 = *(v51[-1].Description + 1);
  v50(v4 + v27, v51);
  v28 = v5[28];
  v44 = type metadata accessor for SessionService();
  v49 = *(v44[-1].Description + 1);
  v49(v4 + v28, v44);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v48 = *(v30[-1].Description + 1);
  v48(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v47 = *(v32[-1].Description + 1);
  v47(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v46 = *(v34[-1].Description + 1);
  v46(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v43 = *(v38[-1].Description + 1);
  v43(v4 + v37, v38);

  v39 = v92 + v102[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v93(v40 + v5[6], v94);
  v90(v40 + v5[7], v91);
  v88(v40 + v5[8], v89);
  v86(v40 + v5[9], v87);
  v84(v40 + v5[10], v85);
  v82(v40 + v5[11], v83);
  v80(v40 + v5[12], v81);
  v78(v40 + v5[13], v79);
  v76(v40 + v5[14], v77);
  v74(v40 + v5[15], v75);
  v72(v40 + v5[16], v73);
  v70(v40 + v5[17], v71);
  v68(v40 + v5[18], v69);
  v66(v40 + v5[19], v67);
  v64(v40 + v5[20], v65);
  v62(v40 + v5[21], v63);
  v60(v40 + v5[22], v61);
  v58(v40 + v5[23], v59);
  v56(v40 + v5[24], v57);
  v54(v40 + v5[25], v55);
  v52(v40 + v5[26], v53);
  v50(v40 + v5[27], v51);
  v49(v40 + v5[28], v44);
  v48(v40 + v5[29], v30);
  v47(v40 + v5[30], v32);
  v46(v40 + v5[31], v34);

  v45(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v43(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v92 + v102[9] + 8) >= 0xCuLL)
  {
  }

  v41 = (v92 + v102[10]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  (*(v98 + 8))(v101 + ((v97 + v96 + v95) & ~v95), v99);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6217024(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, unint64_t, uint64_t, uint64_t, unint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v2 + v9);
  v12 = *v11;
  v13 = v11[1];

  return a2(v2 + v5, v2 + v8, v12, v13, v2 + v10);
}

uint64_t sub_1E6217178(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E6217248(uint64_t a1)
{
  type metadata accessor for AppComposer(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E620E36C(a1);
}

uint64_t sub_1E6217320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9 = *(v8 + *(v5 + 64));

  return sub_1E620E404(a1, v6, v7, v8, v9, a2);
}

uint64_t sub_1E62173E4(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B70, &qword_1E65F7850) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E620371C(a1, v14, v15, v1 + v4, v1 + v7, v1 + v10, v1 + v13, v16);
}

unint64_t sub_1E6217698()
{
  result = qword_1ED076BA8;
  if (!qword_1ED076BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076BA8);
  }

  return result;
}

uint64_t sub_1E621770C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6217774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E62177BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E620F410(a1, v1 + v5);
}

uint64_t sub_1E6217894(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6210ADC(a1, v1 + v5);
}

uint64_t sub_1E6217970(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6210EE8(a1, v1 + v5);
}

uint64_t sub_1E6217A4C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6211310(a1, v1 + v5);
}

uint64_t sub_1E6217B28()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E621171C(v0 + 16);
}

uint64_t sub_1E6217BBC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6211AB0(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1E6217CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6217D40(uint64_t a1)
{
  type metadata accessor for AppComposer(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E620B870(a1);
}

uint64_t sub_1E6217E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E620D280(a1, v6, v7, v8, a2);
}

uint64_t objectdestroy_99Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6218BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1E620EDF0(a1, a2, a3, v5 + v12, v13, *(v13 + 80), a4, a5);
}

uint64_t objectdestroy_102Tm()
{
  v114 = type metadata accessor for AppComposer(0);
  v112 = *(*(v114 - 1) + 80);
  v1 = (v112 + 32) & ~v112;
  v2 = v1 + *(*(v114 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B70, &qword_1E65F7850);
  v111 = *(*(v3 - 8) + 80);
  v108 = *(*(v3 - 8) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820);
  v109 = *(v4 - 8);
  v110 = v4;
  v106 = *(v109 + 80);
  v104 = *(v109 + 64);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848);
  v105 = *(v107 - 8);
  v103 = *(v105 + 80);
  swift_unknownObjectRelease();
  v113 = v0;
  v100 = v0 + v1;

  v5 = v0 + v1 + v114[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v7, v102);
  v8 = v6[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v8, v99);
  v9 = v6[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v9, v97);
  v10 = v6[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v10, v95);
  v11 = v6[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v11, v93);
  v12 = v6[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v12, v91);
  v13 = v6[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v13, v89);
  v14 = v6[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v14, v87);
  v15 = v6[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v15, v85);
  v16 = v6[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v16, v83);
  v17 = v6[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v17, v81);
  v18 = v6[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v18, v79);
  v19 = v6[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v19, v77);
  v20 = v6[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v20, v75);
  v21 = v6[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v21, v73);
  v22 = v6[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v22, v71);
  v23 = v6[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v23, v69);
  v24 = v6[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v24, v67);
  v25 = v6[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v25, v65);
  v26 = v6[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v26, v63);
  v27 = v6[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v27, v61);
  v28 = v6[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v5 + v28, v59);
  v29 = v6[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v5 + v29, v52);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v56 = *(v31[-1].Description + 1);
  v56(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v55 = *(v33[-1].Description + 1);
  v55(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v54 = *(v35[-1].Description + 1);
  v54(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v51 = *(v39[-1].Description + 1);
  v51(v5 + v38, v39);

  v40 = v100 + v114[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v41 + v6[6], v102);
  v98(v41 + v6[7], v99);
  v96(v41 + v6[8], v97);
  v94(v41 + v6[9], v95);
  v92(v41 + v6[10], v93);
  v90(v41 + v6[11], v91);
  v88(v41 + v6[12], v89);
  v86(v41 + v6[13], v87);
  v84(v41 + v6[14], v85);
  v82(v41 + v6[15], v83);
  v80(v41 + v6[16], v81);
  v78(v41 + v6[17], v79);
  v76(v41 + v6[18], v77);
  v74(v41 + v6[19], v75);
  v72(v41 + v6[20], v73);
  v70(v41 + v6[21], v71);
  v68(v41 + v6[22], v69);
  v66(v41 + v6[23], v67);
  v64(v41 + v6[24], v65);
  v62(v41 + v6[25], v63);
  v60(v41 + v6[26], v61);
  v58(v41 + v6[27], v59);
  v57(v41 + v6[28], v52);
  v56(v41 + v6[29], v31);
  v55(v41 + v6[30], v33);
  v54(v41 + v6[31], v35);

  v53(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v51(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v100 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v111) & ~v111;
  v43 = (v100 + v114[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B78, &qword_1E65F7860);
    v47 = *(v46 - 8);
    if (!(*(v47 + 48))(v113 + v42, 1, v46))
    {
      (*(v47 + 8))(v113 + v42, v46);
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v45 = sub_1E65E26E8();
    (*(*(v45 - 8) + 8))(v113 + v42, v45);
  }

  v48 = (v42 + v108 + v106) & ~v106;
  v49 = (v48 + v104 + v103) & ~v103;
  (*(v109 + 8))(v113 + v48, v110);
  (*(v105 + 8))(v113 + v49, v107);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6219C4C(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B70, &qword_1E65F7850) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B48, &qword_1E65F7820) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B68, &qword_1E65F7848) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_1E5DFA78C;

  return sub_1E620371C(a1, v14, v15, v1 + v4, v1 + v7, v1 + v10, v1 + v13, v16);
}

uint64_t sub_1E6219F30(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C80, &qword_1E65F7B50);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C88, &qword_1E65F7B58);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C90, &qword_1E65F7B60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E621A96C();
  sub_1E65E6DA8();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E621A9C0();
    sub_1E65E6B18();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E621AA14();
    sub_1E65E6B18();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1E621A1EC()
{
  if (*v0)
  {
    return 0x74756F6B726F77;
  }

  else
  {
    return 0x7972616D6D7573;
  }
}

uint64_t sub_1E621A220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E621A2FC(uint64_t a1)
{
  v2 = sub_1E621A96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E621A338(uint64_t a1)
{
  v2 = sub_1E621A96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E621A374(uint64_t a1)
{
  v2 = sub_1E621AA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E621A3B0(uint64_t a1)
{
  v2 = sub_1E621AA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E621A3EC(uint64_t a1)
{
  v2 = sub_1E621A9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E621A428(uint64_t a1)
{
  v2 = sub_1E621A9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E621A464@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E621A4B0(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E621A4B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C50, &qword_1E65F7B30);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C58, &qword_1E65F7B38);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C60, &unk_1E65F7B40);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E621A96C();
  v11 = v26;
  sub_1E65E6D98();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E65E6AF8();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E5FBE3F0();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E65E68F8();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v19 = &type metadata for SampleContentContext;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1E621A9C0();
    sub_1E65E6A68();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E621AA14();
    sub_1E65E6A68();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E621A96C()
{
  result = qword_1ED076C68;
  if (!qword_1ED076C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076C68);
  }

  return result;
}

unint64_t sub_1E621A9C0()
{
  result = qword_1ED076C70;
  if (!qword_1ED076C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076C70);
  }

  return result;
}

unint64_t sub_1E621AA14()
{
  result = qword_1ED076C78;
  if (!qword_1ED076C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076C78);
  }

  return result;
}

unint64_t sub_1E621AA9C()
{
  result = qword_1ED076C98;
  if (!qword_1ED076C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076C98);
  }

  return result;
}

unint64_t sub_1E621AAF4()
{
  result = qword_1ED076CA0;
  if (!qword_1ED076CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CA0);
  }

  return result;
}

unint64_t sub_1E621AB4C()
{
  result = qword_1ED076CA8;
  if (!qword_1ED076CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CA8);
  }

  return result;
}

unint64_t sub_1E621ABA4()
{
  result = qword_1ED076CB0;
  if (!qword_1ED076CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CB0);
  }

  return result;
}

unint64_t sub_1E621ABFC()
{
  result = qword_1ED076CB8;
  if (!qword_1ED076CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CB8);
  }

  return result;
}

unint64_t sub_1E621AC54()
{
  result = qword_1ED076CC0;
  if (!qword_1ED076CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CC0);
  }

  return result;
}

unint64_t sub_1E621ACAC()
{
  result = qword_1ED076CC8;
  if (!qword_1ED076CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CC8);
  }

  return result;
}

uint64_t sub_1E621AD08@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_1E65DCE68() == 8)
  {
    *v16 = sub_1E65DCED8();
    v16[1] = v17;
    sub_1E621B1F4();
    swift_storeEnumTagMultiPayload();
    sub_1E621B0E4(v4);
    v18 = sub_1E65DCE28();
    if (v18 != 2)
    {
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      *v8 = v19 & 1;
      sub_1E65D7688();
    }

    swift_storeEnumTagMultiPayload();
    v20 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    State = type metadata accessor for WorkoutContextMenuLoadState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    swift_storeEnumTagMultiPayload();
    sub_1E5FAB460(v13, v20, &qword_1ED0737C8, &unk_1E6605140);
    sub_1E5FAB460(v10, v20 + State[5], &unk_1ED077CC0, &unk_1E65F2610);
    sub_1E5FAB460(v4, v20 + State[6], &unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E5FAB460(v8, v20 + State[7], &unk_1ED077CC0, &unk_1E65F2610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v22 = type metadata accessor for ContextMenu(0);
    sub_1E605953C(v16, a1 + *(v22 + 20));
    return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
  }

  else
  {
    v24 = type metadata accessor for ContextMenu(0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }
}

uint64_t sub_1E621B0E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65DCE78();
  if (v2 <= 5)
  {
    if (v2 >= 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
      *a1 = 1;
LABEL_8:
      v3 = 256;
      goto LABEL_9;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
    *a1 = 0;
    v3 = 1;
LABEL_9:
    *(a1 + 4) = v3;
    sub_1E65D7688();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    goto LABEL_10;
  }

  if (v2 - 7 < 2)
  {
    goto LABEL_5;
  }

  if (v2 == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
    *a1 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
LABEL_10:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E621B1F4()
{
  if (sub_1E65DCE68() == 8 && sub_1E65DCF88() < 4u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140);
    sub_1E65DCED8();
    sub_1E65DCF18();
    sub_1E65DCEE8();
    sub_1E65DE758();
    sub_1E65D7688();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E621B314(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 56) = a4;
  *(v5 + 24) = type metadata accessor for PageMetricsClick(0);
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E621B3AC, 0, 0);
}

uint64_t sub_1E621B3AC()
{
  if (*(v0 + 56))
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = sub_1E65D9D78();
    (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
    v5 = v2[5];
    v6 = *MEMORY[0x1E69CBAA0];
    v7 = sub_1E65D8C68();
    (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
    v8 = v2[6];
    v9 = sub_1E65D74E8();
    (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
    v10 = v2[8];
    v11 = sub_1E65DA208();
    (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
    v12 = v2[14];
    v13 = *MEMORY[0x1E69CBCC8];
    v14 = sub_1E65D8F28();
    (*(*(v14 - 8) + 104))(v1 + v12, v13, v14);
    v15 = v2[15];
    v16 = *MEMORY[0x1E69CC460];
    v17 = sub_1E65D9908();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v1 + v15, v16, v17);
    (*(v18 + 56))(v1 + v15, 0, 1, v17);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v1 + v2[7]) = v19;
    v21 = (v1 + v2[9]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v1 + v2[10]);
    *v22 = 0;
    v22[1] = 0;
    *(v1 + v2[11]) = v20;
    v23 = (v1 + v2[12]);
    *v23 = 0;
    v23[1] = 0;
    *(v1 + v2[13]) = xmmword_1E65F7E00;
    v28 = (*(v3 + 48) + **(v3 + 48));
    v24 = swift_task_alloc();
    *(v0 + 40) = v24;
    *v24 = v0;
    v24[1] = sub_1E621B744;
    v25 = *(v0 + 32);

    return v28(v25);
  }

  else
  {

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1E621B744()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E621B8C4;
  }

  else
  {
    v2 = sub_1E621B858;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E621B858()
{
  sub_1E5FC0990(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621B8C4()
{
  sub_1E5FC0990(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a3, a5);
  v12 = type metadata accessor for AppComposer(0);
  v13 = (a4 + v12[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(a4 + v12[5] + 8);
  sub_1E613798C(a4 + v12[10], &v23);
  sub_1E5DF650C(v25, &v24);
  v21[0] = v14;
  v21[1] = v15;
  v22 = v16;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v14, v15);
  v17 = InteropService.makePlaylistViewControllerWithIdentifier.getter();
  v20[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v20[4] = sub_1E61379FC();
  v20[0] = swift_allocObject();
  sub_1E6137A50(v21, v20[0] + 16);
  v18 = v17(a1, a2, v14, v15, v20);

  sub_1E6137AAC(v21);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v18;
}

uint64_t sub_1E621BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[3] = a4;
  v23[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  v10 = type metadata accessor for AppComposer(0);
  v11 = (a3 + v10[9]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(a3 + v10[5] + 8);
  sub_1E613798C(a3 + v10[10], &v21);
  sub_1E5DF650C(v23, &v22);
  v19[0] = v12;
  v19[1] = v13;
  v20 = v14;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v12, v13);
  v15 = InteropService.makePlaylistViewControllerWithPlaylist.getter();
  v18[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v18[4] = sub_1E61379FC();
  v18[0] = swift_allocObject();
  sub_1E6137A50(v19, v18[0] + 16);
  v16 = v15(a1, v12, v13, v18);

  sub_1E6137AAC(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v16;
}

uint64_t sub_1E621BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for PageMetricsClick(0);
  v7[7] = swift_task_alloc();
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E621BCD4, 0, 0);
}

uint64_t sub_1E621BCD4()
{
  v1 = v0[2];
  if ((v1 & 0x1000000000000) != 0)
  {
    v2 = v1 & 0xFFFFFFFFFFFFLL;
    if (v2 > 2)
    {
      if ((v2 - 3) >= 2)
      {
        v35 = v0[6];
        v34 = v0[7];
        v37 = v0[4];
        v36 = v0[5];
        v38 = v0[3];
        v39 = sub_1E65D9D78();
        (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
        v40 = v35[5];
        v41 = *MEMORY[0x1E69CB9E8];
        v42 = sub_1E65D8C68();
        (*(*(v42 - 8) + 104))(v34 + v40, v41, v42);
        v43 = v35[6];
        v44 = sub_1E65D74E8();
        (*(*(v44 - 8) + 56))(v34 + v43, 1, 1, v44);
        v45 = v35[8];
        v46 = sub_1E65DA208();
        (*(*(v46 - 8) + 56))(v34 + v45, 1, 1, v46);
        v47 = v35[14];
        v48 = *MEMORY[0x1E69CBCC8];
        v49 = sub_1E65D8F28();
        (*(*(v49 - 8) + 104))(v34 + v47, v48, v49);
        v50 = v35[15];
        v51 = *MEMORY[0x1E69CC498];
        v52 = sub_1E65D9908();
        v53 = *(v52 - 8);
        (*(v53 + 104))(v34 + v50, v51, v52);
        (*(v53 + 56))(v34 + v50, 0, 1, v52);
        v54 = MEMORY[0x1E69E7CC0];
        v55 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *(v34 + v35[7]) = v54;
        v56 = (v34 + v35[9]);
        *v56 = 0;
        v56[1] = 0;
        v57 = (v34 + v35[10]);
        *v57 = 0;
        v57[1] = 0;
        *(v34 + v35[11]) = v55;
        v58 = (v34 + v35[12]);
        *v58 = 0;
        v58[1] = 0;
        v59 = (v34 + v35[13]);
        *v59 = v38;
        v59[1] = v37;
        v60 = *(v36 + 48);

        v90 = (v60 + *v60);
        v61 = swift_task_alloc();
        v0[14] = v61;
        *v61 = v0;
        v61[1] = sub_1E621C9A8;
        v31 = v0[7];
        goto LABEL_12;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v3 = v0[8];
        v4 = v0[5];
        v5 = v0[6];
        v7 = v0[3];
        v6 = v0[4];
        v8 = sub_1E65D9D78();
        (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
        v9 = v5[5];
        v10 = *MEMORY[0x1E69CBA98];
        v11 = sub_1E65D8C68();
        (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
        v12 = v5[6];
        v13 = sub_1E65D74E8();
        (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
        v14 = v5[8];
        v15 = sub_1E65DA208();
        (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
        v16 = v5[14];
        v17 = *MEMORY[0x1E69CBCC8];
        v18 = sub_1E65D8F28();
        (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
        v19 = v5[15];
        v20 = *MEMORY[0x1E69CC498];
        v21 = sub_1E65D9908();
        v22 = *(v21 - 8);
        (*(v22 + 104))(v3 + v19, v20, v21);
        (*(v22 + 56))(v3 + v19, 0, 1, v21);
        v23 = MEMORY[0x1E69E7CC0];
        v24 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *(v3 + v5[7]) = v23;
        v25 = (v3 + v5[9]);
        *v25 = 0;
        v25[1] = 0;
        v26 = (v3 + v5[10]);
        *v26 = 0;
        v26[1] = 0;
        *(v3 + v5[11]) = v24;
        v27 = (v3 + v5[12]);
        *v27 = 0;
        v27[1] = 0;
        v28 = (v3 + v5[13]);
        *v28 = v7;
        v28[1] = v6;
        v29 = *(v4 + 48);

        v90 = (v29 + *v29);
        v30 = swift_task_alloc();
        v0[12] = v30;
        *v30 = v0;
        v30[1] = sub_1E621C814;
        v31 = v0[8];
      }

      else
      {
        v62 = v0[9];
        v63 = v0[5];
        v64 = v0[6];
        v66 = v0[3];
        v65 = v0[4];
        v67 = sub_1E65D9D78();
        (*(*(v67 - 8) + 56))(v62, 1, 1, v67);
        v68 = v64[5];
        v69 = *MEMORY[0x1E69CBA48];
        v70 = sub_1E65D8C68();
        (*(*(v70 - 8) + 104))(v62 + v68, v69, v70);
        v71 = v64[6];
        v72 = sub_1E65D74E8();
        (*(*(v72 - 8) + 56))(v62 + v71, 1, 1, v72);
        v73 = v64[8];
        v74 = sub_1E65DA208();
        (*(*(v74 - 8) + 56))(v62 + v73, 1, 1, v74);
        v75 = v64[14];
        v76 = *MEMORY[0x1E69CBCC8];
        v77 = sub_1E65D8F28();
        (*(*(v77 - 8) + 104))(v62 + v75, v76, v77);
        v78 = v64[15];
        v79 = *MEMORY[0x1E69CC498];
        v80 = sub_1E65D9908();
        v81 = *(v80 - 8);
        (*(v81 + 104))(v62 + v78, v79, v80);
        (*(v81 + 56))(v62 + v78, 0, 1, v80);
        v82 = MEMORY[0x1E69E7CC0];
        v83 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *(v62 + v64[7]) = v82;
        v84 = (v62 + v64[9]);
        *v84 = 0;
        v84[1] = 0;
        v85 = (v62 + v64[10]);
        *v85 = 0;
        v85[1] = 0;
        *(v62 + v64[11]) = v83;
        v86 = (v62 + v64[12]);
        *v86 = 0;
        v86[1] = 0;
        v87 = (v62 + v64[13]);
        *v87 = v66;
        v87[1] = v65;
        v88 = *(v63 + 48);

        v90 = (v88 + *v88);
        v89 = swift_task_alloc();
        v0[10] = v89;
        *v89 = v0;
        v89[1] = sub_1E621C680;
        v31 = v0[9];
      }

LABEL_12:

      return v90(v31);
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_1E621C680()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1E621CB3C;
  }

  else
  {
    v2 = sub_1E621C794;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E621C794()
{
  sub_1E5FC0990(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621C814()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E621CBC8;
  }

  else
  {
    v2 = sub_1E621C928;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E621C928()
{
  sub_1E5FC0990(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621C9A8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E621CC54;
  }

  else
  {
    v2 = sub_1E621CABC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E621CABC()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621CB3C()
{
  sub_1E5FC0990(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621CBC8()
{
  sub_1E5FC0990(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621CC54()
{
  sub_1E5FC0990(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621CCE0()
{
  v0 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0708();
  return sub_1E65E0C88();
}

uint64_t sub_1E621CD90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076CD0, &qword_1E65F7E20);
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v62 = &v51 - v2;
  v61 = sub_1E65DBFD8();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v51 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v51 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v51 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v51 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v51 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v51 - v27;
  v29 = sub_1E65DC028();
  v67 = *(v29 - 8);
  v68 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v58 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v66 = &v51 - v32;
  v57 = v28;
  sub_1E5E1DEAC(v0, v28);
  v33 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v55 = swift_allocObject();
  sub_1E5E1FA80(v28, v55 + v33);
  v34 = v0;
  sub_1E5E1DEAC(v0, v26);
  v53 = swift_allocObject();
  sub_1E5E1FA80(v26, v53 + v33);
  sub_1E5E1DEAC(v0, v23);
  v52 = swift_allocObject();
  sub_1E5E1FA80(v23, v52 + v33);
  sub_1E5E1DEAC(v0, v20);
  v51 = swift_allocObject();
  sub_1E5E1FA80(v20, v51 + v33);
  sub_1E5E1DEAC(v0, v17);
  v35 = swift_allocObject();
  sub_1E5E1FA80(v17, v35 + v33);
  sub_1E5E1DEAC(v0, v14);
  v36 = swift_allocObject();
  sub_1E5E1FA80(v14, v36 + v33);
  v37 = v54;
  sub_1E5E1DEAC(v0, v54);
  v38 = swift_allocObject();
  sub_1E5E1FA80(v37, v38 + v33);
  v39 = v56;
  sub_1E5E1DEAC(v34, v56);
  v40 = swift_allocObject();
  sub_1E5E1FA80(v39, v40 + v33);
  v41 = v59;
  sub_1E5E1DEAC(v34, v59);
  v42 = swift_allocObject();
  sub_1E5E1FA80(v41, v42 + v33);
  v43 = v66;
  sub_1E65DC018();
  (*(v67 + 16))(v58, v43, v68);
  v44 = v60;
  sub_1E65DBFC8();
  v45 = v57;
  sub_1E5E1DEAC(v34, v57);
  v46 = swift_allocObject();
  sub_1E5E1FA80(v45, v46 + v33);
  type metadata accessor for AppFeature(0);
  sub_1E6220FF8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6220FF8(&qword_1EE2D6BB8, MEMORY[0x1E699D380], MEMORY[0x1E699D378]);
  v47 = v62;
  v48 = v61;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v49 = sub_1E65E4F08();
  (*(v64 + 8))(v47, v65);
  (*(v63 + 8))(v44, v48);
  (*(v67 + 8))(v66, v68);
  return v49;
}

uint64_t sub_1E621D534(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65DBB28();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E621D5F4, 0, 0);
}

uint64_t sub_1E621D5F4()
{
  v1 = v0[3];
  v2 = sub_1E642842C(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  v0[8] = v3;
  if (v3)
  {
    v0[9] = v2;
    v0[10] = 0;
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[3];
    v8 = *(v7 + 32);
    v0[11] = v8;
    v9 = *(v7 + 40);
    v0[12] = v9;
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);

    v10 = AwardsService.fetchSeymourAchievementImage.getter();
    v0[13] = v11;
    sub_1E65DBB08();
    sub_1E65DBB18();
    v13 = v12;
    v15 = v14;
    (*(v5 + 8))(v4, v6);
    v22 = (v10 + *v10);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1E621D820;
    v17.n128_u64[0] = v13;
    v18.n128_u64[0] = v15;

    return v22(v8, v9, v17, v18);
  }

  else
  {
    v20 = v2;

    v21 = v0[1];

    return v21(v20);
  }
}

uint64_t sub_1E621D820(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {

    v4 = sub_1E621DE64;
  }

  else
  {
    v4 = sub_1E621D978;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E621D978()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 120));
    if (v2)
    {
      v4 = *(v0 + 88);
      v3 = *(v0 + 96);
      v5 = *(v0 + 72);
      v6 = v2;
      v7 = sub_1E65D7518();
      v9 = v8;

      sub_1E600A014(v7, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 16) = v5;
      v11 = sub_1E6215038(v4, v3);
      v13 = *(v5 + 16);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v4) = v12;
        if (*(*(v0 + 72) + 24) < v16)
        {
          v18 = *(v0 + 88);
          v17 = *(v0 + 96);
          sub_1E641D204(v16, isUniquelyReferenced_nonNull_native);
          v11 = sub_1E6215038(v18, v17);
          if ((v4 & 1) != (v19 & 1))
          {

            return sub_1E65E6C68();
          }

LABEL_15:
          v24 = *(v0 + 96);
          if (v4)
          {
LABEL_16:
            v25 = v11;

            v26 = *(v0 + 16);
            v27 = (v26[7] + 16 * v25);
            v28 = *v27;
            v29 = v27[1];
            *v27 = v7;
            v27[1] = v9;
            sub_1E600A068(v28, v29);

            sub_1E600A068(v7, v9);
LABEL_21:
            v36 = *(v0 + 80) + 1;
            if (v36 == *(v0 + 64))
            {

              v37 = *(v0 + 8);

              return v37(v26);
            }

            else
            {
              *(v0 + 72) = v26;
              *(v0 + 80) = v36;
              v39 = *(v0 + 48);
              v38 = *(v0 + 56);
              v40 = *(v0 + 40);
              v41 = *(v0 + 24) + 16 * v36;
              v42 = *(v41 + 32);
              *(v0 + 88) = v42;
              v43 = *(v41 + 40);
              *(v0 + 96) = v43;
              type metadata accessor for AppComposer(0);
              type metadata accessor for AppEnvironment(0);

              v44 = AwardsService.fetchSeymourAchievementImage.getter();
              *(v0 + 104) = v45;
              sub_1E65DBB08();
              sub_1E65DBB18();
              v47 = v46;
              v49 = v48;
              (*(v39 + 8))(v38, v40);
              v53 = (v44 + *v44);
              v50 = swift_task_alloc();
              *(v0 + 112) = v50;
              *v50 = v0;
              v50[1] = sub_1E621D820;
              v51.n128_u64[0] = v47;
              v52.n128_u64[0] = v49;

              return v53(v42, v43, v51, v52);
            }
          }

LABEL_19:
          v31 = *(v0 + 88);
          v26 = *(v0 + 16);
          v26[(v11 >> 6) + 8] |= 1 << v11;
          v32 = (v26[6] + 16 * v11);
          *v32 = v31;
          v32[1] = v24;
          v33 = (v26[7] + 16 * v11);
          *v33 = v7;
          v33[1] = v9;

          result = sub_1E600A068(v7, v9);
          v34 = v26[2];
          v15 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v15)
          {
            __break(1u);
            return result;
          }

          v26[2] = v35;
          goto LABEL_21;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }
      }

      v30 = v11;
      sub_1E6425604();
      v11 = v30;
      v24 = *(v0 + 96);
      if (v4)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  v21 = sub_1E65DB938();
  sub_1E6220FF8(&qword_1ED076CD8, MEMORY[0x1E699D160], MEMORY[0x1E699D168]);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E699D158], v21);
  swift_willThrow();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1E621DE64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621DEC8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E621D534(a1, v1 + v5);
}

uint64_t sub_1E621DFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_1E65D7848();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_1E65D79C8();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E621E0C0, 0, 0);
}

uint64_t sub_1E621E0C0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AwardsService.fetchSeymourAchievement.getter();
  v0[17] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1E621E1E0;
  v4 = v0[16];
  v5 = v0[8];
  v6 = v0[9];

  return v8(v4, v5, v6);
}

uint64_t sub_1E621E1E0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E621E430;
  }

  else
  {
    v2 = sub_1E621E2F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E621E2F4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 112);

  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 48) = -1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E634B514(v0 + 16, v3);
  (*(v4 + 8))(v3, v7);
  (*(v2 + 8))(v1, v8);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E621E430()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621E4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E621DFA0(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E621E59C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65DBE68();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E65D9E18();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_1E65DBF98();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_1E65DA708();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  sub_1E65D76F8();
  v1[16] = swift_task_alloc();
  v6 = sub_1E65DAB98();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v7 = sub_1E65DA948();
  v1[20] = v7;
  v1[21] = *(v7 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E621E860, 0, 0);
}

uint64_t sub_1E621E860()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = PersonalizationService.fetchPersonalizationInferenceResponse.getter();
  v0[23] = v2;
  sub_1E65D76E8();
  sub_1E65DDFC8();
  sub_1E65DAB88();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1E621E9C4;
  v4 = v0[22];
  v5 = v0[19];

  return v7(v4, v5);
}

uint64_t sub_1E621E9C4()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E621F13C;
  }

  else
  {
    v5 = sub_1E621EB58;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

unint64_t sub_1E621EB58(uint64_t a1)
{
  result = sub_1E65DA8E8();
  v55 = *(result + 16);
  if (v55)
  {
    v3 = 0;
    v4 = v1[14];
    v53 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v49 = v1[7];
    v62 = v1[4];
    v63 = (v49 + 8);
    v56 = (v1[10] + 32);
    v54 = v4;
    v51 = (v4 + 8);
    v52 = v1[10];
    v5 = MEMORY[0x1E69E7CC8];
    v50 = result;
    v61 = v1;
    while (1)
    {
      if (v3 >= *(result + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v57 = v3;
      v58 = v5;
      (*(v54 + 16))(v1[15], v53 + *(v54 + 72) * v3, v1[13]);
      v59 = sub_1E65DA6F8();
      v60 = v8;
      v9 = sub_1E65DA6D8();
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v12 = *(v49 + 72);
        v64 = *(v49 + 16);
        v13 = MEMORY[0x1E69E7CC0];
        v64(v1[8], v11, v1[6]);
        while (1)
        {
          v14 = sub_1E65D9DD8();
          v16 = v15;
          v18 = v17;
          v19 = sub_1E6413384(v14, v15, v17 & 1);
          sub_1E5FEE4CC(v14, v16, v18 & 1);
          v20 = v1[8];
          v21 = v1[6];
          if (v19 == 9)
          {
            (*v63)(v1[8], v1[6]);
          }

          else
          {
            sub_1E65D9DA8();
            sub_1E65D9DF8();
            sub_1E65DBE28();
            (*v63)(v20, v21);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1E64F604C(0, v13[2] + 1, 1, v13);
            }

            v23 = v13[2];
            v22 = v13[3];
            if (v23 >= v22 >> 1)
            {
              v13 = sub_1E64F604C((v22 > 1), v23 + 1, 1, v13);
            }

            v1 = v61;
            v24 = v61[5];
            v25 = v61[3];
            v13[2] = v23 + 1;
            (*(v62 + 32))(v13 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v23, v24, v25);
          }

          v11 += v12;
          if (!--v10)
          {
            break;
          }

          v64(v1[8], v11, v1[6]);
        }
      }

      v27 = v1[11];
      v26 = v1[12];
      v28 = v1[9];
      sub_1E65DA6E8();
      sub_1E65DA6F8();
      sub_1E65DBF58();
      v29 = *v56;
      (*v56)(v27, v26, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1E6215038(v59, v60);
      v32 = v58[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_35;
      }

      v36 = v31;
      if (v58[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = result;
          sub_1E6425788();
          result = v46;
        }
      }

      else
      {
        sub_1E641D4C0(v35, isUniquelyReferenced_nonNull_native);
        result = sub_1E6215038(v59, v60);
        if ((v36 & 1) != (v37 & 1))
        {

          return sub_1E65E6C68();
        }
      }

      v38 = v1[15];
      v39 = v1[13];
      v40 = v1[11];
      v41 = v1[9];
      if (v36)
      {
        v6 = result;

        v7 = v40;
        v5 = v58;
        (*(v52 + 40))(v58[7] + *(v52 + 72) * v6, v7, v41);
        (*v51)(v38, v39);
      }

      else
      {
        v58[(result >> 6) + 8] |= 1 << result;
        v42 = (v58[6] + 16 * result);
        *v42 = v59;
        v42[1] = v60;
        v43 = v40;
        v5 = v58;
        v29(v58[7] + *(v52 + 72) * result, v43, v41);
        result = (*v51)(v38, v39);
        v44 = v58[2];
        v34 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v34)
        {
          goto LABEL_36;
        }

        v58[2] = v45;
      }

      v3 = v57 + 1;
      result = v50;
      if (v57 + 1 == v55)
      {

        v47 = v5;
        goto LABEL_28;
      }
    }
  }

  v47 = MEMORY[0x1E69E7CC8];
LABEL_28:
  (*(v1[21] + 8))(v1[22], v1[20]);

  v48 = v1[1];

  return v48(v47);
}

uint64_t sub_1E621F13C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621F204()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E621E59C(v0 + v3);
}

uint64_t sub_1E621F2D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E621F2F0, 0, 0);
}

uint64_t sub_1E621F2F0()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v2, 0);
    v3 = v20;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      if (v6 == sub_1E65DB988() && v5 == v7)
      {
      }

      else
      {
        v9 = sub_1E65E6C18();

        if ((v9 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v6 = sub_1E65DB998();
      v11 = v10;

      v5 = v11;
LABEL_11:
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1E601C0B8((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v6;
      *(v14 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v0[9] = v3;
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v15 = AwardsService.fetchSeymourAchievementProgress.getter();
  v0[10] = v16;
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1E621F51C;

  return v19(v3);
}

uint64_t sub_1E621F51C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1E621F808;
  }

  else
  {

    v4 = sub_1E621F640;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E621F640()
{
  v26 = v0;
  v1 = *(v0 + 96);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v23 = MEMORY[0x1E69E7CD0];
  v5 = -1;
  v6 = -1 << *(*(v0 + 96) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v21 = *(v0 + 96);

  v10 = 0;
  while (v7)
  {
LABEL_11:
    v14 = *(v21 + 48) + 40 * (__clz(__rbit64(v7)) | (v10 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);
    if (v19)
    {
      v11 = 0;
      v12 = v16 & 1;
    }

    else
    {
      sub_1E61147EC(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), 0);

      v12 = v16;
      v11 = v17;
    }

    v7 &= v7 - 1;
    *(v22 + 16) = v15;
    *(v22 + 24) = v12;
    *(v22 + 32) = v18;
    *(v22 + 40) = v11;
    *(v22 + 48) = v19;
    sub_1E60F6634(v24, v22 + 16);
    sub_1E5EC75A0(v15, v16, v18, v17, v19);
    result = sub_1E5EC75A0(v24[0], v24[1], v24[2], v24[3], v25);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v20 = *(v22 + 8);

  return v20(v23);
}

uint64_t sub_1E621F808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E621F874(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E621F2D0(a1, v1 + v5);
}

uint64_t sub_1E621F96C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AwardsService.fetchCurrentStreakNotification.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E621FA80;

  return v5();
}

uint64_t sub_1E621FA80(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5F9D2C8, 0, 0);
  }

  else
  {

    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = a1;
    }

    v8 = *(v6 + 8);

    return v8(v7, a2 & 1);
  }
}

uint64_t sub_1E621FBEC()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E621FCB8;

  return sub_1E621F94C(v0 + v3);
}

uint64_t sub_1E621FCB8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1E621FDE4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchUserFirstName.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E621FEF8;

  return v5();
}

uint64_t sub_1E621FEF8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v7 = sub_1E5F9D2C8;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_1E622002C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E622002C()
{

  v1 = v0[1];
  v3 = v0[6];
  v2 = v0[7];

  return v1(v2, v3);
}

uint64_t sub_1E6220094()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E621FCB8;

  return sub_1E621FDC4(v0 + v3);
}

uint64_t sub_1E6220160(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6220180, 0, 0);
}

uint64_t sub_1E6220180()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E6220F94();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (active + *active);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE47FC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E62202D8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6220160(a1, v1 + v5);
}

uint64_t sub_1E62203B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for ToastAction(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6220448, 0, 0);
}

uint64_t sub_1E6220448()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  *v1 = 0;
  v7 = sub_1E65DBB88();
  (*(*(v7 - 8) + 16))(&v1[v5], v2, v7);
  type metadata accessor for ToastResource(0);
  swift_storeEnumTagMultiPayload();
  v1[v6] = 0;
  swift_storeEnumTagMultiPayload();
  v8 = v3 + *(type metadata accessor for AppComposer(0) + 20);
  v9 = (v8 + *(type metadata accessor for AppEnvironment(0) + 128));
  v13 = (*v9 + **v9);
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_1E62205FC;
  v11 = v0[5];

  return v13(v11);
}

uint64_t sub_1E62205FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E62206F8, 0, 0);
}

uint64_t sub_1E62206F8()
{
  sub_1E6005A0C(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6220768(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62203B4(a1, v1 + v5);
}

uint64_t sub_1E6220840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6220864, 0, 0);
}

uint64_t sub_1E6220864()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AwardsService.queryEligibleToPresentAwardToast.getter();
  v0[5] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1E6220980;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_1E6220980(char a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1E6220B14;
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v5 = sub_1E6220AAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6220AAC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1E6220B14()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1E6220B7C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FE99E8;

  return sub_1E6220840(a1, a2, v2 + v7);
}

uint64_t sub_1E6220C5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65DBD48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppComposer(0);
  sub_1E65DAE38();
  sub_1E65DAE38();
  v7 = a1 + *(type metadata accessor for AppState(0) + 76);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v4 + 16))(v6, v7 + *(v8 + 28), v3);

  return sub_1E65DBF38();
}

uint64_t sub_1E6220DD4(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E6220C5C(a1, v4);
}

uint64_t sub_1E6220E54(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DBF18();
  v6 = type metadata accessor for AppState(0);
  v7 = a1 + v6[19];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v3 + 40))(v7 + *(v8 + 28), v5, v2);
  v9 = sub_1E65DBF28();
  v10 = a1 + v6[16];

  *(v10 + 8) = v9;
  v11 = sub_1E65DBF48();
  v12 = a1 + v6[17];

  *(v12 + 8) = v11;
  return result;
}

unint64_t sub_1E6220F94()
{
  result = qword_1EE2D4738;
  if (!qword_1EE2D4738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072840, &qword_1E65EBE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4738);
  }

  return result;
}

uint64_t sub_1E6220FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppComposer.signOutViewBuilder()()
{
  v1 = type metadata accessor for AppComposer(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  sub_1E5E1D68C(v0, &v12 - v6, type metadata accessor for AppComposer);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_1E5E1E3F0(v7, v9 + v8, type metadata accessor for AppComposer);
  sub_1E5E1D68C(v0, v5, type metadata accessor for AppComposer);
  v10 = swift_allocObject();
  sub_1E5E1E3F0(v5, v10 + v8, type metadata accessor for AppComposer);
  sub_1E65DB138();
  sub_1E62238C8(&qword_1ED0757D8, MEMORY[0x1E699D098], MEMORY[0x1E699D090]);
  return sub_1E65DEE58();
}

uint64_t sub_1E622123C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076CE8, &qword_1E65F7EE8);
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v42 = v31 - v3;
  v4 = sub_1E65DF0B8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E65DEFE8();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v35 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v32 = v31 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - v13;
  v15 = sub_1E65DF008();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v34 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65DEF88();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  sub_1E5E1D68C(a1, v14, type metadata accessor for AppComposer);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_1E5E1E3F0(v14, v19 + v18, type metadata accessor for AppComposer);
  type metadata accessor for AppEnvironment(0);
  v31[1] = AccountService.makeAccountChangedStream.getter();
  v20 = v32;
  sub_1E5E1D68C(a1, v32, type metadata accessor for AppComposer);
  v21 = swift_allocObject();
  sub_1E5E1E3F0(v20, v21 + v18, type metadata accessor for AppComposer);
  v22 = v35;
  sub_1E5E1D68C(a1, v35, type metadata accessor for AppComposer);
  v23 = swift_allocObject();
  sub_1E5E1E3F0(v22, v23 + v18, type metadata accessor for AppComposer);
  sub_1E65DEFF8();
  v24 = v33;
  sub_1E65DEF78();
  sub_1E65DF0A8();
  v25 = v38;
  sub_1E65DEFD8();
  type metadata accessor for AppFeature(0);
  sub_1E62238C8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E62238C8(&qword_1ED076CF0, MEMORY[0x1E699CE88], MEMORY[0x1E699CE80]);
  v26 = v42;
  v27 = v37;
  sub_1E65E4DE8();
  v28 = v27;
  v29 = sub_1E65E4F08();
  (*(v44 + 8))(v26, v45);
  (*(v41 + 8))(v25, v43);
  (*(v39 + 8))(v24, v28);
  return v29;
}

uint64_t sub_1E6221854(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DA568();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65D8DE8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for BrowsingIdentity(0);
  v2[13] = swift_task_alloc();
  type metadata accessor for RemoteParticipantScope(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = sub_1E65D7388();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6221A60, 0, 0);
}

uint64_t sub_1E6221A60()
{
  if (sub_1E62224B0())
  {
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v1 = AccountService.fetchPrimaryAccount.getter();
    v0[20] = v2;
    v39 = (v1 + *v1);
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1E6222020;

    return v39();
  }

  v5 = v0[13];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];
    v14 = v0[7];
    v15 = v0[8];
    v16 = *(v6 + 48);
    sub_1E5E1E3F0(v12, v9, type metadata accessor for RemoteParticipantScope);
    v17 = sub_1E65DA2A8();
    (*(*(v17 - 8) + 8))(v12 + v16, v17);
    sub_1E5E1D68C(v9, v10, type metadata accessor for RemoteParticipantScope);
    v18 = *(v15 + 32);
    v18(v13, v10, v14);
    v18(v11, v13, v14);
    LOBYTE(v10) = sub_1E65D8D88();
    v19 = *(v15 + 8);
    v19(v11, v14);
    v7 = v0[16];
    if (v10 == 4)
    {
LABEL_8:
      v8 = type metadata accessor for RemoteParticipantScope;
      goto LABEL_9;
    }

    v21 = v0[14];
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[7];
    v25 = v0[5];
    v38 = v0[6];
    v40 = v0[4];
    sub_1E5E1D68C(v7, v21, type metadata accessor for RemoteParticipantScope);
    v18(v23, v21, v24);
    v18(v22, v23, v24);
    sub_1E65D8DA8();
    v19(v22, v24);
    v26 = (*(v25 + 88))(v38, v40);
    if (v26 == *MEMORY[0x1E69CCE60])
    {
      v28 = v0[5];
      v27 = v0[6];
      v29 = v0[4];
      sub_1E5E00674(v0[16], type metadata accessor for RemoteParticipantScope);
      (*(v28 + 8))(v27, v29);
      goto LABEL_10;
    }

    if (v26 == *MEMORY[0x1E69CCE68])
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
    }

    else
    {
      if (v26 == *MEMORY[0x1E69CCE70] || v26 == *MEMORY[0x1E69CCE50])
      {
        v7 = v0[16];
        goto LABEL_8;
      }

      if (v26 != *MEMORY[0x1E69CCE58])
      {
        v36 = v0[5];
        v35 = v0[6];
        v37 = v0[4];
        sub_1E5E00674(v0[16], type metadata accessor for RemoteParticipantScope);
        sub_1E65DEEC8();
        swift_storeEnumTagMultiPayload();
        (*(v36 + 8))(v35, v37);
        goto LABEL_12;
      }
    }

    v30 = v0[16];
    v31 = v0[2];
    v32 = sub_1E65DA398();
    v34 = v33;
    sub_1E5E00674(v30, type metadata accessor for RemoteParticipantScope);
    *v31 = v32;
    v31[1] = v34;
    sub_1E65DEEC8();
    goto LABEL_11;
  }

  v7 = v0[13];
  v8 = type metadata accessor for BrowsingIdentity;
LABEL_9:
  sub_1E5E00674(v7, v8);
LABEL_10:
  sub_1E65DEEC8();
LABEL_11:
  swift_storeEnumTagMultiPayload();
LABEL_12:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E6222020(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1E62223C0;
  }

  else
  {

    v4 = sub_1E622213C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E622213C()
{
  v1 = [*(v0 + 176) userFullName];
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = v1;
    sub_1E65E5C78();

    sub_1E65D7398();
    if (!v2)
    {
      (*(*(v0 + 144) + 32))(*(v0 + 16), *(v0 + 152), *(v0 + 136));
      sub_1E65DEEC8();
      swift_storeEnumTagMultiPayload();

      v5 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = sub_1E65DB148();
    sub_1E62238C8(&qword_1ED076D00, MEMORY[0x1E699D0A8], MEMORY[0x1E699D0B0]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E699D0A0], v7);
    swift_willThrow();
  }

  v5 = *(v0 + 8);
LABEL_6:

  return v5();
}

uint64_t sub_1E62223C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62224B0()
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v0 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v0);
  v43 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v44 = sub_1E65DA568();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D8DE8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = type metadata accessor for RemoteParticipantScope(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) != 1)
  {
    sub_1E5E1E3F0(v22, v19, type metadata accessor for RemoteParticipantScope);
    sub_1E5E1D68C(v19, v17, type metadata accessor for RemoteParticipantScope);
    v31 = *(v8 + 32);
    v31(v11, v17, v7);
    v31(v13, v11, v7);
    v32 = v41;
    sub_1E65D8DA8();
    (*(v8 + 8))(v13, v7);
    sub_1E5E00674(v19, type metadata accessor for RemoteParticipantScope);
    v33 = v42;
    v34 = v44;
    v35 = (*(v42 + 88))(v32, v44);
    v29 = v35 == *MEMORY[0x1E69CCE60];
    if (v35 == *MEMORY[0x1E69CCE60] || v35 == *MEMORY[0x1E69CCE68])
    {
      goto LABEL_16;
    }

    if (v35 != *MEMORY[0x1E69CCE70])
    {
      if (v35 == *MEMORY[0x1E69CCE50])
      {
        v29 = 1;
        goto LABEL_17;
      }

      if (v35 != *MEMORY[0x1E69CCE58])
      {
LABEL_16:
        (*(v33 + 8))(v32, v34);
        goto LABEL_17;
      }
    }

    v29 = 0;
LABEL_17:
    v36 = *(v23 + 48);
    v37 = sub_1E65DA2A8();
    (*(*(v37 - 8) + 8))(&v22[v36], v37);
    return v29;
  }

  swift_getKeyPath();
  sub_1E65E4EC8();

  v24 = v43;
  v25 = v40;
  sub_1E65E4C98();
  (*(v39 + 8))(v5, v25);
  v26 = v45;
  sub_1E6053A2C(v24, v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    return *v26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v29 = *v26;
    v30 = sub_1E65D76A8();
    (*(*(v30 - 8) + 8))(&v26[v28], v30);
  }

  else
  {
    sub_1E5DFE50C(v26, &unk_1ED077CC0, &unk_1E65F2610);
    return 0;
  }

  return v29;
}

uint64_t sub_1E6222AD8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6222BA4, 0, 0);
}

uint64_t sub_1E6222BA4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[9] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E6222CC0;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E6222CC0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6222DD8, 0, 0);
}

uint64_t sub_1E6222DD8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076CF8, &qword_1E65F7F20);
  v5 = sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990, MEMORY[0x1E69E86A0]);
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6222EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_1E65D7848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DEEC8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1 + *(type metadata accessor for AppState(0) + 20);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E5E1D68C(v16 + *(v17 + 28), v15, MEMORY[0x1E699CE20]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v8);
  sub_1E5DFE50C(v5, &qword_1ED071F78, &unk_1E65EA3F0);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1E65D77C8();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  return sub_1E65DEF18();
}

uint64_t sub_1E62231D4(uint64_t a1)
{
  v2 = sub_1E65DEEC8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DEF28();
  v5 = type metadata accessor for AppState(0);
  v6 = a1 + *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E6223864(v4, v6 + *(v7 + 28));
  result = sub_1E65DEF38();
  *(a1 + *(v5 + 156)) = result & 1;
  return result;
}

uint64_t sub_1E62232A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v2 = type metadata accessor for AppComposer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076CE0, &qword_1E65F7EE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  sub_1E65E44D8();
  v8 = *MEMORY[0x1E6980E28];
  v9 = sub_1E65E44C8();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v7, v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_1E65E4518();
  sub_1E5DFE50C(v7, &qword_1ED076CE0, &qword_1E65F7EE0);
  sub_1E5E1D68C(v14[0], v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1E5E1E3F0(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AppComposer);
  return sub_1E65DB128();
}

uint64_t sub_1E62234E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E62232A0(v4, a1);
}

uint64_t sub_1E622356C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E62235E0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6221854(a1, v1 + v5);
}

uint64_t sub_1E62236BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6222AD8(a1, v1 + v5);
}

uint64_t sub_1E6223798()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E611E778(v0 + v3);
}

uint64_t sub_1E6223864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DEEC8();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62238C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6223910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1E65E5038();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E5058();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65DA208();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65D8F28();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  sub_1E65E13F8();
  v16 = sub_1E65E1778();
  (*(v13 + 8))(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA190;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v45 = a1;
  v18 = sub_1E65E1428();
  v20 = MEMORY[0x1E69E6158];
  if (v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v19)
  {
    v22 = v19;
  }

  *(inited + 48) = v21;
  *(inited + 56) = v22;
  *(inited + 72) = v20;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  (*(v9 + 104))(v11, *MEMORY[0x1E69CBCA0], v8);
  v23 = sub_1E65D8F18();
  v25 = v24;
  (*(v9 + 8))(v11, v8);
  *(inited + 96) = v23;
  *(inited + 104) = v25;
  *(inited + 120) = v20;
  *(inited + 128) = 0x6973736572706D69;
  v26 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = v26;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  v27 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  *(inited + 216) = v20;
  *(inited + 192) = v27;
  *(inited + 200) = v28;
  v29 = sub_1E6215168(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
  swift_arrayDestroy();
  if (v16)
  {
    v30 = v16;
    v31 = v39;
    sub_1E65DA1D8();
    v32 = sub_1E65DA1C8();
    (*(v40 + 8))(v31, v41);
    v33 = [v30 campaignID];
    if (v33)
    {
      v34 = v33;
      sub_1E65E5C78();
    }
  }

  else
  {
    v32 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  sub_1E65E5048();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v29;
  sub_1E6121BA8(v32, sub_1E6120FF4, 0, isUniquelyReferenced_nonNull_native, &v46);

  sub_1E65E5028();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1E6215168(MEMORY[0x1E69E7CC0]);
  sub_1E6215168(v36);
  sub_1E65E5068();

  v37 = sub_1E65E1458();
  return (*(*(v37 - 8) + 8))(v45, v37);
}