uint64_t sub_22B0888E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22B0DF0E0();
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

uint64_t sub_22B088998(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_22B0DF0E0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_22B088A5C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22B0DF830();
LABEL_9:
  result = sub_22B0DF920();
  *v2 = result;
  return result;
}

uint64_t sub_22B088AFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22B0DF830();
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
      result = sub_22B0DF830();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22B08A6D0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5940, &qword_22B0E3A50);
            v9 = sub_22B088C7C(v13, i, a3);
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
        sub_22B08A1B0();
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

void (*sub_22B088C7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318895C0](a2, a3);
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
    return sub_22B088CFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B088D04(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a2 + 56) + 16 * (__clz(__rbit64(v6)) | (v11 << 6)) + 8);

      if (!v12)
      {
        break;
      }

      v6 &= v6 - 1;
      sub_22B0DF380();

      sub_22B0DF380();

      result = sub_22B0DFD80();
      v9 ^= result;
      v10 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x231889A00](v9);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22B088EC0(uint64_t result, uint64_t a2)
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
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v15 == 0;

    if (!v15)
    {
      return v17;
    }

    v18 = sub_22B08350C(v13);
    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = (*(a2 + 56) + 16 * v18);
    if (*v20 == v16 && v15 == v20[1])
    {
    }

    else
    {
      v22 = sub_22B0DFC60();

      if ((v22 & 1) == 0)
      {
        return v17;
      }
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
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_22B089030(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B57B8, &unk_22B0E5850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = [a1 createRadarDraft];
  if (!v10)
  {
    return v10;
  }

  v11 = sub_22B0DF300();
  [v10 setTitle_];

  v12 = sub_22B0DF300();
  [v10 setProblemDescription_];

  if (*(a2 + 112))
  {
    v13 = sub_22B0DF300();
  }

  else
  {
    v13 = 0;
  }

  [v10 setBundleID_];

  if (*(a2 + 72))
  {
    v14 = *(a2 + 96);
    v15 = sub_22B0DF300();
    v16 = sub_22B0DF300();
    v17 = [a1 createRadarComponentWithName:v15 version:v16 identifier:v14];

    [v10 setComponent_];
  }

  [v10 setClassification_];
  [v10 setReproducibility_];
  [v10 setAutoDiagnostics_];
  [v10 setIsUserInitiated_];
  v18 = type metadata accessor for TapToRadarDraft(0);
  [v10 setOmitPrefixFromTitle_];
  [v10 setDeleteOnAttach_];
  [v10 setShouldCaptureScreenshot_];
  [v10 setShouldCaptureDumpDisplay_];
  [v10 setShouldCapturePerformanceTrace_];
  [v10 setShouldCaptureForegroundApp_];
  [v10 setScreenshotCaptureDelay_];
  sub_22B0898A8(a2 + v18[22], v9, &unk_27D8B5670, &unk_22B0E32C0);
  v19 = sub_22B0DF0E0();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v9, 1, v19) != 1)
  {
    v21 = sub_22B0DF070();
    (*(v20 + 8))(v9, v19);
  }

  [v10 setTimeOfIssue_];

  if (*(*(a2 + 128) + 16))
  {
    sub_22B0DEF00();
    v22 = sub_22B0DF4A0();
  }

  else
  {
    v22 = 0;
  }

  [v10 setAttachments_];

  if (*(*(a2 + 136) + 16))
  {
    v23 = sub_22B0DF4A0();
  }

  else
  {
    v23 = 0;
  }

  [v10 setDiagnosticExtensionIDs_];

  v24 = *(a2 + 152);
  if (v24 >> 62)
  {
    if (sub_22B0DF830())
    {
      goto LABEL_17;
    }

LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_22B08A1B0();
  v25 = sub_22B0DF4A0();
LABEL_20:
  [v10 setKeywords_];

  if (*(*(a2 + 160) + 16))
  {
    v26 = sub_22B0DF4A0();
  }

  else
  {
    v26 = 0;
  }

  [v10 setDeviceIDs_];

  if (*(*(a2 + 168) + 16))
  {
    v27 = sub_22B0DF4A0();
  }

  else
  {
    v27 = 0;
  }

  [v10 setDeviceModels_];

  if (*(*(a2 + v18[29]) + 16))
  {
    v28 = sub_22B0DF4A0();
  }

  else
  {
    v28 = 0;
  }

  [v10 setCollaborationContactHandles_];

  if (*(a2 + v18[30] + 8))
  {
    v29 = sub_22B0DF300();
  }

  else
  {
    v29 = 0;
  }

  [v10 setCollaborationGroupChatID_];

  sub_22B0898A8(a2 + v18[31], v6, &qword_27D8B57B8, &unk_22B0E5850);
  v30 = sub_22B0DEF00();
  v31 = *(v30 - 8);
  v32 = 0;
  if ((*(v31 + 48))(v6, 1, v30) != 1)
  {
    v32 = sub_22B0DEEB0();
    (*(v31 + 8))(v6, v30);
  }

  [v10 setCrashLog_];

  if (*(a2 + v18[32] + 8))
  {
    v33 = sub_22B0DF300();
  }

  else
  {
    v33 = 0;
  }

  [v10 setCallbackIdentifier_];

  [v10 setRemoteDeviceClasses_];
  [v10 setRemoteDeviceSelections_];
  v34 = *(a2 + 144);
  if (*(v34 + 16))
  {
    sub_22B095C34(v34);
    v35 = sub_22B0DF220();
  }

  else
  {
    v35 = 0;
  }

  [v10 setDiagnosticExtensionParameters_];

  return v10;
}

uint64_t sub_22B089738(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22B0DF3A0();

    return sub_22B0DF410();
  }

  return result;
}

void sub_22B0897D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_22B089818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27D8B5820;
  if (!qword_27D8B5820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B0898A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B089910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_22B089A34()
{
  result = qword_27D8B57C0;
  if (!qword_27D8B57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57C0);
  }

  return result;
}

unint64_t sub_22B089A8C()
{
  result = qword_27D8B57C8;
  if (!qword_27D8B57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57C8);
  }

  return result;
}

unint64_t sub_22B089AE4()
{
  result = qword_27D8B57D0;
  if (!qword_27D8B57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57D0);
  }

  return result;
}

unint64_t sub_22B089B3C()
{
  result = qword_27D8B57D8;
  if (!qword_27D8B57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57D8);
  }

  return result;
}

unint64_t sub_22B089B94()
{
  result = qword_27D8B57E0;
  if (!qword_27D8B57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57E0);
  }

  return result;
}

unint64_t sub_22B089BEC()
{
  result = qword_27D8B57E8;
  if (!qword_27D8B57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57E8);
  }

  return result;
}

unint64_t sub_22B089C44()
{
  result = qword_27D8B57F0;
  if (!qword_27D8B57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57F0);
  }

  return result;
}

unint64_t sub_22B089C9C()
{
  result = qword_27D8B57F8;
  if (!qword_27D8B57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B57F8);
  }

  return result;
}

unint64_t sub_22B089CF4()
{
  result = qword_27D8B5800;
  if (!qword_27D8B5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5800);
  }

  return result;
}

unint64_t sub_22B089D4C()
{
  result = qword_27D8B5808;
  if (!qword_27D8B5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5808);
  }

  return result;
}

unint64_t sub_22B089DA4()
{
  result = qword_27D8B5810;
  if (!qword_27D8B5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5810);
  }

  return result;
}

