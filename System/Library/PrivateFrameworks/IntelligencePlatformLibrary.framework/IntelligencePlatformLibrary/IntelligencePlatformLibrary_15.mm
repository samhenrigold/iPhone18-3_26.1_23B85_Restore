id sub_19356B994()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v5 = v5 && v4 == v1;
  if (v5 || (OUTLINED_FUNCTION_10_26(v3, v4) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      memcpy(v22, __dst, sizeof(v22));
      v6 = &type metadata for IntelligenceFlowResponseGeneration.InferenceStarted;
      v7 = &off_1F07CC188;
      return sub_193494798(v6, v7, v2);
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_24_3();
    v9 = v5 && v1 == 0xE500000000000000;
    if (!v9 && (OUTLINED_FUNCTION_5_5(v8, 0xE500000000000000) & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_22_16();
      if (v5 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v5)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v10, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v5)
        {
          goto LABEL_26;
        }
      }

      v12 = OUTLINED_FUNCTION_2_35();
      *&__dst[0] = v13;
      BYTE8(__dst[0]) = v14;
      __dst[1] = v12;
      BYTE4(__dst[2]) = v15;
      LODWORD(__dst[2]) = v16;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.InferenceFailed;
      v7 = &off_1F07CC1A8;
      return sub_193494798(v6, v7, v2);
    }

    OUTLINED_FUNCTION_43_3();
    if (v5)
    {
      LOBYTE(__dst[0]) = *((v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = &type metadata for IntelligenceFlowResponseGeneration.InferenceEnded;
      v7 = &off_1F07CC198;
      return sub_193494798(v6, v7, v2);
    }
  }

LABEL_26:
  v18 = sub_19349AB64();
  v19 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
  OUTLINED_FUNCTION_64(v19, v20);
  OUTLINED_FUNCTION_19_1(v21, &type metadata for IntelligenceFlowResponseGeneration.InferenceContext);
}

uint64_t sub_19356BB20()
{
  OUTLINED_FUNCTION_25_17();
  v3 = v2;
  result = memcpy(__dst, v4, sizeof(__dst));
  v6 = v1 == 0x7265566C65646F6DLL && v0 == 0xEC0000006E6F6973;
  if (v6 || (result = OUTLINED_FUNCTION_5_5(0x7265566C65646F6DLL, 0xEC0000006E6F6973), (result & 1) != 0))
  {
    v7 = __dst[4];
    if (__dst[4] == 1)
    {
LABEL_7:
      *v3 = 0u;
      *(v3 + 16) = 0u;
      return result;
    }

    v15 = __dst[0];
    v16 = BYTE4(__dst[0]) & 1;
    v17 = __dst[1];
    v18 = BYTE4(__dst[1]) & 1;
    v19 = __dst[2];
    v20 = BYTE4(__dst[2]) & 1;
    v21 = __dst[3];
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_32_16();
  v9 = v1 == result && v0 == v8;
  if (v9 || (result = OUTLINED_FUNCTION_5_5(result, v8), (result & 1) != 0))
  {
    v7 = __dst[9];
    if (__dst[9] == 1)
    {
      goto LABEL_7;
    }

    v15 = __dst[5];
    v16 = BYTE4(__dst[5]) & 1;
    v17 = __dst[6];
    v18 = BYTE4(__dst[6]) & 1;
    v19 = __dst[7];
    v20 = BYTE4(__dst[7]) & 1;
    v21 = __dst[8];
LABEL_9:
    v22 = v7;
    return sub_193494798(&type metadata for AIML.Version, &off_1F07C3FA0, v3);
  }

  v10 = sub_19349AB64();
  v11 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
  OUTLINED_FUNCTION_9_3(v11, v12);
  *(v13 + 40) = &type metadata for IntelligenceFlowResponseGeneration.InferenceStarted;
  v14 = swift_allocObject();
  *(v3 + 16) = v14;
  memcpy((v14 + 16), __dst, 0x50uLL);
  OUTLINED_FUNCTION_26_0();

  return sub_19356BD0C(__dst, &v15);
}

id sub_19356BDC8()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_22_4();
  v9 = v9 && v3 == v1;
  if (v9 || (v2 = OUTLINED_FUNCTION_10_26(v2, v3), (v2 & 1) != 0))
  {
    if (!(v0 >> 62))
    {
      v25 = *(v0 + 16);
      v10 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionStarted;
      v11 = &off_1F07CC1C8;
LABEL_8:
      OUTLINED_FUNCTION_77_2(v2, v10, v11, v4, v5, v6, v7, v8, v24, v25);
      return sub_193494798(v12, v13, v14);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_24_3();
    v17 = v9 && v1 == 0xE500000000000000;
    if (!v17 && (OUTLINED_FUNCTION_5_5(v16, 0xE500000000000000) & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_22_16();
      if (v9 && v1 == 0xE600000000000000)
      {
        OUTLINED_FUNCTION_42_10();
        if (!v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_5_5(v18, 0xE600000000000000) & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_14_8();
        if (!v9)
        {
          goto LABEL_26;
        }
      }

      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_11_20();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionFailed;
      v11 = &off_1F07CC1E8;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_43_3();
    if (v9)
    {
      OUTLINED_FUNCTION_53_11();
      v10 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionEnded;
      v11 = &off_1F07CC1D8;
      goto LABEL_8;
    }
  }

LABEL_26:
  v20 = sub_19349AB64();
  v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
  OUTLINED_FUNCTION_64(v21, v22);
  OUTLINED_FUNCTION_19_1(v23, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext);
}

void sub_19356BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = a1 == 0x737473697865 && a2 == 0xE600000000000000;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {
    if (v5 == 2)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    v9 = sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = a3;
    *(v11 + 16) = v5;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }
}

void sub_19356C044(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = a1 == 0x7272456C61746166 && a2 == 0xEA0000000000726FLL;
  if (v10 || (v21 = v5[2], v22 = v5[3], v13 = *(v5 + 36), v14 = *(v5 + 8), (sub_19393CA30() & 1) != 0))
  {
    if (v9)
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    sub_1934948FC();
  }

  else
  {
    v15 = v14 | (v13 << 32);
    v16 = a1 == (OUTLINED_FUNCTION_97() & 0xFFFF0000FFFFFFFFLL | 0x7200000000) && a2 == 0xE500000000000000;
    if (v16 || (sub_19393CA30() & 1) != 0)
    {
      if (v22 == 1)
      {
        goto LABEL_7;
      }

      sub_193494798(&type metadata for IntelligenceFlowResponseGeneration.RGError, &off_1F07CC1F8, a5);
    }

    else
    {
      v17 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
      v19 = v18;
      *v18 = a1;
      v18[1] = a2;
      v18[5] = a3;
      v20 = swift_allocObject();
      v19[2] = v20;
      *(v20 + 16) = v8;
      *(v20 + 24) = v9;
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
      *(v20 + 48) = v15;
      *(v20 + 52) = BYTE4(v15);
      *(v19 + 48) = 1;
      swift_willThrow();

      sub_19350CB08(v21, v22);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 40) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 53, 7);
}

void sub_19356C278(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_97() | 0x6D6F447200000000;
  v8 = *v2;
  v7 = v2[1];
  v9 = a1 == v5 && a2 == v6;
  if (v9 || (v10 = *(v2 + 4), v11 = *(v2 + 20), (OUTLINED_FUNCTION_31_3(v5, v6, a1) & 1) != 0))
  {
    if (v7)
    {
LABEL_7:
      OUTLINED_FUNCTION_118_0();
      return;
    }

    goto LABEL_14;
  }

  v12 = OUTLINED_FUNCTION_97() | 0x646F437200000000;
  v14 = a1 == v12 && a2 == v13;
  if (v14 || (OUTLINED_FUNCTION_31_3(v12, 0xE900000000000065, a1) & 1) != 0)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    OUTLINED_FUNCTION_29();
    return;
  }

  v15 = sub_19349AB64();
  v16 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
  *v17 = a1;
  *(v17 + 8) = a2;
  *(v17 + 40) = &type metadata for IntelligenceFlowResponseGeneration.RGError;
  *(v17 + 16) = v8;
  *(v17 + 24) = v7;
  *(v17 + 32) = v10;
  *(v17 + 36) = v11;
  OUTLINED_FUNCTION_23_2(v16, v17);
}

id sub_19356C3CC()
{
  v3 = v0;
  OUTLINED_FUNCTION_25_17();
  v5 = v4;
  memcpy(__dst, v3, 0x61uLL);
  v6 = v2 == 0x69746172656E6567 && v1 == 0xEA00000000006E6FLL;
  if (v6 || (OUTLINED_FUNCTION_5_5(0x69746172656E6567, 0xEA00000000006E6FLL) & 1) != 0)
  {
    if (LOBYTE(__dst[6]))
    {
LABEL_7:
      v7 = sub_19349AB64();
      v8 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v7);
      OUTLINED_FUNCTION_9_3(v8, v9);
      *(v10 + 40) = &type metadata for IntelligenceFlowResponseGeneration.Event;
      v11 = swift_allocObject();
      v5[2] = v11;
      memcpy((v11 + 16), __dst, 0x61uLL);
      OUTLINED_FUNCTION_26_0();

      return sub_19356C6FC(__dst, v21);
    }

    memcpy(v21, v3, 0x60uLL);
    v13 = &type metadata for IntelligenceFlowResponseGeneration.Event.Generation;
    v14 = &off_1F07CC218;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_80_1();
    v16 = v2 == v15 && v1 == 0xE800000000000000;
    if (v16 || (OUTLINED_FUNCTION_5_5(v15, 0xE800000000000000) & 1) != 0)
    {
      if (LOBYTE(__dst[6]) != 1)
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_38_12();
      v13 = &type metadata for IntelligenceFlowResponseGeneration.Event.Fallback;
      v14 = &off_1F07CC228;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_68_7();
      v18 = v2 == v17 && v1 == 0xE800000000000000;
      if (v18 || (OUTLINED_FUNCTION_5_5(v17, 0xE800000000000000) & 1) != 0)
      {
        if (LOBYTE(__dst[6]) != 2)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_38_12();
        v21[1] = __dst[1];
        v13 = &type metadata for IntelligenceFlowResponseGeneration.Event.Override;
        v14 = &off_1F07CC238;
      }

      else
      {
        v19 = v2 == 0x666E496C65646F6DLL && v1 == 0xEE0065636E657265;
        if (v19 || (OUTLINED_FUNCTION_5_5(0x666E496C65646F6DLL, 0xEE0065636E657265) & 1) != 0)
        {
          if (LOBYTE(__dst[6]) != 3)
          {
            goto LABEL_7;
          }

          v21[0] = __dst[0];
          v21[1] = __dst[1];
          v13 = &type metadata for IntelligenceFlowResponseGeneration.Event.ModelInference;
          v14 = &off_1F07CC248;
        }

        else
        {
          v20 = v2 == 0x6843797465666173 && v1 == 0xEB000000006B6365;
          if (!v20 && (OUTLINED_FUNCTION_5_5(0x6843797465666173, 0xEB000000006B6365) & 1) == 0 || LOBYTE(__dst[6]) != 4)
          {
            goto LABEL_7;
          }

          v21[0] = __dst[0];
          LOBYTE(v21[1]) = __dst[1];
          *(&v21[1] + 8) = *(&__dst[1] + 8);
          v13 = &type metadata for IntelligenceFlowResponseGeneration.Event.SafetyCheck;
          v14 = &off_1F07CC258;
        }
      }
    }
  }

  return sub_193494798(v13, v14, v5);
}

uint64_t sub_19356C654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  switch(a13)
  {
    case 0:

      goto LABEL_3;
    case 2:
      goto LABEL_4;
    case 3:
    case 4:
LABEL_3:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19356C770()
{
  OUTLINED_FUNCTION_25_17();
  v3 = v2;
  result = memcpy(__dst, v4, sizeof(__dst));
  v6 = v1 == 0x656372756F73 && v0 == 0xE600000000000000;
  if (v6 || (result = OUTLINED_FUNCTION_5_5(0x656372756F73, 0xE600000000000000), (result & 1) != 0))
  {
    if ((__dst[1] & 0x100) != 0)
    {
LABEL_7:
      *v3 = 0u;
      v3[1] = 0u;
      return result;
    }

    v26 = __dst[0];
    LOBYTE(v27) = __dst[1] & 1;
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_29_15();
  v8 = v1 == result && v0 == v7;
  if (v8 || (result = OUTLINED_FUNCTION_5_5(result, v7), (result & 1) != 0))
  {
    if (__dst[2])
    {
      goto LABEL_7;
    }

    v9 = HIDWORD(__dst[1]);
    goto LABEL_16;
  }

  result = OUTLINED_FUNCTION_45_12();
  v11 = v1 == result && v0 == v10;
  if (v11 || (result = OUTLINED_FUNCTION_5_5(result, 0xE900000000000074), (result & 1) != 0))
  {
    if (__dst[3])
    {
      goto LABEL_7;
    }

    v9 = HIDWORD(__dst[2]);
LABEL_16:
    LODWORD(v26) = v9;
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_31_16();
  v13 = v1 == result && v0 == v12;
  if (v13 || (result = OUTLINED_FUNCTION_5_5(result, v12), (result & 1) != 0))
  {
    v14 = __dst[5];
    if (!__dst[5])
    {
      goto LABEL_7;
    }

    v15 = __dst[4];
  }

  else
  {
    result = OUTLINED_FUNCTION_37_10();
    v17 = v1 == result && v0 == v16;
    if (v17 || (result = OUTLINED_FUNCTION_5_5(result, v16), (result & 1) != 0))
    {
      v14 = __dst[7];
      if (!__dst[7])
      {
        goto LABEL_7;
      }

      v15 = __dst[6];
    }

    else
    {
      result = 0x6449746163;
      v18 = v1 == 0x6449746163 && v0 == 0xE500000000000000;
      if (v18 || (result = OUTLINED_FUNCTION_5_5(0x6449746163, 0xE500000000000000), (result & 1) != 0))
      {
        v14 = __dst[9];
        if (!__dst[9])
        {
          goto LABEL_7;
        }

        v15 = __dst[8];
      }

      else
      {
        result = OUTLINED_FUNCTION_28_12();
        if (v1 != result || v0 != v19)
        {
          result = OUTLINED_FUNCTION_5_5(result, v19);
          if ((result & 1) == 0)
          {
            v21 = sub_19349AB64();
            v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
            OUTLINED_FUNCTION_9_3(v22, v23);
            *(v24 + 40) = &type metadata for IntelligenceFlowResponseGeneration.Event.Generation;
            v25 = swift_allocObject();
            *(v3 + 2) = v25;
            memcpy((v25 + 16), __dst, 0x60uLL);
            OUTLINED_FUNCTION_26_0();

            return sub_19356C9B8(__dst, &v26);
          }
        }

        v14 = __dst[11];
        if (!__dst[11])
        {
          goto LABEL_7;
        }

        v15 = __dst[10];
      }
    }
  }

  v26 = v15;
  v27 = v14;
  return sub_1934948FC();
}

void sub_19356CA2C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 9);
  v7 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_55_4(0x6E6F73616572, 0xE600000000000000) & 1) != 0)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_29();
    }

    else
    {
      OUTLINED_FUNCTION_118_0();
    }
  }

  else
  {
    v9 = sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for IntelligenceFlowResponseGeneration.Event.Fallback;
    *(v11 + 16) = v4;
    *(v11 + 24) = v5;
    *(v11 + 25) = v6;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }
}

