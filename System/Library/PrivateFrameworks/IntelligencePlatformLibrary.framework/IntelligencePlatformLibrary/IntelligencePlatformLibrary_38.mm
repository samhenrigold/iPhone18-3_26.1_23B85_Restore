uint64_t ToolKitToolToolDefinition.Version1.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolToolDefinition.Version1.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937300CC()
{
  sub_19393CAB0();
  ToolKitToolToolDefinition.Version1.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitToolAppDefinition.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolAppDefinition.bundleVersion.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ToolKitToolAppDefinition.teamId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ToolKitToolAppDefinition.device.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_19347549C(*(v1 + 80));
  *(v1 + 80) = v2;
  return result;
}

uint64_t ToolKitToolAppDefinition.origin.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  *(v1 + 97) = v3;
  return result;
}

uint64_t ToolKitToolAppDefinition.synonyms.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

double ToolKitToolAppDefinition.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  v2[3] = v1;
  v2[4] = v1;
  v2[1] = v1;
  v2[2] = v1;
  *v2 = v1;
  sub_19347549C(0xF000000000000007);
  result = -3.10503618e231;
  *(v0 + 80) = xmmword_193980780;
  *(v0 + 96) = 256;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1937303DC@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolAppDefinition.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730404@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolAppDefinition.Origin.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolAppDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_234_3();
  v2 = v1;
  v3 = v0[1];
  v75 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v2[1];
  v72 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v16 = v2[5];
  v15 = v2[6];
  v18 = v2[7];
  v17 = v2[8];
  v19 = v2[9];
  v20 = v2[10];
  if (v3)
  {
    if (!v12)
    {
      goto LABEL_53;
    }

    v21 = *v0 == *v2 && v3 == v12;
    if (!v21)
    {
      v67 = v2[8];
      v62 = v0[10];
      v61 = v0[5];
      v65 = v2[6];
      v59 = v2[5];
      v60 = v0[4];
      v57 = v0[9];
      v58 = v2[9];
      v22 = v0[8];
      v23 = v0[7];
      v56 = v0[6];
      v24 = v2[7];
      v25 = sub_19393CA30();
      v18 = v24;
      v6 = v56;
      v10 = v57;
      v8 = v23;
      v19 = v58;
      v9 = v22;
      v16 = v59;
      v4 = v60;
      v7 = v61;
      v15 = v65;
      v17 = v67;
      v11 = v62;
      if ((v25 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_53;
  }

  if (v5)
  {
    if (!v13)
    {
      goto LABEL_53;
    }

    if (v75 != v72 || v5 != v13)
    {
      v68 = v17;
      v71 = v20;
      v73 = v18;
      v63 = v11;
      v27 = v10;
      v28 = v9;
      v29 = v19;
      v76 = v8;
      v30 = v6;
      v31 = sub_19393CA30();
      v18 = v73;
      v8 = v76;
      v6 = v30;
      v19 = v29;
      v9 = v28;
      v10 = v27;
      v17 = v68;
      v20 = v71;
      v11 = v63;
      if ((v31 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_53;
  }

  if (v7)
  {
    if (!v16)
    {
      goto LABEL_53;
    }

    if (v4 != v14 || v7 != v16)
    {
      v69 = v17;
      v74 = v9;
      v33 = v10;
      v66 = v15;
      v34 = v19;
      v77 = v8;
      v35 = v6;
      v36 = v18;
      v37 = sub_19393CA30();
      v18 = v36;
      v6 = v35;
      v9 = v74;
      v8 = v77;
      v19 = v34;
      v15 = v66;
      v17 = v69;
      v10 = v33;
      if ((v37 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_53;
  }

  if (v8)
  {
    if (!v18)
    {
      goto LABEL_53;
    }

    if (v6 != v15 || v8 != v18)
    {
      v70 = v17;
      v64 = v11;
      v39 = v10;
      v15 = v9;
      v40 = v19;
      v41 = sub_19393CA30();
      v17 = v70;
      v19 = v40;
      v9 = v15;
      v10 = v39;
      v11 = v64;
      if ((v41 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_53;
  }

  if (!v10)
  {
    if (!v19)
    {
      goto LABEL_46;
    }

LABEL_53:
    OUTLINED_FUNCTION_160_8();
    return;
  }

  if (!v19)
  {
    goto LABEL_53;
  }

  if (v9 != v17 || v10 != v19)
  {
    OUTLINED_FUNCTION_322_0();
    v11 = v15;
    if ((sub_19393CA30() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_147_8();
  if (v21)
  {
    v78 = v45;
    v46 = v44;
    v47 = v11;
    v48 = v43 & ~v20;
    sub_193438D88(v47);
    sub_193438D88(v20);
    if (v48)
    {
LABEL_52:
      sub_19347549C(v47);
      sub_19347549C(v20);
      goto LABEL_53;
    }

    sub_19347549C(v47);
    v49 = v78;
  }

  else
  {
    if ((v43 & ~v20) == 0)
    {
      sub_193438D88(v11);
      OUTLINED_FUNCTION_390(v20);

      v47 = v11;
      goto LABEL_52;
    }

    v46 = v44;
    v49 = v45;
    sub_193438D88(v11);
    OUTLINED_FUNCTION_390(v20);
    v50 = v11;
    v51 = static ToolKitToolAppDefinition.Device.== infix(_:_:)();

    sub_19347549C(v50);
    if ((v51 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (v46)
  {
    if ((v49 & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (v49)
    {
      goto LABEL_53;
    }

    v52 = ToolKitToolAppDefinition.Origin.rawValue.getter();
    if (v52 != ToolKitToolAppDefinition.Origin.rawValue.getter())
    {
      goto LABEL_53;
    }
  }

  OUTLINED_FUNCTION_160_8();

  sub_19344FC94(v53, v54);
}

uint64_t ToolKitToolAppDefinition.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  OUTLINED_FUNCTION_231_3();
  v17 = v16[1];
  v18 = v16[3];
  v19 = v16[5];
  v20 = v16[7];
  v21 = v16[9];
  v22 = v16[10];
  OUTLINED_FUNCTION_434();
  if (v17)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v18)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_113_3();
      sub_19393C640();
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v19)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_263_1();
    sub_19393C640();
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_261_0();
  sub_19393C640();
  if (v21)
  {
LABEL_6:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_19393C640();
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if ((~v22 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolAppDefinition.Device.hash(into:)();
    OUTLINED_FUNCTION_391();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (a16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_311_1();
    v23 = ToolKitToolAppDefinition.Origin.rawValue.getter();
    MEMORY[0x193B18030](v23);
  }

  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_196();

  return sub_1934D11C8(v24, v25);
}

double ToolKitToolContainerDefinition.init()()
{
  *&v1 = OUTLINED_FUNCTION_227_3();
  *(v2 + 41) = v1;
  v2[1] = v1;
  v2[2] = v1;
  *v2 = v1;
  *(v0 + 57) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_19347549C(0xF000000000000007);
  result = -3.10503618e231;
  *(v0 + 80) = xmmword_193980780;
  *(v0 + 96) = 256;
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_193730D2C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolContainerDefinition.Origin.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730D54@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolContainerDefinition.Origin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730E44@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolContainerDefinition.Type.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193730E6C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolContainerDefinition.Type.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolContainerDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_234_3();
  v2 = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 57);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v67 = *(v0 + 80);
  v11 = *(v0 + 97);
  v12 = *(v2 + 8);
  v68 = *(v2 + 16);
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  v15 = *(v2 + 40);
  v16 = *(v2 + 57);
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  v19 = *(v2 + 80);
  v20 = *(v2 + 97);
  if (v3)
  {
    if (!v12)
    {
      goto LABEL_49;
    }

    v21 = *v0 == *v2 && v3 == v12;
    if (!v21)
    {
      v65 = *(v2 + 80);
      v53 = *(v0 + 97);
      v59 = *(v2 + 72);
      v60 = *(v2 + 64);
      v56 = *(v2 + 40);
      v57 = *(v0 + 64);
      v22 = *(v2 + 97);
      v51 = *(v0 + 72);
      v52 = *(v0 + 32);
      v62 = *(v2 + 57);
      v23 = *(v0 + 57);
      v24 = *(v0 + 40);
      v25 = sub_19393CA30();
      v9 = v51;
      v5 = v52;
      v7 = v24;
      v19 = v65;
      v8 = v23;
      v16 = v62;
      v20 = v22;
      v15 = v56;
      v10 = v57;
      v18 = v59;
      v17 = v60;
      v11 = v53;
      if ((v25 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_49;
  }

  if (v6)
  {
    if (!v14)
    {
      goto LABEL_49;
    }

    if (v4 != v68 || v6 != v14)
    {
      v55 = v13;
      v27 = v20;
      v61 = v17;
      v58 = v10;
      v28 = v9;
      v29 = v8;
      v54 = v7;
      v63 = v16;
      v30 = v5;
      v31 = sub_19393CA30();
      v5 = v30;
      v16 = v63;
      v8 = v29;
      v9 = v28;
      v10 = v58;
      v17 = v61;
      v20 = v27;
      v7 = v54;
      v13 = v55;
      if ((v31 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_49;
  }

  if (v7)
  {
    if (!v15)
    {
      goto LABEL_49;
    }

    if (v5 != v13 || v7 != v15)
    {
      v33 = v20;
      v34 = v9;
      v64 = v16;
      v35 = v8;
      v36 = sub_19393CA30();
      v8 = v35;
      v16 = v64;
      v9 = v34;
      v20 = v33;
      if ((v36 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_49;
  }

  if (v8)
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_49;
    }

    v37 = v20;
    v38 = v9;
    v66 = v19;
    v39 = ToolKitToolContainerDefinition.Type.rawValue.getter();
    v40 = ToolKitToolContainerDefinition.Type.rawValue.getter();
    v9 = v38;
    v20 = v37;
    v21 = v39 == v40;
    v19 = v66;
    if (!v21)
    {
      goto LABEL_49;
    }
  }

  if (v9)
  {
    if (!v18)
    {
      goto LABEL_49;
    }

    if (v10 != v17 || v9 != v18)
    {
      v42 = v20;
      v43 = sub_19393CA30();
      v20 = v42;
      if ((v43 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_49;
  }

  if ((~v67 & 0xF000000000000007) == 0)
  {
    v69 = v20;
    v44 = v11;
    OUTLINED_FUNCTION_390(v67);
    if ((~v19 & 0xF000000000000007) == 0)
    {
      sub_19347549C(v67);
      v45 = v69;
      goto LABEL_51;
    }

LABEL_48:
    sub_19347549C(v67);
    sub_19347549C(v19);
    goto LABEL_49;
  }

  if ((~v19 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_390(v67);
    sub_193438D88(v67);

    goto LABEL_48;
  }

  v44 = v11;
  v45 = v20;
  OUTLINED_FUNCTION_390(v67);
  sub_193438D88(v67);
  v46 = static ToolKitToolContainerDefinition.Device.== infix(_:_:)();

  sub_19347549C(v67);
  if ((v46 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_51:
  if (v44)
  {
    if (v45)
    {
      goto LABEL_56;
    }

LABEL_49:
    OUTLINED_FUNCTION_160_8();
    return;
  }

  if (v45)
  {
    goto LABEL_49;
  }

  v47 = ToolKitToolContainerDefinition.Origin.rawValue.getter();
  if (v47 != ToolKitToolContainerDefinition.Origin.rawValue.getter())
  {
    goto LABEL_49;
  }

LABEL_56:
  OUTLINED_FUNCTION_160_8();

  sub_19344FC94(v48, v49);
}

uint64_t ToolKitToolContainerDefinition.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  OUTLINED_FUNCTION_231_3();
  v17 = *(v16 + 8);
  v18 = *(v16 + 24);
  v19 = *(v16 + 40);
  v20 = *(v16 + 57);
  v21 = *(v16 + 72);
  OUTLINED_FUNCTION_434();
  if (v17)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v18)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_262_0();
      sub_19393C640();
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v19)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_261_0();
    sub_19393C640();
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_10:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_311_1();
    v22 = ToolKitToolContainerDefinition.Type.rawValue.getter();
    MEMORY[0x193B18030](v22);
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  OUTLINED_FUNCTION_104_0();
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_5:
  OUTLINED_FUNCTION_104_0();
  if (v21)
  {
LABEL_6:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_439();
    sub_19393C640();
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  OUTLINED_FUNCTION_251_0();
  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    ToolKitToolContainerDefinition.Device.hash(into:)();
    OUTLINED_FUNCTION_391();
  }

  if (a16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_311_1();
    v24 = ToolKitToolContainerDefinition.Origin.rawValue.getter();
    MEMORY[0x193B18030](v24);
  }

  OUTLINED_FUNCTION_344();
  OUTLINED_FUNCTION_196();

  return sub_1934D11C8(v25, v26);
}

uint64_t sub_193731604()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_1937316C0()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t ToolKitToolTypeDisplayRepresentation.synonyms.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ToolKitToolTypeDisplayRepresentation.init()(IntelligencePlatformLibrary::ToolKitToolTypeDisplayRepresentation *__return_ptr retstr)
{
  retstr->name = 0u;
  retstr->numericFormat = 0u;
  retstr->synonyms._rawValue = MEMORY[0x1E69E7CC0];
}

uint64_t static ToolKitToolTypeDisplayRepresentation.== infix(_:_:)(void *a1, void *a2)
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
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_175_0();
      OUTLINED_FUNCTION_284();
      if (sub_19393CA30())
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_17:
  v11 = OUTLINED_FUNCTION_13_0();

  return sub_19344FC94(v11, v12);
}

uint64_t ToolKitToolTypeDisplayRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v1 = *(v0 + 24);
  if (*(v0 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v1)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_175();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  OUTLINED_FUNCTION_236();

  return sub_1934D11C8(v2, v3);
}

uint64_t sub_1937319B4()
{
  OUTLINED_FUNCTION_43_18();
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_149_5(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolTypeDisplayRepresentation.hash(into:)();
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO019ContentItemPropertyI0V2eeoiySbAI_AItFZ_0()
{
  OUTLINED_FUNCTION_117();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_295_2();
  if (!(!v9 & v8))
  {
    OUTLINED_FUNCTION_296_1();
    if (!(!v9 & v8))
    {
      OUTLINED_FUNCTION_16_34();
      OUTLINED_FUNCTION_333();
      v14 = MEMORY[0x193B172A0]();
      v15 = OUTLINED_FUNCTION_82();
      sub_19345012C(v15, v16);
      v17 = OUTLINED_FUNCTION_107_5();
      sub_19345012C(v17, v18);
      if ((v14 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_8:
    v10 = OUTLINED_FUNCTION_16_34();
    sub_19345012C(v10, v11);
    v12 = OUTLINED_FUNCTION_82();
    sub_19345012C(v12, v13);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_296_1();
  if (!(!v9 & v8))
  {
    goto LABEL_8;
  }

  v6 = OUTLINED_FUNCTION_16_34();
  sub_19345012C(v6, v7);
LABEL_11:
  if (v1 && v4 && (v2 != v5 || v1 != v4))
  {
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_46_14();
    sub_19393CA30();
  }

LABEL_9:
  OUTLINED_FUNCTION_116();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO08DeferredG0V7StorageO019ContentItemPropertyI0V4hash4intoys6HasherVz_tF_0()
{
  v1 = *(v0 + 24);
  if (*(v0 + 8) >> 60 != 15)
  {
    OUTLINED_FUNCTION_293();
    OUTLINED_FUNCTION_32_4();
    sub_19393BD50();
    if (v1)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_302();
  }

  OUTLINED_FUNCTION_302();
  if (!v1)
  {
    return OUTLINED_FUNCTION_302();
  }

LABEL_3:
  OUTLINED_FUNCTION_293();
  OUTLINED_FUNCTION_15_1();

  return sub_19393C640();
}

uint64_t ToolKitToolDisplayRepresentation.subtitle.setter()
{
  v2 = OUTLINED_FUNCTION_339();
  result = sub_19347549C(v2);
  *(v1 + 16) = v0;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.altText.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_19347549C(*(v1 + 24));
  *(v1 + 24) = v2;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.image.setter()
{
  v2 = OUTLINED_FUNCTION_416();
  result = sub_19347549C(v2);
  *(v1 + 32) = v0;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.synonyms.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.snippetPluginModel.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_193737A20(v2, v3, v4, v5);
}

__n128 ToolKitToolDisplayRepresentation.snippetPluginModel.setter(uint64_t a1)
{
  sub_193710010(*(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  sub_19347549C(v3);
  sub_19347549C(0xF000000000000007);
  v1[1] = vdupq_n_s64(v2);
  sub_19347549C(0xF000000000000007);
  v4 = MEMORY[0x1E69E7CC0];
  v1[2].i64[0] = v2;
  v1[2].i64[1] = v4;
  result = sub_193710010(0, 0, 0, 1);
  v1[3].i64[0] = 0;
  v1[3].i64[1] = 0;
  v1[4].i64[0] = 0;
  v1[4].i64[1] = 1;
  return result;
}

double ToolKitToolDisplayRepresentation.Storage.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  sub_19345012C(v1, 0xF000000000000000);
  result = 0.0;
  *v0 = xmmword_193950B20;
  return result;
}

uint64_t sub_193731EF4(uint64_t a1)
{
  if (*(a1 + 8) >> 60 == 15)
  {
    OUTLINED_FUNCTION_282_2();
    if (!(!v2 & v1))
    {
      goto LABEL_7;
    }

    v3 = OUTLINED_FUNCTION_7_14();
    sub_19345012C(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_282_2();
    if (!v2 & v1)
    {
LABEL_7:
      v5 = OUTLINED_FUNCTION_7_14();
      sub_19345012C(v5, v6);
      v7 = OUTLINED_FUNCTION_175_0();
      sub_19345012C(v7, v8);
      return 0;
    }

    OUTLINED_FUNCTION_7_14();
    OUTLINED_FUNCTION_46_14();
    v10 = MEMORY[0x193B172A0]();
    v11 = OUTLINED_FUNCTION_175_0();
    sub_19345012C(v11, v12);
    v13 = OUTLINED_FUNCTION_13_5();
    sub_19345012C(v13, v14);
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_193731F94()
{
  if (*(v0 + 8) >> 60 == 15)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_115_0();

  return sub_19393BD50();
}

uint64_t sub_193732014()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_310_0();
  if (v0)
  {
    sub_19393CAD0();
  }

  else
  {
    v1 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    sub_19393BD50();
  }

  return sub_19393CB00();
}

uint64_t sub_193732080()
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_310_0();
  if (v0)
  {
    sub_19393CAD0();
  }

  else
  {
    v1 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
    sub_19393BD50();
  }

  return sub_19393CB00();
}

uint64_t ToolKitToolDisplayRepresentation.DisplayValue.lazy.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_193450268(v2, v3);
}

uint64_t ToolKitToolDisplayRepresentation.DisplayValue.lazy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_19345012C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

__n128 ToolKitToolDisplayRepresentation.DisplayValue.staticType.setter(uint64_t a1)
{
  sub_1936D10D0(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return result;
}

double ToolKitToolDisplayRepresentation.DisplayValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = xmmword_193950B20;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

double ToolKitToolDisplayRepresentation.DisplayValue.Static.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_169_3();
  sub_1936D10D0(v2, v3, v4, v5);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_193732220@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193732248@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.allCases.getter();
  *a1 = result;
  return result;
}

__n128 ToolKitToolDisplayRepresentation.DisplayValue.Static.value.setter(uint64_t a1)
{
  sub_1936D10D0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  return result;
}

void static ToolKitToolDisplayRepresentation.DisplayValue.Static.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v0[1];
  v3 = v1[1];
  if (!v2)
  {
    OUTLINED_FUNCTION_69_1();
    sub_1936D1084(v27, v28, v29, v30);
    if (!v3)
    {
      OUTLINED_FUNCTION_284();
      sub_1936D1084(v57, v58, v59, v60);
      OUTLINED_FUNCTION_69_1();
      sub_1936D10D0(v61, v62, v63, v64);
      goto LABEL_15;
    }

    v31 = OUTLINED_FUNCTION_51_20();
    sub_1936D1084(v31, v32, v33, v34);
    goto LABEL_12;
  }

  if (!v3)
  {
    v35 = OUTLINED_FUNCTION_8_6();
    sub_1936D1084(v35, v36, v37, v38);
    OUTLINED_FUNCTION_284();
    sub_1936D1084(v39, v40, v41, v42);
    v43 = OUTLINED_FUNCTION_8_6();
    sub_1936D1084(v43, v44, v45, v46);

    v47 = OUTLINED_FUNCTION_13_5();
    sub_193446A6C(v47, v48);
LABEL_12:
    v49 = OUTLINED_FUNCTION_8_6();
    sub_1936D10D0(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_51_20();
LABEL_13:
    sub_1936D10D0(v53, v54, v55, v56);
    goto LABEL_15;
  }

  if (*v0 != *v1 || v2 != v3)
  {
    OUTLINED_FUNCTION_115_0();
    if ((sub_19393CA30() & 1) == 0)
    {
      v65 = OUTLINED_FUNCTION_8_6();
      sub_1936D1084(v65, v66, v67, v68);
      v69 = OUTLINED_FUNCTION_51_20();
      sub_1936D1084(v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_8_6();
      sub_1936D1084(v73, v74, v75, v76);
      v77 = OUTLINED_FUNCTION_51_20();
      sub_1936D10D0(v77, v78, v79, v80);

      v81 = OUTLINED_FUNCTION_13_5();
      sub_193446A6C(v81, v82);
      v53 = OUTLINED_FUNCTION_8_6();
      goto LABEL_13;
    }
  }

  v5 = OUTLINED_FUNCTION_8_6();
  sub_1936D1084(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_51_20();
  sub_1936D1084(v9, v10, v11, v12);
  v13 = OUTLINED_FUNCTION_8_6();
  sub_1936D1084(v13, v14, v15, v16);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_284();
  MEMORY[0x193B172A0]();
  v17 = OUTLINED_FUNCTION_51_20();
  sub_1936D10D0(v17, v18, v19, v20);

  v21 = OUTLINED_FUNCTION_13_5();
  sub_193446A6C(v21, v22);
  v23 = OUTLINED_FUNCTION_8_6();
  sub_1936D10D0(v23, v24, v25, v26);
LABEL_15:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolDisplayRepresentation.DisplayValue.Static.hash(into:)()
{
  v1 = v0[1];
  if (v1)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = *v0;
    sub_19393CAD0();

    v5 = OUTLINED_FUNCTION_55();
    sub_193450688(v5, v6);
    sub_19393C640();
    sub_19393BD50();

    sub_1936D10D0(v4, v1, v3, v2);
  }

  else
  {
    sub_19393CAD0();
  }
}

uint64_t sub_193732658()
{
  v0 = sub_19393CAB0();
  OUTLINED_FUNCTION_134_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  ToolKitToolDisplayRepresentation.DisplayValue.Static.hash(into:)();
  return sub_19393CB00();
}

void static ToolKitToolDisplayRepresentation.DisplayValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_273_1();
  a31 = v32;
  a32 = v34;
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  v38 = *(v35 + 32);
  v39 = *(v35 + 40);
  v40 = *(v35 + 48);
  v41 = *(v35 + 56);
  if (*(v35 + 9))
  {
    if ((*(v33 + 9) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*(v33 + 9))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_178_0();
    a17 = v42;
    LOBYTE(a18) = v43 & 1;
    v44 = v41;
    v45 = v40;
    v46 = v39;
    v47 = v38;
    v48 = ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter();
    v49 = v48 == ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter();
    v38 = v47;
    v39 = v46;
    v40 = v45;
    v41 = v44;
    if (!v49)
    {
      goto LABEL_9;
    }
  }

  a17 = v37;
  a18 = v36;
  sub_193450268(v37, v36);
  v50 = OUTLINED_FUNCTION_115_0();
  sub_193450268(v50, v51);
  v52 = static ToolKitToolDisplayRepresentation.Storage.== infix(_:_:)(&a17);
  v53 = OUTLINED_FUNCTION_115_0();
  sub_19345012C(v53, v54);
  sub_19345012C(v37, v36);
  if (v52)
  {
    a17 = v38;
    a18 = v39;
    a19 = v40;
    a20 = v41;
    OUTLINED_FUNCTION_146();
    sub_1936D1084(v55, v56, v57, v41);
    OUTLINED_FUNCTION_9_12();
    sub_1936D1084(v58, v59, v60, v61);
    static ToolKitToolDisplayRepresentation.DisplayValue.Static.== infix(_:_:)();
    OUTLINED_FUNCTION_9_12();
    sub_1936D10D0(v62, v63, v64, v65);
    OUTLINED_FUNCTION_146();
    sub_1936D10D0(v66, v67, v68, v41);
  }

LABEL_9:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolDisplayRepresentation.DisplayValue.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v3 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v4 = ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum.rawValue.getter();
    MEMORY[0x193B18030](v4);
  }

  if (v1 >> 60 != 15)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_196_4();
    sub_19393BD50();
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_114();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();

  v5 = OUTLINED_FUNCTION_32_4();
  sub_193450688(v5, v6);
  OUTLINED_FUNCTION_58_19();
  sub_19393C640();
  OUTLINED_FUNCTION_10_0();
  sub_19393BD50();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_28_23();
  OUTLINED_FUNCTION_114();

  sub_1936D10D0(v7, v8, v9, v10);
}

uint64_t sub_193732930()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_19373298C()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierO7CodableV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_454();
  v2 = *(v1 + 8);
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_155(v0);
      v6 = v6 && v4 == v5;
      if (v6 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierO7CodableV4hash4intoys6HasherVz_tF_0()
{
  if (!*(v0 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_115_0();

  return sub_19393C640();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierO7CodableV9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  if (v1)
  {
    v2 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t sub_193732B80()
{
  v1 = *(v0 + 8);
  sub_19393CAB0();
  if (v1)
  {
    v2 = sub_19393CAD0();
    OUTLINED_FUNCTION_38_30(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  return sub_19393CB00();
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.Symbol.tintColorData.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolDisplayRepresentation.Image.Static.Symbol.configurationData.setter()
{
  OUTLINED_FUNCTION_50_0();
  result = sub_19345012C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

__n128 ToolKitToolDisplayRepresentation.Image.Static.Symbol.init()@<Q0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_4(a1);
  OUTLINED_FUNCTION_300_1();
  *(v1 + 16) = xmmword_193950B20;
  OUTLINED_FUNCTION_300_1();
  result = xmmword_193950B20;
  *(v1 + 32) = xmmword_193950B20;
  return result;
}

void static ToolKitToolDisplayRepresentation.Image.Static.Symbol.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = *(v0 + 40);
  v3 = *(v2 + 8);
  if (!*(v0 + 8))
  {
    if (v3)
    {
      goto LABEL_27;
    }

LABEL_10:
    OUTLINED_FUNCTION_295_2();
    if (!v6 & v9)
    {
      OUTLINED_FUNCTION_296_1();
      if (!v6 & v9)
      {
        v7 = OUTLINED_FUNCTION_16_34();
        sub_19345012C(v7, v8);
LABEL_19:
        if (v1 >> 60 == 15)
        {
          OUTLINED_FUNCTION_282_2();
          if (!v6 & v9)
          {
            v20 = OUTLINED_FUNCTION_7_14();
            sub_19345012C(v20, v21);
            goto LABEL_27;
          }
        }

        else
        {
          OUTLINED_FUNCTION_282_2();
          if (!(!v6 & v9))
          {
            OUTLINED_FUNCTION_7_14();
            OUTLINED_FUNCTION_46_14();
            MEMORY[0x193B172A0]();
            v24 = OUTLINED_FUNCTION_175_0();
            sub_19345012C(v24, v25);
            v26 = OUTLINED_FUNCTION_13_5();
            sub_19345012C(v26, v27);
            goto LABEL_27;
          }
        }

        v22 = OUTLINED_FUNCTION_7_14();
        sub_19345012C(v22, v23);
        v13 = OUTLINED_FUNCTION_175_0();
LABEL_26:
        sub_19345012C(v13, v14);
        goto LABEL_27;
      }
    }

    else
    {
      OUTLINED_FUNCTION_296_1();
      if (!(!v10 & v9))
      {
        OUTLINED_FUNCTION_16_34();
        OUTLINED_FUNCTION_333();
        v15 = MEMORY[0x193B172A0]();
        v16 = OUTLINED_FUNCTION_82();
        sub_19345012C(v16, v17);
        v18 = OUTLINED_FUNCTION_107_5();
        sub_19345012C(v18, v19);
        if ((v15 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }
    }

    v11 = OUTLINED_FUNCTION_16_34();
    sub_19345012C(v11, v12);
    v13 = OUTLINED_FUNCTION_82();
    goto LABEL_26;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_155(v0);
    v6 = v6 && v4 == v5;
    if (v6 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolDisplayRepresentation.Image.Static.Symbol.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_77_1();
  v1 = v0[3];
  v2 = v0[5];
  if (v0[1])
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_185();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v1 >> 60 != 15)
  {
    sub_19393BD50();
  }

  if (v2 >> 60 == 15)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_236();
  }

  else
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_236();

    sub_19393BD50();
  }
}

uint64_t sub_193733050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_159_6();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

BOOL static ToolKitToolDisplayRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v108 = a1[6];
  v109 = a1[7];
  v110 = a1[8];
  v111 = a1[9];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[8];
  v107 = a2[7];
  if (a1[1])
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_155(a1);
    v14 = v14 && v12 == v13;
    if (!v14)
    {
      OUTLINED_FUNCTION_411();
      v11 = v15;
      sub_19393CA30();
      OUTLINED_FUNCTION_408();
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_148_8();
  if (v14)
  {
    OUTLINED_FUNCTION_411();
    v104 = v20;
    v105 = v19;
    v11 = v21 & ~v7;
    sub_193438D88(v2);
    sub_193438D88(v7);
    if (v11)
    {
LABEL_16:
      sub_19347549C(v2);
      v22 = v7;
LABEL_32:
      sub_19347549C(v22);
      return 0;
    }

    sub_19347549C(v2);
    OUTLINED_FUNCTION_408();
  }

  else
  {
    if ((v17 & ~v7) == 0)
    {
      sub_193438D88(v2);
      sub_193438D88(v7);
      sub_193438D88(v2);

      goto LABEL_16;
    }

    v106 = v18;
    sub_193438D88(v2);
    sub_193438D88(v7);
    v23 = sub_193438D88(v2);
    v31 = OUTLINED_FUNCTION_402(v23, v24, v25, v26, v27, v28, v29, v30, v102, v103, v106, v107, v108, v109, v110, v111, v7, v112, v113, v114, v2);
    v33 = static ToolKitToolDisplayRepresentation.Subtitle.== infix(_:_:)(v31, v32);
    OUTLINED_FUNCTION_391();

    sub_19347549C(v2);
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_179_5();
  if (v14)
  {
    v36 = v35;
    v37 = v34 & ~v8;
    sub_193438D88(v3);
    sub_193438D88(v8);
    if (v37)
    {
LABEL_24:
      sub_19347549C(v3);
      v22 = v8;
      goto LABEL_32;
    }

    sub_19347549C(v3);
LABEL_26:
    if ((~v4 & 0xF000000000000007) != 0)
    {
      if ((~v9 & 0xF000000000000007) != 0)
      {
        v49 = v36;
        sub_193438D88(v4);
        sub_193438D88(v9);
        v52 = sub_193438D88(v4);
        OUTLINED_FUNCTION_402(v52, v53, v54, v55, v56, v57, v58, v59, v102, v104, v105, v107, v108, v109, v110, v111, v9, v112, v113, v114, v4);
        v60 = static ToolKitToolDisplayRepresentation.Image.== infix(_:_:)();
        OUTLINED_FUNCTION_391();

        sub_19347549C(v4);
        if ((v60 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_36;
      }

      sub_193438D88(v4);
      sub_193438D88(v9);
      sub_193438D88(v4);
    }

    else
    {
      sub_193438D88(v4);
      sub_193438D88(v9);
      if ((~v9 & 0xF000000000000007) == 0)
      {
        v49 = v36;
        sub_19347549C(v4);
LABEL_36:
        if (sub_19344FC94(v5, v10))
        {
          if (v111 == 1)
          {
            sub_193737A20(v108, v109, v110, 1);
            if (v49 == 1)
            {
              v50 = 1;
              sub_193737A20(v105, v107, v11, 1);
              sub_193710010(v108, v109, v110, 1);
              return v50;
            }

            OUTLINED_FUNCTION_253_2();
            sub_193737A20(v68, v69, v70, v71);
          }

          else
          {
            if (v49 != 1)
            {
              v76 = v105;
              v77 = v107;
              v78 = OUTLINED_FUNCTION_208();
              v80 = v110;
              v79 = v111;
              sub_193737A20(v78, v81, v110, v111);
              OUTLINED_FUNCTION_253_2();
              sub_193737A20(v82, v83, v84, v85);
              v86 = OUTLINED_FUNCTION_208();
              v88 = sub_193737A20(v86, v87, v110, v111);
              v96 = OUTLINED_FUNCTION_402(v88, v89, v90, v91, v92, v93, v94, v95, v102, v104, v105, v107, v108, v109, v110, v111, v105, v107, v11, v49, v108);
              v97 = v79;
              LOBYTE(v79) = static ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.== infix(_:_:)(v96);
              sub_19345012C(v76, v77);

              v98 = OUTLINED_FUNCTION_208();
              sub_19345012C(v98, v99);

              v100 = OUTLINED_FUNCTION_208();
              sub_193710010(v100, v101, v80, v97);
              return (v79 & 1) != 0;
            }

            v61 = OUTLINED_FUNCTION_24_1();
            sub_193737A20(v61, v62, v110, v111);
            sub_193737A20(v105, v107, v11, 1);
            OUTLINED_FUNCTION_10_0();
            sub_193737A20(v63, v64, v65, v111);
            v66 = OUTLINED_FUNCTION_24_1();
            sub_19345012C(v66, v67);
          }

          sub_193710010(v108, v109, v110, v111);
          OUTLINED_FUNCTION_253_2();
          sub_193710010(v72, v73, v74, v75);
        }

        return 0;
      }
    }

    sub_19347549C(v4);
    v22 = v9;
    goto LABEL_32;
  }

  if ((v34 & ~v8) == 0)
  {
    sub_193438D88(v3);
    sub_193438D88(v8);
    sub_193438D88(v3);

    goto LABEL_24;
  }

  v36 = v35;
  sub_193438D88(v3);
  sub_193438D88(v8);
  v38 = sub_193438D88(v3);
  v46 = OUTLINED_FUNCTION_402(v38, v39, v40, v41, v42, v43, v44, v45, v102, v104, v105, v107, v108, v109, v110, v111, v8, v112, v113, v114, v3);
  v48 = static ToolKitToolDisplayRepresentation.AltText.== infix(_:_:)(v46, v47);
  OUTLINED_FUNCTION_391();

  sub_19347549C(v3);
  if (v48)
  {
    goto LABEL_26;
  }

  return 0;
}

void ToolKitToolDisplayRepresentation.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[4];
  v2 = v0[7];
  v3 = v0[9];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_145_9();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_148_8();
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    v5 = OUTLINED_FUNCTION_427();
    ToolKitToolDisplayRepresentation.Subtitle.hash(into:)(v5);
  }

  OUTLINED_FUNCTION_251_0();
  if (v4)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    v6 = OUTLINED_FUNCTION_427();
    ToolKitToolDisplayRepresentation.AltText.hash(into:)(v6);
  }

  if ((~v1 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_427();
    ToolKitToolDisplayRepresentation.Image.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v7 = OUTLINED_FUNCTION_102_4();
  sub_1934D11C8(v7, v8);
  if (v3 == 1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_103_0();
  if (v2 >> 60 != 15)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_186_3();
    sub_19393BD50();
    if (v3)
    {
      goto LABEL_16;
    }

LABEL_20:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_107();
    return;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_16:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_259_1();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t ToolKitToolCoercionDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_430(a1);
  v3 = OUTLINED_FUNCTION_114_12();
  result = sub_193444060(v3);
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1937337F8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193733820@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolCoercionDefinition.CoercionDirection.allCases.getter();
  *a1 = result;
  return result;
}

BOOL static ToolKitToolCoercionDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_414();
  if (v3)
  {
    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16();
    v4 = ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter();
    if (v4 != ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_147_8();
  if (!v6)
  {
    if ((v5 & ~v1) == 0)
    {
      sub_193437C90(v0);
      OUTLINED_FUNCTION_94_14(v1);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_258_2();
    sub_193437C90(v0);
    v9 = static ToolKitToolTypeInstance.== infix(_:_:)();
    v10 = v9;
    OUTLINED_FUNCTION_126_9(v9, v11, v12, v13, v14, v15, v16, v17, v1);

    sub_193444060(v0);
    return (v10 & 1) != 0;
  }

  v7 = v5 & ~v1;
  OUTLINED_FUNCTION_258_2();
  if (!v7)
  {
    sub_193444060(v0);
    return 1;
  }

LABEL_12:
  sub_193444060(v0);
  sub_193444060(v1);
  return 0;
}

uint64_t ToolKitToolCoercionDefinition.hashValue.getter()
{
  OUTLINED_FUNCTION_57_13();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolCoercionDefinition.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t sub_193733AF8()
{
  OUTLINED_FUNCTION_57_13();
  v0 = sub_19393CAB0();
  v8 = OUTLINED_FUNCTION_255_2(v0, v1, v2, v3, v4, v5, v6, v7, v10);
  ToolKitToolCoercionDefinition.hash(into:)(v8);
  return sub_19393CB00();
}

uint64_t ToolKitToolTriggerDefinition.Version1.id.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.description.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.parameters.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.outputType.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_193444060(*(v1 + 56));
  *(v1 + 56) = v2;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.requirements.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.flags.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitToolTriggerDefinition.Version1.init()@<X0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_209_1(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v3 + 48) = MEMORY[0x1E69E7CC0];
  result = sub_193444060(0xF000000000000007);
  v1[7] = 0xF000000000000007;
  v1[8] = v2;
  v1[9] = v2;
  return result;
}

uint64_t sub_193733E0C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolTriggerDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193733E34@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolTriggerDefinition.Version1.Flag.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolTriggerDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_329_0();
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v8[1];
  v10 = v8[2];
  v12 = v8[3];
  v11 = v8[4];
  v14 = v8[5];
  v13 = v8[6];
  v16 = v8[7];
  v15 = v8[8];
  if (!v0[1])
  {
    if (v9)
    {
      goto LABEL_39;
    }

LABEL_10:
    if (v3)
    {
      if (!v12)
      {
        goto LABEL_39;
      }

      if (v1 != v10 || v3 != v12)
      {
        OUTLINED_FUNCTION_10_0();
        v52 = v28;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v37 = sub_19393CA30();
        v11 = v36;
        v14 = v52;
        v2 = v34;
        v4 = v32;
        v13 = v30;
        if ((v37 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_39;
    }

    if (v4)
    {
      if (!v14)
      {
        goto LABEL_39;
      }

      if (v2 != v11 || v4 != v14)
      {
        v39 = v13;
        v40 = sub_19393CA30();
        v13 = v39;
        if ((v40 & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_39;
    }

    if ((sub_193713748(v5, v13) & 1) == 0)
    {
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_252_2();
    if (v19)
    {
      v42 = v41 & ~v16;
      sub_193437C90(v6);
      sub_193437C90(v16);
      if (v42)
      {
LABEL_35:
        sub_193444060(v6);
        sub_193444060(v16);
        goto LABEL_39;
      }

      sub_193444060(v6);
    }

    else
    {
      if ((v41 & ~v16) == 0)
      {
        sub_193437C90(v6);
        OUTLINED_FUNCTION_446(v16);

        goto LABEL_35;
      }

      sub_193437C90(v6);
      OUTLINED_FUNCTION_446(v16);
      v43 = static ToolKitToolTypeInstance.== infix(_:_:)();

      sub_193444060(v6);
      if ((v43 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (sub_193713908(v7, v15))
    {
      v44 = OUTLINED_FUNCTION_2_14();
      sub_193714598(v44, v45, v46, v47);
    }

    goto LABEL_39;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_155(v0);
    v19 = v19 && v17 == v18;
    if (v19)
    {
      goto LABEL_10;
    }

    v50 = v16;
    v51 = v5;
    v48 = v7;
    v49 = v15;
    v20 = v13;
    v21 = v4;
    v22 = v2;
    v23 = v14;
    v24 = v11;
    v25 = v1;
    v26 = sub_19393CA30();
    v1 = v25;
    v11 = v24;
    v14 = v23;
    v2 = v22;
    v4 = v21;
    v13 = v20;
    v7 = v48;
    v15 = v49;
    v16 = v50;
    v5 = v51;
    if (v26)
    {
      goto LABEL_10;
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_328();
}

void ToolKitToolTriggerDefinition.Version1.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  v1 = v0[3];
  v2 = v0[5];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_187();
    sub_19393C640();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_262_0();
  sub_19393C640();
  if (v2)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_146();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  v3 = OUTLINED_FUNCTION_125();
  sub_193736770(v3, v4);
  OUTLINED_FUNCTION_251_0();
  if (v5)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();

    OUTLINED_FUNCTION_427();
    ToolKitToolTypeInstance.hash(into:)();
  }

  v6 = OUTLINED_FUNCTION_186_3();
  sub_193736658(v6, v7);
  OUTLINED_FUNCTION_54_15();
  sub_193736ED4();
  OUTLINED_FUNCTION_107();
}

uint64_t sub_19373429C()
{
  OUTLINED_FUNCTION_149_9();
  v0(v2);
  return sub_19393CB00();
}

uint64_t sub_1937342F8()
{
  OUTLINED_FUNCTION_320_0();
  v0(v2);
  return sub_19393CB00();
}

uint64_t ToolKitToolToolInvocation.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ToolKitToolToolInvocation.toolIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolInvocation.target.setter()
{
  v2 = OUTLINED_FUNCTION_416();
  result = sub_19347549C(v2);
  *(v1 + 32) = v0;
  return result;
}

uint64_t ToolKitToolToolInvocation.parameterValues.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitToolToolInvocation.options.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v7[0] = v1[3];
  v7[1] = v2;
  v8[0] = v1[5];
  v3 = v8[0];
  *(v8 + 11) = *(v1 + 91);
  v4 = *(v8 + 11);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 43) = v4;
  return sub_193448804(v7, &v6, &qword_1EAE41B20, &qword_193980828);
}

__n128 ToolKitToolToolInvocation.options.setter(uint64_t a1)
{
  v3 = v1[4];
  v6[0] = v1[3];
  v6[1] = v3;
  v7[0] = v1[5];
  *(v7 + 11) = *(v1 + 91);
  sub_19344E6DC(v6, &qword_1EAE41B20, &qword_193980828);
  v4 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v4;
  v1[5] = *(a1 + 32);
  result = *(a1 + 43);
  *(v1 + 91) = result;
  return result;
}

uint64_t ToolKitToolToolInvocation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  sub_19347549C(0xF000000000000007);
  *(a1 + 32) = 0xF000000000000007;
  *(a1 + 40) = sub_19393C510();
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v5[0] = *(a1 + 80);
  *(v5 + 11) = *(a1 + 91);
  result = sub_19344E6DC(v4, &qword_1EAE41B20, &qword_193980828);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 103) = 0;
  return result;
}

void static ToolKitToolToolInvocation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v3[1];
  v6 = v3[2];
  v8 = v3[3];
  v7 = v3[4];
  v9 = *(v3 + 4);
  v69 = *(v3 + 3);
  v70 = v9;
  v71[0] = *(v3 + 5);
  *(v71 + 11) = *(v3 + 91);
  v10 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  v14 = v1[4];
  *(v74 + 11) = *(v1 + 91);
  v15 = *(v1 + 5);
  v73 = *(v1 + 4);
  v74[0] = v15;
  v72 = *(v1 + 3);
  if (!v5)
  {
    if (v11)
    {
      goto LABEL_35;
    }

LABEL_10:
    if (v8)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (v6 != v13 || v8 != v12)
      {
        OUTLINED_FUNCTION_32_4();
        OUTLINED_FUNCTION_333();
        if ((sub_19393CA30() & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v12)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_147_8();
    if (v16)
    {
      v19 = v18 & ~v14;
      sub_193438D88(v7);
      sub_193438D88(v14);
      if (v19)
      {
LABEL_25:
        sub_19347549C(v7);
        sub_19347549C(v14);
        goto LABEL_35;
      }

      sub_19347549C(v7);
    }

    else
    {
      *&v58 = v7;
      if ((v18 & ~v14) == 0)
      {
        sub_193438D88(v7);
        OUTLINED_FUNCTION_390(v14);

        goto LABEL_25;
      }

      *&v55 = v14;
      sub_193438D88(v7);
      OUTLINED_FUNCTION_390(v14);
      v20 = static ToolKitToolContainerDefinition.Device.== infix(_:_:)();

      sub_19347549C(v7);
      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v21 = OUTLINED_FUNCTION_225();
    if ((sub_1937213EC(v21, v22) & 1) == 0)
    {
      goto LABEL_35;
    }

    v67 = v69;
    v23 = *(&v70 + 1);
    v68 = v70;
    v24 = *(&v73 + 1);
    *&v65[21] = v73;
    v66[0] = v71[0];
    *(v66 + 11) = *(v71 + 11);
    *&v65[5] = v72;
    *(v64 + 11) = *(v74 + 11);
    v64[0] = v74[0];
    if (*(&v70 + 1) == 1)
    {
      if (*(&v73 + 1) == 1)
      {
        v58 = v69;
        *&v59 = v70;
        *(&v59 + 1) = 1;
        *v60 = v71[0];
        *&v60[11] = *(v71 + 11);
        OUTLINED_FUNCTION_27_7(&v69, &v55);
        OUTLINED_FUNCTION_27_7(&v72, &v55);
LABEL_37:
        OUTLINED_FUNCTION_188_4();
        sub_19344E6DC(v45, v46, v47);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_75_0();
      sub_193448804(v37, v38, v39, v40);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v41, v42, v43, v44);
    }

    else
    {
      v58 = v69;
      v59 = v70;
      *v60 = v71[0];
      *&v60[11] = *(v71 + 11);
      v55 = v69;
      v56 = v70;
      v57[0] = *v60;
      *(v57 + 11) = *(v71 + 11);
      if (*(&v73 + 1) != 1)
      {
        v52 = v72;
        v54[0] = v74[0];
        *(v54 + 11) = *(v74 + 11);
        v53 = v73;
        OUTLINED_FUNCTION_27_7(&v69, v50);
        OUTLINED_FUNCTION_27_7(&v72, v50);
        OUTLINED_FUNCTION_27_7(&v58, v50);
        static ToolKitToolToolInvocationOptions.== infix(_:_:)();
        v48[0] = v52;
        v48[1] = v53;
        v49[0] = v54[0];
        *(v49 + 11) = *(v54 + 11);
        sub_193737A64(v48);
        v50[0] = v55;
        v50[1] = v56;
        v51[0] = v57[0];
        *(v51 + 11) = *(v57 + 11);
        sub_193737A64(v50);
        v52 = v67;
        *&v53 = v68;
        *(&v53 + 1) = v23;
        v54[0] = v66[0];
        *(v54 + 11) = *(v66 + 11);
        goto LABEL_37;
      }

      v52 = v58;
      v53 = v59;
      v54[0] = *v60;
      *(v54 + 11) = *&v60[11];
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v25, v26, v27, v28);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v29, v30, v31, v32);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v33, v34, v35, v36);
      sub_193737A64(&v52);
    }

    v58 = v67;
    *&v59 = v68;
    *(&v59 + 1) = v23;
    *v60 = v66[0];
    *&v60[11] = *(v66 + 11);
    *v61 = *v65;
    *&v61[13] = *&v65[13];
    v62 = v24;
    v63[0] = v64[0];
    *(v63 + 11) = *(v64 + 11);
    sub_19344E6DC(&v58, &qword_1EAE41B28, &unk_193980830);
    goto LABEL_35;
  }

  if (v11)
  {
    v16 = v4 == v10 && v5 == v11;
    if (v16 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_35:
  OUTLINED_FUNCTION_116();
}

void ToolKitToolToolInvocation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  OUTLINED_FUNCTION_327();
  a40 = v43;
  a41 = v44;
  OUTLINED_FUNCTION_168_5();
  v45 = v41[3];
  v46 = v41[4];
  v47 = v41[9];
  if (v41[1])
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_262_0();
    sub_19393C640();
    if (v45)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_10_0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if (v45)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  if ((~v46 & 0xF000000000000007) != 0)
  {
    *&a23 = v46;
    OUTLINED_FUNCTION_103_0();

    ToolKitToolContainerDefinition.Device.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v48 = OUTLINED_FUNCTION_188_0();
  sub_193736068(v48, v49);
  if (v47 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v50 = *(v42 + 48);
    *v52 = *(v42 + 80);
    *&v52[11] = *(v42 + 91);
    *&v51 = *(v42 + 64);
    *(&v51 + 1) = v47;
    OUTLINED_FUNCTION_103_0();
    a17 = *(v42 + 48);
    a18 = *(v42 + 64);
    a19 = v47;
    a20 = *(v42 + 80);
    *(&a20 + 11) = *(v42 + 91);
    sub_1936D230C(&a17, &a23);
    OUTLINED_FUNCTION_39_20();
    ToolKitToolToolInvocationOptions.hash(into:)();
    a23 = v50;
    a24 = v51;
    a25 = *v52;
    *(&a25 + 11) = *&v52[11];
    sub_193737A64(&a23);
  }

  OUTLINED_FUNCTION_232_4();
}

uint64_t ToolKitToolToolInvocationOptions.locale.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ToolKitToolToolInvocationOptions.requestIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

double ToolKitToolToolInvocationOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 57) = 513;
  return result;
}

uint64_t sub_193734F4C@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193734F74@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolInvocationOptions.InteractionMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735064@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19373508C@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolToolInvocationOptions.InterfaceIdiom.allCases.getter();
  *a1 = result;
  return result;
}

void static ToolKitToolToolInvocationOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_273_1();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 57);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 57);
  if (*(v0 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_28;
    }

    v25 = *(v0 + 40);
    OUTLINED_FUNCTION_250_1();
    v12 = v10;
    v14 = v13;
    v26 = v5;
    v15 = v11;
    v16 = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
    v17 = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
    v9 = v14;
    v10 = v12;
    v18 = v16 == v17;
    v11 = v15;
    v4 = v25;
    v5 = v26;
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  if (!v3)
  {
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_16:
    if (v4)
    {
      if (!v9)
      {
        goto LABEL_28;
      }

      v24 = v5 == v10 && v4 == v9;
      if (!v24 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v9)
    {
      goto LABEL_28;
    }

    if ((v6 & 1) == 0 && (v11 & 1) == 0)
    {
      ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
      ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
    }

    goto LABEL_28;
  }

  if (v7)
  {
    v18 = v2 == v8 && v3 == v7;
    if (v18)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_177_5();
    v20 = v19;
    v22 = v21;
    v23 = sub_19393CA30();
    v9 = v20;
    v4 = v22;
    if (v23)
    {
      goto LABEL_16;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_270();
}

void ToolKitToolToolInvocationOptions.hash(into:)()
{
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_148_2();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 57);
  v4 = *(v0 + 58);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177_1();
    v6 = ToolKitToolToolInvocationOptions.InteractionMode.rawValue.getter();
    MEMORY[0x193B18030](v6);
    if (v1)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_113_3();
      sub_19393C640();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      OUTLINED_FUNCTION_104_0();
      if (v3)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_125();
  sub_19393C640();
  if (v3)
  {
LABEL_5:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_10;
  }

LABEL_9:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_177_1();
  v7 = ToolKitToolToolInvocationOptions.InterfaceIdiom.rawValue.getter();
  MEMORY[0x193B18030](v7);
LABEL_10:
  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_107();
}

uint64_t ToolKitToolToolInvocationOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitToolToolInvocationOptions.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937354A8()
{
  sub_19393CAB0();
  ToolKitToolToolInvocationOptions.hash(into:)();
  return sub_19393CB00();
}

uint64_t ToolKitTranscript.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ToolKitTranscript();
  return sub_193448804(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t ToolKitTranscript.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ToolKitTranscript();
  return sub_193448804(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t ToolKitTranscript.uuid.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for ToolKitTranscript();
  return sub_193448804(v1 + *(v2 + 28), v0, &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t ToolKitTranscript.toolDefinition.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for ToolKitTranscript() + 32);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x278uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE408D0, &qword_193980840);
}

void *ToolKitTranscript.toolDefinition.setter()
{
  v2 = *(OUTLINED_FUNCTION_306_0() + 32);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE408D0, &qword_193980840);
  return memcpy((v1 + v2), v0, 0x278uLL);
}

uint64_t ToolKitTranscript.parameterValues.getter()
{
  type metadata accessor for ToolKitTranscript();
}

uint64_t ToolKitTranscript.parameterValues.setter()
{
  v2 = *(OUTLINED_FUNCTION_306_0() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t sub_193735954(void (*a1)(uint64_t *))
{
  OUTLINED_FUNCTION_317();
  sub_19393CAB0();
  a1(&v3);
  return sub_19393CB00();
}

uint64_t sub_1937359C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  OUTLINED_FUNCTION_317();
  sub_19393CAB0();
  a4(&v6);
  return sub_19393CB00();
}

void *sub_193735A0C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = a1(&v4);
  a2[2] = v4;
  return result;
}

uint64_t sub_193735A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v4 = OUTLINED_FUNCTION_13_20(a1);
  v7 = *(v6 + 16);
  v8 = v5[2];
  v9 = v4 == *v5 && *(v6 + 8) == v5[1];
  if (v9 || (v10 = 0, (sub_19393CA30() & 1) != 0))
  {

    v19 = OUTLINED_FUNCTION_143_7(v11, v12, v13, v14, v15, v16, v17, v18, v8, v7);
    v10 = a3(v19);

    OUTLINED_FUNCTION_417(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30);
  }

  return v10 & 1;
}

uint64_t sub_193735AE8()
{
  OUTLINED_FUNCTION_50_0();
  sub_19393C640();
  v1 = OUTLINED_FUNCTION_264_0();
  return v0(v1);
}

uint64_t sub_193735B34(void (*a1)(char *))
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_175();
  v4 = sub_19393C640();
  v12 = OUTLINED_FUNCTION_298_1(v4, v5, v6, v7, v8, v9, v10, v11, v3, v14);
  a1(v12);
  return sub_19393CB00();
}

uint64_t sub_193735C04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *(v4 + 16);
  sub_19393CAB0();
  OUTLINED_FUNCTION_175();
  v7 = sub_19393C640();
  v15 = OUTLINED_FUNCTION_298_1(v7, v8, v9, v10, v11, v12, v13, v14, v6, v17);
  a4(v15);
  return sub_19393CB00();
}

uint64_t ToolKitTranscript.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ToolKitTranscript.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193735CD8()
{
  sub_19393CAB0();
  ToolKitTranscript.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193735D24@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolNullValue.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193735D4C@<X0>(char **a1@<X8>)
{
  result = static ToolKitToolNullValue.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735DA0@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitToolRuntimePlatform.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735DC8@<X0>(uint64_t *a1@<X8>)
{
  result = static ToolKitToolRuntimePlatform.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193735EB0(const void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v20 = v2;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      v14 = *(*(v2 + 48) + 16 * v13 + 8);
      v15 = *(*(v2 + 56) + 8 * v13);

      if (!v14)
      {
        break;
      }

      memcpy(__dst, a1, sizeof(__dst));
      sub_19393C640();

      MEMORY[0x193B18030](*(v15 + 16));
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v10;
        v18 = a1;

        v19 = 32;
        do
        {

          ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)();

          v19 += 8;
          --v16;
        }

        while (v16);

        a1 = v18;
        v10 = v17;
        v2 = v20;
      }

      v7 &= v7 - 1;

      result = sub_19393CB00();
      v10 ^= result;
      if (!v7)
      {
        goto LABEL_4;
      }
    }

LABEL_15:

    return MEMORY[0x193B18030](v10);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_15;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_193736068(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      v15 = *(*(a2 + 56) + 8 * v13);

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = v15;
      memcpy(v16, a1, sizeof(v16));
      sub_19393C640();

      ToolKitToolTypedValueResolvable.hash(into:)();

      result = sub_19393CB00();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x193B18030](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1937361C8(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      v15 = *(*(a2 + 56) + 8 * v13);

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = v15;
      memcpy(v16, a1, sizeof(v16));
      sub_19393C640();

      ToolKitToolTypedValue.hash(into:)();

      result = sub_19393CB00();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x193B18030](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_193736328(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;

      ToolKitToolToolSummaryString.Component.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937363A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193B18030](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v14, v6, sizeof(v14));
      memcpy(__dst, v6, sizeof(__dst));
      sub_1936D0610(v14, v15);
      ToolKitToolContainerDefinition.hash(into:)(a1, v7, v8, v9, v10, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], SHIDWORD(v14[6]));
      memcpy(v15, __dst, sizeof(v15));
      result = sub_193713244(v15);
      v6 += 112;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_193736454(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193B18030](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      v6 += 8;

      ToolKitToolSystemToolProtocol.hash(into:)(a1);

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1937364D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v15 = v3;
  if (v3)
  {
    v5 = 0;
    v14 = a2 + 32;
    do
    {
      v6 = (v14 + 32 * v5);
      v7 = *v6;
      v8 = v6[2];
      v9 = v6[3];
      MEMORY[0x193B18030](*(*v6 + 16));
      v10 = *(v7 + 16);
      if (v10)
      {

        v11 = v7 + 40;
        do
        {

          sub_19393C640();

          v11 += 16;
          --v10;
        }

        while (v10);
        if (!v8)
        {
LABEL_9:
          sub_19393CAD0();
          goto LABEL_10;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_9;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_10:
      MEMORY[0x193B18030](*(v9 + 16));
      v12 = *(v9 + 16);
      if (v12)
      {
        v13 = v9 + 40;
        do
        {

          sub_19393C640();

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      ++v5;
    }

    while (v5 != v15);
  }

  return result;
}

uint64_t sub_193736658(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193B18030](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      v6 += 8;

      ToolKitToolRuntimeRequirement.hash(into:)(a1);

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1937366D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      sub_19393CAD0();
      if (v6)
      {

        sub_19393C640();
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736770(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(__dst, v5, sizeof(__dst));
      memcpy(__src, v5, sizeof(__src));
      sub_1936CEFA0(__dst, v7);
      ToolKitToolToolDefinition.Version1.Parameter.hash(into:)();
      memcpy(v7, __src, sizeof(v7));
      result = sub_193740704(v7);
      v5 += 136;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736820(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      if (*(v5 - 1))
      {
        sub_19393CAD0();

        sub_193437C90(v6);
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
        sub_193437C90(v6);
      }

      sub_19393CAD0();
      if ((~v6 & 0xF000000000000007) != 0)
      {

        ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)();

        sub_193444060(v6);
      }

      else
      {

        result = sub_193444060(v6);
      }

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if (*(v5 - 3))
      {
        sub_19393CAD0();

        sub_193437C90(v6);
        sub_19393C640();
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_19393CAD0();

        sub_193437C90(v6);
        if (!v7)
        {
LABEL_7:
          sub_19393CAD0();
          goto LABEL_8;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_8:
      sub_19393CAD0();
      if ((~v6 & 0xF000000000000007) != 0)
      {

        ToolKitToolTypeInstance.hash(into:)();

        sub_193444060(v6);
      }

      else
      {

        result = sub_193444060(v6);
      }

      v5 += 5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193736AC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193B18030](v4);
  v17 = v4;
  if (v4)
  {
    v6 = 0;
    v16 = a2 + 32;
    while (1)
    {
      memcpy(__dst, (v16 + 96 * v6), 0x60uLL);
      if (__dst[1])
      {
        sub_19393CAD0();
        sub_1936C15F8(__dst, v18);
        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();
        sub_1936C15F8(__dst, v18);
      }

      v7 = __dst[7];
      if (!__dst[7])
      {
        break;
      }

      v8 = __dst[3];
      v10 = __dst[4];
      v9 = __dst[5];
      v11 = __dst[6];
      v15 = __dst[9];
      v12 = __dst[11];
      sub_19393CAD0();
      sub_19393CAD0();
      if (v8)
      {
        sub_19393C640();
      }

      if ((~v10 & 0xF000000000000007) != 0)
      {
        v18[0] = v10;
        sub_19393CAD0();

        ToolKitToolDisplayRepresentation.Subtitle.hash(into:)(a1);
      }

      else
      {
        sub_19393CAD0();
      }

      if ((~v9 & 0xF000000000000007) != 0)
      {
        v18[0] = v9;
        sub_19393CAD0();

        ToolKitToolDisplayRepresentation.AltText.hash(into:)(a1);
      }

      else
      {
        sub_19393CAD0();
      }

      if ((~v11 & 0xF000000000000007) != 0)
      {
        v18[0] = v11;
        sub_19393CAD0();

        ToolKitToolDisplayRepresentation.Image.hash(into:)();
      }

      else
      {
        sub_19393CAD0();
      }

      MEMORY[0x193B18030](*(v7 + 16));
      v13 = *(v7 + 16);
      if (v13)
      {
        v14 = v7 + 40;
        do
        {

          sub_19393C640();

          v14 += 16;
          --v13;
        }

        while (v13);
      }

      if (v12 == 1)
      {
        break;
      }

      sub_19393CAD0();
      if (v15 >> 60 == 15)
      {
        sub_19393CAD0();
        if (!v12)
        {
          break;
        }
      }

      else
      {
        sub_19393CAD0();
        sub_19393BD50();
        if (!v12)
        {
          break;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
LABEL_27:
      result = sub_193740794(__dst);
      if (++v6 == v17)
      {
        return result;
      }
    }

    sub_19393CAD0();
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_193736DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *v5;
      if (*(v5 - 7) == 1)
      {
        sub_19393CAD0();
        sub_193437C90(v6);
      }

      else
      {
        sub_19393CAD0();
        sub_193437C90(v6);
        v7 = ToolKitToolCoercionDefinition.CoercionDirection.rawValue.getter();
        MEMORY[0x193B18030](v7);
      }

      sub_19393CAD0();
      if ((~v6 & 0xF000000000000007) != 0)
      {
        sub_193437C90(v6);
        ToolKitToolTypeInstance.hash(into:)();
      }

      result = sub_193444060(v6);
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_193736ED4()
{
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_325();
  if (v1)
  {
    v3 = v2 + 40;
    do
    {
      v3 += 16;
      v4 = v0();
      MEMORY[0x193B18030](v4);
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_351_1();
}

uint64_t sub_193736F38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 8;

      ToolKitToolSystemTypeProtocol.hash(into:)();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937372A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 14);
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 15) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        v9 = ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.rawValue.getter();
        MEMORY[0x193B18030](v9);
      }

      if (v6 != 2)
      {
        sub_19393CAD0();
      }

      sub_19393CAD0();
      if (v8)
      {
        result = sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        result = MEMORY[0x193B18060](v7);
      }

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937373C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 41);
    do
    {
      v6 = *v5;
      if (*(v5 - 1) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v7 = *(v5 - 9);
        sub_19393CAD0();
        MEMORY[0x193B18060](v7);
      }

      if (v6 != 2)
      {
        sub_19393CAD0();
      }

      v5 += 16;
      result = sub_19393CAD0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193737464()
{
  v1 = *(v0 + 8);
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 72);
  v10 = *(v0 + 48);
  v8 = *(v0 + 57);
  sub_19393CAD0();
  if (v1)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v8)
    {
LABEL_13:
      sub_19393CAD0();
      if (v7)
      {
        goto LABEL_14;
      }

      return sub_19393CAD0();
    }
  }

  else
  {
    sub_19393CAD0();
    if (v8)
    {
      goto LABEL_13;
    }
  }

  sub_19393CAD0();
  if (v2)
  {
    sub_19393CAD0();
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_19393CAD0();
    MEMORY[0x193B18060](v3);
    if ((v5 & 1) == 0)
    {
LABEL_8:
      sub_19393CAD0();
      MEMORY[0x193B18060](v4);
      if (v6)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }
  }

  sub_19393CAD0();
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_19393CAD0();
  MEMORY[0x193B18060](v10);
  if (!v7)
  {
    return sub_19393CAD0();
  }

LABEL_14:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_1937375FC(uint64_t result)
{
  if ((result & 0xF000000000000007) != 0xD000000000000007)
  {
    return sub_193437C90(result);
  }

  return result;
}

uint64_t sub_193737648(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_193737690(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1937377A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {

    sub_193437C90(a5);
  }
}

void sub_1937377F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {

    sub_193444060(a5);
  }
}

uint64_t sub_193737848()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v2 = v0[3];
  v3 = v0[4];
  sub_19393CAD0();
  if (v1)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
LABEL_4:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_7;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_4;
    }
  }

  sub_19393CAD0();
LABEL_7:
  if ((~v3 & 0xF000000000000007) == 0)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  ToolKitToolTypeInstance.hash(into:)();
}

uint64_t sub_1937379AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_193737A20(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_193450268(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ToolKitTranscript()
{
  result = qword_1ED50CAC0;
  if (!qword_1ED50CAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_193737AE4()
{
  result = qword_1EAE41B30;
  if (!qword_1EAE41B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B30);
  }

  return result;
}

unint64_t sub_193737B3C()
{
  result = qword_1EAE41B38;
  if (!qword_1EAE41B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B38);
  }

  return result;
}

unint64_t sub_193737BC4()
{
  result = qword_1EAE41B50;
  if (!qword_1EAE41B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B50);
  }

  return result;
}

unint64_t sub_193737C1C()
{
  result = qword_1EAE41B58;
  if (!qword_1EAE41B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B58);
  }

  return result;
}

unint64_t sub_193737C74()
{
  result = qword_1EAE41B60;
  if (!qword_1EAE41B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B60);
  }

  return result;
}

unint64_t sub_193737CCC()
{
  result = qword_1EAE41B68;
  if (!qword_1EAE41B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B68);
  }

  return result;
}

unint64_t sub_193737D24()
{
  result = qword_1EAE41B70;
  if (!qword_1EAE41B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B70);
  }

  return result;
}

unint64_t sub_193737D7C()
{
  result = qword_1EAE41B78;
  if (!qword_1EAE41B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B78);
  }

  return result;
}

unint64_t sub_193737DD4()
{
  result = qword_1EAE41B80;
  if (!qword_1EAE41B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B80);
  }

  return result;
}

unint64_t sub_193737E2C()
{
  result = qword_1EAE41B88;
  if (!qword_1EAE41B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B88);
  }

  return result;
}

unint64_t sub_193737E84()
{
  result = qword_1EAE41B90;
  if (!qword_1EAE41B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B90);
  }

  return result;
}

unint64_t sub_193737EDC()
{
  result = qword_1EAE41B98;
  if (!qword_1EAE41B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41B98);
  }

  return result;
}

unint64_t sub_193737F34()
{
  result = qword_1EAE41BA0;
  if (!qword_1EAE41BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BA0);
  }

  return result;
}

unint64_t sub_193737FBC()
{
  result = qword_1EAE41BB0;
  if (!qword_1EAE41BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BB0);
  }

  return result;
}

unint64_t sub_193738014()
{
  result = qword_1EAE41BB8;
  if (!qword_1EAE41BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BB8);
  }

  return result;
}

unint64_t sub_19373806C()
{
  result = qword_1EAE41BC0;
  if (!qword_1EAE41BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BC0);
  }

  return result;
}

unint64_t sub_1937380F4()
{
  result = qword_1EAE41BD8;
  if (!qword_1EAE41BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BD8);
  }

  return result;
}

unint64_t sub_19373814C()
{
  result = qword_1EAE41BE0;
  if (!qword_1EAE41BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BE0);
  }

  return result;
}

unint64_t sub_1937381A4()
{
  result = qword_1EAE41BE8;
  if (!qword_1EAE41BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BE8);
  }

  return result;
}

unint64_t sub_1937381FC()
{
  result = qword_1EAE41BF0;
  if (!qword_1EAE41BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BF0);
  }

  return result;
}

unint64_t sub_193738254()
{
  result = qword_1EAE41BF8;
  if (!qword_1EAE41BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41BF8);
  }

  return result;
}

unint64_t sub_1937382AC()
{
  result = qword_1EAE41C00;
  if (!qword_1EAE41C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C00);
  }

  return result;
}

unint64_t sub_193738304()
{
  result = qword_1EAE41C08;
  if (!qword_1EAE41C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C08);
  }

  return result;
}

unint64_t sub_19373835C()
{
  result = qword_1EAE41C10;
  if (!qword_1EAE41C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C10);
  }

  return result;
}

unint64_t sub_1937383B4()
{
  result = qword_1EAE41C18;
  if (!qword_1EAE41C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C18);
  }

  return result;
}

unint64_t sub_19373840C()
{
  result = qword_1EAE41C20;
  if (!qword_1EAE41C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C20);
  }

  return result;
}

unint64_t sub_193738494()
{
  result = qword_1EAE41C38;
  if (!qword_1EAE41C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C38);
  }

  return result;
}

unint64_t sub_1937384EC()
{
  result = qword_1EAE41C40;
  if (!qword_1EAE41C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C40);
  }

  return result;
}

unint64_t sub_193738544()
{
  result = qword_1EAE41C48;
  if (!qword_1EAE41C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C48);
  }

  return result;
}

unint64_t sub_19373859C()
{
  result = qword_1EAE41C50;
  if (!qword_1EAE41C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C50);
  }

  return result;
}

unint64_t sub_1937385F4()
{
  result = qword_1EAE41C58;
  if (!qword_1EAE41C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C58);
  }

  return result;
}

unint64_t sub_19373867C()
{
  result = qword_1EAE41C70;
  if (!qword_1EAE41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C70);
  }

  return result;
}

unint64_t sub_1937386D4()
{
  result = qword_1EAE41C78;
  if (!qword_1EAE41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C78);
  }

  return result;
}

unint64_t sub_19373875C()
{
  result = qword_1EAE41C90;
  if (!qword_1EAE41C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C90);
  }

  return result;
}

unint64_t sub_1937387B4()
{
  result = qword_1EAE41C98;
  if (!qword_1EAE41C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41C98);
  }

  return result;
}

unint64_t sub_19373883C()
{
  result = qword_1EAE41CB0;
  if (!qword_1EAE41CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CB0);
  }

  return result;
}

unint64_t sub_193738894()
{
  result = qword_1EAE41CB8;
  if (!qword_1EAE41CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CB8);
  }

  return result;
}

unint64_t sub_1937388EC()
{
  result = qword_1EAE41CC0;
  if (!qword_1EAE41CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CC0);
  }

  return result;
}

unint64_t sub_193738944()
{
  result = qword_1EAE41CC8;
  if (!qword_1EAE41CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CC8);
  }

  return result;
}

unint64_t sub_19373899C()
{
  result = qword_1EAE41CD0;
  if (!qword_1EAE41CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CD0);
  }

  return result;
}

unint64_t sub_1937389F4()
{
  result = qword_1EAE41CD8;
  if (!qword_1EAE41CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CD8);
  }

  return result;
}

unint64_t sub_193738A4C()
{
  result = qword_1EAE41CE0;
  if (!qword_1EAE41CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CE0);
  }

  return result;
}

unint64_t sub_193738AA4()
{
  result = qword_1EAE41CE8;
  if (!qword_1EAE41CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41CE8);
  }

  return result;
}

unint64_t sub_193738B2C()
{
  result = qword_1EAE41D00;
  if (!qword_1EAE41D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D00);
  }

  return result;
}

unint64_t sub_193738B84()
{
  result = qword_1EAE41D08;
  if (!qword_1EAE41D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D08);
  }

  return result;
}

unint64_t sub_193738BDC()
{
  result = qword_1EAE41D10;
  if (!qword_1EAE41D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D10);
  }

  return result;
}

unint64_t sub_193738C64()
{
  result = qword_1EAE41D28;
  if (!qword_1EAE41D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D28);
  }

  return result;
}

unint64_t sub_193738CEC()
{
  result = qword_1EAE41D40;
  if (!qword_1EAE41D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D40);
  }

  return result;
}

unint64_t sub_193738D74()
{
  result = qword_1EAE41D58;
  if (!qword_1EAE41D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D58);
  }

  return result;
}

unint64_t sub_193738DFC()
{
  result = qword_1EAE41D70;
  if (!qword_1EAE41D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D70);
  }

  return result;
}

unint64_t sub_193738E54()
{
  result = qword_1EAE41D78;
  if (!qword_1EAE41D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D78);
  }

  return result;
}

unint64_t sub_193738EAC()
{
  result = qword_1EAE41D80;
  if (!qword_1EAE41D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D80);
  }

  return result;
}

unint64_t sub_193738F04()
{
  result = qword_1EAE41D88;
  if (!qword_1EAE41D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D88);
  }

  return result;
}

unint64_t sub_193738F5C()
{
  result = qword_1EAE41D90;
  if (!qword_1EAE41D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D90);
  }

  return result;
}

unint64_t sub_193738FB4()
{
  result = qword_1EAE41D98;
  if (!qword_1EAE41D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41D98);
  }

  return result;
}

unint64_t sub_19373900C()
{
  result = qword_1EAE41DA0;
  if (!qword_1EAE41DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DA0);
  }

  return result;
}

unint64_t sub_193739064()
{
  result = qword_1EAE41DA8;
  if (!qword_1EAE41DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DA8);
  }

  return result;
}

unint64_t sub_1937390BC()
{
  result = qword_1EAE41DB0;
  if (!qword_1EAE41DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DB0);
  }

  return result;
}

unint64_t sub_193739114()
{
  result = qword_1EAE41DB8;
  if (!qword_1EAE41DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DB8);
  }

  return result;
}

unint64_t sub_19373916C()
{
  result = qword_1EAE41DC0;
  if (!qword_1EAE41DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DC0);
  }

  return result;
}