void sub_22B089E20(uint64_t a1)
{
  sub_22B08A100(319, &qword_27D8B5830, &type metadata for TapToRadarComponent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22B08A100(319, &qword_27D8B5838, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22B08A1FC(319, &qword_27D8B5840, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22B08A100(319, &qword_27D8B5848, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_22B08A150();
          if (v5 <= 0x3F)
          {
            sub_22B08A1FC(319, &qword_27D8B5858, sub_22B08A1B0, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_22B08A1FC(319, &unk_2813EAD58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22B08A1FC(319, &unk_27D8B5870, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22B08A100(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22B08A150()
{
  if (!qword_27D8B5850)
  {
    v0 = sub_22B0DF270();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8B5850);
    }
  }
}

unint64_t sub_22B08A1B0()
{
  result = qword_27D8B5860;
  if (!qword_27D8B5860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8B5860);
  }

  return result;
}

void sub_22B08A1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B08A6D0()
{
  result = qword_27D8B5948;
  if (!qword_27D8B5948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8B5940, &qword_22B0E3A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5948);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B08A77C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5958, &qword_22B0E3A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22B08A8A8@<X0>(void *a1@<X8>)
{
  v3 = [v1 min];
  v4 = [v1 max];
  v5 = [v1 count];
  [v1 sum];
  v7 = v6;
  result = [v1 sumSquares];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v9;
  return result;
}

char *sub_22B08A94C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = [v1 min];
  if (v2 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v2;
  }

  [v1 setMin_];
  v9 = [v1 max];
  if (v3 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v3;
  }

  [v1 setMax_];
  result = [v1 count];
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    [v1 setCount_];
    [v1 sum];
    [v1 setSum_];
    [v1 sumSquares];
    v14 = v5 + v13;

    return [v1 setSumSquares_];
  }

  return result;
}

unint64_t sub_22B08AAD4()
{
  result = qword_2813EA378;
  if (!qword_2813EA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA378);
  }

  return result;
}

id sub_22B08AB2C(double *a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = a1[3];
  v5 = a1[4];
  [v1 setMin_];
  [v1 setMax_];
  [v1 setCount_];
  [v1 setSum_];

  return [v1 setSumSquares_];
}

uint64_t sub_22B08ABD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B08AC28(uint64_t a1, int a2)
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

uint64_t sub_22B08AC70(uint64_t result, int a2, int a3)
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

uint64_t sub_22B08ACF4()
{
  v1 = v0;
  v2 = sub_22B0DF140();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = [v1 name];
  if (v21)
  {
    v22 = v21;
    v36 = v9;
    v34 = sub_22B0DF330();
    v35 = v23;

    v24 = [v1 homeUUID];
    if (v24)
    {
      v25 = v24;
      sub_22B0DF130();

      v26 = *(v3 + 32);
      v26(v20, v18, v2);
      v27 = [v1 accessoryUUID];
      if (v27)
      {
        v28 = v27;
        sub_22B0DF130();

        v26(v15, v12, v2);
        v29 = v36;
        v26(v36, v20, v2);
        v26(v6, v15, v2);
        type metadata accessor for AccessoryGroupSpecifier(0);
        v30 = swift_allocObject();
        v26((v30 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID), v6, v2);
        v26((v30 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID), v29, v2);
        v31 = v35;
        *(v30 + 16) = v34;
        *(v30 + 24) = v31;
        return v30;
      }

      (*(v3 + 8))(v20, v2);
    }
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

id sub_22B08B080(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedAccessoryGroup();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_22B08B0DC()
{
  result = qword_2813EA380;
  if (!qword_2813EA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA380);
  }

  return result;
}

unint64_t sub_22B08B134()
{
  result = qword_2813EA398;
  if (!qword_2813EA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA398);
  }

  return result;
}

uint64_t sub_22B08B198()
{
  v1 = v0;
  v2 = sub_22B0DF140();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = [v1 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22B0DF330();
    v16 = v15;

    v17 = [v1 homeUUID];
    if (v17)
    {
      v18 = v17;
      sub_22B0DF130();

      v19 = *(v3 + 32);
      v19(v11, v9, v2);
      v19(v6, v11, v2);
      type metadata accessor for HomeGroupSpecifier(0);
      v20 = swift_allocObject();
      v19((v20 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID), v6, v2);
      *(v20 + 16) = v14;
      *(v20 + 24) = v16;
      return v20;
    }
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

id sub_22B08B41C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedHomeGroup();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void __swiftcall CounterDistribution.init()(HomeKitMetrics::CounterDistribution *__return_ptr retstr)
{
  *&retstr->minValue = xmmword_22B0E3BB0;
  retstr->sumOfValues = 0.0;
  retstr->sumOfSquares = 0.0;
  retstr->valueCount = 0;
}

void __swiftcall CounterDistribution.init(value:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, Swift::Int value)
{
  retstr->minValue = value;
  retstr->maxValue = value;
  retstr->valueCount = 1;
  retstr->sumOfValues = value;
  retstr->sumOfSquares = value * value;
}

void __swiftcall CounterDistribution.accumulate(_:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, Swift::Int a2)
{
  v3 = *(v2 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    v6 = *(v2 + 8);
    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v7 >= a2)
    {
      v7 = a2;
    }

    v8.f64[0] = a2;
    retstr->minValue = v7;
    retstr->maxValue = v6;
    retstr->valueCount = v5;
    v8.f64[1] = v8.f64[0] * v8.f64[0];
    *&retstr->sumOfValues = vaddq_f64(*(v2 + 24), v8);
  }
}

void __swiftcall CounterDistribution.accumulate(_:)(HomeKitMetrics::CounterDistribution *__return_ptr retstr, HomeKitMetrics::CounterDistribution *a2)
{
  valueCount = a2->valueCount;
  v4 = *(v2 + 16);
  v5 = __OFADD__(v4, valueCount);
  v6 = v4 + valueCount;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    minValue = a2->minValue;
    maxValue = a2->maxValue;
    if (maxValue <= *(v2 + 8))
    {
      maxValue = *(v2 + 8);
    }

    if (minValue >= *v2)
    {
      minValue = *v2;
    }

    retstr->minValue = minValue;
    retstr->maxValue = maxValue;
    retstr->valueCount = v6;
    *&retstr->sumOfValues = vaddq_f64(*(v2 + 24), *&a2->sumOfValues);
  }
}

uint64_t sub_22B08B5B4()
{
  v1 = *v0;
  v2 = 0x65756C61566E696DLL;
  v3 = 0x756F4365756C6176;
  v4 = 0x6C6156664F6D7573;
  if (v1 != 3)
  {
    v4 = 0x757153664F6D7573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C615678616DLL;
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

uint64_t sub_22B08B664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B08C170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B08B698(uint64_t a1)
{
  v2 = sub_22B08BD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B08B6D4(uint64_t a1)
{
  v2 = sub_22B08BD78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CounterDistribution.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5970, &qword_22B0E3BC0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 8);
  v10[0] = *(v1 + 16);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B08BD78();
  sub_22B0DFDC0();
  v15 = 0;
  sub_22B0DFBF0();
  if (!v2)
  {
    v14 = 1;
    sub_22B0DFBF0();
    v13 = 2;
    sub_22B0DFBF0();
    v12 = 3;
    sub_22B0DFBE0();
    v11 = 4;
    sub_22B0DFBE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CounterDistribution.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  MEMORY[0x231889A00](*v0);
  MEMORY[0x231889A00](v1);
  MEMORY[0x231889A00](v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x231889A20](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x231889A20](*&v6);
}

uint64_t CounterDistribution.hashValue.getter()
{
  sub_22B0DFD40();
  CounterDistribution.hash(into:)();
  return sub_22B0DFD80();
}

uint64_t CounterDistribution.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5978, &qword_22B0E3BC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B08BD78();
  sub_22B0DFDB0();
  if (!v2)
  {
    v22 = 0;
    v9 = sub_22B0DFBA0();
    v21 = 1;
    v10 = sub_22B0DFBA0();
    v20 = 2;
    v17 = sub_22B0DFBA0();
    v19 = 3;
    sub_22B0DFB90();
    v13 = v12;
    v18 = 4;
    sub_22B0DFB90();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v17;
    a2[3] = v13;
    a2[4] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_22B08BC00@<D0>(uint64_t a1@<X8>)
{
  result = NAN;
  *a1 = xmmword_22B0E3BB0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  return result;
}

double sub_22B08BC18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = result * result;
  return result;
}

uint64_t sub_22B08BC78()
{
  sub_22B0DFD40();
  CounterDistribution.hash(into:)();
  return sub_22B0DFD80();
}

uint64_t sub_22B08BCD8(uint64_t a1)
{
  sub_22B0DFD40();
  CounterDistribution.hash(into:)();
  return sub_22B0DFD80();
}

unint64_t sub_22B08BD78()
{
  result = qword_2813EA3B0;
  if (!qword_2813EA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3B0);
  }

  return result;
}

unint64_t sub_22B08BDCC(uint64_t a1)
{
  result = sub_22B08BDF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22B08BDF4()
{
  result = qword_2813EA390;
  if (!qword_2813EA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA390);
  }

  return result;
}

unint64_t sub_22B08BE4C()
{
  result = qword_2813EA388;
  if (!qword_2813EA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA388);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B08BEB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B08BED4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CounterDistribution.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CounterDistribution.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B08C06C()
{
  result = qword_27D8B5980;
  if (!qword_27D8B5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5980);
  }

  return result;
}

unint64_t sub_22B08C0C4()
{
  result = qword_2813EA3A0;
  if (!qword_2813EA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3A0);
  }

  return result;
}

unint64_t sub_22B08C11C()
{
  result = qword_2813EA3A8;
  if (!qword_2813EA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3A8);
  }

  return result;
}

uint64_t sub_22B08C170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_22B0DFC60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (sub_22B0DFC60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F4365756C6176 && a2 == 0xEA0000000000746ELL || (sub_22B0DFC60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6156664F6D7573 && a2 == 0xEB00000000736575 || (sub_22B0DFC60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x757153664F6D7573 && a2 == 0xEC00000073657261)
  {

    return 4;
  }

  else
  {
    v6 = sub_22B0DFC60();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t CountersManager.__allocating_init(dateProvider:uptimeProvider:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EmptyCounterStorage();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  ObjectType = swift_getObjectType();
  return sub_22B09010C(v4, a1, a2, v5, ObjectType, type metadata accessor for EmptyCounterStorage, &off_283EED480);
}

uint64_t CountersManager.__allocating_init(flatFileStoragePath:dateProvider:uptimeProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for PersistentFlatFileCounterStorage();
  swift_allocObject();
  v9 = a3;
  v10 = sub_22B0A27F4(a1, a2, v9);
  if (v4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = v10;
    v13 = swift_allocObject();
    ObjectType = swift_getObjectType();
    return sub_22B09010C(v12, v9, a4, v13, ObjectType, type metadata accessor for PersistentFlatFileCounterStorage, &off_283EEBAB8);
  }
}

uint64_t CountersManager.__allocating_init(coreDataStoragePath:dateProvider:uptimeProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for PersistentCoreDataCounterStorage(0);
  swift_allocObject();
  v9 = sub_22B0B9FE0(a1, a2, 0, 0, 0, 0);
  if (v4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = v9;
    v12 = swift_allocObject();
    return sub_22B08FCE0(v11, a3, a4, v12);
  }
}

uint64_t CountersManager.group(groupName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NamedGroupSpecifier();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_22B08C5E8(v4);

  return v5;
}

uint64_t sub_22B08C5E8(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 80));
  sub_22B08F300(*(v1 + 96));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_22B083304(*(v4 + 16), 0);
    v7 = sub_22B094920();
    sub_22B0781A0(v15);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v8 = sub_22B091768(a1, *(v2 + 88));
  if (v8)
  {
    v9 = v8;

LABEL_15:
    os_unfair_lock_unlock((v2 + 80));
    return v9;
  }

  sub_22B0915C4(v2 + 16, &v15);
  type metadata accessor for CounterGroup();
  swift_allocObject();

  v9 = sub_22B09ED24(v10, &v15, v6, 1);

  v11 = *(v2 + 88);
  if ((v11 & 0xC000000000000001) == 0)
  {

    goto LABEL_14;
  }

  if (v11 < 0)
  {
    v12 = *(v2 + 88);
  }

  else
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_22B0DF830();
  if (!__OFADD__(result, 1))
  {
    *(v2 + 88) = sub_22B08F0A4(v12, result + 1);
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 88);
    sub_22B087D18(v9, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 88) = v15;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t CountersManager.group(groupName:homeUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B0DF140();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  type metadata accessor for HomeGroupSpecifier(0);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v9, v6);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_22B08C5E8(v10);

  return v11;
}

uint64_t CountersManager.group(groupName:homeFrom:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22B0DF140();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = [a3 homeUUID];
  sub_22B0DF130();

  (*(v7 + 16))(v10, v12, v6);
  type metadata accessor for HomeGroupSpecifier(0);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v10, v6);
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v15 = sub_22B08C5E8(v14);

  (*(v7 + 8))(v12, v6);
  return v15;
}

uint64_t CountersManager.group(groupName:homeUUID:accessoryUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B0DF140();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *(v9 + 16);
  v15(&v20 - v13, a3, v8);
  v15(v12, a4, v8);
  type metadata accessor for AccessoryGroupSpecifier(0);
  v16 = swift_allocObject();
  v17 = *(v9 + 32);
  v17(v16 + OBJC_IVAR____TtC14HomeKitMetrics23AccessoryGroupSpecifier_accessoryUUID, v12, v8);
  v17(v16 + OBJC_IVAR____TtC14HomeKitMetrics18HomeGroupSpecifier_homeUUID, v14, v8);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v18 = sub_22B08C5E8(v16);

  return v18;
}

uint64_t CountersManager.preloadGroups(for:)()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result)
  {
    v4 = v0[7];
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    MEMORY[0x28223BE20](v5);
    return (*(v4 + 32))(sub_22B0901AC);
  }

  return result;
}

void sub_22B08CD14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 24), v4);
  v23[6] = a2;
  v22 = a2;
  v6 = *(v5 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5680, &unk_22B0E3F60);
  v6(v23, sub_22B091620, v21, v7, v4, v5);
  if (v23[0])
  {
    v8 = v23[0];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_lock((a1 + 80));
  sub_22B08F300(*(a1 + 96));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_22B083304(*(v9 + 16), 0);
    v12 = sub_22B094920();
    sub_22B0781A0(v23[0]);
    if (v12 == v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_8:

  v13 = sub_22B090270(v8, a1, (a1 + 88), v11);

  os_unfair_lock_unlock((a1 + 80));
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_17:

    return;
  }

  v14 = sub_22B0DF830();
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (v14 >= 1)
  {
    v15 = 0;
    v19 = v13 & 0xC000000000000001;
    v20 = v13;
    do
    {
      if (v19)
      {
        v16 = MEMORY[0x2318895C0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      ++v15;
      os_unfair_lock_lock((v16 + 88));
      v17 = *(v16 + 56);
      v18 = __swift_project_boxed_opaque_existential_1((v16 + 24), *(v16 + 48));
      MEMORY[0x28223BE20](v18);
      (*(v17 + 32))(sub_22B091694);
      os_unfair_lock_unlock((v16 + 88));

      v13 = v20;
    }

    while (v14 != v15);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t CountersManager.allGroups.getter()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
  (*(v3 + 32))(sub_22B0901C8, v0, MEMORY[0x277D84F78] + 8, v2, v3);
  os_unfair_lock_lock((v0 + 80));
  v4 = sub_22B08D11C(*(v0 + 88));
  if (v4[2])
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5930, &qword_22B0E3A40);
    v6 = sub_22B0DFB50();
    v4 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v9 = v6;
  sub_22B08ED1C(v4, 1, &v9);
  v7 = v9;
  os_unfair_lock_unlock(v1 + 20);
  return v7;
}

uint64_t sub_22B08D11C(uint64_t a1)
{
  v1 = a1;
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22B0DF830();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    sub_22B0BFAB0(0, v2 & ~(v2 >> 63), 0);
    v26 = v31;
    if (v25)
    {
      result = sub_22B0DFA40();
    }

    else
    {
      result = sub_22B0DF7E0();
      v4 = *(v1 + 36);
    }

    v28 = result;
    v29 = v4;
    v30 = v25 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v23 = v2;
      v24 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v12 = v28;
        v13 = v29;
        v14 = v30;
        v15 = sub_22B08FED0(v27, v28, v29, v30, v1);
        v16 = v27[0];
        v17 = (*(*v15 + 88))(v15);

        v18 = v26;
        v31 = v26;
        v20 = *(v26 + 16);
        v19 = *(v26 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_22B0BFAB0((v19 > 1), v20 + 1, 1);
          v18 = v31;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;
        v26 = v18;
        if (v25)
        {
          v1 = v24;
          if (!v14)
          {
            goto LABEL_26;
          }

          if (sub_22B0DFA70())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v23;
          v11 = v5 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59A0, &qword_22B0E3EA0);
          v22 = sub_22B0DF260();
          sub_22B0DFAF0();
          result = v22(v27, 0);
        }

        else
        {
          v1 = v24;
          v6 = sub_22B08FD78(v12, v13, v14, v24);
          v8 = v7;
          v10 = v9;
          result = sub_22B0915B8(v12, v13, v14);
          v28 = v6;
          v29 = v8;
          v30 = v10 & 1;
          v2 = v23;
          v11 = v5 + 1;
        }

        ++v5;
        if (v11 == v2)
        {
          sub_22B0915B8(v28, v29, v30);
          return v26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_22B08D3E4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  __swift_project_boxed_opaque_existential_1((a1 + 24), v2);
  v4 = *(v3 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5680, &unk_22B0E3F60);
  v4(&v12, sub_22B08D580, 0, v5, v2, v3);
  v6 = v12;
  os_unfair_lock_lock((a1 + 80));
  sub_22B08F300(*(a1 + 96));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_22B083304(*(v7 + 16), 0);
    v10 = sub_22B094920();
    sub_22B0781A0(v12);
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_22B090270(v11, a1, (a1 + 88), v9);

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t sub_22B08D580@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

Swift::Void __swiftcall CountersManager.addEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 80));
  sub_22B08D650((v1 + 88), countAndFlagsBits, object, v1);

  os_unfair_lock_unlock((v1 + 80));
}

uint64_t sub_22B08D650(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!*(a1[1] + 16) || (result = sub_22B0768A8(a2, a3), (v8 & 1) == 0))
  {
    v9 = objc_allocWithZone(type metadata accessor for EphemeralContainerState());

    v10 = swift_unknownObjectRetain();
    v11 = sub_22B0B9F20(v10);
    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = a1[1];
    sub_22B087E78(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    a1[1] = v29;
    v13 = *a1;
    v27 = a2;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v28 = sub_22B0DFA50() | 0x8000000000000000;
    }

    else
    {
      v17 = -1 << *(v13 + 32);
      v15 = ~v17;
      v14 = v13 + 64;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v13 + 64);
      v28 = v13;
    }

    v20 = 0;
    v21 = v28;
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v22 = v20;
      v23 = v16;
      v24 = v20;
      if (!v16)
      {
        break;
      }

LABEL_14:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v21 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

      if (!v26)
      {
        return sub_22B0781A0(v28);
      }

      while (1)
      {
        os_unfair_lock_lock(v26 + 22);
        sub_22B097810(&v26[24]);
        sub_22B097390();
        sub_22B097D08(v27, a3);

        sub_22B0974C4();
        sub_22B097D20(v27, a3);

        sub_22B0975F8();
        sub_22B097F44(v27, a3);

        os_unfair_lock_unlock(v26 + 22);

        v20 = v24;
        v16 = v25;
        v21 = v28;
        if ((v28 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        if (sub_22B0DFAE0())
        {
          swift_unknownObjectRelease();
          type metadata accessor for CounterGroup();
          swift_dynamicCast();
          v26 = v29;
          v24 = v20;
          v25 = v16;
          if (v29)
          {
            continue;
          }
        }

        return sub_22B0781A0(v28);
      }
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= ((v15 + 64) >> 6))
      {
        return sub_22B0781A0(v28);
      }

      v23 = *(v14 + 8 * v24);
      ++v22;
      if (v23)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22B08D940(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (!*(v3 + 16))
  {
    return;
  }

  v7 = sub_22B0768A8(a2, a3);
  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = *(*(v3 + 56) + 8 * v7);
  v10 = OBJC_IVAR___HMMEphemeralContainerState_lock;
  v11 = *&v9[OBJC_IVAR___HMMEphemeralContainerState_lock];
  v12 = v9;
  os_unfair_lock_lock(v11 + 4);
  v13 = OBJC_IVAR___HMMEphemeralContainerState__isActive;
  v14 = v12[OBJC_IVAR___HMMEphemeralContainerState__isActive];
  os_unfair_lock_unlock(v11 + 4);
  if (v14 != 1)
  {

    return;
  }

  v15 = *&v9[v10];
  os_unfair_lock_lock(v15 + 4);
  if (v12[v13])
  {
    [*&v12[OBJC_IVAR___HMMEphemeralContainerState_uptimeProvider] uptime];
    *&v12[OBJC_IVAR___HMMEphemeralContainerState__activeDuration] = v16 - *&v12[OBJC_IVAR___HMMEphemeralContainerState__startTime] + *&v12[OBJC_IVAR___HMMEphemeralContainerState__activeDuration];
    v12[v13] = 0;
  }

  v41 = v12;
  os_unfair_lock_unlock(v15 + 4);
  v17 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v19 = ~v22;
    v18 = v17 + 64;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v17 + 64);
    v21 = *a1;
  }

  v25 = 0;
  v26 = (v19 + 64) >> 6;
  v42 = v21;
  while ((v21 & 0x8000000000000000) != 0)
  {
    if (!sub_22B0DFAE0() || (v34 = v33, swift_unknownObjectRelease(), v43[4] = v34, type metadata accessor for CounterGroup(), swift_dynamicCast(), v32 = v43[0], v30 = v25, v31 = v20, !v43[0]))
    {
LABEL_30:
      sub_22B0781A0(v42);

      return;
    }

LABEL_24:
    v44 = v31;
    os_unfair_lock_lock(v32 + 22);
    sub_22B097810(&v32[24]);
    sub_22B097390();
    swift_beginAccess();
    v36 = sub_22B09CA10(v43, a2, a3);
    if (*(v35 + 8))
    {
      *v35 = 0;
    }

    (v36)(v43, 0);
    swift_endAccess();

    sub_22B0974C4();
    swift_beginAccess();
    v38 = sub_22B09C988(v43, a2, a3);
    if (*(v37 + 8))
    {
      *v37 = 0;
    }

    (v38)(v43, 0);
    swift_endAccess();

    sub_22B0975F8();
    swift_beginAccess();
    v40 = sub_22B09C8FC(v43, a2, a3);
    if (*(v39 + 8))
    {
      *v39 = 0;
    }

    (v40)(v43, 0);
    v27 = v44;
    swift_endAccess();

    os_unfair_lock_unlock(v32 + 22);

    v25 = v30;
    v20 = v27;
    v21 = v42;
  }

  v28 = v25;
  v29 = v20;
  v30 = v25;
  if (v20)
  {
LABEL_20:
    v31 = (v29 - 1) & v29;
    v32 = *(*(v21 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

    if (!v32)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      goto LABEL_30;
    }

    v29 = *(v18 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_22B08DD64(uint64_t a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t))
{
  os_unfair_lock_lock(v3 + 20);
  a3(v3 + 22, a1, a2);

  os_unfair_lock_unlock(v3 + 20);
}

unint64_t *sub_22B08DDD0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (!*(result[1] + 16))
  {
    return result;
  }

  v5 = result;
  result = sub_22B0768A8(a2, a3);
  if ((v6 & 1) == 0)
  {
    return result;
  }

  v43 = a2;
  sub_22B080B74(0, a2, a3);
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v9 = ~v12;
    v8 = v7 + 64;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(v7 + 64);
    v11 = *v5;
  }

  v15 = 0;
  v16 = (v9 + 64) >> 6;
  v17 = v43;
  v41 = v8;
  v42 = v11;
  while ((v11 & 0x8000000000000000) != 0)
  {
    if (!sub_22B0DFAE0())
    {
      return sub_22B0781A0(v42);
    }

    swift_unknownObjectRelease();
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    v22 = v44;
    v20 = v15;
    v21 = v10;
    if (!v44)
    {
      return sub_22B0781A0(v42);
    }

LABEL_21:
    os_unfair_lock_lock(v22 + 22);
    v23 = sub_22B097390();
    v24 = qword_2813EA5B0;
    swift_beginAccess();

    sub_22B0768A8(v17, a3);
    v26 = v25;

    if (v26)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v23 + v24);
      *(v23 + v24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22B083DF4();
      }

      sub_22B0A0234();
      *(v23 + v24) = v28;
      v17 = v43;
    }

    swift_endAccess();

    v29 = sub_22B0974C4();
    v30 = qword_2813EA5B0;
    swift_beginAccess();

    sub_22B0768A8(v17, a3);
    v32 = v31;

    if (v32)
    {
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v29 + v30);
      *(v29 + v30) = 0x8000000000000000;
      if (!v33)
      {
        sub_22B083DE0();
      }

      sub_22B0A0234();
      *(v29 + v30) = v34;
      v17 = v43;
    }

    swift_endAccess();

    v35 = sub_22B0975F8();
    v36 = qword_2813EA5B0;
    swift_beginAccess();

    sub_22B0768A8(v17, a3);
    v38 = v37;

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v35 + v36);
      *(v35 + v36) = 0x8000000000000000;
      if (!v39)
      {
        sub_22B083DCC();
      }

      sub_22B0A0234();
      *(v35 + v36) = v40;
      v17 = v43;
    }

    swift_endAccess();

    os_unfair_lock_unlock(v22 + 22);

    v15 = v20;
    v10 = v21;
    v8 = v41;
    v11 = v42;
  }

  v18 = v15;
  v19 = v10;
  v20 = v15;
  if (v10)
  {
LABEL_17:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v11 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v22)
    {
      return sub_22B0781A0(v42);
    }

    goto LABEL_21;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      return sub_22B0781A0(v42);
    }

    v19 = *(v8 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CountersManager.ephemeralContainerStates.getter()
{
  os_unfair_lock_lock((v0 + 80));
  v1 = *(v0 + 96);

  os_unfair_lock_unlock((v0 + 80));
  return v1;
}

void *CountersManager.ephemeralContainerState(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 80));
  v6 = *(v2 + 96);
  if (*(v6 + 16) && (v7 = sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v3 + 20);
  return v9;
}