void sub_19356CB34()
{
  OUTLINED_FUNCTION_62_3();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  if (v1 != 1701869940 || v2 != 0xE400000000000000)
  {
    v7 = v2;
    v8 = v1;
    v10 = v0[2];
    v9 = v0[3];
    if ((OUTLINED_FUNCTION_55_4(1701869940, 0xE400000000000000) & 1) == 0)
    {
      v11 = v8 == 25705 && v7 == 0xE200000000000000;
      if (!v11 && (OUTLINED_FUNCTION_55_4(25705, 0xE200000000000000) & 1) == 0)
      {
        v12 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
        v14 = v13;
        *v13 = v8;
        v13[1] = v7;
        v13[5] = &type metadata for IntelligenceFlowResponseGeneration.Event.Override;
        OUTLINED_FUNCTION_95();
        v15 = swift_allocObject();
        v14[2] = v15;
        *(v15 + 16) = v3;
        *(v15 + 24) = v4;
        *(v15 + 25) = v5;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        *(v14 + 48) = 1;
        swift_willThrow();

        goto LABEL_16;
      }

      if (!v9)
      {
        goto LABEL_7;
      }

LABEL_15:
      OUTLINED_FUNCTION_118_0();
      goto LABEL_16;
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  OUTLINED_FUNCTION_29();
LABEL_16:
  OUTLINED_FUNCTION_54_0();
}

void sub_19356CC98()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  if (v3 != 0x7265566C65646F6DLL || v1 != 0xEC0000006E6F6973)
  {
    v9 = v0[2];
    v8 = v0[3];
    if ((OUTLINED_FUNCTION_44_0(0x7265566C65646F6DLL, 0xEC0000006E6F6973) & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_32_16();
      v12 = v4 == v10 && v2 == v11;
      if (!v12 && (OUTLINED_FUNCTION_44_0(v10, v11) & 1) == 0)
      {
        v13 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
        v15 = v14;
        *v14 = v4;
        v14[1] = v2;
        v14[5] = &type metadata for IntelligenceFlowResponseGeneration.Event.ModelInference;
        OUTLINED_FUNCTION_95();
        v16 = swift_allocObject();
        v15[2] = v16;
        v16[2] = v6;
        v16[3] = v5;
        v16[4] = v9;
        v16[5] = v8;
        *(v15 + 48) = 1;
        swift_willThrow();

        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_19356CDE8()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v1;
  v5 = *v0;
  v4 = v0[1];
  if (v1 != 0x656D614E656C7572 || v2 != 0xE800000000000000)
  {
    v7 = v2;
    v8 = *(v0 + 16);
    v10 = v0[3];
    v9 = v0[4];
    if ((OUTLINED_FUNCTION_31_3(0x656D614E656C7572, 0xE800000000000000, v1) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v12 = v3 == 0xD000000000000013 && v11 == v7;
      if (v12 || (OUTLINED_FUNCTION_31_3(0xD000000000000013, v11, v3) & 1) != 0)
      {
        if (v8 != 2)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v3 != 0xD000000000000011 || v13 != v7)
        {
          v15 = OUTLINED_FUNCTION_49_1();
          if ((OUTLINED_FUNCTION_31_3(v15, v16, v3) & 1) == 0)
          {
            v17 = sub_19349AB64();
            OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
            v19 = v18;
            *v18 = v3;
            v18[1] = v7;
            v18[5] = &type metadata for IntelligenceFlowResponseGeneration.Event.SafetyCheck;
            v20 = swift_allocObject();
            v19[2] = v20;
            *(v20 + 16) = v5;
            *(v20 + 24) = v4;
            *(v20 + 32) = v8;
            *(v20 + 40) = v10;
            *(v20 + 48) = v9;
            *(v19 + 48) = 1;
            swift_willThrow();

            goto LABEL_15;
          }
        }

        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

uint64_t OUTLINED_FUNCTION_41_11(uint64_t a1)
{

  return sub_19393CA30();
}

double IntelligenceFlowResponseGeneration.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19343E508(v4);
  v5 = v2[7];
  sub_19357B6A8();
  v6 = v2[8];
  v7 = sub_19344BA58();
  v8 = v2[9];
  sub_19343E518(v7);
  v9 = v2[10];
  v10 = sub_19357B8F4();
  v11 = sub_19343E518(v10);
  v12 = v2[12];
  sub_19343E518(v11);
  sub_19343E51C((a1 + v2[13]));
  v14 = sub_19343E518(v13);
  sub_19343E518(v14);
  v32 = v2[16];
  sub_19357BD60();
  v33 = v2[17];
  sub_19357BE70();
  v34 = v2[18];
  sub_1934DCAF4();
  v15 = a1 + v2[19];
  sub_19357C038(v15);
  *a1 = *sub_19357B508();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v16 = sub_19393BE00();
  OUTLINED_FUNCTION_16_1(a1 + v3, v17, v18, v16);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3D3C0, &qword_193963840);
  v19 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  OUTLINED_FUNCTION_16_1(a1 + v5, v20, v21, v19);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v22 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_16_1(a1 + v6, v23, v24, v22);
  sub_1934354B4(*(a1 + v8));
  *(a1 + v8) = 0xF000000000000007;
  sub_19344E6DC(a1 + v9, &qword_1EAE3D3C8, &qword_193963848);
  v25 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_16_1(a1 + v9, v26, v27, v25);
  OUTLINED_FUNCTION_121_4();
  sub_1934354B4(*(a1 + v12));
  *(a1 + v12) = 0xF000000000000007;
  OUTLINED_FUNCTION_121_4();
  OUTLINED_FUNCTION_121_4();
  OUTLINED_FUNCTION_121_4();
  sub_19344E6DC(a1 + v32, &qword_1EAE3D3D0, &unk_193964150);
  v28 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
  OUTLINED_FUNCTION_81_6(v28);
  sub_19344E6DC(a1 + v33, &qword_1EAE3D3D8, &qword_193963850);
  v29 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
  OUTLINED_FUNCTION_81_6(v29);
  sub_19344E6DC(a1 + v34, &qword_1EAE3B948, &qword_193957C10);
  v30 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_81_6(v30);
  OUTLINED_FUNCTION_123_6(v35);
  sub_19344E6DC(v35, &qword_1EAE3D3E0, &qword_193963858);
  result = 0.0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 5) = 0u;
  v15[96] = -1;
  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v174 = a2;
  v175 = a1;
  v154 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v149 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v151 = v6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B950, &unk_193959140);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  v157 = v8;
  v9 = OUTLINED_FUNCTION_22_2();
  v159 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v9);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_289();
  v150 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v156 = v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3E8, &qword_193963B38);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v162 = v16;
  v17 = OUTLINED_FUNCTION_22_2();
  v163 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v17);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v153 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
  OUTLINED_FUNCTION_47(v20);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v158 = v22;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3F0, &qword_193963B40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v161 = v24;
  v25 = OUTLINED_FUNCTION_22_2();
  v168 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_289();
  v164 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
  OUTLINED_FUNCTION_47(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_53_1();
  v165 = v30;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3F8, &qword_193963B48);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_53_1();
  v167 = v32;
  v33 = OUTLINED_FUNCTION_22_2();
  v172 = type metadata accessor for MonotonicTimestamp(v33);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_289();
  v169 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v36);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_53_1();
  v170 = v38;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v148 - v40;
  type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5_1();
  v45 = v44 - v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
  OUTLINED_FUNCTION_47(v46);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v148 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D400, &qword_193963B50) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v148 - v52;
  v173 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  v54 = *(v50 + 56);
  sub_193448850();
  sub_193448850();
  OUTLINED_FUNCTION_31(v53);
  if (v55)
  {
    OUTLINED_FUNCTION_31(&v53[v54]);
    if (v55)
    {
      sub_19344E6DC(v53, &qword_1EAE3D3C0, &qword_193963840);
      goto LABEL_11;
    }

LABEL_9:
    v57 = &qword_1EAE3D400;
    v58 = &qword_193963B50;
    v59 = v53;
    goto LABEL_20;
  }

  sub_193448850();
  OUTLINED_FUNCTION_31(&v53[v54]);
  if (v55)
  {
    OUTLINED_FUNCTION_46_13();
    sub_193571CCC(v49, v56);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_44_11();
  sub_19356E794();
  OUTLINED_FUNCTION_43_10();
  sub_193571D78(v60, v61, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.Metadata);
  v62 = sub_19393C550();
  sub_193571CCC(v45, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
  sub_193571CCC(v49, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
  sub_19344E6DC(v53, &qword_1EAE3D3C0, &qword_193963840);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v63 = *(v171 + 48);
  v64 = &unk_193959120;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  v65 = v172;
  OUTLINED_FUNCTION_6_3(v41, 1, v172);
  if (v55)
  {
    OUTLINED_FUNCTION_31(&v41[v63]);
    if (v55)
    {
      sub_19344E6DC(v41, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_24;
    }

LABEL_19:
    v57 = &qword_1EAE3B958;
    v58 = &qword_193957B50;
    v59 = v41;
    goto LABEL_20;
  }

  v66 = v170;
  sub_193448850();
  OUTLINED_FUNCTION_31(&v41[v63]);
  if (v67)
  {
    OUTLINED_FUNCTION_57_5();
    sub_193571CCC(v66, v68);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_56_7();
  v70 = v169;
  sub_19356E794();
  OUTLINED_FUNCTION_55_8();
  sub_193571D78(v71, v72, &protocol conformance descriptor for MonotonicTimestamp);
  v65 = sub_19393C550();
  v64 = type metadata accessor for MonotonicTimestamp;
  sub_193571CCC(v70, type metadata accessor for MonotonicTimestamp);
  sub_193571CCC(v66, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v41, &qword_1EAE3B498, &unk_193959120);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  OUTLINED_FUNCTION_14_23();
  if (v55)
  {
    v74 = v73 & ~v65;
    OUTLINED_FUNCTION_35_15();
    if (v74)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v64);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v75)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    v76 = sub_19356E740();
    OUTLINED_FUNCTION_71_10(v76, v77, &type metadata for IntelligenceFlowResponseGeneration.RequestContext, v76);
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v64);
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  v78 = v167;
  v79 = *(v166 + 48);
  v64 = &qword_193963848;
  OUTLINED_FUNCTION_79_10();
  v80 = v78;
  OUTLINED_FUNCTION_79_10();
  v65 = v168;
  OUTLINED_FUNCTION_6_3(v78, 1, v168);
  if (v55)
  {
    OUTLINED_FUNCTION_31(v78 + v79);
    if (v55)
    {
      sub_19344E6DC(v78, &qword_1EAE3D3C8, &qword_193963848);
      goto LABEL_43;
    }

LABEL_41:
    v57 = &qword_1EAE3D3F8;
    v58 = &qword_193963B48;
    v59 = v80;
    goto LABEL_20;
  }

  v81 = v165;
  sub_193448850();
  OUTLINED_FUNCTION_31(v80 + v79);
  if (v82)
  {
    OUTLINED_FUNCTION_54_8();
    sub_193571CCC(v81, v83);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_53_12();
  v84 = v164;
  sub_19356E794();
  OUTLINED_FUNCTION_52_11();
  sub_193571D78(v85, v86, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
  v65 = sub_19393C550();
  v64 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1;
  sub_193571CCC(v84, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
  sub_193571CCC(v81, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
  sub_19344E6DC(v80, &qword_1EAE3D3C8, &qword_193963848);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  OUTLINED_FUNCTION_14_23();
  if (v55)
  {
    v88 = v87 & ~v65;
    OUTLINED_FUNCTION_35_15();
    if (v88)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v64);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v89)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    v90 = sub_19356E6EC();
    OUTLINED_FUNCTION_71_10(v90, v91, &type metadata for IntelligenceFlowResponseGeneration.OverrideContext, v90);
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v64);
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23();
  if (v55)
  {
    v93 = v92 & ~v65;
    OUTLINED_FUNCTION_35_15();
    if (v93)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v64);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v94)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    v95 = sub_19356E698();
    OUTLINED_FUNCTION_71_10(v95, v96, &type metadata for IntelligenceFlowResponseGeneration.ValidationContext, v95);
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v64);
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23();
  if (v55)
  {
    v98 = v97 & ~v65;
    OUTLINED_FUNCTION_35_15();
    if (v98)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v64);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v99)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    v100 = sub_19356E644();
    OUTLINED_FUNCTION_71_10(v100, v101, &type metadata for IntelligenceFlowResponseGeneration.CatalogContext, v100);
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v64);
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23();
  if (v55)
  {
    v103 = v102 & ~v65;
    OUTLINED_FUNCTION_35_15();
    if (v103)
    {
      goto LABEL_31;
    }

    sub_1934354B4(v64);
  }

  else
  {
    OUTLINED_FUNCTION_86_8();
    if (v104)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_20_17();
    v105 = sub_19356E5F0();
    OUTLINED_FUNCTION_71_10(v105, v106, &type metadata for IntelligenceFlowResponseGeneration.InferenceContext, v105);
    OUTLINED_FUNCTION_60_8();
    OUTLINED_FUNCTION_101_10();
    sub_1934354B4(v64);
    if ((v65 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_23();
  if (v55)
  {
    v108 = v107 & ~v65;
    OUTLINED_FUNCTION_35_15();
    if (!v108)
    {
      sub_1934354B4(v64);
      goto LABEL_73;
    }

LABEL_31:
    sub_1934354B4(v64);
    sub_1934354B4(v65);
    return 0;
  }

  OUTLINED_FUNCTION_86_8();
  if (v109)
  {
LABEL_30:
    OUTLINED_FUNCTION_35_15();
    sub_193438388(v64);

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_20_17();
  v110 = sub_19356E59C();
  OUTLINED_FUNCTION_71_10(v110, v111, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext, v110);
  OUTLINED_FUNCTION_60_8();
  OUTLINED_FUNCTION_101_10();
  sub_1934354B4(v64);
  if ((v65 & 1) == 0)
  {
    return 0;
  }

LABEL_73:
  v112 = *(v160 + 48);
  v113 = v161;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_6_3(v113, 1, v163);
  if (v55)
  {
    OUTLINED_FUNCTION_31(v113 + v112);
    if (v55)
    {
      sub_19344E6DC(v113, &qword_1EAE3D3D0, &unk_193964150);
      goto LABEL_83;
    }

LABEL_81:
    v57 = &qword_1EAE3D3F0;
    v58 = &qword_193963B40;
    v59 = v113;
    goto LABEL_20;
  }

  v114 = v158;
  sub_193448850();
  OUTLINED_FUNCTION_31(v113 + v112);
  if (v115)
  {
    OUTLINED_FUNCTION_51_10();
    sub_193571CCC(v114, v116);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_50_8();
  v117 = v153;
  sub_19356E794();
  OUTLINED_FUNCTION_49_8();
  sub_193571D78(v118, v119, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.GMSCallContext);
  v120 = sub_19393C550();
  sub_193571CCC(v117, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
  sub_193571CCC(v114, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
  sub_19344E6DC(v113, &qword_1EAE3D3D0, &unk_193964150);
  if ((v120 & 1) == 0)
  {
    return 0;
  }

LABEL_83:
  v121 = *(v155 + 48);
  v122 = v162;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_6_3(v122, 1, v159);
  if (!v55)
  {
    v123 = v162;
    sub_193448850();
    OUTLINED_FUNCTION_6_3(v123 + v121, 1, v159);
    if (!v124)
    {
      OUTLINED_FUNCTION_47_14();
      v126 = v162;
      v127 = v150;
      sub_19356E794();
      OUTLINED_FUNCTION_45_13();
      sub_193571D78(v128, v129, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      v130 = v156;
      v131 = sub_19393C550();
      sub_193571CCC(v127, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      sub_193571CCC(v130, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
      sub_19344E6DC(v126, &qword_1EAE3D3D8, &qword_193963850);
      if ((v131 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_93;
    }

    OUTLINED_FUNCTION_48_9();
    sub_193571CCC(v156, v125);
LABEL_91:
    v57 = &qword_1EAE3D3E8;
    v58 = &qword_193963B38;
    v59 = v162;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_6_3(&v162[v121], 1, v159);
  if (!v55)
  {
    goto LABEL_91;
  }

  sub_19344E6DC(v162, &qword_1EAE3D3D8, &qword_193963850);
LABEL_93:
  v132 = *(v152 + 48);
  v133 = v157;
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_79_10();
  OUTLINED_FUNCTION_6_3(v133, 1, v154);
  if (v55)
  {
    OUTLINED_FUNCTION_6_3(&v157[v132], 1, v154);
    if (v55)
    {
      sub_19344E6DC(v157, &qword_1EAE3B948, &qword_193957C10);
      goto LABEL_103;
    }
  }

  else
  {
    v134 = v157;
    sub_193448850();
    OUTLINED_FUNCTION_6_3(v134 + v132, 1, v154);
    if (!v135)
    {
      OUTLINED_FUNCTION_41_12();
      v137 = v157;
      v138 = v149;
      sub_19356E794();
      OUTLINED_FUNCTION_40_9();
      sub_193571D78(v139, v140, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
      v141 = v151;
      v142 = sub_19393C550();
      sub_193571CCC(v138, type metadata accessor for IntelligenceFlowIdentifiers);
      sub_193571CCC(v141, type metadata accessor for IntelligenceFlowIdentifiers);
      sub_19344E6DC(v137, &qword_1EAE3B948, &qword_193957C10);
      if ((v142 & 1) == 0)
      {
        return 0;
      }

LABEL_103:
      v143 = *(v173 + 76);
      memcpy(v184, (v175 + v143), sizeof(v184));
      v144 = *(v173 + 76);
      memcpy(__dst, (v174 + v144), sizeof(__dst));
      memcpy(v183, (v175 + v143), sizeof(v183));
      v145 = v184[96];
      memcpy(&v182[7], (v174 + v144), 0x60uLL);
      v146 = __dst[96];
      if (v184[96] == 255)
      {
        if (__dst[96] != 255)
        {
          OUTLINED_FUNCTION_79_10();
          OUTLINED_FUNCTION_79_10();
          goto LABEL_111;
        }

        OUTLINED_FUNCTION_120_4();
        v180[96] = -1;
        OUTLINED_FUNCTION_79_10();
        OUTLINED_FUNCTION_79_10();
        sub_19344E6DC(v180, &qword_1EAE3D3E0, &qword_193963858);
      }

      else
      {
        OUTLINED_FUNCTION_120_4();
        v180[96] = v145;
        memcpy(v179, v180, sizeof(v179));
        if (v146 == 255)
        {
          memcpy(v178, v180, 0x61uLL);
          OUTLINED_FUNCTION_79_10();
          OUTLINED_FUNCTION_79_10();
          OUTLINED_FUNCTION_79_10();
          sub_19356E4F4(v178);
LABEL_111:
          memcpy(v180, v183, 0x60uLL);
          v180[96] = v145;
          memcpy(v181, v182, 0x67uLL);
          v181[103] = v146;
          v57 = &unk_1EAE3D408;
          v58 = &unk_193963B58;
          v59 = v180;
          goto LABEL_20;
        }

        memcpy(v178, (v174 + v144), 0x60uLL);
        v178[96] = v146;
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_102_9();
        OUTLINED_FUNCTION_102_9();
        sub_19356E548();
        v147 = sub_19393C550();
        memcpy(v176, v178, 0x61uLL);
        sub_19356E4F4(v176);
        memcpy(v177, v179, 0x61uLL);
        sub_19356E4F4(v177);
        memcpy(v178, v183, 0x60uLL);
        v178[96] = v145;
        sub_19344E6DC(v178, &qword_1EAE3D3E0, &qword_193963858);
        if ((v147 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    OUTLINED_FUNCTION_42_16();
    sub_193571CCC(v151, v136);
  }

  v57 = &qword_1EAE3B950;
  v58 = &unk_193959140;
  v59 = v157;
LABEL_20:
  sub_19344E6DC(v59, v57, v58);
  return 0;
}

unint64_t sub_19356E548()
{
  result = qword_1EAE3D410;
  if (!qword_1EAE3D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D410);
  }

  return result;
}

unint64_t sub_19356E59C()
{
  result = qword_1EAE3D428;
  if (!qword_1EAE3D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D428);
  }

  return result;
}

unint64_t sub_19356E5F0()
{
  result = qword_1EAE3D430;
  if (!qword_1EAE3D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D430);
  }

  return result;
}

unint64_t sub_19356E644()
{
  result = qword_1EAE3D438;
  if (!qword_1EAE3D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D438);
  }

  return result;
}

unint64_t sub_19356E698()
{
  result = qword_1EAE3D440;
  if (!qword_1EAE3D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D440);
  }

  return result;
}

unint64_t sub_19356E6EC()
{
  result = qword_1EAE3D448;
  if (!qword_1EAE3D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D448);
  }

  return result;
}

unint64_t sub_19356E740()
{
  result = qword_1EAE3D458;
  if (!qword_1EAE3D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D458);
  }

  return result;
}

uint64_t sub_19356E794()
{
  OUTLINED_FUNCTION_91_0();
  v2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t IntelligenceFlowResponseGeneration.hash(into:)(uint64_t a1)
{
  v95 = a1;
  v103 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  v93 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  v102 = v6;
  v7 = OUTLINED_FUNCTION_22_2();
  v101 = type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_289();
  v92 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D8, &qword_193963850);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  v100 = v12;
  v13 = OUTLINED_FUNCTION_22_2();
  v99 = type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v13);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_289();
  v91 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3D0, &unk_193964150);
  OUTLINED_FUNCTION_47(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53_1();
  v98 = v18;
  v19 = OUTLINED_FUNCTION_22_2();
  v97 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v19);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_289();
  v90 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C8, &qword_193963848);
  OUTLINED_FUNCTION_47(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53_1();
  v96 = v24;
  v25 = OUTLINED_FUNCTION_22_2();
  v94 = type metadata accessor for MonotonicTimestamp(v25);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_289();
  v89 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v88 - v30;
  v32 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_1();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D3C0, &qword_193963840);
  OUTLINED_FUNCTION_47(v37);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v88 - v39;
  v41 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v40, 1, v32);
  if (v42)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_44_11();
    sub_19356E794();
    sub_19393CAD0();
    OUTLINED_FUNCTION_43_10();
    sub_193571D78(v43, v44, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.Metadata);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_46_13();
    sub_193571CCC(v36, v45);
  }

  v46 = v1;
  sub_193448850();
  OUTLINED_FUNCTION_6_3(v31, 1, v94);
  v47 = v99;
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_56_7();
    v48 = v89;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_55_8();
    sub_193571D78(v49, v50, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_57_5();
    sub_193571CCC(v48, v51);
  }

  OUTLINED_FUNCTION_27_15();
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F098();
    v52 = OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8(v52, &type metadata for IntelligenceFlowResponseGeneration.RequestContext);
    OUTLINED_FUNCTION_99_10();
  }

  v53 = v97;
  sub_193448850();
  v54 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v54, v55, v53);
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_53_12();
    v56 = v90;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_52_11();
    sub_193571D78(v57, v58, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_54_8();
    sub_193571CCC(v56, v59);
  }

  OUTLINED_FUNCTION_27_15();
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F0EC();
    v60 = OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8(v60, &type metadata for IntelligenceFlowResponseGeneration.OverrideContext);
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15();
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F140();
    v61 = OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8(v61, &type metadata for IntelligenceFlowResponseGeneration.ValidationContext);
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15();
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F194();
    v62 = OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8(v62, &type metadata for IntelligenceFlowResponseGeneration.CatalogContext);
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15();
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F1E8();
    v63 = OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8(v63, &type metadata for IntelligenceFlowResponseGeneration.InferenceContext);
    OUTLINED_FUNCTION_99_10();
  }

  OUTLINED_FUNCTION_27_15();
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_66_10();
    sub_19356F23C();
    v64 = OUTLINED_FUNCTION_100_10();
    OUTLINED_FUNCTION_65_8(v64, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext);
    OUTLINED_FUNCTION_99_10();
  }

  v65 = v103;
  v66 = v101;
  sub_193448850();
  v67 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v67, v68, v47);
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_50_8();
    v69 = v91;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_49_8();
    sub_193571D78(v70, v71, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.GMSCallContext);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_51_10();
    sub_193571CCC(v69, v72);
  }

  sub_193448850();
  v73 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v73, v74, v66);
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_47_14();
    v75 = v92;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_45_13();
    sub_193571D78(v76, v77, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_48_9();
    sub_193571CCC(v75, v78);
  }

  sub_193448850();
  v79 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v79, v80, v65);
  if (v42)
  {
    OUTLINED_FUNCTION_87_9();
  }

  else
  {
    OUTLINED_FUNCTION_41_12();
    v81 = v93;
    sub_19356E794();
    OUTLINED_FUNCTION_85_11();
    OUTLINED_FUNCTION_40_9();
    sub_193571D78(v82, v83, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
    OUTLINED_FUNCTION_84_7();
    sub_19393C540();
    OUTLINED_FUNCTION_42_16();
    sub_193571CCC(v81, v84);
  }

  v85 = (v1 + *(v41 + 76));
  memcpy(__dst, (v46 + *(v41 + 76)), sizeof(__dst));
  v86 = v85[96];
  if (v86 == 255)
  {
    return OUTLINED_FUNCTION_87_9();
  }

  memcpy(v104, v85, 0x60uLL);
  v104[96] = v86;
  OUTLINED_FUNCTION_85_11();
  memcpy(v105, __dst, 0x60uLL);
  v105[96] = v86;
  sub_19356C6FC(v105, v106);
  sub_19356F290();
  sub_19393C540();
  memcpy(v106, v104, 0x61uLL);
  return sub_19356E4F4(v106);
}

