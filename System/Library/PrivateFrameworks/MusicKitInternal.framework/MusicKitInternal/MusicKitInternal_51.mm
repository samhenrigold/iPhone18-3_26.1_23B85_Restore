uint64_t Artwork.Gradient.encode(to:)(uint64_t a1)
{
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44B0, &qword_1D56537A0);
  OUTLINED_FUNCTION_4();
  v29 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v24 = v23 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  sub_1D56140C8();
  OUTLINED_FUNCTION_4();
  v25 = v9;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *v1;
  v23[3] = *(v1 + 32);
  v14 = type metadata accessor for Artwork.Gradient(0);
  sub_1D520EBBC(v1 + *(v14 + 32), v7);
  v15 = v13;

  v16 = v24;
  sub_1D5614088();
  sub_1D5614048();
  v17 = MEMORY[0x1E6975950];
  sub_1D5328124(&qword_1EC7F44B8, MEMORY[0x1E6975950], MEMORY[0x1E6975960]);
  OUTLINED_FUNCTION_3_142();
  v18 = v17;
  v19 = v27;
  sub_1D5328124(v20, v18, v21);
  sub_1D5610778();
  (*(v29 + 8))(v16, v19);
  return (*(v25 + 8))(v12, v26);
}

uint64_t sub_1D5328124(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5328194(uint64_t a1)
{
  sub_1D53282E0(319, &qword_1EC7EB398, type metadata accessor for CGColor);
  if (v1 <= 0x3F)
  {
    sub_1D5328290();
    if (v2 <= 0x3F)
    {
      sub_1D53282E0(319, &qword_1EC7F44E0, MEMORY[0x1E6976F50]);
      if (v3 <= 0x3F)
      {
        sub_1D4E5CF94(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D5328290()
{
  if (!qword_1EDD52730)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52730);
    }
  }
}

void sub_1D53282E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5328334@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1D5610088();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  (*(v6 + 16))(&v55 - v10, v3, v5);
  sub_1D560F1E8();
  v11 = sub_1D5615298();

  if (v11)
  {
    v12 = *(v6 + 8);
LABEL_4:
    v14 = OUTLINED_FUNCTION_63_1();
    v12(v14);
    sub_1D560D908();
    goto LABEL_5;
  }

  sub_1D560F1C8();
  sub_1D4EC620C();
  v13 = OUTLINED_FUNCTION_0_11();
  v12 = *(v6 + 8);
  (v12)(v9, v5);
  if (v13)
  {
    goto LABEL_4;
  }

  v19 = sub_1D560F698();
  OUTLINED_FUNCTION_4_107(v19);
  OUTLINED_FUNCTION_3_143();
  if ((v2 & 1) == 0)
  {
    sub_1D560F668();
    OUTLINED_FUNCTION_0_11();
    v20 = OUTLINED_FUNCTION_2_139();
    v12(v20);
    if ((v13 & 1) == 0)
    {
      if (qword_1EDD552E0 != -1)
      {
        swift_once();
      }

      if (sub_1D5615298())
      {
        v22 = OUTLINED_FUNCTION_63_1();
        v12(v22);
        if (qword_1EDD53C80 != -1)
        {
          swift_once();
        }

        v23 = sub_1D560D9A8();
        v24 = v23;
        v25 = qword_1EDD53C88;
      }

      else
      {
        v26 = sub_1D5610E88();
        OUTLINED_FUNCTION_4_107(v26);
        OUTLINED_FUNCTION_3_143();
        if (v2)
        {
          v27 = OUTLINED_FUNCTION_63_1();
          v12(v27);
          if (qword_1EC7E9090 != -1)
          {
            swift_once();
          }

          v23 = sub_1D560D9A8();
          v24 = v23;
          v25 = qword_1EC7F1B20;
        }

        else
        {
          v29 = sub_1D560F9D8();
          OUTLINED_FUNCTION_4_107(v29);
          OUTLINED_FUNCTION_3_143();
          if (qword_1EDD56770 != -1)
          {
            swift_once();
          }

          if (sub_1D5615298())
          {
            v30 = OUTLINED_FUNCTION_63_1();
            v12(v30);
            if (qword_1EDD53D70 != -1)
            {
              swift_once();
            }

            v23 = sub_1D560D9A8();
            v24 = v23;
            v25 = qword_1EDD53D78;
          }

          else
          {
            v31 = sub_1D560F358();
            OUTLINED_FUNCTION_4_107(v31);
            OUTLINED_FUNCTION_3_143();
            if (v2)
            {
              v32 = OUTLINED_FUNCTION_63_1();
              v12(v32);
              sub_1D560D918();
              goto LABEL_5;
            }

            if (qword_1EDD5C7A0 != -1)
            {
              swift_once();
            }

            if (sub_1D5615298())
            {
              v33 = OUTLINED_FUNCTION_63_1();
              v12(v33);
              if (qword_1EDD53D48 != -1)
              {
                swift_once();
              }

              v23 = sub_1D560D9A8();
              v24 = v23;
              v25 = qword_1EDD53D50;
            }

            else
            {
              v34 = sub_1D560CF58();
              OUTLINED_FUNCTION_4_107(v34);
              OUTLINED_FUNCTION_3_143();
              if (v2 & 1) != 0 || (sub_1D560CF38(), OUTLINED_FUNCTION_0_11(), v35 = OUTLINED_FUNCTION_2_139(), v12(v35), (v13))
              {
                v36 = OUTLINED_FUNCTION_63_1();
                v12(v36);
                sub_1D560D878();
                goto LABEL_5;
              }

              v37 = sub_1D5610278();
              OUTLINED_FUNCTION_4_107(v37);
              OUTLINED_FUNCTION_3_143();
              if (v2 & 1) != 0 || (sub_1D56100D8(), OUTLINED_FUNCTION_0_11(), v38 = OUTLINED_FUNCTION_2_139(), v12(v38), (v13))
              {
                v39 = OUTLINED_FUNCTION_63_1();
                v12(v39);
                sub_1D560D968();
                goto LABEL_5;
              }

              sub_1D5611B48();
              OUTLINED_FUNCTION_0_11();
              v40 = OUTLINED_FUNCTION_2_139();
              v12(v40);
              v41 = sub_1D5610B38();
              OUTLINED_FUNCTION_4_107(v41);
              OUTLINED_FUNCTION_3_143();
              if (v2)
              {
                v42 = OUTLINED_FUNCTION_63_1();
                v12(v42);
                sub_1D560D888();
                goto LABEL_5;
              }

              v43 = sub_1D56118C8();
              OUTLINED_FUNCTION_4_107(v43);
              OUTLINED_FUNCTION_3_143();
              v44 = sub_1D5614908();
              OUTLINED_FUNCTION_4_107(v44);
              OUTLINED_FUNCTION_3_143();
              sub_1D56148E8();
              v45 = OUTLINED_FUNCTION_0_11();
              (v12)(v9, v5);
              if (v45)
              {
                v46 = OUTLINED_FUNCTION_63_1();
                v12(v46);
                sub_1D560D8E8();
                goto LABEL_5;
              }

              sub_1D560FBE8();
              v47 = sub_1D5615298();

              if (v47)
              {
                v48 = OUTLINED_FUNCTION_63_1();
                v12(v48);
                sub_1D560D958();
                goto LABEL_5;
              }

              if (qword_1EDD57200 != -1)
              {
                swift_once();
              }

              if (sub_1D5615298())
              {
                v49 = OUTLINED_FUNCTION_63_1();
                v12(v49);
                if (qword_1EDD53C38 != -1)
                {
                  swift_once();
                }

                v23 = sub_1D560D9A8();
                v24 = v23;
                v25 = qword_1EDD53C40;
              }

              else
              {
                if (qword_1EDD578A8 != -1)
                {
                  swift_once();
                }

                if (sub_1D5615298())
                {
                  v50 = OUTLINED_FUNCTION_63_1();
                  v12(v50);
                  if (qword_1EDD53C58 != -1)
                  {
                    swift_once();
                  }

                  v23 = sub_1D560D9A8();
                  v24 = v23;
                  v25 = qword_1EDD53C60;
                }

                else
                {
                  if (qword_1EDD588B0 != -1)
                  {
                    swift_once();
                  }

                  if (sub_1D5615298())
                  {
                    v51 = OUTLINED_FUNCTION_63_1();
                    v12(v51);
                    if (qword_1EC7E95E8 != -1)
                    {
                      swift_once();
                    }

                    v23 = sub_1D560D9A8();
                    v24 = v23;
                    v25 = qword_1EC7F5D98;
                  }

                  else
                  {
                    if (qword_1EDD56520 != -1)
                    {
                      swift_once();
                    }

                    if (sub_1D5615298())
                    {
                      v52 = OUTLINED_FUNCTION_63_1();
                      v12(v52);
                      if (qword_1EC7E8F18 != -1)
                      {
                        swift_once();
                      }

                      v23 = sub_1D560D9A8();
                      v24 = v23;
                      v25 = qword_1EC7F08A0;
                    }

                    else
                    {
                      if (qword_1EDD562A8 != -1)
                      {
                        swift_once();
                      }

                      v53 = sub_1D5615298();
                      v54 = OUTLINED_FUNCTION_63_1();
                      v12(v54);
                      if ((v53 & 1) == 0)
                      {
                        v15 = sub_1D560D9A8();
                        v16 = a1;
                        v17 = 1;
                        return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
                      }

                      if (qword_1EDD53CE8 != -1)
                      {
                        swift_once();
                      }

                      v23 = sub_1D560D9A8();
                      v24 = v23;
                      v25 = qword_1EDD53CF0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v28 = __swift_project_value_buffer(v23, v25);
      (*(*(v24 - 8) + 16))(a1, v28, v24);
      v16 = a1;
      v17 = 0;
      v15 = v24;
      return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
    }
  }

  v21 = OUTLINED_FUNCTION_63_1();
  v12(v21);
  sub_1D560D938();
LABEL_5:
  v15 = sub_1D560D9A8();
  v16 = a1;
  v17 = 0;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);
}

uint64_t MusicLibrary.pinsObserver.getter()
{
  sub_1D4E5A1CC();
  sub_1D5329168();
  OUTLINED_FUNCTION_107_5();

  return v0;
}

void sub_1D5328DA4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_71;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1D533F9CC(result, a2, 10);
LABEL_71:

    return;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) == 0)
    {
      sub_1D5615C58();
    }

    OUTLINED_FUNCTION_329_0();
    if (v7)
    {
      if (v5 >= 1)
      {
        if (v5 != 1 && v4)
        {
          OUTLINED_FUNCTION_80_7();
          do
          {
            OUTLINED_FUNCTION_22_0();
            if (!v7 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_54_31();
            if (!v7)
            {
              break;
            }

            if (__OFADD__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
          }

          while (!v7);
        }

        goto LABEL_71;
      }

      goto LABEL_75;
    }

    if (v6 != 45)
    {
      if (v5)
      {
        v17 = 0;
        if (v4)
        {
          v18 = 10;
          do
          {
            v19 = *v4 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v17;
            if ((v17 * v18) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            v4 = OUTLINED_FUNCTION_324_0(v4);
          }

          while (!v7);
        }
      }

      goto LABEL_71;
    }

    if (v5 >= 1)
    {
      if (v5 != 1 && v4)
      {
        OUTLINED_FUNCTION_80_7();
        do
        {
          OUTLINED_FUNCTION_22_0();
          if (!v7 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_54_31();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v10, v9))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        do
        {
          OUTLINED_FUNCTION_22_0();
          if (!v7 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_54_31();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        OUTLINED_FUNCTION_179_6();
        do
        {
          OUTLINED_FUNCTION_22_0();
          if (!v7 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_54_31();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v12, v11))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      OUTLINED_FUNCTION_179_6();
      do
      {
        OUTLINED_FUNCTION_22_0();
        if (!v7 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_54_31();
        if (!v7)
        {
          break;
        }

        if (__OFADD__(v16, v15))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
      }

      while (!v7);
    }

    goto LABEL_71;
  }

LABEL_76:
  __break(1u);
}

uint64_t MusicLibrary.cloudStatusController.getter()
{
  v0 = *(sub_1D4E5A1CC() + 48);

  return v0;
}

id MusicLibrary.isRemovalRestricted.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D533F4D0(0xD000000000000017, 0x80000001D568B260);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D38();
  v4 = [v2 BOOLForKey_];

  return v4;
}

id MusicLibrary.isDownloadActionAvailable.getter()
{
  v0 = sub_1D4E5A1CC();
  v1 = v0[6];

  v2 = *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  OUTLINED_FUNCTION_107_5();

  v3 = [v0 canShowCloudDownloadButtons];

  return v3;
}

uint64_t sub_1D5329168()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for MusicLibraryPinsObserver(0);
    OUTLINED_FUNCTION_2_19(v3);

    sub_1D51FDCD0();
    v1 = v4;
    *(v2 + 64) = v4;
  }

  return v1;
}

uint64_t MusicLibrary.add<A, B>(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_194_6(v3, v4, v5, v6, v7);
  v2[14] = v8;
  v2[15] = OUTLINED_FUNCTION_167();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = sub_1D5613838();
  v2[18] = v9;
  v10 = sub_1D5613D28();
  v2[19] = v10;
  v2[2] = v1;
  v11 = MEMORY[0x1E6976BB0];
  v2[3] = v9;
  v2[4] = v10;
  v2[5] = v0;
  v2[6] = v11;
  v2[7] = MEMORY[0x1E6976E50];
  v12 = type metadata accessor for MusicLibraryImportChangeRequest(0, (v2 + 2));
  v2[20] = v12;
  OUTLINED_FUNCTION_69(v12);
  v2[21] = v13;
  v2[22] = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v14);
  v15 = OUTLINED_FUNCTION_167();
  v16 = OUTLINED_FUNCTION_297_1(v15);
  OUTLINED_FUNCTION_259_0(v16);
  v17 = sub_1D560C368();
  v2[25] = v17;
  OUTLINED_FUNCTION_69(v17);
  v2[26] = v18;
  v2[27] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D5329688()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5329788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v19 = OUTLINED_FUNCTION_300_1();
  v20(v19);

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v22 = OUTLINED_FUNCTION_165_0();
  v23 = *(v18 + 264);
  if (v22)
  {
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v17 = 136446466;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    v27 = OUTLINED_FUNCTION_5_108();
    v28(v27);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v29 = OUTLINED_FUNCTION_9_96();
    v30(v29);
    v31 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_125_7();
    *(v17 + 14) = v23;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v34, v35, "[%{public}s] Completed add operation for item %{public}s");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v16 = *(v18 + 120);

    v36 = OUTLINED_FUNCTION_128();
    v23(v36);
  }

  OUTLINED_FUNCTION_207_3();
  v37 = OUTLINED_FUNCTION_327_0();
  v38(v37);
  sub_1D4E7661C(v16, &qword_1EC7EA978, &qword_1D5652B10);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D5329930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[24];
  (*(v10[21] + 8))(v10[22], v10[20]);
  sub_1D4E7661C(v11, &qword_1EC7EA978, &qword_1D5652B10);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5329A08()
{
  OUTLINED_FUNCTION_60();
  v1[31] = v2;
  v1[32] = v0;
  v1[29] = v3;
  v1[30] = v4;
  v1[27] = v5;
  v1[28] = v6;
  v1[18] = v7;
  v1[25] = v8;
  v1[26] = v7;
  v1[19] = v5;
  v1[20] = v6;
  v1[21] = v3;
  v1[22] = v4;
  v1[23] = v2;
  v9 = type metadata accessor for MusicLibraryImportChangeRequest(0, (v1 + 18));
  v1[33] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[34] = v10;
  v1[35] = *(v11 + 64);
  v1[36] = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5329AD8()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[25];
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1();
  v0[37] = v4;
  v5 = v4;
  OUTLINED_FUNCTION_183();

  v6 = *(v3 + *(v2 + 80));
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1D5329C18;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D553D18C;
  v0[13] = &block_descriptor_188;
  v0[14] = v7;
  [v1 performLibraryImportChangeWithRequest:v6 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D5329C18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5329D14()
{
  OUTLINED_FUNCTION_100();
  v1 = *(v0 + 296);
  v9 = *(v0 + 224);
  v10 = *(v0 + 208);
  v8 = *(v0 + 240);

  v2 = OUTLINED_FUNCTION_182_3();
  v3(v2);
  v4 = swift_allocObject();
  v4[1] = v10;
  v4[2] = v9;
  v4[3] = v8;
  OUTLINED_FUNCTION_102();
  v5();
  sub_1D4FDC9B8();

  OUTLINED_FUNCTION_22_1();

  return v6();
}

uint64_t sub_1D5329E34()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 296);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v9 = OUTLINED_FUNCTION_145_8(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v10 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_312_0(v10);
  v0[21] = v11;
  v0[22] = OUTLINED_FUNCTION_167();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_297_1(v12);
  v14 = OUTLINED_FUNCTION_235_1(v13);
  v0[25] = v14;
  OUTLINED_FUNCTION_69(v14);
  v0[26] = v15;
  v16 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258_2(v16);
  v17 = sub_1D560C368();
  v0[28] = v17;
  OUTLINED_FUNCTION_69(v17);
  v0[29] = v18;
  v0[30] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_348_0();
  return OUTLINED_FUNCTION_223_4(v19, v20, v21);
}

uint64_t sub_1D5329FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = v4;
  OUTLINED_FUNCTION_118_11(a1, a2, a3, a4);
  v9 = sub_1D560C338();
  v11 = v10;
  v52 = v9;
  v4[31] = v9;
  v4[32] = v10;
  v12 = OUTLINED_FUNCTION_74_0();
  v13(v12);
  v16 = *(v6 + 16);
  v14 = v6 + 16;
  v15 = v16;
  v4[33] = v16;
  v4[34] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17 = OUTLINED_FUNCTION_159();
  v16(v17);
  OUTLINED_FUNCTION_24_0();
  (*(v18 + 16))(v7, v53, v8);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);

  v22 = OUTLINED_FUNCTION_170_5();
  sub_1D4F5AA20(v22, v23, v24, 1, v25, v8, v26, v5, v27, v49, v50, v51);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v28 = OUTLINED_FUNCTION_345_0();
  v4[35] = __swift_project_value_buffer(v28, qword_1EC87C110);
  v29 = OUTLINED_FUNCTION_182_3();
  v15(v29);

  v30 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_221_3())
  {
    v54 = v11;
    v32 = v4[23];
    v31 = v4[24];
    v33 = v4[11];
    OUTLINED_FUNCTION_144();
    v55 = OUTLINED_FUNCTION_137_11();
    OUTLINED_FUNCTION_303_1(4.8752e-34);
    v35 = sub_1D4E6835C(v52, v54, v34);
    OUTLINED_FUNCTION_41_41(v35);
    (v15)(v31, v32, v33);
    sub_1D5614DB8();
    v36 = OUTLINED_FUNCTION_278_1();
    v15(v36);
    v37 = sub_1D4E6835C(v31, v14, &v55);

    *(v14 + 14) = v37;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    OUTLINED_FUNCTION_238_2(v43, v44, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v45 = v4[21];

    v15 = *(v45 + 8);
    v46 = OUTLINED_FUNCTION_128();
    v15(v46);
  }

  v4[36] = v15;
  v47 = swift_task_alloc();
  v4[37] = v47;
  *v47 = v4;
  v47[1] = sub_1D532A2C8;
  OUTLINED_FUNCTION_93_0(v4[27]);

  return sub_1D5329A08();
}

uint64_t sub_1D532A2C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D532A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v18 = OUTLINED_FUNCTION_260_1();
  v19(v18);

  v20 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v21 = OUTLINED_FUNCTION_165_0();
  v22 = *(v17 + 288);
  if (v21)
  {
    OUTLINED_FUNCTION_189_5();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v16 = 136446466;
    v23 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v23, v24, v25);
    OUTLINED_FUNCTION_126_6();

    v26 = OUTLINED_FUNCTION_5_108();
    v27(v26);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v28 = OUTLINED_FUNCTION_9_96();
    v29(v28);
    v30 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_125_7();
    *(v16 + 14) = v22;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v33, v34, "[%{public}s] Completed add operation for items %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_128();
    v22(v35);
  }

  OUTLINED_FUNCTION_231_2();
  v36 = OUTLINED_FUNCTION_128();
  v37(v36);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D532A558()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  (*(v0[26] + 8))(v0[27], v0[25]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t MusicLibrary.import<A, B>(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_194_6(v3, v4, v5, v6, v7);
  v2[14] = v8;
  v2[15] = OUTLINED_FUNCTION_167();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = sub_1D5613838();
  v2[18] = v9;
  v10 = sub_1D5613D28();
  v2[19] = v10;
  v2[2] = v1;
  v11 = MEMORY[0x1E6976BB0];
  v2[3] = v9;
  v2[4] = v10;
  v2[5] = v0;
  v2[6] = v11;
  v2[7] = MEMORY[0x1E6976E50];
  v12 = type metadata accessor for MusicLibraryImportChangeRequest(0, (v2 + 2));
  v2[20] = v12;
  OUTLINED_FUNCTION_69(v12);
  v2[21] = v13;
  v2[22] = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v14);
  v15 = OUTLINED_FUNCTION_167();
  v16 = OUTLINED_FUNCTION_297_1(v15);
  OUTLINED_FUNCTION_259_0(v16);
  v17 = sub_1D560C368();
  v2[25] = v17;
  OUTLINED_FUNCTION_69(v17);
  v2[26] = v18;
  v2[27] = OUTLINED_FUNCTION_127();
  v19 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1D532AAAC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D532ABAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v19 = OUTLINED_FUNCTION_300_1();
  v20(v19);

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v22 = OUTLINED_FUNCTION_165_0();
  v23 = *(v18 + 264);
  if (v22)
  {
    OUTLINED_FUNCTION_190_6();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v17 = 136446466;
    v24 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_126_6();

    v27 = OUTLINED_FUNCTION_5_108();
    v28(v27);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v29 = OUTLINED_FUNCTION_9_96();
    v30(v29);
    v31 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v31, v32, v33);
    OUTLINED_FUNCTION_125_7();
    *(v17 + 14) = v23;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v34, v35, "[%{public}s] Completed import operation for items %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v16 = *(v18 + 120);

    v36 = OUTLINED_FUNCTION_128();
    v23(v36);
  }

  OUTLINED_FUNCTION_207_3();
  v37 = OUTLINED_FUNCTION_327_0();
  v38(v37);
  sub_1D4E7661C(v16, &qword_1EC7EA978, &qword_1D5652B10);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MusicLibrary.import<A, B, C, D>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v9 = OUTLINED_FUNCTION_145_8(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_22(v9);
  v10 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_312_0(v10);
  v0[21] = v11;
  v0[22] = OUTLINED_FUNCTION_167();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_297_1(v12);
  v14 = OUTLINED_FUNCTION_235_1(v13);
  v0[25] = v14;
  OUTLINED_FUNCTION_69(v14);
  v0[26] = v15;
  v16 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_258_2(v16);
  v17 = sub_1D560C368();
  v0[28] = v17;
  OUTLINED_FUNCTION_69(v17);
  v0[29] = v18;
  v0[30] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_348_0();
  return OUTLINED_FUNCTION_223_4(v19, v20, v21);
}

uint64_t sub_1D532AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = v4;
  OUTLINED_FUNCTION_118_11(a1, a2, a3, a4);
  v9 = sub_1D560C338();
  v11 = v10;
  v52 = v9;
  v4[31] = v9;
  v4[32] = v10;
  v12 = OUTLINED_FUNCTION_74_0();
  v13(v12);
  v16 = *(v6 + 16);
  v14 = v6 + 16;
  v15 = v16;
  v4[33] = v16;
  v4[34] = v14 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17 = OUTLINED_FUNCTION_159();
  v16(v17);
  OUTLINED_FUNCTION_24_0();
  (*(v18 + 16))(v7, v53, v8);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);

  v22 = OUTLINED_FUNCTION_170_5();
  sub_1D4F5AA20(v22, v23, v24, 0, v25, v8, v26, v5, v27, v49, v50, v51);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v28 = OUTLINED_FUNCTION_345_0();
  v4[35] = __swift_project_value_buffer(v28, qword_1EC87C110);
  v29 = OUTLINED_FUNCTION_182_3();
  v15(v29);

  v30 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_221_3())
  {
    v54 = v11;
    v32 = v4[23];
    v31 = v4[24];
    v33 = v4[11];
    OUTLINED_FUNCTION_144();
    v55 = OUTLINED_FUNCTION_137_11();
    OUTLINED_FUNCTION_303_1(4.8752e-34);
    v35 = sub_1D4E6835C(v52, v54, v34);
    OUTLINED_FUNCTION_41_41(v35);
    (v15)(v31, v32, v33);
    sub_1D5614DB8();
    v36 = OUTLINED_FUNCTION_278_1();
    v15(v36);
    v37 = sub_1D4E6835C(v31, v14, &v55);

    *(v14 + 14) = v37;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    OUTLINED_FUNCTION_238_2(v43, v44, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v45 = v4[21];

    v15 = *(v45 + 8);
    v46 = OUTLINED_FUNCTION_128();
    v15(v46);
  }

  v4[36] = v15;
  v47 = swift_task_alloc();
  v4[37] = v47;
  *v47 = v4;
  v47[1] = sub_1D532B174;
  OUTLINED_FUNCTION_93_0(v4[27]);

  return sub_1D5329A08();
}

uint64_t sub_1D532B174()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 304) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D532B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v18 = OUTLINED_FUNCTION_260_1();
  v19(v18);

  v20 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v21 = OUTLINED_FUNCTION_165_0();
  v22 = *(v17 + 288);
  if (v21)
  {
    OUTLINED_FUNCTION_189_5();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_332_0();
    *v16 = 136446466;
    v23 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v23, v24, v25);
    OUTLINED_FUNCTION_126_6();

    v26 = OUTLINED_FUNCTION_5_108();
    v27(v26);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v28 = OUTLINED_FUNCTION_9_96();
    v29(v28);
    v30 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_125_7();
    *(v16 + 14) = v22;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v33, v34, "[%{public}s] Completed import operation for items %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {

    v35 = OUTLINED_FUNCTION_128();
    v22(v35);
  }

  OUTLINED_FUNCTION_231_2();
  v36 = OUTLINED_FUNCTION_128();
  v37(v36);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_63_0();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MusicLibrary.add<A>(_:to:tracks:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v6;
  v1[32] = v4;
  v1[29] = v7;
  v1[30] = v8;
  v1[27] = v9;
  v1[28] = v10;
  v11 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v11);
  v1[35] = OUTLINED_FUNCTION_127();
  v12 = sub_1D5614898();
  v1[36] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[37] = v13;
  v1[38] = OUTLINED_FUNCTION_127();
  v14 = sub_1D5613AF8();
  v1[18] = v5;
  v1[39] = v14;
  v1[19] = v14;
  v1[20] = v3;
  v1[21] = MEMORY[0x1E6976CF0];
  v15 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest(0, (v1 + 18));
  v1[40] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[41] = v16;
  v1[42] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v17);
  v1[43] = OUTLINED_FUNCTION_167();
  v1[44] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D532B590()
{
  v33 = v0;
  v1 = v0[44];
  v27 = v0[43];
  v31 = v0[42];
  v2 = v0[38];
  v29 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  v30 = v0[33];
  v28 = v0[31];
  v26 = v0[30];
  v8 = v0[28];
  v7 = v0[29];
  v9 = OUTLINED_FUNCTION_45_1();
  __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
  (*(v3 + 16))(v2, v8, v4);
  OUTLINED_FUNCTION_24_0();
  v12 = OUTLINED_FUNCTION_45_3();
  v13(v12);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
  v0[26] = v7;
  v32 = 1;
  sub_1D533F530(v1, v27, &qword_1EC7EEC30, &unk_1D5620CE0);

  sub_1D4EA73A4(v26, v28);
  v17 = OUTLINED_FUNCTION_159();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_102();
  v23 = sub_1D51ADFE8(v20, v21, v22);
  sub_1D50580F4(v2, v5, (v0 + 26), &v32, v27, v26, v28, v6, v31, v29, v19, v30, MEMORY[0x1E6976CF0], v23);
  v24 = swift_task_alloc();
  v0[45] = v24;
  *v24 = v0;
  v24[1] = sub_1D532B7A8;
  OUTLINED_FUNCTION_93_0(v0[40]);

  return sub_1D50585C0();
}

uint64_t sub_1D532B7A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 368) = v4;
  *(v2 + 376) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D532B8A8()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_304_1();
  v4 = v1[46];
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v1[48] = v5;
  v6 = v5;
  OUTLINED_FUNCTION_103_13();

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D532B9BC;
  v7 = swift_continuation_init();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_136_10(v8);
  v1[11] = 1107296256;
  v1[12] = sub_1D5341F98;
  v1[13] = &block_descriptor_20;
  v1[14] = v7;
  [v2 performAddToPlaylistWithRequest:v4 completionHandler:v0];
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1D532B9BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D532BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 384);
  v12 = *(v10 + 352);

  v13 = OUTLINED_FUNCTION_70();
  v14(v13);
  sub_1D4E7661C(v12, &qword_1EC7EEC30, &unk_1D5620CE0);
  __swift_destroy_boxed_opaque_existential_1((v10 + 176));

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D532BB90()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[44];
  (*(v0[41] + 8))(v0[42], v0[40]);
  sub_1D4E7661C(v1, &qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_339();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D532BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[48];
  v12 = v10[46];
  v13 = v10[44];
  swift_willThrow();

  v14 = OUTLINED_FUNCTION_81_0();
  v15(v14);
  sub_1D4E7661C(v13, &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_339();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t MusicLibrary.add<A, B>(_:to:referralItem:tracks:importAllowedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v19 = v18;
  v21 = v20;
  v17[36] = a16;
  v17[37] = v16;
  v17[34] = v18;
  v17[35] = a15;
  v17[32] = v22;
  v17[33] = v20;
  v17[30] = v23;
  v17[31] = v24;
  v17[28] = v25;
  v17[29] = v26;
  OUTLINED_FUNCTION_258_2(v27);
  v28 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v28);
  v17[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v29 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v29);
  v17[39] = OUTLINED_FUNCTION_127();
  v30 = sub_1D5614898();
  v17[40] = v30;
  OUTLINED_FUNCTION_69(v30);
  v17[41] = v31;
  v17[42] = OUTLINED_FUNCTION_127();
  v17[18] = v21;
  v17[19] = v19;
  v17[20] = a15;
  v17[21] = a16;
  v32 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest(0, (v17 + 18));
  v17[43] = v32;
  OUTLINED_FUNCTION_69(v32);
  v17[44] = v33;
  v17[45] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1D532C070()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v4;
  *(v2 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D532C170()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_304_1();
  v4 = v1[47];
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v1[49] = v5;
  v6 = v5;
  OUTLINED_FUNCTION_103_13();

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D532C284;
  v7 = swift_continuation_init();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_136_10(v8);
  v1[11] = 1107296256;
  v1[12] = sub_1D5341F98;
  v1[13] = &block_descriptor_14;
  v1[14] = v7;
  [v2 performAddToPlaylistWithRequest:v4 completionHandler:v0];
  OUTLINED_FUNCTION_376();

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1D532C284()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 400) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D532C380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 392);

  v12 = OUTLINED_FUNCTION_159();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1((v10 + 176));

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D532C430()
{
  OUTLINED_FUNCTION_80();
  (*(v0[44] + 8))(v0[45], v0[43]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D532C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 392);
  v12 = *(v10 + 376);
  swift_willThrow();

  v13 = OUTLINED_FUNCTION_159();
  v14(v13);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t *sub_1D532C580(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4F23514();
  }

  else if (a2)
  {
    v9 = MEMORY[0x1E69E7C98] + 8;
    *&v8 = a2;
    swift_unknownObjectRetain();
    return sub_1D4F231B8(v6, &v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_275_0(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  *(v1 + 105) = *v0;
  v11 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_275_0(v2, v3, v4, v5, v6, v7, v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  *(v1 + 105) = *v0;
  v11 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D532C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_80();
  v20 = *(v19 + 105);
  sub_1D5613AF8();
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_176_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  *(v19 + 104) = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v19 + 88) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_224_3(v25);
  OUTLINED_FUNCTION_323();

  return MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1D532C774()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D532C86C()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E7661C(*(v0 + 80), &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D532C8E0()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E7661C(*(v0 + 80), &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v22 = v21;
  v24 = v23;
  *(v20 + 328) = a19;
  *(v20 + 336) = v19;
  *(v20 + 312) = a17;
  *(v20 + 320) = a18;
  *(v20 + 296) = v25;
  *(v20 + 304) = v21;
  *(v20 + 280) = v26;
  *(v20 + 288) = v27;
  *(v20 + 264) = v28;
  *(v20 + 272) = v29;
  *(v20 + 256) = v30;
  v31 = sub_1D560D838();
  OUTLINED_FUNCTION_22(v31);
  *(v20 + 344) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_334();
  v32 = sub_1D56158D8();
  *(v20 + 352) = v32;
  OUTLINED_FUNCTION_69(v32);
  *(v20 + 360) = v33;
  *(v20 + 368) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v34 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v34);
  *(v20 + 376) = OUTLINED_FUNCTION_127();
  v35 = *(a19 + 8);
  *(v20 + 384) = v35;
  *(v20 + 184) = v22;
  *(v20 + 192) = a17;
  *(v20 + 200) = a18;
  *(v20 + 208) = v35;
  v36 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest(0, v20 + 184);
  *(v20 + 392) = v36;
  OUTLINED_FUNCTION_69(v36);
  *(v20 + 400) = v37;
  *(v20 + 408) = OUTLINED_FUNCTION_127();
  v38 = sub_1D5614898();
  *(v20 + 416) = v38;
  OUTLINED_FUNCTION_69(v38);
  *(v20 + 424) = v39;
  *(v20 + 432) = *(v40 + 64);
  *(v20 + 440) = OUTLINED_FUNCTION_167();
  *(v20 + 448) = swift_task_alloc();
  *(v20 + 456) = swift_task_alloc();
  OUTLINED_FUNCTION_60_24();
  *(v20 + 464) = v41;
  *(v20 + 472) = *(v42 + 64);
  *(v20 + 480) = OUTLINED_FUNCTION_167();
  *(v20 + 488) = swift_task_alloc();
  v43 = sub_1D560C368();
  *(v20 + 496) = v43;
  OUTLINED_FUNCTION_69(v43);
  *(v20 + 504) = v44;
  *(v20 + 512) = OUTLINED_FUNCTION_127();
  *(v20 + 625) = *v24;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_376();
  return OUTLINED_FUNCTION_223_4(v45, v46, v47);
}

uint64_t sub_1D532CBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = v4;
  sub_1D560C358();
  v5 = sub_1D560C338();
  v7 = v6;
  v70 = v5;
  *(v4 + 520) = v5;
  *(v4 + 528) = v6;
  v8 = OUTLINED_FUNCTION_159();
  v9(v8);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v10 = *(v4 + 464);
  v73 = *(v4 + 456);
  v11 = *(v4 + 416);
  v12 = *(v4 + 424);
  v13 = *(v4 + 272);
  v14 = sub_1D560C758();
  *(v4 + 536) = __swift_project_value_buffer(v14, qword_1EC87C110);
  v16 = *(v10 + 16);
  v15 = v10 + 16;
  *(v4 + 544) = v16;
  *(v4 + 552) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17 = OUTLINED_FUNCTION_184();
  v74 = v18;
  v18(v17);
  v19 = *(v12 + 16);
  *(v4 + 560) = v19;
  *(v4 + 568) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72 = v19;
  (v19)(v73, v13, v11);

  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v7;
    v65 = *(v4 + 625);
    v23 = *(v4 + 480);
    v68 = v21;
    v24 = *(v4 + 304);
    v25 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v25 = 136446978;
    v26 = sub_1D4E6835C(v70, v22, &v76);
    v27 = OUTLINED_FUNCTION_233_2(v26);
    v74(v27);
    OUTLINED_FUNCTION_131();
    sub_1D5614DB8();
    v28 = OUTLINED_FUNCTION_254_2();
    v29(v28);
    v30 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_333_0();

    *(v25 + 14) = v24;
    *(v25 + 22) = v15;
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v33, 255, v34);
    sub_1D56160F8();
    v35 = OUTLINED_FUNCTION_280_0();
    v22(v35);
    v36 = OUTLINED_FUNCTION_121();
    v39 = sub_1D4E6835C(v36, v37, v38);

    *(v25 + 24) = v39;
    *(v25 + 32) = v15;
    *(v4 + 624) = v65;
    v40 = sub_1D5614DB8();
    sub_1D4E6835C(v40, v41, &v76);
    OUTLINED_FUNCTION_103_13();

    *(v25 + 34) = v23;
    OUTLINED_FUNCTION_346_0(&dword_1D4E3F000, "[%{public}s] Adding %{public}s to %{public}s with duplicate policy %{public}s.", v68);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v42 = *(v4 + 424);

    v22 = *(v42 + 8);
    v43 = OUTLINED_FUNCTION_70();
    v22(v43);
    v44 = OUTLINED_FUNCTION_121();
    v45(v44);
  }

  *(v4 + 576) = v22;
  v62 = *(v4 + 625);
  v46 = *(v4 + 376);
  v69 = *(v4 + 384);
  v71 = *(v4 + 408);
  v63 = *(v4 + 368);
  v64 = *(v4 + 320);
  v66 = *(v4 + 448);
  v67 = *(v4 + 312);
  v48 = *(v4 + 296);
  v47 = *(v4 + 304);
  v49 = *(v4 + 288);
  v72();
  v50 = OUTLINED_FUNCTION_93();
  v74(v50);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
  *(v4 + 248) = 0;
  v75 = v62;
  v54 = OUTLINED_FUNCTION_258();
  v55(v54);
  v56 = v49;
  sub_1D4EA73A4(v49, v48);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD8, &unk_1D56346A0);
  OUTLINED_FUNCTION_96();
  v59 = sub_1D51ADFE8(v58, &qword_1EC7EFBD8, &unk_1D56346A0);
  sub_1D50580F4(v66, v46, v4 + 248, &v75, v63, v56, v48, v47, v71, v67, v57, v64, v69, v59);
  v60 = swift_task_alloc();
  *(v4 + 584) = v60;
  *v60 = v4;
  v60[1] = sub_1D532D09C;
  OUTLINED_FUNCTION_93_0(*(v4 + 392));

  return sub_1D50585C0();
}

uint64_t sub_1D532D09C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v5;
  *(v3 + 600) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D532D1A8()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[74];
  v3 = v0[66];

  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();

  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    *v3 = 136446466;
    v6 = OUTLINED_FUNCTION_45_3();
    v9 = sub_1D4E6835C(v6, v7, v8);
    v10 = OUTLINED_FUNCTION_289_0(v9);
    v1 = [v10 description];
    sub_1D5614D68();
    OUTLINED_FUNCTION_261();

    v11 = OUTLINED_FUNCTION_210();
    v14 = sub_1D4E6835C(v11, v12, v13);

    *(v3 + 14) = v14;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v15, v16, "[%{public}s] Performing add to playlist request: %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_242_0();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v0[76] = v17;
  v18 = v17;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_78_6();
  v0[2] = v19;
  v0[7] = v1;
  OUTLINED_FUNCTION_48_8();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_11_15(v20);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  v21 = OUTLINED_FUNCTION_166_4();
  [v21 v22];
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1D532D380()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 616) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D532D480()
{
  v49 = *(v0 + 608);
  v1 = *(v0 + 560);
  v48 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_267_2();
  v4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_59_19();
  sub_1D5616158();
  v5 = OUTLINED_FUNCTION_59_19();
  v6(v5);

  v7 = MEMORY[0x1E69773A0];
  OUTLINED_FUNCTION_128();
  sub_1D560EC98();
  *(v0 + 168) = v2;
  *(v0 + 176) = v7;
  __swift_allocate_boxed_opaque_existential_0((v0 + 144));
  OUTLINED_FUNCTION_102();
  v1();
  swift_unknownObjectRetain();
  sub_1D56144C8();
  (v1)(v48, v3, v2);

  v8 = sub_1D560C738();
  v9 = sub_1D56156E8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 576);
  if (v10)
  {
    v12 = *(v0 + 440);
    v13 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_34_24();
    *v13 = 136446466;
    v14 = OUTLINED_FUNCTION_176();
    v17 = sub_1D4E6835C(v14, v15, v16);

    *(v13 + 4) = v17;
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_7_108();
    v20 = sub_1D4E413BC(v18, 255, v19);
    OUTLINED_FUNCTION_361_0(v20);
    OUTLINED_FUNCTION_261();
    v21 = OUTLINED_FUNCTION_74_0();
    v11(v21);
    v22 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v22, v23, v24);
    OUTLINED_FUNCTION_368();
    *(v13 + 14) = v12;
    _os_log_impl(&dword_1D4E3F000, v8, v9, "[%{public}s] Completed add to playlist request: %{public}s.", v13, 0x16u);
    OUTLINED_FUNCTION_238_2(v25, v26, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v27 = OUTLINED_FUNCTION_159();
    v11(v27);
  }

  v28 = *(v0 + 560);
  v47 = *(v0 + 592);
  v42 = *(v0 + 480);
  v29 = *(v0 + 464);
  v44 = *(v0 + 472);
  v30 = *(v0 + 448);
  v32 = *(v0 + 416);
  v31 = *(v0 + 424);
  v33 = *(v0 + 400);
  v45 = *(v0 + 392);
  v46 = *(v0 + 408);
  v41 = *(v0 + 304);
  v43 = *(v0 + 320);
  v34 = *(v0 + 304);
  (*(v0 + 544))();
  v35 = OUTLINED_FUNCTION_161();
  v28(v35);
  v36 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v37 = (v44 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v41;
  *(v38 + 32) = v43;
  (*(v29 + 32))(v38 + v36, v42, v34);
  (*(v31 + 32))(v38 + v37, v30, v32);
  sub_1D4FDC9B8();

  swift_unknownObjectRelease();

  (*(v33 + 8))(v46, v45);

  OUTLINED_FUNCTION_22_1();

  return v39();
}

