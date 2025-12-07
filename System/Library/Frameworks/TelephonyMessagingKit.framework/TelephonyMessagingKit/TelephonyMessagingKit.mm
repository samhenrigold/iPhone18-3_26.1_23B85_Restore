uint64_t sub_1E4AD49D0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E4AD4A14()
{
  if (*v0)
  {
    return 0x52724F6568636163;
  }

  else
  {
    return 0x6C6E4F6568636163;
  }
}

uint64_t sub_1E4AD4A88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1E4AD4B44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD4C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4AD4CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4AD4D80(uint64_t a1, uint64_t a2)
{
  v4 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD4DEC(uint64_t a1, uint64_t a2)
{
  v4 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_1E4AD4E84@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1E4AD4E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD4F54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD5004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4BEFABC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD50B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4BEFABC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD5154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD51CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD5288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F90, &qword_1E4BFDD28);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 72);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E4AD53C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F90, &qword_1E4BFDD28);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 72);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD5500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E4AD55B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFA6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E4AD5670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFA6C();
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

uint64_t sub_1E4AD573C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFA6C();
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

uint64_t sub_1E4AD57F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSService.Business.Media(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E4AD58B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSService.Business.Media(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1E4AD5968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E4AD5A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD5AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RCSMessage.Content(0);
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
      v13 = sub_1E4BEFABC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E4AD5C0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for RCSMessage.Content(0);
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
      v13 = sub_1E4BEFABC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD5D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSFileTransferMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4AD5E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RCSFileTransferMetadata(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E4AD5F3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1E4AD6070(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD61A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E4BEFA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
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

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_1E4BEFABC();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1E4AD6338(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1E4BEFA6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_1E4BEFABC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E4AD64D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD650C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E4AD651C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E4AD652C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD6564()
{
  if (*(v0 + 80) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1E4AD65F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4AD6638()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD6670()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD66C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD66F8()
{
  v1 = (type metadata accessor for MMSMessage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_1E4BEFABC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4AD6808()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD6840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD68AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD6B48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD6B84(uint64_t a1, uint64_t a2)
{
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD6BF0(uint64_t a1, uint64_t a2)
{
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD6C78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD6CB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4AD6CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4AD6D28()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4AD6DF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD6E2C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E4AD6EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1E4AD6FA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFA6C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1E4AD7058(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD7114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD71C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1E4AD728C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFABC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E4AD7470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4BEFABC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E4AD75A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD7650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RCSService.Business.SuggestedAction.Action(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD76F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 28)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RCSService.Business.Card.Content(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 36)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1E4AD781C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RCSService.Business.Card.Content(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 36)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4AD7948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E4AD7A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AD7AE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E4BEFA6C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[11] + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  v19 = v18 - 1;
  if (v19 < 0)
  {
    v19 = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1E4AD7D08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E4BEFA6C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[11] + 8) = a2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[9];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E4AD7F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4AD7FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF951E8, &qword_1E4C07AB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AD80A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1E4B65EDC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1E4AD80E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E4AD8130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4AD81EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AD82A4()
{
  v1 = 0x6E614870756F7267;
  if (*v0 != 1)
  {
    v1 = 0x7069636974726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4AD8314@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B6C690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21TelephonyMessagingKit18AuditTokenProtocol_pxs5Error_pRi_zRi0_zlyq_Iseghnrzo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4AD8390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = (type metadata accessor for XPCPeerMessage(0, v5, *(v4 + 56), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 80) & ~v7;
  v9 = *(*v6 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v4 + v8));
  __swift_destroy_boxed_opaque_existential_1((v4 + v8 + 40));
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1E4AD8498()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD84D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = (type metadata accessor for XPCPeerMessage(0, v5, *(v4 + 56), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 80) & ~v7;
  v9 = *(*v6 + 64);
  v10 = sub_1E4BEFD3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v4 + v8));
  __swift_destroy_boxed_opaque_existential_1((v4 + v8 + 40));
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[12], v5);
  (*(v11 + 8))(v4 + v13, v10);

  return MEMORY[0x1EEE6BDD0](v4, v13 + v14, v15 | 7);
}

uint64_t sub_1E4AD8674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD86E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD8750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD87BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD8830()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD8868()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4AD88A8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD88E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4AD8960()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD8998()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4AD89D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD8A08()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E4AD8A50()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E4AD8A98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4AD8B2C()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
  v1 = sub_1E4BF01CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E4AD8C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4AD8C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1E4BF028C();
}

uint64_t sub_1E4AD8D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4AD8DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD8E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD8EAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD8EE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFAFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1E4BF024C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E4AD9298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4BEFAFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1E4BF024C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E4AD9398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD9454(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD9504(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RCSService.RemoteCapabilities(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E4AD95A8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for RCSService.RemoteCapabilities(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD9648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1E4AD9708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4AD97C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = (type metadata accessor for XPCPeerMessage(0, v5, *(v4 + 40), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v10 = (v4 + v8);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v10 + 5);
  (*(*(v5 - 8) + 8))(&v10[v6[12]], v5);

  return MEMORY[0x1EEE6BDD0](v4, v9 + 16, v7 | 7);
}

uint64_t sub_1E4AD98D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD9918(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E4BEFABC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4AD99C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E4BEFABC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4AD9A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD9ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD9B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
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

uint64_t sub_1E4AD9C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
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

uint64_t sub_1E4AD9D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD9D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4AD9DF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4AD9E28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4AD9E60()
{
  v1 = (type metadata accessor for SMSMessage(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  v6 = sub_1E4BEFABC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4AD9F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4AD9FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADA0C8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4ADA100()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4ADA13C()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1E4ADA1A0()
{

  sub_1E4ADD764(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1E4ADA1F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E4ADA240()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E4ADA294()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1E4ADA2EC()
{
  v1 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v63 = *(*(v1 - 8) + 64);

  v4 = v0 + v3;

  v5 = type metadata accessor for RCSMessage(0);
  v6 = v0 + v3 + v5[6];
  type metadata accessor for RCSMessage.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v35 = sub_1E4BEFA6C();
    v57 = *(*(v35 - 8) + 8);
    v59 = v35;
    v57(v6);
    v36 = type metadata accessor for RCSFileTransferMetadata(0);

    v37 = *(v36 + 28);
    v38 = sub_1E4BEFB4C();
    v61 = *(v38 - 8);
    v52 = *(v61 + 48);
    if (!v52(v6 + v37, 1, v38))
    {
      (*(v61 + 8))(v6 + v37, v38);
    }

    v53 = v38;
    v39 = *(v36 + 32);
    v40 = sub_1E4BEFABC();
    v41 = (*(v40 - 8) + 8);
    v50 = *v41;
    (*v41)(v6 + v39, v40);
    v42 = v6 + *(type metadata accessor for RCSMessage.FileTransfer(0) + 20);
    v3 = (v2 + 24) & ~v2;
    if (!(*(*(v36 - 8) + 48))(v42, 1, v36))
    {
      v47 = v40;
      (v57)(v42, v59);

      v43 = *(v36 + 28);
      if (!v52(v42 + v43, 1, v53))
      {
        (*(v61 + 8))(v42 + v43, v53);
      }

      v50(v42 + *(v36 + 32), v47);
      v3 = (v2 + 24) & ~v2;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v8 = type metadata accessor for RCSMessage.ComposingIndicator(0);
        v9 = *(v8 + 20);
        v10 = sub_1E4BEFABC();
        v11 = *(v10 - 8);
        if (!(*(v11 + 48))(v6 + v9, 1, v10))
        {
          (*(v11 + 8))(v6 + v9, v10);
        }

        v12 = *(v8 + 24);
        v13 = sub_1E4BEFB4C();
        v14 = *(v13 - 8);
        v3 = (v2 + 24) & ~v2;
        if (!(*(v14 + 48))(v6 + v12, 1, v13))
        {
          (*(v14 + 8))(v6 + v12, v13);
        }

        goto LABEL_33;
      }

LABEL_32:

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v18 = type metadata accessor for RCSService.Business.Card(0);
      v19 = *(v18 + 28);
      v20 = sub_1E4BEFA6C();
      v60 = *(v20 - 8);
      v62 = v20;
      v58 = *(v60 + 48);
      if (!v58(v6 + v19, 1))
      {
        (*(v60 + 8))(v6 + v19, v62);
      }

      v21 = v6 + *(v18 + 36);
      v22 = type metadata accessor for RCSService.Business.Card.Media(0);
      if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
      {
        v46 = *(v60 + 8);
        v46(v21, v62);
        v54 = v22[5];
        v23 = sub_1E4BEFB4C();
        v24 = *(v23 - 8);
        v56 = v23;
        v51 = *(v24 + 48);
        if (!v51(v21 + v54, 1))
        {
          (*(v24 + 8))(v21 + v54, v56);
        }

        v48 = v24;
        v25 = v22[6];
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
        v49 = *(v26 - 8);
        v55 = v26;
        v45 = *(v49 + 8);
        v45(v21 + v25);
        v27 = v22[7];
        if (!(v58)(v21 + v27, 1, v62))
        {
          v46(v21 + v27, v62);
        }

        v28 = v22[8];
        if (!(v51)(v21 + v28, 1, v56))
        {
          (*(v48 + 8))(v21 + v28, v56);
        }

        v29 = v22[9];
        if (!(*(v49 + 48))(v21 + v29, 1, v55))
        {
          (v45)(v21 + v29, v55);
        }
      }

      type metadata accessor for RCSService.Business.Card.Content(0);

      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v15 = *(type metadata accessor for RCSService.Business.CardCarousel(0) + 28);
      v16 = sub_1E4BEFA6C();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v6 + v15, 1, v16))
      {
        (*(v17 + 8))(v6 + v15, v16);
      }

      v3 = (v2 + 24) & ~v2;
    }
  }

LABEL_33:
  v30 = v4 + v5[7];
  sub_1E4ADD764(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32));
  v31 = v5[8];
  v32 = sub_1E4BEFABC();
  (*(*(v32 - 8) + 8))(v4 + v31, v32);
  v33 = (v4 + *(v1 + 20));
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_1E4AE4BE8(*v33, v34);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v63 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1E4ADAB80()
{

  sub_1E4ADD764(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1E4ADABD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4ADAC94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4ADAD4C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 32)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E4ADAE00(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4ADAFC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E4ADB05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4ADB118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s17FileUploadRequestV21CodableRepresentationVMa(0);
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

uint64_t sub_1E4ADB1D0(uint64_t a1, uint64_t a2)
{
  v4 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4ADB23C(uint64_t a1, uint64_t a2)
{
  v4 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADB2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4ADB318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADB388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4ADB3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4ADB514(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4ADB544(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t CellularServiceState.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

TelephonyMessagingKit::CellularServiceState __swiftcall CellularServiceState.init(id:label:)(TelephonyMessagingKit::CellularServiceID id, Swift::String label)
{
  *v2 = *id.simSlot;
  *(v2 + 8) = label;
  result.label = label;
  result.id = id;
  return result;
}

uint64_t static CellularServiceState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC18RemoteCapabilitiesV12AvailabilityO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADB63C(uint64_t a1)
{
  v2 = *v1;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v2);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADB680()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E4ADB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4ADB788(uint64_t a1)
{
  v2 = sub_1E4ADBE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADB7C4(uint64_t a1)
{
  v2 = sub_1E4ADBE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellularServiceState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92450, &qword_1E4BFA020);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADBE44();
  sub_1E4BF0ACC();
  v14 = v8;
  v13 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v12 = 1;
    sub_1E4BF08FC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CellularServiceState.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E69210C0](*v1);

  return sub_1E4BEFF4C();
}

uint64_t CellularServiceState.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t CellularServiceState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92468, &qword_1E4BFA028);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADBE44();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v9 = v17;
    v15 = 1;
    v11 = sub_1E4BF083C();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4ADBC58()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADBCBC(uint64_t a1)
{
  MEMORY[0x1E69210C0](*v1);

  return sub_1E4BEFF4C();
}

uint64_t sub_1E4ADBD10(uint64_t a1)
{
  v2 = *v1;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v2);
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4ADBD70(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E4ADBE44()
{
  result = qword_1ECF92458;
  if (!qword_1ECF92458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92458);
  }

  return result;
}

unint64_t sub_1E4ADBE98()
{
  result = qword_1ECF92460;
  if (!qword_1ECF92460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92460);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1E4ADBF38()
{
  result = qword_1ECF92470;
  if (!qword_1ECF92470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92470);
  }

  return result;
}

unint64_t sub_1E4ADBF90()
{
  result = qword_1ECF92478;
  if (!qword_1ECF92478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92478);
  }

  return result;
}

unint64_t sub_1E4ADBFE8()
{
  result = qword_1ECF92480;
  if (!qword_1ECF92480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92480);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E4ADC050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4ADC098(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E4ADC0F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4ADC118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4ADC160(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4ADC180(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CellularServiceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CellularServiceState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4ADC338()
{
  result = qword_1ECF924A0;
  if (!qword_1ECF924A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF924A0);
  }

  return result;
}

uint64_t sub_1E4ADC394(uint64_t a1, id *a2)
{
  result = sub_1E4BEFE8C();
  *a2 = 0;
  return result;
}

uint64_t sub_1E4ADC40C(uint64_t a1, id *a2)
{
  v3 = sub_1E4BEFE9C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E4ADC48C@<X0>(uint64_t *a1@<X8>)
{
  sub_1E4BEFEAC();
  v2 = sub_1E4BEFE7C();

  *a1 = v2;
  return result;
}

uint64_t sub_1E4ADC4D0()
{
  v0 = sub_1E4BEFEAC();
  v1 = MEMORY[0x1E6920620](v0);

  return v1;
}

uint64_t sub_1E4ADC50C(uint64_t a1)
{
  sub_1E4BEFEAC();
  sub_1E4BEFF4C();
}

uint64_t sub_1E4ADC560(uint64_t a1)
{
  sub_1E4BEFEAC();
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  v1 = sub_1E4BF0A9C();

  return v1;
}

uint64_t sub_1E4ADC5D4(void *a1, uint64_t *a2)
{
  v2 = sub_1E4BEFEAC();
  v4 = v3;
  if (v2 == sub_1E4BEFEAC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E4BF099C();
  }

  return v7 & 1;
}

uint64_t sub_1E4ADC65C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1E4BEFE7C();

  *a2 = v3;
  return result;
}

uint64_t sub_1E4ADC6A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4BEFEAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4ADC6D0(uint64_t a1)
{
  v2 = sub_1E4ADC7D0(&qword_1ECF924D0, &unk_1E4BFA3DC);
  v3 = sub_1E4ADC7D0(&qword_1ECF924D8, &unk_1E4BFA37C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4ADC7D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4ADC84C()
{
  result = qword_1ECF924C0;
  if (!qword_1ECF924C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF924C0);
  }

  return result;
}

unint64_t sub_1E4ADC8A4()
{
  result = qword_1ECF924C8;
  if (!qword_1ECF924C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF924C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MMSMessageID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MMSMessageID(uint64_t result, int a2, int a3)
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

void sub_1E4ADC974(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1E4ADC9CC(uint64_t a1)
{
  v2 = sub_1E4ADCF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADCA08(uint64_t a1)
{
  v2 = sub_1E4ADCF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADCA44(uint64_t a1)
{
  v2 = sub_1E4ADCF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADCA80(uint64_t a1)
{
  v2 = sub_1E4ADCF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADCABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6E4F6568636163 && a2 == 0xE900000000000079;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x52724F6568636163 && a2 == 0xED000065746F6D65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4ADCBA8(uint64_t a1)
{
  v2 = sub_1E4ADCED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADCBE4(uint64_t a1)
{
  v2 = sub_1E4ADCED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.RemoteCapabilitiesRequest.CachePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF924E8, &qword_1E4BFA510);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF924F0, &qword_1E4BFA518);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF924F8, &qword_1E4BFA520);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADCED0();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4ADCF24();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4ADCF78();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E4ADCED0()
{
  result = qword_1ECF92500;
  if (!qword_1ECF92500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92500);
  }

  return result;
}

unint64_t sub_1E4ADCF24()
{
  result = qword_1ECF92508;
  if (!qword_1ECF92508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92508);
  }

  return result;
}

unint64_t sub_1E4ADCF78()
{
  result = qword_1ECF92510;
  if (!qword_1ECF92510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92510);
  }

  return result;
}

uint64_t RCSService.RemoteCapabilitiesRequest.CachePolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92518, &qword_1E4BFA528);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92520, &qword_1E4BFA530);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92528, &qword_1E4BFA538);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADCED0();
  v13 = v31;
  sub_1E4BF0ABC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1E4BF088C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1E4BF06EC();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v21 = &type metadata for RCSService.RemoteCapabilitiesRequest.CachePolicy;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1E4ADCF24();
    sub_1E4BF07EC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1E4ADCF78();
    sub_1E4BF07EC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E4ADD420()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD454()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD488()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD4BC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD4F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 40;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD524()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD558()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD58C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD5C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4ADD5F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E4ADD628()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t RCSService.RemoteCapabilitiesRequest.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t sub_1E4ADD6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

__n128 RCSService.RemoteCapabilitiesRequest.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1E4ADD764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

__n128 RCSService.RemoteCapabilitiesRequest.init(cellularServiceID:handle:cachePolicy:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  v5 = *a3;
  *a4 = *a1;
  result = *a2;
  v7 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v7;
  *(a4 + 40) = v4;
  *(a4 + 41) = v5;
  return result;
}

uint64_t sub_1E4ADD84C(uint64_t a1)
{
  v2 = sub_1E4ADDE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADD888(uint64_t a1)
{
  v2 = sub_1E4ADDE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADD8C4()
{
  if (*v0)
  {
    return 0x616C696176616E75;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1E4ADD90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4ADD9F4(uint64_t a1)
{
  v2 = sub_1E4ADDD94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADDA30(uint64_t a1)
{
  v2 = sub_1E4ADDD94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4ADDA6C(uint64_t a1)
{
  v2 = sub_1E4ADDDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADDAA8(uint64_t a1)
{
  v2 = sub_1E4ADDDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.RemoteCapabilities.Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92538, &qword_1E4BFA548);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92540, &qword_1E4BFA550);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92548, &qword_1E4BFA558);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADDD94();
  sub_1E4BF0ACC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E4ADDDE8();
    v14 = v18;
    sub_1E4BF08BC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E4ADDE3C();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E4ADDD94()
{
  result = qword_1ECF92550;
  if (!qword_1ECF92550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92550);
  }

  return result;
}

unint64_t sub_1E4ADDDE8()
{
  result = qword_1ECF92558;
  if (!qword_1ECF92558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92558);
  }

  return result;
}

unint64_t sub_1E4ADDE3C()
{
  result = qword_1ECF92560;
  if (!qword_1ECF92560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92560);
  }

  return result;
}

uint64_t RCSService.RemoteCapabilities.Availability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92568, &qword_1E4BFA560);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92570, &qword_1E4BFA568);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92578, &unk_1E4BFA570);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADDD94();
  v13 = v31;
  sub_1E4BF0ABC();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1E4BF088C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1E4BF06EC();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v21 = &type metadata for RCSService.RemoteCapabilities.Availability;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1E4ADDDE8();
    sub_1E4BF07EC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1E4ADDE3C();
    sub_1E4BF07EC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t RCSService.RemoteCapabilities.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSService.RemoteCapabilities(0) + 36);

  return sub_1E4ADE3FC(v3, a1);
}

uint64_t type metadata accessor for RCSService.RemoteCapabilities(uint64_t a1)
{
  result = qword_1ECF92608;
  if (!qword_1ECF92608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4ADE3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.RemoteCapabilities.availability.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.RemoteCapabilities(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t RCSService.RemoteCapabilities.init(alternativeHandles:supportsChat:supportsFileTransfer:supportsGeolocation:isBusinessHandle:validUntil:availability:supportsEndToEndEncryption:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  *(a8 + 10) = a4;
  *(a8 + 11) = a5;
  v11 = type metadata accessor for RCSService.RemoteCapabilities(0);
  result = sub_1E4ADE508(a6, a8 + *(v11 + 36));
  *(a8 + *(v11 + 40)) = v10;
  return result;
}

uint64_t sub_1E4ADE508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4ADE57C()
{
  v1 = *v0;
  v2 = 0x7374726F70707573;
  v3 = 0x746E5564696C6176;
  if (v1 != 5)
  {
    v3 = 0x6962616C69617661;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4ADE678@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4AE0788(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4ADE6AC(uint64_t a1)
{
  v2 = sub_1E4ADF8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADE6E8(uint64_t a1)
{
  v2 = sub_1E4ADF8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.RemoteCapabilities.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92588, &qword_1E4BFA580);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4ADF8C0();
  sub_1E4BF0ACC();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92598, &qword_1E4BFA588);
  sub_1E4ADFA04(&qword_1ECF925A0, sub_1E4ADF95C, MEMORY[0x1E69E6300]);
  sub_1E4BF093C();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1E4BF090C();
    LOBYTE(v12) = 2;
    sub_1E4BF090C();
    LOBYTE(v12) = 3;
    sub_1E4BF090C();
    LOBYTE(v12) = 4;
    sub_1E4BF090C();
    v9 = type metadata accessor for RCSService.RemoteCapabilities(0);
    LOBYTE(v12) = 5;
    sub_1E4BEFABC();
    sub_1E4AE0B44(&qword_1ECF925B0, MEMORY[0x1E6969538]);
    sub_1E4BF08EC();
    LOBYTE(v12) = *(v3 + *(v9 + 40));
    HIBYTE(v11) = 6;
    sub_1E4ADF9B0();
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.RemoteCapabilities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF925C0, &qword_1E4BFA590);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RCSService.RemoteCapabilities(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4ADF8C0();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v21 = v6;
  v14 = v12;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92598, &qword_1E4BFA588);
  v25 = 0;
  sub_1E4ADFA04(&qword_1ECF925C8, sub_1E4ADFA7C, MEMORY[0x1E69E6330]);
  v16 = v23;
  sub_1E4BF087C();
  v17 = v14;
  *v14 = v26;
  LOBYTE(v26) = 1;
  v14[8] = sub_1E4BF084C() & 1;
  LOBYTE(v26) = 2;
  v14[9] = sub_1E4BF084C() & 1;
  LOBYTE(v26) = 3;
  v14[10] = sub_1E4BF084C() & 1;
  LOBYTE(v26) = 4;
  v14[11] = sub_1E4BF084C() & 1;
  sub_1E4BEFABC();
  LOBYTE(v26) = 5;
  sub_1E4AE0B44(&qword_1ECF925D8, MEMORY[0x1E6969558]);
  v18 = v21;
  sub_1E4BF082C();
  sub_1E4ADE508(v18, v17 + *(v10 + 36));
  v25 = 6;
  sub_1E4ADFAD0();
  sub_1E4BF082C();
  (*(v15 + 8))(v9, v16);
  *(v17 + *(v10 + 40)) = v26;
  sub_1E4ADFB24(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1E4ADFB88(v17);
}

uint64_t RCSService.RemoteCapabilitiesRequest.CachePolicy.description.getter()
{
  if (*v0)
  {
    return 0x52724F6568636163;
  }

  else
  {
    return 0x6C6E4F6568636163;
  }
}

uint64_t sub_1E4ADEF5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926B0, &qword_1E4BFAF60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v16 = *(v1 + 2);
  v17 = v8;
  v9 = *(v1 + 3);
  v14 = *(v1 + 4);
  v15 = v9;
  v10 = v1[40];
  v24 = v1[41];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE09E8();
  sub_1E4BF0ACC();
  LOBYTE(v19) = v7;
  v25 = 0;
  sub_1E4ADBE98();
  v11 = v18;
  sub_1E4BF093C();
  if (!v11)
  {
    v12 = v24;
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v23 = v10;
    v25 = 1;
    sub_1E4ADD6D8(v17, v16, v15, v14, v10);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v19, v20, v21, v22, v23);
    LOBYTE(v19) = v12;
    v25 = 2;
    sub_1E4AE0A3C();
    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4ADF174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926C8, &qword_1E4BFAF68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE09E8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v20;
  v26 = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v10 = v20;
  v17 = v21;
  v18 = v22;
  v19 = v23;
  v25 = v24;
  v26 = 2;
  sub_1E4AE0A90();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v11 = v20;
  *a2 = v9;
  v13 = v17;
  v12 = v18;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  v14 = v19;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  v15 = v25;
  *(a2 + 40) = v25;
  *(a2 + 41) = v11;
  sub_1E4ADD6D8(v10, v13, v12, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4ADD764(v10, v13, v12, v14, v15);
}

uint64_t sub_1E4ADF40C()
{
  v1 = 0x656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x6C6F506568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4ADF470@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4AE0DE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4ADF498(uint64_t a1)
{
  v2 = sub_1E4AE09E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4ADF4D4(uint64_t a1)
{
  v2 = sub_1E4AE09E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL _s21TelephonyMessagingKit10RCSServiceC18RemoteCapabilitiesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926D8, &qword_1E4BFAF70);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if ((sub_1E4BC7C9C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11))
  {
    return 0;
  }

  v24 = type metadata accessor for RCSService.RemoteCapabilities(0);
  v14 = *(v24 + 36);
  v15 = *(v11 + 48);
  sub_1E4ADE3FC(a1 + v14, v13);
  sub_1E4ADE3FC(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v13, &qword_1ECF92580, &qword_1E4BFDEB0);
      goto LABEL_14;
    }

LABEL_11:
    sub_1E4AE0AE4(v13, &qword_1ECF926D8, &qword_1E4BFAF70);
    return 0;
  }

  sub_1E4ADE3FC(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1E4AE0B44(&qword_1ECF926E0, MEMORY[0x1E6969550]);
  v18 = sub_1E4BEFE6C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1E4AE0AE4(v13, &qword_1ECF92580, &qword_1E4BFDEB0);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v20 = *(v24 + 40);
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 != 2)
  {
    return v22 != 2 && ((v22 ^ v21) & 1) == 0;
  }

  return v22 == 2;
}

unint64_t sub_1E4ADF8C0()
{
  result = qword_1ECF92590;
  if (!qword_1ECF92590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92590);
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

unint64_t sub_1E4ADF95C()
{
  result = qword_1ECF925A8;
  if (!qword_1ECF925A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925A8);
  }

  return result;
}

unint64_t sub_1E4ADF9B0()
{
  result = qword_1ECF925B8;
  if (!qword_1ECF925B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925B8);
  }

  return result;
}

uint64_t sub_1E4ADFA04(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92598, &qword_1E4BFA588);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4ADFA7C()
{
  result = qword_1ECF925D0;
  if (!qword_1ECF925D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925D0);
  }

  return result;
}

unint64_t sub_1E4ADFAD0()
{
  result = qword_1ECF925E0;
  if (!qword_1ECF925E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925E0);
  }

  return result;
}

uint64_t sub_1E4ADFB24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.RemoteCapabilities(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4ADFB88(uint64_t a1)
{
  v2 = type metadata accessor for RCSService.RemoteCapabilities(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4ADFBE8()
{
  result = qword_1ECF925E8;
  if (!qword_1ECF925E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925E8);
  }

  return result;
}

unint64_t sub_1E4ADFC40()
{
  result = qword_1ECF925F0;
  if (!qword_1ECF925F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925F0);
  }

  return result;
}

unint64_t sub_1E4ADFC98()
{
  result = qword_1ECF925F8;
  if (!qword_1ECF925F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF925F8);
  }

  return result;
}

unint64_t sub_1E4ADFCF0()
{
  result = qword_1ECF92600;
  if (!qword_1ECF92600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92600);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1E4ADFDAC(uint64_t a1)
{
  sub_1E4ADFEFC(319, &qword_1ECF92618, &type metadata for RCSHandle, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1E4ADFEA4(319);
    if (v2 <= 0x3F)
    {
      sub_1E4ADFEFC(319, &qword_1ECF92620, &type metadata for RCSService.RemoteCapabilities.Availability, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4ADFEA4(uint64_t a1)
{
  if (!qword_1EE2BECB8)
  {
    sub_1E4BEFABC();
    v1 = sub_1E4BF053C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2BECB8);
    }
  }
}

void sub_1E4ADFEFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E4ADFF5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4ADFFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s18RemoteCapabilitiesV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s18RemoteCapabilitiesV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4AE01B4()
{
  result = qword_1ECF92628;
  if (!qword_1ECF92628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92628);
  }

  return result;
}

unint64_t sub_1E4AE020C()
{
  result = qword_1ECF92630;
  if (!qword_1ECF92630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92630);
  }

  return result;
}

unint64_t sub_1E4AE0264()
{
  result = qword_1ECF92638;
  if (!qword_1ECF92638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92638);
  }

  return result;
}

unint64_t sub_1E4AE02BC()
{
  result = qword_1ECF92640;
  if (!qword_1ECF92640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92640);
  }

  return result;
}

unint64_t sub_1E4AE0314()
{
  result = qword_1ECF92648;
  if (!qword_1ECF92648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92648);
  }

  return result;
}

unint64_t sub_1E4AE036C()
{
  result = qword_1ECF92650;
  if (!qword_1ECF92650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92650);
  }

  return result;
}

unint64_t sub_1E4AE03C4()
{
  result = qword_1ECF92658;
  if (!qword_1ECF92658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92658);
  }

  return result;
}

unint64_t sub_1E4AE041C()
{
  result = qword_1ECF92660;
  if (!qword_1ECF92660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92660);
  }

  return result;
}

unint64_t sub_1E4AE0474()
{
  result = qword_1ECF92668;
  if (!qword_1ECF92668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92668);
  }

  return result;
}

unint64_t sub_1E4AE04CC()
{
  result = qword_1ECF92670;
  if (!qword_1ECF92670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92670);
  }

  return result;
}

unint64_t sub_1E4AE0524()
{
  result = qword_1ECF92678;
  if (!qword_1ECF92678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92678);
  }

  return result;
}

unint64_t sub_1E4AE057C()
{
  result = qword_1ECF92680;
  if (!qword_1ECF92680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92680);
  }

  return result;
}

unint64_t sub_1E4AE05D4()
{
  result = qword_1ECF92688;
  if (!qword_1ECF92688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92688);
  }

  return result;
}

unint64_t sub_1E4AE062C()
{
  result = qword_1ECF92690;
  if (!qword_1ECF92690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92690);
  }

  return result;
}

unint64_t sub_1E4AE0684()
{
  result = qword_1ECF92698;
  if (!qword_1ECF92698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92698);
  }

  return result;
}

unint64_t sub_1E4AE06DC()
{
  result = qword_1ECF926A0;
  if (!qword_1ECF926A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926A0);
  }

  return result;
}

unint64_t sub_1E4AE0734()
{
  result = qword_1ECF926A8;
  if (!qword_1ECF926A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926A8);
  }

  return result;
}

uint64_t sub_1E4AE0788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E4BF1380 == a2;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEC00000074616843 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF13A0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF13C0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF13E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E5564696C6176 && a2 == 0xEA00000000006C69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1E4AE09E8()
{
  result = qword_1ECF926B8;
  if (!qword_1ECF926B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926B8);
  }

  return result;
}

unint64_t sub_1E4AE0A3C()
{
  result = qword_1ECF926C0;
  if (!qword_1ECF926C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926C0);
  }

  return result;
}

unint64_t sub_1E4AE0A90()
{
  result = qword_1ECF926D0;
  if (!qword_1ECF926D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926D0);
  }

  return result;
}

uint64_t sub_1E4AE0AE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E4AE0B44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFABC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s25RemoteCapabilitiesRequestV21CodableRepresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s25RemoteCapabilitiesRequestV21CodableRepresentationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4AE0CDC()
{
  result = qword_1ECF926E8;
  if (!qword_1ECF926E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926E8);
  }

  return result;
}

unint64_t sub_1E4AE0D34()
{
  result = qword_1ECF926F0;
  if (!qword_1ECF926F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926F0);
  }

  return result;
}

unint64_t sub_1E4AE0D8C()
{
  result = qword_1ECF926F8;
  if (!qword_1ECF926F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF926F8);
  }

  return result;
}

uint64_t sub_1E4AE0DE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TransferService.FileDownloadRequest.Reply.metadata.getter@<X0>(void *a1@<X8>)
{
  v3 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4AE22CC(v1, v6, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v4 + 28);
  v10 = type metadata accessor for RCSService.FileDownloadRequest.Metadata(0);
  result = sub_1E4AE2138(v6 + v9, a1 + *(v10 + 20));
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t TransferService.FileDownloadRequest.Reply.init(metadata:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(type metadata accessor for RCSService.FileDownloadRequest.Metadata(0) + 20);
  v7 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  result = sub_1E4AE2138(a1 + v6, a2 + *(v7 + 20));
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV10MediaEntryV5LabelO9hashValueSivg_0()
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](0);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE10D0(uint64_t a1)
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](0);
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461646174656D5FLL && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AE11BC(uint64_t a1)
{
  v2 = sub_1E4AE21A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE11F8(uint64_t a1)
{
  v2 = sub_1E4AE21A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransferService.FileDownloadRequest.Reply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92708, &qword_1E4BFB098);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE21A8();
  sub_1E4BF0ACC();
  _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4AE221C(&qword_1ECF92718, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa, &unk_1E4C065B0);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t TransferService.FileDownloadRequest.Reply.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92720, &qword_1E4BFB0A0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TransferService.FileDownloadRequest.Reply(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE21A8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4AE221C(&qword_1ECF92728, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa, &unk_1E4C06588);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4AE2264(v13, v11, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
    sub_1E4AE2264(v11, v12, type metadata accessor for TransferService.FileDownloadRequest.Reply);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AE1638(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92708, &qword_1E4BFB098);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE21A8();
  sub_1E4BF0ACC();
  _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4AE221C(&qword_1ECF92718, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa, &unk_1E4C065B0);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t TransferService.FileDownloadRequest.request.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4AE22CC(v1, v6, _s19FileDownloadRequestV21CodableRepresentationVMa);
  v7 = *v6;
  v8 = *(v4 + 28);
  v9 = type metadata accessor for RCSService.FileDownloadRequest(0);
  v10 = *(v9 + 20);
  v11 = sub_1E4BEFA6C();
  v12 = *(*(v11 - 8) + 32);
  v12(&a1[v10], &v6[v8], v11);
  result = (v12)(&a1[*(v9 + 24)], &v6[*(v4 + 32)], v11);
  *a1 = v7;
  return result;
}

uint64_t TransferService.FileDownloadRequest.sandboxExtension.getter()
{
  type metadata accessor for TransferService.FileDownloadRequest(0);
}

uint64_t TransferService.FileDownloadRequest.init(request:sandboxExtension:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for RCSService.FileDownloadRequest(0);
  v7 = *(v6 + 20);
  v8 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  v9 = *(v8 + 20);
  v10 = sub_1E4BEFA6C();
  v11 = *(*(v10 - 8) + 32);
  v11(&a3[v9], &a1[v7], v10);
  v11(&a3[*(v8 + 24)], &a1[*(v6 + 24)], v10);
  *a3 = v5;
  result = type metadata accessor for TransferService.FileDownloadRequest(0);
  *&a3[*(result + 20)] = a2;
  return result;
}

uint64_t sub_1E4AE1A00()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x747365757165725FLL;
  }
}

uint64_t sub_1E4AE1A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747365757165725FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF1420 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE1B24(uint64_t a1)
{
  v2 = sub_1E4AE238C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE1B60(uint64_t a1)
{
  v2 = sub_1E4AE238C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransferService.FileDownloadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92730, &qword_1E4BFB0A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE238C();
  sub_1E4BF0ACC();
  v12 = 0;
  _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  sub_1E4AE221C(&qword_1ECF92740, _s19FileDownloadRequestV21CodableRepresentationVMa, &unk_1E4C06560);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for TransferService.FileDownloadRequest(0) + 20));
    v10[15] = 1;
    type metadata accessor for SandboxExtension(0);
    sub_1E4AE221C(&qword_1ECF92748, type metadata accessor for SandboxExtension, &protocol conformance descriptor for SandboxExtension);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TransferService.FileDownloadRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92750, &qword_1E4BFB0B0);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TransferService.FileDownloadRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE238C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1E4AE221C(&qword_1ECF92758, _s19FileDownloadRequestV21CodableRepresentationVMa, &unk_1E4C06538);
  v14 = v19;
  sub_1E4BF087C();
  sub_1E4AE2264(v20, v13, _s19FileDownloadRequestV21CodableRepresentationVMa);
  type metadata accessor for SandboxExtension(0);
  v22 = 1;
  sub_1E4AE221C(&qword_1ECF92760, type metadata accessor for SandboxExtension, &protocol conformance descriptor for SandboxExtension);
  sub_1E4BF087C();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1E4AE22CC(v13, v17, type metadata accessor for TransferService.FileDownloadRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4AE23E0(v13, type metadata accessor for TransferService.FileDownloadRequest);
}