uint64_t sub_22B08E39C(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v47 = a5;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v54 = a1;
  os_unfair_lock_lock((v5 + 80));
  v6 = *(v5 + 88);

  v45 = v5;
  os_unfair_lock_unlock((v5 + 80));
  if ((v6 & 0xC000000000000001) != 0)
  {
    v48 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v6 + 32);
    v7 = ~v10;
    v11 = *(v6 + 64);
    v48 = v6 + 64;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v8 = v13 & v11;
    v9 = v6;
  }

  v46 = v6;

  v15 = 0;
  v44 = v7;
  v16 = (v7 + 64) >> 6;
  v49 = v9;
  v50 = v16;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  while (sub_22B0DFAE0())
  {
    v18 = v17;
    swift_unknownObjectRelease();
    v56 = v18;
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    v19 = v57;
    v20 = v15;
    v21 = v8;
    if (!v57)
    {
      break;
    }

    while (1)
    {
      os_unfair_lock_lock(v19 + 22);
      v55 = v21;
      v24 = sub_22B097390();
      v25 = qword_2813EA5B8;
      v26 = swift_beginAccess();
      MEMORY[0x28223BE20](v26);
      v27 = v54;
      v43 = v54;

      v29 = sub_22B091168(v28, v51, v42, &qword_27D8B58C0, &qword_22B0E39C8);

      *(v24 + v25) = v29;

      v30 = sub_22B0974C4();
      v31 = qword_2813EA5B8;
      v32 = swift_beginAccess();
      MEMORY[0x28223BE20](v32);
      v43 = v27;

      v34 = sub_22B091168(v33, v52, v42, &qword_27D8B58B8, &qword_22B0E39C0);

      *(v30 + v31) = v34;

      v35 = sub_22B0975F8();
      v36 = qword_2813EA5B8;
      v37 = swift_beginAccess();
      MEMORY[0x28223BE20](v37);
      v43 = v27;
      v9 = v49;

      v39 = sub_22B091168(v38, v53, v42, &qword_27D8B58B0, &qword_22B0E39B8);

      *(v35 + v36) = v39;
      v16 = v50;

      os_unfair_lock_unlock(v19 + 22);

      v15 = v20;
      v8 = v55;
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_11:
      v22 = v15;
      v23 = v8;
      v20 = v15;
      if (!v8)
      {
        while (1)
        {
          v20 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v20 >= v16)
          {
            goto LABEL_18;
          }

          v23 = *(v48 + 8 * v20);
          ++v22;
          if (v23)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        return result;
      }

LABEL_15:
      v21 = (v23 - 1) & v23;
      v19 = *(*(v9 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));

      if (!v19)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
  sub_22B0781A0(v9);
  v40 = v45[7];
  v41 = __swift_project_boxed_opaque_existential_1(v45 + 3, v45[6]);
  MEMORY[0x28223BE20](v41);
  v43 = v54;
  (*(v40 + 16))(&v57, v47);
}

uint64_t CountersManager.withCounterStoreOpen<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v9 = *(v8 + 32);
  v10 = sub_22B0DF780();
  return v9(sub_22B091394, v12, v10, v7, v8);
}

Swift::Void __swiftcall CountersManager.retainStore()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 40))(v1, v2);
}

Swift::Void __swiftcall CountersManager.releaseStore()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 48))(v1, v2);
}

Swift::Void __swiftcall CountersManager.save()()
{
  os_unfair_lock_lock((v0 + 80));
  v1 = *(v0 + 88);

  os_unfair_lock_unlock((v0 + 80));
  v11 = v1;
  v8 = sub_22B0913BC;
  v9 = &v10;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v2);
  v6[2] = sub_22B0913C4;
  v6[3] = &v7;
  v4 = *(v3 + 32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6590, &qword_22B0E3E10);
  v4(&v12, sub_22B091404, v6, v5, v2, v3);
}

uint64_t sub_22B08EA70(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_22B0DFA50() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v9 = 0;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v9;
    v11 = v3;
    v12 = v9;
    if (!v3)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v4 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_22B0781A0(v4);
    }

    while (1)
    {
      v16 = v14[6];
      v15 = v14[7];
      __swift_project_boxed_opaque_existential_1(v14 + 3, v16);
      (*(v15 + 32))(sub_22B09159C, v14, MEMORY[0x277D84F78] + 8, v16, v15);

      v9 = v12;
      v3 = v13;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22B0DFAE0())
      {
        swift_unknownObjectRelease();
        type metadata accessor for CounterGroup();
        swift_dynamicCast();
        v14 = v17;
        v12 = v9;
        v13 = v3;
        if (v17)
        {
          continue;
        }
      }

      return sub_22B0781A0(v4);
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v2 + 64) >> 6))
    {
      return sub_22B0781A0(v4);
    }

    v11 = *(v1 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B08EC74@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = 0;
  return result;
}

uint64_t CountersManager.deinit()
{
  sub_22B091448(v0 + 16);
  sub_22B09149C(v0 + 88);
  return v0;
}

