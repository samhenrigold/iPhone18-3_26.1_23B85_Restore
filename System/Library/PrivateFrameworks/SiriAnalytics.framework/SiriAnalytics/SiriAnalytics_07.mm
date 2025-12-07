uint64_t sub_1D98FA908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v6 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for PersistentStorage();
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D98F97F8();
  v13 = type metadata accessor for DataVault(0);
  v14 = objc_allocWithZone(v13);
  (*(v8 + 16))(v14 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v12, v6);
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v8 + 8))(v12, v6);
  sub_1D992ACE4();

  (*(v8 + 32))(v3 + OBJC_IVAR____TtC13SiriAnalytics21ExternalDataIngestion_poolUrl, v12, v6);
  return v3;
}

uint64_t sub_1D98FAAF8()
{
  v1[10] = v0;
  v2 = type metadata accessor for StagingPoolEntry(0);
  OUTLINED_FUNCTION_9(v2);
  v1[11] = OUTLINED_FUNCTION_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48C38, &qword_1D9935430);
  OUTLINED_FUNCTION_9(v3);
  v1[12] = OUTLINED_FUNCTION_20();
  v4 = type metadata accessor for StagedMessage(0);
  v1[13] = v4;
  OUTLINED_FUNCTION_9(v4);
  v1[14] = OUTLINED_FUNCTION_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49008, &qword_1D9935438);
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = OUTLINED_FUNCTION_20();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49010, &qword_1D9935440);
  OUTLINED_FUNCTION_9(v6);
  v1[18] = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6DFA0](sub_1D98FAC58, v0, 0);
}

uint64_t sub_1D98FAC58()
{
  receiver = v0[5].receiver;
  v2 = OBJC_IVAR____TtC13SiriAnalytics21ExternalDataIngestion_poolUrl;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48BB8, &qword_1D9932A00);
  v3 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  swift_task_alloc();
  v6 = *(v5 + 16);
  v6();
  v7 = *MEMORY[0x1E696A388];
  v0[9].super_class = sub_1D992B324();

  v8 = objc_allocWithZone(type metadata accessor for StagingReport());
  v0[10].receiver = sub_1D988C7F4(1);
  v9 = swift_task_alloc();
  (v6)(v9, &receiver[v2], v3);
  v10 = type metadata accessor for StagingPoolHost(0);
  v11 = objc_allocWithZone(v10);
  (v6)(&v11[OBJC_IVAR____TtC13SiriAnalytics15StagingPoolHost_stagingContainerURL], v9, v3);
  v0[1].receiver = v11;
  v0[1].super_class = v10;
  v12 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[10].super_class = v12;
  (*(v5 + 8))(v9, v3);

  type metadata accessor for ExtensionOrchestratorConnection();
  v13 = swift_allocObject();
  v0[11].receiver = sub_1D98FC644(v12, v13);
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  v0[11].super_class = qword_1ECB49658;
  OUTLINED_FUNCTION_1_35();
  sub_1D986A454(0xD000000000000014, v14 | 0x8000000000000000, v15 + 87, v16 | 0x8000000000000000, v17, 0xE800000000000000);
  v18 = swift_task_alloc();
  v0[12].receiver = v18;
  *v18 = v0;
  v18[1] = sub_1D98FAF20;

  return sub_1D989F390();
}

uint64_t sub_1D98FAF20(uint64_t a1)
{
  v4 = *v2;
  v4[25] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_1D98FB770;
  }

  else
  {
    v4[26] = a1;
    v6 = sub_1D98FB05C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D98FB05C()
{
  *(v0 + 216) = *(v0 + 200);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_4_24(v1);

  return sub_1D98E2CE4();
}

uint64_t sub_1D98FB0DC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D98FB1F4, v2, 0);
}

uint64_t sub_1D98FB1F4()
{
  OUTLINED_FUNCTION_1_35();
  v1 = v0[27];
  OUTLINED_FUNCTION_12_15();
  sub_1D986A454(v2, v3, v4, v5, v6, 0xE800000000000000);

  sub_1D992B394();
  if (v1)
  {
    v7 = v0[21];
    v8 = v0[19];
    v9 = v0[20];

    sub_1D98C18BC(v8, 0);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[16];

    sub_1D992B4B4();
    v13 = (v12 + 32);
    for (i = (v12 + 8); ; (*i)(v30, v31))
    {
      v15 = v0[18];
      v16 = v0[15];
      sub_1D992B4C4();
      if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
      {
        break;
      }

      v17 = v0[30];
      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[11];
      (*v13)(v0[17], v0[18], v0[15]);
      v21 = objc_autoreleasePoolPush();
      sub_1D992B4E4();
      sub_1D98FB8D8(v20, v17, v19);
      sub_1D98FC958(v20, type metadata accessor for StagingPoolEntry);
      if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
      {
        sub_1D986B804(v0[12], &qword_1ECB48C38, &qword_1D9935430);
        sub_1D992BD64();
        v0[6] = 0;
        v0[7] = 0xE000000000000000;
        MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D993CD90);
        sub_1D992BE24();
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_1_35();
        sub_1D98DCEB4(v22, v23, v24, v25, v26, 0xE800000000000000);

        sub_1D992B4A4();
      }

      else
      {
        v27 = v0[14];
        sub_1D98FC8F8(v0[12], v27, type metadata accessor for StagedMessage);
        if ((sub_1D9868C6C(v27) & 1) == 0)
        {
          v32 = v0[17];
          v34 = v0[14];
          v33 = v0[15];
          OUTLINED_FUNCTION_12_15();
          OUTLINED_FUNCTION_1_35();
          sub_1D98DCEB4(v35, v36, v37, v38, v39, 0xE800000000000000);
          OUTLINED_FUNCTION_5_21();
          sub_1D98FC958(v34, v40);
          objc_autoreleasePoolPop(v21);
          (*i)(v32, v33);
          break;
        }

        v28 = v0[14];
        sub_1D992B4A4();
        OUTLINED_FUNCTION_5_21();
        sub_1D98FC958(v28, v29);
      }

      v30 = v0[17];
      v31 = v0[15];
      objc_autoreleasePoolPop(v21);
    }

    v41 = v0[20];
    v42 = v0[21];
    v43 = v0[19];

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001BLL, 0x80000001D993CD50);
    v0[9] = sub_1D992B494();
    v44 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v44);

    MEMORY[0x1DA739C30](0xD00000000000001FLL, 0x80000001D993CD70);
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_1_35();
    sub_1D986A454(v45, v46, v47, v48, v49, 0xE800000000000000);

    sub_1D98C7F7C();

    sub_1D98C18BC(v43, 0);

    v50 = v0[1];
    v51 = v0[28];

    return v50(v51);
  }
}

uint64_t sub_1D98FB770()
{
  v1 = v0[25];
  sub_1D992BD64();
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D993CCF0);
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v2 = v0[5];
  OUTLINED_FUNCTION_1_35();
  sub_1D986A454(v3, v2, 0xD00000000000006BLL, 0x80000001D993CAD0, v4, 0xE800000000000000);

  v5 = MEMORY[0x1E69E7CC8];
  v0[27] = 0;
  v0[28] = v5;
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_4_24(v6);

  return sub_1D98E2CE4();
}

uint64_t sub_1D98FB8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486F8, &unk_1D99311F0);
  OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v81 - v8;
  v10 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = *(a1 + *(type metadata accessor for StagingPoolEntry(0) + 20));
  if ([v15 anyEventType] == 6)
  {
    v16 = [v15 unwrap];
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = sub_1D992AE84();
        v81[1] = v81;
        OUTLINED_FUNCTION_6();
        v22 = v21;
        v24 = v23[8];
        MEMORY[0x1EEE9AC00](v23);
        v82 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        v81[0] = v81;
        OUTLINED_FUNCTION_9(v25);
        MEMORY[0x1EEE9AC00](((*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
        v28 = v81 - v27;
        v29 = [v19 metadata];
        if (v29 && (v30 = v29, v31 = [v29 eventId], v30, v31))
        {
          sub_1D992BA04();

          if (__swift_getEnumTagSinglePayload(v28, 1, v20) != 1)
          {
            (*(v22 + 32))(v82, v28, v20);
LABEL_26:
            v65 = [v19 event];
            if (v65)
            {
              v67 = v65;
              MEMORY[0x1EEE9AC00](v66);
              v68 = v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v22 + 16))(v68, v82, v20);
              v69 = [v19 metadata];
              v70 = v69;
              if (v69)
              {
                v71 = [v69 timestamp];

                if (v71)
                {
                  sub_1D992B164();
                  v70 = sub_1D992B124();
                }

                else
                {
                  v70 = 0;
                }
              }

              (*(v22 + 8))(v82, v20);
              v76 = type metadata accessor for StagedMessage(0);
              sub_1D992AE04();
              OUTLINED_FUNCTION_10_4();
              __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
              (*(v22 + 32))(a3, v68, v20);
              *(a3 + *(v76 + 20)) = v70;
              *(a3 + *(v76 + 24)) = v67;
              v72 = a3;
              v73 = 0;
              v74 = 1;
              v75 = v76;
            }

            else
            {
              if (qword_1ED8BD6F0 != -1)
              {
                OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
              }

              OUTLINED_FUNCTION_9_16(0xD00000000000002DLL, "unwrap properly/");

              (*(v22 + 8))(v82, v20);
              type metadata accessor for StagedMessage(0);
              OUTLINED_FUNCTION_10_4();
            }

            return __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
          }
        }

        else
        {
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v62, v63, v64, v20);
        }

        sub_1D992AE74();
        if (__swift_getEnumTagSinglePayload(v28, 1, v20) != 1)
        {
          sub_1D986B804(v28, &qword_1ECB481D0, &qword_1D992F9F0);
        }

        goto LABEL_26;
      }
    }

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    OUTLINED_FUNCTION_9_16(0xD000000000000030, "prepareForStaging(_:allClocks:)");

    type metadata accessor for StagedMessage(0);
    OUTLINED_FUNCTION_10_4();

    return __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  }

  sub_1D98C7934(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D986B804(v9, &qword_1ECB486F8, &unk_1D99311F0);
  }

  else
  {
    sub_1D98FC8F8(v9, v14, type metadata accessor for MonotonicTimestamp);
    if (a2)
    {
      v32 = sub_1D98FA0B0(v14, a2);
      if (v32)
      {
        v33 = v32;
        sub_1D986E35C(0, &qword_1ED8BD648, off_1E85863F0);
        v34 = *(v14 + *(v10 + 20));
        v35 = OBJC_IVAR____TtC13SiriAnalytics18LogicalClockRecord_clockIdentifier;
        v36 = sub_1D992AE84();
        OUTLINED_FUNCTION_6();
        MEMORY[0x1EEE9AC00](*(v37 + 64));
        OUTLINED_FUNCTION_13();
        v40 = v39 - v38;
        (*(v41 + 16))(v39 - v38, v33 + v35, v36);
        v42 = sub_1D98FC334(v34, v40);
        if (qword_1ED8BD6F0 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
        }

        v82 = qword_1ECB49658;
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_1D992BD64();

        v84 = 0x2064656E67696C41;
        v85 = 0xE800000000000000;
        v83 = v34;
        v43 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v43);

        MEMORY[0x1DA739C30](2112032, 0xE300000000000000);
        sub_1D98A19C4();
        v44 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v44);

        MEMORY[0x1DA739C30](0x636F6C63206F7420, 0xEB00000000203A6BLL);
        v45 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v45);

        sub_1D986A454(v84, v85, 0xD00000000000006BLL, 0x80000001D993CAD0, 0xD00000000000001FLL, 0x80000001D993CB40);

        OUTLINED_FUNCTION_6_23();
        goto LABEL_19;
      }
    }

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    v84 = 0;
    v85 = 0xE000000000000000;
    sub_1D992BD64();

    v84 = 0xD000000000000023;
    v85 = 0x80000001D993CAA0;
    v83 = *(v14 + *(v10 + 20));
    v46 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v46);

    MEMORY[0x1DA739C30](2112032, 0xE300000000000000);
    sub_1D992AE84();
    sub_1D98A19C4();
    v47 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v47);

    sub_1D986A454(v84, v85, 0xD00000000000006BLL, 0x80000001D993CAD0, 0xD00000000000001FLL, 0x80000001D993CB40);

    OUTLINED_FUNCTION_6_23();
  }

  v42 = 0;
LABEL_19:
  v48 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v50 = v49;
  MEMORY[0x1EEE9AC00](*(v51 + 64));
  OUTLINED_FUNCTION_13();
  v54 = v53 - v52;
  sub_1D992AE74();
  if (v42)
  {
    v55 = sub_1D9868568();
  }

  else
  {
    v55 = 0;
  }

  v56 = type metadata accessor for StagedMessage(0);
  sub_1D992AE04();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  (*(v50 + 32))(a3, v54, v48);
  *(a3 + *(v56 + 20)) = v55;
  *(a3 + *(v56 + 24)) = v15;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v56);
}

id sub_1D98FC334(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D992AE44();
  v6 = [v4 initWithNanosecondsSinceBoot:a1 clockIdentifier:v5];

  v7 = sub_1D992AE84();
  (*(*(v7 - 8) + 8))(a2, v7);
  return v6;
}