unint64_t sub_19356F098()
{
  result = qword_1EAE3D470;
  if (!qword_1EAE3D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D470);
  }

  return result;
}

unint64_t sub_19356F0EC()
{
  result = qword_1EAE3D480;
  if (!qword_1EAE3D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D480);
  }

  return result;
}

unint64_t sub_19356F140()
{
  result = qword_1EAE3D488;
  if (!qword_1EAE3D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D488);
  }

  return result;
}

unint64_t sub_19356F194()
{
  result = qword_1EAE3D490;
  if (!qword_1EAE3D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D490);
  }

  return result;
}

unint64_t sub_19356F1E8()
{
  result = qword_1EAE3D498;
  if (!qword_1EAE3D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D498);
  }

  return result;
}

unint64_t sub_19356F23C()
{
  result = qword_1EAE3D4A0;
  if (!qword_1EAE3D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4A0);
  }

  return result;
}

unint64_t sub_19356F290()
{
  result = qword_1EAE3D4B8;
  if (!qword_1EAE3D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4B8);
  }

  return result;
}

uint64_t IntelligenceFlowResponseGeneration.ResponseSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.ResponseSource.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v61, v62, v63, v64, v65, v66);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v67 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v67, v68, v69, v70, &qword_1EAE3D5E8, &qword_193963E08);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v71, v72, v73, v74, v75, v76);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v77, v78, v79, v80, v81, v82);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v83 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v83, v84, v85, v86, &qword_1EAE3D5E8, &qword_193963E08);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v87, v88, v89, v90, v91, v92);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v93 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v93, v94, v95, v96, &qword_1EAE3D5E8, &qword_193963E08);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v0 + 8 > (v51 >> 1))
  {
    OUTLINED_FUNCTION_39(v51);
    OUTLINED_FUNCTION_31_17();
    v47 = sub_1934B0FCC(v97, v98, v99, v100, v101, v102);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v0 + 9 > (v57 >> 1))
  {
    v103 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v103, v104, v105, v106, &qword_1EAE3D5E8, &qword_193963E08);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  return OUTLINED_FUNCTION_89_3(v58, v59);
}

uint64_t IntelligenceFlowResponseGeneration.ResponseSource.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_64_7();
      break;
    case 2:
      result = OUTLINED_FUNCTION_63_8();
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_159();
      break;
    case 5:
      result = 0x6C65646F4D676C4ELL;
      break;
    case 6:
      result = 0x7070416E49;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowResponseGeneration.ResponseSource.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1819242324, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_141_0();
      v8 = v4 && v0 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_9(v7, 0xE800000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_96_10();
        v10 = v4 && v0 == 0xE800000000000000;
        if (v10 || (OUTLINED_FUNCTION_0_9(v9, 0xE800000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_165_2();
          v13 = v1 == v11 && v0 == v12;
          if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_159();
            v16 = v1 == v14 && v0 == v15;
            if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v17 = OUTLINED_FUNCTION_95_7();
              v18 = v4 && v0 == 0xE800000000000000;
              if (v18 || (OUTLINED_FUNCTION_0_9(v17, 0xE800000000000000) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v19 = v1 == 0x7070416E49 && v0 == 0xE500000000000000;
                if (v19 || (OUTLINED_FUNCTION_0_9(0x7070416E49, 0xE500000000000000) & 1) != 0)
                {

                  v5 = 6;
                }

                else if (v1 == 0xD000000000000010 && 0x8000000193A1E940 == v0)
                {

                  v5 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A1E940);
                  OUTLINED_FUNCTION_89();
                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowResponseGeneration.OverrideType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.OverrideType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6944676E69727453;
  if (*v0 != 1)
  {
    v1 = 0x6F6C616944746143;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626C6C6146;
  }
}

uint64_t IntelligenceFlowResponseGeneration.FallbackReason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.FallbackReason.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v73, v74, v75, v76, v77, v78);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v79 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v79, v80, v81, v82, &qword_1EAE3D5D8, &qword_193963DF8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v83, v84, v85, v86, v87, v88);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v89, v90, v91, v92, v93, v94);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v95 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v95, v96, v97, v98, &qword_1EAE3D5D8, &qword_193963DF8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v99, v100, v101, v102, v103, v104);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v105 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v105, v106, v107, v108, &qword_1EAE3D5D8, &qword_193963DF8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v0 + 8 > (v51 >> 1))
  {
    OUTLINED_FUNCTION_39(v51);
    OUTLINED_FUNCTION_31_17();
    v47 = sub_1934B0FCC(v109, v110, v111, v112, v113, v114);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v0 + 9 > (v57 >> 1))
  {
    v115 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v115, v116, v117, v118, &qword_1EAE3D5D8, &qword_193963DF8);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if (v0 + 10 > (v63 >> 1))
  {
    OUTLINED_FUNCTION_39(v63);
    OUTLINED_FUNCTION_31_17();
    v59 = sub_1934B0FCC(v119, v120, v121, v122, v123, v124);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  if (v0 + 11 > (v69 >> 1))
  {
    v125 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_85(v125, v126, v127, v128, &qword_1EAE3D5D8, &qword_193963DF8);
    v68 = v65;
  }

  OUTLINED_FUNCTION_47_5(v65, v66, v67, v68);
  return OUTLINED_FUNCTION_89_3(v70, v71);
}

void IntelligenceFlowResponseGeneration.FallbackReason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 8:
      case 9:
        return;
      case 2:
        OUTLINED_FUNCTION_158();
        break;
      case 3:
        OUTLINED_FUNCTION_73_7();
        break;
      case 4:
        OUTLINED_FUNCTION_59_10();
        break;
      case 5:
        OUTLINED_FUNCTION_58_9();
        break;
      case 6:
        OUTLINED_FUNCTION_75();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_74_7();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowResponseGeneration.FallbackReason.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_83_8();
    v8 = v5 && v7 == v0;
    if (v8 || (OUTLINED_FUNCTION_0_9(v2 + 1, v7) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_61_7();
      v11 = v5 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_158();
        v14 = v1 == v12 && v0 == v13;
        if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v15 = OUTLINED_FUNCTION_118_6();
          v17 = v5 && v16 == v0;
          if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v18 = OUTLINED_FUNCTION_142_0();
            v20 = v5 && v19 == v0;
            if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v21 = OUTLINED_FUNCTION_78_8();
              v23 = v5 && v0 == v22;
              if (v23 || (OUTLINED_FUNCTION_0_9(v21, 0xEA00000000006E65) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v24 = OUTLINED_FUNCTION_138();
                v26 = v5 && v25 == v0;
                if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                {

                  v6 = 6;
                }

                else
                {
                  v27 = v1 == v2 && 0x8000000193A19960 == v0;
                  if (v27 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A19960) & 1) != 0)
                  {

                    v6 = 7;
                  }

                  else
                  {
                    v28 = OUTLINED_FUNCTION_78_5();
                    v30 = v5 && v29 == v0;
                    if (v30 || (OUTLINED_FUNCTION_0_9(v28, v29) & 1) != 0)
                    {

                      v6 = 8;
                    }

                    else if (v1 == v2 + 7 && 0x8000000193A1E960 == v0)
                    {

                      v6 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9(v2 + 7, 0x8000000193A1E960);
                      OUTLINED_FUNCTION_89();
                      v6 = 9;
                      if ((v1 & 1) == 0)
                      {
                        v6 = 0;
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

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t IntelligenceFlowResponseGeneration.FatalError.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

char *static IntelligenceFlowResponseGeneration.FatalError.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v4 = sub_193571B68(v0, v1, v2, v3);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_31_17();
    v4 = sub_193571B68(v8, v9, v10, v11);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = 0;
  return v4;
}

uint64_t IntelligenceFlowResponseGeneration.FatalError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 != 0x6E776F6E6B6E55 || a2 != 0xE700000000000000)
  {
    sub_19393CA30();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.RequestContext.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = *a1 >> 62;
  if (!v13)
  {
    if (v12 >> 62)
    {
LABEL_13:
      v18 = 0;
      return v18 & 1;
    }

    v19 = *(v12 + 16);
    LOBYTE(v34) = *(v11 + 16);
    LOBYTE(v29) = v19;

    v18 = static IntelligenceFlowResponseGeneration.RequestStarted.== infix(_:_:)(&v34, &v29);
    goto LABEL_8;
  }

  if (v13 == 1)
  {
    OUTLINED_FUNCTION_113_6();
    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = swift_projectBox();
    v16 = swift_projectBox();
    sub_193571C68(v15, v10);
    sub_193571C68(v16, v8);

    static IntelligenceFlowResponseGeneration.RequestEnded.== infix(_:_:)();
    v18 = v17;
    sub_193571CCC(v8, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
    sub_193571CCC(v10, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
LABEL_8:

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_112_8();
  if (!v14)
  {
    goto LABEL_13;
  }

  v20 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v21 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
  v22 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v23 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v26 = *(v23 + 48);
  v27 = *(v23 + 52);
  v34 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v35 = v22;
  v36 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v38 = v21;
  v37 = v20;
  v29 = v24;
  v30 = v25;
  v31 = *(v23 + 32);
  v33 = v27;
  v32 = v26;

  v18 = static IntelligenceFlowResponseGeneration.RequestFailed.== infix(_:_:)(&v34);

LABEL_12:

  return v18 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.RequestContext.hash(into:)(uint64_t a1)
{
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = *v1 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = swift_projectBox();
      sub_193571C68(v7, v5);
      sub_193571D78(&qword_1EAE3D4C8, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded, &protocol conformance descriptor for IntelligenceFlowResponseGeneration.RequestEnded);
      sub_19393C540();
      return sub_193571CCC(v5, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
    }

    OUTLINED_FUNCTION_6_7((*v1 & 0x3FFFFFFFFFFFFFFFLL));
    sub_193571D24();
  }

  else
  {
    sub_193571DC0();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowResponseGeneration.OverrideContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_88_8();
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_113_6();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = v0 & 0x3FFFFFFFFFFFFFFFLL;
      v44 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *(v5 + 16);
      LOWORD(v37) = *(v5 + 24);
      v40 = *(v5 + 32);

      v14 = OUTLINED_FUNCTION_72_7(v6, v7, v8, v9, v10, v11, v12, v13, v36, v37, v40, *(&v40 + 1), v42, v44);
      static IntelligenceFlowResponseGeneration.OverrideEnded.== infix(_:_:)(v14, v15);
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (!v4)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_16_18();
      OUTLINED_FUNCTION_22_19();
      OUTLINED_FUNCTION_67_8();

      v33 = OUTLINED_FUNCTION_72_7(v25, v26, v27, v28, v29, v30, v31, v32, v35, v37, v39, v41, v42, v43);
      static IntelligenceFlowResponseGeneration.OverrideFailed.== infix(_:_:)(v33);
    }

    OUTLINED_FUNCTION_98_10();
  }

  else
  {
    if (v0 >> 62)
    {
LABEL_13:
      v1 = 0;
      return v1 & 1;
    }

    v45 = *(v2 + 16);
    LOBYTE(v35) = *(v0 + 16);
    v38 = *(v0 + 24);

    v24 = OUTLINED_FUNCTION_72_7(v16, v17, v18, v19, v20, v21, v22, v23, v35, v38, *(&v38 + 1), v41, v42, v45);
    static IntelligenceFlowResponseGeneration.OverrideStarted.== infix(_:_:)(v24);
    OUTLINED_FUNCTION_98_10();
  }

  return v1 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.OverrideContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      v4 = sub_193571E68();
      v5 = v4;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded;
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      v4 = sub_193571E14();
      v5 = v4;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.OverrideFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_8(v0);
    v4 = sub_193571EBC();
    v5 = v4;
    v6 = &type metadata for IntelligenceFlowResponseGeneration.OverrideStarted;
  }

  return OUTLINED_FUNCTION_154_0(v4, v6, v5);
}

uint64_t IntelligenceFlowResponseGeneration.ValidationContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      OUTLINED_FUNCTION_105_9();
      v4 = sub_193571F64();
      v5 = v4;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.ValidationEnded;
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      v4 = sub_193571F10();
      v5 = v4;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.ValidationFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_8(v0);
    v4 = sub_193571FB8();
    v5 = v4;
    v6 = &type metadata for IntelligenceFlowResponseGeneration.ValidationStarted;
  }

  return OUTLINED_FUNCTION_154_0(v4, v6, v5);
}

uint64_t sub_19357063C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a1 >> 62;
  if (!v7)
  {
    if (!(v6 >> 62))
    {
      v51 = *(v5 + 16);
      LOBYTE(v42) = *(v6 + 16);
      v44 = *(v6 + 24);

      v28 = OUTLINED_FUNCTION_72_7(v20, v21, v22, v23, v24, v25, v26, v27, v42, v44, *(&v44 + 1), v47, v48, v51);
      v18 = a3(v28);

      goto LABEL_9;
    }

LABEL_10:
    v18 = 0;
    return v18 & 1;
  }

  if (v7 != 1)
  {
    if (v6 >> 62 == 2)
    {
      OUTLINED_FUNCTION_22_19();
      v46 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      BYTE4(v48) = v30;
      LODWORD(v48) = v31;

      v40 = OUTLINED_FUNCTION_72_7(v32, v33, v34, v35, v36, v37, v38, v39, v42, v43, v46, *(&v46 + 1), v48, v49);
      v18 = a5(v40);

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v6 >> 62 != 1)
  {
    goto LABEL_10;
  }

  v50 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v42) = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

  v17 = OUTLINED_FUNCTION_72_7(v9, v10, v11, v12, v13, v14, v15, v16, v42, v43, v45, v47, v48, v50);
  v18 = a4(v17);

LABEL_9:

  return v18 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.CatalogContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      OUTLINED_FUNCTION_105_9();
      v4 = sub_193572060();
      v5 = v4;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.CatalogEnded;
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v2);
      v4 = sub_19357200C();
      v5 = v4;
      v6 = &type metadata for IntelligenceFlowResponseGeneration.CatalogFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_69_8(v0);
    v4 = sub_1935720B4();
    v5 = v4;
    v6 = &type metadata for IntelligenceFlowResponseGeneration.CatalogStarted;
  }

  return OUTLINED_FUNCTION_154_0(v4, v6, v5);
}

uint64_t static IntelligenceFlowResponseGeneration.InferenceContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_88_8();
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_113_6();
      if (!v4)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_119_5();
      LOBYTE(__dst[0]) = v5;
      LOBYTE(v14[0]) = v6;

      static IntelligenceFlowResponseGeneration.InferenceEnded.== infix(_:_:)(__dst, v14);
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (!v4)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_16_18();
      *&__dst[0] = v7;
      BYTE8(__dst[0]) = v8;
      __dst[1] = *(v2 + 32);
      BYTE4(__dst[2]) = v9;
      LODWORD(__dst[2]) = v10;
      v14[0] = v11;
      LOBYTE(v14[1]) = v12;
      OUTLINED_FUNCTION_67_8();

      static IntelligenceFlowResponseGeneration.InferenceFailed.== infix(_:_:)(__dst);
    }

    OUTLINED_FUNCTION_98_10();
  }

  else
  {
    if (v0 >> 62)
    {
LABEL_13:
      v1 = 0;
      return v1 & 1;
    }

    memcpy(v14, (v0 + 16), sizeof(v14));
    memcpy(__dst, (v2 + 16), sizeof(__dst));

    static IntelligenceFlowResponseGeneration.InferenceStarted.== infix(_:_:)(__dst, v14);
    OUTLINED_FUNCTION_98_10();
  }

  return v1 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.InferenceContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v1)
  {
    OUTLINED_FUNCTION_92_5();
    if (v3)
    {
      LOBYTE(__dst[0]) = v2[1].n128_u8[0];
      sub_19357215C();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_6_7(v2);
      *&__dst[0] = v5;
      BYTE8(__dst[0]) = v6;
      __dst[1] = v4;
      BYTE4(__dst[2]) = v7;
      LODWORD(__dst[2]) = v8;
      sub_193572108();
    }
  }

  else
  {
    memcpy(__dst, (v0 + 16), sizeof(__dst));
    memcpy(v10, __dst, sizeof(v10));
    sub_1935721B0();
  }

  return sub_19393C540();
}