uint64_t CountersManager.__deallocating_deinit()
{
  sub_22B091448(v0 + 16);
  sub_22B09149C(v0 + 88);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void sub_22B08ED1C(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;

  v10 = sub_22B0836B4(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22B085A10(v15, v6 & 1);
    v10 = sub_22B0836B4(v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5998, &qword_22B0E3E98);
    v10 = sub_22B0DFCA0();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_22B0840DC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5990, &qword_22B0E3E90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22B0DF8E0();
    MEMORY[0x231889070](0xD00000000000001BLL, 0x800000022B0E6AB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5998, &qword_22B0E3E98);
    sub_22B0DF9E0();
    MEMORY[0x231889070](39, 0xE100000000000000);
    sub_22B0DFB00();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v24 = 1;
    while (v24 < a1[2])
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v25 = *a3;

      v26 = sub_22B0836B4(v8);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_22B085A10(v30, 1);
        v26 = sub_22B0836B4(v8);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v8;
      *(v32[7] + 8 * v26) = v7;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_22B08F0A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5938, &qword_22B0E3A48);
    v2 = sub_22B0DFB40();
    v23 = v2;
    sub_22B0DFA50();
    v3 = sub_22B0DFAE0();
    if (v3)
    {
      v5 = v4;
      v6 = v3;
      type metadata accessor for NamedGroupSpecifier();
      v7 = v6;
      do
      {
        v22[0] = v7;
        swift_dynamicCast();
        v22[0] = v5;
        type metadata accessor for CounterGroup();
        swift_dynamicCast();
        v17 = *(v2 + 16);
        if (*(v2 + 24) <= v17)
        {
          sub_22B085758(v17 + 1, 1);
        }

        v8 = v22[10];
        v2 = v23;
        v9 = v22[9];
        sub_22B0DFD40();
        (*(*v8 + 112))(v22);
        result = sub_22B0DFD80();
        v11 = v2 + 64;
        v12 = -1 << *(v2 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v2 + 64 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v2 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v14 == v19;
            if (v14 == v19)
            {
              v14 = 0;
            }

            v18 |= v20;
            v21 = *(v11 + 8 * v14);
          }

          while (v21 == -1);
          v15 = __clz(__rbit64(~v21)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v2 + 48) + 8 * v15) = v8;
        *(*(v2 + 56) + 8 * v15) = v9;
        ++*(v2 + 16);
        v7 = sub_22B0DFAE0();
        v5 = v16;
      }

      while (v7);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_22B08F300(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_22B08F5DC(v7, v4, v2);
      MEMORY[0x23188A520](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_22B08F460(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_22B08F460(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 56) + 8 * v12);
    v14 = *&v13[OBJC_IVAR___HMMEphemeralContainerState_lock];

    v15 = v13;
    os_unfair_lock_lock(v14 + 4);
    v16 = v15[OBJC_IVAR___HMMEphemeralContainerState__isActive];
    os_unfair_lock_unlock(v14 + 4);

    if (v16 == 1)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22B08F6FC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22B08F5DC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_22B08F460(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22B08F654(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    v14 = sub_22B090F0C(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_22B08F6FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5928, &qword_22B0E3A38);
  result = sub_22B0DFB50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_22B0DFD40();

    v33 = v21;
    sub_22B0DF380();
    result = sub_22B0DFD80();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B08F93C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v42 = a1;
  v51 = sub_22B0DF0E0();
  v11 = *(v51 - 8);
  v12 = MEMORY[0x28223BE20](v51);
  v50 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = v39 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22B0DFB50();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v42;
  }

  v18 = 0;
  v39[1] = v11 + 16;
  v40 = result;
  v49 = v11 + 32;
  v19 = result + 64;
  v39[0] = a4;
  v41 = v11;
  v20 = v51;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v44 = (v17 - 1) & v17;
LABEL_16:
    v24 = v21 | (v18 << 6);
    v25 = a4[6];
    v48 = *(v11 + 72);
    v26 = v43;
    (*(v11 + 16))(v43, v25 + v48 * v24, v20);
    v27 = (a4[7] + 16 * v24);
    v46 = *v27;
    v28 = *(v27 + 1);
    v45 = *(v11 + 32);
    v45(v50, v26, v20);
    v16 = v40;
    sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
    v47 = v28;

    result = sub_22B0DF2A0();
    v29 = -1 << *(v16 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v11 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v19 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v11 = v41;
LABEL_26:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v45)(*(v16 + 48) + v32 * v48, v50, v51);
    v37 = *(v16 + 56) + 16 * v32;
    *v37 = v46;
    *(v37 + 8) = v47;
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v17 = v44;
    if (!a3)
    {
      return v16;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v23 = v42[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v44 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22B08FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for PersistentCoreDataCounterStorage(0);
  v12 = &off_283EECA80;
  *&v10 = a1;
  *(a4 + 80) = 0;
  v8 = MEMORY[0x277D84F98];
  *(a4 + 88) = MEMORY[0x277D84F98];
  *(a4 + 96) = v8;
  *(a4 + 16) = [objc_allocWithZone(HMMDailyPartitionProvider) initWithDateProvider_];
  sub_22B0781A8(&v10, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return a4;
}

uint64_t sub_22B08FD78(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    result = sub_22B0DFA80();
    if (result == *(a4 + 36))
    {
      sub_22B0DFA90();
      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      sub_22B083628(v8);
      v6 = v5;

      if (v6)
      {
        sub_22B0DFA60();
        v7 = sub_22B0DFAB0();
        swift_unknownObjectRelease();
        return v7;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return sub_22B0DF800();
}

uint64_t *sub_22B08FED0(uint64_t *result, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_22B0DFA80();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_22B0DFA90();
      type metadata accessor for NamedGroupSpecifier();
      swift_dynamicCast();
      a2 = sub_22B083628(v12);
      v10 = v9;

      if (v10)
      {
LABEL_12:
        v11 = *(a5 + 56);
        v8 = *(*(a5 + 48) + 8 * a2);
        *v7 = *(v11 + 8 * a2);

        return v8;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B0DFAC0();
    type metadata accessor for NamedGroupSpecifier();
    swift_dynamicCast();
    v8 = v12;
    type metadata accessor for CounterGroup();
    swift_dynamicCast();
    *v7 = v12;
    return v8;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22B090088@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22B09010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v15 = (a6)(0, a2, a3, a4, a5);
  v16 = a7;
  *&v14 = a1;
  *(a4 + 80) = 0;
  v12 = MEMORY[0x277D84F98];
  *(a4 + 88) = MEMORY[0x277D84F98];
  *(a4 + 96) = v12;
  *(a4 + 16) = [objc_allocWithZone(HMMDailyPartitionProvider) initWithDateProvider_];
  sub_22B0781A8(&v14, a4 + 24);
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return a4;
}

uint64_t sub_22B0901E4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 40))(v4, v5, v6);
  *a2 = 0;
  return result;
}

uint64_t sub_22B090270(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_97;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v111 = MEMORY[0x277D84F90];
    sub_22B0DF960();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v102 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v95 = isUniquelyReferenced_nonNull_native + 32;
      v96 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v98 = isUniquelyReferenced_nonNull_native;
      v99 = a3;
      v97 = v6;
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_94;
        }

        if (v102)
        {
          v13 = MEMORY[0x2318895C0]();
        }

        else
        {
          if (v8 >= *(v96 + 16))
          {
            goto LABEL_96;
          }

          v13 = *(v95 + 8 * v8);
        }

        v14 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {

          v15 = sub_22B0DFAD0();

          if (!v15)
          {
            goto LABEL_21;
          }

          v109[0] = v15;
          type metadata accessor for CounterGroup();
          swift_dynamicCast();
          if (!v110[0])
          {
            goto LABEL_21;
          }
        }

        else if (!*(v14 + 16) || (v16 = sub_22B083628(v13), (v17 & 1) == 0) || (v18 = *(*(v14 + 56) + 8 * v16), , !v18))
        {
LABEL_21:
          v104 = v9;
          sub_22B0915C4(a2 + 16, v110);
          type metadata accessor for CounterGroup();
          v19 = swift_allocObject();
          sub_22B0915C4(v110, v19 + 16);
          *(v19 + 80) = v13;
          v103 = v13;

          swift_unownedRetain();
          *(v19 + 88) = 0;
          v20 = (v19 + 88);
          *(v19 + 96) = 0u;
          *(v19 + 112) = 0u;
          *(v19 + 128) = MEMORY[0x277D84F98];
          os_unfair_lock_lock((v19 + 88));
          v108 = v19 + 96;
          *(v19 + 96) = v19;

          v106 = v19;
          swift_unownedRetain();
          swift_unownedRelease();
          os_unfair_lock_unlock((v19 + 88));
          v21 = *(a4 + 16);
          if (v21)
          {
            v22 = (a4 + 40);
            lock = (v19 + 88);
            while (1)
            {
              v25 = *(v22 - 1);
              v24 = *v22;

              os_unfair_lock_lock(v20);
              sub_22B097810(v108);
              a3 = sub_22B097390();
              v26 = qword_2813EA5B0;
              swift_beginAccess();
              v107 = v21;
              if (!*(*(a3 + v26) + 16))
              {
                break;
              }

              sub_22B0768A8(v25, v24);
              if ((v27 & 1) == 0)
              {
                break;
              }

              swift_endAccess();
              if (qword_2813E9AA8 != -1)
              {
                swift_once();
              }

              v28 = sub_22B0DF1B0();
              __swift_project_value_buffer(v28, qword_2813EBE90);

              v29 = sub_22B0DF190();
              v30 = sub_22B0DF690();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                v109[0] = v32;
                *v31 = 136315138;
                *(v31 + 4) = sub_22B07B428(v25, v24, v109);
                _os_log_impl(&dword_22B074000, v29, v30, "Ephemeral container already exists: %s", v31, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v32);
                MEMORY[0x23188A520](v32, -1, -1);
                MEMORY[0x23188A520](v31, -1, -1);
              }

LABEL_45:
              a3 = sub_22B0974C4();
              v49 = qword_2813EA5B0;
              swift_beginAccess();
              if (!*(*(a3 + v49) + 16) || (sub_22B0768A8(v25, v24), (v50 & 1) == 0))
              {
                swift_endAccess();
                swift_beginAccess();

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v56 = *(a3 + v49);
                *(a3 + v49) = 0x8000000000000000;
                v57 = sub_22B0768A8(v25, v24);
                v59 = v56[2];
                v60 = (v58 & 1) == 0;
                v47 = __OFADD__(v59, v60);
                v61 = v59 + v60;
                if (v47)
                {
                  goto LABEL_89;
                }

                v62 = v58;
                if (v56[3] >= v61)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_57;
                  }

                  v66 = v57;
                  sub_22B083DE0();
                  v57 = v66;
                  v64 = v56;
                  if ((v62 & 1) == 0)
                  {
                    goto LABEL_60;
                  }

LABEL_58:
                  v65 = v64[7] + 16 * v57;
                  *v65 = 1;
                  *(v65 + 8) = MEMORY[0x277D84F98];
                }

                else
                {
                  sub_22B085470(v61, isUniquelyReferenced_nonNull_native);
                  v57 = sub_22B0768A8(v25, v24);
                  if ((v62 & 1) != (v63 & 1))
                  {
                    goto LABEL_99;
                  }

LABEL_57:
                  v64 = v56;
                  if (v62)
                  {
                    goto LABEL_58;
                  }

LABEL_60:
                  v64[(v57 >> 6) + 8] |= 1 << v57;
                  v67 = (v64[6] + 16 * v57);
                  *v67 = v25;
                  v67[1] = v24;
                  v68 = v64[7] + 16 * v57;
                  *v68 = 1;
                  *(v68 + 8) = MEMORY[0x277D84F98];
                  v69 = v64[2];
                  v47 = __OFADD__(v69, 1);
                  v70 = v69 + 1;
                  if (v47)
                  {
                    goto LABEL_92;
                  }

                  v64[2] = v70;
                }

                *(a3 + v49) = v64;
                swift_endAccess();

                goto LABEL_63;
              }

              swift_endAccess();
              if (qword_2813E9AA8 != -1)
              {
                swift_once();
              }

              v51 = sub_22B0DF1B0();
              __swift_project_value_buffer(v51, qword_2813EBE90);

              v52 = sub_22B0DF190();
              v53 = sub_22B0DF690();

              if (os_log_type_enabled(v52, v53))
              {
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                v109[0] = v55;
                *v54 = 136315138;
                *(v54 + 4) = sub_22B07B428(v25, v24, v109);
                _os_log_impl(&dword_22B074000, v52, v53, "Ephemeral container already exists: %s", v54, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v55);
                MEMORY[0x23188A520](v55, -1, -1);
                MEMORY[0x23188A520](v54, -1, -1);
              }

LABEL_63:
              a3 = sub_22B0975F8();
              v71 = qword_2813EA5B0;
              swift_beginAccess();
              if (*(*(a3 + v71) + 16))
              {
                sub_22B0768A8(v25, v24);
                if (v72)
                {
                  swift_endAccess();
                  if (qword_2813E9AA8 != -1)
                  {
                    swift_once();
                  }

                  v73 = sub_22B0DF1B0();
                  __swift_project_value_buffer(v73, qword_2813EBE90);

                  v74 = sub_22B0DF190();
                  v75 = sub_22B0DF690();

                  if (os_log_type_enabled(v74, v75))
                  {
                    v76 = swift_slowAlloc();
                    v77 = swift_slowAlloc();
                    v109[0] = v77;
                    *v76 = 136315138;
                    *(v76 + 4) = sub_22B07B428(v25, v24, v109);
                    _os_log_impl(&dword_22B074000, v74, v75, "Ephemeral container already exists: %s", v76, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v77);
                    MEMORY[0x23188A520](v77, -1, -1);
                    MEMORY[0x23188A520](v76, -1, -1);
                  }

                  goto LABEL_25;
                }
              }

              swift_endAccess();
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v78 = *(a3 + v71);
              *(a3 + v71) = 0x8000000000000000;
              v79 = sub_22B0768A8(v25, v24);
              v81 = v78[2];
              v82 = (v80 & 1) == 0;
              v47 = __OFADD__(v81, v82);
              v83 = v81 + v82;
              if (v47)
              {
                goto LABEL_90;
              }

              v84 = v80;
              if (v78[3] < v83)
              {
                sub_22B08545C(v83, isUniquelyReferenced_nonNull_native);
                v79 = sub_22B0768A8(v25, v24);
                if ((v84 & 1) != (v85 & 1))
                {
                  goto LABEL_99;
                }

LABEL_75:
                v86 = v78;
                if ((v84 & 1) == 0)
                {
                  goto LABEL_76;
                }

                goto LABEL_23;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_75;
              }

              v91 = v79;
              sub_22B083DCC();
              v79 = v91;
              v86 = v78;
              if ((v84 & 1) == 0)
              {
LABEL_76:
                v86[(v79 >> 6) + 8] |= 1 << v79;
                v87 = (v86[6] + 16 * v79);
                *v87 = v25;
                v87[1] = v24;
                v88 = v86[7] + 16 * v79;
                *v88 = 1;
                *(v88 + 8) = MEMORY[0x277D84F98];
                v89 = v86[2];
                v47 = __OFADD__(v89, 1);
                v90 = v89 + 1;
                if (v47)
                {
                  goto LABEL_93;
                }

                v86[2] = v90;
                goto LABEL_24;
              }

LABEL_23:
              v23 = v86[7] + 16 * v79;
              *v23 = 1;
              *(v23 + 8) = MEMORY[0x277D84F98];

LABEL_24:
              *(a3 + v71) = v86;
              swift_endAccess();

LABEL_25:
              v20 = lock;
              os_unfair_lock_unlock(lock);
              v22 += 2;
              v21 = v107 - 1;
              if (v107 == 1)
              {
                goto LABEL_80;
              }
            }

            swift_endAccess();
            swift_beginAccess();

            v33 = swift_isUniquelyReferenced_nonNull_native();
            v34 = *(a3 + v26);
            *(a3 + v26) = 0x8000000000000000;
            isUniquelyReferenced_nonNull_native = sub_22B0768A8(v25, v24);
            v36 = v34[2];
            v37 = (v35 & 1) == 0;
            v38 = v36 + v37;
            if (__OFADD__(v36, v37))
            {
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              v6 = sub_22B0DF830();
              goto LABEL_3;
            }

            v39 = v35;
            if (v34[3] >= v38)
            {
              if (v33)
              {
                v42 = v34;
                if ((v35 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                sub_22B083DF4();
                v42 = v34;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }
            }

            else
            {
              sub_22B085484(v38, v33);
              v40 = sub_22B0768A8(v25, v24);
              if ((v39 & 1) != (v41 & 1))
              {
                goto LABEL_99;
              }

              isUniquelyReferenced_nonNull_native = v40;
              v42 = v34;
              if ((v39 & 1) == 0)
              {
LABEL_42:
                v42[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
                v44 = (v42[6] + 16 * isUniquelyReferenced_nonNull_native);
                *v44 = v25;
                v44[1] = v24;
                v45 = v42[7] + 16 * isUniquelyReferenced_nonNull_native;
                *v45 = 1;
                *(v45 + 8) = MEMORY[0x277D84F98];
                v46 = v42[2];
                v47 = __OFADD__(v46, 1);
                v48 = v46 + 1;
                if (v47)
                {
                  goto LABEL_91;
                }

                v42[2] = v48;
                goto LABEL_44;
              }
            }

            v43 = v42[7] + 16 * isUniquelyReferenced_nonNull_native;
            *v43 = 1;
            *(v43 + 8) = MEMORY[0x277D84F98];

LABEL_44:
            *(a3 + v26) = v42;
            swift_endAccess();

            goto LABEL_45;
          }

LABEL_80:
          sub_22B091448(v110);
          a3 = v99;
          v92 = *v99;
          if ((*v99 & 0xC000000000000001) != 0)
          {
            if (v92 < 0)
            {
              v93 = *v99;
            }

            else
            {
              v93 = v92 & 0xFFFFFFFFFFFFFF8;
            }

            v94 = sub_22B0DF830();
            v6 = v97;
            isUniquelyReferenced_nonNull_native = v98;
            v10 = v103;
            v9 = v104;
            v11 = v106;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_95;
            }

            *v99 = sub_22B08F0A4(v93, v94 + 1);
          }

          else
          {
            v6 = v97;
            isUniquelyReferenced_nonNull_native = v98;
            v10 = v103;
            v9 = v104;
            v11 = v106;
          }

          v12 = swift_isUniquelyReferenced_nonNull_native();
          v110[0] = *v99;
          sub_22B087D18(v11, v10, v12);
          *v99 = v110[0];
        }

        sub_22B0DF940();
        sub_22B0DF970();
        sub_22B0DF980();
        sub_22B0DF950();
        v8 = v9;
        if (v9 == v6)
        {
          return v111;
        }
      }
    }

    __break(1u);
LABEL_99:
    result = sub_22B0DFCA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B090E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = sub_22B0DF0E0();
  v9 = sub_22B076420(&qword_2813EAD78, MEMORY[0x277CC9590]);
  return a4(a1, v7, v8, v9) & 1;
}

uint64_t sub_22B090F0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v31 = a6;
  v32 = a7;
  v33 = a1;
  v41 = a4;
  v30 = a2;
  v40 = sub_22B0DF0E0();
  result = MEMORY[0x28223BE20](v40);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  v11 = 0;
  v42 = a3;
  v12 = *(a3 + 64);
  v34 = 0;
  v35 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v36 = v9 + 8;
  v37 = v9 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v42;
    v23 = v38;
    v22 = v39;
    v24 = v40;
    (*(v39 + 16))(v38, v42[6] + *(v39 + 72) * v20, v40);
    v25 = v20;
    v26 = (v21[7] + 16 * v20);
    v27 = *v26;
    v28 = *(v26 + 1);

    LOBYTE(v20) = v41(v23, v27, v28);

    result = (*(v22 + 8))(v23, v24);
    v15 = v43;
    if (v20)
    {
      *(v33 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_22B08F93C(v33, v30, v34, v42, v31, v32);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return sub_22B08F93C(v33, v30, v34, v42, v31, v32);
    }

    v19 = *(v35 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22B091168(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v14 = v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v14, v13);
    result = sub_22B090F0C(v14, v12, v10, a2, a3, a4, a5);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_22B08F654(v16, v12, v10, a2, a3, a4, a5);
  result = MEMORY[0x23188A520](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t sub_22B091308@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 48))(v4, v5, v6);
  *a2 = 0;
  return result;
}

uint64_t sub_22B0913C4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

void *sub_22B091404@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22B091508(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22B091550(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22B0915B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22B091620@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 24))(v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t sub_22B0916BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B091768(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_22B0DFAD0();

    if (v2)
    {
      type metadata accessor for CounterGroup();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_22B083628(a1);
    if (v4)
    {
    }
  }

  return 0;
}

unint64_t sub_22B09181C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_22B083720(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 24 * result;
    v7 = *v6;
    v8 = *(v6 + 8);
    LOBYTE(v6) = *(v6 + 16);
    *a3 = v7;
    *(a3 + 8) = v8;
    *(a3 + 16) = v6;

    return sub_22B08045C(v7, v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

uint64_t sub_22B091894(char a1)
{
  switch(a1)
  {
    case 3:
      return type metadata accessor for AccessoryGroupSpecifier(0);
    case 2:
      return type metadata accessor for HomeGroupSpecifier(0);
    case 1:
      return type metadata accessor for NamedGroupSpecifier();
  }

  return 0;
}

uint64_t sub_22B0918F8(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_22B091908(uint64_t a1)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 112);
  os_unfair_lock_lock(v4);
  sub_22B0919E8((v4 + 8), a1, &v7);
  type metadata accessor for FlatFileCounterStore.State(0, *(v3 + 80), *(v3 + 88), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5680, &unk_22B0E3F60);
  j__os_unfair_lock_unlock(v4);
  return v7;
}

uint64_t sub_22B0919E8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(a1 + 1);
  result = sub_22B093924(*a1);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*(v6 + 16) && (v8 = sub_22B07639C(a3), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);

    v11 = v10[2];
    if (!v11)
    {
LABEL_5:

LABEL_6:
      v12 = MEMORY[0x277D84F90];
LABEL_9:
      *a4 = v12;
      return result;
    }
  }

  else
  {
    v10 = sub_22B091B14(a3);
    v11 = v10[2];
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v12 = sub_22B083484(v11, 0);
  v13 = sub_22B093064(&v14, v12 + 4, v11, v10);
  result = sub_22B0781A0(v14);
  if (v13 == v11)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void *sub_22B091B14(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22B0DF0E0();
  MEMORY[0x28223BE20](v4);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  v7 = (*(v5 + 24))(a1, v6, v5);
  v9 = v8;
  v11 = sub_22B093ACC(v7, v8, a1, v6, v5);
  sub_22B080408(v7, v9);
  return v11;
}

uint64_t sub_22B091E9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3 + *(*v3 + 112);
  os_unfair_lock_lock(v8);
  sub_22B091F90((v8 + 8), a3, a2, a1, &v11);
  type metadata accessor for FlatFileCounterStore.State(0, *(v7 + 80), *(v7 + 88), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59B8, &qword_22B0E3F88);
  j__os_unfair_lock_unlock(v8);
  return v11;
}

uint64_t sub_22B091F90@<X0>(unsigned __int8 *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 1);
  result = sub_22B093924(*a1);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v10 + 16))
  {
    v12 = sub_22B07639C(a3);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);

      if (!v14[2])
      {
        goto LABEL_9;
      }

LABEL_7:
      v15 = sub_22B083628(a4);
      if (v16)
      {
        v17 = *(v14[7] + 8 * v15);

        sub_22B09181C(a5, v17, a6);
      }

      goto LABEL_9;
    }
  }

  v14 = sub_22B091B14(a3);
  if (v14[2])
  {
    goto LABEL_7;
  }