uint64_t sub_1D532D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  (*(v12[50] + 8))(v12[51], v12[49]);
  v22 = v12[75];
  OUTLINED_FUNCTION_226_4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_1D532D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[76];
  v16 = v14[74];
  swift_willThrow();

  v17 = OUTLINED_FUNCTION_159();
  v18(v17);

  v28 = v14[77];
  OUTLINED_FUNCTION_226_4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, a11, a12, a13, a14);
}

uint64_t sub_1D532DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a4;
  v6[15] = a6;
  v6[12] = a2;
  v6[13] = a3;
  v6[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D532DB04, 0, 0);
}

uint64_t sub_1D532DB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_80();
  v17 = v16[14];
  v18 = v16[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADA8, &unk_1D561DB90);
  inited = swift_initStackObject();
  v16[16] = inited;
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 56) = v17;
  *(inited + 64) = *(v18 + 8);
  __swift_allocate_boxed_opaque_existential_0((inited + 32));
  OUTLINED_FUNCTION_24_0();
  (*(v20 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v16[17] = v21;
  *v21 = v22;
  v21[1] = sub_1D532DC18;

  return sub_1D542C4D8();
}

uint64_t sub_1D532DC18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  swift_setDeallocating();
  sub_1D4EFF288();
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t MusicLibrary.add<A, B>(_:to:with:duplicatePolicy:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v4 = v3;
  OUTLINED_FUNCTION_211_3(v5, v6, v7, v8, v3, v9, v10, v11);
  *(v1 + 272) = v12;
  *(v1 + 280) = v13;
  *(v1 + 256) = v14;
  *(v1 + 264) = v15;
  *(v1 + 248) = v16;
  v17 = sub_1D560D838();
  OUTLINED_FUNCTION_22(v17);
  *(v1 + 352) = OUTLINED_FUNCTION_127();
  v18 = sub_1D56158D8();
  *(v1 + 360) = v18;
  OUTLINED_FUNCTION_69(v18);
  *(v1 + 368) = v19;
  *(v1 + 376) = *(v20 + 64);
  *(v1 + 384) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v21 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v21);
  *(v1 + 392) = OUTLINED_FUNCTION_127();
  v22 = sub_1D5613AF8();
  *(v1 + 184) = v0;
  *(v1 + 400) = v22;
  *(v1 + 192) = v22;
  *(v1 + 200) = v2;
  *(v1 + 208) = MEMORY[0x1E6976CF0];
  v23 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest(0, v1 + 184);
  *(v1 + 408) = v23;
  OUTLINED_FUNCTION_69(v23);
  *(v1 + 416) = v24;
  *(v1 + 424) = OUTLINED_FUNCTION_127();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v25);
  *(v1 + 432) = OUTLINED_FUNCTION_167();
  *(v1 + 440) = swift_task_alloc();
  v26 = sub_1D5614898();
  *(v1 + 448) = v26;
  OUTLINED_FUNCTION_69(v26);
  *(v1 + 456) = v27;
  *(v1 + 464) = *(v28 + 64);
  v29 = OUTLINED_FUNCTION_167();
  *(v1 + 480) = OUTLINED_FUNCTION_296_0(v29);
  *(v1 + 488) = swift_task_alloc();
  OUTLINED_FUNCTION_60_24();
  *(v1 + 496) = v30;
  *(v1 + 504) = *(v31 + 64);
  *(v1 + 512) = OUTLINED_FUNCTION_167();
  *(v1 + 520) = swift_task_alloc();
  v32 = sub_1D560C368();
  *(v1 + 528) = v32;
  OUTLINED_FUNCTION_69(v32);
  *(v1 + 536) = v33;
  *(v1 + 544) = OUTLINED_FUNCTION_127();
  *(v1 + 673) = *v4;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();
  return OUTLINED_FUNCTION_342_0(v34, v35, v36);
}