uint64_t static IntelligenceFlowResponseGeneration.HallucinationDetectionContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_88_8();
  if (v3)
  {
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_113_6();
      if (!v4)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_119_5();
      v43 = v5;
      LOBYTE(v37) = v6;

      v15 = OUTLINED_FUNCTION_72_7(v7, v8, v9, v10, v11, v12, v13, v14, v37, v38, v39, v40, v41, v43);
      static IntelligenceFlowResponseGeneration.HallucinationDetectionEnded.== infix(_:_:)(v15, v16);
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (!v4)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_16_18();
      OUTLINED_FUNCTION_22_19();
      OUTLINED_FUNCTION_67_8();

      v35 = OUTLINED_FUNCTION_72_7(v27, v28, v29, v30, v31, v32, v33, v34, v37, v38, v39, v40, v41, v42);
      static IntelligenceFlowResponseGeneration.HallucinationDetectionFailed.== infix(_:_:)(v35);
    }

    OUTLINED_FUNCTION_98_10();
  }

  else
  {
    if (v0 >> 62)
    {
LABEL_13:
      v1 = 0;
      return v1 & 1;
    }

    v44 = *(v2 + 16);
    LOBYTE(v37) = *(v0 + 16);

    v25 = OUTLINED_FUNCTION_72_7(v17, v18, v19, v20, v21, v22, v23, v24, v37, v38, v39, v40, v41, v44);
    static IntelligenceFlowResponseGeneration.HallucinationDetectionStarted.== infix(_:_:)(v25, v26);
    OUTLINED_FUNCTION_98_10();
  }

  return v1 & 1;
}

uint64_t IntelligenceFlowResponseGeneration.HallucinationDetectionContext.hash(into:)()
{
  OUTLINED_FUNCTION_34_16();
  if (v0)
  {
    OUTLINED_FUNCTION_92_5();
    if (v2)
    {
      OUTLINED_FUNCTION_105_9();
      v3 = sub_193572258();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionEnded;
    }

    else
    {
      OUTLINED_FUNCTION_2_36(v1);
      v3 = sub_193572204();
      v4 = v3;
      v5 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionFailed;
    }
  }

  else
  {
    OUTLINED_FUNCTION_105_9();
    v3 = sub_1935722AC();
    v4 = v3;
    v5 = &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionStarted;
  }

  return OUTLINED_FUNCTION_154_0(v3, v5, v4);
}

BOOL static IntelligenceFlowResponseGeneration.Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_123_6(&v207);
  memcpy(__dst, v0, 0x61uLL);
  OUTLINED_FUNCTION_123_6(v221);
  memcpy(v222, v0, sizeof(v222));
  v9 = v210;
  switch(v219)
  {
    case 1:
      if (LOBYTE(__dst[6]) != 1)
      {
        goto LABEL_14;
      }

      v194 = v207;
      LOWORD(v195) = v208 & 0x1FF;
      v185 = *&__dst[0];
      LOWORD(v186) = WORD4(__dst[0]) & 0x1FF;
      v135 = static IntelligenceFlowResponseGeneration.Event.Fallback.== infix(_:_:)(&v194, &v185);
      sub_19344E6DC(v221, &qword_1EAE3D550, &qword_193963B60);
      return v135;
    case 2:
      if (LOBYTE(__dst[6]) != 2)
      {
        goto LABEL_13;
      }

      LOWORD(v186) = v208 & 0x1FF;
      WORD4(v184[0]) = WORD4(__dst[0]) & 0x1FF;
      v57 = OUTLINED_FUNCTION_90_11(v210, v2, v3, v4, v5, v6, v7, v8, *&__dst[0], *(&v184[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v207, v186, v209, v210, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
      v65 = OUTLINED_FUNCTION_91_6(v57, v58, v59, v60, v61, v62, v63, v64, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      v73 = OUTLINED_FUNCTION_91_6(v65, v66, v67, v68, v69, v70, v71, v72, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      v81 = OUTLINED_FUNCTION_90_11(v73, v74, v75, v76, v77, v78, v79, v80, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
      v89 = OUTLINED_FUNCTION_109(v81, v82, v83, v84, v85, v86, v87, v88, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
      v56 = static IntelligenceFlowResponseGeneration.Event.Override.== infix(_:_:)(v89, v90);
      goto LABEL_16;
    case 3:
      if (LOBYTE(__dst[6]) != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_68_8();
      HIWORD(v186) = v91;
      v101 = OUTLINED_FUNCTION_90_11(v92, v93, v94, v95, v96, v97, v98, v99, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v100, v92, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
      v109 = OUTLINED_FUNCTION_91_6(v101, v102, v103, v104, v105, v106, v107, v108, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      v117 = OUTLINED_FUNCTION_91_6(v109, v110, v111, v112, v113, v114, v115, v116, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
      v125 = OUTLINED_FUNCTION_90_11(v117, v118, v119, v120, v121, v122, v123, v124, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
      v133 = OUTLINED_FUNCTION_109(v125, v126, v127, v128, v129, v130, v131, v132, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
      v56 = static IntelligenceFlowResponseGeneration.Event.ModelInference.== infix(_:_:)(v133, v134);
      goto LABEL_16;
    case 4:
      if (LOBYTE(__dst[6]) == 4)
      {
        OUTLINED_FUNCTION_68_8();
        HIWORD(v186) = v10;
        LOBYTE(v187) = v11;
        LOBYTE(v184[1]) = v12;
        v22 = OUTLINED_FUNCTION_90_11(v13, v14, v15, v16, v17, v18, v19, v20, *&__dst[0], *(&__dst[0] + 1), *&v184[1], *(&__dst[1] + 1), *&__dst[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v13, v21, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
        v30 = OUTLINED_FUNCTION_91_6(v22, v23, v24, v25, v26, v27, v28, v29, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
        v38 = OUTLINED_FUNCTION_91_6(v30, v31, v32, v33, v34, v35, v36, v37, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
        v46 = OUTLINED_FUNCTION_90_11(v38, v39, v40, v41, v42, v43, v44, v45, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
        v54 = OUTLINED_FUNCTION_109(v46, v47, v48, v49, v50, v51, v52, v53, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
        v56 = static IntelligenceFlowResponseGeneration.Event.SafetyCheck.== infix(_:_:)(v54, v55);
        goto LABEL_16;
      }

LABEL_12:

LABEL_13:

      goto LABEL_14;
    default:
      if (LOBYTE(__dst[6]))
      {
        OUTLINED_FUNCTION_123_6(&v194);
        v9 = sub_19356C9B8(&v194, &v185);
LABEL_14:
        OUTLINED_FUNCTION_90_11(v9, v2, v3, v4, v5, v6, v7, v8, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
        sub_19344E6DC(v221, &qword_1EAE3D550, &qword_193963B60);
        return 0;
      }

      else
      {
        OUTLINED_FUNCTION_68_8();
        HIWORD(v186) = v136;
        v187 = v138;
        v188 = v137;
        v190 = *(v1 + 40);
        v191 = *(v1 + 56);
        v192 = *(v1 + 72);
        v139 = *(v1 + 88);
        v189 = v140;
        v193 = v139;
        v141 = memcpy(v184, v0, sizeof(v184));
        v149 = OUTLINED_FUNCTION_90_11(v141, v142, v143, v144, v145, v146, v147, v148, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
        v157 = OUTLINED_FUNCTION_91_6(v149, v150, v151, v152, v153, v154, v155, v156, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
        v165 = OUTLINED_FUNCTION_91_6(v157, v158, v159, v160, v161, v162, v163, v164, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
        v173 = OUTLINED_FUNCTION_90_11(v165, v166, v167, v168, v169, v170, v171, v172, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185, v186, v187, v188, v189, v190, *(&v190 + 1), v191, *(&v191 + 1), v192, *(&v192 + 1), v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
        v181 = OUTLINED_FUNCTION_109(v173, v174, v175, v176, v177, v178, v179, v180, *&v184[0], *(&v184[0] + 1), *&v184[1], *(&v184[1] + 1), *&v184[2], *(&v184[2] + 1), *&v184[3], *(&v184[3] + 1), *&v184[4], *(&v184[4] + 1), *&v184[5], *(&v184[5] + 1), v185);
        v56 = static IntelligenceFlowResponseGeneration.Event.Generation.== infix(_:_:)(v181, v182);
LABEL_16:
        v135 = v56;
        sub_19344E6DC(v221, &qword_1EAE3D550, &qword_193963B60);
        sub_19356E4F4(__dst);
        sub_19356E4F4(&v207);
      }

      return v135;
  }
}

uint64_t IntelligenceFlowResponseGeneration.Event.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(*(v4 + 96))
  {
    case 1:
      sub_1935723FC();
      break;
    case 2:
      sub_1935723A8();
      break;
    case 3:
      OUTLINED_FUNCTION_28_13();
      sub_193572354();
      break;
    case 4:
      OUTLINED_FUNCTION_28_13();
      sub_193572300();
      break;
    default:
      OUTLINED_FUNCTION_28_13();
      sub_193572450();
      break;
  }

  return sub_19393C540();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.Source.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.Event.Generation.Source.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v54 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v54, v55, v56, v57, &qword_1EAE3D5C8, &qword_193963DE8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v58, v59, v60, v61, v62, v63);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v29);
    OUTLINED_FUNCTION_31_17();
    v25 = sub_1934B0FCC(v64, v65, v66, v67, v68, v69);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v70 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v70, v71, v72, v73, &qword_1EAE3D5C8, &qword_193963DE8);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v39);
    OUTLINED_FUNCTION_31_17();
    v35 = sub_1934B0FCC(v74, v75, v76, v77, v78, v79);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v80 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v80, v81, v82, v83, &qword_1EAE3D5C8, &qword_193963DE8);
    v43 = v40;
  }

  OUTLINED_FUNCTION_47_5(v40, v41, v42, v43);
  return OUTLINED_FUNCTION_89_3(v45, v46);
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.Source.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_64_7();
      break;
    case 2:
      result = OUTLINED_FUNCTION_63_8();
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_159();
      break;
    case 5:
      result = 0x6C65646F4D676C4ELL;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowResponseGeneration.Event.Generation.Source.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1819242324, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_141_0();
      v8 = v4 && v0 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_9(v7, 0xE800000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_96_10();
        v10 = v4 && v0 == 0xE800000000000000;
        if (v10 || (OUTLINED_FUNCTION_0_9(v9, 0xE800000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_165_2();
          v13 = v1 == v11 && v0 == v12;
          if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_159();
            v16 = v1 == v14 && v0 == v15;
            if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v17 = OUTLINED_FUNCTION_95_7();
              if (v4 && v0 == 0xE800000000000000)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_0_9(v17, 0xE800000000000000);
                OUTLINED_FUNCTION_89();
                v5 = 5;
                if ((v1 & 1) == 0)
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowResponseGeneration.Event.Fallback.Reason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowResponseGeneration.Event.Fallback.Reason.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v73 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v73, v74, v75, v76, &qword_1EAE3D5C0, &qword_193963DE0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v77, v78, v79, v80, v81, v82);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v83, v84, v85, v86, v87, v88);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v89 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v89, v90, v91, v92, &qword_1EAE3D5C0, &qword_193963DE0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v93, v94, v95, v96, v97, v98);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v99 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v99, v100, v101, v102, &qword_1EAE3D5C0, &qword_193963DE0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v0 + 8 > (v51 >> 1))
  {
    OUTLINED_FUNCTION_39(v51);
    OUTLINED_FUNCTION_31_17();
    v47 = sub_1934B0FCC(v103, v104, v105, v106, v107, v108);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v0 + 9 > (v57 >> 1))
  {
    v109 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v109, v110, v111, v112, &qword_1EAE3D5C0, &qword_193963DE0);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if (v0 + 10 > (v63 >> 1))
  {
    OUTLINED_FUNCTION_39(v63);
    OUTLINED_FUNCTION_31_17();
    v59 = sub_1934B0FCC(v113, v114, v115, v116, v117, v118);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  return OUTLINED_FUNCTION_38_1(v64, v65);
}

void IntelligenceFlowResponseGeneration.Event.Fallback.Reason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 8:
        return;
      case 2:
        OUTLINED_FUNCTION_158();
        break;
      case 3:
        OUTLINED_FUNCTION_73_7();
        break;
      case 4:
        OUTLINED_FUNCTION_59_10();
        break;
      case 5:
        OUTLINED_FUNCTION_58_9();
        break;
      case 6:
        OUTLINED_FUNCTION_75();
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_74_7();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowResponseGeneration.Event.Fallback.Reason.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_83_8();
    v8 = v5 && v7 == v0;
    if (v8 || (OUTLINED_FUNCTION_0_9(v2 + 1, v7) & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_61_7();
      v11 = v5 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
      {

        v6 = 1;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_158();
        v14 = v1 == v12 && v0 == v13;
        if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v15 = OUTLINED_FUNCTION_118_6();
          v17 = v5 && v16 == v0;
          if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v18 = OUTLINED_FUNCTION_142_0();
            v20 = v5 && v19 == v0;
            if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v21 = OUTLINED_FUNCTION_78_8();
              v23 = v5 && v0 == v22;
              if (v23 || (OUTLINED_FUNCTION_0_9(v21, 0xEA00000000006E65) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v24 = OUTLINED_FUNCTION_138();
                v26 = v5 && v25 == v0;
                if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                {

                  v6 = 6;
                }

                else
                {
                  v27 = v1 == v2 && 0x8000000193A19960 == v0;
                  if (v27 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, 0x8000000193A19960) & 1) != 0)
                  {

                    v6 = 7;
                  }

                  else
                  {
                    v28 = OUTLINED_FUNCTION_78_5();
                    if (v5 && v29 == v0)
                    {

                      v6 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_0_9(v28, v29);
                      OUTLINED_FUNCTION_89();
                      v6 = 8;
                      if ((v1 & 1) == 0)
                      {
                        v6 = 0;
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

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t sub_193571920()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v2, v3, v4, v5, v1, v0);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    OUTLINED_FUNCTION_51((v8 > 1), v9 + 1, v6, v7);
    OUTLINED_FUNCTION_17_2();
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  *(v12 + 4) = 0;
  v12[40] = 0;
  v13 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    OUTLINED_FUNCTION_51((v8 > 1), v9 + 2, v6, v7);
    OUTLINED_FUNCTION_17_2();
  }

  *(v7 + 2) = v13;
  v14 = &v7[16 * v11];
  *(v14 + 4) = 0;
  v14[40] = 1;
  v15 = v9 + 3;
  if (v10 < (v9 + 3))
  {
    v7 = OUTLINED_FUNCTION_51((v8 > 1), v9 + 3, v6, v7);
  }

  *(v7 + 2) = v15;
  v16 = &v7[16 * v13];
  *(v16 + 4) = 1;
  v16[40] = 1;
  v17 = *(v7 + 3);
  if ((v9 + 4) > (v17 >> 1))
  {
    v7 = OUTLINED_FUNCTION_51((v17 > 1), v9 + 4, v6, v7);
  }

  *(v7 + 2) = v9 + 4;
  return OUTLINED_FUNCTION_38_1(v7, &v7[16 * v15]);
}

void _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV12OverrideTypeOyAESgSScfC_0()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_141_0();
    v8 = v4 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v9 = v1 == 0x6944676E69727453 && v0 == 0xEC000000676F6C61;
      if (v9 || (OUTLINED_FUNCTION_0_9(0x6944676E69727453, 0xEC000000676F6C61) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6F6C616944746143 && v0 == 0xE900000000000067)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x6F6C616944746143, 0xE900000000000067);
        OUTLINED_FUNCTION_89();
        v5 = 2;
        if ((v1 & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

char *sub_193571B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D5D0, &qword_193963DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_193571C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_193571CCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_193571D24()
{
  result = qword_1EAE3D4C0;
  if (!qword_1EAE3D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4C0);
  }

  return result;
}

uint64_t sub_193571D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_193571DC0()
{
  result = qword_1EAE3D4D0;
  if (!qword_1EAE3D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4D0);
  }

  return result;
}

unint64_t sub_193571E14()
{
  result = qword_1EAE3D4D8;
  if (!qword_1EAE3D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4D8);
  }

  return result;
}

unint64_t sub_193571E68()
{
  result = qword_1EAE3D4E0;
  if (!qword_1EAE3D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4E0);
  }

  return result;
}

unint64_t sub_193571EBC()
{
  result = qword_1EAE3D4E8;
  if (!qword_1EAE3D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4E8);
  }

  return result;
}

unint64_t sub_193571F10()
{
  result = qword_1EAE3D4F0;
  if (!qword_1EAE3D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4F0);
  }

  return result;
}

unint64_t sub_193571F64()
{
  result = qword_1EAE3D4F8;
  if (!qword_1EAE3D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D4F8);
  }

  return result;
}

unint64_t sub_193571FB8()
{
  result = qword_1EAE3D500;
  if (!qword_1EAE3D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D500);
  }

  return result;
}

unint64_t sub_19357200C()
{
  result = qword_1EAE3D508;
  if (!qword_1EAE3D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D508);
  }

  return result;
}

unint64_t sub_193572060()
{
  result = qword_1EAE3D510;
  if (!qword_1EAE3D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D510);
  }

  return result;
}

unint64_t sub_1935720B4()
{
  result = qword_1EAE3D518;
  if (!qword_1EAE3D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D518);
  }

  return result;
}

unint64_t sub_193572108()
{
  result = qword_1EAE3D520;
  if (!qword_1EAE3D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D520);
  }

  return result;
}

unint64_t sub_19357215C()
{
  result = qword_1EAE3D528;
  if (!qword_1EAE3D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D528);
  }

  return result;
}

unint64_t sub_1935721B0()
{
  result = qword_1EAE3D530;
  if (!qword_1EAE3D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D530);
  }

  return result;
}

unint64_t sub_193572204()
{
  result = qword_1EAE3D538;
  if (!qword_1EAE3D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D538);
  }

  return result;
}

unint64_t sub_193572258()
{
  result = qword_1EAE3D540;
  if (!qword_1EAE3D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D540);
  }

  return result;
}

unint64_t sub_1935722AC()
{
  result = qword_1EAE3D548;
  if (!qword_1EAE3D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D548);
  }

  return result;
}

unint64_t sub_193572300()
{
  result = qword_1EAE3D558;
  if (!qword_1EAE3D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D558);
  }

  return result;
}

unint64_t sub_193572354()
{
  result = qword_1EAE3D560;
  if (!qword_1EAE3D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D560);
  }

  return result;
}

unint64_t sub_1935723A8()
{
  result = qword_1EAE3D568;
  if (!qword_1EAE3D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D568);
  }

  return result;
}

unint64_t sub_1935723FC()
{
  result = qword_1EAE3D570;
  if (!qword_1EAE3D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D570);
  }

  return result;
}

unint64_t sub_193572450()
{
  result = qword_1EAE3D578;
  if (!qword_1EAE3D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D578);
  }

  return result;
}

unint64_t sub_1935724A8()
{
  result = qword_1EAE3D580;
  if (!qword_1EAE3D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D580);
  }

  return result;
}

unint64_t sub_193572500()
{
  result = qword_1EAE3D588;
  if (!qword_1EAE3D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D588);
  }

  return result;
}

unint64_t sub_193572558()
{
  result = qword_1EAE3D590;
  if (!qword_1EAE3D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D590);
  }

  return result;
}

unint64_t sub_1935725B0()
{
  result = qword_1EAE3D598;
  if (!qword_1EAE3D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D598);
  }

  return result;
}

unint64_t sub_193572608()
{
  result = qword_1EAE3D5A0;
  if (!qword_1EAE3D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D5A0);
  }

  return result;
}

unint64_t sub_193572660()
{
  result = qword_1EAE3D5A8;
  if (!qword_1EAE3D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D5A8);
  }

  return result;
}

