BOOL _sSo24CMLUseCaseControlOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_224E27EA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SecretKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AspireApiPECConfig(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 12)
  {
    v14 = *(a1 + a3[6] + 8) >> 60;
    if (((4 * v14) & 0xC) != 0)
    {
      return 16 - ((4 * v14) & 0xC | (v14 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = type metadata accessor for PEC.SimilarityClient();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_224E28028(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SecretKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for AspireApiPECConfig(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v15 = (a1 + a4[6]);
    *v15 = 0;
    v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v16 = type metadata accessor for PEC.SimilarityClient();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[7];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_224E28690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224E286FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224E2876C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_224E28818(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E288E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_224E28A14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E28B44(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_224E28CC8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E28E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E28EF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E28F9C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 40) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_224E2912C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 32) = 0;
    *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E292C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_224E293F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E29550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_224E296A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_224E2980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E298C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E29970(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_224E29B00(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E29C8C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_224E29E10(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E29F94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_224E2A0C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E2A38C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPIRParametersVGMR) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for RequestsManager.PIRContext(0);
  v6 = *(v5 - 1);
  v34 = (*(v6 + 80) + v4 + 8) & ~*(v6 + 80);
  v35 = *(v6 + 80);
  v33 = *(v6 + 64);
  swift_unknownObjectRelease();
  v7 = (v0 + v3);

  v8 = v7 + v1[10];
  type metadata accessor for NetworkManagerType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v32 = v2;
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    v31 = *(v14 + 8);
    v31(v8, v13);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR) + 48);
    if (!(*(v14 + 48))(&v8[v15], 1, v13))
    {
      v31(&v8[v15], v13);
    }

    v2 = v32;
  }

  else if (!EnumCaseMultiPayload)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR) + 48);
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v8[v10], 1, v11))
    {
      (*(v12 + 8))(&v8[v10], v11);
    }
  }

  type metadata accessor for NetworkConfig(0);

  v16 = v0 + v34 + v5[5];
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = *(type metadata accessor for UserIdentifier(0) + 20);
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);

  v20 = v0 + v34 + v5[6];
  v21 = type metadata accessor for UnknownStorage();
  v22 = *(*(v21 - 8) + 8);
  v22(v20, v21);
  type metadata accessor for AspireApiPIRConfig(0);

  outlined consume of Data._Representation(*(v0 + v34 + v5[7]), *(v0 + v34 + v5[7] + 8));
  v23 = v5[8];
  v24 = v23 + *(type metadata accessor for SecretKey(0) + 20);
  v25 = type metadata accessor for HE.SerializedSecretKey();
  (*(*(v25 - 8) + 8))(v0 + v34 + v24, v25);
  swift_unknownObjectRelease();
  v26 = v0 + v34 + v5[10];
  v27 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {

    v22(v26 + *(v27 + 24), v21);
    v28 = v26 + *(v27 + 28);
    v29 = type metadata accessor for AspireHeEncryptionParameters(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {

      v22(v28 + *(v29 + 40), v21);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v33 + v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | v35 | 7);
}

uint64_t sub_224E2A928()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224E2A978(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UserIdentifier(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AspireApiPIRConfig(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = type metadata accessor for SecretKey(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_224E2AB38(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UserIdentifier(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for AspireApiPIRConfig(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = type metadata accessor for SecretKey(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_224E2ACF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224E2AD30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NetworkDelegationConfig.NoDelegationCodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_224E2AEB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8CipherML23WorkAroundForIdleMemory_transaction;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_224E2AF14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224E2AF54()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224E2AFA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224E2AFE4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224E2B02C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224E2B06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HE.SecurityLevel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for NetworkConfig(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_224E2B190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HE.SecurityLevel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for NetworkConfig(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_224E2B2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for HE.SerializedSecretKey();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_224E2B334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for HE.SerializedSecretKey();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_224E2B3B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224E2B3F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for AspireApiConfigResponse(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224E2B544@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_224E2B590(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_224E2B5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_224E2B648(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);
  outlined copy of Data?(*a1, v3);
  return v4(v2, v3);
}

double sub_224E2B78C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 256))(&v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_224E2B800(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  return (*(*v4 + 264))(&v6);
}

uint64_t sub_224E2B870(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SecretKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AspirePirBatchPirParameters(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 12)
  {
    v15 = *(a1 + a3[6] + 8) >> 60;
    if (((4 * v15) & 0xC) != 0)
    {
      return 16 - ((4 * v15) & 0xC | (v15 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v16 = type metadata accessor for AspireApiPIRConfig(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for PIR.BatchKeywordPirClient();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_224E2BA3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SecretKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for AspirePirBatchPirParameters(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 12)
  {
    v16 = (a1 + a4[6]);
    *v16 = 0;
    v16[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v17 = type metadata accessor for AspireApiPIRConfig(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v18 = type metadata accessor for PIR.BatchKeywordPirClient();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_224E2BC04@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_224E2BC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HE.SecurityLevel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_224E2BDC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HE.SecurityLevel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_224E2BEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224E2BF5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_224E2BFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_224E2C0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_224E2C17C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224E2C1B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 224))(*a2, a2[1]);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_224E2C220()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224E2C25C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224E2C2A4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224E2C2F0()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224E2C348()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224E2C39C()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224E2C3FC()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224E2C45C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224E2C64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PIR.SymmetricPIRClient();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_224E2C71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PIR.SymmetricPIRClient();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_224E2C7E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_224E2C890(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E2C934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_224E2C980(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

__n128 sub_224E2C9E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_224E2C9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_224E2CA40(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_224E2CAA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_224E2CAEC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_224E2CB4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_224E2CB98(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_224E2CBF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_224E2CC44(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t sub_224E2CD14()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224E2CDE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_224E2CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TokenFetcher.IssuerInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_224E2CF20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TokenFetcher.IssuerInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_224E2CFE8()
{
  v1 = *(type metadata accessor for TokenFetcher(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);

  v12(v0 + v7, v11);
  type metadata accessor for TokenFetcher.IssuerInfo(0);

  outlined consume of Data._Representation(*(v0 + v7 + v5[7]), *(v0 + v7 + v5[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_224E2D19C()
{
  v1 = *(type metadata accessor for TokenFetcher(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v2 | v6;
  v10 = v0 + v3;
  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);

  v12(v0 + v7, v11);
  type metadata accessor for TokenFetcher.IssuerInfo(0);

  outlined consume of Data._Representation(*(v0 + v7 + v5[7]), *(v0 + v7 + v5[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_224E2D348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224E2D380()
{
  v1 = *(type metadata accessor for TokenFetcher(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = (type metadata accessor for TokenFetcher.TokenFetchContext(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = v2 | v6;
  v9 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);

  v12(v0 + v7, v11);
  type metadata accessor for TokenFetcher.IssuerInfo(0);

  outlined consume of Data._Representation(*(v0 + v7 + v5[7]), *(v0 + v7 + v5[7] + 8));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v8 | 7);
}

uint64_t sub_224E2D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    return ((v10 >> 29) >> 31) & (((v10 >> 60 << 30) >> 31) - 2 * ((v10 & 0x1000000000000000) != 0) + 4);
  }
}

uint64_t sub_224E2D634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((((-a2 & 2) != 0) - 2 * a2) & 3) << 60;
  }

  return result;
}

uint64_t sub_224E2D70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_224E2D818(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_224E2D920()
{
  v1 = (type metadata accessor for RequestsManager.PECContext(0) - 8);
  v70 = *(*v1 + 80);
  v2 = (v70 + 48) & ~v70;
  v3 = *(*v1 + 64);
  v71 = type metadata accessor for AspireApiRequest(0);
  v69 = *(*(v71 - 8) + 80);
  v4 = (v2 + v3 + v69) & ~v69;
  v5 = *(*(v71 - 8) + 64);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14RequestContextVyAA19StaticPECParametersVGMd, &_s8CipherML14RequestContextVyAA19StaticPECParametersVGMR);
  v67 = *(*(v66 - 8) + 80);
  v6 = v5 + v67;
  v68 = *(*(v66 - 8) + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v2;

  v8 = v7 + v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(type metadata accessor for UserIdentifier(0) + 20);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  v12 = v7 + v1[8];
  v13 = *(type metadata accessor for SecretKey(0) + 20);
  v14 = type metadata accessor for HE.SerializedSecretKey();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);
  v15 = type metadata accessor for SimilarityClient(0);
  v16 = v12 + v15[5];
  outlined consume of Data._Representation(*(v16 + 32), *(v16 + 40));

  v17 = type metadata accessor for AspireApiPECConfig(0);
  v18 = v17[9];
  v19 = type metadata accessor for UnknownStorage();
  v72 = *(*(v19 - 8) + 8);
  v72(v16 + v18, v19);
  v20 = v16 + v17[10];
  v21 = type metadata accessor for AspireHeEncryptionParameters(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {

    v72(v20 + *(v21 + 40), v19);
  }

  v22 = v4 + v6;
  v23 = v16 + v17[11];
  v24 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    if (!(*(*(v25 - 8) + 48))(v23, 1, v25) && swift_getEnumCaseMultiPayload() <= 2)
    {
      v72(v23, v19);
    }

    v72(v23 + *(v24 + 20), v19);
  }

  v65 = v22 & ~v67;
  outlined consume of Data._Representation(*(v12 + v15[6]), *(v12 + v15[6] + 8));
  v26 = v15[7];
  v27 = type metadata accessor for PEC.SimilarityClient();
  (*(*(v27 - 8) + 8))(v12 + v26, v27);
  v28 = v0 + v4;

  v29 = v71;
  v30 = v28 + *(v71 + 20);
  v31 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Data._Representation(*v30, *(v30 + 8));
    outlined consume of Data._Representation(*(v30 + 16), *(v30 + 24));
    v63 = (type metadata accessor for AspireApiOPRFRequest(0) + 24);
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 1)
  {

    outlined consume of Data._Representation(*(v30 + 16), *(v30 + 24));
    v49 = type metadata accessor for AspireApiPECRequest(0);
    v72(v30 + v49[7], v19);
    v50 = v30 + v49[8];
    v42 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    v43 = *(*(v42 - 8) + 48);
    if (!v43(v50, 1, v42))
    {
      outlined consume of Data._Representation(*(v50 + 8), *(v50 + 16));
      v72(v50 + *(v42 + 24), v19);
    }

    v44 = v49[9];
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    outlined consume of Data._Representation(*(v30 + 8), *(v30 + 16));
    v38 = type metadata accessor for AspireApiPIRRequest(0);
    v72(v30 + v38[6], v19);
    v39 = v30 + v38[7];
    v40 = type metadata accessor for AspirePirEncryptedIndices(0);
    if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
    {

      v72(v39 + *(v40 + 24), v19);
    }

    v41 = v30 + v38[8];
    v42 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
    v43 = *(*(v42 - 8) + 48);
    if (!v43(v41, 1, v42))
    {
      outlined consume of Data._Representation(*(v41 + 8), *(v41 + 16));
      v72(v41 + *(v42 + 24), v19);
    }

    v44 = v38[10];
  }

  v51 = v30 + v44;
  v52 = type metadata accessor for AspireApiEvaluationKey(0);
  v29 = v71;
  if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
  {
    v72(v51, v19);
    v53 = v51 + *(v52 + 20);
    if (!v43(v53, 1, v42))
    {
      outlined consume of Data._Representation(*(v53 + 8), *(v53 + 16));
      v72(v53 + *(v42 + 24), v19);
    }

    v54 = v51 + *(v52 + 24);
    v55 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
    v29 = v71;
    if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
    {
      v72(v54, v19);
      v56 = v54 + *(v55 + 20);
      v57 = type metadata accessor for AspireHeSerializedGaloisKey(0);
      if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
      {

        v72(v56 + *(v57 + 20), v19);
      }

      v58 = v54 + *(v55 + 24);
      v59 = type metadata accessor for AspireHeSerializedRelinKey(0);
      v29 = v71;
      if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        v72(v58, v19);
        v60 = v58 + *(v59 + 20);
        v61 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
        if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
        {
          v72(v60, v19);
          v30 = v60 + *(v61 + 20);
          v62 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
          if (!(*(*(v62 - 8) + 48))(v30, 1, v62))
          {

            v63 = (v62 + 20);
LABEL_41:
            v72(v30 + *v63, v19);
          }
        }
      }
    }
  }

LABEL_9:
  v72(v28 + *(v29 + 24), v19);

  v32 = v0 + v65 + *(v66 + 32);
  type metadata accessor for NetworkManagerType(0);
  v33 = swift_getEnumCaseMultiPayload();
  if (v33 == 1)
  {
    v45 = type metadata accessor for URL();
    v46 = *(v45 - 8);
    v47 = *(v46 + 8);
    v47(v32, v45);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR) + 48);
    if (!(*(v46 + 48))(v32 + v48, 1, v45))
    {
      v47(v32 + v48, v45);
    }
  }

  else if (!v33)
  {

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMd, &_sSS9featureId_10Foundation3URLVSg8endpointSbSg22privacyProxyFailClosedtMR) + 48);
    v35 = type metadata accessor for URL();
    v36 = *(v35 - 8);
    if (!(*(v36 + 48))(v32 + v34, 1, v35))
    {
      (*(v36 + 8))(v32 + v34, v35);
    }
  }

  type metadata accessor for NetworkConfig(0);

  return MEMORY[0x2821FE8E8](v0, v65 + v68, v70 | v69 | v67 | 7);
}

uint64_t sub_224E2E4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UserIdentifier(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SimilarityClient(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_224E2E604(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UserIdentifier(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SimilarityClient(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E2E730()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224E2E770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

__n128 sub_224E2E7CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_224E2E7E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SecretKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AspireApiPIRConfig(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 12)
  {
    v14 = *(a1 + a3[6] + 8) >> 60;
    if (((4 * v14) & 0xC) != 0)
    {
      return 16 - ((4 * v14) & 0xC | (v14 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = type metadata accessor for PIR.IndexPirClient();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_224E2E964(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SecretKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for AspireApiPIRConfig(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v15 = (a1 + a4[6]);
    *v15 = 0;
    v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v16 = type metadata accessor for PIR.IndexPirClient();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[8];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_224E2EAE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SecretKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for AspireApiPIRConfig(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for PIR.KeywordPirClient();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8] + 16);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_224E2EC38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SecretKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AspireApiPIRConfig(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for PIR.KeywordPirClient();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 16) = -a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_224E2ED8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224E2EE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for AMDPbHEResponse(0);
  v5 = (a1 + *(result + 36));
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  if (v8)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = (v8 | v7) & 1;
  return result;
}

uint64_t sub_224E2EE98(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = type metadata accessor for AMDPbHEResponse(0);
  v6 = a2 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 9) = 0;
  return result;
}

uint64_t sub_224E2F018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_224E2F148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMd, &_s8CipherML15AMDPbHEResponseV14OneOf_ResponseOSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AspireSimilaritySimilarityMetric(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AspireSimilaritySimilarityMetric(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for AspireSimilaritySimilarityMetric(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AspireSimilaritySimilarityMetric(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance AspireHeSerializedSeededCiphertext@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_225022910;
  a1[1] = xmmword_225022910;
  return UnknownStorage.init()();
}

uint64_t sub_224E2F5A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  *a2 = *(a1 + *(result + 36)) & 1;
  return result;
}

uint64_t sub_224E2F5E4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_224E2F618@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_224E2F660(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AspireApiPIRShardConfig(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_224E2F6FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_224E2F90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E2F9C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E2FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_224E2FBF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_224E2FD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_224E2FEA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    v11 = type metadata accessor for UnknownStorage();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_224E2FFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_224E300FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UnknownStorage();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E30254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E30300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E303A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224E30460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224E30568(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_224E30754(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_224E30934(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_224E30A64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiStashOfEntriesVSgMd, &_s8CipherML23AspireApiStashOfEntriesVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E30B94(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_224E30D18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E30E9C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_224E31020(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML22AspireApiEvaluationKeyVSgMd, &_s8CipherML22AspireApiEvaluationKeyVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E311E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224E312E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance AspireHeHeScheme@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AspireHeHeScheme@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_224E31618@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirParameters(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML22AspirePirPirParametersP33_B705AA2B9AD83800013CA213F8CF820D13_StorageClass__compressVectorizedPirResponse;
  result = swift_beginAccess();
  *a2 = *(v3 + v4) & 1;
  return result;
}

uint64_t sub_224E316C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v5 = (a1 + *(result + 44));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_224E31708(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AspirePirBatchKeywordPirConfig(0);
  v5 = a2 + *(result + 44);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_224E317D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 80);
  *(a2 + 16) = v6;

  return outlined copy of AspirePirPirPreprocessDbArgs.OneOf_Sharding?(v4, v5, v6);
}

uint64_t sub_224E318A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 178) & 1;
  return result;
}

uint64_t sub_224E31904@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 180);
  if (*(v3 + 184))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_224E3196C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 185) & 1;
  return result;
}

uint64_t sub_224E319CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspirePirPirPreprocessDbArgs(0) + 20));
  result = swift_beginAccess();
  *a2 = *(v3 + 186) & 1;
  return result;
}

uint64_t sub_224E31B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224E31BC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E31C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_224E31D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspirePirCuckooTableConfigVSgMd, &_s8CipherML26AspirePirCuckooTableConfigVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_224E31E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E31F20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E31FC4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  v10 = type metadata accessor for UnknownStorage();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[6];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(a1 + v13, a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_224E32148(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMd, &_s8CipherML018AspirePirSymmetricD12ClientConfigVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspirePirPIRShardingFunctionVSgMd, &_s8CipherML28AspirePirPIRShardingFunctionVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E322F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_224E3235C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_224E323CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_224E32444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_224E324C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_224E3256C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E32610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_224E326E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_224E327A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_224E3284C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E32918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_224E32990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_224E32A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UnknownStorage();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_224E32B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMd, &_s8CipherML09AspirePirD19PreprocessDbCommandV7KeywordV12OneOf_ConfigOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UnknownStorage();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_224E32C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_224E32D04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E32F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224E33058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224E33160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_224E33218(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E332C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E33370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E33468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_224E335C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeSerializedGaloisKeyVSgMd, &_s8CipherML27AspireHeSerializedGaloisKeyVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AspireHeSerializedRelinKeyVSgMd, &_s8CipherML26AspireHeSerializedRelinKeyVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_224E33724(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_224E33854(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E33984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E33A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E33AE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for AspireApiConfigResponse(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {

    v6 = *(v5 + 24);
    v7 = type metadata accessor for UnknownStorage();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224E33C34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of AMDPbHEConfig.OneOf_Config?(v3 + 192, a2, &_s8CipherML14NetworkManager_pSgMd, &_s8CipherML14NetworkManager_pSgMR);
}

uint64_t sub_224E33C94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224E33CE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224E33D34()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224E33D74()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_224E33DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224E33EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224E341FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = (a1 + *(result + 32));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_224E34244(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for AspireSimilaritySimilarityServerConfig(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_224E34420@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AspireSimilarityPecPreprocessDbArgs(0) + 20));
  v4 = OBJC_IVAR____TtCV8CipherML35AspireSimilarityPecPreprocessDbArgsP33_4D7576BA24B7551E27E183CD62A8FB2B13_StorageClass__parallel;
  result = swift_beginAccess();
  *a2 = *(v3 + v4) & 1;
  return result;
}

uint64_t sub_224E34490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224E3458C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_224E346A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_224E34828(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E349AC(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  v10 = type metadata accessor for UnknownStorage();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = a3[5];
LABEL_9:
    v15 = *(v12 + 48);

    return v15(&a1[v13], a2, v11);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v11 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[7]];

  return v17(v18, a2, v16);
}

_BYTE *sub_224E34B30(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ClientConfigVSgMd, &_s8CipherML016AspireSimilarityD12ClientConfigVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_224E34CB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_224E34DE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspireSimilarityD12ServerConfigVSgMd, &_s8CipherML016AspireSimilarityD12ServerConfigVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_224E34F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_224E34FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E35060(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_224E3510C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_224E351B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_224E3526C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224E3537C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_224E353C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t sub_224E35430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_224E3547C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 192);
  outlined copy of Data._Representation(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_224E35534@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of NetworkManager(v3 + 16, a2);
}

uint64_t outlined init with take of LocalizedError(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

void sub_224E3646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_224E38088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_224E384C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E38D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E39244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E39748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E39C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E3AF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_224E3B2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAMDClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMDClientClass_softClass;
  v7 = getAMDClientClass_softClass;
  if (!getAMDClientClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMDClientClass_block_invoke;
    v3[3] = &unk_278541B30;
    v3[4] = &v4;
    __getAMDClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_224E3BD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMDClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppleMediaDiscoveryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaDiscoveryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278541B50;
    v6 = 0;
    AppleMediaDiscoveryLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaDiscoveryLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AMDClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMDClientClass_block_invoke_cold_1();
  }

  getAMDClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaDiscoveryLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppleMediaDiscoveryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_224E3CF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_224E3D268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224E3E644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_224E3EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E3F7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E3FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E4000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E40450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E408A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E40D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E4145C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224E42324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E42890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E42D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E43194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E43614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E43A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E43FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E44868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E44CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_224E45108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for SimilarityClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for SimilarityClient;
  if (!type metadata singleton initialization cache for SimilarityClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SimilarityClient.configId.getter()
{
  v1 = v0 + *(type metadata accessor for SimilarityClient(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t SimilarityClient.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SimilarityClient(0) + 28);
  v4 = type metadata accessor for PEC.SimilarityClient();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SimilarityClient.init(secretKey:config:configId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v30 = a5;
  v7 = type metadata accessor for HE.SerializedSecretKey();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PEC.SimilarityClient();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PEC.SimilarityClientConfig();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  AspireApiPECConfig.cryptokit()(&v28 - v18);
  if (v5)
  {
    outlined consume of Data._Representation(v34, v35);
    outlined destroy of AspireApiPECConfig(a2, type metadata accessor for AspireApiPECConfig);
    return outlined destroy of AspireApiPECConfig(v36, type metadata accessor for SecretKey);
  }

  else
  {
    v28 = v11;
    v29 = v10;
    v21 = v34;
    (*(v14 + 16))(v16, v19, v13);
    v22 = type metadata accessor for SecretKey(0);
    (*(v31 + 16))(v9, v36 + *(v22 + 20), v32);
    v23 = v33;
    PEC.SimilarityClient.init(config:secretKey:)();
    (*(v14 + 8))(v19, v13);
    v24 = v30;
    outlined init with take of SecretKey(v36, v30, type metadata accessor for SecretKey);
    v25 = type metadata accessor for SimilarityClient(0);
    outlined init with take of SecretKey(a2, v24 + v25[5], type metadata accessor for AspireApiPECConfig);
    v26 = (v24 + v25[6]);
    v27 = v35;
    *v26 = v21;
    v26[1] = v27;
    return (*(v28 + 32))(v24 + v25[7], v23, v29);
  }
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t SimilarityClient.encryptValues(_:shardIndices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v17 = a2;
  v18 = a3;
  v7 = type metadata accessor for PEC.SimilarityClientConfig();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  type metadata accessor for SimilarityClient(0);
  PEC.SimilarityClient.similarityConfig.getter();
  v12 = PEC.SimilarityClientConfig.embeddingDimension.getter();
  (*(v8 + 8))(v10, v7);
  if (v12 == -1)
  {
    goto LABEL_6;
  }

  if (v12)
  {
    v11 %= v12;
  }

  if (!v11)
  {
LABEL_6:
    result = PEC.SimilarityClient.queryCrt(values:)();
    if (!v4)
    {
      v14 = result;
      v15 = type metadata accessor for AspireApiPECRequest(0);
      MEMORY[0x28223BE20](v15);
      *(&v16 - 4) = v17;
      *(&v16 - 3) = v14;
      *(&v16 - 2) = v5;
      lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type AspireApiPECRequest and conformance AspireApiPECRequest, type metadata accessor for AspireApiPECRequest, &protocol conformance descriptor for AspireApiPECRequest);
      static Message.with(_:)();
    }
  }

  else
  {
    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in SimilarityClient.encryptValues(_:shardIndices:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v48 = a4;
  v44 = type metadata accessor for PEC.SerializedCiphertextCoeffMatrix();
  v55 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v54 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v56 = a3;
    v17 = v12;
    v57 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v57;
    v19 = (a2 + 32);
    while (1)
    {
      v21 = *v19++;
      v20 = v21;
      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_19;
      }

      v57 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v16 = v57;
      }

      *(v16 + 16) = v23 + 1;
      *(v16 + 4 * v23 + 32) = v20;
      if (!--v15)
      {
        v12 = v17;
        v5 = v4;
        a3 = v56;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_9:

    *a1 = v16;
    v24 = *(a3 + 16);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v43 = a1;
      v57 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v25 = v57;
      v26 = *(v55 + 16);
      v27 = a3 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v50 = (v55 + 8);
      v51 = v26;
      v55 += 16;
      v49 = *(v55 + 56);
      v28 = v44;
      while (1)
      {
        v56 = v24;
        v29 = v54;
        v30 = v51(v54, v27, v28);
        MEMORY[0x28223BE20](v30);
        *(&v43 - 2) = v29;
        lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type AspireSimilaritySerializedCiphertextMatrix and conformance AspireSimilaritySerializedCiphertextMatrix, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, &protocol conformance descriptor for AspireSimilaritySerializedCiphertextMatrix);
        static Message.with(_:)();
        if (v5)
        {
          break;
        }

        (*v50)(v29, v28);
        v57 = v25;
        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
          v28 = v44;
          v25 = v57;
        }

        *(v25 + 16) = v32 + 1;
        outlined init with take of SecretKey(v12, v25 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v32, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        v27 += v49;
        v24 = v56 - 1;
        if (v56 == 1)
        {
          a1 = v43;
          goto LABEL_17;
        }
      }

      (*v50)(v29, v28);
    }

    else
    {
LABEL_17:

      a1[1] = v25;
      MEMORY[0x28223BE20](v33);
      v34 = v48;
      *(&v43 - 2) = v48;
      lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
      v35 = v45;
      v36 = v47;
      static Message.with(_:)();
      v37 = *(type metadata accessor for AspireApiPECRequest(0) + 32);
      outlined destroy of AspireApiEvaluationKeyMetadata?(a1 + v37);
      outlined init with take of SecretKey(v35, a1 + v37, type metadata accessor for AspireApiEvaluationKeyMetadata);
      (*(v46 + 56))(a1 + v37, 0, 1, v36);
      v38 = (v34 + *(type metadata accessor for SimilarityClient(0) + 24));
      v39 = *v38;
      v40 = v38[1];
      v41 = a1[2];
      v42 = a1[3];
      outlined copy of Data._Representation(*v38, v40);
      result = outlined consume of Data._Representation(v41, v42);
      a1[2] = v39;
      a1[3] = v40;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML42AspireSimilaritySerializedCiphertextMatrixVG_16CryptoKitPrivate3PECO0hi5CoeffJ0VsAE_pTg5(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for PEC.SerializedCiphertextCoeffMatrix();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v21;
    v11 = *(type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0) - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v11 + 72);
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      v12 += v16[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4name_Says5UInt8VG16existingConfigIdtG_SS_8CipherML09AspireApiG0VtsAE_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v21;
    for (i = (a3 + 48); ; i += 3)
    {
      v13 = *(i - 1);
      v14 = *i;
      v20[0] = *(i - 2);
      v20[1] = v13;
      v20[2] = v14;

      (v18[0])(v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v16 + 1;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4name_Says5UInt8VG16existingConfigIdtG_8CipherML18AspireApiKeyStatusVsAE_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v6 = type metadata accessor for AspireApiKeyStatus(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v21;
    for (i = (a3 + 48); ; i += 3)
    {
      v13 = *(i - 1);
      v14 = *i;
      v20[0] = *(i - 2);
      v20[1] = v13;
      v20[2] = v14;

      (v18[0])(v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v21 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v16 + 1;
      outlined init with take of SecretKey(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for AspireApiKeyStatus);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_8CipherML16AspireApiRequestVsAE_pTg5(void (*a1)(__int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v6 = type metadata accessor for AspireApiRequest(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v21;
    for (i = (a3 + 32); ; ++i)
    {
      v20 = *i;
      outlined copy of Data._Representation(v20, *(&v20 + 1));
      v17(&v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of Data._Representation(v20, *(&v20 + 1));
      v21 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v14 + 1;
      outlined init with take of SecretKey(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, type metadata accessor for AspireApiRequest);
      if (!--v10)
      {
        return v11;
      }
    }

    outlined consume of Data._Representation(v20, *(&v20 + 1));
  }

  return v11;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML19AspireApiPIRRequestVG_AF0fG7RequestVs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  v21 = a1;
  v22 = a2;
  v8 = type metadata accessor for AspireApiRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  v13 = v23;
  v14 = *(a4(0) - 8);
  v15 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v20 = *(v14 + 72);
  while (1)
  {
    v21(v15);
    if (v6)
    {
      break;
    }

    v6 = 0;
    v23 = v13;
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      v13 = v23;
    }

    *(v13 + 16) = v17 + 1;
    outlined init with take of SecretKey(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, type metadata accessor for AspireApiRequest);
    v15 += v20;
    if (!--v12)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_16CryptoKitPrivate3PIRO14BlindedKeywordVsAE_pTg5(void (*a1)(__int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = type metadata accessor for PIR.BlindedKeyword();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v21;
    v11 = (a3 + 32);
    v15[1] = v6 + 32;
    while (1)
    {
      v20 = *v11;
      outlined copy of Data._Representation(v20, *(&v20 + 1));
      v17(&v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;
      outlined consume of Data._Representation(v20, *(&v20 + 1));
      v21 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v13 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
      ++v11;
      if (!--v9)
      {
        return v10;
      }
    }

    outlined consume of Data._Representation(v20, *(&v20 + 1));
  }

  return v10;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_8CipherML19SymmetricPirKeywordVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v21;
  for (i = (a3 + 32); ; ++i)
  {
    v18 = *i;
    outlined copy of Data._Representation(v18, *(&v18 + 1));
    a1(&v19, &v18);
    if (v4)
    {
      break;
    }

    v4 = 0;
    outlined consume of Data._Representation(v18, *(&v18 + 1));
    v10 = v19;
    v11 = v20;
    v21 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v16 = v20;
      v17 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v11 = v16;
      v10 = v17;
      v6 = v21;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 32 * v13;
    *(v14 + 32) = v10;
    *(v14 + 48) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  outlined consume of Data._Representation(v18, *(&v18 + 1));

  __break(1u);
  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_10Foundation4DataVsAE_pTg5(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = result;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }

      v19 = a3 + v8;
      result = (v16)(&v20, &v19, &v18);
      if (v4)
      {

        return v6;
      }

      v12 = v20;
      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v20;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 16 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_20;
      }

      if (v10 == ++v8)
      {
        goto LABEL_21;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in SimilarityClient.encryptValues(_:shardIndices:)(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2 + *(type metadata accessor for SimilarityClient(0) + 20);
  v4 = *(v3 + 4);
  v5 = *(v3 + 5);
  v6 = a1[1];
  v7 = a1[2];
  outlined copy of Data._Representation(v4, v5);
  result = outlined consume of Data._Representation(v6, v7);
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t *SimilarityClient.decryptSimilarityScores(shard:)(uint64_t *a1)
{
  v2 = a1;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CipherML42AspireSimilaritySerializedCiphertextMatrixVG_16CryptoKitPrivate3PECO0hi5CoeffJ0VsAE_pTg5(partial apply for closure #1 in SimilarityClient.decryptSimilarityScores(shard:), v48, *a1);
  if (v1)
  {
    return v2;
  }

  v4 = v2[1];
  v3 = v2[2];
  type metadata accessor for SimilarityClient(0);
  v5 = PEC.SimilarityClient.decryptCrt(reply:)();

  v7 = *(v4 + 16);
  v8 = *(v3 + 16);
  if (v7)
  {
    if (v8)
    {
      v9 = v7 == v8;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {

      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v49 = 0x7364497972746E65;
      v50 = 0xEF20746E756F632ELL;
      v51 = v7;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v22);

      MEMORY[0x22AA60A80](0xD00000000000001CLL, 0x8000000225035600);
      v51 = v8;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA60A80](v23);

      v24 = v49;
      v25 = v50;
      type metadata accessor for CipherMLError(0);
      lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
      v2 = swift_allocError();
      *v26 = v24;
      v26[1] = v25;
LABEL_27:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v2;
    }

    v10 = *(v5 + 16);
    if (v10 % v7)
    {
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.daemon);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134349312;
        *(v14 + 4) = *(v4 + 16);

        *(v14 + 12) = 2050;
        v15 = *(v5 + 16);

        *(v14 + 14) = v15;

        _os_log_impl(&dword_224E26000, v12, v13, "Wrong entryIds.count %{public}ld.\nMust be 0 or divide scores.count %{public}ld", v14, 0x16u);
        v16 = v14;
LABEL_18:
        MEMORY[0x22AA61F40](v16, -1, -1);

LABEL_26:
        type metadata accessor for CipherMLError(0);
        lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        v2 = swift_allocError();
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (!v8 || !(v10 % v8))
    {
      v28 = *(v5 + 16);
      if (v7 > v28)
      {

        return MEMORY[0x277D84F90];
      }

      v49 = MEMORY[0x277D84F90];
      v29 = v28 / v7;
      v30 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 / v7, 0);
      v31 = 0;
      v2 = v49;
      v45 = v5 + 32;
      v46 = v5;
      v43 = v3;
      v44 = v8;
      while (v31 < v29)
      {
        v47 = v31;
        if (v8)
        {
          MEMORY[0x28223BE20](v30);

          v32 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVys010EnumeratedE0VySays6UInt64VGGSay10Foundation4DataVGG_So18CMLSimilarityScoreCs5NeverOTg506_sSis6g14V10Foundation4i5VSo18jk37CIgyygo_Si6offset_AB7elementt_AEtAGs5L11OIegnrzr_TRSiAkpTIgyygo_Tf1cn_nTf4ng_n(v4, v3, partial apply for closure #2 in closure #2 in SimilarityClient.decryptSimilarityScores(shard:));
        }

        else
        {
          v33 = *(v4 + 16);
          if (v33)
          {
            v51 = MEMORY[0x277D84F90];
            specialized ContiguousArray.reserveCapacity(_:)();
            v3 = *(v4 + 16);
            v34 = objc_opt_self();
            v36 = 0;
            while (v3 != v36)
            {
              if (v36 >= *(v4 + 16))
              {
                goto LABEL_49;
              }

              v37 = v36 * v29;
              if ((v36 * v29) >> 64 != (v36 * v29) >> 63)
              {
                goto LABEL_50;
              }

              v38 = __OFADD__(v37, v47);
              v39 = v37 + v47;
              if (v38)
              {
                goto LABEL_51;
              }

              if ((v39 & 0x8000000000000000) != 0)
              {
                goto LABEL_52;
              }

              if (v39 >= *(v46 + 16))
              {
                goto LABEL_53;
              }

              v5 = v36 + 1;
              LODWORD(v35) = *(v45 + 4 * v39);
              v40 = [v34 scoreWithIdentifier:*(v4 + 32 + 8 * v36) score:v35];
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v30 = specialized ContiguousArray._endMutation()();
              v36 = v5;
              if (v33 == v5)
              {
                v32 = v51;
                v5 = v46;
                v3 = v43;
                goto LABEL_44;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            break;
          }

          v32 = MEMORY[0x277D84F90];
        }

LABEL_44:
        v49 = v2;
        v42 = v2[2];
        v41 = v2[3];
        if (v42 >= v41 >> 1)
        {
          v30 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
          v2 = v49;
        }

        v31 = v47 + 1;
        v2[2] = v42 + 1;
        v2[v42 + 4] = v32;
        v8 = v44;
        if (v47 + 1 == v29)
        {

          return v2;
        }
      }

      __break(1u);
LABEL_55:
      swift_once();
LABEL_16:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.daemon);

      v12 = Logger.logObject.getter();
      v18 = v3;
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134349312;
        *(v20 + 4) = *(v18 + 16);

        *(v20 + 12) = 2050;
        v21 = *(v5 + 16);

        *(v20 + 14) = v21;

        _os_log_impl(&dword_224E26000, v12, v19, "Wrong metadatas.count %{public}ld.\nMust be 0 or divide scores.count %{public}ld", v20, 0x16u);
        v16 = v20;
        goto LABEL_18;
      }

LABEL_25:

      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

LABEL_15:
    if (one-time initialization token for daemon == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

  if (!v8)
  {

    type metadata accessor for CipherMLError(0);
    lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    v2 = swift_allocError();
    *v27 = 0xD000000000000030;
    v27[1] = 0x8000000225035620;
    goto LABEL_27;
  }

  if (*(v5 + 16) % v8)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in SimilarityClient.decryptSimilarityScores(shard:)@<X0>(void *a3@<X2>, uint64_t x8_0@<X8>)
{
  v16 = a3;
  v5 = type metadata accessor for HE.EncryptionParams();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PEC.SimilarityClientConfig();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SimilarityClient(0);
  PEC.SimilarityClient.similarityConfig.getter();
  PEC.SimilarityClientConfig.encryptionParams.getter();
  (*(v10 + 8))(v12, v9);
  v13 = v17;
  AspireSimilaritySerializedCiphertextMatrix.cryptokit(encryptionParams:)(v8, x8_0);
  result = (*(v6 + 8))(v8, v5);
  if (v13)
  {
    *v16 = v13;
  }

  return result;
}

uint64_t closure #2 in closure #2 in SimilarityClient.decryptSimilarityScores(shard:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result * a6;
  if ((result * a6) >> 64 != (result * a6) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = __OFADD__(v7, a7);
  v9 = v7 + a7;
  if (v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < *(a5 + 16))
  {
    v11 = *(a5 + 4 * v9 + 32);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = objc_opt_self();
    LODWORD(v14) = v11;
    v15 = [v13 scoreWithIdentifier:a2 score:isa metadata:v14];

    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

void SimilarityClient.decryptSimilarityScores(_:)(uint64_t *a1)
{
  v3 = v2;
  v5 = type metadata accessor for AspireApiPECShardResponse(0);
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtMd, &_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = (&v59 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtSgMd, &_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v70 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v69 = (&v59 - v15);
  v16 = 0;
  v17 = *a1;
  v18 = *(*a1 + 16);
  v68 = (v9 + 56);
  v19 = MEMORY[0x277D84F90];
  v66 = v17;
  v67 = (v9 + 48);
  v65 = v18;
  v61 = v7;
  v60 = v1;
  v59 = v8;
  while (1)
  {
    if (v16 == v18)
    {
      v20 = 1;
      v71 = v18;
      v21 = v70;
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      if (v16 >= *(v17 + 16))
      {
LABEL_78:
        __break(1u);
        return;
      }

      v22 = v16 + 1;
      v23 = v62;
      v24 = v17 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v16;
      v25 = *(v8 + 48);
      *v62 = v16;
      outlined init with copy of SecretKey(v24, v23 + v25, type metadata accessor for AspireApiPECShardResponse);
      v26 = v23;
      v21 = v70;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v26, v70, &_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtMd, &_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtMR);
      v20 = 0;
      v71 = v22;
    }

    (*v68)(v21, v20, 1, v8, v14);
    v27 = v69;
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v21, v69, &_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtSgMd, &_sSi6offset_8CipherML25AspireApiPECShardResponseV7elementtSgMR);
    if ((*v67)(v27, 1, v8) == 1)
    {
      return;
    }

    v28 = v27;
    v29 = *v27;
    outlined init with take of SecretKey(v28 + *(v8 + 48), v7, type metadata accessor for AspireApiPECShardResponse);
    v76 = SimilarityClient.decryptSimilarityScores(shard:)(v7);
    if (v3)
    {
      outlined destroy of AspireApiPECConfig(v7, type metadata accessor for AspireApiPECShardResponse);

      return;
    }

    if (!v29)
    {
      outlined destroy of AspireApiPECConfig(v7, type metadata accessor for AspireApiPECShardResponse);

      v19 = v76;
      goto LABEL_3;
    }

    v30 = v19[2];
    if (v30 != v76[2])
    {
      break;
    }

    v72 = v19[2];
    if (v30)
    {
      v64 = 0;
      v31 = 0;
      v73 = v76 + 4;
      v32 = v72;
      while (1)
      {
        if (v31 >= v76[2])
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v33 = v73[v31];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        }

        if (v31 >= v19[2])
        {
          goto LABEL_71;
        }

        v34 = v33 >> 62;
        if (v33 >> 62)
        {
          if (v33 < 0)
          {
            v56 = v33;
          }

          else
          {
            v56 = v33 & 0xFFFFFFFFFFFFFF8;
          }

          v35 = MEMORY[0x22AA610B0](v56);
        }

        else
        {
          v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v19 + 4;
        v37 = v19[v31 + 4];
        if (v37 >> 62)
        {
          if (v37 < 0)
          {
            v57 = v19[v31 + 4];
          }

          else
          {
            v57 = v37 & 0xFFFFFFFFFFFFFF8;
          }

          v58 = MEMORY[0x22AA610B0](v57);
          v39 = v58 + v35;
          if (__OFADD__(v58, v35))
          {
            goto LABEL_72;
          }
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v39 = v38 + v35;
          if (__OFADD__(v38, v35))
          {
            goto LABEL_72;
          }
        }

        v40 = v36[v31];
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v36[v31] = v40;
        v77 = v19 + 4;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v42 = v40 & 0xFFFFFFFFFFFFFF8;
          if (v39 <= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_38;
          }
        }

        else if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
        {
LABEL_33:
          if (v40 < 0)
          {
            v43 = v40;
          }

          else
          {
            v43 = v40 & 0xFFFFFFFFFFFFFF8;
          }

          MEMORY[0x22AA610B0](v43);
          goto LABEL_37;
        }

        v36 = v77;
LABEL_37:

        v36[v31] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();

        v42 = v36[v31] & 0xFFFFFFFFFFFFFF8;
LABEL_38:
        v79 = v35;
        v44 = *(v42 + 16);
        v45 = *(v42 + 24);
        if (v34)
        {
          if (v33 < 0)
          {
            v47 = v33;
          }

          else
          {
            v47 = v33 & 0xFFFFFFFFFFFFFF8;
          }

          v46 = MEMORY[0x22AA610B0](v47);
          if (v46)
          {
LABEL_45:
            if (((v45 >> 1) - v44) < v79)
            {
              goto LABEL_74;
            }

            v74 = v31;
            v75 = v19;
            v48 = v42 + 8 * v44 + 32;
            if (v34)
            {
              if (v46 < 1)
              {
                goto LABEL_76;
              }

              lazy protocol witness table accessor for type [CMLSimilarityScore] and conformance [A]();
              for (i = 0; i != v46; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
                v50 = specialized protocol witness for Collection.subscript.read in conformance [A](v78, i, v33);
                v52 = *v51;
                (v50)(v78, 0);
                *(v48 + 8 * i) = v52;
              }
            }

            else
            {
              type metadata accessor for CMLSimilarityScore();
              swift_arrayInitWithCopy();
            }

            v31 = v74;
            v19 = v75;
            v32 = v72;
            if (v79 > 0)
            {
              v53 = *((v77[v74] & 0xFFFFFFFFFFFFFF8) + 0x10);
              v54 = __OFADD__(v53, v79);
              v55 = v53 + v79;
              if (v54)
              {
                goto LABEL_75;
              }

              *((v77[v74] & 0xFFFFFFFFFFFFFF8) + 0x10) = v55;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v46 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v46)
          {
            goto LABEL_45;
          }
        }

        if (v79 > 0)
        {
          goto LABEL_73;
        }

LABEL_16:
        if (++v31 == v32)
        {

          v3 = v64;
          v7 = v61;
          v8 = v59;
          goto LABEL_66;
        }
      }
    }

LABEL_66:
    outlined destroy of AspireApiPECConfig(v7, type metadata accessor for AspireApiPECShardResponse);
LABEL_3:
    v18 = v65;
    v17 = v66;
    v16 = v71;
  }

  type metadata accessor for CipherMLError(0);
  lazy protocol witness table accessor for type CipherMLError and conformance CipherMLError(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  outlined destroy of AspireApiPECConfig(v7, type metadata accessor for AspireApiPECShardResponse);
}

uint64_t default argument 2 of AMSNetworking.init(networkDelegationConfig:secondaryIdentifier:baseURL:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  URL.init(string:)();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

double default argument 0 of StaticPECParameters.init(differentialPrivacyParameters:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

uint64_t default argument 5 of UseCaseGroup.init(useCases:networkConfig:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:keyRotationIgnoreMissingEvaluationKey:securityLevel:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D02EE8];
  v3 = type metadata accessor for HE.SecurityLevel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t default argument 0 of ActiveUseCaseTracker.init(persistenceFile:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void *protocol witness for SetAlgebra.remove(_:) in conformance CMLUseCaseControlOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance CMLUseCaseControlOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CMLUseCaseControlOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CMLUseCaseControlOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate2HEO10RlweParamsOGMd, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate2HEO10RlweParamsOGMR, MEMORY[0x277D02EC8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML42AspireSimilaritySerializedCiphertextMatrixVGMd, &_ss23_ContiguousArrayStorageCy8CipherML42AspireSimilaritySerializedCiphertextMatrixVGMR, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySo18CMLSimilarityScoreCGGMd, &_ss23_ContiguousArrayStorageCySaySo18CMLSimilarityScoreCGGMR, &_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate3PECO31SerializedCiphertextCoeffMatrixVGMd, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate3PECO31SerializedCiphertextCoeffMatrixVGMR, MEMORY[0x277D02F98]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate2HEO20SerializedCiphertextOGMd, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate2HEO20SerializedCiphertextOGMR, MEMORY[0x277D02F38]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMd, &_ss23_ContiguousArrayStorageCy8CipherML18AspireApiKeyStatusVGMR, type metadata accessor for AspireApiKeyStatus);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML17AspireApiResponseVGMd, &_ss23_ContiguousArrayStorageCy8CipherML17AspireApiResponseVGMR, type metadata accessor for AspireApiResponse);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI46Apple_Parsec_Encryptedvisualsearch_V1_EVSQueryVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI46Apple_Parsec_Encryptedvisualsearch_V1_EVSQueryVGMR, MEMORY[0x277D39960]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySays5UInt8VGGMR, &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML19AspireApiPIRRequestVGMd, &_ss23_ContiguousArrayStorageCy8CipherML19AspireApiPIRRequestVGMR, type metadata accessor for AspireApiPIRRequest);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMd, &_ss23_ContiguousArrayStorageCy8CipherML16AspireApiRequestVGMR, type metadata accessor for AspireApiRequest);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML28AspireHeSerializedCiphertextVGMd, &_ss23_ContiguousArrayStorageCy8CipherML28AspireHeSerializedCiphertextVGMR, type metadata accessor for AspireHeSerializedCiphertext);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySay16CryptoKitPrivate2HEO20SerializedCiphertextOGGGMd, &_ss23_ContiguousArrayStorageCySaySay16CryptoKitPrivate2HEO20SerializedCiphertextOGGGMR, &_sSaySay16CryptoKitPrivate2HEO20SerializedCiphertextOGGMd, &_sSaySay16CryptoKitPrivate2HEO20SerializedCiphertextOGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay16CryptoKitPrivate2HEO20SerializedCiphertextOGGMd, &_ss23_ContiguousArrayStorageCySay16CryptoKitPrivate2HEO20SerializedCiphertextOGGMR, &_sSay16CryptoKitPrivate2HEO20SerializedCiphertextOGMd, &_sSay16CryptoKitPrivate2HEO20SerializedCiphertextOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML20AspireApiPIRResponseVGMd, &_ss23_ContiguousArrayStorageCy8CipherML20AspireApiPIRResponseVGMR, type metadata accessor for AspireApiPIRResponse);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML12AMDPbHEQueryVGMd, &_ss23_ContiguousArrayStorageCy8CipherML12AMDPbHEQueryVGMR, type metadata accessor for AMDPbHEQuery);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML21AspireApiOPRFResponseVGMd, &_ss23_ContiguousArrayStorageCy8CipherML21AspireApiOPRFResponseVGMR, type metadata accessor for AspireApiOPRFResponse);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate3PIRO14BlindedKeywordVGMd, &_ss23_ContiguousArrayStorageCy16CryptoKitPrivate3PIRO14BlindedKeywordVGMR, MEMORY[0x277D02FB8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML25AspireApiPECShardResponseVGMd, &_ss23_ContiguousArrayStorageCy8CipherML25AspireApiPECShardResponseVGMR, type metadata accessor for AspireApiPECShardResponse);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CipherML10TokenCacheC06CachedF0VGMd, &_ss23_ContiguousArrayStorageCy8CipherML10TokenCacheC06CachedF0VGMR, type metadata accessor for TokenCache.CachedToken);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML19SymmetricPirKeywordVGMd, &_ss23_ContiguousArrayStorageCy8CipherML19SymmetricPirKeywordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMd, &_ss23_ContiguousArrayStorageCySS_8CipherML15AspireApiConfigVtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA60F70](a2, a3);
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
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVys010EnumeratedE0VySays6UInt64VGGSay10Foundation4DataVGG_So18CMLSimilarityScoreCs5NeverOTg506_sSis6g14V10Foundation4i5VSo18jk37CIgyygo_Si6offset_AB7elementt_AEtAGs5L11OIegnrzr_TRSiAkpTIgyygo_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t, uint64_t, unint64_t))
{
  v15 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = a1 + 32;
    v9 = (a2 + 40);
    do
    {
      v10 = *(a2 + 16);
      if (v7 == v10)
      {
        break;
      }

      if (v7 >= v10)
      {
        __break(1u);
        return result;
      }

      v11 = *(v8 + 8 * v7);
      v12 = *(v9 - 1);
      v13 = *v9;
      outlined copy of Data._Representation(v12, *v9);
      a3(v7, v11, v12, v13);
      outlined consume of Data._Representation(v12, v13);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 += 2;
      ++v7;
    }

    while (v6 != v7);
  }

  return v15;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of SecretKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiPECConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t type metadata accessor for CMLSimilarityScore()
{
  result = lazy cache variable for type metadata for CMLSimilarityScore;
  if (!lazy cache variable for type metadata for CMLSimilarityScore)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CMLSimilarityScore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CMLSimilarityScore] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CMLSimilarityScore] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CMLSimilarityScore] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo18CMLSimilarityScoreCGMd, &_sSaySo18CMLSimilarityScoreCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CMLSimilarityScore] and conformance [A]);
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

uint64_t type metadata completion function for SimilarityClient(uint64_t a1)
{
  result = type metadata accessor for SecretKey(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspireApiPECConfig(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PEC.SimilarityClient();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for CMLUseCaseControlOptions(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of AspireApiEvaluationKeyMetadata?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SecretKey(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AMDPbHEConfigsReply.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  a1[1] = v2;
  type metadata accessor for AMDPbHEConfigsReply(0);
  return UnknownStorage.init()();
}

uint64_t AMDPbHEConfig.pirConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v5, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v7 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
LABEL_5:
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xC000000000000000;
    v8 = type metadata accessor for AMDPbPIRConfig(0);
    UnknownStorage.init()();
    v9 = *(v8 + 36);
    v10 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
    v11 = *(v8 + 40);
    v12 = type metadata accessor for AspirePirKeywordPirParameters(0);
    return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    goto LABEL_5;
  }

  return outlined init with take of AMDPbPIRConfig(v6, a1, type metadata accessor for AMDPbPIRConfig);
}

uint64_t AMDPbPIRConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xC000000000000000;
  v2 = type metadata accessor for AMDPbPIRConfig(0);
  UnknownStorage.init()();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 40);
  v6 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void (*AMDPbHEConfig.pirConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AMDPbPIRConfig(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v14 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(v9, v13, type metadata accessor for AMDPbPIRConfig);
      return AMDPbHEConfig.pirConfig.modify;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  }

  *v13 = MEMORY[0x277D84F90];
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xC000000000000000;
  UnknownStorage.init()();
  v16 = *(v10 + 36);
  v17 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  v18 = *(v10 + 40);
  v19 = type metadata accessor for AspirePirKeywordPirParameters(0);
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  return AMDPbHEConfig.pirConfig.modify;
}

uint64_t AMDPbHEConfig.pecConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, &v14 - v5, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v7 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbPIRConfig(v6, a1, type metadata accessor for AMDPbPECConfig);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_225022910;
  v9 = type metadata accessor for AMDPbPECConfig(0);
  UnknownStorage.init()();
  v10 = *(v9 + 36);
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 40);
  v13 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t key path setter for AMDPbHEConfig.pirConfig : AMDPbHEConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  outlined init with copy of AMDPbPIRConfig(a1, &v17 - v13, a6);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  outlined init with take of AMDPbPIRConfig(v14, a2, a7);
  v15 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t AMDPbHEConfig.pirConfig.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v3, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v3, a2);
  v6 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t AMDPbPECConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_225022910;
  v2 = type metadata accessor for AMDPbPECConfig(0);
  UnknownStorage.init()();
  v3 = *(v2 + 36);
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 40);
  v6 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void (*AMDPbHEConfig.pecConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for AMDPbPECConfig(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2, v9, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v14 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    *(v13 + 32) = xmmword_225022910;
    UnknownStorage.init()();
    v16 = *(v10 + 36);
    v17 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 40);
    v19 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return AMDPbHEConfig.pecConfig.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    goto LABEL_15;
  }

  outlined init with take of AMDPbPIRConfig(v9, v13, type metadata accessor for AMDPbPECConfig);
  return AMDPbHEConfig.pecConfig.modify;
}

void AMDPbHEConfig.pirConfig.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig((*a1)[3], v10, a5);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    outlined init with take of AMDPbPIRConfig(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v11, a6);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(**a1, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
    outlined init with take of AMDPbPIRConfig(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t AMDPbHEKeyStatus.keyConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for AMDPbHEKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 28), v5, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbHEKeyStatus.keyConfig : AMDPbHEKeyStatus@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AMDPbHEKeyStatus(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 28), v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v8 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AspireHeEncryptionParameters(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbHEKeyStatus.keyConfig : AMDPbHEKeyStatus(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspireHeEvaluationKeyConfig);
  v8 = *(type metadata accessor for AMDPbHEKeyStatus(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspireHeEvaluationKeyConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbHEKeyStatus.keyConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbHEKeyStatus(0) + 28);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbHEKeyStatus.keyConfig.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AMDPbHEKeyStatus(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for AspireHeEncryptionParameters(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  return AMDPbHEKeyStatus.keyConfig.modify;
}

void AMDPbHEKeyStatus.keyConfig.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireHeEvaluationKeyConfig);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspireHeEvaluationKeyConfig);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t AMDPbHEKeyStatus.group.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AMDPbHEKeyStatus.group.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AMDPbHEConfigsReply.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AMDPbHEConfigsReply.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AMDPbHEKeyStatus.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  v2 = type metadata accessor for AMDPbHEKeyStatus(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*AMDPbPIRConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AMDPbPIRConfig(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AMDPbPIRConfig.encryptionParameters.modify;
}

uint64_t AMDPbPIRConfig.keywordPirParams.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AMDPbPIRConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v7 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AspirePirKeywordPirParameters);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 32);
  v12 = type metadata accessor for AspirePirPIRShardingFunction(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbPIRConfig.keywordPirParams : AMDPbPIRConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AMDPbPIRConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 40), v6, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v8 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AspirePirKeywordPirParameters);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 28);
  v11 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 32);
  v13 = type metadata accessor for AspirePirPIRShardingFunction(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbPIRConfig.keywordPirParams : AMDPbPIRConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspirePirKeywordPirParameters);
  v8 = *(type metadata accessor for AMDPbPIRConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspirePirKeywordPirParameters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbPIRConfig.keywordPirParams.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbPIRConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspirePirKeywordPirParameters);
  v4 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbPIRConfig.keywordPirParams.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AMDPbPIRConfig(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for AspirePirSymmetricPirClientConfig(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 32);
    v20 = type metadata accessor for AspirePirPIRShardingFunction(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspirePirKeywordPirParameters);
  }

  return AMDPbPIRConfig.keywordPirParams.modify;
}

void AMDPbPIRConfig.keywordPirParams.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspirePirKeywordPirParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspirePirKeywordPirParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspirePirKeywordPirParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

void AMDPbPIRConfig.algorithm.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t AMDPbPIRConfig.algorithm.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t AMDPbPIRShardConfig.dimensions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AMDPbPIRShardConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMDPbPIRShardConfig(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AMDPbPIRShardConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbPIRShardConfig(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AMDPbPIRShardConfig.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x277D84F90];
  type metadata accessor for AMDPbPIRShardConfig(0);
  return UnknownStorage.init()();
}

uint64_t AMDPbPIRConfig.encryptionParameters.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = (a1)(0, v6);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + *(v9 + 36), v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v10 = type metadata accessor for AspireHeEncryptionParameters(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v8, a2, type metadata accessor for AspireHeEncryptionParameters);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbPIRConfig.encryptionParameters : AMDPbPIRConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v11, type metadata accessor for AspireHeEncryptionParameters);
  v12 = *(a5(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v12, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with take of AMDPbPIRConfig(v11, a2 + v12, type metadata accessor for AspireHeEncryptionParameters);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t AMDPbPIRConfig.encryptionParameters.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2 + v4, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v2 + v4, type metadata accessor for AspireHeEncryptionParameters);
  v5 = type metadata accessor for AspireHeEncryptionParameters(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*AMDPbPECConfig.encryptionParameters.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AMDPbPECConfig(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 1;
    *(v14 + 56) = 0;
    *(v14 + 64) = 1;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireHeEncryptionParameters);
  }

  return AMDPbPECConfig.encryptionParameters.modify;
}

void AMDPbPECConfig.encryptionParameters.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspireHeEncryptionParameters);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireHeEncryptionParameters);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspireHeEncryptionParameters);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AMDPbPIRConfig.hasEncryptionParameters.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = (a1)(0, v4);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v7 + 36), v6, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  return v9;
}

uint64_t AMDPbPIRConfig.clearEncryptionParameters()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 36);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v2, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v3 = type metadata accessor for AspireHeEncryptionParameters(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t AMDPbPECConfig.plaintextPacking.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for AMDPbPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 40), v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v7 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v9 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path getter for AMDPbPECConfig.plaintextPacking : AMDPbPECConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for AMDPbPECConfig(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + *(v7 + 40), v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v8 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of AMDPbPIRConfig(v6, a2, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  v10 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  }

  return result;
}

uint64_t key path setter for AMDPbPECConfig.plaintextPacking : AMDPbPECConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbPIRConfig(a1, v7, type metadata accessor for AspireSimilarityPlaintextPacking);
  v8 = *(type metadata accessor for AMDPbPECConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a2 + v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with take of AMDPbPIRConfig(v7, a2 + v8, type metadata accessor for AspireSimilarityPlaintextPacking);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AMDPbPECConfig.plaintextPacking.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AMDPbPECConfig(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with take of AMDPbPIRConfig(a1, v1 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AMDPbPECConfig.plaintextPacking.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for AMDPbPECConfig(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v15, v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    }
  }

  else
  {
    outlined init with take of AMDPbPIRConfig(v8, v14, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  return AMDPbPECConfig.plaintextPacking.modify;
}

void AMDPbPECConfig.plaintextPacking.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of AMDPbPIRConfig((*a1)[5], v4, type metadata accessor for AspireSimilarityPlaintextPacking);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with take of AMDPbPIRConfig(v4, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AspireSimilarityPlaintextPacking);
  }

  else
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9 + v3, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
    outlined init with take of AMDPbPIRConfig(v5, v9 + v3, type metadata accessor for AspireSimilarityPlaintextPacking);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL AMDPbPIRConfig.hasKeywordPirParams.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = (a3)(0, v10);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v4 + *(v13 + 40), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, a1, a2);
  return v15;
}

uint64_t AMDPbPIRConfig.clearKeywordPirParams()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void AMDPbPECConfig.similarityMetric.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t AMDPbPECConfig.similarityMetric.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t AMDPbPECConfig.evaluationKeyConfigHash.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t AMDPbPECConfig.evaluationKeyConfigHash.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AMDPbPIRConfig.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AMDPbPIRConfig.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AMDPbHEConfig.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AMDPbHEConfig.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AMDPbHEQueries.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return UnknownStorage.init()();
}

uint64_t AMDPbHEQuery.useCase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AMDPbHEQuery.useCase.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AMDPbHEQuery.pirQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AMDPbHEQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v7 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = xmmword_225022910;
    v8 = type metadata accessor for AMDPbPIRQuery(0);
    UnknownStorage.init()();
    v9 = *(v8 + 28);
    v10 = type metadata accessor for AspirePirEncryptedIndices(0);
    (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
    v11 = *(v8 + 32);
    v12 = type metadata accessor for AMDPbEvaluationKey(0);
    return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    goto LABEL_5;
  }

  return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AMDPbPIRQuery);
}

uint64_t AMDPbPIRQuery.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_225022910;
  v2 = type metadata accessor for AMDPbPIRQuery(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 32);
  v6 = type metadata accessor for AMDPbEvaluationKey(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void (*AMDPbHEQuery.pirQuery.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for AMDPbPIRQuery(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for AMDPbHEQuery(0) + 20);
  *(v5 + 12) = v13;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v13, v8, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v14 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(v8, v12, type metadata accessor for AMDPbPIRQuery);
      return AMDPbHEQuery.pirQuery.modify;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v8, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  }

  *v12 = 0;
  *(v12 + 8) = xmmword_225022910;
  UnknownStorage.init()();
  v16 = *(v9 + 28);
  v17 = type metadata accessor for AspirePirEncryptedIndices(0);
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = *(v9 + 32);
  v19 = type metadata accessor for AMDPbEvaluationKey(0);
  (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
  return AMDPbHEQuery.pirQuery.modify;
}

uint64_t AMDPbHEQuery.pecQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AMDPbHEQuery(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + *(v6 + 20), v5, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v7 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v5, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of AMDPbPIRConfig(v5, a1, type metadata accessor for AMDPbPECQuery);
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_225022910;
  v9 = type metadata accessor for AMDPbPECQuery(0);
  UnknownStorage.init()();
  v10 = *(v9 + 28);
  v11 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 32);
  v13 = type metadata accessor for AMDPbEvaluationKey(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}