uint64_t sub_1D532DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = v4;
  sub_1D560C358();
  v5 = sub_1D560C338();
  v7 = v6;
  v77 = v5;
  *(v4 + 552) = v5;
  *(v4 + 560) = v6;
  v8 = OUTLINED_FUNCTION_159();
  v9(v8);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v10 = *(v4 + 496);
  v80 = *(v4 + 488);
  v11 = *(v4 + 448);
  v12 = *(v4 + 456);
  v13 = *(v4 + 264);
  v14 = sub_1D560C758();
  *(v4 + 568) = __swift_project_value_buffer(v14, qword_1EC87C110);
  v16 = *(v10 + 16);
  v15 = v10 + 16;
  *(v4 + 576) = v16;
  *(v4 + 584) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17 = OUTLINED_FUNCTION_184();
  v81 = v18;
  v18(v17);
  v19 = *(v12 + 16);
  *(v4 + 592) = v19;
  *(v4 + 600) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v79 = v19;
  v19(v80, v13, v11);

  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v7;
    v73 = *(v4 + 673);
    v23 = *(v4 + 512);
    v75 = v21;
    v24 = *(v4 + 304);
    v25 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v25 = 136446978;
    v26 = sub_1D4E6835C(v77, v22, v83);
    v27 = OUTLINED_FUNCTION_233_2(v26);
    v81(v27);
    OUTLINED_FUNCTION_131();
    sub_1D5614DB8();
    v28 = OUTLINED_FUNCTION_254_2();
    v29(v28);
    v30 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_333_0();

    *(v25 + 14) = v24;
    *(v25 + 22) = v15;
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v33, 255, v34);
    sub_1D56160F8();
    v35 = OUTLINED_FUNCTION_280_0();
    v22(v35);
    v36 = OUTLINED_FUNCTION_121();
    v39 = sub_1D4E6835C(v36, v37, v38);

    *(v25 + 24) = v39;
    *(v25 + 32) = v15;
    *(v4 + 672) = v73;
    v40 = sub_1D5614DB8();
    sub_1D4E6835C(v40, v41, v83);
    OUTLINED_FUNCTION_103_13();

    *(v25 + 34) = v23;
    OUTLINED_FUNCTION_346_0(&dword_1D4E3F000, "[%{public}s] Adding %{public}s to %{public}s with duplicate policy %{public}s.", v75);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
    v42 = *(v4 + 456);

    v22 = *(v42 + 8);
    v43 = OUTLINED_FUNCTION_70();
    v22(v43);
    v44 = OUTLINED_FUNCTION_121();
    v45(v44);
  }

  *(v4 + 608) = v22;
  v70 = *(v4 + 673);
  v46 = *(v4 + 480);
  v48 = *(v4 + 440);
  v47 = *(v4 + 448);
  v49 = *(v4 + 392);
  v50 = *(v4 + 368);
  v66 = *(v4 + 384);
  v76 = *(v4 + 320);
  v78 = *(v4 + 424);
  v51 = *(v4 + 304);
  v71 = *(v4 + 432);
  v72 = *(v4 + 312);
  v74 = *(v4 + 296);
  v68 = *(v4 + 288);
  v69 = *(v4 + 400);
  v67 = *(v4 + 280);
  v53 = *(v4 + 256);
  v52 = *(v4 + 264);
  v54 = OUTLINED_FUNCTION_20_22();
  __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
  v79(v46, v52, v47);
  (v81)(v49, v53, v51);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v51);
  *(v4 + 616) = *(v50 + 16);
  *(v4 + 624) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60 = OUTLINED_FUNCTION_140_3();
  v61(v60);
  v82 = v70;
  sub_1D533F530(v48, v71, &qword_1EC7EEC30, &unk_1D5620CE0);
  v62 = OUTLINED_FUNCTION_99();
  sub_1D4EA73A4(v62, v63);
  sub_1D50580F4(v46, v49, v66, &v82, v71, v67, v68, v51, v78, v69, v74, v76, MEMORY[0x1E6976CF0], v72);
  v64 = swift_task_alloc();
  *(v4 + 632) = v64;
  *v64 = v4;
  v64[1] = sub_1D532E4BC;
  OUTLINED_FUNCTION_93_0(*(v4 + 408));

  return sub_1D50585C0();
}

uint64_t sub_1D532E4BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 640) = v5;
  *(v3 + 648) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D532E5C8()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[80];
  v3 = v0[70];

  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();

  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    *v3 = 136446466;
    v6 = OUTLINED_FUNCTION_45_3();
    v9 = sub_1D4E6835C(v6, v7, v8);
    v10 = OUTLINED_FUNCTION_289_0(v9);
    v1 = [v10 description];
    sub_1D5614D68();
    OUTLINED_FUNCTION_261();

    v11 = OUTLINED_FUNCTION_210();
    v14 = sub_1D4E6835C(v11, v12, v13);

    *(v3 + 14) = v14;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v15, v16, "[%{public}s] Performing add to playlist request: %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_242_0();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v0[82] = v17;
  v18 = v17;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_78_6();
  v0[2] = v19;
  v0[7] = v1;
  OUTLINED_FUNCTION_48_8();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_11_15(v20);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  v21 = OUTLINED_FUNCTION_166_4();
  [v21 v22];
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1D532E7A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 664) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D532E8A0()
{
  v1 = *(v0 + 592);
  v59 = *(v0 + 656);
  v58 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_267_2();
  v5();
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_59_19();
  sub_1D5616158();
  v6 = OUTLINED_FUNCTION_59_19();
  v7(v6);

  v8 = MEMORY[0x1E69773A0];
  OUTLINED_FUNCTION_93();
  sub_1D560EC98();
  *(v0 + 168) = v2;
  *(v0 + 176) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
  v1(boxed_opaque_existential_0, v3, v2);
  swift_unknownObjectRetain();
  sub_1D56144C8();
  v1(v58, v4, v2);

  v10 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v11 = os_log_type_enabled(v10, v2);
  v12 = *(v0 + 608);
  if (v11)
  {
    v13 = *(v0 + 472);
    v14 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_34_24();
    *v14 = 136446466;
    v15 = OUTLINED_FUNCTION_176();
    v18 = sub_1D4E6835C(v15, v16, v17);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    OUTLINED_FUNCTION_7_108();
    v21 = sub_1D4E413BC(v19, 255, v20);
    OUTLINED_FUNCTION_361_0(v21);
    OUTLINED_FUNCTION_261();
    v22 = OUTLINED_FUNCTION_74_0();
    v12(v22);
    v23 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v23, v24, v25);
    OUTLINED_FUNCTION_368();
    *(v14 + 14) = v13;
    _os_log_impl(&dword_1D4E3F000, v10, v2, "[%{public}s] Completed add to playlist request: %{public}s.", v14, 0x16u);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_46_6();
  }

  else
  {

    v26 = OUTLINED_FUNCTION_159();
    v12(v26);
  }

  v57 = *(v0 + 640);
  v49 = *(v0 + 592);
  v42 = *(v0 + 576);
  v46 = *(v0 + 512);
  v52 = *(v0 + 504);
  v27 = *(v0 + 496);
  v28 = *(v0 + 480);
  v48 = v28;
  v29 = *(v0 + 456);
  v30 = *(v0 + 448);
  v47 = v30;
  v56 = *(v0 + 440);
  v55 = *(v0 + 424);
  v53 = *(v0 + 416);
  v54 = *(v0 + 408);
  v60 = *(v0 + 384);
  v31 = *(v0 + 368);
  v41 = *(v0 + 376);
  v44 = *(v0 + 360);
  v51 = *(v0 + 336);
  v50 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 320);
  v32 = *(v0 + 264);
  v33 = *(v0 + 304);
  (*(v0 + 616))();
  v34 = OUTLINED_FUNCTION_45_3();
  v42(v34);
  v49(v28, v32, v30);
  v35 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v36 = (v41 + *(v27 + 80) + v35) & ~*(v27 + 80);
  v37 = (v52 + *(v29 + 80) + v36) & ~*(v29 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v50;
  *(v38 + 24) = v43;
  *(v38 + 40) = v45;
  *(v38 + 56) = v51;
  (*(v31 + 32))(v38 + v35, v60, v44);
  (*(v27 + 32))(v38 + v36, v46, v33);
  (*(v29 + 32))(v38 + v37, v48, v47);
  sub_1D4FDC9B8();

  swift_unknownObjectRelease();

  (*(v53 + 8))(v55, v54);
  sub_1D4E7661C(v56, &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_22_1();

  return v39();
}

uint64_t sub_1D532EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[55];
  (*(v14[52] + 8))(v14[53], v14[51]);
  sub_1D4E7661C(v15, &qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_195_4();
  v27 = v16;
  v28 = v14[44];
  v29 = v17;

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_1D532EF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = v16[82];
  v18 = v16[80];
  v19 = v16[55];
  swift_willThrow();

  v20 = OUTLINED_FUNCTION_81_0();
  v21(v20);
  sub_1D4E7661C(v19, &qword_1EC7EEC30, &unk_1D5620CE0);

  OUTLINED_FUNCTION_195_4();
  v33 = v22;
  v34 = v16[44];
  v35 = v23;

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, v35, a13, a14, a15, a16);
}