unint64_t sub_1937391C4()
{
  result = qword_1EAE41DC8;
  if (!qword_1EAE41DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DC8);
  }

  return result;
}

unint64_t sub_19373921C()
{
  result = qword_1EAE41DD0;
  if (!qword_1EAE41DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DD0);
  }

  return result;
}

unint64_t sub_193739274()
{
  result = qword_1EAE41DD8;
  if (!qword_1EAE41DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DD8);
  }

  return result;
}

unint64_t sub_1937392CC()
{
  result = qword_1EAE41DE0;
  if (!qword_1EAE41DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DE0);
  }

  return result;
}

unint64_t sub_193739324()
{
  result = qword_1EAE41DE8;
  if (!qword_1EAE41DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DE8);
  }

  return result;
}

unint64_t sub_19373937C()
{
  result = qword_1EAE41DF0;
  if (!qword_1EAE41DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DF0);
  }

  return result;
}

unint64_t sub_1937393D4()
{
  result = qword_1EAE41DF8;
  if (!qword_1EAE41DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41DF8);
  }

  return result;
}

unint64_t sub_19373942C()
{
  result = qword_1EAE41E00;
  if (!qword_1EAE41E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E00);
  }

  return result;
}

unint64_t sub_193739488()
{
  result = qword_1EAE41E08;
  if (!qword_1EAE41E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E08);
  }

  return result;
}

