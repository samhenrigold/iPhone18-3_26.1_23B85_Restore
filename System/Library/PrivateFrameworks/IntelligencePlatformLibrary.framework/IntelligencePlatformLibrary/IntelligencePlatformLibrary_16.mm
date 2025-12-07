uint64_t IntelligenceFlowResponseGeneration.InferenceStarted.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v9 = v1[2];
    v8 = v1[3];
    v32 = v1[5];
    v34 = v1[7];
    v10 = v1[8];
    v11 = v1[6];
    v13 = *v1;
    v12 = v1[1];
    *&v35 = *v1;
    *(&v35 + 1) = v12;
    *&v37 = v9;
    *(&v37 + 1) = v8;
    OUTLINED_FUNCTION_103_0();
    v39 = v13;
    v40 = v12;
    v4 = v11;
    v7 = v10;
    v2 = v32;
    v5 = v34;
    v41 = v9;
    v42 = v8;
    v43 = v3;
    sub_1934FDBFC(&v39, &v44);
    sub_193564EA4();
    v14 = sub_19393C540();
    OUTLINED_FUNCTION_78_10(v14, v15, v16, v17, v18, v19, v20, v21, v32, v34, v35, v37, v3, v39, v40, v41, v42, v43, v44, v45, v46);
  }

  if (v6 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  *&v36 = v2;
  *(&v36 + 1) = v4;
  *&v38 = v5;
  *(&v38 + 1) = v7;
  OUTLINED_FUNCTION_103_0();
  v39 = v2;
  v40 = v4;
  v41 = v5;
  v42 = v7;
  v43 = v6;
  sub_1934FDBFC(&v39, &v44);
  sub_193564EA4();
  v23 = sub_19393C540();
  return OUTLINED_FUNCTION_78_10(v23, v24, v25, v26, v27, v28, v29, v30, v31, v33, v36, v38, v6, v39, v40, v41, v42, v43, v44, v45, v46);
}

uint64_t IntelligenceFlowResponseGeneration.InferenceStarted.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowResponseGeneration.InferenceStarted.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193580064(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.InferenceStarted.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_19358014C(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_19393CAB0();
  a1(v4);
  return sub_19393CB00();
}

uint64_t sub_1935801C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_19393CAB0();
  a4(v7);
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV5errorAC7RGErrorVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 36);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 20) = v4;
  *(a1 + 16) = v5;
  return sub_19350CB08(v2, v3);
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV5errorAC7RGErrorVSgvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = v1 + 32;
  result = sub_193456418(*(v6 - 16), *(v6 - 8));
  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  *(v6 + 4) = v5;
  *v6 = v4;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 36);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 36);
  v9 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    v10 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
    if (v10 != IntelligenceFlowResponseGeneration.FatalError.rawValue.getter())
    {
      return 0;
    }
  }

  v11 = v5 | (v4 << 32);
  v12 = v9 | (v8 << 32);
  if (v3 != 1)
  {
    if (v7 == 1)
    {
      v14 = OUTLINED_FUNCTION_14_24();
      sub_19350CB08(v14, v15);
      sub_19350CB08(v6, 1);
      v16 = OUTLINED_FUNCTION_14_24();
      sub_19350CB08(v16, v17);

LABEL_12:
      v20 = OUTLINED_FUNCTION_14_24();
      sub_193456418(v20, v21);
      v22 = OUTLINED_FUNCTION_17_19();
LABEL_26:
      sub_193456418(v22, v23);
      return 0;
    }

    if (v3)
    {
      if (v7)
      {
        if (v2 != v6 || v3 != v7)
        {
          v25 = sub_19393CA30();
          v26 = OUTLINED_FUNCTION_14_24();
          sub_19350CB08(v26, v27);
          v28 = OUTLINED_FUNCTION_17_19();
          sub_19350CB08(v28, v29);
          v30 = OUTLINED_FUNCTION_14_24();
          sub_19350CB08(v30, v31);
          v32 = OUTLINED_FUNCTION_17_19();
          sub_193456418(v32, v33);
          if ((v25 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }

        sub_19350CB08(v2, v3);
        v44 = OUTLINED_FUNCTION_187();
        sub_19350CB08(v44, v45);
        v46 = OUTLINED_FUNCTION_14_24();
        sub_19350CB08(v46, v47);
        v35 = OUTLINED_FUNCTION_187();
LABEL_30:
        sub_193456418(v35, v36);
LABEL_31:
        if ((v11 & 0x100000000) == 0)
        {
          if ((v12 & 0x100000000) != 0 || v11 != v9)
          {
            goto LABEL_25;
          }

LABEL_36:

          v48 = OUTLINED_FUNCTION_14_24();
          sub_193456418(v48, v49);
          return 1;
        }

        if ((v12 & 0x100000000) != 0)
        {
          goto LABEL_36;
        }

LABEL_25:

        v22 = OUTLINED_FUNCTION_14_24();
        goto LABEL_26;
      }

      v37 = OUTLINED_FUNCTION_14_24();
      sub_19350CB08(v37, v38);
      v34 = v3;
    }

    else
    {
      sub_19350CB08(v2, 0);
      v34 = 0;
      if (!v7)
      {
        sub_19350CB08(v6, 0);
        sub_19350CB08(v2, 0);
        v35 = v6;
        v36 = 0;
        goto LABEL_30;
      }
    }

    v39 = OUTLINED_FUNCTION_17_19();
    sub_19350CB08(v39, v40);
    sub_19350CB08(v2, v34);
    v41 = OUTLINED_FUNCTION_17_19();
    sub_193456418(v41, v42);
    goto LABEL_25;
  }

  sub_19350CB08(v2, 1);
  if (v7 != 1)
  {
    v18 = OUTLINED_FUNCTION_17_19();
    sub_19350CB08(v18, v19);
    goto LABEL_12;
  }

  v13 = 1;
  sub_19350CB08(v6, 1);
  sub_193456418(v2, 1);
  return v13;
}

void _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV13CatalogFailedV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 36);
  v4 = *(v1 + 32);
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    v5 = IntelligenceFlowResponseGeneration.FatalError.rawValue.getter();
    MEMORY[0x193B18030](v5);
  }

  if (v2 == 1)
  {
    OUTLINED_FUNCTION_95_8();
    OUTLINED_FUNCTION_92_7();
    return;
  }

  v6 = v4 | (v3 << 32);
  OUTLINED_FUNCTION_94();
  if (!v2)
  {
    OUTLINED_FUNCTION_95_8();
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    OUTLINED_FUNCTION_95_8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_94();

  sub_19393C640();
  if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  OUTLINED_FUNCTION_94();
  sub_19393CAE0();
LABEL_11:
  OUTLINED_FUNCTION_92_7();

  sub_193456418(v7, v8);
}

uint64_t IntelligenceFlowResponseGeneration.RGError.errorDomain.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.RGError.errorCode.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void IntelligenceFlowResponseGeneration.RGError.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t static IntelligenceFlowResponseGeneration.RGError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (*(a1 + 8))
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IntelligenceFlowResponseGeneration.RGError.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 20);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      return sub_19393CAD0();
    }
  }

  sub_19393CAD0();
  return sub_19393CAE0();
}

uint64_t IntelligenceFlowResponseGeneration.RGError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 20);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (!v2)
  {
    sub_19393CAE0();
  }

  return sub_19393CB00();
}

uint64_t sub_193580920(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.RGError.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.characterCount.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.wordCount.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.displayString.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.spokenString.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.catId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.staticDialogId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

double IntelligenceFlowResponseGeneration.Event.Generation.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

uint64_t sub_193580C60@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193580C88@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.Event.Generation.Source.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static IntelligenceFlowResponseGeneration.Event.Generation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v49 = *(a1 + 64);
  v52 = *(a1 + 72);
  v10 = *(a1 + 80);
  v51 = *(a1 + 88);
  v11 = *(a2 + 12);
  v12 = *(a2 + 16);
  v13 = *(a2 + 20);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v48 = *(a2 + 80);
  v50 = *(a2 + 88);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v45 = *(a1 + 32);
    v46 = *(a2 + 48);
    v47 = *(a2 + 72);
    v44 = *(a2 + 56);
    v42 = *(a1 + 48);
    v43 = *(a1 + 56);
    v41 = *(a2 + 64);
    v21 = *(a1 + 40);
    v22 = *(a2 + 40);
    v23 = *(a2 + 32);
    v24 = *(a1 + 20);
    v39 = *(a2 + 20);
    v40 = *(a1 + 12);
    v25 = *(a2 + 24);
    v38 = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
    v26 = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
    v13 = v39;
    v2 = v40;
    v14 = v25;
    v4 = v24;
    v16 = v23;
    v15 = v22;
    v7 = v21;
    v18 = v44;
    v6 = v45;
    v19 = v41;
    v8 = v42;
    v9 = v43;
    v17 = v46;
    v20 = v47;
    if (v38 != v26)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v11)
    {
      v27 = v12;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v13)
    {
      v28 = v14;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v15)
    {
      return 0;
    }

    if (v6 != v16 || v7 != v15)
    {
      v30 = v19;
      v31 = sub_19393CA30();
      v19 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v17 || v9 != v18)
    {
      v33 = v19;
      v34 = sub_19393CA30();
      v19 = v33;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v52)
  {
    if (!v20)
    {
      return 0;
    }

    v35 = v49 == v19 && v52 == v20;
    if (!v35 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v51)
  {
    if (!v50)
    {
      return 0;
    }

    v36 = v10 == v48 && v51 == v50;
    return v36 || (sub_19393CA30() & 1) != 0;
  }

  return !v50;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.hash(into:)(uint64_t a1)
{
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  v4 = *(v1 + 72);
  v5 = *(v1 + 88);
  if (*(v1 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v6 = *(v1 + 88);
    OUTLINED_FUNCTION_103_0();
    v5 = v6;
    v7 = IntelligenceFlowResponseGeneration.Event.Generation.Source.rawValue.getter();
    MEMORY[0x193B18030](v7);
  }

  if (v9)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (v10)
  {
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
    if (v2)
    {
LABEL_9:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      if (v3)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
LABEL_10:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_18:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_12;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_17:
  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_11:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_6_1();
  if (!v5)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_12:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();

  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.Event.Generation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowResponseGeneration.Event.Generation.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1935811E0(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.Generation.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_193581258@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193581280@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.Event.Fallback.Reason.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static IntelligenceFlowResponseGeneration.Event.Fallback.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v2 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
    return v2 == IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t IntelligenceFlowResponseGeneration.Event.Fallback.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  v2 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
  return MEMORY[0x193B18030](v2);
}

uint64_t IntelligenceFlowResponseGeneration.Event.Fallback.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v1 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

uint64_t sub_1935814C0()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_180();
    v1 = IntelligenceFlowResponseGeneration.Event.Fallback.Reason.rawValue.getter();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

uint64_t sub_193581580@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowResponseGeneration.Event.Override.OverrideType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1935815A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowResponseGeneration.Event.Override.OverrideType.allCases.getter();
  *a1 = result;
  return result;
}

BOOL sub_1935816A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v9 = v8();
    if (v9 != a3())
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v10 = v3 == v6 && v4 == v5;
    return v10 || (sub_19393CA30() & 1) != 0;
  }

  return !v5;
}

void sub_193581784(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 24);
  if (*(v2 + 9) != 1)
  {
    v6 = OUTLINED_FUNCTION_103_0();
    v7 = a2(v6);
    MEMORY[0x193B18030](v7);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_92_7();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_92_7();

  sub_19393C640();
}

uint64_t sub_193581854(uint64_t (*a1)(void))
{
  v3 = *(v1 + 9);
  v4 = *(v1 + 24);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v3 != 1)
  {
    OUTLINED_FUNCTION_180();
    v5 = a1();
    MEMORY[0x193B18030](v5);
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19358193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 9);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  v13 = *(v4 + 1);
  sub_19393CAB0();
  a4(v9);
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.modelVersion.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t static IntelligenceFlowResponseGeneration.Event.ModelInference.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  if (a1[1])
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v6)
    {
      if (v2 == v5 && v3 == v6)
      {
        return 1;
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_46_14();
      if (sub_19393CA30())
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.hash(into:)()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    sub_19393CAD0();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_17_19();
  sub_19393C640();
  if (!v1)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.Event.ModelInference.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_15_1();
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193581C2C(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.ModelInference.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.ruleName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.ruleFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

void __swiftcall IntelligenceFlowResponseGeneration.Event.SafetyCheck.init()(IntelligencePlatformLibrary::IntelligenceFlowResponseGeneration::Event::SafetyCheck *__return_ptr retstr)
{
  retstr->ruleName.value._countAndFlagsBits = 0;
  retstr->ruleName.value._object = 0;
  retstr->isProfanityFiltered.value = 2;
  retstr->ruleFailureReason.value._countAndFlagsBits = 0;
  retstr->ruleFailureReason.value._object = 0;
}

BOOL static IntelligenceFlowResponseGeneration.Event.SafetyCheck.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = 0;
  if (v6 != 2 && ((v6 ^ v2) & 1) == 0)
  {
LABEL_15:
    if (v4)
    {
      if (!v7)
      {
        return 0;
      }

      if (v3 != v8 || v4 != v7)
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_46_14();
        if ((sub_19393CA30() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return !v7;
  }

  return result;
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.hash(into:)()
{
  OUTLINED_FUNCTION_77_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v2)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t IntelligenceFlowResponseGeneration.Event.SafetyCheck.hashValue.getter()
{
  OUTLINED_FUNCTION_51_11();
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.SafetyCheck.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193581F9C()
{
  OUTLINED_FUNCTION_51_11();
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.SafetyCheck.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowResponseGeneration.Event.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.hash(into:)(&v5, v1, v2, v3);
  return sub_19393CB00();
}

uint64_t sub_193582040(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_19393CAB0();
  IntelligenceFlowResponseGeneration.Event.hash(into:)(&v6, v2, v3, v4);
  return sub_19393CB00();
}

unint64_t sub_193582108()
{
  result = qword_1EAE3D8F0;
  if (!qword_1EAE3D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D8F0);
  }

  return result;
}

unint64_t sub_193582190()
{
  result = qword_1EAE3D908;
  if (!qword_1EAE3D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D908);
  }

  return result;
}

unint64_t sub_193582218()
{
  result = qword_1EAE3D920;
  if (!qword_1EAE3D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D920);
  }

  return result;
}

unint64_t sub_1935822A0()
{
  result = qword_1EAE3D938;
  if (!qword_1EAE3D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D938);
  }

  return result;
}

unint64_t sub_193582344()
{
  result = qword_1EAE3D940;
  if (!qword_1EAE3D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D940);
  }

  return result;
}

unint64_t sub_1935823E4()
{
  result = qword_1EAE3D950;
  if (!qword_1EAE3D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D950);
  }

  return result;
}

unint64_t sub_193582488()
{
  result = qword_1EAE3D958;
  if (!qword_1EAE3D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D958);
  }

  return result;
}

unint64_t sub_1935824E0()
{
  result = qword_1EAE3D960;
  if (!qword_1EAE3D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D960);
  }

  return result;
}

unint64_t sub_193582538()
{
  result = qword_1EAE3D968;
  if (!qword_1EAE3D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D968);
  }

  return result;
}

unint64_t sub_193582594()
{
  result = qword_1EAE3D970;
  if (!qword_1EAE3D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D970);
  }

  return result;
}

unint64_t sub_1935825EC()
{
  result = qword_1EAE3D978;
  if (!qword_1EAE3D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D978);
  }

  return result;
}

unint64_t sub_193582644()
{
  result = qword_1EAE3D980;
  if (!qword_1EAE3D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D980);
  }

  return result;
}

unint64_t sub_193582748()
{
  result = qword_1EAE3D988;
  if (!qword_1EAE3D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D988);
  }

  return result;
}

unint64_t sub_1935827A0()
{
  result = qword_1EAE3D990;
  if (!qword_1EAE3D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D990);
  }

  return result;
}

unint64_t sub_1935827F8()
{
  result = qword_1EAE3D998;
  if (!qword_1EAE3D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D998);
  }

  return result;
}

unint64_t sub_193582854()
{
  result = qword_1EAE3D9A0;
  if (!qword_1EAE3D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9A0);
  }

  return result;
}

unint64_t sub_1935828AC()
{
  result = qword_1EAE3D9A8;
  if (!qword_1EAE3D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9A8);
  }

  return result;
}

unint64_t sub_193582904()
{
  result = qword_1EAE3D9B0;
  if (!qword_1EAE3D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9B0);
  }

  return result;
}

unint64_t sub_193582960()
{
  result = qword_1EAE3D9B8;
  if (!qword_1EAE3D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9B8);
  }

  return result;
}

unint64_t sub_1935829B8()
{
  result = qword_1EAE3D9C0;
  if (!qword_1EAE3D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9C0);
  }

  return result;
}

unint64_t sub_193582A10()
{
  result = qword_1EAE3D9C8;
  if (!qword_1EAE3D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9C8);
  }

  return result;
}

unint64_t sub_193582A68()
{
  result = qword_1EAE3D9D0;
  if (!qword_1EAE3D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9D0);
  }

  return result;
}

unint64_t sub_193582AF0()
{
  result = qword_1EAE3D9E8;
  if (!qword_1EAE3D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9E8);
  }

  return result;
}

unint64_t sub_193582B48()
{
  result = qword_1EAE3D9F0;
  if (!qword_1EAE3D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3D9F0);
  }

  return result;
}

unint64_t sub_193582BD0()
{
  result = qword_1EAE3DA08;
  if (!qword_1EAE3DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA08);
  }

  return result;
}

unint64_t sub_193582C28()
{
  result = qword_1EAE3DA10;
  if (!qword_1EAE3DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA10);
  }

  return result;
}

unint64_t sub_193582CB0()
{
  result = qword_1EAE3DA28;
  if (!qword_1EAE3DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA28);
  }

  return result;
}

unint64_t sub_193582D08()
{
  result = qword_1EAE3DA30;
  if (!qword_1EAE3DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA30);
  }

  return result;
}

unint64_t sub_193582D60()
{
  result = qword_1EAE3DA38;
  if (!qword_1EAE3DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA38);
  }

  return result;
}

unint64_t sub_193582DB8()
{
  result = qword_1EAE3DA40;
  if (!qword_1EAE3DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA40);
  }

  return result;
}