uint64_t sub_1D532F048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v10 = sub_1D56158D8();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(a5 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D532F17C, 0, 0);
}

uint64_t sub_1D532F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v17 = v16[13];
  v18 = v16 + 12;
  v19 = v16 + 11;
  v20 = v16[7];
  v21 = OUTLINED_FUNCTION_48_22();
  v22(v21);
  OUTLINED_FUNCTION_57(v17, 1, v20);
  if (v23)
  {
    v24 = v16[13];
LABEL_6:
    (*(*v18 + 8))(v24, *v19);
    v29 = v16[10];
    v30 = v16[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
    OUTLINED_FUNCTION_311_0();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D561C050;
    *(v31 + 56) = v30;
    *(v31 + 64) = v29;
    __swift_allocate_boxed_opaque_existential_0((v31 + 32));
    OUTLINED_FUNCTION_24_0();
    (*(v32 + 16))();
    goto LABEL_8;
  }

  v18 = v16 + 14;
  v25 = v16[14];
  (*(v25 + 32))(v16[16], v16[13], v16[7]);
  v26 = *(v25 + 16);
  v27 = OUTLINED_FUNCTION_63_1();
  v26(v27);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_98();
  v16[2] = sub_1D5615318();
  OUTLINED_FUNCTION_4_32();
  v28 = sub_1D56152D8();
  swift_getWitnessTable();
  sub_1D5615678();
  OUTLINED_FUNCTION_283_0();
  v24 = v16[16];
  if (v28)
  {
    v19 = v16 + 7;
    goto LABEL_6;
  }

  v33 = OUTLINED_FUNCTION_63_1();
  v26(v33);
  OUTLINED_FUNCTION_98();
  sub_1D5615318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  OUTLINED_FUNCTION_98();
  sub_1D5615D38();
  OUTLINED_FUNCTION_75_1();

  v34 = OUTLINED_FUNCTION_121();
  v35(v34);
LABEL_8:
  sub_1D526F3EC();
  v16[17] = v36;

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v16[18] = v37;
  *v37 = v38;
  v37[1] = sub_1D532F448;
  OUTLINED_FUNCTION_73_0();

  return sub_1D542C4D8();
}

uint64_t sub_1D532F448()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D532F62C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 105);
  sub_1D5613AF8();
  OUTLINED_FUNCTION_107_5();
  OUTLINED_FUNCTION_176_4();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *(v0 + 104) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 88) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_224_3(v6);
  OUTLINED_FUNCTION_323();

  return MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)();
}

uint64_t sub_1D532F704()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t MusicLibrary.add<A, B>(_:to:duplicatePolicy:referralContainer:importAllowedHandler:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v4 = v3;
  OUTLINED_FUNCTION_211_3(v5, v6, v7, v3, v8, v9, v10, v11);
  *(v1 + 272) = v12;
  *(v1 + 280) = v13;
  *(v1 + 256) = v14;
  *(v1 + 264) = v15;
  *(v1 + 248) = v16;
  OUTLINED_FUNCTION_1_0();
  *(v1 + 352) = v17;
  *(v1 + 360) = *(v18 + 64);
  *(v1 + 368) = OUTLINED_FUNCTION_127();
  v19 = sub_1D560D838();
  OUTLINED_FUNCTION_22(v19);
  *(v1 + 376) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_334();
  v20 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v20);
  *(v1 + 384) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  v21 = sub_1D56158D8();
  *(v1 + 392) = v21;
  OUTLINED_FUNCTION_69(v21);
  *(v1 + 400) = v22;
  *(v1 + 408) = OUTLINED_FUNCTION_167();
  *(v1 + 416) = swift_task_alloc();
  v23 = *(v2 + 8);
  *(v1 + 424) = v23;
  *(v1 + 184) = v0;
  *(v1 + 192) = v0;
  *(v1 + 200) = v2;
  *(v1 + 208) = v23;
  v24 = type metadata accessor for MusicLibraryAddToPlaylistChangeRequest(0, v1 + 184);
  *(v1 + 432) = v24;
  OUTLINED_FUNCTION_69(v24);
  *(v1 + 440) = v25;
  *(v1 + 448) = OUTLINED_FUNCTION_127();
  v26 = sub_1D5614898();
  *(v1 + 456) = v26;
  OUTLINED_FUNCTION_69(v26);
  *(v1 + 464) = v27;
  *(v1 + 472) = *(v28 + 64);
  *(v1 + 480) = OUTLINED_FUNCTION_167();
  *(v1 + 488) = swift_task_alloc();
  v29 = sub_1D560C368();
  *(v1 + 496) = v29;
  OUTLINED_FUNCTION_69(v29);
  *(v1 + 504) = v30;
  *(v1 + 512) = OUTLINED_FUNCTION_127();
  *(v1 + 617) = *v4;
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();
  return OUTLINED_FUNCTION_342_0(v31, v32, v33);
}

uint64_t sub_1D532FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = v4;
  sub_1D560C358();
  *(v4 + 520) = sub_1D560C338();
  *(v4 + 528) = v5;
  v6 = OUTLINED_FUNCTION_159();
  v7(v6);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v8 = *(v4 + 464);
  v9 = sub_1D560C758();
  *(v4 + 536) = __swift_project_value_buffer(v9, qword_1EC87C110);
  *(v4 + 544) = *(v8 + 16);
  *(v4 + 552) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10 = OUTLINED_FUNCTION_182_3();
  v65 = v11;
  (v11)(v10);

  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();

  if (os_log_type_enabled(v12, v13))
  {
    v62 = *(v4 + 617);
    v14 = *(v4 + 488);
    v15 = OUTLINED_FUNCTION_138_0();
    v67 = OUTLINED_FUNCTION_355_0();
    *v15 = 136446722;
    v16 = OUTLINED_FUNCTION_45_3();
    *(v15 + 4) = sub_1D4E6835C(v16, v17, v18);
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_7_108();
    sub_1D4E413BC(v19, 255, v20);
    v21 = sub_1D56160F8();
    v22 = OUTLINED_FUNCTION_184();
    v23(v22);
    v24 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_333_0();

    *(v15 + 14) = v14;
    *(v15 + 22) = 2082;
    *(v4 + 616) = v62;
    v27 = sub_1D5614DB8();
    sub_1D4E6835C(v27, v28, &v67);
    OUTLINED_FUNCTION_103_13();

    *(v15 + 24) = v21;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v34 = OUTLINED_FUNCTION_222();
    v35(v34);
  }

  v57 = *(v4 + 617);
  v59 = *(v4 + 480);
  v36 = *(v4 + 416);
  v63 = *(v4 + 424);
  v64 = *(v4 + 448);
  v37 = *(v4 + 400);
  v39 = *(v4 + 384);
  v38 = *(v4 + 392);
  v40 = *(v4 + 352);
  v58 = *(v4 + 312);
  v41 = *(v4 + 296);
  v60 = *(v4 + 304);
  v61 = *(v4 + 320);
  v55 = *(v4 + 288);
  v56 = *(v4 + 408);
  v54 = *(v4 + 280);
  v42 = *(v4 + 272);
  v43 = *(v4 + 256);
  v65();
  v44 = *(v37 + 16);
  v44(v36, v42, v38);
  v45 = *(v40 + 16);
  *(v4 + 560) = v45;
  *(v4 + 568) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45(v39, v43, v41);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
  v66 = v57;
  v49 = OUTLINED_FUNCTION_71();
  (v44)(v49);
  v50 = OUTLINED_FUNCTION_63_1();
  sub_1D4EA73A4(v50, v51);
  sub_1D50580F4(v59, v36, v39, &v66, v56, v54, v55, v60, v64, v60, v41, v61, v63, v58);
  v52 = swift_task_alloc();
  *(v4 + 576) = v52;
  *v52 = v4;
  v52[1] = sub_1D532FE60;
  OUTLINED_FUNCTION_93_0(*(v4 + 432));

  return sub_1D50585C0();
}

uint64_t sub_1D532FE60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 584) = v5;
  *(v3 + 592) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D532FF6C()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[73];
  v3 = v0[66];

  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();

  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    *v3 = 136446466;
    v6 = OUTLINED_FUNCTION_45_3();
    v9 = sub_1D4E6835C(v6, v7, v8);
    v10 = OUTLINED_FUNCTION_289_0(v9);
    v1 = [v10 description];
    sub_1D5614D68();
    OUTLINED_FUNCTION_261();

    v11 = OUTLINED_FUNCTION_210();
    v14 = sub_1D4E6835C(v11, v12, v13);

    *(v3 + 14) = v14;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v15, v16, "[%{public}s] Performing add to playlist request: %{public}s");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_242_0();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v0[75] = v17;
  v18 = v17;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_78_6();
  v0[2] = v19;
  v0[7] = v1;
  OUTLINED_FUNCTION_48_8();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  OUTLINED_FUNCTION_11_15(v20);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  v21 = OUTLINED_FUNCTION_166_4();
  [v21 v22];
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1D5330144()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5330244()
{
  v1 = (v0 + 296);
  v2 = *(v0 + 600);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_127();
  (*(v4 + 16))();
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  OUTLINED_FUNCTION_15_2();
  sub_1D5616158();
  v5 = OUTLINED_FUNCTION_15_2();
  v6(v5);

  v7 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    *v2 = 136446210;
    v8 = OUTLINED_FUNCTION_99();
    v11 = sub_1D4E6835C(v8, v9, v10);

    *(v2 + 1) = v11;
    OUTLINED_FUNCTION_96_14();
    _os_log_impl(v12, v13, v14, v15, v2, 0xCu);
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
  }

  v42 = *(v0 + 584);
  v34 = *(v0 + 560);
  v16 = *(v0 + 544);
  v33 = *(v0 + 480);
  v38 = *(v0 + 464);
  v17 = *(v0 + 456);
  v39 = *(v0 + 440);
  v40 = *(v0 + 432);
  v41 = *(v0 + 448);
  v18 = *(v0 + 368);
  v19 = *(v0 + 352);
  v20 = *(v0 + 264);
  v31 = *(v0 + 256);
  v32 = *(v0 + 360);
  v30 = v18;
  v35 = *v1;
  v21 = *v1;
  v29 = *v1;
  v36 = *(v0 + 328);
  v37 = *(v0 + 312);
  v22 = MEMORY[0x1E69773A0];
  sub_1D560EC98();
  *(v0 + 168) = v17;
  *(v0 + 176) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 144));
  v16(boxed_opaque_existential_0, v20, v17);
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_258();
  sub_1D56144C8();
  v34(v18, v31, v21);
  v16(v33, v20, v17);
  v24 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v25 = (v32 + *(v38 + 80) + v24) & ~*(v38 + 80);
  v26 = swift_allocObject();
  *(v26 + 1) = v35;
  *(v26 + 2) = v37;
  *(v26 + 3) = v36;
  (*(v19 + 32))(&v26[v24], v30, v29);
  (*(v38 + 32))(&v26[v25], v33, v17);
  sub_1D4FDC9B8();

  swift_unknownObjectRelease();

  (*(v39 + 8))(v41, v40);

  OUTLINED_FUNCTION_22_1();

  return v27();
}

uint64_t sub_1D5330638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  (*(v12[55] + 8))(v12[56], v12[54]);
  OUTLINED_FUNCTION_245_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1D53306F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 600);
  v14 = *(v12 + 584);
  swift_willThrow();

  v15 = OUTLINED_FUNCTION_159();
  v16(v15);

  OUTLINED_FUNCTION_245_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1D53307C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = *(a4 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5330884, 0, 0);
}

uint64_t sub_1D5330884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_80();
  v17 = OUTLINED_FUNCTION_48_22();
  v18(v17);
  OUTLINED_FUNCTION_4_32();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62_5();
  sub_1D5615318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  OUTLINED_FUNCTION_68_4();
  *(v16 + 72) = sub_1D5615D38();

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v16 + 80) = v19;
  *v19 = v20;
  v19[1] = sub_1D53309A0;

  return sub_1D542C4D8();
}

uint64_t sub_1D53309A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t MusicLibrary.remove(_:from:)()
{
  OUTLINED_FUNCTION_60();
  v0[6] = v1;
  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44E8, &qword_1D5653938);
  OUTLINED_FUNCTION_22(v3);
  v0[8] = OUTLINED_FUNCTION_127();
  v4 = sub_1D5614828();
  v0[9] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[10] = v5;
  v0[11] = OUTLINED_FUNCTION_167();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v6 = sub_1D560C368();
  v0[14] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[15] = v7;
  v0[16] = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5330BEC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  v0[17] = v1;
  v0[18] = v2;
  v3 = OUTLINED_FUNCTION_159();
  v4(v3);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v5 = v0[10];
  v6 = v0[6];
  v7 = sub_1D560C758();
  v8 = __swift_project_value_buffer(v7, qword_1EC87C110);
  v0[19] = v8;
  v0[20] = *(v5 + 16);
  v0[21] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9 = OUTLINED_FUNCTION_121();
  v10(v9);

  v11 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_309_0();

  v12 = os_log_type_enabled(v11, v6);
  v13 = v0[13];
  v14 = v0[10];
  if (v12)
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_142_10();
    *v8 = 136446466;
    v15 = OUTLINED_FUNCTION_93();
    v18 = sub_1D4E6835C(v15, v16, v17);
    OUTLINED_FUNCTION_42_39(v18);
    OUTLINED_FUNCTION_32_47();
    sub_1D4E413BC(v19, 255, v20);
    sub_1D56160F8();
    OUTLINED_FUNCTION_178_2();
    v21 = *(v14 + 8);
    v22 = OUTLINED_FUNCTION_184();
    v21(v22);
    v23 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v23, v24, v25);
    OUTLINED_FUNCTION_183();

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D4E3F000, v11, v6, "[%{public}s] Removing playlist entry %{public}s.", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    v21 = *(v14 + 8);
    v26 = OUTLINED_FUNCTION_184();
    v21(v26);
  }

  v0[22] = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[23] = v27;
  *v27 = v28;
  v27[1] = sub_1D5330E54;
  OUTLINED_FUNCTION_89();

  return sub_1D51E57B0();
}

uint64_t sub_1D5330E54()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5330F54()
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v2 = *(v1 + 160);
  v3 = *(v1 + 96);
  v4 = *(v1 + 72);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(v1 + 200) = v7;
  v2(v3, v5, v4);

  v8 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  v9 = os_log_type_enabled(v8, v0);
  v10 = *(v1 + 176);
  if (v9)
  {
    v11 = *(v1 + 96);
    v12 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_34_24();
    *v12 = 136446466;
    v13 = OUTLINED_FUNCTION_176();
    *(v12 + 4) = sub_1D4E6835C(v13, v14, v15);
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_32_47();
    v18 = sub_1D4E413BC(v16, 255, v17);
    OUTLINED_FUNCTION_361_0(v18);
    OUTLINED_FUNCTION_261();
    v19 = OUTLINED_FUNCTION_74_0();
    v10(v19);
    v20 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v20, v21, v22);
    OUTLINED_FUNCTION_368();
    *(v12 + 14) = v11;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v28 = OUTLINED_FUNCTION_222();
    v10(v28);
  }

  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 208) = v29;
  *v29 = v30;
  v29[1] = sub_1D5331154;
  OUTLINED_FUNCTION_63_0();

  return MusicLibraryPlaylistRequest.response<>()(v31);
}