uint64_t sub_1E4AE2138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4AE21A8()
{
  result = qword_1ECF92710;
  if (!qword_1ECF92710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92710);
  }

  return result;
}

uint64_t sub_1E4AE221C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4AE2264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AE22CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AE2354(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E4AE238C()
{
  result = qword_1ECF92738;
  if (!qword_1ECF92738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92738);
  }

  return result;
}

uint64_t sub_1E4AE23E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4AE2440(uint64_t a1)
{
  result = sub_1E4AE221C(&qword_1ECF92768, type metadata accessor for TransferService.FileDownloadRequest, &protocol conformance descriptor for TransferService.FileDownloadRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4AE249C()
{
  result = qword_1ECF92770;
  if (!qword_1ECF92770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92770);
  }

  return result;
}

uint64_t sub_1E4AE2580(uint64_t a1)
{
  *(a1 + 8) = sub_1E4AE221C(&qword_1ECF92788, type metadata accessor for TransferService.FileDownloadRequest, &protocol conformance descriptor for TransferService.FileDownloadRequest);
  result = sub_1E4AE221C(&qword_1ECF92790, type metadata accessor for TransferService.FileDownloadRequest, &protocol conformance descriptor for TransferService.FileDownloadRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4AE262C(uint64_t a1)
{
  result = _s19FileDownloadRequestV21CodableRepresentationVMa(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SandboxExtension(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4AE26D8(uint64_t a1)
{
  result = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s19FileDownloadRequestV5ReplyV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s19FileDownloadRequestV5ReplyV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E4AE2840()
{
  result = qword_1ECF927B8;
  if (!qword_1ECF927B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927B8);
  }

  return result;
}

unint64_t sub_1E4AE2898()
{
  result = qword_1ECF927C0;
  if (!qword_1ECF927C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927C0);
  }

  return result;
}

unint64_t sub_1E4AE28F0()
{
  result = qword_1ECF927C8;
  if (!qword_1ECF927C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927C8);
  }

  return result;
}

unint64_t sub_1E4AE2948()
{
  result = qword_1ECF927D0;
  if (!qword_1ECF927D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927D0);
  }

  return result;
}

unint64_t sub_1E4AE29A0()
{
  result = qword_1ECF927D8;
  if (!qword_1ECF927D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927D8);
  }

  return result;
}

unint64_t sub_1E4AE29F8()
{
  result = qword_1ECF927E0;
  if (!qword_1ECF927E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927E0);
  }

  return result;
}

uint64_t RCSSendDeviceSpecificsRequest.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t RCSSendDeviceSpecificsRequest.destination.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t sub_1E4AE2A7C()
{
  v1 = 0x496567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4AE2AE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4AE355C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4AE2B10(uint64_t a1)
{
  v2 = sub_1E4AE2D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE2B4C(uint64_t a1)
{
  v2 = sub_1E4AE2D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendDeviceSpecificsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF927E8, &qword_1E4BFB3E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v10 = *(v1 + 4);
  v16 = *(v1 + 3);
  v17 = v8;
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE2D98();
  sub_1E4BF0ACC();
  LOBYTE(v19) = v7;
  v21 = 0;
  sub_1E4ADBE98();
  v11 = v18;
  sub_1E4BF093C();
  if (!v11)
  {
    v12 = v15;
    v13 = v16;
    v19 = v17;
    v20 = v9;
    v21 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    v19 = v13;
    v20 = v12;
    v21 = 2;
    sub_1E4AE2E40();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E4AE2D98()
{
  result = qword_1ECF927F0;
  if (!qword_1ECF927F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927F0);
  }

  return result;
}

unint64_t sub_1E4AE2DEC()
{
  result = qword_1ECF927F8;
  if (!qword_1ECF927F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF927F8);
  }

  return result;
}

unint64_t sub_1E4AE2E40()
{
  result = qword_1ECF92800;
  if (!qword_1ECF92800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92800);
  }

  return result;
}

uint64_t RCSSendDeviceSpecificsRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92808, &qword_1E4BFB3E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE2D98();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v16;
  v18 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v10 = v17;
  v15 = v16;
  v18 = 2;
  sub_1E4AE3140();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v11 = v16;
  v12 = v17;
  *a2 = v9;
  *(a2 + 8) = v15;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4AE30EC()
{
  result = qword_1ECF92810;
  if (!qword_1ECF92810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92810);
  }

  return result;
}

unint64_t sub_1E4AE3140()
{
  result = qword_1ECF92818;
  if (!qword_1ECF92818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92818);
  }

  return result;
}