unint64_t sub_1935726B8()
{
  result = qword_1EAE3D5B0;
  if (!qword_1EAE3D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D5B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_60_8()
{
}

uint64_t OUTLINED_FUNCTION_65_8(uint64_t a1, uint64_t a2)
{

  return sub_19393C540();
}

uint64_t OUTLINED_FUNCTION_66_10()
{
  *(v0 + 336) = v1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_67_8()
{
}

uint64_t OUTLINED_FUNCTION_101_10()
{
}

uint64_t OUTLINED_FUNCTION_102_9()
{

  return sub_193448850();
}

void *OUTLINED_FUNCTION_120_4()
{
  v3 = (*(v0 + 216) + v1);

  return memcpy((v0 + 640), v3, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_121_4()
{
  result = sub_1934354B4(*(v0 + v2));
  *(v0 + v2) = v1;
  return result;
}

void *OUTLINED_FUNCTION_123_6(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

void sub_1935729AC()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA0E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v43 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v43, xmmword_193952680);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("metadata");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_50_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_29_1();
  v8 = OUTLINED_FUNCTION_0_0(v7, "timestamp");
  v5(v8);
  v9 = OUTLINED_FUNCTION_3_1(v0 + 2 * v3);
  *v10 = 10;
  v11 = OUTLINED_FUNCTION_0_0(v9, "requestContext");
  v5(v11);
  v12 = OUTLINED_FUNCTION_45_2(3 * v3);
  *v13 = 11;
  *v12 = "requestEndedTier1";
  v12[1] = 17;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  v5(v14);
  v15 = OUTLINED_FUNCTION_3_1(v0 + 4 * v3);
  *v16 = 12;
  *v15 = "overrideContext";
  v15[1] = 15;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  v5(v17);
  v18 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v19 = 13;
  v20 = OUTLINED_FUNCTION_16_6(v18, "validationContext");
  v5(v20);
  v21 = OUTLINED_FUNCTION_3_1(v0 + 6 * v3);
  *v22 = 14;
  *v21 = "catalogContext";
  v21[1] = 14;
  v23 = OUTLINED_FUNCTION_1_3(v21);
  v5(v23);
  OUTLINED_FUNCTION_120();
  v25 = OUTLINED_FUNCTION_45_2(v24);
  *v26 = 15;
  *v25 = "inferenceContext";
  v25[1] = 16;
  v27 = OUTLINED_FUNCTION_1_3(v25);
  v5(v27);
  v28 = OUTLINED_FUNCTION_3_1(v0 + 8 * v3);
  *v29 = 16;
  v30 = OUTLINED_FUNCTION_0_0(v28, "hallucinationDetectionContext");
  v5(v30);
  v31 = OUTLINED_FUNCTION_45_2(9 * v3);
  *v32 = 17;
  v33 = OUTLINED_FUNCTION_16_6(v31, "gmsCallContext");
  v5(v33);
  v34 = OUTLINED_FUNCTION_3_1(v0 + 10 * v3);
  *v35 = 18;
  v36 = OUTLINED_FUNCTION_0_0(v34, "cacheManagerCallContext");
  v5(v36);
  v37 = OUTLINED_FUNCTION_3_1(v0 + 11 * v3);
  *v38 = 1001;
  v39 = OUTLINED_FUNCTION_0_0(v37, "intelligenceFlowIds");
  v5(v39);
  v40 = OUTLINED_FUNCTION_3_1(v0 + 12 * v3);
  *v41 = 1002;
  v42 = OUTLINED_FUNCTION_0_0(v40, "event");
  v5(v42);
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193572CEC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for IntelligenceFlowResponseGeneration(0);
        type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 2:
        type metadata accessor for IntelligenceFlowResponseGeneration(0);
        type metadata accessor for MonotonicTimestamp(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        continue;
      case 10:
        v5 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v5 + 36));
        goto LABEL_20;
      case 11:
        type metadata accessor for IntelligenceFlowResponseGeneration(0);
        type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 12:
        v4 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v4 + 44));
        goto LABEL_20;
      case 13:
        v7 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v7 + 48));
        goto LABEL_20;
      case 14:
        v8 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v8 + 52));
        goto LABEL_20;
      case 15:
        v6 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v6 + 56));
        goto LABEL_20;
      case 16:
        v9 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
        OUTLINED_FUNCTION_160(*(v9 + 60));
        goto LABEL_20;
      case 17:
        type metadata accessor for IntelligenceFlowResponseGeneration(0);
        type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      case 18:
        type metadata accessor for IntelligenceFlowResponseGeneration(0);
        type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_20;
      default:
        if (v1 == 1001)
        {
          type metadata accessor for IntelligenceFlowResponseGeneration(0);
          type metadata accessor for IntelligenceFlowIdentifiers(0);
          OUTLINED_FUNCTION_42_4();
        }

        else
        {
          if (v1 != 1002)
          {
            continue;
          }

          v3 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
          OUTLINED_FUNCTION_160(*(v3 + 76));
        }

LABEL_20:
        sub_193498018();
        break;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193572F7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193573204();
  if (!v1)
  {
    OUTLINED_FUNCTION_11_1();
    sub_193573310();
    v2 = type metadata accessor for IntelligenceFlowResponseGeneration(0);
    v3 = v2;
    if ((~*(v0 + *(v2 + 36)) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + *(v2 + 36));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_19357341C();
    if ((~*(v0 + v3[11]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[11]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[12]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[12]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[13]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[13]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[14]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[14]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    if ((~*(v0 + v3[15]) & 0xF000000000000007) != 0)
    {
      __dst[0] = *(v0 + v3[15]);
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193573528();
    OUTLINED_FUNCTION_11_1();
    sub_193573634();
    OUTLINED_FUNCTION_11_1();
    sub_193573740();
    v4 = (v0 + v3[19]);
    v5 = v4[96];
    if (v5 != 255)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v7 = v5;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_193573204()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 28));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3C0, &qword_193963840);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.Metadata);
    OUTLINED_FUNCTION_12_12(v1, 1);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573310()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for MonotonicTimestamp(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 32));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_12_12(v1, 2);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19357341C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 40));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3C8, &qword_193963848);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1);
    OUTLINED_FUNCTION_12_12(v1, 11);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573528()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 64));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3D0, &unk_193964150);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext);
    OUTLINED_FUNCTION_12_12(v1, 17);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573634()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 68));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3D3D8, &qword_193963850);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext);
    OUTLINED_FUNCTION_12_12(v1, 18);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193573740()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for IntelligenceFlowIdentifiers(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 72));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3B948, &qword_193957C10);
  }

  else
  {
    sub_19357B254(v0, v1, type metadata accessor for IntelligenceFlowIdentifiers);
    OUTLINED_FUNCTION_12_12(v1, 1001);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935738B0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA100);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_193951270);
  OUTLINED_FUNCTION_102("ResponseSourceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "ResponseSourceTool");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = v0;
  *v11 = "ResponseSourceFallback";
  v11[1] = 22;
  v13 = OUTLINED_FUNCTION_56_0(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "ResponseSourceOverride";
  *(v14 + 1) = 22;
  v15 = OUTLINED_FUNCTION_56_0(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_25(v16, "ResponseSourceClientCache");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v19 = OUTLINED_FUNCTION_25(v18, "ResponseSourceResponseCatalog");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_54_1(6);
  *v20 = "ResponseSourceNlgModel";
  *(v20 + 1) = 22;
  v21 = OUTLINED_FUNCTION_56_0(v20);
  (v7)(v21);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_44(v22);
  OUTLINED_FUNCTION_181_0(v23);
  v25 = OUTLINED_FUNCTION_25(v24, "ResponseSourceInApp");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v27 = 8;
  *v26 = "ResponseSourceContinueOnDevice";
  *(v26 + 8) = 30;
  *(v26 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193573B7C()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA130);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_1939526F0);
  *v0 = 0;
  OUTLINED_FUNCTION_63("FallbackReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_17_8((v0 + v3));
  v9 = OUTLINED_FUNCTION_0_0(v8, "FallbackReasonNotAdoptingNLGAPI");
  v6(v9);
  v10 = OUTLINED_FUNCTION_59_2((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_0_0(v10, "FallbackReasonNotInAllowList");
  v6(v11);
  v12 = OUTLINED_FUNCTION_9_4((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "FallbackReasonDeniedRequest");
  v6(v13);
  v14 = OUTLINED_FUNCTION_13((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "FallbackReasonGuardrailDetectedHallucination");
  v6(v15);
  v16 = OUTLINED_FUNCTION_45_2(5 * v3);
  *v17 = 5;
  v18 = OUTLINED_FUNCTION_0_0(v16, "FallbackReasonModelDetectedHallucination");
  v6(v18);
  v19 = OUTLINED_FUNCTION_54_1(6);
  v20 = OUTLINED_FUNCTION_0_0(v19, "FallbackReasonOverridden");
  v6(v20);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_45_2(v21);
  OUTLINED_FUNCTION_181_0(v22);
  v24 = OUTLINED_FUNCTION_0_0(v23, "FallbackReasonModelServerTimeout");
  v6(v24);
  v25 = OUTLINED_FUNCTION_3_1(&v0[v3]);
  *v26 = 8;
  v27 = OUTLINED_FUNCTION_0_0(v25, "FallbackReasonModelServerError");
  v6(v27);
  v28 = OUTLINED_FUNCTION_45_2(9 * v3);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_0_0(v28, "FallbackReasonDetectedSafetyIssue");
  v6(v30);
  v31 = OUTLINED_FUNCTION_54_1(10);
  v32 = OUTLINED_FUNCTION_0_0(v31, "FallbackReasonCatalogCATMissingLocale");
  v6(v32);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193573EA8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA160);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("ifRequestId");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "postingSpanId");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "rgId");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193573FF8()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
        type metadata accessor for AIML.UUID(0);
LABEL_10:
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      case 2:
        v3 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
        OUTLINED_FUNCTION_8_2(*(v3 + 20));
        sub_19393C230();
        break;
      case 1:
        type metadata accessor for AIML.UUID(0);
        goto LABEL_10;
    }
  }
}

void sub_1935740CC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193574EA4();
  if (!v1)
  {
    if ((*(v0 + *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 20) + 8) & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C3E0();
    }

    OUTLINED_FUNCTION_11_1();
    sub_193574158();
  }
}

void sub_193574158()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 24));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_73_8();
    sub_19357B254(v0, v1, v11);
    OUTLINED_FUNCTION_12_12(v1, 3);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::RequestStarted sub_1935742B8@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowResponseGeneration.RequestStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_1935742F4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA178);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193574440()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  OUTLINED_FUNCTION_37_11();
  v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v34 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3D890, &qword_193963E10);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31[-v11];
  v48 = &v31[-v11];
  v32 = v3;
  v33 = v0;
  while (1)
  {
    v13 = OUTLINED_FUNCTION_124();
    if (v1 || (v14 & 1) != 0)
    {
      break;
    }

    switch(v13)
    {
      case 3:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 2;
        v47 = 0;
        v46 = 0;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        v21 = v45;
        if (v45 == 2)
        {
          IntelligenceFlowResponseGeneration.RequestFailed.init()(&v36);
          v22 = v36;
          v23 = v37;
          v24 = v38;
          v21 = v39;
          v25 = v40 | (v41 << 32);
        }

        else
        {
          v25 = v46 | (v47 << 32);
          v24 = v44;
          v23 = v43;
          v22 = v42;
          v36 = v42;
        }

        OUTLINED_FUNCTION_100_11();
        v30 = swift_allocObject();
        *(v30 + 16) = v22;
        *(v30 + 24) = v23 & 1;
        *(v30 + 32) = v24;
        *(v30 + 40) = v21;
        *(v30 + 52) = BYTE4(v25);
        *(v30 + 48) = v25;
        v3 = v32;
        v2 = v33;
        *v33 = v30 | 0x8000000000000000;
        v12 = v48;
        break;
      case 2:
        __swift_storeEnumTagSinglePayload(v12, 1, 1, v3);
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        v17 = v12;
        v18 = v12;
        v19 = v35;
        sub_1934486F8(v17, v35, &qword_1EAE3D890, &qword_193963E10);
        if (__swift_getEnumTagSinglePayload(v19, 1, v3) == 1)
        {
          v20 = v34;
          IntelligenceFlowResponseGeneration.RequestEnded.init()();
          sub_19344E6DC(v18, &qword_1EAE3D890, &qword_193963E10);
          if (__swift_getEnumTagSinglePayload(v19, 1, v3) != 1)
          {
            sub_19344E6DC(v35, &qword_1EAE3D890, &qword_193963E10);
          }
        }

        else
        {
          sub_19344E6DC(v18, &qword_1EAE3D890, &qword_193963E10);
          OUTLINED_FUNCTION_76_8();
          v20 = v34;
          sub_19357B254(v19, v34, v26);
        }

        v27 = swift_allocBox();
        OUTLINED_FUNCTION_76_8();
        sub_19357B254(v20, v28, v29);
        *v2 = v27 | 0x4000000000000000;
        v12 = v48;
        break;
      case 1:
        LOBYTE(v42) = 3;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        v15 = v42;
        if (v42 == 3)
        {
          IntelligenceFlowResponseGeneration.RequestStarted.init()();
          v15 = v36;
        }

        OUTLINED_FUNCTION_111_7();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *v2 = v16;
        break;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193574808()
{
  OUTLINED_FUNCTION_103();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  v5 = *v0 >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = swift_projectBox();
      sub_193571C68(v6, v4);
      sub_193447600();
      sub_19357B2B4(v4, type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded);
      return;
    }

    OUTLINED_FUNCTION_6_7((*v0 & 0x3FFFFFFFFFFFFFFFLL));
  }

  sub_193447600();
}

void sub_193574A1C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA1A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = OUTLINED_FUNCTION_156();
  *(v3 + 16) = xmmword_1939526E0;
  v4 = v3 + v0;
  v5 = v3 + v0 + dword_1EAEAA1E0;
  *(v3 + v0) = 1;
  *v5 = "linkId";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  v7(v8);
  v9 = OUTLINED_FUNCTION_59_2((v4 + v2));
  v10 = OUTLINED_FUNCTION_16_6(v9, "responseSource");
  v7(v10);
  v11 = OUTLINED_FUNCTION_9_4((v4 + 2 * v2));
  v12 = OUTLINED_FUNCTION_16_6(v11, "characterCount");
  v7(v12);
  v13 = OUTLINED_FUNCTION_13((v4 + 3 * v2));
  v14 = OUTLINED_FUNCTION_0_0(v13, "wordCount");
  v7(v14);
  v15 = OUTLINED_FUNCTION_19_2((v4 + 4 * v2));
  v16 = OUTLINED_FUNCTION_16_6(v15, "fallbackReason");
  v7(v16);
  v17 = OUTLINED_FUNCTION_3_1(v4 + 5 * v2);
  *v18 = 6;
  v19 = OUTLINED_FUNCTION_0_0(v17, "transcriptEventId");
  v7(v19);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193574C14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID(0);
        goto LABEL_13;
      case 2:
        v5 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
        OUTLINED_FUNCTION_160(*(v5 + 20));
        goto LABEL_11;
      case 3:
        v4 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0) + 24);
        goto LABEL_9;
      case 4:
        v4 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0) + 28);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v4);
        sub_19393C220();
        break;
      case 5:
        v3 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
        OUTLINED_FUNCTION_160(*(v3 + 32));
LABEL_11:
        sub_1934982A8();
        break;
      case 6:
        type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
        type metadata accessor for AIML.UUID(0);
LABEL_13:
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193574D64()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193574EA4();
  if (!v1)
  {
    v2 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
    if ((*(v0 + v2[5] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v3, v4, v5, v6, v7, v8);
    }

    if ((*(v0 + v2[6] + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C3D0();
    }

    if ((*(v0 + v2[7] + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_130();
      sub_19393C3D0();
    }

    if ((*(v0 + v2[8] + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_147();
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v9, v10, v11, v12, v13, v14);
    }

    OUTLINED_FUNCTION_11_1();
    sub_193574FC0();
  }
}

void sub_193574EA4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  sub_1934486F8(v1, v0, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_25_0();
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19357B254(v0, v10, type metadata accessor for AIML.UUID);
    OUTLINED_FUNCTION_12_12(v10, 1);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193574FC0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_8(v2, v3);
  v4 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8();
  type metadata accessor for AIML.UUID(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_37();
  v9 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v8);
  OUTLINED_FUNCTION_39_1(*(v9 + 36));
  OUTLINED_FUNCTION_25_0();
  if (v10)
  {
    sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    OUTLINED_FUNCTION_73_8();
    sub_19357B254(v0, v1, v11);
    OUTLINED_FUNCTION_12_12(v1, 6);
    OUTLINED_FUNCTION_69_9();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193575120()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA1C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("reason");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575284()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, &qword_1EAEAA1D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("linkId");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "displayString");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "spokenString");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_16_6(v12, "catId");
  v6(v13);
  v14 = OUTLINED_FUNCTION_3_1(v0 + 4 * v3);
  *v15 = 5;
  v16 = OUTLINED_FUNCTION_0_0(v14, "staticDialogId");
  v6(v16);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575438()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        continue;
      case 2:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 20);
        goto LABEL_10;
      case 3:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 24);
        goto LABEL_10;
      case 4:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 28);
        goto LABEL_10;
      case 5:
        v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0) + 32);
LABEL_10:
        OUTLINED_FUNCTION_8_2(v3);
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193575528()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_11_1();
  sub_193574EA4();
  if (!v0)
  {
    type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
    OUTLINED_FUNCTION_16_4();
    if (v1)
    {
      OUTLINED_FUNCTION_2_7(*v2, v1, 2);
    }

    OUTLINED_FUNCTION_16_4();
    if (v3)
    {
      OUTLINED_FUNCTION_2_7(*v4, v3, 3);
    }

    OUTLINED_FUNCTION_16_4();
    if (v5)
    {
      OUTLINED_FUNCTION_2_7(*v6, v5, 4);
    }

    OUTLINED_FUNCTION_16_4();
    if (v7)
    {
      OUTLINED_FUNCTION_2_7(*v8, v7, 5);
    }
  }
}

unsigned __int8 sub_193575660@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_97_6();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowResponseGeneration.OverrideStarted.init()();
  *a1 = v1;
  return result;
}

void sub_19357569C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA1F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575A08()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v8)
    {
      OUTLINED_FUNCTION_165_4(v1, v2, v3, &type metadata for IntelligenceFlowResponseGeneration.OverrideEnded, v4, &off_1F07CC698, v5, v6, v21, *(v7 + 16));
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v15, v16, v17, &type metadata for IntelligenceFlowResponseGeneration.OverrideFailed, v18, &off_1F07CC6C8, v19, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_9();
    OUTLINED_FUNCTION_153(v9, v10, v11, &type metadata for IntelligenceFlowResponseGeneration.OverrideStarted, v12, &off_1F07CC668, v13, v14, v21, v22);
  }

  sub_193447600();
}

void sub_193575B18()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA208);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "assetVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575C7C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA220);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("overrideType");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "overrideId");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193575E30()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA238);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

unsigned __int8 sub_193575F94@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_97_6();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowResponseGeneration.ValidationStarted.init()();
  *a1 = v1;
  return result;
}

void sub_193575FD0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA250);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935762DC()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v1)
    {
      OUTLINED_FUNCTION_184_5();
      OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.ValidationEnded, v5, &off_1F07CC758, v6, v7, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for IntelligenceFlowResponseGeneration.ValidationFailed, v17, &off_1F07CC788, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_9();
    OUTLINED_FUNCTION_153(v8, v9, v10, &type metadata for IntelligenceFlowResponseGeneration.ValidationStarted, v11, &off_1F07CC728, v12, v13, v20, v21);
  }

  sub_193447600();
}