uint64_t sub_1D5331154()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1D4E7661C(*(v3 + 64), &qword_1EC7F44E8, &qword_1D5653938);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D533126C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  (*(v15 + 160))(*(v15 + 88), *(v15 + 48), *(v15 + 72));

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  v17 = os_log_type_enabled(v16, v14);
  v18 = *(v15 + 200);
  v19 = *(v15 + 176);
  if (v17)
  {
    v20 = *(v15 + 88);
    a9 = *(v15 + 80);
    v21 = OUTLINED_FUNCTION_144();
    a10 = v18;
    a11 = OUTLINED_FUNCTION_34_24();
    *v21 = 136446466;
    v22 = OUTLINED_FUNCTION_176();
    v25 = sub_1D4E6835C(v22, v23, v24);

    *(v21 + 4) = v25;
    OUTLINED_FUNCTION_302_2();
    OUTLINED_FUNCTION_32_47();
    v28 = sub_1D4E413BC(v26, 255, v27);
    OUTLINED_FUNCTION_361_0(v28);
    OUTLINED_FUNCTION_261();
    v29 = OUTLINED_FUNCTION_74_0();
    v19(v29);
    v30 = OUTLINED_FUNCTION_210();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_368();
    *(v21 + 14) = v20;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {

    v38 = OUTLINED_FUNCTION_222();
    v19(v38);
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D533145C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_347_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D53314DC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_347_0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t MusicLibrary.updateSubscribedPlaylist(_:ignoreMinimumRefreshInterval:)()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 200) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  v4 = sub_1D560D838();
  *(v1 + 160) = v4;
  OUTLINED_FUNCTION_69(v4);
  *(v1 + 168) = v5;
  *(v1 + 176) = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D533160C()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *(v0 + 160);
  sub_1D5614898();
  sub_1D560EC98();
  v2 = sub_1D560D768();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_70();
  v7 = v6(v5);
  if (v4)
  {
    v8 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v9 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {

      goto LABEL_79;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v33 = OUTLINED_FUNCTION_71();
      v13 = sub_1D533FED4(v33, v34, 10);
      v20 = v35;
      goto LABEL_78;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      if (v2 == 43)
      {
        if (v8)
        {
          if (v8 != 1)
          {
            v13 = 0;
            OUTLINED_FUNCTION_179_6();
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v12 && v14)
              {
                break;
              }

              OUTLINED_FUNCTION_271_1();
              if (!v12)
              {
                break;
              }

              OUTLINED_FUNCTION_243_2();
              if (v14)
              {
                break;
              }

              OUTLINED_FUNCTION_40_0();
              if (v12)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_90:
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v7);
      }

      if (v2 != 45)
      {
        if (v8)
        {
          v13 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v12 && v14)
            {
              break;
            }

            OUTLINED_FUNCTION_271_1();
            if (!v12)
            {
              break;
            }

            OUTLINED_FUNCTION_243_2();
            if (v14)
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v12)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if (v8)
      {
        if (v8 != 1)
        {
          v13 = 0;
          OUTLINED_FUNCTION_179_6();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v12 && v14)
            {
              break;
            }

            OUTLINED_FUNCTION_271_1();
            if (!v12)
            {
              break;
            }

            v14 = 10 * v13 >= v17;
            v13 = 10 * v13 - v17;
            if (!v14)
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v12)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_71();
        sub_1D5615C58();
      }

      OUTLINED_FUNCTION_329_0();
      if (v12)
      {
        if (v10 >= 1)
        {
          if (v10 != 1)
          {
            v13 = 0;
            if (v7)
            {
              OUTLINED_FUNCTION_80_7();
              while (1)
              {
                OUTLINED_FUNCTION_22_0();
                if (!v12 && v14)
                {
                  goto LABEL_76;
                }

                OUTLINED_FUNCTION_271_1();
                if (!v12)
                {
                  goto LABEL_76;
                }

                OUTLINED_FUNCTION_243_2();
                if (v14)
                {
                  goto LABEL_76;
                }

                OUTLINED_FUNCTION_40_0();
                if (v12)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_76;
        }

        goto LABEL_89;
      }

      if (v11 != 45)
      {
        if (v10)
        {
          v13 = 0;
          if (v7)
          {
            v18 = 10;
            while (1)
            {
              v19 = *v7 - 48;
              if (v19 > 9)
              {
                goto LABEL_76;
              }

              if (!is_mul_ok(v13, v18))
              {
                goto LABEL_76;
              }

              v14 = __CFADD__(10 * v13, v19);
              v13 = 10 * v13 + v19;
              if (v14)
              {
                goto LABEL_76;
              }

              v7 = OUTLINED_FUNCTION_324_0(v7);
              if (v12)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_76:
        v13 = 0;
        v16 = 1;
        goto LABEL_77;
      }

      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v13 = 0;
          if (v7)
          {
            OUTLINED_FUNCTION_80_7();
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v12 && v14)
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_271_1();
              if (!v12)
              {
                goto LABEL_76;
              }

              v14 = 10 * v13 >= v15;
              v13 = 10 * v13 - v15;
              if (!v14)
              {
                goto LABEL_76;
              }

              OUTLINED_FUNCTION_40_0();
              if (v12)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_66:
          v16 = 0;
LABEL_77:
          v20 = v16;
LABEL_78:

          if (v20)
          {
            goto LABEL_79;
          }

          OUTLINED_FUNCTION_146_7();
          v24 = *(v0 + 200);
          v25 = sub_1D4E5A1CC();
          v26 = v25[6];

          v27 = *(v26 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
          *(v0 + 184) = v27;
          v28 = v27;
          OUTLINED_FUNCTION_333_0();

          OUTLINED_FUNCTION_114_6();
          *(v0 + 16) = v29;
          v30 = OUTLINED_FUNCTION_99_14();
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
          OUTLINED_FUNCTION_35_7(v31);
          OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
          OUTLINED_FUNCTION_4_27();
          *(v0 + 104) = v32;
          *(v0 + 112) = v30;
          [v25 updateSubscribedPlaylistWithSagaID:v13 ignoreMinRefreshInterval:v24 completionHandler:v1];
          v7 = v20;

          return MEMORY[0x1EEE6DEC8](v7);
        }

        goto LABEL_76;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_79:
  sub_1D51E8560();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_199_3(v21, 7);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v22();
}

uint64_t sub_1D5331A18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5331B14()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D5331B74()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t MusicLibrary.setAddToPlaylistBehavior(_:)(_BYTE *a1)
{
  *(v2 + 144) = v1;
  *(v2 + 168) = *a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D5331C00()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0;
  v2 = *(v0 + 168);
  v3 = *(sub_1D4E5A1CC() + 48);

  v4 = *(v3 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);
  v1[19] = v4;
  v5 = v4;

  v1[2] = v1;
  v1[3] = sub_1D5331D58;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4FE2404;
  v1[13] = &block_descriptor_53;
  v1[14] = v6;
  [v5 setCloudAddToPlaylistBehavior:v2 completionHandler:v1 + 10];
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1D5331D58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5331E54()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D5331EAC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 152);
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t MusicLibrary.addToPlaylistBehavior()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D5331F28()
{
  OUTLINED_FUNCTION_91();
  v1 = *(sub_1D4E5A1CC() + 48);

  v2 = *(v1 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController);

  v3 = [v2 cloudAddToPlaylistBehavior];

  if (v3 >= 3)
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    return sub_1D5615E08();
  }

  else
  {
    **(v0 + 16) = v3;
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t MusicLibrary.download<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.download<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.download<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_171_5(v9, v10, v7, v5, v3, v1);
  v11 = sub_1D560C368();
  v0[29] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[30] = v12;
  v0[31] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_1_0();
  v0[32] = v13;
  v0[33] = OUTLINED_FUNCTION_167();
  v0[34] = swift_task_alloc();
  v0[18] = v8;
  v0[19] = v6;
  v0[20] = v4;
  v0[21] = v2;
  v14 = type metadata accessor for MusicLibraryKeepLocalChangeRequest(0, (v0 + 18));
  v0[35] = v14;
  OUTLINED_FUNCTION_69(v14);
  v0[36] = v15;
  v0[37] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D5332238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = v24[37];
  v28 = v24[34];
  v29 = v24[31];
  v30 = v24[30];
  v31 = v24[26];
  v72 = v24[27];
  v73 = v24[29];
  v33 = v24[24];
  v32 = v24[25];
  v34 = v24[23];
  v74 = *(v24[32] + 16);
  (v74)(v28, v24[22], v33);

  sub_1D5391E6C(v28, 3, v34, MEMORY[0x1E69E7CC0], v33, v32, v31, v72, v27);
  sub_1D560C358();
  v35 = sub_1D560C338();
  v37 = v36;
  v24[38] = v35;
  v24[39] = v36;
  (*(v30 + 8))(v29, v73);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v38 = sub_1D560C758();
  v24[40] = __swift_project_value_buffer(v38, qword_1EC87C110);
  v39 = OUTLINED_FUNCTION_121();
  (v74)(v39);

  v40 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v71 = v35;
    v41 = v24[33];
    v42 = v24[34];
    v43 = v24[24];
    OUTLINED_FUNCTION_144();
    a13 = OUTLINED_FUNCTION_137_11();
    *v74 = 136446466;
    v44 = sub_1D4E6835C(v71, v37, &a13);
    OUTLINED_FUNCTION_41_41(v44);
    (v74)(v42, v41, v43);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    v45 = OUTLINED_FUNCTION_258();
    v46(v45);
    v47 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v47, v48, v49);
    OUTLINED_FUNCTION_75_1();

    *(v74 + 14) = v37;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
    OUTLINED_FUNCTION_238_2(v55, v56, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_46_6();
    OUTLINED_FUNCTION_83();
  }

  else
  {

    v57 = OUTLINED_FUNCTION_15_8();
    v58(v57);
  }

  OUTLINED_FUNCTION_86_6();
  v59 = v24[37];
  v60 = v24[35];
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1();
  v24[41] = v61;
  v62 = v61;
  OUTLINED_FUNCTION_183();

  v63 = *(v59 + *(v60 + 64));
  v24[42] = v63;
  v24[2] = v24;
  v64 = OUTLINED_FUNCTION_48_8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v65);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v24[12] = v66;
  v24[13] = &block_descriptor_59;
  v24[14] = v64;
  v67 = v63;
  OUTLINED_FUNCTION_372(v67, sel_performLibraryKeepLocalChangeWithRequest_completionHandler_, v67);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v68);
}

uint64_t sub_1D5332558()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5332658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);

  v14 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v15 = *(v12 + 304);
    v16 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v16 = 136446210;
    v17 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v17, v18, v19);
    OUTLINED_FUNCTION_126_6();

    *(v16 + 4) = v15;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v20, v21, v22, v23);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v24 = OUTLINED_FUNCTION_128();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_15_8();
  }

  v25(v24);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D53327A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);
  v14 = *(v12 + 328);
  swift_willThrow();
  v15 = OUTLINED_FUNCTION_159();
  v16(v15);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t MusicLibrary.download<A>(_:constraints:)()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_1D5613D28();
  *v1 = v0;
  v1[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_166_4();
  OUTLINED_FUNCTION_376();

  return MusicLibrary.download<A, B>(_:relatedItems:constraints:)();
}

uint64_t MusicLibrary.download<A, B>(_:relatedItems:constraints:)()
{
  OUTLINED_FUNCTION_60();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[24] = v5;
  v1[25] = v6;
  v1[22] = v7;
  v1[23] = v8;
  v1[18] = v6;
  v1[19] = v3;
  v1[20] = v4;
  v1[21] = v2;
  v9 = type metadata accessor for MusicLibraryKeepLocalChangeRequest(0, (v1 + 18));
  v1[30] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  v1[33] = v11;
  v1[34] = OUTLINED_FUNCTION_167();
  v1[35] = swift_task_alloc();
  v12 = sub_1D560C368();
  v1[36] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[37] = v13;
  v1[38] = OUTLINED_FUNCTION_127();
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D5332E1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 352) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5332F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 344);

  v14 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v15 = *(v12 + 312);
    v16 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v16 = 136446210;
    v17 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v17, v18, v19);
    OUTLINED_FUNCTION_126_6();

    *(v16 + 4) = v15;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v20, v21, v22, v23);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v24 = OUTLINED_FUNCTION_128();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_15_8();
  }

  v25(v24);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D5333070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 344);
  v14 = *(v12 + 336);
  swift_willThrow();
  v15 = OUTLINED_FUNCTION_201();
  v16(v15);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t MusicLibrary.download<A, B>(_:)()
{
  OUTLINED_FUNCTION_80();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  OUTLINED_FUNCTION_1_0();
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_127();
  v8 = sub_1D56158D8();
  OUTLINED_FUNCTION_22(v8);
  v1[10] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_1_0();
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_334();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[13] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_69(AssociatedTypeWitness);
  v1[14] = v11;
  v1[15] = OUTLINED_FUNCTION_127();
  v12 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D53332A4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  (*(v0[11] + 16))(v0[12], v0[2], v1);
  OUTLINED_FUNCTION_93();
  sub_1D5614F98();
  OUTLINED_FUNCTION_253_0();
  swift_getAssociatedConformanceWitness();
  sub_1D5615938();
  v2 = OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_57(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_252_1();
    v6(v5);

    OUTLINED_FUNCTION_22_1();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_305();
    v10(v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_106_11(v11);

    return MusicLibrary.download<A>(_:)();
  }
}

uint64_t sub_1D53333FC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D53334F4()
{
  OUTLINED_FUNCTION_80();
  (*(v0[8] + 8))(v0[9], v0[4]);
  OUTLINED_FUNCTION_253_0();
  swift_getAssociatedConformanceWitness();
  sub_1D5615938();
  v2 = OUTLINED_FUNCTION_20_22();
  OUTLINED_FUNCTION_57(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_252_1();
    v6(v5);

    OUTLINED_FUNCTION_22_1();

    return v7();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_305();
    v10(v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_106_11(v11);

    return MusicLibrary.download<A>(_:)();
  }
}

uint64_t sub_1D533362C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  (*(v0[8] + 8))(v0[9], v0[4]);
  v1 = OUTLINED_FUNCTION_159();
  v2(v1);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_376();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

id MusicLibrary.downloadSize<A>(for:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_161();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
  if (!swift_dynamicCast())
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1D4E7661C(&v29, &unk_1EC7F65D0, &qword_1D5638870);
    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v16, 7);
    swift_willThrow();
    return v2;
  }

  sub_1D4E48324(&v29, v32);
  sub_1D4E62938(v32, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v26, &v29);
    if (sub_1D560EFB8())
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        if (([v13 isHomeSharingLibrary] & 1) == 0)
        {
          sub_1D4E62938(v32, v28);
          v25 = swift_dynamicCast();
          if (v25)
          {
            v19 = OUTLINED_FUNCTION_45_3();
            v20(v19);
          }

          v21 = *(&v30 + 1);
          v22 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
          v23 = v33;
          (*(v33 + 104))(v8, *MEMORY[0x1E6976988], v3);
          v24 = sub_1D5159364(v8, v21, v22);
          (*(v23 + 8))(v8, v3);
          v2 = [v14 downloadSizeForModelObject:v24 includingNonLibraryContent:v25];
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v32);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v2;
        }

        sub_1D51E8560();
        OUTLINED_FUNCTION_29();
        swift_allocError();
        OUTLINED_FUNCTION_199_3(v15, 3);
        swift_willThrow();
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v17, 4);
    swift_willThrow();
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    return v2;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1D4E7661C(v26, &unk_1EC7ED400, &qword_1D5620CF0);
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_117_11();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.remove<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.remove<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.remove<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[25] = v5;
  v1[26] = v6;
  v1[31] = *(v3 - 8);
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();
  v7 = sub_1D560C368();
  v1[34] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[35] = v8;
  v1[36] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5333CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_68_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_76_2();
  a22 = v24;
  v27 = v24[33];
  v28 = v24[31];
  v68 = v24[29];
  v29 = v24[27];
  sub_1D560C358();
  v30 = sub_1D560C338();
  v32 = v31;
  v66 = v30;
  v24[37] = v30;
  v24[38] = v31;
  v33 = OUTLINED_FUNCTION_68_4();
  v34(v33);
  v35 = v28 + 16;
  v36 = *(v28 + 16);
  v37 = OUTLINED_FUNCTION_99();
  v36(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v38 = sub_1D5615D38();
  sub_1D53584AC(v27, v38, v29, v68, (v24 + 18));
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v39 = sub_1D560C758();
  v24[39] = OUTLINED_FUNCTION_375(v39, qword_1EC87C110);
  v40 = OUTLINED_FUNCTION_62_5();
  v36(v40);

  v41 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_221_3())
  {
    v42 = v24[33];
    v67 = v24[32];
    v69 = v36;
    v43 = v24[31];
    v44 = v24[27];
    OUTLINED_FUNCTION_144();
    a13 = OUTLINED_FUNCTION_137_11();
    *v27 = 136446466;
    v45 = sub_1D4E6835C(v66, v32, &a13);
    OUTLINED_FUNCTION_41_41(v45);
    (v69)(v42, v67, v44);
    OUTLINED_FUNCTION_59_19();
    sub_1D5614DB8();
    OUTLINED_FUNCTION_218_0();
    (*(v43 + 8))(v67, v44);
    v46 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v46, v47, v48);
    OUTLINED_FUNCTION_75_1();

    *(v27 + 14) = v35;
    OUTLINED_FUNCTION_40_47();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  else
  {

    v54 = OUTLINED_FUNCTION_15_8();
    v55(v54);
  }

  OUTLINED_FUNCTION_86_6();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_279_1();
  v24[40] = v56;
  v57 = v56;
  OUTLINED_FUNCTION_183();

  v58 = v24[24];
  v24[41] = v58;
  v24[2] = v24;
  v59 = OUTLINED_FUNCTION_48_8();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_11_15(v60);
  OUTLINED_FUNCTION_6_105(COERCE_DOUBLE(1107296256));
  v24[12] = v61;
  v24[13] = &block_descriptor_73_0;
  v24[14] = v59;
  v62 = v58;
  OUTLINED_FUNCTION_372(v62, sel_performDeleteEntityWithRequest_completionHandler_, v62);
  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DEC8](v63);
}

uint64_t sub_1D533400C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 336) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D533410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = *(v10 + 328);

  v13 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v14 = *(v10 + 296);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v15, v16);
    OUTLINED_FUNCTION_283_0();
    *(v11 + 4) = v14;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v17, v18, "[%{public}s] Completed remove from library operation.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D533420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 328);
  v12 = *(v10 + 320);
  swift_willThrow();
  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t MusicLibrary.remove(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[30] = v2;
  v1[31] = v0;
  v3 = type metadata accessor for Playlist.Folder(0);
  v1[32] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v4 = sub_1D560C368();
  v1[35] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[36] = v5;
  v1[37] = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_27_0(&unk_1D56719B8);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;
  v2 = OUTLINED_FUNCTION_174_7();

  return v3(v2);
}