uint64_t sub_1D98FC3D8()
{

  v1 = OBJC_IVAR____TtC13SiriAnalytics21ExternalDataIngestion_poolUrl;
  sub_1D992AD44();
  OUTLINED_FUNCTION_5();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98FC448()
{
  sub_1D98FC3D8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ExternalDataIngestion(uint64_t a1)
{
  result = qword_1ECB47D10;
  if (!qword_1ECB47D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98FC4C8(uint64_t a1)
{
  result = sub_1D992AD44();
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

uint64_t sub_1D98FC598(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D98FC5EC()
{
  result = qword_1ECB48058;
  if (!qword_1ECB48058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48FF0, &qword_1D99353F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48058);
  }

  return result;
}

uint64_t sub_1D98FC644(void *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(a2 + 112) = 0;
  if (qword_1ECB47AE0 != -1)
  {
    swift_once();
  }

  sub_1D986A454(0x292874696E69, 0xE600000000000000, 0xD00000000000007ELL, 0x80000001D9938B10, 0x736F682874696E69, 0xEB00000000293A74);
  sub_1D986E35C(0, &qword_1ECB47970, 0x1E696B0B8);
  v4 = sub_1D98F9AC0(0xD00000000000002CLL, 0x80000001D993CE00);
  v5 = *(a2 + 112);
  *(a2 + 112) = v4;
  v6 = v4;

  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  sub_1D989EE44(v8);
  [v6 setRemoteObjectInterface_];
  v9 = [v7 interfaceWithProtocol_];
  [v6 setExportedInterface_];

  [v6 setExportedObject_];
  v10 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_1D98FC9B0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D98F9B34;
  v13[3] = &block_descriptor_15;
  v11 = _Block_copy(v13);

  [v6 setInvalidationHandler_];
  _Block_release(v11);
  [v6 resume];

  return a2;
}

uint64_t sub_1D98FC8F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D98FC958(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_13_13(uint64_t a1@<X8>)
{

  sub_1D98B9918(0, a1 + 1, 1);
}

uint64_t sub_1D98FCA0C()
{
  v1 = v0;
  v2 = type metadata accessor for StagedMessage(0);
  v3 = *(v0 + *(v2 + 20));
  if (!v3)
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_3_21();
    sub_1D98DCECC(v16, v17, v18, v19, v20, v21);
    return 0;
  }

  v4 = *(v0 + *(v2 + 24));
  v5 = v3;
  if (![v4 unwrap])
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_3_21();
    sub_1D98DCEB4(v22, v23, v24, v25, v26, v27);

    return 0;
  }

  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  sub_1D992B134();
  sub_1D992B154();
  v10 = objc_allocWithZone(sub_1D992B164());
  sub_1D992B144();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v29 - v12;
  (*(v8 + 16))(&v29 - v12, v1, v6);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v6);
  v14 = objc_allocWithZone(sub_1D992B104());
  v15 = sub_1D992B0A4();

  return v15;
}

uint64_t sub_1D98FCCA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  v8 = sub_1D99004B4(0xD000000000000024, 0x80000001D993CF50, v7, sub_1D98FD0F4, v6);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1D98FCD64(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v21 = a3;
  v8 = sub_1D992B514();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D992B544();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](*(v13 + 64));
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  if (a2)
  {
    a1 = MKBGetDeviceLockState();
  }

  sub_1D98FD104(&v30);
  LODWORD(v30) = a1;
  *(&v31 + 1) = &type metadata for EmbeddedDeviceLockState;
  v32 = &off_1F551B740;
  sub_1D98FD16C(&v30, &aBlock);
  if (v25)
  {
    sub_1D986D53C(&aBlock, v29);
    sub_1D98B37DC(v29, v28);
    v16 = swift_allocObject();
    *(v16 + 16) = v20;
    *(v16 + 24) = a5;
    sub_1D986D53C(v28, v16 + 32);
    v26 = sub_1D98FD1DC;
    v27 = v16;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v24 = sub_1D98F9B34;
    v25 = &block_descriptor_16;
    v17 = _Block_copy(&aBlock);

    sub_1D992B534();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D98D3338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BD0, &unk_1D9932A70);
    sub_1D98C2AEC();
    sub_1D992BC44();
    MEMORY[0x1DA739FA0](0, v15, v11, v17);
    _Block_release(v17);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1D98FD104(&v30);
  }

  else
  {
    sub_1D98FD104(&v30);
    return sub_1D98FD104(&aBlock);
  }
}

uint64_t sub_1D98FD0A0(uint64_t a1)
{
  sub_1D99007DC(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_1D98FD104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49020, &unk_1D9935478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98FD16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49020, &unk_1D9935478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D98FD224(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_20_0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_18(v5, v6, v7, v8, v9, v10, v11, v12, v17);
  v13 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v13) == 1)
  {
    sub_1D986B804(v1, &qword_1ECB48D50, &unk_1D9933FE0);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v13;
    v19 = &off_1F5516E40;
    __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_1D99003A8();
  }

  *(a1 + 24) = &type metadata for SQLSelect;
  *(a1 + 32) = &off_1F5516C30;
  v14 = swift_allocObject();
  *&v15 = OUTLINED_FUNCTION_19_7(v14);
  *(v16 + 48) = v15;
  *(v16 + 80) = 0;
  *(v16 + 16) = 0xD000000000000015;
  *(v16 + 24) = 0x80000001D9937450;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  sub_1D986D144(&v17, v16 + 48);
  OUTLINED_FUNCTION_10_14();
}

uint64_t sub_1D98FD388@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  MEMORY[0x1EEE9AC00](((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v9 - v4;
  sub_1D99002F8();
  v6 = type metadata accessor for TagsTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D986B804(v5, &qword_1ECB48968, &qword_1D9932380);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  else
  {
    *(&v10 + 1) = v6;
    v11 = &off_1F5516A58;
    __swift_allocate_boxed_opaque_existential_1(&v9);
    sub_1D99003A8();
  }

  a2[3] = &type metadata for SQLSelect;
  a2[4] = &off_1F5516C30;
  v7 = swift_allocObject();
  *a2 = v7;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0;
  *(v7 + 48) = 0u;
  *(v7 + 16) = 1936154996;
  *(v7 + 24) = 0xE400000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  result = sub_1D986D144(&v9, v7 + 48);
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  *(v7 + 104) = 0;
  *(v7 + 112) = 1;
  *(v7 + 120) = 0;
  return result;
}

void sub_1D98FD528(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v3);
  OUTLINED_FUNCTION_20_0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_18(v5, v6, v7, v8, v9, v10, v11, v12, v17);
  v13 = type metadata accessor for LogicalClocksTable.Predicate(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v13) == 1)
  {
    sub_1D986B804(v1, &qword_1ECB48E00, &qword_1D9934AB8);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = v13;
    v19 = &off_1F55170B8;
    __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_1D99003A8();
  }

  *(a1 + 24) = &type metadata for SQLSelect;
  *(a1 + 32) = &off_1F5516C30;
  v14 = swift_allocObject();
  *&v15 = OUTLINED_FUNCTION_19_7(v14);
  *(v16 + 80) = 0;
  *(v16 + 48) = v15;
  strcpy((v16 + 16), "logical_clocks");
  *(v16 + 31) = -18;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  sub_1D986D144(&v17, v16 + 48);
  OUTLINED_FUNCTION_10_14();
}

void sub_1D98FD694()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for TagsTable.Record(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v89 - v12;
  if ((sub_1D986AC54(0) & 1) != 0 && (v14 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db)) != 0)
  {
    v107 = v3;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    OUTLINED_FUNCTION_9(v15);
    OUTLINED_FUNCTION_20_0();
    v109 = v16;
    MEMORY[0x1EEE9AC00](v17);
    OUTLINED_FUNCTION_14_14();

    sub_1D98FFB20();
    sub_1D98B37DC(v5, v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
    if (!swift_dynamicCast())
    {
      sub_1D986B804(v1, &qword_1ECB481D0, &qword_1D992F9F0);

      v111 = 0;
      memset(v110, 0, sizeof(v110));
      sub_1D986B804(v110, &unk_1ECB491C0, &unk_1D99305E0);
      sub_1D992AE84();
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
LABEL_16:
      OUTLINED_FUNCTION_7();
      return;
    }

    v106 = v14;
    v108 = v1;
    v104 = &v89;
    v105 = v7;
    sub_1D986D53C(v110, v112);
    OUTLINED_FUNCTION_23_9();
    OUTLINED_FUNCTION_17_10();
    v18();
    v19 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
    if (v19)
    {
      v20 = v19;
      __swift_project_boxed_opaque_existential_1(v112, v112[3]);
      sub_1D992B3F4();
      v30 = sub_1D99108B4(v20);
      if (v31 >> 60 != 15)
      {
        v32 = v30;
        v33 = v31;

        v34 = sub_1D98B1728(v32, v33);
        v35 = v108;
        v103 = v32;
        if (v34)
        {
          if (qword_1ED8BD6D0 != -1)
          {
            OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
          }

          sub_1D98DCEB4(0xD00000000000001DLL, 0x80000001D99399B0, 0xD00000000000005ELL, 0x80000001D9939930, 0xD00000000000001DLL, 0x80000001D993D010);

          sub_1D9866358(v103, v33);
          sub_1D986B804(v35, &qword_1ECB481D0, &qword_1D992F9F0);
          __swift_destroy_boxed_opaque_existential_1(v112);
          sub_1D992AE84();
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
        }

        else
        {
          v40 = sub_1D992AE84();
          v98 = &v89;
          OUTLINED_FUNCTION_0();
          v42 = v41;
          v44 = v43[8];
          MEMORY[0x1EEE9AC00](v43);
          v102 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
          v100 = &v89;
          MEMORY[0x1EEE9AC00](&v89);
          v46 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1D99002F8();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v40);
          v101 = v33;
          if (EnumTagSinglePayload == 1)
          {
            sub_1D992AE74();
            v48 = v40;
            if (__swift_getEnumTagSinglePayload(v46, 1, v40) != 1)
            {
              sub_1D986B804(v46, &qword_1ECB481D0, &qword_1D992F9F0);
            }
          }

          else
          {
            (*(v42 + 32))(v102, v46, v40);
            v48 = v40;
          }

          OUTLINED_FUNCTION_12_1();
          v97 = &v89;
          MEMORY[0x1EEE9AC00](&v89);
          v49 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
          v99 = &v89 - v49;
          v100 = v42;
          v92 = *(v42 + 16);
          v92();
          OUTLINED_FUNCTION_23_9();
          OUTLINED_FUNCTION_17_10();
          v50();
          v107 = &v89;
          LODWORD(v93) = LOBYTE(v113[0]);
          MEMORY[0x1EEE9AC00](LOBYTE(v113[0]));
          v51 = &v89 - v49;
          v52 = v92;
          (v92)(&v89 - v49, v102, v48);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
          v96 = &v89;
          OUTLINED_FUNCTION_9(v53);
          v55 = *(v54 + 64);
          MEMORY[0x1EEE9AC00](v56);
          v90 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
          v57 = (&v89 - v90);
          v58 = sub_1D992AE04();
          OUTLINED_FUNCTION_10_4();
          __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
          v95 = &v89;
          MEMORY[0x1EEE9AC00](&v89);
          v94 = &v89 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1D99002F8();
          (v52)(v11, v99, v48);
          *&v11[v8[5]] = v93;
          v63 = &v11[v8[6]];
          v93 = v51;
          v109 = v48;
          (v52)(v63, v51, v48);
          v92 = &v89;
          v64 = &v11[v8[7]];
          v65 = v103;
          v66 = v101;
          *v64 = v103;
          *(v64 + 1) = v66;
          OUTLINED_FUNCTION_0();
          v89 = v67;
          MEMORY[0x1EEE9AC00](*(v68 + 64));
          OUTLINED_FUNCTION_13();
          v71 = v70 - v69;
          v91 = &v89;
          MEMORY[0x1EEE9AC00](&v89);
          v72 = &v89 - v90;
          sub_1D99002F8();
          LODWORD(v52) = __swift_getEnumTagSinglePayload(v72, 1, v58);
          sub_1D987BA38(v65, v66);
          if (v52 == 1)
          {
            v73 = v89;
            sub_1D992ADF4();
            sub_1D986B804(v57, &qword_1ECB48710, &qword_1D9931340);
            v74 = OUTLINED_FUNCTION_8_15();
            v57(v74);
            (v57)(v99, v65);
            if (__swift_getEnumTagSinglePayload(v72, 1, v58) != 1)
            {
              sub_1D986B804(v72, &qword_1ECB48710, &qword_1D9931340);
            }
          }

          else
          {
            sub_1D986B804(v57, &qword_1ECB48710, &qword_1D9931340);
            v75 = OUTLINED_FUNCTION_8_15();
            v57(v75);
            (v57)(v99, v65);
            v73 = v89;
            (*(v89 + 32))(v71, v72, v58);
          }

          OUTLINED_FUNCTION_12_1();
          (*(v73 + 32))(&v11[v8[8]], v71, v58);
          OUTLINED_FUNCTION_12_1();
          sub_1D99002A0();
          sub_1D99003A8();
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_12_1();
          v76 = sub_1D98F72EC();
          v77 = sub_1D98B3B0C(&unk_1F5517EA0);
          v113[0] = sub_1D98B3B0C(&unk_1F5517F50);
          sub_1D98D81B4(v77);
          v78 = sub_1D98D4538(v113[0]);
          v113[0] = 1936154996;
          v113[1] = 0xE400000000000000;
          v113[2] = v76;
          v113[3] = &unk_1F5517F50;
          v113[4] = v78;
          v79 = sub_1D990C31C();
          v82 = sub_1D987005C(v79, v80, v81);

          sub_1D9866358(v103, v101);
          sub_1D9900400(v13, type metadata accessor for TagsTable.Record);
          sub_1D986B804(v108, &qword_1ECB481D0, &qword_1D992F9F0);
          __swift_destroy_boxed_opaque_existential_1(v112);
          if (v82)
          {
            v83 = v109;
            (v100[4])(v105, v102, v109);
            v84 = OUTLINED_FUNCTION_5_22();
            v87 = v83;
          }

          else
          {
            v88 = v109;
            (v57)(v102, v109);
            OUTLINED_FUNCTION_10_4();
            v87 = v88;
          }

          __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
          OUTLINED_FUNCTION_12_1();
        }

        OUTLINED_FUNCTION_12_1();
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_7();

    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

void sub_1D98FE2D0()
{
  OUTLINED_FUNCTION_6_2();
  v36 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_14();
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  (*(v14 + 16))(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v13);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  v22 = type metadata accessor for TagsTable.Predicate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
  sub_1D99002A0();
  *(v1 + v22[5]) = 0;
  sub_1D99002A0();
  *(v1 + v22[7]) = 0;
  v30 = v1 + v22[8];
  *v30 = v8 & 1;
  *(v30 + 4) = v8 == 2;
  *(v1 + v22[9]) = 0;
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v22);
  v34 = sub_1D99001AC(v1);
  sub_1D986B804(v1, &qword_1ECB48968, &qword_1D9932380);
  if (v34)
  {
    sub_1D98FF834(v34);
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98FE520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49028, &qword_1D99354A0);
  MEMORY[0x1EEE9AC00](((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = v55 - v3;
  v73 = type metadata accessor for IdentifiableTag(0);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](*(v71 + 64));
  v72 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(type metadata accessor for TagsTable.Record(0) - 8);
  MEMORY[0x1EEE9AC00](*(v56 + 64));
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC8];
  v74 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49030, &qword_1D99354A8);
  v55[1] = v55;
  v68 = v13;
  v14 = ((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v59 = v55 - v15;
  v60 = a1;
  v16 = (v10 + 63) >> 6;

  v18 = 0;
  v57 = v16;
  v58 = a1 + 64;
  if (!v12)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v67 = v8;
    v65 = v12;
    v20 = __clz(__rbit64(v12)) | (v18 << 6);
    v21 = v60;
    v22 = *(v60 + 48);
    v23 = sub_1D992AE84();
    v64 = *(v23 - 8);
    v62 = *(v64 + 72);
    v24 = *(v64 + 16);
    v25 = v59;
    v70 = v23;
    v24(v59, v22 + v62 * v20);
    v63 = v55;
    v26 = v68;
    v27 = *(v68 + 48);
    *(v27 + v25) = *(*(v21 + 56) + 8 * v20);
    MEMORY[0x1EEE9AC00](v27);
    v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D99002A0();
    v30 = *(v26 + 48);
    v66 = v29;
    v31 = *&v29[v30];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v56;
      v34 = v31 + ((*(v56 + 80) + 32) & ~*(v56 + 80));

      v35 = *(v33 + 72);
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D9900350();
        sub_1D98FEFCC(v4);
        sub_1D9900400(v7, type metadata accessor for TagsTable.Record);
        if (__swift_getEnumTagSinglePayload(v4, 1, v73) == 1)
        {
          sub_1D986B804(v4, &qword_1ECB49028, &qword_1D99354A0);
        }

        else
        {
          sub_1D99003A8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D98BE124(0, *(v36 + 16) + 1, 1, v36);
            v36 = v40;
          }

          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1D98BE124(v38 > 1, v39 + 1, 1, v36);
            v36 = v41;
          }

          *(v36 + 16) = v39 + 1;
          sub_1D99003A8();
        }

        v34 += v35;
        --v32;
      }

      while (v32);
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v37);
    v43 = v55 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D99002A0();
    v44 = *(v67 + 16);
    if (*(v67 + 24) <= v44)
    {
      sub_1D98F1544(v44 + 1, 1);
    }

    v8 = v74;
    sub_1D98B3748();
    result = sub_1D992B5C4();
    v45 = v8 + 64;
    v46 = -1 << *(v8 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    v49 = (-1 << v47) & ~*(v8 + 64 + 8 * (v47 >> 6));
    v61 = v55;
    if (!v49)
    {
      v51 = 0;
      v52 = (63 - v46) >> 6;
      while (++v48 != v52 || (v51 & 1) == 0)
      {
        v53 = v48 == v52;
        if (v48 == v52)
        {
          v48 = 0;
        }

        v51 |= v53;
        v54 = *(v45 + 8 * v48);
        if (v54 != -1)
        {
          v50 = __clz(__rbit64(~v54)) + (v48 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_36;
    }

    v50 = __clz(__rbit64(v49)) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    v12 = (v65 - 1) & v65;
    *(v45 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    (*(v64 + 32))(*(v8 + 48) + v50 * v62, v43, v70);
    *(*(v8 + 56) + 8 * v50) = v36;
    ++*(v8 + 16);

    v16 = v57;
    v9 = v58;
  }

  while (v12);
LABEL_5:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v19);
    ++v18;
    if (v12)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_1D98FEBCC()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_14();
  v7 = *v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  v18 = type metadata accessor for TagsTable.Predicate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  (*(*(v10 - 8) + 16))(v0 + v18[11], v4, v10);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v10);
  sub_1D99002A0();
  *(v0 + v18[5]) = 0;
  sub_1D99002A0();
  *(v0 + v18[7]) = 0;
  v26 = v0 + v18[8];
  *v26 = v7 & 1;
  *(v26 + 4) = v7 == 2;
  *(v0 + v18[9]) = 0;
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
  v30 = sub_1D99001AC(v0);
  sub_1D986B804(v0, &qword_1ECB48968, &qword_1D9932380);
  if (v30)
  {
    sub_1D98FF834(v30);
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98FEE2C(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = *a1;
  if (v6 == 2)
  {
    type metadata accessor for TagsTable.Predicate(0);
    v7 = OUTLINED_FUNCTION_2_34();
  }

  else
  {
    v11 = sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = type metadata accessor for TagsTable.Predicate(0);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v11);
    *&v5[v15[5]] = 0;
    *&v5[v15[7]] = 0;
    v26 = &v5[v15[8]];
    *v26 = v6 & 1;
    v26[4] = 0;
    *&v5[v15[9]] = 0;
    v7 = OUTLINED_FUNCTION_5_22();
    v10 = v15;
  }

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v27 = sub_1D99001AC(v5);
  v28 = v27;
  if (v27)
  {
    v29 = sub_1D98FF3BC(v27);

    v28 = sub_1D98FE520(v29);
  }

  sub_1D986B804(v5, &qword_1ECB48968, &qword_1D9932380);
  return v28;
}

uint64_t sub_1D98FEFCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TagsTable.Record(0);
  v5 = v4;
  v6 = *(v1 + *(v4 + 20));
  if (v6)
  {
    if (v6 != 1)
    {
      if (qword_1ED8BD6D0 != -1)
      {
        OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
      }

      sub_1D992BD64();

      *&v40 = 0xD000000000000013;
      *(&v40 + 1) = 0x80000001D993CF90;
      v13 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v13);

      OUTLINED_FUNCTION_13_14();
      OUTLINED_FUNCTION_12_16();
      sub_1D98DCEB4(v14, v15, v16, v17, v18, v19);

      type metadata accessor for IdentifiableTag(0);
      v20 = OUTLINED_FUNCTION_2_34();
      return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = (v1 + *(v4 + 28));
  v9 = *v8;
  v10 = v8[1];
  objc_allocWithZone(MEMORY[0x1E69C65B8]);
  sub_1D987BA38(v9, v10);
  v11 = sub_1D9880B04(v9, v10);
  if (v11)
  {
    v12 = v11;
    if (v7)
    {
      v41 = &type metadata for DataClassificationTag;
      v42 = &protocol witness table for DataClassificationTag;
      *&v40 = swift_allocObject();
      static DataClassificationTag.read(from:)(v40 + 16);
    }

    else
    {
      v41 = &type metadata for SensitiveConditionTag;
      v42 = &protocol witness table for SensitiveConditionTag;
      static SensitiveConditionTag.read(from:)();
    }

    v35 = *(v5 + 24);
    v36 = sub_1D992AE84();
    OUTLINED_FUNCTION_5();
    v38 = *(v37 + 16);
    v38(a1, v2 + v35, v36);
    v39 = type metadata accessor for IdentifiableTag(0);
    v38(a1 + *(v39 + 20), v2, v36);
    sub_1D986D53C(&v40, a1 + *(v39 + 24));
    v20 = OUTLINED_FUNCTION_5_22();
    v23 = v39;
    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_12_16();
  sub_1D98DCEB4(v24, v25, v26, v27, v28, v29);
  type metadata accessor for IdentifiableTag(0);
  v30 = OUTLINED_FUNCTION_2_34();

  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

void *sub_1D98FF3BC(uint64_t a1)
{
  v2 = *(type metadata accessor for TagsTable.Record(0) - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v10 = a1 + v45;
    v11 = MEMORY[0x1E69E7CC8];
    v12 = *(v6 + 72);
    v43 = &v41 - v7;
    v44 = v4;
    v42 = v12;
    while (1)
    {
      v47 = v10;
      v48 = v9;
      sub_1D9900350();
      v13 = sub_1D992AE84();
      v46 = &v41;
      v14 = *(v13 - 8);
      v15 = v14;
      v16 = v14[8];
      MEMORY[0x1EEE9AC00](v14);
      v17 = v15[2];
      v51 = v18;
      v49 = v17;
      (v17)(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v11[2] && (v19 = sub_1D9889568(), (v20 & 1) != 0))
      {
        v21 = *(v11[7] + 8 * v19);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      sub_1D9900350();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D98BE0E8(0, *(v21 + 16) + 1, 1, v21);
        v21 = v38;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D98BE0E8(v23 > 1, v24 + 1, 1, v21);
        v21 = v39;
      }

      *(v21 + 16) = v24 + 1;
      sub_1D99003A8();
      MEMORY[0x1EEE9AC00](v25);
      v26 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49(v26, v50, v51);
      swift_isUniquelyReferenced_nonNull_native();
      v52 = v11;
      v27 = sub_1D9889568();
      if (__OFADD__(v11[2], (v28 & 1) == 0))
      {
        break;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49038, &unk_1D99354B0);
      if (sub_1D992BE34())
      {
        v31 = sub_1D9889568();
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_25;
        }

        v29 = v31;
      }

      v11 = v52;
      if (v30)
      {
        *(v52[7] + 8 * v29) = v21;
      }

      else
      {
        v52[(v29 >> 6) + 8] |= 1 << v29;
        v49((v11[6] + v15[9] * v29), v26, v51);
        *(v11[7] + 8 * v29) = v21;
        v33 = v11[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_24;
        }

        v11[2] = v35;
      }

      v36 = v15[1];
      v37 = v51;
      v36(v26, v51);
      v36(v50, v37);
      v8 = v43;
      sub_1D9900400(v43, type metadata accessor for TagsTable.Record);
      v10 = v47 + v42;
      v9 = v48 - 1;
      if (v48 == 1)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1D992BFC4();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D98FF834(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49028, &qword_1D99354A0);
  MEMORY[0x1EEE9AC00](((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = &v19 - v3;
  v5 = type metadata accessor for IdentifiableTag(0);
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](*(v20 + 64));
  v6 = *(type metadata accessor for TagsTable.Record(0) - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D9900350();
    sub_1D98FEFCC(v4);
    sub_1D9900400(v9, type metadata accessor for TagsTable.Record);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1D986B804(v4, &qword_1ECB49028, &qword_1D99354A0);
    }

    else
    {
      sub_1D99003A8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D98BE124(0, *(v13 + 16) + 1, 1, v13);
        v13 = v16;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D98BE124(v14 > 1, v15 + 1, 1, v13);
        v13 = v17;
      }

      *(v13 + 16) = v15 + 1;
      sub_1D99003A8();
    }

    v11 += v12;
    --v10;
  }

  while (v10);
  return v13;
}

void sub_1D98FFB20()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = type metadata accessor for ComponentId(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  v7 = type metadata accessor for MessageGroupIdentifier(0);
  OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  sub_1D98B37DC(v1, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v12 = v28;
  if (v28 >> 61 != 1)
  {
    sub_1D9890810(v28);
LABEL_5:
    sub_1D992AE84();
    v23 = OUTLINED_FUNCTION_2_34();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    goto LABEL_6;
  }

  swift_projectBox();
  sub_1D9900350();
  sub_1D9900350();
  sub_1D99003A8();
  v13 = *(v2 + 20);
  v14 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](*(v15 + 64));
  OUTLINED_FUNCTION_13();
  (*(v18 + 16))(v17 - v16, v6 + v13, v14);
  objc_allocWithZone(sub_1D992B1A4());
  sub_1D98907D8(v12);
  v19 = sub_1D992B184();
  sub_1D992B194();

  sub_1D9890810(v12);
  sub_1D9900400(v6, type metadata accessor for ComponentId);
  sub_1D9900400(v11, type metadata accessor for MessageGroupIdentifier);
  v20 = OUTLINED_FUNCTION_5_22();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);
  sub_1D9890810(v12);
LABEL_6:
  OUTLINED_FUNCTION_7();
}

uint64_t Metastore.createTag(shim:onClock:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v0);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_1D98FD694();
  return sub_1D986B804(v3, &qword_1ECB481D0, &qword_1D992F9F0);
}

uint64_t type metadata accessor for IdentifiableTag(uint64_t a1)
{
  result = qword_1ED8BD810;
  if (!qword_1ED8BD810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99000CC(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    result = sub_1D9900150();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D9900150()
{
  result = qword_1ECB47B40;
  if (!qword_1ECB47B40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECB47B40);
  }

  return result;
}

uint64_t sub_1D99001AC(uint64_t a1)
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  sub_1D98FD388(v6);
  v2 = objc_autoreleasePoolPush();
  sub_1D987EF74();
  v4 = v3;
  objc_autoreleasePoolPop(v2);

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1DA73B4E0);
  }

  return result;
}

uint64_t sub_1D99002A0()
{
  OUTLINED_FUNCTION_21_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  return v0;
}

uint64_t sub_1D99002F8()
{
  OUTLINED_FUNCTION_21_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5();
  v3 = OUTLINED_FUNCTION_27();
  v4(v3);
  return v0;
}

uint64_t sub_1D9900350()
{
  OUTLINED_FUNCTION_21_8();
  v1(0);
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

uint64_t sub_1D99003A8()
{
  OUTLINED_FUNCTION_21_8();
  v1(0);
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

uint64_t sub_1D9900400(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

double OUTLINED_FUNCTION_19_7(uint64_t a1)
{
  *v1 = a1;
  result = 0.0;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_9()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return swift_getDynamicType();
}

uint64_t sub_1D99004B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 48) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A28, &qword_1D9935500);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v6 + 56) = v12;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  v13 = qword_1ECB47AB8;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ECB47AB8);
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](a1, a2);
  sub_1D986A454(0xD000000000000013, 0x80000001D993D080, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD00000000000001ALL, 0x80000001D993D110);

  swift_unownedRetainStrong();

  v14 = a3;
  swift_unownedRetain();

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v6;
  v24 = sub_1D9900D78;
  v25 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D9900CCC;
  v23 = &block_descriptor_17;
  v16 = _Block_copy(&aBlock);

  v17 = sub_1D992B6B4();
  swift_beginAccess();
  v18 = notify_register_dispatch((v17 + 32), (v6 + 48), v14, v16);
  swift_endAccess();

  _Block_release(v16);

  if (v18)
  {
    aBlock = 0;
    v21 = 0xE000000000000000;
    sub_1D992BD64();

    aBlock = 0xD000000000000017;
    v21 = 0x80000001D993D140;
    MEMORY[0x1DA739C30](a1, a2);

    sub_1D98DCEB4(aBlock, v21, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD00000000000001ALL, 0x80000001D993D110);

    return 0;
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1D99007DC(uint64_t a1)
{
  sub_1D9900810();

  return v1;
}

uint64_t sub_1D9900810()
{
  OUTLINED_FUNCTION_1_37();
  v2 = *(v1 + 136);

  atomic_store(1u, v2(v3));

  swift_beginAccess();
  return notify_cancel(*(v0 + 48));
}

uint64_t sub_1D9900890()
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  swift_beginAccess();
  if (!notify_get_state(*(v0 + 48), state64))
  {
    return state64[0];
  }

  if (qword_1ECB47AB8 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ECB47AB8);
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](*(v0 + 16), *(v0 + 24));
  sub_1D98DCEB4(0xD000000000000020, 0x80000001D993D1A0, 0xD00000000000006ALL, 0x80000001D993D0A0, 0x53746E6572727563, 0xEC00000065746174);

  return 0;
}

uint64_t sub_1D99009EC()
{
  OUTLINED_FUNCTION_1_37();
  v2 = *(v1 + 136);

  LOBYTE(v2) = atomic_load(v2(v3));

  if ((v2 & 1) == 0)
  {
    v5 = sub_1D9900890();
    v7 = v6;
    if (qword_1ECB47AB8 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1ECB47AB8);
    }

    sub_1D992BD64();

    MEMORY[0x1DA739C30](*(v0 + 16), *(v0 + 24));
    MEMORY[0x1DA739C30](0x7473206874697720, 0xED0000203A657461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48718, &qword_1D9931348);
    v8 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v8);

    sub_1D986A454(0x6E69796669746F4ELL, 0xEF3A656D616E2067, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD000000000000014, 0x80000001D993D180);

    return (*(v0 + 32))(v5, v7 & 1);
  }

  return result;
}