LABEL_9:

LABEL_10:
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 2;
  return result;
}

void sub_22B0920C0(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v13 = *v6;
  v14 = (v6 + *(*v6 + 112));
  os_unfair_lock_lock(v14);
  sub_22B0921CC(&v14[2], v6, a6, a5, v9, a1, a2, a3 & 1);
  type metadata accessor for FlatFileCounterStore.State(0, *(v13 + 80), *(v13 + 88), v15);

  j__os_unfair_lock_unlock(v14);
}

uint64_t sub_22B0921CC(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unint64_t a7, int a8)
{
  v66 = a8;
  v67 = a5;
  v70 = a6;
  v71 = a7;
  v69 = a4;
  v73 = a3;
  v11 = *a2;
  v72 = sub_22B0DF0E0();
  v12 = *(v72 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v72);
  v65 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v68 = v58 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v58 - v17;
  v19 = *a1;
  v64 = a1 + 16;
  v20 = *(v11 + 80);
  v21 = *(v11 + 88);
  result = sub_22B093924(v19);
  if ((result & 1) == 0)
  {
    return result;
  }

  v23 = *(v12 + 16);
  v24 = v73;
  v63 = v12 + 16;
  v61 = v8;
  v62 = v23;
  v23(v18, v73, v72);
  v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v20;
  *(v26 + 3) = v21;
  *(v26 + 4) = a2;
  v59 = v12;
  v27 = *(v12 + 32);
  v28 = v72;
  v27(&v26[v25], v18, v72);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22B0948BC;
  *(v29 + 24) = v26;
  v60 = v26;

  sub_22B08045C(v70, v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(a1 + 8);
  v31 = v74;
  v33 = sub_22B07639C(v24);
  v34 = v31[2];
  v35 = (v32 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v18) = v32;
  v24 = v28;
  v58[1] = v29;
  if (v31[3] >= v36)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  sub_22B08639C(v36, isUniquelyReferenced_nonNull_native);
  v31 = v74;
  v37 = v73;
  v38 = sub_22B07639C(v73);
  if ((v18 & 1) != (v39 & 1))
  {
    sub_22B0DFCA0();
    __break(1u);
    goto LABEL_24;
  }

  v33 = v38;
  *(a1 + 8) = v31;
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v42 = v31[7];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v42 + 8 * v33);
    v43 = v74;
    *(v42 + 8 * v33) = 0x8000000000000000;
    a1 = sub_22B083628(v69);
    v45 = v43[2];
    v46 = (v44 & 1) == 0;
    v47 = v45 + v46;
    if (!__OFADD__(v45, v46))
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    sub_22B084518();
    v31 = v74;
LABEL_8:
    v37 = v73;
    *(a1 + 8) = v31;
    if ((v18 & 1) == 0)
    {
LABEL_9:
      v40 = sub_22B0948BC();
      v41 = v68;
      v62(v68, v37, v24);
      sub_22B0888E0(v33, v41, v40, v31);
    }
  }

  v48 = v44;
  if (v43[3] >= v47)
  {
    if ((v18 & 1) == 0)
    {
      sub_22B084240();
      v43 = v74;
    }

    goto LABEL_16;
  }

  sub_22B085E2C(v47, v18);
  v43 = v74;
  v49 = sub_22B083628(v69);
  if ((v48 & 1) != (v50 & 1))
  {
LABEL_24:
    type metadata accessor for NamedGroupSpecifier();
    result = sub_22B0DFCA0();
    __break(1u);
    return result;
  }

  a1 = v49;
LABEL_16:
  v51 = v59;
  *(v42 + 8 * v33) = v43;

  v52 = *(v42 + 8 * v33);
  if ((v48 & 1) == 0)
  {
    v53 = sub_22B093804(MEMORY[0x277D84F90]);
    sub_22B08889C(a1, v69, v53, v52);
  }

  v54 = v52[7];
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v54 + 8 * a1);
  *(v54 + 8 * a1) = 0x8000000000000000;
  sub_22B087E8C(v70, v71, v66 & 1, v67, v55);
  *(v54 + 8 * a1) = v74;
  v56 = v65;
  v62(v65, v73, v24);
  v57 = v68;
  sub_22B0AA93C(v68, v56);
  (*(v51 + 8))(v57, v24);
}

unint64_t sub_22B092688@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B093804(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

char *sub_22B0926B8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  (*(*(v3 - 8) + 8))(&v1[v2[12]], v3);

  type metadata accessor for FlatFileCounterStore.State(255, v3, v2[11], v4);
  v5 = sub_22B0DF180();
  sub_22B0A67A4(v5);
  return v1;
}