uint64_t sub_1D5334378()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[30];
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  v0[38] = v4;
  v0[39] = v5;
  v6 = OUTLINED_FUNCTION_159();
  v7(v6);
  sub_1D5341D10(v3, v1);
  v0[28] = v2;
  v0[29] = sub_1D4E413BC(&unk_1EDD52B98, 255, type metadata accessor for Playlist.Folder);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 25);
  v9 = OUTLINED_FUNCTION_201();
  sub_1D5341D10(v9, v10);
  sub_1D526F59C(MEMORY[0x1E69E7CC0]);
  v12 = v11;
  v13 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v0[40] = v13;
  v0[24] = v13;
  sub_1D4E62938((v0 + 25), (v0 + 18));
  v0[23] = v12;
  v13;

  sub_1D5340BF8(boxed_opaque_existential_0, (v0 + 18));
  sub_1D5358624(v12);

  OUTLINED_FUNCTION_31_43();
  sub_1D5341038(v1, v14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v15 = sub_1D560C758();
  v16 = __swift_project_value_buffer(v15, qword_1EC87C110);
  v0[41] = v16;
  v17 = OUTLINED_FUNCTION_131();
  sub_1D5341D10(v17, v18);

  v19 = sub_1D560C738();
  v20 = sub_1D56156E8();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[33];
  if (v21)
  {
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_142_10();
    *v16 = 136446466;
    v23 = OUTLINED_FUNCTION_93();
    v26 = sub_1D4E6835C(v23, v24, v25);
    OUTLINED_FUNCTION_42_39(v26);
    Playlist.Folder.description.getter();
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_31_43();
    sub_1D5341038(v22, v27);
    v28 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v28, v29, v30);
    OUTLINED_FUNCTION_183();

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1D4E3F000, v19, v20, "[%{public}s] Removing %{public}s from the user’s library.", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_31_43();
    sub_1D5341038(v22, v31);
  }

  OUTLINED_FUNCTION_146_7();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v0[42] = v32;
  v33 = v32;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  v0[2] = v34;
  v35 = OUTLINED_FUNCTION_99_14();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v36);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  v0[13] = v37;
  v0[14] = v35;
  OUTLINED_FUNCTION_150_11(v38, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_1D53346E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D53347E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v12 = *(v10 + 320);

  v13 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v14 = *(v10 + 304);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v15, v16);
    OUTLINED_FUNCTION_283_0();
    *(v11 + 4) = v14;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v17, v18, "[%{public}s] Completed remove from library operation.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D53348E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 336);
  v12 = *(v10 + 320);
  swift_willThrow();
  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t MusicLibrary.removeDownload<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.removeDownload<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.removeDownload<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_171_5(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1_0();
  v0[29] = v7;
  v0[30] = OUTLINED_FUNCTION_167();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_244_1(v8);
  v0[32] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[33] = v10;
  v0[34] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560C368();
  v0[35] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[36] = v12;
  v0[37] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5334E18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5334F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);

  v14 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v15 = *(v12 + 304);
    v16 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v16 = 136446210;
    v17 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v17, v18, v19);
    OUTLINED_FUNCTION_126_6();

    *(v16 + 4) = v15;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v20, v21, v22, v23);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v24 = OUTLINED_FUNCTION_128();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_15_8();
  }

  v25(v24);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t MusicLibrary.cancelDownload<A>(_:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_228_3(v1);
  OUTLINED_FUNCTION_175_5();
  *v0 = v2;
  v0[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_86_20();
  OUTLINED_FUNCTION_153_1();

  return MusicLibrary.cancelDownload<A, B>(_:relatedItems:)();
}

uint64_t MusicLibrary.cancelDownload<A, B>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_171_5(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1_0();
  v0[29] = v7;
  v0[30] = OUTLINED_FUNCTION_167();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_244_1(v8);
  v0[32] = v9;
  OUTLINED_FUNCTION_69(v9);
  v0[33] = v10;
  v0[34] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560C368();
  v0[35] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[36] = v12;
  v0[37] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5335508()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5335608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);

  v14 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  if (OUTLINED_FUNCTION_221_3())
  {
    v15 = *(v12 + 304);
    v16 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_313_0();
    *v16 = 136446210;
    v17 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v17, v18, v19);
    OUTLINED_FUNCTION_126_6();

    *(v16 + 4) = v15;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v20, v21, v22, v23);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    v24 = OUTLINED_FUNCTION_128();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_15_8();
  }

  v25(v24);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1D533575C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 336);
  v14 = *(v12 + 328);
  swift_willThrow();
  v15 = OUTLINED_FUNCTION_81_0();
  v16(v15);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

Swift::Void __swiftcall MusicLibrary.cancelAllDownloads()()
{
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v0 = sub_1D560C758();
  __swift_project_value_buffer(v0, qword_1EC87C110);
  v1 = sub_1D560C738();
  v2 = sub_1D56156E8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D4E3F000, v1, v2, "Cancelling all downloads.", v3, 2u);
    OUTLINED_FUNCTION_54();
  }

  v4 = objc_opt_self();

  [v4 cancelAllDownloads];
}

uint64_t MusicLibrary.like<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_349_0(v1, v2);
  v0[31] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[32] = v4;
  v0[33] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  v0[34] = v5;
  v0[35] = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1D53359E4()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v4 = OUTLINED_FUNCTION_48_22();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_102();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_86_6();
    OUTLINED_FUNCTION_270_1();
    v6 = OUTLINED_FUNCTION_239_2();
    v7(v6);
    v8 = OUTLINED_FUNCTION_131();
    v10 = sub_1D5159364(v8, v9, v2);
    v1[36] = v10;
    v11 = OUTLINED_FUNCTION_201();
    v12(v11);
    v13 = *(sub_1D4E5A1CC() + 32);
    v1[37] = v13;
    v14 = v13;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_78_6();
    v1[2] = v15;
    OUTLINED_FUNCTION_48_8();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v16);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_123_10();
    [v3 setTasteType:1 forModelObject:v10 completionHandler:v0];
    OUTLINED_FUNCTION_89();

    MEMORY[0x1EEE6DEC8](v17);
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    sub_1D4E7661C((v1 + 23), &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
  }
}

uint64_t sub_1D5335BDC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5335CD8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 296);

  OUTLINED_FUNCTION_292_2((v0 + 144));

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5335D54()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[37];
  v2 = v0[36];
  swift_willThrow();

  OUTLINED_FUNCTION_292_2(v0 + 18);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D5335DD8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    OUTLINED_FUNCTION_143_5();

    return sub_1D4F23514();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t MusicLibrary.undoLike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_349_0(v1, v2);
  v0[31] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[32] = v4;
  v0[33] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  v0[34] = v5;
  v0[35] = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1D5335F20()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v4 = OUTLINED_FUNCTION_48_22();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  OUTLINED_FUNCTION_102();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_86_6();
    OUTLINED_FUNCTION_270_1();
    v6 = OUTLINED_FUNCTION_239_2();
    v7(v6);
    v8 = OUTLINED_FUNCTION_131();
    v10 = sub_1D5159364(v8, v9, v2);
    v1[36] = v10;
    v11 = OUTLINED_FUNCTION_201();
    v12(v11);
    v13 = *(sub_1D4E5A1CC() + 32);
    v1[37] = v13;
    v14 = v13;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_78_6();
    v1[2] = v15;
    OUTLINED_FUNCTION_48_8();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_11_15(v16);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_123_10();
    [v3 setTasteType:0 forModelObject:v10 completionHandler:v0];
    OUTLINED_FUNCTION_89();

    MEMORY[0x1EEE6DEC8](v17);
  }

  else
  {
    OUTLINED_FUNCTION_315_0();
    sub_1D4E7661C((v1 + 23), &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
  }
}

uint64_t sub_1D5336118()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t MusicLibrary.dislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_291_2(v1, v2, v3);
  v0[73] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[74] = v5;
  v0[75] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v0[76] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[77] = v7;
  v0[78] = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1D53362FC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_290_0();
  if (!v1[47])
  {
    sub_1D4E7661C((v1 + 44), &qword_1EC7EEC40, &unk_1D561C070);
    OUTLINED_FUNCTION_24_6();
    *(v0 + 32) = 0;
    goto LABEL_9;
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((OUTLINED_FUNCTION_246_1() & 1) == 0)
  {
    *(v0 + 32) = 0;
    OUTLINED_FUNCTION_24_6();
    goto LABEL_9;
  }

  if (!v1[42])
  {
LABEL_9:
    OUTLINED_FUNCTION_268_2();
    sub_1D4E7661C(v0, &qword_1EC7EC548, &qword_1D5621090);
    OUTLINED_FUNCTION_15_2();
    sub_1D560DB68();
    sub_1D4E7661C((v1 + 49), &qword_1EC7EEC40, &unk_1D561C070);
LABEL_10:
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
    return;
  }

  OUTLINED_FUNCTION_378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_293_0())
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    sub_1D4E7661C(v2, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_317_0();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_215_1();
  v3 = OUTLINED_FUNCTION_319_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63_1();
  v7 = sub_1D5159364(v5, v6, v0);
  v1[79] = v7;
  v8 = OUTLINED_FUNCTION_70();
  v9(v8);
  sub_1D560D398();
  v10 = sub_1D560D3D8();
  v11 = OUTLINED_FUNCTION_201();
  v12(v11);
  if (v10)
  {
    v1[80] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest) initWithModelObject:v7 requestActionType:0];
    sub_1D4E5A1CC();
    OUTLINED_FUNCTION_112_11();
    v1[81] = v13;
    v14 = v13;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_114_6();
    v1[10] = v15;
    v1[11] = sub_1D5336698;
    swift_continuation_init();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_141_4(v16);
    v1[27] = 1107296256;
    OUTLINED_FUNCTION_140_11();
    OUTLINED_FUNCTION_150_11(v17, sel_performFavoriteStateChangeRequest_completionHandler_);
  }

  else
  {
    v18 = *(sub_1D4E5A1CC() + 32);
    v1[83] = v18;
    v19 = v18;

    OUTLINED_FUNCTION_114_6();
    v1[2] = v20;
    v21 = OUTLINED_FUNCTION_99_14();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_138_10(v22);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_147_8();
    v1[21] = v23;
    v1[22] = v21;
    [v19 setTasteType:2 forModelObject:v7 completionHandler:v1 + 18];
  }

  OUTLINED_FUNCTION_89();

  MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1D5336698()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 656) = *(v3 + 112);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5336794()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t MusicLibrary.undoDislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v4 = OUTLINED_FUNCTION_291_2(v1, v2, v3);
  v0[73] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[74] = v5;
  v0[75] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v0[76] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[77] = v7;
  v0[78] = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1D5336978()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_290_0();
  if (!v1[47])
  {
    sub_1D4E7661C((v1 + 44), &qword_1EC7EEC40, &unk_1D561C070);
    OUTLINED_FUNCTION_24_6();
    *(v0 + 32) = 0;
    goto LABEL_9;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((OUTLINED_FUNCTION_246_1() & 1) == 0)
  {
    *(v0 + 32) = 0;
    OUTLINED_FUNCTION_24_6();
    goto LABEL_9;
  }

  if (!v1[42])
  {
LABEL_9:
    OUTLINED_FUNCTION_268_2();
    sub_1D4E7661C(v0, &qword_1EC7EC548, &qword_1D5621090);
    OUTLINED_FUNCTION_15_2();
    sub_1D560DB68();
    sub_1D4E7661C((v1 + 49), &qword_1EC7EEC40, &unk_1D561C070);
LABEL_10:
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    OUTLINED_FUNCTION_89();
    return;
  }

  OUTLINED_FUNCTION_378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (!OUTLINED_FUNCTION_293_0())
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    sub_1D4E7661C(v3, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_317_0();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_215_1();
  v4 = OUTLINED_FUNCTION_319_0();
  v5(v4);
  v6 = OUTLINED_FUNCTION_63_1();
  v8 = sub_1D5159364(v6, v7, v0);
  v1[79] = v8;
  v9 = OUTLINED_FUNCTION_70();
  v10(v9);
  sub_1D560D398();
  v11 = sub_1D560D3D8();
  v12 = OUTLINED_FUNCTION_201();
  v13(v12);
  if (v11)
  {
    v1[80] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryFavoriteEntityChangeRequest) initWithModelObject:v8 requestActionType:1];
    sub_1D4E5A1CC();
    OUTLINED_FUNCTION_112_11();
    v1[81] = v14;
    v15 = v14;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_114_6();
    v1[10] = v16;
    v1[11] = sub_1D5336D10;
    swift_continuation_init();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_141_4(v17);
    v1[27] = 1107296256;
    OUTLINED_FUNCTION_140_11();
    OUTLINED_FUNCTION_150_11(v18, sel_performFavoriteStateChangeRequest_completionHandler_);
  }

  else
  {
    v19 = *(sub_1D4E5A1CC() + 32);
    v1[83] = v19;
    v20 = v19;
    OUTLINED_FUNCTION_103_13();

    OUTLINED_FUNCTION_114_6();
    v1[2] = v21;
    v22 = OUTLINED_FUNCTION_99_14();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_138_10(v23);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_147_8();
    v1[21] = v24;
    v1[22] = v22;
    [v2 setTasteType:0 forModelObject:v8 completionHandler:v1 + 18];
  }

  OUTLINED_FUNCTION_89();

  MEMORY[0x1EEE6DEC8](v25);
}

uint64_t sub_1D5336D10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 656) = *(v3 + 112);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5336E0C()
{
  OUTLINED_FUNCTION_80();

  v1 = *(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));

  OUTLINED_FUNCTION_292_2((v0 + 432));

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5336E9C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5336F98()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 664);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_292_2((v0 + 432));

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D5337020()
{
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 632);
  swift_willThrow();

  v2 = *(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));

  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D53370CC()
{
  OUTLINED_FUNCTION_91();
  swift_willThrow();
  v1 = *(v0 + 664);

  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t MusicLibrary.favorite<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_360(v5);
  v7 = OUTLINED_FUNCTION_296_0(v6);
  v8 = OUTLINED_FUNCTION_367_0(v7);
  v0[61] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[62] = v9;
  v10 = OUTLINED_FUNCTION_127();
  v11 = OUTLINED_FUNCTION_359_0(v10);
  v0[64] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[65] = v12;
  v0[66] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5337668()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5337768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed favoriting operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MusicLibrary.undoFavorite<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_360(v5);
  v7 = OUTLINED_FUNCTION_296_0(v6);
  v8 = OUTLINED_FUNCTION_367_0(v7);
  v0[61] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[62] = v9;
  v10 = OUTLINED_FUNCTION_127();
  v11 = OUTLINED_FUNCTION_359_0(v10);
  v0[64] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[65] = v12;
  v0[66] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5337DC0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5337EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed undo favorite operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MusicLibrary.pin<A>(_:defaultAction:)()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  *(v1 + 400) = v4;
  *(v1 + 408) = v0;
  *(v1 + 384) = v5;
  *(v1 + 392) = v6;
  v7 = sub_1D56131C8();
  *(v1 + 416) = v7;
  OUTLINED_FUNCTION_69(v7);
  *(v1 + 424) = v8;
  *(v1 + 432) = OUTLINED_FUNCTION_127();
  v9 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_22(v9);
  *(v1 + 440) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_60_24();
  *(v1 + 448) = v10;
  *(v1 + 456) = OUTLINED_FUNCTION_167();
  *(v1 + 464) = swift_task_alloc();
  v11 = sub_1D560C368();
  *(v1 + 472) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 480) = v12;
  *(v1 + 488) = OUTLINED_FUNCTION_127();
  *(v1 + 634) = *v3;
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D5338794()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();

  sub_1D5201214();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533882C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 634);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
  (*(v3 + 104))(v2, *MEMORY[0x1E6976988], v4);
  v6 = OUTLINED_FUNCTION_71();
  v8 = sub_1D5159364(v6, v7, v5);
  *(v0 + 568) = v8;
  v9 = OUTLINED_FUNCTION_128();
  v10(v9);
  v11 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest) initWithEntityToPin:v8 defaultAction:qword_1D5653F90[v1]];
  *(v0 + 576) = v11;

  v11;
  v12 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_152_0())
  {
    v13 = *(v0 + 504);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v14 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    *(v1 + 4) = sub_1D4E6835C(v14, v13, v15);
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v16, v17, "[%{public}s] Performing pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  *(v0 + 584) = v18;
  v19 = v18;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  *(v0 + 16) = v20;
  OUTLINED_FUNCTION_99_14();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v21);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  OUTLINED_FUNCTION_150_11(v22, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1D5338A34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5338B30()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 576);

  v3 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v4, v5);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v6, v7, "[%{public}s] Completed pin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  sub_1D4E5A1CC();
  *(v0 + 600) = sub_1D5329168();

  *(v0 + 608) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5338C40()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5338CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();

  v14 = sub_1D560C738();
  sub_1D56156E8();

  v15 = OUTLINED_FUNCTION_152_0();
  v16 = v12[72];
  v17 = v12[71];
  v18 = v12[63];
  v19 = v12[55];
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v20 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    v22 = sub_1D4E6835C(v20, v18, v21);

    *(v13 + 4) = v22;
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v23, v24, "[%{public}s] Discarded transient state for pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
  }

  sub_1D5341038(v19, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);
  __swift_destroy_boxed_opaque_existential_1(v12 + 33);
  OUTLINED_FUNCTION_292_2(v12 + 18);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1D5338F7C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_371();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5338FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();

  v12 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v13 = v10[62];
    OUTLINED_FUNCTION_142();
    a9 = OUTLINED_FUNCTION_119_9();
    *v11 = 136446210;
    v14 = OUTLINED_FUNCTION_93();
    sub_1D4E6835C(v14, v15, v16);
    OUTLINED_FUNCTION_283_0();
    *(v11 + 4) = v13;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v17, v18, "[%{public}s] Discarded transient state for pin change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v19 = v10[72];
  v20 = v10[71];
  v21 = v10[55];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v21, v22);
  OUTLINED_FUNCTION_286_2();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t MusicLibrary.unpin<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_1D56131C8();
  v1[22] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[23] = v6;
  v1[24] = OUTLINED_FUNCTION_167();
  v1[25] = swift_task_alloc();
  v7 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_22(v7);
  v1[26] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v8);
  v9 = OUTLINED_FUNCTION_127();
  v10 = OUTLINED_FUNCTION_258_2(v9);
  v11 = type metadata accessor for MusicPin(v10);
  v1[28] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[29] = OUTLINED_FUNCTION_167();
  v1[30] = swift_task_alloc();
  OUTLINED_FUNCTION_60_24();
  v1[31] = v12;
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();
  v13 = sub_1D560C368();
  v1[34] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[35] = v14;
  v1[36] = OUTLINED_FUNCTION_127();
  v15 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1D5339788()
{
  OUTLINED_FUNCTION_80();

  sub_1D5201614();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533980C()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  (*(v4 + 104))(v1, *MEMORY[0x1E6976988], v3);
  v5 = OUTLINED_FUNCTION_45_3();
  v6(v5);
  OUTLINED_FUNCTION_8_101();
  v7 = OUTLINED_FUNCTION_81_0();
  sub_1D5341D10(v7, v8);
  sub_1D4ECBE48();
  v10 = v9;
  v0[43] = v9;
  (*(v4 + 8))(v1, v3);
  v0[44] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest) initWithEntityToUnPin_];

  v11 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    *v2 = 136446210;
    v12 = OUTLINED_FUNCTION_99();
    *(v2 + 4) = sub_1D4E6835C(v12, v13, v14);
    OUTLINED_FUNCTION_96_14();
    _os_log_impl(v15, v16, v17, v18, v2, 0xCu);
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v0[45] = v19;
  v20 = v19;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  v0[2] = v21;
  OUTLINED_FUNCTION_99_14();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v22);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_123_10();
  OUTLINED_FUNCTION_150_11(v23, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1D5339A20()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5339B1C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();

  v2 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v3, v4);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v5, v6, "[%{public}s] Completed unpin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  sub_1D4E5A1CC();
  *(v0 + 376) = sub_1D5329168();

  *(v0 + 384) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5339C24()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5339C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();

  v15 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_227_3();
  v16 = OUTLINED_FUNCTION_221_3();
  v17 = v14[43];
  v18 = v14[44];
  if (v16)
  {
    v19 = v14[43];
    v20 = v14[37];
    a10 = v14[30];
    v21 = v14[26];
    v22 = OUTLINED_FUNCTION_142();
    a11 = OUTLINED_FUNCTION_138_0();
    *v22 = 136446210;
    v23 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v23, v24, v25);
    OUTLINED_FUNCTION_126_6();

    *(v22 + 4) = v20;
    OUTLINED_FUNCTION_96_14();
    OUTLINED_FUNCTION_298_1(v26, v27, v28, v29);
    OUTLINED_FUNCTION_120_10();
    OUTLINED_FUNCTION_114_0();

    OUTLINED_FUNCTION_4_108();
    sub_1D5341038(v21, v30);
    OUTLINED_FUNCTION_3_144();
    v32 = a10;
  }

  else
  {
    v33 = v14[30];
    v34 = v14[26];

    OUTLINED_FUNCTION_4_108();
    sub_1D5341038(v34, v35);
    OUTLINED_FUNCTION_3_144();
    v32 = v33;
  }

  sub_1D5341038(v32, v31);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D5339F8C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_371();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5339FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v17 = v14[37];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v18, v19);
    OUTLINED_FUNCTION_283_0();
    *(v15 + 4) = v17;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v20, v21, "[%{public}s] Discarded transient state for unpin change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v23 = v14[43];
  v22 = v14[44];
  v24 = v14[30];
  v25 = v14[26];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v25, v26);
  OUTLINED_FUNCTION_3_144();
  sub_1D5341038(v24, v27);
  OUTLINED_FUNCTION_294_1();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicLibrary.movePin(_:position:)()
{
  OUTLINED_FUNCTION_60();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = sub_1D56131C8();
  v1[21] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[22] = v5;
  v6 = OUTLINED_FUNCTION_167();
  v7 = OUTLINED_FUNCTION_297_1(v6);
  v8 = OUTLINED_FUNCTION_259_0(v7);
  v9 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(v8);
  OUTLINED_FUNCTION_22(v9);
  v1[25] = OUTLINED_FUNCTION_127();
  v10 = type metadata accessor for MusicPin(0);
  OUTLINED_FUNCTION_22(v10);
  v1[26] = OUTLINED_FUNCTION_167();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_258_2(v11);
  v12 = sub_1D560C368();
  v1[28] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[29] = v13;
  v1[30] = OUTLINED_FUNCTION_127();
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D533A284()
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v2 = v0[29];
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  v0[31] = v3;
  v0[32] = v4;
  v5 = v2 + 8;
  v6 = OUTLINED_FUNCTION_159();
  v7(v6);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v8 = sub_1D560C758();
  v0[33] = OUTLINED_FUNCTION_375(v8, qword_1EC87C110);
  OUTLINED_FUNCTION_8_101();
  v9 = OUTLINED_FUNCTION_71();
  sub_1D5341D10(v9, v10);

  v11 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_309_0();

  v12 = os_log_type_enabled(v11, v5);
  v13 = v0[27];
  if (v12)
  {
    v14 = v0[19];
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_142_10();
    *v1 = 136446722;
    v15 = OUTLINED_FUNCTION_93();
    v18 = sub_1D4E6835C(v15, v16, v17);
    OUTLINED_FUNCTION_42_39(v18);
    MusicPin.description.getter();
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v13, v19);
    v20 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v20, v21, v22);
    OUTLINED_FUNCTION_183();

    *(v1 + 14) = v13;
    *(v1 + 22) = 2050;
    *(v1 + 24) = v14;
    _os_log_impl(&dword_1D4E3F000, v11, v5, "[%{public}s] Moving pin %{public}s to position %{public}ld.", v1, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v13, v23);
  }

  sub_1D4E5A1CC();
  v0[34] = sub_1D5329168();

  v0[35] = sub_1D56153C8();
  v0[36] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_134();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1D533A4A0()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_93();
  sub_1D520186C();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533A524()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  (*(v4 + 104))(v2, *MEMORY[0x1E6976988], v3);
  v7 = OUTLINED_FUNCTION_15_2();
  v8(v7);
  OUTLINED_FUNCTION_8_101();
  sub_1D5341D10(v6, v1);
  OUTLINED_FUNCTION_140_3();
  sub_1D4ECBE48();
  v10 = v9;
  v0[37] = v9;
  (*(v4 + 8))(v2, v3);
  v0[38] = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest) initWithEntityToMove:v10 position:v5];

  v11 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_283_0();
  if (OUTLINED_FUNCTION_221_3())
  {
    v12 = v0[32];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v13 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    *(v3 + 4) = sub_1D4E6835C(v13, v12, v14);
    OUTLINED_FUNCTION_96_14();
    _os_log_impl(v15, v16, v17, v18, v3, 0xCu);
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  v0[39] = v19;
  v20 = v19;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  v0[2] = v21;
  v22 = OUTLINED_FUNCTION_99_14();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v23);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  v0[13] = v24;
  v0[14] = v22;
  OUTLINED_FUNCTION_150_11(v25, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DEC8](v26);
}