uint64_t sub_1D9900BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1ECB47AB8 != -1)
  {
    swift_once();
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](a2, a3);
  sub_1D986A454(0xD00000000000001ALL, 0x80000001D993D160, 0xD00000000000006ALL, 0x80000001D993D0A0, 0xD00000000000001ALL, 0x80000001D993D110);

  swift_unownedRetainStrong();
  sub_1D99009EC();
}

uint64_t sub_1D9900CCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1D9900D20(uint64_t a1)
{
  sub_1D99007DC(a1);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9900DBC()
{
  v1 = sub_1D992AE04();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = swift_task_alloc();
  sub_1D992ADF4();
  sub_1D992AD94();
  v5 = *(v2 + 8);
  v0[9] = v5;
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v4, v1);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1D9900F38;

  return sub_1D9901C0C();
}

uint64_t sub_1D9900F38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  *v4 = *v1;
  v3[13] = v5;
  v3[14] = v0;

  if (v0)
  {
    v6 = v3[6];
    v7 = sub_1D99011C0;
  }

  else
  {
    v8 = v3[6];

    v7 = sub_1D9901054;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1D9901054()
{
  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
  }

  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  sub_1D992BD64();

  v0[5] = v1;
  v5 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v5);

  OUTLINED_FUNCTION_11_19();
  sub_1D98DCECC(0xD00000000000001CLL, 0x80000001D99384E0, 0xD00000000000007ELL, 0x80000001D993D1F0, 0xD00000000000001DLL, 0x80000001D99384C0);

  v2(v3, v4);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_9_17();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D99011C0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v2(v1, v3);

  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
  }

  v4 = v0[14];
  v5 = sub_1D992BD64();
  OUTLINED_FUNCTION_8_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, 0, 0xE000000000000000);
  MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D9938400);
  v0[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v16, v0[3], 0xD00000000000007ELL, 0x80000001D993D1F0, 0xD00000000000001DLL, 0x80000001D99384C0);

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_1D9901338()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_1D99013DC;

  return sub_1D9901778(v0);
}

uint64_t sub_1D99013DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_16();
  *v7 = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v0;

  if (v0)
  {
    v10 = sub_1D9901634;
  }

  else
  {
    v10 = sub_1D99014F8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v5, 0);
}

uint64_t sub_1D99014F8()
{
  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
  }

  v1 = *(v0 + 64);
  sub_1D992BD64();

  *(v0 + 40) = v1;
  v2 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v2);

  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_5_23();
  sub_1D98DCECC(v4, 0xE700000000000000, 0xD00000000000007ELL, v3 | 0x8000000000000000, v5, 0xE700000000000000);

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1D9901634()
{
  if (qword_1ED8BD6E8 != -1)
  {
    OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
  }

  v1 = v0[9];
  v2 = sub_1D992BD64();
  OUTLINED_FUNCTION_8_0(v2, v3, v4, v5, v6, v7, v8, v9, v16, 0, 0xE000000000000000);
  MEMORY[0x1DA739C30](0xD00000000000001DLL, 0x80000001D993D1D0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  v10 = v0[3];
  OUTLINED_FUNCTION_5_23();
  sub_1D98DCEB4(v12, v10, 0xD00000000000007ELL, v11 | 0x8000000000000000, v13, 0xE700000000000000);

  OUTLINED_FUNCTION_25();

  return v14();
}

uint64_t sub_1D9901778(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49040, &qword_1D9935518);
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_1D9901844;

  return sub_1D9867CE8();
}

uint64_t sub_1D9901844()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_16();
  *v6 = v5;
  *(v8 + 40) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D990194C, v4, 0);
}

void sub_1D990194C()
{
  if (*(v0 + 40))
  {
    v1 = type metadata accessor for StagedMessagePolicyHeaders(0);
    sub_1D9901B4C();

    OUTLINED_FUNCTION_10_15();
    if (v1)
    {

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_9_17();

      __asm { BRAA            X1, X16 }
    }

    sub_1D992B4B4();
    while (1)
    {
      v2 = *(v0 + 24);
      sub_1D992B4C4();
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49048, &qword_1D9935520);
      if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
      {
        break;
      }

      sub_1D9901BA4(*(v0 + 24));
      v4 = objc_autoreleasePoolPush();
      sub_1D992B4A4();
      objc_autoreleasePoolPop(v4);
    }

    sub_1D992B3A4();

    sub_1D992B494();
  }

  else
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    OUTLINED_FUNCTION_1_38(" staged messages.");
  }

  OUTLINED_FUNCTION_7_20();
  OUTLINED_FUNCTION_9_17();

  __asm { BRAA            X2, X16 }
}

unint64_t sub_1D9901B4C()
{
  result = qword_1ECB47BE0;
  if (!qword_1ECB47BE0)
  {
    type metadata accessor for StagedMessagePolicyHeaders(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47BE0);
  }

  return result;
}

uint64_t sub_1D9901BA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49040, &qword_1D9935518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9901C0C()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49048, &qword_1D9935520);
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49040, &qword_1D9935518);
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_1D9901D3C;

  return sub_1D9867CE8();
}

uint64_t sub_1D9901D3C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v4 = *(v3 + 32);
  v5 = *v0;
  OUTLINED_FUNCTION_16();
  *v6 = v5;
  *(v8 + 80) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D9901E44, v4, 0);
}

uint64_t sub_1D9901E44()
{
  if (!v0[10])
  {
    if (qword_1ED8BD6E8 != -1)
    {
      OUTLINED_FUNCTION_16_1(&qword_1ED8BD6E8);
    }

    OUTLINED_FUNCTION_1_38(" staged messages.");
    goto LABEL_11;
  }

  v1 = type metadata accessor for StagedMessagePolicyHeaders(0);
  sub_1D9901B4C();

  OUTLINED_FUNCTION_10_15();
  if (!v1)
  {
    v2 = v0[6];

    sub_1D992B4B4();
    v3 = (v2 + 32);
    for (i = (v2 + 8); ; (*i)(v10, v11))
    {
      v5 = v0[8];
      v6 = v0[5];
      sub_1D992B4C4();
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
      {
        break;
      }

      v7 = v0[7];
      v8 = v0[2];
      (*v3)(v7, v0[8], v0[5]);
      v9 = objc_autoreleasePoolPush();
      if (v8(v7))
      {
        sub_1D992B4A4();
      }

      v10 = v0[7];
      v11 = v0[5];
      objc_autoreleasePoolPop(v9);
    }

    sub_1D992B3A4();

    sub_1D992B494();

LABEL_11:

    v12 = OUTLINED_FUNCTION_7_20();

    return v13(v12);
  }

  OUTLINED_FUNCTION_25();

  return v15();
}

uint64_t sub_1D99020B0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for StagedMessagePolicyHeaders(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49048, &qword_1D9935520);
  sub_1D992B4E4();
  v5 = sub_1D992ADA4();
  v6 = sub_1D992AE04();
  (*(*(v6 - 8) + 8))(v4, v6);
  return v5 & 1;
}

uint64_t sub_1D9902194@<X0>(uint64_t a1@<X8>)
{
  v153 = a1;
  v177 = type metadata accessor for LogicalClockStart(0);
  OUTLINED_FUNCTION_6();
  v155 = v3;
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_23_1();
  v154 = v5 - v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_7();
  v161 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v163 = &v149 - v10;
  v174 = type metadata accessor for LogicalClockEvent(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  OUTLINED_FUNCTION_23_1();
  v160 = v12 - v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_20_7();
  v151 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_7();
  v167 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v149 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483A8, &unk_1D9935540);
  OUTLINED_FUNCTION_6();
  v175 = v22;
  v176 = v21;
  MEMORY[0x1EEE9AC00](*(v23 + 64));
  OUTLINED_FUNCTION_23_1();
  v159 = v24 - v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_20_7();
  v150 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v149 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48380, &unk_1D992FA00);
  OUTLINED_FUNCTION_9(v31);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v149 - v33;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48388, &qword_1D9935550);
  OUTLINED_FUNCTION_6();
  v173 = v35;
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v149 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
  OUTLINED_FUNCTION_9(v39);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v40);
  v162 = &v149 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  OUTLINED_FUNCTION_9(v42);
  MEMORY[0x1EEE9AC00](*(v43 + 64));
  OUTLINED_FUNCTION_23_1();
  v171 = v44 - v45;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  v169 = &v149 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49060, &qword_1D9935568);
  OUTLINED_FUNCTION_9(v48);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v49);
  v50 = OUTLINED_FUNCTION_19_8();
  v51 = type metadata accessor for RootLogicalClockBuilder(v50);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v52 + 64));
  OUTLINED_FUNCTION_13();
  v55 = v54 - v53;
  v56 = *(type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0) + 24);
  v157 = v1;
  v152 = &v1[v56];
  sub_1D9866DE0(&v1[v56], v2, &qword_1ECB49060, &qword_1D9935568);
  v57 = OUTLINED_FUNCTION_17_11();
  v58 = MEMORY[0x1E69E7CC0];
  v168 = v34;
  if (v57 == 1)
  {
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v177);
    *(v55 + *(v51 + 20)) = v58;
    type metadata accessor for LogicalClockEnd(0);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    if (OUTLINED_FUNCTION_17_11() != 1)
    {
      sub_1D986B804(v2, &qword_1ECB49060, &qword_1D9935568);
    }
  }

  else
  {
    sub_1D9903674(v2, v55, type metadata accessor for RootLogicalClockBuilder);
  }

  v164 = v20;
  v165 = (v173 + 32);
  ++v175;
  v166 = v173 + 8;
  v66 = v157;
  v67 = v156;
  v172 = v51;
  v68 = v171;
  v170 = v38;
  v158 = v55;
  while (1)
  {
    while (1)
    {
      v69 = v169;
      sub_1D9866DE0(v55, v169, &qword_1ECB49058, &qword_1D9935560);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v177);
      sub_1D986B804(v69, &qword_1ECB49058, &qword_1D9935560);
      if (EnumTagSinglePayload != 1)
      {
        v71 = v162;
        sub_1D9866DE0(v55 + *(v172 + 24), v162, &qword_1ECB49050, &qword_1D9935558);
        v72 = type metadata accessor for LogicalClockEnd(0);
        v73 = __swift_getEnumTagSinglePayload(v71, 1, v72);
        v74 = v71;
        v68 = v171;
        sub_1D986B804(v74, &qword_1ECB49050, &qword_1D9935558);
        if (v73 != 1)
        {
          goto LABEL_27;
        }
      }

      v75 = v66;
      v76 = v168;
      sub_1D992B4C4();
      if (__swift_getEnumTagSinglePayload(v76, 1, v67) == 1)
      {
        sub_1D986B804(v76, &qword_1ECB48380, &unk_1D992FA00);
LABEL_27:
        sub_1D986B804(v152, &qword_1ECB49060, &qword_1D9935568);
        OUTLINED_FUNCTION_10_4();
        __swift_storeEnumTagSinglePayload(v121, v122, v123, v172);
        sub_1D9902D2C(v153);
        return sub_1D990361C(v55, type metadata accessor for RootLogicalClockBuilder);
      }

      (*v165)(v38, v76, v67);
      sub_1D992B4E4();
      v77 = v164;
      v78 = v176;
      sub_1D992B444();
      v173 = *v175;
      (v173)(v30, v78);
      OUTLINED_FUNCTION_8_16();
      v79 = v167;
      sub_1D99036D4(v77, v167, v80);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_35();
        sub_1D990361C(v77, v81);
        v82 = *(v172 + 24);
        sub_1D986B804(v55 + v82, &qword_1ECB49050, &qword_1D9935558);
        OUTLINED_FUNCTION_4_25();
        sub_1D9903674(v79, v55 + v82, v83);
        type metadata accessor for LogicalClockEnd(0);
        OUTLINED_FUNCTION_76();
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
        v38 = v170;
      }

      else
      {
        OUTLINED_FUNCTION_1_39();
        v88 = v163;
        sub_1D9903674(v79, v163, v89);
        if (*(v88 + *(v177 + 20)))
        {
          OUTLINED_FUNCTION_3_22();
          sub_1D99036D4(v88, v161, v90);
          v91 = *(v172 + 20);
          v92 = *(v55 + v91);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D98BD7B8(0, *(v92 + 16) + 1, 1, v92);
            v92 = v119;
          }

          v94 = *(v92 + 16);
          v93 = *(v92 + 24);
          if (v94 >= v93 >> 1)
          {
            sub_1D98BD7B8(v93 > 1, v94 + 1, 1, v92);
            v92 = v120;
          }

          OUTLINED_FUNCTION_0_48();
          sub_1D990361C(v163, v95);
          OUTLINED_FUNCTION_2_35();
          sub_1D990361C(v77, v96);
          *(v92 + 16) = v94 + 1;
          OUTLINED_FUNCTION_15_8();
          OUTLINED_FUNCTION_1_39();
          sub_1D9903674(v161, v97, v98);
          *(v55 + v91) = v92;
          v75 = v157;
          v38 = v170;
          v68 = v171;
        }

        else
        {
          OUTLINED_FUNCTION_2_35();
          sub_1D990361C(v77, v99);
          sub_1D9866DE0(v55, v68, &qword_1ECB49058, &qword_1D9935560);
          v100 = __swift_getEnumTagSinglePayload(v68, 1, v177);
          v38 = v170;
          if (v100 != 1)
          {
            OUTLINED_FUNCTION_0_48();
            sub_1D990361C(v88, v124);
            sub_1D986B804(v68, &qword_1ECB49058, &qword_1D9935560);
            sub_1D9902D2C(v153);
            v125 = v152;
            sub_1D986B804(v152, &qword_1ECB49060, &qword_1D9935568);
            OUTLINED_FUNCTION_10_4();
            __swift_storeEnumTagSinglePayload(v126, v127, v128, v177);
            v129 = v172;
            *(v125 + *(v172 + 20)) = MEMORY[0x1E69E7CC0];
            type metadata accessor for LogicalClockEnd(0);
            OUTLINED_FUNCTION_10_4();
            __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
            OUTLINED_FUNCTION_76();
            __swift_storeEnumTagSinglePayload(v134, v135, v136, v129);
            v137 = v150;
            sub_1D992B4E4();
            v138 = v151;
            v139 = v176;
            sub_1D992B444();
            (v173)(v137, v139);
            sub_1D99032CC(v138);
            OUTLINED_FUNCTION_2_35();
            sub_1D990361C(v138, v140);
            OUTLINED_FUNCTION_16_10();
            v142 = v38;
            v143 = v67;
            goto LABEL_30;
          }

          sub_1D986B804(v68, &qword_1ECB49058, &qword_1D9935560);
          sub_1D986B804(v55, &qword_1ECB49058, &qword_1D9935560);
          OUTLINED_FUNCTION_1_39();
          sub_1D9903674(v88, v55, v101);
          OUTLINED_FUNCTION_76();
          __swift_storeEnumTagSinglePayload(v102, v103, v104, v177);
        }
      }

      v66 = v75;
      if (*v75 == 1)
      {
        break;
      }

      OUTLINED_FUNCTION_16_10();
      v114(v38, v67);
    }

    v105 = v30;
    v106 = v177;
    v107 = v159;
    sub_1D992B4E4();
    v108 = v67;
    v109 = v160;
    v110 = v38;
    v111 = v176;
    sub_1D992B444();
    (v173)(v107, v111);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_16_10();
      v112(v110, v108);
      OUTLINED_FUNCTION_2_35();
      sub_1D990361C(v109, v113);
      v38 = v110;
      v67 = v108;
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_1_39();
    v115 = v154;
    sub_1D9903674(v109, v154, v116);
    if ((*(v115 + *(v106 + 20)) & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_0_48();
    sub_1D990361C(v115, v117);
    OUTLINED_FUNCTION_16_10();
    v38 = v170;
    v67 = v156;
    v118(v170, v156);
LABEL_25:
    v55 = v158;
    v30 = v105;
    v68 = v171;
  }

  sub_1D986B804(v152, &qword_1ECB49060, &qword_1D9935568);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v172);
  v55 = v158;
  sub_1D9902D2C(v153);
  OUTLINED_FUNCTION_0_48();
  sub_1D990361C(v115, v147);
  OUTLINED_FUNCTION_16_10();
  v142 = v170;
  v143 = v156;
LABEL_30:
  v141(v142, v143);
  return sub_1D990361C(v55, type metadata accessor for RootLogicalClockBuilder);
}

