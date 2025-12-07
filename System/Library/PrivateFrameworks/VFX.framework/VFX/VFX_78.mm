uint64_t sub_1AF71D444@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 0x746C7561666564;
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[3];
  v7 = a1[4];
  sub_1AF87E644(v7);
  sub_1AF723768();
  v9 = sub_1AFDFD1B8();
  v11 = v10;
  v30 = v5;

  MEMORY[0x1B2718AE0](v9, v11);

  v28 = v5;
  v29 = v6;
  if (v8 && (v12 = [v8 label]) != 0)
  {
    v13 = v12;
    v4 = sub_1AFDFCEF8();
    v15 = v14;

    if (v4 == 0x616665642D786676 && v15 == 0xEB00000000746C75)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  if (sub_1AFDFEE28())
  {
LABEL_8:
    v16 = v30;

    goto LABEL_10;
  }

  MEMORY[0x1B2718AE0](v4, v15);
  MEMORY[0x1B2718AE0](35, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v6, v30);

  v16 = 0xE600000000000000;
  v6 = 0x3A7361696C61;
LABEL_10:
  v18 = *(v7 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v27 = v6;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AFC07638(0, v18, 0);
    v19 = v36;
    v20 = (v7 + 49);
    do
    {
      v21 = *(v20 - 17);
      v22 = *(v20 - 9);
      v23 = *(v20 - 1);
      v32 = v20[1];
      v33 = v20[2];
      v34 = v20[3];
      v35 = v20[4];
      v31 = *v20;
      result = sub_1AF725E8C(v21, v22, v23 & 1);
      v25 = *(v36 + 16);
      v24 = *(v36 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1AFC07638(v24 > 1, v25 + 1, 1);
      }

      *(v36 + 16) = v25 + 1;
      v26 = v36 + 112 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v22;
      *(v26 + 48) = v23;
      *(v26 + 49) = v31;
      *(v26 + 113) = v35;
      *(v26 + 97) = v34;
      *(v26 + 81) = v33;
      *(v26 + 65) = v32;
      v20 += 7;
      --v18;
    }

    while (v18);
    v6 = v27;
  }

  *a2 = v29;
  a2[1] = v28;
  a2[2] = v6;
  a2[3] = v16;
  a2[4] = v19;
  return result;
}

