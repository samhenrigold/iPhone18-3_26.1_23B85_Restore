uint64_t sub_1D4F06C64(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s6SourceOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7ContentO17AdditionalContentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F06E28()
{
  result = qword_1EC7EAC20;
  if (!qword_1EC7EAC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAC18, &qword_1D561DA50);
    sub_1D4F06EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC20);
  }

  return result;
}

unint64_t sub_1D4F06EAC()
{
  result = qword_1EC7EAC28;
  if (!qword_1EC7EAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC28);
  }

  return result;
}

unint64_t sub_1D4F06F00()
{
  result = qword_1EC7EAC30;
  if (!qword_1EC7EAC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAC18, &qword_1D561DA50);
    sub_1D4F06F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC30);
  }

  return result;
}

unint64_t sub_1D4F06F84()
{
  result = qword_1EC7EAC38;
  if (!qword_1EC7EAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAC38);
  }

  return result;
}

void sub_1D4F06FD8()
{
  OUTLINED_FUNCTION_47();
  v2 = OUTLINED_FUNCTION_53_2();
  type metadata accessor for MusicSearchResultGroup(v2);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v0)
  {
    OUTLINED_FUNCTION_38_9();
    v6 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      sub_1D5614E28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
      sub_1D4F0A558();
      OUTLINED_FUNCTION_154_1();
      sub_1D5614CB8();
      sub_1D56162F8();
      OUTLINED_FUNCTION_160_0();
      v1 += v6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F070FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_206();
  v4 = sub_1D4E62638(v3);
  MEMORY[0x1DA6EC0D0](v4);
  v5 = sub_1D4E62628(v2);
  if (!v5)
  {
LABEL_8:
    OUTLINED_FUNCTION_118_2();
    return;
  }

  v6 = v5;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_86_0();
        MEMORY[0x1DA6EB9B0](v8);
      }

      else
      {
      }

      ++v7;
      sub_1D560CDE8();
      OUTLINED_FUNCTION_88_3();
      sub_1D4F0B28C(&qword_1EC7EB030, v9, MEMORY[0x1E6974D38]);
      OUTLINED_FUNCTION_220();
      sub_1D5614CB8();
    }

    while (v6 != v7);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D4F07228()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for CloudSuggestedPivotsRawRequest.Entry(v3);
  OUTLINED_FUNCTION_4();
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v41 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v44 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v48 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(v16);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v43 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v47 = v21;
  v22 = OUTLINED_FUNCTION_70_0();
  v23 = type metadata accessor for CloudSuggestedPivotsRawRequest.PivotRound(v22);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_7();
  v25 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v25);
  v46 = v25;
  if (v25)
  {
    v26 = 0;
    OUTLINED_FUNCTION_43_3();
    v45 = *(v23 + 20);
    v40 = (v10 + 8);
    v49 = v0;
    do
    {
      v50 = v26;
      sub_1D4F0B238();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_57(v47, 1, v48);
      if (v27)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_86_3();
        sub_1D4F0AECC();
        OUTLINED_FUNCTION_27();
        sub_1D5614E28();
        OUTLINED_FUNCTION_1_23();
        sub_1D4F0B28C(&qword_1EDD53358, v28, MEMORY[0x1E6975BD8]);
        sub_1D5614CB8();
        if (*(v43 + *(v48 + 24) + 8))
        {
          OUTLINED_FUNCTION_27();
          v0 = v49;
          sub_1D5614E28();
        }

        else
        {
          OUTLINED_FUNCTION_51_7();
          sub_1D56162F8();
        }

        sub_1D4F0AE7C();
        OUTLINED_FUNCTION_57(v44, 1, v8);
        if (v27)
        {
          OUTLINED_FUNCTION_51_7();
          sub_1D56162F8();
        }

        else
        {
          v29 = OUTLINED_FUNCTION_63_1();
          v30(v29);
          OUTLINED_FUNCTION_27();
          sub_1D5614CB8();
          (*v40)(v41, v8);
        }

        OUTLINED_FUNCTION_100_0();
      }

      v31 = *(v0 + v45);
      if (v31)
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](*(v31 + 16));
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = *(v42 + 24);
          OUTLINED_FUNCTION_43_3();
          v35 = v31 + v34;
          v37 = *(v36 + 72);
          do
          {
            OUTLINED_FUNCTION_79_1();
            OUTLINED_FUNCTION_209();
            sub_1D4F0B238();
            sub_1D5614E28();
            OUTLINED_FUNCTION_1_23();
            sub_1D4F0B28C(&qword_1EDD53358, v38, MEMORY[0x1E6975BD8]);
            sub_1D5614CB8();
            v39 = *(v7 + v33);
            if (v39 == 3)
            {
              OUTLINED_FUNCTION_51_7();
              sub_1D56162F8();
            }

            else
            {
              OUTLINED_FUNCTION_27();
              sub_1D5614E28();
            }

            OUTLINED_FUNCTION_80_1();
            sub_1D4E58360();
            v35 += v37;
            --v32;
          }

          while (v32);
        }
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      v0 = v49;
      ++v26;
      sub_1D4E58360();
    }

    while (v50 + 1 != v46);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F07784()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  sub_1D5610978();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_34_5();
  v6 = type metadata accessor for EditorialCard(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v1)
  {
    v17 = *(v6 + 28);
    v16 = *(v6 + 32);
    OUTLINED_FUNCTION_43_3();
    do
    {
      OUTLINED_FUNCTION_124_0();
      sub_1D5614E28();
      if (*(v0 + 16) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_27();
        MEMORY[0x1DA6EC0D0](0);
      }

      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v8)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_129();
        v9 = OUTLINED_FUNCTION_55_4();
        v10(v9);
        OUTLINED_FUNCTION_27();
        v11 = sub_1D4F0B28C(&qword_1EC7EACA0, MEMORY[0x1E6975E48], MEMORY[0x1E6975E58]);
        OUTLINED_FUNCTION_68_0(v11);
        v12 = OUTLINED_FUNCTION_61();
        v13(v12);
      }

      if (*(v0 + v17))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_141();
        sub_1D4F327C4();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v0 + v16))
      {
        OUTLINED_FUNCTION_27();
        v14 = OUTLINED_FUNCTION_141();
        sub_1D4F329DC(v14, v15);
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      sub_1D4F31AC0();
      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F07A58()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = (v1 + 49);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v2 += 24;
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_150_3();
      MEMORY[0x1DA6EC0D0](v3);
      MEMORY[0x1DA6EC0D0](v4);
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F07ACC()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 8;
      OUTLINED_FUNCTION_92_0();
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F07B18()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = v1 + 48;
    do
    {
      v3 = *(v2 - 8);
      v2 += 24;
      OUTLINED_FUNCTION_92_0();
      MEMORY[0x1DA6EC0D0](v3);
      OUTLINED_FUNCTION_150_3();
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F07B78()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = 0;
    v3 = v1 + 32;
    do
    {
      v4 = v3 + 40 * v2;
      v6 = *(v4 + 8);
      v5 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = *(v4 + 32);
      OUTLINED_FUNCTION_92_0();
      MEMORY[0x1DA6EC0D0](*(v6 + 16));
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = v6 + 40;
        do
        {
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_150_3();
          v10 += 16;
          --v9;
        }

        while (v9);
      }

      if (v7)
      {
        sub_1D56162F8();
      }

      else
      {
        sub_1D56162F8();
        if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v5;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x1DA6EC100](v11);
      }

      MEMORY[0x1DA6EC0D0](*(v8 + 16));
      v12 = *(v8 + 16);
      if (v12)
      {
        v13 = (v8 + 32);
        do
        {
          v14 = *v13++;
          MEMORY[0x1DA6EC0D0](v14);
          --v12;
        }

        while (v12);
      }

      ++v2;
    }

    while (v2 != v0);
  }
}

void sub_1D4F07C6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_98_0();
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v7[0] = *v5;
      v7[1] = v6;
      v8 = v5[2];
      v10 = v7[0];
      v11 = v6;
      v12 = v8;
      sub_1D4F0A60C(v7, v9);
      VideoLocale.hash(into:)(v2);
      v9[0] = v10;
      v9[1] = v11;
      v9[2] = v12;
      sub_1D4F0A668(v9);
      v5 += 3;
      --v3;
    }

    while (v3);
  }
}