uint64_t sub_1D9902D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for LogicalClockEnd(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49050, &qword_1D9935558);
  OUTLINED_FUNCTION_9(v10);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  OUTLINED_FUNCTION_9(v13);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_19_8();
  v16 = type metadata accessor for LogicalClockStart(v15);
  OUTLINED_FUNCTION_6();
  v88 = v17;
  MEMORY[0x1EEE9AC00](*(v18 + 64));
  OUTLINED_FUNCTION_23_1();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v76 - v23;
  sub_1D9866DE0(v3, v2, &qword_1ECB49058, &qword_1D9935560);
  if (OUTLINED_FUNCTION_17_11() == 1)
  {
    sub_1D986B804(v2, &qword_1ECB49058, &qword_1D9935560);
    type metadata accessor for RootLogicalClock(0);
    OUTLINED_FUNCTION_10_4();
  }

  else
  {
    v80 = v9;
    v87 = a1;
    OUTLINED_FUNCTION_1_39();
    sub_1D9903674(v2, v24, v29);
    v30 = sub_1D992AE84();
    v86 = &v76;
    OUTLINED_FUNCTION_6();
    v32 = v31;
    v34 = v33[8];
    MEMORY[0x1EEE9AC00](v33);
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
    v36 = v5;
    v77 = v3;
    v37 = *(v32 + 16);
    v84 = &v76 - v35;
    v37();
    v85 = &v76;
    v38 = v16[6];
    v92 = v34;
    MEMORY[0x1EEE9AC00](v38);
    v83 = &v76 - v35;
    v39 = v30;
    v90 = v37;
    v91 = v32 + 16;
    v37();
    v40 = v36;
    v41 = *&v24[v16[8]];
    v81 = *&v24[v16[7]];
    v82 = v41;
    v42 = type metadata accessor for RootLogicalClockBuilder(0);
    v43 = v77;
    v44 = v89;
    sub_1D9866DE0(v77 + *(v42 + 24), v89, &qword_1ECB49050, &qword_1D9935558);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v36);
    v46 = 0;
    v47 = 0;
    v78 = EnumTagSinglePayload;
    v48 = v24;
    if (EnumTagSinglePayload != 1)
    {
      OUTLINED_FUNCTION_4_25();
      v49 = v80;
      sub_1D9903674(v89, v80, v50);
      v46 = *(v49 + *(v40 + 20));
      v47 = *(v49 + *(v40 + 24));
      sub_1D990361C(v49, type metadata accessor for LogicalClockEnd);
    }

    v79 = v47;
    v80 = v46;
    v51 = *(v43 + *(v42 + 20));
    v52 = *(v51 + 16);
    if (v52)
    {
      v77 = v48;
      v93 = MEMORY[0x1E69E7CC0];
      sub_1D98B977C(0, v52, 0);
      v53 = v93;
      v54 = v51 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v55 = *(v88 + 72);
      v56 = (v32 + 32);
      v88 = v32 + 32;
      v89 = v55;
      v57 = v39;
      do
      {
        MEMORY[0x1EEE9AC00](v56);
        v59 = &v76 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        OUTLINED_FUNCTION_3_22();
        sub_1D99036D4(v54, v21, v60);
        (v90)(v59, v21, v39);
        OUTLINED_FUNCTION_0_48();
        sub_1D990361C(v21, v61);
        v93 = v53;
        v63 = *(v53 + 16);
        v62 = *(v53 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1D98B977C(v62 > 1, v63 + 1, 1);
          v53 = v93;
        }

        *(v53 + 16) = v63 + 1;
        OUTLINED_FUNCTION_15_8();
        (*(v32 + 32))(v64 + *(v32 + 72) * v63, v59, v39);
        v56 = v89;
        v54 += v89;
        --v52;
      }

      while (v52);
      v48 = v77;
    }

    else
    {
      v57 = v39;
    }

    v65 = v78 == 1;
    sub_1D98B399C();
    v67 = v66;
    OUTLINED_FUNCTION_0_48();
    sub_1D990361C(v48, v68);
    v69 = *(v32 + 32);
    v70 = v87;
    v69(v87, v84, v57);
    v71 = type metadata accessor for RootLogicalClock(0);
    v69(v70 + v71[5], v83, v57);
    v72 = v82;
    *(v70 + v71[6]) = v81;
    *(v70 + v71[7]) = v72;
    v73 = v70 + v71[8];
    v74 = v79;
    *v73 = v80;
    *(v73 + 8) = v74;
    *(v73 + 16) = v65;
    *(v70 + v71[9]) = v67;
    OUTLINED_FUNCTION_76();
    v28 = v71;
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_1D99032CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49058, &qword_1D9935560);
  OUTLINED_FUNCTION_9(v4);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for LogicalClockStart(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_23_1();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  type metadata accessor for LogicalClockEvent(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  OUTLINED_FUNCTION_13();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_8_16();
  sub_1D99036D4(a1, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(type metadata accessor for RootLogicalClockBuilder(0) + 24);
    sub_1D986B804(v2 + v21, &qword_1ECB49050, &qword_1D9935558);
    OUTLINED_FUNCTION_4_25();
    sub_1D9903674(v19, v2 + v21, v22);
    type metadata accessor for LogicalClockEnd(0);
    v23 = 1;
    OUTLINED_FUNCTION_76();
  }

  else
  {
    OUTLINED_FUNCTION_1_39();
    sub_1D9903674(v19, v15, v28);
    if (v15[*(v8 + 20)])
    {
      OUTLINED_FUNCTION_3_22();
      sub_1D99036D4(v15, v12, v29);
      v30 = *(type metadata accessor for RootLogicalClockBuilder(0) + 20);
      sub_1D987B918();
      v31 = *(*(v2 + v30) + 16);
      sub_1D987B9A8(v31);
      OUTLINED_FUNCTION_0_48();
      sub_1D990361C(v15, v32);
      v33 = *(v2 + v30);
      *(v33 + 16) = v31 + 1;
      OUTLINED_FUNCTION_15_8();
      OUTLINED_FUNCTION_1_39();
      sub_1D9903674(v12, v34, v35);
      *(v2 + v30) = v33;
      return 1;
    }

    sub_1D9866DE0(v2, v7, &qword_1ECB49058, &qword_1D9935560);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      OUTLINED_FUNCTION_0_48();
      sub_1D990361C(v15, v37);
      sub_1D986B804(v7, &qword_1ECB49058, &qword_1D9935560);
      return 0;
    }

    sub_1D986B804(v7, &qword_1ECB49058, &qword_1D9935560);
    sub_1D986B804(v2, &qword_1ECB49058, &qword_1D9935560);
    OUTLINED_FUNCTION_1_39();
    sub_1D9903674(v15, v2, v36);
    v23 = 1;
    OUTLINED_FUNCTION_76();
    v27 = v8;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  return v23;
}

uint64_t sub_1D990361C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D9903674(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D99036D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1D990375C(uint64_t a1)
{
  sub_1D9903888(319, &qword_1ECB49078, type metadata accessor for LogicalClockStart, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9903888(319, &qword_1ECB49080, type metadata accessor for LogicalClockStart, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D9903888(319, &qword_1ECB49088, type metadata accessor for LogicalClockEnd, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9903888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9903914(uint64_t a1)
{
  sub_1D99039D8(319);
  if (v1 <= 0x3F)
  {
    sub_1D9903888(319, &qword_1ECB490B0, type metadata accessor for RootLogicalClockBuilder, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D99039D8(uint64_t a1)
{
  if (!qword_1ECB490A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483A8, &unk_1D9935540);
    sub_1D9903A48();
    v1 = sub_1D992B4F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB490A0);
    }
  }
}

unint64_t sub_1D9903A48()
{
  result = qword_1ECB490A8;
  if (!qword_1ECB490A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB483A8, &unk_1D9935540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB490A8);
  }

  return result;
}

void sub_1D9903AC0()
{
  sub_1D9905184();
  v0 = sub_1D992B0D4();
  if (v0)
  {
    v8 = v0;
    v1 = [v0 whichEvent_Type];
    switch(v1)
    {
      case 'e':
        v2 = OUTLINED_FUNCTION_2_36();
        sub_1D9904374(v2, v3);
        goto LABEL_11;
      case 'f':
        v4 = OUTLINED_FUNCTION_2_36();
        sub_1D9904468(v4, v5);
        goto LABEL_11;
      case 'g':
        v6 = OUTLINED_FUNCTION_2_36();
        sub_1D9904164(v6, v7);
        goto LABEL_11;
      case 'h':
        goto LABEL_11;
      default:
        if (v1)
        {
          if (qword_1ECB480B8 != -1)
          {
            OUTLINED_FUNCTION_0_49(&qword_1ECB480B8);
          }

          OUTLINED_FUNCTION_1_40();
          sub_1D992BD64();
          MEMORY[0x1DA739C30](0xD000000000000031, 0x80000001D993D3E0);
          [v8 whichEvent_Type];
          type metadata accessor for SUTSchemaTestExecutionEvent_WhichEvent_Type(0);
          sub_1D992BE24();
          sub_1D98DCEB4(v9, v10, 0xD000000000000062, 0x80000001D993D300, 0x28737365636F7270, 0xEB00000000293A5FLL);
        }

        else
        {
LABEL_11:
        }

        break;
    }
  }
}

void *sub_1D9903C78()
{
  v1 = v0;
  v2 = *(sub_1D992AE84() - 8);
  MEMORY[0x1EEE9AC00](*(v2 + 64));
  result = sub_1D992B0B4();
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1D992B134();

  v5 = *v1;
  if (*(*v1 + 16))
  {
    v6 = sub_1D9889568();
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
LABEL_10:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1D987BA38(v9, v10);
      sub_1D992AD64();
      sub_1D992B094();
      sub_1D987106C(v9, v10);
      v18 = OUTLINED_FUNCTION_3_23();
      return v19(v18);
    }
  }

  result = sub_1D992B0B4();
  if (!result)
  {
    goto LABEL_14;
  }

  v11 = result;
  v12 = sub_1D992B154();

  sub_1D9905004(v22, v12, v12, v1[3]);
  if ((v23 & 1) == 0)
  {
    v13 = v1[2];
    if (*(v13 + 16))
    {
      v14 = sub_1D98897E0(v22[0], v22[1]);
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v9 = *v16;
        v10 = v16[1];
        goto LABEL_10;
      }
    }
  }

  v20 = OUTLINED_FUNCTION_3_23();
  return v21(v20);
}

unint64_t sub_1D9903E98(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = result;
  if (result >= a3)
  {
    if (result == a3)
    {
      if (qword_1ECB480B8 != -1)
      {
        OUTLINED_FUNCTION_0_49(&qword_1ECB480B8);
      }

      OUTLINED_FUNCTION_1_40();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](0xD000000000000037, 0x80000001D993D2C0);
      v7 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v7);

      MEMORY[0x1DA739C30](0x20646E6120, 0xE500000000000000);
      v8 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v8);

      sub_1D98DCEB4(v11, v12, 0xD000000000000062, 0x80000001D993D300, 0xD000000000000016, 0x80000001D993D370);

      if (a2 == a4)
      {
        OUTLINED_FUNCTION_1_40();
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000049, 0x80000001D993D390);
        v9 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v9);

        MEMORY[0x1DA739C30](0x20646E6120, 0xE500000000000000);
        v10 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v10);

        sub_1D98DCEB4(v11, v12, 0xD000000000000062, 0x80000001D993D300, 0xD000000000000016, 0x80000001D993D370);

        return OUTLINED_FUNCTION_3_23();
      }

      if (a2 < a4)
      {
        return OUTLINED_FUNCTION_3_23();
      }

      if (a4 != -1)
      {
        if (a4 + 1 <= a2)
        {
          return v5;
        }

        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    if (result)
    {
      if (result - 1 >= a3)
      {
        return a3;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void sub_1D9904164(int a1, id a2)
{
  v3 = v2;
  v4 = [a2 metadata];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 fingerprint];

  if (!v6)
  {
    return;
  }

  v7 = sub_1D9905330(v6);
  if (v8 >> 60 == 15)
  {
    return;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1D992AE84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D992B0B4();
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  sub_1D992B134();

  v17 = sub_1D992B0B4();
  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_1D992B154();

  v20 = *v3;
  if (*(*v3 + 16) && (v21 = sub_1D9889568(), (v22 & 1) != 0) && *(*(v20 + 56) + 24 * v21) < v19)
  {
    (*(v12 + 8))(v14, v11);
    sub_1D9866358(v9, v10);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D989D9E0(v19, v9, v10, v14, isUniquelyReferenced_nonNull_native, v24, v25, v26, v27[0], *v3, v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11]);
    *v3 = v27[1];
    (*(v12 + 8))(v14, v11);
  }
}

void sub_1D9904374(int a1, id a2)
{
  v3 = v2;
  v4 = [a2 metadata];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 fingerprint];

    if (v6)
    {
      v7 = sub_1D9905330(v6);
      if (v8 >> 60 != 15)
      {
        v9 = v7;
        v10 = v8;
        v11 = sub_1D992B0B4();
        if (v11)
        {
          v12 = v11;
          v13 = sub_1D992B154();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v15 = *(v3 + 8);
          sub_1D989DB88(v13, v9, v10, isUniquelyReferenced_nonNull_native);
          sub_1D9866358(v9, v10);
          *(v3 + 8) = v15;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_1D9904468(int a1, id a2)
{
  v3 = v2;
  v81 = *MEMORY[0x1E69E9840];
  v4 = [a2 metadata];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 fingerprint];

  if (!v6)
  {
    return;
  }

  v7 = sub_1D9905330(v6);
  if (v8 >> 60 == 15)
  {
    return;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_1D992B0B4();
  if (!v11)
  {
LABEL_76:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = sub_1D992B154();

  v14 = sub_1D98B0F14(v9, v10, *(v3 + 8));
  v73 = v9;
  if ((v15 & 1) == 0)
  {
    v21 = v14;
    sub_1D98B29B8(v9, v10);
    if (v13 >= v21)
    {
      sub_1D9904E88(v21, v13, &v75);
      v22 = *(v3 + 16);
      if (v80)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v3 + 16);
        sub_1D989DC88();
      }

      else
      {
        v26 = v75;
        v27 = v76;
        if (!*(v22 + 16) || (v28 = v77, v29 = v78, v30 = v79, v31 = sub_1D98897E0(v75, v76), (v32 & 1) == 0))
        {
          if (qword_1ECB480B8 != -1)
          {
            swift_once();
          }

          sub_1D992BD64();
          MEMORY[0x1DA739C30](0xD000000000000028, 0x80000001D993D4B0);
          v41 = sub_1D99053A0(v26, v27);
          MEMORY[0x1DA739C30](v41);

          MEMORY[0x1DA739C30](0x74276E73656F6420, 0xEF2E747369786520);
          sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000062, 0x80000001D993D300, 0xD00000000000001ALL, 0x80000001D993D460);

          sub_1D9866358(v9, v10);
          return;
        }

        v71 = v28;
        *&v72 = v29;
        v33 = (*(v22 + 56) + 16 * v31);
        v34 = *v33;
        v35 = v33[1];
        v36 = sub_1D98897E0(v26, v27);
        if (v37)
        {
          v38 = v36;
          sub_1D987BA38(v34, v35);
          swift_isUniquelyReferenced_nonNull_native();
          v70 = v30;
          v74 = *(v3 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48828, &qword_1D9931B50);
          sub_1D992BE34();
          v39 = (*(v74 + 56) + 16 * v38);
          v40 = v39[1];
          v69 = *v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48830, &qword_1D9931B58);
          sub_1D98AB5CC();
          sub_1D992BE44();
          sub_1D987106C(v69, v40);
          *(v3 + 16) = v74;
        }

        else
        {
          sub_1D987BA38(v34, v35);
        }

        sub_1D987BA38(v34, v35);
        swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v3 + 16);
        sub_1D989DC88();
        *(v3 + 16) = v74;
        swift_isUniquelyReferenced_nonNull_native();
        v74 = *(v3 + 16);
        sub_1D989DC88();
        sub_1D987106C(v34, v35);
      }

      *(v3 + 16) = v74;
      return;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = &v62 - v17;
  sub_1D992AD64();
  v19 = sub_1D992AE84();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
  {
    v13 = sub_1D992AE24();
    v3 = v23;
    (*(*(v19 - 8) + 8))(v18, v19);
    if (qword_1ECB480B8 == -1)
    {
LABEL_13:
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_1D992BD64();

      v75 = 0xD00000000000002CLL;
      v76 = 0x80000001D993D480;
      MEMORY[0x1DA739C30](v13, v3);

      v24 = v75;
      v25 = v76;
      goto LABEL_58;
    }

LABEL_70:
    swift_once();
    goto LABEL_13;
  }

  sub_1D987625C(v18);
  v3 = v10 >> 62;
  v13 = MEMORY[0x1E69E7CC0];
  switch(v10 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_72;
      }

      v20 = HIDWORD(v9) - v9;
LABEL_26:
      if (!v20)
      {
        goto LABEL_55;
      }

      v74 = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v20 & ~(v20 >> 63), 0);
      v70 = BYTE6(v10);
      v71 = v9;
      v68 = HIDWORD(v9);
      if (v3)
      {
        if (v3 == 2)
        {
          v44 = *(v9 + 16);
        }

        else
        {
          v44 = v71;
        }
      }

      else
      {
        v44 = 0;
      }

      if (v20 < 0)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      v13 = v74;
      v69 = v9 >> 32;
      v72 = xmmword_1D992FCB0;
      v66 = v9 >> 16;
      v67 = v9 >> 8;
      v64 = v9 >> 40;
      v65 = v9 >> 24;
      v63 = HIWORD(v9);
      v62 = HIBYTE(v9);
      break;
    case 2uLL:
      v43 = *(v9 + 16);
      v42 = *(v9 + 24);
      v20 = v42 - v43;
      if (!__OFSUB__(v42, v43))
      {
        goto LABEL_26;
      }

      goto LABEL_73;
    case 3uLL:
      goto LABEL_55;
    default:
      v20 = BYTE6(v10);
      goto LABEL_26;
  }

  do
  {
    if (v3 == 1)
    {
      if (v44 < v71 || v44 >= v69)
      {
        goto LABEL_65;
      }

      v47 = sub_1D992ABC4();
      if (!v47)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v9 = v47;
      v48 = sub_1D992ABE4();
      v49 = v44 - v48;
      if (__OFSUB__(v44, v48))
      {
        goto LABEL_67;
      }

      goto LABEL_51;
    }

    if (v3)
    {
      if (v44 < *(v9 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v44 >= *(v9 + 24))
      {
        goto LABEL_66;
      }

      v50 = sub_1D992ABC4();
      if (!v50)
      {
        goto LABEL_75;
      }

      v9 = v50;
      v51 = sub_1D992ABE4();
      v49 = v44 - v51;
      if (__OFSUB__(v44, v51))
      {
        goto LABEL_68;
      }

LABEL_51:
      v45 = *(v9 + v49);
      goto LABEL_52;
    }

    if (v44 >= v70)
    {
      goto LABEL_64;
    }

    LOBYTE(v75) = v9;
    BYTE1(v75) = v67;
    BYTE2(v75) = v66;
    BYTE3(v75) = v65;
    BYTE4(v75) = v68;
    BYTE5(v75) = v64;
    BYTE6(v75) = v63;
    HIBYTE(v75) = v62;
    LOWORD(v76) = v10;
    BYTE2(v76) = BYTE2(v10);
    BYTE3(v76) = BYTE3(v10);
    BYTE4(v76) = BYTE4(v10);
    BYTE5(v76) = BYTE5(v10);
    v45 = *(&v75 + v44);
LABEL_52:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB490B8, &qword_1D9935610);
    v52 = swift_allocObject();
    *(v52 + 16) = v72;
    *(v52 + 56) = MEMORY[0x1E69E7508];
    *(v52 + 64) = MEMORY[0x1E69E7558];
    *(v52 + 32) = v45;
    v53 = sub_1D992B634();
    v55 = v54;
    v74 = v13;
    v57 = *(v13 + 16);
    v56 = *(v13 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1D986C620(v56 > 1, v57 + 1, 1);
      v13 = v74;
    }

    *(v13 + 16) = v57 + 1;
    v58 = v13 + 16 * v57;
    *(v58 + 32) = v53;
    *(v58 + 40) = v55;
    ++v44;
    --v20;
    v9 = v73;
  }

  while (v20);
LABEL_55:
  v75 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v59 = sub_1D992B5E4();
  v61 = v60;

  if (qword_1ECB480B8 != -1)
  {
    swift_once();
  }

  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000003BLL, 0x80000001D993D420);
  MEMORY[0x1DA739C30](v59, v61);

  v24 = v75;
  v25 = v76;
LABEL_58:
  sub_1D98DCEB4(v24, v25, 0xD000000000000062, 0x80000001D993D300, 0xD00000000000001ALL, 0x80000001D993D460);
  sub_1D9866358(v9, v10);
}