void sub_1935763D0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA268);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "assetVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357657C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA298);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935766F0()
{
  OUTLINED_FUNCTION_115();
  v17 = v1;
  v3 = v2;
  v4 = sub_19393C420();
  __swift_allocate_value_buffer(v4, v3);
  __swift_project_value_buffer(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v6 = *(*v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19394FBC0;
  v8 = v7 + v0;
  v9 = v7 + v0 + v5[14];
  *(v7 + v0) = 1;
  *v9 = "startedOrChanged";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_10_0();
  v11();
  v12 = v8 + v6 + v5[14];
  *(v8 + v6) = 2;
  *v12 = "ended";
  *(v12 + 8) = 5;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  v13 = (v8 + 2 * v6);
  v14 = v13 + v5[14];
  *v13 = 3;
  *v14 = "failed";
  *(v14 + 1) = 6;
  v14[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  v15 = (v8 + 3 * v6);
  v16 = v15 + v5[14];
  *v15 = v17;
  *v16 = "traceId";
  *(v16 + 1) = 7;
  v16[16] = 2;
  OUTLINED_FUNCTION_10_0();
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1935768F8()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.CacheManagerCallStarted.init()();
          v5 = v36;
        }

        *v0 = v5;
        break;
      case 2:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.CacheManagerCallEnded.init()();
          v7 = v36;
        }

        *(v0 + 1) = v7;
        break;
      case 3:
        OUTLINED_FUNCTION_99_11();
        sub_193498018();
        if (v44 == 2)
        {
          v2 = &v36;
          IntelligenceFlowResponseGeneration.CacheManagerCallFailed.init()(&v36);
          OUTLINED_FUNCTION_98_11(v16, v17, v18, v19, v20, v21, v22, v23, v32, v34, v36, v37, v38);
        }

        else
        {
          OUTLINED_FUNCTION_91_7(v8, v9, v10, v11, v12, v13, v14, v15, v32, v34, v36, v37, v38, v39, v40, v41, v42, v43);
        }

        v2 = *v2;
        v24 = sub_193456418(*(v0 + 24), *(v0 + 32));
        OUTLINED_FUNCTION_87_10(v24, v25, v26, v27, v28, v29, v30, v31, v33, *v35, v35[4]);
        break;
      case 4:
        v2 = *(type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(0) + 28);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193576AC4()
{
  v3 = v1;
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_178_4();
  IntelligenceFlowResponseGeneration.CacheManagerCallStarted.init()();
  v4 = sub_19357B200();
  if ((OUTLINED_FUNCTION_102_10(v4, v5, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallStarted, v4, v6, v7, v8, v9, v55, v60) & 1) == 0)
  {
    LOBYTE(v81) = v2;
    OUTLINED_FUNCTION_61_8(&v81, 1, v10, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallStarted);
    v3 = v1;
  }

  if (!v3)
  {
    v11 = *(v0 + 1);
    LOBYTE(v81) = v11;
    IntelligenceFlowResponseGeneration.CacheManagerCallEnded.init()();
    v12 = sub_19357B1AC();
    if ((OUTLINED_FUNCTION_102_10(v12, v13, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallEnded, v12, v14, v15, v16, v17, v56, v61) & 1) != 0 || (LOBYTE(v81) = v11, OUTLINED_FUNCTION_61_8(&v81, 2, v18, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallEnded), !v1))
    {
      v19 = *(v0 + 16);
      v20 = *(v0 + 24);
      v21 = *(v0 + 32);
      v22 = *(v0 + 44);
      v23 = *(v0 + 40);
      v24 = v23 | (v22 << 32);
      v87 = *(v0 + 8);
      v81 = v87;
      HIDWORD(v57) = v19;
      LOBYTE(v82) = v19;
      v83 = v20;
      v84 = v21;
      v86 = v22;
      v85 = v23;
      v25 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v25, v26);
      IntelligenceFlowResponseGeneration.CacheManagerCallFailed.init()(&v77);
      OUTLINED_FUNCTION_79_11(v27, v28, v29, v30, v31, v32, v33, v34, v57, v62, v65, v68, v71, v74, v77, v78, v79);
      sub_19357B158();
      v35 = sub_19393C550();
      v36 = sub_193456418(v69, v72);
      OUTLINED_FUNCTION_78_9(v36, v37, v38, v39, v40, v41, v42, v43, v58, v63, v66, v69, v72, v75, v77, v78, v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86);
      if ((v35 & 1) != 0 || (v81 = v87, LOBYTE(v82) = BYTE4(v59), v83 = v20, v84 = v21, v85 = v24, v86 = BYTE4(v24), v44 = OUTLINED_FUNCTION_286(), sub_19350CB08(v44, v45), OUTLINED_FUNCTION_61_8(&v81, 3, v46, &type metadata for IntelligenceFlowResponseGeneration.CacheManagerCallFailed), OUTLINED_FUNCTION_78_9(v47, v48, v49, v50, v51, v52, v53, v54, v59, v64, v67, v70, v73, v76, v77, v78, v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86), !v1))
      {
        OUTLINED_FUNCTION_130();
        sub_1935772F0();
      }
    }
  }
}

void sub_193576DB4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA2F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193576F28()
{
  OUTLINED_FUNCTION_37_11();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.GMSCallStarted.init()();
          v5 = v36;
        }

        *v0 = v5;
        break;
      case 2:
        OUTLINED_FUNCTION_88_9();
        sub_193498018();
        OUTLINED_FUNCTION_182_4();
        if (v6)
        {
          IntelligenceFlowResponseGeneration.GMSCallEnded.init()();
          v7 = v36;
        }

        *(v0 + 1) = v7;
        break;
      case 3:
        OUTLINED_FUNCTION_99_11();
        sub_193498018();
        if (v44 == 2)
        {
          v2 = &v36;
          IntelligenceFlowResponseGeneration.GMSCallFailed.init()(&v36);
          OUTLINED_FUNCTION_98_11(v16, v17, v18, v19, v20, v21, v22, v23, v32, v34, v36, v37, v38);
        }

        else
        {
          OUTLINED_FUNCTION_91_7(v8, v9, v10, v11, v12, v13, v14, v15, v32, v34, v36, v37, v38, v39, v40, v41, v42, v43);
        }

        v2 = *v2;
        v24 = sub_193456418(*(v0 + 24), *(v0 + 32));
        OUTLINED_FUNCTION_87_10(v24, v25, v26, v27, v28, v29, v30, v31, v33, *v35, v35[4]);
        break;
      case 5:
        v2 = *(type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(0) + 28);
        type metadata accessor for AIML.UUID(0);
        OUTLINED_FUNCTION_74_8();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_1935770F4()
{
  v3 = v1;
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_178_4();
  IntelligenceFlowResponseGeneration.GMSCallStarted.init()();
  v4 = sub_19357B104();
  if ((OUTLINED_FUNCTION_102_10(v4, v5, &type metadata for IntelligenceFlowResponseGeneration.GMSCallStarted, v4, v6, v7, v8, v9, v55, v60) & 1) == 0)
  {
    LOBYTE(v81) = v2;
    OUTLINED_FUNCTION_61_8(&v81, 1, v10, &type metadata for IntelligenceFlowResponseGeneration.GMSCallStarted);
    v3 = v1;
  }

  if (!v3)
  {
    v11 = *(v0 + 1);
    LOBYTE(v81) = v11;
    IntelligenceFlowResponseGeneration.GMSCallEnded.init()();
    v12 = sub_19357B0B0();
    if ((OUTLINED_FUNCTION_102_10(v12, v13, &type metadata for IntelligenceFlowResponseGeneration.GMSCallEnded, v12, v14, v15, v16, v17, v56, v61) & 1) != 0 || (LOBYTE(v81) = v11, OUTLINED_FUNCTION_61_8(&v81, 2, v18, &type metadata for IntelligenceFlowResponseGeneration.GMSCallEnded), !v1))
    {
      v19 = *(v0 + 16);
      v20 = *(v0 + 24);
      v21 = *(v0 + 32);
      v22 = *(v0 + 44);
      v23 = *(v0 + 40);
      v24 = v23 | (v22 << 32);
      v87 = *(v0 + 8);
      v81 = v87;
      HIDWORD(v57) = v19;
      LOBYTE(v82) = v19;
      v83 = v20;
      v84 = v21;
      v86 = v22;
      v85 = v23;
      v25 = OUTLINED_FUNCTION_286();
      sub_19350CB08(v25, v26);
      IntelligenceFlowResponseGeneration.GMSCallFailed.init()(&v77);
      OUTLINED_FUNCTION_79_11(v27, v28, v29, v30, v31, v32, v33, v34, v57, v62, v65, v68, v71, v74, v77, v78, v79);
      sub_19357B05C();
      v35 = sub_19393C550();
      v36 = sub_193456418(v69, v72);
      OUTLINED_FUNCTION_78_9(v36, v37, v38, v39, v40, v41, v42, v43, v58, v63, v66, v69, v72, v75, v77, v78, v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86);
      if ((v35 & 1) != 0 || (v81 = v87, LOBYTE(v82) = BYTE4(v59), v83 = v20, v84 = v21, v85 = v24, v86 = BYTE4(v24), v44 = OUTLINED_FUNCTION_286(), sub_19350CB08(v44, v45), OUTLINED_FUNCTION_61_8(&v81, 3, v46, &type metadata for IntelligenceFlowResponseGeneration.GMSCallFailed), OUTLINED_FUNCTION_78_9(v47, v48, v49, v50, v51, v52, v53, v54, v59, v64, v67, v70, v73, v76, v77, v78, v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85, v86), !v1))
      {
        OUTLINED_FUNCTION_130();
        sub_1935772F0();
      }
    }
  }
}

void sub_1935772F0()
{
  OUTLINED_FUNCTION_26();
  v16[0] = v1;
  v16[1] = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = v3(0);
  sub_1934486F8(v5 + *(v15 + 28), v9, &qword_1EAE3BCA0, &unk_19395C320);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_19344E6DC(v9, &qword_1EAE3BCA0, &unk_19395C320);
  }

  else
  {
    sub_19357B254(v9, v14, type metadata accessor for AIML.UUID);
    sub_193447600();
    sub_19357B2B4(v14, type metadata accessor for AIML.UUID);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193577568()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA358);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

unsigned __int8 sub_1935776CC@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_97_6();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result = IntelligenceFlowResponseGeneration.CatalogStarted.init()();
  *a1 = v1;
  return result;
}

void sub_193577708()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA370);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193577A14()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v1)
    {
      OUTLINED_FUNCTION_184_5();
      OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.CatalogEnded, v5, &off_1F07CC998, v6, v7, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for IntelligenceFlowResponseGeneration.CatalogFailed, v17, &off_1F07CC9C8, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_9();
    OUTLINED_FUNCTION_153(v8, v9, v10, &type metadata for IntelligenceFlowResponseGeneration.CatalogStarted, v11, &off_1F07CC968, v12, v13, v20, v21);
  }

  sub_193447600();
}

void sub_193577B08()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA388);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("exists");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "assetVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193577C38()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193577CA0()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 16);
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_95_3();
    sub_19393C2E0();
  }

  if (!v1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_11();
    }
  }
}

void sub_193577DC4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA3B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193577F58(void *a1@<X8>)
{
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  IntelligenceFlowResponseGeneration.InferenceStarted.init()(v3);
  *a1 = v1;
}

void sub_193577F98()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA3D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1935780E4()
{
  v2 = v0;
  OUTLINED_FUNCTION_37_11();
  v18 = v0;
  while (1)
  {
    v3 = OUTLINED_FUNCTION_124();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 3:
        __src = 0uLL;
        *&v13 = 0;
        *(&v13 + 1) = 2;
        BYTE4(v14) = 0;
        LODWORD(v14) = 0;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        if (*(&v13 + 1) == 2)
        {
          IntelligenceFlowResponseGeneration.InferenceFailed.init()(&__dst);
        }

        OUTLINED_FUNCTION_100_11();
        v7 = swift_allocObject();
        OUTLINED_FUNCTION_92_6(v7);
        v2 = v18;
        *v18 = v8;
        break;
      case 2:
        LOBYTE(__src) = 3;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        if (__src == 3)
        {
          IntelligenceFlowResponseGeneration.InferenceEnded.init()();
        }

        OUTLINED_FUNCTION_111_7();
        v5 = swift_allocObject();
        OUTLINED_FUNCTION_175_4(v5);
        *v2 = v6;
        break;
      case 1:
        __src = 0u;
        v13 = 0u;
        v14 = 2;
        v15 = 0u;
        v16 = 0u;
        v17 = 0;
        sub_193498018();
        OUTLINED_FUNCTION_106_10();
        if (v14 == 2)
        {
          IntelligenceFlowResponseGeneration.InferenceStarted.init()(v10);
        }

        else
        {
          v10[0] = __src;
          v10[1] = v13;
          *(&v10[2] + 8) = v15;
          *(&v10[3] + 8) = v16;
          *(&v10[4] + 1) = v17;
          *&v10[2] = v14;
        }

        v9 = swift_allocObject();
        memcpy((v9 + 16), v10, 0x50uLL);
        *v2 = v9;
        break;
    }
  }
}

void sub_193578388()
{
  OUTLINED_FUNCTION_103();
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    if (v2 == 1)
    {
      LOBYTE(__dst[0]) = v3[1].n128_u8[0];
    }

    else
    {
      v10 = OUTLINED_FUNCTION_6_7(v3);
      *&__dst[0] = v11;
      BYTE8(__dst[0]) = v12;
      __dst[1] = v10;
      BYTE4(__dst[2]) = v13;
      LODWORD(__dst[2]) = v14;
    }
  }

  else
  {
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    v4 = memcpy(v15, __dst, sizeof(v15));
    OUTLINED_FUNCTION_134(v4, v5, v6, &type metadata for IntelligenceFlowResponseGeneration.InferenceStarted, v7, &off_1F07CCA28, v8, v9, v15[0]);
  }

  sub_193447600();
}

void sub_1935784E4()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA3E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("modelVersion");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "promptVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193578614()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }
  }
}

void sub_193578688()
{
  v2 = *(v0 + 72);
  if (*(v0 + 32) != 1)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447600();
  }

  if (!v1 && v2 != 1)
  {
    sub_193447600();
  }
}

void sub_1935787F0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA418);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::HallucinationDetectionStarted sub_193578954@<W0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_111_7();
  swift_allocObject();
  OUTLINED_FUNCTION_294_0();
  result.exists.value = IntelligenceFlowResponseGeneration.HallucinationDetectionStarted.init()().exists.value;
  *a1 = v1;
  return result;
}

void sub_193578990()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA430);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("startedOrChanged");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_24_0(v5, "ended");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "failed");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 40) != 1)
  {
  }

  OUTLINED_FUNCTION_100_11();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_193578CF8()
{
  OUTLINED_FUNCTION_279();
  if (v0 >> 62)
  {
    OUTLINED_FUNCTION_174_2();
    if (v1)
    {
      OUTLINED_FUNCTION_184_5();
      OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionEnded, v5, &off_1F07CCB18, v6, v7, v20, v21);
    }

    else
    {
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_175_1(v14, v15, v16, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionFailed, v17, &off_1F07CCB48, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_5();
    OUTLINED_FUNCTION_153(v8, v9, v10, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionStarted, v11, &off_1F07CCAE8, v12, v13, v20, v21);
  }

  sub_193447600();
}

uint64_t sub_193578E48()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C0F0();
    }
  }

  return result;
}

void sub_193578EC8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA478);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("fatalError");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "error");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193578FF8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_62();
      sub_193498018();
    }

    else if (v1 == 1)
    {
      sub_1934982A8();
    }
  }
}

void sub_19357909C()
{
  OUTLINED_FUNCTION_22_0();
  v8 = v0[2];
  v9 = v0[3];
  LOBYTE(v24) = *(v0 + 8);
  v23 = *v0;
  if (v24)
  {
    if (v1)
    {
      return;
    }
  }

  else
  {
    sub_19357B000(&v23, v27);
    v10 = sub_19357B000(v27, &v22);
    OUTLINED_FUNCTION_134(v10, v11, v12, &type metadata for IntelligenceFlowResponseGeneration.FatalError, v13, &off_1F07CC4F0, v14, v15, v22);
    OUTLINED_FUNCTION_78_1();
    v2 = sub_193447324(v16, v17, v18, v19, v20, v21);
    if (v1)
    {
      return;
    }
  }

  if (v9 != 1)
  {
    v25 = *(v0 + 8);
    v26 = *(v0 + 36);
    v24 = v9;
    OUTLINED_FUNCTION_165_4(v2, v3, v4, &type metadata for IntelligenceFlowResponseGeneration.RGError, v5, &off_1F07CCB78, v6, v7, v22, v8);
    OUTLINED_FUNCTION_78_1();
    sub_193447600();
  }
}

void sub_1935791B8()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA490);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("errorDomain");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "errorCode");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1935792E8()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C170();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_193579350()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 20);
  if (v2)
  {
    result = OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1 && (v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_95_3();
    return sub_19393C350();
  }

  return result;
}

void *sub_193579430@<X0>(_BYTE *a1@<X8>)
{
  IntelligenceFlowResponseGeneration.Event.Generation.init()(v3);
  result = memcpy(a1, v3, 0x60uLL);
  a1[96] = 0;
  return result;
}