void sub_1D4F07D44(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_98_0();
  if (v1)
  {
    v9(0);
    OUTLINED_FUNCTION_173();
    v13 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    sub_1D4F0B28C(v7, v5, v3);
    do
    {
      OUTLINED_FUNCTION_29_3();
      sub_1D5614CB8();
      v13 += v15;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F07E0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_98_0();
  if (v3)
  {
    v5 = type metadata accessor for VideoOffer(0);
    OUTLINED_FUNCTION_69(v5);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v8 + 72);
    do
    {
      sub_1D5369830(v2);
      v7 += v9;
      --v3;
    }

    while (v3);
  }
}

void sub_1D4F07EA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_35_12();
  if (v2)
  {
    v4 = v3 + 48;
    do
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      v8 = *(v4 + 16);
      v9 = *(v4 + 32);
      v7 = *(v4 + 40);

      sub_1D5614E28();
      if (v5)
      {
        sub_1D56162F8();
        sub_1D5614E28();
        if (v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1D56162F8();
        if (v6)
        {
LABEL_5:
          sub_1D56162F8();
          if (!v7)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      sub_1D56162F8();
      MEMORY[0x1DA6EC0D0](v8);
      if (!v7)
      {
LABEL_9:
        sub_1D56162F8();
        MEMORY[0x1DA6EC0D0](v9);
        goto LABEL_10;
      }

LABEL_6:
      sub_1D56162F8();
LABEL_10:
      OUTLINED_FUNCTION_68_4();
      sub_1D4F31AC0();

      v4 += 72;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_118_2();
}

void sub_1D4F07FB4()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_150_3();
      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F08008(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_35_12();
  if (v2)
  {
    v4 = v3 + 72;
    do
    {
      v4 += 48;

      OUTLINED_FUNCTION_131_1();
      sub_1D5614E28();
      sub_1D5614E28();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      OUTLINED_FUNCTION_68_4();
      sub_1D4F31AC0();

      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_118_2();
}

void sub_1D4F080F8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  sub_1D560F548();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_34_5();
  type metadata accessor for StorePlatformOffer(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v1)
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_223();
    do
    {
      OUTLINED_FUNCTION_85_2();
      sub_1D4F0B238();
      if (*v0)
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_141();
        sub_1D4F0657C();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v7)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_55_4();
        v9(v8);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_82_2();
        v11 = sub_1D4F0B28C(&qword_1EC7EAC70, v10, MEMORY[0x1E6975720]);
        OUTLINED_FUNCTION_68_0(v11);
        v12 = OUTLINED_FUNCTION_61();
        v13(v12);
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08318()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_34_5();
  type metadata accessor for StorePlatformGenreAttribute(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_140_1();
  if (v1)
  {
    OUTLINED_FUNCTION_43_3();
    OUTLINED_FUNCTION_223();
    do
    {
      OUTLINED_FUNCTION_124_0();
      if (*(v0 + 8))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v0 + 24))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_142_0();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v7)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v8 = OUTLINED_FUNCTION_55_4();
        v9(v8);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        v11 = sub_1D4F0B28C(&qword_1EC7E9FC8, v10, MEMORY[0x1E6968FC0]);
        OUTLINED_FUNCTION_68_0(v11);
        v12 = OUTLINED_FUNCTION_61();
        v13(v12);
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v7);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08620(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_35_12();
  if (v1)
  {
    v3 = v2 + 32;
    do
    {
      ++v3;
      sub_1D5614E28();

      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F086FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = (v1 + 72);
    do
    {
      v3 = *v2;

      sub_1D5614E28();
      sub_1D5614E28();
      sub_1D56162F8();
      if (v3)
      {
        sub_1D5614E28();
      }

      v2 += 6;

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F087C4()
{
  v3 = OUTLINED_FUNCTION_53_2();
  v4 = type metadata accessor for VideoArtwork.FileAsset(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    v8 = *(v4 + 24);
    v13 = *(v4 + 20);
    OUTLINED_FUNCTION_43_3();
    v10 = v2 + v9;
    v11 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      sub_1D560C0A8();
      OUTLINED_FUNCTION_0_15();
      sub_1D4F0B28C(&qword_1EC7E9FC8, v12, MEMORY[0x1E6968FC0]);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      MEMORY[0x1DA6EC0D0](*(v0 + v13));
      MEMORY[0x1DA6EC0D0](*(v0 + v8));
      OUTLINED_FUNCTION_92_0();
      sub_1D4F31AC0();
      OUTLINED_FUNCTION_160_0();
      v10 += v11;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1D4F0893C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InternalMusicPlayer.Dialog.Action(0);
  v4 = OUTLINED_FUNCTION_69(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(a2 + 16);
  result = MEMORY[0x1DA6EC0D0](v10);
  if (v10)
  {
    OUTLINED_FUNCTION_43_3();
    v13 = a2 + v12;
    v14 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_134_0();
      sub_1D4F0B238();
      sub_1D5614E28();
      MEMORY[0x1DA6EC0D0](*(v9 + 16));
      result = sub_1D4E58360();
      v13 += v14;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_1D4F08A4C(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v4 = OUTLINED_FUNCTION_53_2();
  type metadata accessor for InternalMusicPlayer.Queue.Entry(v4);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v2)
  {
    OUTLINED_FUNCTION_38_9();
    v8 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      sub_1D5105370(v1);
      OUTLINED_FUNCTION_160_0();
      v3 += v8;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F08B38()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1DA6EC0D0](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F08B78()
{
  OUTLINED_FUNCTION_47();
  v2 = OUTLINED_FUNCTION_53_2();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(v2);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v0)
  {
    OUTLINED_FUNCTION_38_9();
    v6 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      OUTLINED_FUNCTION_232();
      sub_1D5614E28();
      sub_1D560C0A8();
      OUTLINED_FUNCTION_0_15();
      sub_1D4F0B28C(&qword_1EC7E9FC8, v7, MEMORY[0x1E6968FC0]);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_160_0();
      v1 += v6;
      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08CAC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_64_1();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_7();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_34_5();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_11();
  v7 = *(v1 + 16);
  MEMORY[0x1DA6EC0D0](v7);
  if (v7)
  {
    OUTLINED_FUNCTION_43_3();
    do
    {
      OUTLINED_FUNCTION_124_0();
      sub_1D5614E28();
      sub_1D5614E28();
      OUTLINED_FUNCTION_67_4();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v8)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_55_4();
        v10(v9);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        v12 = sub_1D4F0B28C(&qword_1EC7E9FC8, v11, MEMORY[0x1E6968FC0]);
        OUTLINED_FUNCTION_68_0(v12);
        v13 = OUTLINED_FUNCTION_61();
        v14(v13);
      }

      sub_1D56162F8();
      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_176_0();
    }

    while (!v8);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F08F34()
{
  OUTLINED_FUNCTION_35_12();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1DA6EC0D0](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1D4F08F74()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_64_1();
  sub_1D5610088();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_7();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_34_5();
  type metadata accessor for MusicItemTypedIdentifier(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_11();
  v8 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v8);
  v20 = v8;
  if (v8)
  {
    v9 = 0;
    OUTLINED_FUNCTION_43_3();
    do
    {
      OUTLINED_FUNCTION_90_3();
      sub_1D4F0B238();
      sub_1D5614E28();
      v10 = *(v0 + 16);
      MEMORY[0x1DA6EC0D0](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 40;
        do
        {

          OUTLINED_FUNCTION_71();
          sub_1D5614E28();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      sub_1D560D9A8();
      sub_1D4F0B28C(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
      sub_1D5614CB8();
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_39_7();
      if (v13)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_129();
        v14 = OUTLINED_FUNCTION_55_4();
        v15(v14);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_1_23();
        v17 = sub_1D4F0B28C(&qword_1EDD53358, v16, MEMORY[0x1E6975BD8]);
        OUTLINED_FUNCTION_68_0(v17);
        v18 = OUTLINED_FUNCTION_61();
        v19(v18);
      }

      OUTLINED_FUNCTION_188_0();
      ++v9;
    }

    while (v9 != v20);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F09260()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v68 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_112_0();
  v75 = sub_1D5614828();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v71 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_135();
  v67 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v66 - v16;
  v17 = OUTLINED_FUNCTION_70_0();
  v78 = type metadata accessor for MusicLibraryPlaylistViewModel.Delta(v17);
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = *(v2 + 16);
  MEMORY[0x1DA6EC0D0](v24);
  if (v24)
  {
    OUTLINED_FUNCTION_43_3();
    v26 = v2 + v25;
    v27 = (v10 + 32);
    v28 = *(v19 + 72);
    v76 = (v10 + 32);
    v77 = v28;
    v74 = (v10 + 8);
    v79 = v4;
    v72 = v0;
    while (2)
    {
      OUTLINED_FUNCTION_224();
      sub_1D4F0B238();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v55 = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED5A0, &qword_1D561DE10) + 48));
          v56 = v73;
          OUTLINED_FUNCTION_202();
          v57();
          MEMORY[0x1DA6EC0D0](1);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v58, MEMORY[0x1E6977320]);
          sub_1D5614CB8();
          MEMORY[0x1DA6EC0D0](v55);
          OUTLINED_FUNCTION_129();
          v38 = v56;
          goto LABEL_12;
        case 2u:
          v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB060, &qword_1D561DE08) + 48);
          v40 = *v27;
          v41 = v73;
          v42 = v75;
          v40(v73, v23, v75);
          v43 = v67;
          v40(v67, v23 + v39, v42);
          MEMORY[0x1DA6EC0D0](2);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v44, MEMORY[0x1E6977320]);
          sub_1D5614CB8();
          sub_1D5614CB8();
          v45 = *v74;
          (*v74)(v43, v42);
          v46 = v41;
          v27 = v76;
          v45(v46, v42);
          goto LABEL_25;
        case 3u:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB058, &qword_1D561DE00);
          v47 = v75;
          v70 = *v27;
          v70(v71, v23, v75);
          sub_1D4F0AB3C();
          MEMORY[0x1DA6EC0D0](3);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v48, MEMORY[0x1E6977320]);
          sub_1D5614CB8();
          v49 = v47;
          v0 = v72;
          v50 = v68;
          sub_1D4F0AE7C();
          OUTLINED_FUNCTION_10(v50);
          if (v51)
          {
            sub_1D56162F8();
            v52 = OUTLINED_FUNCTION_130();
            sub_1D4E50004(v52, v53, &qword_1D56250F0);
            OUTLINED_FUNCTION_129();
            v54(v71, v49);
          }

          else
          {
            v60 = v73;
            v70(v73, v50, v49);
            v61 = v49;
            sub_1D56162F8();
            sub_1D5614CB8();
            v62 = *v74;
            v63 = v60;
            v0 = v72;
            (*v74)(v63, v61);
            v64 = OUTLINED_FUNCTION_130();
            sub_1D4E50004(v64, v65, &qword_1D56250F0);
            v62(v71, v61);
          }

          v27 = v76;
          goto LABEL_25;
        case 4u:
          v34 = v73;
          OUTLINED_FUNCTION_202();
          v35();
          MEMORY[0x1DA6EC0D0](4);
          OUTLINED_FUNCTION_11_8();
          sub_1D4F0B28C(&qword_1EC7EB050, v36, MEMORY[0x1E6977320]);
          sub_1D5614CB8();
          OUTLINED_FUNCTION_129();
          v38 = v34;
LABEL_12:
          v59 = v0;
          v0 = v4;
          v4 = v79;
          v37(v38, v59);
          goto LABEL_25;
        case 5u:
          MEMORY[0x1DA6EC0D0](5);
          goto LABEL_25;
        default:
          v29 = *(v23 + 8);
          v30 = *(v23 + 24);
          v31 = *(v23 + 32);
          v32 = *(v23 + 40);
          v69 = *(v23 + 16);
          v70 = v31;
          v33 = *(v23 + 48);
          MEMORY[0x1DA6EC0D0](0);
          if (v29)
          {
            OUTLINED_FUNCTION_27();
            sub_1D5614E28();
          }

          else
          {
            OUTLINED_FUNCTION_51_7();
            sub_1D56162F8();
          }

          v27 = v76;
          if (v30)
          {
            OUTLINED_FUNCTION_27();
            sub_1D5614E28();
            if (v32)
            {
              goto LABEL_18;
            }
          }

          else
          {
            OUTLINED_FUNCTION_51_7();
            sub_1D56162F8();
            if (v32)
            {
LABEL_18:
              OUTLINED_FUNCTION_27();
              sub_1D5614E28();
              goto LABEL_21;
            }
          }

          OUTLINED_FUNCTION_51_7();
          sub_1D56162F8();
LABEL_21:
          if (v33 == 2)
          {
            OUTLINED_FUNCTION_51_7();
          }

          else
          {
            OUTLINED_FUNCTION_27();
          }

          sub_1D56162F8();

          v0 = v72;
LABEL_25:
          v26 += v77;
          if (!--v24)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F09944(uint64_t a1)
{
  OUTLINED_FUNCTION_191();
  v4 = OUTLINED_FUNCTION_53_2();
  type metadata accessor for MusicSuggestedPivotRound(v4);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_103_0();
  if (v2)
  {
    OUTLINED_FUNCTION_38_9();
    v8 = *(v6 + 72);
    do
    {
      OUTLINED_FUNCTION_93();
      sub_1D4F0B238();
      MusicSuggestedPivotNode.hash(into:)(v1);
      sub_1D4F3148C();
      OUTLINED_FUNCTION_160_0();
      v3 += v8;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_190();
}

void sub_1D4F09AC8()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_64_1();
  v4 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v37 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  v9 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v38 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v36 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  type metadata accessor for MovieClip(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v3 + 16);
  MEMORY[0x1DA6EC0D0](v19);
  if (v19)
  {
    OUTLINED_FUNCTION_43_3();
    v21 = v3 + v20;
    v35 = (v38 + 32);
    v39 = *(v22 + 72);
    do
    {
      v40 = v19;
      v23 = v4;
      sub_1D4F0B238();
      if (*(v18 + 8))
      {
        OUTLINED_FUNCTION_27();
        sub_1D5614E28();
      }

      else
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      if (*(v18 + 24) == 1)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        v24 = *(v18 + 16);
        OUTLINED_FUNCTION_27();
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        MEMORY[0x1DA6EC100](v25);
      }

      v4 = v23;
      sub_1D4F0AE7C();
      OUTLINED_FUNCTION_57(v1, 1, v9);
      if (v26)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        (*v35)(v36, v1, v9);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_0_15();
        sub_1D4F0B28C(&qword_1EC7E9FC8, v27, MEMORY[0x1E6968FC0]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        v28 = OUTLINED_FUNCTION_85_0();
        v29(v28);
      }

      sub_1D4F0AE7C();
      v30 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_57(v30, v31, v23);
      if (v26)
      {
        OUTLINED_FUNCTION_51_7();
        sub_1D56162F8();
      }

      else
      {
        OUTLINED_FUNCTION_203();
        v32(v37, v0, v23);
        OUTLINED_FUNCTION_27();
        sub_1D4F0B28C(&qword_1EC7E9FC0, MEMORY[0x1E6976F68], MEMORY[0x1E6976F78]);
        OUTLINED_FUNCTION_104();
        sub_1D5614CB8();
        v33 = OUTLINED_FUNCTION_93();
        v34(v33);
      }

      sub_1D4F31AC0();
      sub_1D4E58360();
      v21 += v39;
      v19 = v40 - 1;
    }

    while (v40 != 1);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F09F48(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_206();
  v4 = sub_1D4E62638(v3);
  MEMORY[0x1DA6EC0D0](v4);
  v5 = sub_1D4E62628(v2);
  if (!v5)
  {
LABEL_8:
    OUTLINED_FUNCTION_118_2();
    return;
  }

  v6 = v5;
  if (v5 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_86_0();
        MEMORY[0x1DA6EB9B0](v8);
      }

      else
      {
      }

      ++v7;
      v9 = OUTLINED_FUNCTION_201();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      sub_1D4E62A60(&qword_1EC7EAF18, &qword_1EC7EAF10, &qword_1D561DCE0, MEMORY[0x1E6974D38]);
      sub_1D5614CB8();
    }

    while (v6 != v7);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D4F0A108()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D560FDA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_11();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_71_1();
  v2(0);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_114();
  v12 = *(v4 + 16);
  MEMORY[0x1DA6EC0D0](v12);
  if (v12)
  {
    OUTLINED_FUNCTION_43_3();
    v14 = v4 + v13;
    v23 = *(v10 + 72);
    do
    {
      sub_1D4F0B238();
      if (*(v0 + 8))
      {
        sub_1D56162F8();
        OUTLINED_FUNCTION_61();
        sub_1D5614E28();
      }

      else
      {
        sub_1D56162F8();
      }

      if (*(v0 + 24))
      {
        sub_1D56162F8();
        OUTLINED_FUNCTION_61();
        sub_1D5614E28();
      }

      else
      {
        sub_1D56162F8();
      }

      sub_1D4F0AE7C();
      v15 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_57(v15, v16, v5);
      if (v17)
      {
        sub_1D56162F8();
      }

      else
      {
        v18 = OUTLINED_FUNCTION_201();
        v19(v18);
        sub_1D56162F8();
        OUTLINED_FUNCTION_87_2();
        sub_1D4F0B28C(&qword_1EC7EB000, v20, MEMORY[0x1E6975B90]);
        sub_1D5614CB8();
        OUTLINED_FUNCTION_129();
        v21 = OUTLINED_FUNCTION_15_2();
        v22(v21);
      }

      sub_1D4E58360();
      v14 += v23;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F0A3F0()
{
  result = qword_1EC7EAE98;
  if (!qword_1EC7EAE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D4F0B28C(&qword_1EC7EAEA0, type metadata accessor for CloudMovieClip, &unk_1D5631EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAE98);
  }

  return result;
}

unint64_t sub_1D4F0A4A4()
{
  result = qword_1EC7EAEA8;
  if (!qword_1EC7EAEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D4F0B28C(&qword_1EC7EAEB0, type metadata accessor for CloudMovieClip, &unk_1D5631F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EAEA8);
  }

  return result;
}

unint64_t sub_1D4F0A558()
{
  result = qword_1EC7EB0D8;
  if (!qword_1EC7EB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA650, &qword_1D561C540);
    sub_1D4F0B28C(&qword_1EC7EB0E0, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB0D8);
  }

  return result;
}

unint64_t sub_1D4F0A6BC()
{
  result = qword_1EC7EB138;
  if (!qword_1EC7EB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4F0B28C(&qword_1EC7EB140, MEMORY[0x1E69760F8], MEMORY[0x1E6976108]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB138);
  }

  return result;
}

unint64_t sub_1D4F0A770()
{
  result = qword_1EC7EB148;
  if (!qword_1EC7EB148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB110, &qword_1D561DEB0);
    sub_1D4F0B28C(&qword_1EC7EB150, MEMORY[0x1E69760F8], MEMORY[0x1E6976110]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB148);
  }

  return result;
}

unint64_t sub_1D4F0A824()
{
  result = qword_1EC7EB190;
  if (!qword_1EC7EB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4F0B28C(&qword_1EC7EB198, MEMORY[0x1E6975A70], MEMORY[0x1E6975A80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB190);
  }

  return result;
}

unint64_t sub_1D4F0A8D8()
{
  result = qword_1EC7EB1A0;
  if (!qword_1EC7EB1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4F0B28C(&qword_1EC7EB1A8, MEMORY[0x1E6975A70], MEMORY[0x1E6975A88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1A0);
  }

  return result;
}

unint64_t sub_1D4F0A98C()
{
  result = qword_1EC7EB1B0;
  if (!qword_1EC7EB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4F0AA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1B0);
  }

  return result;
}

unint64_t sub_1D4F0AA10()
{
  result = qword_1EC7EB1B8;
  if (!qword_1EC7EB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1B8);
  }

  return result;
}

unint64_t sub_1D4F0AA64()
{
  result = qword_1EC7EB1C0;
  if (!qword_1EC7EB1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4F0AAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1C0);
  }

  return result;
}

unint64_t sub_1D4F0AAE8()
{
  result = qword_1EC7EB1C8;
  if (!qword_1EC7EB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB1C8);
  }

  return result;
}

uint64_t sub_1D4F0AB3C()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

unint64_t sub_1D4F0AB8C()
{
  result = qword_1EC7EB248;
  if (!qword_1EC7EB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F0B28C(&qword_1EC7EB250, type metadata accessor for CloudVideoOffer, &unk_1D5629414);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB248);
  }

  return result;
}

unint64_t sub_1D4F0AC40()
{
  result = qword_1EC7EB258;
  if (!qword_1EC7EB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F0B28C(&qword_1EC7EB260, type metadata accessor for CloudVideoOffer, &unk_1D5629454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB258);
  }

  return result;
}

uint64_t sub_1D4F0ACF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1D5615A98();
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
    result = sub_1D4E62638(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1D560CDE8();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1D4E62A60(&qword_1EC7EB2F8, &qword_1EC7EB2F0, &qword_1D561E008, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2F0, &qword_1D561E008);
          v9 = sub_1D5355038(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
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

uint64_t sub_1D4F0AE7C()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_186_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D4F0AECC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D4F0AF20()
{
  result = qword_1EC7EB330;
  if (!qword_1EC7EB330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D4F0B28C(&qword_1EC7EB338, MEMORY[0x1E6977468], MEMORY[0x1E6977480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB330);
  }

  return result;
}

unint64_t sub_1D4F0AFD4()
{
  result = qword_1EC7EB340;
  if (!qword_1EC7EB340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB328, &unk_1D561E030);
    sub_1D4F0B28C(&qword_1EC7EB348, MEMORY[0x1E6977468], MEMORY[0x1E6977478]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB340);
  }

  return result;
}

unint64_t sub_1D4F0B088()
{
  result = qword_1EC7EB350;
  if (!qword_1EC7EB350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE68, &unk_1D5621200);
    sub_1D4F0B10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB350);
  }

  return result;
}

unint64_t sub_1D4F0B10C()
{
  result = qword_1EC7EB358;
  if (!qword_1EC7EB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB358);
  }

  return result;
}

unint64_t sub_1D4F0B160()
{
  result = qword_1EC7EB360;
  if (!qword_1EC7EB360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE68, &unk_1D5621200);
    sub_1D4F0B1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB360);
  }

  return result;
}

unint64_t sub_1D4F0B1E4()
{
  result = qword_1EC7EB368;
  if (!qword_1EC7EB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB368);
  }

  return result;
}

uint64_t sub_1D4F0B238()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D4F0B28C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

size_t OUTLINED_FUNCTION_23_12(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_91_1(uint64_t a1)
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_94_1(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * result - 64;
  return result;
}

void OUTLINED_FUNCTION_98_0()
{

  JUMPOUT(0x1DA6EC0D0);
}

void OUTLINED_FUNCTION_103_0()
{

  JUMPOUT(0x1DA6EC0D0);
}

void OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_1D4F03614(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return sub_1D4F0B238();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_139_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void OUTLINED_FUNCTION_140_1()
{

  JUMPOUT(0x1DA6EC0D0);
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return sub_1D5614E28();
}

void OUTLINED_FUNCTION_146_2(uint64_t a1)
{

  sub_1D4F03980(a1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_149(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_150_3()
{

  JUMPOUT(0x1DA6EC100);
}

uint64_t OUTLINED_FUNCTION_160_0()
{

  return sub_1D4E58360();
}

uint64_t OUTLINED_FUNCTION_168_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + ((v3 << 9) | (8 * a1)));
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_187(uint64_t a1@<X8>)
{
  *(v2 - 104) = a1;

  sub_1D4F03B84(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_188_0()
{

  return sub_1D4E58360();
}

uint64_t OUTLINED_FUNCTION_189_0()
{

  return sub_1D4F0AE7C();
}

void *OUTLINED_FUNCTION_192()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t OUTLINED_FUNCTION_193()
{

  return sub_1D4F0AE7C();
}

uint64_t OUTLINED_FUNCTION_226(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_227()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_230(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_231()
{

  return sub_1D560E838();
}

uint64_t OUTLINED_FUNCTION_232()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_233(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_234()
{

  return sub_1D4E58360();
}

void *OUTLINED_FUNCTION_235()
{

  return __swift_coroFrameAllocStub(v0);
}

id Artwork.TextGradient.leadingColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Artwork.TextGradient.trailingColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t static Artwork.TextGradient.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_0_16();
    sub_1D4F0C398(v5, v6, &unk_1D561B944);
    v7 = OUTLINED_FUNCTION_3_9(v4);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  if (!a1[1])
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  type metadata accessor for CGColor();
  OUTLINED_FUNCTION_0_16();
  sub_1D4F0C398(v9, v10, &unk_1D561B944);
  v11 = OUTLINED_FUNCTION_3_9(v8);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Artwork.TextGradient(0);
  if ((sub_1D5614018() & 1) == 0)
  {
    return 0;
  }

  return sub_1D5614018();
}

uint64_t type metadata accessor for Artwork.TextGradient(uint64_t a1)
{
  result = qword_1EC7EB388;
  if (!qword_1EC7EB388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.TextGradient.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    sub_1D56162F8();
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_0_16();
    v4 = sub_1D4F0C398(v2, v3, &unk_1D561B944);
    OUTLINED_FUNCTION_4_10(v4);
  }

  else
  {
    sub_1D56162F8();
  }

  if (v1[1])
  {
    sub_1D56162F8();
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_0_16();
    v7 = sub_1D4F0C398(v5, v6, &unk_1D561B944);
    OUTLINED_FUNCTION_4_10(v7);
  }

  else
  {
    sub_1D56162F8();
  }

  type metadata accessor for Artwork.TextGradient(0);
  sub_1D5614028();
  sub_1D4F0C398(&qword_1EC7EB378, MEMORY[0x1E6976F50], MEMORY[0x1E6976F58]);
  sub_1D5614CB8();
  return sub_1D5614CB8();
}

uint64_t Artwork.TextGradient.hashValue.getter()
{
  sub_1D56162D8();
  Artwork.TextGradient.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F0BED0(uint64_t a1)
{
  sub_1D56162D8();
  Artwork.TextGradient.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t Artwork.TextGradient.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D5613FC8();
  OUTLINED_FUNCTION_4();
  v22 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D560F968();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1D4E628D4(a1, v21);
  sub_1D560F948();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D560F938();
  v20 = sub_1D5613F88();
  v19 = sub_1D5613FA8();
  type metadata accessor for Artwork.TextGradient(0);
  sub_1D5613F98();
  sub_1D5613FB8();
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v22 + 8))(v10, v5);
  result = (*(v13 + 8))(v17, v11);
  *a2 = v20;
  a2[1] = v19;
  return result;
}

uint64_t Artwork.TextGradient.encode(to:)(uint64_t a1)
{
  v32 = a1;
  v34 = sub_1D560F968();
  OUTLINED_FUNCTION_4();
  v33 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v29 = v5 - v4;
  v6 = sub_1D5614028();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  sub_1D5613FC8();
  OUTLINED_FUNCTION_4();
  v30 = v15;
  v31 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v20 = *v1;
  v19 = *(v1 + 8);
  v21 = type metadata accessor for Artwork.TextGradient(0);
  v22 = *(v8 + 16);
  v22(v13, v1 + *(v21 + 24), v6);
  v22(v28, v1 + *(v21 + 28), v6);
  v23 = v19;
  v24 = v20;
  v25 = v29;
  sub_1D5613F78();
  sub_1D5613F68();
  sub_1D560F958();
  (*(v33 + 8))(v25, v34);
  return (*(v30 + 8))(v18, v31);
}

uint64_t sub_1D4F0C398(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D4F0C438(uint64_t a1)
{
  sub_1D4F0C4BC(319);
  if (v1 <= 0x3F)
  {
    sub_1D5614028();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4F0C4BC(uint64_t a1)
{
  if (!qword_1EC7EB398)
  {
    type metadata accessor for CGColor();
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EB398);
    }
  }
}

uint64_t sub_1D4F0C514()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EB3A0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EB3A0);
  v2 = *MEMORY[0x1E69767C8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static EditorialItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8980 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EB3A0);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

void EditorialItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)()
{
  OUTLINED_FUNCTION_47();
  v144 = v0;
  v145 = v1;
  v3 = v2;
  v5 = v4;
  v138 = v6;
  v137 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v136 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v135 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3B8, &qword_1D561E120);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_48(&v119 - v14);
  v15 = sub_1D5614118();
  OUTLINED_FUNCTION_4();
  v131 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v119 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_48(&v119 - v22);
  v23 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v122 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v27 - v26);
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v142 = v29;
  v143 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v120 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3C0, &qword_1D561E128);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = OUTLINED_FUNCTION_48(&v119 - v34);
  v140 = type metadata accessor for EditorialItemPropertyProvider(v35);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v119 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v41 = OUTLINED_FUNCTION_22(v40);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v119 - v45;
  v127 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v126 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;

  v139 = v3;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_27_5();
  v54 = sub_1D4F15A28(v52, v53, MEMORY[0x1E6976FC0]);
  v129 = v15;
  v125 = v54;
  v124 = sub_1D5614C68();

  sub_1D560FED8();
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v23);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v23);
  v141 = v51;
  OUTLINED_FUNCTION_215();
  v145 = v5;
  sub_1D560D4D8();
  sub_1D4E50004(v44, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v46, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E69910(v144, v146, &qword_1EC7EEC40, &unk_1D561C070);
  if (!v146[3])
  {
    sub_1D4E50004(v146, &qword_1EC7EEC40, &unk_1D561C070);
    v147 = 0u;
    v148 = 0u;
    v149 = 0;
LABEL_8:
    v58 = v140;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v149 = 0;
    v147 = 0u;
    v148 = 0u;
    goto LABEL_8;
  }

  v58 = v140;
  if (!*(&v148 + 1))
  {
LABEL_9:
    sub_1D4E50004(&v147, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v147, v150);
  __swift_project_boxed_opaque_existential_1(v150, v151);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v59 = KeyPath;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v58);
    v60 = v119;
    sub_1D4F1583C(v59, v119, type metadata accessor for EditorialItemPropertyProvider);
    OUTLINED_FUNCTION_34_9();
    sub_1D4F1589C(v60, v39, v61);
    v62 = v120;
    sub_1D560D718();
    (*(v142 + 40))(&v39[v58[15]], v62, v143);
    v63 = v121;
    sub_1D5612468();
    (*(v122 + 40))(&v39[v58[16]], v63, v23);
    v64 = sub_1D5612458();
    v66 = v65;
    OUTLINED_FUNCTION_30_5();
    sub_1D4F158FC(v60, v67);
    v68 = &v39[v58[17]];

    *v68 = v64;
    v68[1] = v66;
    __swift_destroy_boxed_opaque_existential_1(v150);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v58);
  sub_1D4E50004(v59, &qword_1EC7EB3C0, &qword_1D561E128);
  __swift_destroy_boxed_opaque_existential_1(v150);
LABEL_10:
  v69 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
  type metadata accessor for EditorialElementLink(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3C8, &unk_1D5631030);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v69);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
  (*(v142 + 16))(&v39[v58[15]], v145, v143);
  sub_1D5612468();
  v88 = sub_1D5612458();
  KeyPath = v89;
  sub_1D5614A88();
  v90 = OUTLINED_FUNCTION_40_10();
  v91 = OUTLINED_FUNCTION_40_10();
  v92 = OUTLINED_FUNCTION_40_10();
  v93 = OUTLINED_FUNCTION_40_10();
  *v39 = 0;
  *(v39 + 1) = 0;
  *&v39[v58[7]] = 0;
  *&v39[v58[10]] = 0;
  *&v39[v58[13]] = 0;
  if (qword_1EDD54DE8 != -1)
  {
    swift_once();
  }

  v94 = qword_1EDD76B60;
  if (qword_1EDD76B60 >> 62)
  {
    sub_1D560CDE8();

    v118 = sub_1D5615E18();

    v94 = v118;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v39[v58[14]] = v94;
  v95 = &v39[v58[17]];
  v96 = KeyPath;
  *v95 = v88;
  v95[1] = v96;
  *&v39[v58[18]] = v90;
  *&v39[v58[19]] = v91;
  *&v39[v58[20]] = v92;
  *&v39[v58[21]] = v93;
LABEL_15:
  KeyPath = swift_getKeyPath();
  v97 = v131;
  v98 = *(v131 + 104);
  v99 = v128;
  v100 = v129;
  v98(v128, *MEMORY[0x1E6976F98], v129);
  v101 = v130;
  v98(v130, *MEMORY[0x1E6976FA0], v100);
  v102 = v132;
  v98(v132, *MEMORY[0x1E6976FA8], v100);
  __swift_storeEnumTagSinglePayload(v102, 0, 1, v100);
  v103 = v133;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v100);
  v107 = v134;
  sub_1D5614BE8();

  sub_1D4E50004(v103, &qword_1EC7EB3B8, &qword_1D561E120);
  sub_1D4E50004(v102, &qword_1EC7EB3B8, &qword_1D561E120);
  v108 = *(v97 + 8);
  v108(v101, v100);
  v108(v99, v100);
  (*(v136 + 104))(v135, *MEMORY[0x1E6976670], v137);
  v109 = sub_1D4F15A28(&qword_1EDD54DD8, type metadata accessor for EditorialItemPropertyProvider, &unk_1D5678498);
  sub_1D5610DB8();

  v110 = OUTLINED_FUNCTION_215();
  v111(v110);
  sub_1D4E50004(v107, &qword_1EC7EAC98, &unk_1D561DA80);
  v151 = v140;
  v152 = v109;
  __swift_allocate_boxed_opaque_existential_0(v150);
  OUTLINED_FUNCTION_34_9();
  sub_1D4F1589C(v39, v112, v113);
  EditorialItem.init(propertyProvider:)(v150, v138);
  swift_unknownObjectRelease();
  sub_1D4E50004(v144, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v142 + 8))(v145, v143);
  (*(v126 + 8))(v141, v127);
  OUTLINED_FUNCTION_30_5();
  sub_1D4F158FC(v39, v114);
  OUTLINED_FUNCTION_46();
}

void EditorialItem.convertToLegacyModelStorageDictionary(for:)()
{
  OUTLINED_FUNCTION_47();
  v81 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v68 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v68 - v7;
  v9 = sub_1D5614118();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v72 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v80 = v68 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v68 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v68 - v20;
  OUTLINED_FUNCTION_27_5();
  v74 = sub_1D4F15A28(v22, v23, MEMORY[0x1E6976FD0]);
  v24 = sub_1D5614BD8();
  v25 = *(v11 + 104);
  v25(v21, *MEMORY[0x1E6976F90], v9);
  v70 = objc_opt_self();
  v26 = [v70 rawValueForKind_];
  OUTLINED_FUNCTION_71_3(v26, MEMORY[0x1E69E6530]);
  swift_isUniquelyReferenced_nonNull_native();
  v82 = v24;
  sub_1D4F137BC();
  v27 = v82;
  v75 = v11;
  v28 = *(v11 + 8);
  v73 = v21;
  v79 = v28;
  v28(v21, v9);
  v29 = *MEMORY[0x1E6976FA8];
  v71 = v25;
  v68[1] = v11 + 104;
  v25(v19, v29, v9);
  if (qword_1EDD54000 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDD768E8;
  v31 = sub_1D5610978();
  v32 = sub_1D4F15A28(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  v33 = sub_1D4F15A28(&qword_1EC7EB3D0, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  v77 = v32;
  v78 = v30;
  v76 = v33;
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v8);
  if (v34)
  {
    sub_1D4E50004(v8, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610938();
    v36 = v35;
    OUTLINED_FUNCTION_24_0();
    (*(v37 + 8))(v8, v31);
    if (v36)
    {
      OUTLINED_FUNCTION_57_8(MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_22_8();
      sub_1D4F137BC();
      v27 = v82;
      v38 = v79;
      v79(v19, v9);
      goto LABEL_12;
    }
  }

  sub_1D4F0E0D0();
  if (v40)
  {
    v41 = v39;
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v27;
    v27 = *(v27 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
    sub_1D5615D78();
    OUTLINED_FUNCTION_47_7();
    v44 = v79;
    v79((v42 + v43 * v41), v9);
    sub_1D4E519A8((*(v27 + 56) + 32 * v41), &v84);
    OUTLINED_FUNCTION_67_5();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
    v44 = v79;
  }

  v44(v19, v9);
  sub_1D4E50004(&v84, &qword_1EC7E9F98, &qword_1D561C420);
  v38 = v44;
LABEL_12:
  v45 = v71;
  v71(v80, *MEMORY[0x1E6976F98], v9);
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v6);
  if (v34)
  {
    sub_1D4E50004(v6, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610948();
    v47 = v46;
    OUTLINED_FUNCTION_24_0();
    (*(v48 + 8))(v6, v31);
    if (v47)
    {
      OUTLINED_FUNCTION_57_8(MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_22_8();
      v49 = v80;
      sub_1D4F137BC();
      v27 = v82;
      v38(v49, v9);
      v50 = v72;
      v51 = v69;
      goto LABEL_21;
    }
  }

  sub_1D4F0E0D0();
  if (v53)
  {
    v54 = v52;
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
    sub_1D5615D78();
    OUTLINED_FUNCTION_47_7();
    v57 = v79;
    v79((v55 + v56 * v54), v9);
    sub_1D4E519A8((*(v27 + 56) + 32 * v54), &v84);
    OUTLINED_FUNCTION_67_5();
    v50 = v72;
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
    v50 = v72;
    v57 = v79;
  }

  v51 = v69;
  v57(v80, v9);
  sub_1D4E50004(&v84, &qword_1EC7E9F98, &qword_1D561C420);
  v38 = v57;
LABEL_21:
  v45(v50, *MEMORY[0x1E6976FA0], v9);
  sub_1D560EC28();
  OUTLINED_FUNCTION_74(v51);
  if (v34)
  {
    sub_1D4E50004(v51, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610968();
    v59 = v58;
    OUTLINED_FUNCTION_24_0();
    (*(v60 + 8))();
    if (v59)
    {
      OUTLINED_FUNCTION_57_8(MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_22_8();
      sub_1D4F137BC();
      v38(v50, v9);
      goto LABEL_30;
    }
  }

  sub_1D4F0E0D0();
  if (v62)
  {
    v63 = v61;
    swift_isUniquelyReferenced_nonNull_native();
    v83 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
    v38 = v79;
    sub_1D5615D78();
    OUTLINED_FUNCTION_47_7();
    v38((v64 + v65 * v63), v9);
    sub_1D4E519A8((*(v27 + 56) + 32 * v63), &v84);
    sub_1D5615D98();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v38(v50, v9);
  sub_1D4E50004(&v84, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_30:
  v66 = v73;
  v45(v73, *MEMORY[0x1E6976FB8], v9);
  v67 = [v70 rawValueForSubKind_];
  OUTLINED_FUNCTION_71_3(v67, MEMORY[0x1E69E6530]);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_8();
  sub_1D4F137BC();
  v38(v66, v9);
  OUTLINED_FUNCTION_46();
}

uint64_t EditorialItem.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767C8];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D4F0DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F15A28(&qword_1EC7EB428, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4F0DC98(uint64_t a1, uint64_t a2)
{
  sub_1D4F15A28(&qword_1EC7EB420, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);

  return sub_1D56132F8();
}

void sub_1D4F0DD20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  sub_1D5616328();
  OUTLINED_FUNCTION_61();
  sub_1D4F10E88();
}

uint64_t sub_1D4F0DE0C(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_61_12();
  a2(v8);
  v5 = sub_1D5616328();

  return a3(a1, v5);
}

unint64_t sub_1D4F0DE84()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D5613838();
  v0 = sub_1D4F15A28(&qword_1EC7EB458, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BF8]);
  OUTLINED_FUNCTION_72_7(v0, v1);
  type metadata accessor for MusicSuggestedSongsEntry(0);
  sub_1D5614E28();
  sub_1D5616328();
  v2 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F1059C(v2, v3);
}

unint64_t sub_1D4F0DF30()
{
  v0 = OUTLINED_FUNCTION_51_8();
  sub_1D5473B34(v0, v1);
  v2 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F10748(v2, v3);
}

unint64_t sub_1D4F0DF68()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D5614E28();
  type metadata accessor for MusicItemCache.Key(0);
  sub_1D560D9A8();
  sub_1D4F15A28(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
  sub_1D5614CB8();
  sub_1D5616328();
  v0 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F10B58(v0, v1);
}

void sub_1D4F0E020()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D560C368();
  v0 = sub_1D4F15A28(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v1 = OUTLINED_FUNCTION_49_3(v0);
  OUTLINED_FUNCTION_41_11(v1, v1, MEMORY[0x1E69695A8], &unk_1EDD5EFF8);
}

void sub_1D4F0E0D0()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5614118();
  v0 = sub_1D4F15A28(&qword_1EDD5D238, MEMORY[0x1E6976FC8], MEMORY[0x1E6976FD0]);
  v1 = OUTLINED_FUNCTION_49_3(v0);
  OUTLINED_FUNCTION_41_11(v1, v1, MEMORY[0x1E6976FC8], &unk_1EDD5D230);
}

uint64_t sub_1D4F0E180()
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  v0 = sub_1D5616328();
  return sub_1D4F11DC0(v0);
}

void sub_1D4F0E1E0()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5614438();
  v0 = sub_1D4F15A28(&qword_1EC7EB4D0, MEMORY[0x1E69771F8], MEMORY[0x1E6977200]);
  v1 = OUTLINED_FUNCTION_49_3(v0);
  OUTLINED_FUNCTION_41_11(v1, v1, MEMORY[0x1E69771F8], &unk_1EC7EB4D8);
}

unint64_t sub_1D4F0E290()
{
  OUTLINED_FUNCTION_24_13();
  _s8MusicKit0A7LibraryC0aB8InternalE4hash4intoys6HasherVz_tF_0();
  sub_1D5616328();
  v0 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F10F30(v0, v1);
}

void sub_1D4F0E2E8()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D560C0A8();
  v0 = sub_1D4F15A28(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v1 = OUTLINED_FUNCTION_49_3(v0);
  OUTLINED_FUNCTION_41_11(v1, v1, MEMORY[0x1E6968FB0], &qword_1EDD5CF90);
}

unint64_t sub_1D4F0E41C(uint64_t a1)
{
  v2 = sub_1D56162C8();

  return sub_1D4F11694(a1, v2);
}

void sub_1D4F0E460()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D56146E8();
  v0 = sub_1D4F15A28(&qword_1EDD52B80, MEMORY[0x1E6977290], MEMORY[0x1E6977298]);
  v1 = OUTLINED_FUNCTION_49_3(v0);
  OUTLINED_FUNCTION_41_11(v1, v1, MEMORY[0x1E6977290], &unk_1EDD52B78);
}

uint64_t sub_1D4F0E510()
{
  OUTLINED_FUNCTION_61_12();
  sub_1D5614E28();
  v0 = sub_1D5616328();
  return sub_1D4F11DC0(v0);
}

unint64_t sub_1D4F0E570()
{
  v0 = OUTLINED_FUNCTION_51_8();
  sub_1D5474468(v0, v1);
  v2 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F116F4(v2, v3);
}

unint64_t sub_1D4F0E5A8()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5615D68();
  v1 = sub_1D5614CA8();

  return sub_1D4F11C3C(v0, v1);
}

void sub_1D4F0E600()
{
  OUTLINED_FUNCTION_12_15();
  sub_1D5613598();
  v0 = sub_1D4F15A28(&qword_1EC7EB490, MEMORY[0x1E6976B10], MEMORY[0x1E6976B18]);
  v1 = OUTLINED_FUNCTION_49_3(v0);
  OUTLINED_FUNCTION_41_11(v1, v1, MEMORY[0x1E6976B10], &unk_1EC7EB498);
}

unint64_t sub_1D4F0E6B0()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D560C368();
  v0 = sub_1D4F15A28(&qword_1EDD5F560, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_72_7(v0, v1);
  type metadata accessor for MusicRestrictionsObserver.ObservationToken(0);
  sub_1D56162F8();
  sub_1D5616328();
  v2 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F11DEC(v2, v3);
}

unint64_t sub_1D4F0E758(uint64_t a1)
{
  sub_1D5614D68();
  sub_1D56162D8();
  sub_1D5614E28();
  v2 = sub_1D5616328();

  return sub_1D4F11F90(a1, v2);
}

unint64_t sub_1D4F0E870()
{
  v0 = OUTLINED_FUNCTION_51_8();
  sub_1D5473B1C(v0, v1);
  v2 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F126AC(v2, v3);
}

unint64_t sub_1D4F0E8A8(char a1)
{
  v3 = sub_1D5473B4C(*(v1 + 40));

  return sub_1D4F12C9C(a1 & 1, v3);
}

unint64_t sub_1D4F0E8EC()
{
  OUTLINED_FUNCTION_24_13();
  sub_1D4F0B2F8();
  sub_1D5616328();
  v0 = OUTLINED_FUNCTION_65_2();

  return sub_1D4F12DE4(v0, v1);
}

uint64_t sub_1D4F0E970(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_61_12();
  a2(v8, a1);
  v5 = sub_1D5616328();

  return a3(a1, v5);
}

unint64_t sub_1D4F0E9E8(uint64_t a1)
{
  v2 = sub_1D5615838();

  return sub_1D4F130DC(a1, v2);
}

unint64_t sub_1D4F0EA2C()
{
  v0 = OUTLINED_FUNCTION_51_8();
  sub_1D547407C(v0, v1);
  v2 = OUTLINED_FUNCTION_69_4();

  return sub_1D4F1319C(v2, v3);
}

unint64_t sub_1D4F0EA64(uint64_t *a1, uint64_t a2)
{
  v5 = _s13PersistedDateVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v24 - v11;
  v12 = _s10DescriptorVMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = -1 << *(v2 + 32);
  v17 = a2 & ~v16;
  if (((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return v17;
  }

  v26 = v7;
  v27 = v10;
  v30 = v5;
  v18 = ~v16;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(v13 + 72);
  while (1)
  {
    sub_1D4F1589C(*(v2 + 48) + v21 * v17, v15, _s10DescriptorVMa);
    v22 = *v15 == v19 && v15[1] == v20;
    if (!v22 && (sub_1D5616168() & 1) == 0 || (sub_1D560C2E8() & 1) == 0 || *(v15 + v12[6]) != *(a1 + v12[6]) || *(v15 + v12[7]) != *(a1 + v12[7]) || *(v15 + v12[8]) != *(a1 + v12[8]) || (sub_1D560C2E8() & 1) == 0)
    {
      goto LABEL_20;
    }

    v25 = v12[10];
    v29 = *(v28 + 48);
    sub_1D4E69910(v25 + v15, v31, &qword_1EC7EB470, &qword_1D561F3D0);
    sub_1D4E69910(v25 + a1, v31 + v29, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
    {
      break;
    }

    sub_1D4E69910(v31, v27, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v31 + v29, 1, v30) == 1)
    {
      sub_1D4F158FC(v27, _s13PersistedDateVMa);
      goto LABEL_18;
    }

    sub_1D4F1583C(v31 + v29, v26, _s13PersistedDateVMa);
    LODWORD(v29) = sub_1D560C2E8();
    v25 = _s13PersistedDateVMa;
    sub_1D4F158FC(v26, _s13PersistedDateVMa);
    sub_1D4F158FC(v27, v25);
    sub_1D4E50004(v31, &qword_1EC7EB470, &qword_1D561F3D0);
    if (v29)
    {
      goto LABEL_22;
    }

LABEL_20:
    sub_1D4F158FC(v15, _s10DescriptorVMa);
    v17 = (v17 + 1) & v18;
    if (((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return v17;
    }
  }

  if (__swift_getEnumTagSinglePayload(v31 + v29, 1, v30) != 1)
  {
LABEL_18:
    sub_1D4E50004(v31, &qword_1EC7EB478, &unk_1D5623530);
    goto LABEL_20;
  }

  sub_1D4E50004(v31, &qword_1EC7EB470, &qword_1D561F3D0);
LABEL_22:
  sub_1D4F158FC(v15, _s10DescriptorVMa);
  return v17;
}

unint64_t sub_1D4F0EEF8(char *a1, uint64_t a2)
{
  v5 = sub_1D560D9A8();
  v117 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v87 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v95 = &v87 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v100 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v87 - v25;
  v26 = sub_1D5610088();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v105 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v106 = &v87 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v90 = &v87 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v98 = &v87 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v89 = &v87 - v36;
  v114 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v114);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v2;
  v40 = -1 << *(v2 + 32);
  result = a2 & ~v40;
  v103 = v2 + 64;
  if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
    return result;
  }

  v87 = v8;
  v102 = ~v40;
  v42 = *a1;
  v115 = *(a1 + 1);
  v116 = a1;
  v111 = (v27 + 32);
  v112 = (v27 + 8);
  v108 = (v117 + 16);
  v43 = (v117 + 8);
  v104 = *(v37 + 72);
  v97 = v11;
  v44 = v114;
  v93 = v16;
  v101 = (v117 + 8);
  v96 = v42;
  v88 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v45 = *(v107 + 48);
    v117 = result;
    sub_1D4F1589C(v45 + v104 * result, v39, type metadata accessor for LooselyComparableTypedIdentifier);
    v46 = *v39 == v42 && *(v39 + 1) == v115;
    if (!v46 && (sub_1D5616168() & 1) == 0)
    {
      sub_1D4F158FC(v39, type metadata accessor for LooselyComparableTypedIdentifier);
      goto LABEL_45;
    }

    v110 = *(v44 + 24);
    v47 = v99;
    sub_1D4E69910(&v39[v110], v99, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v47, 1, v26) == 1)
    {
      sub_1D4E50004(v47, &qword_1EC7EA358, &unk_1D561DF50);
      v48 = &v39[*(v44 + 20)];
      v49 = v91;
      (*v108)(v91, v48, v5);
      sub_1D560D948();
      sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
      v50 = sub_1D5614D18();
      v51 = *v43;
      (*v43)(v16, v5);
      if (v50 & 1) != 0 || (sub_1D560D998(), v52 = sub_1D5614D18(), v51(v16, v5), (v52))
      {
        v51(v49, v5);
        v113 = 1;
      }

      else
      {
        sub_1D560D918();
        v113 = sub_1D5614D18();
        v51(v16, v5);
        v51(v49, v5);
      }

      v56 = v116;
      v39 = v88;
    }

    else
    {
      v53 = v89;
      (*v111)(v89, v47, v26);
      v54 = v98;
      sub_1D560FE78();
      sub_1D4F15A28(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
      v113 = sub_1D5614D18();
      v55 = *v112;
      v44 = v114;
      (*v112)(v54, v26);
      v55(v53, v26);
      v56 = v116;
    }

    v109 = *(v44 + 24);
    v57 = v100;
    sub_1D4E69910(&v56[v109], v100, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v57, 1, v26) == 1)
    {
      sub_1D4E50004(v57, &qword_1EC7EA358, &unk_1D561DF50);
      v58 = v92;
      (*v108)(v92, &v56[*(v44 + 20)], v5);
      sub_1D560D948();
      sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
      v59 = sub_1D5614D18();
      v60 = *v43;
      (*v43)(v16, v5);
      if (v59 & 1) != 0 || (sub_1D560D998(), v61 = sub_1D5614D18(), v60(v16, v5), (v61))
      {
        v60(v58, v5);
        v62 = 1;
      }

      else
      {
        sub_1D560D918();
        v62 = sub_1D5614D18();
        v60(v16, v5);
        v60(v58, v5);
      }
    }

    else
    {
      v63 = v90;
      (*v111)(v90, v57, v26);
      v64 = v98;
      sub_1D560FE78();
      sub_1D4F15A28(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
      v62 = sub_1D5614D18();
      v65 = *v112;
      (*v112)(v64, v26);
      v65(v63, v26);
      v43 = v101;
    }

    v66 = v97;
    if (v113)
    {
      v67 = v114;
      if ((v62 & 1) == 0)
      {
        (*v108)(v97, &v116[*(v114 + 20)], v5);
        sub_1D560D948();
        sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
        v68 = v66;
        v69 = sub_1D5614D18();
        v70 = v43;
        v71 = *v43;
        v71(v16, v5);
        if (v69 & 1) != 0 || (sub_1D560D998(), v72 = sub_1D5614D18(), v71(v16, v5), (v72))
        {
          v71(v68, v5);
          v67 = v114;
        }

        else
        {
          sub_1D560D918();
          v85 = sub_1D5614D18();
          v71(v16, v5);
          v71(v68, v5);
          v43 = v70;
          v67 = v114;
          if ((v85 & 1) == 0)
          {
            goto LABEL_43;
          }
        }
      }
    }

    else
    {
      v67 = v114;
      if ((v62 & 1) == 0)
      {
        goto LABEL_43;
      }

      v73 = v114;
      v74 = v87;
      (*v108)(v87, &v39[*(v114 + 20)], v5);
      sub_1D560D948();
      sub_1D4F15A28(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
      v75 = sub_1D5614D18();
      v76 = v43;
      v77 = *v43;
      v77(v16, v5);
      if (v75 & 1) != 0 || (sub_1D560D998(), v78 = sub_1D5614D18(), v77(v16, v5), (v78))
      {
        v77(v74, v5);
        v67 = v73;
      }

      else
      {
        sub_1D560D918();
        v86 = sub_1D5614D18();
        v77(v16, v5);
        v77(v74, v5);
        v43 = v76;
        v67 = v73;
        if ((v86 & 1) == 0)
        {
LABEL_43:
          v44 = v67;
          v83 = sub_1D560D8C8();
          goto LABEL_44;
        }
      }
    }

    v44 = v67;
    v79 = v95;
    sub_1D4E69910(&v39[v110], v95, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v79, 1, v26) == 1)
    {
      goto LABEL_48;
    }

    v80 = *v111;
    v81 = v106;
    (*v111)(v106, v79, v26);
    v79 = v94;
    sub_1D4E69910(&v116[v109], v94, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v79, 1, v26) == 1)
    {
      break;
    }

    v80(v105, v79, v26);
    sub_1D4F15A28(&qword_1EDD53348, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE8]);
    sub_1D56150C8();
    sub_1D56150C8();
    if (v120 == v118 && v121 == v119)
    {
      v83 = 1;
    }

    else
    {
      v83 = sub_1D5616168();
    }

    v84 = *v112;
    (*v112)(v105, v26);
    v84(v106, v26);

    v16 = v93;
    v43 = v101;
LABEL_44:
    sub_1D4F158FC(v39, type metadata accessor for LooselyComparableTypedIdentifier);
    v42 = v96;
    if (v83)
    {
      return v117;
    }

LABEL_45:
    result = (v117 + 1) & v102;
    if (((*(v103 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      return result;
    }
  }

  (*v112)(v81, v26);
LABEL_48:
  sub_1D4E50004(v79, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4F158FC(v39, type metadata accessor for LooselyComparableTypedIdentifier);
  return v117;
}

unint64_t sub_1D4F0FE08(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v58 = sub_1D5614408();
  v4 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D5614898();
  v6 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D5613AF8();
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicSuggestedPivotContainer(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB410, &qword_1D5643790);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for MusicSuggestedPivotEntry(0) - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v2 + 64;
  v65 = v2;
  v24 = -1 << *(v2 + 32);
  v25 = a2 & ~v24;
  if ((*(v2 + 64 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v62 = ~v24;
    v54 = (v4 + 8);
    v55 = v16;
    v63 = *(v21 + 72);
    v48 = (v6 + 32);
    v49 = (v4 + 32);
    v52 = (v60 + 8);
    v53 = (v6 + 8);
    v46 = (v60 + 32);
    v59 = v17;
    v60 = v14;
    do
    {
      sub_1D4F1589C(*(v65 + 48) + v63 * v25, v23, type metadata accessor for MusicSuggestedPivotEntry);
      v26 = *(v17 + 48);
      sub_1D4F1589C(v23, v19, type metadata accessor for MusicSuggestedPivotContainer);
      sub_1D4F1589C(v66, &v19[v26], type metadata accessor for MusicSuggestedPivotContainer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D4F1589C(v19, v14, type metadata accessor for MusicSuggestedPivotContainer);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_1D4F158FC(v23, type metadata accessor for MusicSuggestedPivotEntry);
            (*v53)(v14, v57);
            goto LABEL_15;
          }

          v28 = v50;
          v29 = v57;
          (*v48)(v50, &v19[v26], v57);
          v30 = _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
          v31 = *v53;
          v32 = v28;
          v14 = v60;
          (*v53)(v32, v29);
          sub_1D4F158FC(v23, type metadata accessor for MusicSuggestedPivotEntry);
          v33 = v14;
        }

        else
        {
          sub_1D4F1589C(v19, v61, type metadata accessor for MusicSuggestedPivotContainer);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_1D4F158FC(v23, type metadata accessor for MusicSuggestedPivotEntry);
            (*v54)(v61, v58);
            goto LABEL_15;
          }

          v35 = v61;
          v36 = v9;
          v37 = v51;
          v29 = v58;
          (*v49)(v51, &v19[v26], v58);
          v30 = sub_1D5614368();
          v31 = *v54;
          v38 = v37;
          v9 = v36;
          v14 = v60;
          (*v54)(v38, v29);
          sub_1D4F158FC(v23, type metadata accessor for MusicSuggestedPivotEntry);
          v33 = v35;
        }

        v31(v33, v29);
        if (v30)
        {
          sub_1D4F158FC(v19, type metadata accessor for MusicSuggestedPivotContainer);
          return v25;
        }

        sub_1D4F158FC(v19, type metadata accessor for MusicSuggestedPivotContainer);
        v17 = v59;
      }

      else
      {
        v34 = v55;
        sub_1D4F1589C(v19, v55, type metadata accessor for MusicSuggestedPivotContainer);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D4F158FC(v23, type metadata accessor for MusicSuggestedPivotEntry);
          (*v52)(v34, v56);
LABEL_15:
          sub_1D4E50004(v19, &qword_1EC7EB410, &qword_1D5643790);
          goto LABEL_16;
        }

        v39 = v47;
        v40 = v56;
        (*v46)(v47, &v19[v26], v56);
        v41 = sub_1D5613A68();
        v42 = *v52;
        v43 = v39;
        v14 = v60;
        (*v52)(v43, v40);
        sub_1D4F158FC(v23, type metadata accessor for MusicSuggestedPivotEntry);
        v44 = v40;
        v17 = v59;
        v42(v34, v44);
        sub_1D4F158FC(v19, type metadata accessor for MusicSuggestedPivotContainer);
        if (v41)
        {
          return v25;
        }
      }

LABEL_16:
      v25 = (v25 + 1) & v62;
    }

    while (((*(v64 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
  }

  return v25;
}

unint64_t sub_1D4F1059C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicSuggestedSongsEntry(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_1D4F1589C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MusicSuggestedSongsEntry);
      if (sub_1D56137A8())
      {
        v13 = *(v5 + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D4F158FC(v8, type metadata accessor for MusicSuggestedSongsEntry);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_1D4F158FC(v8, type metadata accessor for MusicSuggestedSongsEntry);
  }

  return v10;
}

unint64_t sub_1D4F10748(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001ELL;
      v8 = "dEntityChangeRequest";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000025;
          v8 = "MPModelPropertyTVSeasonArtwork";
          break;
        case 2:
          v7 = 0xD000000000000024;
          v8 = "VSeasonDownloadedDate";
          break;
        case 3:
          v7 = 0xD000000000000026;
          v8 = "VSeasonEpisodesCount";
          break;
        case 4:
          v7 = 0xD000000000000029;
          v8 = "VSeasonHasCleanContent";
          break;
        case 5:
          v7 = 0xD000000000000023;
          v8 = "VSeasonHasExplicitContent";
          break;
        case 6:
          v7 = 0xD000000000000029;
          v8 = "VSeasonLibraryAdded";
          break;
        case 7:
          v7 = 0xD000000000000027;
          v8 = "VSeasonLibraryAddEligible";
          break;
        case 8:
          v7 = 0xD00000000000001DLL;
          v8 = "VSeasonLibraryAddedDate";
          break;
        case 9:
          v7 = 0xD00000000000001FLL;
          v8 = "MPModelPropertyTVSeasonNumber";
          break;
        case 0xA:
          v7 = 0xD000000000000026;
          v8 = "MPModelPropertyTVSeasonSortType";
          break;
        case 0xB:
          v7 = 0xD00000000000001BLL;
          v8 = "VSeasonDescriptionText";
          break;
        case 0xC:
          v7 = 0xD000000000000030;
          v8 = "MPModelPropertyTVSeasonYear";
          break;
        case 0xD:
          v7 = 0xD00000000000001FLL;
          v8 = "sentativeEpisode";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001ELL;
      v11 = "dEntityChangeRequest";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000025;
          v11 = "MPModelPropertyTVSeasonArtwork";
          break;
        case 2:
          v10 = 0xD000000000000024;
          v11 = "VSeasonDownloadedDate";
          break;
        case 3:
          v10 = 0xD000000000000026;
          v11 = "VSeasonEpisodesCount";
          break;
        case 4:
          v10 = 0xD000000000000029;
          v11 = "VSeasonHasCleanContent";
          break;
        case 5:
          v10 = 0xD000000000000023;
          v11 = "VSeasonHasExplicitContent";
          break;
        case 6:
          v10 = 0xD000000000000029;
          v11 = "VSeasonLibraryAdded";
          break;
        case 7:
          v10 = 0xD000000000000027;
          v11 = "VSeasonLibraryAddEligible";
          break;
        case 8:
          v10 = 0xD00000000000001DLL;
          v11 = "VSeasonLibraryAddedDate";
          break;
        case 9:
          v10 = 0xD00000000000001FLL;
          v11 = "MPModelPropertyTVSeasonNumber";
          break;
        case 10:
          v10 = 0xD000000000000026;
          v11 = "MPModelPropertyTVSeasonSortType";
          break;
        case 11:
          v10 = 0xD00000000000001BLL;
          v11 = "VSeasonDescriptionText";
          break;
        case 12:
          v10 = 0xD000000000000030;
          v11 = "MPModelPropertyTVSeasonYear";
          break;
        case 13:
          v10 = 0xD00000000000001FLL;
          v11 = "sentativeEpisode";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F10B58(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D4F1589C(*(v2 + 48) + v14 * v10, v8, type metadata accessor for MusicItemCache.Key);
      v15 = *v8 == v12 && v8[1] == v13;
      if (v15 || (sub_1D5616168()) && (sub_1D560D8C8())
      {
        break;
      }

      sub_1D4F158FC(v8, type metadata accessor for MusicItemCache.Key);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    sub_1D4F158FC(v8, type metadata accessor for MusicItemCache.Key);
  }

  return v10;
}

void sub_1D4F10D0C()
{
  OUTLINED_FUNCTION_47();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_1D4F15A28(v19, v20, v21);
    v16 = sub_1D5614D18();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F10E88()
{
  OUTLINED_FUNCTION_191();
  v2 = v1;
  v4 = v3;
  v5 = ~(-1 << *(v0 + 32));
  for (i = v6 & v5; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v8 = (*(v0 + 48) + 16 * i);
    if (*v8 == v4 && v8[1] == v2)
    {
      break;
    }

    OUTLINED_FUNCTION_64_5();
    if (sub_1D5616168())
    {
      break;
    }
  }

  OUTLINED_FUNCTION_190();
}

unint64_t sub_1D4F10F30(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {

    v5 = sub_1D560F0B8();

    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4F10FE8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000022;
      v8 = "supports_smart_transitions";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000021;
          v8 = "ocialPersonArtwork";
          break;
        case 2:
          v7 = 0xD000000000000030;
          v8 = "ocialPersonHandle";
          break;
        case 3:
          v7 = 0xD000000000000024;
          v8 = "ghtweightProfile";
          break;
        case 4:
          v7 = 0xD000000000000025;
          v8 = "ocialPersonIsPrivate";
          break;
        case 5:
          v7 = 0xD000000000000019;
          v8 = "ocialPersonIsVerified";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000022;
      v11 = "supports_smart_transitions";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000021;
          v11 = "ocialPersonArtwork";
          break;
        case 2:
          v10 = 0xD000000000000030;
          v11 = "ocialPersonHandle";
          break;
        case 3:
          v10 = 0xD000000000000024;
          v11 = "ghtweightProfile";
          break;
        case 4:
          v10 = 0xD000000000000025;
          v11 = "ocialPersonIsPrivate";
          break;
        case 5:
          v10 = 0xD000000000000019;
          v11 = "ocialPersonIsVerified";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F1120C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = "MPModelPropertyPersonName";
      v8 = 0xD00000000000001CLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000025;
          v7 = "MPModelPropertyTVShowArtwork";
          break;
        case 2:
          v8 = 0xD000000000000020;
          v7 = "VShowEditorialArtwork";
          break;
        case 3:
          v8 = 0xD000000000000021;
          v7 = "VShowEditorNotes";
          break;
        case 4:
          v8 = 0xD000000000000025;
          v7 = "VShowEpisodeCount";
          break;
        case 5:
          v8 = 0xD00000000000001FLL;
          v7 = "VShowShortEditorNotes";
          break;
        case 6:
          v7 = "MPModelPropertyTVShowShortTitle";
          break;
        case 7:
          v8 = 0xD00000000000001ALL;
          v7 = "MPModelPropertyTVShowTagline";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD00000000000001CLL;
      v11 = "MPModelPropertyPersonName";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000025;
          v11 = "MPModelPropertyTVShowArtwork";
          break;
        case 2:
          v10 = 0xD000000000000020;
          v11 = "VShowEditorialArtwork";
          break;
        case 3:
          v10 = 0xD000000000000021;
          v11 = "VShowEditorNotes";
          break;
        case 4:
          v10 = 0xD000000000000025;
          v11 = "VShowEpisodeCount";
          break;
        case 5:
          v10 = 0xD00000000000001FLL;
          v11 = "VShowShortEditorNotes";
          break;
        case 6:
          v11 = "MPModelPropertyTVShowShortTitle";
          break;
        case 7:
          v10 = 0xD00000000000001ALL;
          v11 = "MPModelPropertyTVShowTagline";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F11470(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000002FLL;
      v8 = "previewed";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000029;
          v8 = "laylistCollaborationSharingMode";
          break;
        case 2:
          v7 = 0xD000000000000026;
          v8 = "laylistCollaboratorStatus";
          break;
        case 3:
          v7 = 0xD000000000000031;
          v8 = "laylistIsCollaborative";
          break;
        case 4:
          v7 = 0xD00000000000003FLL;
          v8 = "tionInvitationURL";
          break;
        case 5:
          v7 = 0xD000000000000022;
          v8 = "tionInvitationURLExpirationDate";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000002FLL;
      v11 = "previewed";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000029;
          v11 = "laylistCollaborationSharingMode";
          break;
        case 2:
          v10 = 0xD000000000000026;
          v11 = "laylistCollaboratorStatus";
          break;
        case 3:
          v10 = 0xD000000000000031;
          v11 = "laylistIsCollaborative";
          break;
        case 4:
          v10 = 0xD00000000000003FLL;
          v11 = "tionInvitationURL";
          break;
        case 5:
          v10 = 0xD000000000000022;
          v11 = "tionInvitationURLExpirationDate";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F11694(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1D4F116F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001BLL;
      v8 = "library-playlists";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyMovieArtwork";
          break;
        case 2:
          v7 = 0xD00000000000001CLL;
          v8 = "ovieDownloadedDate";
          break;
        case 3:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyMovieDuration";
          break;
        case 4:
          v7 = 0xD000000000000026;
          v8 = "ovieExplicitRating";
          break;
        case 5:
          v7 = 0xD000000000000020;
          v8 = "ovieHasCloudSyncSource";
          break;
        case 6:
          v7 = 0xD000000000000026;
          v8 = "ovieLibraryAdded";
          break;
        case 7:
          v7 = 0xD000000000000028;
          v8 = "ovieLibraryAddEligible";
          break;
        case 8:
          v7 = 0xD00000000000002ALL;
          v8 = "ovieKeepLocalEnableState";
          break;
        case 9:
          v7 = 0xD000000000000030;
          v8 = "ovieKeepLocalManagedStatus";
          break;
        case 0xA:
          v7 = 0xD00000000000002ALL;
          v8 = "agedStatusReason";
          break;
        case 0xB:
          v7 = 0xD000000000000024;
          v8 = "ovieLastDevicePlaybackDate";
          break;
        case 0xC:
          v7 = 0xD000000000000022;
          v8 = "ovieLibraryAddedDate";
          break;
        case 0xD:
          v7 = 0xD00000000000001FLL;
          v8 = "ovieInfoDictionary";
          break;
        case 0xE:
          v7 = 0xD000000000000023;
          v8 = "MPModelPropertyMovieReleaseDate";
          break;
        case 0xF:
          v7 = 0xD00000000000001BLL;
          v8 = "ovieDescriptionText";
          break;
        case 0x10:
          v7 = 0xD000000000000019;
          v8 = "MPModelPropertyMovieTagline";
          break;
        case 0x11:
          v7 = 0xD000000000000022;
          v8 = "MPModelPropertyMovieTitle";
          break;
        case 0x12:
          v7 = 0xD00000000000001DLL;
          v8 = "hipMovieStoreAsset";
          break;
        case 0x13:
          v7 = 0xD000000000000026;
          v8 = "MPModelRelationshipMovieClips";
          break;
        case 0x14:
          v7 = 0xD000000000000028;
          v8 = "hipMovieLocalFileAsset";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001BLL;
      v11 = "library-playlists";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyMovieArtwork";
          break;
        case 2:
          v10 = 0xD00000000000001CLL;
          v11 = "ovieDownloadedDate";
          break;
        case 3:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyMovieDuration";
          break;
        case 4:
          v10 = 0xD000000000000026;
          v11 = "ovieExplicitRating";
          break;
        case 5:
          v10 = 0xD000000000000020;
          v11 = "ovieHasCloudSyncSource";
          break;
        case 6:
          v10 = 0xD000000000000026;
          v11 = "ovieLibraryAdded";
          break;
        case 7:
          v10 = 0xD000000000000028;
          v11 = "ovieLibraryAddEligible";
          break;
        case 8:
          v10 = 0xD00000000000002ALL;
          v11 = "ovieKeepLocalEnableState";
          break;
        case 9:
          v10 = 0xD000000000000030;
          v11 = "ovieKeepLocalManagedStatus";
          break;
        case 10:
          v10 = 0xD00000000000002ALL;
          v11 = "agedStatusReason";
          break;
        case 11:
          v10 = 0xD000000000000024;
          v11 = "ovieLastDevicePlaybackDate";
          break;
        case 12:
          v10 = 0xD000000000000022;
          v11 = "ovieLibraryAddedDate";
          break;
        case 13:
          v10 = 0xD00000000000001FLL;
          v11 = "ovieInfoDictionary";
          break;
        case 14:
          v10 = 0xD000000000000023;
          v11 = "MPModelPropertyMovieReleaseDate";
          break;
        case 15:
          v10 = 0xD00000000000001BLL;
          v11 = "ovieDescriptionText";
          break;
        case 16:
          v10 = 0xD000000000000019;
          v11 = "MPModelPropertyMovieTagline";
          break;
        case 17:
          v10 = 0xD000000000000022;
          v11 = "MPModelPropertyMovieTitle";
          break;
        case 18:
          v10 = 0xD00000000000001DLL;
          v11 = "hipMovieStoreAsset";
          break;
        case 19:
          v10 = 0xD000000000000026;
          v11 = "MPModelRelationshipMovieClips";
          break;
        case 20:
          v10 = 0xD000000000000028;
          v11 = "hipMovieLocalFileAsset";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F11C3C(uint64_t a1, uint64_t a2)
{
  v12[1] = a1;
  v4 = sub_1D5615D68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2;
  v14 = v2 + 64;
  v8 = ~(-1 << *(v2 + 32));
  for (i = a2 & v8; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    (*(v5 + 16))(v7, *(v13 + 48) + *(v5 + 72) * i, v4);
    v10 = sub_1D5614D18();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4F11DEC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicRestrictionsObserver.ObservationToken(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1D4F1589C(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
      if (sub_1D560C348())
      {
        v13 = v8[*(v5 + 20)];
        sub_1D4F158FC(v8, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_1D4F158FC(v8, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D4F11F90(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1D5614D68();
    v7 = v6;
    if (v5 == sub_1D5614D68() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1D5616168();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1D4F12088(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = "AL";
      v8 = 0xD00000000000002ELL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000021;
          v7 = "laylistAuthorIsPendingApproval";
          break;
        case 2:
          v8 = 0xD000000000000029;
          v7 = "laylistAuthorRole";
          break;
        case 3:
          v7 = "hipPlaylistAuthorPlaylist";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD00000000000002ELL;
      v11 = "AL";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000021;
          v11 = "laylistAuthorIsPendingApproval";
          break;
        case 2:
          v10 = 0xD000000000000029;
          v11 = "laylistAuthorRole";
          break;
        case 3:
          v11 = "hipPlaylistAuthorPlaylist";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F12250(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = "sdVideoWithPlusAudio";
      v8 = 0xD000000000000028;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = "laylistEntryReactionDate";
          break;
        case 2:
          v8 = 0xD000000000000035;
          v7 = "laylistEntryReactionText";
          break;
        case 3:
          v8 = 0xD000000000000035;
          v7 = "ReactionPlaylistEntry";
          break;
        default:
          break;
      }

      v9 = v7 | 0x8000000000000000;
      v10 = 0xD000000000000028;
      v11 = "sdVideoWithPlusAudio";
      switch(a1)
      {
        case 1:
          v11 = "laylistEntryReactionDate";
          break;
        case 2:
          v10 = 0xD000000000000035;
          v11 = "laylistEntryReactionText";
          break;
        case 3:
          v10 = 0xD000000000000035;
          v11 = "ReactionPlaylistEntry";
          break;
        default:
          break;
      }

      if (v8 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F12434(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD000000000000026;
      v8 = "viewers-also-bought";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD000000000000021;
          v8 = "ibraryPinDefaultAction";
          break;
        case 2:
          v7 = 0xD000000000000023;
          v8 = "ibraryPinPosition";
          break;
        case 3:
          v7 = 0xD000000000000025;
          v8 = "ibraryPinEntityType";
          break;
        case 4:
          v7 = 0xD000000000000022;
          v8 = "ibraryPinPositionUUID";
          break;
        case 5:
          v7 = 0xD000000000000023;
          v8 = "hipLibraryPinAlbum";
          break;
        case 6:
          v7 = 0xD000000000000025;
          v8 = "hipLibraryPinArtist";
          break;
        case 7:
          v7 = 0xD000000000000021;
          v8 = "hipLibraryPinPlaylist";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000026;
      v11 = "viewers-also-bought";
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000021;
          v11 = "ibraryPinDefaultAction";
          break;
        case 2:
          v10 = 0xD000000000000023;
          v11 = "ibraryPinPosition";
          break;
        case 3:
          v10 = 0xD000000000000025;
          v11 = "ibraryPinEntityType";
          break;
        case 4:
          v10 = 0xD000000000000022;
          v11 = "ibraryPinPositionUUID";
          break;
        case 5:
          v10 = 0xD000000000000023;
          v11 = "hipLibraryPinAlbum";
          break;
        case 6:
          v10 = 0xD000000000000025;
          v11 = "hipLibraryPinArtist";
          break;
        case 7:
          v10 = 0xD000000000000021;
          v11 = "hipLibraryPinPlaylist";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F126AC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000001FLL;
      v8 = "hipLibraryPinSong";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = "MPModelPropertyTVEpisodeArtwork";
          v7 = 0xD000000000000020;
          break;
        case 2:
          v7 = 0xD000000000000027;
          v8 = "VEpisodeDuration";
          break;
        case 3:
          v7 = 0xD000000000000026;
          v8 = "VEpisodeTypeDisplayName";
          break;
        case 4:
          v7 = 0xD000000000000026;
          v8 = "VEpisodeDownloadedDate";
          break;
        case 5:
          v7 = 0xD00000000000002ALL;
          v8 = "VEpisodeExplicitRating";
          break;
        case 6:
          v7 = 0xD000000000000024;
          v8 = "VEpisodeHasCloudSyncSource";
          break;
        case 7:
          v7 = 0xD00000000000002ALL;
          v8 = "VEpisodeLibraryAdded";
          break;
        case 8:
          v7 = 0xD000000000000021;
          v8 = "VEpisodeLibraryAddEligible";
          break;
        case 9:
          v7 = 0xD00000000000002CLL;
          v8 = "VEpisodeMusicShow";
          break;
        case 0xA:
          v7 = 0xD00000000000002ELL;
          v8 = "VEpisodeKeepLocalEnableState";
          break;
        case 0xB:
          v7 = 0xD000000000000034;
          v8 = "VEpisodeKeepLocalManagedStatus";
          break;
        case 0xC:
          v7 = 0xD00000000000002ELL;
          v8 = "lManagedStatusReason";
          break;
        case 0xD:
          v7 = 0xD000000000000028;
          v8 = "VEpisodeLastDevicePlaybackDate";
          break;
        case 0xE:
          v7 = 0xD00000000000001ELL;
          v8 = "VEpisodeLibraryAddedDate";
          break;
        case 0xF:
          v7 = 0xD000000000000023;
          v8 = "MPModelPropertyTVEpisodeNumber";
          break;
        case 0x10:
          v7 = 0xD000000000000027;
          v8 = "VEpisodeReleaseDate";
          break;
        case 0x11:
          v7 = 0xD00000000000001DLL;
          v8 = "VEpisodeDescriptionText";
          break;
        case 0x12:
          v7 = 0xD00000000000001CLL;
          v8 = "MPModelPropertyTVEpisodeTitle";
          break;
        case 0x13:
          v7 = 0xD000000000000026;
          v8 = "MPModelPropertyTVEpisodeType";
          break;
        case 0x14:
          v7 = 0xD00000000000002ALL;
          v8 = "hipTVEpisodeStoreAsset";
          break;
        case 0x15:
          v7 = 0xD00000000000002CLL;
          v8 = "hipTVEpisodeLocalFileAsset";
          break;
        case 0x16:
          v7 = 0xD000000000000022;
          v8 = "hipTVEpisodePlaybackPosition";
          break;
        case 0x17:
          v7 = 0xD000000000000020;
          v8 = "hipTVEpisodeSeason";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000001FLL;
      v11 = "hipLibraryPinSong";
      switch(a1)
      {
        case 1:
          v11 = "MPModelPropertyTVEpisodeArtwork";
          v10 = 0xD000000000000020;
          break;
        case 2:
          v10 = 0xD000000000000027;
          v11 = "VEpisodeDuration";
          break;
        case 3:
          v10 = 0xD000000000000026;
          v11 = "VEpisodeTypeDisplayName";
          break;
        case 4:
          v10 = 0xD000000000000026;
          v11 = "VEpisodeDownloadedDate";
          break;
        case 5:
          v10 = 0xD00000000000002ALL;
          v11 = "VEpisodeExplicitRating";
          break;
        case 6:
          v10 = 0xD000000000000024;
          v11 = "VEpisodeHasCloudSyncSource";
          break;
        case 7:
          v10 = 0xD00000000000002ALL;
          v11 = "VEpisodeLibraryAdded";
          break;
        case 8:
          v10 = 0xD000000000000021;
          v11 = "VEpisodeLibraryAddEligible";
          break;
        case 9:
          v10 = 0xD00000000000002CLL;
          v11 = "VEpisodeMusicShow";
          break;
        case 10:
          v10 = 0xD00000000000002ELL;
          v11 = "VEpisodeKeepLocalEnableState";
          break;
        case 11:
          v10 = 0xD000000000000034;
          v11 = "VEpisodeKeepLocalManagedStatus";
          break;
        case 12:
          v10 = 0xD00000000000002ELL;
          v11 = "lManagedStatusReason";
          break;
        case 13:
          v10 = 0xD000000000000028;
          v11 = "VEpisodeLastDevicePlaybackDate";
          break;
        case 14:
          v10 = 0xD00000000000001ELL;
          v11 = "VEpisodeLibraryAddedDate";
          break;
        case 15:
          v10 = 0xD000000000000023;
          v11 = "MPModelPropertyTVEpisodeNumber";
          break;
        case 16:
          v10 = 0xD000000000000027;
          v11 = "VEpisodeReleaseDate";
          break;
        case 17:
          v10 = 0xD00000000000001DLL;
          v11 = "VEpisodeDescriptionText";
          break;
        case 18:
          v10 = 0xD00000000000001CLL;
          v11 = "MPModelPropertyTVEpisodeTitle";
          break;
        case 19:
          v10 = 0xD000000000000026;
          v11 = "MPModelPropertyTVEpisodeType";
          break;
        case 20:
          v10 = 0xD00000000000002ALL;
          v11 = "hipTVEpisodeStoreAsset";
          break;
        case 21:
          v10 = 0xD00000000000002CLL;
          v11 = "hipTVEpisodeLocalFileAsset";
          break;
        case 22:
          v10 = 0xD000000000000022;
          v11 = "hipTVEpisodePlaybackPosition";
          break;
        case 23:
          v10 = 0xD000000000000020;
          v11 = "hipTVEpisodeSeason";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F12C9C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a1)
    {
      v6 = "clude";
    }

    else
    {
      v6 = "ocialPersonIsVerified";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000027 : 0xD000000000000019;
      v9 = *(*(v2 + 48) + v4) ? "clude" : "ocialPersonIsVerified";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1D5616168();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
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

unint64_t sub_1D4F12DE4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_11:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_11;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1D4F12EA0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xD00000000000002BLL;
      v8 = "🟦    Saving Playlist";
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xD00000000000002CLL;
          v8 = "laybackPositionBookmarkTime";
          break;
        case 2:
          v7 = 0xD000000000000039;
          v8 = "laybackPositionHasBeenPlayed";
          break;
        case 3:
          v7 = 0xD00000000000002CLL;
          v8 = "houldRememberBookmarkTime";
          break;
        case 4:
          v7 = 0xD000000000000028;
          v8 = "laybackPositionUserPlayCount";
          break;
        case 5:
          v7 = 0xD000000000000027;
          v8 = "laybackPositionStartTime";
          break;
        default:
          break;
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD00000000000002BLL;
      v11 = "🟦    Saving Playlist";
      switch(a1)
      {
        case 1:
          v10 = 0xD00000000000002CLL;
          v11 = "laybackPositionBookmarkTime";
          break;
        case 2:
          v10 = 0xD000000000000039;
          v11 = "laybackPositionHasBeenPlayed";
          break;
        case 3:
          v10 = 0xD00000000000002CLL;
          v11 = "houldRememberBookmarkTime";
          break;
        case 4:
          v10 = 0xD000000000000028;
          v11 = "laybackPositionUserPlayCount";
          break;
        case 5:
          v10 = 0xD000000000000027;
          v11 = "laybackPositionStartTime";
          break;
        default:
          break;
      }

      if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v13 = sub_1D5616168();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1D4F130DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1D4F157F8();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1D5615848();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D4F1319C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD00000000000002DLL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = 0xD000000000000020;
        v7 = "reditsArtistArtwork";
      }

      else
      {
        v7 = "reditsArtistName";
      }

      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000023;
      v9 = *(*(v2 + 48) + v4) ? v7 : "";
      if (a1)
      {
        v5 = a1 == 1 ? 0xD000000000000020 : 0xD00000000000002DLL;
        v10 = a1 == 1 ? "reditsArtistArtwork" : "reditsArtistName";
      }

      else
      {
        v10 = "";
      }

      if (v8 == v5 && (v9 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1D5616168();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
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

_OWORD *sub_1D4F13310()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  sub_1D4F0DF30();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA690, &qword_1D561C558);
  v4 = OUTLINED_FUNCTION_17_5(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0DF30();
    OUTLINED_FUNCTION_14_9();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_3_10(v4, v5, v6, *v0);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

void sub_1D4F133DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_47();
  v12 = OUTLINED_FUNCTION_15_14();
  type metadata accessor for MusicItemCache.Key(v12);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  sub_1D4F0DF68();
  OUTLINED_FUNCTION_1_24();
  if (v15)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F0, &qword_1D561E210);
  OUTLINED_FUNCTION_25_21();
  v17 = sub_1D5615D78();
  if (v17)
  {
    sub_1D4F0DF68();
    OUTLINED_FUNCTION_45_8();
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  if (v16)
  {
    OUTLINED_FUNCTION_46();

    sub_1D4F1579C(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v17, v18, type metadata accessor for MusicItemCache.Key);
    OUTLINED_FUNCTION_62_8();
    sub_1D50143BC(v23, v24, v25, v26);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F13514()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D560C368();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E020();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3F8, &qword_1D561E218);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E020();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_18();
    v6(v5);
    v7 = OUTLINED_FUNCTION_9_10();
    sub_1D501444C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F13640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_47();
  v13 = OUTLINED_FUNCTION_15_14();
  type metadata accessor for LooselyComparableTypedIdentifier(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_28_10();
  sub_1D4F0DE0C(v12, v15, sub_1D4F0EEF8);
  OUTLINED_FUNCTION_1_24();
  if (v17)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
  OUTLINED_FUNCTION_25_21();
  v19 = sub_1D5615D78();
  if (v19)
  {
    OUTLINED_FUNCTION_28_10();
    sub_1D4F0DE0C(v12, v21, sub_1D4F0EEF8);
    OUTLINED_FUNCTION_45_8();
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  if (v18)
  {
    v23 = type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_22(v23);
    OUTLINED_FUNCTION_46();

    sub_1D4F159C4(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v19, v20, type metadata accessor for LooselyComparableTypedIdentifier);
    OUTLINED_FUNCTION_62_8();
    sub_1D50144CC(v27, v28, v29, v30);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F137BC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D5614118();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E0D0();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E0D0();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_18();
    v8(v7);
    v9 = OUTLINED_FUNCTION_9_10();
    sub_1D501457C(v9, v10, v11, v12);
    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D4F13984()
{
  OUTLINED_FUNCTION_191();
  v4 = OUTLINED_FUNCTION_8_12(v2, v3);
  sub_1D4F0DD20(v4, v5);
  OUTLINED_FUNCTION_1_24();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB400, &qword_1D561E220);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_42_8();
    sub_1D4F0DD20(v11, v12);
    OUTLINED_FUNCTION_20_20();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21_10();
    sub_1D50145A8(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F13A5C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D5614438();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E1E0();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C8, &qword_1D561E288);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E1E0();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_18();
    v8(v7);
    v9 = OUTLINED_FUNCTION_9_10();
    sub_1D50145E4(v9, v10, v11, v12);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F13B94()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_60_3(v1, v2, v3);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B0, &unk_1D5620C80);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    v5 = OUTLINED_FUNCTION_61();
    sub_1D4E4EFA0(v5, v6);
    OUTLINED_FUNCTION_20_20();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_64_5();
    sub_1D5014610(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_190();
  }
}

uint64_t sub_1D4F13C7C()
{
  OUTLINED_FUNCTION_191();
  v4 = OUTLINED_FUNCTION_8_12(v2, v3);
  sub_1D4E4EFA0(v4, v5);
  OUTLINED_FUNCTION_1_24();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB460, &qword_1D561E250);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_42_8();
    sub_1D4E4EFA0(v11, v12);
    OUTLINED_FUNCTION_20_20();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    sub_1D5015584();
    OUTLINED_FUNCTION_190();
  }
}

uint64_t sub_1D4F13D54()
{
  OUTLINED_FUNCTION_191();
  v4 = OUTLINED_FUNCTION_8_12(v2, v3);
  sub_1D4E4EFA0(v4, v5);
  OUTLINED_FUNCTION_1_24();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB480, &qword_1D561E258);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_42_8();
    sub_1D4E4EFA0(v11, v12);
    OUTLINED_FUNCTION_20_20();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    sub_1D5015584();
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F13E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E2E8();
  OUTLINED_FUNCTION_1_24();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B8, &qword_1D561E278);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E2E8();
    OUTLINED_FUNCTION_18_8();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v12)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
    OUTLINED_FUNCTION_22(v16);
    OUTLINED_FUNCTION_46();

    sub_1D4F15954(v17, v18);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_7_18();
    v21(v20);
    v22 = OUTLINED_FUNCTION_9_10();
    sub_1D5014668(v22, v23, v24, v25);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F13F88()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_10();
  sub_1D4F0E970(v0, v3, sub_1D4F10FE8);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5D8, &qword_1D561C4F0);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_38_10();
    sub_1D4F0E970(v0, v9, sub_1D4F10FE8);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

_OWORD *sub_1D4F14088()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_37_11();
  sub_1D4F0E970(v0, v3, sub_1D4F1120C);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5C8, &qword_1D561C4E8);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_37_11();
    sub_1D4F0E970(v0, v9, sub_1D4F1120C);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

_OWORD *sub_1D4F14188()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_36_5();
  sub_1D4F0E970(v0, v3, sub_1D4F11470);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA598, &qword_1D561C4C8);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_36_5();
    sub_1D4F0E970(v0, v9, sub_1D4F11470);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

unint64_t sub_1D4F14288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  v14 = v13;
  v16 = v15;
  sub_1D4F0E41C(v13);
  OUTLINED_FUNCTION_1_24();
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A8, &qword_1D561E270);
  if (OUTLINED_FUNCTION_17_5(v18))
  {
    sub_1D4F0E41C(v14);
    OUTLINED_FUNCTION_14_9();
    if (!v20)
    {
      goto LABEL_14;
    }

    v12 = v19;
  }

  if (v11)
  {
    *(*(*v10 + 56) + 8 * v12) = v16;
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_190();

    return sub_1D5014858(v23, v24, v25, v26);
  }
}

uint64_t sub_1D4F14378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_60_3(v10, v11, v12);
  OUTLINED_FUNCTION_1_24();
  if (v14)
  {
    __break(1u);
LABEL_12:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E0, &qword_1D56492E0);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    v16 = OUTLINED_FUNCTION_61();
    sub_1D4E4EFA0(v16, v17);
    if ((v15 & 1) != (v18 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_190();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_64_5();
    sub_1D5014894(v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F144AC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D56146E8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E460();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4A0, &qword_1D561E268);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E460();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_18();
    v8(v7);
    v9 = OUTLINED_FUNCTION_9_10();
    sub_1D5014930(v9, v10, v11, v12);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F145E4()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  type metadata accessor for MusicSuggestedPivotEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_35_13();
  sub_1D4F0DE0C(v3, v7, sub_1D4F0FE08);
  OUTLINED_FUNCTION_1_24();
  if (v10)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB418, &unk_1D5659C90);
  OUTLINED_FUNCTION_25_21();
  v13 = sub_1D5615D78();
  if (v13)
  {
    OUTLINED_FUNCTION_35_13();
    sub_1D4F0DE0C(v3, v15, sub_1D4F0FE08);
    OUTLINED_FUNCTION_45_8();
    if (!v16)
    {
      goto LABEL_11;
    }

    v11 = v13;
  }

  v17 = *v0;
  if (v12)
  {
    *(*(v17 + 56) + v11) = v5;
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v13, v14, type metadata accessor for MusicSuggestedPivotEntry);
    sub_1D501495C(v11, v1, v5, v17);
  }

  OUTLINED_FUNCTION_46();
}

_OWORD *sub_1D4F14730()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  sub_1D4F0E570();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA540, &qword_1D561C498);
  v4 = OUTLINED_FUNCTION_17_5(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0E570();
    OUTLINED_FUNCTION_14_9();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_3_10(v4, v5, v6, *v0);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

void sub_1D4F147FC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D5615D68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E5A8();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB408, &qword_1D56607F0);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E5A8();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_18();
    v8(v7);
    v9 = OUTLINED_FUNCTION_9_10();
    sub_1D50149D8(v9, v10, v11, v12);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F14934()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D5613598();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E600();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E600();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_46();

    sub_1D4E519A8(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_7_18();
    v8(v7);
    v9 = OUTLINED_FUNCTION_9_10();
    sub_1D5014A04(v9, v10, v11, v12);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F14A6C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for MusicRestrictionsObserver.ObservationToken(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1D4F0E6B0();
  OUTLINED_FUNCTION_1_24();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB468, &unk_1D564BA80);
  if (sub_1D5615D78())
  {
    sub_1D4F0E6B0();
    OUTLINED_FUNCTION_18_8();
    if (!v17)
    {
      goto LABEL_12;
    }

    v14 = v16;
  }

  v18 = *v0;
  if (v15)
  {
    v19 = (*(v18 + 56) + 16 * v14);
    *v19 = v6;
    v19[1] = v4;
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D4F1589C(v2, v10, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
    OUTLINED_FUNCTION_64_5();
    sub_1D5014AD4(v21, v22, v23, v24, v18);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F14BD0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_33_13();
  sub_1D4F0E970(v0, v3, sub_1D4F12088);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4C8, &unk_1D561C460);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_33_13();
    sub_1D4F0E970(v0, v9, sub_1D4F12088);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

_OWORD *sub_1D4F14CD0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_32_14();
  sub_1D4F0E970(v0, v3, sub_1D4F12250);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4B0, &qword_1D561C458);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_32_14();
    sub_1D4F0E970(v0, v9, sub_1D4F12250);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

_OWORD *sub_1D4F14DD0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_31_12();
  sub_1D4F0E970(v0, v3, sub_1D4F12434);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4A8, &qword_1D561C450);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_31_12();
    sub_1D4F0E970(v0, v9, sub_1D4F12434);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

_OWORD *sub_1D4F14ED0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  sub_1D4F0E870();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA488, &unk_1D561C440);
  v4 = OUTLINED_FUNCTION_17_5(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0E870();
    OUTLINED_FUNCTION_14_9();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_3_10(v4, v5, v6, *v0);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

void sub_1D4F14F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  sub_1D4F0E8A8(v11 & 1);
  OUTLINED_FUNCTION_1_24();
  if (v13)
  {
    __break(1u);
LABEL_13:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v14 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA470, &qword_1D561C438);
  if (OUTLINED_FUNCTION_17_5(v15))
  {
    sub_1D4F0E8A8(v10 & 1);
    OUTLINED_FUNCTION_20_20();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v14)
  {
    OUTLINED_FUNCTION_6_14();
    OUTLINED_FUNCTION_190();

    sub_1D4E519A8(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_190();

    sub_1D5014B78(v20, v21, v22, v23);
  }
}

_OWORD *sub_1D4F15080()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_29_8();
  sub_1D4F0E970(v0, v3, sub_1D4F12EA0);
  OUTLINED_FUNCTION_1_24();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA468, &qword_1D561C430);
  v6 = OUTLINED_FUNCTION_17_5(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_29_8();
    sub_1D4F0E970(v0, v9, sub_1D4F12EA0);
    OUTLINED_FUNCTION_14_9();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_3_10(v6, v7, v8, *v1);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

void sub_1D4F15180()
{
  OUTLINED_FUNCTION_47();
  v0 = OUTLINED_FUNCTION_15_14();
  type metadata accessor for MusicSuggestedSongsEntry(v0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_44_5();
  sub_1D4F0DE84();
  OUTLINED_FUNCTION_1_24();
  if (v3)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB450, &qword_1D561E248);
  OUTLINED_FUNCTION_25_21();
  v5 = sub_1D5615D78();
  if (v5)
  {
    sub_1D4F0DE84();
    OUTLINED_FUNCTION_45_8();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_73_3(v5, v6, type metadata accessor for MusicSuggestedSongsEntry);
    OUTLINED_FUNCTION_62_8();
    sub_1D5014BC8(v9, v10, v11, v12);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F152A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_191();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1D4F0E41C(v13);
  OUTLINED_FUNCTION_1_24();
  if (v19)
  {
    __break(1u);
LABEL_14:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB438, &qword_1D561E230);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    sub_1D4F0E41C(v14);
    OUTLINED_FUNCTION_20_20();
    if (!v21)
    {
      goto LABEL_14;
    }

    v12 = v20;
  }

  if (v11)
  {
    v22 = (*(*v10 + 56) + 16 * v12);
    *v22 = v18;
    v22[1] = v16;
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_64_5();
    OUTLINED_FUNCTION_190();

    sub_1D5014C44(v24, v25, v26, v27, v28);
  }
}

uint64_t sub_1D4F153A4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1D4E4EFA0(v3, v1);
  OUTLINED_FUNCTION_1_24();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB430, &qword_1D561E228);
  OUTLINED_FUNCTION_25_21();
  if ((sub_1D5615D78() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D4E4EFA0(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D5014C88(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D4F154CC()
{
  OUTLINED_FUNCTION_191();
  v4 = OUTLINED_FUNCTION_8_12(v2, v3);
  sub_1D4E4EFA0(v4, v5);
  OUTLINED_FUNCTION_1_24();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB440, &qword_1D561E238);
  OUTLINED_FUNCTION_11_9();
  v7 = sub_1D5615D78();
  if (v7)
  {
    v11 = OUTLINED_FUNCTION_42_8();
    sub_1D4E4EFA0(v11, v12);
    OUTLINED_FUNCTION_20_20();
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_50_4(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_190();
  }

  else
  {
    OUTLINED_FUNCTION_21_10();
    sub_1D5015584();
    OUTLINED_FUNCTION_190();
  }
}

void sub_1D4F155A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_5_11();
  sub_1D560C368();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_0_17();
  sub_1D4F0E020();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_1D5616238();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB448, &qword_1D561E240);
  OUTLINED_FUNCTION_11_9();
  if (sub_1D5615D78())
  {
    OUTLINED_FUNCTION_54_6();
    sub_1D4F0E020();
    OUTLINED_FUNCTION_18_8();
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_43_11();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_7_18();
    v6(v5);
    v7 = OUTLINED_FUNCTION_9_10();
    sub_1D501444C(v7, v8, v9, v10);
    OUTLINED_FUNCTION_46();
  }
}

_OWORD *sub_1D4F156D0()
{
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_2_4();
  sub_1D4F0EA2C();
  OUTLINED_FUNCTION_1_24();
  if (v2)
  {
    __break(1u);
LABEL_13:
    result = sub_1D5616238();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_26_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA450, &qword_1D561C428);
  v4 = OUTLINED_FUNCTION_17_5(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_68_5();
    sub_1D4F0EA2C();
    OUTLINED_FUNCTION_14_9();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_3_10(v4, v5, v6, *v0);
    OUTLINED_FUNCTION_190();

    return sub_1D4E519A8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_16_13();
    OUTLINED_FUNCTION_190();

    return sub_1D5015580();
  }
}

unint64_t sub_1D4F157F8()
{
  result = qword_1EC7EA460;
  if (!qword_1EC7EA460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7EA460);
  }

  return result;
}

uint64_t sub_1D4F1583C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4F1589C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F158FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F15954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F159C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F15A28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_57_8@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
  sub_1D4E519A8((v3 - 128), (v3 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_12()
{

  return sub_1D56162D8();
}

uint64_t OUTLINED_FUNCTION_67_5()
{

  return sub_1D5615D98();
}

_OWORD *OUTLINED_FUNCTION_71_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 104) = a2;
  *(v2 - 128) = a1;

  return sub_1D4E519A8((v2 - 128), (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_72_7(uint64_t a1, uint64_t a2, ...)
{

  return sub_1D5614CB8();
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v115 = a5;
  v116 = a1;
  v7 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5_0();
  v106 = v8;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v104 = v10;
  v105 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v103 = v11;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v101 = v13;
  v102 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v100 = v14;
  OUTLINED_FUNCTION_70_0();
  v99 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v98 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v97 = v17;
  OUTLINED_FUNCTION_70_0();
  sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v108 = v19;
  v109 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v20 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v107 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v23 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v110 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v111 = &v95 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v113 = &v95 - v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v114 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v112 = v34;
  sub_1D560F7E8();
  sub_1D4F165C4();
  v35 = sub_1D5614C68();

  v36 = sub_1D4FBE524(v35);
  if (v36 == 15)
  {
    swift_unknownObjectRelease();

    sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
    (*(v25 + 8))(v116, v23);
  }

  else
  {
    v37 = v36;
    v96 = v23;
    v38 = v116;
    v39 = sub_1D560F7B8();
    if (v39)
    {
      v40 = v39;
      sub_1D560D4F8();
      v41 = v37;
      if (v37)
      {
        if (v37 == 5)
        {
          OUTLINED_FUNCTION_14_10();
          sub_1D560D968();
          sub_1D560D588();
          v57 = v111;
          OUTLINED_FUNCTION_18_9(v40);
          v58 = OUTLINED_FUNCTION_11_10();
          v59(v58);
          v60 = OUTLINED_FUNCTION_10_8();
          v61(v60);
          v62 = OUTLINED_FUNCTION_6_15();
          v63 = v96;
          v64(v62, v57, v96);
          OUTLINED_FUNCTION_20_21();
          v65 = v100;
          OUTLINED_FUNCTION_19_11();
          sub_1D56144C8();
          swift_unknownObjectRelease();
          sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
          v66 = *(v25 + 8);
          v52 = v25 + 8;
          v66(v38, v63);
          v66(v57, v63);
          sub_1D4E50004(v113, &unk_1EC7EBF30, &qword_1D561C8C0);
          v67 = OUTLINED_FUNCTION_15_15();
          v68(v67, v65);
        }

        else
        {
          v42 = v96;
          if (v41 == 10)
          {
            OUTLINED_FUNCTION_14_10();
            sub_1D560D958();
            sub_1D560D588();
            v69 = v111;
            OUTLINED_FUNCTION_18_9(v40);
            v70 = OUTLINED_FUNCTION_11_10();
            v71(v70);
            v72 = OUTLINED_FUNCTION_10_8();
            v73(v72);
            v74 = OUTLINED_FUNCTION_6_15();
            v75(v74, v69, v42);
            OUTLINED_FUNCTION_20_21();
            v76 = v103;
            OUTLINED_FUNCTION_222();
            OUTLINED_FUNCTION_19_11();
            sub_1D5614228();
            swift_unknownObjectRelease();
            sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
            v77 = *(v25 + 8);
            v52 = v25 + 8;
            v77(v116, v42);
            v77(v69, v42);
            sub_1D4E50004(v113, &unk_1EC7EBF30, &qword_1D561C8C0);
            v78 = OUTLINED_FUNCTION_15_15();
            v79(v78, v76);
          }

          else
          {
            if (v41 != 13)
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
              (*(v25 + 8))(v38, v42);
              sub_1D4E50004(v113, &unk_1EC7EBF30, &qword_1D561C8C0);
              goto LABEL_12;
            }

            v95 = a4;
            v43 = v38;
            if (qword_1EDD53C58 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v20, qword_1EDD53C60);
            sub_1D560D588();
            v44 = v111;
            v45 = v113;
            sub_1D560F7D8();
            v46 = OUTLINED_FUNCTION_11_10();
            v47(v46);
            v48 = OUTLINED_FUNCTION_6_15();
            v49(v48, v44, v42);
            OUTLINED_FUNCTION_20_21();
            v50 = v106;
            OUTLINED_FUNCTION_222();
            OUTLINED_FUNCTION_19_11();
            TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
            swift_unknownObjectRelease();
            sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
            v51 = *(v25 + 8);
            v51(v43, v42);
            v51(v44, v42);
            sub_1D4E50004(v45, &unk_1EC7EBF30, &qword_1D561C8C0);
            OUTLINED_FUNCTION_4_11();
            v52 = v112;
            sub_1D4F172CC(v50, v112, v53);
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_10();
        sub_1D560D908();
        sub_1D560D588();
        v80 = v111;
        OUTLINED_FUNCTION_18_9(v40);
        v81 = OUTLINED_FUNCTION_11_10();
        v82(v81);
        v83 = OUTLINED_FUNCTION_10_8();
        v84(v83);
        v85 = OUTLINED_FUNCTION_6_15();
        v86 = v96;
        v87(v85, v80, v96);
        OUTLINED_FUNCTION_20_21();
        v88 = v97;
        OUTLINED_FUNCTION_19_11();
        sub_1D56138E8();
        swift_unknownObjectRelease();
        sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
        v89 = *(v25 + 8);
        v52 = v25 + 8;
        v89(v116, v86);
        v89(v80, v86);
        sub_1D4E50004(v113, &unk_1EC7EBF30, &qword_1D561C8C0);
        v90 = OUTLINED_FUNCTION_15_15();
        v91(v90, v88, v99);
      }

      v56 = v114;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_13();
      v92 = v52;
      v55 = v115;
      sub_1D4F172CC(v92, v115, v93);
      v54 = 0;
      return __swift_storeEnumTagSinglePayload(v55, v54, 1, v56);
    }

    swift_unknownObjectRelease();

    sub_1D4E50004(a3, &qword_1EC7EEC40, &unk_1D561C070);
    (*(v25 + 8))(v38, v96);
  }

LABEL_12:
  v54 = 1;
  v56 = v114;
  v55 = v115;
  return __swift_storeEnumTagSinglePayload(v55, v54, 1, v56);
}

unint64_t sub_1D4F165C4()
{
  result = qword_1EDD5EFE8;
  if (!qword_1EDD5EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFE8);
  }

  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.init(propertyProvider:underlyingLegacyModelObjectType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a2;
  v64 = a3;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v60[5] = v5;
  v60[6] = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v60[3] = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v60[4] = type metadata accessor for TVSeason(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v60[7] = v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v60[1] = v11;
  v60[2] = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v60[0] = v12;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v60[9] = v14;
  v60[10] = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v60[8] = v15;
  OUTLINED_FUNCTION_70_0();
  v16 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v62 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v61 = v31;
  v32 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_9_11();
  sub_1D4E5E3B0(v33, v34, MEMORY[0x1E6975BE0]);
  v35 = OUTLINED_FUNCTION_5_12();
  v38 = *(v25 + 8);
  v36 = (v25 + 8);
  v37 = v38;
  (v38)(v29, v23);
  if (v35)
  {
    v40 = OUTLINED_FUNCTION_61();
    v37(v40);
    OUTLINED_FUNCTION_13_14();
    sub_1D5613978();
    sub_1D5613158();
    OUTLINED_FUNCTION_14();
    (*(v41 + 8))(v63);
    v42 = v61;
    (*(v18 + 32))(v61, v22, v16);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_13();
    sub_1D4F172CC(v42, v64, v43);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  sub_1D560FEA8();
  OUTLINED_FUNCTION_5_12();
  v39 = OUTLINED_FUNCTION_7_10();
  v37(v39);
  sub_1D5610038();
  OUTLINED_FUNCTION_5_12();
  v45 = OUTLINED_FUNCTION_7_10();
  v37(v45);
  if (v35)
  {
    v47 = OUTLINED_FUNCTION_61();
    v37(v47);
    OUTLINED_FUNCTION_13_14();
    sub_1D56145A8();
    sub_1D5613158();
    OUTLINED_FUNCTION_14();
    (*(v48 + 8))(v63);
    v42 = v61;
    v49 = OUTLINED_FUNCTION_222();
    v50(v49);
    goto LABEL_4;
  }

  sub_1D560FF58();
  OUTLINED_FUNCTION_5_12();
  v46 = OUTLINED_FUNCTION_7_10();
  v37(v46);
  sub_1D5610008();
  OUTLINED_FUNCTION_5_12();
  v51 = OUTLINED_FUNCTION_7_10();
  v37(v51);
  if (v35)
  {
    v52 = OUTLINED_FUNCTION_61();
    v37(v52);
    OUTLINED_FUNCTION_13_14();
    sub_1D5614288();
    sub_1D5613158();
    OUTLINED_FUNCTION_14();
    (*(v53 + 8))(v63);
    v42 = v61;
    v54 = OUTLINED_FUNCTION_222();
    v55(v54);
    goto LABEL_4;
  }

  sub_1D5610068();
  OUTLINED_FUNCTION_5_12();
  v56 = OUTLINED_FUNCTION_7_10();
  v37(v56);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000037, 0x80000001D567E9D0);
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  sub_1D5610CF8();
  OUTLINED_FUNCTION_9_11();
  sub_1D4E5E3B0(v57, v58, MEMORY[0x1E6975BF8]);
  v59 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v59);

  (v37)(v29, v23);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1D4F1732C(v1, v5 - v4);
  OUTLINED_FUNCTION_61();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  (*(v8 + 104))(a1, **(&unk_1E84C4680 + EnumCaseMultiPayload));
  return sub_1D4F17390(v6, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
}

uint64_t InternalMusicPlayer.Queue.Entry.Container.convertToRawDictionary(for:)(uint64_t a1)
{
  type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  v5 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v32 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v31 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  sub_1D4F1732C(v33, v26 - v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v31 + 32))(v16, v27, v11);
      sub_1D4E5E3B0(&qword_1EC7EB4E8, MEMORY[0x1E69773E0], MEMORY[0x1E69773D0]);
      v28 = sub_1D56132F8();
      (*(v31 + 8))(v16, v11);
      break;
    case 2u:
      (*(v32 + 32))(v10, v27, v5);
      sub_1D4E5E3B0(&qword_1EC7EB4E0, MEMORY[0x1E6977180], MEMORY[0x1E6977170]);
      v28 = sub_1D56132F8();
      (*(v32 + 8))(v10, v5);
      break;
    case 3u:
      OUTLINED_FUNCTION_4_11();
      sub_1D4F172CC(v27, v4, v29);
      sub_1D4E5E3B0(&qword_1EC7EA438, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_1D4E5E3B0(&qword_1EC7EA480, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      v28 = sub_1D56132F8();
      sub_1D4F17390(v4, type metadata accessor for TVSeason);
      break;
    default:
      (*(v19 + 32))(v23, v27, v17);
      sub_1D4E5E3B0(&qword_1EC7EB4F0, MEMORY[0x1E6976D28], MEMORY[0x1E6976D18]);
      v28 = sub_1D56132F8();
      (*(v19 + 8))(v23, v17);
      break;
  }

  return v28;
}

uint64_t sub_1D4F172CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D4F1732C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F17390(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return sub_1D4EC76A8(v0, v1 - 128);
}

uint64_t sub_1D4F17400()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD52CF0);
  v1 = __swift_project_value_buffer(v0, qword_1EDD52CF0);
  v2 = *MEMORY[0x1E6976810];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Folder.Item.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD52CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EDD52CF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Folder.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v146 = a4;
  v148 = a3;
  v160 = a1;
  v136 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v135 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = OUTLINED_FUNCTION_48(v10 - v9);
  v12 = type metadata accessor for Playlist.Folder(v11);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v15 - v14);
  v145 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v144 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v143 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  v158 = &v131 - v22;
  v142 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v152 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v151 = &v131 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_48(&v131 - v28);
  v153 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v139 = v33 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4F8, &qword_1D561E298);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v131 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v39 = OUTLINED_FUNCTION_22(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v131 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v131 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB500, &qword_1D561E2A0);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (&v131 - v48);
  v154 = sub_1D5612548();
  OUTLINED_FUNCTION_4();
  v150 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  v159 = &v131 - v53;
  sub_1D5614438();
  OUTLINED_FUNCTION_4();
  v156 = v55;
  v157 = v54;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v155 = v57 - v56;
  v58 = sub_1D560F7B8();
  v149 = a5;
  v147 = a2;
  if (!v58)
  {
    v58 = swift_unknownObjectRetain();
  }

  v141 = v58;
  v59 = sub_1D560F7E8();
  (*(v156 + 104))(v155, *MEMORY[0x1E69771D8], v157);
  v60 = sub_1D5614428();
  sub_1D4E494C8(v60, v61, v59);

  if (v161[3])
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1D5612528();
    v62 = v154;
    if (__swift_getEnumTagSinglePayload(v49, 1, v154) != 1)
    {
      v72 = v150;
      OUTLINED_FUNCTION_10_9();
      v106();
      v70 = v160;
      v89 = v142;
      v71 = v62;
      goto LABEL_29;
    }

    v63 = &qword_1EC7EB500;
    v64 = &qword_1D561E2A0;
    v65 = v49;
  }

  else
  {
    v63 = &qword_1EC7E9F98;
    v64 = &qword_1D561C420;
    v65 = v161;
  }

  sub_1D4E50004(v65, v63, v64);
LABEL_9:
  sub_1D560D5E8();
  if (qword_1EDD53CC0 != -1)
  {
    OUTLINED_FUNCTION_4_12(&qword_1EDD53CC0);
  }

  v66 = v153;
  v67 = __swift_project_value_buffer(v153, qword_1EDD53CC8);
  (*(v30 + 16))(v43, v67, v66);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v66);
  v68 = *(v34 + 48);
  v69 = v66;
  sub_1D4E69910(v45, v37, &qword_1EC7F6DF0, &qword_1D561D1E0);
  sub_1D4E69910(v43, &v37[v68], &qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_11_2(v37);
  if (v74)
  {
    OUTLINED_FUNCTION_12_16(v43);
    OUTLINED_FUNCTION_12_16(v45);
    OUTLINED_FUNCTION_11_2(&v37[v68]);
    v70 = v160;
    if (v74)
    {
      sub_1D4E50004(v37, &qword_1EC7F6DF0, &qword_1D561D1E0);
      v71 = v154;
      v72 = v150;
LABEL_27:
      v104 = OUTLINED_FUNCTION_8_14();
      v105(v104);
      v89 = v142;
      goto LABEL_29;
    }
  }

  else
  {
    v73 = v138;
    sub_1D4E69910(v37, v138, &qword_1EC7F6DF0, &qword_1D561D1E0);
    OUTLINED_FUNCTION_11_2(&v37[v68]);
    if (!v74)
    {
      v92 = v139;
      (*(v30 + 32))(v139, &v37[v68], v69);
      sub_1D4F188C0(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
      v93 = sub_1D5614D18();
      v94 = *(v30 + 8);
      v94(v92, v69);
      OUTLINED_FUNCTION_10_9();
      sub_1D4E50004(v95, v96, v97);
      OUTLINED_FUNCTION_10_9();
      sub_1D4E50004(v98, v99, v100);
      v94(v138, v69);
      OUTLINED_FUNCTION_10_9();
      sub_1D4E50004(v101, v102, v103);
      v70 = v160;
      v71 = v154;
      v72 = v150;
      if (v93)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_12_16(v43);
    OUTLINED_FUNCTION_12_16(v45);
    (*(v30 + 8))(v73, v69);
  }

  sub_1D4E50004(v37, &qword_1EC7EB4F8, &qword_1D561E298);
  v71 = v154;
  v72 = v150;
LABEL_20:
  v132 = v30;
  v75 = v152;
  if (qword_1EDD5D8A8 != -1)
  {
    swift_once();
  }

  v76 = sub_1D560C758();
  __swift_project_value_buffer(v76, qword_1EDD76DC8);
  v77 = *(v75 + 16);
  v78 = v137;
  v79 = v142;
  v77(v137, v160, v142);
  v80 = sub_1D560C738();
  LODWORD(v138) = sub_1D56156B8();
  if (os_log_type_enabled(v80, v138))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v161[0] = v82;
    *v81 = 136446210;
    v77(v151, v78, v79);
    v83 = sub_1D5614DB8();
    v85 = v84;
    (*(v75 + 8))(v78, v79);
    v86 = sub_1D4E6835C(v83, v85, v161);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_1D4E3F000, v80, v138, "Unable to derive playlist type from legacy model and identifier set inner type value is not playlistFolder, defaulting to .regular: %{public}s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    v87 = v82;
    v71 = v154;
    MEMORY[0x1DA6ED200](v87, -1, -1);
    v88 = v81;
    v72 = v150;
    MEMORY[0x1DA6ED200](v88, -1, -1);
  }

  else
  {

    (*(v75 + 8))(v78, v79);
  }

  v89 = v79;
  v90 = OUTLINED_FUNCTION_8_14();
  v91(v90);
  v30 = v132;
  v70 = v160;
LABEL_29:
  sub_1D560D4F8();
  v107 = v140;
  v72[13](v140, *MEMORY[0x1E69764D8], v71);
  v108 = sub_1D5612538();
  v109 = v72[1];
  v109(v107, v71);
  v150 = v109;
  if (v108)
  {
    if (qword_1EDD53CC0 != -1)
    {
      OUTLINED_FUNCTION_4_12(&qword_1EDD53CC0);
    }

    __swift_project_value_buffer(v153, qword_1EDD53CC8);
    v110 = v143;
    sub_1D560D588();
    v111 = v151;
    v112 = v141;
    sub_1D560F7D8();
    (*(v144 + 8))(v110, v145);
    OUTLINED_FUNCTION_9_12();
    v114 = *(v113 - 256);
    v115 = v89;
    v116(v114, v111, v89);
    v117 = v148;
    sub_1D4E69910(v148, v161, &qword_1EC7EEC40, &unk_1D561C070);
    v118 = v133;
    Playlist.Folder.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v114, v112, v161, v133);
    swift_unknownObjectRelease();
    sub_1D4E50004(v117, &qword_1EC7EEC40, &unk_1D561C070);
    v119 = *(v109 + 1);
    v119(v70, v115);
    v119(v111, v115);
    sub_1D4E50004(v158, &unk_1EC7EBF30, &qword_1D561C8C0);
    v150(v159, v154);
    (*(v156 + 8))(v155, v157);
    sub_1D4F1870C(v118, v149);
  }

  else
  {
    v120 = v139;
    sub_1D560D968();
    v121 = v143;
    sub_1D560D588();
    v122 = v151;
    sub_1D560F7D8();
    (*(v144 + 8))(v121, v145);
    (*(v30 + 8))(v120, v153);
    OUTLINED_FUNCTION_9_12();
    v124 = v89;
    v125(*(v123 - 256), v122, v89);
    v126 = v148;
    sub_1D4E69910(v148, v161, &qword_1EC7EEC40, &unk_1D561C070);
    v127 = v71;
    v128 = v134;
    sub_1D56144C8();
    swift_unknownObjectRelease();
    sub_1D4E50004(v126, &qword_1EC7EEC40, &unk_1D561C070);
    v129 = *(v120 + 8);
    v129(v160, v124);
    v129(v122, v124);
    sub_1D4E50004(v158, &unk_1EC7EBF30, &qword_1D561C8C0);
    v150(v159, v127);
    (*(v156 + 8))(v155, v157);
    (*(v135 + 32))(v149, v128, v136);
  }

  type metadata accessor for Playlist.Folder.Item(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Playlist.Folder.Item.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976810];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t Playlist.Folder.Item.convertToLegacyModelStorageDictionary(for:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for Playlist.Folder(0);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  type metadata accessor for Playlist.Folder.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1D4F18770(v2, v17 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v18, v3);
    v19 = sub_1D56146A8();
    (*(v5 + 8))(v9, v3);
  }

  else
  {
    sub_1D4F1870C(v18, v14);
    v19 = Playlist.Folder.convertToLegacyModelStorageDictionary(for:)();
    sub_1D4F187D4(v14);
  }

  return v19;
}

uint64_t sub_1D4F185D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F188C0(&qword_1EDD52C80, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D4F18684(uint64_t a1, uint64_t a2)
{
  sub_1D4F188C0(&qword_1EDD52C78, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);

  return sub_1D56132F8();
}

uint64_t sub_1D4F1870C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F18770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F187D4(uint64_t a1)
{
  v2 = type metadata accessor for Playlist.Folder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F188C0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ComposerPropertyProvider(uint64_t a1)
{
  result = qword_1EC7EB510;
  if (!qword_1EC7EB510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F1897C(uint64_t a1)
{
  sub_1D4F18AF4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4F18BA8(319, &qword_1EDD5CF48, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4F18B44(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4F18BA8(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D560D838();
    if (v8 > 0x3F)
    {
      return v4;
    }

    v4 = sub_1D5610088();
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E5CF94(319);
      v2 = v10;
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_1D4F18AF4()
{
  if (!qword_1EDD5F070)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5F070);
    }
  }
}

void sub_1D4F18B44(uint64_t a1)
{
  if (!qword_1EC7EB520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EB520);
    }
  }
}

void sub_1D4F18BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D4F18C54()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EB40);
    v42 = v3;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v39 = 24;
    goto LABEL_26;
  }

  v15 = v14;
  v16 = qword_1EC7E90E0;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_9_13(&qword_1EC7E90E0);
  }

  *&v40 = qword_1EC87C348;
  v42 = v15;
  sub_1D4EC5794(&qword_1EC7EB568, &qword_1EC7EB560, &qword_1D56442E0);
  if ((OUTLINED_FUNCTION_11_11() & 1) == 0)
  {
    v20 = qword_1EC7E90E8;

    if (v20 != -1)
    {
      OUTLINED_FUNCTION_8_15(&qword_1EC7E90E8);
    }

    *&v40 = qword_1EC87C350;
    v42 = v15;
    v21 = OUTLINED_FUNCTION_11_11();

    if (v21)
    {
      v22 = type metadata accessor for ComposerPropertyProvider(0);
      sub_1D4E69910(v0 + *(v22 + 20), v13, &qword_1EC7EA3B8, &unk_1D561E370);
      v23 = sub_1D560C328();
      OUTLINED_FUNCTION_10(v13);
      if (!v24)
      {
        *(&v41 + 1) = v23;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v40);
        (*(*(v23 - 8) + 32))(boxed_opaque_existential_0, v13, v23);
LABEL_22:

        goto LABEL_23;
      }

      v25 = &qword_1EC7EA3B8;
      v26 = &unk_1D561E370;
      v27 = v13;
    }

    else
    {
      v28 = qword_1EC7E90F0;

      if (v28 != -1)
      {
        OUTLINED_FUNCTION_0_18(&qword_1EC7E90F0);
      }

      *&v40 = qword_1EC7F1DE8;
      v42 = v15;
      v29 = OUTLINED_FUNCTION_11_11();

      if ((v29 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_30();
          sub_1D5615B68();
          OUTLINED_FUNCTION_16_6();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          v42 = v3;
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
          OUTLINED_FUNCTION_28();
          v39 = 37;
LABEL_26:
          *&v40 = v39;
          OUTLINED_FUNCTION_12_3("Fatal error", v35, v36, v37, v38, "MusicKitInternal/ComposerPropertyProvider.swift");
          __break(1u);
        }
      }

      v30 = type metadata accessor for ComposerPropertyProvider(0);
      sub_1D4E69910(v1 + *(v30 + 24), v9, &qword_1EC7EB508, &unk_1D5643E20);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
      OUTLINED_FUNCTION_10(v9);
      if (!v24)
      {
        *(&v41 + 1) = v31;
        v33 = __swift_allocate_boxed_opaque_existential_0(&v40);
        (*(*(v31 - 8) + 32))(v33, v9, v31);
        goto LABEL_22;
      }

      v25 = &qword_1EC7EB508;
      v26 = &unk_1D5643E20;
      v27 = v9;
    }

    sub_1D4E50004(v27, v25, v26);
    v40 = 0u;
    v41 = 0u;
LABEL_23:
    v34 = v41;
    *v5 = v40;
    *(v5 + 16) = v34;
    goto LABEL_24;
  }

  v17 = v0[1];
  if (v17)
  {
    v18 = *v1;

    v19 = MEMORY[0x1E69E6158];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *v5 = v18;
  *(v5 + 8) = v17;
  *(v5 + 16) = 0;
  *(v5 + 24) = v19;
LABEL_24:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F190C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB560, &qword_1D56442E0);
  if (swift_dynamicCastClass())
  {
    v3 = qword_1EC7E90F0;
    swift_retain_n();
    if (v3 != -1)
    {
      OUTLINED_FUNCTION_0_18(&qword_1EC7E90F0);
    }

    sub_1D4EC5794(&qword_1EC7EB568, &qword_1EC7EB560, &qword_1D56442E0);
    v4 = sub_1D5614D18();

    if (v4)
    {
      swift_getKeyPath();
      sub_1D4F1ABA0(&qword_1EC7EB540, type metadata accessor for ComposerPropertyProvider, &unk_1D561E410);
      sub_1D5612238();

      return sub_1D4E50004(a1, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D567EAF0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_12_3("Fatal error", v6, v7, 0, 0xE000000000000000, "MusicKitInternal/ComposerPropertyProvider.swift");
  __break(1u);
  return result;
}

void sub_1D4F19344()
{
  OUTLINED_FUNCTION_47();
  v34 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  v6 = OUTLINED_FUNCTION_22(v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB548, &qword_1D56648E0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for ComposerPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB550, &unk_1D561E4F0);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D567EA50);
    v36 = v4;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v32 = 58;
LABEL_14:
    v33 = v32;
    OUTLINED_FUNCTION_12_3("Fatal error", v28, v29, v30, v31, "MusicKitInternal/ComposerPropertyProvider.swift");
    __break(1u);
    return;
  }

  v22 = v21;
  sub_1D4E628D4(v2, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_1D4E50004(v15, &qword_1EC7EB548, &qword_1D56648E0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000030, 0x80000001D567EA80);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v32 = 61;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_1D4F1A9D4(v15, v20);
  v23 = qword_1EC7E90F0;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EC7E90F0);
  }

  v35[0] = qword_1EC7F1DE8;
  v36 = v22;
  sub_1D4EC5794(&qword_1EC7EB558, &qword_1EC7EB550, &unk_1D561E4F0);
  v24 = sub_1D5614D18();

  if ((v24 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000024, 0x80000001D567EAC0);
    v36 = v22;
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v32 = 69;
    goto LABEL_14;
  }

  sub_1D4E69910(v20 + *(v16 + 24), v9, &qword_1EC7EB508, &unk_1D5643E20);
  sub_1D4F1AA38(v20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_57(v9, 1, v25);
  v26 = v34;
  if (v27)
  {
    sub_1D4E69910(v34 + *(v16 + 24), v11, &qword_1EC7EB508, &unk_1D5643E20);
    OUTLINED_FUNCTION_57(v9, 1, v25);
    if (!v27)
    {
      sub_1D4E50004(v9, &qword_1EC7EB508, &unk_1D5643E20);
    }
  }

  else
  {
    (*(*(v25 - 8) + 32))(v11, v9, v25);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v25);
  }

  sub_1D4F1AA94(v11, v26 + *(v16 + 24));
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F19824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  if (qword_1EC7E90E0 != -1)
  {
    OUTLINED_FUNCTION_9_13(&qword_1EC7E90E0);
  }

  *(v0 + 32) = qword_1EC87C348;
  v1 = qword_1EC7E90E8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_8_15(&qword_1EC7E90E8);
  }

  *(v0 + 40) = qword_1EC87C350;
  v2 = qword_1EC7E90F0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_0_18(&qword_1EC7E90F0);
  }

  *(v0 + 48) = qword_1EC7F1DE8;
  qword_1EC87BE50 = v0;
}

void sub_1D4F19914()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v69 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v70 = v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB570, &qword_1D561E520);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v72 = v13;
  v14 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  v29 = v3[1];
  v30 = v1[1];
  if (!v29)
  {
    if (v30)
    {
      goto LABEL_30;
    }

LABEL_10:
    v65 = v6;
    v67 = v4;
    v66 = type metadata accessor for ComposerPropertyProvider(0);
    v32 = *(v66 + 20);
    v33 = *(v25 + 48);
    v68 = v3;
    sub_1D4E69910(v3 + v32, v28, &qword_1EC7EA3B8, &unk_1D561E370);
    v34 = v1 + v32;
    v35 = v1;
    sub_1D4E69910(v34, &v28[v33], &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_10(v28);
    if (v31)
    {
      OUTLINED_FUNCTION_10(&v28[v33]);
      if (v31)
      {
        sub_1D4E50004(v28, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_20:
        v43 = v66;
        v44 = *(v66 + 24);
        v28 = v72;
        v45 = *(v71 + 48);
        v46 = v68;
        sub_1D4E69910(v68 + v44, v72, &qword_1EC7EB508, &unk_1D5643E20);
        sub_1D4E69910(v35 + v44, &v28[v45], &qword_1EC7EB508, &unk_1D5643E20);
        v47 = v67;
        OUTLINED_FUNCTION_57(v28, 1, v67);
        if (v31)
        {
          OUTLINED_FUNCTION_57(&v28[v45], 1, v47);
          if (v31)
          {
            sub_1D4E50004(v28, &qword_1EC7EB508, &unk_1D5643E20);
            goto LABEL_32;
          }
        }

        else
        {
          v48 = v70;
          sub_1D4E69910(v28, v70, &qword_1EC7EB508, &unk_1D5643E20);
          OUTLINED_FUNCTION_57(&v28[v45], 1, v47);
          if (!v49)
          {
            v50 = v65;
            v51 = &v28[v45];
            v52 = v69;
            (*(v65 + 32))(v69, v51, v47);
            sub_1D4F1AB04(&qword_1EC7EB580, &qword_1EC7EB588, MEMORY[0x1E6976D40], MEMORY[0x1E6975000]);
            v53 = sub_1D5614D18();
            v54 = *(v50 + 8);
            v54(v52, v47);
            v54(v48, v47);
            sub_1D4E50004(v28, &qword_1EC7EB508, &unk_1D5643E20);
            if ((v53 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_32:
            OUTLINED_FUNCTION_17_6(v43[7]);
            sub_1D4EF6F7C();
            if ((v55 & 1) == 0 || (sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
            {
              goto LABEL_30;
            }

            v56 = v43[10];
            v57 = (v46 + v56);
            v58 = *(v46 + v56 + 8);
            v59 = (v35 + v56);
            v60 = v59[1];
            if (v58)
            {
              if (!v60)
              {
                goto LABEL_30;
              }

              v61 = *v57 == *v59 && v58 == v60;
              if (!v61 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else if (v60)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_17_6(v43[11]);
            sub_1D4F286E0();
            if (v62)
            {
              OUTLINED_FUNCTION_17_6(v43[12]);
              sub_1D4F286E0();
              if (v63)
              {
                OUTLINED_FUNCTION_17_6(v43[13]);
                sub_1D4F286E0();
                if (v64)
                {
                  OUTLINED_FUNCTION_17_6(v43[14]);
                  sub_1D4F286E0();
                }
              }
            }

            goto LABEL_30;
          }

          (*(v65 + 8))(v48, v47);
        }

        v37 = &qword_1EC7EB570;
        v38 = &qword_1D561E520;
LABEL_29:
        sub_1D4E50004(v28, v37, v38);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1D4E69910(v28, v24, &qword_1EC7EA3B8, &unk_1D561E370);
      OUTLINED_FUNCTION_10(&v28[v33]);
      if (!v36)
      {
        (*(v16 + 32))(v20, &v28[v33], v14);
        OUTLINED_FUNCTION_6_16();
        sub_1D4F1ABA0(v39, v40, MEMORY[0x1E6969550]);
        v41 = sub_1D5614D18();
        v42 = *(v16 + 8);
        v42(v20, v14);
        v42(v24, v14);
        sub_1D4E50004(v28, &qword_1EC7EA3B8, &unk_1D561E370);
        if ((v41 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      (*(v16 + 8))(v24, v14);
    }

    v37 = &qword_1EC7EB578;
    v38 = &unk_1D5644D10;
    goto LABEL_29;
  }

  if (v30)
  {
    v31 = *v3 == *v1 && v29 == v30;
    if (v31 || (sub_1D5616168() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_46();
}

void sub_1D4F19F88()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_4();
  v33 = v2;
  v34 = v1;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v32 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v20 = type metadata accessor for ComposerPropertyProvider(0);
  sub_1D4E69910(v0 + v20[5], v19, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v19, 1, v9);
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v11 + 32))(v15, v19, v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_6_16();
    sub_1D4F1ABA0(v22, v23, MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    (*(v11 + 8))(v15, v9);
  }

  sub_1D4E69910(v0 + v20[6], v8, &qword_1EC7EB508, &unk_1D5643E20);
  v24 = v34;
  OUTLINED_FUNCTION_57(v8, 1, v34);
  if (v21)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v26 = v32;
    v25 = v33;
    (*(v33 + 32))(v32, v8, v24);
    OUTLINED_FUNCTION_27();
    sub_1D4F1AB04(&qword_1EC7EB590, &qword_1EC7EB598, MEMORY[0x1E6976D38], MEMORY[0x1E6974FF8]);
    sub_1D5614CB8();
    (*(v25 + 8))(v26, v24);
  }

  v27 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v27, v28);
  sub_1D560D838();
  v29 = sub_1D4F1ABA0(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_22_2(v29);
  sub_1D5610088();
  v30 = sub_1D4F1ABA0(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_22_2(v30);
  if (*(v0 + v20[10] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F1A3CC()
{
  sub_1D56162D8();
  sub_1D4F19F88();
  return sub_1D5616328();
}

void (*sub_1D4F1A414(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4F18C54();
  return sub_1D4F1A480;
}

void sub_1D4F1A480(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_1D4E69910(*a1, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D4F190C0(v2 + 32, v3);
    sub_1D4E50004(v2, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {

    sub_1D4F190C0(v2, v3);
  }

  free(v2);
}

uint64_t sub_1D4F1A540(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F19F88();
  return sub_1D5616328();
}

uint64_t sub_1D4F1A5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4F1ABA0(&qword_1EC7EB540, type metadata accessor for ComposerPropertyProvider, &unk_1D561E410);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4F1A664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F1A6D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D4F1A770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F1A7E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_1D4F1A840(uint64_t a1)
{
  v2 = sub_1D4F1ABA0(&qword_1EC7EB540, type metadata accessor for ComposerPropertyProvider, &unk_1D561E410);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4F1A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F1ABA0(&qword_1EC7EB528, type metadata accessor for ComposerPropertyProvider, &unk_1D561E3E8);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4F1A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4F1ABA0(&qword_1EC7EB538, type metadata accessor for ComposerPropertyProvider, &unk_1D561E3A8);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4F1A9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComposerPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1AA38(uint64_t a1)
{
  v2 = type metadata accessor for ComposerPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F1AA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB508, &unk_1D5643E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F1AB04(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
    sub_1D4F1ABA0(a2, MEMORY[0x1E6976D28], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F1ABA0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F1ABE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976A78];
  sub_1D5613578();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t CreditArtist.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v113[2] = a5;
  v127 = a2;
  v128 = a4;
  v125 = a6;
  v126 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v122 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v130 = v18;
  OUTLINED_FUNCTION_70_0();
  v132 = sub_1D5610E58();
  OUTLINED_FUNCTION_4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v118 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v117 = v30;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610F78();
  OUTLINED_FUNCTION_4();
  v123 = v32;
  v124 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v129 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v113 - v36;
  v38 = type metadata accessor for CreditArtistPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v114 = v42;
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = v38[7];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v121 = v46;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  if (qword_1EC7E9090 != -1)
  {
    swift_once();
  }

  v51 = sub_1D560D9A8();
  __swift_project_value_buffer(v51, qword_1EC7F1B20);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  sub_1D56105B8();
  sub_1D4E50004(v37, &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D5610658();
  v131 = sub_1D5610618();
  v119 = v57;
  v58 = sub_1D56105C8();
  v59 = sub_1D56105F8();
  v60 = sub_1D56105E8();
  v133 = a1;
  v61 = sub_1D56105A8();
  if (qword_1EC7E9690 != -1)
  {
    swift_once();
  }

  v62 = qword_1EC87C670;
  if (qword_1EC87C670 >> 62)
  {
    v111 = qword_1EC87C670 & 0xFFFFFFFFFFFFFF8;
    if (qword_1EC87C670 < 0)
    {
      v111 = qword_1EC87C670;
    }

    v113[0] = v111;
    sub_1D560CDE8();

    v112 = sub_1D5615E18();

    v62 = v112;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *&v41[v38[8]] = v62;
  v63 = &v41[v38[11]];
  v64 = v119;
  *v63 = v131;
  v63[1] = v64;
  *&v41[v38[12]] = v58;
  *&v41[v38[13]] = v59;
  *&v41[v38[14]] = v60;
  v131 = v38;
  *&v41[v38[15]] = v61;
  v65 = v129;
  v119 = v56;
  sub_1D5610648();
  v66 = v115;
  v67 = v65;
  sub_1D5610E68();
  v68 = v116;
  sub_1D5610E38();
  v69 = *(v20 + 8);
  v69(v66, v132);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  if (__swift_getEnumTagSinglePayload(v68, 1, v70) == 1)
  {
    sub_1D4E50004(v68, &qword_1EC7EB5B8, &unk_1D56206A0);
    v71 = 1;
    v72 = v117;
  }

  else
  {
    v72 = v117;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0();
    (*(v73 + 8))(v68, v70);
    v71 = 0;
  }

  __swift_storeEnumTagSinglePayload(v72, v71, 1, v114);
  v74 = *(v131 + 24);
  v75 = &v41[*(v131 + 20)];
  sub_1D4F1C350(v72, v41, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v76 = v118;
  sub_1D5610E68();
  v77 = sub_1D5610E18();
  v79 = v78;
  v80 = v132;
  v69(v76, v132);
  *v75 = v77;
  v75[1] = v79;
  sub_1D5610E68();
  v81 = sub_1D5610E48();
  v82 = v76;
  v83 = v67;
  v69(v82, v80);
  *&v41[v74] = v81;
  v84 = v122;
  sub_1D5610EC8();
  v85 = sub_1D5610EB8();
  if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
  {
    sub_1D4E50004(v84, &qword_1EC7EB5A0, &qword_1D5631010);
    v86 = 1;
    v87 = v133;
    v89 = v127;
    v88 = v128;
    v90 = v119;
    v91 = v131;
  }

  else
  {
    v92 = v113[3];
    sub_1D5610E98();
    OUTLINED_FUNCTION_24_0();
    (*(v93 + 8))(v84, v85);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v92, 1, v94);
    v87 = v133;
    v89 = v127;
    v88 = v128;
    v90 = v119;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(v92, &qword_1EC7EB5A8, &unk_1D5622F00);
      v86 = 1;
    }

    else
    {
      sub_1D560CD98();
      v96 = v92;
      v97 = v113[1];
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_8_16();
      sub_1D4F1C568(v102, v103, MEMORY[0x1E6976F08]);
      sub_1D5612368();
      sub_1D4E50004(v97, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      v105 = v96;
      v83 = v129;
      (*(v104 + 8))(v105, v94);
      v86 = 0;
    }

    v91 = v131;
  }

  v106 = v130;
  __swift_storeEnumTagSinglePayload(v130, v86, 1, v120);
  sub_1D4F1C350(v106, &v41[v121], &off_1EC7EB5B0, &unk_1D5632170);
  v134[3] = v91;
  v134[4] = sub_1D4F1C568(&qword_1EC7EB5D0, type metadata accessor for CreditArtistPropertyProvider, &protocol conformance descriptor for CreditArtistPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v134);
  sub_1D4F1C3A0(v41, boxed_opaque_existential_0);
  CreditArtist.init(propertyProvider:)(v134, v125);

  OUTLINED_FUNCTION_24_0();
  (*(v108 + 8))(v89, v88);
  OUTLINED_FUNCTION_24_0();
  (*(v109 + 8))(v87, v90);
  (*(v123 + 8))(v83, v124);
  return sub_1D4F1C404(v41);
}

uint64_t CreditArtist.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v107 = a2;
  v106 = a1;
  v123 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v122 = v6;
  OUTLINED_FUNCTION_70_0();
  v7 = sub_1D5610088();
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v129 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v117 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v115 = v15;
  OUTLINED_FUNCTION_70_0();
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v120 = v17;
  v121 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v119 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F0, &unk_1D5631000);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v114 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5F8, &qword_1D561E528);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v113 = v24;
  OUTLINED_FUNCTION_70_0();
  v118 = sub_1D5610F78();
  OUTLINED_FUNCTION_4();
  v116 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v128 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  v127 = v29;
  OUTLINED_FUNCTION_70_0();
  v105 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v104 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v38 = OUTLINED_FUNCTION_22(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  v40 = v39;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  v126 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A0, &qword_1D5631010);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  v112 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  v109 = &v104 - v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v131 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v50);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v104 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v104 - v56;
  sub_1D5610E58();
  OUTLINED_FUNCTION_4();
  v124 = v59;
  v125 = v58;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13();
  v111 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_2();
  v130 = v62;
  if (qword_1EC7E9058 != -1)
  {
    swift_once();
  }

  v63 = sub_1D56140F8();
  sub_1D4F1C568(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
  sub_1D4F1C568(&qword_1EC7EB608, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v53, 1, v63) == 1)
  {
    sub_1D4E50004(v53, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v64 = 1;
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0();
    (*(v65 + 8))(v53, v63);
    v64 = 0;
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  __swift_storeEnumTagSinglePayload(v57, v64, 1, v66);
  CreditArtist.name.getter();
  if (qword_1EC7E9068 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D560EC28();
  sub_1D5610E28();
  v67 = sub_1D5610EB8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
  if (qword_1EC7E9070 != -1)
  {
    swift_once();
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v72 = v126;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v72, 1, v71) != 1)
  {
    sub_1D4F1C460(v72, v40, &off_1EC7EB5B0, &unk_1D5632170);
    if (__swift_getEnumTagSinglePayload(v40, 1, v71) == 1)
    {
      sub_1D4E50004(v40, &off_1EC7EB5B0, &unk_1D5632170);
      v73 = 1;
      v74 = v110;
    }

    else
    {
      sub_1D5613EF8();
      OUTLINED_FUNCTION_8_16();
      sub_1D4F1C568(v75, v76, MEMORY[0x1E6976F08]);
      sub_1D4F1ABE8(v33);
      v74 = v110;
      sub_1D560DA98();
      (*(v104 + 8))(v33, v105);
      OUTLINED_FUNCTION_24_0();
      (*(v77 + 8))(v40, v71);
      v73 = 0;
    }

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
    __swift_storeEnumTagSinglePayload(v74, v73, 1, v78);
    v79 = v109;
    sub_1D5610EA8();
    v80 = v131;
    sub_1D4E50004(v131, &qword_1EC7EB5A0, &qword_1D5631010);
    __swift_storeEnumTagSinglePayload(v79, 0, 1, v67);
    sub_1D4F1C4B0(v79, v80);
  }

  (*(v124 + 16))(v111, v130, v125);
  sub_1D4F1C460(v131, v112, &qword_1EC7EB5A0, &qword_1D5631010);
  sub_1D5610E78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  sub_1D5610F68();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);

  v89 = v127;
  sub_1D5610F08();
  type metadata accessor for CreditArtist(0);
  v90 = v115;
  sub_1D5611A28();
  v91 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v91);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = v119;
  sub_1D5612B38();
  v97 = v116;
  v98 = v118;
  (*(v116 + 16))(v128, v89, v118);
  sub_1D5611A98();
  v117 = sub_1D5611A88();
  v115 = v99;
  v101 = v120;
  v100 = v121;
  v102 = v122;
  (*(v120 + 16))(v122, v96, v121);
  __swift_storeEnumTagSinglePayload(v102, 0, 1, v100);
  v114 = sub_1D5611A38();
  v113 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4F1C568(&qword_1EC7EB610, MEMORY[0x1E6976090], MEMORY[0x1E6976088]);
  sub_1D5610628();
  (*(v101 + 8))(v96, v100);
  (*(v97 + 8))(v127, v98);
  sub_1D4E50004(v131, &qword_1EC7EB5A0, &qword_1D5631010);
  (*(v124 + 8))(v130, v125);
  return sub_1D4E50004(v126, &off_1EC7EB5B0, &unk_1D5632170);
}