uint64_t sub_1AF71D760()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71D818(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71D8BC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF71D970@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723CC0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF71D9A0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x657079745F6469;
  v4 = 0xEA00000000006570;
  v5 = 0x79745F65756C6176;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 25705;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AF71DA14()
{
  v1 = 0x657079745F6469;
  v2 = 0x79745F65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF71DA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723CC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF71DAAC(uint64_t a1)
{
  v2 = sub_1AF726E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71DAE8(uint64_t a1)
{
  v2 = sub_1AF726E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71DB84@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF71DBDC(uint64_t a1)
{
  v2 = sub_1AF726DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71DC18(uint64_t a1)
{
  v2 = sub_1AF726DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71DC54(void *a1)
{
  v3 = v1;
  v5 = MEMORY[0x1E69E6F58];
  sub_1AF7277CC(0, &qword_1EB63DFC0, sub_1AF726DFC, &type metadata for ShaderArchive.FunctionConstantCoder.ValueCodingKeys, MEMORY[0x1E69E6F58]);
  v28 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - v7;
  sub_1AF7277CC(0, &qword_1EB63DFD0, sub_1AF726E50, &type metadata for ShaderArchive.FunctionConstantCoder.CodingKeys, v5);
  v9 = v8;
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726E50();
  sub_1AFDFF3F8();
  v13 = *v3;
  v12 = *(v3 + 8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 33);
  v16 = *(v3 + 65);
  *&v35[32] = *(v3 + 49);
  *&v35[48] = v16;
  *&v35[64] = *(v3 + 81);
  *v35 = *(v3 + 17);
  *&v35[16] = v15;
  sub_1AF87D2A4(v13, v12, v14 & 1);
  if (v17)
  {
    LOBYTE(v31) = 0;
    sub_1AFDFE8B8();
    if (v2)
    {
      (*(v41 + 8))(v11, v9);
    }

    LOBYTE(v31) = 1;
    sub_1AFDFE8B8();

    goto LABEL_6;
  }

  LOBYTE(v31) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    LOBYTE(v31) = 1;
    sub_1AFDFE8F8();
LABEL_6:
    v38 = *&v35[47];
    v39 = *&v35[63];
    v40 = v35[79];
    v36 = *&v35[15];
    v37 = *&v35[31];
    v18 = sub_1AF87901C();
    sub_1AF476764(v18);
    LOBYTE(v31) = 2;
    sub_1AFDFE8B8();

    LOBYTE(v31) = 3;
    sub_1AF726DFC();
    v20 = v30;
    sub_1AFDFE848();
    v21 = v28;
    switch(v40)
    {
      case 1:
        *&v31 = v36;
        v22 = &unk_1ED72F770;
        v23 = MEMORY[0x1E69E7428];
        sub_1AF7277CC(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        v24 = &qword_1ED72F798;
        v25 = MEMORY[0x1E69E7430];
        goto LABEL_20;
      case 2:
        v31 = v36;
        v22 = &qword_1ED72F740;
        v23 = MEMORY[0x1E69E7450];
        sub_1AF7277CC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v24 = &qword_1ED72F758;
        v25 = MEMORY[0x1E69E7458];
        goto LABEL_20;
      case 3:
        v31 = v36;
        v22 = &qword_1ED72F6E0;
        v23 = MEMORY[0x1E69E74A8];
        sub_1AF7277CC(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v24 = &qword_1ED72F710;
        v25 = MEMORY[0x1E69E74B0];
LABEL_20:
        sub_1AF726EA4(v24, v22, v23, v25);
        v26 = v30;
        sub_1AFDFE918();
        (*(v29 + 8))(v26, v21);
        return (*(v41 + 8))(v11, v9);
      case 4:
        v31 = v36;
        sub_1AF608A04();
        goto LABEL_26;
      case 5:
        v31 = v36;
        v32 = v37;
        sub_1AF6089B0();
        goto LABEL_26;
      case 6:
        v31 = v36;
        v32 = v37;
        sub_1AF60895C();
        goto LABEL_26;
      case 7:
        v31 = v36;
        *&v32 = v37;
        sub_1AF608908();
        goto LABEL_26;
      case 8:
        v31 = v36;
        v32 = v37;
        v33 = v38;
        sub_1AF6088B4();
        goto LABEL_26;
      case 9:
        v31 = v36;
        v32 = v37;
        v33 = v38;
        sub_1AF608860();
        goto LABEL_26;
      case 10:
        v31 = v36;
        v32 = v37;
        sub_1AF60880C();
        goto LABEL_26;
      case 11:
        v31 = v36;
        v32 = v37;
        v33 = v38;
        v34 = v39;
        sub_1AF6087B8();
        goto LABEL_26;
      case 12:
        v31 = v36;
        v32 = v37;
        v33 = v38;
        v34 = v39;
        sub_1AF48D74C();
LABEL_26:
        sub_1AFDFE918();
        break;
      case 13:
        sub_1AFDFE8C8();
        break;
      case 14:
        sub_1AFDFE948();
        break;
      case 15:
        sub_1AFDFE988();
        break;
      default:
        sub_1AFDFE8E8();
        break;
    }

    (*(v29 + 8))(v20, v21);
  }

  return (*(v41 + 8))(v11, v9);
}

uint64_t sub_1AF71E41C(void *a1)
{
  v3 = v1;
  sub_1AF7277CC(0, &qword_1EB63DF48, sub_1AF726BB0, &type metadata for ShaderArchive.SpecializedFunctionCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726BB0();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v13 = 1;
    sub_1AFDFE8B8();
    v11[1] = *(v3 + 32);
    v12 = 2;
    sub_1AF45BD00(0, &qword_1EB63DF58, &type metadata for ShaderArchive.FunctionConstantCoder);
    sub_1AF725C38(&qword_1EB63DF60, &qword_1EB63DF58, &type metadata for ShaderArchive.FunctionConstantCoder, sub_1AF726C04);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AF71E638(char a1)
{
  result = 0x665F786574726576;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 15:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
    case 10:
    case 11:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD00000000000001DLL;
      break;
    case 20:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF71E8B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F6974636E7566;
  if (v2 != 1)
  {
    v4 = 0x746E6174736E6F63;
    v3 = 0xEF7365756C61765FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974636E7566;
  if (*a2 != 1)
  {
    v8 = 0x746E6174736E6F63;
    v7 = 0xEF7365756C61765FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF71E9C8()
{
  v1 = 0x6E6F6974636E7566;
  if (*v0 != 1)
  {
    v1 = 0x746E6174736E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1AF71EA2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF723D58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF71EA54(uint64_t a1)
{
  v2 = sub_1AF726BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71EA90(uint64_t a1)
{
  v2 = sub_1AF726BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71EB08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF71E638(*a1);
  v5 = v4;
  if (v3 == sub_1AF71E638(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF71EB90()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF71E638(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71EBF4(uint64_t a1)
{
  sub_1AF71E638(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AF71EC48(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF71E638(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF71ECA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723E74(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AF71ECD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF71E638(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF71ED0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF71ED40(uint64_t a1)
{
  v2 = sub_1AF726CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71ED7C(uint64_t a1)
{
  v2 = sub_1AF726CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71EDB8(void *a1, char *a2, void *a3)
{
  sub_1AF7277CC(0, &qword_1EB63DF80, sub_1AF726CAC, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726CAC();
  sub_1AFDFF3F8();
  v11 = [a3 vertexFunction];
  if (v11)
  {
    sub_1AF71B800(v11);
    LOBYTE(v47) = 0;
    sub_1AFDFE8B8();
    if (v3)
    {
LABEL_6:
      (*(v46 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v12 = [a3 fragmentFunction];
  if (v12)
  {
    sub_1AF71B800(v12);
    LOBYTE(v47) = 2;
    sub_1AFDFE8B8();
    if (v3)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v14 = [a3 vertexLinkedFunctions];
  v15 = sub_1AF71F9D0();

  if (!v15)
  {
    v16 = a2;
    v17 = [a3 vertexLinkedFunctions];
    v47 = v16;
    v48 = v17;
    v49 = 1;
    sub_1AF726D00();
    sub_1AFDFE918();
    if (v3)
    {
LABEL_14:

LABEL_15:
      return (*(v46 + 8))(v10, v8);
    }
  }

  v18 = [a3 fragmentLinkedFunctions];
  v19 = sub_1AF71F9D0();

  if (!v19)
  {
    v16 = a2;
    v17 = [a3 fragmentLinkedFunctions];
    v47 = v16;
    v48 = v17;
    v49 = 3;
    sub_1AF726D00();
    sub_1AFDFE918();
    if (v3)
    {
      goto LABEL_14;
    }
  }

  v20 = [a3 vertexDescriptor];
  if (v20)
  {
    v16 = v20;
    if (!sub_1AF476A04())
    {
      v47 = v16;
      v49 = 4;
      sub_1AF477FAC();
      sub_1AFDFE918();
      if (v3)
      {
        goto LABEL_15;
      }
    }
  }

  [a3 rasterSampleCount];
  LOBYTE(v47) = 17;
  sub_1AFDFE8F8();
  if (!v3)
  {
    [a3 isAlphaToOneEnabled];
    LOBYTE(v47) = 16;
    sub_1AFDFE8C8();
    [a3 isAlphaToCoverageEnabled];
    LOBYTE(v47) = 15;
    sub_1AFDFE8C8();
    [a3 isRasterizationEnabled];
    LOBYTE(v47) = 14;
    sub_1AFDFE8C8();
    if ((*&a2[OBJC_IVAR____TtC3VFX13ShaderArchive_family] - 2000) >= 0xFFFFFFFFFFFFFC1ELL)
    {
      [a3 maxVertexAmplificationCount];
      LOBYTE(v47) = 13;
      sub_1AFDFE8F8();
    }

    [a3 inputPrimitiveTopology];
    LOBYTE(v47) = 5;
    sub_1AFDFE8B8();

    v21 = [a3 vertexFunction];
    if (!v21 || (v22 = [v21 patchType], swift_unknownObjectRelease(), v22))
    {
      [a3 tessellationPartitionMode];
      LOBYTE(v47) = 12;
      sub_1AFDFE8B8();

      [a3 maxTessellationFactor];
      LOBYTE(v47) = 6;
      sub_1AFDFE8F8();
      [a3 isTessellationFactorScaleEnabled];
      LOBYTE(v47) = 7;
      sub_1AFDFE8C8();
      [a3 tessellationFactorFormat];
      LOBYTE(v47) = 8;
      sub_1AFDFE8B8();

      [a3 tessellationControlPointIndexType];
      LOBYTE(v47) = 9;
      sub_1AFDFE8B8();

      [a3 tessellationFactorStepFunction];
      LOBYTE(v47) = 10;
      sub_1AFDFE8B8();

      [a3 tessellationOutputWindingOrder];
      LOBYTE(v47) = 11;
      sub_1AFDFE8B8();
    }

    v23 = [a3 colorAttachments];
    v47 = v23;
    v49 = 18;
    sub_1AF726D54();
    sub_1AFDFE918();

    [a3 depthAttachmentPixelFormat];
    MTLPixelFormatGetInfo();
    v24 = sub_1AFDFD0E8();
    v26 = v25;
    if (sub_1AFDFD178())
    {
      v27 = sub_1AFDFD048();
      v28 = sub_1AF701628(v27, v24, v26);
      v30 = v29;
      v32 = v31;
      v34 = v33;

      MEMORY[0x1B27189E0](v28, v30, v32, v34);
    }

    LOBYTE(v47) = 19;
    sub_1AFDFE8B8();

    [a3 stencilAttachmentPixelFormat];
    MTLPixelFormatGetInfo();
    v35 = sub_1AFDFD0E8();
    v37 = v36;
    if (sub_1AFDFD178())
    {
      v38 = sub_1AFDFD048();
      v39 = sub_1AF701628(v38, v35, v37);
      v41 = v40;
      v43 = v42;
      v45 = v44;

      MEMORY[0x1B27189E0](v39, v41, v43, v45);
    }

    LOBYTE(v47) = 20;
    sub_1AFDFE8B8();
    (*(v46 + 8))(v10, v8);
  }

  return (*(v46 + 8))(v10, v8);
}

BOOL sub_1AF71F9D0()
{
  v1 = [v0 functions];
  result = 0;
  if (!v1 || ((v2 = v1, sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction), v3 = sub_1AFDFD418(), v2, v3 >> 62) ? (v4 = sub_1AFDFE108()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v4))
  {
    v5 = [v0 privateFunctions];
    if (!v5 || ((v6 = v5, sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction), v7 = sub_1AFDFD418(), v6, v7 >> 62) ? (v8 = sub_1AFDFE108()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v8))
    {
      v9 = [v0 binaryFunctions];
      if (!v9 || ((v10 = v9, sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction), v11 = sub_1AFDFD418(), v10, v11 >> 62) ? (v12 = sub_1AFDFE108()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v12))
      {
        v13 = [v0 groups];
        if (!v13)
        {
          return 1;
        }

        v14 = v13;
        sub_1AF723840(0, &qword_1ED7231F8, &unk_1ED723170, &protocolRef_MTLFunction, MEMORY[0x1E69E62F8]);
        v15 = sub_1AFDFCC08();

        v16 = *(v15 + 16);

        if (!v16)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF71FC30()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71FCF8(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71FDAC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF71FE70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723D0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF71FEA0(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F6974636E7566;
  v4 = 0x80000001AFF22F60;
  v5 = 0x7370756F7267;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF22F40;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1AF71FF24()
{
  v1 = 0x6E6F6974636E7566;
  v2 = 0x7370756F7267;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF71FFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF71FFCC(uint64_t a1)
{
  v2 = sub_1AF7276F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF720008(uint64_t a1)
{
  v2 = sub_1AF7276F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF720044(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v64 = a2;
  sub_1AF7277CC(0, &qword_1EB63E0C0, sub_1AF7276F8, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7276F8();
  sub_1AFDFF3F8();
  v12 = [a3 functions];
  v61 = v11;
  v62 = v8;
  v58 = a3;
  if (!v12)
  {
LABEL_16:
    v27 = [a3 privateFunctions];
    if (!v27)
    {
      goto LABEL_32;
    }

    v28 = v27;
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    v29 = sub_1AFDFD418();

    if (v29 >> 62)
    {
      v30 = sub_1AFDFE108();
      if (v30)
      {
LABEL_19:
        v59 = v4;
        v60 = v9;
        v66 = MEMORY[0x1E69E7CC0];
        sub_1AFC05CE4(0, v30 & ~(v30 >> 63), 0);
        v31 = v29;
        v32 = 0;
        v33 = v66;
        v63 = v29 & 0xC000000000000001;
        v34 = v30;
        do
        {
          if (v63)
          {
            v35 = MEMORY[0x1B2719C70](v32, v31);
          }

          else
          {
            v35 = *(v31 + 8 * v32 + 32);
            swift_unknownObjectRetain();
          }

          v36 = sub_1AF71B800(v35);
          v38 = v37;
          swift_unknownObjectRelease();
          v66 = v33;
          v40 = *(v33 + 16);
          v39 = *(v33 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_1AFC05CE4(v39 > 1, v40 + 1, 1);
            v33 = v66;
          }

          ++v32;
          *(v33 + 16) = v40 + 1;
          v41 = v33 + 16 * v40;
          *(v41 + 32) = v36;
          *(v41 + 40) = v38;
          v31 = v29;
        }

        while (v34 != v32);

        v4 = v59;
        v9 = v60;
        goto LABEL_29;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_19;
      }
    }

    v33 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v66 = v33;
    v65 = 1;
    sub_1AF45BD00(0, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    sub_1AF72774C();
    v11 = v61;
    v8 = v62;
    sub_1AFDFE918();
    if (v4)
    {
      goto LABEL_30;
    }

    a3 = v58;
LABEL_32:
    v42 = [a3 binaryFunctions];
    if (!v42)
    {
      return (*(v9 + 8))(v11, v8);
    }

    v43 = v42;
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    v44 = sub_1AFDFD418();

    if (v44 >> 62)
    {
      v45 = sub_1AFDFE108();
      v60 = v9;
      if (v45)
      {
LABEL_35:
        v59 = v4;
        v66 = MEMORY[0x1E69E7CC0];
        sub_1AFC05CE4(0, v45 & ~(v45 >> 63), 0);
        v46 = v44;
        v47 = 0;
        v48 = v66;
        v63 = v44 & 0xC000000000000001;
        v49 = v45;
        do
        {
          if (v63)
          {
            v50 = MEMORY[0x1B2719C70](v47, v46);
          }

          else
          {
            v50 = *(v46 + 8 * v47 + 32);
            swift_unknownObjectRetain();
          }

          v51 = sub_1AF71B800(v50);
          v53 = v52;
          swift_unknownObjectRelease();
          v66 = v48;
          v55 = *(v48 + 16);
          v54 = *(v48 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_1AFC05CE4(v54 > 1, v55 + 1, 1);
            v48 = v66;
          }

          ++v47;
          *(v48 + 16) = v55 + 1;
          v56 = v48 + 16 * v55;
          *(v56 + 32) = v51;
          *(v56 + 40) = v53;
          v46 = v44;
        }

        while (v49 != v47);

        v11 = v61;
        v8 = v62;
        goto LABEL_46;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v60 = v9;
      if (v45)
      {
        goto LABEL_35;
      }
    }

    v48 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v66 = v48;
    v65 = 2;
    sub_1AF45BD00(0, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    sub_1AF72774C();
    sub_1AFDFE918();
    (*(v60 + 8))(v11, v8);
  }

  v13 = v12;
  sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
  v14 = sub_1AFDFD418();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_13:

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v15 = sub_1AFDFE108();
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_4:
  v59 = v3;
  v60 = v9;
  v66 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v15 & ~(v15 >> 63), 0);
  v16 = v14;
  v17 = 0;
  v18 = v66;
  v63 = v14 & 0xC000000000000001;
  v19 = v15;
  do
  {
    if (v63)
    {
      v20 = MEMORY[0x1B2719C70](v17, v16);
    }

    else
    {
      v20 = *(v16 + 8 * v17 + 32);
      swift_unknownObjectRetain();
    }

    v21 = sub_1AF71B800(v20);
    v23 = v22;
    swift_unknownObjectRelease();
    v66 = v18;
    v25 = *(v18 + 16);
    v24 = *(v18 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1AFC05CE4(v24 > 1, v25 + 1, 1);
      v18 = v66;
    }

    ++v17;
    *(v18 + 16) = v25 + 1;
    v26 = v18 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v23;
    v16 = v14;
  }

  while (v19 != v17);

  v4 = v59;
  v9 = v60;
LABEL_14:
  v66 = v18;
  v65 = 0;
  sub_1AF45BD00(0, &qword_1ED726C70, MEMORY[0x1E69E6158]);
  sub_1AF72774C();
  v11 = v61;
  v8 = v62;
  sub_1AFDFE918();
  if (!v4)
  {

    a3 = v58;
    goto LABEL_16;
  }

LABEL_30:
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1AF720768(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F665F6C65786970;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
    }

    if (a1)
    {
      v5 = 0x616D5F6574697277;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ELL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AF7208CC()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF3D51B4(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF72091C(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF3D51B4(v4, v2);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF720960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723F14(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AF720990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF720768(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AF7209D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723F14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF720A00(uint64_t a1)
{
  v2 = sub_1AF727834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF720A3C(uint64_t a1)
{
  v2 = sub_1AF727834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF720A78(void *a1, void *a2)
{
  sub_1AF7277CC(0, &qword_1EB63E0D0, sub_1AF727834, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v10 = 0;
  v33 = v9;
  v34 = (v7 + 8);
  v32[1] = 0x80000001AFF31EA0;
  v11 = &selRef_numberWithBool_;
  while (1)
  {
    v12 = [a2 v11[16]];
    if (!v12)
    {
      goto LABEL_3;
    }

    v13 = v12;
    if ([v12 pixelFormat])
    {
      break;
    }

LABEL_3:
    if (++v10 == 8)
    {
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
    }
  }

  v37 = v13;
  sub_1AF448018(v36, v36[3]);
  sub_1AF727834();
  sub_1AFDFEBC8();
  MTLPixelFormatGetInfo();
  v14 = sub_1AFDFD0E8();
  v16 = v15;
  if (sub_1AFDFD178())
  {
    v17 = sub_1AFDFD048();
    v18 = sub_1AF701628(v17, v14, v16);
    v20 = v19;
    v22 = v21;
    v23 = a2;
    v24 = v6;
    v26 = v25;

    MEMORY[0x1B27189E0](v18, v20, v22, v26);
    v6 = v24;
    a2 = v23;
  }

  LOBYTE(v35) = 0;
  v27 = v33;
  sub_1AFDFE8B8();
  v28 = v37;
  if (v2)
  {
    (*v34)(v27, v6);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
  }

  sub_1AF476604([v28 writeMask]);
  LOBYTE(v35) = 1;
  sub_1AFDFE8B8();

  if (![v28 isBlendingEnabled])
  {
    (*v34)(v27, v6);
    goto LABEL_32;
  }

  [v28 isBlendingEnabled];
  LOBYTE(v35) = 2;
  sub_1AFDFE8C8();
  v29 = [v28 alphaBlendOperation];
  if (v29 > 1)
  {
    if (v29 != 2 && v29 != 3 && v29 != 4)
    {
      goto LABEL_35;
    }

LABEL_21:
    LOBYTE(v35) = 3;
    sub_1AFDFE8B8();

    v30 = [v28 rgbBlendOperation];
    if (v30 <= 1)
    {
      if (v30 && v30 != 1)
      {
        goto LABEL_35;
      }
    }

    else if (v30 != 2 && v30 != 3 && v30 != 4)
    {
      goto LABEL_35;
    }

    LOBYTE(v35) = 4;
    sub_1AFDFE8B8();

    [v28 destinationAlphaBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v35) = 5;
    sub_1AFDFE8B8();

    [v28 destinationRGBBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v35) = 6;
    sub_1AFDFE8B8();

    [v28 sourceAlphaBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v35) = 7;
    sub_1AFDFE8B8();

    [v28 sourceRGBBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v35) = 8;
    sub_1AFDFE8B8();
    (*v34)(v27, v6);

LABEL_32:

    v11 = &selRef_numberWithBool_;
    goto LABEL_3;
  }

  if (!v29 || v29 == 1)
  {
    goto LABEL_21;
  }

LABEL_35:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF721168(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "compute_function";
  v4 = 0xD000000000000036;
  if (v2 == 1)
  {
    v5 = 0xD000000000000036;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (v2 == 1)
  {
    v6 = "compute_function";
  }

  else
  {
    v6 = "thread_execution_width";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "stencil_attachment_pixel_format";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000021;
    v3 = "thread_execution_width";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "stencil_attachment_pixel_format";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF721240()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7212DC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF721364(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF7213FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723EC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF72142C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "compute_function";
  v4 = 0xD000000000000036;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000021;
    v3 = "thread_execution_width";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "stencil_attachment_pixel_format";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_1AF721488()
{
  v1 = 0xD000000000000036;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_1AF7214E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF721508(uint64_t a1)
{
  v2 = sub_1AF726C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF721544(uint64_t a1)
{
  v2 = sub_1AF726C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF721580(void *a1, uint64_t a2, void *a3)
{
  v13[1] = a2;
  sub_1AF7277CC(0, &qword_1EB63DF70, sub_1AF726C58, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726C58();
  sub_1AFDFF3F8();
  v11 = [a3 computeFunction];
  if (v11)
  {
    sub_1AF71B800(v11);
    v14 = 0;
    sub_1AFDFE8B8();
    if (v3)
    {
      (*(v8 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  [a3 threadGroupSizeIsMultipleOfThreadExecutionWidth];
  v16 = 1;
  sub_1AFDFE8C8();
  if (!v3)
  {
    [a3 maxTotalThreadsPerThreadgroup];
    v15 = 2;
    sub_1AFDFE8F8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF721868@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1AF7218C0(uint64_t a1)
{
  v2 = sub_1AF726DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7218FC(uint64_t a1)
{
  v2 = sub_1AF726DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF721938(void *a1)
{
  sub_1AF7277CC(0, &qword_1EB63DFB0, sub_1AF726DA8, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  sub_1AF441150(a1, a1[3]);
  sub_1AF726DA8();
  sub_1AFDFF3F8();
  sub_1AF71B800(v8);
  sub_1AFDFE8B8();

  return (*(v5 + 8))(v7, v4);
}

id sub_1AF721AE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ShaderArchive();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1AF721BD8()
{
  result = qword_1EB63DD18;
  if (!qword_1EB63DD18)
  {
    result = swift_getWitnessTable(a1_26, &type metadata for ShaderArchive.Library, v0, v1);
    atomic_store(result, &qword_1EB63DD18);
  }

  return result;
}

unint64_t sub_1AF721C2C()
{
  result = qword_1EB63DD28;
  if (!qword_1EB63DD28)
  {
    result = swift_getWitnessTable(byte_1AFE73424, &type metadata for ShaderArchive.Library.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD28);
  }

  return result;
}

uint64_t sub_1AF721C80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7374756F79616CLL;
  }

  else
  {
    v3 = 0x7475626972747461;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7374756F79616CLL;
  }

  else
  {
    v5 = 0x7475626972747461;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF721D2C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF721DB4(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF721E28(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF721EB8(uint64_t *a1@<X8>)
{
  v2 = 0x7475626972747461;
  if (*v1)
  {
    v2 = 0x7374756F79616CLL;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF721EFC()
{
  if (*v0)
  {
    return 0x7374756F79616CLL;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1AF721F48(uint64_t a1)
{
  v2 = sub_1AF72593C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF721F84(uint64_t a1)
{
  v2 = sub_1AF72593C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF721FC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v3 = 0x74616D726F66;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x695F726566667562;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEC0000007865646ELL;
  }

  v6 = 0x74657366666FLL;
  if (*a2 != 1)
  {
    v6 = 0x74616D726F66;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x695F726566667562;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xEC0000007865646ELL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF7220B8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF72215C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7221EC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF72228C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723FAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF7222BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v4 = 0x74616D726F66;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x695F726566667562;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1AF72231C()
{
  v1 = 0x74657366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x74616D726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F726566667562;
  }
}

unint64_t sub_1AF722378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF7223A0(uint64_t a1)
{
  v2 = sub_1AF7258E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7223DC(uint64_t a1)
{
  v2 = sub_1AF7258E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF722418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E75665F70657473;
  v4 = 0xED00006E6F697463;
  if (v2 != 1)
  {
    v3 = 0x7461725F70657473;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656469727473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E75665F70657473;
  v8 = 0xED00006E6F697463;
  if (*a2 != 1)
  {
    v7 = 0x7461725F70657473;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656469727473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF722538()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7225E8(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF722684(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF722730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF723F60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF722760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xED00006E6F697463;
  v5 = 0x6E75665F70657473;
  if (v2 != 1)
  {
    v5 = 0x7461725F70657473;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656469727473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF7227CC()
{
  v1 = 0x6E75665F70657473;
  if (*v0 != 1)
  {
    v1 = 0x7461725F70657473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656469727473;
  }
}

unint64_t sub_1AF722834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723F60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF72285C(uint64_t a1)
{
  v2 = sub_1AF725894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF722898(uint64_t a1)
{
  v2 = sub_1AF725894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7228D4(void *a1, void *a2)
{
  v3 = v2;
  v59 = a2;
  v5 = MEMORY[0x1E69E6F58];
  sub_1AF7277CC(0, &qword_1EB63DDA8, sub_1AF725894, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, MEMORY[0x1E69E6F58]);
  v49 = v6;
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - v7;
  sub_1AF7277CC(0, &qword_1EB63DDB0, sub_1AF7258E8, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v5);
  v9 = v8;
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  sub_1AF7277CC(0, &qword_1EB63DDB8, sub_1AF72593C, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v5);
  v13 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  sub_1AF441150(a1, a1[3]);
  sub_1AF72593C();
  sub_1AFDFF3F8();
  LOBYTE(v56[0]) = 0;
  v46 = v15;
  v47 = v13;
  sub_1AFDFE838();
  v16 = 0;
  v50 = v11;
  v51 = (v53 + 8);
  do
  {
    sub_1AF448018(v58, v58[3]);
    sub_1AF7258E8();
    sub_1AFDFEBC8();
    v17 = [v59 attributes];
    v18 = [v17 objectAtIndexedSubscript_];

    if (v18)
    {
      [v18 bufferIndex];
      LOBYTE(v56[0]) = 0;
      sub_1AFDFE8F8();
      if (v3)
      {

LABEL_16:
        (*v51)(v11, v9);
        (*(v45 + 8))(v46, v47);
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
      }

      [v18 offset];
      LOBYTE(v56[0]) = 1;
      sub_1AFDFE8F8();
      v53 = v18;
      [v18 format];
      v19 = sub_1AF4715F0();
      v21 = v20;
      sub_1AF9A0BAC(1, v19, v20);
      v22 = sub_1AFDFDDB8();
      v24 = v23;

      v25 = sub_1AF701628(1, v19, v21);
      v27 = v26;
      v28 = v9;
      v30 = v29;
      v52 = 0;
      v32 = v31;

      v54 = v22;
      v55 = v24;
      v11 = v50;
      v56[0] = v25;
      v56[1] = v27;
      v56[2] = v30;
      v57 = v32;
      v9 = v28;
      sub_1AF725990();
      sub_1AFDFD0A8();

      LOBYTE(v56[0]) = 2;
      v33 = v52;
      sub_1AFDFE8B8();
      v3 = v33;
      if (v33)
      {

        goto LABEL_16;
      }

      (*v51)(v11, v28);
    }

    else
    {
      (*v51)(v11, v9);
    }

    ++v16;
  }

  while (v16 != 31);
  LOBYTE(v54) = 1;
  sub_1AFDFE838();
  v34 = 0;
  v53 = 0x80000001AFF31DD0;
  v35 = (v44 + 8);
  v36 = v48;
  while (1)
  {
    v37 = v3;
    sub_1AF448018(v56, v57);
    sub_1AF725894();
    sub_1AFDFEBC8();
    v38 = [v59 layouts];
    v39 = [v38 objectAtIndexedSubscript_];

    if (v39)
    {
      break;
    }

    (*v35)(v36, v49);
    v3 = v37;
LABEL_11:
    if (++v34 == 31)
    {
      goto LABEL_18;
    }
  }

  [v39 stride];
  LOBYTE(v54) = 0;
  sub_1AFDFE8F8();
  v3 = v37;
  if (!v37)
  {
    [v39 stepFunction];
    v40 = v49;
    LOBYTE(v54) = 1;
    v41 = v48;
    sub_1AFDFE8B8();

    [v39 stepRate];
    LOBYTE(v54) = 2;
    sub_1AFDFE8F8();
    (*v35)(v41, v40);

    v36 = v41;
    goto LABEL_11;
  }

  (*v35)(v36, v49);
LABEL_18:
  (*(v45 + 8))(v46, v47);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
}

void *sub_1AF7230B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF724798(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1AF7230F8()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1AFDFBBE8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v0 + 96);
  if (v9)
  {
    v25 = v2;
    sub_1AFDFBC38();
    swift_allocObject();
    v10 = v9;
    sub_1AFDFBC28();
    sub_1AF7239F8(0, &unk_1EB63F330, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE4C620;
    sub_1AFDFBBD8();
    sub_1AFDFBBC8();
    v26 = v11;
    sub_1AF723AAC(&unk_1EB63DD30, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
    sub_1AF7239F8(0, &unk_1EB63F340, MEMORY[0x1E69E62F8]);
    sub_1AF6A07D0();
    sub_1AFDFE058();
    sub_1AFDFBBF8();
    v12 = *&v10[OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24];
    os_unfair_lock_lock(v12);
    v26 = v10;
    sub_1AF723A58();
    v13 = v10;
    v14 = sub_1AFDFBC08();
    v16 = v15;

    os_unfair_lock_unlock(v12);

    v17 = [objc_opt_self() defaultManager];
    v18 = [v17 temporaryDirectory];

    sub_1AFDFC0B8();
    sub_1AFDFC088();
    if (v16 >> 60 != 15)
    {
      sub_1AF587E54(v14, v16);
      sub_1AFDFC1D8();
      sub_1AF587E7C(v14, v16);
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1AFDFE218();

    v26 = 0xD000000000000022;
    v27 = 0x80000001AFF31D50;
    sub_1AF723AAC(&qword_1EB632790, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v19 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v21 = v26;
    v20 = v27;
    v22 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v24 = v22;
      swift_once();
      v22 = v24;
    }

    v26 = 0;
    sub_1AF0D4F18(v22, &v26, v21, v20);

    sub_1AF587E7C(v14, v16);
    v23 = *(v25 + 8);
    v23(v4, v1);
    v23(v7, v1);
  }
}

unint64_t sub_1AF723768()
{
  result = qword_1ED726890;
  if (!qword_1ED726890)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7710], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(result, &qword_1ED726890);
  }

  return result;
}

uint64_t sub_1AF7237BC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  sub_1AF723840(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AF723840(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF447DFC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF7238A8(uint64_t a1, uint64_t a2)
{
  sub_1AF45BD00(0, &unk_1ED723240, &type metadata for FunctionConstant);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF72391C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  sub_1AF723840(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF72398C(uint64_t a1)
{
  sub_1AF45BD00(0, &unk_1ED723240, &type metadata for FunctionConstant);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF7239F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFDFBBE8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF723A58()
{
  result = qword_1EB63DD48;
  if (!qword_1EB63DD48)
  {
    result = swift_getWitnessTable(byte_1AFE733AC, &type metadata for ShaderArchive.ShaderArchiveCoder, v0, v1);
    atomic_store(result, &qword_1EB63DD48);
  }

  return result;
}

uint64_t sub_1AF723AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

id sub_1AF723AF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a4 < 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1B2719B40](a1, a2, v10);
    sub_1AF0D4478(0, a5, a6);
    swift_dynamicCast();
    return v17;
  }

  else
  {
    if (a3)
    {
      sub_1AF0D4478(0, a5, a6);
      sub_1AFDFE0E8();
      sub_1AFDFE0F8();
      swift_dynamicCast();
      v12 = sub_1AFDFDC38();
      v13 = ~(-1 << *(a4 + 32));
      do
      {
        v9 = v12 & v13;
        v14 = *(*(a4 + 48) + 8 * (v12 & v13));
        v15 = sub_1AFDFDC48();

        v12 = v9 + 1;
      }

      while ((v15 & 1) == 0);
    }

    v16 = *(*(a4 + 48) + 8 * v9);

    return v16;
  }
}

unint64_t sub_1AF723C74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF723CC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF723D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF723D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xEF7365756C61765FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1AF723E74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFF118();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF723EC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF723F14(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF723F60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF723FAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF723FF8(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = (a1 & 0xC000000000000001) != 0;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1AFC07434(0, v4 & ~(v4 >> 63), 0);
    v5 = v42;
    v6 = v35;
    if (v35)
    {
      v8 = sub_1AFDFE0B8();
    }

    else
    {
      v9 = (v2 + 56);
      v8 = 1 << *(v2 + 32);
      v10 = (v8 + 63) >> 6;
      while (1)
      {
        v12 = *v9++;
        v11 = v12;
        if (v12)
        {
          break;
        }

        v6 -= 64;
        if (!--v10)
        {
          goto LABEL_12;
        }
      }

      v8 = __clz(__rbit64(v11)) - v6;
LABEL_12:
      v7 = *(v2 + 36);
    }

    v13 = 0;
    v39 = v8;
    v40 = v7;
    v33 = v4;
    v41 = v35 != 0;
    v31 = v2 + 64;
    v32 = v2 + 56;
    while (1)
    {
      v36 = v3;
      v37 = v7;
      v14 = v2;
      v15 = sub_1AF723AF4(v8, v7, v3 & 1, v2, &unk_1EB63DE90, 0x1E6974030);
      v42 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      v18 = a2;
      if (v17 >= v16 >> 1)
      {
        sub_1AFC07434(v16 > 1, v17 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v17 + 1;
      v19 = v5 + 16 * v17;
      *(v19 + 32) = v18;
      *(v19 + 40) = v15;
      if (v35)
      {
        v2 = v14;
        if (sub_1AFDFE0D8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v22 = v33;
        sub_1AF725E00(0, &qword_1EB63DE88, &unk_1EB63DE90, 0x1E6974030, &qword_1EB63DA88);
        v23 = sub_1AFDFD7A8();
        sub_1AFDFE148();
        v23(v38, 0);
      }

      else
      {
        v20 = v8 >> 6;
        v2 = v14;
        if ((*(v32 + 8 * (v8 >> 6)) & (-2 << v8)) != 0)
        {
          v21 = __clz(__rbit64(*(v32 + 8 * (v8 >> 6)) & (-2 << v8))) | v8 & 0xFFFFFFFFFFFFFFC0;
          v22 = v33;
        }

        else
        {
          v21 = 1 << *(v14 + 32);
          v24 = v20 << 6;
          v25 = v20 + 1;
          v26 = (v31 + 8 * v20);
          v22 = v33;
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_1AF0FBAE8(v8, v37, v36 & 1);
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_27;
            }
          }

          sub_1AF0FBAE8(v8, v37, v36 & 1);
        }

LABEL_27:
        v29 = *(v2 + 36);
        v39 = v21;
        v40 = v29;
        v41 = 0;
      }

      if (++v13 == v22)
      {
        break;
      }

      v3 = v41;
      v8 = v39;
      v7 = v40;
    }

    sub_1AF0FBAE8(v39, v40, v41);
  }

  return v5;
}

uint64_t sub_1AF72432C(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = (a1 & 0xC000000000000001) != 0;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1AFC07404(0, v4 & ~(v4 >> 63), 0);
    v5 = v42;
    v6 = v35;
    if (v35)
    {
      v8 = sub_1AFDFE0B8();
    }

    else
    {
      v9 = (v2 + 56);
      v8 = 1 << *(v2 + 32);
      v10 = (v8 + 63) >> 6;
      while (1)
      {
        v12 = *v9++;
        v11 = v12;
        if (v12)
        {
          break;
        }

        v6 -= 64;
        if (!--v10)
        {
          goto LABEL_12;
        }
      }

      v8 = __clz(__rbit64(v11)) - v6;
LABEL_12:
      v7 = *(v2 + 36);
    }

    v13 = 0;
    v39 = v8;
    v40 = v7;
    v33 = v4;
    v41 = v35 != 0;
    v31 = v2 + 64;
    v32 = v2 + 56;
    while (1)
    {
      v36 = v3;
      v37 = v7;
      v14 = v2;
      v15 = sub_1AF723AF4(v8, v7, v3 & 1, v2, &qword_1EB63DAC0, 0x1E6974148);
      v42 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      v18 = a2;
      if (v17 >= v16 >> 1)
      {
        sub_1AFC07404(v16 > 1, v17 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v17 + 1;
      v19 = v5 + 16 * v17;
      *(v19 + 32) = v18;
      *(v19 + 40) = v15;
      if (v35)
      {
        v2 = v14;
        if (sub_1AFDFE0D8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v22 = v33;
        sub_1AF725E00(0, &qword_1EB63DE80, &qword_1EB63DAC0, 0x1E6974148, &qword_1EB63DAD0);
        v23 = sub_1AFDFD7A8();
        sub_1AFDFE148();
        v23(v38, 0);
      }

      else
      {
        v20 = v8 >> 6;
        v2 = v14;
        if ((*(v32 + 8 * (v8 >> 6)) & (-2 << v8)) != 0)
        {
          v21 = __clz(__rbit64(*(v32 + 8 * (v8 >> 6)) & (-2 << v8))) | v8 & 0xFFFFFFFFFFFFFFC0;
          v22 = v33;
        }

        else
        {
          v21 = 1 << *(v14 + 32);
          v24 = v20 << 6;
          v25 = v20 + 1;
          v26 = (v31 + 8 * v20);
          v22 = v33;
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_1AF0FBAE8(v8, v37, v36 & 1);
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_27;
            }
          }

          sub_1AF0FBAE8(v8, v37, v36 & 1);
        }

LABEL_27:
        v29 = *(v2 + 36);
        v39 = v21;
        v40 = v29;
        v41 = 0;
      }

      if (++v13 == v22)
      {
        break;
      }

      v3 = v41;
      v8 = v39;
      v7 = v40;
    }

    sub_1AF0FBAE8(v39, v40, v41);
  }

  return v5;
}

unint64_t sub_1AF724694()
{
  result = qword_1EB63DD58;
  if (!qword_1EB63DD58)
  {
    result = swift_getWitnessTable(byte_1AFE73384, &type metadata for ShaderArchive.Library.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD58);
  }

  return result;
}

unint64_t sub_1AF7246EC()
{
  result = qword_1EB63DD60;
  if (!qword_1EB63DD60)
  {
    result = swift_getWitnessTable(byte_1AFE732F4, &type metadata for ShaderArchive.Library.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD60);
  }

  return result;
}

unint64_t sub_1AF724744()
{
  result = qword_1EB63DD68;
  if (!qword_1EB63DD68)
  {
    result = swift_getWitnessTable(byte_1AFE7331C, &type metadata for ShaderArchive.Library.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD68);
  }

  return result;
}

void *sub_1AF724798(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1AF7277CC(0, &qword_1EB63DD70, sub_1AF725894, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, MEMORY[0x1E69E6F48]);
  v97 = v3;
  v106 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v90 - v4;
  sub_1AF7277CC(0, &qword_1EB63DD80, sub_1AF7258E8, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v2);
  v6 = v5;
  v104 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v90 - v7;
  sub_1AF7277CC(0, &qword_1EB63DD90, sub_1AF72593C, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v2);
  v10 = v9;
  v100 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v90 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF72593C();
  v13 = v112;
  sub_1AFDFF3B8();
  v105 = v13;
  if (v13)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v10;
  }

  v14 = v104;
  v15 = a1;
  v98 = v8;
  v99 = v6;
  v16 = v10;
  v10 = [objc_allocWithZone(MEMORY[0x1E69741E0]) init];
  LOBYTE(v107[0]) = 0;
  v17 = v105;
  sub_1AFDFE658();
  v105 = v17;
  if (v17)
  {
    (*(v100 + 8))(v12, v16);
    goto LABEL_19;
  }

  v92 = v12;
  v91 = v16;
  v18 = 0;
  v94 = (v14 + 8);
  v93 = v15;
  v96 = v10;
  do
  {
    v30 = v18;
    sub_1AF448018(v111, v111[3]);
    sub_1AF7258E8();
    v31 = v105;
    sub_1AFDFEA38();
    if (v31)
    {
      v105 = v31;
      (*(v100 + 8))(v92, v91);
LABEL_18:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
      goto LABEL_19;
    }

    LOBYTE(v107[0]) = 0;
    v32 = sub_1AFDFE748();
    LOBYTE(v107[0]) = 1;
    v33 = sub_1AFDFE748();
    LOBYTE(v107[0]) = 2;
    v34 = sub_1AFDFE708();
    v105 = 0;
    v35 = v34;
    v37 = v36;
    v101 = v32;
    v102 = v33;
    v38 = 0;
    v103 = (v30 + 1);
    v104 = v30;
    do
    {
      v112 = v38;
      sub_1AF4715F0();
      sub_1AFDFD078();
      sub_1AFDFD1F8();
      v39 = sub_1AFDFDDB8();
      v41 = v40;

      sub_1AFDFD078();
      v42 = sub_1AFDFD1F8();
      v44 = v43;
      v46 = v45;
      v47 = v35;
      v48 = v37;
      v50 = v49;

      v109 = v39;
      v110 = v41;
      v107[0] = v42;
      v107[1] = v44;
      v107[2] = v46;
      v108 = v50;
      sub_1AF725990();
      sub_1AFDFD0A8();
      v37 = v48;
      v35 = v47;

      if (v109 == v47 && v110 == v37)
      {

        v19 = v106;
LABEL_7:
        v18 = v103;
        v20 = v104;
        v21 = v112;
        goto LABEL_8;
      }

      v51 = sub_1AFDFEE28();

      v19 = v106;
      if (v51)
      {
        goto LABEL_7;
      }

      v38 = v112 + 1;
    }

    while (v112 != 55);
    v21 = 0;
    v18 = v103;
    v20 = v104;
LABEL_8:

    v10 = v96;
    v22 = [v96 attributes];
    v23 = [objc_allocWithZone(MEMORY[0x1E69741D0]) init];
    [v22 setObject:v23 atIndexedSubscript:v20];

    v24 = [v10 attributes];
    v25 = [v24 objectAtIndexedSubscript_];

    [v25 setBufferIndex_];
    v26 = [v10 attributes];
    v27 = [v26 objectAtIndexedSubscript_];

    [v27 setOffset_];
    v28 = [v10 attributes];
    v29 = [v28 objectAtIndexedSubscript_];

    [v29 setFormat_];
    (*v94)(v98, v99);
    v15 = v93;
  }

  while (v18 != 31);
  LOBYTE(v109) = 1;
  v53 = v91;
  v54 = v92;
  v55 = v105;
  sub_1AFDFE658();
  v105 = v55;
  if (v55)
  {
    (*(v100 + 8))(v54, v53);
    goto LABEL_18;
  }

  v56 = 0;
  v102 = 0x80000001AFF31DD0;
  v103 = (v19 + 8);
  while (1)
  {
    sub_1AF448018(v107, v108);
    sub_1AF725894();
    v57 = v105;
    sub_1AFDFEA38();
    if (v57)
    {
      break;
    }

    LOBYTE(v109) = 0;
    v58 = sub_1AFDFE748();
    LOBYTE(v109) = 1;
    v60 = sub_1AFDFE708();
    v61 = v59;
    if (qword_1F2500618 <= 1)
    {
      if (qword_1F2500618)
      {
        if (qword_1F2500618 != 1)
        {
LABEL_36:
          v63 = 0xE200000000000000;
          v62 = 16718;
          goto LABEL_37;
        }

        v62 = 0x6574726556726550;
        v63 = 0xE900000000000078;
      }

      else
      {
        v63 = 0xE800000000000000;
        v62 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500618)
      {
        case 2:
          v62 = 0x6174736E49726550;
          v63 = 0xEB0000000065636ELL;
          break;
        case 3:
          v63 = 0xE800000000000000;
          v62 = 0x6863746150726550;
          break;
        case 4:
          v62 = 0xD000000000000014;
          v63 = v102;
          break;
        default:
          goto LABEL_36;
      }
    }

LABEL_37:
    v112 = v58;
    if (v62 == v60 && v63 == v59)
    {
      v64 = 0;
      goto LABEL_40;
    }

    v66 = sub_1AFDFEE28();

    if (v66)
    {
      v64 = 0;
LABEL_43:
      v65 = v97;
      goto LABEL_44;
    }

    if (qword_1F2500620 <= 1)
    {
      if (qword_1F2500620)
      {
        if (qword_1F2500620 != 1)
        {
LABEL_57:
          v79 = 0xE200000000000000;
          v78 = 16718;
          goto LABEL_58;
        }

        v78 = 0x6574726556726550;
        v79 = 0xE900000000000078;
      }

      else
      {
        v79 = 0xE800000000000000;
        v78 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500620)
      {
        case 2:
          v78 = 0x6174736E49726550;
          v79 = 0xEB0000000065636ELL;
          break;
        case 3:
          v79 = 0xE800000000000000;
          v78 = 0x6863746150726550;
          break;
        case 4:
          v78 = 0xD000000000000014;
          v79 = v102;
          break;
        default:
          goto LABEL_57;
      }
    }

LABEL_58:
    if (v78 == v60 && v79 == v61)
    {
      v64 = 1;
      goto LABEL_40;
    }

    v80 = sub_1AFDFEE28();

    if (v80)
    {
      v64 = 1;
      goto LABEL_43;
    }

    if (qword_1F2500628 <= 1)
    {
      if (qword_1F2500628)
      {
        if (qword_1F2500628 != 1)
        {
LABEL_74:
          v82 = 0xE200000000000000;
          v81 = 16718;
          goto LABEL_75;
        }

        v81 = 0x6574726556726550;
        v82 = 0xE900000000000078;
      }

      else
      {
        v82 = 0xE800000000000000;
        v81 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500628)
      {
        case 2:
          v81 = 0x6174736E49726550;
          v82 = 0xEB0000000065636ELL;
          break;
        case 3:
          v82 = 0xE800000000000000;
          v81 = 0x6863746150726550;
          break;
        case 4:
          v81 = 0xD000000000000014;
          v82 = v102;
          break;
        default:
          goto LABEL_74;
      }
    }

LABEL_75:
    if (v81 == v60 && v82 == v61)
    {
      v64 = 2;
      goto LABEL_40;
    }

    v83 = sub_1AFDFEE28();

    if (v83)
    {
      v64 = 2;
      goto LABEL_43;
    }

    if (qword_1F2500630 <= 1)
    {
      if (qword_1F2500630)
      {
        if (qword_1F2500630 != 1)
        {
LABEL_91:
          v85 = 0xE200000000000000;
          v84 = 16718;
          goto LABEL_92;
        }

        v84 = 0x6574726556726550;
        v85 = 0xE900000000000078;
      }

      else
      {
        v85 = 0xE800000000000000;
        v84 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500630)
      {
        case 2:
          v84 = 0x6174736E49726550;
          v85 = 0xEB0000000065636ELL;
          break;
        case 3:
          v85 = 0xE800000000000000;
          v84 = 0x6863746150726550;
          break;
        case 4:
          v84 = 0xD000000000000014;
          v85 = v102;
          break;
        default:
          goto LABEL_91;
      }
    }

LABEL_92:
    if (v84 == v60 && v85 == v61)
    {
      v64 = 3;
      goto LABEL_40;
    }

    v86 = sub_1AFDFEE28();

    if (v86)
    {
      v64 = 3;
      goto LABEL_43;
    }

    if (qword_1F2500638 <= 1)
    {
      if (!qword_1F2500638)
      {
        v88 = 0xE800000000000000;
        v87 = 0x746E6174736E6F43;
        goto LABEL_109;
      }

      if (qword_1F2500638 == 1)
      {
        v87 = 0x6574726556726550;
        v88 = 0xE900000000000078;
        goto LABEL_109;
      }
    }

    else
    {
      switch(qword_1F2500638)
      {
        case 2:
          v87 = 0x6174736E49726550;
          v88 = 0xEB0000000065636ELL;
          goto LABEL_109;
        case 3:
          v88 = 0xE800000000000000;
          v87 = 0x6863746150726550;
          goto LABEL_109;
        case 4:
          v87 = 0xD000000000000014;
          v88 = v102;
          goto LABEL_109;
      }
    }

    v88 = 0xE200000000000000;
    v87 = 16718;
LABEL_109:
    if (v87 != v60 || v88 != v61)
    {
      v89 = sub_1AFDFEE28();

      if (v89)
      {
        v64 = 4;
      }

      else
      {
        v64 = 0;
      }

      goto LABEL_43;
    }

    v64 = 4;
LABEL_40:

    v65 = v97;
LABEL_44:

    LOBYTE(v109) = 2;
    v67 = v95;
    v68 = sub_1AFDFE748();
    v105 = 0;
    v69 = v68;
    v106 = v56 + 1;
    v104 = v64;
    v10 = v96;
    v70 = [v96 layouts];
    v71 = [objc_allocWithZone(MEMORY[0x1E69741D8]) init];
    [v70 setObject:v71 atIndexedSubscript:v56];

    v72 = [v10 layouts];
    v73 = [v72 objectAtIndexedSubscript_];

    [v73 setStride_];
    v74 = [v10 layouts];
    v75 = [v74 objectAtIndexedSubscript_];

    [v75 setStepFunction_];
    v76 = [v10 layouts];
    v77 = [v76 objectAtIndexedSubscript_];

    [v77 setStepRate_];
    (*v103)(v67, v65);
    v56 = v106;
    if (v106 == 31)
    {
      (*(v100 + 8))(v92, v91);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v107);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v93);
      return v10;
    }
  }

  v105 = v57;
  (*(v100 + 8))(v92, v91);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v107);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v111);
  v15 = v93;
LABEL_19:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);

  return v10;
}

unint64_t sub_1AF725894()
{
  result = qword_1EB63DD78;
  if (!qword_1EB63DD78)
  {
    result = swift_getWitnessTable(byte_1AFE73F1C, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD78);
  }

  return result;
}

unint64_t sub_1AF7258E8()
{
  result = qword_1EB63DD88;
  if (!qword_1EB63DD88)
  {
    result = swift_getWitnessTable(byte_1AFE73ECC, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD88);
  }

  return result;
}

unint64_t sub_1AF72593C()
{
  result = qword_1EB63DD98;
  if (!qword_1EB63DD98)
  {
    result = swift_getWitnessTable(aC_11, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DD98);
  }

  return result;
}

unint64_t sub_1AF725990()
{
  result = qword_1ED7232B0;
  if (!qword_1ED7232B0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67D0], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &qword_1ED7232B0);
  }

  return result;
}

unint64_t sub_1AF7259E4()
{
  result = qword_1EB63DDC8;
  if (!qword_1EB63DDC8)
  {
    result = swift_getWitnessTable(byte_1AFE73E2C, &type metadata for ShaderArchive.ShaderArchiveCoder.PipelineCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DDC8);
  }

  return result;
}

unint64_t sub_1AF725A38()
{
  result = qword_1EB63DDD8;
  if (!qword_1EB63DDD8)
  {
    result = swift_getWitnessTable(byte_1AFE73DDC, &type metadata for ShaderArchive.ShaderArchiveCoder.FunctionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DDD8);
  }

  return result;
}

unint64_t sub_1AF725A8C()
{
  result = qword_1EB63DDE8;
  if (!qword_1EB63DDE8)
  {
    result = swift_getWitnessTable(aD_16, &type metadata for ShaderArchive.ShaderArchiveCoder.LibrariesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DDE8);
  }

  return result;
}

unint64_t sub_1AF725AE0()
{
  result = qword_1EB63DDF8;
  if (!qword_1EB63DDF8)
  {
    result = swift_getWitnessTable(aD_15, &type metadata for ShaderArchive.ShaderArchiveCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DDF8);
  }

  return result;
}

unint64_t sub_1AF725B34()
{
  result = qword_1EB63DE10;
  if (!qword_1EB63DE10)
  {
    v5[3] = v0;
    v5[4] = v1;
    sub_1AF7277CC(255, &unk_1EB63DE00, sub_1AF719808, &type metadata for ShaderArchive.Library, MEMORY[0x1E69E64E8]);
    v4 = v3;
    v5[0] = sub_1AF725BE4();
    result = swift_getWitnessTable(MEMORY[0x1E69E64F0], v4, v5);
    atomic_store(result, &qword_1EB63DE10);
  }

  return result;
}

unint64_t sub_1AF725BE4()
{
  result = qword_1EB63DE18;
  if (!qword_1EB63DE18)
  {
    result = swift_getWitnessTable(byte_1AFE73240, &type metadata for ShaderArchive.Library, v0, v1);
    atomic_store(result, &qword_1EB63DE18);
  }

  return result;
}

uint64_t sub_1AF725C38(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF45BD00(255, a2, a3);
    v8 = v7;
    v9 = a4();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF725CB0()
{
  result = qword_1EB63DE30;
  if (!qword_1EB63DE30)
  {
    result = swift_getWitnessTable(aEn_0, &type metadata for ShaderArchive.SpecializedFunctionCoder, v0, v1);
    atomic_store(result, &qword_1EB63DE30);
  }

  return result;
}

unint64_t sub_1AF725D04()
{
  result = qword_1EB63DE48;
  if (!qword_1EB63DE48)
  {
    result = swift_getWitnessTable(aMn_0, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder, v0, v1);
    atomic_store(result, &qword_1EB63DE48);
  }

  return result;
}

unint64_t sub_1AF725D58()
{
  result = qword_1EB63DE60;
  if (!qword_1EB63DE60)
  {
    result = swift_getWitnessTable(byte_1AFE73CC4, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder, v0, v1);
    atomic_store(result, &qword_1EB63DE60);
  }

  return result;
}

unint64_t sub_1AF725DAC()
{
  result = qword_1EB63DE78;
  if (!qword_1EB63DE78)
  {
    result = swift_getWitnessTable(byte_1AFE73C9C, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder, v0, v1);
    atomic_store(result, &qword_1EB63DE78);
  }

  return result;
}

void sub_1AF725E00(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3, a4);
    sub_1AF43BD80(a5, a3, a4);
    v9 = sub_1AFDFD7B8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF725E8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FunctionConstant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_1AF725E8C(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  return a1;
}

uint64_t assignWithCopy for FunctionConstant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_1AF725E8C(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  sub_1AF4456D0(v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  *(a1 + 48) = v10;
  return a1;
}

__n128 initializeWithTake for FunctionConstant(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for FunctionConstant(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_1AF4456D0(v5, v6, v7);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for FunctionConstant(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for FunctionConstant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double destroy for ShaderArchive.MTLLinkedFunctionDescriptorCoder(id *a1)
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t assignWithCopy for ShaderArchive.MTLLinkedFunctionDescriptorCoder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

id *assignWithTake for ShaderArchive.MTLLinkedFunctionDescriptorCoder(id *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t destroy for ShaderArchive.SpecializedFunctionCoder(void *a1)
{
}

void *initializeWithCopy for ShaderArchive.SpecializedFunctionCoder(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for ShaderArchive.SpecializedFunctionCoder(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

void *assignWithTake for ShaderArchive.SpecializedFunctionCoder(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);

  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for FunctionDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for FunctionDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF72647C()
{
  result = qword_1EB63DEA0;
  if (!qword_1EB63DEA0)
  {
    result = swift_getWitnessTable(byte_1AFE736AC, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEA0);
  }

  return result;
}

unint64_t sub_1AF7264D4()
{
  result = qword_1EB63DEA8;
  if (!qword_1EB63DEA8)
  {
    result = swift_getWitnessTable(byte_1AFE7379C, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEA8);
  }

  return result;
}

unint64_t sub_1AF72652C()
{
  result = qword_1EB63DEB0;
  if (!qword_1EB63DEB0)
  {
    result = swift_getWitnessTable(byte_1AFE7388C, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEB0);
  }

  return result;
}

unint64_t sub_1AF726584()
{
  result = qword_1EB63DEB8;
  if (!qword_1EB63DEB8)
  {
    result = swift_getWitnessTable(byte_1AFE7397C, &type metadata for ShaderArchive.ShaderArchiveCoder.PipelineCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEB8);
  }

  return result;
}

unint64_t sub_1AF7265DC()
{
  result = qword_1EB63DEC0;
  if (!qword_1EB63DEC0)
  {
    result = swift_getWitnessTable(byte_1AFE73A6C, &type metadata for ShaderArchive.ShaderArchiveCoder.FunctionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEC0);
  }

  return result;
}

unint64_t sub_1AF726634()
{
  result = qword_1EB63DEC8;
  if (!qword_1EB63DEC8)
  {
    result = swift_getWitnessTable(byte_1AFE73B5C, &type metadata for ShaderArchive.ShaderArchiveCoder.LibrariesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEC8);
  }

  return result;
}

unint64_t sub_1AF72668C()
{
  result = qword_1EB63DED0;
  if (!qword_1EB63DED0)
  {
    result = swift_getWitnessTable(byte_1AFE73C4C, &type metadata for ShaderArchive.ShaderArchiveCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DED0);
  }

  return result;
}

unint64_t sub_1AF7266E4()
{
  result = qword_1EB63DED8;
  if (!qword_1EB63DED8)
  {
    result = swift_getWitnessTable(aM_29, &type metadata for ShaderArchive.ShaderArchiveCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DED8);
  }

  return result;
}

unint64_t sub_1AF72673C()
{
  result = qword_1EB63DEE0;
  if (!qword_1EB63DEE0)
  {
    result = swift_getWitnessTable(byte_1AFE73BAC, &type metadata for ShaderArchive.ShaderArchiveCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEE0);
  }

  return result;
}

unint64_t sub_1AF726794()
{
  result = qword_1EB63DEE8;
  if (!qword_1EB63DEE8)
  {
    result = swift_getWitnessTable(asc_1AFE73A94, &type metadata for ShaderArchive.ShaderArchiveCoder.LibrariesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEE8);
  }

  return result;
}

unint64_t sub_1AF7267EC()
{
  result = qword_1EB63DEF0;
  if (!qword_1EB63DEF0)
  {
    result = swift_getWitnessTable(aU_33, &type metadata for ShaderArchive.ShaderArchiveCoder.LibrariesCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEF0);
  }

  return result;
}

unint64_t sub_1AF726844()
{
  result = qword_1EB63DEF8;
  if (!qword_1EB63DEF8)
  {
    result = swift_getWitnessTable(aMa, &type metadata for ShaderArchive.ShaderArchiveCoder.FunctionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DEF8);
  }

  return result;
}

unint64_t sub_1AF72689C()
{
  result = qword_1EB63DF00;
  if (!qword_1EB63DF00)
  {
    result = swift_getWitnessTable(aE_28, &type metadata for ShaderArchive.ShaderArchiveCoder.FunctionsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF00);
  }

  return result;
}

unint64_t sub_1AF7268F4()
{
  result = qword_1EB63DF08;
  if (!qword_1EB63DF08)
  {
    result = swift_getWitnessTable(aB_8, &type metadata for ShaderArchive.ShaderArchiveCoder.PipelineCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF08);
  }

  return result;
}

unint64_t sub_1AF72694C()
{
  result = qword_1EB63DF10;
  if (!qword_1EB63DF10)
  {
    result = swift_getWitnessTable(aU_34, &type metadata for ShaderArchive.ShaderArchiveCoder.PipelineCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF10);
  }

  return result;
}

unint64_t sub_1AF7269A4()
{
  result = qword_1EB63DF18;
  if (!qword_1EB63DF18)
  {
    result = swift_getWitnessTable(aC_12, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF18);
  }

  return result;
}

unint64_t sub_1AF7269FC()
{
  result = qword_1EB63DF20;
  if (!qword_1EB63DF20)
  {
    result = swift_getWitnessTable(aE_29, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF20);
  }

  return result;
}

unint64_t sub_1AF726A54()
{
  result = qword_1EB63DF28;
  if (!qword_1EB63DF28)
  {
    result = swift_getWitnessTable(byte_1AFE736D4, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF28);
  }

  return result;
}

unint64_t sub_1AF726AAC()
{
  result = qword_1EB63DF30;
  if (!qword_1EB63DF30)
  {
    result = swift_getWitnessTable(a5_15, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF30);
  }

  return result;
}

unint64_t sub_1AF726B04()
{
  result = qword_1EB63DF38;
  if (!qword_1EB63DF38)
  {
    result = swift_getWitnessTable(aE_30, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF38);
  }

  return result;
}

unint64_t sub_1AF726B5C()
{
  result = qword_1EB63DF40;
  if (!qword_1EB63DF40)
  {
    result = swift_getWitnessTable(aA_42, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF40);
  }

  return result;
}

unint64_t sub_1AF726BB0()
{
  result = qword_1EB63DF50;
  if (!qword_1EB63DF50)
  {
    result = swift_getWitnessTable(byte_1AFE74720, &type metadata for ShaderArchive.SpecializedFunctionCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF50);
  }

  return result;
}

unint64_t sub_1AF726C04()
{
  result = qword_1EB63DF68;
  if (!qword_1EB63DF68)
  {
    result = swift_getWitnessTable(byte_1AFE73C74, &type metadata for ShaderArchive.FunctionConstantCoder, v0, v1);
    atomic_store(result, &qword_1EB63DF68);
  }

  return result;
}

unint64_t sub_1AF726C58()
{
  result = qword_1EB63DF78;
  if (!qword_1EB63DF78)
  {
    result = swift_getWitnessTable(byte_1AFE746D0, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF78);
  }

  return result;
}

unint64_t sub_1AF726CAC()
{
  result = qword_1EB63DF88;
  if (!qword_1EB63DF88)
  {
    result = swift_getWitnessTable(a9_22, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DF88);
  }

  return result;
}

unint64_t sub_1AF726D00()
{
  result = qword_1EB63DF90;
  if (!qword_1EB63DF90)
  {
    result = swift_getWitnessTable(byte_1AFE74658, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder, v0, v1);
    atomic_store(result, &qword_1EB63DF90);
  }

  return result;
}

unint64_t sub_1AF726D54()
{
  result = qword_1EB63DF98;
  if (!qword_1EB63DF98)
  {
    result = swift_getWitnessTable(aE_27, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder, v0, v1);
    atomic_store(result, &qword_1EB63DF98);
  }

  return result;
}

unint64_t sub_1AF726DA8()
{
  result = qword_1EB63DFB8;
  if (!qword_1EB63DFB8)
  {
    result = swift_getWitnessTable(byte_1AFE745E0, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DFB8);
  }

  return result;
}

unint64_t sub_1AF726DFC()
{
  result = qword_1EB63DFC8;
  if (!qword_1EB63DFC8)
  {
    result = swift_getWitnessTable(asc_1AFE74590, &type metadata for ShaderArchive.FunctionConstantCoder.ValueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DFC8);
  }

  return result;
}

unint64_t sub_1AF726E50()
{
  result = qword_1EB63DFD8;
  if (!qword_1EB63DFD8)
  {
    result = swift_getWitnessTable(aY_49, &type metadata for ShaderArchive.FunctionConstantCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63DFD8);
  }

  return result;
}

uint64_t sub_1AF726EA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF7277CC(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF7270CC()
{
  result = qword_1EB63E030;
  if (!qword_1EB63E030)
  {
    result = swift_getWitnessTable(byte_1AFE74068, &type metadata for ShaderArchive.SpecializedFunctionCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E030);
  }

  return result;
}

unint64_t sub_1AF727124()
{
  result = qword_1EB63E038;
  if (!qword_1EB63E038)
  {
    result = swift_getWitnessTable(byte_1AFE74158, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E038);
  }

  return result;
}

unint64_t sub_1AF72717C()
{
  result = qword_1EB63E040;
  if (!qword_1EB63E040)
  {
    result = swift_getWitnessTable(byte_1AFE74248, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E040);
  }

  return result;
}

unint64_t sub_1AF7271D4()
{
  result = qword_1EB63E048;
  if (!qword_1EB63E048)
  {
    result = swift_getWitnessTable(byte_1AFE74338, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E048);
  }

  return result;
}

unint64_t sub_1AF72722C()
{
  result = qword_1EB63E050;
  if (!qword_1EB63E050)
  {
    result = swift_getWitnessTable(aJ_1, &type metadata for ShaderArchive.FunctionConstantCoder.ValueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E050);
  }

  return result;
}

unint64_t sub_1AF727284()
{
  result = qword_1EB63E058;
  if (!qword_1EB63E058)
  {
    result = swift_getWitnessTable(a1i, &type metadata for ShaderArchive.FunctionConstantCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E058);
  }

  return result;
}

unint64_t sub_1AF7272DC()
{
  result = qword_1EB63E060;
  if (!qword_1EB63E060)
  {
    result = swift_getWitnessTable(byte_1AFE74450, &type metadata for ShaderArchive.FunctionConstantCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E060);
  }

  return result;
}

unint64_t sub_1AF727334()
{
  result = qword_1EB63E068;
  if (!qword_1EB63E068)
  {
    result = swift_getWitnessTable(byte_1AFE74478, &type metadata for ShaderArchive.FunctionConstantCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E068);
  }

  return result;
}

unint64_t sub_1AF72738C()
{
  result = qword_1EB63E070;
  if (!qword_1EB63E070)
  {
    result = swift_getWitnessTable(byte_1AFE74360, &type metadata for ShaderArchive.FunctionConstantCoder.ValueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E070);
  }

  return result;
}

unint64_t sub_1AF7273E4()
{
  result = qword_1EB63E078;
  if (!qword_1EB63E078)
  {
    result = swift_getWitnessTable(byte_1AFE74388, &type metadata for ShaderArchive.FunctionConstantCoder.ValueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E078);
  }

  return result;
}

unint64_t sub_1AF72743C()
{
  result = qword_1EB63E080;
  if (!qword_1EB63E080)
  {
    result = swift_getWitnessTable(byte_1AFE74270, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E080);
  }

  return result;
}

unint64_t sub_1AF727494()
{
  result = qword_1EB63E088;
  if (!qword_1EB63E088)
  {
    result = swift_getWitnessTable(byte_1AFE74298, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E088);
  }

  return result;
}

unint64_t sub_1AF7274EC()
{
  result = qword_1EB63E090;
  if (!qword_1EB63E090)
  {
    result = swift_getWitnessTable(aQy, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E090);
  }

  return result;
}

unint64_t sub_1AF727544()
{
  result = qword_1EB63E098;
  if (!qword_1EB63E098)
  {
    result = swift_getWitnessTable(byte_1AFE741A8, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E098);
  }

  return result;
}

unint64_t sub_1AF72759C()
{
  result = qword_1EB63E0A0;
  if (!qword_1EB63E0A0)
  {
    result = swift_getWitnessTable(aAz, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0A0);
  }

  return result;
}

unint64_t sub_1AF7275F4()
{
  result = qword_1EB63E0A8;
  if (!qword_1EB63E0A8)
  {
    result = swift_getWitnessTable(aYv_0, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0A8);
  }

  return result;
}

unint64_t sub_1AF72764C()
{
  result = qword_1EB63E0B0;
  if (!qword_1EB63E0B0)
  {
    result = swift_getWitnessTable(byte_1AFE73FD8, &type metadata for ShaderArchive.SpecializedFunctionCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0B0);
  }

  return result;
}

unint64_t sub_1AF7276A4()
{
  result = qword_1EB63E0B8;
  if (!qword_1EB63E0B8)
  {
    result = swift_getWitnessTable(a1w_0, &type metadata for ShaderArchive.SpecializedFunctionCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0B8);
  }

  return result;
}

unint64_t sub_1AF7276F8()
{
  result = qword_1EB63E0C8;
  if (!qword_1EB63E0C8)
  {
    result = swift_getWitnessTable(byte_1AFE749A0, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0C8);
  }

  return result;
}

unint64_t sub_1AF72774C()
{
  result = qword_1EB639870;
  if (!qword_1EB639870)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AF45BD00(255, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    v4[0] = MEMORY[0x1E69E6160];
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EB639870);
  }

  return result;
}

void sub_1AF7277CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF727834()
{
  result = qword_1EB63E0D8;
  if (!qword_1EB63E0D8)
  {
    result = swift_getWitnessTable(aIx, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0D8);
  }

  return result;
}

unint64_t sub_1AF7278AC()
{
  result = qword_1EB63E0E0;
  if (!qword_1EB63E0E0)
  {
    result = swift_getWitnessTable(byte_1AFE74838, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0E0);
  }

  return result;
}

unint64_t sub_1AF727904()
{
  result = qword_1EB63E0E8;
  if (!qword_1EB63E0E8)
  {
    result = swift_getWitnessTable(aE_31, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0E8);
  }

  return result;
}

unint64_t sub_1AF72795C()
{
  result = qword_1EB63E0F0;
  if (!qword_1EB63E0F0)
  {
    result = swift_getWitnessTable(byte_1AFE74860, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0F0);
  }

  return result;
}

unint64_t sub_1AF7279B4()
{
  result = qword_1EB63E0F8;
  if (!qword_1EB63E0F8)
  {
    result = swift_getWitnessTable(byte_1AFE74888, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E0F8);
  }

  return result;
}

unint64_t sub_1AF727A0C()
{
  result = qword_1EB63E100;
  if (!qword_1EB63E100)
  {
    result = swift_getWitnessTable(byte_1AFE74770, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E100);
  }

  return result;
}

unint64_t sub_1AF727A64()
{
  result = qword_1EB63E108;
  if (!qword_1EB63E108)
  {
    result = swift_getWitnessTable(byte_1AFE74798, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63E108);
  }

  return result;
}

void sub_1AF727AD4(uint64_t (*a1)(void *)@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v15 = a1;
  v5 = *(a3 + 16);
  if (v5)
  {
    v13 = a4;
    v6 = (a3 + 64);
    while (1)
    {
      v8 = *(v6 - 4);
      v7 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v14[0] = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      swift_unknownObjectRetain();

      v12 = v15(v14);
      if (v4)
      {
        break;
      }

      if (v12)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
      v6 += 5;
      if (!--v5)
      {
        v8 = 0;
        v7 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a4 = v13;
        goto LABEL_9;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a4 = v8;
    a4[1] = v7;
    a4[2] = v9;
    a4[3] = v10;
    a4[4] = v11;
  }
}

uint64_t sub_1AF727C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1AF0D4320(a3, v25 - v11, &qword_1ED726C10, v9);
  v13 = sub_1AFDFD668();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_1AF0D438C(v12, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1AFDFD658();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AFDFD5B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AFDFCFB8();

      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19 + 32;
      v23 = swift_task_create();
      sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AF727F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_1AF0D4320(a3, v25 - v11, &qword_1ED726C10, v9);
  v13 = sub_1AFDFD668();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_1AF0D438C(v12, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1AFDFD658();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1AFDFD5B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1AFDFCFB8();

      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19 + 32;
      v23 = swift_task_create();
      sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1AF728260()
{
  sub_1AF0D4E74(0);
  v99 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v98 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1AFDFC298();
  v101 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1AFDFCB28();
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v81 - v6;
  v7 = sub_1AFDFCA68();
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E7CC0];
  sub_1AF43ED8C(MEMORY[0x1E69E7CC0]);
  sub_1AF43ED8C(v10);
  v95 = v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v11 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v11);

  v13 = sub_1AF73F4F8(v12);

  v100 = v0;

  v84 = sub_1AF73F7D4(v14);

  v15 = v9;
  os_unfair_lock_unlock(v11);
  *v9 = 10;
  v16 = *MEMORY[0x1E69E7F48];
  v17 = *(v82 + 104);
  v81 = v7;
  v18 = v7;
  v19 = v13;
  v17(v9, v16, v18);
  v20 = 1 << *(v13 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v13 + 64);
  v23 = (v20 + 63) >> 6;
  ++v102;
  v83 = "Failed compiling ";
  v93 = (v101 + 32);
  v94 = " renderPipeline hash";

  v24 = 0;
  v92 = xmmword_1AFE431C0;
  v91 = xmmword_1AFE749F0;
  v106 = v15;
  v85 = v13;
  for (i = v23; v22; v23 = i)
  {
LABEL_9:
    while (1)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = (v24 << 9) | (8 * v26);
      v28 = *(v19 + 56);
      v101 = *(*(v19 + 48) + v27);
      v29 = *(v28 + v27);
      v30 = v104;
      sub_1AFDFCB18();
      v31 = v103;
      MEMORY[0x1B2718560](v30, v106);
      v32 = *v102;
      v33 = v105;
      (*v102)(v30, v105);
      sub_1AFDFDA98();
      v32(v31, v33);
      if (sub_1AFDFCA78())
      {
        break;
      }

      v23 = i;
      if (!v22)
      {
        goto LABEL_6;
      }
    }

    v88 = *(v95 + 24);
    v89 = v29;
    os_unfair_lock_lock(v88);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000024, v83 | 0x8000000000000000);
    *&v108 = v101;
    v34 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v34);

    MEMORY[0x1B2718AE0](0xD000000000000014, v94 | 0x8000000000000000);
    v35 = v112[0];
    v36 = v112[1];
    v37 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    v38 = qword_1ED73B890;
    sub_1AF6EFB60(0);
    v39 = swift_allocObject();
    *(v39 + 16) = v92;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1AF0D544C();
    *(v39 + 32) = v35;
    *(v39 + 40) = v36;

    sub_1AFDFC4C8(v37, &dword_1AF0CE000, v38, "%{public}s", 10, 2, v39);

    v87 = v35;
    v40 = v96;
    sub_1AFDFC288();
    v41 = v98;
    v42 = v99[12];
    v86 = v99[16];
    v43 = v37;
    v44 = v36;
    v45 = &v98[v99[20]];
    (*v93)(v98, v40, v97);
    *(v41 + v42) = v43;
    v46 = v87;
    *(v41 + v86) = 0;
    *v45 = v46;
    *(v45 + 1) = v44;

    sub_1AFDFC608();

    sub_1AF7470C4(v41, sub_1AF0D4E74);

    sub_1AF74554C();
    v47 = swift_allocError();
    *v48 = v91;
    *(v48 + 16) = 0;
    *(v48 + 24) = 1;
    v112[0] = v47;
    sub_1AF745F84(v112);
    memcpy(v113, v112, 0x1B1uLL);
    v49 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v108 = *(v49 + 48);
    *(v49 + 48) = 0x8000000000000000;
    sub_1AF854898(v113, v101, isUniquelyReferenced_nonNull_native);
    *(v49 + 48) = v108;
    os_unfair_lock_unlock(v88);

    v19 = v85;
  }

LABEL_6:
  while (1)
  {
    v25 = v24 + 1;
    if (v24 + 1 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v24++ + 72);
    if (v22)
    {
      v24 = v25;
      goto LABEL_9;
    }
  }

  v51 = v84;
  v52 = 1 << *(v84 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v84 + 64);
  v55 = (v52 + 63) >> 6;
  v83 = " in a timely manner.";

  v56 = 0;
  for (i = v55; v54; v55 = i)
  {
LABEL_26:
    while (1)
    {
      v58 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      v59 = (v56 << 9) | (8 * v58);
      v60 = *(v51 + 56);
      v101 = *(*(v51 + 48) + v59);
      v61 = *(v60 + v59);
      v62 = v104;
      sub_1AFDFCB18();
      v63 = v103;
      MEMORY[0x1B2718560](v62, v106);
      v64 = *v102;
      v65 = v105;
      (*v102)(v62, v105);
      sub_1AFDFDA98();
      v64(v63, v65);
      if (sub_1AFDFCA78())
      {
        break;
      }

      v55 = i;
      if (!v54)
      {
        goto LABEL_23;
      }
    }

    v88 = *(v95 + 24);
    os_unfair_lock_lock(v88);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000025, v83 | 0x8000000000000000);
    v107 = v101;
    v66 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v66);

    MEMORY[0x1B2718AE0](0xD000000000000014, v94 | 0x8000000000000000);
    v67 = v108;
    v68 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v89 = v61;
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    v69 = qword_1ED73B890;
    sub_1AF6EFB60(0);
    v70 = swift_allocObject();
    *(v70 + 16) = v92;
    *(v70 + 56) = MEMORY[0x1E69E6158];
    *(v70 + 64) = sub_1AF0D544C();
    *(v70 + 32) = v67;

    sub_1AFDFC4C8(v68, &dword_1AF0CE000, v69, "%{public}s", 10, 2, v70);

    v87 = v67;
    v71 = v96;
    sub_1AFDFC288();
    v72 = v98;
    v86 = v99[12];
    v73 = v99[16];
    v74 = &v98[v99[20]];
    (*v93)(v98, v71, v97);
    v75 = v87;
    *(v72 + v86) = v68;
    *(v72 + v73) = 0;
    *v74 = v75;
    *(v74 + 1) = *(&v67 + 1);

    sub_1AFDFC608();

    sub_1AF7470C4(v72, sub_1AF0D4E74);

    sub_1AF74554C();
    v76 = swift_allocError();
    *v77 = v91;
    *(v77 + 16) = 0;
    *(v77 + 24) = 1;
    *&v112[1] = v108;
    v112[0] = v76;
    *&v112[3] = v109;
    *&v112[5] = v110;
    v112[7] = v111;
    LOBYTE(v112[8]) = 2;
    v78 = v100;
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(v78 + 56);
    *(v78 + 56) = 0x8000000000000000;
    sub_1AF853A48(v112, v101, v79);
    *(v78 + 56) = v107;
    os_unfair_lock_unlock(v88);

    v51 = v84;
  }

LABEL_23:
  while (1)
  {
    v57 = v56 + 1;
    if (v56 + 1 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v56++ + 72);
    if (v54)
    {
      v56 = v57;
      goto LABEL_26;
    }
  }

  (*(v82 + 8))(v106, v81);
}

void sub_1AF728E38()
{
  v1 = v0;
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E6973FE8]) init];
  v3 = sub_1AFDFC048();
  [v2 setUrl_];

  v4 = *(v1 + 16);
  v20 = 0;
  v5 = [v4 newBinaryArchiveWithDescriptor:v2 error:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = swift_unknownObjectRetain();
    MEMORY[0x1B2718E00](v7);
    if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1AFDFE218();

    v20 = 0xD00000000000001FLL;
    v21 = 0x80000001AFF325D0;
    sub_1AFDFC128();
    sub_1AF48F374();
    v8 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v10 = v20;
    v9 = v21;
    v11 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v18 = v11;
      swift_once();
      v11 = v18;
    }

    v20 = 0;
    sub_1AF0D4F18(v11, &v20, v10, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v6;
    v13 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF325A0);
    sub_1AFDFC128();
    sub_1AF48F374();
    v14 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v14);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v16 = v20;
    v15 = v21;
    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v19 = v17;
      swift_once();
      v17 = v19;
    }

    v20 = 0;
    sub_1AF0D4F18(v17, &v20, v16, v15);
  }
}

void sub_1AF7291E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1AFDFCEC8();
  v2 = [v0 BOOLForKey_];

  byte_1EB633470 = v2;
}

uint64_t VFXCoreSetBinaryArchives(uint64_t a1, uint64_t a2)
{
  sub_1AF447DFC(0, &qword_1EB63BD20, &protocolRef_MTLBinaryArchive);
  v2 = sub_1AFDFD418();
  v3 = swift_unknownObjectRetain();
  _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v3);
  sub_1AF729350(v2);
  swift_unknownObjectRelease();
}

uint64_t VFXCoreSetBinaryArchives(archive:device:)(unint64_t a1, void *a2)
{
  _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(a2);
  sub_1AF729350(a1);
}

uint64_t sub_1AF729350(unint64_t a1)
{
  sub_1AF0D4E74(0);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AFDFC298();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 168) = MEMORY[0x1E69E7CC0];

  sub_1AF490718(v7);
  if (a1 >> 62)
  {
    result = sub_1AFDFE108();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v9 = 0;
  v28 = 0x80000001AFF326D0;
  v29 = a1 & 0xC000000000000001;
  v27 = (v5 + 32);
  v26 = xmmword_1AFE431C0;
  v30 = result;
  v31 = a1;
  v10 = v33;
  do
  {
    if (v29)
    {
      v11 = MEMORY[0x1B2719C70](v9, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1AFDFE218();

    v37 = 0xD00000000000001CLL;
    v38 = v28;
    v12 = [v11 label];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1AFDFCEF8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE200000000000000;
      v14 = 16718;
    }

    MEMORY[0x1B2718AE0](v14, v16);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v18 = v37;
    v17 = v38;
    v19 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v36 = v11;
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    ++v9;
    v20 = qword_1ED73B890;
    sub_1AF6EFB60(0);
    v21 = swift_allocObject();
    *(v21 + 16) = v26;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1AF0D544C();
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;

    sub_1AFDFC4C8(v19, &dword_1AF0CE000, v20, "%{public}s", 10, 2, v21);

    sub_1AFDFC288();
    v22 = v35[12];
    v23 = v35[16];
    v24 = v32;
    v25 = &v32[v35[20]];
    (*v27)(v32, v10, v34);
    *(v24 + v22) = v19;
    *(v24 + v23) = 0;
    *v25 = v18;
    *(v25 + 1) = v17;
    sub_1AFDFC608();
    swift_unknownObjectRelease();

    sub_1AF7470C4(v24, sub_1AF0D4E74);
    result = v30;
    a1 = v31;
  }

  while (v30 != v9);
  return result;
}

id VFXCoreGetShaderCache(uint64_t a1, uint64_t a2)
{
  v2 = swift_unknownObjectRetain();
  ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v2);
  swift_unknownObjectRelease();

  return ShaderCache6deviceyXlSo9MTLDevice_p_tF_0;
}

id VFXCoreGetRecordingShaderArchive(uint64_t a1, uint64_t a2)
{
  v2 = swift_unknownObjectRetain();
  v3 = *(_s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v2) + 96);

  swift_unknownObjectRelease();

  return v3;
}

void *VFXCoreGetRecordingShaderArchive(device:)(void *a1)
{
  v1 = *(_s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(a1) + 96);
  v2 = v1;

  return v1;
}

uint64_t sub_1AF729848(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AF7299E0();
  }

  return result;
}

uint64_t sub_1AF729898()
{
  MEMORY[0x1B271DEA0](*(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24), -1, -1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1AF0D438C(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  sub_1AF744EF4(*(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation));

  return v0;
}

uint64_t sub_1AF729988()
{
  sub_1AF729898();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF7299E0()
{
  sub_1AF0D4E74(0);
  v90 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v89 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AFDFC298();
  v3 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_reloadCallback);

  v5(v6);

  *(v0 + 104) = 1;
  v77 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v77);
  v79 = v0;
  v7 = *(v0 + 48);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  v81 = "nc compilation disabled";
  v86 = (v3 + 32);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v80 = MEMORY[0x1E69E7CC0];
  v85 = xmmword_1AFE431C0;
  v82 = v11;
  v83 = v7;
  while (v10)
  {
LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (*(v7 + 56) + 440 * (v14 | (v12 << 6)));
    memcpy(v95, v15, 0x1B1uLL);
    memmove(v96, v15, 0x1B1uLL);
    if (sub_1AF745F90(v96) == 1)
    {
      nullsub_106();
      memcpy(v93, v95, sizeof(v93));
      nullsub_106();
      v29 = v28;
      memcpy(v94, v95, 0x1B1uLL);
      nullsub_106();
      sub_1AF7472F0(v30, &v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1AF424D98(0, *(v80 + 2) + 1, 1, v80);
      }

      v32 = *(v80 + 2);
      v31 = *(v80 + 3);
      if (v32 >= v31 >> 1)
      {
        v80 = sub_1AF424D98(v31 > 1, v32 + 1, 1, v80);
      }

      v33 = v80;
      *(v80 + 2) = v32 + 1;
      memcpy(&v33[432 * v32 + 32], v29, 0x1B0uLL);
    }

    else
    {
      sub_1AF7450E4(v95, v94, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v94[0] = 0;
      *(&v94[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      *v93 = v94[0];
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, v81 | 0x8000000000000000);
      memcpy(v94, v95, 0x1B1uLL);
      sub_1AF0D2DA0(0, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      sub_1AFDFE458();
      v16 = *v93;
      v17 = *&v93[8];
      v18 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v19 = qword_1ED73B890;
      sub_1AF6EFB60(0);
      v20 = swift_allocObject();
      *(v20 + 16) = v85;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1AF0D544C();
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;

      sub_1AFDFC4C8(v18, &dword_1AF0CE000, v19, "%{public}s", 10, 2, v20);

      v91 = v17;
      v84 = v16;
      v21 = v87;
      sub_1AFDFC288();
      v22 = v89;
      v23 = v90[12];
      v24 = v90[16];
      v25 = v18;
      v26 = &v89[v90[20]];
      (*v86)(v89, v21, v88);
      *(v22 + v23) = v25;
      *(v22 + v24) = 0;
      v27 = v91;
      *v26 = v84;
      *(v26 + 1) = v27;
      sub_1AFDFC608();

      sub_1AF0D2D44(v95, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      sub_1AF7470C4(v22, sub_1AF0D4E74);
      v11 = v82;
      v7 = v83;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (v12 + 1 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12++ + 72);
    if (v10)
    {
      v12 = v13;
      goto LABEL_8;
    }
  }

  v34 = *(v79 + 56);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v81 = "Cannot reload RenderPipeline: ";
  swift_bridgeObjectRetain_n();
  v39 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v82 = v38;
  v83 = v34;
  while (v37)
  {
LABEL_28:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = *(v34 + 56) + 72 * (v41 | (v39 << 6));
    v96[0] = *v42;
    v44 = *(v42 + 32);
    v43 = *(v42 + 48);
    v45 = *(v42 + 64);
    v96[1] = *(v42 + 16);
    v96[2] = v44;
    LOBYTE(v96[4]) = v45;
    v96[3] = v43;
    if (v45 == 1)
    {
      v94[2] = v96[2];
      v94[3] = v96[3];
      LOBYTE(v94[4]) = v96[4];
      v94[0] = v96[0];
      v94[1] = v96[1];
      v95[2] = v96[2];
      v95[3] = v96[3];
      LOBYTE(v95[4]) = v96[4];
      v95[0] = v96[0];
      v95[1] = v96[1];
      sub_1AF747328(v95, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1AF424C8C(0, *(v78 + 2) + 1, 1, v78);
      }

      v54 = *(v78 + 2);
      v53 = *(v78 + 3);
      if (v54 >= v53 >> 1)
      {
        v78 = sub_1AF424C8C(v53 > 1, v54 + 1, 1, v78);
      }

      v55 = v78;
      *(v78 + 2) = v54 + 1;
      v56 = &v55[64 * v54];
      v57 = v94[0];
      v58 = v94[1];
      v59 = v94[3];
      *(v56 + 4) = v94[2];
      *(v56 + 5) = v59;
      *(v56 + 2) = v57;
      *(v56 + 3) = v58;
    }

    else
    {
      sub_1AF7450E4(v96, v95, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v94[0] = v95[0];
      MEMORY[0x1B2718AE0](0xD00000000000001FLL, v81 | 0x8000000000000000);
      v95[2] = v96[2];
      v95[3] = v96[3];
      LOBYTE(v95[4]) = v96[4];
      v95[0] = v96[0];
      v95[1] = v96[1];
      sub_1AF0D2DA0(0, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      sub_1AFDFE458();
      v46 = v94[0];
      LODWORD(v91) = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      v47 = qword_1ED73B890;
      sub_1AF6EFB60(0);
      v48 = swift_allocObject();
      *(v48 + 16) = v85;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = sub_1AF0D544C();
      *(v48 + 32) = v46;

      sub_1AFDFC4C8(v91, &dword_1AF0CE000, v47, "%{public}s", 10, 2, v48);

      v49 = v87;
      sub_1AFDFC288();
      v50 = v89;
      v84 = v90[12];
      v51 = v90[16];
      v52 = &v89[v90[20]];
      (*v86)(v89, v49, v88);
      *(v50 + v84) = v91;
      *(v50 + v51) = 0;
      *v52 = v46;
      sub_1AFDFC608();

      sub_1AF0D2D44(v96, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      sub_1AF7470C4(v50, sub_1AF0D4E74);
      v38 = v82;
      v34 = v83;
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (v39 + 1 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v39++ + 72);
    if (v37)
    {
      v39 = v40;
      goto LABEL_28;
    }
  }

  os_unfair_lock_unlock(v77);
  v60 = v79;
  sub_1AF73F470();
  v61 = *(v80 + 2);
  if (v61)
  {
    v62 = v80 + 40;
    do
    {
      memcpy(v96, v62 - 8, 0x1B0uLL);
      memcpy(v94, v62, 0x1A0uLL);
      sub_1AF7472F0(v96, v95);
      v63 = sub_1AF730058(v94);
      sub_1AF6022A8(v63, v64, v65);
      sub_1AF747360(v96);
      v62 += 432;
      --v61;
    }

    while (v61);
  }

  v66 = v78;
  v67 = *(v78 + 2);
  if (v67)
  {
    v68 = v67 - 1;
    for (i = 32; ; i += 64)
    {
      v70 = *&v66[i + 16];
      v71 = *&v66[i + 32];
      v72 = *&v66[i + 48];
      v96[0] = *&v66[i];
      v96[1] = v70;
      v96[2] = v71;
      v96[3] = v72;
      *v93 = *(&v96[0] + 1);
      *&v93[8] = v70;
      *&v93[16] = *(&v96[1] + 8);
      *&v93[32] = *(&v71 + 1);
      *&v93[40] = v72;
      v73 = *(&v72 + 1) != 0;
      sub_1AF747328(v96, v95);
      sub_1AF73BD84(v93, v73, 0, 0);
      v75 = v74;
      sub_1AF747390(v96);
      swift_unknownObjectRelease();

      if (!v68)
      {
        break;
      }

      --v68;
    }
  }

  *(v60 + 104) = 0;
  return result;
}

uint64_t *sub_1AF72A584(uint64_t *a1, uint64_t a2, void *a3)
{
  v149 = a3;
  v170 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v137 - v13;
  v152 = v7;
  if (!v7)
  {
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v155 = 0xD00000000000001ALL;
    *(&v155 + 1) = 0x80000001AFF322D0;
    MEMORY[0x1B2718AE0](v4, v5);
    v19 = v155;
    sub_1AF74554C();
    swift_allocError();
    *v20 = v19;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    swift_willThrow();
    return v5;
  }

  v150 = v4;
  if (!v6)
  {
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    v21 = v152;
    swift_unknownObjectRetain();
    sub_1AFDFE218();

    *&v155 = 0x6E6F6974636E7546;
    *(&v155 + 1) = 0xE900000000000020;
    MEMORY[0x1B2718AE0](v150, v5);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF322F0);
    v22 = [v21 label];
    if (v22)
    {
      v23 = v22;
      v5 = sub_1AFDFCEF8();
      v25 = v24;
    }

    else
    {
      v25 = 0xE700000000000000;
      v5 = 0x746C7561666564;
    }

    MEMORY[0x1B2718AE0](v5, v25);

    v28 = v155;
    sub_1AF74554C();
    swift_allocError();
    *v29 = v28;
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v5;
  }

  swift_unknownObjectRetain();
  v15 = v152;
  swift_unknownObjectRetain();
  v144 = sub_1AF8836C4(v150, v5, v15, v8);
  v145 = v5;
  v146 = v6;
  v16 = v149;
  if (v149)
  {
    v17 = v149;
    v147 = v149;
    v18 = v151;
  }

  else
  {
    v18 = v151;
    v26 = *(v151 + 96);
    if (!v26)
    {
      v147 = 0;
      goto LABEL_16;
    }

    v147 = *(v151 + 96);
    v17 = v26;
  }

  v27 = v16;
  v5 = sub_1AF71B2EC(a1);

  if (v5)
  {
LABEL_11:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v5;
  }

LABEL_16:
  if (*(v18 + 104))
  {
    goto LABEL_23;
  }

  v31 = *(v18 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v31);
  v32 = *(v18 + 64);
  if (!*(v32 + 16) || (v33 = sub_1AF449CB8(v144), (v34 & 1) == 0))
  {
    os_unfair_lock_unlock(v31);
LABEL_23:
    v143 = (v18 + OBJC_IVAR____TtC3VFX11ShaderCache_lock);
    v48 = *(v18 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
    os_unfair_lock_lock(v48);
    v49 = *(v18 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
    v50 = v147;
    if (v49)
    {
      if (v49 == 1)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v155 = 0;
        *(&v155 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v153 = v155;
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
        v51 = *(a1 + 1);
        v155 = *a1;
        v156 = v51;
        v157 = a1[4];
        sub_1AFDFE458();
        v52 = v153;
        v53 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v120 = v53;
          swift_once();
          v53 = v120;
        }

        *&v155 = 0;
        sub_1AF0D4F18(v53, &v155, v52, *(&v52 + 1));

        v50 = v147;
      }

      else
      {
        v54 = *(v18 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation + 8);
        *(&v156 + 1) = &type metadata for FunctionDescriptor;
        v55 = swift_allocObject();
        *&v155 = v55;
        v56 = *(a1 + 1);
        *(v55 + 16) = *a1;
        *(v55 + 32) = v56;
        *(v55 + 48) = a1[4];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF744EE0(v49, v54);

        v49(&v155);
        sub_1AF744EF4(v49);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v155);
      }
    }

    v147 = v50;
    os_unfair_lock_unlock(v48);
    v57 = v150;
    v58 = v145;
    sub_1AF8837E8(v150, v145, v152, v8);
    *&v155 = v59;
    *(&v155 + 1) = v60;
    MEMORY[0x1B2718AE0](0x3A6873616820, 0xE600000000000000);
    v61 = v144;
    *&v153 = v144;
    v62 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v62);

    sub_1AF744BC0("makeFunction", 12, 2u, v155, *(&v155 + 1), v61, v154);
    v63 = v146;
    swift_getObjectType();
    if (!sub_1AF8832C4())
    {
      swift_unknownObjectRetain_n();
      v5 = v63;
      v67 = v57;
      v66 = v8;
LABEL_64:
      v70 = v147;
LABEL_65:
      sub_1AF8837E8(v67, v145, v152, v66);
      v123 = sub_1AFDFCEC8();

      [v5 setLabel_];
      swift_unknownObjectRelease();

      if (v70)
      {
        v124 = v70;
        sub_1AF71B388(v5, a1);
      }

      v125 = v143;
      v126 = *(v143 + 3);
      os_unfair_lock_lock(v126);
      *&v158 = v5;
      *(&v158 + 1) = v67;
      v159 = v145;
      v160 = v146;
      v161 = v152;
      v162 = v66;
      v163 = 1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v127 = v70;
      v128 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = *(v128 + 64);
      *(v128 + 64) = 0x8000000000000000;
      sub_1AF8537B0(&v158, v144, isUniquelyReferenced_nonNull_native);
      *(v128 + 64) = v155;
      os_unfair_lock_unlock(v126);
      v130 = *(v125 + 3);
      os_unfair_lock_lock(v130);
      sub_1AF73FAD8(v128 + 144);
      os_unfair_lock_unlock(v130);
      sub_1AF744F08(v154);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v5;
    }

    v64 = sub_1AF745858(v57, v58, v8);
    v65 = v64;
    v66 = v8;
    if (v149)
    {
      v67 = v150;
      v68 = v64;
LABEL_62:
      *&v155 = 0;
      v121 = [v152 newFunctionWithDescriptor:v68 error:&v155];
      if (!v121)
      {
        v131 = v155;
        sub_1AFDFBF58();

        swift_willThrow();
        v132 = v143;
        v133 = *(v143 + 3);
        os_unfair_lock_lock(v133);
        memset(v164, 0, sizeof(v164));
        v165 = -1;
        v5 = v151;
        sub_1AF824DEC(v164, v144);
        os_unfair_lock_unlock(v133);
        swift_willThrow();
        v134 = *(v132 + 3);
        os_unfair_lock_lock(v134);
        sub_1AF73FAD8(v5 + 144);
        os_unfair_lock_unlock(v134);
        sub_1AF744F08(v154);
        goto LABEL_11;
      }

      v5 = v121;
      v122 = v155;

      swift_unknownObjectRetain();
      goto LABEL_64;
    }

    if (qword_1ED7247D8 != -1)
    {
      swift_once();
    }

    v67 = v150;
    v68 = v65;
    if (byte_1EB633470 != 1)
    {
      goto LABEL_62;
    }

    v69 = *(v151 + 168);
    v70 = v147;
    if (v69 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_62;
      }
    }

    else if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

    [v65 setOptions_];
    *&v155 = 0;
    v5 = [v152 newFunctionWithDescriptor:v65 error:&v155];
    v71 = v155;
    v149 = v5;
    if (!v5)
    {
      v72 = v71;
      v73 = sub_1AFDFBF58();

      swift_willThrow();
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v155 = 542983771;
      *(&v155 + 1) = 0xE400000000000000;
      swift_getErrorValue();
      v74 = sub_1AFDFF1D8();
      MEMORY[0x1B2718AE0](v74);

      v148 = v73;
      v75 = v155;
      v76 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v136 = v76;
        swift_once();
        v76 = v136;
      }

      *&v155 = 0;
      sub_1AF0D4F18(v76, &v155, v75, *(&v75 + 1));

      v5 = 0;
      v148 = 0;
      v67 = v150;
    }

    [v68 setOptions_];
    if (v5)
    {
      v77 = qword_1ED730EA0;
      swift_unknownObjectRetain();
      if (v77 != -1)
      {
        swift_once();
      }

      *&v155 = 0;
      *(&v155 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v155 = 0x6E756F46205D465BLL;
      *(&v155 + 1) = 0xEA00000000002064;
      *&v153 = sub_1AF87E644(v66);
      sub_1AF723768();
      v78 = sub_1AFDFD1B8();
      v80 = v79;
      *&v153 = v67;
      *(&v153 + 1) = v145;

      MEMORY[0x1B2718AE0](v78, v80);

      MEMORY[0x1B2718AE0](v153, *(&v153 + 1));

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
      v81 = v155;
      v82 = sub_1AFDFD9F8();
      if (qword_1ED731058 != -1)
      {
        v135 = v82;
        swift_once();
        v82 = v135;
      }

      *&v155 = 0;
      sub_1AF0D4F18(v82, &v155, v81, *(&v81 + 1));

      v67 = v150;
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v35 = *(v32 + 56) + 56 * v33;
  v5 = *v35;
  v36 = *(v35 + 8);
  v37 = *(v35 + 16);
  v38 = *(v35 + 24);
  v39 = *(v35 + 40);
  v40 = *(v35 + 48);
  v41 = *v35;
  v42 = v37;
  v43 = v38;
  v149 = *(v35 + 32);
  v151 = v39;
  sub_1AF447894(v41, v36, v37, v38, v149, v39, v40);
  os_unfair_lock_unlock(v31);
  LODWORD(v144) = v40;
  if (v40 != 1)
  {
    type metadata accessor for ShaderCache.FunctionWrapper();
    v83 = swift_allocObject();
    v84 = v151;
    v143 = v83;
    v83[1] = 0u;
    v139 = (v83 + 1);
    v83[2] = 0u;
    v83[3] = 0u;
    v85 = v43;
    v86 = v40;
    v87 = v43;
    v88 = v149;
    v89 = v84;
    sub_1AF746DCC(v5, v36, v42, v85, v149, v84, v86);
    sub_1AF447894(v5, v36, v42, v87, v88, v89, 0);
    v90 = v42;
    v91 = dispatch_group_create();
    dispatch_group_enter(v91);
    sub_1AFDFD648();
    v92 = sub_1AFDFD668();
    (*(*(v92 - 8) + 56))(v14, 0, 1, v92);
    v93 = swift_allocObject();
    v94 = v143;
    v93[2] = v91;
    v93[3] = v94;
    v138 = v93;
    v93[4] = v5;
    v140 = v36;
    v141 = v87;
    v142 = v90;
    v95 = v90;
    v96 = v94;
    sub_1AF746DCC(v5, v36, v95, v87, v149, v89, v144);
    v97 = qword_1ED730EA0;
    v98 = v91;

    if (v97 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v99 = qword_1ED73B8A0;
    v100 = MEMORY[0x1E69E85F0];
    sub_1AF0D4320(v14, v11, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
    v101 = swift_allocObject();
    v101[2] = 0;
    v101[3] = 0;
    v101[4] = v99;
    v101[5] = &unk_1AFE74DE0;
    v101[6] = v138;
    swift_retain_n();

    sub_1AF7402EC(0, 0, v11, &unk_1AFE74DF0, v101, MEMORY[0x1E69E7CA8] + 8);

    sub_1AF0D438C(v14, &qword_1ED726C10, v100);
    sub_1AFDFDAA8();
    v102 = *v139;
    if (*v139)
    {
      v103 = v96[7];
      v150 = v96[6];
      v104 = v96[4];
      v145 = v96[5];
      v137 = v103;
      v138 = v104;
      v105 = v96[3];
      v139 = v102;
      sub_1AF746FA8(v102, v105, v104, v145, v150, v103);
      v107 = v140;
      v106 = v141;
      v108 = v142;
      v109 = v149;
      v110 = v151;
      v111 = v144;
      sub_1AF7457C8(v5, v140, v142, v141, v149, v151, v144);

      sub_1AF7457C8(v5, v107, v108, v106, v109, v110, v111);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1AF7457C8(v5, v107, v108, v106, v109, v110, v111);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v139;
    }

    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v155 = 0xD000000000000011;
    *(&v155 + 1) = 0x80000001AFF32600;
    MEMORY[0x1B2718AE0](v150, v145);
    v112 = v155;
    sub_1AF74554C();
    swift_allocError();
    *v113 = v112;
    *(v113 + 16) = 0;
    *(v113 + 24) = 1;
    swift_willThrow();

    v115 = v140;
    v114 = v141;
    v116 = v142;
    v117 = v149;
    v118 = v151;
    v119 = v144;
    sub_1AF7457C8(v5, v140, v142, v141, v149, v151, v144);
    sub_1AF7457C8(v5, v115, v116, v114, v117, v118, v119);
    sub_1AF7457E0(v5, v115, v116, v114, v117, v118, 0);
    goto LABEL_11;
  }

  *&v166 = v36;
  *(&v166 + 1) = v42;
  v44 = v149;
  v167 = v43;
  v168 = v149;
  v45 = v151;
  v169 = v151;
  v46 = v147;
  if (v147)
  {
    swift_unknownObjectRetain();

    v47 = v46;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1AF71B388(v5, &v166);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1AF7457C8(v5, v36, v42, v43, v44, v151, v144);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1AF7457C8(v5, v36, v42, v43, v44, v45, v144);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1AF72B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a3;
  v6 = swift_task_alloc();
  v4[10] = v6;
  v7 = sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  *v6 = v4;
  v6[1] = sub_1AF72B878;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v4 + 2, a4, &type metadata for ShaderCache.Function, v7, v8);
}

uint64_t sub_1AF72B878()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AF72BA24;
  }

  else
  {
    v2 = sub_1AF72B98C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72B98C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = *(v0 + 40);
  v1[2] = *(v0 + 16);
  v1[3] = v3;
  v1[4] = v4;
  *(v1 + 5) = v12;
  v1[7] = v5;
  sub_1AF746D60(v6, v7, v8, v9, v10, v11);
  dispatch_group_leave(v2);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1AF72BA24()
{
  dispatch_group_leave(*(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF72BA88(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 448) = a3;
  *(v4 + 456) = v3;
  *(v4 + 65) = a2;
  *(v4 + 440) = a1;
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF72BB48, 0, 0);
}

uint64_t sub_1AF72BB48(uint64_t a1, uint64_t a2)
{
  v87 = v2;
  v3 = *(v2 + 440);
  v4 = v3[3];
  *(v2 + 480) = v4;
  if (v4)
  {
    v5 = v3[2];
    *(v2 + 368) = v5;
    if (v5)
    {
      v6 = *(v2 + 448);
      if (v6)
      {
        v7 = *(v2 + 448);
        v8 = v7;
      }

      else
      {
        v8 = *(*(v2 + 456) + 96);
        if (!v8)
        {
          swift_unknownObjectRetain();
          sub_1AF744720(v2 + 368, v2 + 384);
          goto LABEL_21;
        }

        v7 = v8;
        v6 = 0;
      }

      v15 = v6;
      swift_unknownObjectRetain();
      sub_1AF744720(v2 + 368, v2 + 432);
      v16 = v15;
      v17 = sub_1AF71B2EC(v3);

      if (v17)
      {

        sub_1AF7470C4(v2 + 368, sub_1AF744784);
        swift_unknownObjectRelease();
LABEL_12:

        v18 = *(v2 + 8);

        return v18(v17);
      }

LABEL_21:
      *(v2 + 488) = v8;
      v23 = *(v2 + 456);
      v24 = *(v2 + 440);
      v25 = v24[4];
      *(v2 + 376) = v25;
      v26 = sub_1AF8836C4(*v24, v24[1], v4, v25);
      *(v2 + 496) = v26;
      if ((*(v23 + 104) & 1) == 0)
      {
        v27 = *(v2 + 456);
        v28 = *(v27 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
        os_unfair_lock_lock(v28);
        v29 = *(v27 + 64);
        if (*(v29 + 16))
        {
          v30 = sub_1AF449CB8(v26);
          if (v31)
          {
            v32 = *(v29 + 56) + 56 * v30;
            v17 = *v32;
            *(v2 + 504) = *v32;
            v33 = *(v32 + 8);
            *(v2 + 512) = v33;
            v34 = *(v32 + 16);
            *(v2 + 520) = v34;
            v35 = *(v32 + 24);
            *(v2 + 528) = v35;
            v36 = *(v32 + 32);
            *(v2 + 536) = v36;
            v37 = *(v32 + 40);
            *(v2 + 544) = v37;
            v38 = *(v32 + 48);
            *(v2 + 66) = v38;
            v83 = v33;
            sub_1AF447894(v17, v33, v34, v35, v36, v37, v38);
            os_unfair_lock_unlock(v28);
            if (v38 == 1)
            {

              sub_1AF7470C4(v2 + 368, sub_1AF744784);
              swift_unknownObjectRelease();
              v39 = swift_unknownObjectRetain();
              sub_1AF7457C8(v39, v83, v34, v35, v36, v37, 1);
              goto LABEL_12;
            }

            v80 = swift_task_alloc();
            *(v2 + 552) = v80;
            v76 = sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
            *v80 = v2;
            v80[1] = sub_1AF72C590;
            v77 = MEMORY[0x1E69E7288];
            v78 = v2 + 232;
            v79 = v17;
            goto LABEL_40;
          }
        }

        os_unfair_lock_unlock(v28);
      }

      v40 = *(v2 + 456);
      v41 = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
      *(v2 + 568) = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
      v82 = v40 + v41;
      v84 = v26;
      v42 = *(v40 + v41 + 24);
      os_unfair_lock_lock(v42);
      v43 = *(v40 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
      if (v43)
      {
        if (v43 == 1)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v44 = *(v2 + 440);
          v85 = 0;
          v86 = 0xE000000000000000;
          sub_1AFDFE218();
          *(v2 + 352) = 0;
          *(v2 + 360) = 0xE000000000000000;
          MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
          v45 = *v44;
          v46 = v44[1];
          *(v2 + 312) = *(v44 + 4);
          *(v2 + 280) = v45;
          *(v2 + 296) = v46;
          sub_1AFDFE458();
          v48 = *(v2 + 352);
          v47 = *(v2 + 360);
          v49 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v81 = v49;
            swift_once();
            v49 = v81;
          }

          v85 = 0;
          sub_1AF0D4F18(v49, &v85, v48, v47);
        }

        else
        {
          v50 = *(v2 + 440);
          v51 = *(v40 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation + 8);
          *(v2 + 344) = &type metadata for FunctionDescriptor;
          v52 = swift_allocObject();
          *(v2 + 320) = v52;
          v53 = *(v50 + 32);
          v54 = *(v50 + 16);
          *(v52 + 16) = *v50;
          *(v52 + 32) = v54;
          *(v52 + 48) = v53;
          swift_unknownObjectRetain();
          sub_1AF744720(v2 + 368, v2 + 392);
          sub_1AF744EE0(v43, v51);

          sub_1AF7450E4(v2 + 376, v2 + 400, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
          v43(v2 + 320);
          sub_1AF744EF4(v43);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v2 + 320));
        }
      }

      v55 = *(v2 + 472);
      v57 = *(v2 + 448);
      v56 = *(v2 + 456);
      v58 = *(v2 + 65);
      v59 = *(v2 + 440);
      os_unfair_lock_unlock(v42);
      swift_unknownObjectRetain();
      sub_1AFDFD648();
      v60 = sub_1AFDFD668();
      (*(*(v60 - 8) + 56))(v55, 0, 1, v60);
      v61 = swift_allocObject();
      v62 = *(v59 + 32);
      v63 = *(v59 + 16);
      *(v61 + 16) = *v59;
      *(v61 + 32) = v63;
      *(v61 + 48) = v62;
      *(v61 + 56) = v84;
      *(v61 + 64) = v56;
      *(v61 + 72) = v5;
      *(v61 + 80) = v58;
      *(v61 + 88) = v57;
      *(v61 + 96) = v4;
      *(v61 + 104) = v4;
      swift_unknownObjectRetain_n();
      sub_1AF744720(v2 + 368, v2 + 408);
      swift_unknownObjectRetain();
      sub_1AF744720(v2 + 368, v2 + 416);
      v64 = v57;

      sub_1AF7450E4(v2 + 376, v2 + 424, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
      v65 = qword_1ED730EA0;

      if (v65 != -1)
      {
        swift_once();
      }

      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v66 = *(v2 + 464);
      v67 = *(v2 + 472);
      v68 = *(v2 + 456);
      v69 = qword_1ED73B8A0;
      v70 = MEMORY[0x1E69E85F0];
      sub_1AF0D4320(v67, v66, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
      v71 = swift_allocObject();
      v71[2] = 0;
      v71[3] = 0;
      v71[4] = v69;
      v71[5] = &unk_1AFE74CD0;
      v71[6] = v61;

      v72 = sub_1AF7402EC(0, 0, v66, &unk_1AFE74CE0, v71, &type metadata for ShaderCache.Function);
      *(v2 + 576) = v72;
      sub_1AF0D438C(v67, &qword_1ED726C10, v70);
      v73 = *(v82 + 24);
      os_unfair_lock_lock(v73);
      *(v2 + 16) = v72;
      *(v2 + 24) = 0u;
      *(v2 + 40) = 0u;
      *(v2 + 49) = 0u;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v68 + 64);
      *(v68 + 64) = 0x8000000000000000;
      sub_1AF8537B0((v2 + 16), v84, isUniquelyReferenced_nonNull_native);
      *(v68 + 64) = v85;
      os_unfair_lock_unlock(v73);
      v75 = swift_task_alloc();
      *(v2 + 584) = v75;
      v76 = sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
      *v75 = v2;
      v75[1] = sub_1AF72C7B4;
      v77 = MEMORY[0x1E69E7288];
      v78 = v2 + 184;
      v79 = v72;
LABEL_40:

      return MEMORY[0x1EEE6DA10](v78, v79, &type metadata for ShaderCache.Function, v76, v77);
    }

    swift_unknownObjectRetain();
    sub_1AFDFE218();

    v85 = 0x6E6F6974636E7546;
    v86 = 0xE900000000000020;
    MEMORY[0x1B2718AE0](*v3, v3[1]);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF322F0);
    v10 = [v4 label];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AFDFCEF8();
      v14 = v13;
    }

    else
    {
      v14 = 0xE700000000000000;
      v12 = 0x746C7561666564;
    }

    MEMORY[0x1B2718AE0](v12, v14);

    v20 = v86;
    sub_1AF74554C();
    swift_allocError();
    *v21 = v85;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    *(v21 + 24) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1AFDFE218();

    v85 = 0xD00000000000001ALL;
    v86 = 0x80000001AFF322D0;
    MEMORY[0x1B2718AE0](*v3, v3[1]);
    sub_1AF74554C();
    swift_allocError();
    *v9 = 0xD00000000000001ALL;
    *(v9 + 8) = 0x80000001AFF322D0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    swift_willThrow();
  }

  v22 = *(v2 + 8);

  return v22();
}

uint64_t sub_1AF72C590()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1AF72CAF4;
  }

  else
  {
    v2 = sub_1AF72C6A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72C6A4()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();
  sub_1AF7457C8(v7, v6, v5, v4, v3, v2, v1);
  v8 = *(v0 + 232);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1AF72C7B4()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_1AF72CBDC;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1AF72C8D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72C8D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 488);
  v4 = *(v2 + 184);
  v5 = *(v2 + 192);
  v6 = *(v2 + 200);
  v18 = *(v2 + 208);
  v8 = *(v2 + 216);
  v7 = *(v2 + 224);
  swift_unknownObjectRetain();
  sub_1AF8837E8(v5, v6, v8, v7);
  v9 = sub_1AFDFCEC8();

  [v4 setLabel_];

  swift_unknownObjectRelease();
  if (v3)
  {
    v10 = *(v2 + 440);
    v11 = v3;
    sub_1AF71B388(v4, v10);
  }

  v17 = *(v2 + 496);
  v12 = *(v2 + 456);
  v13 = *(v12 + *(v2 + 568) + 24);
  os_unfair_lock_lock(v13);
  *(v2 + 128) = v4;
  *(v2 + 136) = v5;
  *(v2 + 144) = v6;
  *(v2 + 152) = v18;
  *(v2 + 160) = v8;
  *(v2 + 168) = v7;
  *(v2 + 176) = 1;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v12 + 64);
  *(v12 + 64) = 0x8000000000000000;
  sub_1AF8537B0((v2 + 128), v17, isUniquelyReferenced_nonNull_native);
  *(v12 + 64) = v19;
  os_unfair_lock_unlock(v13);

  sub_1AF7470C4(v2 + 368, sub_1AF744784);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v15 = *(v2 + 8);

  return v15(v4);
}

uint64_t sub_1AF72CAF4()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();
  sub_1AF7457C8(v7, v6, v5, v4, v3, v2, v1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AF72CBDC()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(*(v0 + 456) + *(v0 + 568) + 24);
  os_unfair_lock_lock(v3);
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 120) = -1;
  sub_1AF824DEC(v0 + 72, v1);
  os_unfair_lock_unlock(v3);
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AF72CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v13;
  *(v8 + 576) = a8;
  *(v8 + 568) = a7;
  *(v8 + 560) = a5;
  *(v8 + 552) = a4;
  *(v8 + 544) = a3;
  *(v8 + 536) = a2;
  *(v8 + 528) = a1;
  v9 = *(a2 + 8);
  *(v8 + 592) = *a2;
  *(v8 + 600) = v9;
  *(v8 + 608) = *(a2 + 16);
  *(v8 + 624) = *(a2 + 32);
  sub_1AF745DE0(0);
  *(v8 + 632) = v10;
  *(v8 + 640) = *(v10 - 8);
  *(v8 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF72CDF4, 0, 0);
}

uint64_t sub_1AF72CDF4()
{
  v1 = v0[78];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[68];
  sub_1AF8837E8(v3, v2, v0[77], v1);
  v30 = v5;
  v31 = v6;
  MEMORY[0x1B2718AE0](0x3A6873616820, 0xE600000000000000);
  v0[59] = v4;
  v7 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v7);

  sub_1AF744BC0("asyncMakeFunction", 17, 2u, v30, v31, v4, (v0 + 26));
  v8 = sub_1AF745858(v3, v2, v1);
  v0[82] = v8;
  swift_getObjectType();
  if (sub_1AF8832C4())
  {
    if (!v0[71])
    {
      if (qword_1ED7247D8 != -1)
      {
        swift_once();
      }

      if (byte_1EB633470 == 1)
      {
        v9 = *(v0[69] + 168);
        if (v9 >> 62)
        {
          if (sub_1AFDFE108())
          {
            goto LABEL_8;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_8:
          v10 = v0 + 18;
          v11 = v0[81];
          v12 = v0[80];
          v13 = v0[79];
          v27 = v0[72];
          [v8 setOptions_];
          v0[18] = v0;
          v0[23] = (v0 + 63);
          v0[19] = sub_1AF72D410;
          swift_continuation_init();
          v0[57] = v13;
          v14 = v8;
          v15 = sub_1AF585714(v0 + 54);
          sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
          sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
          sub_1AFDFD5C8();
          (*(v12 + 32))(v15, v11, v13);
          v0[50] = MEMORY[0x1E69E9820];
          v0[51] = 1107296256;
          v0[52] = sub_1AF72E210;
          v0[53] = &unk_1F2539230;
          [v27 newFunctionWithDescriptor:v14 completionHandler:?];
          (*(v12 + 8))(v15, v13);
          goto LABEL_12;
        }
      }
    }

    v10 = v0 + 10;
    v20 = v0[81];
    v21 = v0[80];
    v22 = v0[79];
    v26 = v0[72];
    v29 = v0[82];
    v0[10] = v0;
    v0[15] = (v0 + 62);
    v0[11] = sub_1AF72D968;
    swift_continuation_init();
    v0[49] = v22;
    v23 = sub_1AF585714(v0 + 46);
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    sub_1AFDFD5C8();
    (*(v21 + 32))(v23, v20, v22);
    v0[42] = MEMORY[0x1E69E9820];
    v0[43] = 1107296256;
    v0[44] = sub_1AF72E210;
    v0[45] = &unk_1F2539208;
    [v26 newFunctionWithDescriptor:v29 completionHandler:v0 + 42];
    (*(v21 + 8))(v23, v22);
  }

  else
  {
    v10 = v0 + 2;
    v28 = v8;
    v16 = v0[81];
    v17 = v0[80];
    v18 = v0[79];
    v25 = v0[73];
    v0[2] = v0;
    v0[7] = (v0 + 60);
    v0[3] = sub_1AF72DB5C;
    swift_continuation_init();
    v0[41] = v18;
    v19 = sub_1AF585714(v0 + 38);
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    sub_1AFDFD5C8();
    (*(v17 + 32))(v19, v16, v18);
    v0[34] = MEMORY[0x1E69E9820];
    v0[35] = 1107296256;
    v0[36] = sub_1AF72E210;
    v0[37] = &unk_1F25391E0;
    [v25 newFunctionWithDescriptor:v28 completionHandler:v0 + 34];
    (*(v17 + 8))(v19, v18);
  }

LABEL_12:

  return MEMORY[0x1EEE6DEC8](v10);
}

uint64_t sub_1AF72D410()
{
  v1 = *(*v0 + 176);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_1AF72DD50;
  }

  else
  {
    v2 = sub_1AF72D520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72D520()
{
  v28 = v0;
  v1 = *(v0 + 504);
  [*(v0 + 656) setOptions_];
  if (v1)
  {
    v2 = qword_1ED730EA0;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 624);
    v4 = *(v0 + 600);
    v5 = *(v0 + 592);
    sub_1AFDFE218();

    *(v0 + 520) = sub_1AF87E644(v3);
    sub_1AF723768();
    v6 = sub_1AFDFD1B8();
    v8 = v7;
    v27[0] = v5;
    v27[1] = v4;

    MEMORY[0x1B2718AE0](v6, v8);

    MEMORY[0x1B2718AE0](v5, v4);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
    v9 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v24 = v9;
      swift_once();
      v9 = v24;
    }

    v10 = *(v0 + 656);
    v27[0] = 0;
    sub_1AF0D4F18(v9, v27, 0x465B20646E756F46, 0xEA0000000000205DLL);
    swift_unknownObjectRelease();

    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 552);
    v17 = *(v0 + 528);
    *(v0 + 464) = *(*(v0 + 536) + 16);
    *v17 = v1;
    v17[1] = v15;
    v17[2] = v14;
    v17[3] = v13;
    v17[4] = v12;
    v17[5] = v11;

    sub_1AF744720(v0 + 464, v0 + 488);
    swift_unknownObjectRetain();

    sub_1AF73FAD8(v16 + 144);
    sub_1AF744F08(v0 + 208);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);
    v25 = *(v0 + 576);
    v26 = *(v0 + 656);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 496;
    *(v0 + 88) = sub_1AF72D968;
    swift_continuation_init();
    *(v0 + 392) = v22;
    v23 = sub_1AF585714((v0 + 368));
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    sub_1AFDFD5C8();
    (*(v21 + 32))(v23, v20, v22);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1AF72E210;
    *(v0 + 360) = &unk_1F2539208;
    [v25 newFunctionWithDescriptor:v26 completionHandler:v0 + 336];
    (*(v21 + 8))(v23, v22);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1AF72D968()
{
  v1 = *(*v0 + 112);
  *(*v0 + 672) = v1;
  if (v1)
  {
    v2 = sub_1AF72E0D8;
  }

  else
  {
    v2 = sub_1AF72DA78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72DA78()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  *(v0 + 464) = *(*(v0 + 536) + 16);
  *v8 = v1;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;

  sub_1AF744720(v0 + 464, v0 + 488);
  swift_unknownObjectRetain();

  sub_1AF73FAD8(v7 + 144);
  sub_1AF744F08(v0 + 208);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF72DB5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = sub_1AF72E174;
  }

  else
  {
    v2 = sub_1AF72DC6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72DC6C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  *(v0 + 464) = *(*(v0 + 536) + 16);
  *v8 = v1;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;

  sub_1AF744720(v0 + 464, v0 + 488);
  swift_unknownObjectRetain();

  sub_1AF73FAD8(v7 + 144);
  sub_1AF744F08(v0 + 208);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF72DD50(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 624);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  sub_1AFDFE218();

  strcpy(v18, "Missing [F] ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  *(v1 + 512) = sub_1AF87E644(v2);
  sub_1AF723768();
  v5 = sub_1AFDFD1B8();
  v7 = v6;
  v19[0] = v4;
  v19[1] = v3;

  MEMORY[0x1B2718AE0](v5, v7);

  MEMORY[0x1B2718AE0](v4, v3);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
  v8 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v9 = *(v1 + 664);
  v19[0] = 0;
  sub_1AF0D4F18(v8, v19, v18[0], v18[1]);

  [*(v1 + 656) setOptions_];
  v10 = *(v1 + 648);
  v11 = *(v1 + 640);
  v12 = *(v1 + 632);
  v16 = *(v1 + 576);
  v17 = *(v1 + 656);
  *(v1 + 80) = v1;
  *(v1 + 120) = v1 + 496;
  *(v1 + 88) = sub_1AF72D968;
  swift_continuation_init();
  *(v1 + 392) = v12;
  v13 = sub_1AF585714((v1 + 368));
  sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  sub_1AFDFD5C8();
  (*(v11 + 32))(v13, v10, v12);
  *(v1 + 336) = MEMORY[0x1E69E9820];
  *(v1 + 344) = 1107296256;
  *(v1 + 352) = sub_1AF72E210;
  *(v1 + 360) = &unk_1F2539208;
  [v16 newFunctionWithDescriptor:v17 completionHandler:v1 + 336];
  (*(v11 + 8))(v13, v12);

  return MEMORY[0x1EEE6DEC8](v1 + 80);
}

uint64_t sub_1AF72E0D8(uint64_t a1)
{
  v2 = v1[82];
  swift_willThrow();

  sub_1AF73FAD8(v1[69] + 144);
  sub_1AF744F08((v1 + 26));

  v3 = v1[1];

  return v3();
}

uint64_t sub_1AF72E174(uint64_t a1)
{
  v2 = v1[82];
  swift_willThrow();

  sub_1AF73FAD8(v1[69] + 144);
  sub_1AF744F08((v1 + 26));

  v3 = v1[1];

  return v3();
}

void sub_1AF72E210(uint64_t a1, void *a2, void *a3)
{
  sub_1AF441150((a1 + 32), *(a1 + 56));
  sub_1AF745DE0(0);
  if (a3)
  {
    v4 = a3;
    sub_1AFDFD5D8();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1AFDFD5E8();
  }
}

uint64_t sub_1AF72E2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 208) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  sub_1AF746B0C(0);
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF72E3D0, 0, 0);
}

uint64_t sub_1AF72E3D0(__n128 a1)
{
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v32 = *(v1 + 144);
    v31 = *(v1 + 208);
    v30 = **(v1 + 104);
    v4 = sub_1AFDFD668();
    v5 = *(v4 - 8);
    v29 = *(v5 + 56);
    v28 = (v5 + 48);
    v27 = (v5 + 8);
    v6 = (v2 + 40);
    v7 = &qword_1ED726C10;
    do
    {
      v36 = v3;
      v11 = *(v1 + 176);
      v10 = *(v1 + 184);
      v33 = *(v1 + 136);
      v34 = *(v1 + 144);
      v12 = v7;
      v14 = *(v1 + 120);
      v13 = *(v1 + 128);
      v15 = *(v6 - 1);
      v16 = *v6;
      v35 = v6;
      v29(v10, 1, 1, v4);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      *(v17 + 48) = v16;
      *(v17 + 56) = v13;
      v7 = v12;
      *(v17 + 64) = v33;
      *(v17 + 72) = v31;
      *(v17 + 80) = v34;
      sub_1AF0D4320(v10, v11, v12, MEMORY[0x1E69E85F0]);
      LODWORD(v10) = (*v28)(v11, 1, v4);

      swift_unknownObjectRetain();

      v18 = v32;
      v19 = *(v1 + 176);
      if (v10 == 1)
      {
        sub_1AF0D438C(*(v1 + 176), v12, MEMORY[0x1E69E85F0]);
      }

      else
      {
        sub_1AFDFD658();
        (*v27)(v19, v4);
      }

      if (*(v17 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = sub_1AFDFD5B8();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      sub_1AF7469C4(0);

      if (v22 | v20)
      {
        v8 = v1 + 16;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = v20;
        *(v1 + 40) = v22;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v1 + 184);
      *(v1 + 48) = 1;
      *(v1 + 56) = v8;
      *(v1 + 64) = v30;
      swift_task_create();

      sub_1AF0D438C(v9, v12, MEMORY[0x1E69E85F0]);
      v6 = v35 + 2;
      v3 = v36 - 1;
    }

    while (v36 != 1);
  }

  v23 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = MEMORY[0x1E69E7CC0];
  sub_1AF7469C4(0);
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  sub_1AFDFD6B8();
  *(v1 + 192) = v23;
  v24 = swift_task_alloc();
  *(v1 + 200) = v24;
  *v24 = v1;
  v24[1] = sub_1AF72E7CC;
  v25 = *(v1 + 152);

  return MEMORY[0x1EEE6DAD8](v1 + 80, 0, 0, v25, v1 + 88);
}

uint64_t sub_1AF72E7CC()
{

  if (v0)
  {

    v1 = sub_1AF72EA88;
  }

  else
  {
    v1 = sub_1AF72E8E4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AF72E8E4(uint64_t a1, uint64_t a2)
{
  if (v2[10])
  {
    v3 = swift_unknownObjectRetain();
    MEMORY[0x1B2718E00](v3);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    swift_unknownObjectRelease();
    v2[24] = v2[9];
    v4 = swift_task_alloc();
    v2[25] = v4;
    *v4 = v2;
    v4[1] = sub_1AF72E7CC;
    v5 = v2[19];

    return MEMORY[0x1EEE6DAD8](v2 + 10, 0, 0, v5, v2 + 11);
  }

  else
  {
    v6 = v2[24];
    v7 = v2[12];
    (*(v2[20] + 8))(v2[21], v2[19]);
    *v7 = v6;

    v8 = v2[1];

    return v8();
  }
}

uint64_t sub_1AF72EA88()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AF72EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = a8;
  *(v8 + 224) = v11;
  *(v8 + 256) = v10;
  *(v8 + 200) = a6;
  *(v8 + 208) = a7;
  *(v8 + 184) = a4;
  *(v8 + 192) = a5;
  *(v8 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AF72EB60, 0, 0);
}

uint64_t sub_1AF72EB60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = *(v2 + 192);
  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  v5 = *(v2 + 184);
  *(v2 + 24) = *(v2 + 200);
  *(v2 + 32) = 0;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v6 = *(*(v5 + 32) + OBJC_IVAR____TtC3VFX13ShaderLibrary_library);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1AF882DB8(v6, 0, (v2 + 56));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v7 = swift_task_alloc();
  *(v2 + 232) = v7;
  *v7 = v2;
  v7[1] = sub_1AF72ED0C;
  v8 = *(v2 + 224);
  v9 = *(v2 + 256);

  return sub_1AF72BA88(v2 + 56, v9, v8);
}

uint64_t sub_1AF72ED0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1AF72EF28;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_1AF72EE34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AF72EE34()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  *(v0 + 112) = *(v0 + 56);
  sub_1AF585778(v0 + 112);
  *(v0 + 152) = *(v0 + 72);
  sub_1AF7470C4(v0 + 152, sub_1AF744784);
  *(v0 + 160) = *(v0 + 80);
  sub_1AF7470C4(v0 + 160, sub_1AF745FA4);
  *(v0 + 168) = *(v0 + 88);
  sub_1AF0D2D44(v0 + 168, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1AF72EF28()
{
  *(v0 + 96) = *(v0 + 56);
  sub_1AF585778(v0 + 96);
  *(v0 + 128) = *(v0 + 72);
  sub_1AF7470C4(v0 + 128, sub_1AF744784);
  *(v0 + 136) = *(v0 + 80);
  sub_1AF7470C4(v0 + 136, sub_1AF745FA4);
  *(v0 + 144) = *(v0 + 88);
  sub_1AF0D2D44(v0 + 144, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF72F010(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == sub_1AFDFC0D8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AFDFEE28();
  }

  return v5 & 1;
}

id sub_1AF72F088(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  [v9 setInputPrimitiveTopology_];
  if (a2)
  {
    v10 = [swift_unknownObjectRetain() functionConstantsDictionary];
    sub_1AF0D4478(0, &qword_1ED726B70, 0x1E6974058);
    v11 = sub_1AFDFCC08();

    v12 = *(v11 + 16);

    if (v12 && *(a1 + 1))
    {
      *&v85 = sub_1AF87E644(*(a1 + 4));
      sub_1AF723768();
      sub_1AFDFD1B8();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (a3)
  {
    v13 = [swift_unknownObjectRetain() functionConstantsDictionary];
    sub_1AF0D4478(0, &qword_1ED726B70, 0x1E6974058);
    v14 = sub_1AFDFCC08();

    v15 = *(v14 + 16);

    if (v15 && *(a1 + 1))
    {
      *&v85 = sub_1AF87E644(*(a1 + 4));
      sub_1AF723768();
      sub_1AFDFD1B8();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v73 = a1 + 264;
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v16 = [v9 fragmentLinkedFunctions];
  v82 = v9;
  v72 = v4;
  if (a4)
  {
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    v17 = sub_1AFDFD3F8();
  }

  else
  {
    v17 = 0;
  }

  [v16 setPrivateFunctions_];

  v18 = *(a1 + 22);
  v19 = *(a1 + 23);
  v20 = *(a1 + 24);
  v21 = *(a1 + 25);
  v70 = *(a1 + 26);
  v71 = a1;
  v74 = *(a1 + 27);
  v76 = *(a1 + 28);
  v78 = *(a1 + 29);
  v80 = *(a1 + 30);
  v83 = *(a1 + 31);
  [v9 setRasterSampleCount_];
  v22 = [v9 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  [v23 setPixelFormat_];
  v24 = [v9 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  [v25 setPixelFormat_];
  v26 = [v9 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  [v27 setPixelFormat_];
  v28 = [v9 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript_];

  [v29 setPixelFormat_];
  v30 = [v9 colorAttachments];
  v31 = [v30 objectAtIndexedSubscript_];

  [v31 setPixelFormat_];
  v32 = [v9 colorAttachments];
  v33 = [v32 objectAtIndexedSubscript_];

  [v33 setPixelFormat_];
  v34 = [v9 colorAttachments];
  v35 = [v34 objectAtIndexedSubscript_];

  [v35 setPixelFormat_];
  v36 = [v9 colorAttachments];
  v37 = [v36 objectAtIndexedSubscript_];

  [v37 setPixelFormat_];
  [v9 setDepthAttachmentPixelFormat_];
  [v9 setStencilAttachmentPixelFormat_];
  v38 = 0;
  v79 = *(a1 + 280);
  v81 = *v73;
  v39 = &v85 + 3;
  v75 = *(a1 + 312);
  v77 = *(a1 + 296);
  do
  {
    v85 = v81;
    v86 = v79;
    v87 = v77;
    v88 = v75;
    v84 = *(v39 - 2);
    v40 = *(v39 - 1);
    v41 = *v39;
    v42 = v39[1];
    v43 = v39[2];
    v44 = v39[3];
    v45 = v39[4];
    v46 = [v82 colorAttachments];
    v47 = [v46 objectAtIndexedSubscript_];

    if (v40 != 1 || v41 || v43 != 1 || v44 || v42 | v45)
    {
      [v47 setBlendingEnabled_];
      [v47 setSourceRGBBlendFactor_];
      [v47 setDestinationRGBBlendFactor_];
      [v47 setSourceAlphaBlendFactor_];
      [v47 setDestinationAlphaBlendFactor_];
      [v47 setRgbBlendOperation_];
      [v47 setAlphaBlendOperation_];
    }

    else
    {
      [v47 setBlendingEnabled_];
    }

    v39 += 8;
    ++v38;
    [v47 setWriteMask_];
  }

  while (v38 != 8);
  [v82 setRasterizationEnabled_];
  v48 = *(v71 + 401);
  if (v48 >= 2 && [*(v72 + 16) supportsVertexAmplificationCount_])
  {
    [v82 setMaxVertexAmplificationCount_];
  }

  v49 = *(v71 + 42);
  if (v49)
  {
    v50 = *(v71 + 41);
    v51 = objc_allocWithZone(MEMORY[0x1E69741E0]);

    v52 = [v51 init];
    sub_1AF8C0378(v52, v50, v49);
  }

  else
  {
    v52 = 0;
  }

  [v82 setVertexDescriptor_];

  v55 = *(v71 + 368);
  if (v55 != 2)
  {
    v56 = *(v71 + 48);
    v57 = *(v71 + 49);
    v58 = *(v71 + 47);
    v60 = *(v71 + 44);
    v59 = *(v71 + 45);
    [v82 setTessellationFactorFormat_];
    [v82 setTessellationPartitionMode_];
    [v82 setMaxTessellationFactor_];
    [v82 setTessellationFactorScaleEnabled_];
    [v82 setTessellationControlPointIndexType_];
    [v82 setTessellationFactorStepFunction_];
    v53 = [v82 setTessellationOutputWindingOrder_];
  }

  v61 = v71[9];
  v93 = v71[8];
  v94 = v61;
  v95 = v71[10];
  v62 = v71[5];
  v89 = v71[4];
  v90 = v62;
  v63 = v71[7];
  v91 = v71[6];
  v92 = v63;
  v64 = v71[1];
  v85 = *v71;
  v86 = v64;
  v65 = v71[3];
  v87 = v71[2];
  v88 = v65;
  sub_1AF896E9C(v53, v54);
  v66 = sub_1AFDFCEC8();

  [v82 setLabel_];

  v67 = *(v72 + 168);
  if (v67 >> 62)
  {
    if (!sub_1AFDFE108())
    {
      return v82;
    }

    goto LABEL_33;
  }

  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    sub_1AF447DFC(0, &qword_1EB63BD20, &protocolRef_MTLBinaryArchive);

    v68 = sub_1AFDFD3F8();

    [v82 setBinaryArchives_];
  }

  return v82;
}

id sub_1AF72F9BC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58 = a1 + 264;
  v10 = [objc_allocWithZone(MEMORY[0x1E6974108]) init];
  [v10 setFragmentFunction_];
  [v10 setObjectFunction_];
  [v10 setMeshFunction_];
  v11 = [v10 fragmentLinkedFunctions];
  if (a5)
  {
    sub_1AF447DFC(0, &unk_1ED723170, &protocolRef_MTLFunction);
    a5 = sub_1AFDFD3F8();
  }

  [v11 setPrivateFunctions_];

  v12 = *(a1 + 22);
  v13 = *(a1 + 23);
  v14 = *(a1 + 24);
  v15 = *(a1 + 25);
  v16 = *(a1 + 26);
  v59 = *(a1 + 27);
  v61 = *(a1 + 28);
  v63 = *(a1 + 29);
  v65 = *(a1 + 30);
  v68 = *(a1 + 31);
  v56 = a1;
  [v10 setRasterSampleCount_];
  v17 = [v10 colorAttachments];
  v67 = v10;
  v18 = [v17 objectAtIndexedSubscript_];

  [v18 setPixelFormat_];
  v19 = [v10 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  [v20 setPixelFormat_];
  v21 = [v10 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  [v22 setPixelFormat_];
  v23 = [v10 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  [v24 setPixelFormat_];
  v25 = [v10 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  [v26 setPixelFormat_];
  v27 = [v10 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  [v28 setPixelFormat_];
  v29 = [v10 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  [v30 setPixelFormat_];
  v31 = [v10 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript_];

  [v32 setPixelFormat_];
  [v10 setDepthAttachmentPixelFormat_];
  [v10 setStencilAttachmentPixelFormat_];
  v33 = v10;
  v34 = 0;
  v64 = *(v58 + 1);
  v66 = *v58;
  v35 = &v70 + 3;
  v60 = *(v58 + 3);
  v62 = *(v58 + 2);
  do
  {
    v70 = v66;
    v71 = v64;
    v72 = v62;
    v73 = v60;
    v69 = *(v35 - 2);
    v36 = *(v35 - 1);
    v37 = *v35;
    v38 = v35[1];
    v39 = v35[2];
    v40 = v35[3];
    v41 = v35[4];
    v42 = [v33 colorAttachments];
    v43 = [v42 objectAtIndexedSubscript_];

    if (v36 != 1 || v37 || v39 != 1 || v40 || v38 | v41)
    {
      [v43 setBlendingEnabled_];
      [v43 setSourceRGBBlendFactor_];
      [v43 setDestinationRGBBlendFactor_];
      [v43 setSourceAlphaBlendFactor_];
      [v43 setDestinationAlphaBlendFactor_];
      [v43 setRgbBlendOperation_];
      [v43 setAlphaBlendOperation_];
    }

    else
    {
      [v43 setBlendingEnabled_];
    }

    v35 += 8;
    ++v34;
    [v43 setWriteMask_];

    v33 = v67;
  }

  while (v34 != 8);
  v44 = [v67 setRasterizationEnabled_];
  v46 = *(v56 + 401);
  if (v46 >= 2)
  {
    v44 = [*(v57 + 16) supportsVertexAmplificationCount_];
    if (v44)
    {
      v44 = [v67 setMaxVertexAmplificationCount_];
    }
  }

  v47 = v56[9];
  v78 = v56[8];
  v79 = v47;
  v80 = v56[10];
  v48 = v56[5];
  v74 = v56[4];
  v75 = v48;
  v49 = v56[7];
  v76 = v56[6];
  v77 = v49;
  v50 = v56[1];
  v70 = *v56;
  v71 = v50;
  v51 = v56[3];
  v72 = v56[2];
  v73 = v51;
  sub_1AF896E9C(v44, v45);
  v52 = sub_1AFDFCEC8();

  [v67 setLabel_];

  v53 = *(v57 + 168);
  if (v53 >> 62)
  {
    if (!sub_1AFDFE108())
    {
      return v67;
    }

    goto LABEL_17;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    sub_1AF447DFC(0, &qword_1EB63BD20, &protocolRef_MTLBinaryArchive);

    v54 = sub_1AFDFD3F8();

    [v67 setBinaryArchives_];
  }

  return v67;
}

uint64_t sub_1AF730058(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v211 = v7;
  v9 = v8;
  v241[1] = *MEMORY[0x1E69E9840];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v185 - v14;
  v16 = v9[1];
  if (!v16 && !v9[16])
  {
    sub_1AF74554C();
    result = swift_allocError();
    *v28 = 0xD000000000000048;
    *(v28 + 8) = 0x80000001AFF323B0;
    *(v28 + 16) = 0;
    *(v28 + 24) = 1;
    return result;
  }

  v208 = v9[4];
  v209 = v4;
  v17 = swift_unknownObjectRetain();
  sub_1AF89987C(v17, 0, v227);
  v207 = v6;
  v210 = 0;
  memcpy(v226, v227, sizeof(v226));
  swift_unknownObjectRelease();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*(&v227[25] + 1));
  v18 = sub_1AFDFF2F8();
  v19 = v211;
  v20 = v18 ^ v211 & 1;
  v21 = v2 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24));
  if (*(v2 + 104))
  {
    sub_1AF745E70(v240);
    if ((v19 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v22 = v240;
    goto LABEL_13;
  }

  v23 = *(v2 + 48);
  if (*(v23 + 16))
  {
    v24 = sub_1AF449CB8(v20);
    if (v25)
    {
      v26 = (*(v23 + 56) + 440 * v24);
      memcpy(v222, v26, 0x1B1uLL);
      memmove(v240, v26, 0x1B1uLL);
      nullsub_106();
      sub_1AF7450E4(v222, v221, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      goto LABEL_12;
    }
  }

  sub_1AF745E70(v240);
  if (v211)
  {
    goto LABEL_12;
  }

  memcpy(v223, v240, 0x1B1uLL);
  v50 = *(v2 + 48);
  if (!*(v50 + 16))
  {
    sub_1AF745EB8(v223, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    sub_1AF745E70(v224);
    goto LABEL_6;
  }

  v51 = sub_1AF449CB8(v18 ^ 1);
  if (v52)
  {
    memcpy(v222, (*(v50 + 56) + 440 * v51), 0x1B1uLL);
    sub_1AF7450E4(v222, v240, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
    sub_1AF745EB8(v223, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    memcpy(v240, v222, 0x1B1uLL);
    nullsub_106();
  }

  else
  {
    sub_1AF745EB8(v223, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    sub_1AF745E70(v240);
  }

LABEL_5:
  memcpy(v224, v240, 0x1B1uLL);
LABEL_6:
  v22 = v224;
LABEL_13:
  memcpy(v225, v22, 0x1B1uLL);
  v29 = *(v2 + 72);
  if (*(v29 + 16) && (v30 = sub_1AF449CB8(v20), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + v30) ^ 1;
  }

  else
  {
    v32 = 1;
  }

  os_unfair_lock_unlock(*(v21 + 24));
  if ((*(v2 + 104) & 1) == 0 && (v32 & 1) == 0)
  {
    sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    sub_1AF602304(v227);
    return 1;
  }

  memcpy(v222, v225, 0x1B1uLL);
  if (sub_1AF745F14(v222) != 1)
  {
    memcpy(v240, v222, 0x1B1uLL);
    v45 = sub_1AF745F90(v240);
    if (v45)
    {
      if (v45 == 1)
      {
        nullsub_106();
        v47 = v46;
        sub_1AF602304(v227);
        v48 = *v47;
        v49 = v47[53];
        swift_unknownObjectRetain();
        sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
        return v48;
      }

      else
      {
        nullsub_106();
        v66 = *v65;
        sub_1AF602304(v227);
        return v66;
      }
    }

    nullsub_106();
    if (v207)
    {
      sub_1AF602304(v227);
      sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      return 0;
    }

    memcpy(v221, v225, 0x1B1uLL);
    sub_1AF7450E4(v221, v219, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
    CACurrentMediaTime();
    sub_1AFDFDAA8();
    v79 = *(v21 + 24);
    os_unfair_lock_lock(v79);
    v80 = *(v2 + 48);
    if (*(v80 + 16) && (v81 = sub_1AF449CB8(v20), (v82 & 1) != 0))
    {
      v83 = (*(v80 + 56) + 440 * v81);
      memcpy(v218, v83, 0x1B1uLL);
      memmove(v219, v83, 0x1B1uLL);
      nullsub_106();
      sub_1AF7450E4(v218, v217, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      memcpy(v220, v219, sizeof(v220));
    }

    else
    {
      sub_1AF745E70(v220);
    }

    os_unfair_lock_unlock(v79);
    memcpy(v219, v220, 0x1B1uLL);
    if (sub_1AF745F14(v219) == 1)
    {
      sub_1AF74554C();
      v86 = swift_allocError();
      *v87 = 0xD00000000000001CLL;
      *(v87 + 8) = 0x80000001AFF324C0;
      *(v87 + 16) = 0;
      *(v87 + 24) = 1;
      sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      sub_1AF602304(v227);
    }

    else
    {
      memcpy(v218, v219, 0x1B1uLL);
      v88 = sub_1AF745F90(v218);
      if (v88)
      {
        if (v88 == 1)
        {
          nullsub_106();
          v90 = v89;
          sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          sub_1AF602304(v227);
          sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          v91 = *v90;
          v92 = v90[53];
          swift_unknownObjectRetain();
          sub_1AF745EB8(v220, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          return v91;
        }

        else
        {
          nullsub_106();
          v146 = *v145;
          sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          sub_1AF602304(v227);
          sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          return v146;
        }
      }

      nullsub_106();
      sub_1AF74554C();
      v86 = swift_allocError();
      *v144 = 0xD00000000000002ALL;
      *(v144 + 8) = 0x80000001AFF324E0;
      *(v144 + 16) = 0;
      *(v144 + 24) = 1;
      sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      sub_1AF602304(v227);
      sub_1AF745EB8(v220, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    }

    sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    return v86;
  }

  if ((v207 & 1) == 0 || v209)
  {
    v33 = *&v227[8];
  }

  else
  {
    if (qword_1ED730F98 != -1)
    {
      swift_once();
    }

    v33 = *&v227[8];
    if ((byte_1ED72FA72 & 1) == 0 && !*&v227[8])
    {
      v34 = dispatch_group_create();
      dispatch_group_enter(v34);
      v35 = v20;
      v36 = *(v21 + 24);
      os_unfair_lock_lock(v36);
      v221[0] = v34;
      sub_1AF74600C(v221);
      memcpy(v240, v221, 0x1B1uLL);
      v37 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v220 = *(v2 + 48);
      *(v2 + 48) = 0x8000000000000000;
      sub_1AF854898(v240, v35, isUniquelyReferenced_nonNull_native);
      *(v2 + 48) = *v220;
      os_unfair_lock_unlock(v36);
      sub_1AFDFD648();
      v39 = sub_1AFDFD668();
      (*(*(v39 - 8) + 56))(v15, 0, 1, v39);
      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      *(v40 + 24) = v2;
      memcpy((v40 + 32), v227, 0x1A0uLL);
      *(v40 + 448) = 1;
      *(v40 + 456) = 0;
      memcpy((v40 + 464), v9, 0x1A0uLL);
      *(v40 + 880) = v211 & 1;
      *(v40 + 888) = v35;
      v41 = v37;

      sub_1AF745F28(v227, v220);
      sub_1AF745F28(v9, v220);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v42 = qword_1ED73B8A0;
      v43 = MEMORY[0x1E69E85F0];
      sub_1AF0D4320(v15, v12, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
      v44 = swift_allocObject();
      v44[2] = 0;
      v44[3] = 0;
      v44[4] = v42;
      v44[5] = &unk_1AFE74D08;
      v44[6] = v40;
      swift_retain_n();

      sub_1AF727C00(0, 0, v12, &unk_1AFE74D10, v44);

      sub_1AF602304(v227);

      sub_1AF0D438C(v15, &qword_1ED726C10, v43);
      return 0;
    }
  }

  v202 = v21;
  v187 = *&v227[0];
  v53 = *(&v227[1] + 1);
  v188 = *&v227[1];
  v54 = *&v227[5];
  v195 = *(&v227[0] + 1);
  v196 = *(&v227[5] + 1);
  v56 = *(&v227[6] + 1);
  v55 = *&v227[6];
  v57 = *&v227[7];
  v189 = *&v227[2];
  v190 = *(&v227[7] + 1);
  v58 = *(&v227[8] + 1);
  v60 = *(&v227[9] + 1);
  v59 = *&v227[9];
  v205 = *(&v227[10] + 1);
  v61 = *&v227[10];
  v206 = v2;
  v203 = v20;
  v197 = *(&v227[1] + 1);
  v198 = *(&v227[9] + 1);
  v199 = *&v227[9];
  v200 = *(&v227[8] + 1);
  if (*&v227[3])
  {
    v191 = *&v227[5];
    v192 = *&v227[7];
    v193 = *(&v227[6] + 1);
    v194 = *&v227[6];
    v62 = v33;
    v218[0] = *(&v227[2] + 1);
    *&v218[1] = v227[3];
    *&v218[3] = v227[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v63 = v210;
    v64 = sub_1AF72A584(v218, 0, v209);
    v210 = v63;
    if (v63)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v2 = v206;
LABEL_83:
      v96 = v202;
LABEL_84:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v240[0] = 0;
      v240[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v97 = v240[0];
      v98 = v240[1];
      v99 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v172 = v99;
        swift_once();
        v99 = v172;
      }

      v240[0] = 0;
      sub_1AF0D4F18(v99, v240, v97, v98);

      v100 = *(v96 + 24);
      os_unfair_lock_lock(v100);
      v101 = v210;
      v221[0] = v210;
      sub_1AF745F84(v221);
      memcpy(v240, v221, 0x1B1uLL);
      v102 = v101;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v212 = *(v2 + 48);
      *(v2 + 48) = 0x8000000000000000;
      v104 = v203;
      sub_1AF854898(v240, v203, v103);
      *(v2 + 48) = v212;
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v212 = *(v2 + 72);
      *(v2 + 72) = 0x8000000000000000;
      sub_1AF85390C(0, v104, v105);
      *(v2 + 72) = v212;

      os_unfair_lock_unlock(v100);
      sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      sub_1AF602304(v227);
      return v101;
    }

    v67 = v64;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v2 = v206;
    v20 = v203;
    v33 = v62;
    v59 = v199;
    v58 = v200;
    v53 = v197;
    v60 = v198;
    v56 = v193;
    v55 = v194;
    v54 = v191;
    v57 = v192;
  }

  else
  {
    v67 = 0;
  }

  v201 = v67;
  if (v61)
  {
    v68 = *(v61 + 16);
    v69 = MEMORY[0x1E69E7CC0];
    if (v68)
    {
      v191 = v54;
      v192 = v57;
      v193 = v56;
      v194 = v55;
      v186 = v33;
      v240[0] = MEMORY[0x1E69E7CC0];
      sub_1AFDFE368();
      v70 = (v61 + 40);
      v204 = v16;
      v2 = v206;
      while (1)
      {
        v71 = *(v70 - 1);
        v72 = *v70;
        if (v16)
        {
          v73 = v208;
        }

        else
        {
          v73 = MEMORY[0x1E69E7CC0];
        }

        v217[0] = v71;
        v217[1] = v72;
        v217[2] = 0;
        v217[3] = v205;
        v217[4] = v73;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v74 = swift_unknownObjectRetain();
        v75 = v210;
        sub_1AF882DB8(v74, 0, &v228);
        v210 = v75;
        if (v75)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_bridgeObjectRelease_n();
          swift_unknownObjectRelease();
          goto LABEL_79;
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v76 = v210;
        sub_1AF72A584(&v228, 0, v209);
        v210 = v76;
        if (v76)
        {
          break;
        }

        v214 = v228;
        sub_1AF585778(&v214);
        v233 = v229;
        sub_1AF7470C4(&v233, sub_1AF744784);
        v232 = v230;
        sub_1AF7470C4(&v232, sub_1AF745FA4);
        v213 = v231;
        sub_1AF0D2D44(&v213, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);

        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        v70 += 2;
        --v68;
        v16 = v204;
        if (!v68)
        {
          v69 = v240[0];
          v20 = v203;
          v58 = v200;
          v67 = v201;
          v53 = v197;
          v60 = v198;
          v33 = v186;
          v59 = v199;
          v56 = v193;
          v55 = v194;
          v54 = v191;
          v57 = v192;
          goto LABEL_60;
        }
      }

      swift_unknownObjectRelease();
      *v220 = v228;
      sub_1AF585778(v220);
      v219[0] = v229;
      sub_1AF7470C4(v219, sub_1AF744784);
      v235 = v230;
      sub_1AF7470C4(&v235, sub_1AF745FA4);
      v234[0] = v231;
      sub_1AF0D2D44(v234, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
LABEL_79:

      goto LABEL_83;
    }
  }

  else
  {
    v69 = 0;
  }

LABEL_60:
  if (v33)
  {
    v208 = v69;
    if (v196)
    {
      v186 = v33;
      v235 = v54;
      v236 = v196;
      v237 = v55;
      v238 = v56;
      v239 = v57;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v77 = v210;
      v78 = sub_1AF72A584(&v235, 0, v209);
      v210 = v77;
      if (v77)
      {
        goto LABEL_69;
      }

      v93 = v78;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v33 = v186;
      v59 = v199;
      v58 = v200;
      v60 = v198;
    }

    else
    {
      v93 = 0;
    }

    v234[0] = v190;
    v234[1] = v33;
    v234[2] = v58;
    v234[3] = v59;
    v234[4] = v60;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v94 = v210;
    v95 = sub_1AF72A584(v234, 0, v209);
    v210 = v94;
    if (v94)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_83;
    }

    v106 = v95;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v107 = sub_1AF72F9BC(v227, v93, v106, v201, v208);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v108 = 0;
  }

  else
  {
    if (v195)
    {
      v208 = v69;
      v235 = v187;
      v236 = v195;
      v237 = v188;
      v238 = v53;
      v239 = v189;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v84 = v210;
      v85 = sub_1AF72A584(&v235, 0, v209);
      v210 = v84;
      if (v84)
      {
LABEL_69:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        goto LABEL_83;
      }

      v109 = v85;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v67 = v201;
      v69 = v208;
    }

    else
    {
      v109 = 0;
    }

    v108 = sub_1AF72F088(v227, v109, v67, v69);
    swift_unknownObjectRelease();

    v107 = 0;
  }

  v110 = sub_1AF899C78();
  v112 = v111;
  if (v211)
  {
    v113 = "makeRenderPipelineRefl";
  }

  else
  {
    v113 = "makeRenderPipeline";
  }

  if (v211)
  {
    v114 = 22;
  }

  else
  {
    v114 = 18;
  }

  if (v211)
  {
    v115 = 3;
  }

  else
  {
    v115 = 0;
  }

  sub_1AF744BC0(v113, v114, 2u, v110, v112, v20, v219);
  v96 = v202;
  v116 = *(v202 + 24);
  os_unfair_lock_lock(v116);
  v117 = *(v2 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  if (v117)
  {
    if (v117 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v240[0] = 0;
      v240[1] = 0xE000000000000000;
      sub_1AFDFE218();
      v221[0] = v240[0];
      v221[1] = v240[1];
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
      memcpy(v240, v227, 0x1A0uLL);
      sub_1AFDFE458();
      v118 = v221[0];
      v119 = v221[1];
      v120 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v173 = v120;
        swift_once();
        v120 = v173;
      }

      v240[0] = 0;
      sub_1AF0D4F18(v120, v240, v118, v119);
    }

    else
    {
      v121 = *(v2 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation + 8);
      v221[3] = &type metadata for RenderPipelineDescriptor;
      v221[0] = swift_allocObject();
      memcpy(v221[0] + 16, v227, 0x1A0uLL);
      sub_1AF745F28(v227, v240);
      sub_1AF744EE0(v117, v121);
      v117(v221);
      sub_1AF744EF4(v117);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v221);
    }
  }

  os_unfair_lock_unlock(v116);
  if (!v107)
  {
    if (!v108)
    {
      v147 = v188;
      *v220 = v187;
      *&v220[8] = v195;
      *&v220[16] = v188;
      v148 = v197;
      *&v220[24] = v197;
      v149 = v189;
      *&v220[32] = v189;
      if (v195)
      {
        v215[0] = v187;
        v215[1] = v195;
        sub_1AF7450E4(v220, v240, &qword_1ED7225F0, &type metadata for FunctionDescriptor, MEMORY[0x1E69E6720]);
        swift_unknownObjectRetain();
        sub_1AF585778(v215);
        v241[0] = v147;
        sub_1AF7470C4(v241, sub_1AF744784);
        swift_unknownObjectRelease();
        v216 = v149;
        sub_1AF0D2D44(&v216, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
      }

      else
      {
        v148 = 0;
      }

      sub_1AF74554C();
      v162 = swift_allocError();
      *v163 = 0xD000000000000015;
      *(v163 + 8) = 0x80000001AFF32440;
      *(v163 + 16) = v148;
      *(v163 + 24) = 0;
      v210 = v162;
      swift_willThrow();
      v164 = *(v96 + 24);
      os_unfair_lock_lock(v164);
      sub_1AF73FAD8(v2 + 112);
      os_unfair_lock_unlock(v164);
      goto LABEL_160;
    }

    v208 = 0;
    if (v209)
    {
      v127 = v108;
LABEL_153:
      v166 = 0;
      goto LABEL_154;
    }

    v150 = qword_1ED7247D8;
    v151 = v108;
    if (v150 != -1)
    {
      v174 = v151;
      swift_once();
      v151 = v174;
    }

    if (byte_1EB633470 != 1)
    {
      goto LABEL_153;
    }

    v152 = *(v2 + 168);
    if (v152 >> 62)
    {
      v175 = v151;
      v176 = sub_1AFDFE108();
      v151 = v175;
      if (!v176)
      {
        goto LABEL_153;
      }
    }

    else if (!*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_153;
    }

    v153 = *(v2 + 16);
    v240[0] = 0;
    v221[0] = 0;
    v154 = [v153 newRenderPipelineStateWithDescriptor:v151 options:v115 | 4 reflection:v240 error:v221];
    v155 = v240[0];
    if (v154)
    {
      v128 = v154;
      v156 = qword_1ED730EA0;
      v157 = v221[0];
      v211 = v155;
      swift_unknownObjectRetain();
      if (v156 != -1)
      {
        swift_once();
      }

      v240[0] = 0;
      v240[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v240[0] = 0x6E756F46205D525BLL;
      v240[1] = 0xEA00000000002064;
      v158 = sub_1AF899C78();
      MEMORY[0x1B2718AE0](v158);

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
      v159 = v240[0];
      v160 = v240[1];
      v161 = sub_1AFDFD9F8();
      v96 = v202;
      if (qword_1ED731058 != -1)
      {
        v183 = v161;
        swift_once();
        v161 = v183;
      }

      v240[0] = 0;
      sub_1AF0D4F18(v161, v240, v159, v160);

      goto LABEL_155;
    }

    v165 = v221[0];
    v166 = v155;
    v167 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v240[0] = 542986843;
    v240[1] = 0xE400000000000000;
    swift_getErrorValue();
    v168 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v168);

    v169 = v240[0];
    v170 = v240[1];
    v171 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v184 = v171;
      swift_once();
      v171 = v184;
    }

    v240[0] = 0;
    sub_1AF0D4F18(v171, v240, v169, v170);

    v210 = 0;
    v2 = v206;
    v96 = v202;
LABEL_154:
    v177 = *(v2 + 16);
    v240[0] = v166;
    v221[0] = 0;
    v128 = [v177 newRenderPipelineStateWithDescriptor:v108 options:v115 reflection:v240 error:v221];
    v178 = v221[0];
    v211 = v240[0];
    v179 = v178;

    if (!v128)
    {
      v181 = sub_1AFDFBF58();

      v210 = v181;
      swift_willThrow();

      goto LABEL_158;
    }

LABEL_155:
    v180 = v210;
    sub_1AF73BC10(v108, v207 & 1, v209, &OBJC_IVAR____TtC3VFX13ShaderArchive_renderPipelines, sub_1AF70D78C, &selRef_addRenderPipelineFunctionsWithDescriptor_error_);
    v210 = v180;
    if (!v180)
    {
      v209 = v108;

      swift_unknownObjectRelease();
      goto LABEL_117;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_158:
    v182 = *(v96 + 24);
    os_unfair_lock_lock(v182);
    sub_1AF73FAD8(v2 + 112);
    os_unfair_lock_unlock(v182);
    goto LABEL_159;
  }

  swift_getObjectType();
  v122 = v107;
  v123 = v210;
  v124 = sub_1AFDFDC88();
  v210 = v123;
  if (v123)
  {

    v126 = *(v96 + 24);
    os_unfair_lock_lock(v126);
    sub_1AF73FAD8(v2 + 112);
    os_unfair_lock_unlock(v126);

LABEL_159:
LABEL_160:
    sub_1AF744F08(v219);
    swift_unknownObjectRelease();
    goto LABEL_84;
  }

  v128 = v124;
  v208 = v107;
  v209 = v108;
  v211 = v125;

LABEL_117:
  v129 = *(v96 + 24);
  v130 = v211;
  os_unfair_lock_lock(v129);
  v131 = 0;
  v132 = *(v2 + 48);
  v133 = 1 << *(v132 + 32);
  v134 = *(v132 + 64);
  v135 = -1;
  if (v133 < 64)
  {
    v135 = ~(-1 << v133);
  }

  v136 = v135 & v134;
  v137 = (v133 + 63) >> 6;
  if ((v135 & v134) != 0)
  {
    while (1)
    {
      v138 = v131;
LABEL_123:
      v139 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      memmove(v240, (*(v132 + 56) + 440 * (v139 | (v138 << 6))), 0x1B1uLL);
      if (sub_1AF745F90(v240) == 1)
      {
        nullsub_106();
        v131 = v138;
        if (!v136)
        {
          break;
        }
      }

      else
      {
        v131 = v138;
        if (!v136)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v138 = v131 + 1;
    if (v131 + 1 >= v137)
    {
      break;
    }

    v136 = *(v132 + 72 + 8 * v131++);
    if (v136)
    {
      goto LABEL_123;
    }
  }

  memcpy(&v221[1], v226, 0x1A0uLL);
  v221[0] = v128;
  v221[53] = v211;
  sub_1AF745F98(v221);
  memcpy(v240, v221, 0x1B1uLL);
  sub_1AF745F28(v227, v220);
  v140 = v130;
  swift_unknownObjectRetain();
  v141 = v206;
  v142 = swift_isUniquelyReferenced_nonNull_native();
  *v220 = *(v141 + 48);
  *(v141 + 48) = 0x8000000000000000;
  sub_1AF854898(v240, v203, v142);
  *(v141 + 48) = *v220;
  os_unfair_lock_unlock(v129);

  v143 = *(v202 + 24);
  os_unfair_lock_lock(v143);
  sub_1AF73FAD8(v141 + 112);
  os_unfair_lock_unlock(v143);
  sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);

  sub_1AF744F08(v219);
  swift_unknownObjectRelease();
  sub_1AF602304(v227);
  return v128;
}

uint64_t sub_1AF732098(int a1, uint64_t a2, uint64_t a3, void *__src, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 11160) = v12;
  *(v8 + 3882) = a8;
  *(v8 + 11112) = a7;
  *(v8 + 11064) = a6;
  *(v8 + 3881) = a5;
  *(v8 + 11016) = __src;
  *(v8 + 10968) = a3;
  *(v8 + 10920) = a2;
  memcpy((v8 + 8760), __src, 0x1A0uLL);
  sub_1AF7460FC(0);
  *(v8 + 11208) = v9;
  *(v8 + 11256) = *(v9 - 8);
  *(v8 + 11304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF7321BC, 0, 0);
}

uint64_t sub_1AF7321BC()
{
  v1 = *(v0 + 11112);
  v2 = *(v0 + 11064);
  v3 = *(v0 + 3881);
  v4 = *(v0 + 11016);
  v5 = *(v0 + 10968);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  memcpy((v6 + 24), v4, 0x1A0uLL);
  *(v6 + 440) = v3;
  *(v6 + 448) = v2;
  v7 = swift_allocObject();
  *(v0 + 11352) = v7;
  *(v7 + 16) = &unk_1AFE74D20;
  *(v7 + 24) = v6;

  sub_1AF745F28(v4, v0 + 9592);
  v8 = v2;
  sub_1AF744784(0);
  swift_asyncLet_begin();
  v9 = swift_allocObject();
  memcpy((v9 + 16), v4, 0x1A0uLL);
  *(v9 + 432) = v5;
  memcpy((v9 + 440), v1, 0x1A0uLL);
  *(v9 + 856) = v3;
  *(v9 + 864) = v2;
  v10 = swift_allocObject();
  *(v0 + 11400) = v10;
  *(v10 + 16) = &unk_1AFE74D40;
  *(v10 + 24) = v9;

  sub_1AF745F28(v4, v0 + 7096);
  v11 = v8;
  sub_1AF745F28(v1, v0 + 6264);
  sub_1AF0D0D84(0, &qword_1ED7231F0, sub_1AF746664);
  swift_asyncLet_begin();
  *(v0 + 11448) = v4[1];
  *(v0 + 11496) = v4[3];
  if (v4[16])
  {
    v12 = *(v0 + 11064);
    v13 = *(v0 + 11016);
    v14 = *(v0 + 10968);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    memcpy((v15 + 24), v13, 0x1A0uLL);
    *(v15 + 440) = v3;
    *(v15 + 448) = v12;
    v16 = swift_allocObject();
    *(v0 + 11544) = v16;
    *(v16 + 16) = &unk_1AFE74D78;
    *(v16 + 24) = v15;

    v17 = 10680;
    sub_1AF745F28(v13, v0 + 7512);
    v18 = v11;
    swift_asyncLet_begin();
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    memcpy((v19 + 24), v13, 0x1A0uLL);
    *(v19 + 440) = v3;
    *(v19 + 448) = v12;
    v20 = swift_allocObject();
    *(v0 + 11592) = v20;
    *(v20 + 16) = &unk_1AFE74D90;
    *(v20 + 24) = v19;

    sub_1AF745F28(v13, v0 + 8344);
    v21 = v18;
    swift_asyncLet_begin();
    v22 = sub_1AF7326B0;
    v23 = 11984;
    v24 = v0 + 2576;
  }

  else
  {
    v17 = 10632;
    v25 = *(v0 + 11064);
    v26 = *(v0 + 11016);
    v27 = *(v0 + 10968);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    memcpy((v28 + 24), v26, 0x1A0uLL);
    *(v28 + 440) = v3;
    *(v28 + 448) = v25;
    v29 = swift_allocObject();
    *(v0 + 12024) = v29;
    *(v29 + 16) = &unk_1AFE74D60;
    *(v29 + 24) = v28;

    sub_1AF745F28(v26, v0 + 6680);
    v30 = v11;
    swift_asyncLet_begin();
    v22 = sub_1AF733880;
    v23 = 11744;
    v24 = v0 + 1936;
  }

  return MEMORY[0x1EEE6DEC0](v24, v0 + v17, v22, v0 + v23);
}