uint64_t sub_22B0927A8()
{
  sub_22B0926B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B092830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B092880(uint64_t a1, int a2)
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

uint64_t sub_22B0928C8(uint64_t result, int a2, int a3)
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

void *sub_22B092920()
{
  v1 = v0;
  v2 = sub_22B0DEF80();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(v7 + 24);
    }
  }

  else
  {
    v10 = BYTE6(v8);
    if (v9)
    {
      v10 = v7 >> 32;
    }
  }

  v11 = v1[4];
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 < 1)
  {
    sub_22B0804B0();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 2;
    swift_willThrow();
    return v1;
  }

  if (__OFADD__(v11, 1))
  {
    goto LABEL_18;
  }

  if (v11 + 1 < v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_22B08045C(v1[2], v1[3]);
  v14 = sub_22B0DEF40();
  v16 = v15;
  result = sub_22B080408(v7, v8);
  v17 = v1[4];
  v12 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (!v12)
  {
    v1[4] = v18;
    sub_22B08045C(v14, v16);
    sub_22B0DEF90();
    sub_22B094874(&unk_2813EAD90, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    v20 = 0;
    do
    {
      v1 = v20;
      sub_22B0DF790();
      v20 = v22;
    }

    while (v23 != 1);
    sub_22B080408(v14, v16);
    (*(v3 + 8))(v6, v2);
    return v1;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22B092B9C()
{
  v1 = v0;
  v2 = sub_22B0DEF80();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(v7 + 24);
    }
  }

  else
  {
    v10 = BYTE6(v8);
    if (v9)
    {
      v10 = v7 >> 32;
    }
  }

  v11 = v1[4];
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < 4)
  {
    sub_22B0804B0();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 2;
    swift_willThrow();
    return v1;
  }

  if (__OFADD__(v11, 4))
  {
    goto LABEL_20;
  }

  if (v11 + 4 < v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_22B08045C(v1[2], v1[3]);
  v15 = sub_22B0DEF40();
  v17 = v16;
  result = sub_22B080408(v7, v8);
  v18 = v1[4];
  v12 = __OFADD__(v18, 4);
  v19 = v18 + 4;
  if (!v12)
  {
    v1[4] = v19;
    sub_22B08045C(v15, v17);
    sub_22B0DEF90();
    sub_22B094874(&unk_2813EAD90, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    sub_22B0DF790();
    if (v22)
    {
      v1 = 0;
    }

    else
    {
      LODWORD(v1) = 0;
      do
      {
        v1 = (v21 | (v1 << 8));
        sub_22B0DF790();
      }

      while (v22 != 1);
    }

    sub_22B080408(v15, v17);
    (*(v3 + 8))(v6, v2);
    return v1;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *sub_22B092E38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_22B0DF820();
  type metadata accessor for NamedGroupSpecifier();
  sub_22B094874(&qword_27D8B59B0, type metadata accessor for NamedGroupSpecifier, &unk_22B0E4084);
  result = sub_22B0DF610();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_22B0DF850())
    {
      goto LABEL_29;
    }

    type metadata accessor for NamedGroupSpecifier();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_22B093064(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B0931B8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22B093310(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22B093468(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22B0DF0E0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_22B09370C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5890, &qword_22B0E3F80);
    v3 = sub_22B0DFB50();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_22B083628(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22B093804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B58A0, &qword_22B0E39A8);
  v3 = sub_22B0DFB50();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_22B083720(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v11 = v3[7] + 24 * result;
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7 & 1;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    sub_22B08045C(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 24);
    v5 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_22B083720(v4);
    v10 += 32;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B093924(char a1)
{
  if (a1)
  {
    return a1 & 1;
  }

  if (!HMFIsInternalBuild())
  {
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v2 = sub_22B0DF1B0();
    __swift_project_value_buffer(v2, qword_2813EBE90);
    v3 = sub_22B0DF190();
    v4 = sub_22B0DF690();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B074000, v3, v4, "FlatFileCounterStore isn't open", v5, 2u);
      MEMORY[0x23188A520](v5, -1, -1);
    }

    return a1 & 1;
  }

  result = sub_22B0DFB00();
  __break(1u);
  return result;
}

uint64_t sub_22B093A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5660, &qword_22B0E54A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22B093ACC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v108 = a5;
  v9 = sub_22B0DF0E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v103 = (&v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v97 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v105 = &v97 - v17;
  MEMORY[0x28223BE20](v16);
  v104 = &v97 - v18;
  v106 = sub_22B09370C(MEMORY[0x277D84F90]);
  type metadata accessor for InputDataStream();
  inited = swift_initStackObject();
  inited[2] = a1;
  inited[3] = a2;
  sub_22B08045C(a1, a2);
  sub_22B08045C(a1, a2);
  sub_22B080408(0, 0xC000000000000000);
  v20 = a2 >> 62;
  v102 = v15;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + 16);
      sub_22B080408(a1, a2);
      goto LABEL_7;
    }

LABEL_6:
    sub_22B080408(a1, a2);
    v21 = 0;
    goto LABEL_7;
  }

  if (!v20)
  {
    goto LABEL_6;
  }

  sub_22B080408(a1, a2);
  v21 = a1;
LABEL_7:
  inited[4] = v21;
  sub_22B0DEDE0();
  swift_allocObject();
  v107 = sub_22B0DEDD0();
  v22 = inited;
  v23 = sub_22B092B9C();
  if (v5)
  {

    swift_setDeallocating();
    sub_22B080408(inited[2], inited[3]);

    sub_22B094864(0, 0);
    return v22;
  }

  v25 = v23;
  v99 = a3;
  v100 = v9;
  v98 = v10;
  v26 = 0;
  v27 = 0;
LABEL_11:
  v101 = v27;
  while (1)
  {
    v28 = sub_22B0918F8(v25);
    if (v28 - 1 >= 3)
    {
      if (v28 - 4 >= 3)
      {
        v65 = v99;
        if (v28)
        {

          if (qword_2813E9AA8 != -1)
          {
            swift_once();
          }

          v67 = sub_22B0DF1B0();
          __swift_project_value_buffer(v67, qword_2813EBE90);
          v68 = v98;
          v69 = v103;
          v70 = v100;
          (*(v98 + 16))(v103, v65, v100);
          v71 = sub_22B0DF190();
          v72 = sub_22B0DF690();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v108 = inited;
            v74 = v73;
            v106 = swift_slowAlloc();
            v110[0] = v106;
            *v74 = 136315394;
            sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            LODWORD(v105) = v72;
            v75 = sub_22B0DFC20();
            v76 = v69;
            v78 = v77;
            (*(v68 + 8))(v76, v70);
            v79 = sub_22B07B428(v75, v78, v110);

            *(v74 + 4) = v79;
            *(v74 + 12) = 1024;
            *(v74 + 14) = v25;
            _os_log_impl(&dword_22B074000, v71, v105, "Invalid block type for %s: %d", v74, 0x12u);
            v80 = v106;
            __swift_destroy_boxed_opaque_existential_0(v106);
            MEMORY[0x23188A520](v80, -1, -1);
            v81 = v74;
            inited = v108;
            MEMORY[0x23188A520](v81, -1, -1);
          }

          else
          {

            (*(v68 + 8))(v69, v70);
          }

          v66 = v101;
          v22 = sub_22B09370C(MEMORY[0x277D84F90]);

          v107 = v26;
        }

        else
        {

          v107 = v26;
          v66 = v101;
          v22 = v106;
        }

        goto LABEL_42;
      }

      if (!v26)
      {

        if (qword_2813E9AA8 != -1)
        {
          swift_once();
        }

        v82 = sub_22B0DF1B0();
        __swift_project_value_buffer(v82, qword_2813EBE90);
        v83 = v98;
        v84 = v102;
        v85 = v100;
        (*(v98 + 16))(v102, v99, v100);
        v86 = sub_22B0DF190();
        v87 = sub_22B0DF690();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = v84;
          v108 = swift_slowAlloc();
          v110[0] = v108;
          *v88 = 136315138;
          sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v90 = sub_22B0DFC20();
          v91 = v83;
          v92 = inited;
          v94 = v93;
          (*(v91 + 8))(v89, v85);
          v95 = sub_22B07B428(v90, v94, v110);
          inited = v92;

          *(v88 + 4) = v95;
          _os_log_impl(&dword_22B074000, v86, v87, "CounterSet data provided before group specifier for %s", v88, 0xCu);
          v96 = v108;
          __swift_destroy_boxed_opaque_existential_0(v108);
          MEMORY[0x23188A520](v96, -1, -1);
          MEMORY[0x23188A520](v88, -1, -1);
        }

        else
        {

          (*(v83 + 8))(v84, v85);
        }

        v66 = v101;
        v22 = sub_22B09370C(MEMORY[0x277D84F90]);
        goto LABEL_42;
      }

      v29 = inited;
      v110[0] = sub_22B094924();
      v110[1] = v34;
      v111 = v35 & 1;
      v112 = v28 - 4;
      sub_22B094864(v101, 0);
      v36 = v106;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v36;
      v33 = sub_22B083628(v26);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        __break(1u);
        goto LABEL_56;
      }

      v41 = v37;
      if (v36[3] >= v40)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          inited = v29;
          if (v37)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_22B084240();
          v106 = v109;
          inited = v29;
          if (v41)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        sub_22B085E2C(v40, isUniquelyReferenced_nonNull_native);
        type metadata accessor for NamedGroupSpecifier();
        v106 = v109;
        v42 = sub_22B083628(v26);
        if ((v41 & 1) != (v43 & 1))
        {
          result = sub_22B0DFCA0();
          __break(1u);
          return result;
        }

        v33 = v42;
        inited = v29;
        if (v41)
        {
LABEL_26:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59A8, &unk_22B0E3F70);
          sub_22B0DF290();

          v25 = sub_22B092B9C();
          v27 = sub_22B092688;
          goto LABEL_11;
        }
      }

      v44 = sub_22B093804(MEMORY[0x277D84F90]);
      sub_22B08889C(v33, v26, v44, v106);

      goto LABEL_26;
    }

    v29 = inited;
    v25 = sub_22B094924();
    isUniquelyReferenced_nonNull_native = v30;
    LOBYTE(v33) = v32;
    if ((v32 & 1) == 0)
    {
      break;
    }

    if (!sub_22B091894(v28))
    {

      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v57 = sub_22B0DF1B0();
      __swift_project_value_buffer(v57, qword_2813EBE90);
      v58 = v98;
      v59 = v104;
      (*(v98 + 16))(v104, v99, v100);
      v60 = sub_22B0DF190();
      LODWORD(v108) = sub_22B0DF690();
      if (os_log_type_enabled(v60, v108))
      {
        v106 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v110[0] = v105;
        *v106 = 136315394;
        sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v103 = v60;
        v61 = v100;
        v102 = sub_22B0DFC20();
        v63 = v62;
        (*(v58 + 8))(v104, v61);
        v64 = sub_22B07B428(v102, v63, v110);

        v54 = v106;
        *(v106 + 4) = v64;
        WORD2(v54[1].isa) = 1024;
        *(&v54[1].isa + 6) = v28;
        v55 = v103;
        _os_log_impl(&dword_22B074000, v103, v108, "Unsupported specifier type for %s: %d", v54, 0x12u);
        v56 = v105;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x23188A520](v56, -1, -1);
        MEMORY[0x23188A520](v54, -1, -1);
      }

      else
      {

        (*(v58 + 8))(v59, v100);
      }

      goto LABEL_41;
    }

    type metadata accessor for NamedGroupSpecifier();
    sub_22B094874(&qword_2813EA2C0, type metadata accessor for NamedGroupSpecifier, &unk_22B0E40EC);
    sub_22B0DEDC0();

    sub_22B080408(v25, isUniquelyReferenced_nonNull_native);
    v26 = v110[0];
    inited = v29;
    v25 = sub_22B092B9C();
  }

  if (qword_2813E9AA8 != -1)
  {
LABEL_56:
    swift_once();
  }

  v45 = sub_22B0DF1B0();
  __swift_project_value_buffer(v45, qword_2813EBE90);
  v46 = v98;
  v47 = v100;
  (*(v98 + 16))(v105, v99, v100);
  v48 = sub_22B0DF190();
  LODWORD(v108) = sub_22B0DF690();
  if (os_log_type_enabled(v48, v108))
  {
    LODWORD(v106) = v33 & 1;
    v49 = swift_slowAlloc();
    v103 = v49;
    v104 = swift_slowAlloc();
    v110[0] = v104;
    LODWORD(v49->isa) = 136315394;
    sub_22B094874(&qword_2813EAD68, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v102 = v48;
    v50 = v105;
    v99 = sub_22B0DFC20();
    v52 = v51;
    (*(v46 + 8))(v50, v47);
    v53 = sub_22B07B428(v99, v52, v110);

    v55 = v102;
    v54 = v103;
    *(&v103->isa + 4) = v53;
    WORD2(v54[1].isa) = 256;
    BYTE6(v54[1].isa) = v106;
    _os_log_impl(&dword_22B074000, v55, v108, "Unsupported encoding for named group specifier for %s: %hhu", v54, 0xFu);
    v56 = v104;
    goto LABEL_36;
  }

  (*(v46 + 8))(v105, v47);
LABEL_41:
  v66 = v101;
  v22 = sub_22B09370C(MEMORY[0x277D84F90]);

  sub_22B080408(v25, isUniquelyReferenced_nonNull_native);
  inited = v29;
LABEL_42:

  swift_setDeallocating();
  sub_22B080408(inited[2], inited[3]);
  sub_22B094864(v66, 0);
  return v22;
}

uint64_t sub_22B094864(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B094874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22B094924()
{
  result = sub_22B092908();
  if (v1)
  {
    return v0;
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = *(v0 + 32);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = result;
  if (v10 < result)
  {
    v0 = 0;
LABEL_12:
    sub_22B0804B0();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = v0;
    swift_willThrow();
    return v0;
  }

  result = sub_22B092920();
  if (result > 1u)
  {
    v11 = result;
    v0 = 1;
    goto LABEL_12;
  }

  v13 = v11 - 1;
  v14 = *(v0 + 32);
  v15 = v14 + v13;
  if (__OFADD__(v14, v13))
  {
    goto LABEL_21;
  }

  if (v15 >= v14)
  {
    *(v0 + 32) = v15;
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    sub_22B08045C(v16, v17);
    v0 = sub_22B0DEF70();
    sub_22B080408(v16, v17);
    return v0;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22B094A94()
{
  sub_22B080408(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_22B094AF0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B59C0, &unk_22B0E4118);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB3C();
  sub_22B0DFDB0();
  if (v2)
  {
    type metadata accessor for NamedGroupSpecifier();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_22B0DFB80();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9;
    *(v1 + 24) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_22B094C80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5790, &qword_22B0E2FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22B07FB3C();
  sub_22B0DFDC0();
  sub_22B0DFBD0();
  return (*(v3 + 8))(v5, v2);
}

BOOL sub_22B094DB8(void *a1)
{
  if (v1[2] == a1[2] && v1[3] == a1[3])
  {
    return *v1 == *a1;
  }

  v4 = sub_22B0DFC60();
  result = 0;
  if (v4)
  {
    return *v1 == *a1;
  }

  return result;
}

unint64_t sub_22B094E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5748, &unk_22B0E2FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E4000;
  *(inited + 32) = 0;
  v2 = *(v0 + 24);
  *(inited + 40) = *(v0 + 16);
  *(inited + 48) = v2;

  v3 = sub_22B0B8BF0(inited);
  swift_setDeallocating();
  sub_22B09544C(inited + 32);
  return v3;
}

unint64_t sub_22B094EE0()
{
  sub_22B0DF8E0();

  MEMORY[0x231889070](*(v0 + 16), *(v0 + 24));
  MEMORY[0x231889070](93, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_22B094F60()
{
  sub_22B0DFD40();
  MEMORY[0x231889A00](0);
  return sub_22B0DFD80();
}

uint64_t sub_22B094FCC(uint64_t a1)
{
  sub_22B0DFD40();
  MEMORY[0x231889A00](0);
  return sub_22B0DFD80();
}

uint64_t sub_22B095028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22B0DFC60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22B0950B8(uint64_t a1)
{
  v2 = sub_22B07FB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B0950F4(uint64_t a1)
{
  v2 = sub_22B07FB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B095130()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22B09518C(void *a1)
{
  v2 = swift_allocObject();
  sub_22B094AF0(a1);
  return v2;
}

uint64_t sub_22B0951DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22B09525C()
{
  v1 = *v0;
  sub_22B0DFD40();
  (*(*v1 + 112))(v3);
  return sub_22B0DFD80();
}

uint64_t sub_22B095304(uint64_t a1)
{
  sub_22B0DFD40();
  (*(**v1 + 112))(v3);
  return sub_22B0DFD80();
}

unint64_t sub_22B0953F8()
{
  result = qword_2813EA2C8;
  if (!qword_2813EA2C8)
  {
    type metadata accessor for NamedGroupSpecifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA2C8);
  }

  return result;
}

uint64_t sub_22B09544C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5750, &qword_22B0E2C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B0954C8()
{
  result = qword_27D8B59C8;
  if (!qword_27D8B59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B59C8);
  }

  return result;
}

unint64_t sub_22B095520()
{
  result = qword_2813EA2D8;
  if (!qword_2813EA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA2D8);
  }

  return result;
}

unint64_t sub_22B095578()
{
  result = qword_2813EA2E0;
  if (!qword_2813EA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA2E0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22B0955E0(uint64_t *a1, int a2)
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

uint64_t sub_22B095628(uint64_t result, int a2, int a3)
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

HomeKitMetrics::GroupDescriptorKey_optional __swiftcall GroupDescriptorKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B0DFB70();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GroupDescriptorKey.rawValue.getter()
{
  v1 = 0x44495555656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x726F737365636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E70756F7267;
  }
}

uint64_t sub_22B095750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x44495555656D6F68;
  if (v2 != 1)
  {
    v4 = 0x726F737365636361;
    v3 = 0xED00004449555579;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D614E70756F7267;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0xE800000000000000;
  v8 = 0x44495555656D6F68;
  if (*a2 != 1)
  {
    v8 = 0x726F737365636361;
    v7 = 0xED00004449555579;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D614E70756F7267;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22B0DFC60();
  }

  return v11 & 1;
}

unint64_t sub_22B095870()
{
  result = qword_2813EA3B8;
  if (!qword_2813EA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813EA3B8);
  }

  return result;
}

uint64_t sub_22B0958C4()
{
  sub_22B0DFD40();
  sub_22B0DF380();

  return sub_22B0DFD80();
}

uint64_t sub_22B095978(uint64_t a1)
{
  sub_22B0DF380();
}

uint64_t sub_22B095A18(uint64_t a1)
{
  sub_22B0DFD40();
  sub_22B0DF380();

  return sub_22B0DFD80();
}

void sub_22B095AD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xE800000000000000;
  v5 = 0x44495555656D6F68;
  if (v2 != 1)
  {
    v5 = 0x726F737365636361;
    v4 = 0xED00004449555579;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D614E70756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_22B095B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(v3 + 16) newBackgroundContext];
  v5 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v4 setMergePolicy_];

  sub_22B0DF710();
}

uint64_t sub_22B095C34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6090, &unk_22B0E43F0);
    v2 = sub_22B0DFB50();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B089978(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_22B096E2C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_22B096E2C(v35, v24);
    result = sub_22B0DF860();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_22B096E2C(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B095F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B6090, &unk_22B0E43F0);
    v2 = sub_22B0DFB50();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_22B096E2C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_22B096E2C(v29, v30);
    result = sub_22B0DF860();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_22B096E2C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B0961D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v91 = a4;
  v96[1] = *MEMORY[0x277D85DE8];
  v93 = sub_22B0DEF00();
  v8 = *(v93 - 8);
  v9 = MEMORY[0x28223BE20](v93);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v79 - v11;
  v92 = sub_22B0DF6C0();
  v94 = *(v92 - 8);
  v12 = MEMORY[0x28223BE20](v92);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v17 = a3;
  v18 = sub_22B0DF300();

  v19 = [v16 initWithName:v18 managedObjectModel:v17];

  v90 = v17;
  v95 = v5;
  *(v5 + 16) = v19;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5A98, &qword_22B0E43E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B0E2760;
    *(inited + 32) = sub_22B0DF330();
    *(inited + 40) = v21;
    *(inited + 48) = 1;
    *(inited + 56) = sub_22B0DF330();
    *(inited + 64) = v22;
    *(inited + 72) = 1;
    v23 = sub_22B0B8ED0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5AA0, &qword_22B0E43E8);
    swift_arrayDestroy();
  }

  else
  {
    v23 = sub_22B0B8ED0(MEMORY[0x277D84F90]);
  }

  v24 = [*(v95 + 16) persistentStoreCoordinator];
  sub_22B0DF6B0();
  sub_22B095F20(v23);

  v25 = v91;
  v26 = v89;
  v27 = sub_22B0DF730();
  if (v26)
  {

    v28 = *(v94 + 8);
    v94 += 8;
    v83 = v28;
    v28(v15, v92);
    v29 = v93;
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v30 = sub_22B0DF1B0();
    v31 = __swift_project_value_buffer(v30, qword_2813EBE90);
    v32 = *(v8 + 16);
    v33 = v87;
    v81 = v8 + 16;
    v80 = v32;
    v32(v87, v25, v29);
    v34 = v26;
    v82 = v31;
    v35 = sub_22B0DF190();
    v36 = sub_22B0DF690();

    v37 = os_log_type_enabled(v35, v36);
    v86 = v8;
    v84 = v26;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v33;
      v79 = swift_slowAlloc();
      v96[0] = v79;
      *v38 = 136315394;
      sub_22B096DD4();
      v41 = sub_22B0DFC20();
      v43 = v42;
      v89 = *(v8 + 8);
      v89(v40, v93);
      v44 = sub_22B07B428(v41, v43, v96);
      v29 = v93;

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      v45 = v26;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v46;
      *v39 = v46;
      _os_log_impl(&dword_22B074000, v35, v36, "Failed to open persistent store at %s: %@. Deleting and recreating...", v38, 0x16u);
      sub_22B093A64(v39);
      MEMORY[0x23188A520](v39, -1, -1);
      v47 = v79;
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x23188A520](v47, -1, -1);
      v48 = v38;
      v25 = v91;
      MEMORY[0x23188A520](v48, -1, -1);
    }

    else
    {

      v89 = *(v8 + 8);
      v89(v33, v29);
    }

    v50 = [objc_opt_self() defaultManager];
    v51 = sub_22B0DEEB0();
    v96[0] = 0;
    v52 = [v50 removeItemAtURL:v51 error:v96];

    if (v52)
    {
      v53 = v29;
      v54 = v96[0];
      v55 = 0;
      v56 = v88;
    }

    else
    {
      v57 = v96[0];
      v58 = sub_22B0DEE80();

      swift_willThrow();
      v87 = 0;
      v59 = v85;
      v80(v85, v25, v29);
      v60 = v58;
      v61 = sub_22B0DF190();
      v62 = sub_22B0DF690();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v96[0] = v65;
        *v63 = 136315394;
        sub_22B096DD4();
        v66 = sub_22B0DFC20();
        v68 = v67;
        v89(v59, v93);
        v69 = sub_22B07B428(v66, v68, v96);
        v53 = v93;

        *(v63 + 4) = v69;
        *(v63 + 12) = 2112;
        v70 = v58;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 14) = v71;
        *v64 = v71;
        _os_log_impl(&dword_22B074000, v61, v62, "Failed to delete persistent store at %s: %@", v63, 0x16u);
        sub_22B093A64(v64);
        MEMORY[0x23188A520](v64, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x23188A520](v65, -1, -1);
        v72 = v63;
        v25 = v91;
        MEMORY[0x23188A520](v72, -1, -1);
      }

      else
      {

        v73 = v59;
        v53 = v29;
        v89(v73, v29);
      }

      v55 = v87;
      v56 = v88;
    }

    v74 = v84;
    v75 = [*(v95 + 16) persistentStoreCoordinator];
    sub_22B0DF6B0();
    sub_22B0B8FCC(MEMORY[0x277D84F90]);
    v76 = sub_22B0DF730();
    if (v55)
    {
    }

    else
    {
      v77 = v76;
    }

    v89(v25, v53);
    v83(v56, v92);
  }

  else
  {
    v49 = v27;

    (*(v8 + 8))(v25, v93);
    (*(v94 + 8))(v15, v92);
  }

  return v95;
}