void sub_1D9904E88(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25[0] = a1;
  v25[1] = a2;
  v9 = *v4;
  v8 = v4[1];
  v10 = sub_1D9905004(&v23, a1, a2, *v4);
  v11 = v10;
  v12 = v24;
  if (v24)
  {
    if (*(v9 + 16) >= v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        sub_1D99051C8(v10, v10, a1, a2);
        v13 = 0;
        v14 = 0;
        v15 = 0uLL;
        v16 = 0uLL;
LABEL_9:
        *a3 = v15;
        *(a3 + 16) = v16;
        *(a3 + 32) = v13;
        *(a3 + 40) = v14;
        *(a3 + 48) = v12;
        return;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v23;
  v22 = v23;
  v8(&v21, &v19, &v22, v25);
  sub_1D99050FC(v11);
  if (*(*v4 + 16) < v11)
  {
    goto LABEL_11;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v19;
  v14 = v20;
  sub_1D99051C8(v11, v11, v19, v20);
  if (*(*v4 + 16) >= v11)
  {
    v17 = v21;
    sub_1D99051C8(v11, v11, v21, *(&v21 + 1));
    v16 = v17;
    v15 = v18;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1D9905004(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = 0;
  v6 = v4 - 1;
  if (v4 > 1)
  {
    v7 = a4 + 32;
    v8 = v4 - 1;
    do
    {
      v9 = v6 / 2;
      if (v6 < -1 || v9 >= v4)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v11 = *(v7 + 16 * v9);
      if (v11 <= a3 && *(&v11 + 1) >= a2)
      {
        *result = *(v7 + 16 * v9);
        *(result + 16) = 0;
        return v9;
      }

      if (v11 <= a3)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9 - 1;
      }

      if (*(&v11 + 1) < a2)
      {
        v5 = v9 + 1;
      }

      else
      {
        v8 = v13;
      }

      v6 = v5 + v8;
      if (__OFADD__(v5, v8))
      {
        goto LABEL_35;
      }
    }

    while (v5 < v8);
    if (v5 < v4)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  if (v4 != 1)
  {
LABEL_30:
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 1;
    return v5;
  }

LABEL_23:
  if (v5 < v4)
  {
    v14 = *(a4 + 16 * v5 + 32);
    if (v14 <= a3 && *(&v14 + 1) >= a2)
    {
      *result = *(a4 + 16 * v5 + 32);
      *(result + 16) = 0;
      return v5;
    }

    if (*(&v14 + 1) < a2)
    {
      v9 = v5 + 1;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 1;
      return v9;
    }

    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1D99050FC(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D990531C(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1D98BEA3C((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

unint64_t sub_1D9905184()
{
  result = qword_1ECB47910;
  if (!qword_1ECB47910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB47910);
  }

  return result;
}

uint64_t sub_1D99051C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1D98EAE2C(result, 1);

  return sub_1D9905274(v7, a2, 1, a3, a4);
}

char *sub_1D9905274(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = __OFSUB__(v14, a2);
    v16 = v14 - a2;
    if (!v15)
    {
      result = sub_1D98BEA3C((v12 + 16 * a2), v16, &v13[2 * a3]);
      v17 = *(v11 + 16);
      v15 = __OFADD__(v17, v8);
      v18 = v17 + v8;
      if (!v15)
      {
        *(v11 + 16) = v18;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1D9905330(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D992AD84();

  return v3;
}

uint64_t sub_1D99053A0(uint64_t a1, uint64_t a2)
{
  sub_1D992BE24();
  MEMORY[0x1DA739C30](3026478, 0xE300000000000000);
  sub_1D992BE24();
  return 0;
}

uint64_t sub_1D9905438(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9905478(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D99054D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D9905520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1D9905580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D99055BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D99055FC(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9905654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v11 - v5;
  v7 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  OUTLINED_FUNCTION_128();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  OUTLINED_FUNCTION_128();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1D9935818;
  v9[5] = v8;
  sub_1D9906B68(0, 0, v6, &unk_1D9935828, v9);
}

uint64_t sub_1D990575C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 57) = *a2;
  return OUTLINED_FUNCTION_0_3(sub_1D9905780, v2);
}

uint64_t sub_1D9905780()
{
  if ([*(v0 + 16) anyEventType] != 7)
  {
    goto LABEL_5;
  }

  if (qword_1ECB47D40 != -1)
  {
    swift_once();
  }

  if (byte_1ECB496B0 != 1)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_4_26(&qword_1ED8BF428);
    }

    if (*(sub_1D98DCE30() + 24) == 1)
    {
      v8 = sub_1D9905C6C(*(v0 + 57));
      sub_1D986A454(v8, v9, 0xD000000000000067, 0x80000001D993D500, 0xD000000000000010, 0x80000001D993D570);
    }

    v10 = OUTLINED_FUNCTION_13_15();

    return v11(v10);
  }

  else
  {
LABEL_5:
    v1 = *(v0 + 57);
    v2 = *(v0 + 24);
    v3 = v2[17];
    v4 = v2[18];
    __swift_project_boxed_opaque_existential_1(v2 + 14, v3);
    *(v0 + 56) = v1;
    v12 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_2_37(v5);

    return v12(v6, v0 + 56, v3, v4);
  }
}

uint64_t sub_1D99059DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v3 + 40) = v0;

  v6 = *(v3 + 24);
  if (v0)
  {
    v7 = sub_1D9905C5C;
  }

  else
  {
    v7 = sub_1D9905AE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D9905AE4()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_37(v1);

  return sub_1D987BED8(v2);
}

uint64_t sub_1D9905B70()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3(1);
}

uint64_t sub_1D9905C6C(char a1)
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000028, 0x80000001D993D680);
  sub_1D992BE24();
  MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D993A260);
  return 0;
}

uint64_t sub_1D9905D20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D9905D50()
{
  sub_1D9905D20();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D9905D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_3(sub_1D9905D9C, 0);
}

uint64_t sub_1D9905D9C()
{
  OUTLINED_FUNCTION_26_2();

  v1 = sub_1D992BF04();

  if (v1 > 3)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_4_26(&qword_1ED8BF428);
    }

    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_1D992BD64();

    MEMORY[0x1DA739C30](v6, v5);
    MEMORY[0x1DA739C30](0xD000000000000013, 0x80000001D993D4E0);
    sub_1D98DCEB4(0x206E776F6E6B6E55, 0xEF203A6369706F74, 0xD000000000000067, 0x80000001D993D500, 0xD000000000000010, 0x80000001D993D570);

    v7 = OUTLINED_FUNCTION_13_15();

    return v8(v7);
  }

  else
  {
    *(v0 + 64) = v1;
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_2_37(v2);

    return sub_1D990575C(v3, (v0 + 64));
  }
}

uint64_t sub_1D9905F98()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_29();
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D99060C4, 0, 0);
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(v3 & 1);
  }
}

uint64_t sub_1D990616C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1D992B624();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1D9906258;

  return sub_1D9905D7C(v10, v7, v9);
}

uint64_t sub_1D9906258(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_17();
  *v7 = v6;
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v2;
  *v7 = *v2;

  v11 = v5[4];
  if (v3)
  {
    v12 = sub_1D992AC84();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v5[4], a1 & 1, 0);
  }

  _Block_release(v6[4]);
  v13 = v10[1];

  return v13();
}

id DirectUploadTopicShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DirectUploadTopicShim.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DirectUploadTopicShim();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dispatch thunk of DirectUploadTopicShim.append(_:topic:)()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_12(v8);
  *v9 = v10;
  v9[1] = sub_1D9906674;

  return v12(v6, v4, v2);
}

uint64_t sub_1D9906674()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v3 = *v0;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1D9906760()
{
  OUTLINED_FUNCTION_26_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_24(v1);

  return v4(v3);
}

uint64_t sub_1D99067FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D98692C4;

  return v6();
}

uint64_t sub_1D99068E4()
{
  OUTLINED_FUNCTION_26_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_24(v1);

  return v4(v3);
}

uint64_t sub_1D9906980(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D989EB64;

  return v7();
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_128();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1D9906AA4()
{
  OUTLINED_FUNCTION_26_2();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_12(v6);
  *v7 = v8;
  v7[1] = sub_1D98692C4;

  return sub_1D9906980(v2, v3, v4, v5);
}

uint64_t sub_1D9906B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v22 - v10;
  sub_1D988C450(a3, v22 - v10);
  v12 = sub_1D992B874();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D988C380(v11);
  }

  else
  {
    sub_1D992B864();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1D992B814();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1D992B6B4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1D988C380(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D988C380(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1D9906E04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D9906EFC;

  return v6(a1);
}

uint64_t sub_1D9906EFC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D9906FE0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D990707C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_34(v1);

  return v4(v3);
}

uint64_t sub_1D990712C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v10 = a3;
  if (!a2)
  {
    MEMORY[0x1DA739C30](a3, a4);
    MEMORY[0x1DA739C30](95, 0xE100000000000000);
    v12 = *(a5 + 16);
    if (v12)
    {
      v22 = v10;
      v23 = v9;
      v24 = a6;
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v12, 0);
      v13 = (a5 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v17 = *(v25 + 16);
        v16 = *(v25 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_1D986C620(v16 > 1, v17 + 1, 1);
        }

        *(v25 + 16) = v17 + 1;
        v18 = v25 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v13 += 3;
        --v12;
      }

      while (v12);
      a6 = v24;
      v10 = v22;
      v9 = v23;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    v19 = sub_1D992B5E4();
    v21 = v20;

    MEMORY[0x1DA739C30](v19, v21);

    result = 1601725545;
    a2 = 0xE400000000000000;
  }

  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v10;
  *(a7 + 24) = v9;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t sub_1D99072FC()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D986C620(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v16 + 16);
      v7 = *(v16 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1D986C620(v7 > 1, v8 + 1, 1);
      }

      *(v16 + 16) = v8 + 1;
      v9 = v16 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v10 = sub_1D992B5E4();
  v12 = v11;

  if (*(v1 + 40))
  {
    v13 = 0x20455551494E5520;
  }

  else
  {
    v13 = 0;
  }

  if (*(v1 + 40))
  {
    v14 = 0xE800000000000000;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  sub_1D992BD64();

  MEMORY[0x1DA739C30](v13, v14);

  MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D993D6B0);
  MEMORY[0x1DA739C30](*v1, *(v1 + 8));
  MEMORY[0x1DA739C30](542002954, 0xE400000000000000);
  MEMORY[0x1DA739C30](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA739C30](10272, 0xE200000000000000);
  MEMORY[0x1DA739C30](v10, v12);

  MEMORY[0x1DA739C30](15145, 0xE200000000000000);
  return 0x20455441455243;
}

uint64_t sub_1D9907534(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9907574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t static UnifiedMessageStreamHelper.identifier()()
{
  v0 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v0 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v3 = v2 - v1;
  type metadata accessor for PersistentStorage();
  v4 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1D98F97F8();
  v11 = type metadata accessor for DataVault(0);
  v12 = objc_allocWithZone(v11);
  (*(v6 + 16))(v12 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v10, v4);
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v6 + 8))(v10, v4);
  sub_1D98CB418(v3);

  sub_1D98876F0(v3);
  return 0xD000000000000014;
}

uint64_t static UnifiedMessageStreamHelper.ensureDirectoryExists(at:)(uint64_t a1)
{
  type metadata accessor for PersistentStorage();
  result = sub_1D98F8F10(a1);
  if ((result & 1) == 0)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();

    v3 = sub_1D992ACA4();
    MEMORY[0x1DA739C30](v3);

    MEMORY[0x1DA739C30](0xD000000000000023, 0x80000001D993D6D0);
    sub_1D98DCEB4(0x726F746365726944, 0xEA00000000002079, 0xD000000000000079, 0x80000001D993D700, 0xD00000000000001ALL, 0x80000001D993D780);
  }

  return result;
}

uint64_t static UnifiedMessageStreamHelper.fileURL()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  type metadata accessor for PersistentStorage();
  v6 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  sub_1D98F97F8();
  v13 = type metadata accessor for DataVault(0);
  v14 = objc_allocWithZone(v13);
  (*(v8 + 16))(v14 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v12, v6);
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v8 + 8))(v12, v6);
  sub_1D98CB418(v5);

  sub_1D98C601C(a1);
  return sub_1D98876F0(v5);
}

id UnifiedMessageStreamHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UnifiedMessageStreamHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageStreamHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UnifiedMessageStreamHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageStreamHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics11SQLSetValueO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (((v1 >> 2) & 0x1E) != 0)
  {
    return 32 - ((v1 >> 2) & 0x1E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9907D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 33))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 32) >> 2) & 0x1E | (*(a1 + 32) >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9907DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (4 * (a2 ^ 0x1F)) & 0xF8 | ((a2 ^ 0x1F) << 7);
    }
  }

  return result;
}

uint64_t sub_1D9907E08(uint64_t result, unsigned int a2)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
  }

  return result;
}

uint64_t sub_1D9907E58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9907E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9907EE8()
{
  sub_1D98FE2D0();
  if (!v0)
  {
    return 0;
  }

  sub_1D98B6224();
  v2 = v1;

  return v2;
}

uint64_t static MonotonicTimestamp.now(forClock:)(char *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = mach_continuous_time();
  }

  else
  {
    v2 = mach_absolute_time();
  }

  v4 = v1;
  return MonotonicTimestamp.init(cpuTicks:clockType:)(v2, &v4);
}

SiriAnalytics::MonotonicTimestamp::MonotonicClockType_optional __swiftcall MonotonicTimestamp.MonotonicClockType.init(rawValue:)(SiriAnalytics::MonotonicTimestamp::MonotonicClockType_optional rawValue)
{
  if (rawValue.value == SiriAnalytics_MonotonicTimestamp_MonotonicClockType_continuous)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SiriAnalytics_MonotonicTimestamp_MonotonicClockType_suspending)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MonotonicTimestamp.init(bootSessionUUID:nanoSecondsSinceBoot:clockType:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v8);
  MEMORY[0x1EEE9AC00](((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v22 - v10;
  sub_1D9879FF8(a1, &v22 - v10);
  OUTLINED_FUNCTION_2_38(v11);
  if (v12)
  {
    if (qword_1ECB47FB0 != -1)
    {
      OUTLINED_FUNCTION_0_50(&qword_1ECB47FB0);
    }

    __swift_project_value_buffer(v6, qword_1ECB496F0);
    v13 = OUTLINED_FUNCTION_14_15();
    v14(v13);
    sub_1D987625C(a1);
    OUTLINED_FUNCTION_2_38(v11);
    if (!v12)
    {
      sub_1D987625C(v11);
    }
  }

  else
  {
    sub_1D987625C(a1);
    v15 = OUTLINED_FUNCTION_7_21();
    v16(v15);
  }

  v17 = OUTLINED_FUNCTION_20_8();
  v18(v17);
  v19 = type metadata accessor for MonotonicTimestamp(0);
  result = OUTLINED_FUNCTION_8_17(v19);
  *(a3 + v21) = v5;
  return result;
}

void MonotonicInterval.init(seconds:minutes:hours:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, __int16 a4@<W2>)
{
  v4 = 1000000000 * a2;
  if ((a2 & 0x100000000) != 0)
  {
    v4 = 0;
  }

  if ((a3 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

  if (!is_mul_ok(60 * a3, 0x3B9ACA00uLL))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = 60000000000 * a3;
  v6 = __CFADD__(v4, v5);
  v4 += v5;
  if (!v6)
  {
LABEL_7:
    if ((a4 & 0x100) != 0 || !__CFADD__(v4, 3600000000000 * a4))
    {
      OUTLINED_FUNCTION_17_12(a1);
      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

void static MonotonicInterval.+ infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (__CFADD__(*a2, *a3))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_12(a1);
  }
}

uint64_t sub_1D9908208(uint64_t result)
{
  v1 = result;
  if (qword_1ECB47DD0 != -1)
  {
    result = swift_once();
  }

  if (v1 == -1 || qword_1ECB47DC8 == HIDWORD(qword_1ECB47DC8))
  {
    return v1;
  }

  if (!is_mul_ok(v1, qword_1ECB47DC8))
  {
    return -1;
  }

  if (HIDWORD(qword_1ECB47DC8))
  {
    return v1 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
  }

  __break(1u);
  return result;
}

void static MonotonicInterval.- infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (*a2 < *a3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_12(a1);
  }
}

void MonotonicTimestamp.init(nanoSecondsSinceBoot:clockType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = *v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v26);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&a9 - v30, 1, 1, v31);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](*(v32 + 64));
  OUTLINED_FUNCTION_13_16();
  MEMORY[0x1EEE9AC00](v33);
  sub_1D9879FF8(&a9 - v30, &a9 - v30);
  OUTLINED_FUNCTION_2_38(&a9 - v30);
  if (v34)
  {
    if (qword_1ECB47FB0 != -1)
    {
      OUTLINED_FUNCTION_0_50(&qword_1ECB47FB0);
    }

    __swift_project_value_buffer(v31, qword_1ECB496F0);
    v35 = OUTLINED_FUNCTION_14_15();
    v36(v35);
    sub_1D987625C(&a9 - v30);
    OUTLINED_FUNCTION_2_38(&a9 - v30);
    if (!v34)
    {
      sub_1D987625C(&a9 - v30);
    }
  }

  else
  {
    sub_1D987625C(&a9 - v30);
    v37 = OUTLINED_FUNCTION_7_21();
    v38(v37);
  }

  v39 = OUTLINED_FUNCTION_20_8();
  v40(v39);
  v41 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_8_17(v41);
  *(v23 + v42) = v25;
  OUTLINED_FUNCTION_7();
}

BOOL sub_1D9908488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp(0);
  MEMORY[0x1EEE9AC00](*(*(v4 - 8) + 64));
  OUTLINED_FUNCTION_1_42();
  v6 = *(v2 + *(v5 + 24));
  if (v6)
  {
    v7 = mach_continuous_time();
  }

  else
  {
    v7 = mach_absolute_time();
  }

  v9 = v6;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v7, &v9);
  sub_1D98C7A84(v3);
  sub_1D992C0F4();
  return (sub_1D992C0E4() & 1) == 0;
}

uint64_t sub_1D9908618@<X0>(_BYTE *a1@<X8>)
{
  result = MonotonicTimestamp.MonotonicClockType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MonotonicTimestamp(uint64_t a1)
{
  result = qword_1ED8BF4C8;
  if (!qword_1ED8BF4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static MonotonicTimestamp.+ infix(_:_:)()
{
  OUTLINED_FUNCTION_6_2();
  v7 = OUTLINED_FUNCTION_24_9();
  v8 = *(v3 + *(v7 + 20));
  v9 = __CFADD__(v8, v0);
  v10 = v8 + v0;
  if (v9)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_50(&qword_1ECB47FB0);
    goto LABEL_5;
  }

  v11 = v7;
  v28 = v10;
  v29 = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_12_17();
  v14 = OUTLINED_FUNCTION_10_16();
  v15(v14);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v26[2] = v26;
  v27 = *(v3 + *(v11 + 24));
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  OUTLINED_FUNCTION_1_42();
  MEMORY[0x1EEE9AC00](v16);
  v4 = v26 - v0;
  v17 = OUTLINED_FUNCTION_7_21();
  sub_1D9879FF8(v17, v18);
  OUTLINED_FUNCTION_3_24();
  if (!v19)
  {
    sub_1D987625C(v2);
    v22 = OUTLINED_FUNCTION_15_9();
    v23(v22);
    goto LABEL_7;
  }

  if (qword_1ECB47FB0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  __swift_project_value_buffer(v6, qword_1ECB496F0);
  v20 = OUTLINED_FUNCTION_22_11();
  v21(v20);
  sub_1D987625C(v2);
  OUTLINED_FUNCTION_3_24();
  if (!v19)
  {
    sub_1D987625C(v4);
  }

LABEL_7:
  v24 = OUTLINED_FUNCTION_11_20();
  v25(v24);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_7();
}

void static MonotonicTimestamp.- infix(_:_:)()
{
  OUTLINED_FUNCTION_6_2();
  v7 = OUTLINED_FUNCTION_24_9();
  v8 = *(v3 + *(v7 + 20));
  v9 = v8 >= v0;
  v10 = v8 - v0;
  if (!v9)
  {
    __break(1u);
LABEL_9:
    OUTLINED_FUNCTION_0_50(&qword_1ECB47FB0);
    goto LABEL_6;
  }

  v11 = v7;
  v28 = v10;
  v29 = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_12_17();
  v14 = OUTLINED_FUNCTION_10_16();
  v15(v14);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v26[2] = v26;
  v27 = *(v3 + *(v11 + 24));
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  OUTLINED_FUNCTION_1_42();
  MEMORY[0x1EEE9AC00](v16);
  v4 = v26 - v0;
  v17 = OUTLINED_FUNCTION_7_21();
  sub_1D9879FF8(v17, v18);
  OUTLINED_FUNCTION_3_24();
  if (!v19)
  {
    sub_1D987625C(v2);
    v22 = OUTLINED_FUNCTION_15_9();
    v23(v22);
    goto LABEL_8;
  }

  if (qword_1ECB47FB0 != -1)
  {
    goto LABEL_9;
  }

LABEL_6:
  __swift_project_value_buffer(v6, qword_1ECB496F0);
  v20 = OUTLINED_FUNCTION_22_11();
  v21(v20);
  sub_1D987625C(v2);
  OUTLINED_FUNCTION_3_24();
  if (!v19)
  {
    sub_1D987625C(v4);
  }

LABEL_8:
  v24 = OUTLINED_FUNCTION_11_20();
  v25(v24);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_7();
}

double sub_1D9908E50()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0x100000001;
  mach_timebase_info(v1);
  result = *v1;
  qword_1ECB47DC8 = v1[0];
  return result;
}

unint64_t sub_1D9908ED0()
{
  result = qword_1ECB49148;
  if (!qword_1ECB49148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49148);
  }

  return result;
}

unint64_t sub_1D9908F28()
{
  result = qword_1ECB49150;
  if (!qword_1ECB49150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49150);
  }

  return result;
}

uint64_t sub_1D9908FD0(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MonotonicTimestamp.MonotonicClockType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return type metadata accessor for MonotonicTimestamp(0);
}

uint64_t sub_1D99091A0(unsigned int a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_1D99091C4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D99091A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D99091F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v5 + 15));
  v7 = &v24 - v6;
  v8 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&v24 - v6, 1, 1, v8);
  v34 = 0;
  v33 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  MEMORY[0x1EEE9AC00](((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v24 - v10;
  v12 = sub_1D992AE04();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v28 = &v24 - v6;
  v29 = a1;
  v30 = &v34;
  v31 = &v33;
  v32 = v11;
  sub_1D9909A64();
  sub_1D992B964();
  if (v2)
  {
    goto LABEL_8;
  }

  v27 = &v24;
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](*(v26 + 64));
  v14 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (&v24 - v14);
  MEMORY[0x1EEE9AC00](v14);
  sub_1D9866D90(&v24 - v6, &v24 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
  if (__swift_getEnumTagSinglePayload(&v24 - v6, 1, v8) == 1)
  {
    sub_1D986B804(&v24 - v6, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_7:
    v21 = sub_1D992B484();
    sub_1D986904C(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E6999BA8], v21);
    swift_willThrow();
LABEL_8:
    sub_1D986B804(v11, &qword_1ECB48710, &qword_1D9931340);

    return sub_1D986B804(v7, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  v25 = a2;
  v16 = *(v26 + 32);
  v16(v15, &v24 - v6, v8);
  v17 = v33;
  if (!v33)
  {
    (*(v26 + 8))(v15, v8);
    goto LABEL_7;
  }

  v18 = v25;
  v16(v25, v15, v8);
  v19 = v34;
  v20 = type metadata accessor for StagedMessage(0);
  sub_1D9866D90(v11, &v18[v20[7]], &qword_1ECB48710, &qword_1D9931340);
  *&v18[v20[5]] = v19;
  *&v18[v20[6]] = v17;
  sub_1D986B804(v11, &qword_1ECB48710, &qword_1D9931340);
  return sub_1D986B804(v7, &qword_1ECB481D0, &qword_1D992F9F0);
}

void sub_1D990960C(_BYTE *a1@<X0>, uint64_t a2@<X1>, void **a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  switch(*a1)
  {
    case 1:
      sub_1D992B164();
      sub_1D986904C(&qword_1ECB47A18, MEMORY[0x1E69CE6A0], MEMORY[0x1E69CE698]);
      sub_1D992B984();
      if (!v5)
      {
        v19 = *a3;
        *a3 = v20[1];
      }

      break;
    case 2:
      MEMORY[0x1EEE9AC00](a5);
      sub_1D992B974();
      break;
    case 3:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](((*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = v20 - v16;
      sub_1D992B9A4();
      v10 = v17;
      v11 = a4;
      v12 = &qword_1ECB48710;
      v13 = &qword_1D9931340;
      goto LABEL_5;
    default:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v20 - v8;
      sub_1D992B9B4();
      v10 = v9;
      v11 = a2;
      v12 = &qword_1ECB481D0;
      v13 = &qword_1D992F9F0;
LABEL_5:
      sub_1D9909AD4(v10, v11, v12, v13);
      break;
  }
}

void sub_1D9909830(uint64_t a1, void **a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CF568]) init];
  if (v4)
  {
    v5 = v4;
    if ([v4 readFrom_])
    {
      v6 = *a2;
      *a2 = v5;
    }

    else
    {
      v7 = sub_1D992B484();
      sub_1D986904C(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6999BA8], v7);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D9909A64()
{
  result = qword_1ECB47EE8;
  if (!qword_1ECB47EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47EE8);
  }

  return result;
}

uint64_t sub_1D9909AD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_39(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 40))(v4, v5);
  return v4;
}

_BYTE *_s14descr1F5515BB1O6FieldsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D9909C04()
{
  result = qword_1ECB49158;
  if (!qword_1ECB49158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49158);
  }

  return result;
}

id sub_1D9909C68(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    return [a1 removePersistentIdentifiers];
  }

  if (qword_1ECB47AC8 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_1ECB47AC8);
  }

  v3 = sub_1D98DCE30();
  sub_1D98DD190(0xD000000000000083, 0x80000001D993D7D0, 0xD00000000000001BLL, 0x80000001D993D8E0, v3);

  return 0;
}