void sub_193582E88(uint64_t a1)
{
  OUTLINED_FUNCTION_65_9(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_65_9(v2, &qword_1ED506AC0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_65_9(v4, &qword_1ED507A78);
        if (v6 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506AE0, &type metadata for IntelligenceFlowResponseGeneration.RequestContext);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_65_9(v7, qword_1ED505AF0);
            if (v9 <= 0x3F)
            {
              sub_19349D1FC(319, qword_1ED505B30, &type metadata for IntelligenceFlowResponseGeneration.OverrideContext);
              if (v10 <= 0x3F)
              {
                sub_19349D1FC(319, qword_1ED505A90, &type metadata for IntelligenceFlowResponseGeneration.ValidationContext);
                if (v11 <= 0x3F)
                {
                  sub_19349D1FC(319, &qword_1ED506AE8, &type metadata for IntelligenceFlowResponseGeneration.CatalogContext);
                  if (v12 <= 0x3F)
                  {
                    sub_19349D1FC(319, &qword_1ED506AD8, &type metadata for IntelligenceFlowResponseGeneration.InferenceContext);
                    if (v13 <= 0x3F)
                    {
                      sub_19349D1FC(319, &qword_1ED506AD0, &type metadata for IntelligenceFlowResponseGeneration.HallucinationDetectionContext);
                      if (v15 <= 0x3F)
                      {
                        OUTLINED_FUNCTION_65_9(v14, qword_1ED505B90);
                        if (v17 <= 0x3F)
                        {
                          OUTLINED_FUNCTION_65_9(v16, qword_1ED505A58);
                          if (v19 <= 0x3F)
                          {
                            OUTLINED_FUNCTION_65_9(v18, qword_1ED5077D0);
                            if (v20 <= 0x3F)
                            {
                              sub_19349D1FC(319, &qword_1ED506AC8, &type metadata for IntelligenceFlowResponseGeneration.Event);
                              if (v21 <= 0x3F)
                              {
                                OUTLINED_FUNCTION_15_2();
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
            }
          }
        }
      }
    }
  }
}

void sub_193583148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowResponseGeneration.FatalError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceFlowResponseGeneration.FatalError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_193583248(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_42Tm()
{
  OUTLINED_FUNCTION_91_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t __swift_store_extra_inhabitant_index_43Tm()
{
  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v0 = OUTLINED_FUNCTION_36();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1935833CC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1EAE3DA50, &type metadata for IntelligenceFlowResponseGeneration.ResponseSource);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1EAE3DA58, &type metadata for IntelligenceFlowResponseGeneration.FallbackReason);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary0A22FlowResponseGenerationV7RGErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_193583530(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_139Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    OUTLINED_FUNCTION_71();
    if (v5 ^ v6 | v4)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v9 = OUTLINED_FUNCTION_101(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void __swift_store_extra_inhabitant_index_140Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 2147483645)
  {
    *(v1 + 32) = (v0 + 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
    v5 = OUTLINED_FUNCTION_101(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_193583818(uint64_t a1)
{
  OUTLINED_FUNCTION_2_37(a1, qword_1ED507908);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1935838DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19358392C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1935839CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 80))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_91_8();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193583A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

_BYTE *_s27IntelligencePlatformLibrary34IntelligenceFlowResponseGenerationV12CatalogEndedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_193583BA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 37))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_91_8();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193583BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_193583C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193583CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFC && *(a1 + 97))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 251);
  }

  v3 = *(a1 + 96);
  if (v3 > 4)
  {
    return OUTLINED_FUNCTION_46_4(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_193583D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_193583D8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193583DD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceFlowResponseGeneration.Event.Fallback(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_193583EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193583EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_193583F70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193583FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_39_14()
{
  v2 = v0->n128_u8[8];
  v3 = v0[2].n128_u32[0];
  v4 = v0[2].n128_u8[4];
  *(v1 - 56) = v0->n128_u64[0];
  *(v1 - 48) = v2;
  result = v0[1];
  *(v1 - 40) = result;
  *(v1 - 20) = v4;
  *(v1 - 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_13@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return sub_193564DF8(a1, a2, a3, a4, a5);
}

BOOL OUTLINED_FUNCTION_42_17@<W0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{

  return sub_19357C4C0(a3, v3, a1, a2, v4);
}

__n128 OUTLINED_FUNCTION_51_11()
{
  v2 = *(v0 + 16);
  *(v1 - 64) = *v0;
  *(v1 - 48) = v2;
  result = *(v0 + 24);
  *(v1 - 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_193448804(v10, &a9 - v9, v11, v12);
}

void OUTLINED_FUNCTION_65_9(uint64_t a1, unint64_t *a2)
{

  sub_193583148(319, a2, v2);
}

_BYTE *_s10TranscriptOwst_0(_BYTE *result, int a2, int a3)
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

uint64_t sub_193584430()
{
  v0 = sub_19393C820();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_1();
  v4 = v3 - v2;
  sub_19393C810();
  OUTLINED_FUNCTION_9_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = sub_19393C4E0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5_1();
  sub_19343CF00(0, &qword_1EAE3BA78, 0x1E69E9610);
  sub_19393C4D0();
  sub_1934E666C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA88, &qword_1939584B8);
  sub_1934E66C4();
  sub_19393C8A0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_19393C840();
  qword_1ED510468 = result;
  return result;
}

id sub_19358462C@<X0>(void *a1@<X8>)
{
  v3 = qword_1EAE630F0;
  if (qword_1EAE630F0)
  {
    v4 = qword_1EAE630F0;
LABEL_3:
    *a1 = v4;
    return v3;
  }

  sub_193434304();
  result = sub_19393BF70();
  if (!v1)
  {
    v6 = qword_1EAE630F0;
    qword_1EAE630F0 = result;
    v4 = result;

    v3 = 0;
    goto LABEL_3;
  }

  return result;
}

id sub_1935846F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_193958C00;
  v1 = OUTLINED_FUNCTION_33_12();
  *(v1 + 16) = xmmword_1939583F0;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  *(v1 + 40) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_16_19();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 32) = result;
  v4 = OUTLINED_FUNCTION_33_12();
  *(v4 + 32) = OUTLINED_FUNCTION_47_15(v4, v5, v6, v7, v8, v9, v10, v11, xmmword_1939583F0);
  *(v4 + 40) = sub_19393C850();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_16_19();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 40) = result;
  v13 = OUTLINED_FUNCTION_33_12();
  *(v13 + 32) = OUTLINED_FUNCTION_47_15(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  *(v13 + 40) = sub_19393C850();
  v21 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000015, 0x8000000193A1FAF0, 6, 1, v13, 14, 3);
  if (result)
  {
    *(v0 + 48) = result;
    qword_1ED5127B8 = v0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_193584888()
{
  if (qword_1ED50E8E0 != -1)
  {
    OUTLINED_FUNCTION_9_41(&qword_1ED50E8E0);
  }

  return &qword_1ED5127B8;
}

id sub_1935848C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_193958C00;
  OUTLINED_FUNCTION_32_17();
  v3 = OUTLINED_FUNCTION_7_28();
  *(v2 + 32) = sub_1934E5F70(v3, 0xE900000000000070, 0xD00000000000002ELL, v0 | 0x8000000000000000, 1);
  v4 = objc_allocWithZone(*(v1 + 664));
  *(v2 + 40) = OUTLINED_FUNCTION_22_20();
  v5 = objc_allocWithZone(*(v1 + 664));
  result = OUTLINED_FUNCTION_22_20();
  *(v2 + 48) = result;
  qword_1EAEA8718 = v2;
  return result;
}

id sub_1935849E0()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C98 != -1)
  {
    OUTLINED_FUNCTION_6_30(&qword_1EAE45C98);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_193584AEC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v3 = OUTLINED_FUNCTION_3_28(v2);
  OUTLINED_FUNCTION_13_15(v3, xmmword_19394FBB0);
  v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v5 = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
  v3[5].n128_u64[1] = v5;
  v3[4].n128_u64[0] = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3[7].n128_u64[1] = v5;
  v3[6].n128_u64[0] = v6;
  v7 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_13_15(v7, xmmword_19394FBB0);
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7[5].n128_u64[1] = v5;
  v7[4].n128_u64[0] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v7[7].n128_u64[1] = v5;
  v7[6].n128_u64[0] = v9;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v1)
  {
  }

  else
  {
    v11 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_8_24(v0);
  }
}

id sub_193584EF0()
{
  OUTLINED_FUNCTION_25_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v6 = OUTLINED_FUNCTION_3_28(v5);
  OUTLINED_FUNCTION_13_10(v6, xmmword_19394FBB0);
  v7 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v8 = OUTLINED_FUNCTION_40_10(v7, &qword_1EAE3BA68);
  v9 = MEMORY[0x1E69E6158];
  v6[2].n128_u64[0] = v7;
  v6[5].n128_u64[1] = v9;
  v6[3].n128_u64[1] = v8;
  v6[4].n128_u64[0] = v4;
  v6[4].n128_u64[1] = v1;
  v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v11 = OUTLINED_FUNCTION_49_9();
  v6[7].n128_u64[1] = v8;
  v6[6].n128_u64[0] = v11;
  v12 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v12, v13, v14, v15, v16, v17, v18, v19, v20, v34, v36, v21);
  v3[4] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v3[11] = v9;
  v3[7] = v8;
  v3[8] = v4;
  v3[9] = v1;
  v22 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v23 = OUTLINED_FUNCTION_49_9();
  v3[15] = v8;
  v3[12] = v23;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_45_14();
  if (v2)
  {
  }

  else
  {
    v25 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v33 = OUTLINED_FUNCTION_37_12(v25, v26, v27, v28, v29, v30, v31, v32, v35, v37);
    return OUTLINED_FUNCTION_8_24(v33);
  }
}

id sub_1935852B0()
{
  OUTLINED_FUNCTION_25_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v6 = OUTLINED_FUNCTION_3_28(v5);
  OUTLINED_FUNCTION_13_10(v6, xmmword_19394FBB0);
  v7 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v8 = OUTLINED_FUNCTION_40_10(v7, &qword_1EAE3BA68);
  OUTLINED_FUNCTION_44_13(v8);
  v6[2].n128_u64[0] = v7;
  v6[4].n128_u64[0] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v9 = MEMORY[0x1E69E6158];
  v6[7].n128_u64[1] = MEMORY[0x1E69E6158];
  v6[5].n128_u64[1] = v4;
  v6[6].n128_u64[0] = v3;
  v6[6].n128_u64[1] = v1;
  v10 = OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_26(v10, v11, v12, v13, v14, v15, v16, v17, v18, v33, v35, v19);
  v20 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v21 = OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_41_14(v21);
  v2[8] = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v0 + 2936)];
  v2[15] = v9;
  v2[11] = v4;
  v2[12] = v3;
  v2[13] = v1;
  v22 = _MergedGlobals_15;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_46_15();
  if (v22)
  {
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v32 = OUTLINED_FUNCTION_37_12(v24, v25, v26, v27, v28, v29, v30, v31, v34, v36);
    return OUTLINED_FUNCTION_8_24(v32);
  }
}

id sub_193585668(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  HIDWORD(v57) = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19394FBB0;
  if (a2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v17 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v17 + 32) = v18;
  }

  else
  {
    v59 = MEMORY[0x1E69E63B0];
    *&v58 = a1;
    sub_193495EE0(&v58, (v17 + 32));
  }

  v19 = MEMORY[0x1E69E6158];
  if (a6)
  {
    v59 = MEMORY[0x1E69E6158];
    *&v58 = a5;
    *(&v58 + 1) = a6;
    sub_193495EE0(&v58, (v17 + 64));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
    *(v17 + 88) = OUTLINED_FUNCTION_14_11(v20, &qword_1EAE3BA68);
    *(v17 + 64) = v20;
    if (v59)
    {
      sub_19344E680(&v58, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  if (*(&a9 + 1))
  {
    v59 = v19;
    v58 = a9;
    sub_193495EE0(&v58, (v17 + 96));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v21 = [v10 &selRef_entityIdentifier];
    *(v17 + 120) = OUTLINED_FUNCTION_14_11(v21, &qword_1EAE3BA68);
    *(v17 + 96) = v21;
    if (v59)
    {
      sub_19344E680(&v58, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  v22 = swift_allocObject();
  OUTLINED_FUNCTION_42_18(v22, v23, v24, v25, v26, v27, v28, v29, v30, v48, v50, a3, a7, v31);
  if (v32)
  {
    OUTLINED_FUNCTION_15_28();
    v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v33 = [v10 &selRef_entityIdentifier];
    v34 = OUTLINED_FUNCTION_14_11(v33, &qword_1EAE3BA68);
    *(v16 + 56) = v34;
    *(v16 + 32) = v33;
    if (v59)
    {
      v34 = sub_19344E680(&v58, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v59 = MEMORY[0x1E69E63B0];
    *&v58 = v53;
    sub_193495EE0(&v58, (v16 + 32));
  }

  if (a8)
  {
    v59 = v19;
    OUTLINED_FUNCTION_48_10(v34, v35, v36, v37, v38, v39, v40, v41, v49, v51, v53, v55, 3, 6, v56, v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v42 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
    *(v16 + 88) = OUTLINED_FUNCTION_14_11(v42, &qword_1EAE3BA68);
    *(v16 + 64) = v42;
    if (v59)
    {
      sub_19344E680(&v58, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  if (*(&a10 + 1))
  {
    v59 = v19;
    v58 = a10;
    sub_193495EE0(&v58, (v16 + 96));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v43 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
    OUTLINED_FUNCTION_15_23();
    v44 = [v10 &selRef_entityIdentifier];
    *(v16 + 120) = OUTLINED_FUNCTION_14_11(v44, &qword_1EAE3BA68);
    *(v16 + 96) = v44;
    if (v59)
    {
      sub_19344E680(&v58, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  v45 = _MergedGlobals_15;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13(sub_193587C60);
  if (v45)
  {
  }

  else
  {
    v47 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_19_24(v51);
  }
}

id sub_193585B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939583F0;
  OUTLINED_FUNCTION_32_17();
  v3 = OUTLINED_FUNCTION_7_28();
  *(v2 + 32) = sub_1934E5F70(v3, 0xE900000000000070, 0xD00000000000002ELL, v0 | 0x8000000000000000, 1);
  v4 = objc_allocWithZone(*(v1 + 664));
  result = sub_1934E5F70(0x6449746E657665, 0xE700000000000000, 0x6449746E657665, 0xE700000000000000, 2);
  *(v2 + 40) = result;
  qword_1EAEA8710 = v2;
  return result;
}

id sub_193585BF4()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C90 != -1)
  {
    OUTLINED_FUNCTION_10_27(&qword_1EAE45C90);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_193585D34()
{
  OUTLINED_FUNCTION_25_19();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v3 = OUTLINED_FUNCTION_11_15(v2);
  OUTLINED_FUNCTION_13_10(v3, xmmword_19394FBE0);
  v4 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v5 = OUTLINED_FUNCTION_40_10(v4, &qword_1EAE3BA68);
  v3[2].n128_u64[0] = v4;
  v6 = MEMORY[0x1E69E6158];
  v3[5].n128_u64[1] = MEMORY[0x1E69E6158];
  v3[3].n128_u64[1] = v5;
  v3[4].n128_u64[0] = v1;
  v3[4].n128_u64[1] = v0;
  v7 = OUTLINED_FUNCTION_11_15(v2);
  OUTLINED_FUNCTION_2_26(v7, v8, v9, v10, v11, v12, v13, v14, v15, v29, v31, v16);
  v17 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  OUTLINED_FUNCTION_15_23();
  v2[4] = OUTLINED_FUNCTION_49_9();
  v2[11] = v6;
  v2[7] = v5;
  v2[8] = v1;
  v2[9] = v0;
  v18 = _MergedGlobals_15;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_46_15();
  if (v18)
  {
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v28 = OUTLINED_FUNCTION_37_12(v20, v21, v22, v23, v24, v25, v26, v27, v30, v32);
    return OUTLINED_FUNCTION_8_24(v28);
  }
}

id sub_19358609C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v52) = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v13 = OUTLINED_FUNCTION_11_15(v12);
  *(v13 + 16) = xmmword_19394FBE0;
  if (a2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v13 + 56) = sub_19343CF00(0, &qword_1EAE3BA68, 0x1E695DFB0);
    *(v13 + 32) = v14;
  }

  else
  {
    v54 = MEMORY[0x1E69E63B0];
    *&v53 = a1;
    sub_193495EE0(&v53, (v13 + 32));
  }

  v15 = MEMORY[0x1E69E6158];
  v16 = a8;
  if (a6)
  {
    v54 = MEMORY[0x1E69E6158];
    *&v53 = a5;
    *(&v53 + 1) = a6;
    sub_193495EE0(&v53, (v13 + 64));
  }

  else
  {
    OUTLINED_FUNCTION_15_28();
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
    *(v13 + 88) = OUTLINED_FUNCTION_27_16(v17, &qword_1EAE3BA68);
    *(v13 + 64) = v17;
    if (v54)
    {
      sub_19344E680(&v53, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  v18 = OUTLINED_FUNCTION_11_15(v12);
  OUTLINED_FUNCTION_42_18(v18, v19, v20, v21, v22, v23, v24, v25, v26, v43, a3, a5, a7, v27);
  if (v28)
  {
    OUTLINED_FUNCTION_15_28();
    v29 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v30 = [v29 &selRef_entityIdentifier];
    v31 = OUTLINED_FUNCTION_27_16(v30, &qword_1EAE3BA68);
    *(v12 + 56) = v31;
    *(v12 + 32) = v30;
    if (v54)
    {
      v31 = sub_19344E680(&v53, &qword_1EAE3BA70, &qword_193958408);
    }

    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v54 = MEMORY[0x1E69E63B0];
    *&v53 = v46;
    sub_193495EE0(&v53, (v12 + 32));

    if (v16)
    {
LABEL_12:
      v54 = v15;
      OUTLINED_FUNCTION_48_10(v31, v32, v33, v34, v35, v36, v37, v38, v44, v46, v48, v50, 2, 4, v51, v52, v53);
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_15_28();
  v39 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) &selRef_entityIdentifier];
  *(v12 + 88) = OUTLINED_FUNCTION_27_16(v39, &qword_1EAE3BA68);
  *(v12 + 64) = v39;
  if (v54)
  {
    sub_19344E680(&v53, &qword_1EAE3BA70, &qword_193958408);
  }

LABEL_16:
  v40 = _MergedGlobals_15;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13(sub_193587C60);
  if (v40)
  {
  }

  else
  {
    v42 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_19_24(v44);
  }
}

void sub_193586404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_19393C580();
  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  sub_19393C6D0();
  v7 = sub_19393C580();
  a6(v7);
  __break(1u);
}

id sub_193586480()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1939583F0;
  OUTLINED_FUNCTION_32_17();
  v3 = OUTLINED_FUNCTION_7_28();
  *(v2 + 32) = sub_1934E5F70(v3, v4 + 12, v5 | 0xC, v0 | 0x8000000000000000, 1);
  v6 = objc_allocWithZone(*(v1 + 664));
  result = sub_1934E5F70(0x496E6F6973736573, 0xE900000000000064, 0xD000000000000022, 0x8000000193A1FA00, 6);
  *(v2 + 40) = result;
  qword_1EAEA8708 = v2;
  return result;
}

id sub_19358658C()
{
  v1 = sub_19393C570();
  if (qword_1EAE45C88 != -1)
  {
    OUTLINED_FUNCTION_14_25(&qword_1EAE45C88);
  }

  sub_19343CF00(0, &qword_1EAE3A8A0, 0x1E698F298);
  v2 = sub_19393C6C0();
  v3 = sub_19393C570();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex();
  v10 = OUTLINED_FUNCTION_9_9(v12.super_class, sel_initWithName_fields_streamIdentifier_, v4, v5, v6, v7, v8, v9, v12);

  return v10;
}

id sub_193586674(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v4 = OUTLINED_FUNCTION_11_15(v3);
  OUTLINED_FUNCTION_13_15(v4, xmmword_19394FBE0);
  v5 = OUTLINED_FUNCTION_50_9(objc_allocWithZone(MEMORY[0x1E695DFB0]));
  v6 = OUTLINED_FUNCTION_40_10(v5, &qword_1EAE3BA68);
  v4[5].n128_u64[1] = v6;
  v4[4].n128_u64[0] = v5;
  v7 = OUTLINED_FUNCTION_11_15(v3);
  OUTLINED_FUNCTION_13_15(v7, xmmword_19394FBE0);
  v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) (v1 + 2936)];
  v7[5].n128_u64[1] = v6;
  v7[4].n128_u64[0] = v8;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  sub_19393C830();
  if (v2)
  {
  }

  else
  {
    objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v10, v4, v7, v11);
  }
}

id sub_19358680C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v11 = OUTLINED_FUNCTION_11_15(v10);
  OUTLINED_FUNCTION_13_10(v11, xmmword_19394FBE0);
  v12 = MEMORY[0x1E69E63B0];
  if (a2)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v11 + 56) = OUTLINED_FUNCTION_39_15(v13, &qword_1EAE3BA68);
    *(v11 + 32) = v13;
  }

  else
  {
    *(&v26 + 1) = MEMORY[0x1E69E63B0];
    *&v25 = a1;
    sub_193495EE0(&v25, (v11 + 32));
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v15 = OUTLINED_FUNCTION_39_15(v14, &qword_1EAE3BA68);
  *(v11 + 88) = v15;
  *(v11 + 64) = v14;
  v16 = OUTLINED_FUNCTION_11_15(v10);
  *(v16 + 16) = v23;
  if (a4)
  {
    v25 = 0u;
    v26 = 0u;
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 56) = v15;
    *(v16 + 32) = v17;
    if (*(&v26 + 1))
    {
      sub_19344E680(&v25, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    *(&v26 + 1) = v12;
    *&v25 = a3;
    sub_193495EE0(&v25, (v16 + 32));
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v16 + 88) = v15;
  *(v16 + 64) = v18;
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13(a5);
  if (v5)
  {
  }

  else
  {
    v20 = v25;
    v21 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v22, v11, v16, v20);
  }
}

id sub_193586A44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v4 = OUTLINED_FUNCTION_11_15(v3);
  OUTLINED_FUNCTION_13_10(v4, xmmword_19394FBE0);
  v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v6 = OUTLINED_FUNCTION_27_16(v5, &qword_1EAE3BA68);
  OUTLINED_FUNCTION_44_13(v6);
  v4[2].n128_u64[0] = v5;
  v7 = sub_19393BE60();
  v4[5].n128_u64[1] = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(&v4[4]);
  OUTLINED_FUNCTION_9_10();
  v9 = *(v8 + 16);
  v9();
  v10 = OUTLINED_FUNCTION_11_15(v3);
  OUTLINED_FUNCTION_2_26(v10, v11, v12, v13, v14, v15, v16, v17, v18, v31, v33, v19);
  OUTLINED_FUNCTION_41_14([objc_allocWithZone(MEMORY[0x1E695DFB0]) init]);
  *(v3 + 88) = v7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v3 + 64));
  (v9)(boxed_opaque_existential_1Tm, a1, v7);
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_45_14();
  if (v1)
  {
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    v30 = OUTLINED_FUNCTION_37_12(v22, v23, v24, v25, v26, v27, v28, v29, v32, v34);
    return OUTLINED_FUNCTION_8_24(v30);
  }
}

id sub_193586C04(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v11 = OUTLINED_FUNCTION_11_15(v10);
  v25 = xmmword_19394FBE0;
  *(v11 + 16) = xmmword_19394FBE0;
  v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v13 = OUTLINED_FUNCTION_40_10(v12, &qword_1EAE3BA68);
  *(v11 + 56) = v13;
  *(v11 + 32) = v12;
  sub_193458F7C(a1, v9);
  v14 = sub_19393BE60();
  if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
  {
    sub_19344E680(v9, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v11 + 88) = v13;
    *(v11 + 64) = v15;
    if (v27)
    {
      sub_19344E680(&v26, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v27 = v14;
    __swift_allocate_boxed_opaque_existential_1Tm(&v26);
    OUTLINED_FUNCTION_9_10();
    (*(v16 + 32))();
    sub_193495EE0(&v26, (v11 + 64));
  }

  v17 = OUTLINED_FUNCTION_11_15(v10);
  *(v17 + 16) = v25;
  v18 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  *(v17 + 56) = v13;
  *(v17 + 32) = v18;
  sub_193458F7C(a2, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v14) == 1)
  {
    sub_19344E680(v2, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v19 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v17 + 88) = v13;
    *(v17 + 64) = v19;
    if (v27)
    {
      sub_19344E680(&v26, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v27 = v14;
    __swift_allocate_boxed_opaque_existential_1Tm(&v26);
    OUTLINED_FUNCTION_9_10();
    (*(v20 + 32))();
    sub_193495EE0(&v26, (v17 + 64));
  }

  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13(sub_193587C60);
  if (v3)
  {
  }

  else
  {
    v22 = v26;
    v23 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return sub_1934E6000(v24[1], v11, v17, v22);
  }
}

id sub_193586F84(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v31 = a6;
  v30 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BA60, &qword_193958400);
  v16 = OUTLINED_FUNCTION_11_15(v15);
  v29 = xmmword_19394FBE0;
  *(v16 + 16) = xmmword_19394FBE0;
  if (a2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 56) = OUTLINED_FUNCTION_27_16(v17, &qword_1EAE3BA68);
    *(v16 + 32) = v17;
  }

  else
  {
    v33 = MEMORY[0x1E69E63B0];
    *&v32 = a1;
    sub_193495EE0(&v32, (v16 + 32));
  }

  sub_193458F7C(a5, v14);
  v18 = sub_19393BE60();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1)
  {
    sub_19344E680(v14, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v19 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v16 + 88) = OUTLINED_FUNCTION_27_16(v19, &qword_1EAE3BA68);
    *(v16 + 64) = v19;
    if (v33)
    {
      sub_19344E680(&v32, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v33 = v18;
    __swift_allocate_boxed_opaque_existential_1Tm(&v32);
    OUTLINED_FUNCTION_9_10();
    (*(v20 + 32))();
    sub_193495EE0(&v32, (v16 + 64));
  }

  v21 = OUTLINED_FUNCTION_11_15(v15);
  *(v21 + 16) = v29;
  if (v30)
  {
    OUTLINED_FUNCTION_30_12();
    v22 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v21 + 56) = OUTLINED_FUNCTION_27_16(v22, &qword_1EAE3BA68);
    *(v21 + 32) = v22;
    if (v33)
    {
      sub_19344E680(&v32, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E63B0];
    *&v32 = v28;
    sub_193495EE0(&v32, (v21 + 32));
  }

  sub_193458F7C(v31, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v18) == 1)
  {
    sub_19344E680(v6, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_30_12();
    v23 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    *(v21 + 88) = OUTLINED_FUNCTION_27_16(v23, &qword_1EAE3BA68);
    *(v21 + 64) = v23;
    if (v33)
    {
      sub_19344E680(&v32, &qword_1EAE3BA70, &qword_193958408);
    }
  }

  else
  {
    v33 = v18;
    __swift_allocate_boxed_opaque_existential_1Tm(&v32);
    OUTLINED_FUNCTION_9_10();
    (*(v24 + 32))();
    sub_193495EE0(&v32, (v21 + 64));
  }

  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_0_41(&_MergedGlobals_15);
  }

  sub_19343CF00(0, &qword_1EAE3BA58, 0x1E698F2E0);
  OUTLINED_FUNCTION_36_13(sub_193587C60);
  if (v7)
  {
  }

  else
  {
    v26 = objc_allocWithZone(MEMORY[0x1E698F2A0]);
    return OUTLINED_FUNCTION_19_24(v27);
  }
}

id sub_19358740C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t *sub_19358747C()
{
  if (qword_1ED510470 != -1)
  {
    swift_once();
  }

  return &qword_1ED510478;
}

uint64_t *sub_193587518()
{
  if (qword_1ED510480 != -1)
  {
    swift_once();
  }

  return &qword_1ED510488;
}

uint64_t sub_1935875B4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = objc_allocWithZone(a2(a1));
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *sub_1935875FC()
{
  if (qword_1ED510490 != -1)
  {
    swift_once();
  }

  return &qword_1ED510498;
}

_BYTE *_s7IndexesOwst_1(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_ClientSessionID_ClientRequestIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_EventIDIndex.indexSearch(startDatestamp:endDatestamp:startEventId:endEventId:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(startDatestamp:endDatestamp:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t dispatch thunk of Library.Streams.IntelligenceFlow.Transcript.Datastream.Indexes.Datestamp_SessionIDIndex.indexSearch(startDatestamp:endDatestamp:startSessionId:endSessionId:)()
{
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_10_14();
  return v0();
}

uint64_t OUTLINED_FUNCTION_36_13(uint64_t a1)
{

  return sub_19393C830();
}

uint64_t OUTLINED_FUNCTION_39_15(uint64_t a1, unint64_t *a2)
{

  return sub_19343CF00(0, a2, v2);
}

uint64_t OUTLINED_FUNCTION_41_14(uint64_t result)
{
  *(v1 + 56) = v2;
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_42_18(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a14)
{
  result = a14;
  a1[1] = a14;
  return result;
}

_OWORD *OUTLINED_FUNCTION_48_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  *&a17 = a12;
  *(&a17 + 1) = v17;

  return sub_193495EE0(&a17, (v18 + 64));
}

id OUTLINED_FUNCTION_49_9()
{

  return [v1 (v0 + 2936)];
}

uint64_t sub_193587D1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5104B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5104B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:1000 maxEventCount:604800.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x100000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_16 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5104B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA60, &qword_193966810);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 1, 0, 0, 0xD00000000000002CLL, 0x8000000193A1FB40, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19358810C()
{
  v0 = static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter();
  v1 = [v0 streamIdentifier];

  v2 = static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter();
  v3 = [v2 streamIdentifier];

  v4 = sub_19393C580();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_193950B10;
  result = BMEventTimestampSQLColumn();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v7 + 32) = result;
  v9 = static IntelligenceFlowTranscriptDatastreamEvent.columns.getter();
  sub_19343D230(v9);
  v10 = v7;
  result = BMEventBookmarkSQLColumns();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  sub_193441130();
  v12 = sub_19393C6D0();

  sub_19343D230(v12);
  sub_193584888();

  sub_19343D230(v13);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2F0]);
  result = sub_1934412DC(v4, v6, v10);
  if (result)
  {
    v15 = result;
    v16 = static Library.Streams.IntelligenceFlow.Transcript.Datastream.configuration.getter();
    v17 = [objc_allocWithZone(MEMORY[0x1E698F320]) initWithIdentifier:v1 schema:v15 configuration:v16];

    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.Transcript.Datastream.attribute(_:)(void (*a1)(void))
{
  result = sub_1935882F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19358832C(void (*a1)(void))
{
  result = sub_1935882F0(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193588394(uint64_t a1)
{
  result = sub_1935883BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1935883BC()
{
  result = qword_1EAE3A950;
  if (!qword_1EAE3A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A950);
  }

  return result;
}

_BYTE *_s10DatastreamOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowTranscriptDatastreamEvent.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_193588688(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3DA68, &qword_193966888, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_193588688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static IntelligenceFlowTranscriptDatastreamEvent.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3DA68, &qword_193966888, v30);
  sub_19393C260();
  if (!v20)
  {
    OUTLINED_FUNCTION_4_31();
    sub_193589418(v28, v24, v31);
  }

  OUTLINED_FUNCTION_27();
}

void static IntelligenceFlowTranscriptDatastreamEvent.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  if (*sub_19358AE78() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    sub_19393C280();
    (*(v14 + 8))(v20, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_4_31();
      v26 = v35;
      sub_193589418(v1, v35, v27);
      v28 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v26 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v26 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v26 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v26 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v26 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v25 = v6;
    *(v25 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.serialize()()
{
  v2 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA68, &qword_193966888);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_193588688(v0, v1);
  sub_1934470C8(v1, v2, v6);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v7, &qword_1EAE3DA68, &qword_193966888, v8);
  v9 = sub_19393C290();
  sub_19344E6DC(v6, &qword_1EAE3DA68, &qword_193966888);
  return v9;
}

id static IntelligenceFlowTranscriptDatastreamEvent.columns.getter()
{
  v73 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A179B0, 3, 0, v0, 0, 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_2_4(inited, v13, v14, v15, v16, v17, v18, v19, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v20[2].n128_u64[0] = sub_19393C850();
  v30 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v31 = OUTLINED_FUNCTION_16_5();
  result = OUTLINED_FUNCTION_3_5(v31 | 0x64497400000000, 0xE700000000000000);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v71);
  OUTLINED_FUNCTION_2_13(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v40[2].n128_u64[0] = sub_19393C850();
  v50 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v51 = OUTLINED_FUNCTION_16_5();
  result = OUTLINED_FUNCTION_3_5(v51 | 0x7079547400000000, 0xE900000000000065);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v52 = swift_initStackObject();
  v60 = OUTLINED_FUNCTION_2_4(v52, v53, v54, v55, v56, v57, v58, v59, v72);
  OUTLINED_FUNCTION_2_13(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v60[2].n128_u64[0] = sub_19393C850();
  v70 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(1635017060, 0xE400000000000000, 4, 0, v60, 14, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v73;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_193588ED0()
{
  OUTLINED_FUNCTION_26();
  v49 = v2;
  v50 = v0;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_1();
  v8 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v47 = v6;
  v48 = v4;
  v23 = v6 == 0xD000000000000011 && 0x8000000193A179B0 == v4;
  if (v23 || (OUTLINED_FUNCTION_10_28(0xD000000000000011, 0x8000000193A179B0) & 1) != 0)
  {
    v24 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
    sub_1934486F8(v50 + *(v24 + 28), v15, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_19344E6DC(v15, &qword_1EAE3A9E8, &qword_19394F800);
      v25 = v49;
      *v49 = 0u;
      *(v25 + 1) = 0u;
    }

    else
    {
      (*(v18 + 32))(v22, v15, v16);
      sub_1934948FC();
      (*(v18 + 8))(v22, v16);
    }

    goto LABEL_9;
  }

  v26 = v47 == 0xD000000000000012 && 0x8000000193A17A30 == v48;
  if (v26 || (OUTLINED_FUNCTION_10_28(0xD000000000000012, 0x8000000193A17A30) & 1) != 0)
  {
    v27 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
    sub_1934486F8(v50 + *(v27 + 32), v1, &qword_1EAE3B498, &unk_193959120);
    if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
    {
      sub_19344E6DC(v1, &qword_1EAE3B498, &unk_193959120);
      v28 = v49;
      *v49 = 0u;
      *(v28 + 1) = 0u;
    }

    else
    {
      sub_193589418(v1, v12, type metadata accessor for MonotonicTimestamp);
      sub_193494798(v8, &off_1F07BD958, v49);
      sub_193589478(v12);
    }

    goto LABEL_9;
  }

  v29 = v47 == 0x696669746E656469 && v48 == 0xEB00000000737265;
  if (v29 || (OUTLINED_FUNCTION_10_28(0x696669746E656469, 0xEB00000000737265) & 1) != 0)
  {
    type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
    v30 = type metadata accessor for IntelligenceFlowIdentifiers(0);
    sub_193494798(v30, &off_1F07C27B8, v49);
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_16_5() | 0x64497400000000;
  v32 = v47 == v31 && v48 == 0xE700000000000000;
  if (v32 || (OUTLINED_FUNCTION_10_28(v31, 0xE700000000000000) & 1) != 0)
  {
    v33 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0) + 40);
LABEL_30:
    v34 = (v50 + v33);
    v36 = *v34;
    v35 = v34[1];
    v51 = v36;
    v52 = v35;
    sub_1934948FC();
    goto LABEL_9;
  }

  v37 = OUTLINED_FUNCTION_16_5() | 0x7079547400000000;
  v39 = v47 == v37 && v48 == v38;
  if (v39 || (OUTLINED_FUNCTION_10_28(v37, 0xE900000000000065) & 1) != 0)
  {
    v33 = *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0) + 44);
    goto LABEL_30;
  }

  v40 = v47 == 1635017060 && v48 == 0xE400000000000000;
  if (v40 || (OUTLINED_FUNCTION_10_28(1635017060, 0xE400000000000000) & 1) != 0)
  {
    v41 = (v50 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0) + 48));
    v42 = v41[1];
    v51 = *v41;
    v52 = v42;
    sub_193450688(v51, v42);
    sub_1934948FC();
    sub_193446A6C(v51, v52);
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v44 = v43;
    v45 = v48;
    *v43 = v47;
    v43[1] = v45;
    v43[5] = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44 + 2);
    sub_193588688(v50, boxed_opaque_existential_1Tm);
    *(v44 + 48) = 1;
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193589418(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_193589478(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimestamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double IntelligenceFlowTranscriptDatastreamEvent.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v6 = v2[8];
  sub_19344BA58();
  *a1 = *sub_19358AE78();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v7);
  sub_19344E6DC(a1 + v6, &qword_1EAE3B498, &unk_193959120);
  v8 = type metadata accessor for MonotonicTimestamp(0);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v8);
  IntelligenceFlowIdentifiers.init()(a1 + v2[9]);
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  result = 0.0;
  *(a1 + v2[12]) = xmmword_193950F80;
  return result;
}

uint64_t static IntelligenceFlowTranscriptDatastreamEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v62 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v62 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v62 - v11;
  v12 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v69 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v66 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  v26 = *(v66 + 28);
  v27 = *(v22 + 56);
  v68 = a1;
  sub_1934486F8(a1 + v26, v25, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v26, &v25[v27], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v25);
  if (v28)
  {
    OUTLINED_FUNCTION_31(&v25[v27]);
    if (v28)
    {
      sub_19344E6DC(v25, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_11;
    }

LABEL_9:
    v29 = &qword_1EAE3B968;
    v30 = &qword_193972430;
    v31 = v25;
LABEL_19:
    sub_19344E6DC(v31, v29, v30);
    goto LABEL_20;
  }

  sub_1934486F8(v25, v21, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v25[v27]);
  if (v28)
  {
    (*(v69 + 8))(v21, v12);
    goto LABEL_9;
  }

  v32 = v69;
  (*(v69 + 32))(v17, &v25[v27], v12);
  OUTLINED_FUNCTION_3_35();
  sub_193589FA0(v33, v34, MEMORY[0x1E6969550]);
  v35 = sub_19393C550();
  v36 = *(v32 + 8);
  v36(v17, v12);
  v36(v21, v12);
  sub_19344E6DC(v25, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v38 = v65;
  v37 = v66;
  v39 = *(v66 + 32);
  v40 = *(v64 + 48);
  sub_1934486F8(v68 + v39, v65, &qword_1EAE3B498, &unk_193959120);
  sub_1934486F8(a2 + v39, v38 + v40, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v38, 1, v67) == 1)
  {
    OUTLINED_FUNCTION_31(v38 + v40);
    if (!v28)
    {
      goto LABEL_18;
    }

    sub_19344E6DC(v38, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    v41 = v63;
    sub_1934486F8(v38, v63, &qword_1EAE3B498, &unk_193959120);
    OUTLINED_FUNCTION_31(v38 + v40);
    if (v28)
    {
      sub_193589478(v41);
LABEL_18:
      v29 = &qword_1EAE3B958;
      v30 = &qword_193957B50;
      v31 = v38;
      goto LABEL_19;
    }

    v44 = v38 + v40;
    v45 = v62;
    sub_193589F3C(v44, v62);
    OUTLINED_FUNCTION_2_38();
    sub_193589FA0(v46, v47, &protocol conformance descriptor for MonotonicTimestamp);
    v48 = sub_19393C550();
    sub_193589478(v45);
    sub_193589478(v41);
    sub_19344E6DC(v38, &qword_1EAE3B498, &unk_193959120);
    if ((v48 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_1_39();
  sub_193589FA0(v49, v50, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
  if (sub_19393C550())
  {
    v51 = OUTLINED_FUNCTION_6_31(v37[10]);
    v55 = v51 == v54 && v52 == v53;
    if (v55 || (sub_19393CA30() & 1) != 0)
    {
      v56 = OUTLINED_FUNCTION_6_31(v37[11]);
      v60 = v56 == v59 && v57 == v58;
      if (v60 || (sub_19393CA30() & 1) != 0)
      {
        v61 = OUTLINED_FUNCTION_6_31(v37[12]);
        v42 = MEMORY[0x193B172A0](v61);
        return v42 & 1;
      }
    }
  }

LABEL_20:
  v42 = 0;
  return v42 & 1;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v30 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v17);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  v21 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  sub_1934486F8(v2 + *(v21 + 28), v20, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v20, 1, v10) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    (*(v12 + 32))(v16, v20, v10);
    sub_19393CAD0();
    OUTLINED_FUNCTION_3_35();
    sub_193589FA0(v22, v23, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v12 + 8))(v16, v10);
  }

  sub_1934486F8(v2 + *(v21 + 32), v9, &qword_1EAE3B498, &unk_193959120);
  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v24 = v30;
    sub_193589F3C(v9, v30);
    sub_19393CAD0();
    OUTLINED_FUNCTION_2_38();
    sub_193589FA0(v25, v26, &protocol conformance descriptor for MonotonicTimestamp);
    sub_19393C540();
    sub_193589478(v24);
  }

  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_1_39();
  sub_193589FA0(v27, v28, &protocol conformance descriptor for IntelligenceFlowIdentifiers);
  sub_19393C540();
  OUTLINED_FUNCTION_8_34();
  sub_19393C640();
  OUTLINED_FUNCTION_8_34();
  sub_19393C640();
  OUTLINED_FUNCTION_8_34();
  return sub_19393BD50();
}

uint64_t sub_193589F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_193589FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_193589FE8()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAA580);
  __swift_project_value_buffer(v0, qword_1EAEAA580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "absoluteTimestamp";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v10 = *(v9 + 104);
  v10(v6, v7, v8);
  v11 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "monotonicTimestamp");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_5_4(v14, "identifiers");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v18 = 4;
  v19 = OUTLINED_FUNCTION_5_4(v17, "eventId");
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v21 = 5;
  v22 = OUTLINED_FUNCTION_5_4(v20, "eventType");
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v24 = 6;
  *v23 = "data";
  *(v23 + 8) = 4;
  *(v23 + 16) = 2;
  (v10)();
  return sub_19393C410();
}

void sub_19358A25C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B948, &qword_193957C10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v34 - v17;
  v38 = xmmword_193950B20;
  v41 = v8;
  v36 = v0;
  v37 = v12;
  v34 = v7;
  v35 = v5;
  while (1)
  {
    v18 = sub_19393C0E0();
    if (v2 || (v19 & 1) != 0)
    {
      break;
    }

    switch(v18)
    {
      case 1:
        v20 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
        sub_1934976E4(v3 + *(v20 + 28), 26211, 0xE200000000000000, v7, v5);
        goto LABEL_25;
      case 2:
        type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
        type metadata accessor for MonotonicTimestamp(0);
        sub_193498018();
LABEL_25:
        v2 = 0;
        continue;
      case 3:
        v24 = v39;
        __swift_storeEnumTagSinglePayload(v39, 1, 1, v8);
        sub_193498018();
        v25 = v16;
        sub_1934486F8(v24, v16, &qword_1EAE3B948, &qword_193957C10);
        OUTLINED_FUNCTION_9_14(v16);
        if (v26)
        {
          v27 = v37;
          IntelligenceFlowIdentifiers.init()(v37);
          v28 = v24;
          v32 = v27;
          sub_19344E6DC(v28, &qword_1EAE3B948, &qword_193957C10);
          OUTLINED_FUNCTION_9_14(v25);
          v16 = v25;
          if (!v26)
          {
            sub_19344E6DC(v25, &qword_1EAE3B948, &qword_193957C10);
          }
        }

        else
        {
          sub_19344E6DC(v24, &qword_1EAE3B948, &qword_193957C10);
          v32 = v37;
          sub_19358ADC0(v16, v37, type metadata accessor for IntelligenceFlowIdentifiers);
        }

        v33 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
        v3 = v36;
        sub_19358A660(v32, v36 + *(v33 + 36));
        v7 = v34;
        v5 = v35;
        continue;
      case 4:
        v40 = 0uLL;
        OUTLINED_FUNCTION_3_36();
        sub_19393C200();
        v2 = 0;
        if (*(&v40 + 1))
        {
          v29 = v40;
        }

        else
        {
          v29 = 0;
        }

        if (*(&v40 + 1))
        {
          v30 = *(&v40 + 1);
        }

        else
        {
          v30 = 0xE000000000000000;
        }

        v31 = (v3 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0) + 40));

        *v31 = v29;
        v31[1] = v30;
        v8 = v41;
        continue;
      case 5:
        v40 = 0uLL;
        OUTLINED_FUNCTION_3_36();
        sub_19393C200();
        v2 = 0;
        if (*(&v40 + 1))
        {
          v21 = v40;
        }

        else
        {
          v21 = 0;
        }

        if (*(&v40 + 1))
        {
          v22 = *(&v40 + 1);
        }

        else
        {
          v22 = 0xE000000000000000;
        }

        v23 = v3 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0) + 44);

        goto LABEL_33;
      case 6:
        v40 = v38;
        OUTLINED_FUNCTION_3_36();
        sub_19393C140();
        v2 = 0;
        if (*(&v40 + 1) >> 60 == 15)
        {
          v21 = 0;
        }

        else
        {
          v21 = v40;
        }

        if (*(&v40 + 1) >> 60 == 15)
        {
          v22 = 0xC000000000000000;
        }

        else
        {
          v22 = *(&v40 + 1);
        }

        v23 = v3 + *(type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0) + 48);
        sub_193446A6C(*v23, *(v23 + 8));
LABEL_33:
        *v23 = v21;
        *(v23 + 8) = v22;
        v8 = v41;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358A660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowIdentifiers(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_19358A84C()
{
  OUTLINED_FUNCTION_26();
  v13 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15_9();
  v7 = sub_19393BE00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  sub_1934486F8(v5 + *(v12 + 28), v0, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v8 + 32))(v11, v0, v7);
    sub_193451F04(v11, 1, 26211, 0xE200000000000000, v3, v13);
    (*(v8 + 8))(v11, v7);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19358AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &a9 - v27;
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_1();
  v30 = OUTLINED_FUNCTION_15_9();
  v31 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v30);
  sub_1934486F8(v25 + *(v31 + 32), v28, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_9_14(v28);
  if (v32)
  {
    sub_19344E6DC(v28, &qword_1EAE3B498, &unk_193959120);
  }

  else
  {
    sub_19358ADC0(v28, v20, type metadata accessor for MonotonicTimestamp);
    sub_193447600();
    v33 = OUTLINED_FUNCTION_286();
    sub_19358AE20(v33, v34);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19358AB70()
{
  OUTLINED_FUNCTION_26();
  type metadata accessor for IntelligenceFlowIdentifiers(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_1();
  v2 = OUTLINED_FUNCTION_15_9();
  type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v2);
  IntelligenceFlowIdentifiers.init()(v0);
  sub_19358AD68();
  v3 = sub_19393C550();
  sub_19358AE20(v0, type metadata accessor for IntelligenceFlowIdentifiers);
  if ((v3 & 1) == 0)
  {
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358AC64(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3DA78;

  return v1;
}

uint64_t sub_19358ACA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE630F8 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_1EAE630F8);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAA580);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_19358AD68()
{
  result = qword_1EAE3B920;
  if (!qword_1EAE3B920)
  {
    type metadata accessor for IntelligenceFlowIdentifiers(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3B920);
  }

  return result;
}

uint64_t sub_19358ADC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19358AE20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 20));
  return sub_19344865C(v2, v3, v4, v5);
}

uint64_t type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(uint64_t a1)
{
  result = qword_1ED50E970;
  if (!qword_1ED50E970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.writeTimestamp.setter()
{
  OUTLINED_FUNCTION_5_33();
  v0 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v0, v1, v2, v3);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_19344865C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.bookmark.setter()
{
  OUTLINED_FUNCTION_5_33();
  v0 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v0, v1, v2, v3);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.absoluteTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 28));
  return sub_19344865C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.absoluteTimestamp.setter()
{
  OUTLINED_FUNCTION_5_33();
  v0 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v0, v1, v2, v3);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.monotonicTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 32));
  return sub_19344865C(v2, v3, v4, v5);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.monotonicTimestamp.setter()
{
  OUTLINED_FUNCTION_5_33();
  v0 = OUTLINED_FUNCTION_100_0();
  return sub_193445340(v0, v1, v2, v3);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.identifiers.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 36));

  return sub_1934D59B0(v2, v3);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.identifiers.setter()
{
  OUTLINED_FUNCTION_5_33();
  v0 = OUTLINED_FUNCTION_100_0();

  return sub_19358A660(v0, v1);
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventId.getter()
{
  type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_42() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventType.getter()
{
  type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.eventType.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_9_42() + 44));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.data.getter()
{
  type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(0);
  v0 = OUTLINED_FUNCTION_13_0();
  sub_193450688(v0, v1);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.data.setter()
{
  v3 = v1 + *(OUTLINED_FUNCTION_9_42() + 48);
  result = sub_193446A6C(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t IntelligenceFlowTranscriptDatastreamEvent.hashValue.getter()
{
  sub_19393CAB0();
  IntelligenceFlowTranscriptDatastreamEvent.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19358B4C4(uint64_t a1)
{
  sub_19393CAB0();
  IntelligenceFlowTranscriptDatastreamEvent.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19358B504()
{
  result = qword_1EAE3DA88;
  if (!qword_1EAE3DA88)
  {
    type metadata accessor for IntelligenceFlowTranscriptDatastreamEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DA88);
  }

  return result;
}

uint64_t sub_19358B588(uint64_t a1)
{
  sub_19358B6B4(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19358B6B4(319, &qword_1ED507A78, type metadata accessor for MonotonicTimestamp);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v2 = type metadata accessor for IntelligenceFlowIdentifiers(319);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_19358B6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19358B724()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510518);
  v4 = __swift_project_value_buffer(v3, qword_1ED510518);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t static Library.Streams.IntelligenceFlow.QueryDecorationTelemetry.attribute(_:)(void (*a1)(void))
{
  result = sub_19358B950(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19358B994(void (*a1)(void))
{
  result = sub_19358B950(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19358B9C4(uint64_t a1)
{
  result = sub_19358B9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19358B9EC()
{
  result = qword_1ED507B00;
  if (!qword_1ED507B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED507B00);
  }

  return result;
}

_BYTE *_s24QueryDecorationTelemetryOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IntelligenceFlowQueryDecorationTelemetry.json()()
{
  OUTLINED_FUNCTION_26();
  v23 = v1;
  v24 = v2;
  v3 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  OUTLINED_FUNCTION_6_32();
  sub_19358FC3C(v0, v14, v18);
  sub_1934470C8(v14, DecorationTelemetry, v17);
  sub_19393C080();
  sub_19358BCC8();
  sub_19393C250();
  (*(v5 + 8))(v9, v3);
  sub_19344E6DC(v17, &qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_19358BCC8()
{
  result = qword_1EAE3A788;
  if (!qword_1EAE3A788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3DA98, &qword_193966A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A788);
  }

  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_19393C060();
  sub_19358BCC8();
  result = sub_19393C260();
  if (!v3)
  {
    OUTLINED_FUNCTION_14_26();
    return sub_19358D094(v9, a3, v11);
  }

  return result;
}

void static IntelligenceFlowQueryDecorationTelemetry.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v32 = v3;
  v33 = v2;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  if (*sub_193456624() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(v10, v8);
    sub_19358BCC8();
    sub_19393C280();
    (*(v14 + 8))(v20, v12);
    if (!v0)
    {
      OUTLINED_FUNCTION_14_26();
      v23 = v32;
      sub_19358D094(v1, v32, v24);
      DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
      v26 = *(DecorationTelemetry + 20);
      sub_19344E6DC(v23 + v26, &qword_1EAE3A9E8, &qword_19394F800);
      v27 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v28 + 16))(v23 + v26, v31, v27);
      __swift_storeEnumTagSinglePayload(v23 + v26, 0, 1, v27);
      v29 = *(DecorationTelemetry + 24);
      sub_19344E6DC(v23 + v29, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v33, v23 + v29);
    }
  }

  else
  {
    v21 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
    *v22 = v6;
    *(v22 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.serialize()()
{
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DA98, &qword_193966A80);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  OUTLINED_FUNCTION_6_32();
  sub_19358FC3C(v0, v5, v9);
  sub_1934470C8(v5, DecorationTelemetry, v8);
  sub_19358BCC8();
  sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3DA98, &qword_193966A80);
  return OUTLINED_FUNCTION_13_0();
}

void sub_19358C2A8()
{
  OUTLINED_FUNCTION_26();
  v149 = v0;
  v150 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v141 = &v138 - v8;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v139 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_47(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v138 - v14;
  v143 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v142 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v138 - v20;
  v146 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v145 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v138 - v27;
  v29 = type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_47(v34);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v138 - v36;
  v38 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  MEMORY[0x1EEE9AC00](0x74654D746E657665);
  OUTLINED_FUNCTION_5_1();
  v43 = v42 - v41;
  v147 = v5;
  v148 = v3;
  v44 = v5 == v39 && v3 == v40;
  if (v44 || (OUTLINED_FUNCTION_34_18(v39, v40) & 1) != 0)
  {
    DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    v46 = OUTLINED_FUNCTION_45_15(*(DecorationTelemetry + 28));
    sub_193448758(v46, v37, v47, v48);
    OUTLINED_FUNCTION_6_3(v37, 1, v38);
    if (!v44)
    {
      sub_19358D094(v37, v43, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
      sub_193494798(v38, &off_1F07CEB90, v150);
      v53 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata;
      v54 = v43;
LABEL_12:
      sub_19358D0F0(v54, v53);
      goto LABEL_13;
    }

    v49 = &qword_1EAE3DAA0;
    v50 = &qword_193966A88;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_43_12();
  v58 = v44 && v56 == v57;
  if (v58 || (OUTLINED_FUNCTION_34_18(v55, v56) & 1) != 0)
  {
    v59 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    v60 = OUTLINED_FUNCTION_45_15(*(v59 + 32));
    sub_193448758(v60, v28, v61, v62);
    OUTLINED_FUNCTION_6_3(v28, 1, v29);
    if (!v44)
    {
      v63 = OUTLINED_FUNCTION_141();
      sub_19358D094(v63, v33, v64);
      sub_193494798(v29, &off_1F07BD958, v150);
      v53 = type metadata accessor for MonotonicTimestamp;
      v54 = v33;
      goto LABEL_12;
    }

    v49 = &qword_1EAE3B498;
    v50 = &unk_193959120;
    v51 = v28;
    goto LABEL_10;
  }

  v65 = v147 == 0x697461636F766E69 && v148 == 0xEA00000000006E6FLL;
  if (v65 || (OUTLINED_FUNCTION_34_18(0x697461636F766E69, 0xEA00000000006E6FLL) & 1) != 0)
  {
    v66 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
    v67 = OUTLINED_FUNCTION_45_15(*(v66 + 36));
    sub_193448758(v67, v21, v68, v69);
    v70 = v146;
    OUTLINED_FUNCTION_6_3(v21, 1, v146);
    if (!v44)
    {
      v71 = v145;
      sub_19358D094(v21, v145, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
      sub_193494798(v70, &off_1F07CED10, v150);
      v53 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation;
      v54 = v71;
      goto LABEL_12;
    }

    v49 = &qword_1EAE3DAA8;
    v50 = &qword_193966A90;
    v51 = v21;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v74 = v147 == 0xD000000000000011 && v73 == v148;
  if (!v74 && (OUTLINED_FUNCTION_31_20(v72, v73) & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    v87 = v147 == 0xD000000000000011 && v86 == v148;
    if (v87 || (OUTLINED_FUNCTION_31_20(v85, v86) & 1) != 0)
    {
      v88 = *(v149 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 44));
      if ((~v88 & 0xF000000000000007) == 0)
      {
        goto LABEL_11;
      }

      v151 = v88;
      v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext;
      v90 = &off_1F07CEC60;
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v93 = v147 == 0xD000000000000011 && v92 == v148;
      if (v93 || (OUTLINED_FUNCTION_31_20(v91, v92) & 1) != 0)
      {
        type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
        OUTLINED_FUNCTION_36_14();
        if (!v95)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_55_9(v94);
        v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected;
        v90 = &off_1F07CEC70;
      }

      else
      {
        OUTLINED_FUNCTION_43_12();
        v99 = v44 && v98 == v97;
        if (v99 || (OUTLINED_FUNCTION_34_18(v96, v97) & 1) != 0)
        {
          v100 = (v149 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 52));
          v101 = *(v100 + 2) | (*(v100 + 6) << 32);
          if ((v101 & 0xFF0000000000) == 0x30000000000)
          {
            goto LABEL_11;
          }

          v102 = *v100;
          LODWORD(v151) = v102;
          BYTE4(v151) = BYTE4(v102) & 1;
          LODWORD(v152) = v101;
          BYTE4(v152) = BYTE4(v101) & 1;
          BYTE5(v152) = BYTE5(v101);
          v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated;
          v90 = &off_1F07CEC80;
        }

        else
        {
          OUTLINED_FUNCTION_43_12();
          v106 = v44 && v105 == v104;
          if (v106 || (OUTLINED_FUNCTION_34_18(v103, v104) & 1) != 0)
          {
            type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
            OUTLINED_FUNCTION_36_14();
            if (!v108)
            {
              goto LABEL_11;
            }

            v151 = v108;
            v152 = *(v107 + 8);
            v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked;
            v90 = &off_1F07CEC90;
          }

          else
          {
            OUTLINED_FUNCTION_38();
            v110 = v147 == 0xD000000000000013 && v109 == v148;
            if (v110 || (OUTLINED_FUNCTION_34_18(0xD000000000000013, v109) & 1) != 0)
            {
              v111 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
              v112 = OUTLINED_FUNCTION_45_15(*(v111 + 60));
              v113 = v141;
              sub_193448758(v112, v141, v114, v115);
              OUTLINED_FUNCTION_6_3(v113, 1, Decoration);
              if (v44)
              {
                v49 = &qword_1EAE3DAB8;
                v50 = &qword_193966A98;
                v51 = v141;
                goto LABEL_10;
              }

              v80 = v139;
              sub_19358D094(v141, v139, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
              sub_193494798(Decoration, &off_1F07CECD0, v150);
              v84 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext;
LABEL_38:
              v53 = v84;
              v54 = v80;
              goto LABEL_12;
            }

            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_43_12();
            v119 = v44 && v117 == v118;
            if (v119 || (OUTLINED_FUNCTION_34_18(v116, v117) & 1) != 0)
            {
              type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
              OUTLINED_FUNCTION_36_14();
              if (!v121)
              {
                goto LABEL_11;
              }

              v122 = *(v120 + 8);
              v151 = v121;
              *&v152 = v122;
              v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported;
              v90 = &off_1F07CECF0;
            }

            else
            {
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_43_12();
              v126 = v44 && v124 == v125;
              if (v126 || (OUTLINED_FUNCTION_34_18(v123, v124) & 1) != 0)
              {
                v127 = *(v149 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 68));
                if (v127 == 3)
                {
                  goto LABEL_11;
                }

                LOWORD(v151) = v127;
                v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered;
                v90 = &off_1F07CECE0;
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v129 = v147 == 0xD000000000000013 && v128 == v148;
                if (!v129 && (OUTLINED_FUNCTION_34_18(0xD000000000000013, v128) & 1) == 0)
                {
                  v132 = sub_19349AB64();
                  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v132);
                  v134 = v133;
                  v135 = v148;
                  *v133 = v147;
                  v133[1] = v135;
                  v133[5] = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
                  __swift_allocate_boxed_opaque_existential_1Tm(v134 + 2);
                  OUTLINED_FUNCTION_6_32();
                  sub_19358FC3C(v149, v136, v137);
                  *(v134 + 48) = 1;
                  swift_willThrow();

                  goto LABEL_13;
                }

                v130 = v149 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0) + 72);
                if (*(v130 + 5))
                {
                  goto LABEL_11;
                }

                v131 = *(v130 + 4);
                LODWORD(v151) = *v130;
                BYTE4(v151) = v131 & 1;
                v89 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported;
                v90 = &off_1F07CED00;
              }
            }
          }
        }
      }
    }

    sub_193494798(v89, v90, v150);
    goto LABEL_13;
  }

  v75 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v76 = OUTLINED_FUNCTION_45_15(*(v75 + 40));
  v37 = v144;
  sub_193448758(v76, v144, v77, v78);
  OUTLINED_FUNCTION_6_3(v37, 1, v143);
  if (!v44)
  {
    v79 = v37;
    v80 = v142;
    sub_19358D094(v79, v142, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_13_0();
    sub_193494798(v81, v82, v83);
    v84 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall;
    goto LABEL_38;
  }

  v49 = &qword_1EAE3DAB0;
  v50 = &unk_193967240;
LABEL_9:
  v51 = v37;
LABEL_10:
  sub_19344E6DC(v51, v49, v50);
LABEL_11:
  v52 = v150;
  *v150 = 0u;
  *(v52 + 1) = 0u;
LABEL_13:
  OUTLINED_FUNCTION_27();
}

void sub_19358CD3C()
{
  OUTLINED_FUNCTION_26();
  v38 = v1;
  v39 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v37 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = v7 == 1682531441 && v5 == 0xE400000000000000;
  if (!v24 && (OUTLINED_FUNCTION_67(1682531441, 0xE400000000000000) & 1) == 0)
  {
    v30 = v7 == 0x6449776F72 && v5 == 0xE500000000000000;
    if (!v30 && (OUTLINED_FUNCTION_67(0x6449776F72, 0xE500000000000000) & 1) == 0)
    {
      v33 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v33);
      v35 = v34;
      *v34 = v7;
      v34[1] = v5;
      v34[5] = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
      sub_19358FC3C(v39, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
      *(v35 + 48) = 1;
      swift_willThrow();

      goto LABEL_10;
    }

    Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
    sub_193448758(v39 + *(Decoration + 20), v2, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v2, 1, v12);
    if (!v24)
    {
      v32 = v37;
      (*(v37 + 32))(v3, v2, v12);
      sub_1934948FC();
      (*(v32 + 8))(v3, v12);
      goto LABEL_10;
    }

    v25 = &qword_1EAE3AA88;
    v26 = &qword_19394F9C0;
    v27 = v2;
    goto LABEL_9;
  }

  sub_193448758(v39, v18, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v18, 1, v19);
  if (v24)
  {
    v25 = &qword_1EAE3BCA0;
    v26 = &unk_19395C320;
    v27 = v18;
LABEL_9:
    sub_19344E6DC(v27, v25, v26);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_40();
  sub_19358D094(v18, v23, v28);
  sub_193494798(v19, &off_1F07C3F90, v9);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v23, v29);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358D094(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t sub_19358D0F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_19358D160(uint64_t a1)
{
  v5 = a1 == OUTLINED_FUNCTION_54_9() && v4 == 0xE600000000000000;
  if (v5 || (v6 = v4, v7 = *(v1 + 8), (sub_19393CA30() & 1) != 0))
  {
    if (v2 == 2)
    {
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_15;
  }

  v8 = a1 == 0x7372656C6C6163 && v6 == 0xE700000000000000;
  if (v8 || (sub_19393CA30() & 1) != 0)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAC0, &qword_193966AA0);
    OUTLINED_FUNCTION_59_11(v9, v10, v11, v12, v13, v14, v15, v16, v20, v7);
LABEL_15:
    sub_1934948FC();
    return;
  }

  v17 = sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
  *v19 = a1;
  *(v19 + 8) = v6;
  *(v19 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted;
  *(v19 + 16) = v2;
  *(v19 + 24) = v7;
  OUTLINED_FUNCTION_23_2(v18, v19);
}

void sub_19358D2FC()
{
  OUTLINED_FUNCTION_17_20();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v11 = v3 == 0xD000000000000015 && v10 == v2;
  if (!v11 && (OUTLINED_FUNCTION_59_0(0xD000000000000015, v10) & 1) == 0)
  {
    v18 = v3 == 0x64496C6F6F74 && v2 == 0xE600000000000000;
    if (v18 || (OUTLINED_FUNCTION_59_0(0x64496C6F6F74, 0xE600000000000000) & 1) != 0)
    {
      if (!*(v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 20) + 8))
      {
        goto LABEL_9;
      }

LABEL_16:
      sub_1934948FC();
      goto LABEL_17;
    }

    v19 = v3 == 0x65707954627573 && v2 == 0xE700000000000000;
    if (v19 || (OUTLINED_FUNCTION_59_0(0x65707954627573, 0xE700000000000000) & 1) != 0)
    {
      type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
      OUTLINED_FUNCTION_58_1();
      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = v3 == 0x6972616C696D6973 && v2 == 0xEF65726F63537974;
      if (v22 || (OUTLINED_FUNCTION_59_0(0x6972616C696D6973, 0xEF65726F63537974) & 1) != 0)
      {
        if (*(v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 28) + 4))
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }

      OUTLINED_FUNCTION_38();
      v24 = v3 == 0xD000000000000011 && v23 == v2;
      if (!v24 && (OUTLINED_FUNCTION_59_0(0xD000000000000011, v23) & 1) == 0)
      {
        v26 = v3 == 0x72756F536C6F6F74 && v2 == 0xEA00000000006563;
        if (v26 || (OUTLINED_FUNCTION_59_0(0x72756F536C6F6F74, 0xEA00000000006563) & 1) != 0)
        {
          if (!*(v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 36)))
          {
            goto LABEL_9;
          }

          v27 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSource;
          v28 = &off_1F07CEC10;
        }

        else
        {
          v29 = v3 == 0x696665446C6F6F74 && v2 == 0xEE006E6F6974696ELL;
          if (!v29 && (OUTLINED_FUNCTION_59_0(0x696665446C6F6F74, 0xEE006E6F6974696ELL) & 1) == 0)
          {
            v31 = sub_19349AB64();
            v32 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v31);
            v34 = OUTLINED_FUNCTION_19_0(v32, v33);
            Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(v34);
            OUTLINED_FUNCTION_152(Decoration);
            v36 = OUTLINED_FUNCTION_141();
            sub_19358FC3C(v36, v37, v38);
            OUTLINED_FUNCTION_65_1();

            goto LABEL_17;
          }

          v30 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0) + 40));
          if (!*v30)
          {
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_55_9(v30);
          v27 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition;
          v28 = &off_1F07CEBE0;
        }

        sub_193494798(v27, v28, v1);
        goto LABEL_17;
      }

      type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedTool(0);
      OUTLINED_FUNCTION_58_1();
      if (v25)
      {
LABEL_9:
        OUTLINED_FUNCTION_104();
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_42_19(v20);
    goto LABEL_16;
  }

  sub_193448758(v0, v4, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v11)
  {
    sub_19344E6DC(v4, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_40();
  v15 = OUTLINED_FUNCTION_51_12(v12, v13, v14);
  OUTLINED_FUNCTION_80_0(v15, v16, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v5, v17);
LABEL_17:
  OUTLINED_FUNCTION_72_0();
}

uint64_t sub_19358D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v7 || (v10 = v3[1], v9 = v3[2], v11 = v3[3], v24 = v3[4], v12 = v3[5], v13 = v3[6], v23 = v12, (OUTLINED_FUNCTION_49_10(0x6574656D61726170) & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAC8, &qword_193966AA8);
    return sub_1934948FC();
  }

  result = 0x74757074756FLL;
  v15 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v15 || (result = OUTLINED_FUNCTION_49_10(0x74757074756FLL), (result & 1) != 0))
  {
    if (v9 == 2)
    {
LABEL_14:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    return sub_193494798(&type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition, &off_1F07CEC00, a3);
  }

  else
  {
    result = OUTLINED_FUNCTION_23_24();
    v17 = v7 && a2 == v16;
    if (v17 || (result = OUTLINED_FUNCTION_49_10(result), (result & 1) != 0))
    {
      if (v13)
      {
        return sub_1934948FC();
      }

      goto LABEL_14;
    }

    v18 = sub_19349AB64();
    v22 = v13;
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v18);
    v20 = v19;
    *v19 = a1;
    v19[1] = a2;
    v19[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolDefinition;
    v21 = swift_allocObject();
    v20[2] = v21;
    v21[2] = v6;
    v21[3] = v10;
    v21[4] = v9;
    v21[5] = v11;
    v21[6] = v24;
    v21[7] = v23;
    v21[8] = v22;
    *(v20 + 48) = 1;
    swift_willThrow();

    sub_19358D8E8(v10, v9, v11, v24);
  }
}

void sub_19358D8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 2)
  {
    sub_1934D1694(a1, a2, a3, a4);
  }
}

uint64_t sub_19358D910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = memcpy(__dst, v4, sizeof(__dst));
  v9 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v9 || (result = OUTLINED_FUNCTION_5_5(7955819, 0xE300000000000000), (result & 1) != 0))
  {
    v10 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1))
    {
      v11 = *&__dst[0];
LABEL_8:
      *&v21[0] = v11;
      *(&v21[0] + 1) = v10;
      return sub_1934948FC();
    }

    goto LABEL_22;
  }

  v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v12 || (result = OUTLINED_FUNCTION_5_5(1701667182, 0xE400000000000000), (result & 1) != 0))
  {
    v10 = *(&__dst[1] + 1);
    if (*(&__dst[1] + 1))
    {
      v11 = *&__dst[1];
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  result = OUTLINED_FUNCTION_33_13();
  v14 = a1 == result && a2 == v13;
  if (v14 || (result = OUTLINED_FUNCTION_5_5(result, 0xEA00000000006570), (result & 1) != 0))
  {
    if (*(&__dst[2] + 1) == 1)
    {
LABEL_22:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v21[0] = __dst[2];
    v21[1] = __dst[3];
    return sub_193494798(&type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType, &off_1F07CEC50, a3);
  }

  else
  {
    result = OUTLINED_FUNCTION_23_24();
    v16 = v9 && a2 == v15;
    if (v16 || (result = OUTLINED_FUNCTION_5_5(result, v15), (result & 1) != 0))
    {
      v10 = *(&__dst[4] + 1);
      if (*(&__dst[4] + 1))
      {
        v11 = *&__dst[4];
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    v17 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v17);
    v19 = v18;
    *v18 = a1;
    v18[1] = a2;
    v18[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolParameterDefinition;
    v20 = swift_allocObject();
    v19[2] = v20;
    memcpy((v20 + 16), __dst, 0x50uLL);
    *(v19 + 48) = 1;
    swift_willThrow();

    return sub_19358DB00(__dst, v21);
  }
}

void sub_19358DB74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_33_13();
  v9 = *v2;
  v8 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = a1 == v5 && v6 == v7;
  if (v12 || (v13 = v6, (sub_19393CA30() & 1) != 0))
  {
    if (v8 == 1)
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {
      sub_193494798(&type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType, &off_1F07CEC50, a2);
    }
  }

  else
  {
    v14 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
    v16 = v15;
    *v15 = a1;
    v15[1] = v13;
    v15[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolOutputDefinition;
    OUTLINED_FUNCTION_95();
    v17 = swift_allocObject();
    v16[2] = v17;
    v17[2] = v9;
    v17[3] = v8;
    v17[4] = v11;
    v17[5] = v10;
    *(v16 + 48) = 1;
    swift_willThrow();

    sub_1934D1694(v9, v8, v11, v10);
  }
}

uint64_t sub_19358DCC0()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = *v0;
  v5 = v2 == 0x6374614D6E617073 && v1 == 0xEB00000000736568;
  if (v5 || (v6 = v0[1], (OUTLINED_FUNCTION_15_16(0x6374614D6E617073, 0xEB00000000736568) & 1) != 0))
  {
    v25 = v4;
    v7 = &unk_1EAE3DAD0;
    v8 = &unk_193966AB0;
LABEL_7:
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_59_11(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25);
    return sub_1934948FC();
  }

  v18 = v3 == 0xD000000000000010 && 0x8000000193A1FD50 == v1;
  if (v18 || (v19 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_15_16(v19, v20) & 1) != 0))
  {
    v25 = v6;
    v7 = &qword_1EAE3CF48;
    v8 = &qword_193960FE0;
    goto LABEL_7;
  }

  v21 = sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  *v23 = v3;
  v23[1] = v1;
  v23[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolSource;
  v23[2] = v4;
  v23[3] = v6;
  OUTLINED_FUNCTION_23_2(v22, v23);
}

void sub_19358DE0C()
{
  OUTLINED_FUNCTION_17_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v10 = v2 == 0xD000000000000015 && v9 == v1;
  if (!v10 && (OUTLINED_FUNCTION_59_0(0xD000000000000015, v9) & 1) == 0)
  {
    v17 = v2 == 0x54747865746E6F63 && v1 == 0xEB00000000657079;
    if (v17 || (OUTLINED_FUNCTION_59_0(0x54747865746E6F63, 0xEB00000000657079) & 1) != 0)
    {
      type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0);
      OUTLINED_FUNCTION_58_1();
      if ((v19 & 1) == 0)
      {
        OUTLINED_FUNCTION_41_2(v18);
        OUTLINED_FUNCTION_60_9();
        sub_1934948FC();
        goto LABEL_10;
      }
    }

    else
    {
      v20 = OUTLINED_FUNCTION_29_16();
      v22 = v10 && v1 == v21;
      if (!v22 && (OUTLINED_FUNCTION_59_0(v20, 0xE900000000000065) & 1) == 0)
      {
        v27 = sub_19349AB64();
        v28 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
        v30 = OUTLINED_FUNCTION_19_0(v28, v29);
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(v30);
        OUTLINED_FUNCTION_152(Decoration);
        v32 = OUTLINED_FUNCTION_141();
        sub_19358FC3C(v32, v33, v34);
        OUTLINED_FUNCTION_65_1();

        goto LABEL_10;
      }

      v23 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRetrievedContextStatement(0) + 24));
      if (v23->n128_u64[1] != 1)
      {
        OUTLINED_FUNCTION_57_6(v23);
        OUTLINED_FUNCTION_60_9();
        sub_193494798(v24, v25, v26);
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v10)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_40();
  v14 = OUTLINED_FUNCTION_51_12(v11, v12, v13);
  OUTLINED_FUNCTION_80_0(v14, v15, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v4, v16);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
}

void sub_19358E064()
{
  OUTLINED_FUNCTION_17_20();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v10 = v2 == 0xD000000000000015 && v9 == v1;
  if (!v10 && (OUTLINED_FUNCTION_59_0(0xD000000000000015, v9) & 1) == 0)
  {
    v17 = OUTLINED_FUNCTION_29_16();
    v19 = v10 && v1 == v18;
    if (v19 || (OUTLINED_FUNCTION_59_0(v17, 0xE900000000000065) & 1) != 0)
    {
      v20 = (v0 + *(type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0) + 20));
      if (v20->n128_u64[1] != 1)
      {
        OUTLINED_FUNCTION_57_6(v20);
        OUTLINED_FUNCTION_60_9();
        sub_193494798(v21, v22, v23);
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v24 = v2 == 0x7365686374616DLL && v1 == 0xE700000000000000;
    if (v24 || (OUTLINED_FUNCTION_59_0(0x7365686374616DLL, 0xE700000000000000) & 1) != 0)
    {
      type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAD8, &qword_193966AB8);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v26 = v2 == 0xD000000000000013 && v25 == v1;
      if (!v26 && (OUTLINED_FUNCTION_59_0(0xD000000000000013, v25) & 1) == 0)
      {
        v29 = sub_19349AB64();
        v30 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
        v32 = OUTLINED_FUNCTION_19_0(v30, v31);
        Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(v32);
        OUTLINED_FUNCTION_152(Decoration);
        v34 = OUTLINED_FUNCTION_141();
        sub_19358FC3C(v34, v35, v36);
        OUTLINED_FUNCTION_65_1();

        goto LABEL_10;
      }

      type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSpanMatchedEntity(0);
      OUTLINED_FUNCTION_58_1();
      if (v28)
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_41_2(v27);
    }

    OUTLINED_FUNCTION_60_9();
    sub_1934948FC();
    goto LABEL_10;
  }

  sub_193448758(v0, v3, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_23_4();
  if (v10)
  {
    sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_40();
  v14 = OUTLINED_FUNCTION_51_12(v11, v12, v13);
  OUTLINED_FUNCTION_80_0(v14, v15, &off_1F07C3F90);
  OUTLINED_FUNCTION_0_43();
  sub_19358D0F0(v4, v16);
LABEL_10:
  OUTLINED_FUNCTION_72_0();
}

void sub_19358E30C(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v23 = *v2;
  v24 = v4;
  v5 = v2[3];
  v25 = v2[2];
  v26 = v5;
  v6 = a1 == 0x646E497472617473 && a2 == 0xEA00000000007865;
  if (v6 || (OUTLINED_FUNCTION_5_5(0x646E497472617473, 0xEA00000000007865) & 1) != 0)
  {
    if (BYTE4(v23))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    v8 = v23;
    goto LABEL_9;
  }

  v9 = a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000;
  if (v9 || (OUTLINED_FUNCTION_5_5(0x7865646E49646E65, 0xE800000000000000) & 1) != 0)
  {
    if (BYTE12(v23))
    {
      goto LABEL_7;
    }

    v8 = DWORD2(v23);
LABEL_9:
    LODWORD(v22) = v8;
LABEL_10:
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v11 = a1 == 0xD000000000000012 && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v10) & 1) != 0)
  {
    *&v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAE0, &qword_193966AC0);
    goto LABEL_10;
  }

  v12 = a1 == 0x7265686374616DLL && a2 == 0xE700000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5(0x7265686374616DLL, 0xE700000000000000) & 1) != 0)
  {
    if (BYTE1(v25))
    {
      goto LABEL_7;
    }

    *&v22 = *(&v24 + 1);
    BYTE8(v22) = v25 & 1;
    goto LABEL_10;
  }

  v13 = a1 == 0x6F6353686374616DLL && a2 == 0xEA00000000006572;
  if (v13 || (OUTLINED_FUNCTION_5_5(0x6F6353686374616DLL, 0xEA00000000006572) & 1) != 0)
  {
    if (BYTE8(v25))
    {
      goto LABEL_7;
    }

    LODWORD(v22) = DWORD1(v25);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000011 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v14) & 1) != 0)
  {
    if (!*(&v26 + 1))
    {
      goto LABEL_7;
    }

    v22 = v26;
    goto LABEL_10;
  }

  v16 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityMatch;
  v19 = swift_allocObject();
  v18[2] = v19;
  v20 = v26;
  v19[3] = v25;
  v19[4] = v20;
  v21 = v24;
  v19[1] = v23;
  v19[2] = v21;
  *(v18 + 48) = 1;
  swift_willThrow();

  sub_19358E5B4(&v23, &v22);
}

void sub_19358E628()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  if (v2 != 0x6449656C646E7562 || v1 != 0xE800000000000000)
  {
    v7 = v1;
    v9 = v0[2];
    v8 = v0[3];
    if ((sub_19393CA30() & 1) == 0)
    {
      if (v3 != 0xD000000000000010 || 0x8000000193A1FDD0 != v7)
      {
        OUTLINED_FUNCTION_27_0();
        if ((sub_19393CA30() & 1) == 0)
        {
          v11 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
          v13 = v12;
          *v12 = v3;
          v12[1] = v7;
          v12[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntityType;
          OUTLINED_FUNCTION_95();
          v14 = swift_allocObject();
          v13[2] = v14;
          v14[2] = v5;
          v14[3] = v4;
          v14[4] = v9;
          v14[5] = v8;
          *(v13 + 48) = 1;
          swift_willThrow();

          goto LABEL_15;
        }
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

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

id sub_19358E7A4()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = v2 == 0xD000000000000010 && 0x8000000193A1E8E0 == v1;
  if (v7 || (v8 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_5_5(v8, v9) & 1) != 0))
  {
    if (!(v6 >> 62))
    {
      v10 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionStarted;
      v11 = &off_1F07CEBA0;
      return sub_193494798(v10, v11, v5);
    }
  }

  else
  {
    v13 = v3 == 0x6465646E65 && v1 == 0xE500000000000000;
    if (!v13 && (OUTLINED_FUNCTION_5_5(0x6465646E65, 0xE500000000000000) & 1) == 0)
    {
      if (v3 == 0x64656C696166 && v1 == 0xE600000000000000)
      {
        if (v6 >> 62 != 2)
        {
          goto LABEL_24;
        }
      }

      else if ((OUTLINED_FUNCTION_5_5(0x64656C696166, 0xE600000000000000) & 1) == 0 || (v6 & 0xC000000000000000) != 0x8000000000000000)
      {
        goto LABEL_24;
      }

      v10 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionFailed;
      v11 = &off_1F07CEBC0;
      return sub_193494798(v10, v11, v5);
    }

    if (v6 >> 62 == 1)
    {
      v10 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionCompleted;
      v11 = &off_1F07CEBB0;
      return sub_193494798(v10, v11, v5);
    }
  }

LABEL_24:
  v15 = sub_19349AB64();
  v16 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
  *v17 = v3;
  v17[1] = v1;
  v17[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext;
  v17[2] = v6;
  OUTLINED_FUNCTION_23_2(v16, v17);
}

void sub_19358E974()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_21_17();
  v7 = *v0;
  v8 = v4 == v5 && v2 == v6;
  if (v8 || (v10 = v0[1], v9 = v0[2], v12 = v0[3], v11 = v0[4], (OUTLINED_FUNCTION_25_20(v5, v6) & 1) != 0) || ((OUTLINED_FUNCTION_38(), v4 == 0xD000000000000013) ? (v16 = v15 == v2) : (v16 = 0), v16 || (OUTLINED_FUNCTION_25_20(0xD000000000000013, v15) & 1) != 0 || ((OUTLINED_FUNCTION_38(), v4 == 0xD000000000000010) ? (v18 = v17 == v2) : (v18 = 0), v18 || (v19 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_25_20(v19, v20) & 1) != 0))))
  {
    v13 = &qword_1EAE3CF48;
    v14 = &qword_193960FE0;
  }

  else
  {
    v21 = v4 == 0x6465726975716572 && v2 == 0xEF747865746E6F43;
    if (!v21 && (OUTLINED_FUNCTION_25_20(0x6465726975716572, 0xEF747865746E6F43) & 1) == 0)
    {
      v22 = v4 == 0x747865746E6F63 && v2 == 0xE700000000000000;
      if (!v22 && (OUTLINED_FUNCTION_25_20(0x747865746E6F63, 0xE700000000000000) & 1) == 0)
      {
        v23 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v23);
        v25 = v24;
        *v24 = v4;
        v24[1] = v2;
        v24[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected;
        v26 = swift_allocObject();
        v25[2] = v26;
        v26[2] = v7;
        v26[3] = v10;
        v26[4] = v9;
        v26[5] = v12;
        v26[6] = v11;
        OUTLINED_FUNCTION_65_1();

        goto LABEL_8;
      }
    }

    v13 = &unk_1EAE3DAE8;
    v14 = &unk_193966AC8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  sub_1934948FC();
LABEL_8:
  OUTLINED_FUNCTION_54_0();
}

void sub_19358EB90()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = *v0;
  v5 = *(v0 + 4);
  if (v2 != 0x664F7265626D756ELL || v1 != 0xEE0073656C707554)
  {
    v7 = v0[2];
    v8 = *(v0 + 12);
    v9 = *(v0 + 13);
    if ((OUTLINED_FUNCTION_5_5(0x664F7265626D756ELL, 0xEE0073656C707554) & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v11 = v3 == 0xD000000000000011 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_5_5(0xD000000000000011, v10) & 1) != 0)
      {
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v13 = v3 == 0xD000000000000018 && v12 == v1;
        if (!v13 && (OUTLINED_FUNCTION_5_5(0xD000000000000018, v12) & 1) == 0)
        {
          v14 = sub_19349AB64();
          v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
          *v16 = v3;
          *(v16 + 8) = v1;
          *(v16 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated;
          *(v16 + 16) = v4;
          *(v16 + 20) = v5;
          *(v16 + 24) = v7;
          *(v16 + 28) = v8;
          *(v16 + 29) = v9;
          OUTLINED_FUNCTION_23_2(v15, v16);

          goto LABEL_9;
        }

        if (v9 == 2)
        {
          goto LABEL_7;
        }
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_19358ED34(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_21_17();
  v7 = *v2;
  v8 = a1 == v5 && a2 == v6;
  if (v8 || (v10 = v2[1], v9 = v2[2], (OUTLINED_FUNCTION_67(v5, v6) & 1) != 0))
  {
    v32 = v7;
    v11 = &unk_1EAE3DAF0;
    v12 = &unk_193966AD0;
LABEL_7:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_59_11(v13, v14, v15, v16, v17, v18, v19, v20, v31, v32);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v23 = a1 == 0xD000000000000013 && v22 == a2;
  if (v23 || (OUTLINED_FUNCTION_67(0xD000000000000013, v22) & 1) != 0)
  {
    v32 = v10;
    v11 = &unk_1EAE3DAD0;
    v12 = &unk_193966AB0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_38();
  v25 = a1 == 0xD000000000000010 && v24 == a2;
  if (v25 || (v26 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_67(v26, v27) & 1) != 0))
  {
    v32 = v9;
    v11 = &unk_1EAE3DAE8;
    v12 = &unk_193966AC8;
    goto LABEL_7;
  }

  v28 = sub_19349AB64();
  v29 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = v7;
  v30[3] = v10;
  v30[4] = v9;
  v30[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked;
  OUTLINED_FUNCTION_23_2(v29, v30);
}

uint64_t sub_19358EEB8()
{
  OUTLINED_FUNCTION_61_9();
  result = 0x6F706D6F43627573;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 9);
  v8 = v3 == 0x6F706D6F43627573 && v0 == 0xEC000000746E656ELL;
  if (v8 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7)
    {
      *v2 = 0u;
      v2[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v9 = sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v9);
    *v11 = v3;
    *(v11 + 8) = v0;
    *(v11 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted;
    *(v11 + 16) = v5;
    *(v11 + 24) = v6;
    *(v11 + 25) = v7;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }

  return result;
}

void sub_19358EFD4(uint64_t a1)
{
  v5 = a1 == OUTLINED_FUNCTION_54_9() && v3 == 0xE600000000000000;
  if (v5 || (v6 = v4, v7 = v3, (sub_19393CA30() & 1) != 0))
  {
    if (v1 == 2)
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
    v8 = sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
    *v10 = a1;
    *(v10 + 8) = v7;
    *(v10 + 40) = v6;
    *(v10 + 16) = v1;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }
}

void sub_19358F0D0()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_172_0();
  v4 = v3;
  v6 = v5;
  v8 = *v0;
  v7 = v0[1];
  if (v3 != 0x6D6F44726F727265 || v1 != 0xEB000000006E6961)
  {
    v10 = v2;
    v11 = *(v0 + 4);
    v12 = *(v0 + 20);
    if ((OUTLINED_FUNCTION_15_16(0x6D6F44726F727265, 0xEB000000006E6961) & 1) == 0)
    {
      v13 = v4 == 0x646F43726F727265 && v1 == 0xE900000000000065;
      if (!v13 && (OUTLINED_FUNCTION_15_16(0x646F43726F727265, 0xE900000000000065) & 1) == 0)
      {
        v14 = sub_19349AB64();
        v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
        *v16 = v4;
        *(v16 + 8) = v1;
        *(v16 + 40) = v10;
        *(v16 + 16) = v8;
        *(v16 + 24) = v7;
        *(v16 + 32) = v11;
        *(v16 + 36) = v12;
        OUTLINED_FUNCTION_23_2(v15, v16);

        goto LABEL_15;
      }

      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      *v6 = 0u;
      v6[1] = 0u;
      goto LABEL_15;
    }
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_19358F220(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for AIML.UUID(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000010 && v14 == a2;
  if (v15 || (v16 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_117_2(v16, v17, a1) & 1) != 0))
  {
    if (*(v3 + 10))
    {
      goto LABEL_7;
    }

    v18 = *(v3 + 4);
    v39 = *v3;
    LOWORD(v40) = v18 & 0x1FF;
    v19 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentStarted;
    v20 = &off_1F07CECA0;
LABEL_9:
    sub_193494798(v19, v20, a3);
    goto LABEL_10;
  }

  v21 = a1 == 0x6465646E65 && a2 == 0xE500000000000000;
  if (v21 || (OUTLINED_FUNCTION_117_2(0x6465646E65, 0xE500000000000000, a1) & 1) != 0)
  {
    if (*(v3 + 11) == 3)
    {
      goto LABEL_7;
    }

    LOBYTE(v39) = *(v3 + 11);
    v19 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentEnded;
    v20 = &off_1F07CECB0;
    goto LABEL_9;
  }

  v22 = a1 == 0x64656C696166 && a2 == 0xE600000000000000;
  if (!v22 && (OUTLINED_FUNCTION_117_2(0x64656C696166, 0xE600000000000000, a1) & 1) == 0)
  {
    v26 = a1 == 0x64496563617274 && a2 == 0xE700000000000000;
    if (!v26 && (OUTLINED_FUNCTION_117_2(0x64496563617274, 0xE700000000000000, a1) & 1) == 0)
    {
      v32 = sub_19349AB64();
      OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v32);
      *v33 = a1;
      v33[1] = a2;
      Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
      OUTLINED_FUNCTION_152(Decoration);
      v35 = OUTLINED_FUNCTION_141();
      sub_19358FC3C(v35, v36, v37);
      OUTLINED_FUNCTION_65_1();

      goto LABEL_10;
    }

    v27 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
    sub_193448758(v3 + *(v27 + 28), v11, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v11, 1, v12);
    if (!v15)
    {
      OUTLINED_FUNCTION_1_40();
      v29 = sub_19358D094(v11, v4, v28);
      OUTLINED_FUNCTION_80_0(v29, v30, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_43();
      sub_19358D0F0(v4, v31);
      goto LABEL_10;
    }

    sub_19344E6DC(v11, &qword_1EAE3BCA0, &unk_19395C320);
    goto LABEL_7;
  }

  v23 = v3[3];
  if (v23 != 1)
  {
    v24 = *(v3 + 36);
    v25 = *(v3 + 8);
    v39 = v3[2];
    v40 = v23;
    v41 = v25;
    v42 = v24 & 1;
    v19 = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentFailed;
    v20 = &off_1F07CECC0;
    goto LABEL_9;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_10:
  OUTLINED_FUNCTION_72_0();
}

void sub_19358F534(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_38();
  v7 = v5 == 0xD000000000000013 && v6 == a2;
  if (v7 || (v8 = v5, v9 = v2[1], (OUTLINED_FUNCTION_48_11() & 1) != 0))
  {
    if (v4 == 2)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38();
  v11 = v8 == 0xD000000000000013 && v10 == a2;
  if (v11 || (OUTLINED_FUNCTION_48_11() & 1) != 0)
  {
    if (v9 == 2)
    {
      goto LABEL_7;
    }

LABEL_8:
    sub_1934948FC();
    return;
  }

  v12 = sub_19349AB64();
  v13 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v12);
  *v14 = v8;
  *(v14 + 8) = a2;
  *(v14 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered;
  *(v14 + 16) = v4;
  *(v14 + 17) = v9;
  OUTLINED_FUNCTION_23_2(v13, v14);
}

uint64_t sub_19358F670()
{
  OUTLINED_FUNCTION_172_0();
  v2 = *v0;
  OUTLINED_FUNCTION_38();
  v5 = v3 == 0xD000000000000013 && v4 == v1;
  if (v5 || (v6 = v3, v7 = v0[1], (OUTLINED_FUNCTION_15_16(0xD000000000000013, v4) & 1) != 0))
  {
    v25 = v2;
    v8 = &qword_1EAE3CF48;
    v9 = &qword_193960FE0;
LABEL_7:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_59_11(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v20 = v6 == 0xD00000000000001CLL && v19 == v1;
  if (v20 || (OUTLINED_FUNCTION_15_16(0xD00000000000001CLL, v19) & 1) != 0)
  {
    v25 = v7;
    v8 = &qword_1EAE3CF18;
    v9 = &qword_193960FB0;
    goto LABEL_7;
  }

  v21 = sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  *v23 = v6;
  v23[1] = v1;
  v23[5] = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported;
  v23[2] = v2;
  v23[3] = v7;
  OUTLINED_FUNCTION_23_2(v22, v23);
}

uint64_t sub_19358F7B0()
{
  OUTLINED_FUNCTION_61_9();
  result = 0x6F6F546C61746F74;
  v5 = *v1;
  v6 = *(v1 + 4);
  v7 = v3 == 0x6F6F546C61746F74 && v0 == 0xEE00746E756F436CLL;
  if (v7 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v6)
    {
      *v2 = 0u;
      v2[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    v8 = sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v8);
    *v10 = v3;
    *(v10 + 8) = v0;
    *(v10 + 40) = &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported;
    *(v10 + 16) = v5;
    *(v10 + 20) = v6;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }

  return result;
}

void sub_19358F8B8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v9 = v2 == 0x7254746E65696C63 && v0 == 0xED00006449656361;
  if (v9 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v1, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v9)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_40();
      v13 = OUTLINED_FUNCTION_51_12(v10, v11, v12);
      OUTLINED_FUNCTION_80_0(v13, v14, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_43();
      sub_19358D0F0(v4, v15);
    }
  }

  else
  {
    v16 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    v18 = v17;
    *v17 = v2;
    v17[1] = v0;
    v17[5] = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18 + 2);
    sub_19358FC3C(v1, boxed_opaque_existential_1Tm, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
    *(v18 + 48) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_19358FA98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_6();
  type metadata accessor for AIML.UUID(v7);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v9 = v2 == 0x64496563617274 && v0 == 0xE700000000000000;
  if (v9 || (sub_19393CA30() & 1) != 0)
  {
    sub_193448758(v1, v3, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_23_4();
    if (v9)
    {
      sub_19344E6DC(v3, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_1_40();
      v13 = OUTLINED_FUNCTION_51_12(v10, v11, v12);
      OUTLINED_FUNCTION_80_0(v13, v14, &off_1F07C3F90);
      OUTLINED_FUNCTION_0_43();
      sub_19358D0F0(v4, v15);
    }
  }

  else
  {
    v16 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v16);
    *v17 = v2;
    v17[1] = v0;
    v18 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
    v19 = OUTLINED_FUNCTION_152(v18);
    sub_19358FC3C(v1, v19, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_65_1();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19358FC3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

void OUTLINED_FUNCTION_42_19(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  *(v1 - 120) = *a1;
  *(v1 - 112) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_49_10(uint64_t a1)
{

  return sub_19393CA30();
}

uint64_t OUTLINED_FUNCTION_51_12(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_19358D094(v3, v4, a3);
}

__n128 OUTLINED_FUNCTION_55_9@<Q0>(uint64_t a1@<X8>)
{
  *(v2 - 120) = v1;
  result = *(a1 + 24);
  *(v2 - 112) = *(a1 + 8);
  *(v2 - 96) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_57_6@<Q0>(__n128 *a1@<X8>)
{
  *(v2 - 96) = a1->n128_u64[0];
  *(v2 - 88) = v1;
  result = a1[1];
  *(v2 - 80) = result;
  return result;
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v242 = a2;
  v243 = a1;
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_47(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v6);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAF8, &qword_193966CC0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v8);
  v233 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_47(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v13);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DB00, &qword_193966CC8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_23_16(v15);
  v238 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_23_16(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_1();
  v234 = v20;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DB08, &qword_193966CD0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_53_1();
  v237 = v22;
  v23 = OUTLINED_FUNCTION_22_2();
  v240 = type metadata accessor for MonotonicTimestamp(v23);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_289();
  v235 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_53_1();
  v239 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B958, &qword_193957B50);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v223 - v31;
  type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v223 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_47(v36);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v223 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DB10, &qword_193966CD8) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v223 - v42;
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v44 = DecorationTelemetry[7];
  v45 = *(v40 + 56);
  sub_1934486F8(v243 + v44, v43, &qword_1EAE3DAA0, &qword_193966A88);
  v46 = v242 + v44;
  v47 = v242;
  sub_1934486F8(v46, &v43[v45], &qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_31(v43);
  if (v48)
  {
    OUTLINED_FUNCTION_31(&v43[v45]);
    if (v48)
    {
      sub_19344E6DC(v43, &qword_1EAE3DAA0, &qword_193966A88);
      goto LABEL_11;
    }

LABEL_9:
    v49 = &qword_1EAE3DB10;
    v50 = &qword_193966CD8;
    v51 = v43;
LABEL_31:
    sub_19344E6DC(v51, v49, v50);
    return 0;
  }

  sub_1934486F8(v43, v39, &qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_31(&v43[v45]);
  if (v48)
  {
    OUTLINED_FUNCTION_83_11();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_33_14();
  sub_19359129C(&v43[v45], v35, v52);
  OUTLINED_FUNCTION_31_21();
  sub_193591D50(v53, v54, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
  v55 = sub_19393C550();
  sub_193591244(v35, &qword_1EAE3DAA0);
  v56 = OUTLINED_FUNCTION_175_0();
  sub_193591244(v56, v57);
  sub_19344E6DC(v43, &qword_1EAE3DAA0, &qword_193966A88);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v58 = DecorationTelemetry;
  v59 = DecorationTelemetry[8];
  v60 = *(v29 + 48);
  v61 = v243;
  OUTLINED_FUNCTION_25_6(v243 + v59, v32);
  OUTLINED_FUNCTION_25_6(v47 + v59, &v32[v60]);
  OUTLINED_FUNCTION_38_0(v32, 1);
  if (v48)
  {
    OUTLINED_FUNCTION_31(&v32[v60]);
    if (v48)
    {
      sub_19344E6DC(v32, &qword_1EAE3B498, &unk_193959120);
      goto LABEL_21;
    }

LABEL_19:
    v49 = &qword_1EAE3B958;
    v50 = &qword_193957B50;
LABEL_30:
    v51 = v32;
    goto LABEL_31;
  }

  v62 = v239;
  sub_1934486F8(v32, v239, &qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_31(&v32[v60]);
  if (v63)
  {
    OUTLINED_FUNCTION_83_11();
    goto LABEL_19;
  }

  sub_19359129C(&v32[v60], v235, type metadata accessor for MonotonicTimestamp);
  OUTLINED_FUNCTION_37_13();
  sub_193591D50(v64, v65, &protocol conformance descriptor for MonotonicTimestamp);
  OUTLINED_FUNCTION_175_0();
  v66 = sub_19393C550();
  v67 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v67, v68);
  sub_193591244(v62, type metadata accessor for MonotonicTimestamp);
  sub_19344E6DC(v32, &qword_1EAE3B498, &unk_193959120);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v69 = v58[9];
  v32 = v237;
  v70 = *(v236 + 48);
  OUTLINED_FUNCTION_25_6(v61 + v69, v237);
  OUTLINED_FUNCTION_25_6(v47 + v69, &v32[v70]);
  OUTLINED_FUNCTION_38_0(v32, 1);
  if (v48)
  {
    OUTLINED_FUNCTION_31(&v32[v70]);
    if (v48)
    {
      sub_19344E6DC(v32, &qword_1EAE3DAA8, &qword_193966A90);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v71 = v234;
  sub_1934486F8(v32, v234, &qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_31(&v32[v70]);
  if (v72)
  {
    OUTLINED_FUNCTION_83_11();
LABEL_29:
    v49 = &qword_1EAE3DB08;
    v50 = &qword_193966CD0;
    goto LABEL_30;
  }

  sub_19359129C(&v32[v70], v230, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  OUTLINED_FUNCTION_36_15();
  sub_193591D50(v74, v75, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  OUTLINED_FUNCTION_175_0();
  v76 = sub_19393C550();
  v77 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v77, v78);
  sub_193591244(v71, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  sub_19344E6DC(v32, &qword_1EAE3DAA8, &qword_193966A90);
  if ((v76 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v79 = v58[10];
  v80 = *(v231 + 48);
  v81 = v232;
  OUTLINED_FUNCTION_25_6(v61 + v79, v232);
  v82 = v47 + v79;
  v83 = v81;
  OUTLINED_FUNCTION_25_6(v82, v81 + v80);
  OUTLINED_FUNCTION_38_0(v81, 1);
  if (v48)
  {
    OUTLINED_FUNCTION_31(v81 + v80);
    if (v48)
    {
      sub_19344E6DC(v81, &qword_1EAE3DAB0, &unk_193967240);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v84 = v81;
  v85 = v229;
  sub_1934486F8(v84, v229, &qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_31(v83 + v80);
  if (v86)
  {
    sub_193591244(v85, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
LABEL_43:
    v49 = &qword_1EAE3DB00;
    v50 = &qword_193966CC8;
    v51 = v83;
    goto LABEL_31;
  }

  sub_19359129C(v83 + v80, v228, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  OUTLINED_FUNCTION_35_17();
  sub_193591D50(v87, v88, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  v89 = sub_19393C550();
  v90 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v90, v91);
  sub_193591244(v85, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  sub_19344E6DC(v83, &qword_1EAE3DAB0, &unk_193967240);
  if ((v89 & 1) == 0)
  {
    return 0;
  }

LABEL_45:
  v92 = v58[11];
  v93 = *(v61 + v92);
  v94 = *(v47 + v92);
  if ((~v93 & 0xF000000000000007) == 0)
  {
    sub_193438388(v93);
    sub_193438388(v94);
    if ((~v94 & 0xF000000000000007) == 0)
    {
      sub_1934354B4(v93);
      goto LABEL_52;
    }

LABEL_50:
    sub_1934354B4(v93);
    sub_1934354B4(v94);
    return 0;
  }

  v249 = *(v61 + v92);
  if ((~v94 & 0xF000000000000007) == 0)
  {
    sub_193438388(v93);
    sub_193438388(v94);
    sub_193438388(v93);

    goto LABEL_50;
  }

  v244 = v94;
  sub_193438388(v93);
  sub_193438388(v94);
  sub_193438388(v93);
  v95 = sub_1935911F0();
  v97 = OUTLINED_FUNCTION_39_16(v95, v96, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDCollectionContext, v95);

  sub_1934354B4(v93);
  if ((v97 & 1) == 0)
  {
    return 0;
  }

LABEL_52:
  v98 = v58[12];
  v99 = v47;
  v101 = *(v61 + v98);
  v100 = *(v61 + v98 + 8);
  v103 = *(v61 + v98 + 16);
  v102 = *(v61 + v98 + 24);
  v104 = *(v61 + v98 + 32);
  v105 = (v99 + v98);
  v107 = *v105;
  v106 = v105[1];
  v109 = v105[2];
  v108 = v105[3];
  v110 = v105[4];
  if (!v101)
  {
    OUTLINED_FUNCTION_9_43();
    sub_193590F00(v122);
    if (!v107)
    {
      OUTLINED_FUNCTION_19_25();
      sub_193590F00(v137);
      OUTLINED_FUNCTION_9_43();
      sub_19345576C(v138, v139, v140, v141, v142);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_19_25();
    sub_193590F00(v123);
LABEL_59:
    v127 = OUTLINED_FUNCTION_6_33();
    sub_19345576C(v127, v128, v129, v130, v131);
    OUTLINED_FUNCTION_19_25();
    sub_19345576C(v132, v133, v134, v135, v136);
    return 0;
  }

  v249 = v101;
  v250 = v100;
  v251 = v103;
  v252 = v102;
  v253 = v104;
  if (!v107)
  {
    v124 = OUTLINED_FUNCTION_6_33();
    sub_193590F00(v124);
    OUTLINED_FUNCTION_19_25();
    sub_193590F00(v125);
    v126 = OUTLINED_FUNCTION_6_33();
    sub_193590F00(v126);

    goto LABEL_59;
  }

  v244 = v107;
  v245 = v106;
  v246 = v109;
  v247 = v108;
  v248 = v110;
  v111 = OUTLINED_FUNCTION_6_33();
  sub_193590F00(v111);
  OUTLINED_FUNCTION_19_25();
  sub_193590F00(v112);
  v113 = OUTLINED_FUNCTION_6_33();
  sub_193590F00(v113);
  v114 = sub_19359119C();
  v116 = OUTLINED_FUNCTION_39_16(v114, v115, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesCollected, v114);

  v117 = OUTLINED_FUNCTION_6_33();
  sub_19345576C(v117, v118, v119, v120, v121);
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  v144 = DecorationTelemetry;
  v143 = v242;
  v145 = DecorationTelemetry[13];
  v146 = v243;
  v147 = (v243 + v145);
  v148 = *(v147 + 2) | (*(v147 + 6) << 32);
  v149 = (v242 + v145);
  v150 = *(v149 + 2) | (*(v149 + 6) << 32);
  if ((v148 & 0xFF0000000000) == 0x30000000000)
  {
    if ((v150 & 0xFF0000000000) != 0x30000000000)
    {
      return 0;
    }
  }

  else
  {
    v151 = *v149;
    v249 = *v147;
    WORD2(v250) = WORD2(v148);
    LODWORD(v250) = v148;
    if ((v150 & 0xFF0000000000) == 0x30000000000)
    {
      return 0;
    }

    LODWORD(v244) = v151;
    BYTE4(v244) = BYTE4(v151) & 1;
    LODWORD(v245) = v150;
    BYTE4(v245) = BYTE4(v150) & 1;
    BYTE5(v245) = BYTE5(v150);
    v152 = sub_193591148();
    if ((OUTLINED_FUNCTION_39_16(v152, v153, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDTuplesGenerated, v152) & 1) == 0)
    {
      return 0;
    }
  }

  v154 = v144[14];
  v156 = *(v146 + v154);
  v155 = *(v146 + v154 + 8);
  v157 = *(v146 + v154 + 16);
  v158 = (v143 + v154);
  v160 = *v158;
  v159 = v158[1];
  v161 = v158[2];
  if (!v156)
  {
    sub_193590F6C(0);
    if (!v160)
    {
      sub_193590F6C(0);
      sub_193456D68(0, v155, v157);
      goto LABEL_75;
    }

    v171 = OUTLINED_FUNCTION_56_8();
    sub_193590F6C(v171);
LABEL_73:
    v174 = OUTLINED_FUNCTION_25_21();
    sub_193456D68(v174, v175, v176);
    v177 = OUTLINED_FUNCTION_56_8();
    sub_193456D68(v177, v178, v179);
    return 0;
  }

  v249 = v156;
  v250 = v155;
  v251 = v157;
  if (!v160)
  {
    v172 = OUTLINED_FUNCTION_25_21();
    sub_193590F6C(v172);
    sub_193590F6C(0);
    v173 = OUTLINED_FUNCTION_25_21();
    sub_193590F6C(v173);

    goto LABEL_73;
  }

  v244 = v160;
  v245 = v159;
  v246 = v161;
  v162 = OUTLINED_FUNCTION_25_21();
  sub_193590F6C(v162);
  v163 = OUTLINED_FUNCTION_56_8();
  sub_193590F6C(v163);
  v164 = OUTLINED_FUNCTION_25_21();
  sub_193590F6C(v164);
  v165 = sub_1935910F4();
  v167 = OUTLINED_FUNCTION_39_16(v165, v166, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDEntitiesRanked, v165);

  v168 = OUTLINED_FUNCTION_25_21();
  sub_193456D68(v168, v169, v170);
  if ((v167 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  v180 = v144[15];
  v181 = *(v225 + 48);
  v182 = v226;
  OUTLINED_FUNCTION_25_6(v146 + v180, v226);
  v183 = v242;
  OUTLINED_FUNCTION_25_6(v242 + v180, v182 + v181);
  OUTLINED_FUNCTION_38_0(v182, 1);
  if (v48)
  {
    OUTLINED_FUNCTION_31(v182 + v181);
    if (v48)
    {
      sub_19344E6DC(v182, &qword_1EAE3DAB8, &qword_193966A98);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v184 = v224;
  sub_1934486F8(v182, v224, &qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_31(v182 + v181);
  if (v185)
  {
    OUTLINED_FUNCTION_83_11();
LABEL_83:
    v49 = &qword_1EAE3DAF8;
    v50 = &qword_193966CC0;
    v51 = v182;
    goto LABEL_31;
  }

  sub_19359129C(v182 + v181, v223, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  OUTLINED_FUNCTION_34_19();
  sub_193591D50(v186, v187, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  OUTLINED_FUNCTION_175_0();
  v188 = sub_19393C550();
  v189 = OUTLINED_FUNCTION_23_10();
  sub_193591244(v189, v190);
  sub_193591244(v184, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  sub_19344E6DC(v182, &qword_1EAE3DAB8, &qword_193966A98);
  if ((v188 & 1) == 0)
  {
    return 0;
  }

LABEL_85:
  v191 = v144[16];
  v193 = *(v146 + v191);
  v192 = *(v146 + v191 + 8);
  v194 = (v183 + v191);
  v196 = *v194;
  v195 = v194[1];
  if (v193)
  {
    v249 = v193;
    v250 = v192;
    if (v196)
    {
      v244 = v196;
      v245 = v195;
      v197 = OUTLINED_FUNCTION_23_10();
      sub_193590FB8(v197);
      sub_193590FB8(v196);
      v198 = OUTLINED_FUNCTION_23_10();
      sub_193590FB8(v198);
      v199 = sub_1935910A0();
      v201 = OUTLINED_FUNCTION_39_16(v199, v200, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDContextStatementIdsReported, v199);

      v202 = OUTLINED_FUNCTION_23_10();
      sub_19345741C(v202, v203);
      if ((v201 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_94;
    }

    v204 = OUTLINED_FUNCTION_23_10();
    sub_193590FB8(v204);
    sub_193590FB8(0);
    v205 = OUTLINED_FUNCTION_23_10();
    sub_193590FB8(v205);

LABEL_92:
    v206 = OUTLINED_FUNCTION_23_10();
    sub_19345741C(v206, v207);
    sub_19345741C(v196, v195);
    return 0;
  }

  sub_193590FB8(0);
  if (v196)
  {
    sub_193590FB8(v196);
    goto LABEL_92;
  }

  sub_193590FB8(0);
  sub_19345741C(0, v192);
LABEL_94:
  v208 = DecorationTelemetry[17];
  v209 = *(v243 + v208);
  v210 = *(v242 + v208);
  if (v209 == 3)
  {
    if (v210 != 3)
    {
      return 0;
    }
  }

  else
  {
    LOWORD(v249) = v209;
    if (v210 == 3)
    {
      return 0;
    }

    LOWORD(v244) = v210;
    v211 = sub_19359104C();
    if ((OUTLINED_FUNCTION_39_16(v211, v212, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDAppPreLaunchTriggered, v211) & 1) == 0)
    {
      return 0;
    }
  }

  v213 = DecorationTelemetry[18];
  v214 = (v243 + v213);
  v215 = *(v243 + v213 + 5);
  v216 = (v242 + v213);
  v217 = *(v242 + v213 + 5);
  if (v215)
  {
    if (v217)
    {
      return 1;
    }
  }

  else
  {
    v218 = *(v216 + 4);
    v219 = *v216;
    v220 = *v214;
    WORD2(v249) = *(v214 + 4);
    LODWORD(v249) = v220;
    if ((v217 & 1) == 0)
    {
      LODWORD(v244) = v219;
      BYTE4(v244) = ((v219 | (v218 << 32)) >> 32) & 1;
      v221 = sub_193590FF8();
      if (OUTLINED_FUNCTION_39_16(v221, v222, &type metadata for IntelligenceFlowQueryDecorationTelemetry.QDToolboxSizeReported, v221))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193590F00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193590F6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_193590FB8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_193590FF8()
{
  result = qword_1EAE3DB18;
  if (!qword_1EAE3DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB18);
  }

  return result;
}

unint64_t sub_19359104C()
{
  result = qword_1EAE3DB20;
  if (!qword_1EAE3DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB20);
  }

  return result;
}

unint64_t sub_1935910A0()
{
  result = qword_1EAE3DB28;
  if (!qword_1EAE3DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB28);
  }

  return result;
}

unint64_t sub_1935910F4()
{
  result = qword_1EAE3DB38;
  if (!qword_1EAE3DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB38);
  }

  return result;
}

unint64_t sub_193591148()
{
  result = qword_1EAE3DB40;
  if (!qword_1EAE3DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB40);
  }

  return result;
}

unint64_t sub_19359119C()
{
  result = qword_1EAE3DB48;
  if (!qword_1EAE3DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB48);
  }

  return result;
}

unint64_t sub_1935911F0()
{
  result = qword_1EAE3DB50;
  if (!qword_1EAE3DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB50);
  }

  return result;
}

uint64_t sub_193591244(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_19359129C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.hash(into:)()
{
  Decoration = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_289();
  v76 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB8, &qword_193966A98);
  OUTLINED_FUNCTION_47(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_53_1();
  v82 = v5;
  v6 = OUTLINED_FUNCTION_22_2();
  v81 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall(v6);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_289();
  v75 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAB0, &unk_193967240);
  OUTLINED_FUNCTION_47(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  v80 = v11;
  v12 = OUTLINED_FUNCTION_22_2();
  v79 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation(v12);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v74 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA8, &qword_193966A90);
  OUTLINED_FUNCTION_47(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_53_1();
  v78 = v17;
  v18 = OUTLINED_FUNCTION_22_2();
  v77 = type metadata accessor for MonotonicTimestamp(v18);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_289();
  v73 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B498, &unk_193959120);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  v25 = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3DAA0, &qword_193966A88);
  OUTLINED_FUNCTION_47(v29);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  DecorationTelemetry = type metadata accessor for IntelligenceFlowQueryDecorationTelemetry(0);
  v34 = v0;
  sub_1934486F8(v0 + DecorationTelemetry[7], v32, &qword_1EAE3DAA0, &qword_193966A88);
  if (__swift_getEnumTagSinglePayload(v32, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_33_14();
    sub_19359129C(v32, v28, v35);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_31_21();
    sub_193591D50(v36, v37, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDEventMetadata);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v28, &qword_1EAE3DAA0);
  }

  sub_1934486F8(v0 + DecorationTelemetry[8], v24, &qword_1EAE3B498, &unk_193959120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v77);
  v39 = v79;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_19359129C(v24, v73, type metadata accessor for MonotonicTimestamp);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_37_13();
    sub_193591D50(v40, v41, &protocol conformance descriptor for MonotonicTimestamp);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v42 = OUTLINED_FUNCTION_175_0();
    sub_193591244(v42, v43);
  }

  v44 = v81;
  v45 = v78;
  sub_1934486F8(v34 + DecorationTelemetry[9], v78, &qword_1EAE3DAA8, &qword_193966A90);
  if (__swift_getEnumTagSinglePayload(v45, 1, v39) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v46 = v74;
    sub_19359129C(v45, v74, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_36_15();
    sub_193591D50(v47, v48, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v46, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDRequestInvocation);
  }

  v49 = v80;
  sub_1934486F8(v34 + DecorationTelemetry[10], v80, &qword_1EAE3DAB0, &unk_193967240);
  if (__swift_getEnumTagSinglePayload(v49, 1, v44) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v50 = v75;
    sub_19359129C(v49, v75, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_35_17();
    sub_193591D50(v51, v52, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v50, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDJointResolverCall);
  }

  if ((~*(v34 + DecorationTelemetry[11]) & 0xF000000000000007) != 0)
  {
    v84 = *(v34 + DecorationTelemetry[11]);
    OUTLINED_FUNCTION_103_0();
    sub_193591C00();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v53 = (v34 + DecorationTelemetry[12]);
  if (*v53)
  {
    v55 = v53[3];
    v54 = v53[4];
    v57 = v53[1];
    v56 = v53[2];
    v84 = *v53;
    v85 = v57;
    v86 = v56;
    v87 = v55;
    v88 = v54;
    OUTLINED_FUNCTION_103_0();
    sub_193591C54();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v58 = (v34 + DecorationTelemetry[13]);
  v59 = *(v58 + 2) | (*(v58 + 6) << 32);
  if ((v59 & 0xFF0000000000) == 0x30000000000)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v60 = *v58;
    LODWORD(v84) = v60;
    BYTE4(v84) = BYTE4(v60) & 1;
    LODWORD(v85) = v59;
    BYTE4(v85) = BYTE4(v59) & 1;
    BYTE5(v85) = BYTE5(v59);
    OUTLINED_FUNCTION_103_0();
    sub_193591CA8();
    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  v61 = (v34 + DecorationTelemetry[14]);
  if (*v61)
  {
    v63 = v61[1];
    v62 = v61[2];
    v84 = *v61;
    v85 = v63;
    v86 = v62;
    OUTLINED_FUNCTION_103_0();
    sub_193591CFC();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v64 = v82;
  sub_1934486F8(v34 + DecorationTelemetry[15], v82, &qword_1EAE3DAB8, &qword_193966A98);
  if (__swift_getEnumTagSinglePayload(v64, 1, Decoration) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v65 = v76;
    sub_19359129C(v64, v76, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_34_19();
    sub_193591D50(v66, v67, &protocol conformance descriptor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    sub_193591244(v65, type metadata accessor for IntelligenceFlowQueryDecorationTelemetry.QDSubComponentContext);
  }

  v68 = (v34 + DecorationTelemetry[16]);
  if (*v68)
  {
    v69 = v68[1];
    v84 = *v68;
    v85 = v69;
    OUTLINED_FUNCTION_103_0();
    sub_193591D98();

    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v34 + DecorationTelemetry[17]) == 3)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    LOWORD(v84) = *(v34 + DecorationTelemetry[17]);
    OUTLINED_FUNCTION_103_0();
    sub_193591DEC();
    OUTLINED_FUNCTION_49_11();
    sub_19393C540();
  }

  v70 = v34 + DecorationTelemetry[18];
  if (*(v70 + 5) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v72 = *(v70 + 4);
  LODWORD(v84) = *v70;
  BYTE4(v84) = v72 & 1;
  OUTLINED_FUNCTION_103_0();
  sub_193591E40();
  OUTLINED_FUNCTION_49_11();
  return sub_19393C540();
}

unint64_t sub_193591C00()
{
  result = qword_1EAE3DB88;
  if (!qword_1EAE3DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB88);
  }

  return result;
}

unint64_t sub_193591C54()
{
  result = qword_1EAE3DB90;
  if (!qword_1EAE3DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB90);
  }

  return result;
}

unint64_t sub_193591CA8()
{
  result = qword_1EAE3DB98;
  if (!qword_1EAE3DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DB98);
  }

  return result;
}

unint64_t sub_193591CFC()
{
  result = qword_1EAE3DBA0;
  if (!qword_1EAE3DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBA0);
  }

  return result;
}

uint64_t sub_193591D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_193591D98()
{
  result = qword_1EAE3DBB0;
  if (!qword_1EAE3DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBB0);
  }

  return result;
}

unint64_t sub_193591DEC()
{
  result = qword_1EAE3DBB8;
  if (!qword_1EAE3DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBB8);
  }

  return result;
}

unint64_t sub_193591E40()
{
  result = qword_1EAE3DBC0;
  if (!qword_1EAE3DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3DBC0);
  }

  return result;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCaller.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDCaller.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v39 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v39, v40, v41, v42, &qword_1EAE3DC58, &unk_193966FE0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v43 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v43, v44, v45, v46, &qword_1EAE3DC58, &unk_193966FE0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v47, v48, v49, v50, v51, v52);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v53 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE3DC58, &unk_193966FE0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v57 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v57, v58, v59, v60, &qword_1EAE3DC58, &unk_193966FE0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_47_5(v31, v32, v33, v34);
  *(v36 + 32) = 3;
  *(v36 + 40) = v0;
  return v37;
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDCaller.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6E6E616C50657250;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_75_11();
      break;
    case 2:
      OUTLINED_FUNCTION_38();
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6D726157657250;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDCaller.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6E6E616C50657250 && v0 == 0xEA00000000007265;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6E6E616C50657250, 0xEA00000000007265) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_75_11();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0xD000000000000018 && 0x8000000193A1FEF0 == v0;
        if (v10 || (OUTLINED_FUNCTION_25_7(24, 0x8000000193A1FEF0) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6D726157657250 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_22_7(0x6D726157657250);
          OUTLINED_FUNCTION_89();
          v5 = 3;
          if ((v1 & 1) == 0)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6E656D656C706D49;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_63_10();
      break;
    case 2:
      result = OUTLINED_FUNCTION_73_9();
      break;
    case 3:
      result = OUTLINED_FUNCTION_77_11();
      break;
    case 4:
      result = 0x6F72746E6F434955;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowQueryDecorationTelemetry.QDToolSubType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6E656D656C706D49 && v0 == 0xEE006E6F69746174;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6E656D656C706D49, 0xEE006E6F69746174) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_63_10();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_73_9();
        v12 = v1 == v10 && v0 == v11;
        if (v12 || (OUTLINED_FUNCTION_0_9(v10, v11) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v13 = OUTLINED_FUNCTION_77_11();
          v15 = v1 == v13 && v0 == v14;
          if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 0x6F72746E6F434955 && v0 == 0xE90000000000006CLL)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(0x6F72746E6F434955, 0xE90000000000006CLL);
            OUTLINED_FUNCTION_89();
            v5 = 4;
            if ((v1 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v201 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v201, v202, v203, v204, &qword_1EAE3DC48, &qword_193966FD0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v205 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v205, v206, v207, v208, &qword_1EAE3DC48, &qword_193966FD0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v209, v210, v211, v212, v213, v214);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v215 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v215, v216, v217, v218, &qword_1EAE3DC48, &qword_193966FD0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v219 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v219, v220, v221, v222, &qword_1EAE3DC48, &qword_193966FD0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_47_5(v31, v32, v33, v34);
  OUTLINED_FUNCTION_4(v36);
  OUTLINED_FUNCTION_80_10();
  if (!(v19 ^ v20 | v13))
  {
    v223 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v223, v224, v225, v226, &qword_1EAE3DC48, &qword_193966FD0);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42);
  OUTLINED_FUNCTION_79_12();
  if (!(v19 ^ v20 | v13))
  {
    v227 = OUTLINED_FUNCTION_39(v47);
    v43 = OUTLINED_FUNCTION_85(v227, v228, v229, v230, &qword_1EAE3DC48, &qword_193966FD0);
    v46 = v43;
  }

  OUTLINED_FUNCTION_47_5(v43, v44, v45, v46);
  OUTLINED_FUNCTION_4(v48);
  if (v0 + 8 > (v53 >> 1))
  {
    v231 = OUTLINED_FUNCTION_39(v53);
    v49 = OUTLINED_FUNCTION_84_2(v231, v232, v233, v234, &qword_1EAE3DC48, &qword_193966FD0);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  OUTLINED_FUNCTION_4(v54);
  if (v0 + 9 > (v59 >> 1))
  {
    v235 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_85(v235, v236, v237, v238, &qword_1EAE3DC48, &qword_193966FD0);
    v58 = v55;
  }

  OUTLINED_FUNCTION_47_5(v55, v56, v57, v58);
  OUTLINED_FUNCTION_4(v60);
  if (v0 + 10 > (v65 >> 1))
  {
    v239 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_84_2(v239, v240, v241, v242, &qword_1EAE3DC48, &qword_193966FD0);
    v64 = v61;
  }

  OUTLINED_FUNCTION_50(v61, v62, v63, v64);
  OUTLINED_FUNCTION_4(v66);
  if (v0 + 11 > (v71 >> 1))
  {
    v243 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_85(v243, v244, v245, v246, &qword_1EAE3DC48, &qword_193966FD0);
    v70 = v67;
  }

  OUTLINED_FUNCTION_47_5(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72);
  if (v0 + 12 > (v77 >> 1))
  {
    v247 = OUTLINED_FUNCTION_39(v77);
    v73 = OUTLINED_FUNCTION_84_2(v247, v248, v249, v250, &qword_1EAE3DC48, &qword_193966FD0);
    v76 = v73;
  }

  OUTLINED_FUNCTION_50(v73, v74, v75, v76);
  OUTLINED_FUNCTION_4(v78);
  if (v0 + 13 > (v83 >> 1))
  {
    v251 = OUTLINED_FUNCTION_39(v83);
    v79 = OUTLINED_FUNCTION_85(v251, v252, v253, v254, &qword_1EAE3DC48, &qword_193966FD0);
    v82 = v79;
  }

  OUTLINED_FUNCTION_47_5(v79, v80, v81, v82);
  OUTLINED_FUNCTION_4(v84);
  if (v0 + 14 > (v89 >> 1))
  {
    v255 = OUTLINED_FUNCTION_39(v89);
    v85 = OUTLINED_FUNCTION_84_2(v255, v256, v257, v258, &qword_1EAE3DC48, &qword_193966FD0);
    v88 = v85;
  }

  OUTLINED_FUNCTION_50(v85, v86, v87, v88);
  OUTLINED_FUNCTION_4(v90);
  if (v0 + 15 > (v95 >> 1))
  {
    v259 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v259, v260, v261, v262, &qword_1EAE3DC48, &qword_193966FD0);
    v94 = v91;
  }

  OUTLINED_FUNCTION_47_5(v91, v92, v93, v94);
  OUTLINED_FUNCTION_4(v96);
  if (v0 + 16 > (v101 >> 1))
  {
    v263 = OUTLINED_FUNCTION_39(v101);
    v97 = OUTLINED_FUNCTION_84_2(v263, v264, v265, v266, &qword_1EAE3DC48, &qword_193966FD0);
    v100 = v97;
  }

  OUTLINED_FUNCTION_50(v97, v98, v99, v100);
  OUTLINED_FUNCTION_4(v102);
  if (v0 + 17 > (v107 >> 1))
  {
    v267 = OUTLINED_FUNCTION_39(v107);
    v103 = OUTLINED_FUNCTION_85(v267, v268, v269, v270, &qword_1EAE3DC48, &qword_193966FD0);
    v106 = v103;
  }

  OUTLINED_FUNCTION_47_5(v103, v104, v105, v106);
  OUTLINED_FUNCTION_4(v108);
  if (v0 + 18 > (v113 >> 1))
  {
    v271 = OUTLINED_FUNCTION_39(v113);
    v109 = OUTLINED_FUNCTION_84_2(v271, v272, v273, v274, &qword_1EAE3DC48, &qword_193966FD0);
    v112 = v109;
  }

  OUTLINED_FUNCTION_50(v109, v110, v111, v112);
  OUTLINED_FUNCTION_4(v114);
  if (v0 + 19 > (v119 >> 1))
  {
    v275 = OUTLINED_FUNCTION_39(v119);
    v115 = OUTLINED_FUNCTION_85(v275, v276, v277, v278, &qword_1EAE3DC48, &qword_193966FD0);
    v118 = v115;
  }

  OUTLINED_FUNCTION_47_5(v115, v116, v117, v118);
  OUTLINED_FUNCTION_4(v120);
  if (v0 + 20 > (v125 >> 1))
  {
    v279 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_84_2(v279, v280, v281, v282, &qword_1EAE3DC48, &qword_193966FD0);
    v124 = v121;
  }

  OUTLINED_FUNCTION_50(v121, v122, v123, v124);
  OUTLINED_FUNCTION_4(v126);
  if (v0 + 21 > (v131 >> 1))
  {
    v283 = OUTLINED_FUNCTION_39(v131);
    v127 = OUTLINED_FUNCTION_85(v283, v284, v285, v286, &qword_1EAE3DC48, &qword_193966FD0);
    v130 = v127;
  }

  OUTLINED_FUNCTION_47_5(v127, v128, v129, v130);
  OUTLINED_FUNCTION_4(v132);
  if (v0 + 22 > (v137 >> 1))
  {
    v287 = OUTLINED_FUNCTION_39(v137);
    v133 = OUTLINED_FUNCTION_84_2(v287, v288, v289, v290, &qword_1EAE3DC48, &qword_193966FD0);
    v136 = v133;
  }

  OUTLINED_FUNCTION_50(v133, v134, v135, v136);
  OUTLINED_FUNCTION_4(v138);
  if (v0 + 23 > (v143 >> 1))
  {
    v291 = OUTLINED_FUNCTION_39(v143);
    v139 = OUTLINED_FUNCTION_85(v291, v292, v293, v294, &qword_1EAE3DC48, &qword_193966FD0);
    v142 = v139;
  }

  OUTLINED_FUNCTION_47_5(v139, v140, v141, v142);
  OUTLINED_FUNCTION_4(v144);
  if (v0 + 24 > (v149 >> 1))
  {
    v295 = OUTLINED_FUNCTION_39(v149);
    v145 = OUTLINED_FUNCTION_84_2(v295, v296, v297, v298, &qword_1EAE3DC48, &qword_193966FD0);
    v148 = v145;
  }

  OUTLINED_FUNCTION_50(v145, v146, v147, v148);
  OUTLINED_FUNCTION_4(v150);
  if (v0 + 25 > (v155 >> 1))
  {
    v299 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_85(v299, v300, v301, v302, &qword_1EAE3DC48, &qword_193966FD0);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156);
  if (v0 + 26 > (v161 >> 1))
  {
    v303 = OUTLINED_FUNCTION_39(v161);
    v157 = OUTLINED_FUNCTION_84_2(v303, v304, v305, v306, &qword_1EAE3DC48, &qword_193966FD0);
    v160 = v157;
  }

  OUTLINED_FUNCTION_50(v157, v158, v159, v160);
  OUTLINED_FUNCTION_4(v162);
  if (v0 + 27 > (v167 >> 1))
  {
    v307 = OUTLINED_FUNCTION_39(v167);
    v163 = OUTLINED_FUNCTION_85(v307, v308, v309, v310, &qword_1EAE3DC48, &qword_193966FD0);
    v166 = v163;
  }

  OUTLINED_FUNCTION_47_5(v163, v164, v165, v166);
  OUTLINED_FUNCTION_4(v168);
  if (v0 + 28 > (v173 >> 1))
  {
    v311 = OUTLINED_FUNCTION_39(v173);
    v169 = OUTLINED_FUNCTION_84_2(v311, v312, v313, v314, &qword_1EAE3DC48, &qword_193966FD0);
    v172 = v169;
  }

  OUTLINED_FUNCTION_50(v169, v170, v171, v172);
  OUTLINED_FUNCTION_4(v174);
  if (v0 + 29 > (v179 >> 1))
  {
    v315 = OUTLINED_FUNCTION_39(v179);
    v175 = OUTLINED_FUNCTION_85(v315, v316, v317, v318, &qword_1EAE3DC48, &qword_193966FD0);
    v178 = v175;
  }

  OUTLINED_FUNCTION_47_5(v175, v176, v177, v178);
  OUTLINED_FUNCTION_4(v180);
  if (v0 + 30 > (v185 >> 1))
  {
    v319 = OUTLINED_FUNCTION_39(v185);
    v181 = OUTLINED_FUNCTION_84_2(v319, v320, v321, v322, &qword_1EAE3DC48, &qword_193966FD0);
    v184 = v181;
  }

  OUTLINED_FUNCTION_50(v181, v182, v183, v184);
  OUTLINED_FUNCTION_4(v186);
  if (v0 + 31 > (v191 >> 1))
  {
    v323 = OUTLINED_FUNCTION_39(v191);
    v187 = OUTLINED_FUNCTION_85(v323, v324, v325, v326, &qword_1EAE3DC48, &qword_193966FD0);
    v190 = v187;
  }

  OUTLINED_FUNCTION_47_5(v187, v188, v189, v190);
  OUTLINED_FUNCTION_4(v192);
  if (v0 + 32 > (v197 >> 1))
  {
    v327 = OUTLINED_FUNCTION_39(v197);
    v193 = OUTLINED_FUNCTION_84_2(v327, v328, v329, v330, &qword_1EAE3DC48, &qword_193966FD0);
    v196 = v193;
  }

  OUTLINED_FUNCTION_50(v193, v194, v195, v196);
  return OUTLINED_FUNCTION_38_1(v198, v199);
}

void IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 0xELL:
      case 0xFLL:
      case 0x1DLL:
      case 0x1ELL:
        return;
      case 3:
        OUTLINED_FUNCTION_71_13();
        break;
      case 4:
        OUTLINED_FUNCTION_74_9();
        break;
      case 6:
        OUTLINED_FUNCTION_70_8();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowQueryDecorationTelemetry.QDEntityContextType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v7 = v1 == 0xD000000000000012 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_6_27();
      v9 = v4 && v8 == v0;
      if (v9 || (OUTLINED_FUNCTION_25_7(19, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v10 = v1 == 0x7261646E656C6143 && v0 == 0xEE0073746E657645;
        if (v10 || (OUTLINED_FUNCTION_0_9(0x7261646E656C6143, 0xEE0073746E657645) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = OUTLINED_FUNCTION_71_13();
          v13 = v1 == v11 && v0 == v12;
          if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v14 = OUTLINED_FUNCTION_74_9();
            v16 = v1 == v14 && v0 == v15;
            if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v18 = v1 == 0xD000000000000017 && v17 == v0;
              if (v18 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v17) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v19 = OUTLINED_FUNCTION_70_8();
                v21 = v1 == v19 && v0 == v20;
                if (v21 || (OUTLINED_FUNCTION_0_9(v19, v20) & 1) != 0)
                {

                  v5 = 6;
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v23 = v1 == 0xD000000000000010 && v22 == v0;
                  if (v23 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v22) & 1) != 0)
                  {

                    v5 = 7;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_38();
                    v25 = v1 == 0xD000000000000010 && v24 == v0;
                    if (v25 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v24) & 1) != 0)
                    {

                      v5 = 8;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v27 = v1 == 0xD00000000000001BLL && v26 == v0;
                      if (v27 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v26) & 1) != 0)
                      {

                        v5 = 9;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v29 = v1 == 0xD00000000000001ALL && v28 == v0;
                        if (v29 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ALL, v28) & 1) != 0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          v31 = v1 == 0xD00000000000001CLL && v30 == v0;
                          if (v31 || (OUTLINED_FUNCTION_0_9(0xD00000000000001CLL, v30) & 1) != 0)
                          {

                            v5 = 11;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            v33 = v1 == 0xD000000000000016 && v32 == v0;
                            if (v33 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v32) & 1) != 0)
                            {

                              v5 = 12;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              v35 = v1 == 0xD000000000000018 && v34 == v0;
                              if (v35 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, v34) & 1) != 0)
                              {

                                v5 = 13;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_20_18();
                                v37 = v4 && v0 == v36;
                                if (v37 || (OUTLINED_FUNCTION_21_18() & 1) != 0)
                                {

                                  v5 = 14;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_20_18();
                                  v39 = v4 && v0 == v38;
                                  if (v39 || (OUTLINED_FUNCTION_21_18() & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_38();
                                    v41 = v1 == 0xD000000000000014 && v40 == v0;
                                    if (v41 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v40) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      v43 = v1 == 0xD000000000000010 && v42 == v0;
                                      if (v43 || (OUTLINED_FUNCTION_0_9(0xD000000000000010, v42) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38();
                                        v45 = v1 == 0xD000000000000016 && v44 == v0;
                                        if (v45 || (OUTLINED_FUNCTION_0_9(0xD000000000000016, v44) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_38();
                                          v47 = v1 == 0xD00000000000001BLL && v46 == v0;
                                          if (v47 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, v46) & 1) != 0)
                                          {

                                            v5 = 19;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_78_11();
                                            v49 = v4 && v48 == v0;
                                            if (v49 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v48) & 1) != 0)
                                            {

                                              v5 = 20;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_78_11();
                                              v51 = v4 && v50 == v0;
                                              if (v51 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, v50) & 1) != 0)
                                              {

                                                v5 = 21;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_6_27();
                                                v53 = v4 && v52 == v0;
                                                if (v53 || (OUTLINED_FUNCTION_25_7(19, v52) & 1) != 0)
                                                {

                                                  v5 = 22;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_6_27();
                                                  v55 = v4 && v54 == v0;
                                                  if (v55 || (OUTLINED_FUNCTION_25_7(19, v54) & 1) != 0)
                                                  {

                                                    v5 = 23;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_6_27();
                                                    v57 = v4 && v56 == v0;
                                                    if (v57 || (OUTLINED_FUNCTION_25_7(19, v56) & 1) != 0)
                                                    {

                                                      v5 = 24;
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_26_4();
                                                      v59 = v4 && v58 == v0;
                                                      if (v59 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, v58) & 1) != 0)
                                                      {

                                                        v5 = 25;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_6_27();
                                                        v61 = v4 && v60 == v0;
                                                        if (v61 || (OUTLINED_FUNCTION_25_7(19, v60) & 1) != 0)
                                                        {

                                                          v5 = 26;
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_60();
                                                          v63 = v4 && v62 == v0;
                                                          if (v63 || (OUTLINED_FUNCTION_0_9(0xD00000000000001ALL, v62) & 1) != 0)
                                                          {

                                                            v5 = 27;
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_38();
                                                            v65 = v1 == 0xD000000000000017 && v64 == v0;
                                                            if (v65 || (OUTLINED_FUNCTION_0_9(0xD000000000000017, v64) & 1) != 0)
                                                            {

                                                              v5 = 28;
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_20_18();
                                                              v67 = v4 && v0 == v66;
                                                              if (v67 || (OUTLINED_FUNCTION_21_18() & 1) != 0)
                                                              {

                                                                v5 = 29;
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_20_18();
                                                                if (v4 && v0 == v68)
                                                                {

                                                                  v5 = 30;
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_21_18();
                                                                  OUTLINED_FUNCTION_89();
                                                                  v5 = 30;
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
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    case 10:
      v3 = 10;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static IntelligenceFlowQueryDecorationTelemetry.QDSubComponent.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    v81 = OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_84_2(v81, v82, v83, v84, &qword_1EAE3DC40, &qword_193966FC8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v85 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v85, v86, v87, v88, &qword_1EAE3DC40, &qword_193966FC8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v89, v90, v91, v92, v93, v94);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v95 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v95, v96, v97, v98, &qword_1EAE3DC40, &qword_193966FC8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v99 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v99, v100, v101, v102, &qword_1EAE3DC40, &qword_193966FC8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_47_5(v31, v32, v33, v34);
  OUTLINED_FUNCTION_4(v36);
  OUTLINED_FUNCTION_80_10();
  if (!(v19 ^ v20 | v13))
  {
    v103 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v103, v104, v105, v106, &qword_1EAE3DC40, &qword_193966FC8);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42);
  OUTLINED_FUNCTION_79_12();
  if (!(v19 ^ v20 | v13))
  {
    v107 = OUTLINED_FUNCTION_39(v47);
    v43 = OUTLINED_FUNCTION_85(v107, v108, v109, v110, &qword_1EAE3DC40, &qword_193966FC8);
    v46 = v43;
  }

  OUTLINED_FUNCTION_47_5(v43, v44, v45, v46);
  OUTLINED_FUNCTION_4(v48);
  if (v0 + 8 > (v53 >> 1))
  {
    v111 = OUTLINED_FUNCTION_39(v53);
    v49 = OUTLINED_FUNCTION_84_2(v111, v112, v113, v114, &qword_1EAE3DC40, &qword_193966FC8);
    v52 = v49;
  }

  OUTLINED_FUNCTION_50(v49, v50, v51, v52);
  OUTLINED_FUNCTION_4(v54);
  if (v0 + 9 > (v59 >> 1))
  {
    v115 = OUTLINED_FUNCTION_39(v59);
    v55 = OUTLINED_FUNCTION_85(v115, v116, v117, v118, &qword_1EAE3DC40, &qword_193966FC8);
    v58 = v55;
  }

  OUTLINED_FUNCTION_47_5(v55, v56, v57, v58);
  OUTLINED_FUNCTION_4(v60);
  if (v0 + 10 > (v65 >> 1))
  {
    v119 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_84_2(v119, v120, v121, v122, &qword_1EAE3DC40, &qword_193966FC8);
    v64 = v61;
  }

  OUTLINED_FUNCTION_50(v61, v62, v63, v64);
  OUTLINED_FUNCTION_4(v66);
  if (v0 + 11 > (v71 >> 1))
  {
    v123 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_85(v123, v124, v125, v126, &qword_1EAE3DC40, &qword_193966FC8);
    v70 = v67;
  }

  OUTLINED_FUNCTION_47_5(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72);
  if (v0 + 12 > (v77 >> 1))
  {
    v127 = OUTLINED_FUNCTION_39(v77);
    v73 = OUTLINED_FUNCTION_84_2(v127, v128, v129, v130, &qword_1EAE3DC40, &qword_193966FC8);
    v76 = v73;
  }

  OUTLINED_FUNCTION_50(v73, v74, v75, v76);
  return OUTLINED_FUNCTION_38_1(v78, v79);
}