unint64_t sub_1E4AE3194(uint64_t a1)
{
  result = sub_1E4AE31BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4AE31BC()
{
  result = qword_1EE2BD9D8;
  if (!qword_1EE2BD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9D8);
  }

  return result;
}

unint64_t sub_1E4AE3210()
{
  result = qword_1EE2BEBA8;
  if (!qword_1EE2BEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BEBA8);
  }

  return result;
}

unint64_t sub_1E4AE3288(uint64_t a1)
{
  *(a1 + 8) = sub_1E4AE32B8();
  result = sub_1E4AE330C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4AE32B8()
{
  result = qword_1EE2BD9E0;
  if (!qword_1EE2BD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9E0);
  }

  return result;
}

unint64_t sub_1E4AE330C()
{
  result = qword_1EE2BD9E8;
  if (!qword_1EE2BD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9E8);
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

uint64_t sub_1E4AE33A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4AE33EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E4AE3458()
{
  result = qword_1ECF92820;
  if (!qword_1ECF92820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92820);
  }

  return result;
}

unint64_t sub_1E4AE34B0()
{
  result = qword_1ECF92828;
  if (!qword_1ECF92828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92828);
  }

  return result;
}

unint64_t sub_1E4AE3508()
{
  result = qword_1ECF92830;
  if (!qword_1ECF92830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92830);
  }

  return result;
}