unint64_t sub_1937394E0()
{
  result = qword_1EAE41E10;
  if (!qword_1EAE41E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E10);
  }

  return result;
}

unint64_t sub_193739538()
{
  result = qword_1EAE41E18;
  if (!qword_1EAE41E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E18);
  }

  return result;
}

unint64_t sub_193739590()
{
  result = qword_1EAE41E20;
  if (!qword_1EAE41E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E20);
  }

  return result;
}

unint64_t sub_1937395E8()
{
  result = qword_1EAE41E28;
  if (!qword_1EAE41E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E28);
  }

  return result;
}

unint64_t sub_193739640()
{
  result = qword_1EAE41E30;
  if (!qword_1EAE41E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E30);
  }

  return result;
}

unint64_t sub_1937396C8()
{
  result = qword_1EAE41E48;
  if (!qword_1EAE41E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E48);
  }

  return result;
}

unint64_t sub_193739750()
{
  result = qword_1EAE41E60;
  if (!qword_1EAE41E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E60);
  }

  return result;
}

unint64_t sub_1937397B8()
{
  result = qword_1EAE41E68;
  if (!qword_1EAE41E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E68);
  }

  return result;
}

unint64_t sub_193739810()
{
  result = qword_1EAE41E70;
  if (!qword_1EAE41E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E70);
  }

  return result;
}