void sub_193579474()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA4A8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v4, xmmword_19394FBD0);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("generation");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_16_6(v8, "fallback");
  v6(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_16_6(v10, "override");
  v6(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v3));
  v13 = OUTLINED_FUNCTION_0_0(v12, "modelInference");
  v6(v13);
  v14 = OUTLINED_FUNCTION_19_2((v0 + 4 * v3));
  v15 = OUTLINED_FUNCTION_0_0(v14, "safetyCheck");
  v6(v15);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193579620()
{
  OUTLINED_FUNCTION_37_11();
  v26 = xmmword_1939526A0;
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v28 = 0u;
        memset(v29, 0, 24);
        *&v29[24] = 1;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v26, *(&v26 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), 0);
        sub_193498018();
        memcpy(__dst, v0, 0x61uLL);
        sub_19356E4F4(__dst);
        if (*&v29[24] == 1)
        {
          IntelligenceFlowResponseGeneration.Event.Generation.init()(__src);
        }

        else
        {
          __src[0] = v28;
          __src[1] = *v29;
          __src[3] = v30;
          __src[4] = v31;
          __src[5] = v32;
          __src[2] = *&v29[16];
        }

        memcpy(v0, __src, 0x60uLL);
        *(v0 + 96) = 0;
        break;
      case 2:
        WORD4(v28) = 0;
        BYTE10(v28) = 1;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v26, *(&v26 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), 0);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        sub_19356E4F4(__dst);
        if (BYTE10(v28))
        {
          v22 = &v33;
          IntelligenceFlowResponseGeneration.Event.Fallback.init()(&v33);
          object = v33.ruleName.value._object;
          LOBYTE(v24) = BYTE1(v33.ruleName.value._object);
        }

        else
        {
          object = BYTE8(v28);
          v24 = HIBYTE(WORD4(v28)) & 1;
          v22 = &v28;
        }

        countAndFlagsBits = v22->ruleName.value._countAndFlagsBits;
        v35 = v24;
        *v0 = countAndFlagsBits;
        *(v0 + 8) = object;
        *(v0 + 9) = v24;
        *(v0 + 96) = 1;
        break;
      case 3:
        v28 = 0uLL;
        *v29 = 0;
        *&v29[8] = 1;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v26, *(&v26 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), 0);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        sub_19356E4F4(__dst);
        v14 = *&v29[8];
        if (*&v29[8] == 1)
        {
          IntelligenceFlowResponseGeneration.Event.Override.init()(&v33);
          v15 = v33.ruleName.value._countAndFlagsBits;
          v16 = v33.ruleName.value._object;
          LOBYTE(v17) = BYTE1(v33.ruleName.value._object);
          v18 = *&v33.isProfanityFiltered.value;
          v14 = v33.ruleFailureReason.value._countAndFlagsBits;
        }

        else
        {
          v16 = BYTE8(v28);
          v18 = *v29;
          v15 = v28;
          v17 = (*(&v28 + 1) >> 8) & 1;
          v33.ruleName.value._countAndFlagsBits = v28;
        }

        v35 = v17;
        *v0 = v15;
        *(v0 + 8) = v16;
        *(v0 + 9) = v17;
        v0[2] = v18;
        v0[3] = v14;
        *(v0 + 96) = 2;
        break;
      case 4:
        *(&v28 + 1) = *(&v26 + 1);
        *v29 = 0uLL;
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v26, *(&v26 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), v26);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        sub_19356E4F4(__dst);
        v19 = *(&v28 + 1);
        if (*(&v28 + 1) == 1)
        {
          v20 = &v33;
          IntelligenceFlowResponseGeneration.Event.ModelInference.init()();
          v19 = v33.ruleName.value._object;
          v21 = *&v33.isProfanityFiltered.value;
        }

        else
        {
          v20 = &v28;
          v21 = *v29;
        }

        *v0 = v20->ruleName.value._countAndFlagsBits;
        v0[1] = v19;
        *(v0 + 1) = v21;
        *(v0 + 96) = 3;
        break;
      case 5:
        *(&v28 + 1) = *(&v26 + 1);
        memset(v29, 0, 24);
        OUTLINED_FUNCTION_123_7(v2, v3, v4, v5, v6, v7, v8, v9, v26, *(&v26 + 1), *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), v26);
        sub_193498018();
        OUTLINED_FUNCTION_104_9();
        sub_19356E4F4(__dst);
        v10 = *(&v28 + 1);
        if (*(&v28 + 1) == 1)
        {
          IntelligenceFlowResponseGeneration.Event.SafetyCheck.init()(&v33);
          v11 = v33.ruleName.value._countAndFlagsBits;
          v10 = v33.ruleName.value._object;
          value = v33.isProfanityFiltered.value;
          ruleFailureReason = v33.ruleFailureReason;
        }

        else
        {
          ruleFailureReason = *&v29[8];
          v11 = v28;
          value = v29[0];
          v33.ruleName = v28;
        }

        *v0 = v11;
        v0[1] = v10;
        *(v0 + 16) = value;
        *(v0 + 3) = ruleFailureReason;
        *(v0 + 96) = 4;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1935799F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_193579A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(*(v4 + 96))
  {
    case 1:
    case 2:
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_58_10();
      break;
    default:
      OUTLINED_FUNCTION_58_10();
      OUTLINED_FUNCTION_134(v5, v6, v7, &type metadata for IntelligenceFlowResponseGeneration.Event.Generation, v8, &off_1F07CCBD8, v9, v10, v11);
      break;
  }

  sub_193447600();
}

void sub_193579C08()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA4C0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v22 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v22, xmmword_193952700);
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_63("source");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_50_1();
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_0_0(v8, "characterCount");
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_13_12();
  v11 = OUTLINED_FUNCTION_0_0(v10, "wordCount");
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_13((v0 + 3 * v4));
  v13 = OUTLINED_FUNCTION_0_0(v12, "displayString");
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v0 + 4 * v4);
  *v15 = 5;
  v16 = OUTLINED_FUNCTION_0_0(v14, "spokenString");
  (v6)(v16);
  v17 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v18 = 6;
  v19 = OUTLINED_FUNCTION_16_6(v17, "catId");
  (v6)(v19);
  OUTLINED_FUNCTION_3_1(v0 + 6 * v4);
  OUTLINED_FUNCTION_181_0(v20);
  *v21 = "staticDialogId";
  *(v21 + 8) = 14;
  *(v21 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193579E1C()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_62();
        sub_1934982A8();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_98();
        sub_19393C220();
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_193579EEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v17 = *(v0 + 32);
  v5 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  v12 = *(v0 + 80);
  v15 = *(v0 + 72);
  v16 = *(v0 + 88);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v6, v7, v8, v9, v10, v11);
  }

  if (!v1)
  {
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if ((v3 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C3D0();
    }

    if (v4)
    {
      OUTLINED_FUNCTION_181(v17, v4, 4);
    }

    if (v5)
    {
      OUTLINED_FUNCTION_181(v14, v5, 5);
    }

    if (v15)
    {
      OUTLINED_FUNCTION_181(v13, v15, 6);
    }

    if (v16)
    {
      OUTLINED_FUNCTION_181(v12, v16, 7);
    }
  }
}

void sub_19357A0A8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA4D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_193952700);
  *v0 = 0;
  OUTLINED_FUNCTION_63("SourceUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v0 + v4));
  v10 = OUTLINED_FUNCTION_0_0(v9, "SourceTool");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_59_2((v0 + 2 * v4));
  v12 = OUTLINED_FUNCTION_16_6(v11, "SourceFallback");
  (v7)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v0 + 3 * v4));
  v14 = OUTLINED_FUNCTION_16_6(v13, "SourceOverride");
  (v7)(v14);
  v15 = OUTLINED_FUNCTION_13((v0 + 4 * v4));
  v16 = OUTLINED_FUNCTION_0_0(v15, "SourceClientCache");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_45_2(5 * v4);
  *v18 = 5;
  v19 = OUTLINED_FUNCTION_0_0(v17, "SourceResponseCatalog");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_54_1(6);
  *v20 = "SourceNlgModel";
  *(v20 + 1) = 14;
  v20[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357A2F4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_62();
      sub_1934982A8();
    }
  }
}

void sub_19357A358()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_279();
    v8 = OUTLINED_FUNCTION_134(v1, v2, v3, &type metadata for IntelligenceFlowResponseGeneration.Event.Fallback.Reason, v4, &off_1F07CCC60, v5, v6, v7);
    sub_193447324(v8, v9, v10, v11, v12, v13);
  }
}

void sub_19357A418()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAA508);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v5, xmmword_193952660);
  OUTLINED_FUNCTION_102("ReasonUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  v8 = OUTLINED_FUNCTION_50_1();
  (v7)(v8);
  v9 = OUTLINED_FUNCTION_17_8((v1 + v4));
  v10 = OUTLINED_FUNCTION_25(v9, "ReasonNotAdoptingNLGAPI");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = v0;
  v13 = OUTLINED_FUNCTION_25(v11, "ReasonNotInAllowList");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  v15 = OUTLINED_FUNCTION_25(v14, "ReasonDeniedRequest");
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_13((v1 + 4 * v4));
  v17 = OUTLINED_FUNCTION_25(v16, "ReasonGuardrailDetectedHallucination");
  (v7)(v17);
  v18 = OUTLINED_FUNCTION_19_2((v1 + 5 * v4));
  v19 = OUTLINED_FUNCTION_25(v18, "ReasonModelDetectedHallucination");
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_54_1(6);
  v21 = OUTLINED_FUNCTION_25(v20, "ReasonOverridden");
  (v7)(v21);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_44(v22);
  OUTLINED_FUNCTION_181_0(v23);
  v25 = OUTLINED_FUNCTION_25(v24, "ReasonModelServerTimeout");
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 8 * v4);
  *v27 = 8;
  v28 = OUTLINED_FUNCTION_25(v26, "ReasonModelServerError");
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_44(9 * v4);
  *v30 = 9;
  *v29 = "ReasonDetectedSafetyIssue";
  *(v29 + 8) = 25;
  *(v29 + 16) = v0;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357A6D4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAA520);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v2, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("type");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_65();
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_29_1();
  *v6 = "id";
  *(v6 + 8) = v0;
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_10_0();
  v4();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      sub_19393C200();
    }

    else if (v4 == 1)
    {
      sub_1934982A8();
    }
  }
}

void sub_19357A8A4()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 24);
  if ((*(v0 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_108_1();
    sub_193447324(v3, v4, v5, v6, v7, v8);
  }

  if (!v1)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_71_11();
    }
  }
}

void sub_19357A9AC()
{
  OUTLINED_FUNCTION_115();
  v3 = v2;
  v4 = sub_19393C420();
  __swift_allocate_value_buffer(v4, v3);
  __swift_project_value_buffer(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_43_2(v7, xmmword_19394FBC0);
  OUTLINED_FUNCTION_102("OverrideTypeUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_50_1();
  (v9)(v10);
  v11 = OUTLINED_FUNCTION_17_8((v1 + v6));
  v12 = OUTLINED_FUNCTION_25(v11, "OverrideTypeFallbackDialog");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_25(v13, "OverrideTypeStringDialog");
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_9_4((v1 + 3 * v6));
  *v16 = "OverrideTypeCatDialog";
  *(v16 + 1) = 21;
  v16[16] = v0;
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357AB78()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA550);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBE0);
  OUTLINED_FUNCTION_69_0("modelVersion");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "promptVersion");
  v3(v6);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_19357ACA8()
{
  OUTLINED_FUNCTION_89_11();
  v2 = v0[1];
  v3 = v0[3];
  if (v2)
  {
    OUTLINED_FUNCTION_86_9(*v0, v2, 1);
  }

  if (!v1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_71_11();
    }
  }
}

void sub_19357AD48()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA568);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v1, xmmword_19394FBB0);
  OUTLINED_FUNCTION_69_0("ruleName");
  sub_19393C400();
  OUTLINED_FUNCTION_31_1();
  v3 = *(v2 + 104);
  v4 = OUTLINED_FUNCTION_65();
  v3(v4);
  v5 = OUTLINED_FUNCTION_29_1();
  v6 = OUTLINED_FUNCTION_48(v5, "isProfanityFiltered");
  v3(v6);
  v7 = OUTLINED_FUNCTION_13_12();
  v8 = OUTLINED_FUNCTION_48(v7, "ruleFailureReason");
  v3(v8);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19357AE98()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
    }
  }
}

void sub_19357AF10()
{
  OUTLINED_FUNCTION_89_11();
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v2)
  {
    OUTLINED_FUNCTION_86_9(*v0, v2, 1);
  }

  if (!v1)
  {
    if (v3 != 2)
    {
      OUTLINED_FUNCTION_95_3();
      sub_19393C2E0();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_86_9(v4, v5, 3);
    }
  }
}

unint64_t sub_19357B05C()
{
  result = qword_1EAE3D8A8;
  if (!qword_1EAE3D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8A8);
  }

  return result;
}

unint64_t sub_19357B0B0()
{
  result = qword_1EAE3D8B0;
  if (!qword_1EAE3D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8B0);
  }

  return result;
}

unint64_t sub_19357B104()
{
  result = qword_1EAE3D8B8;
  if (!qword_1EAE3D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8B8);
  }

  return result;
}

unint64_t sub_19357B158()
{
  result = qword_1EAE3D8C0;
  if (!qword_1EAE3D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8C0);
  }

  return result;
}

unint64_t sub_19357B1AC()
{
  result = qword_1EAE3D8C8;
  if (!qword_1EAE3D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8C8);
  }

  return result;
}

unint64_t sub_19357B200()
{
  result = qword_1EAE3D8D0;
  if (!qword_1EAE3D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8D0);
  }

  return result;
}

uint64_t sub_19357B254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19357B2B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_63_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_19345FEB8(a14, a15, a16, a17);
}

uint64_t OUTLINED_FUNCTION_86_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19393C3C0();
}

uint64_t OUTLINED_FUNCTION_102_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return sub_19393C550();
}

uint64_t OUTLINED_FUNCTION_109_9(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *v4 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_173_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return sub_19345FEB8(a16, a17, a18, a19);
}

uint64_t IntelligenceFlowResponseGeneration.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t IntelligenceFlowResponseGeneration.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t IntelligenceFlowResponseGeneration.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowResponseGeneration.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t IntelligenceFlowResponseGeneration.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357B6A8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowResponseGeneration.timestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 32), &qword_1EAE3B498, &unk_193959120);
}

uint64_t IntelligenceFlowResponseGeneration.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.requestContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 36));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.requestContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357B8F4()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.requestEndedTier1.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 40), &qword_1EAE3D3C8, &qword_193963848);
}

uint64_t IntelligenceFlowResponseGeneration.requestEndedTier1.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 40), &qword_1EAE3D3C8, &qword_193963848);
}

uint64_t IntelligenceFlowResponseGeneration.requestEndedTier1.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.overrideContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 44));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.overrideContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.validationContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 48));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.validationContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.catalogContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 52));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.catalogContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.inferenceContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 56));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.inferenceContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.hallucinationDetectionContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  v2 = OUTLINED_FUNCTION_59_4(*(v1 + 60));

  return sub_193438388(v2);
}

uint64_t IntelligenceFlowResponseGeneration.hallucinationDetectionContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357BD60()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.gmsCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 64), &qword_1EAE3D3D0, &unk_193964150);
}

uint64_t IntelligenceFlowResponseGeneration.gmsCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 64), &qword_1EAE3D3D0, &unk_193964150);
}

uint64_t IntelligenceFlowResponseGeneration.gmsCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357BE70()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t IntelligenceFlowResponseGeneration.cacheManagerCallContext.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 68), &qword_1EAE3D3D8, &qword_193963850);
}

uint64_t IntelligenceFlowResponseGeneration.cacheManagerCallContext.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 68), &qword_1EAE3D3D8, &qword_193963850);
}

uint64_t IntelligenceFlowResponseGeneration.cacheManagerCallContext.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.intelligenceFlowIds.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 72), &qword_1EAE3B948, &qword_193957C10);
}

uint64_t IntelligenceFlowResponseGeneration.intelligenceFlowIds.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 72), &qword_1EAE3B948, &qword_193957C10);
}

uint64_t IntelligenceFlowResponseGeneration.intelligenceFlowIds.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

double sub_19357C038@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = -1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.event.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v2) + 76);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  memcpy(v0, (v1 + v3), 0x61uLL);
  return sub_193448804(__dst, &v5, &qword_1EAE3D3E0, &qword_193963858);
}

void *IntelligenceFlowResponseGeneration.event.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowResponseGeneration(v2) + 76);
  memcpy(__dst, (v1 + v3), 0x61uLL);
  sub_19344E6DC(__dst, &qword_1EAE3D3E0, &qword_193963858);
  return memcpy((v1 + v3), v0, 0x61uLL);
}

uint64_t IntelligenceFlowResponseGeneration.event.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357C180@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C1A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.ResponseSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C200()
{
  sub_19393CAB0();
  v0 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19357C250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19357C39C(uint64_t a1)
{
  sub_19393CAB0();
  v1 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t sub_19357C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19357C534@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.OverrideType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C55C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.OverrideType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C64C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C674@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.FallbackReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19357C764@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19357C78C@<X0>(char **a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.FatalError.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.postingSpanId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.postingSpanId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.rgId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3BCA0, &unk_19395C320);
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.rgId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3BCA0, &unk_19395C320);
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.rgId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = v0 + *(type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0) + 20);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_187();
  sub_19344E6DC(v11, v12, &unk_19395C320);
  v13 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  *v6 = 0;
  *(v6 + 8) = 1;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v16, v17, v18);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

void static IntelligenceFlowResponseGeneration.Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v48 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v47 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v23 = *(v20 + 48);
  sub_193448804(v3, &v47 - v21, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v1, &v22[v23], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v22);
  if (!v24)
  {
    sub_193448804(v22, v13, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&v22[v23]);
    if (!v24)
    {
      v26 = &v22[v23];
      v27 = v48;
      sub_19355A5F8(v26, v48);
      OUTLINED_FUNCTION_0_40();
      sub_19357CFFC(v28, v29, &protocol conformance descriptor for AIML.UUID);
      v30 = sub_19393C550();
      sub_1934F8A10(v27);
      sub_1934F8A10(v13);
      sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v30 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1934F8A10(v13);
LABEL_9:
    v25 = v22;
LABEL_10:
    sub_19344E6DC(v25, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_31(&v22[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_13:
  v31 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v32 = *(v31 + 20);
  v33 = (v3 + v32);
  v34 = *(v3 + v32 + 8);
  v35 = (v1 + v32);
  v36 = *(v1 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (*v33 != *v35)
  {
    LOBYTE(v36) = 1;
  }

  if ((v36 & 1) == 0)
  {
LABEL_19:
    v37 = *(v31 + 24);
    v38 = *(v14 + 48);
    OUTLINED_FUNCTION_175();
    sub_193448804(v39, v40, v41, &unk_19395C320);
    sub_193448804(v1 + v37, v18 + v38, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v18);
    if (v24)
    {
      OUTLINED_FUNCTION_31(v18 + v38);
      if (v24)
      {
        sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }
    }

    else
    {
      v42 = v47;
      sub_193448804(v18, v47, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(v18 + v38);
      if (!v43)
      {
        v44 = v48;
        sub_19355A5F8(v18 + v38, v48);
        OUTLINED_FUNCTION_0_40();
        sub_19357CFFC(v45, v46, &protocol conformance descriptor for AIML.UUID);
        sub_19393C550();
        sub_1934F8A10(v44);
        sub_1934F8A10(v42);
        sub_19344E6DC(v18, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_11;
      }

      sub_1934F8A10(v42);
    }

    v25 = v18;
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowResponseGeneration.Metadata.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_58_11(v11, v12, v13, v14, v15, v16, v17, v18, v30);
  OUTLINED_FUNCTION_6_3(v0, 1, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v0, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    v22 = sub_19357CFFC(v20, v21, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v22);
    sub_1934F8A10(v1);
  }

  v23 = type metadata accessor for IntelligenceFlowResponseGeneration.Metadata(0);
  v24 = v0 + *(v23 + 20);
  if (*(v24 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v25 = *v24;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v25);
  }

  sub_193448804(v0 + *(v23 + 24), v9, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v9, 1, v3);
  if (v19)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  sub_19355A5F8(v9, v1);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_40();
  v28 = sub_19357CFFC(v26, v27, &protocol conformance descriptor for AIML.UUID);
  OUTLINED_FUNCTION_33(v28);
  return sub_1934F8A10(v1);
}

uint64_t sub_19357CFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void IntelligenceFlowResponseGeneration.RequestEnded.responseSource.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 20));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.responseSource.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowResponseGeneration.RequestEnded.characterCount.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_263(*(v1 + 24));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.characterCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowResponseGeneration.RequestEnded.wordCount.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_263(*(v1 + 28));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.wordCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowResponseGeneration.RequestEnded.fallbackReason.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 32));
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.fallbackReason.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.transcriptEventId.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 36), &qword_1EAE3BCA0, &unk_19395C320);
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.transcriptEventId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 36), &qword_1EAE3BCA0, &unk_19395C320);
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEnded.init()()
{
  OUTLINED_FUNCTION_117();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  v7 = v0 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = v0 + v6[6];
  v9 = v0 + v6[7];
  v10 = v0 + v6[8];
  *v10 = 0;
  *(v10 + 8) = 256;
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_187();
  sub_19344E6DC(v15, v16, &unk_19395C320);
  v17 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);
  *v7 = 0;
  *(v7 + 8) = 256;
  *v8 = 0;
  *(v8 + 4) = 1;
  *v9 = 0;
  *(v9 + 4) = 1;
  *v10 = 0;
  *(v10 + 8) = 256;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v20, v21, v22);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_116();

  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