uint64_t sub_1E4AE355C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4AE36A0()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 0x6475617266;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1835102323;
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

uint64_t sub_1E4AE3730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4AE6668(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4AE3758(uint64_t a1)
{
  v2 = sub_1E4AE3F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE3794(uint64_t a1)
{
  v2 = sub_1E4AE3F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE37D0(uint64_t a1)
{
  v2 = sub_1E4AE4064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE380C(uint64_t a1)
{
  v2 = sub_1E4AE4064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE3848(uint64_t a1)
{
  v2 = sub_1E4AE4010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE3884(uint64_t a1)
{
  v2 = sub_1E4AE4010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE38C0(uint64_t a1)
{
  v2 = sub_1E4AE410C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE38FC(uint64_t a1)
{
  v2 = sub_1E4AE410C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE3938(uint64_t a1)
{
  v2 = sub_1E4AE3FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE3974(uint64_t a1)
{
  v2 = sub_1E4AE3FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE39B0(uint64_t a1)
{
  v2 = sub_1E4AE40B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE39EC(uint64_t a1)
{
  v2 = sub_1E4AE40B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.ReportSpamRequest.Category.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92838, &qword_1E4BFB600);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92840, &qword_1E4BFB608);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92848, &qword_1E4BFB610);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92850, &qword_1E4BFB618);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92858, &qword_1E4BFB620);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92860, &qword_1E4BFB628);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1E4AE3F68();
  sub_1E4BF0ACC();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1E4AE40B8();
      v31 = v45;
      sub_1E4BF08BC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1E4AE410C();
      v31 = v45;
      sub_1E4BF08BC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1E4AE4064();
      v22 = v33;
      v23 = v45;
      sub_1E4BF08BC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1E4AE4010();
      v22 = v36;
      v23 = v45;
      sub_1E4BF08BC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1E4AE3FBC();
      v22 = v39;
      v23 = v45;
      sub_1E4BF08BC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

unint64_t sub_1E4AE3F68()
{
  result = qword_1ECF92868;
  if (!qword_1ECF92868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92868);
  }

  return result;
}

unint64_t sub_1E4AE3FBC()
{
  result = qword_1ECF92870;
  if (!qword_1ECF92870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92870);
  }

  return result;
}

unint64_t sub_1E4AE4010()
{
  result = qword_1ECF92878;
  if (!qword_1ECF92878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92878);
  }

  return result;
}

unint64_t sub_1E4AE4064()
{
  result = qword_1ECF92880;
  if (!qword_1ECF92880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92880);
  }

  return result;
}

unint64_t sub_1E4AE40B8()
{
  result = qword_1ECF92888;
  if (!qword_1ECF92888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92888);
  }

  return result;
}

unint64_t sub_1E4AE410C()
{
  result = qword_1ECF92890;
  if (!qword_1ECF92890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92890);
  }

  return result;
}

uint64_t RCSService.ReportSpamRequest.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSService.ReportSpamRequest.Category.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92898, &qword_1E4BFB630);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928A0, &qword_1E4BFB638);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928A8, &qword_1E4BFB640);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928B0, &qword_1E4BFB648);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928B8, &qword_1E4BFB650);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928C0, &unk_1E4BFB658);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4AE3F68();
  v19 = v61;
  sub_1E4BF0ABC();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1E4BF088C();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1E4AE0F18();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1E4BF06EC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
    *v34 = &type metadata for RCSService.ReportSpamRequest.Category;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1E4AE40B8();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1E4BF07EC();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1E4AE410C();
      v37 = v46;
      sub_1E4BF07EC();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1E4AE4064();
    v38 = v24;
    v39 = v46;
    sub_1E4BF07EC();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1E4AE3FBC();
    v41 = v56;
    v42 = v46;
    sub_1E4BF07EC();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_1E4AE4010();
  v31 = v46;
  sub_1E4BF07EC();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1E4AE4A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.ReportSpamRequest.fileContent.getter()
{
  v1 = v0 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 20);
  v2 = *v1;
  sub_1E4AE4B24(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1E4AE4B24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E4AE4B38(a1, a2);
  }

  return a1;
}