uint64_t sub_1D9909D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9909D4C, 0, 0);
}

uint64_t sub_1D9909D4C()
{
  if (sub_1D9909C68(*(v0 + 24)))
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41(&qword_1ECB47AC8);
    }

    v1 = *(v0 + 16);
    sub_1D98DCE30();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    sub_1D98DD1DC(0xD000000000000083, 0x80000001D993D7D0, 0xD000000000000026, 0x80000001D993B690, sub_1D990A370, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    v4 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D9909F78, v4, v3);
  }

  else
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41(&qword_1ECB47AC8);
    }

    v5 = *(v0 + 16);
    sub_1D98DCE30();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    sub_1D98DD1DC(0xD000000000000083, 0x80000001D993D7D0, 0xD000000000000026, 0x80000001D993B690, sub_1D990A368, v6);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D9909F78()
{
  sub_1D990A0FC(*(v0 + 32) + 24, 8, 0xA000000000000008);

  return MEMORY[0x1EEE6DFA0](sub_1D9909FF4, 0, 0);
}

uint64_t sub_1D9909FF4()
{
  sub_1D9890810(0xA000000000000008);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D990A058()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000038, 0x80000001D993D860);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0;
}

uint64_t sub_1D990A0FC(uint64_t a1, int a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](*(*(v5 - 8) + 64));
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  v10 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v13[3] = &type metadata for SensitiveConditionTag;
  v13[4] = &protocol witness table for SensitiveConditionTag;
  LODWORD(v13[0]) = a2;
  v13[1] = a3;
  sub_1D98907D8(a3);
  sub_1D98FD694();
  sub_1D987625C(v9);
  sub_1D987625C(v7);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1D990A21C()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD00000000000003CLL, 0x80000001D993D8A0);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0;
}

uint64_t sub_1D990A2C0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D988AED8;

  return sub_1D9909D28(a1, v5, v4);
}

void *sub_1D990A378(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = v2;
  v1[2] = a1;
  return v1;
}

uint64_t sub_1D990A390()
{
  if (*(v0 + 24))
  {
    return 1;
  }

  v1 = v0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for DarwinNotificationObserver();
  swift_allocObject();
  *(v1 + 24) = sub_1D99004B4(0xD000000000000029, 0x80000001D993D970, v2, sub_1D990B06C, v3);

  if (*(v1 + 24))
  {
    return 1;
  }

  if (qword_1ECB47AC8 != -1)
  {
    swift_once();
  }

  sub_1D98DCEB4(0xD000000000000035, 0x80000001D993D9A0, 0xD00000000000007CLL, 0x80000001D993D9E0, 0xD000000000000010, 0x80000001D993DA60);
  return 0;
}

uint64_t sub_1D990A4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D990A700();
  }

  return result;
}

uint64_t sub_1D990A544(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D990A390();
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    swift_beginAccess();

    sub_1D987B990();
    v7 = *(*(v2 + 32) + 16);
    sub_1D987BA20(v7);
    v8 = *(v2 + 32);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = &unk_1D9935F68;
    *(v9 + 40) = v6;
    *(v2 + 32) = v8;
    swift_endAccess();
  }

  return v5 & 1;
}

uint64_t sub_1D990A618(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1D9869144;

  return v5();
}

uint64_t sub_1D990A700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = &v7 - v1;
  v3 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1D98D1E08();

  return sub_1D988C380(v2);
}

uint64_t sub_1D990A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D990A824, 0, 0);
}

uint64_t sub_1D990A824()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D990A910;

    return sub_1D990AA50();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_25();

    return v4();
  }
}

uint64_t sub_1D990A910()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D990AA1C, 0, 0);
}

uint64_t sub_1D990AA1C()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_25();
  return v1();
}

uint64_t sub_1D990AA50()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v0;
  type metadata accessor for UserHistoryDeletionRequestObserver();
  sub_1D98DE8FC();
  v3 = sub_1D992B814();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D990AAD0, v3, v2);
}

uint64_t sub_1D990AAD0()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 32);
  v0[8] = v2;
  v3 = v2[2];
  v0[9] = v3;
  if (v3)
  {
    v0[10] = 0;
    v4 = v2[4];
    v0[11] = v2[5];

    v8 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_0_51(v5);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_1D990AC18()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D990AD50, v5, v4);
}

uint64_t sub_1D990AD50()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[10] + 1;
  if (v1 == v0[9])
  {

    OUTLINED_FUNCTION_25();

    return v2();
  }

  else
  {
    v0[10] = v1;
    v4 = v0[8] + 16 * v1;
    v5 = *(v4 + 32);
    v0[11] = *(v4 + 40);

    v7 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_0_51(v6);

    return v7();
  }
}

uint64_t sub_1D990AE80()
{

  return v0;
}

uint64_t sub_1D990AEB0()
{
  sub_1D990AE80();

  return swift_deallocClassInstance();
}

uint64_t sub_1D990AF08()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D9869144;

  return sub_1D990A804(v3, v4, v5, v6);
}

uint64_t sub_1D990AFB8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D98C985C;

  return sub_1D990A618(v3, v4);
}

BOOL sub_1D990B078(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1D990B128(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1D990B198(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = v4;
  *(v4 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle) = 0;
  type metadata accessor for PersistentStorage();
  v11 = sub_1D98F9900();
  if (v5)
  {
    sub_1D992AD44();
    OUTLINED_FUNCTION_5();
    (*(v12 + 8))(a1);
    type metadata accessor for DbStorage(0);
    swift_deallocPartialClassInstance();
  }

  else if (v11)
  {
    v13 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storagePath;
    sub_1D992AD44();
    OUTLINED_FUNCTION_5();
    (*(v14 + 32))(v4 + v13, a1);
    *(v4 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storageProtectionClass) = a2;
    v15 = v4 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_pageSize;
    *v15 = a3;
    *(v15 + 8) = a4 & 1;
  }

  else
  {
    sub_1D992AD44();
    OUTLINED_FUNCTION_5();
    (*(v16 + 8))(a1);
    type metadata accessor for DbStorage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t sub_1D990B368()
{
  v1 = v0;
  sub_1D992AD34();
  v2 = (*(v0 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storageProtectionClass) << 20) + 1048582;
  v3 = sub_1D992B6B4();

  v4 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  swift_beginAccess();
  v5 = sqlite3_open_v2((v3 + 32), (v1 + v4), v2, 0);
  swift_endAccess();

  if (sub_1D9870308(v5, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x7243724F6E65706FLL, 0xEE00292865746165))
  {
    if ((*(v1 + OBJC_IVAR____TtC13SiriAnalytics9DbStorage_pageSize + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_6_24();
      sub_1D992BD64();

      OUTLINED_FUNCTION_38();
      v25 = v6;
      v7 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v7);

      v8 = sub_1D990B804(0xD000000000000011, v25);

      if ((v8 & 1) == 0)
      {
        if (qword_1ED8BD6D8 != -1)
        {
          OUTLINED_FUNCTION_1_43(&qword_1ED8BD6D8);
        }

        OUTLINED_FUNCTION_6_24();
        sub_1D992BD64();

        OUTLINED_FUNCTION_38();
        v9 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v9);

        OUTLINED_FUNCTION_16_12();
        sub_1D98DCEB4(v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = sub_1D990B804(0xD000000000000017, 0x80000001D993DB90);
  }

  else
  {
    if (qword_1ED8BD6D8 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_1ED8BD6D8);
    }

    OUTLINED_FUNCTION_6_24();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    sub_1D992AD44();
    sub_1D9887904();
    v17 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v17);

    OUTLINED_FUNCTION_16_12();
    sub_1D986A454(v18, v19, v20, v21, v22, v23);

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D990B67C()
{
  v1 = v0;
  if (sub_1D9870178())
  {
    if (qword_1ED8BD6D8 != -1)
    {
      OUTLINED_FUNCTION_1_43(&qword_1ED8BD6D8);
    }

    OUTLINED_FUNCTION_6_24();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v8 = v2;
    sub_1D992AD44();
    sub_1D9887904();
    v3 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v3);

    sub_1D986A454(0xD000000000000014, v8, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x696F706B63656863, 0xEC0000002928746ELL);

    v4 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
    OUTLINED_FUNCTION_9_19();
    swift_beginAccess();
    v5 = sqlite3_wal_checkpoint_v2(*(v1 + v4), 0, 1, 0, 0);
    v6 = sub_1D9870308(v5, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x696F706B63656863, 0xEC0000002928746ELL);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D990B804(uint64_t a1, uint64_t a2)
{
  if (sub_1D9870178())
  {
    OUTLINED_FUNCTION_9_19();
    swift_beginAccess();
    sub_1D992B6B4();
    OUTLINED_FUNCTION_9_19();
    v6 = sqlite3_exec(v2, v3, v4, v5, 0);

    v7 = sub_1D9870308(v6, 0xD00000000000005CLL, 0x80000001D993DAE0, 0x2865747563657865, 0xEB00000000293A5FLL);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *sub_1D990B8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = *MEMORY[0x1E69E9840];
  if ((sub_1D9870178() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_1D98701CC(a1, a2, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sqlite3_column_count(v6);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (v8 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  v10 = 0;
  v89 = MEMORY[0x1E69E7CC0];
  v85 = v7;
  while (v9 != v10)
  {
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_62;
    }

    if (!sqlite3_column_name(v7, v10))
    {
      goto LABEL_64;
    }

    v11 = sub_1D992B6F4();
    v13 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D986FB38();
      v89 = v17;
    }

    v15 = v89[2];
    v14 = v89[3];
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_23_11(v14);
      sub_1D986FB38();
      v89 = v18;
    }

    v89[2] = v15 + 1;
    v16 = &v89[2 * v15];
    v16[4] = v11;
    v16[5] = v13;
    ++v10;
    v7 = v85;
  }

  if (sqlite3_step(v7) != 100)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v88 = v9;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v83 = v19;
    v21 = 0;
    v22 = v89 + 5;
    v23 = MEMORY[0x1E69E7CC8];
    do
    {
      if (v21 == 0x7FFFFFFF)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v24 = OUTLINED_FUNCTION_14_16();
      v26 = 0.0;
      v27 = 0;
      v28 = 0;
      v29 = 4;
      switch(sqlite3_column_type(v24, v25))
      {
        case 1:
          v30 = OUTLINED_FUNCTION_14_16();
          v26 = COERCE_DOUBLE(sqlite3_column_int64(v30, v31));
          v27 = 0;
          v28 = 0;
          v29 = 1;
          break;
        case 2:
          v41 = OUTLINED_FUNCTION_14_16();
          v27 = 0;
          v28 = 0;
          v26 = sqlite3_column_double(v41, v42);
          v29 = 2;
          break;
        case 3:
          v43 = OUTLINED_FUNCTION_14_16();
          if (!sqlite3_column_text(v43, v44))
          {
            goto LABEL_30;
          }

          v26 = COERCE_DOUBLE(sub_1D992B704());
          v27 = v45;
          v28 = 0;
          v29 = 0;
          break;
        case 4:
          v32 = OUTLINED_FUNCTION_14_16();
          v34 = sqlite3_column_blob(v32, v33);
          if (!v34)
          {
            goto LABEL_30;
          }

          v35 = v34;
          v36 = OUTLINED_FUNCTION_14_16();
          v38 = sqlite3_column_bytes(v36, v37);
          if (v38)
          {
            v39 = v38;
            if (v38 < 15)
            {
              memset(__dst, 0, sizeof(__dst));
              v91 = v38;
              memcpy(__dst, v35, v38);
              v28 = 0;
              v26 = *__dst;
              v27 = v84 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v91 << 16)) << 32);
              v29 = 3;
              v84 = v27;
            }

            else
            {
              sub_1D992ABF4();
              swift_allocObject();
              if (v39 == 0x7FFFFFFF)
              {
                v40 = sub_1D992ABB4();
                sub_1D992AD54();
                v26 = COERCE_DOUBLE(swift_allocObject());
                v28 = 0;
                *(*&v26 + 16) = xmmword_1D9935F70;
                v27 = v40 | 0x8000000000000000;
              }

              else
              {
                v28 = 0;
                *&v26 = v39 << 32;
                v27 = sub_1D992ABB4() | 0x4000000000000000;
              }

              v29 = 3;
            }
          }

          else
          {
            v26 = 0.0;
            v28 = 0;
            v29 = 3;
            v27 = 0xC000000000000000;
          }

          break;
        case 5:
          break;
        default:
LABEL_30:
          v26 = 0.0;
          v27 = 0;
          v29 = -1;
          v28 = 1;
          break;
      }

      if (v89[2] <= v21)
      {
        goto LABEL_59;
      }

      v47 = *(v22 - 1);
      v46 = *v22;

      if ((v28 & 1) == 0)
      {
        v86 = v22;
        v53 = v29;
        v54 = *&v26;
        v55 = v27;
        v87 = v53;
        sub_1D986F8C0(*&v26, v27, v53);
        swift_isUniquelyReferenced_nonNull_native();
        *__dst = v23;
        v56 = OUTLINED_FUNCTION_17_13();
        v58 = sub_1D9889410(v56, v57);
        if (__OFADD__(v23[2], (v59 & 1) == 0))
        {
          goto LABEL_60;
        }

        v60 = v58;
        v61 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49168, &qword_1D9935FC0);
        if (sub_1D992BE34())
        {
          v62 = OUTLINED_FUNCTION_17_13();
          v64 = sub_1D9889410(v62, v63);
          v7 = v85;
          if ((v61 & 1) != (v65 & 1))
          {
            result = sub_1D992BFC4();
            __break(1u);
            return result;
          }

          v60 = v64;
          if ((v61 & 1) == 0)
          {
LABEL_39:
            v23 = *__dst;
            *(*__dst + 8 * (v60 >> 6) + 64) |= 1 << v60;
            v66 = (v23[6] + 16 * v60);
            *v66 = v47;
            v66[1] = v46;
            v67 = v23[7] + 24 * v60;
            *v67 = v54;
            *(v67 + 8) = v55;
            *(v67 + 16) = v87;
            sub_1D986DC38(v54, v55, v87);
            v68 = v23[2];
            v69 = __OFADD__(v68, 1);
            v70 = v68 + 1;
            if (v69)
            {
              goto LABEL_61;
            }

            v23[2] = v70;
            goto LABEL_43;
          }
        }

        else
        {
          v7 = v85;
          if ((v61 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v23 = *__dst;
        v71 = *(*__dst + 56) + 24 * v60;
        v72 = *v71;
        v73 = *(v71 + 8);
        *v71 = v54;
        *(v71 + 8) = v55;
        v74 = *(v71 + 16);
        *(v71 + 16) = v87;
        sub_1D986C908(v72, v73, v74);
        sub_1D986DC38(v54, v55, v87);
LABEL_43:
        v22 = v86;
        goto LABEL_44;
      }

      v48 = OUTLINED_FUNCTION_17_13();
      v50 = sub_1D9889410(v48, v49);
      v52 = v51;

      if (v52)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *__dst = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49168, &qword_1D9935FC0);
        sub_1D992BE34();
        v23 = *__dst;

        sub_1D986C908(*(v23[7] + 24 * v50), *(v23[7] + 24 * v50 + 8), *(v23[7] + 24 * v50 + 16));
        sub_1D992BE44();
      }

LABEL_44:
      ++v21;
      v22 += 2;
    }

    while (v88 != v21);
    v19 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D98BE484(0, v83[2] + 1, 1, v83);
      v19 = v78;
    }

    v77 = v19[2];
    v76 = v19[3];
    if (v77 >= v76 >> 1)
    {
      v79 = OUTLINED_FUNCTION_23_11(v76);
      sub_1D98BE484(v79, v80, v81, v19);
      v19 = v82;
    }

    v19[2] = v77 + 1;
    v19[v77 + 4] = v23;
  }

  while (sqlite3_step(v7) == 100);
LABEL_57:
  sqlite3_finalize(v7);

  return v19;
}

sqlite3 *sub_1D990BF54()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_handle;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = sqlite3_close_v2(result);
    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t sub_1D990BFA4()
{
  sub_1D990BF54();
  v1 = OBJC_IVAR____TtC13SiriAnalytics9DbStorage_storagePath;
  sub_1D992AD44();
  OUTLINED_FUNCTION_5();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DbStorage(uint64_t a1)
{
  result = qword_1ED8BD6C0;
  if (!qword_1ED8BD6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D990C090(uint64_t a1)
{
  result = sub_1D992AD44();
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

uint64_t sub_1D990C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v8 = objc_autoreleasePoolPush();
  sub_1D987F16C();
  objc_autoreleasePoolPop(OUTLINED_FUNCTION_20_4());
  __swift_destroy_boxed_opaque_existential_1(v10);
  return a2;
}

void *sub_1D990C1E0()
{
  OUTLINED_FUNCTION_12_18();
  v3 = v2;
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  v6 = OUTLINED_FUNCTION_11_21(v5, v15);
  v7(v6);
  v8 = OUTLINED_FUNCTION_18_12();
  v10 = v9(v8);
  v13 = sub_1D990B8D4(v10, v11, v12);

  (*(v3 + 8))(v1, v0);
  return v13;
}

void OUTLINED_FUNCTION_13_17()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t sub_1D990C31C()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v63 = v3;
  if (v3)
  {
    v66[0] = MEMORY[0x1E69E7CC0];
    sub_1D986C620(0, v3, 0);
    v4 = v66[0];
    v5 = (v2 + 40);
    v6 = v3;
    do
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v66[0] = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1D986C620(v9 > 1, v10 + 1, 1);
        v4 = v66[0];
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 8;
      --v6;
    }

    while (v6);
    v3 = v63;
  }

  v66[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v61 = OUTLINED_FUNCTION_1_44();
  v13 = v12;

  v14 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v59 = v13;
    v60 = v1;
    v67 = MEMORY[0x1E69E7CC0];
    sub_1D986C620(0, v3, 0);
    v15 = 0;
    v16 = v14;
    v14 = v67;
    v17 = v2 + 32;
    v62 = v2 + 32;
    do
    {
      v18 = v17 + (v15 << 6);
      v19 = *(v18 + 56);
      if (v19 <= 0xF7)
      {
        v21 = *(v18 + 24);
        v20 = *(v18 + 32);
        v23 = *(v18 + 40);
        v22 = *(v18 + 48);

        v24 = OUTLINED_FUNCTION_0_53();
        sub_1D990CAC0(v24, v25, v26, v22, v19);
        v27 = OUTLINED_FUNCTION_0_53();
        sub_1D990CAC0(v27, v28, v29, v22, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D986CB30();
          v16 = v49;
        }

        v30 = *(v16 + 16);
        if (v30 >= *(v16 + 24) >> 1)
        {
          sub_1D986CB30();
          v16 = v50;
        }

        *(v16 + 16) = v30 + 1;
        v31 = v16 + 40 * v30;
        *(v31 + 32) = v21;
        *(v31 + 40) = v20;
        *(v31 + 48) = v23;
        *(v31 + 56) = v22;
        *(v31 + 64) = v19;
        if ((v19 & 0x80) != 0)
        {

          v39 = OUTLINED_FUNCTION_0_53();
          sub_1D990CAD4(v39, v40, v41, v22, v19);
          v20 = 0xE100000000000000;
          v21 = 63;
        }

        else
        {
          v64 = v22;
          v65 = v16;

          v32 = 4;
          v33 = &unk_1F5518210;
          while (--v32)
          {
            v34 = v33 + 16;

            v35 = sub_1D992B724();

            v33 = v34;
            if (v35)
            {

              v36 = OUTLINED_FUNCTION_0_53();
              sub_1D990CAD4(v36, v37, v38, v64, v19);
              goto LABEL_22;
            }
          }

          v66[0] = 64;
          v66[1] = 0xE100000000000000;
          MEMORY[0x1DA739C30](v21, v20);

          v42 = OUTLINED_FUNCTION_0_53();
          sub_1D990CAD4(v42, v43, v44, v64, v19);
          v21 = 64;
          v20 = 0xE100000000000000;
LABEL_22:
          v16 = v65;
        }

        v17 = v62;
        v3 = v63;
      }

      else
      {
        v20 = 0xE400000000000000;
        v21 = 1280070990;
      }

      v67 = v14;
      v46 = *(v14 + 16);
      v45 = *(v14 + 24);
      if (v46 >= v45 >> 1)
      {
        v48 = v17;
        sub_1D986C620(v45 > 1, v46 + 1, 1);
        v17 = v48;
        v14 = v67;
      }

      ++v15;
      *(v14 + 16) = v46 + 1;
      v47 = v14 + 16 * v46;
      *(v47 + 32) = v21;
      *(v47 + 40) = v20;
    }

    while (v15 != v3);
    v13 = v59;
    v1 = v60;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v66[0] = v14;
  v51 = OUTLINED_FUNCTION_1_44();
  v53 = v52;

  v54 = v1[3];
  if (v54)
  {
    v55 = sub_1D990C7DC(v54, v1[4]);
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0xE000000000000000;
  }

  sub_1D992BD64();

  strcpy(v66, "INSERT INTO ");
  BYTE5(v66[1]) = 0;
  HIWORD(v66[1]) = -5120;
  MEMORY[0x1DA739C30](*v1, v1[1]);
  MEMORY[0x1DA739C30](10250, 0xE200000000000000);
  MEMORY[0x1DA739C30](v61, v13);

  MEMORY[0x1DA739C30](0x5345554C41560A29, 0xEA0000000000280ALL);
  MEMORY[0x1DA739C30](v51, v53);

  MEMORY[0x1DA739C30](0x202020200A29, 0xE600000000000000);
  MEMORY[0x1DA739C30](v55, v57);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  if (!*(v16 + 16))
  {
  }

  return v66[0];
}

uint64_t sub_1D990C7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  v27[0] = MEMORY[0x1E69E7CC0];
  sub_1D986C620(0, v2, 0);
  v6 = v27[0];
  v7 = (a1 + 40);
  do
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v27[0] = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);

    if (v11 >= v10 >> 1)
    {
      sub_1D986C620(v10 > 1, v11 + 1, 1);
      v6 = v27[0];
    }

    *(v6 + 16) = v11 + 1;
    v12 = v6 + 16 * v11;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
    v7 += 3;
    --v2;
  }

  while (v2);
  v27[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
  sub_1D986FD2C();
  v25 = sub_1D992B5E4();
  v26 = v14;

  v28 = MEMORY[0x1E69E7CC0];
  sub_1D986C620(0, v4, 0);
  v15 = v28;
  v16 = (a2 + 40);
  do
  {
    v18 = *(v16 - 1);
    v17 = *v16;

    sub_1D992BD64();

    v27[0] = v18;
    v27[1] = v17;
    MEMORY[0x1DA739C30](0x756C637865203D20, 0xEC0000002E646564);
    MEMORY[0x1DA739C30](v18, v17);

    v28 = v15;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D986C620(v19 > 1, v20 + 1, 1);
      v15 = v28;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
    v16 += 3;
    --v4;
  }

  while (v4);
  v22 = sub_1D992B5E4();
  v24 = v23;

  sub_1D992BD64();

  strcpy(v27, "ON CONFLICT(");
  MEMORY[0x1DA739C30](v25, v26);

  MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D993DC30);
  MEMORY[0x1DA739C30](v22, v24);

  return v27[0];
}

uint64_t sub_1D990CAC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 <= 0xF7u)
  {
    return sub_1D9870EF8(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D990CAD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 <= 0xF7u)
  {
    return sub_1D9870F58(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D990CAFC()
{
  v1 = sub_1D990DA00();
  v0[3] = v1;
  v2 = sub_1D990DC04();
  v0[4] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x1E69CF458]) init];
  [v2 setStartedOrChanged_];

  v4 = [v2 startedOrChanged];
  if (v4)
  {
    v5 = v4;
    v6 = v0[2];
    v7 = type metadata accessor for PreprocessorTelemetry(0);
    [v5 setReason_];
  }

  [v1 setPreprocessorExecutionContext_];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D990CC48;
  v9 = OUTLINED_FUNCTION_19();

  return sub_1D990DDE8(v9);
}

uint64_t sub_1D990CC48()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D990CD2C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1D990CD88(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1D990CD9C()
{
  v31 = sub_1D990DA00();
  v0[13] = v31;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CF460]) init];
  v0[14] = v1;
  if (!v1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v2 = v1;
  v4 = v0[11];
  v3 = v0[12];
  sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
  v5 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v3, v5);
  v9 = sub_1D98B5B94(v8);

  v32 = v2;
  OUTLINED_FUNCTION_155(v10, sel_setContextId_);

  v11 = -1;
  v12 = -1 << *(v4 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v4 + 64);
  v14 = (63 - v12) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_9:
      v17 = __clz(__rbit64(v13)) | (v16 << 6);
      v18 = (*(v4 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(*(v4 + 56) + 8 * v17);
      v22 = objc_allocWithZone(MEMORY[0x1E69CF410]);

      v23 = v21;
      v24 = [v22 init];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v13 &= v13 - 1;
      sub_1D990E6F4(v20, v19, v24);

      v26 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount;
      swift_beginAccess();
      [v25 setMessageCount_];
      v27 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount;
      swift_beginAccess();
      [v25 setMissingTimestampCount_];
      v28 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
      swift_beginAccess();
      [v25 setResult_];
      [v32 addOrchestratorStatistics_];

      v15 = v16;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  while (1)
  {
LABEL_6:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v4 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  [v31 setOrchestratorResultsStatsReported_];
  v29 = swift_task_alloc();
  v0[15] = v29;
  *v29 = v0;
  v29[1] = sub_1D990D0FC;
  v30 = OUTLINED_FUNCTION_19();

  sub_1D990DDE8(v30);
}

uint64_t sub_1D990D0FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D990D1E0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1D990D250()
{
  v1 = v0[2];
  v2 = sub_1D990DA00();
  v0[3] = v2;
  v3 = sub_1D990DC04();
  v0[4] = v3;
  v4 = sub_1D990DD2C();
  v0[5] = v4;
  v5 = *(v1 + *(type metadata accessor for PreprocessorTelemetry(0) + 40));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 24 * v6 + 8);
    if (v7 == 4)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69CF440]) init];
      OUTLINED_FUNCTION_155(v8, sel_setEnded_);

      v9 = [v3 ended];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 5;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69CF448]) init];
  OUTLINED_FUNCTION_155(v10, sel_setFailed_);

  v11 = [v3 failed];
  if (v11)
  {
    v12 = v11;
    if (v7 == 5 || (v13 = sub_1D987A4C0(v7), (v13 & 0x100000000) != 0))
    {
      v13 = 0;
    }

    [v12 setFailedAtStep_];
  }

  v9 = [v3 failed];