uint64_t sub_1D533A730()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533A82C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();

  v2 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v3, v4);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v5, v6, "[%{public}s] Completed move pin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  sub_1D4E5A1CC();
  *(v0 + 328) = sub_1D5329168();

  *(v0 + 336) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D533A934()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();

  v14 = sub_1D560C738();
  sub_1D56156E8();

  v15 = OUTLINED_FUNCTION_152_0();
  v16 = v12[37];
  v17 = v12[38];
  v18 = v12[32];
  v19 = v12[25];
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v20 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    v22 = sub_1D4E6835C(v20, v18, v21);

    *(v13 + 4) = v22;
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v23, v24, "[%{public}s] Discarded transient state for move pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
  }

  sub_1D5341038(v19, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1D533AC5C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_371();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v17 = v14[31];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v18, v19);
    OUTLINED_FUNCTION_283_0();
    *(v15 + 4) = v17;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v20, v21, "[%{public}s] Discarded transient state for move change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v23 = v14[37];
  v22 = v14[38];
  v24 = v14[25];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v24, v25);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicLibrary.updatePin(_:defaultAction:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  v5 = sub_1D56131C8();
  *(v1 + 160) = v5;
  OUTLINED_FUNCTION_69(v5);
  *(v1 + 168) = v6;
  *(v1 + 176) = OUTLINED_FUNCTION_167();
  *(v1 + 184) = swift_task_alloc();
  v7 = type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord(0);
  OUTLINED_FUNCTION_22(v7);
  v8 = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_259_0(v8);
  v10 = type metadata accessor for MusicPin(v9);
  OUTLINED_FUNCTION_22(v10);
  *(v1 + 200) = OUTLINED_FUNCTION_167();
  *(v1 + 208) = swift_task_alloc();
  v11 = sub_1D560C368();
  *(v1 + 216) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 224) = v12;
  *(v1 + 232) = OUTLINED_FUNCTION_127();
  *(v1 + 354) = *v3;
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D533AF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_72_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  sub_1D560C358();
  sub_1D560C338();
  OUTLINED_FUNCTION_202_5();
  *(v20 + 240) = v23;
  *(v20 + 248) = v24;
  v25 = OUTLINED_FUNCTION_159();
  v26(v25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v27 = sub_1D560C758();
  *(v20 + 256) = OUTLINED_FUNCTION_375(v27, qword_1EC87C110);
  OUTLINED_FUNCTION_8_101();
  v28 = OUTLINED_FUNCTION_71();
  sub_1D5341D10(v28, v29);

  v30 = sub_1D560C738();
  v31 = sub_1D56156E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v20 + 354);
    v33 = *(v20 + 208);
    v34 = OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_355_0();
    OUTLINED_FUNCTION_279_0();
    *v34 = 136446722;
    v35 = OUTLINED_FUNCTION_93();
    *(v34 + 4) = sub_1D4E6835C(v35, v36, v37);
    *(v34 + 12) = 2082;
    MusicPin.description.getter();
    OUTLINED_FUNCTION_178_2();
    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v33, v38);
    v39 = OUTLINED_FUNCTION_70();
    sub_1D4E6835C(v39, v40, v41);
    OUTLINED_FUNCTION_183();

    *(v34 + 14) = v33;
    *(v34 + 22) = 2082;
    *(v20 + 353) = v32;
    v42 = sub_1D5614DB8();
    v44 = sub_1D4E6835C(v42, v43, &a9);

    *(v34 + 24) = v44;
    _os_log_impl(&dword_1D4E3F000, v30, v31, "[%{public}s] Updating pin %{public}s to have action %{public}s.", v34, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v45 = *(v20 + 208);

    OUTLINED_FUNCTION_3_144();
    sub_1D5341038(v45, v46);
  }

  v47 = *(v20 + 354);
  sub_1D4E5A1CC();
  *(v20 + 264) = sub_1D5329168();

  *(v20 + 352) = v47;
  *(v20 + 272) = sub_1D56153C8();
  *(v20 + 280) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEE6DFA0](v48, v49, v50);
}

uint64_t sub_1D533B1AC()
{
  OUTLINED_FUNCTION_80();

  sub_1D5201AC0();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533B234()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 354);
  (*(*(v0 + 168) + 104))(*(v0 + 184), *MEMORY[0x1E6976988], *(v0 + 160));
  v2 = OUTLINED_FUNCTION_98();
  v3(v2);
  OUTLINED_FUNCTION_8_101();
  v4 = OUTLINED_FUNCTION_131();
  sub_1D5341D10(v4, v5);
  OUTLINED_FUNCTION_222();
  sub_1D4ECBE48();
  v7 = v6;
  *(v0 + 288) = v6;
  v8 = OUTLINED_FUNCTION_81_0();
  v9(v8);
  v10 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPinnedEntityChangeRequest) initWithEntityToUpdate:v7 defaultAction:qword_1D5653F90[v1]];
  *(v0 + 296) = v10;

  v10;
  v11 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  if (OUTLINED_FUNCTION_152_0())
  {
    v12 = *(v0 + 248);
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v13 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    *(v1 + 4) = sub_1D4E6835C(v13, v12, v14);
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v15, v16, "[%{public}s] Performing update pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_146_7();
  sub_1D4E5A1CC();
  OUTLINED_FUNCTION_112_11();
  *(v0 + 304) = v17;
  v18 = v17;
  OUTLINED_FUNCTION_103_13();

  OUTLINED_FUNCTION_114_6();
  *(v0 + 16) = v19;
  v20 = OUTLINED_FUNCTION_99_14();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v21);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_4_27();
  *(v0 + 104) = v22;
  *(v0 + 112) = v20;
  OUTLINED_FUNCTION_150_11(v23, sel_performPinStateChangeRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1D533B440()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533B53C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 296);

  v3 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v4, v5);
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v6, v7, "[%{public}s] Completed update pin change request. Discarding transient state.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  sub_1D4E5A1CC();
  *(v0 + 320) = sub_1D5329168();

  *(v0 + 328) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_14_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D533B648()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_45_1();
  sub_1D5201D1C();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();

  v14 = sub_1D560C738();
  sub_1D56156E8();

  v15 = OUTLINED_FUNCTION_152_0();
  v16 = v12[36];
  v17 = v12[37];
  v18 = v12[31];
  v19 = v12[24];
  if (v15)
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_87_3();
    OUTLINED_FUNCTION_279_0();
    v20 = OUTLINED_FUNCTION_76_17(4.8751e-34);
    v22 = sub_1D4E6835C(v20, v18, v21);

    *(v13 + 4) = v22;
    OUTLINED_FUNCTION_58_6(&dword_1D4E3F000, v23, v24, "[%{public}s] Discarded transient state for update pin change request.");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
  }

  sub_1D5341038(v19, type metadata accessor for MusicLibraryPinsObserver.TransientStateRecord);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_73_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_1D533B978()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_371();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D533B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();

  v16 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  if (OUTLINED_FUNCTION_165_0())
  {
    v17 = v14[30];
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_181_6();
    OUTLINED_FUNCTION_54_28(4.8751e-34, v18, v19);
    OUTLINED_FUNCTION_283_0();
    *(v15 + 4) = v17;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v20, v21, "[%{public}s] Discarded transient state for update change request.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  v23 = v14[36];
  v22 = v14[37];
  v24 = v14[24];
  swift_willThrow();

  OUTLINED_FUNCTION_4_108();
  sub_1D5341038(v24, v25);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t MusicLibrary.new_dislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_360(v5);
  v7 = OUTLINED_FUNCTION_296_0(v6);
  v8 = OUTLINED_FUNCTION_367_0(v7);
  v0[61] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[62] = v9;
  v10 = OUTLINED_FUNCTION_127();
  v11 = OUTLINED_FUNCTION_359_0(v10);
  v0[64] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[65] = v12;
  v0[66] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D533BFFC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D533C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed dislike operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D533C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[75];
  v14 = v12[70];
  v15 = v12[69];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v12 + 18);
  OUTLINED_FUNCTION_292_2(v12 + 38);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t MusicLibrary.new_undoDislike<A>(_:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_31(v1, v2, v3);
  v0[57] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_360(v5);
  v7 = OUTLINED_FUNCTION_296_0(v6);
  v8 = OUTLINED_FUNCTION_367_0(v7);
  v0[61] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[62] = v9;
  v10 = OUTLINED_FUNCTION_127();
  v11 = OUTLINED_FUNCTION_359_0(v10);
  v0[64] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[65] = v12;
  v0[66] = OUTLINED_FUNCTION_127();
  v13 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D533C810()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 608) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D533C910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_234_0();
  OUTLINED_FUNCTION_44_32();
  v22 = OUTLINED_FUNCTION_140_3();
  v21(v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v24 = OUTLINED_FUNCTION_165_0();
  v25 = *(v19 + 592);
  if (v24)
  {
    OUTLINED_FUNCTION_16_80();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_331_0();
    *v18 = 136446466;
    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4E6835C(v26, v27, v28);
    OUTLINED_FUNCTION_126_6();

    v29 = OUTLINED_FUNCTION_5_108();
    v30(v29);
    OUTLINED_FUNCTION_164_4();
    sub_1D5614DB8();
    v31 = OUTLINED_FUNCTION_9_96();
    v32(v31);
    v33 = OUTLINED_FUNCTION_201();
    sub_1D4E6835C(v33, v34, v35);
    OUTLINED_FUNCTION_125_7();
    *(v18 + 14) = v20;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Completed undodislike operation for item %{public}s.");
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_105_14();

    v38 = OUTLINED_FUNCTION_70();
    v25(v38);
  }

  OUTLINED_FUNCTION_49_30();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_16_5();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MusicLibrary.duplicateCount<A, B>(for:action:)()
{
  OUTLINED_FUNCTION_60();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[2] = v7;
  v0[3] = v8;
  v0[10] = *(v5 - 8);
  v0[11] = OUTLINED_FUNCTION_127();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D533CB34()
{
  OUTLINED_FUNCTION_75_0();
  v1 = swift_task_alloc();
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = sub_1D56150A8();

  if (v4)
  {
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_117_11();
    return sub_1D5615E08();
  }

  else
  {
    v13 = *(v0 + 64);
    v6 = OUTLINED_FUNCTION_48_22();
    v7(v6);
    OUTLINED_FUNCTION_4_32();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_62_5();
    sub_1D5615318();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
    OUTLINED_FUNCTION_68_4();
    v8 = sub_1D5615D38();
    *(v0 + 96) = v8;

    v12 = (*(v13 + 8) + **(v13 + 8));
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_1D533CD80;
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);

    return v12(v8, v11, v10);
  }
}

uint64_t sub_1D533CD80()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_50();

    return v12(v3);
  }
}

uint64_t sub_1D533CEBC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D533CF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 16))(&v11[-1] - v6, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4540, &unk_1D5653F50);
  v8 = swift_dynamicCast();
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return v8;
}

uint64_t MusicLibrary.duplicateCount<A, B>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a5;
  v8[7] = a8;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D533D060()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[6];
  v10 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC38, &unk_1D562E488);
  OUTLINED_FUNCTION_311_0();
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = xmmword_1D561C050;
  *(v3 + 56) = v2;
  *(v3 + 64) = v1;
  __swift_allocate_boxed_opaque_existential_0((v3 + 32));
  OUTLINED_FUNCTION_24_0();
  (*(v4 + 16))();
  v9 = (*(v10 + 8) + **(v10 + 8));
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D533D1F4;
  v6 = v0[7];
  v7 = v0[5];

  return v9(v3, v7, v6);
}