unint64_t sub_193739868()
{
  result = qword_1EAE41E78;
  if (!qword_1EAE41E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E78);
  }

  return result;
}

unint64_t sub_1937398C0()
{
  result = qword_1EAE41E80;
  if (!qword_1EAE41E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E80);
  }

  return result;
}

unint64_t sub_193739918()
{
  result = qword_1EAE41E88;
  if (!qword_1EAE41E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41E88);
  }

  return result;
}

unint64_t sub_1937399A0()
{
  result = qword_1EAE41EA0;
  if (!qword_1EAE41EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EA0);
  }

  return result;
}

unint64_t sub_193739A28()
{
  result = qword_1EAE41EB8;
  if (!qword_1EAE41EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EB8);
  }

  return result;
}

unint64_t sub_193739AB0()
{
  result = qword_1EAE41ED0;
  if (!qword_1EAE41ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41ED0);
  }

  return result;
}

unint64_t sub_193739B08()
{
  result = qword_1EAE41ED8;
  if (!qword_1EAE41ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41ED8);
  }

  return result;
}

unint64_t sub_193739B60()
{
  result = qword_1EAE41EE0;
  if (!qword_1EAE41EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EE0);
  }

  return result;
}

unint64_t sub_193739BB8()
{
  result = qword_1EAE41EE8;
  if (!qword_1EAE41EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EE8);
  }

  return result;
}