uint64_t sub_1E4AE4B38(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t RCSService.ReportSpamRequest.fileContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 20);
  result = sub_1E4AE4BD4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_1E4AE4BD4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E4AE4BE8(result, a2);
  }

  return result;
}

uint64_t sub_1E4AE4BE8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t RCSService.ReportSpamRequest.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.ReportSpamRequest(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RCSService.ReportSpamRequest.category.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RCSService.ReportSpamRequest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t RCSService.ReportSpamRequest.reason.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 28));

  return v1;
}

uint64_t RCSService.ReportSpamRequest.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RCSService.ReportSpamRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RCSService.ReportSpamRequest.init(message:fileContent:category:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for RCSService.ReportSpamRequest(0);
  v15 = a7 + v14[5];
  *v15 = xmmword_1E4BFB5F0;
  v16 = v14[6];
  *(a7 + v16) = 5;
  v17 = (a7 + v14[7]);
  sub_1E4AE4EA8(a1, a7);
  result = sub_1E4AE4BD4(*v15, *(v15 + 8));
  *v15 = a2;
  *(v15 + 8) = a3;
  *(a7 + v16) = v13;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1E4AE4EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *RCSService.ReportSpamRequest.CodableRepresentation.init(message:fileContent:category:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  sub_1E4AE4EA8(a1, a7);
  result = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v14 = (a7 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a7 + result[6]) = v12;
  v15 = (a7 + result[7]);
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t sub_1E4AE4FA0()
{
  v1 = 0x6567617373656DLL;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x6E6F73616572;
  }

  if (*v0)
  {
    v1 = 0x746E6F43656C6966;
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

uint64_t sub_1E4AE5020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4AE6818(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4AE5048(uint64_t a1)
{
  v2 = sub_1E4AE5318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE5084(uint64_t a1)
{
  v2 = sub_1E4AE5318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.ReportSpamRequest.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928C8, &qword_1E4BFB668);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE5318();
  sub_1E4BF0ACC();
  LOBYTE(v15) = 0;
  type metadata accessor for RCSMessage(0);
  sub_1E4AE5810(&qword_1ECF928D8, type metadata accessor for RCSMessage, &protocol conformance descriptor for RCSMessage);
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_1E4AE4B24(v15, v11);
    sub_1E4AE536C();
    sub_1E4BF08EC();
    sub_1E4AE4BD4(v15, v16);
    LOBYTE(v15) = *(v3 + *(v9 + 24));
    v14 = 2;
    sub_1E4AE53C0();
    sub_1E4BF08EC();
    LOBYTE(v15) = 3;
    sub_1E4BF08CC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E4AE5318()
{
  result = qword_1ECF928D0;
  if (!qword_1ECF928D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF928D0);
  }

  return result;
}

unint64_t sub_1E4AE536C()
{
  result = qword_1ECF928E0;
  if (!qword_1ECF928E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF928E0);
  }

  return result;
}

unint64_t sub_1E4AE53C0()
{
  result = qword_1ECF928E8;
  if (!qword_1ECF928E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF928E8);
  }

  return result;
}

uint64_t RCSService.ReportSpamRequest.CodableRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for RCSMessage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF928F0, &qword_1E4BFB670);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4AE5318();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v14 = v23;
  v15 = v12;
  LOBYTE(v26) = 0;
  sub_1E4AE5810(&qword_1ECF928F8, type metadata accessor for RCSMessage, &protocol conformance descriptor for RCSMessage);
  v16 = v24;
  sub_1E4BF087C();
  sub_1E4AE4EA8(v6, v15);
  v27 = 1;
  sub_1E4AE5858();
  sub_1E4BF082C();
  *(v15 + v10[5]) = v26;
  v27 = 2;
  sub_1E4AE58AC();
  sub_1E4BF082C();
  *(v15 + v10[6]) = v26;
  LOBYTE(v26) = 3;
  v17 = sub_1E4BF080C();
  v19 = v18;
  (*(v14 + 8))(v9, v16);
  v20 = (v15 + v10[7]);
  *v20 = v17;
  v20[1] = v19;
  sub_1E4AE5900(v15, v22, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1E4AE5968(v15, type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation);
}

uint64_t sub_1E4AE5810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4AE5858()
{
  result = qword_1ECF92900;
  if (!qword_1ECF92900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92900);
  }

  return result;
}