uint64_t sub_22B096B28()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_22B096BB4(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if ([a1 hasChanges])
  {
    v15[0] = 0;
    v2 = [a1 save_];
    v3 = v15[0];
    if (v2)
    {

      v4 = v3;
    }

    else
    {
      v5 = v15[0];
      v6 = sub_22B0DEE80();

      swift_willThrow();
      if (qword_2813E9AA8 != -1)
      {
        swift_once();
      }

      v7 = sub_22B0DF1B0();
      __swift_project_value_buffer(v7, qword_2813EBE90);
      v8 = v6;
      v9 = sub_22B0DF190();
      v10 = sub_22B0DF690();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = v6;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_22B074000, v9, v10, "Failed to save managed object context: %@", v11, 0xCu);
        sub_22B093A64(v12);
        MEMORY[0x23188A520](v12, -1, -1);
        MEMORY[0x23188A520](v11, -1, -1);
      }

      else
      {
      }
    }
  }
}

unint64_t sub_22B096DD4()
{
  result = qword_27D8B5A90;
  if (!qword_27D8B5A90)
  {
    sub_22B0DEF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8B5A90);
  }

  return result;
}

_OWORD *sub_22B096E2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void CounterGroup.loadData(for:)(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v2 + 88));
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v4);
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = v2 + 96;
  (*(v5 + 32))(sub_22B091694, v6, MEMORY[0x277D84F78] + 8, v4, v5);
  os_unfair_lock_unlock((v2 + 88));
}

Swift::Void __swiftcall CounterGroup.addEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B097390();
  sub_22B097D38(countAndFlagsBits, object, sub_22B087D04);

  sub_22B0974C4();
  sub_22B097D38(countAndFlagsBits, object, sub_22B087B34);

  sub_22B0975F8();
  sub_22B097D38(countAndFlagsBits, object, sub_22B087B20);

  os_unfair_lock_unlock(v1 + 22);
}

Swift::Void __swiftcall CounterGroup.deactivateEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097810(&v1[24]);
  sub_22B097390();
  swift_beginAccess();
  v5 = sub_22B09CA10(v10, countAndFlagsBits, object);
  if (*(v4 + 8))
  {
    *v4 = 0;
  }

  (v5)(v10, 0);
  swift_endAccess();

  sub_22B0974C4();
  swift_beginAccess();
  v7 = sub_22B09C988(v10, countAndFlagsBits, object);
  if (*(v6 + 8))
  {
    *v6 = 0;
  }

  (v7)(v10, 0);
  swift_endAccess();

  sub_22B0975F8();
  swift_beginAccess();
  v9 = sub_22B09C8FC(v10, countAndFlagsBits, object);
  if (*(v8 + 8))
  {
    *v8 = 0;
  }

  (v9)(v10, 0);
  swift_endAccess();

  os_unfair_lock_unlock(v1 + 22);
}

Swift::Void __swiftcall CounterGroup.removeEphemeralContainer(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097F5C(&v1[24], countAndFlagsBits, object);

  os_unfair_lock_unlock(v1 + 22);
}

Swift::Void __swiftcall IntCounterObserver.updatedCounter(name:from:to:)(Swift::String name, Swift::Int_optional from, Swift::Int to)
{
  is_nil = from.is_nil;
  value = from.value;
  v7 = *v3;
  v8 = sub_22B0DF300();
  v10 = v8;
  if (is_nil)
  {
    v9 = 0;
  }

  else
  {
    v9 = value;
  }

  [v7 updatedCounter:v8 fromOldValue:v9 toNewValue:to];
}

void sub_22B097270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *a4;
  v8 = *v4;
  v9 = sub_22B0DF300();
  v11 = v9;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  [v8 updatedCounter:v9 fromOldValue:v10 toNewValue:v7];
}

Swift::Void __swiftcall MaxValueObserver.updatedCounter(name:from:to:)(Swift::String name, HomeKitMetrics::CounterDistribution_optional *from, HomeKitMetrics::CounterDistribution *to)
{
  maxValue = to->maxValue;
  v5 = *v3;
  if (from->is_nil)
  {
    v6 = 0x8000000000000000;
  }

  else
  {
    v6 = from->value.maxValue;
    if (v6 == maxValue)
    {
      return;
    }
  }

  v7 = sub_22B0DF300();
  [v5 updatedCounter:v7 fromOldValue:v6 toNewValue:maxValue];
}

uint64_t sub_22B097390()
{
  if (v0[1])
  {
    v1 = v0[1];
LABEL_5:

    return v1;
  }

  v2 = *v0;
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *(v2 + 80);

    swift_unownedRetainStrong();
    sub_22B0915C4(v2 + 16, &v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AF8, qword_22B0E4550);
    v1 = swift_allocObject();
    sub_22B0DEFB0();
    v5 = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B8) = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B0) = v5;
    *(v1 + qword_2813EA598) = v5;
    v6 = v8;
    *(v1 + 16) = v4;
    *(v1 + 24) = v6;
    sub_22B07D124(&v9, v7);
    swift_unknownObjectRetain();
    sub_22B091448(&v8);
    sub_22B0781A8(v7, v1 + 32);
    v0[1] = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0974C4()
{
  if (v0[2])
  {
    v1 = v0[2];
LABEL_5:

    return v1;
  }

  v2 = *v0;
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *(v2 + 80);

    swift_unownedRetainStrong();
    sub_22B0915C4(v2 + 16, &v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AF0, &qword_22B0E4548);
    v1 = swift_allocObject();
    sub_22B0DEFB0();
    v5 = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B8) = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B0) = v5;
    *(v1 + qword_2813EA598) = v5;
    v6 = v8;
    *(v1 + 16) = v4;
    *(v1 + 24) = v6;
    sub_22B07D124(&v9, v7);
    swift_unknownObjectRetain();
    sub_22B091448(&v8);
    sub_22B0781A8(v7, v1 + 32);
    v0[2] = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0975F8()
{
  if (v0[3])
  {
    v1 = v0[3];
LABEL_5:

    return v1;
  }

  v2 = *v0;
  result = swift_unownedRetainStrong();
  if (v2)
  {
    v4 = *(v2 + 80);

    swift_unownedRetainStrong();
    sub_22B0915C4(v2 + 16, &v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AE8, &qword_22B0E4540);
    v1 = swift_allocObject();
    sub_22B0DEFB0();
    v5 = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B8) = MEMORY[0x277D84F98];
    *(v1 + qword_2813EA5B0) = v5;
    *(v1 + qword_2813EA598) = v5;
    v6 = v8;
    *(v1 + 16) = v4;
    *(v1 + 24) = v6;
    sub_22B07D124(&v9, v7);
    swift_unknownObjectRetain();
    sub_22B091448(&v8);
    sub_22B0781A8(v7, v1 + 32);
    v0[3] = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_22B097774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  os_unfair_lock_lock(v6 + 22);
  a6();
  sub_22B0A0320(a1, a2, a3, a4, a5);

  os_unfair_lock_unlock(v6 + 22);
}