unint64_t sub_193739C10()
{
  result = qword_1EAE41EF0;
  if (!qword_1EAE41EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EF0);
  }

  return result;
}

unint64_t sub_193739C68()
{
  result = qword_1EAE41EF8;
  if (!qword_1EAE41EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41EF8);
  }

  return result;
}

unint64_t sub_193739CC0()
{
  result = qword_1EAE41F00;
  if (!qword_1EAE41F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F00);
  }

  return result;
}

unint64_t sub_193739D18()
{
  result = qword_1EAE41F08;
  if (!qword_1EAE41F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F08);
  }

  return result;
}

unint64_t sub_193739D70()
{
  result = qword_1EAE41F10;
  if (!qword_1EAE41F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F10);
  }

  return result;
}

unint64_t sub_193739DC8()
{
  result = qword_1EAE41F18;
  if (!qword_1EAE41F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F18);
  }

  return result;
}

unint64_t sub_193739E20()
{
  result = qword_1EAE41F20;
  if (!qword_1EAE41F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F20);
  }

  return result;
}

unint64_t sub_193739E78()
{
  result = qword_1EAE41F28;
  if (!qword_1EAE41F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F28);
  }

  return result;
}

unint64_t sub_193739F00()
{
  result = qword_1EAE41F40;
  if (!qword_1EAE41F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F40);
  }

  return result;
}