unint64_t sub_1E4AE58AC()
{
  result = qword_1ECF92908;
  if (!qword_1ECF92908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92908);
  }

  return result;
}

uint64_t sub_1E4AE5900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AE5968(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4AE59CC()
{
  result = qword_1ECF92910;
  if (!qword_1ECF92910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92910);
  }

  return result;
}

void sub_1E4AE5B08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E4BF053C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RCSMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

void sub_1E4AE5D14(uint64_t a1)
{
  type metadata accessor for RCSMessage(319);
  if (v1 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1EE2BECC0, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      sub_1E4AE5B08(319, qword_1EE2BE800, &type metadata for RCSService.ReportSpamRequest.Category);
      if (v3 <= 0x3F)
      {
        sub_1E4AE5B08(319, &qword_1EE2BD740, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _s17ReportSpamRequestV21CodableRepresentationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17ReportSpamRequestV21CodableRepresentationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RCSMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RCSMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4AE60EC()
{
  result = qword_1ECF92938;
  if (!qword_1ECF92938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92938);
  }

  return result;
}

unint64_t sub_1E4AE6144()
{
  result = qword_1ECF92940;
  if (!qword_1ECF92940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92940);
  }

  return result;
}

unint64_t sub_1E4AE619C()
{
  result = qword_1ECF92948;
  if (!qword_1ECF92948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92948);
  }

  return result;
}

unint64_t sub_1E4AE61F4()
{
  result = qword_1ECF92950;
  if (!qword_1ECF92950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92950);
  }

  return result;
}

unint64_t sub_1E4AE624C()
{
  result = qword_1ECF92958;
  if (!qword_1ECF92958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92958);
  }

  return result;
}

unint64_t sub_1E4AE62A4()
{
  result = qword_1ECF92960;
  if (!qword_1ECF92960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92960);
  }

  return result;
}

unint64_t sub_1E4AE62FC()
{
  result = qword_1ECF92968;
  if (!qword_1ECF92968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92968);
  }

  return result;
}

unint64_t sub_1E4AE6354()
{
  result = qword_1ECF92970;
  if (!qword_1ECF92970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92970);
  }

  return result;
}

unint64_t sub_1E4AE63AC()
{
  result = qword_1ECF92978;
  if (!qword_1ECF92978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92978);
  }

  return result;
}

unint64_t sub_1E4AE6404()
{
  result = qword_1ECF92980;
  if (!qword_1ECF92980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92980);
  }

  return result;
}

unint64_t sub_1E4AE645C()
{
  result = qword_1ECF92988;
  if (!qword_1ECF92988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92988);
  }

  return result;
}

unint64_t sub_1E4AE64B4()
{
  result = qword_1ECF92990;
  if (!qword_1ECF92990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92990);
  }

  return result;
}

unint64_t sub_1E4AE650C()
{
  result = qword_1ECF92998;
  if (!qword_1ECF92998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92998);
  }

  return result;
}

unint64_t sub_1E4AE6564()
{
  result = qword_1ECF929A0;
  if (!qword_1ECF929A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929A0);
  }

  return result;
}

unint64_t sub_1E4AE65BC()
{
  result = qword_1ECF929A8;
  if (!qword_1ECF929A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929A8);
  }

  return result;
}

unint64_t sub_1E4AE6614()
{
  result = qword_1ECF929B0;
  if (!qword_1ECF929B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929B0);
  }

  return result;
}

uint64_t sub_1E4AE6668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64696C61766E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1835102323 && a2 == 0xE400000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6475617266 && a2 == 0xE500000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1440 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4AE6818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F43656C6966 && a2 == 0xEB00000000746E65 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t static RCSHandle.phoneNumber(_:)@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x1E69205B0]();
  *a1 = 980182388;
  *(a1 + 8) = 0xE400000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

unint64_t RCSHandle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[4])
  {
    v4 = v0[2];
    v3 = v0[3];
    sub_1E4BF069C();

    v8 = 0xD000000000000012;
    MEMORY[0x1E69205B0](v1, v2);
    MEMORY[0x1E69205B0](47, 0xE100000000000000);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    sub_1E4BF069C();

    v8 = 0xD000000000000010;
    v5 = v1;
    v6 = v2;
  }

  MEMORY[0x1E69205B0](v5, v6);
  MEMORY[0x1E69205B0](62, 0xE100000000000000);
  return v8;
}

uint64_t sub_1E4AE6AF0()
{
  if (*v0)
  {
    return 0x70756F7267;
  }

  else
  {
    return 6910581;
  }
}