LABEL_11:
  v14 = v9;
  if (v14)
  {
    v15 = v14;
    [v14 setPreprocessorExecutionMetrics_];
  }

  [v2 setPreprocessorExecutionContext_];
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1D990D44C;
  v17 = OUTLINED_FUNCTION_19();

  return sub_1D990DDE8(v17);
}

uint64_t sub_1D990D44C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D990D530()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_1D990D594(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

id sub_1D990D5A8()
{
  v1 = sub_1D990DA00();
  v0[4] = v1;
  result = [objc_allocWithZone(MEMORY[0x1E69CF468]) init];
  v0[5] = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  result = [objc_allocWithZone(MEMORY[0x1E69CF478]) init];
  v0[6] = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = v0[2];
  sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
  v6 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v5, v6);
  v10 = sub_1D98B5B94(v9);

  [v4 setClockIdentifier_];

  sub_1D9881EB8();
  v12 = sub_1D98B0EC0(v5, v11);
  LOBYTE(v9) = v13;

  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  [v4 setMessageCount_];
  *(swift_task_alloc() + 16) = v5;
  sub_1D98827BC();
  v16 = v15;

  v17 = sub_1D990E35C(v16);

  *(swift_task_alloc() + 16) = v5;
  sub_1D98827BC();
  v19 = v18;

  v20 = sub_1D990E35C(v19);

  sub_1D98EC180(v17, v4, &qword_1ECB47918, 0x1E69CF400, &selRef_setPublishedEventStatistics_);
  sub_1D98EC180(v20, v4, &qword_1ECB47918, 0x1E69CF400, &selRef_setRedactedEventStatistics_);
  [v3 setOffDeviceClockStatistics_];
  [v1 setPreprocessorSessionEndStatsReported_];
  v21 = swift_task_alloc();
  v0[7] = v21;
  *v21 = v0;
  v21[1] = sub_1D990D8B8;
  v22 = OUTLINED_FUNCTION_19();

  return sub_1D990DDE8(v22);
}

uint64_t sub_1D990D8B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D990D99C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_25();

  return v3();
}

id sub_1D990DA00()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF420]) init];
  if (!result)
  {
    goto LABEL_13;
  }

  v1 = result;
  v2 = [objc_allocWithZone(MEMORY[0x1E69CF430]) init];
  [v1 setEventMetadata_];

  v3 = [v1 eventMetadata];
  if (v3)
  {
    v4 = v3;
    sub_1D986E35C(0, &qword_1ECB47938, 0x1E69CF428);
    v5 = static PFAPFADeviceDimensions.current()();
    OUTLINED_FUNCTION_155(v5, sel_setDeviceDimensions_);
  }

  v6 = [v1 eventMetadata];
  if (!v6)
  {
    return v1;
  }

  v7 = v6;
  v8 = sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992ADE4();
  sub_1D992ADC4();
  v15 = v14;
  result = (*(v10 + 8))(v13, v8);
  v16 = v15 * 1000.0;
  if (COERCE__INT64(fabs(v15 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v16 > -9.22337204e18)
  {
    if (v16 < 9.22337204e18)
    {
      [v7 setEventTimestampInMsSince1970_];

      return v1;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1D990DC04()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF438]) init];
  if (result)
  {
    v2 = result;
    sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](*(v3 + 64));
    v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v5, v0);
    v7 = sub_1D98B5B94(v5);
    [v2 setContextId_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D990DDE8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D990DDFC()
{
  v1 = [*(v0 + 40) wrapAsAnyEvent];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = (v2 + *(type metadata accessor for PreprocessorTelemetry(0) + 28));
    v30 = (*v3 + **v3);
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_1D990E0B4;
    v5 = OUTLINED_FUNCTION_19();

    return v30(v5);
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    OUTLINED_FUNCTION_10_18();
    sub_1D98DCEB4(v7, v8, v9, v10, v11, v12);
    sub_1D990E7C4();
    v13 = swift_allocError();
    swift_willThrow();
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    v14 = OUTLINED_FUNCTION_11_22();
    OUTLINED_FUNCTION_8_0(v14, v15, v16, v17, v18, v19, v20, v21, v29, v31, v32);
    MEMORY[0x1DA739C30](0xD00000000000001ALL, 0x80000001D993DD00);
    *(v0 + 32) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
    sub_1D992BE24();
    OUTLINED_FUNCTION_10_18();
    sub_1D98DCEB4(v22, v23, v24, v25, v26, v27);

    OUTLINED_FUNCTION_25();

    return v28();
  }
}

uint64_t sub_1D990E0B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_1D990E210;
  }

  else
  {
    v5 = sub_1D990E1B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D990E1B8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_1D990E210()
{
  v2 = *(v1 + 72);
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  v3 = OUTLINED_FUNCTION_11_22();
  OUTLINED_FUNCTION_8_0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);
  MEMORY[0x1DA739C30](0xD00000000000001ALL, 0x80000001D993DD00);
  *(v1 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(*v0, *(v1 + 24), 0xD000000000000077, 0x80000001D993DC80, 0x293A5F2874696D65, 0xE800000000000000);

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_1D990E35C(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v8 = &off_1E8588000;
  v37 = v1;
  v38 = v5;
  if (v4)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v4)) | (v6 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = *(*(a1 + 56) + 8 * v10);
      if (v7[2] && (v15 = sub_1D988B5F0(), (v16 & 1) != 0))
      {
        v17 = *(v7[7] + 8 * v15);
      }

      else
      {
        v17 = [objc_allocWithZone(MEMORY[0x1E69CF400]) init];
        if (!v17)
        {
          goto LABEL_41;
        }
      }

      [v17 setAnyEventType_];
      v18 = [v17 messageCount];
      if (__CFADD__(v18, v14))
      {
        break;
      }

      [v17 v8[84]];
      v19 = sub_1D990E754(v17);
      v20 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v20 = v19;
      }

      v40 = v20;
      v21 = [objc_allocWithZone(MEMORY[0x1E69CF408]) init];
      if (!v21)
      {
        goto LABEL_40;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v13))
      {
        goto LABEL_37;
      }

      v22 = v21;
      [v21 setOrdinal_];
      [v22 v8[84]];
      v23 = v22;
      MEMORY[0x1DA739CE0]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D992B7D4();
      }

      sub_1D992B7F4();
      sub_1D98EC180(v40, v17, &qword_1ECB47968, 0x1E69CF408, &selRef_setEventStatistics_);
      v24 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_1D988B5F0();
      if (__OFADD__(v7[2], (v26 & 1) == 0))
      {
        goto LABEL_38;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49178, &qword_1D9936008);
      if (sub_1D992BE34())
      {
        v29 = sub_1D988B5F0();
        v8 = &off_1E8588000;
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_42;
        }

        v27 = v29;
      }

      else
      {
        v8 = &off_1E8588000;
      }

      if (v28)
      {
        v31 = v7[7];
        v32 = *(v31 + 8 * v27);
        *(v31 + 8 * v27) = v24;

        v23 = v24;
        v24 = v32;
      }

      else
      {
        v7[(v27 >> 6) + 8] |= 1 << v27;
        *(v7[6] + 4 * v27) = v12;
        *(v7[7] + 8 * v27) = v24;
        v33 = v7[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_39;
        }

        v7[2] = v35;
      }

      v4 &= v4 - 1;

      v1 = v37;
      v5 = v38;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
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
    type metadata accessor for SISchemaAnyEventType(0);
    result = sub_1D992BFC4();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_4:
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v5)
      {
        break;
      }

      v4 = *(v1 + 8 * v9);
      ++v6;
      if (v4)
      {
        v6 = v9;
        goto LABEL_8;
      }
    }

    return sub_1D98D4654(v7);
  }

  return result;
}

void sub_1D990E6F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D992B614();
  [a3 setBundleId_];
}

uint64_t sub_1D990E754(void *a1)
{
  v1 = [a1 eventStatistics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D986E35C(0, &qword_1ECB47968, 0x1E69CF408);
  v3 = sub_1D992B7B4();

  return v3;
}

unint64_t sub_1D990E7C4()
{
  result = qword_1ECB49170;
  if (!qword_1ECB49170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PreprocessorTelemetryError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D990E8C8()
{
  result = qword_1ECB49180;
  if (!qword_1ECB49180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49180);
  }

  return result;
}

uint64_t sub_1D990E940(uint64_t a1)
{
  result = 0x7078456B636F6C63;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x61727473746F6F62;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x75526C61756E616DLL;
      break;
    default:
      result = sub_1D992BFA4();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1D990EA18(unint64_t a1)
{
  if (a1 < 4)
  {
    return dword_1D992FA40[a1];
  }

  result = sub_1D992BFA4();
  __break(1u);
  return result;
}

unint64_t ProcessingReason.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D990EA7C()
{
  result = qword_1ECB49188;
  if (!qword_1ECB49188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49188);
  }

  return result;
}

unint64_t sub_1D990EAE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ProcessingReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ComponentId.init(identifierType:uuid:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ComponentId(0) + 20);
  sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 32);

  return v7(&a3[v5], a2);
}

uint64_t static TagPredicate.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_4();
  v3 = type metadata accessor for MessageGroupIdentifier(v2);
  OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_23_1();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = *v1;
  v12 = *v0;
  switch(v11 >> 61)
  {
    case 1uLL:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
      v25 = swift_projectBox();
      if (v12 >> 61 != 1)
      {
        goto LABEL_22;
      }

      v26 = v25;
      v27 = *(v24 + 48);
      v28 = *(v25 + v27);
      v29 = swift_projectBox();
      v30 = *(v29 + v27);
      sub_1D988EE2C(v26, v10);
      sub_1D988EE2C(v29, v7);
      OUTLINED_FUNCTION_3_26();
      LOBYTE(v26) = static MessageGroupIdentifier.== infix(_:_:)(v10, v7);
      sub_1D990F474(v7, type metadata accessor for MessageGroupIdentifier);
      sub_1D990F474(v10, type metadata accessor for MessageGroupIdentifier);
      OUTLINED_FUNCTION_4_28();
      if ((v26 & 1) == 0)
      {
        goto LABEL_23;
      }

      v21 = v28 ^ v30 ^ 1;
      return v21 & 1;
    case 2uLL:
      if (v12 >> 61 == 2)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    case 3uLL:
      if (v12 >> 61 != 3)
      {
        goto LABEL_22;
      }

LABEL_11:
      v22 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_3_26();

      v21 = sub_1D990F358(v22, v23);

      goto LABEL_12;
    case 4uLL:
      if (v12 >> 61 != 4)
      {
        goto LABEL_22;
      }

      v20 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36[0] = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36[1] = v20;
      OUTLINED_FUNCTION_3_26();
      v21 = static TagPredicate.== infix(_:_:)();
LABEL_12:
      OUTLINED_FUNCTION_4_28();
      return v21 & 1;
    case 5uLL:
      if (v11 == 0xA000000000000000)
      {
        if (v12 == 0xA000000000000000)
        {
          sub_1D9890810(0xA000000000000000);
          v31 = 0xA000000000000000;
LABEL_21:
          sub_1D9890810(v31);
          goto LABEL_40;
        }
      }

      else if (v12 == 0xA000000000000008)
      {
        sub_1D9890810(0xA000000000000008);
        v31 = 0xA000000000000008;
        goto LABEL_21;
      }

LABEL_22:
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_4_28();
      goto LABEL_23;
    default:
      if (v12 >> 61)
      {
        goto LABEL_22;
      }

      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      v18 = *(v12 + 32);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_4_28();
      if (!v15)
      {
        if (v18)
        {
          v33 = 0;
        }

        else
        {
          v33 = v13 == v16;
        }

        if (!v33 || v14 != v17)
        {
          goto LABEL_23;
        }

LABEL_40:
        v21 = 1;
        return v21 & 1;
      }

      if (v15 == 1)
      {
        v19 = v18 == 1;
      }

      else
      {
        v19 = v18 == 2;
      }

      if (v19 && v13 == v16)
      {
        goto LABEL_40;
      }

LABEL_23:
      v21 = 0;
      return v21 & 1;
  }
}

uint64_t sub_1D990EE94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ComponentId(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v22 - v9;
  v11 = type metadata accessor for MessageGroupIdentifier(0);
  OUTLINED_FUNCTION_9(v11);
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v13);
  if (*v1 >> 61 != 1)
  {
    goto LABEL_5;
  }

  v14 = swift_projectBox();
  sub_1D990F81C(v14, v10);
  sub_1D990F88C();
  sub_1D990F88C();
  sub_1D990F88C();
  if (*v6 != 1)
  {
    sub_1D990F474(v6, type metadata accessor for ComponentId);
LABEL_5:
    v20 = sub_1D992AE84();
    v18 = a1;
    v19 = 1;
    return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  }

  v15 = *(v3 + 20);
  v16 = sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  (*(v17 + 32))(a1, &v6[v15], v16);
  v18 = a1;
  v19 = 0;
  v20 = v16;
  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

uint64_t TagPredicate.init(requestIdentifier:clustered:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = *(v6 + 48);
  *v8 = 1;
  v11 = *(type metadata accessor for ComponentId(0) + 20);
  sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  result = (*(v12 + 32))(&v9[v11], a1);
  v9[v10] = a2;
  *a3 = v7 | 0x2000000000000000;
  return result;
}