unint64_t sub_193739F58()
{
  result = qword_1EAE41F48;
  if (!qword_1EAE41F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F48);
  }

  return result;
}

unint64_t sub_193739FB0()
{
  result = qword_1EAE41F50;
  if (!qword_1EAE41F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F50);
  }

  return result;
}

unint64_t sub_19373A008()
{
  result = qword_1EAE41F58;
  if (!qword_1EAE41F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F58);
  }

  return result;
}

unint64_t sub_19373A060()
{
  result = qword_1EAE41F60;
  if (!qword_1EAE41F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F60);
  }

  return result;
}

unint64_t sub_19373A0B8()
{
  result = qword_1EAE41F68;
  if (!qword_1EAE41F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F68);
  }

  return result;
}

unint64_t sub_19373A110()
{
  result = qword_1EAE41F70;
  if (!qword_1EAE41F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F70);
  }

  return result;
}

unint64_t sub_19373A168()
{
  result = qword_1EAE41F78;
  if (!qword_1EAE41F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F78);
  }

  return result;
}

unint64_t sub_19373A1C0()
{
  result = qword_1EAE41F80;
  if (!qword_1EAE41F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F80);
  }

  return result;
}

unint64_t sub_19373A218()
{
  result = qword_1EAE41F88;
  if (!qword_1EAE41F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F88);
  }

  return result;
}