uint64_t sub_1D533D1F4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1D533D330()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t MusicLibrary.setTrackPopularity<A>(for:correspondingCatalogTracks:)()
{
  OUTLINED_FUNCTION_80();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v5 = sub_1D5613AF8();
  v0[22] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[23] = v6;
  v7 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_259_0(v7);
  v8 = sub_1D56131C8();
  v0[25] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[26] = v9;
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v10);
  v0[29] = OUTLINED_FUNCTION_127();
  v11 = sub_1D5613D28();
  v0[30] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[31] = v12;
  v0[32] = OUTLINED_FUNCTION_127();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v13);
  v0[33] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_1_0();
  v0[34] = v14;
  v0[35] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_4_32();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[36] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_69(AssociatedTypeWitness);
  v0[37] = v16;
  v0[38] = OUTLINED_FUNCTION_127();
  v17 = sub_1D560D838();
  v0[39] = v17;
  OUTLINED_FUNCTION_69(v17);
  v0[40] = v18;
  v0[41] = OUTLINED_FUNCTION_167();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v19);
  v0[44] = OUTLINED_FUNCTION_127();
  v20 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D533D678()
{
  v1 = v0[43];
  v2 = v0[40];
  sub_1D560EC98();
  sub_1D560D5C8();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_81_0();
  v3(v4);
  sub_1D560D4C8();
  v5 = OUTLINED_FUNCTION_75_1();
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_1D4E7661C(v0[44], &unk_1EC7EBF20, &unk_1D561F530);
    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
LABEL_86:
    OUTLINED_FUNCTION_212_5();

    OUTLINED_FUNCTION_55();

    return v79();
  }

  v81 = v3;
  v7 = v0[34];
  v8 = v0[35];
  v9 = v0[31];
  v10 = v0[20];
  v11 = v0[19];
  sub_1D560D4B8();
  OUTLINED_FUNCTION_24_0();
  v12 = OUTLINED_FUNCTION_159();
  v13(v12);

  v83 = [objc_allocWithZone(MusicKit_SoftLinking_MPMediaLibraryAlbumAppData) init];
  v0[45] = v83;
  (*(v7 + 16))(v8, v11, v10);
  OUTLINED_FUNCTION_45_3();
  sub_1D5614F98();
  v82 = (v9 + 32);
  v14 = (v9 + 8);
  while (1)
  {
    v15 = v0[33];
    v16 = v0[30];
    swift_getAssociatedConformanceWitness();
    sub_1D5615938();
    OUTLINED_FUNCTION_57(v15, 1, v16);
    if (v17)
    {
      v58 = v0[27];
      v59 = v0[28];
      v61 = v0[25];
      v60 = v0[26];
      v62 = v0[24];
      (*(v0[37] + 8))(v0[38], v0[36]);
      v63 = OUTLINED_FUNCTION_239_2();
      v64(v63);
      (*(v60 + 16))(v58, v59, v61);
      v65 = OUTLINED_FUNCTION_164_4();
      v66(v65);
      sub_1D4ECB9E8(v62, v58);
      v68 = v67;
      v0[46] = v67;
      v69 = OUTLINED_FUNCTION_201();
      v70(v69);
      v71 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryAlbumAppDataChangeRequest) init];
      v0[47] = v71;
      v0[2] = v0;
      v0[3] = sub_1D533DEF4;
      v72 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
      v0[10] = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
      v0[12] = sub_1D5341F94;
      v0[13] = &block_descriptor_151;
      v0[14] = v72;
      [v71 performWithAlbum:v68 appData:? completionHandler:?];
      v33 = (v0 + 2);

      return MEMORY[0x1EEE6DEC8](v33);
    }

    (*v82)(v0[32], v0[33], v0[30]);
    v18 = sub_1D5613C68();
    if (v19)
    {
      goto LABEL_85;
    }

    v20 = *&v18;
    v21 = v0[29];
    sub_1D560EC98();
    sub_1D560D7A8();
    v22 = OUTLINED_FUNCTION_258();
    v81(v22);
    v23 = sub_1D560F148();
    OUTLINED_FUNCTION_57(v21, 1, v23);
    if (v17)
    {
      v24 = v0[41];
      v25 = v0[39];
      sub_1D4E7661C(v0[29], &unk_1EC7F1970, &qword_1D561F4A0);
      sub_1D560EC98();
      v29 = sub_1D560D628();
      v31 = v26;
      v33 = (v81)(v24, v25);
      if (!v31)
      {
        v33 = _s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0();
        v29 = v33;
        v31 = v27;
      }
    }

    else
    {
      v28 = v0[29];
      v29 = sub_1D560F138();
      v31 = v30;
      OUTLINED_FUNCTION_24_0();
      v33 = (*(v32 + 8))(v28, v23);
    }

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v35 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {

LABEL_85:
      v73 = v0[37];
      v74 = v0[38];
      v75 = v0[36];
      v76 = v0[32];
      v77 = v0[30];
      sub_1D51E8560();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v78 = 2;
      swift_willThrow();

      (*v14)(v76, v77);
      (*(v73 + 8))(v74, v75);
      goto LABEL_86;
    }

    if ((v31 & 0x1000000000000000) == 0)
    {
      break;
    }

    sub_1D533F9CC(v29, v31, 10);
    v38 = v56;
    v53 = v57;
LABEL_78:

    if (v53)
    {
      goto LABEL_85;
    }

    [v83 setSongPopularity:v38 forAdamID:v20];
    v54 = OUTLINED_FUNCTION_74_0();
    v55(v54);
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v29 & 0x1000000000000000) == 0)
    {
      sub_1D5615C58();
    }

    OUTLINED_FUNCTION_329_0();
    if (v17)
    {
      if (v36 < 1)
      {
        goto LABEL_92;
      }

      if (v36 == 1)
      {
        goto LABEL_76;
      }

      v38 = 0;
      if (v33)
      {
        while (1)
        {
          OUTLINED_FUNCTION_116_13();
          if (!v17 & v39)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_26_60();
          if (!v17)
          {
            goto LABEL_76;
          }

          v38 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_40_0();
          if (v17)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v37 == 45)
    {
      if (v36 < 1)
      {
        goto LABEL_91;
      }

      if (v36 == 1)
      {
        goto LABEL_76;
      }

      v38 = 0;
      if (v33)
      {
        while (1)
        {
          OUTLINED_FUNCTION_116_13();
          if (!v17 & v39)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_26_60();
          if (!v17)
          {
            goto LABEL_76;
          }

          v38 = v41 - v40;
          if (__OFSUB__(v41, v40))
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_40_0();
          if (v17)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
      if (!v36)
      {
LABEL_76:
        v38 = 0;
        v42 = 1;
        goto LABEL_77;
      }

      v38 = 0;
      if (v33)
      {
        do
        {
          v49 = *v33 - 48;
          if (v49 > 9)
          {
            goto LABEL_76;
          }

          v50 = 10 * v38;
          if ((v38 * 10) >> 64 != (10 * v38) >> 63)
          {
            goto LABEL_76;
          }

          v38 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_76;
          }

          v33 = OUTLINED_FUNCTION_324_0(v33);
        }

        while (!v17);
      }
    }

    v42 = 0;
LABEL_77:
    v53 = v42;
    goto LABEL_78;
  }

  if (v29 != 43)
  {
    if (v29 == 45)
    {
      if (!v34)
      {
        goto LABEL_90;
      }

      if (v34 != 1)
      {
        while (1)
        {
          OUTLINED_FUNCTION_116_13();
          if (!v17 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_26_60();
          if (!v17)
          {
            break;
          }

          v38 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v17)
          {
            goto LABEL_77;
          }
        }
      }
    }

    else if (v34)
    {
      while (1)
      {
        OUTLINED_FUNCTION_116_13();
        if (!v17 & v39)
        {
          break;
        }

        OUTLINED_FUNCTION_26_60();
        if (!v17)
        {
          break;
        }

        v38 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v17)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

  if (v34)
  {
    if (v34 != 1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_116_13();
        if (!v17 & v39)
        {
          break;
        }

        OUTLINED_FUNCTION_26_60();
        if (!v17)
        {
          break;
        }

        v38 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v17)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v33);
}

uint64_t sub_1D533DEF4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = *(v16 + 368);
  v18 = *(v16 + 376);
  v28 = *(v16 + 256);
  v29 = *(v16 + 232);
  v30 = *(v16 + 224);
  v31 = *(v16 + 216);
  v32 = *(v16 + 192);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_63_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_1D533E0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_76_2();
  v17 = v16[47];
  v19 = v16[45];
  v18 = v16[46];
  swift_willThrow();

  OUTLINED_FUNCTION_212_5();
  v31 = v20;
  v32 = v16[24];
  v33 = v21;

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, v33, a13, a14, a15, a16);
}

uint64_t MusicLibrary.setUserRating<A>(_:for:)()
{
  OUTLINED_FUNCTION_60();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v6);
  v1[23] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560D838();
  v1[24] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[25] = v8;
  v1[26] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560D4C8();
  v1[27] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[28] = v10;
  v1[29] = OUTLINED_FUNCTION_127();
  v11 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D533E2F0()
{
  OUTLINED_FUNCTION_75_0();
  v1 = sub_1D560EFB8();
  *(v0 + 30) = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1D51E8560();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_199_3(v11, 4);
    swift_willThrow();
    goto LABEL_8;
  }

  v4 = v3;
  v5 = *(v0 + 27);
  v6 = *(v0 + 23);
  sub_1D560EC98();
  sub_1D560D5C8();
  v7 = OUTLINED_FUNCTION_201();
  v8(v7);
  OUTLINED_FUNCTION_57(v6, 1, v5);
  if (!v9)
  {
    OUTLINED_FUNCTION_146_7();
    v14 = v0[18];
    (*(*(v0 + 28) + 32))(*(v0 + 29), *(v0 + 23), *(v0 + 27));
    sub_1D560D4B8();
    v15 = sub_1D5614D38();
    *(v0 + 31) = v15;

    OUTLINED_FUNCTION_114_6();
    *(v0 + 2) = v16;
    v17 = OUTLINED_FUNCTION_99_14();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_35_7(v18);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    *(v0 + 12) = sub_1D5341F94;
    *(v0 + 13) = &block_descriptor_155;
    *(v0 + 14) = v17;
    [v4 setUserRating:v15 forItemWithPersistentID:v2 completionHandler:v14];

    return MEMORY[0x1EEE6DEC8](v5);
  }

  sub_1D4E7661C(*(v0 + 23), &unk_1EC7EBF20, &unk_1D561F530);
  sub_1D51E8560();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_199_3(v10, 2);
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_8:

  OUTLINED_FUNCTION_55();

  return v12();
}

uint64_t sub_1D533E584()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D533E680()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 248);
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_159();
  v3(v2);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D533E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 248);
  swift_willThrow();
  swift_unknownObjectRelease();
  v12 = OUTLINED_FUNCTION_81_0();
  v13(v12);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D533E7D8()
{
  OUTLINED_FUNCTION_60();
  v0 = [objc_opt_self() standardUserDefaults];
  [v0 setPrefersSpatialDownloads_];

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t MusicLibrary.deleteIntentDonations()()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_338();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return v3();
}

uint64_t sub_1D533E8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D533E910, 0, 0);
}

uint64_t sub_1D533E910()
{
  OUTLINED_FUNCTION_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  OUTLINED_FUNCTION_71();
  *(v0 + 40) = sub_1D5615D38();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_1D533E9D0;

  return sub_1D542C85C();
}

uint64_t sub_1D533E9D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D533EAE4(SEL *a1)
{
  v2 = *(sub_1D4E5A1CC() + 48);

  [*(v2 + OBJC_IVAR____TtCE16MusicKitInternalC8MusicKit12MusicLibrary21CloudStatusController_underlyingCloudController) *a1];
}

uint64_t MusicLibrary.connectionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560F038();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v19 - v9);
  sub_1D560F008();
  result = (*(v4 + 88))(v10, v2);
  v12 = result;
  v13 = *MEMORY[0x1E6975550];
  if (result == *MEMORY[0x1E6975550])
  {
    result = (*(v4 + 96))(v10, v2);
    v14 = *v10;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E6975558])
  {
    v14 = 0;
LABEL_5:
    *a1 = v14;
    *(a1 + 4) = v12 != v13;
    return result;
  }

  if (result == *MEMORY[0x1E6975568])
  {
    v14 = 1;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E6975560])
  {
    v14 = 2;
    goto LABEL_5;
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000046);
  sub_1D560F008();
  sub_1D5615D48();
  (*(v4 + 8))(v8, v2);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  OUTLINED_FUNCTION_6_3();
  v19[0] = 1064;
  result = OUTLINED_FUNCTION_71_21("Fatal error", v15, v16, v17, v18, "MusicKitInternal/MusicLibrary+Internal.swift");
  __break(1u);
  return result;
}

uint64_t MusicLibrary.connect()()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_338();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return v3();
}

uint64_t static MusicLibrary.ConnectionStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = LODWORD(v3) == 0;
  }

  else
  {
    if (LODWORD(v2) != 1)
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return OUTLINED_FUNCTION_53_0();
      }

      return 0;
    }

    v4 = LODWORD(v3) == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  return 0;
}

uint64_t MusicLibrary.ConnectionStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1DA6EC0D0](v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
    return sub_1D5616308();
  }
}

uint64_t MusicLibrary.ConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  OUTLINED_FUNCTION_164();
  if (v2 == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC0D0](v3);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5616308();
  }

  return sub_1D5616328();
}

uint64_t sub_1D533EF98(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.ConnectionStatus.hash(into:)();
  return sub_1D5616328();
}

uint64_t _s8MusicKit0A7LibraryC0aB8InternalE18DownloadConstraintO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t static MusicLibrary.AddToPlaylistError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_53_0();
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t MusicLibrary.AddToPlaylistError.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1DA6EC0D0](0);
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicLibrary.AddToPlaylistError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_164();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D533F188(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D56162D8();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t MusicLibrary.hashValue.getter()
{
  OUTLINED_FUNCTION_164();
  _s8MusicKit0A7LibraryC0aB8InternalE4hash4intoys6HasherVz_tF_0();
  return sub_1D5616328();
}

uint64_t sub_1D533F2BC(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D533F2FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicLibrary.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D533F328()
{

  return v0;
}

uint64_t sub_1D533F370()
{
  sub_1D533F328();
  OUTLINED_FUNCTION_311_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D533F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4E413BC(&qword_1EC7F4530, a2, _s15InternalStorageCMa);

  return MEMORY[0x1EEDCEDD8](a1, a3, a2, a4, v8);
}

uint64_t sub_1D533F434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4E413BC(&qword_1EC7F4538, a2, _s15InternalStorageCMa);

  return MEMORY[0x1EEDCEDD0](a1, a2, a3, v6);
}

id sub_1D533F4D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D5614D38();
    OUTLINED_FUNCTION_75_1();
  }

  else
  {
    v2 = 0;
  }

  v4 = [v3 initWithSuiteName_];

  return v4;
}

uint64_t sub_1D533F530(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_24_0();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D533F590(uint64_t a1)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1_0();
  v2 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_348_0();

  return sub_1D532DADC(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D533F6C8()
{
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_4_32();
  v1 = sub_1D56158D8();
  OUTLINED_FUNCTION_69(v1);
  v2 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_89();

  return sub_1D532F048(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D533F874()
{
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_1_0();
  v1 = sub_1D5614898();
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_325_0();
  OUTLINED_FUNCTION_73_0();

  return sub_1D53307C4(v3, v4, v5, v6, v7, v8);
}

void sub_1D533F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a1;
  v85 = a2;

  v5 = sub_1D5614F78();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v43 = OUTLINED_FUNCTION_98();
    v5 = sub_1D53404B0(v43, v44);
    v46 = v45;

    v6 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      OUTLINED_FUNCTION_98();
      sub_1D5615C58();
    }

    OUTLINED_FUNCTION_329_0();
    if (v10)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_265_1();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  OUTLINED_FUNCTION_266_1();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_141;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_141;
            }
          }
        }

        goto LABEL_141;
      }

      goto LABEL_144;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v7)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v7;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_141;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            if ((v40 * a3) >> 64 == (v40 * a3) >> 63 && !__OFADD__(v40 * a3, (v41 + v42)))
            {
              v7 = OUTLINED_FUNCTION_324_0(v7);
              if (!v10)
              {
                continue;
              }
            }

            goto LABEL_141;
          }
        }
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_265_1();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_266_1();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_141:

      return;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v47 = HIBYTE(v6) & 0xF;
  v84 = v5;
  v85 = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (v47)
      {
        OUTLINED_FUNCTION_78_22();
        if (v73 ^ v74 | v72)
        {
          v77 = 65;
        }

        if (!(v73 ^ v74 | v72))
        {
          v78 = 58;
        }

        v79 = &v84;
        while (1)
        {
          v80 = *v79;
          if (v80 < 0x30 || v80 >= v78)
          {
            if (v80 < 0x41 || v80 >= v77)
            {
              OUTLINED_FUNCTION_266_1();
              if (!v22 || v80 >= v82)
              {
                goto LABEL_141;
              }

              v81 = -87;
            }

            else
            {
              v81 = -55;
            }
          }

          else
          {
            v81 = -48;
          }

          v83 = v76 * a3;
          if ((v76 * a3) >> 64 == (v76 * a3) >> 63)
          {
            v76 = v83 + (v80 + v81);
            if (!__OFADD__(v83, (v80 + v81)))
            {
              v79 = (v79 + 1);
              if (--v75)
              {
                continue;
              }
            }
          }

          goto LABEL_141;
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        OUTLINED_FUNCTION_78_22();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v84 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              OUTLINED_FUNCTION_266_1();
              if (!v22 || v56 >= v58)
              {
                goto LABEL_141;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v56 + v57);
            if (!__OFSUB__(v59, (v56 + v57)))
            {
              ++v55;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_141;
        }
      }

      goto LABEL_141;
    }

    goto LABEL_143;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      OUTLINED_FUNCTION_78_22();
      if (v61 ^ v62 | v60)
      {
        v65 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v66 = 58;
      }

      v67 = &v84 + 1;
      while (1)
      {
        v68 = *v67;
        if (v68 < 0x30 || v68 >= v66)
        {
          if (v68 < 0x41 || v68 >= v65)
          {
            OUTLINED_FUNCTION_266_1();
            if (!v22 || v68 >= v70)
            {
              goto LABEL_141;
            }

            v69 = -87;
          }

          else
          {
            v69 = -55;
          }
        }

        else
        {
          v69 = -48;
        }

        v71 = v64 * a3;
        if ((v64 * a3) >> 64 == (v64 * a3) >> 63)
        {
          v64 = v71 + (v68 + v69);
          if (!__OFADD__(v71, (v68 + v69)))
          {
            ++v67;
            if (--v63)
            {
              continue;
            }
          }
        }

        goto LABEL_141;
      }
    }

    goto LABEL_141;
  }

LABEL_145:
  __break(1u);
}

unsigned __int8 *sub_1D533FED4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_1D5614F78();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D53404B0(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D5615C58();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}