uint64_t sub_1E4AE6B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6910581 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE6BF8(uint64_t a1)
{
  v2 = sub_1E4AE875C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE6C34(uint64_t a1)
{
  v2 = sub_1E4AE875C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE6C7C(uint64_t a1)
{
  v2 = sub_1E4AE87B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE6CB8(uint64_t a1)
{
  v2 = sub_1E4AE87B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE6CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AE6D74(uint64_t a1)
{
  v2 = sub_1E4AE8858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE6DB0(uint64_t a1)
{
  v2 = sub_1E4AE8858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929B8, &qword_1E4BFBE10);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929C0, &qword_1E4BFBE18);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929C8, &qword_1E4BFBE20);
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v19 - v10;
  v12 = v1[1];
  v26 = *v1;
  v27 = v12;
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE875C();
  sub_1E4BF0ACC();
  if (v14)
  {
    LOBYTE(v29) = 1;
    sub_1E4AE87B0();
    v15 = v28;
    sub_1E4BF08BC();
    v29 = v26;
    v30 = v27;
    v31 = v21;
    v32 = v20;
    sub_1E4AE8804();
    v16 = v25;
    sub_1E4BF093C();
    (*(v24 + 8))(v5, v16);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_1E4AE8858();
    v15 = v28;
    sub_1E4BF08BC();
    v29 = v26;
    v30 = v27;
    sub_1E4AE2E40();
    v17 = v23;
    sub_1E4BF093C();
    (*(v22 + 8))(v8, v17);
  }

  return (*(v9 + 8))(v11, v15);
}

uint64_t RCSHandle.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  return sub_1E4BEFF4C();
}

uint64_t RCSHandle.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1E4BF0A6C();
  if (v1)
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929F0, &qword_1E4BFBE28);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF929F8, &qword_1E4BFBE30);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92A00, &unk_1E4BFBE38);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32[-v12];
  v14 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4AE875C();
  v15 = v39;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v39 = v11;
    v16 = v38;
    v17 = sub_1E4BF088C();
    v18 = (2 * *(v17 + 16)) | 1;
    v44 = v17;
    v45 = v17 + 32;
    v46 = 0;
    v47 = v18;
    v19 = sub_1E4AE0F10();
    v20 = v10;
    if (v19 == 2 || v46 != v47 >> 1)
    {
      v23 = sub_1E4BF06EC();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v25 = &type metadata for RCSHandle;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v39 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v13;
      v33 = v19;
      v21 = v39;
      if (v19)
      {
        LOBYTE(v40) = 1;
        sub_1E4AE87B0();
        v22 = v34;
        sub_1E4BF07EC();
        sub_1E4AE88AC();
        v27 = v36;
        sub_1E4BF087C();
        (*(v37 + 8))(v6, v27);
        (*(v21 + 8))(v22, v20);
        swift_unknownObjectRelease();
        v28 = v40;
        v29 = v41;
        v30 = v42;
        v31 = v43;
      }

      else
      {
        LOBYTE(v40) = 0;
        sub_1E4AE8858();
        sub_1E4BF07EC();
        sub_1E4AE3140();
        sub_1E4BF087C();
        (*(v35 + 8))(v9, v7);
        (*(v21 + 8))(v34, v20);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v28 = v40;
        v29 = v41;
      }

      *v16 = v28;
      *(v16 + 8) = v29;
      *(v16 + 16) = v30;
      *(v16 + 24) = v31;
      *(v16 + 32) = v33 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1E4AE77AC()
{
  v1 = *(v0 + 32);
  sub_1E4BF0A6C();
  if (v1)
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE784C(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  return sub_1E4BEFF4C();
}

uint64_t sub_1E4AE78E0(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1E4BF0A6C();
  if (v2)
  {
    MEMORY[0x1E69210C0](1);
    sub_1E4BEFF4C();
  }

  else
  {
    MEMORY[0x1E69210C0](0);
  }

  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.URI.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E4AE79EC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1E4AE79F8()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE7A4C(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.Group.focus.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RCSHandle.Group.conversationID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

TelephonyMessagingKit::RCSHandle::Group __swiftcall RCSHandle.Group.init(focus:conversationID:)(Swift::String focus, Swift::String conversationID)
{
  *v2 = focus;
  v2[1] = conversationID;
  result.conversationID = conversationID;
  result.focus = focus;
  return result;
}

uint64_t static RCSHandle.Group.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t sub_1E4AE7C54()
{
  if (*v0)
  {
    return 0x61737265766E6F63;
  }

  else
  {
    return 0x7375636F66;
  }
}

uint64_t sub_1E4AE7C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7375636F66 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE7D78(uint64_t a1)
{
  v2 = sub_1E4AE8900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE7DB4(uint64_t a1)
{
  v2 = sub_1E4AE8900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSHandle.Group.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92A10, &qword_1E4BFBE48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE8900();
  sub_1E4BF0ACC();
  v12 = 0;
  v8 = v10[3];
  sub_1E4BF08FC();
  if (!v8)
  {
    v11 = 1;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSHandle.Group.hash(into:)(uint64_t a1)
{
  sub_1E4BEFF4C();

  return sub_1E4BEFF4C();
}

uint64_t RCSHandle.Group.hashValue.getter()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t RCSHandle.Group.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92A20, &qword_1E4BFBE50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AE8900();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1E4BF083C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1E4BF083C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AE823C()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE82A4(uint64_t a1)
{
  sub_1E4BEFF4C();

  return sub_1E4BEFF4C();
}

uint64_t sub_1E4AE82F4(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  sub_1E4BEFF4C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AE8388(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t _s21TelephonyMessagingKit9RCSHandleO2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v21 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v23 = sub_1E4BF099C();
        sub_1E4ADD6D8(v8, v7, v10, v9, 0);
        sub_1E4ADD6D8(v3, v2, v5, v4, 0);
        sub_1E4ADD764(v3, v2, v5, v4, 0);
        sub_1E4ADD764(v8, v7, v10, v9, 0);
        return v23 & 1;
      }

      sub_1E4ADD6D8(v21, v2, v10, v9, 0);
      sub_1E4ADD6D8(v3, v2, v5, v4, 0);
      sub_1E4ADD764(v3, v2, v5, v4, 0);
      v24 = v3;
      v25 = v2;
      v26 = v10;
      v27 = v9;
      v28 = 0;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
LABEL_15:
    sub_1E4ADD6D8(*a2, *(a2 + 8), v10, v9, v11);
    sub_1E4ADD6D8(v3, v2, v5, v4, v6);
    sub_1E4ADD764(v3, v2, v5, v4, v6);
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = v11;
LABEL_16:
    sub_1E4ADD764(v16, v17, v18, v19, v20);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_1E4BF099C() & 1) == 0)
  {
    sub_1E4ADD6D8(v8, v7, v10, v9, 1);
    sub_1E4ADD6D8(v3, v2, v5, v4, 1);
    sub_1E4ADD764(v3, v2, v5, v4, 1);
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = 1;
    goto LABEL_16;
  }

  if (v5 == v10 && v4 == v9)
  {
    sub_1E4ADD6D8(v8, v7, v5, v4, 1);
    sub_1E4ADD6D8(v3, v2, v5, v4, 1);
    sub_1E4ADD764(v3, v2, v5, v4, 1);
    v24 = v8;
    v25 = v7;
    v26 = v5;
    v27 = v4;
    v28 = 1;
LABEL_25:
    sub_1E4ADD764(v24, v25, v26, v27, v28);
    return 1;
  }

  v14 = sub_1E4BF099C();
  sub_1E4ADD6D8(v8, v7, v10, v9, 1);
  sub_1E4ADD6D8(v3, v2, v5, v4, 1);
  sub_1E4ADD764(v3, v2, v5, v4, 1);
  sub_1E4ADD764(v8, v7, v10, v9, 1);
  result = 1;
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E4AE875C()
{
  result = qword_1ECF929D0;
  if (!qword_1ECF929D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929D0);
  }

  return result;
}

unint64_t sub_1E4AE87B0()
{
  result = qword_1ECF929D8;
  if (!qword_1ECF929D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929D8);
  }

  return result;
}

unint64_t sub_1E4AE8804()
{
  result = qword_1ECF929E0;
  if (!qword_1ECF929E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929E0);
  }

  return result;
}

unint64_t sub_1E4AE8858()
{
  result = qword_1ECF929E8;
  if (!qword_1ECF929E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF929E8);
  }

  return result;
}

unint64_t sub_1E4AE88AC()
{
  result = qword_1ECF92A08;
  if (!qword_1ECF92A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A08);
  }

  return result;
}

unint64_t sub_1E4AE8900()
{
  result = qword_1ECF92A18;
  if (!qword_1ECF92A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A18);
  }

  return result;
}

unint64_t sub_1E4AE8958()
{
  result = qword_1ECF92A28;
  if (!qword_1ECF92A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A28);
  }

  return result;
}

unint64_t sub_1E4AE89B0()
{
  result = qword_1ECF92A30;
  if (!qword_1ECF92A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A30);
  }

  return result;
}

unint64_t sub_1E4AE8A14()
{
  result = qword_1ECF92A38;
  if (!qword_1ECF92A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A38);
  }

  return result;
}

unint64_t sub_1E4AE8A6C()
{
  result = qword_1ECF92A40;
  if (!qword_1ECF92A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A40);
  }

  return result;
}