unint64_t sub_19373A270()
{
  result = qword_1EAE41F90;
  if (!qword_1EAE41F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F90);
  }

  return result;
}

unint64_t sub_19373A2C8()
{
  result = qword_1EAE41F98;
  if (!qword_1EAE41F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41F98);
  }

  return result;
}

unint64_t sub_19373A320()
{
  result = qword_1EAE41FA0;
  if (!qword_1EAE41FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FA0);
  }

  return result;
}

unint64_t sub_19373A3A8()
{
  result = qword_1EAE41FB8;
  if (!qword_1EAE41FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FB8);
  }

  return result;
}

unint64_t sub_19373A400()
{
  result = qword_1EAE41FC0;
  if (!qword_1EAE41FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FC0);
  }

  return result;
}

unint64_t sub_19373A458()
{
  result = qword_1EAE41FC8;
  if (!qword_1EAE41FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FC8);
  }

  return result;
}

unint64_t sub_19373A4B0()
{
  result = qword_1EAE41FD0;
  if (!qword_1EAE41FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FD0);
  }

  return result;
}

unint64_t sub_19373A538()
{
  result = qword_1EAE41FE8;
  if (!qword_1EAE41FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FE8);
  }

  return result;
}

unint64_t sub_19373A590()
{
  result = qword_1EAE41FF0;
  if (!qword_1EAE41FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE41FF0);
  }

  return result;
}

unint64_t sub_19373A618()
{
  result = qword_1EAE42008;
  if (!qword_1EAE42008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42008);
  }

  return result;
}

unint64_t sub_19373A670()
{
  result = qword_1EAE42010;
  if (!qword_1EAE42010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42010);
  }

  return result;
}

unint64_t sub_19373A6C8()
{
  result = qword_1EAE42018;
  if (!qword_1EAE42018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42018);
  }

  return result;
}

unint64_t sub_19373A720()
{
  result = qword_1EAE42020;
  if (!qword_1EAE42020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42020);
  }

  return result;
}

unint64_t sub_19373A778()
{
  result = qword_1EAE42028;
  if (!qword_1EAE42028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42028);
  }

  return result;
}

unint64_t sub_19373A7D0()
{
  result = qword_1EAE42030;
  if (!qword_1EAE42030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42030);
  }

  return result;
}

unint64_t sub_19373A828()
{
  result = qword_1EAE42038;
  if (!qword_1EAE42038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42038);
  }

  return result;
}

unint64_t sub_19373A884()
{
  result = qword_1EAE42040;
  if (!qword_1EAE42040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42040);
  }

  return result;
}

unint64_t sub_19373A8DC()
{
  result = qword_1EAE42048;
  if (!qword_1EAE42048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42048);
  }

  return result;
}

unint64_t sub_19373A934()
{
  result = qword_1EAE42050;
  if (!qword_1EAE42050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42050);
  }

  return result;
}

unint64_t sub_19373A98C()
{
  result = qword_1EAE42058;
  if (!qword_1EAE42058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42058);
  }

  return result;
}

unint64_t sub_19373A9E4()
{
  result = qword_1EAE42060;
  if (!qword_1EAE42060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42060);
  }

  return result;
}

unint64_t sub_19373AA3C()
{
  result = qword_1EAE42068;
  if (!qword_1EAE42068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42068);
  }

  return result;
}

unint64_t sub_19373AA94()
{
  result = qword_1EAE42070;
  if (!qword_1EAE42070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42070);
  }

  return result;
}

unint64_t sub_19373AAEC()
{
  result = qword_1EAE42078;
  if (!qword_1EAE42078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42078);
  }

  return result;
}

unint64_t sub_19373AB44()
{
  result = qword_1EAE42080;
  if (!qword_1EAE42080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42080);
  }

  return result;
}

unint64_t sub_19373AB9C()
{
  result = qword_1EAE42088;
  if (!qword_1EAE42088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42088);
  }

  return result;
}

unint64_t sub_19373ABF4()
{
  result = qword_1EAE42090;
  if (!qword_1EAE42090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42090);
  }

  return result;
}

unint64_t sub_19373AC4C()
{
  result = qword_1EAE42098;
  if (!qword_1EAE42098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42098);
  }

  return result;
}

unint64_t sub_19373ACA4()
{
  result = qword_1EAE420A0;
  if (!qword_1EAE420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420A0);
  }

  return result;
}

unint64_t sub_19373ACFC()
{
  result = qword_1EAE420A8;
  if (!qword_1EAE420A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420A8);
  }

  return result;
}

unint64_t sub_19373AD54()
{
  result = qword_1EAE420B0;
  if (!qword_1EAE420B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420B0);
  }

  return result;
}

unint64_t sub_19373ADAC()
{
  result = qword_1EAE420B8;
  if (!qword_1EAE420B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420B8);
  }

  return result;
}

unint64_t sub_19373AE04()
{
  result = qword_1EAE420C0;
  if (!qword_1EAE420C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420C0);
  }

  return result;
}

unint64_t sub_19373AE5C()
{
  result = qword_1EAE420C8;
  if (!qword_1EAE420C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420C8);
  }

  return result;
}

unint64_t sub_19373AEB4()
{
  result = qword_1EAE420D0;
  if (!qword_1EAE420D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420D0);
  }

  return result;
}

unint64_t sub_19373AF0C()
{
  result = qword_1EAE420D8;
  if (!qword_1EAE420D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420D8);
  }

  return result;
}

unint64_t sub_19373AF94()
{
  result = qword_1EAE420F0;
  if (!qword_1EAE420F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE420F0);
  }

  return result;
}

unint64_t sub_19373B01C()
{
  result = qword_1EAE42100;
  if (!qword_1EAE42100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42100);
  }

  return result;
}

unint64_t sub_19373B0A4()
{
  result = qword_1EAE42110;
  if (!qword_1EAE42110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42110);
  }

  return result;
}

unint64_t sub_19373B12C()
{
  result = qword_1EAE42128;
  if (!qword_1EAE42128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42128);
  }

  return result;
}

unint64_t sub_19373B1B4()
{
  result = qword_1EAE42138;
  if (!qword_1EAE42138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42138);
  }

  return result;
}

unint64_t sub_19373B20C()
{
  result = qword_1EAE42140;
  if (!qword_1EAE42140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42140);
  }

  return result;
}

unint64_t sub_19373B264()
{
  result = qword_1EAE42148;
  if (!qword_1EAE42148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42148);
  }

  return result;
}

unint64_t sub_19373B2BC()
{
  result = qword_1EAE42150;
  if (!qword_1EAE42150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42150);
  }

  return result;
}

unint64_t sub_19373B314()
{
  result = qword_1EAE42158;
  if (!qword_1EAE42158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42158);
  }

  return result;
}

unint64_t sub_19373B36C()
{
  result = qword_1EAE42160;
  if (!qword_1EAE42160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42160);
  }

  return result;
}

unint64_t sub_19373B3C4()
{
  result = qword_1EAE42168;
  if (!qword_1EAE42168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42168);
  }

  return result;
}

unint64_t sub_19373B41C()
{
  result = qword_1EAE42170;
  if (!qword_1EAE42170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42170);
  }

  return result;
}

unint64_t sub_19373B474()
{
  result = qword_1EAE42178;
  if (!qword_1EAE42178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42178);
  }

  return result;
}

unint64_t sub_19373B4CC()
{
  result = qword_1EAE42180;
  if (!qword_1EAE42180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42180);
  }

  return result;
}

unint64_t sub_19373B524()
{
  result = qword_1EAE42188;
  if (!qword_1EAE42188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42188);
  }

  return result;
}

unint64_t sub_19373B57C()
{
  result = qword_1EAE42190;
  if (!qword_1EAE42190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42190);
  }

  return result;
}

unint64_t sub_19373B5D4()
{
  result = qword_1EAE42198;
  if (!qword_1EAE42198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42198);
  }

  return result;
}

unint64_t sub_19373B65C()
{
  result = qword_1EAE421B0;
  if (!qword_1EAE421B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421B0);
  }

  return result;
}

unint64_t sub_19373B6B4()
{
  result = qword_1EAE421B8;
  if (!qword_1EAE421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421B8);
  }

  return result;
}

unint64_t sub_19373B70C()
{
  result = qword_1EAE421C0;
  if (!qword_1EAE421C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421C0);
  }

  return result;
}