uint64_t sub_22B097810(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v56 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = *(a1 + 32);
  if (*(v19 + 16))
  {
    v60 = result;
    v56 = v16;
    v58 = v15;
    [*(v2 + 72) uptime];
    v21 = v20;
    v22 = [*(v2 + 64) currentDate];
    v65 = v12;
    v23 = v22;
    sub_22B0DF0B0();

    v24 = v65;
    v25 = *(v19 + 64);
    v63 = v19 + 64;
    v26 = 1 << *(v19 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25;
    v61 = v19;
    v62 = (v26 + 63) >> 6;
    v68 = (v5 + 16);
    v69 = (v5 + 8);
    v29 = (v5 + 32);
    result = swift_bridgeObjectRetain_n();
    v30 = 0;
    v59 = v2;
    v57 = v18;
    while (v28)
    {
LABEL_11:
      v64 = v28;
      v37 = (*(v61 + 48) + 16 * (__clz(__rbit64(v28)) | (v30 << 6)));
      v39 = *v37;
      v38 = v37[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(a1 + 32);
      v71 = v38;
      v72 = v41;
      v70 = v39;
      sub_22B088234(v39, v38, isUniquelyReferenced_nonNull_native, v21);
      *(a1 + 32) = v72;
      v42 = v56;
      v43 = v60;
      v67 = *v68;
      v67(v56, v18, v60);
      sub_22B0DF0A0();
      v44 = *(v2 + 16);
      v45 = sub_22B0DF070();
      v66 = v44;
      v46 = [v44 datePartitionContainingDate_];

      sub_22B0DF0B0();
      v47 = sub_22B0DF090();
      v48 = v58;
      v49 = v69;
      if (v47)
      {
        do
        {
          sub_22B0DEFC0();
          v51 = v50;
          sub_22B0974C4();
          sub_22B09A738(v70, v71, v9, v51);

          v52 = a1;
          v53 = *v49;
          (*v49)(v42, v43);
          v67(v42, v9, v43);
          v54 = sub_22B0DF070();
          v55 = [v66 datePartitionWithOffset:-1 fromDatePartition:v54];

          sub_22B0DF0B0();
          v49 = v69;
          v53(v9, v43);
          a1 = v52;
          v24 = v65;
          (*v29)(v9, v48, v43);
        }

        while ((sub_22B0DF090() & 1) != 0);
      }

      v31 = v64;
      sub_22B0DEFC0();
      v33 = v32;
      sub_22B0974C4();
      sub_22B09A738(v70, v71, v9, v33);

      v34 = *v49;
      (*v49)(v9, v43);
      v34(v24, v43);
      v35 = v42;
      v28 = (v31 - 1) & v31;
      v34(v35, v43);

      v2 = v59;
      v18 = v57;
    }

    while (1)
    {
      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v36 >= v62)
      {

        return (*v69)(v18, v60);
      }

      v28 = *(v63 + 8 * v36);
      ++v30;
      if (v28)
      {
        v30 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22B097D38(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v7 = qword_2813EA5B0;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_2813E9AA8 != -1)
    {
      swift_once();
    }

    v9 = sub_22B0DF1B0();
    __swift_project_value_buffer(v9, qword_2813EBE90);

    v10 = sub_22B0DF190();
    v11 = sub_22B0DF690();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_22B07B428(a1, a2, v16);
      _os_log_impl(&dword_22B074000, v10, v11, "Ephemeral container already exists: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23188A520](v13, -1, -1);
      MEMORY[0x23188A520](v12, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    a3(1, MEMORY[0x277D84F98], a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v15;
    swift_endAccess();
  }
}

uint64_t sub_22B097F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B097390();
  swift_beginAccess();

  sub_22B080A1C(0, 0, a2, a3);
  swift_endAccess();

  sub_22B0974C4();
  swift_beginAccess();

  sub_22B0809F4(0, 0, a2, a3);
  swift_endAccess();

  sub_22B0975F8();
  swift_beginAccess();

  sub_22B0809CC(0, 0, a2, a3);
  swift_endAccess();
}

uint64_t CounterGroup.ephemeralContainerNames.getter()
{
  os_unfair_lock_lock(v0 + 22);
  sub_22B0980F4(&v2);
  os_unfair_lock_unlock(v0 + 22);
  return v2;
}

uint64_t sub_22B0980F4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8B5AE0, &qword_22B0E4538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B0E2C10;
  v2 = sub_22B097390();
  p_cache = _TtC14HomeKitMetrics23AccessoryGroupSpecifier.cache;
  v4 = qword_2813EA5B0;
  swift_beginAccess();
  v5 = *(*(v2 + v4) + 16);
  v28 = inited;
  if (v5)
  {
    v6 = sub_22B083304(v5, 0);
    v7 = sub_22B094920();

    result = sub_22B0781A0(v27);
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_19;
    }

    inited = v28;
    p_cache = (_TtC14HomeKitMetrics23AccessoryGroupSpecifier + 16);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *(inited + 32) = v6;
  v9 = sub_22B0974C4();
  v10 = p_cache[182];
  swift_beginAccess();
  v11 = *&v10[v9];
  v12 = *(v11 + 16);
  if (!v12)
  {

    v13 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v13 = sub_22B083304(*(v11 + 16), 0);
  v14 = sub_22B094920();

  result = sub_22B0781A0(v27);
  if (v14 != v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  inited = v28;
  p_cache = (_TtC14HomeKitMetrics23AccessoryGroupSpecifier + 16);
LABEL_9:
  *(inited + 40) = v13;
  v15 = sub_22B0975F8();
  v16 = p_cache[182];
  swift_beginAccess();
  v17 = *&v16[v15];
  v18 = *(v17 + 16);
  if (!v18)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_13:
    *(inited + 48) = v19;
    v21 = sub_22B098408(inited);
    v22 = v21;
    v23 = *(v21 + 16);
    if (v23)
    {
      v24 = sub_22B083304(*(v21 + 16), 0);
      v25 = sub_22B0931B8(&v27, v24 + 4, v23, v22);
      result = sub_22B0781A0(v27);
      if (v25 == v23)
      {
LABEL_17:
        *a1 = v24;
        return result;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v19 = sub_22B083304(*(v17 + 16), 0);
  v20 = sub_22B094920();

  result = sub_22B0781A0(v27);
  if (v20 == v18)
  {

    inited = v28;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B098408(uint64_t a1)
{
  result = MEMORY[0x2318892B0](0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v12 = result;
  while (1)
  {
LABEL_6:
    v9 = *(a1 + 16);
    if (v3 == v9)
    {

      return v12;
    }

    if (v3 >= v9)
    {
      break;
    }

    v10 = *(a1 + 32 + 8 * v3);

    ++v3;
    if (v10)
    {
      v4 = *(v10 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = (v10 + 40);
        while (v5 < v4)
        {
          ++v5;
          v8 = *(v6 - 1);
          v7 = *v6;

          sub_22B0AABF4(&v11, v8, v7);

          v4 = *(v10 + 16);
          v6 += 2;
          if (v5 == v4)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B098524(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8B5670, &unk_22B0E32C0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
  result = MEMORY[0x2318892B0](0, v2, v13);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v52 = result;
  v49 = (v3 + 56);
  v50 = v12;
  v43 = v3 + 16;
  v44 = v3;
  v19 = (v3 + 48);
  v45 = (v3 + 8);
  v46 = (v3 + 32);
  v38 = a1 + 32;
  v39 = a1;
  v20 = 0xF000000000000007;
  while (1)
  {
    v51 = v20;
    v42 = v15;
    if ((~v20 & 0xF000000000000007) == 0)
    {
      goto LABEL_19;
    }

    v41 = v18;
    v21 = 0;
    v22 = (v15 + 64) >> 6;
    if (!v17)
    {
      break;
    }

    while (1)
    {
      v23 = v21;
      v12 = v50;
LABEL_12:
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v44 + 16))(v10, *(v51 + 48) + *(v44 + 72) * (v26 | (v23 << 6)), v2);
      v27 = 0;
      v25 = v23;
LABEL_13:
      (*v49)(v10, v27, 1, v2);
      v28 = *v19;
      if ((*v19)(v10, 1, v2) == 1)
      {
        break;
      }

      sub_22B09F358(v10, v12);
      if (v28(v12, 1, v2) == 1)
      {
        goto LABEL_27;
      }

      v29 = v48;
      (*v46)(v48, v12, v2);
      v30 = v47;
      sub_22B0AA93C(v47, v29);
      (*v45)(v30, v2);
      v21 = v25;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    result = sub_22B09F2F0(v10);
    v18 = v41;
LABEL_19:
    v31 = *(v39 + 16);
    if (v18 == v31)
    {
      goto LABEL_26;
    }

    if (v18 >= v31)
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 8 * v18);
    v32 = v18 + 1;
    v33 = -1 << *(v20 + 32);
    v34 = *(v20 + 56);
    v41 = ~v33;
    v35 = -v33;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v40 = v36 & v34;

    result = sub_22B09F2DC(v51);
    v17 = v40;
    v15 = v41;
    v16 = v20 + 56;
    v18 = v32;
  }

LABEL_5:
  if (v22 <= v21 + 1)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v12 = v50;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v17 = 0;
      v27 = 1;
      goto LABEL_13;
    }

    v17 = *(v16 + 8 * v23);
    ++v21;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  (*v49)(v12, 1, 1, v2);
LABEL_27:

  sub_22B09F2DC(v51);
  return v52;
}

uint64_t sub_22B098960(uint64_t a1)
{
  v2 = sub_22B0DF0E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22B076420(&qword_2813EAD80, MEMORY[0x277CC9588]);
  result = MEMORY[0x2318892B0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_22B0AA93C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
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

void *sub_22B098BAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  v7 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v6);
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v29 = sub_22B0A0080;
  v30 = &v31;
  v8 = MEMORY[0x277D84F78];
  (*(v7 + 24))(&v35, sub_22B0A00C8, v28, &type metadata for AccumulatorCounter, MEMORY[0x277D84F78] + 8, &off_2813EA3C0, v6, v7);
  v9 = a1[6];
  v10 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v9);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v22 = sub_22B0A0108;
  v23 = &v24;
  (*(v10 + 24))(&v35, sub_22B0A0244, v21, &type metadata for DurationCounter, v8 + 8, &off_2813EA778, v9, v10);
  v11 = a1[6];
  v12 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v11);
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v16[2] = sub_22B0A0150;
  v16[3] = &v17;
  v13 = *(v12 + 24);
  v14 = sub_22B09F458();
  return v13(&v35, sub_22B0A0244, v16, &type metadata for DistributionCounter, v8 + 8, v14, v11, v12);
}

uint64_t sub_22B098D9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  result = (*(v11 + 32))(*(a2 + 80), a3, v10, v11);
  if (result)
  {
    a5();
    a6(a3);
  }

  return result;
}

Swift::Void __swiftcall CounterGroup.incrementCounter(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_22B0DF0E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(v1 + 22);
  v8 = [*(sub_22B097390() + 24) currentDatePartition];
  sub_22B0DF0B0();

  sub_22B09A03C(1, countAndFlagsBits, object, v7);

  (*(v5 + 8))(v7, v4);
  os_unfair_lock_unlock(v1 + 22);
}

uint64_t CounterGroup.counter(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 22);
  sub_22B097390();
  v7 = sub_22B099028(a1, a2, a3);

  os_unfair_lock_unlock(v3 + 22);
  return v7;
}

uint64_t sub_22B099028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B09CAE4(a3);
  v6 = v5;
  if (*(v5 + 16) && (v7 = sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_22B0990A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22B09CD84(a3);
  v6 = v5;
  if (*(v5 + 16) && (v7 = sub_22B0768A8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

Swift::Int_optional __swiftcall CounterGroup.counter(_:in:)(Swift::String _, Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  os_unfair_lock_lock(v2 + 22);
  sub_22B097390();
  v7 = sub_22B0991A0(v6, v5, countAndFlagsBits, object);
  LOBYTE(countAndFlagsBits) = v8;

  os_unfair_lock_unlock(v2 + 22);
  v9 = countAndFlagsBits & 1;
  v10 = v7;
  result.value = v10;
  result.is_nil = v9;
  return result;
}

uint64_t sub_22B0991A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_2813EA5B0;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16) && (v11 = sub_22B0768A8(a3, a4), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11 + 8);
    swift_endAccess();
    if (*(v13 + 16))
    {

      v14 = sub_22B0768A8(a1, a2);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);

        return v16;
      }
    }
  }

  else
  {
    swift_endAccess();
  }

  return 0;
}

double sub_22B099288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = qword_2813EA5B0;
  swift_beginAccess();
  v12 = *(v5 + v11);
  if (*(v12 + 16) && (v13 = sub_22B0768A8(a3, a4), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 16 * v13 + 8);
    swift_endAccess();

    sub_22B09D2E0(a1, a2, v15, a5);
  }

  else
  {
    swift_endAccess();
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 40) = 1;
  }

  return result;
}

uint64_t sub_22B0993C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = qword_2813EA5B0;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_22B0768A8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9 + 8);
    swift_bridgeObjectRetain_n();
    swift_endAccess();

    return v11;
  }

  else
  {
    swift_endAccess();
    return a3(MEMORY[0x277D84F90]);
  }
}

uint64_t CounterGroup.sumOfCounters(for:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 22);
  sub_22B097390();
  v3 = sub_22B0994E8(a1);

  os_unfair_lock_unlock(v1 + 22);
  return v3;
}

uint64_t sub_22B0994E8(uint64_t a1)
{
  result = sub_22B09CAE4(a1);
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    v12 = __OFADD__(v4, v11);
    v4 += v11;
    if (v12)
    {
      __break(1u);
LABEL_13:

      return v4;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0995A8(uint64_t a1)
{
  result = sub_22B09CD84(a1);
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  for (i = 0.0; v6; i = i + *(*(v2 + 56) + ((v9 << 9) | (8 * v10))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B099668@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_22B09D024(a2);
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = 0uLL;
  v11 = 0x8000000000000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    while (1)
    {
      v13 = v5;
LABEL_8:
      v14 = *(v4 + 56) + 40 * (__clz(__rbit64(v9)) | (v13 << 6));
      v15 = *(v14 + 16);
      v16 = __OFADD__(v6, v15);
      v6 += v15;
      if (v16)
      {
        break;
      }

      v9 &= v9 - 1;
      v17 = *(v14 + 24);
      v20 = v14;
      v18 = *v14;
      v19 = *(v20 + 8);
      if (v19 > v11)
      {
        v11 = v19;
      }

      if (v18 < v12)
      {
        v12 = v18;
      }

      v10 = vaddq_f64(v10, v17);
      v5 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v13 >= ((v7 + 63) >> 6))
      {
        v21 = v10;

        *a1 = v12;
        *(a1 + 8) = v11;
        *(a1 + 16) = v6;
        *(a1 + 24) = v21;
        return result;
      }

      v9 = *(v4 + 64 + 8 * v13);
      ++v5;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall CounterGroup.sumOfCounters(in:)(Swift::String in)
{
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 22);
  sub_22B097390();
  v4 = sub_22B0997E8(countAndFlagsBits, object);

  os_unfair_lock_unlock(v1 + 22);
  return v4;
}

uint64_t sub_22B0997E8(uint64_t a1, uint64_t a2)
{
  result = sub_22B0993C8(a1, a2, sub_22B0B9108);
  v3 = 0;
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
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(result + 56) + ((v9 << 9) | (8 * v10)));
    v12 = __OFADD__(v4, v11);
    v4 += v11;
    if (v12)
    {
      __break(1u);
LABEL_13:

      return v4;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      goto LABEL_13;
    }

    v7 = *(result + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B0998B8(uint64_t a1, uint64_t a2)
{
  result = sub_22B0993C8(a1, a2, sub_22B0B9204);
  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  for (i = 0.0; v6; i = i + *(*(result + 56) + ((v9 << 9) | (8 * v10))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(result + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B099988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22B0993C8(a1, a2, sub_22B0B9308);
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 64);
  v10 = 0uLL;
  v11 = 0x8000000000000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (v9)
  {
    while (1)
    {
      v13 = v5;
LABEL_8:
      v14 = *(result + 56) + 40 * (__clz(__rbit64(v9)) | (v13 << 6));
      v15 = *(v14 + 16);
      v16 = __OFADD__(v6, v15);
      v6 += v15;
      if (v16)
      {
        break;
      }

      v9 &= v9 - 1;
      v17 = *(v14 + 24);
      v20 = v14;
      v18 = *v14;
      v19 = *(v20 + 8);
      if (v19 > v11)
      {
        v11 = v19;
      }

      if (v18 < v12)
      {
        v12 = v18;
      }

      v10 = vaddq_f64(v10, v17);
      v5 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v13 >= ((v7 + 63) >> 6))
      {
        v21 = v10;

        *a3 = v12;
        *(a3 + 8) = v11;
        *(a3 + 16) = v6;
        *(a3 + 24) = v21;
        return result;
      }

      v9 = *(result + 64 + 8 * v13);
      ++v5;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}