unint64_t sub_1E4AE8ADC()
{
  result = qword_1ECF92A48;
  if (!qword_1ECF92A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A48);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4AE8B44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1E4AE8B8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E4AE8BF0(uint64_t a1, int a2)
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

uint64_t sub_1E4AE8C38(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4AE8C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E4AE8CD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1E4AE8D6C()
{
  result = qword_1ECF92A50;
  if (!qword_1ECF92A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A50);
  }

  return result;
}

unint64_t sub_1E4AE8DC4()
{
  result = qword_1ECF92A58;
  if (!qword_1ECF92A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A58);
  }

  return result;
}

unint64_t sub_1E4AE8E1C()
{
  result = qword_1ECF92A60;
  if (!qword_1ECF92A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A60);
  }

  return result;
}

unint64_t sub_1E4AE8E74()
{
  result = qword_1ECF92A68;
  if (!qword_1ECF92A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A68);
  }

  return result;
}

unint64_t sub_1E4AE8ECC()
{
  result = qword_1ECF92A70;
  if (!qword_1ECF92A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A70);
  }

  return result;
}

unint64_t sub_1E4AE8F24()
{
  result = qword_1ECF92A78;
  if (!qword_1ECF92A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A78);
  }

  return result;
}

unint64_t sub_1E4AE8F7C()
{
  result = qword_1ECF92A80;
  if (!qword_1ECF92A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A80);
  }

  return result;
}

unint64_t sub_1E4AE8FD4()
{
  result = qword_1ECF92A88;
  if (!qword_1ECF92A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A88);
  }

  return result;
}

unint64_t sub_1E4AE902C()
{
  result = qword_1ECF92A90;
  if (!qword_1ECF92A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A90);
  }

  return result;
}

unint64_t sub_1E4AE9084()
{
  result = qword_1ECF92A98;
  if (!qword_1ECF92A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92A98);
  }

  return result;
}

unint64_t sub_1E4AE90DC()
{
  result = qword_1ECF92AA0;
  if (!qword_1ECF92AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AA0);
  }

  return result;
}

unint64_t sub_1E4AE9134()
{
  result = qword_1ECF92AA8;
  if (!qword_1ECF92AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AA8);
  }

  return result;
}

unint64_t sub_1E4AE9188()
{
  result = qword_1ECF92AB0;
  if (!qword_1ECF92AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AB0);
  }

  return result;
}

uint64_t sub_1E4AE9200()
{
  if (*v0)
  {
    return 0x756E656D627573;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_1E4AE9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756E656D627573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AE9324(uint64_t a1)
{
  v2 = sub_1E4AEA9E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE9360(uint64_t a1)
{
  v2 = sub_1E4AEA9E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE939C(uint64_t a1)
{
  v2 = sub_1E4AEAAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE93D8(uint64_t a1)
{
  v2 = sub_1E4AEAAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AE9414(uint64_t a1)
{
  v2 = sub_1E4AEAB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AE9450(uint64_t a1)
{
  v2 = sub_1E4AEAB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Menu.Content.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AB8, &qword_1E4BFC6E0);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v22 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AC0, &qword_1E4BFC6E8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - v4;
  v23 = type metadata accessor for RCSService.Business.Suggestion(0);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RCSService.Business.Menu.Content(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AC8, &qword_1E4BFC6F0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEA9E8();
  sub_1E4BF0ACC();
  sub_1E4AEAA3C(v30, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v9;
    v14 = v9[1];
    v16 = v9[2];
    LOBYTE(v31) = 1;
    sub_1E4AEAAA0();
    v17 = v26;
    sub_1E4BF08BC();
    v31 = v15;
    v32 = v14;
    v33 = v16;
    sub_1E4AEAAF4();
    v18 = v29;
    sub_1E4BF093C();
    (*(v28 + 8))(v17, v18);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1E4AEABF0(v9, v6, type metadata accessor for RCSService.Business.Suggestion);
    LOBYTE(v31) = 0;
    sub_1E4AEAB48();
    v20 = v24;
    sub_1E4BF08BC();
    sub_1E4AEAD48(&qword_1ECF92AF0, type metadata accessor for RCSService.Business.Suggestion, &protocol conformance descriptor for RCSService.Business.Suggestion);
    v21 = v27;
    sub_1E4BF093C();
    (*(v25 + 8))(v20, v21);
    sub_1E4AEB320(v6, type metadata accessor for RCSService.Business.Suggestion);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t RCSService.Business.Menu.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AF8, &qword_1E4BFC6F8);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B00, &qword_1E4BFC700);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B08, &unk_1E4BFC708);
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for RCSService.Business.Menu.Content(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1E4AEA9E8();
  v20 = v53;
  sub_1E4BF0ABC();
  if (!v20)
  {
    v43 = v13;
    v44 = v18;
    v53 = v16;
    v22 = v50;
    v21 = v51;
    v23 = v52;
    v24 = sub_1E4BF088C();
    v25 = (2 * *(v24 + 16)) | 1;
    v56 = v24;
    v57 = v24 + 32;
    v58 = 0;
    v59 = v25;
    v26 = sub_1E4AE0F10();
    v27 = v7;
    if (v26 == 2 || v58 != v59 >> 1)
    {
      v35 = sub_1E4BF06EC();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v37 = v10;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v22 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        LOBYTE(v54) = 1;
        sub_1E4AEAAA0();
        v28 = v49;
        sub_1E4BF07EC();
        v29 = v23;
        sub_1E4AEAB9C();
        v30 = v45;
        sub_1E4BF087C();
        (*(v48 + 8))(v28, v30);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        v31 = v55;
        v32 = v43;
        *v43 = v54;
        *(v32 + 2) = v31;
        swift_storeEnumTagMultiPayload();
        v33 = v32;
        v34 = v44;
        sub_1E4AEABF0(v33, v44, type metadata accessor for RCSService.Business.Menu.Content);
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_1E4AEAB48();
        v39 = v21;
        sub_1E4BF07EC();
        type metadata accessor for RCSService.Business.Suggestion(0);
        sub_1E4AEAD48(&qword_1ECF92B18, type metadata accessor for RCSService.Business.Suggestion, &protocol conformance descriptor for RCSService.Business.Suggestion);
        v40 = v53;
        v41 = v46;
        sub_1E4BF087C();
        (*(v47 + 8))(v39, v41);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v34 = v44;
        sub_1E4AEABF0(v40, v44, type metadata accessor for RCSService.Business.Menu.Content);
        v29 = v52;
      }

      sub_1E4AEABF0(v34, v29, type metadata accessor for RCSService.Business.Menu.Content);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t RCSService.Business.Menu.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RCSService.Business.Menu.init(title:contents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1E4AE9FD4()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1E4AEA00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AEA0E4(uint64_t a1)
{
  v2 = sub_1E4AEAC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AEA120(uint64_t a1)
{
  v2 = sub_1E4AEAC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Menu.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B20, &qword_1E4BFC718);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEAC58();
  sub_1E4BF0ACC();
  v13 = 0;
  sub_1E4BF08CC();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B30, &qword_1E4BFC720);
    sub_1E4AEACAC(&qword_1ECF92B38, &qword_1ECF92B40, &protocol conformance descriptor for RCSService.Business.Menu.Content, MEMORY[0x1E69E6300]);
    sub_1E4BF093C();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t RCSService.Business.Menu.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B48, &qword_1E4BFC728);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEAC58();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_1E4BF080C();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B30, &qword_1E4BFC720);
  v16 = 1;
  sub_1E4AEACAC(&qword_1ECF92B50, &qword_1ECF92B58, &protocol conformance descriptor for RCSService.Business.Menu.Content, MEMORY[0x1E69E6330]);
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4MenuV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1E4BF099C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1E4BC6054(v4, v6);
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4MenuV7ContentO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RCSService.Business.Menu.Content(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD0, &qword_1E4BFCCD8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = (&v27 + *(v14 + 56) - v15);
  sub_1E4AEAA3C(a1, &v27 - v15);
  sub_1E4AEAA3C(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E4AEAA3C(v16, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E4AEABF0(v17, v6, type metadata accessor for RCSService.Business.Suggestion);
      v24 = static RCSService.Business.Suggestion.== infix(_:_:)(v12, v6);
      sub_1E4AEB320(v6, type metadata accessor for RCSService.Business.Suggestion);
      sub_1E4AEB320(v12, type metadata accessor for RCSService.Business.Suggestion);
      sub_1E4AEB320(v16, type metadata accessor for RCSService.Business.Menu.Content);
      return v24 & 1;
    }

    sub_1E4AEB320(v12, type metadata accessor for RCSService.Business.Suggestion);
LABEL_14:
    sub_1E4AEB2B8(v16);
LABEL_21:
    v24 = 0;
    return v24 & 1;
  }

  sub_1E4AEAA3C(v16, v10);
  v19 = *v10;
  v18 = v10[1];
  v20 = v10[2];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_14;
  }

  v21 = v17[1];
  v22 = v17[2];
  if (v18)
  {
    if (!v21)
    {
      goto LABEL_17;
    }

    v23 = v19 == *v17 && v18 == v21;
    if (!v23 && (sub_1E4BF099C() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v21)
  {
LABEL_17:

LABEL_20:
    sub_1E4AEB320(v16, type metadata accessor for RCSService.Business.Menu.Content);
    goto LABEL_21;
  }

  v25 = sub_1E4BC6054(v20, v22);

  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1E4AEB320(v16, type metadata accessor for RCSService.Business.Menu.Content);
  v24 = 1;
  return v24 & 1;
}