void static IntelligenceFlowResponseGeneration.RequestEnded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v52 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v53 = v17 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v23 = *(v20 + 48);
  OUTLINED_FUNCTION_96(v3, &v52 - v21);
  OUTLINED_FUNCTION_96(v1, &v22[v23]);
  OUTLINED_FUNCTION_14_1(v22);
  if (!v24)
  {
    sub_193448804(v22, v14, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_14_1(&v22[v23]);
    if (!v24)
    {
      sub_19355A5F8(&v22[v23], v7);
      OUTLINED_FUNCTION_0_40();
      sub_19357CFFC(v26, v27, &protocol conformance descriptor for AIML.UUID);
      v28 = sub_19393C550();
      sub_1934F8A10(v7);
      sub_1934F8A10(v14);
      sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
      if ((v28 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1934F8A10(v14);
LABEL_9:
    v25 = v22;
LABEL_10:
    sub_19344E6DC(v25, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_14_1(&v22[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v22, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_13:
  v29 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  OUTLINED_FUNCTION_90_13();
  if (v32)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v31)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_48_2(v30);
    v33 = IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter();
    if (v33 != IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter())
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_86_10();
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v36)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_86_10();
  if (v38)
  {
    if (!v37)
    {
      goto LABEL_11;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v39)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_90_13();
  if (v42)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  if ((v41 & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2(v40);
    v43 = IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter();
    if (v43 == IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter())
    {
LABEL_31:
      v44 = *(v29 + 36);
      v45 = *(v15 + 48);
      v46 = v3 + v44;
      v47 = v53;
      OUTLINED_FUNCTION_96(v46, v53);
      OUTLINED_FUNCTION_96(v1 + v44, v47 + v45);
      OUTLINED_FUNCTION_14_1(v47);
      if (v24)
      {
        OUTLINED_FUNCTION_14_1(v47 + v45);
        if (v24)
        {
          sub_19344E6DC(v47, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_11;
        }
      }

      else
      {
        v48 = v52;
        sub_193448804(v47, v52, &qword_1EAE3BCA0, &unk_19395C320);
        OUTLINED_FUNCTION_14_1(v47 + v45);
        if (!v49)
        {
          sub_19355A5F8(v47 + v45, v7);
          OUTLINED_FUNCTION_0_40();
          sub_19357CFFC(v50, v51, &protocol conformance descriptor for AIML.UUID);
          sub_19393C550();
          sub_1934F8A10(v7);
          sub_1934F8A10(v48);
          sub_19344E6DC(v47, &qword_1EAE3BCA0, &unk_19395C320);
          goto LABEL_11;
        }

        sub_1934F8A10(v48);
      }

      v25 = v47;
      goto LABEL_10;
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowResponseGeneration.RequestEnded.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_58_11(v11, v12, v13, v14, v15, v16, v17, v18, v29);
  OUTLINED_FUNCTION_6_3(v0, 1, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v0, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    v22 = sub_19357CFFC(v20, v21, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v22);
    sub_1934F8A10(v1);
  }

  v23 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEnded(0);
  if (*(v0 + v23[5] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_83_10();
    v24 = IntelligenceFlowResponseGeneration.ResponseSource.rawValue.getter();
    MEMORY[0x193B18030](v24);
  }

  if (*(v0 + v23[6] + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (*(v0 + v23[7] + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (*(v0 + v23[8] + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_83_10();
    v25 = IntelligenceFlowResponseGeneration.FallbackReason.rawValue.getter();
    MEMORY[0x193B18030](v25);
  }

  sub_193448804(v0 + v23[9], v9, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v9, 1, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v9, v1);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    v28 = sub_19357CFFC(v26, v27, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v28);
    sub_1934F8A10(v1);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_19357DC74(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19357DCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.displayString.getter()
{
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.displayString.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.displayString.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.spokenString.getter()
{
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.spokenString.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.spokenString.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.catId.getter()
{
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.catId.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.catId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.staticDialogId.getter()
{
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.staticDialogId.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.staticDialogId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AIML.UUID(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  v7 = (v0 + v6[5]);
  v8 = (v0 + v6[6]);
  v9 = (v0 + v6[7]);
  v10 = (v0 + v6[8]);
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v2);
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

void static IntelligenceFlowResponseGeneration.RequestEndedTier1.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_117();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v30);
  OUTLINED_FUNCTION_3_0();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - v33;
  v35 = *(v32 + 56);
  sub_193448804(v21, &a9 - v33, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v20, &v34[v35], &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v34);
  if (v36)
  {
    OUTLINED_FUNCTION_31(&v34[v35]);
    if (v36)
    {
      sub_19344E6DC(v34, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v34, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  sub_193448804(v34, v29, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v34[v35]);
  if (v36)
  {
    sub_1934F8A10(v29);
    goto LABEL_9;
  }

  sub_19355A5F8(&v34[v35], v22);
  OUTLINED_FUNCTION_0_40();
  sub_19357CFFC(v37, v38, &protocol conformance descriptor for AIML.UUID);
  v39 = sub_19393C550();
  sub_1934F8A10(v22);
  sub_1934F8A10(v29);
  sub_19344E6DC(v34, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v39 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  OUTLINED_FUNCTION_3();
  if (v42)
  {
    if (!v40)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v41);
    v45 = v36 && v43 == v44;
    if (!v45 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v40)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v48)
  {
    if (!v46)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v47);
    v51 = v36 && v49 == v50;
    if (!v51 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v46)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v54)
  {
    if (!v52)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_5(v53);
    v57 = v36 && v55 == v56;
    if (!v57 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v52)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3();
  if (v60 && v58)
  {
    OUTLINED_FUNCTION_5(v59);
    if (v36)
    {
      v63 = v61 == v62;
    }

    else
    {
      v63 = 0;
    }

    if (!v63)
    {
      sub_19393CA30();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowResponseGeneration.RequestEndedTier1.hash(into:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID(v2);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_193448804(v1, &v17 - v10, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v11, 1, v3);
  if (v12)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v11, v7);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    sub_19357CFFC(v13, v14, &protocol conformance descriptor for AIML.UUID);
    sub_19393C540();
    sub_1934F8A10(v7);
  }

  v15 = type metadata accessor for IntelligenceFlowResponseGeneration.RequestEndedTier1(0);
  if (*(v1 + v15[5] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v15[6] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v15[7] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!*(v1 + v15[8] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.OverrideEnded.overrideId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void IntelligenceFlowResponseGeneration.OverrideEnded.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_19357E808(uint64_t (*a1)(uint64_t *))
{
  OUTLINED_FUNCTION_39_14();
  sub_19393CAB0();
  a1(&v3);
  return sub_19393CB00();
}

uint64_t sub_19357E870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  OUTLINED_FUNCTION_39_14();
  sub_19393CAB0();
  a4(&v6);
  return sub_19393CB00();
}

uint64_t sub_19357E944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v7[72] = *v4;
  v8 = *(v4 + 8);
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.CacheManagerCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.CacheManagerCallContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357ED74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 44);
  v6 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 36) = v5;
  *(a1 + 32) = v6;
  return sub_19350CB08(v3, v4);
}

uint64_t sub_19357EDA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v8 = v1 + 40;
  result = sub_193456418(*(v8 - 16), *(v8 - 8));
  *(v8 - 32) = v2;
  *(v8 - 24) = v3;
  *(v8 - 16) = v4;
  *(v8 - 8) = v5;
  *(v8 + 4) = v7;
  *v8 = v6;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.GMSCallContext.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for IntelligenceFlowResponseGeneration.GMSCallContext(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19357EED8()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v3 = *(v2(v1) + 28);
  type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *v0 = 514;
  sub_193456418(0, 1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  *(v0 + 24) = xmmword_1939526A0;
  *(v0 + 44) = 0;
  *(v0 + 40) = 0;
  sub_19344E6DC(v0 + v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_19357EFBC()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_150();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  v20 = *v8;
  v21 = *v6;
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    goto LABEL_21;
  }

  v22 = v8[1];
  v23 = v6[1];
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    goto LABEL_21;
  }

  v48 = v0;
  v49 = v2;
  v47 = v13;
  v24 = *(v8 + 1);
  v25 = v8[16];
  v27 = *(v8 + 3);
  v26 = *(v8 + 4);
  v28 = v8[44];
  v29 = *(v8 + 10);
  v50 = v9;
  v51 = v29 | (v28 << 32);
  v58 = v24;
  v59 = v25;
  v60 = v27;
  v61 = v26;
  v63 = v28;
  v62 = v29;
  v30 = v6[16];
  v31 = *(v6 + 3);
  v32 = *(v6 + 4);
  LOBYTE(v28) = v6[44];
  LODWORD(v29) = *(v6 + 10);
  v52 = *(v6 + 1);
  v53 = v30;
  v54 = v31;
  v55 = v32;
  v57 = v28;
  v56 = v29;
  sub_19350CB08(v27, v26);
  v33 = OUTLINED_FUNCTION_13_0();
  sub_19350CB08(v33, v34);
  v35 = v4(&v58, &v52);
  v36 = OUTLINED_FUNCTION_13_0();
  sub_193456418(v36, v37);
  sub_193456418(v27, v26);
  if (v35)
  {
    v38 = *(v49(0) + 28);
    v39 = *(v16 + 48);
    sub_193448804(&v8[v38], v19, &qword_1EAE3BCA0, &unk_19395C320);
    sub_193448804(&v6[v38], &v19[v39], &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v19, 1, v50);
    if (!v41)
    {
      v40 = v48;
      sub_193448804(v19, v48, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_31(&v19[v39]);
      if (!v41)
      {
        v42 = &v19[v39];
        v43 = v47;
        sub_19355A5F8(v42, v47);
        OUTLINED_FUNCTION_0_40();
        sub_19357CFFC(v44, v45, &protocol conformance descriptor for AIML.UUID);
        sub_19393C550();
        sub_1934F8A10(v43);
        sub_1934F8A10(v40);
        sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
        goto LABEL_21;
      }

      sub_1934F8A10(v40);
LABEL_20:
      sub_19344E6DC(v19, &qword_1EAE3BD08, &qword_1939595A0);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31(&v19[v39]);
    if (!v41)
    {
      goto LABEL_20;
    }

    sub_19344E6DC(v19, &qword_1EAE3BCA0, &unk_19395C320);
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void sub_19357F360()
{
  OUTLINED_FUNCTION_117();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_3_4();
  v8 = type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  if (*v1 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (*(v1 + 1) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v14 = *(v1 + 16);
  v15 = *(v1 + 40);
  v16 = *(v1 + 44);
  v22[1] = *(v1 + 8);
  v23 = v14;
  v24 = *(v1 + 24);
  v26 = v16;
  v25 = v15;
  v6(v0);
  v17 = v4(0);
  sub_193448804(v1 + *(v17 + 28), v13, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v13, 1, v8);
  if (v18)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19355A5F8(v13, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_40();
    v21 = sub_19357CFFC(v19, v20, &protocol conformance descriptor for AIML.UUID);
    OUTLINED_FUNCTION_33(v21);
    sub_1934F8A10(v2);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowResponseGeneration.CatalogStarted.assetVersion.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::CatalogStarted __swiftcall IntelligenceFlowResponseGeneration.CatalogStarted.init()()
{
  *v0 = 2;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_19357F708(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
    {
      return v10;
    }
  }

  if (v6)
  {
    if (!v9)
    {
      return 0;
    }

    v11 = v5 == v8 && v6 == v9;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_19357F79C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v1)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t sub_19357F82C()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

BOOL static IntelligenceFlowResponseGeneration.CatalogEnded.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void IntelligenceFlowResponseGeneration.CatalogFailed.fatalError.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t IntelligenceFlowResponseGeneration.CatalogFailed.fatalError.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double IntelligenceFlowResponseGeneration.CatalogFailed.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_193456418(0, 1);
  result = 0.0;
  *(a1 + 16) = xmmword_1939526A0;
  *(a1 + 36) = 0;
  *(a1 + 32) = 0;
  return result;
}

__n128 IntelligenceFlowResponseGeneration.InferenceStarted.modelVersion.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193564E0C(*v1, v1[1], v1[2], v1[3], v1[4]);
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v5;
  v1[4] = v3;
  return result;
}

__n128 IntelligenceFlowResponseGeneration.InferenceStarted.promptVersion.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_193564E0C(v1[5], v1[6], v1[7], v1[8], v1[9]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  v1[9] = v3;
  return result;
}

void IntelligenceFlowResponseGeneration.InferenceStarted.init()(uint64_t a1@<X8>)
{
  *&v2 = OUTLINED_FUNCTION_98_12();
  *a1 = v2;
  *(a1 + 16) = v2;
  *(a1 + 32) = 1;
  *&v3 = OUTLINED_FUNCTION_98_12();
  *(a1 + 56) = v3;
  *(a1 + 40) = v3;
  *(a1 + 72) = 1;
}

uint64_t static IntelligenceFlowResponseGeneration.InferenceStarted.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v130 = *(a1 + 5);
  v131 = *(a1 + 7);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v127 = *(a2 + 5);
  v128 = *(a2 + 7);
  v129 = a1[9];
  v126 = a2[9];
  if (v6 == 1)
  {
    v12 = OUTLINED_FUNCTION_6_29();
    sub_193564DF8(v12, v13, v14, v15, 1);
    if (v11 == 1)
    {
      v16 = OUTLINED_FUNCTION_25_18();
      sub_193564DF8(v16, v17, v18, v19, 1);
      v20 = OUTLINED_FUNCTION_6_29();
      sub_193564E0C(v20, v21, v22, v23, 1);
LABEL_9:
      if (v129 == 1)
      {
        v65 = *(&v130 + 1);
        v66 = v130;
        v67 = *(&v131 + 1);
        v68 = v131;
        OUTLINED_FUNCTION_46_14();
        sub_193564DF8(v69, v70, v71, v72, 1);
        v73 = v126;
        v75 = *(&v127 + 1);
        v76 = v127;
        v74 = v128;
        if (v126 == 1)
        {
          v77 = 1;
          v78 = OUTLINED_FUNCTION_44_12();
          sub_193564DF8(v78, v79, v80, *(&v128 + 1), 1);
          OUTLINED_FUNCTION_46_14();
          v85 = 1;
LABEL_20:
          sub_193564E0C(v81, v82, v83, v84, v85);
          return v77 & 1;
        }

        v100 = OUTLINED_FUNCTION_44_12();
        v86 = *(&v128 + 1);
        sub_193564DF8(v100, v101, v102, *(&v128 + 1), v126);
      }

      else
      {
        v65 = *(&v130 + 1);
        v66 = v130;
        v139 = v130;
        v67 = *(&v131 + 1);
        v68 = v131;
        v140 = v131;
        v141 = v129;
        v73 = v126;
        v76 = v127;
        v86 = *(&v128 + 1);
        v74 = v128;
        v75 = *(&v127 + 1);
        if (v126 != 1)
        {
          v104 = OUTLINED_FUNCTION_9_40();
          sub_193564DF8(v104, v105, v106, v107, v108);
          v109 = OUTLINED_FUNCTION_44_12();
          sub_193564DF8(v109, v110, v111, *(&v128 + 1), v126);
          v112 = OUTLINED_FUNCTION_9_40();
          sub_193564DF8(v112, v113, v114, v115, v116);
          sub_1935013C0();
          v117 = sub_19393C550();
          v77 = v117;
          OUTLINED_FUNCTION_71_12(v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v127, v128, v126, v134, v135, v136);
          OUTLINED_FUNCTION_31_18();
          sub_193564E20(v137);
          v81 = OUTLINED_FUNCTION_9_40();
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_31_18();
        v87 = OUTLINED_FUNCTION_9_40();
        sub_193564DF8(v87, v88, v89, v90, v91);
        v92 = OUTLINED_FUNCTION_44_12();
        sub_193564DF8(v92, v93, v94, *(&v128 + 1), 1);
        v95 = OUTLINED_FUNCTION_9_40();
        sub_193564DF8(v95, v96, v97, v98, v99);
        sub_193564E20(v137);
      }

      *&v139 = v66;
      *(&v139 + 1) = v65;
      *&v140 = v68;
      *(&v140 + 1) = v67;
      v141 = v129;
      v142 = v76;
      v143 = v75;
      v144 = v74;
      v145 = v86;
      v146 = v73;
      goto LABEL_16;
    }

    v36 = OUTLINED_FUNCTION_25_18();
    sub_193564DF8(v36, v37, v38, v39, v11);
LABEL_7:
    *&v139 = v2;
    *(&v139 + 1) = v3;
    *&v140 = v4;
    *(&v140 + 1) = v5;
    v141 = v6;
    v142 = v8;
    v143 = v7;
    v144 = v10;
    v145 = v9;
    v146 = v11;
LABEL_16:
    sub_19344E6DC(&v139, &qword_1EAE3D8D8, &qword_193964160);
    goto LABEL_17;
  }

  *&v139 = *a1;
  *(&v139 + 1) = v3;
  *&v140 = v4;
  *(&v140 + 1) = v5;
  v141 = v6;
  if (v11 == 1)
  {
    v137[0] = v139;
    v137[1] = v140;
    v138 = v141;
    v24 = OUTLINED_FUNCTION_6_29();
    sub_193564DF8(v24, v25, v26, v27, v6);
    v28 = OUTLINED_FUNCTION_25_18();
    sub_193564DF8(v28, v29, v30, v31, 1);
    v32 = OUTLINED_FUNCTION_6_29();
    sub_193564DF8(v32, v33, v34, v35, v6);
    sub_193564E20(v137);
    goto LABEL_7;
  }

  *&v132 = v8;
  *(&v132 + 1) = v7;
  *&v133 = v10;
  *(&v133 + 1) = v9;
  v40 = OUTLINED_FUNCTION_6_29();
  sub_193564DF8(v40, v41, v42, v43, v6);
  v44 = OUTLINED_FUNCTION_25_18();
  sub_193564DF8(v44, v45, v46, v47, v11);
  v48 = OUTLINED_FUNCTION_6_29();
  sub_193564DF8(v48, v49, v50, v51, v6);
  sub_1935013C0();
  v52 = sub_19393C550();
  v53 = v52;
  OUTLINED_FUNCTION_71_12(v52, v54, v55, v56, v57, v58, v59, v60, v125, v126, v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v11, v134, v135, v136);
  OUTLINED_FUNCTION_31_18();
  sub_193564E20(v137);
  v61 = OUTLINED_FUNCTION_6_29();
  sub_193564E0C(v61, v62, v63, v64, v6);
  if (v53)
  {
    goto LABEL_9;
  }

LABEL_17:
  v77 = 0;
  return v77 & 1;
}