unint64_t sub_19373B764()
{
  result = qword_1EAE421C8;
  if (!qword_1EAE421C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421C8);
  }

  return result;
}

unint64_t sub_19373B7BC()
{
  result = qword_1EAE421D0;
  if (!qword_1EAE421D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421D0);
  }

  return result;
}

unint64_t sub_19373B818()
{
  result = qword_1EAE421D8;
  if (!qword_1EAE421D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421D8);
  }

  return result;
}

unint64_t sub_19373B8A0()
{
  result = qword_1EAE421F0;
  if (!qword_1EAE421F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421F0);
  }

  return result;
}

unint64_t sub_19373B8F8()
{
  result = qword_1EAE421F8;
  if (!qword_1EAE421F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE421F8);
  }

  return result;
}

unint64_t sub_19373B950()
{
  result = qword_1EAE42200;
  if (!qword_1EAE42200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42200);
  }

  return result;
}

unint64_t sub_19373B9D8()
{
  result = qword_1EAE42218;
  if (!qword_1EAE42218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42218);
  }

  return result;
}

unint64_t sub_19373BA60()
{
  result = qword_1EAE42230;
  if (!qword_1EAE42230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42230);
  }

  return result;
}

unint64_t sub_19373BAB8()
{
  result = qword_1EAE42238;
  if (!qword_1EAE42238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42238);
  }

  return result;
}

unint64_t sub_19373BB10()
{
  result = qword_1EAE42240;
  if (!qword_1EAE42240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42240);
  }

  return result;
}

unint64_t sub_19373BB68()
{
  result = qword_1EAE42248;
  if (!qword_1EAE42248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42248);
  }

  return result;
}

unint64_t sub_19373BBC0()
{
  result = qword_1EAE42250;
  if (!qword_1EAE42250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42250);
  }

  return result;
}

unint64_t sub_19373BC4C()
{
  result = qword_1EAE42268;
  if (!qword_1EAE42268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42268);
  }

  return result;
}

unint64_t sub_19373BCA8()
{
  result = qword_1EAE42270;
  if (!qword_1EAE42270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42270);
  }

  return result;
}

unint64_t sub_19373BD00()
{
  result = qword_1EAE42278;
  if (!qword_1EAE42278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42278);
  }

  return result;
}

unint64_t sub_19373BD58()
{
  result = qword_1EAE42280;
  if (!qword_1EAE42280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42280);
  }

  return result;
}

unint64_t sub_19373BDB0()
{
  result = qword_1EAE42288;
  if (!qword_1EAE42288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42288);
  }

  return result;
}

unint64_t sub_19373BE08()
{
  result = qword_1EAE42290;
  if (!qword_1EAE42290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42290);
  }

  return result;
}

unint64_t sub_19373BE60()
{
  result = qword_1EAE42298;
  if (!qword_1EAE42298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42298);
  }

  return result;
}

unint64_t sub_19373BEB8()
{
  result = qword_1EAE422A0;
  if (!qword_1EAE422A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422A0);
  }

  return result;
}

unint64_t sub_19373BF10()
{
  result = qword_1EAE422A8;
  if (!qword_1EAE422A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422A8);
  }

  return result;
}

unint64_t sub_19373BF68()
{
  result = qword_1EAE422B0;
  if (!qword_1EAE422B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422B0);
  }

  return result;
}

unint64_t sub_19373BFF0()
{
  result = qword_1EAE422C8;
  if (!qword_1EAE422C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422C8);
  }

  return result;
}

unint64_t sub_19373C048()
{
  result = qword_1EAE422D0;
  if (!qword_1EAE422D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422D0);
  }

  return result;
}

unint64_t sub_19373C0D0()
{
  result = qword_1EAE422E0;
  if (!qword_1EAE422E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422E0);
  }

  return result;
}

unint64_t sub_19373C128()
{
  result = qword_1EAE422E8;
  if (!qword_1EAE422E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422E8);
  }

  return result;
}

unint64_t sub_19373C180()
{
  result = qword_1EAE422F0;
  if (!qword_1EAE422F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422F0);
  }

  return result;
}

unint64_t sub_19373C1DC()
{
  result = qword_1EAE422F8;
  if (!qword_1EAE422F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE422F8);
  }

  return result;
}

unint64_t sub_19373C234()
{
  result = qword_1EAE42300;
  if (!qword_1EAE42300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42300);
  }

  return result;
}

unint64_t sub_19373C2BC()
{
  result = qword_1EAE42318;
  if (!qword_1EAE42318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42318);
  }

  return result;
}

unint64_t sub_19373C344()
{
  result = qword_1EAE42330;
  if (!qword_1EAE42330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42330);
  }

  return result;
}

unint64_t sub_19373C39C()
{
  result = qword_1EAE42338;
  if (!qword_1EAE42338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42338);
  }

  return result;
}

unint64_t sub_19373C3F8()
{
  result = qword_1EAE42340;
  if (!qword_1EAE42340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42340);
  }

  return result;
}

unint64_t sub_19373C450()
{
  result = qword_1EAE42348;
  if (!qword_1EAE42348)
  {
    type metadata accessor for ToolKitTranscript();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42348);
  }

  return result;
}

unint64_t sub_19373C4DC()
{
  result = qword_1EAE42360;
  if (!qword_1EAE42360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42360);
  }

  return result;
}

unint64_t sub_19373C564()
{
  result = qword_1EAE42378;
  if (!qword_1EAE42378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42378);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolTimestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitToolTimestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19373C63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_370_0(result);
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373C68C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x68 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 103);
    }

    OUTLINED_FUNCTION_265_1();
    if (v3 >= 0x67)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373C6D4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x67)
  {
    *result = a2 - 104;
    if (a3 >= 0x68)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x68)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373C748(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x70 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 111);
    }

    OUTLINED_FUNCTION_265_1();
    if (v3 >= 0x6F)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373C790(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6F)
  {
    *result = a2 - 112;
    if (a3 >= 0x70)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x70)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373C7EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 240))
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

uint64_t sub_19373C838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_353_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373C8C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x6F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 110);
    }

    OUTLINED_FUNCTION_265_1();
    if (v3 >= 0x6E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373C90C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6E)
  {
    *result = a2 - 111;
    if (a3 >= 0x6F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373C9AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 123);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = v3 ^ 0x7F;
    if (v4 >= 0x7B)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD14TypeIdentifierOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7B)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD25TypeDisplayRepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373CA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 96))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373CA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD12TypeInstanceOSg(void *a1)
{
  v1 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19373CB34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

void sub_19373CB7C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_461(a1, a2);
    if (v4)
    {
      *(v3 + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_41_0(a1, a2);
    }
  }
}

uint64_t sub_19373CBD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 88))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373CC14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    result = OUTLINED_FUNCTION_266_2(result, a2 & 0x7FFFFFFF, 0);
    if (v3 < 0)
    {
      *(result + 88) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 88) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD21DisplayRepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD20ValueSearchPredicateV8TemplateVSg(void *a1)
{
  v1 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v1 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD14TypeDefinitionV8Version1O5QueryV18PredicateTemplatesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373CD28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 72))
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

  return OUTLINED_FUNCTION_46_4(v2);
}

void *sub_19373CD64(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 7) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }

    *(result + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_11(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_19373CDD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373CE18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = OUTLINED_FUNCTION_326_0(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void sub_19373CE94(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_461(a1, a2);
    if (v4)
    {
      *(v3 + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = a2;
    }
  }
}

uint64_t sub_19373CEF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x69 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 104);
    }

    OUTLINED_FUNCTION_265_1();
    if (v3 >= 0x68)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373CF3C(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373CFC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 90))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy61_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_19373D0AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 61))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19373D0C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
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

  *(result + 61) = v3;
  return result;
}

uint64_t sub_19373D114(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 42))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D15C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D1C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
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

uint64_t sub_19373D210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_353_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D290(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_19373D2DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_75_17(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 106))
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

uint64_t sub_19373D3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *(result + 104) = 0;
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_115_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D430(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 418))
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

void sub_19373D47C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 408) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    v3 = OUTLINED_FUNCTION_23_38(a1, 0);
    *(v3 + 392) = v4;
    *(v3 + 416) = 0;
    *(v3 + 376) = v4;
    OUTLINED_FUNCTION_350(v4);
    *v5 = v6;
    if (v7 >= 0x7FFFFFFF)
    {
      *(v5 + 418) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 418) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_115_11(a1, a2);
    }
  }
}

uint64_t sub_19373D544(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 192))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D610(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_19373D65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_75_17(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_115_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D6DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373D724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    result = OUTLINED_FUNCTION_191_3(result, 0);
    *result = v3;
    if (v4 >= 0x7FFFFFFF)
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
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D7A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 313))
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

uint64_t sub_19373D7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *(result + 312) = 0;
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_19373D898(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_19373D8E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_116_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373D954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 248))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 176);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373D990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy30_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_19373DA4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 30))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373DA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 30) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 30) = 0;
    }

    if (a2)
    {
      *(result + 29) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_19373DAF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373DB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t storeEnumTagSinglePayload for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_19373DC70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 144))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373DCAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    result = OUTLINED_FUNCTION_111_13(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373DD2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373DD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    result = OUTLINED_FUNCTION_75_17(result, a2 - 0x7FFFFFFF, 0);
    if (v3)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD5QueryV12AnyPredicateOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x77)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD5QueryVSg(void *a1)
{
  v1 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v1 >= 0x77)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19373DE34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 41))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 122);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x7B)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

unint64_t *sub_19373DE88(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 40) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373DEF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t sub_19373DF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373DFB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = *(a1 + 16);
    v4 = (v3 >> 57) & 0x38 | v3 & 7;
    v5 = 126 - (((v3 >> 57) >> 6) | (2 * v4));
    if (!v4)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

uint64_t sub_19373E008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_246_2(result, (((a2 ^ 0x7F) << 6) | ((a2 ^ 0x7F) >> 1) | ((((a2 ^ 0x7F) << 6) | ((a2 ^ 0x7F) >> 1)) << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_19373E0C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

unint64_t *sub_19373E118(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    result[1] = 0;
    if (a3 >= 0x79)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373E1B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_52_15();
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373E1F0(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E234(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 121);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = v3 ^ 0x7F;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD26ContentItemClassDescriptorOSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x18 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 5) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary07ToolKitD18RestrictionContextO5InSetV05ValueI0VSg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19373E2FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 288))
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

uint64_t sub_19373E348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    result = OUTLINED_FUNCTION_23_38(result, 0);
    *(result + 264) = v3;
    *result = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

uint64_t sub_19373E3DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 216))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 128);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

uint64_t sub_19373E418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    result = OUTLINED_FUNCTION_135(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19373E4A4(uint64_t result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_246_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E534(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373E57C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E5D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

_BYTE *sub_19373E624(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 5) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      result[50] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[50] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_117_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 119);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = 126 - v3;
    if (!v5)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

unint64_t *sub_19373E760(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    result[1] = 0;
    if (a3 >= 0x78)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373E7BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x71 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 112);
    }

    v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v3 >= 0x70)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373E804(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x70)
  {
    *result = a2 - 113;
    if (a3 >= 0x71)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x71)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

uint64_t sub_19373E85C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_19373E8AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_115_11(result, a2);
    }
  }

  return result;
}

uint64_t sub_19373E990(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 120);
    }

    OUTLINED_FUNCTION_176_3();
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x79)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

unint64_t *sub_19373E9E4(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3) | (((16 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 3)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373EA90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0x77 && *(a1 + 33))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 118);
  }

  v3 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 < 0x77)
  {
    return OUTLINED_FUNCTION_46_4(v5);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

unint64_t *sub_19373EADC(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    result[2] = 0;
    result[3] = 0;
    *(result + 32) = 0;
    *result = a2 - 119;
    result[1] = 0;
    if (a3 >= 0x77)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_21_40(result, (8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4) | (((8 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 4)) << 57));
    }
  }

  return result;
}

uint64_t sub_19373EB4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 119);
    }

    v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
    if (v3 >= 0x77)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

unint64_t *sub_19373EB90(unint64_t *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_18_7(result);
    }
  }

  return result;
}

__n128 __swift_memcpy22_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitToolRuntimePlatformVersion(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 22))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 253);
    }

    OUTLINED_FUNCTION_112_9();
    if (v3 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t storeEnumTagSinglePayload for ToolKitToolRuntimePlatformVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *(result + 21) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_19373ECCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFD && *(a1 + 82))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 252);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2 ? ((v3 + 2147483646) & 0x7FFFFFFF) - 1 : -2;
  v5 = v4 < 0 ? -1 : v4;
  v6 = v5 - 1;
  if (v4 >= 1)
  {
    return OUTLINED_FUNCTION_46_4(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_19373ED2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_19373EDB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_60_20();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19373EE00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}