uint64_t static MessageGroupIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ComponentId(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_23_1();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v19 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49190, &qword_1D9936218);
  OUTLINED_FUNCTION_9(v11);
  v13 = MEMORY[0x1EEE9AC00](((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = &v19 - v14;
  v16 = *(v13 + 14);
  sub_1D988EE2C(a1, &v19 - v14);
  sub_1D988EE2C(a2, &v15[v16]);
  sub_1D990F88C();
  sub_1D990F88C();
  if (*v10 == *v7)
  {
    v17 = sub_1D992AE54();
    sub_1D990F474(v7, type metadata accessor for ComponentId);
    sub_1D990F474(v10, type metadata accessor for ComponentId);
    if (v17)
    {
      return 1;
    }
  }

  else
  {
    sub_1D990F474(v7, type metadata accessor for ComponentId);
    sub_1D990F474(v10, type metadata accessor for ComponentId);
  }

  return 0;
}

uint64_t sub_1D990F358(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_1D98907D8(v5);
        sub_1D98907D8(v7);
        v8 = static TagPredicate.== infix(_:_:)();
        sub_1D9890810(v7);
        sub_1D9890810(v5);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t static ComponentId.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_4();
  type metadata accessor for ComponentId(v2);
  return sub_1D992AE54() & 1;
}

uint64_t sub_1D990F474(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D990F4CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D990F520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D990F580(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D990F5B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49198, &qword_1D9936388);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D990F60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49198, &qword_1D9936388);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1D990F670(uint64_t a1)
{
  sub_1D990F728();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for ComponentId(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1D990F728()
{
  if (!qword_1ECB47FC0)
  {
    v0 = type metadata accessor for ComponentId(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB47FC0);
    }
  }
}

void sub_1D990F798(uint64_t a1)
{
  type metadata accessor for SISchemaComponentName(319);
  if (v1 <= 0x3F)
  {
    sub_1D992AE84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D990F81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D990F88C()
{
  v2 = OUTLINED_FUNCTION_4();
  v3(v2);
  OUTLINED_FUNCTION_5();
  (*(v4 + 32))(v0, v1);
  return v0;
}

SiriAnalytics::TagSpace_optional __swiftcall TagSpace.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D990F928@<X0>(_DWORD *a1@<X8>)
{
  result = TagSpace.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D990F990(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t static TagShim.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECB491A0 = a1;
  return result;
}

uint64_t sub_1D990FBA4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB491A0;
  return result;
}

uint64_t sub_1D990FBF0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB491A0 = v1;
  return result;
}

uint64_t sub_1D990FC38(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SiriAnalyticsTagShim_underlying;
  sub_1D98B37DC(v1 + OBJC_IVAR___SiriAnalyticsTagShim_underlying, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
  if (swift_dynamicCast())
  {
    sub_1D986D53C(v34, v38);
    v5 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
    if (v5)
    {
      v6 = v5;
      sub_1D98B37DC(v1 + v4, v36);
      v7 = OUTLINED_FUNCTION_5_27();
      v8 = v37;
      __swift_destroy_boxed_opaque_existential_1(v36);
      (*(v8 + 8))(v34, v7, v8);
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1D992B3F4();
      v10 = sub_1D99108B4(v6);
      v12 = v11;
      sub_1D98B37DC(v2 + v4, v36);
      v13 = OUTLINED_FUNCTION_5_27();
      v14 = v37;
      __swift_destroy_boxed_opaque_existential_1(v36);
      (*(v14 + 8))(v34, v13, v14);
      v15 = LOBYTE(v34[0]);
      v16 = OUTLINED_FUNCTION_4_29();
      [a1 encodeInt32:v15 forKey:v16];

      v33 = v10;
      if (v12 >> 60 == 15)
      {
        v17 = 0;
      }

      else
      {
        sub_1D987BA38(v10, v12);
        v17 = sub_1D992AD74();
        sub_1D9866358(v10, v12);
      }

      v18 = OUTLINED_FUNCTION_1_0();
      [a1 encodeObject:v17 forKey:v18];
      swift_unknownObjectRelease();

      v19 = sub_1D992AE84();
      v32[1] = v32;
      OUTLINED_FUNCTION_0();
      v21 = v20;
      MEMORY[0x1EEE9AC00](*(v22 + 64));
      OUTLINED_FUNCTION_13();
      v25 = v24 - v23;
      v26 = OBJC_IVAR___SiriAnalyticsTagShim_identifier;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v29 = v32 - v28;
      sub_1D9879FF8(v2 + v26, v32 - v28);
      if (__swift_getEnumTagSinglePayload(v29, 1, v19) == 1)
      {
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_1D9866358(v33, v12);

        return sub_1D986DEE4(v29, &qword_1ECB481D0, &qword_1D992F9F0);
      }

      else
      {
        (*(v21 + 32))(v25, v29, v19);
        v30 = sub_1D992AE44();
        v31 = sub_1D992B614();
        [a1 encodeObject:v30 forKey:v31];

        sub_1D9866358(v33, v12);
        (*(v21 + 8))(v25, v19);
        return __swift_destroy_boxed_opaque_existential_1(v38);
      }
    }

    else
    {
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    return sub_1D986DEE4(v34, &unk_1ECB491C0, &unk_1D99305E0);
  }
}

void TagShim.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_4_29();
  v5 = [a1 decodeInt32ForKey_];

  if ((v5 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_15;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = OUTLINED_FUNCTION_1_0();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_1D992BC24();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v34 = v37;
  v35 = v38;
  if (!*(&v38 + 1))
  {

    sub_1D986DEE4(&v34, &unk_1ECB488D0, &unk_1D99335F0);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

LABEL_23:
    type metadata accessor for TagShim(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v32 = &v32;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v32 - v10;
  v12 = sub_1D992B614();
  v13 = [a1 containsValueForKey_];

  if (v13 && (sub_1D9910B54(), (v14 = sub_1D992BB94()) != 0))
  {
    v16 = v14;
    MEMORY[0x1EEE9AC00](v15);
    v17 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = sub_1D992AE84();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    sub_1D98BBC34();
    sub_1D992BEF4();

    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      v19 = v11;
      v20 = 1;
    }

    else
    {
      (*(*(v18 - 8) + 32))(v11, v17, v18);
      v19 = v11;
      v20 = 0;
    }

    v21 = v18;
  }

  else
  {
    v21 = sub_1D992AE84();
    v19 = v11;
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  sub_1D98EF68C(v11, v2 + OBJC_IVAR___SiriAnalyticsTagShim_identifier);
  v22 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v23 = OUTLINED_FUNCTION_33();
  sub_1D987BA38(v23, v24);
  v25 = OUTLINED_FUNCTION_33();
  v27 = sub_1D9880B04(v25, v26);
  if (!v27)
  {
    goto LABEL_27;
  }

  v28 = v27;
  if (v6)
  {
    *(&v35 + 1) = &type metadata for DataClassificationTag;
    v36 = &protocol witness table for DataClassificationTag;
    *&v34 = swift_allocObject();
    static DataClassificationTag.read(from:)(v34 + 16);
  }

  else
  {
    *(&v35 + 1) = &type metadata for SensitiveConditionTag;
    v36 = &protocol witness table for SensitiveConditionTag;
    static SensitiveConditionTag.read(from:)();
  }

  v29 = OUTLINED_FUNCTION_33();
  sub_1D987106C(v29, v30);
  sub_1D986D53C(&v34, v2 + OBJC_IVAR___SiriAnalyticsTagShim_underlying);
  v31 = type metadata accessor for TagShim(0);
  v33.receiver = v2;
  v33.super_class = v31;
  objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1D9910620()
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_1D992C104();
  MEMORY[0x1DA739C30](v1);

  MEMORY[0x1DA739C30](0x69746E656469203ALL, 0xEF203D2072656966);
  v2 = OBJC_IVAR___SiriAnalyticsTagShim_identifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9879FF8(v0 + v2, v7 - v4);
  v5 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v5);

  MEMORY[0x1DA739C30](0x203D20676174202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  sub_1D992BE24();
  MEMORY[0x1DA739C30](62, 0xE100000000000000);
  return v7[0];
}

id TagShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TagShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagShim(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D99108B4(void *a1)
{
  v1 = [a1 immutableData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992AD84();

  return v3;
}

id sub_1D9910918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](*(v11 + 64));
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v15 = objc_allocWithZone(type metadata accessor for TagShim(0));
  (*(v10 + 16))(v14, a2, a4);
  v16 = sub_1D9910A24(a1, v14, v15, a4, a5);
  (*(v10 + 8))(a2, a4);
  return v16;
}

id sub_1D9910A24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  sub_1D9879FF8(a1, a3 + OBJC_IVAR___SiriAnalyticsTagShim_identifier);
  sub_1D98B37DC(v13, a3 + OBJC_IVAR___SiriAnalyticsTagShim_underlying);
  v12.receiver = a3;
  v12.super_class = type metadata accessor for TagShim(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1D986DEE4(a1, &qword_1ECB481D0, &qword_1D992F9F0);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t type metadata accessor for TagShim(uint64_t a1)
{
  result = qword_1ED8BF660;
  if (!qword_1ED8BF660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D9910B54()
{
  result = qword_1ED8BD640;
  if (!qword_1ED8BD640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BD640);
  }

  return result;
}

unint64_t sub_1D9910B9C()
{
  result = qword_1ECB491D0;
  if (!qword_1ECB491D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB491D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TagSpace(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1D9910CE8(uint64_t a1)
{
  sub_1D98946B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1D9910DF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D9910F2C();
  if (!v1)
  {
    sub_1D991109C(&v6);
    if (v7)
    {
      sub_1D986B804(v9, &qword_1ECB49268, &unk_1D99366C0);
      sub_1D986D53C(&v6, v8);
      return sub_1D986D53C(v8, a1);
    }

    else
    {
      sub_1D986B804(&v6, &unk_1ECB491C0, &unk_1D99305E0);
      v4 = sub_1D992B484();
      sub_1D98847C8();
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
      swift_willThrow();
      return sub_1D986B804(v9, &qword_1ECB49268, &unk_1D99366C0);
    }
  }

  return result;
}

uint64_t sub_1D9910F2C()
{
  sub_1D9911EEC();
  sub_1D992B964();
  if (!v2)
  {
    v3 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6999BA8], v3);
    swift_willThrow();
  }

  return sub_1D9866358(0, 0xF000000000000000);
}

uint64_t sub_1D991109C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  sub_1D9866D90(v3 + 40, &v15, &unk_1ECB491C0, &unk_1D99305E0);
  if (*(&v16 + 1))
  {
    return sub_1D986D53C(&v15, a1);
  }

  v18 = a1;
  sub_1D986B804(&v15, &unk_1ECB491C0, &unk_1D99305E0);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = sub_1D992BC04();
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v13 - v9;
  result = sub_1D992B474();
  if (!v2)
  {
    v11 = v14;
    if (__swift_getEnumTagSinglePayload(v10, 1, v6) == 1)
    {
      (*(v11 + 8))(v10, v8);
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }

    else
    {
      *(&v16 + 1) = v6;
      v17 = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v10, v6);
    }

    sub_1D9909AD4(&v15, v3 + 40, &unk_1ECB491C0, &unk_1D99305E0);
    return sub_1D9866D90(v3 + 40, v18, &unk_1ECB491C0, &unk_1D99305E0);
  }

  return result;
}

uint64_t sub_1D99112B0(char a1, _BYTE *a2, ValueMetadata **a3, uint64_t *a4, void *a5)
{
  v10 = sub_1D991178C(a1);
  if (v10)
  {
    *a2 = a1;
    *a3 = v10;
    a3[1] = v11;
    v12 = [a5 readData];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D992AD84();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    v20 = *a4;
    v21 = a4[1];
    *a4 = v14;
    a4[1] = v16;
    return sub_1D9866358(v20, v21);
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D9937770);
    sub_1D992BE24();
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000006DLL, 0x80000001D99377A0, 0x6F72662864616572, 0xEB00000000293A6DLL);

    v17 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E6999BA8], v17);
    return swift_willThrow();
  }
}

uint64_t static DataClassificationTag.read(from:)@<X0>(uint64_t a2@<X8>)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v15 = 0xF000000000000007;
  sub_1D9911A18();
  sub_1D992B964();
  if (!v2)
  {
    sub_1D9866D90(v13, &v10, &qword_1ECB49240, &qword_1D99364B0);
    if (v11)
    {
      sub_1D986D53C(&v10, v12);
      v4 = v15;
      if ((~v15 & 0xF000000000000007) != 0)
      {
        sub_1D986D53C(v12, a2);
        *(a2 + 40) = v4;
        v9 = v15;
        sub_1D98907D8(v4);
        v7 = v9;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      sub_1D986B804(&v10, &qword_1ECB49240, &qword_1D99364B0);
    }

    v5 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E6999BA8], v5);
    swift_willThrow();
  }

  v7 = v15;
LABEL_8:
  sub_1D9890E8C(v7);
  return sub_1D986B804(v13, &qword_1ECB49240, &qword_1D99364B0);
}

uint64_t sub_1D9911664(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v8 = OUTLINED_FUNCTION_1_45(&v17, v6, v7, &type metadata for SearchRequestDataClassification);
  if (v8)
  {
    v11 = 0;
  }

  else if (OUTLINED_FUNCTION_1_45(v8, v9, v10, &type metadata for InternalPlatformClassifications))
  {
    v11 = 1;
  }

  else if (OUTLINED_FUNCTION_1_45(&v16, v12, v13, &type metadata for RemoteRequestDataClassification))
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  (*(v3 + 8))(v5, a2);
  return v11;
}

ValueMetadata *sub_1D991178C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = &type metadata for InternalPlatformClassifications;
      sub_1D98CEED4();
    }

    else
    {
      v1 = &type metadata for RemoteRequestDataClassification;
      sub_1D98CD5E8();
    }
  }

  else
  {
    v1 = &type metadata for SearchRequestDataClassification;
    sub_1D98D1CD8();
  }

  return v1;
}

uint64_t sub_1D99117EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9911664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t DataClassificationTag.write(to:)()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_boxed_opaque_existential_1(v0, v2);
  v11[3] = v2;
  v11[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49248, &qword_1D99364B8);
  v10 = sub_1D9911A6C();
  v8[0] = swift_allocObject();
  sub_1D9866D90(v11, v8[0] + 16, &qword_1ECB49248, &qword_1D99364B8);
  sub_1D992B9D4();
  if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v6 = v0[5];
    v9 = &type metadata for TagPredicate;
    v10 = sub_1D9891570();
    v8[0] = v6;
    sub_1D98907D8(v6);
    sub_1D992B9D4();
  }

  sub_1D986B804(v11, &qword_1ECB49248, &qword_1D99364B8);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_1D9911A18()
{
  result = qword_1ECB47D30;
  if (!qword_1ECB47D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D30);
  }

  return result;
}

unint64_t sub_1D9911A6C()
{
  result = qword_1ECB47FC8[0];
  if (!qword_1ECB47FC8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB49248, &qword_1D99364B8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECB47FC8);
  }

  return result;
}

unint64_t sub_1D9911AD4()
{
  result = qword_1ECB47D28;
  if (!qword_1ECB47D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D28);
  }

  return result;
}

void *sub_1D9911B28(uint64_t a1)
{
  result = sub_1D9910DF4(v7);
  if (!v1)
  {
    sub_1D986D53C(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v5 = 0;
      memset(v4, 0, sizeof(v4));
    }

    return sub_1D9909AD4(v4, a1, &qword_1ECB49240, &qword_1D99364B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataClassificationTagProtoUnionDomain(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6FieldsOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D9911E70()
{
  result = qword_1ECB49250;
  if (!qword_1ECB49250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49250);
  }

  return result;
}

unint64_t sub_1D9911EC4(uint64_t a1)
{
  result = sub_1D9911EEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D9911EEC()
{
  result = qword_1ECB47B48;
  if (!qword_1ECB47B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B48);
  }

  return result;
}

unint64_t sub_1D9911F44()
{
  result = qword_1ECB49258;
  if (!qword_1ECB49258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49258);
  }

  return result;
}

unint64_t sub_1D9911F98()
{
  result = qword_1ECB49260;
  if (!qword_1ECB49260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB49260);
  }

  return result;
}

uint64_t type metadata accessor for StagedMessagePolicyHeaders(uint64_t a1)
{
  result = qword_1ECB47BD0;
  if (!qword_1ECB47BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99120B8(uint64_t a1)
{
  result = sub_1D992AE04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D991216C()
{
  v0 = sub_1D992B484();
  OUTLINED_FUNCTION_0_54();
  sub_1D991276C(v1, v2, MEMORY[0x1E6999BD8]);
  swift_allocError();
  *v3 = 0x726F707075736E55;
  v3[1] = 0xEB00000000646574;
  (*(*(v0 - 8) + 104))(v3, *MEMORY[0x1E6999BB8], v0);
  return swift_willThrow();
}

uint64_t sub_1D9912238@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340) - 8) + 64);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v5 + 15));
  v7 = sub_1D992AE04();
  __swift_storeEnumTagSinglePayload(&v18[-v6], 1, 1, v7);
  v19 = &v18[-v6];
  v20 = a1;
  sub_1D9909A64();
  sub_1D992B994();
  if (!v2)
  {
    v21 = v18;
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](*(v8 + 64));
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = &v18[-v10];
    MEMORY[0x1EEE9AC00](v10);
    sub_1D98D88C8(&v18[-v6], &v18[-v6]);
    if (__swift_getEnumTagSinglePayload(&v18[-v6], 1, v7) == 1)
    {
      sub_1D9912704(&v18[-v6]);
      v12 = sub_1D992B484();
      OUTLINED_FUNCTION_0_54();
      sub_1D991276C(v13, v14, MEMORY[0x1E6999BD8]);
      swift_allocError();
      (*(*(v12 - 8) + 104))(v15, *MEMORY[0x1E6999BA8], v12);
      swift_willThrow();
    }

    else
    {
      v16 = *(v8 + 32);
      v16(v11, &v18[-v6], v7);
      v16(a2, v11, v7);
    }
  }

  return sub_1D9912704(&v18[-v6]);
}

BOOL sub_1D99124E0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 3)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = &v8 - v5;
    sub_1D992B9A4();
    sub_1D99127B4(v6, a2);
  }

  return v2 == 3;
}

uint64_t sub_1D9912704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D991276C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D99127B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9912824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D991831C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D99190F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D9919844(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D991AE8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D991B450(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1D991B9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D991BF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D991C55C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1D991CD50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1D991D4E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1D9923438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9923A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SiriAnalyticsLoggingInit()
{
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }
}

uint64_t __SiriAnalyticsLoggingInit_block_invoke()
{
  v0 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryXPC);
  v1 = SiriAnalyticsLogContextXPC;
  SiriAnalyticsLogContextXPC = v0;

  v2 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryUtility);
  v3 = SiriAnalyticsLogContextUtility;
  SiriAnalyticsLogContextUtility = v2;

  v4 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryAssistant);
  v5 = SiriAnalyticsLogContextAssistant;
  SiriAnalyticsLogContextAssistant = v4;

  v6 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryStreaming);
  v7 = SiriAnalyticsLogContextStreaming;
  SiriAnalyticsLogContextStreaming = v6;

  v8 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryStorage);
  v9 = SiriAnalyticsLogContextStorage;
  SiriAnalyticsLogContextStorage = v8;

  v10 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryTime);
  v11 = SiriAnalyticsLogContextTime;
  SiriAnalyticsLogContextTime = v10;

  v12 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryResolution);
  v13 = SiriAnalyticsLogContextResolution;
  SiriAnalyticsLogContextResolution = v12;

  v14 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryPerformance);
  v15 = SiriAnalyticsLogContextPerformance;
  SiriAnalyticsLogContextPerformance = v14;

  v16 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryMessageTailing);
  v17 = SiriAnalyticsLogContextMessageTailing;
  SiriAnalyticsLogContextMessageTailing = v16;

  v18 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategorySensitiveConditions);
  v19 = SiriAnalyticsLogContextSensitiveConditions;
  SiriAnalyticsLogContextSensitiveConditions = v18;

  v20 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryDB);
  v21 = SiriAnalyticsLogContextDB;
  SiriAnalyticsLogContextDB = v20;

  v22 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryMetastore);
  v23 = SiriAnalyticsLogContextMetastore;
  SiriAnalyticsLogContextMetastore = v22;

  v24 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryMessageStaging);
  v25 = SiriAnalyticsLogContextMessageStaging;
  SiriAnalyticsLogContextMessageStaging = v24;

  v26 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryPreprocessor);
  v27 = SiriAnalyticsLogContextPreprocessor;
  SiriAnalyticsLogContextPreprocessor = v26;

  v28 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryUnifiedBiomeStream);
  v29 = SiriAnalyticsLogContextUnifiedBiomeStream;
  SiriAnalyticsLogContextUnifiedBiomeStream = v28;

  v30 = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryLargeUpload);
  v31 = SiriAnalyticsLogContextLargeUpload;
  SiriAnalyticsLogContextLargeUpload = v30;

  SiriAnalyticsLogContextOrchestrator = os_log_create(SiriAnalyticsLoggingSubsystem, SiriAnalyticsLoggingCategoryOrchestrator);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D9924DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__865(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SiriAnalyticsIsInternalInstall()
{
  if (SiriAnalyticsIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SiriAnalyticsIsInternalInstall_onceToken, &__block_literal_global_884);
  }

  return SiriAnalyticsIsInternalInstall_isInternal;
}

uint64_t __SiriAnalyticsIsInternalInstall_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  SiriAnalyticsIsInternalInstall_isInternal = result;
  return result;
}