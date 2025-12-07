void (*ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.modify(char **a1))(id **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B1D7BC2C();
  *(v5 + 1) = v6;
  v7 = *(v6 - 8);
  *(v5 + 2) = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 3) = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 3) = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  *(v5 + 4) = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00) - 8) + 64);
  if (v3)
  {
    *(v5 + 5) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 5) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v5 + 6) = v11;
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.getter(v5 + 56);
  return sub_1B1D06760;
}

void sub_1B1D06760(id **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = [**a1 extensions];
  if (a2)
  {
    if (v4 == 2)
    {
      v6 = 1;
    }

    else
    {
      v8 = MEMORY[0x1E698DF50];
      if ((v4 & 1) == 0)
      {
        v8 = MEMORY[0x1E698DF48];
      }

      (*(v3[2] + 13))(v3[3], *v8, v3[1]);
      sub_1B1D7BC3C();
      v6 = 0;
    }

    v9 = v3[5];
    v10 = v3[6];
    v12 = v3[3];
    v11 = v3[4];
    v13 = sub_1B1D7BC5C();
    (*(*(v13 - 8) + 56))(v9, v6, 1, v13);
    v14 = v9;
  }

  else
  {
    if (v4 == 2)
    {
      v7 = 1;
    }

    else
    {
      v15 = MEMORY[0x1E698DF50];
      if ((v4 & 1) == 0)
      {
        v15 = MEMORY[0x1E698DF48];
      }

      (*(v3[2] + 13))(v3[4], *v15, v3[1]);
      sub_1B1D7BC3C();
      v7 = 0;
    }

    v14 = v3[5];
    v16 = v3[6];
    v12 = v3[3];
    v11 = v3[4];
    v17 = sub_1B1D7BC5C();
    (*(*(v17 - 8) + 56))(v16, v7, 1, v17);
    v10 = v16;
  }

  sub_1B1D7BC7C();

  free(v10);
  free(v14);
  free(v11);
  free(v12);

  free(v3);
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = sub_1B1D7BA8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = sub_1B1D7BABC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = [v1 extensions];
  sub_1B1D7BACC();

  if ((*(v11 + 48))(v16, 1, v10))
  {
    result = sub_1B1CDEC18(v16, &qword_1EB774CD0, &qword_1B1D857C0);
    v19 = xmmword_1B1D857A0;
LABEL_7:
    *a1 = v19;
    return result;
  }

  (*(v11 + 16))(v13, v16, v10);
  sub_1B1CDEC18(v16, &qword_1EB774CD0, &qword_1B1D857C0);
  sub_1B1D7BAAC();
  (*(v4 + 16))(v7, v9, v3);
  v20 = (*(v4 + 88))(v7, v3);
  if (v20 == *MEMORY[0x1E698DF30])
  {
    (*(v4 + 8))(v9, v3);
    (*(v11 + 8))(v13, v10);
    result = (*(v4 + 96))(v7, v3);
    v19 = *v7;
    goto LABEL_7;
  }

  if (v20 == *MEMORY[0x1E698DF28])
  {
    (*(v4 + 8))(v9, v3);
    result = (*(v11 + 8))(v13, v10);
    v19 = xmmword_1B1D857B0;
    goto LABEL_7;
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.setter(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1B1D7BA8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = [v2 extensions];
  if (v11 >> 60 == 11)
  {
    v14 = sub_1B1D7BABC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  else
  {
    if (v11 >> 60 == 15)
    {
      v15 = MEMORY[0x1E698DF28];
    }

    else
    {
      *v7 = v12;
      v7[1] = v11;
      v15 = MEMORY[0x1E698DF30];
    }

    (*(v5 + 104))(v7, *v15, v4);
    sub_1B1D7BA9C();
    v16 = sub_1B1D7BABC();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  }

  sub_1B1D7BADC();
}

void (*ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.modify(__int128 **a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = sub_1B1D7BA8C();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 40) = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 40) = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  *(v5 + 48) = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0) - 8) + 64);
  if (v3)
  {
    *(v5 + 56) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 56) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v5 + 64) = v11;
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.largeBlob.getter(v5);
  return sub_1B1D07040;
}

void sub_1B1D07040(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {
    sub_1B1D07270(**a1, v3);
    v6 = [v5 extensions];
    if (v3 >> 60 == 11)
    {
      v7 = 1;
    }

    else
    {
      v11 = v2[4];
      v10 = v2[5];
      v12 = v2[3];
      if (v3 >> 60 == 15)
      {
        v13 = MEMORY[0x1E698DF28];
      }

      else
      {
        *v10 = v4;
        v10[1] = v3;
        v13 = MEMORY[0x1E698DF30];
      }

      (*(v11 + 104))(v10, *v13, v12);
      sub_1B1D7BA9C();
      v7 = 0;
    }

    v19 = v2[7];
    v18 = v2[8];
    v21 = v2[5];
    v20 = v2[6];
    v22 = sub_1B1D7BABC();
    (*(*(v22 - 8) + 56))(v19, v7, 1, v22);
    sub_1B1D7BADC();

    sub_1B1D07284(*v2, v2[1]);
  }

  else
  {
    v8 = [(*a1)[2] extensions];
    if (v3 >> 60 == 11)
    {
      v9 = 1;
    }

    else
    {
      v14 = v2[6];
      v15 = v2[3];
      v16 = v2[4];
      if (v3 >> 60 == 15)
      {
        v17 = MEMORY[0x1E698DF28];
      }

      else
      {
        *v14 = v4;
        v14[1] = v3;
        v17 = MEMORY[0x1E698DF30];
      }

      (*(v16 + 104))(v14, *v17, v15);
      sub_1B1D7BA9C();
      v9 = 0;
    }

    v19 = v2[7];
    v18 = v2[8];
    v21 = v2[5];
    v20 = v2[6];
    v23 = sub_1B1D7BABC();
    (*(*(v23 - 8) + 56))(v18, v9, 1, v23);
    sub_1B1D7BADC();
  }

  free(v18);
  free(v19);
  free(v20);
  free(v21);

  free(v2);
}

void sub_1B1D07270(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    sub_1B1C91B94(a1, a2);
  }
}

uint64_t sub_1B1D07284(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B1C91AE4(result, a2);
  }

  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialRegistration.largeBlob.getter(char *a1@<X8>)
{
  v3 = sub_1B1D7BD2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774FB0, &qword_1B1D85CA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = [v1 coreCredential];
  v11 = [v10 extensions];

  if (v11)
  {
    sub_1B1D7BD3C();

    if (!(*(v4 + 48))(v9, 1, v3))
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_1B1CDEC18(v9, &qword_1EB774FB0, &qword_1B1D85CA0);
      v13 = sub_1B1D7BD1C();
      (*(v4 + 8))(v6, v3);
      v12 = v13 & 1;
      goto LABEL_6;
    }

    sub_1B1CDEC18(v9, &qword_1EB774FB0, &qword_1B1D85CA0);
  }

  v12 = 2;
LABEL_6:
  *a1 = v12;
}

void ASAuthorizationPlatformPublicKeyCredentialAssertion.largeBlob.getter(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BB5C();
  v25 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = sub_1B1D7BB8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = [v1 coreCredential];
  v17 = [v16 extensions];

  if (!v17)
  {
    goto LABEL_4;
  }

  sub_1B1D7BB9C();

  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_1B1CDEC18(v15, &qword_1EB774D60, &qword_1B1D85830);
LABEL_4:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1B1CDEC18(v15, &qword_1EB774D60, &qword_1B1D85830);
  sub_1B1D7BB7C();
  v18 = v25;
  (*(v25 + 16))(v6, v8, v3);
  v19 = (*(v18 + 88))(v6, v3);
  v20 = v19;
  v21 = *MEMORY[0x1E698DF38];
  if (v19 == *MEMORY[0x1E698DF38])
  {
    (*(v18 + 8))(v8, v3);
    (*(v10 + 8))(v12, v9);
    (*(v18 + 96))(v6, v3);
    v23 = *v6;
    v22 = v6[1];
  }

  else
  {
    if (v19 != *MEMORY[0x1E698DF40])
    {
      sub_1B1D7C32C();
      __break(1u);
      return;
    }

    (*(v18 + 8))(v8, v3);
    (*(v10 + 8))(v12, v9);
    (*(v18 + 96))(v6, v3);
    v22 = 0;
    v23 = *v6;
  }

  *a1 = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v20 != v21;
}

unint64_t sub_1B1D07870()
{
  result = qword_1EB775200;
  if (!qword_1EB775200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775200);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices57ASAuthorizationPublicKeyCredentialLargeBlobAssertionInputV9OperationO(uint64_t a1)
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

uint64_t sub_1B1D078EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D07948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1B1D079A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
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

uint64_t sub_1B1D079F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1B1D07A48(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASPublicKeyCredentialClientData.CrossOriginValue(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B1D07B8C()
{
  v1 = v0;
  v2 = sub_1B1D7BA8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = [v1 operation];
  if (!v9)
  {
    v10 = MEMORY[0x1E698DF28];
LABEL_6:
    (*(v3 + 104))(v8, *v10, v2);
    return sub_1B1D7BA9C();
  }

  if (v9 == 1)
  {
    v11 = [v1 dataToWrite];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1B1D7B4EC();
      v15 = v14;

      *v6 = v13;
      v6[1] = v15;
      v8 = v6;
      v10 = MEMORY[0x1E698DF30];
      goto LABEL_6;
    }

    __break(1u);
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

uint64_t WBSSavedAccountStore.importableItems(for:)(uint64_t a1)
{
  v2[348] = v1;
  v2[347] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775210, &qword_1B1D871E8);
  v2[349] = swift_task_alloc();
  v3 = sub_1B1D7C08C();
  v2[350] = v3;
  v2[351] = *(v3 - 8);
  v2[352] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775218, &qword_1B1D871F0);
  v2[353] = swift_task_alloc();
  v4 = sub_1B1D7C04C();
  v2[354] = v4;
  v2[355] = *(v4 - 8);
  v2[356] = swift_task_alloc();
  v5 = sub_1B1D7B33C();
  v2[357] = v5;
  v2[358] = *(v5 - 8);
  v2[359] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775220, &unk_1B1D86850);
  v2[360] = swift_task_alloc();
  v2[361] = swift_task_alloc();
  v6 = sub_1B1D7B49C();
  v2[362] = v6;
  v2[363] = *(v6 - 8);
  v2[364] = swift_task_alloc();
  v2[365] = swift_task_alloc();
  v7 = type metadata accessor for ASImportableItem(0);
  v2[366] = v7;
  v2[367] = *(v7 - 8);
  v2[368] = swift_task_alloc();
  v2[369] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v2[370] = swift_task_alloc();
  v8 = sub_1B1D7B53C();
  v2[371] = v8;
  v2[372] = *(v8 - 8);
  v2[373] = swift_task_alloc();
  v2[374] = swift_task_alloc();
  v2[375] = swift_task_alloc();
  v2[376] = swift_task_alloc();
  v2[377] = swift_task_alloc();
  v9 = sub_1B1D7B57C();
  v2[378] = v9;
  v2[379] = *(v9 - 8);
  v2[380] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1D0815C, 0, 0);
}

uint64_t sub_1B1D0815C()
{
  v213 = v0;
  v1 = *(v0 + 2776);
  if (v1 >> 62)
  {
LABEL_98:
    v2 = sub_1B1D7C1FC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 3048) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_83:

    v162 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v4 = 0;
  v178 = (v0 + 2152);
  v179 = (v0 + 689);
  v177 = (v0 + 2096);
  v180 = (v0 + 1416);
  v181 = v0 + 2768;
  while (1)
  {
    *(v0 + 3064) = v3;
    *(v0 + 3056) = 0;
    v5 = *(v0 + 2776);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B273B2E0](v4);
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v6 = *(v5 + 8 * v4 + 32);
    }

    v7 = v6;
    *(v0 + 3072) = v6;
    *(v0 + 3080) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_91;
    }

    v8 = [v6 user];
    if (v8)
    {
      break;
    }

LABEL_6:
    v4 = *(v0 + 3080);
    if (v4 == *(v0 + 3048))
    {
      goto LABEL_83;
    }
  }

  v9 = *(v0 + 3040);
  v10 = *(v0 + 3032);
  v11 = *(v0 + 3024);
  v12 = v8;
  v13 = sub_1B1D7BE4C();
  v15 = v14;

  v191 = v13;
  *(v0 + 3088) = v13;
  v197 = v15;
  *(v0 + 3096) = v15;
  sub_1B1D7B56C();
  v16 = sub_1B1D7B54C();
  v204 = v17;
  v206 = v16;
  v185 = *(v10 + 8);
  v185(v9, v11);
  v18 = [v7 lastModifiedDate];
  v19 = *(v0 + 3016);
  if (v18)
  {
    v20 = *(v0 + 3008);
    v21 = *(v0 + 2976);
    v22 = *(v0 + 2968);
    v23 = *(v0 + 2960);
    v24 = v18;
    sub_1B1D7B51C();

    v25 = *(v21 + 32);
    v25(v23, v20, v22);
    v209 = *(v21 + 56);
    v209(v23, 0, 1, v22);
    v25(v19, v23, v22);
    v0 = v211;
  }

  else
  {
    v26 = *(v0 + 2976);
    v27 = *(v0 + 2968);
    v28 = *(v0 + 2960);
    v209 = *(v26 + 56);
    v209(v28, 1, 1, v27);
    sub_1B1D7B52C();
    if ((*(v26 + 48))(v28, 1, v27) != 1)
    {
      sub_1B1CDEC18(*(v0 + 2960), &qword_1EB775228, &qword_1B1D88D60);
    }
  }

  v29 = [v7 creationDate];
  v30 = *(v0 + 2976);
  v31 = *(v0 + 2968);
  v196 = v7;
  if (v29)
  {
    v32 = *(v0 + 3000);
    v33 = *(v0 + 2992);
    v34 = v29;
    sub_1B1D7B51C();

    (*(v30 + 32))(v32, v33, v31);
    v35 = *(v30 + 16);
  }

  else
  {
    v35 = *(v30 + 16);
    (v35)(*(v0 + 3000), *(v0 + 3016), v31);
  }

  v36 = *(v0 + 3016);
  v194 = *(v0 + 3008);
  v37 = *(v0 + 2984);
  v202 = v37;
  v38 = *(v211 + 372);
  v39 = *(v211 + 371);
  v40 = *(v211 + 369);
  v0 = *(v211 + 366);
  v35();
  (v35)(v37, v36, v39);
  v41 = [v7 effectiveTitle];
  v42 = sub_1B1D7BE4C();
  v198 = v43;
  v200 = v42;

  v44 = *(v0 + 20);
  v209(v40 + v44, 1, 1, v39);
  v45 = *(v0 + 24);
  v209(v40 + v45, 1, 1, v39);
  v192 = *(v0 + 36);
  v189 = (v40 + *(v0 + 32));
  v46 = (v40 + *(v0 + 40));
  *v46 = 0;
  v46[1] = 0;
  *v40 = v206;
  v40[1] = v204;
  sub_1B1CDEC18(v40 + v44, &qword_1EB775228, &qword_1B1D88D60);
  v47 = *(v38 + 32);
  v47(v40 + v44, v194, v39);
  v209(v40 + v44, 0, 1, v39);
  sub_1B1CDEC18(v40 + v45, &qword_1EB775228, &qword_1B1D88D60);
  v47(v40 + v45, v202, v39);
  v48 = v211;
  v209(v40 + v45, 0, 1, v39);
  v49 = v196;
  v50 = (v40 + *(v0 + 28));
  *v50 = v200;
  v50[1] = v198;
  *v189 = 0;
  v189[1] = 0;
  *(v40 + v192) = 0;
  sub_1B1D0C93C(*v46, v46[1]);
  *v46 = 0;
  v46[1] = 0;
  v183 = v46;
  v51 = *(v0 + 48);
  *(v211 + 343) = v51;
  v52 = MEMORY[0x1E69E7CC0];
  v193 = v51;
  v195 = v40;
  *(v40 + v51) = MEMORY[0x1E69E7CC0];
  *(v40 + *(v0 + 44)) = v52;
  v53 = [v196 password];
  if (v53)
  {
    v54 = *(v211 + 380);
    v55 = *(v211 + 378);
    v56 = v53;
    v182 = sub_1B1D7BE4C();
    v190 = v57;

    sub_1B1D7B56C();
    v58 = sub_1B1D7B54C();
    v60 = v59;
    v185(v54, v55);
    sub_1B1D7B56C();
    v61 = sub_1B1D7B54C();
    v63 = v62;
    v185(v54, v55);

    v187 = v60;
    v188 = v58;
    sub_1B1CE111C(v58, v60);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v184 = v63;
    v186 = v61;
    sub_1B1CE111C(v61, v63);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v64 = [v196 userVisibleSites];
    if (v64)
    {
      v65 = v64;
      v66 = sub_1B1D7BEEC();
    }

    else
    {
      v66 = MEMORY[0x1E69E7CC0];
    }

    *v181 = v66;
    v0 = [v196 additionalSites];
    v67 = sub_1B1D7BEEC();

    sub_1B1D0C45C(v67);
    sub_1B1C91B94(v188, v60);

    sub_1B1C91B94(v61, v63);

    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v68 = *v181;
    v207 = *(*v181 + 16);
    if (v207)
    {
      v69 = 0;
      v70 = (v68 + 40);
      v210 = MEMORY[0x1E69E7CC0];
      v205 = *v181;
      while (v69 < *(v68 + 16))
      {
        v71 = v48[363];
        v72 = v48[362];
        v73 = v48[360];
        v75 = *(v70 - 1);
        v74 = *v70;
        sub_1B1D7B32C();
        sub_1B1D7B31C();

        MEMORY[0x1B273A360](v75, v74);
        sub_1B1D7B2FC();
        v76 = v72;
        v77 = *(v71 + 48);
        if (v77(v73, 1, v76) == 1)
        {
          sub_1B1CDEC18(v48[360], &qword_1EB775220, &unk_1B1D86850);
          if (qword_1EB7749B8 != -1)
          {
            swift_once();
          }

          v78 = sub_1B1D7BD8C();
          __swift_project_value_buffer(v78, qword_1EB782530);

          v79 = sub_1B1D7BD6C();
          v80 = sub_1B1D7C00C();

          v81 = os_log_type_enabled(v79, v80);
          v82 = v48[358];
          v201 = v48[357];
          v203 = v48[359];
          if (v81)
          {
            v83 = swift_slowAlloc();
            v199 = v77;
            v84 = swift_slowAlloc();
            v212[0] = v84;
            *v83 = 136315138;
            *(v83 + 4) = sub_1B1D0D070(v75, v74, v212);
            _os_log_impl(&dword_1B1C8D000, v79, v80, "Could not create URL from %s", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v84);
            v85 = v84;
            v77 = v199;
            MEMORY[0x1B273C4C0](v85, -1, -1);
            v86 = v83;
            v48 = v211;
            MEMORY[0x1B273C4C0](v86, -1, -1);
          }

          v87 = *(v82 + 8);
          v0 = v82 + 8;
          v87(v203, v201);
          v88 = 1;
        }

        else
        {
          v89 = v48[363];
          v90 = v48[362];
          v91 = v48[361];
          v92 = v48[360];
          (*(v48[358] + 8))(v48[359], v48[357]);
          v93 = *(v89 + 32);
          v0 = v89 + 32;
          v93(v91, v92, v90);
          v88 = 0;
        }

        v94 = v48[362];
        v95 = v48[361];
        (*(v48[363] + 56))(v95, v88, 1, v94);
        if (v77(v95, 1, v94) == 1)
        {
          sub_1B1CDEC18(v48[361], &qword_1EB775220, &unk_1B1D86850);
        }

        else
        {
          v96 = v48[365];
          v97 = v48[364];
          v98 = v48[363];
          v99 = v48;
          v100 = v48[362];
          v102 = *(v98 + 32);
          v0 = v98 + 32;
          v101 = v102;
          v102(v96, v99[361], v100);
          v102(v97, v96, v100);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v210 = sub_1B1D0CD88(0, *(v210 + 2) + 1, 1, v210, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
          }

          v48 = v211;
          v104 = *(v210 + 2);
          v103 = *(v210 + 3);
          if (v104 >= v103 >> 1)
          {
            v210 = sub_1B1D0CD88((v103 > 1), v104 + 1, 1, v210, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
          }

          v105 = *(v211 + 364);
          v106 = *(v211 + 363);
          v107 = *(v211 + 362);
          *(v210 + 2) = v104 + 1;
          v101(&v210[((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v104], v105, v107);
        }

        ++v69;
        v70 += 2;
        v68 = v205;
        if (v207 == v69)
        {
          goto LABEL_43;
        }
      }

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
      __break(1u);
      goto LABEL_98;
    }

    v210 = MEMORY[0x1E69E7CC0];
LABEL_43:

    sub_1B1D0C93C(*v183, v183[1]);
    *v183 = v210;
    v108 = MEMORY[0x1E69E7CC0];
    v183[1] = MEMORY[0x1E69E7CC0];
    v52 = sub_1B1D0CAE4(0, 1, 1, v108);
    v0 = *(v52 + 2);
    v109 = *(v52 + 3);
    if (v0 >= v109 >> 1)
    {
      v52 = sub_1B1D0CAE4((v109 > 1), v0 + 1, 1, v52);
    }

    sub_1B1C91AE4(v186, v184);

    sub_1B1C91AE4(v188, v187);

    sub_1B1CDEFDC(v186, v184);
    v48[257] = v188;
    *(v48 + 129) = v187;
    v48[260] = v191;
    v48[261] = v197;
    *v177 = 0;
    v177[1] = 0;
    v48[264] = v186;
    v48[265] = v184;
    v48[266] = 1;
    v48[267] = v182;
    v48[268] = v190;
    *v178 = 0;
    v178[1] = 0;
    sub_1B1D0D67C((v48 + 257));
    sub_1B1CDEFDC(v188, v187);
    *(v52 + 2) = v0 + 1;
    memcpy(&v52[680 * v0 + 32], v48 + 257, 0x2A1uLL);
    *(v195 + v193) = v52;
    v49 = v196;
  }

  v110 = [v49 totpGenerators];
  sub_1B1D0C97C();
  v111 = sub_1B1D7BEEC();

  if (v111 >> 62)
  {
    if (sub_1B1D7C1FC())
    {
      goto LABEL_48;
    }

LABEL_64:

    goto LABEL_65;
  }

  if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_48:
  if ((v111 & 0xC000000000000001) != 0)
  {
    v112 = MEMORY[0x1B273B2E0](0, v111);
  }

  else
  {
    if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_93;
    }

    v112 = *(v111 + 32);
  }

  v113 = v112;

  v114 = [v113 algorithm];
  if (v114 == 2)
  {
    v0 = 2;
  }

  else
  {
    v0 = v114 == 1;
  }

  v115 = [v113 keyData];
  v116 = sub_1B1D7B4EC();
  v118 = v117;

  v119 = [v113 codeGenerationPeriod];
  if ((v119 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  v120 = v119;
  if (v119 >> 16)
  {
    goto LABEL_94;
  }

  v121 = [v113 numberOfDigitsInCode];
  if ((v121 & 0x8000000000000000) != 0)
  {
    goto LABEL_95;
  }

  v122 = v121;
  if (v121 >> 16)
  {
    goto LABEL_96;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v52 = sub_1B1D0CAE4(0, *(v52 + 2) + 1, 1, v52);
  }

  v124 = *(v52 + 2);
  v123 = *(v52 + 3);
  if (v124 >= v123 >> 1)
  {
    v52 = sub_1B1D0CAE4((v123 > 1), v124 + 1, 1, v52);
  }

  *(v211 + 2) = v116;
  *(v211 + 3) = v118;
  *(v211 + 16) = v120;
  *(v211 + 17) = v122;
  *(v211 + 5) = v191;
  *(v211 + 6) = v197;
  v211[56] = v0;
  *(v211 + 57) = *v179;
  *(v211 + 15) = *(v179 + 3);
  *(v211 + 8) = 0;
  *(v211 + 9) = 0;
  sub_1B1D0CC00((v211 + 16));
  *(v52 + 2) = v124 + 1;
  v125 = &v52[680 * v124];
  v48 = v211;
  memcpy(v125 + 32, v211 + 16, 0x2A1uLL);
  *(v195 + v193) = v52;
LABEL_65:
  v126 = [v49 notesEntry];
  if (v126)
  {
    v127 = v126;
    v128 = sub_1B1D7BE4C();
    v130 = v129;

    sub_1B1C91AE4(0, 0xF000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1B1D0CAE4(0, *(v52 + 2) + 1, 1, v52);
    }

    v132 = *(v52 + 2);
    v131 = *(v52 + 3);
    v48 = v211;
    if (v132 >= v131 >> 1)
    {
      v52 = sub_1B1D0CAE4((v131 > 1), v132 + 1, 1, v52);
    }

    *(v211 + 86) = xmmword_1B1D857B0;
    v211[1392] = 0;
    *(v211 + 175) = v128;
    *(v211 + 176) = v130;
    *v180 = 0;
    v180[1] = 0;
    sub_1B1D0D624((v211 + 1376));
    *(v52 + 2) = v132 + 1;
    memcpy(&v52[680 * v132 + 32], v211 + 1376, 0x2A1uLL);
    *(v195 + v193) = v52;
  }

  v48[388] = v52;
  v133 = v48[355];
  v134 = v48[354];
  v135 = v48[353];
  sub_1B1D7C05C();
  if ((*(v133 + 48))(v135, 1, v134) == 1)
  {
    v136 = v48[353];

    sub_1B1CDEC18(v136, &qword_1EB775218, &qword_1B1D871F0);
LABEL_77:
    sub_1B1D0CC0C(v48[369], v48[368]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = v48[383];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v151 = sub_1B1D0CD88(0, v151[2] + 1, 1, v48[383], &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v153 = v151[2];
    v152 = v151[3];
    if (v153 >= v152 >> 1)
    {
      v151 = sub_1B1D0CD88((v152 > 1), v153 + 1, 1, v151, &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v154 = v48[384];
    v155 = v48[377];
    v156 = *(v211 + 375);
    v157 = *(v211 + 372);
    v158 = *(v211 + 371);
    v208 = *(v211 + 369);
    v159 = *(v211 + 368);
    v160 = *(v211 + 367);

    v161 = *(v157 + 8);
    v0 = v211;
    v161(v156, v158);
    v161(v155, v158);
    v3 = v151;
    v151[2] = v153 + 1;
    sub_1B1D0CC70(v159, v151 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v153);
    sub_1B1D0CCD4(v208);
    goto LABEL_6;
  }

  v137 = v48[351];
  v138 = v48[350];
  v139 = v48[349];
  (*(v48[355] + 32))(v48[356], v48[353], v48[354]);
  sub_1B1D7C0AC();
  v140 = (*(v137 + 48))(v139, 1, v138);
  v141 = v48[349];
  if (v140 == 1)
  {
    (*(v48[355] + 8))(v48[356], v48[354]);

    sub_1B1CDEC18(v141, &qword_1EB775210, &qword_1B1D871E8);
    goto LABEL_77;
  }

  (*(v48[351] + 32))(v48[352], v48[349], v48[350]);
  v142 = [v49 passkeyUserHandle];
  v143 = v48[356];
  if (!v142)
  {
    v144 = v48[355];
    v145 = v48[354];
    v146 = v48[352];
    v147 = v48[351];
    v148 = *(v211 + 350);

    v149 = v148;
    v48 = v211;
    (*(v147 + 8))(v146, v149);
    (*(v144 + 8))(v143, v145);
    goto LABEL_77;
  }

  v163 = v142;
  v164 = sub_1B1D7BE4C();
  v166 = v165;

  *(v211 + 389) = v164;
  *(v211 + 390) = v166;
  sub_1B1D7C03C();
  v167 = sub_1B1D7B4CC();
  v169 = v168;

  *(v211 + 391) = v167;
  *(v211 + 392) = v169;
  if (v169 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v211 + 393) = [*(v211 + 348) passkeyStore];
    sub_1B1D7B59C();
    sub_1B1D0CD30();
    v173 = sub_1B1D7BF0C();
    v175 = v174;
    v170 = sub_1B1D09590;
    v171 = v173;
    v172 = v175;
  }

  return MEMORY[0x1EEE6DFA0](v170, v171, v172);
}

uint64_t sub_1B1D09590()
{
  v1 = v0[382];
  v2 = sub_1B1D7B58C();
  v0[394] = v1;
  v0[395] = v2;
  v0[396] = v3;
  if (v1)
  {
    v4 = sub_1B1D0ADB4;
  }

  else
  {

    v4 = sub_1B1D09634;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B1D09634()
{
  v242 = v0;
  v1 = *(v0 + 3168);
  sub_1B1C91AE4(*(v0 + 3128), *(v0 + 3136));
  if (v1 >> 60 != 15)
  {
    sub_1B1D7C03C();
    v8 = sub_1B1D7B4CC();
    v10 = v9;

    if (v10 >> 60 == 15)
    {
      v11 = *(v0 + 3168);
      v12 = *(v0 + 3160);
      v13 = *(v0 + 2848);
      v14 = *(v0 + 2840);
      v15 = *(v0 + 2832);
      v16 = *(v0 + 2816);
      v17 = *(v0 + 2808);
      v18 = *(v0 + 2800);

      sub_1B1C91AE4(v12, v11);

      (*(v17 + 8))(v16, v18);
      (*(v14 + 8))(v13, v15);
    }

    else
    {
      v19 = sub_1B1D7B4CC();
      v21 = v20;

      v22 = *(v0 + 3168);
      v23 = *(v0 + 3160);
      if (v21 >> 60 != 15)
      {
        sub_1B1CE111C(v8, v10);
        v28 = sub_1B1D7C03C();
        v234 = v29;
        v236 = v28;

        sub_1B1C91B94(v19, v21);
        sub_1B1C91B94(v23, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v0 + 3104);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_8;
        }

        goto LABEL_108;
      }

      v24 = *(v0 + 2840);
      v235 = *(v0 + 2832);
      v237 = *(v0 + 2848);
      v25 = *(v0 + 2816);
      v26 = *(v0 + 2808);
      v27 = *(v0 + 2800);
      sub_1B1C91AE4(v23, v22);
      sub_1B1C91AE4(v8, v10);

      (*(v26 + 8))(v25, v27);
      (*(v24 + 8))(v237, v235);
    }

    goto LABEL_11;
  }

  v216 = *(v0 + 3152);
  v2 = *(v0 + 2848);
  v3 = *(v0 + 2840);
  v4 = *(v0 + 2832);
  v5 = *(v0 + 2816);
  v6 = *(v0 + 2808);
  v7 = *(v0 + 2800);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  while (1)
  {
    v203 = (v0 + 2768);
LABEL_13:
    sub_1B1D0CC0C(*(v0 + 2952), *(v0 + 2944));
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v0 + 3064);
    if ((v42 & 1) == 0)
    {
      v43 = sub_1B1D0CD88(0, v43[2] + 1, 1, *(v0 + 3064), &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v45 = v43[2];
    v44 = v43[3];
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1B1D0CD88((v44 > 1), v45 + 1, 1, v43, &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v46 = *(v0 + 3016);
    v47 = *(v0 + 3000);
    v48 = *(v0 + 2976);
    v21 = *(v0 + 2968);
    v236 = *(v0 + 2952);
    v49 = *(v0 + 2944);
    v50 = *(v0 + 2936);

    v51 = *(v48 + 8);
    v51(v47, v21);
    v51(v46, v21);
    v43[2] = v45 + 1;
    sub_1B1D0CC70(v49, v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45);
    sub_1B1D0CCD4(v236);
    v10 = *(v0 + 3080);
    v8 = v216;
    v19 = &selRef_stringWithFormat_;
    if (v10 == *(v0 + 3048))
    {
LABEL_93:

      v184 = *(v0 + 8);

      __asm { BRAA            X2, X16 }
    }

    while (1)
    {
      *(v0 + 3064) = v43;
      *(v0 + 3056) = v216;
      v52 = *(v0 + 2776);
      if ((v52 & 0xC000000000000001) != 0)
      {
        v53 = MEMORY[0x1B273B2E0](v10);
      }

      else
      {
        if (v10 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        v53 = *(v52 + 8 * v10 + 32);
      }

      v54 = v53;
      *(v0 + 3072) = v53;
      *(v0 + 3080) = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_97;
      }

      v55 = [v53 user];
      if (v55)
      {
        break;
      }

      v10 = *(v0 + 3080);
      if (v10 == *(v0 + 3048))
      {
        goto LABEL_93;
      }
    }

    v56 = *(v0 + 3040);
    v57 = *(v0 + 3032);
    v58 = *(v0 + 3024);
    v59 = v55;
    v60 = sub_1B1D7BE4C();
    v62 = v61;

    v212 = v60;
    *(v0 + 3088) = v60;
    v222 = v62;
    *(v0 + 3096) = v62;
    sub_1B1D7B56C();
    v63 = sub_1B1D7B54C();
    v65 = v64;
    v66 = *(v57 + 8);
    v66(v56, v58);
    v67 = [v54 lastModifiedDate];
    v68 = *(v0 + 3016);
    v236 = v65;
    v239 = v63;
    if (v67)
    {
      v69 = *(v0 + 3008);
      v70 = *(v0 + 2976);
      v71 = *(v0 + 2968);
      v72 = *(v0 + 2960);
      v73 = v67;
      sub_1B1D7B51C();

      v74 = *(v70 + 32);
      v74(v72, v69, v71);
      v234 = *(v70 + 56);
      v234(v72, 0, 1, v71);
      v74(v68, v72, v71);
    }

    else
    {
      v75 = *(v0 + 2976);
      v76 = *(v0 + 2968);
      v77 = *(v0 + 2960);
      v234 = *(v75 + 56);
      v234(v77, 1, 1, v76);
      sub_1B1D7B52C();
      if ((*(v75 + 48))(v77, 1, v76) != 1)
      {
        sub_1B1CDEC18(*(v0 + 2960), &qword_1EB775228, &qword_1B1D88D60);
      }
    }

    v220 = v54;
    v78 = [v54 creationDate];
    v79 = *(v0 + 2976);
    v80 = *(v0 + 2968);
    v204 = v66;
    if (v78)
    {
      v81 = *(v0 + 3000);
      v82 = *(v0 + 2992);
      v83 = v78;
      sub_1B1D7B51C();

      (*(v79 + 32))(v81, v82, v80);
      v84 = *(v79 + 16);
    }

    else
    {
      v84 = *(v79 + 16);
      (v84)(*(v0 + 3000), *(v0 + 3016), v80);
    }

    v85 = *(v0 + 3016);
    v224 = *(v0 + 3008);
    v86 = *(v0 + 2984);
    v214 = *(v0 + 2976);
    v87 = *(v0 + 2968);
    v8 = *(v0 + 2952);
    v88 = *(v0 + 2928);
    v84();
    (v84)(v86, v85, v87);
    v89 = [v220 effectiveTitle];
    v90 = sub_1B1D7BE4C();
    v227 = v91;
    v230 = v90;

    v92 = v88[5];
    v234(v8 + v92, 1, 1, v87);
    v93 = v88[6];
    v234(v8 + v93, 1, 1, v87);
    v208 = (v8 + v88[8]);
    v210 = v88[9];
    v94 = (v8 + v88[10]);
    *v94 = 0;
    v94[1] = 0;
    *v8 = v239;
    *(v8 + 8) = v236;
    sub_1B1CDEC18(v8 + v92, &qword_1EB775228, &qword_1B1D88D60);
    v95 = *(v214 + 32);
    v95(v8 + v92, v224, v87);
    v234(v8 + v92, 0, 1, v87);
    sub_1B1CDEC18(v8 + v93, &qword_1EB775228, &qword_1B1D88D60);
    v95(v8 + v93, v86, v87);
    v96 = v220;
    v234(v8 + v93, 0, 1, v87);
    v97 = (v8 + v88[7]);
    *v97 = v230;
    v97[1] = v227;
    *v208 = 0;
    v208[1] = 0;
    *(v8 + v210) = 0;
    sub_1B1D0C93C(*v94, v94[1]);
    *v94 = 0;
    v94[1] = 0;
    v202 = v94;
    v98 = v88[12];
    *(v0 + 1372) = v98;
    v21 = MEMORY[0x1E69E7CC0];
    *(v8 + v98) = MEMORY[0x1E69E7CC0];
    v215 = v8;
    *(v8 + v88[11]) = v21;
    v99 = [v220 password];
    v211 = v98;
    if (v99)
    {
      v100 = *(v0 + 3040);
      v101 = *(v0 + 3024);
      v102 = v99;
      v199 = sub_1B1D7BE4C();
      v209 = v103;

      sub_1B1D7B56C();
      v104 = sub_1B1D7B54C();
      v106 = v105;
      v204(v100, v101);
      sub_1B1D7B56C();
      v107 = sub_1B1D7B54C();
      v109 = v108;
      v204(v100, v101);

      v207 = v106;
      sub_1B1CE111C(v104, v106);
      sub_1B1C91AE4(0, 0xF000000000000000);
      v205 = v109;
      v206 = v107;
      sub_1B1CE111C(v107, v109);
      sub_1B1C91AE4(0, 0xF000000000000000);
      v110 = [v220 userVisibleSites];
      if (v110)
      {
        v111 = v110;
        v19 = MEMORY[0x1E69E6158];
        v112 = sub_1B1D7BEEC();

        v21 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
        v112 = MEMORY[0x1E69E7CC0];
        v19 = MEMORY[0x1E69E6158];
      }

      *v203 = v112;
      v114 = [v220 additionalSites];
      v10 = sub_1B1D7BEEC();

      sub_1B1D0C45C(v10);
      v201 = v104;
      sub_1B1C91B94(v104, v207);

      sub_1B1C91B94(v206, v205);

      sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
      sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
      v115 = *v203;
      v236 = *(*v203 + 16);
      if (v236)
      {
        v8 = 0;
        v116 = (v115 + 40);
        v240 = v21;
        v231 = *v203;
        while (v8 < *(v115 + 16))
        {
          v117 = *(v0 + 2904);
          v118 = *(v0 + 2896);
          v119 = *(v0 + 2880);
          v120 = *(v116 - 1);
          v21 = *v116;
          sub_1B1D7B32C();
          sub_1B1D7B31C();

          MEMORY[0x1B273A360](v120, v21);
          sub_1B1D7B2FC();
          v121 = v119;
          v122 = *(v117 + 48);
          if ((v122)(v121, 1, v118) == 1)
          {
            v228 = v120;
            v234 = v122;
            sub_1B1CDEC18(*(v0 + 2880), &qword_1EB775220, &unk_1B1D86850);
            if (qword_1EB7749B8 != -1)
            {
              swift_once();
            }

            v123 = sub_1B1D7BD8C();
            __swift_project_value_buffer(v123, qword_1EB782530);

            v124 = sub_1B1D7BD6C();
            v125 = sub_1B1D7C00C();

            v126 = os_log_type_enabled(v124, v125);
            v127 = *(v0 + 2872);
            v128 = *(v0 + 2864);
            v233 = *(v0 + 2856);
            if (v126)
            {
              v129 = swift_slowAlloc();
              v225 = v127;
              v130 = swift_slowAlloc();
              v241[0] = v130;
              *v129 = 136315138;
              *(v129 + 4) = sub_1B1D0D070(v228, v21, v241);
              _os_log_impl(&dword_1B1C8D000, v124, v125, "Could not create URL from %s", v129, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v130);
              MEMORY[0x1B273C4C0](v130, -1, -1);
              v131 = v129;
              v115 = v231;
              MEMORY[0x1B273C4C0](v131, -1, -1);

              v132 = *(v128 + 8);
              v19 = v128 + 8;
              v132(v225, v233);
            }

            else
            {

              v138 = *(v128 + 8);
              v19 = v128 + 8;
              v138(v127, v233);
            }

            v137 = 1;
            v122 = v234;
          }

          else
          {
            v133 = *(v0 + 2904);
            v134 = *(v0 + 2896);
            v135 = *(v0 + 2888);
            v19 = *(v0 + 2880);
            (*(*(v0 + 2864) + 8))(*(v0 + 2872), *(v0 + 2856));
            v136 = *(v133 + 32);
            v21 = v133 + 32;
            v136(v135, v19, v134);
            v137 = 0;
          }

          v139 = *(v0 + 2896);
          v10 = *(v0 + 2888);
          (*(*(v0 + 2904) + 56))(v10, v137, 1, v139);
          if ((v122)(v10, 1, v139) == 1)
          {
            sub_1B1CDEC18(*(v0 + 2888), &qword_1EB775220, &unk_1B1D86850);
          }

          else
          {
            v140 = *(v0 + 2920);
            v141 = *(v0 + 2912);
            v142 = *(v0 + 2904);
            v19 = *(v0 + 2896);
            v144 = *(v142 + 32);
            v21 = v142 + 32;
            v143 = v144;
            v144(v140, *(v0 + 2888), v19);
            v144(v141, v140, v19);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v240 = sub_1B1D0CD88(0, *(v240 + 2) + 1, 1, v240, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
            }

            v10 = *(v240 + 2);
            v145 = *(v240 + 3);
            if (v10 >= v145 >> 1)
            {
              v240 = sub_1B1D0CD88((v145 > 1), v10 + 1, 1, v240, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
            }

            v146 = *(v0 + 2912);
            v147 = *(v0 + 2904);
            v148 = *(v0 + 2896);
            *(v240 + 2) = v10 + 1;
            v143(&v240[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v10], v146, v148);
            v115 = v231;
          }

          ++v8;
          v116 += 2;
          if (v236 == v8)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v240 = v21;
LABEL_58:

      sub_1B1D0C93C(*v202, v202[1]);
      *v202 = v240;
      v149 = MEMORY[0x1E69E7CC0];
      v202[1] = MEMORY[0x1E69E7CC0];
      v113 = sub_1B1D0CAE4(0, 1, 1, v149);
      v151 = *(v113 + 2);
      v150 = *(v113 + 3);
      if (v151 >= v150 >> 1)
      {
        v113 = sub_1B1D0CAE4((v150 > 1), v151 + 1, 1, v113);
      }

      v21 = v209;
      sub_1B1C91AE4(v206, v205);

      sub_1B1C91AE4(v201, v207);
      v8 = v222;

      sub_1B1CDEFDC(v206, v205);
      *(v0 + 2056) = v201;
      *(v0 + 2064) = v207;
      *(v0 + 2072) = 0;
      *(v0 + 2080) = v212;
      *(v0 + 2088) = v222;
      *(v0 + 2096) = 0;
      *(v0 + 2104) = 0;
      *(v0 + 2112) = v206;
      *(v0 + 2120) = v205;
      *(v0 + 2128) = 1;
      *(v0 + 2136) = v200;
      *(v0 + 2144) = v209;
      *(v0 + 2152) = 0;
      *(v0 + 2160) = 0;
      sub_1B1D0D67C(v0 + 2056);
      sub_1B1CDEFDC(v201, v207);
      *(v113 + 2) = v151 + 1;
      memcpy(&v113[680 * v151 + 32], (v0 + 2056), 0x2A1uLL);
      *(v215 + v211) = v113;
      v98 = v211;
      v96 = v220;
    }

    else
    {
      v113 = v21;
    }

    v10 = [v96 totpGenerators];
    sub_1B1D0C97C();
    v19 = sub_1B1D7BEEC();

    if (v19 >> 62)
    {
      if (!sub_1B1D7C1FC())
      {
LABEL_79:

        goto LABEL_80;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_79;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v152 = MEMORY[0x1B273B2E0](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v152 = *(v19 + 32);
    }

    v10 = v152;

    v153 = [v10 algorithm];
    if (v153 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v153 == 1;
    }

    v154 = [v10 keyData];
    v19 = sub_1B1D7B4EC();
    v21 = v155;

    v156 = [v10 codeGenerationPeriod];
    if ((v156 & 0x8000000000000000) != 0)
    {
      goto LABEL_103;
    }

    v157 = v156;
    if (v156 >> 16)
    {
      goto LABEL_105;
    }

    v158 = [v10 numberOfDigitsInCode];
    if ((v158 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    v31 = sub_1B1D0CAE4(0, *(v31 + 2) + 1, 1, v31);
LABEL_8:
    v32 = v21;
    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    v229 = v34 + 1;
    v232 = v34;
    if (v34 >= v33 >> 1)
    {
      v35 = v19;
      v36 = v8;
      v238 = sub_1B1D0CAE4((v33 > 1), v34 + 1, 1, v31);
    }

    else
    {
      v238 = v31;
      v35 = v19;
      v36 = v8;
    }

    v213 = *(v0 + 3168);
    v37 = *(v0 + 3160);
    v38 = *(v0 + 3096);
    v39 = *(v0 + 3088);
    v223 = *(v0 + 2952);
    v226 = *(v0 + 1372);
    v221 = *(v0 + 2848);
    v40 = *(v0 + 2840);
    v219 = *(v0 + 2832);
    v41 = *(v0 + 2808);
    v217 = *(v0 + 2800);
    v218 = *(v0 + 2816);
    sub_1B1C91AE4(v37, v213);
    sub_1B1C91AE4(v35, v32);
    sub_1B1C91AE4(v36, v10);
    *(v0 + 696) = v36;
    *(v0 + 704) = v10;
    *(v0 + 712) = v236;
    *(v0 + 720) = v234;
    *(v0 + 728) = v39;
    *(v0 + 736) = v38;
    *(v0 + 744) = v39;
    *(v0 + 752) = v38;
    *(v0 + 760) = v35;
    *(v0 + 768) = v32;
    *(v0 + 776) = v37;
    *(v0 + 784) = v213;
    sub_1B1D0D618(v0 + 696);
    (*(v41 + 8))(v218, v217);
    (*(v40 + 8))(v221, v219);
    *(v238 + 2) = v229;
    memcpy(&v238[680 * v232 + 32], (v0 + 696), 0x2A1uLL);
    *(v223 + v226) = v238;
LABEL_11:
    v216 = *(v0 + 3152);
  }

  v159 = v158;
  if (v158 >> 16)
  {
    goto LABEL_107;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v113 = sub_1B1D0CAE4(0, *(v113 + 2) + 1, 1, v113);
  }

  v161 = *(v113 + 2);
  v160 = *(v113 + 3);
  if (v161 >= v160 >> 1)
  {
    v113 = sub_1B1D0CAE4((v160 > 1), v161 + 1, 1, v113);
  }

  *(v0 + 16) = v19;
  *(v0 + 24) = v21;
  *(v0 + 32) = v157;
  *(v0 + 34) = v159;
  *(v0 + 40) = v212;
  *(v0 + 48) = v222;
  *(v0 + 56) = v8;
  *(v0 + 57) = *(v0 + 689);
  *(v0 + 60) = *(v0 + 692);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_1B1D0CC00(v0 + 16);
  *(v113 + 2) = v161 + 1;
  memcpy(&v113[680 * v161 + 32], (v0 + 16), 0x2A1uLL);
  v98 = v211;
  *(v215 + v211) = v113;
  v96 = v220;
LABEL_80:
  v162 = [v96 notesEntry];
  if (v162)
  {
    v163 = v162;
    v164 = sub_1B1D7BE4C();
    v166 = v165;

    sub_1B1C91AE4(0, 0xF000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_1B1D0CAE4(0, *(v113 + 2) + 1, 1, v113);
    }

    v168 = *(v113 + 2);
    v167 = *(v113 + 3);
    if (v168 >= v167 >> 1)
    {
      v113 = sub_1B1D0CAE4((v167 > 1), v168 + 1, 1, v113);
    }

    *(v0 + 1376) = xmmword_1B1D857B0;
    *(v0 + 1392) = 0;
    *(v0 + 1400) = v164;
    *(v0 + 1408) = v166;
    *(v0 + 1416) = 0;
    *(v0 + 1424) = 0;
    sub_1B1D0D624(v0 + 1376);
    *(v113 + 2) = v168 + 1;
    memcpy(&v113[680 * v168 + 32], (v0 + 1376), 0x2A1uLL);
    *(v215 + v98) = v113;
  }

  *(v0 + 3104) = v113;
  v169 = *(v0 + 2840);
  v170 = *(v0 + 2832);
  v171 = *(v0 + 2824);
  sub_1B1D7C05C();
  if ((*(v169 + 48))(v171, 1, v170) == 1)
  {
    v172 = *(v0 + 2824);

    sub_1B1CDEC18(v172, &qword_1EB775218, &qword_1B1D871F0);
    goto LABEL_13;
  }

  v173 = *(v0 + 2808);
  v174 = *(v0 + 2800);
  v175 = *(v0 + 2792);
  (*(*(v0 + 2840) + 32))(*(v0 + 2848), *(v0 + 2824), *(v0 + 2832));
  sub_1B1D7C0AC();
  v176 = (*(v173 + 48))(v175, 1, v174);
  v177 = *(v0 + 2792);
  if (v176 == 1)
  {
    (*(*(v0 + 2840) + 8))(*(v0 + 2848), *(v0 + 2832));

    sub_1B1CDEC18(v177, &qword_1EB775210, &qword_1B1D871E8);
    goto LABEL_13;
  }

  (*(*(v0 + 2808) + 32))(*(v0 + 2816), *(v0 + 2792), *(v0 + 2800));
  v53 = [v96 passkeyUserHandle];
  v178 = *(v0 + 2848);
  if (!v53)
  {
    v179 = *(v0 + 2840);
    v180 = *(v0 + 2832);
    v181 = *(v0 + 2816);
    v182 = *(v0 + 2808);
    v183 = *(v0 + 2800);

    (*(v182 + 8))(v181, v183);
    (*(v179 + 8))(v178, v180);
    goto LABEL_13;
  }

LABEL_97:
  v185 = v53;
  v186 = sub_1B1D7BE4C();
  v188 = v187;

  *(v0 + 3112) = v186;
  *(v0 + 3120) = v188;
  sub_1B1D7C03C();
  v189 = sub_1B1D7B4CC();
  v191 = v190;

  *(v0 + 3128) = v189;
  *(v0 + 3136) = v191;
  if (v191 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 3144) = [*(v0 + 2784) passkeyStore];
    sub_1B1D7B59C();
    sub_1B1D0CD30();
    v195 = sub_1B1D7BF0C();
    v197 = v196;
    v192 = sub_1B1D09590;
    v193 = v195;
    v194 = v197;
  }

  return MEMORY[0x1EEE6DFA0](v192, v193, v194);
}

uint64_t sub_1B1D0ADB4()
{
  v219 = v0;
  v1 = *(v0 + 3136);
  v2 = *(v0 + 3128);

  sub_1B1C91AE4(v2, v1);
  if (qword_1EB7749B8 != -1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v3 = *(v0 + 3152);
    v205 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v205, qword_1EB782530);
    v4 = v3;
    v5 = sub_1B1D7BD6C();
    v6 = sub_1B1D7C00C();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 3152);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v218[0] = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_1B1D7C56C();
      v13 = sub_1B1D0D070(v11, v12, v218);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1B1C8D000, v5, v6, "Failed to export passkey private key: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B273C4C0](v10, -1, -1);
      MEMORY[0x1B273C4C0](v9, -1, -1);
    }

    else
    {
    }

    v188 = (v0 + 2768);
    v14 = *(v0 + 2848);
    v15 = *(v0 + 2840);
    v16 = *(v0 + 2832);
    v17 = *(v0 + 2816);
    v18 = *(v0 + 2808);
    v19 = *(v0 + 2800);

    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v14, v16);
LABEL_6:
    sub_1B1D0CC0C(*(v0 + 2952), *(v0 + 2944));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v0 + 3064);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1B1D0CD88(0, v21[2] + 1, 1, *(v0 + 3064), &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1B1D0CD88((v22 > 1), v23 + 1, 1, v21, &qword_1EB775260, &qword_1B1D87218, type metadata accessor for ASImportableItem);
    }

    v24 = *(v0 + 3016);
    v25 = *(v0 + 3000);
    v26 = *(v0 + 2976);
    v27 = *(v0 + 2968);
    v213 = *(v0 + 2952);
    v28 = *(v0 + 2944);
    v29 = *(v0 + 2936);

    v30 = *(v26 + 8);
    v30(v25, v27);
    v30(v24, v27);
    v21[2] = v23 + 1;
    sub_1B1D0CC70(v28, v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23);
    sub_1B1D0CCD4(v213);
    v31 = *(v0 + 3080);
    if (v31 == *(v0 + 3048))
    {
LABEL_85:

      v174 = *(v0 + 8);

      __asm { BRAA            X2, X16 }
    }

    while (1)
    {
      *(v0 + 3064) = v21;
      *(v0 + 3056) = 0;
      v32 = *(v0 + 2776);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1B273B2E0](v31);
      }

      else
      {
        if (v31 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_94;
        }

        v33 = *(v32 + 8 * v31 + 32);
      }

      v34 = v33;
      *(v0 + 3072) = v33;
      *(v0 + 3080) = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_89;
      }

      v35 = [v33 user];
      if (v35)
      {
        break;
      }

      v31 = *(v0 + 3080);
      if (v31 == *(v0 + 3048))
      {
        goto LABEL_85;
      }
    }

    v36 = *(v0 + 3040);
    v37 = *(v0 + 3032);
    v38 = *(v0 + 3024);
    v39 = v35;
    v40 = sub_1B1D7BE4C();
    v42 = v41;

    v198 = v40;
    *(v0 + 3088) = v40;
    v202 = v42;
    *(v0 + 3096) = v42;
    sub_1B1D7B56C();
    v43 = sub_1B1D7B54C();
    v45 = v44;
    v46 = *(v37 + 8);
    v46(v36, v38);
    v47 = [v34 lastModifiedDate];
    v48 = *(v0 + 3016);
    v214 = v45;
    v216 = v43;
    if (v47)
    {
      v49 = *(v0 + 3008);
      v50 = *(v0 + 2976);
      v51 = *(v0 + 2968);
      v52 = *(v0 + 2960);
      v53 = v47;
      sub_1B1D7B51C();

      v54 = *(v50 + 32);
      v54(v52, v49, v51);
      v211 = *(v50 + 56);
      v211(v52, 0, 1, v51);
      v54(v48, v52, v51);
    }

    else
    {
      v55 = *(v0 + 2976);
      v56 = *(v0 + 2968);
      v57 = *(v0 + 2960);
      v211 = *(v55 + 56);
      v211(v57, 1, 1, v56);
      sub_1B1D7B52C();
      if ((*(v55 + 48))(v57, 1, v56) != 1)
      {
        sub_1B1CDEC18(*(v0 + 2960), &qword_1EB775228, &qword_1B1D88D60);
      }
    }

    v201 = v34;
    v58 = [v34 creationDate];
    v59 = *(v0 + 2976);
    v60 = *(v0 + 2968);
    v190 = v46;
    if (v58)
    {
      v61 = *(v0 + 3000);
      v62 = *(v0 + 2992);
      v63 = v58;
      sub_1B1D7B51C();

      (*(v59 + 32))(v61, v62, v60);
      v64 = *(v59 + 16);
    }

    else
    {
      v64 = *(v59 + 16);
      (v64)(*(v0 + 3000), *(v0 + 3016), v60);
    }

    v65 = *(v0 + 3016);
    v203 = *(v0 + 3008);
    v66 = *(v0 + 2984);
    v199 = *(v0 + 2976);
    v67 = *(v0 + 2968);
    v68 = *(v0 + 2952);
    v69 = *(v0 + 2928);
    v64();
    (v64)(v66, v65, v67);
    v70 = [v201 effectiveTitle];
    v71 = sub_1B1D7BE4C();
    v206 = v72;
    v208 = v71;

    v73 = v69[5];
    v211(v68 + v73, 1, 1, v67);
    v74 = v69[6];
    v211(v68 + v74, 1, 1, v67);
    v194 = (v68 + v69[8]);
    v196 = v69[9];
    v75 = (v68 + v69[10]);
    *v75 = 0;
    v75[1] = 0;
    *v68 = v216;
    v68[1] = v214;
    sub_1B1CDEC18(v68 + v73, &qword_1EB775228, &qword_1B1D88D60);
    v76 = *(v199 + 32);
    v76(v68 + v73, v203, v67);
    v211(v68 + v73, 0, 1, v67);
    sub_1B1CDEC18(v68 + v74, &qword_1EB775228, &qword_1B1D88D60);
    v76(v68 + v74, v66, v67);
    v77 = v201;
    v211(v68 + v74, 0, 1, v67);
    v78 = (v68 + v69[7]);
    *v78 = v208;
    v78[1] = v206;
    *v194 = 0;
    v194[1] = 0;
    *(v68 + v196) = 0;
    sub_1B1D0C93C(*v75, v75[1]);
    *v75 = 0;
    v75[1] = 0;
    v187 = v75;
    v79 = v69[12];
    *(v0 + 1372) = v79;
    v80 = MEMORY[0x1E69E7CC0];
    *(v68 + v79) = MEMORY[0x1E69E7CC0];
    v200 = v68;
    *(v68 + v69[11]) = v80;
    v81 = [v201 password];
    v197 = v79;
    if (!v81)
    {
      v96 = v80;
      goto LABEL_53;
    }

    v82 = *(v0 + 3040);
    v83 = *(v0 + 3024);
    v84 = v81;
    v186 = sub_1B1D7BE4C();
    v195 = v85;

    sub_1B1D7B56C();
    v86 = sub_1B1D7B54C();
    v88 = v87;
    v190(v82, v83);
    sub_1B1D7B56C();
    v89 = sub_1B1D7B54C();
    v91 = v90;
    v190(v82, v83);

    v192 = v88;
    v193 = v86;
    sub_1B1CE111C(v86, v88);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v189 = v91;
    v191 = v89;
    sub_1B1CE111C(v89, v91);
    sub_1B1C91AE4(0, 0xF000000000000000);
    v92 = [v201 userVisibleSites];
    if (v92)
    {
      v93 = v92;
      v94 = sub_1B1D7BEEC();

      v95 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v95 = MEMORY[0x1E69E7CC0];
      v94 = MEMORY[0x1E69E7CC0];
    }

    *v188 = v94;
    v97 = [v201 additionalSites];
    v98 = sub_1B1D7BEEC();

    sub_1B1D0C45C(v98);
    sub_1B1C91B94(v193, v88);

    sub_1B1C91B94(v89, v91);

    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    sub_1B1D0D630(0, 0, 0, 0, 0, 0, 0);
    v99 = *v188;
    v212 = *(*v188 + 16);
    if (!v212)
    {
      break;
    }

    v100 = 0;
    v101 = (v99 + 40);
    v217 = v95;
    v210 = *v188;
    while (v100 < *(v99 + 16))
    {
      v102 = *(v0 + 2904);
      v103 = *(v0 + 2896);
      v104 = *(v0 + 2880);
      v105 = *(v101 - 1);
      v106 = *v101;
      sub_1B1D7B32C();
      sub_1B1D7B31C();

      v215 = v105;
      MEMORY[0x1B273A360](v105, v106);
      sub_1B1D7B2FC();
      v107 = *(v102 + 48);
      if (v107(v104, 1, v103) == 1)
      {
        sub_1B1CDEC18(*(v0 + 2880), &qword_1EB775220, &unk_1B1D86850);
        if (qword_1EB7749B8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v205, qword_1EB782530);

        v108 = sub_1B1D7BD6C();
        v109 = sub_1B1D7C00C();

        v110 = os_log_type_enabled(v108, v109);
        v111 = *(v0 + 2864);
        v207 = *(v0 + 2856);
        v209 = *(v0 + 2872);
        if (v110)
        {
          v112 = swift_slowAlloc();
          v204 = v107;
          v113 = swift_slowAlloc();
          v218[0] = v113;
          *v112 = 136315138;
          *(v112 + 4) = sub_1B1D0D070(v215, v106, v218);
          _os_log_impl(&dword_1B1C8D000, v108, v109, "Could not create URL from %s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          v114 = v113;
          v107 = v204;
          MEMORY[0x1B273C4C0](v114, -1, -1);
          MEMORY[0x1B273C4C0](v112, -1, -1);
        }

        (*(v111 + 8))(v209, v207);
        v115 = 1;
      }

      else
      {
        v116 = v107;
        v117 = *(v0 + 2904);
        v118 = *(v0 + 2896);
        v119 = *(v0 + 2888);
        v120 = *(v0 + 2880);
        (*(*(v0 + 2864) + 8))(*(v0 + 2872), *(v0 + 2856));
        (*(v117 + 32))(v119, v120, v118);
        v107 = v116;
        v115 = 0;
      }

      v121 = *(v0 + 2896);
      v122 = *(v0 + 2888);
      (*(*(v0 + 2904) + 56))(v122, v115, 1, v121);
      if (v107(v122, 1, v121) == 1)
      {
        sub_1B1CDEC18(*(v0 + 2888), &qword_1EB775220, &unk_1B1D86850);
        v99 = v210;
      }

      else
      {
        v123 = *(v0 + 2920);
        v124 = *(v0 + 2912);
        v125 = *(v0 + 2896);
        v126 = *(*(v0 + 2904) + 32);
        v126(v123, *(v0 + 2888), v125);
        v126(v124, v123, v125);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v217 = sub_1B1D0CD88(0, v217[2] + 1, 1, v217, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
        }

        v128 = v217[2];
        v127 = v217[3];
        v99 = v210;
        if (v128 >= v127 >> 1)
        {
          v217 = sub_1B1D0CD88((v127 > 1), v128 + 1, 1, v217, &qword_1EB775250, &qword_1B1D87208, MEMORY[0x1E6968FB0]);
        }

        v129 = *(v0 + 2912);
        v130 = *(v0 + 2904);
        v131 = *(v0 + 2896);
        v217[2] = v128 + 1;
        v126(v217 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v128, v129, v131);
      }

      ++v100;
      v101 += 2;
      if (v212 == v100)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
  }

  v217 = v95;
LABEL_50:

  sub_1B1D0C93C(*v187, v187[1]);
  *v187 = v217;
  v132 = MEMORY[0x1E69E7CC0];
  v187[1] = MEMORY[0x1E69E7CC0];
  v96 = sub_1B1D0CAE4(0, 1, 1, v132);
  v134 = *(v96 + 2);
  v133 = *(v96 + 3);
  if (v134 >= v133 >> 1)
  {
    v96 = sub_1B1D0CAE4((v133 > 1), v134 + 1, 1, v96);
  }

  v79 = v197;
  sub_1B1C91AE4(v191, v189);

  sub_1B1C91AE4(v193, v192);

  sub_1B1CDEFDC(v191, v189);
  *(v0 + 2056) = v193;
  *(v0 + 2064) = v192;
  *(v0 + 2072) = 0;
  *(v0 + 2080) = v198;
  *(v0 + 2088) = v202;
  *(v0 + 2096) = 0;
  *(v0 + 2104) = 0;
  *(v0 + 2112) = v191;
  *(v0 + 2120) = v189;
  *(v0 + 2128) = 1;
  *(v0 + 2136) = v186;
  *(v0 + 2144) = v195;
  *(v0 + 2152) = 0;
  *(v0 + 2160) = 0;
  sub_1B1D0D67C(v0 + 2056);
  sub_1B1CDEFDC(v193, v192);
  *(v96 + 2) = v134 + 1;
  memcpy(&v96[680 * v134 + 32], (v0 + 2056), 0x2A1uLL);
  *(v200 + v197) = v96;
  v77 = v201;
LABEL_53:
  v135 = [v77 totpGenerators];
  sub_1B1D0C97C();
  v136 = sub_1B1D7BEEC();

  if (!(v136 >> 62))
  {
    v139 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v139)
    {
      goto LABEL_55;
    }

LABEL_71:

    goto LABEL_72;
  }

  v139 = sub_1B1D7C1FC();
  if (!v139)
  {
    goto LABEL_71;
  }

LABEL_55:
  if ((v136 & 0xC000000000000001) != 0)
  {
    v140 = MEMORY[0x1B273B2E0](0, v136);
  }

  else
  {
    if (!*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v140 = *(v136 + 32);
  }

  v141 = v140;

  v142 = [v141 algorithm];
  if (v142 == 2)
  {
    v143 = 2;
  }

  else
  {
    v143 = v142 == 1;
  }

  v144 = [v141 keyData];
  v145 = sub_1B1D7B4EC();
  v147 = v146;

  v139 = [v141 codeGenerationPeriod];
  if ((v139 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v148 = v139;
  if (v139 >> 16)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v139 = [v141 numberOfDigitsInCode];
  if ((v139 & 0x8000000000000000) != 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v149 = v139;
  if (v139 >> 16)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v96 = sub_1B1D0CAE4(0, *(v96 + 2) + 1, 1, v96);
  }

  v151 = *(v96 + 2);
  v150 = *(v96 + 3);
  if (v151 >= v150 >> 1)
  {
    v96 = sub_1B1D0CAE4((v150 > 1), v151 + 1, 1, v96);
  }

  *(v0 + 16) = v145;
  *(v0 + 24) = v147;
  *(v0 + 32) = v148;
  *(v0 + 34) = v149;
  *(v0 + 40) = v198;
  *(v0 + 48) = v202;
  *(v0 + 56) = v143;
  *(v0 + 57) = *(v0 + 689);
  *(v0 + 60) = *(v0 + 692);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  sub_1B1D0CC00(v0 + 16);
  *(v96 + 2) = v151 + 1;
  memcpy(&v96[680 * v151 + 32], (v0 + 16), 0x2A1uLL);
  v79 = v197;
  *(v200 + v197) = v96;
  v77 = v201;
LABEL_72:
  v152 = [v77 notesEntry];
  if (v152)
  {
    v153 = v152;
    v154 = sub_1B1D7BE4C();
    v156 = v155;

    sub_1B1C91AE4(0, 0xF000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v96 = sub_1B1D0CAE4(0, *(v96 + 2) + 1, 1, v96);
    }

    v158 = *(v96 + 2);
    v157 = *(v96 + 3);
    if (v158 >= v157 >> 1)
    {
      v96 = sub_1B1D0CAE4((v157 > 1), v158 + 1, 1, v96);
    }

    *(v0 + 1376) = xmmword_1B1D857B0;
    *(v0 + 1392) = 0;
    *(v0 + 1400) = v154;
    *(v0 + 1408) = v156;
    *(v0 + 1416) = 0;
    *(v0 + 1424) = 0;
    sub_1B1D0D624(v0 + 1376);
    *(v96 + 2) = v158 + 1;
    memcpy(&v96[680 * v158 + 32], (v0 + 1376), 0x2A1uLL);
    *(v200 + v79) = v96;
  }

  *(v0 + 3104) = v96;
  v159 = *(v0 + 2840);
  v160 = *(v0 + 2832);
  v161 = *(v0 + 2824);
  sub_1B1D7C05C();
  if ((*(v159 + 48))(v161, 1, v160) == 1)
  {
    v162 = *(v0 + 2824);

    sub_1B1CDEC18(v162, &qword_1EB775218, &qword_1B1D871F0);
    goto LABEL_6;
  }

  v163 = *(v0 + 2808);
  v164 = *(v0 + 2800);
  v165 = *(v0 + 2792);
  (*(*(v0 + 2840) + 32))(*(v0 + 2848), *(v0 + 2824), *(v0 + 2832));
  sub_1B1D7C0AC();
  v166 = (*(v163 + 48))(v165, 1, v164);
  v167 = *(v0 + 2792);
  if (v166 == 1)
  {
    (*(*(v0 + 2840) + 8))(*(v0 + 2848), *(v0 + 2832));

    sub_1B1CDEC18(v167, &qword_1EB775210, &qword_1B1D871E8);
    goto LABEL_6;
  }

  (*(*(v0 + 2808) + 32))(*(v0 + 2816), *(v0 + 2792), *(v0 + 2800));
  v33 = [v77 passkeyUserHandle];
  v168 = *(v0 + 2848);
  if (!v33)
  {
    v169 = *(v0 + 2840);
    v170 = *(v0 + 2832);
    v171 = *(v0 + 2816);
    v172 = *(v0 + 2808);
    v173 = *(v0 + 2800);

    (*(v172 + 8))(v171, v173);
    (*(v169 + 8))(v168, v170);
    goto LABEL_6;
  }

LABEL_89:
  v175 = v33;
  v176 = sub_1B1D7BE4C();
  v178 = v177;

  *(v0 + 3112) = v176;
  *(v0 + 3120) = v178;
  sub_1B1D7C03C();
  v179 = sub_1B1D7B4CC();
  v181 = v180;

  *(v0 + 3128) = v179;
  *(v0 + 3136) = v181;
  if (v181 >> 60 == 15)
  {
LABEL_101:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v139, v137, v138);
  }

  *(v0 + 3144) = [*(v0 + 2784) passkeyStore];
  sub_1B1D7B59C();
  sub_1B1D0CD30();
  v182 = sub_1B1D7BF0C();
  v184 = v183;
  v139 = sub_1B1D09590;
  v137 = v182;
  v138 = v184;

  return MEMORY[0x1EEE6DFA0](v139, v137, v138);
}

uint64_t sub_1B1D0C36C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B1D7C1FC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1B1D7C1FC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B1D0D68C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B1D0D72C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B1D0C45C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B1D0CF64(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t WBSSavedAccountStore.exportPasskeyPrivateKey(with:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D0C570, 0, 0);
}

uint64_t sub_1B1D0C570(uint64_t a1)
{
  sub_1B1D7C03C();
  v2 = sub_1B1D7B4CC();
  v4 = v3;

  *(v1 + 64) = v2;
  *(v1 + 72) = v4;
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 80) = [*(v1 + 56) passkeyStore];
    sub_1B1D7B59C();
    sub_1B1D0CD30();
    v8 = sub_1B1D7BF0C();
    v10 = v9;
    v5 = sub_1B1D0C654;
    v6 = v8;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1D0C654()
{
  v1 = sub_1B1D7B58C();
  v0[11] = 0;
  v2 = v1;
  v4 = v3;

  v0[12] = v4;
  v0[13] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B1D0C6F8, 0, 0);
}

uint64_t sub_1B1D0C6F8()
{
  sub_1B1C91AE4(v0[8], v0[9]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1B1D0C75C()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v0[8];

  sub_1B1C91AE4(v2, v1);
  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v4 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v4, qword_1EB782530);
  v5 = v3;
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7C00C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_1B1D7C56C();
    v14 = sub_1B1D0D070(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "Failed to export passkey private key: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B273C4C0](v11, -1, -1);
    MEMORY[0x1B273C4C0](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0, 0xF000000000000000);
}

uint64_t sub_1B1D0C93C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B1D0C97C()
{
  result = qword_1EB775230;
  if (!qword_1EB775230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775230);
  }

  return result;
}

char *sub_1B1D0C9C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775240, &qword_1B1D87200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1B1D0CAE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775268, &qword_1B1D87220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 680);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[680 * v8])
    {
      memmove(v12, v13, 680 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B1D0CC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D0CC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASImportableItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D0CCD4(uint64_t a1)
{
  v2 = type metadata accessor for ASImportableItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1D0CD30()
{
  result = qword_1EB775238;
  if (!qword_1EB775238)
  {
    sub_1B1D7B59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775238);
  }

  return result;
}

void *sub_1B1D0CD88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_1B1D0CF64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F88, &qword_1B1D85C60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1B1D0D070(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B1D0D13C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B1CEFFA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1B1D0D13C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B1D0D248(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B1D7C2CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B1D0D248(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B1D0D294(a1, a2);
  sub_1B1D0D3C4(&unk_1F28D8248);
  return v3;
}

void *sub_1B1D0D294(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B1D0D4B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B1D7C2CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B1D7BE9C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B1D0D4B0(v10, 0);
        result = sub_1B1D7C26C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B1D0D3C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B1D0D524(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B1D0D4B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775258, &qword_1B1D87210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B1D0D524(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775258, &qword_1B1D87210);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B1D0D630(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    sub_1B1C91AE4(result, a2);
  }

  return result;
}

uint64_t sub_1B1D0D68C(uint64_t a1, char a2)
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

  sub_1B1D7C1FC();
LABEL_9:
  result = sub_1B1D7C29C();
  *v2 = result;
  return result;
}

uint64_t sub_1B1D0D72C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B1D7C1FC();
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
      result = sub_1B1D7C1FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B1D0D8B8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775278, qword_1B1D87228);
            v9 = sub_1B1CF7A18(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
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

unint64_t sub_1B1D0D8B8()
{
  result = qword_1EB775280;
  if (!qword_1EB775280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775278, qword_1B1D87228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775280);
  }

  return result;
}

uint64_t sub_1B1D0D91C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B1D7BA2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - v6;
  sub_1B1D7BA4C();
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_1B1CDEC18(v7, &qword_1EB7751F8, &unk_1B1D86AF0);
    v8 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0xF000000000000000;
  }

  else
  {
    v8 = sub_1B1D7BA0C();
    v54 = v9;
    v10 = sub_1B1D7BA1C();
    v52 = v11;
    v53 = v10;
    sub_1B1C91AE4(0, 0xF000000000000000);
    (*(v3 + 8))(v7, v2);
  }

  result = sub_1B1D7B9EC();
  if (result)
  {
    v13 = result;
    v50 = v8;
    v51 = a1;
    v60 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775348, &qword_1B1D87840);
    result = sub_1B1D7C35C();
    v14 = result;
    v15 = 0;
    v16 = v13 + 64;
    v17 = 1 << *(v13 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v13 + 64);
    v20 = v17 + 63;
    v21 = v3;
    v22 = v20 >> 6;
    v58 = result;
    v59 = v21;
    v56 = v21 + 8;
    v57 = v21 + 16;
    v55 = result + 64;
    v23 = v60;
    if (v19)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v19));
        v62 = (v19 - 1) & v19;
LABEL_14:
        v27 = v24 | (v15 << 6);
        v67 = 16 * v27;
        v28 = *(v13 + 56);
        v29 = v13;
        v30 = (*(v13 + 48) + 16 * v27);
        v31 = *v30;
        v32 = v30[1];
        v33 = v59;
        v34 = v61;
        (*(v59 + 16))(v61, v28 + *(v59 + 72) * v27, v23);
        sub_1B1CE111C(v31, v32);
        v35 = sub_1B1D7BA0C();
        v65 = v36;
        v66 = v35;
        v37 = sub_1B1D7BA1C();
        v63 = v38;
        v64 = v37;
        (*(v33 + 8))(v34, v23);
        result = sub_1B1C91AE4(0, 0xF000000000000000);
        *(v55 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v14 = v58;
        v39 = v66;
        v40 = (*(v58 + 48) + v67);
        *v40 = v31;
        v40[1] = v32;
        v41 = (*(v14 + 56) + 32 * v27);
        v42 = v64;
        v43 = v65;
        *v41 = v39;
        v41[1] = v43;
        v41[2] = v42;
        v41[3] = v63;
        v44 = *(v14 + 16);
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          break;
        }

        *(v14 + 16) = v46;
        v13 = v29;
        v19 = v62;
        if (!v62)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v25 = v15;
      while (1)
      {
        v15 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v15 >= v22)
        {

          v8 = v50;
          a1 = v51;
          goto LABEL_19;
        }

        v26 = *(v16 + 8 * v15);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v62 = (v26 - 1) & v26;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
LABEL_19:
    v48 = v53;
    v47 = v54;
    *a1 = v8;
    a1[1] = v47;
    v49 = v52;
    a1[2] = v48;
    a1[3] = v49;
    a1[4] = v14;
  }

  return result;
}

uint64_t sub_1B1D0DCD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BA2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v40 - v7;
  v9 = v1[1];
  v10 = v1[4];
  if (v9 >> 60 == 15)
  {
    (*(v4 + 56))(v8, 1, 1, v3);
  }

  else
  {
    v12 = v1[2];
    v11 = v1[3];
    sub_1B1CE111C(*v1, v9);
    sub_1B1C91B94(v12, v11);
    sub_1B1D7B9FC();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  if (!v10)
  {
    return sub_1B1D7BA3C();
  }

  v40[0] = v8;
  v40[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775338, &qword_1B1D87830);
  result = sub_1B1D7C35C();
  v14 = 0;
  v43 = v10;
  v44 = v4;
  v17 = *(v10 + 64);
  v16 = v10 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v40[2] = v4 + 32;
  v41 = result + 64;
  v45 = v3;
  v42 = result;
  v22 = v46;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v47 = (v20 - 1) & v20;
LABEL_14:
      v26 = v23 | (v14 << 6);
      v27 = *(v43 + 56);
      v28 = (*(v43 + 48) + 16 * v26);
      v29 = v28[1];
      v48 = *v28;
      v49 = 16 * v26;
      v30 = (v27 + 32 * v26);
      v32 = *v30;
      v31 = v30[1];
      v34 = v30[2];
      v33 = v30[3];
      sub_1B1CE111C(v48, v29);
      sub_1B1CE111C(v32, v31);
      sub_1B1C91B94(v34, v33);
      sub_1B1D7B9FC();
      v35 = v42;
      *(v41 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v36 = (v35[6] + v49);
      *v36 = v48;
      v36[1] = v29;
      result = (*(v44 + 32))(v35[7] + *(v44 + 72) * v26, v22, v45);
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v35[2] = v39;
      v20 = v47;
      if (!v47)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        return sub_1B1D7BA3C();
      }

      v25 = *(v16 + 8 * v14);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v47 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1D0E02C@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1B1D7BDAC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  sub_1B1D7BCBC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B1CDEC18(v4, &qword_1EB774D70, &qword_1B1D85840);
    *a1 = sub_1B1D7BCAC() & 1;
    v12 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
    v13 = *(v6 + 56);
    v13(&a1[*(v12 + 20)], 1, 1, v5);
    return (v13)(&a1[*(v12 + 24)], 1, 1, v5);
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v16 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
    sub_1B1D7BCCC();
    (*(v6 + 8))(v11, v5);
    *a1 = 1;
    v17 = *(v16 + 20);
    v15(&a1[v17], v9, v5);
    return (*(v6 + 56))(&a1[v17], 0, 1, v5);
  }
}

id sub_1B1D0E2B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23[-v6];
  v24 = *v1;
  v8 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  sub_1B1D0ED30(&v1[*(v8 + 20)], v7);
  v9 = sub_1B1D7BDAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_1B1CDEC18(v7, &qword_1EB774D70, &qword_1B1D85840);
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    v12 = sub_1B1D7BD9C();
    v13 = v14;
    (*(v10 + 8))(v7, v9);
  }

  sub_1B1D0ED30(&v1[*(v8 + 24)], v5);
  if (v11(v5, 1, v9) == 1)
  {
    sub_1B1CDEC18(v5, &qword_1EB774D70, &qword_1B1D85840);
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    v15 = sub_1B1D7BD9C();
    v16 = v17;
    (*(v10 + 8))(v5, v9);
  }

  if (v13 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v12, v13);
  }

  if (v16 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v15, v16);
  }

  v20 = objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationOutput);
  v21 = [v20 initWithIsSupported:v24 first:v18 second:v19];

  return v21;
}

uint64_t sub_1B1D0E548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  [v1 shouldCheckForSupport];
  v5 = [v1 inputValues];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 saltInput1];
    sub_1B1D7B4EC();

    v8 = [v6 saltInput2];
    if (v8)
    {
      v9 = v8;
      sub_1B1D7B4EC();
    }

    sub_1B1D7B9FC();

    v11 = sub_1B1D7BA2C();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v10 = sub_1B1D7BA2C();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  return sub_1B1D7BBDC();
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.init(saltInput1:saltInput2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput1(_:saltInput2:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_1B1CE111C(a1, a2);
  sub_1B1C91B94(a3, a4);
  result = sub_1B1C91AE4(0, 0xF000000000000000);
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput1.getter()
{
  v1 = *v0;
  sub_1B1CE111C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput1.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1CDEFDC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput2.getter()
{
  v1 = *(v0 + 16);
  sub_1B1C91B94(v1, *(v0 + 24));
  return v1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.InputValues.saltInput2.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C91AE4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFAssertionInput.inputValues(_:perCredentialInputValues:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = a2;
  sub_1B1CE111C(v5, v4);
  sub_1B1C91B94(v6, v7);
}

uint64_t static ASAuthorizationPublicKeyCredentialPRFAssertionInput.perCredentialInputValues(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1B1D857B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
}

void ASAuthorizationPublicKeyCredentialPRFAssertionInput.inputValues.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B1D05C30(v2, v3, v4, v5);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInput.perCredentialInputValues.getter()
{
}

{
}

void *sub_1B1D0E95C()
{
  v1 = v0[1];
  v2 = v0[4];
  if (v1 >> 60 == 15)
  {
    v36 = 0;
    if (!v2)
    {
LABEL_24:
      v35 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionInput) initWithInputValues:v36 perCredentialInputValues:v2];

      return v35;
    }
  }

  else
  {
    v3 = *v0;
    v4 = v0[2];
    v5 = v0[3];
    sub_1B1CE111C(*v0, v0[1]);
    sub_1B1C91B94(v4, v5);
    v6 = sub_1B1D7B4DC();
    if (v5 >> 60 == 15)
    {
      v7 = 0;
    }

    else
    {
      v7 = sub_1B1D7B4DC();
    }

    v36 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionInputValues) initWithSaltInput1:v6 saltInput2:v7];

    sub_1B1CDEF8C(v3, v1, v4, v5);
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775340, &qword_1B1D87838);
  result = sub_1B1D7C35C();
  v9 = 0;
  v10 = v2 + 64;
  v11 = 1 << *(v2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v2 + 64);
  v14 = (v11 + 63) >> 6;
  v37 = v2;
  v38 = result + 8;
  v39 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v18 = v15 | (v9 << 6);
      v19 = *(v2 + 56);
      v20 = (*(v2 + 48) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      v23 = (v19 + 32 * v18);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v42 = v21;
      sub_1B1CE111C(v22, v21);
      sub_1B1CE111C(v24, v25);
      sub_1B1C91B94(v26, v27);
      v28 = sub_1B1D7B4DC();
      v43 = v22;
      v41 = v26;
      v29 = v27 >> 60 == 15 ? 0 : sub_1B1D7B4DC();
      v30 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionInputValues) initWithSaltInput1:v28 saltInput2:v29];

      sub_1B1CDEFDC(v24, v25);
      result = sub_1B1C91AE4(v41, v27);
      *(v38 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v31 = (v39[6] + 16 * v18);
      *v31 = v43;
      v31[1] = v42;
      *(v39[7] + 8 * v18) = v30;
      v32 = v39[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v39[2] = v34;
      v2 = v37;
      v13 = v40;
      if (!v40)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(result);
        sub_1B1D10564();
        v2 = sub_1B1D7BDCC();

        goto LABEL_24;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionOutput.first.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BDAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(uint64_t a1)
{
  return sub_1B1C9020C(a1, &unk_1EB7752E8, &nominal type descriptor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput);
}

{
  return sub_1B1CED540(a1, &qword_1EB775320, off_1E7AF6840);
}

uint64_t sub_1B1D0ED30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionOutput.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B1D7BDAC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0) + 20);

  return sub_1B1D0EE30(a2, v7);
}

uint64_t sub_1B1D0EE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B1D0EEA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D70, &qword_1B1D85840);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1B1D7BD9C();
  v6 = v5;
  v7 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
  sub_1B1D0ED30(v0 + *(v7 + 20), v3);
  v8 = sub_1B1D7BDAC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_1B1CDEC18(v3, &qword_1EB774D70, &qword_1B1D85840);
    v10 = sub_1B1D7B4DC();
    v11 = 0;
  }

  else
  {
    v12 = sub_1B1D7BD9C();
    v14 = v13;
    (*(v9 + 8))(v3, v8);
    v10 = sub_1B1D7B4DC();
    if (v14 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B1D7B4DC();
      sub_1B1C91AE4(v12, v14);
    }
  }

  v15 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFAssertionOutput) initWithFirst:v10 second:v11];

  sub_1B1CDEFDC(v4, v6);
  return v15;
}

double static ASAuthorizationPublicKeyCredentialPRFRegistrationInput.checkForSupport.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = xmmword_1B1D857B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void static ASAuthorizationPublicKeyCredentialPRFRegistrationInput.inputValues(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = 1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  sub_1B1CE111C(v3, v2);

  sub_1B1C91B94(v4, v5);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationInput.shouldCheckForSupport.getter()
{
  return *v0;
}

{
  return *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_shouldCheckForSupport);
}

void ASAuthorizationPublicKeyCredentialPRFRegistrationInput.inputValues.getter(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B1D05C30(v2, v3, v4, v5);
}

id static ASAuthorizationPublicKeyCredentialPRFRegistrationInput.checkForSupport.getter()
{
  v0 = objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationInput);

  return [v0 initWithInputValues_];
}

uint64_t type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(uint64_t a1)
{
  return sub_1B1C9020C(a1, &unk_1EB775300, &nominal type descriptor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput);
}

{
  return sub_1B1CED540(a1, &qword_1EB775318, off_1E7AF6850);
}

uint64_t sub_1B1D0F170@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  v4 = *(v3 + 20);
  v5 = sub_1B1D7BDAC();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(v3 + 24)];

  return v8(v6, 1, 1, v5);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.isSupported.getter()
{
  return *v0;
}

{
  v1 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1D0F250@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1B1D0ED30(v4, a2);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.second.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0) + 24);

  return sub_1B1D0ED30(v3, a1);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 1;
  v6 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFRegistrationOutput(0);
  v7 = *(v6 + 20);
  v8 = sub_1B1D7BDAC();
  v9 = *(v8 - 8);
  (*(v9 + 32))(&a3[v7], a1, v8);
  (*(v9 + 56))(&a3[v7], 0, 1, v8);
  v10 = &a3[*(v6 + 24)];

  return sub_1B1D0EE30(a2, v10);
}

void *ASAuthorizationPublicKeyCredentialPRFRegistrationInput.inputValues.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_inputValues);
  v2 = v1;
  return v1;
}

id ASAuthorizationPublicKeyCredentialPRFRegistrationInput.init(inputValues:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a2)) initWithInputValues_];

  return v3;
}

id ASAuthorizationPublicKeyCredentialPRFRegistrationInput.init(inputValues:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_shouldCheckForSupport) = 1;
  *(v1 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationInput_inputValues) = a1;
  v3.super_class = ASAuthorizationPublicKeyCredentialPRFRegistrationInput;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t ASAuthorizationPublicKeyCredentialPRFRegistrationOutput.isSupported.setter(char a1)
{
  v3 = OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B1D0FA64(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 first];
  v4 = sub_1B1D7B4EC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1B1D0FAC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v4 = 0;
  v5 = v3[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v3;
    sub_1B1CE111C(v6, v5);
    v7 = sub_1B1D7B4DC();
    sub_1B1C91AE4(v6, v5);
    v4 = v7;
  }

  return v4;
}

uint64_t sub_1B1D0FB84(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_1B1D0FBF8(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  if (a3)
  {
    v7 = a1;
    v8 = v5;
    v5 = sub_1B1D7B4EC();
    v10 = v9;
  }

  else
  {
    v11 = a1;
    v10 = 0xF000000000000000;
  }

  v12 = &a1[*a4];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v5;
  v12[1] = v10;
  sub_1B1C91AE4(v13, v14);
}

uint64_t sub_1B1D0FCB4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_1B1D0FD18(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B1D7B4EC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B1D0FD7C(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1B1D7B4DC();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.saltInput1.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1);
  sub_1B1CE111C(v1, *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1 + 8));
  return v1;
}

uint64_t ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.saltInput2.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2);
  sub_1B1C91B94(v1, *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2 + 8));
  return v1;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.init(saltInput1:saltInput2:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1B1D7B4DC();
  v9 = (a4 >> 60);
  if (a4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1B1D7B4DC();
    sub_1B1C91AE4(a3, a4);
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v9)) initWithSaltInput1:v8 saltInput2:v10];

  sub_1B1CDEFDC(a1, a2);
  return v11;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInputValues.init(saltInput1:saltInput2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput1);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInputValues_saltInput2);
  *v6 = a3;
  v6[1] = a4;
  v8.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInputValues;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B1D10388(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), void *a5)
{
  a4(*(a1 + *a3), *(a1 + *a3 + 8));
  v7 = (a1 + *a5);
  v8 = *v7;
  v9 = v7[1];

  return sub_1B1C91AE4(v8, v9);
}

void *ASAuthorizationPublicKeyCredentialPRFAssertionInput.inputValues.getter()
{
  v1 = *(v0 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_inputValues);
  v2 = v1;
  return v1;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInput.init(inputValues:perCredentialInputValues:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(a1);
    sub_1B1D10564();
    v4 = sub_1B1D7BDCC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata(a3)) initWithInputValues:a1 perCredentialInputValues:v4];

  return v5;
}

unint64_t sub_1B1D10564()
{
  result = qword_1EB7754D0;
  if (!qword_1EB7754D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7754D0);
  }

  return result;
}

id ASAuthorizationPublicKeyCredentialPRFAssertionInput.init(inputValues:perCredentialInputValues:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_inputValues) = a1;
  *(v2 + OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFAssertionInput_perCredentialInputValues) = a2;
  v4.super_class = ASAuthorizationPublicKeyCredentialPRFAssertionInput;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B1D106B0@<X0>(void *a1@<X8>)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(a1));

  return [v1 init];
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

uint64_t sub_1B1D10750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D107AC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
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

uint64_t sub_1B1D10824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1D10878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1B1D10900(uint64_t a1)
{
  sub_1B1D7BDAC();
  if (v1 <= 0x3F)
  {
    sub_1B1D10984(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1D10984(uint64_t a1)
{
  if (!qword_1EB7752F8)
  {
    sub_1B1D7BDAC();
    v1 = sub_1B1D7C18C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB7752F8);
    }
  }
}

uint64_t sub_1B1D109DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B1D10A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1B1D10AB4(uint64_t a1)
{
  sub_1B1D10984(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B1D10BFC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BA2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - v7;
  v9 = [v1 inputValues];
  v10 = &unk_1E7AF9000;
  v46 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = [v9 saltInput1];
    sub_1B1D7B4EC();

    v13 = [v11 saltInput2];
    if (v13)
    {
      v14 = v13;
      sub_1B1D7B4EC();
    }

    v15 = v46;
    sub_1B1D7B9FC();

    (*(v4 + 56))(v15, 0, 1, v3);
    v10 = &unk_1E7AF9000;
  }

  else
  {
    (*(v4 + 56))(v8, 1, 1, v3);
  }

  v16 = [v1 perCredentialInputValues];
  v17 = v16;
  if (!v16)
  {
    return sub_1B1D7BA3C();
  }

  v45 = a1;
  type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionInputValues(v16);
  sub_1B1D10564();
  v18 = sub_1B1D7BDDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775338, &qword_1B1D87830);
  result = sub_1B1D7C35C();
  v20 = 0;
  v22 = v18 + 64;
  v21 = *(v18 + 64);
  v53 = v18;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v47 = v4 + 32;
  v48 = result + 64;
  v50 = v4;
  v51 = v3;
  v49 = result;
  if (v25)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v25));
      v54 = (v25 - 1) & v25;
LABEL_16:
      v30 = v27 | (v20 << 6);
      v31 = (*(v53 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = *(*(v53 + 56) + 8 * v30);
      v55 = v33;
      v56 = v32;
      sub_1B1CE111C(v32, v33);
      v35 = [v34 saltInput1];
      sub_1B1D7B4EC();

      v36 = [v34 v10[420]];
      if (v36)
      {
        v37 = v36;
        sub_1B1D7B4EC();
      }

      v38 = v52;
      sub_1B1D7B9FC();

      v39 = v49;
      *(v48 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v40 = (v39[6] + 16 * v30);
      v41 = v55;
      *v40 = v56;
      v40[1] = v41;
      result = (*(v50 + 32))(v39[7] + *(v50 + 72) * v30, v38, v51);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        break;
      }

      v39[2] = v44;
      v10 = &unk_1E7AF9000;
      v25 = v54;
      if (!v54)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v28 = v20;
    while (1)
    {
      v20 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v20 >= v26)
      {

        return sub_1B1D7BA3C();
      }

      v29 = *(v22 + 8 * v20);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1D11068(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = &v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_first];
  *&v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_first] = xmmword_1B1D857B0;
  v11 = &v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_second];
  *&v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_second] = xmmword_1B1D857B0;
  v5[OBJC_IVAR___ASAuthorizationPublicKeyCredentialPRFRegistrationOutput_isSupported] = a1;
  swift_beginAccess();
  v12 = *v10;
  v13 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  sub_1B1C91B94(a2, a3);
  sub_1B1C91AE4(v12, v13);
  swift_beginAccess();
  v14 = *v11;
  v15 = v11[1];
  *v11 = a4;
  v11[1] = a5;
  sub_1B1C91B94(a4, a5);
  sub_1B1C91AE4(v14, v15);
  v17.receiver = v5;
  v17.super_class = ASAuthorizationPublicKeyCredentialPRFRegistrationOutput;
  return objc_msgSendSuper2(&v17, sel_init);
}

void ASPasskeyCredentialRequestParameters.extensionInput.getter(void *a1@<X8>)
{
  v3 = [v1 extensionInput];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t sub_1B1D111FC()
{
  v1 = [v0 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v2 = sub_1B1D7BEEC();

  if (v2 >> 62)
  {
LABEL_106:
    v3 = sub_1B1D7C1FC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_107:
    v6 = MEMORY[0x1E69E7CD0];
LABEL_108:

    return v6;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_107;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CD0];
    v7 = v2 + 32;
    v8 = &selRef_configurationWithScale_;
    v74 = v2 & 0xC000000000000001;
    v75 = v2;
    v73 = v2 + 32;
    v76 = v3;
    while (1)
    {
      if (v5)
      {
        v12 = MEMORY[0x1B273B2E0](v4, v2);
      }

      else
      {
        v12 = *(v7 + 8 * v4);
        swift_unknownObjectRetain();
      }

      if ([v12 v8[457]])
      {
        swift_getObjectType();
        v13 = swift_conformsToProtocol2();
        if (!v13 || !v12)
        {
          goto LABEL_9;
        }

        v14 = v13;
        v15 = v8;
        ObjectType = swift_getObjectType();
        if ((*(v14 + 8))(ObjectType, v14))
        {
          v17 = (*(v14 + 16))(ObjectType, v14);
          if (v18)
          {
            v19 = v17;
            v20 = v18;
            sub_1B1D7C5CC();
            MEMORY[0x1B273B630](0);
            sub_1B1D7BE7C();
            v21 = sub_1B1D7C61C();
            v22 = -1 << *(v6 + 32);
            v23 = v21 & ~v22;
            if ((*(v6 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
            {
              v24 = ~v22;
              v25 = *(v6 + 48);
              while (1)
              {
                v26 = (v25 + 16 * v23);
                v27 = v26[1];
                if (v27 >= 2)
                {
                  v28 = *v26 == v19 && v27 == v20;
                  if (v28 || (sub_1B1D7C50C() & 1) != 0)
                  {
                    break;
                  }
                }

                v23 = (v23 + 1) & v24;
                if (((*(v6 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
LABEL_50:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v2 = *(v6 + 16);
              v46 = *(v6 + 24);

              if (v46 <= v2)
              {
                v50 = v2 + 1;
                if (isUniquelyReferenced_nonNull_native)
                {
                  sub_1B1D1EDB0(v50);
                }

                else
                {
                  sub_1B1D20520(v50);
                }

                sub_1B1D7C5CC();
                MEMORY[0x1B273B630](0);
                sub_1B1D7BE7C();
                v53 = sub_1B1D7C61C();
                v54 = -1 << *(v6 + 32);
                v23 = v53 & ~v54;
                if ((*(v6 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
                {
                  v2 = ~v54;
                  v55 = *(v6 + 48);
                  do
                  {
                    v56 = (v55 + 16 * v23);
                    v57 = v56[1];
                    if (v57 >= 2)
                    {
                      v58 = *v56 == v19 && v57 == v20;
                      if (v58 || (sub_1B1D7C50C() & 1) != 0)
                      {
                        goto LABEL_111;
                      }
                    }

                    v23 = (v23 + 1) & v2;
                  }

                  while (((*(v6 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
                }
              }

              else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1B1D1FF2C();
              }

              *(v6 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v23;
              v59 = (*(v6 + 48) + 16 * v23);
              *v59 = v19;
              v59[1] = v20;
              v60 = *(v6 + 16);
              v10 = __OFADD__(v60, 1);
              v61 = v60 + 1;
              if (v10)
              {
                goto LABEL_104;
              }

              *(v6 + 16) = v61;
            }

            swift_unknownObjectRelease();
            v5 = v74;
            v2 = v75;
            v7 = v73;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v8 = v15;
          goto LABEL_84;
        }

        v8 = v15;
        if ([v12 v15 + 1527] == 1)
        {
          sub_1B1D7C5CC();
          MEMORY[0x1B273B630](1);
          v35 = sub_1B1D7C61C();
          v36 = -1 << *(v6 + 32);
          v37 = v35 & ~v36;
          if ((*(v6 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
          {
            v38 = ~v36;
            v3 = v76;
            while (*(*(v6 + 48) + 16 * v37 + 8))
            {
              v37 = (v37 + 1) & v38;
              if (((*(v6 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_9;
          }

          v3 = v76;
LABEL_64:
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(v6 + 16);
          if (*(v6 + 24) <= v52)
          {
            if (v51)
            {
              sub_1B1D1EDB0(v52 + 1);
            }

            else
            {
              sub_1B1D20520(v52 + 1);
            }

            sub_1B1D7C5CC();
            MEMORY[0x1B273B630](1);
            v62 = sub_1B1D7C61C();
            v63 = -1 << *(v6 + 32);
            v37 = v62 & ~v63;
            if ((*(v6 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
            {
              v64 = ~v63;
              while (*(*(v6 + 48) + 16 * v37 + 8))
              {
                v37 = (v37 + 1) & v64;
                if (((*(v6 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
                {
                  goto LABEL_92;
                }
              }

              goto LABEL_111;
            }
          }

          else if ((v51 & 1) == 0)
          {
            sub_1B1D1FF2C();
          }

LABEL_92:
          *(v6 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v37;
          v65 = (*(v6 + 48) + 16 * v37);
          *v65 = 0;
          v65[1] = 0;
          v66 = *(v6 + 16);
          v10 = __OFADD__(v66, 1);
          v11 = v66 + 1;
          if (v10)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if ([v12 v15 + 1527] != 2)
          {
            swift_unknownObjectRelease();
LABEL_84:
            v3 = v76;
            goto LABEL_10;
          }

          sub_1B1D7C5CC();
          MEMORY[0x1B273B630](1);
          v39 = sub_1B1D7C61C();
          v40 = -1 << *(v6 + 32);
          v41 = v39 & ~v40;
          v3 = v76;
          if ((*(v6 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            v42 = ~v40;
            while (*(*(v6 + 48) + 16 * v41 + 8))
            {
              v41 = (v41 + 1) & v42;
              if (((*(v6 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_9;
          }

LABEL_47:
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v6 + 16);
          if (*(v6 + 24) <= v44)
          {
            if (v43)
            {
              sub_1B1D1EDB0(v44 + 1);
            }

            else
            {
              sub_1B1D20520(v44 + 1);
            }

            sub_1B1D7C5CC();
            MEMORY[0x1B273B630](1);
            v67 = sub_1B1D7C61C();
            v68 = -1 << *(v6 + 32);
            v41 = v67 & ~v68;
            if ((*(v6 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
            {
              v69 = ~v68;
              while (*(*(v6 + 48) + 16 * v41 + 8))
              {
                v41 = (v41 + 1) & v69;
                if (((*(v6 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                {
                  goto LABEL_100;
                }
              }

              goto LABEL_111;
            }
          }

          else if ((v43 & 1) == 0)
          {
            sub_1B1D1FF2C();
          }

LABEL_100:
          *(v6 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v41;
          v70 = (*(v6 + 48) + 16 * v41);
          *v70 = 0;
          v70[1] = 0;
          v71 = *(v6 + 16);
          v10 = __OFADD__(v71, 1);
          v11 = v71 + 1;
          if (v10)
          {
            goto LABEL_110;
          }
        }
      }

      else
      {
        sub_1B1D7C5CC();
        MEMORY[0x1B273B630](2);
        v29 = sub_1B1D7C61C();
        v30 = -1 << *(v6 + 32);
        v31 = v29 & ~v30;
        if ((*(v6 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (*(*(v6 + 48) + 16 * v31 + 8) != 1)
          {
            v31 = (v31 + 1) & v32;
            if (((*(v6 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_9;
        }

LABEL_33:
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v34 = *(v6 + 16);
        if (*(v6 + 24) > v34)
        {
          if ((v33 & 1) == 0)
          {
            sub_1B1D1FF2C();
          }
        }

        else
        {
          if (v33)
          {
            sub_1B1D1EDB0(v34 + 1);
          }

          else
          {
            sub_1B1D20520(v34 + 1);
          }

          sub_1B1D7C5CC();
          MEMORY[0x1B273B630](2);
          v47 = sub_1B1D7C61C();
          v48 = -1 << *(v6 + 32);
          v31 = v47 & ~v48;
          if ((*(v6 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v49 = ~v48;
            while (*(*(v6 + 48) + 16 * v31 + 8) != 1)
            {
              v31 = (v31 + 1) & v49;
              if (((*(v6 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            goto LABEL_111;
          }
        }

LABEL_7:
        *(v6 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v31;
        *(*(v6 + 48) + 16 * v31) = xmmword_1B1D866D0;
        v9 = *(v6 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }
      }

      *(v6 + 16) = v11;
LABEL_9:
      swift_unknownObjectRelease();
LABEL_10:
      if (++v4 == v3)
      {
        goto LABEL_108;
      }
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  result = sub_1B1D7C52C();
  __break(1u);
  return result;
}

uint64_t sub_1B1D11AF0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_39:
    v4 = sub_1B1D7C1FC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B273B2E0](i, a1);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_32:
            __break(1u);
            return 0;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_39;
          }

          v6 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_32;
          }
        }

        v8 = [v6 loginChoiceKind];
        if (v8 == 1)
        {
          objc_opt_self();
          v12 = swift_dynamicCastObjCClass();
          if (!v12)
          {
            goto LABEL_5;
          }

          if ([v12 isExternal])
          {
            goto LABEL_36;
          }

          v13 = *(a2 + 45);
          swift_unknownObjectRelease();
          if (v13)
          {
            return 1;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (!v8)
            {
              goto LABEL_36;
            }

            goto LABEL_5;
          }

          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (!v9)
          {
            goto LABEL_5;
          }

          v10 = v9;
          swift_unknownObjectRetain();
          if ([v10 isExternal])
          {
            goto LABEL_35;
          }

          if (*(a2 + 44))
          {
            v11 = *(a2 + 45);
            if (*(a2 + 42))
            {
              if (v11)
              {
                goto LABEL_35;
              }
            }

            else if (([*a2 isRegistrationRequest] & 1) == 0 && ((v11 ^ 1) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v14 = [v10 relyingPartyIdentifier];
          if (!v14)
          {
            swift_unknownObjectRelease();
LABEL_5:
            swift_unknownObjectRelease();
            goto LABEL_6;
          }

          v15 = v14;
          v16 = sub_1B1D7BE4C();
          v18 = v17;

          if (v16 == 0x6F632E656C707061 && v18 == 0xE90000000000006DLL)
          {

LABEL_35:
            swift_unknownObjectRelease();
LABEL_36:
            swift_unknownObjectRelease();
            return 1;
          }

          v19 = sub_1B1D7C50C();

          swift_unknownObjectRelease_n();
          a2 = v21;
          if (v19)
          {
            return 1;
          }
        }

LABEL_6:
        if (v7 == v4)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

void ASAuthorizationUIContext.appIconForPresentingApp()(uint64_t a1@<X8>)
{
  v3 = [*v1 appIdentifier];
  v4 = sub_1B1D7BE4C();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

BOOL sub_1B1D11E00(uint64_t a1)
{
  v1 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_1B1D7C1FC();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B273B2E0](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = [v7 loginChoiceKind];
    swift_unknownObjectRelease();
    v5 = v6 + 1;
  }

  while (!v8);

  return v4 == v6;
}

uint64_t sub_1B1D11EF8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + 44) == 2 && *(result + 16))
  {
    v3 = 0;
    v4 = *(v2 + 32);
    v6 = *(result + 56);
    result += 56;
    v5 = v6;
    v7 = 1 << *(result - 24);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v5;
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_6:
      v9 &= v9 - 1;
    }

    while (1)
    {
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *(result + 8 * v11);
      ++v3;
      if (v9)
      {
        v3 = v11;
        goto LABEL_6;
      }
    }

    v12 = v4 >= 5;
    v13 = 0x203010003uLL >> (8 * v4);
    if (v12)
    {
      LOBYTE(v13) = 3;
    }

    *a2 = v13;
  }

  else
  {
    *a2 = 3;
  }

  return result;
}

double static ASAuthorizationUIContext.IconType.lockSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.71011787e214;
  *a1 = xmmword_1B1D85E80;
  *(a1 + 16) = 0;
  *(a1 + 24) = 64;
  return result;
}

uint64_t ASAuthorizationUIContext.loginChoicesToShow.getter()
{
  v1 = v0[2];
  v19 = v0[1];
  v20[0] = v1;
  *v18 = *v0;
  *(v20 + 15) = *(v0 + 47);
  if (BYTE8(v1) > 2u)
  {
    if (BYTE8(v20[0]) - 3 < 3)
    {
      if ((BYTE9(v20[0]) & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_11;
    }

    if (BYTE8(v20[0]) == 6)
    {
      if ((BYTE9(v20[0]) & 1) == 0)
      {
        v3 = v0[1];
        v15 = *v0;
        v16 = v3;
        v17[0] = v0[2];
        *(v17 + 15) = *(v0 + 47);
        return sub_1B1CEE5B8();
      }

      goto LABEL_11;
    }

LABEL_14:
    v5 = [v18[0] loginChoices];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
    v2 = sub_1B1D7BEEC();

    return v2;
  }

  if (BYTE8(v20[0]) < 2u)
  {
    goto LABEL_14;
  }

  if (BYTE9(v20[0]))
  {
LABEL_11:

    return ASAuthorizationUIContext.otherLoginChoices.getter();
  }

  v6 = [v18[0] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v7 = sub_1B1D7BEEC();

  *&v15 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v9 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
      if ((v7 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_19:
      if ((v9 & 0x8000000000000000) == 0)
      {
        if (v9 >= *(v10 + 16))
        {
          goto LABEL_32;
        }

        swift_unknownObjectRetain();
        v11 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v8 = sub_1B1D7C1FC();
      if (!v8)
      {
        goto LABEL_34;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v9, v7);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

LABEL_22:
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12 && (v14 = v12, (sub_1B1CF6F88(&v14, v18) & 1) != 0))
      {
        sub_1B1D7C2DC();
        sub_1B1D7C30C();
        v10 = v7 & 0xFFFFFFFFFFFFFF8;
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (v11 == v8)
      {
        goto LABEL_34;
      }

      ++v9;
      if ((v7 & 0xC000000000000001) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_34:

  v2 = v15;

  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    sub_1B1D7C51C();

    return v2;
  }

  v13 = sub_1B1D7C33C();

  return v13;
}

void static ASAuthorizationUIContext.IconType.passkeySymbol.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x80000001B1D9AC20;
  *(a1 + 16) = 0;
  *(a1 + 24) = 64;
}

BOOL ASAuthorizationUIContext.hasMultipleCredentialProvidersEnabled.getter()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 numberOfAutoFillProvidersEnabled];

  return v1 > 1;
}

id sub_1B1D123E0(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1D7BE1C();

  v8[0] = 0;
  v4 = [swift_getObjCClassFromMetadata(v3) bundleRecordWithApplicationIdentifier:v2 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1B1D7B44C();

    swift_willThrow();
  }

  return v4;
}

AuthenticationServices::ASAuthorizationUIContext::IconType::Biometrics_optional __swiftcall ASAuthorizationUIContext.IconType.Biometrics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B1D7C3AC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ASAuthorizationUIContext.IconType.Biometrics.rawValue.getter()
{
  v1 = 0x646965636166;
  if (*v0 != 1)
  {
    v1 = 0x6469636974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696863756F74;
  }
}

uint64_t sub_1B1D12578()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12618(uint64_t a1)
{
  sub_1B1D7BE7C();
}

uint64_t sub_1B1D126A4(uint64_t a1)
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();

  return sub_1B1D7C61C();
}

void sub_1B1D1274C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646965636166;
  if (v2 != 1)
  {
    v5 = 0x6469636974706FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696863756F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B1D127A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646965636166;
  if (v2 != 1)
  {
    v4 = 0x6469636974706FLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696863756F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646965636166;
  if (*a2 != 1)
  {
    v8 = 0x6469636974706FLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696863756F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B1D7C50C();
  }

  return v11 & 1;
}

double static ASAuthorizationUIContext.IconType.passwordSymbol.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.42880739e248;
  *a1 = xmmword_1B1D87850;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x80;
  return result;
}

uint64_t ASAuthorizationUIContext.Header.Title.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

void ASAuthorizationUIContext.MainButton.text.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ASAuthorizationUIContext.MainButton.text.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t ASAuthorizationUIContext.OtherOptionsText.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12B48()
{
  v1 = *(v0 + 8);
  sub_1B1D7C5CC();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
      return sub_1B1D7C61C();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1B273B630](v2);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12BC8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 1;
    return MEMORY[0x1B273B630](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x1B273B630](v3);
  }

  MEMORY[0x1B273B630](0);

  return sub_1B1D7BE7C();
}

uint64_t sub_1B1D12C50(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1B1D7C5CC();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
      return sub_1B1D7C61C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1B273B630](v3);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D12CCC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_1B1D7C50C();
  }
}

uint64_t ASAuthorizationUIContext.service.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1B1CEF6D4(v2, v3);
}

uint64_t ASAuthorizationUIContext.service.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B1CF8E9C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

BOOL ASAuthorizationUIContext.header.getter@<W0>(_BOOL8 result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 40);
  if (v3 != 1)
  {
    if (v3 == 6 && (v4 = a2, result = sub_1B1D11E00(result), a2 = v4, result))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 2;
    }
  }

  *a2 = v3;
  return result;
}

double ASAuthorizationUIContext.iconType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  if (v3 <= 3)
  {
    if (*(v1 + 40) <= 1u)
    {
      if (*(v1 + 40))
      {
        v12 = [v2 appIdentifier];
        v13 = sub_1B1D7BE4C();
        v15 = v14;

        *a1 = v13;
        *(a1 + 8) = v15;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        v23 = *v1;
        v5 = *(v1 + 24);
        v24 = *(v1 + 8);
        v25 = v5;
        v26 = 0;
        v27 = v4;
        v28 = *(v1 + 42);
        v29 = *(v1 + 50);
        sub_1B1CFA01C(a1);
      }

      return result;
    }

    if (v3 == 2)
    {
      v23 = *v1;
      v24 = *(v1 + 8);
      v25 = *(v1 + 24);
      v26 = 2;
      v27 = v4;
      v28 = *(v1 + 42);
      v29 = *(v1 + 50);
      sub_1B1CF6D3C(a1);
      return result;
    }

    v7 = 0x80000001B1D9AC20;
    v8 = (v4 & 1) == 0;
    v9 = 0x6C69662E6B636F6CLL;
    if (!v8)
    {
      v9 = 0xD000000000000015;
    }

    v10 = 0xE90000000000006CLL;
    goto LABEL_19;
  }

  if (*(v1 + 40) <= 5u)
  {
    if (v3 != 4)
    {
      *a1 = 0xD000000000000015;
      *(a1 + 8) = 0x80000001B1D9AC20;
LABEL_23:
      *(a1 + 16) = 0;
      *(a1 + 24) = 64;
      return result;
    }

    v7 = 0x80000001B1D9AC20;
    v8 = (v4 & 1) == 0;
    v9 = 0x6F6C63692E79656BLL;
    if (!v8)
    {
      v9 = 0xD000000000000015;
    }

    v10 = 0xEA00000000006475;
LABEL_19:
    if (v8)
    {
      v7 = v10;
    }

    *a1 = v9;
    *(a1 + 8) = v7;
    goto LABEL_23;
  }

  v23 = *v1;
  if (v3 == 6)
  {
    v24 = *(v1 + 8);
    v25 = *(v1 + 24);
    v26 = 6;
    v27 = v4;
    v28 = *(v1 + 42);
    v29 = *(v1 + 50);
    sub_1B1CEED90(a1, v2);
  }

  else
  {
    v16 = *(v1 + 24);
    v24 = *(v1 + 8);
    v25 = v16;
    v26 = 7;
    v27 = v4;
    v28 = *(v1 + 42);
    v29 = *(v1 + 50);
    sub_1B1CF74C8(&v20);
    v18 = v21;
    v19 = v22;
    result = *&v20;
    *a1 = v20;
    *(a1 + 16) = v18;
    *(a1 + 24) = v19;
  }

  return result;
}

void ASAuthorizationUIContext.title.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  v4 = *(v1 + 50);
  if (v2 > 3)
  {
    if (*(v1 + 40) > 5u)
    {
      if (v2 == 6)
      {
LABEL_16:
        v8 = 1;
LABEL_21:
        *a1 = v8;
        goto LABEL_22;
      }

      v7 = 3;
LABEL_25:
      *a1 = v7;
      v10 = 1;
      goto LABEL_23;
    }

    if (v2 == 4)
    {
      if (*(v1 + 41))
      {
        v5 = 0x80;
      }

      else
      {
        v5 = 64;
      }

      *a1 = (v3 ^ 1) & v4;
      *(a1 + 8) = v5;
      return;
    }

    v9 = v3 == 0;
    v8 = 4;
LABEL_19:
    if (!v9)
    {
      v8 = 0;
    }

    goto LABEL_21;
  }

  if (*(v1 + 40) <= 1u)
  {
    if (*(v1 + 40))
    {
      *a1 = 0;
LABEL_22:
      v10 = 0x80;
LABEL_23:
      *(a1 + 8) = v10;
      return;
    }

    goto LABEL_16;
  }

  if (v2 != 2)
  {
    v9 = v3 == 0;
    v8 = 3;
    goto LABEL_19;
  }

  v6 = a1;
  if ([*v1 isRegistrationRequest])
  {
    a1 = v6;
    if (v3)
    {
      v7 = 2;
      goto LABEL_25;
    }

    if (!v4)
    {
      *v6 = 0;
      v10 = 1;
      goto LABEL_23;
    }

    *v6 = 1;
    *(v6 + 8) = 1;
  }

  else
  {
    *v6 = 1;
    *(v6 + 8) = 0x80;
  }
}

void ASAuthorizationUIContext.otherOptionsText.getter(char *a1@<X8>)
{
  v3 = 0;
  if ((*(v1 + 41) & 1) != 0 || *(v1 + 40) - 7 < 0xFFFFFFFB)
  {
    goto LABEL_28;
  }

  if (![*v1 isRegistrationRequest])
  {
    v9 = ASAuthorizationUIContext.otherLoginChoices.getter();
    if (v9 >> 62)
    {
      v10 = sub_1B1D7C1FC();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 == 1)
    {
      v11 = ASAuthorizationUIContext.otherLoginChoices.getter();
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B273B2E0](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v12 = *(v11 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 loginChoiceKind];
      swift_unknownObjectRelease();
      if (v13 == 4)
      {
        v3 = 1;
        goto LABEL_28;
      }
    }

    v16 = ASAuthorizationUIContext.otherLoginChoices.getter();
    if (v16 >> 62)
    {
      v17 = sub_1B1D7C1FC();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v17 >= 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_28;
  }

  v4 = ASAuthorizationUIContext.otherLoginChoices.getter();
  if (v4 >> 62)
  {
    v5 = sub_1B1D7C1FC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    goto LABEL_20;
  }

  v6 = ASAuthorizationUIContext.otherLoginChoices.getter();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B273B2E0](0, v6);
LABEL_10:

    v8 = [v7 loginChoiceKind];
    swift_unknownObjectRelease();
    if (v8 == 4)
    {
      v3 = 2;
LABEL_28:
      *a1 = v3;
      return;
    }

LABEL_20:
    v14 = ASAuthorizationUIContext.otherLoginChoices.getter();
    if (v14 >> 62)
    {
      v15 = sub_1B1D7C1FC();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 4 * (v15 > 0);
    goto LABEL_28;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
    swift_unknownObjectRetain();
    goto LABEL_10;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t ASAuthorizationUIContext.otherLoginChoices.getter()
{
  v1 = [*v0 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v2 = sub_1B1D7BEEC();

  v9 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_16:
    v3 = sub_1B1D7C1FC();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B273B2E0](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v7 = v9;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = [swift_unknownObjectRetain() loginChoiceKind];
        swift_unknownObjectRelease();
        if ((v6 - 3) >= 4)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1B1D7C2DC();
          sub_1B1D7C30C();
          sub_1B1D7C31C();
          sub_1B1D7C2EC();
        }

        ++v4;
        if (v5 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v7;
}

id ASAuthorizationUIContext.shouldShowManualPasswordEntryButton.getter()
{
  v1 = *v0;
  result = [*v0 isProxiedRequest];
  if (result)
  {
    return ([v1 requestTypes] & 1);
  }

  return result;
}

uint64_t ASAuthorizationUIContext.message(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  if (v6 > 3)
  {
    if (*(v2 + 40) > 5u)
    {
      if (v6 == 6)
      {
        return sub_1B1CEEEE4(a1, a2);
      }

      else
      {
        return sub_1B1CF7724(a2);
      }
    }

    if (v6 == 4)
    {
      if ((*(v2 + 41) & 1) == 0)
      {
        v8 = 0;
        goto LABEL_22;
      }
    }

    else if ((*(v2 + 41) & 1) == 0)
    {
      type metadata accessor for ASAuthorizationUIContext.Message(0);
      goto LABEL_24;
    }
  }

  else
  {
    if (*(v2 + 40) <= 1u)
    {
      if (!*(v2 + 40))
      {
        return sub_1B1CF9888(a2);
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        *a2 = [v8 underlyingAppleIDLoginChoice];
        type metadata accessor for ASAuthorizationUIContext.Message(0);
LABEL_24:

        return swift_storeEnumTagMultiPayload();
      }

LABEL_22:
      type metadata accessor for ASAuthorizationUIContext.Message(v8);
      goto LABEL_24;
    }

    if (v6 == 2)
    {
      return sub_1B1CF64A0(a2);
    }

    if ((*(v2 + 41) & 1) == 0)
    {
      *a2 = *(v2 + 32);
      type metadata accessor for ASAuthorizationUIContext.Message(0);
      goto LABEL_24;
    }
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  type metadata accessor for ASAuthorizationUIContext.Message(0);
  swift_storeEnumTagMultiPayload();

  return sub_1B1CEF6D4(v3, v4);
}

void *ASAuthorizationUIContext.mainButton(for:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 44);
  if (v4 <= 3)
  {
    if (*(v2 + 40) <= 1u)
    {
      if (!*(v2 + 40))
      {
        return sub_1B1CFA18C(a2);
      }

      v6 = 4;
      if (v3 == 1)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      if (v5 == 1)
      {
        v8 = 1;
      }

      else
      {
        v6 = 2 * (v3 != 1);
        v8 = v7;
      }

      v9 = v5 == 0;
      if (*(v2 + 44))
      {
        v10 = v6;
      }

      else
      {
        v10 = 3;
      }

      if (v9)
      {
        v11 = 4;
      }

      else
      {
        v11 = v8;
      }

      v12 = (v11 << 8) | 3;
      *a2 = v10;
      goto LABEL_39;
    }

    if (v4 != 2 && (*(v2 + 41) & 1) == 0)
    {
      *a2 = v3;
      *(a2 + 10) = 1;
      *(a2 + 8) = 1280;
      return result;
    }

    return sub_1B1CF725C(a2);
  }

  if (*(v2 + 40) <= 5u)
  {
    if (v4 == 4)
    {
      if (*(v2 + 41))
      {
        return sub_1B1CF725C(a2);
      }

      if (*(v2 + 43))
      {
        *a2 = 5;
        v12 = 1539;
      }

      else
      {
        *a2 = 1;
        v12 = 515;
      }
    }

    else
    {
      if (*(v2 + 41))
      {
        return sub_1B1CF725C(a2);
      }

      *a2 = 6;
      v12 = 1795;
    }

LABEL_39:
    *(a2 + 10) = 1;
    *(a2 + 8) = v12;
    return result;
  }

  if (v4 == 6)
  {
    return sub_1B1CEF358(result, a2);
  }

  sub_1B1D7B99C();
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_unknownObjectRetain();
    v14 = sub_1B1D7B95C();
    v15 = sub_1B1D7B98C();
    sub_1B1D7B87C();
    v17 = v16;

    result = swift_unknownObjectRelease();
    if (v17)
    {

      v18 = 0;
    }

    else if (((v3 == 1) & v14) != 0)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    *a2 = 7;
    *(a2 + 8) = (v18 << 8) | 3;
    *(a2 + 10) = (v14 & 1) != 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 10) = 2;
    *(a2 + 8) = 0;
  }

  return result;
}

BOOL ASAuthorizationUIContext.onlyHasOtherAccountsLoginChoices.getter()
{
  v0 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  if (v0 >> 62)
  {
LABEL_17:
    v9 = sub_1B1D7C1FC();

    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1)
    {
LABEL_3:
      v2 = ASAuthorizationUIContext.loginChoicesToShow.getter();
      v3 = v2;
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v2 >> 62)
      {
        v5 = sub_1B1D7C1FC();
      }

      else
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = 0;
      while (1)
      {
        v7 = v5 == v6;
        if (v5 == v6)
        {
          goto LABEL_15;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B273B2E0](v6, v3);
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v7;
          }
        }

        else
        {
          if (v6 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_17;
          }

          swift_unknownObjectRetain();
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        v8 = [swift_unknownObjectRetain() loginChoiceKind];
        swift_unknownObjectRelease_n();
        ++v6;
        if ((v8 - 5) >= 2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return 0;
}

void ASAuthorizationUIContext.init(presentationContext:shouldExpandLoginChoices:configurationOverrides:)(id a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  LODWORD(v106) = *(a3 + 18);
  LOBYTE(v9) = *(a3 + 19);
  v10 = *(a3 + 20);
  LOBYTE(v11) = *(a3 + 21);
  if (*a3 == 3)
  {
    v12 = [a1 testOptions];
    if (v12)
    {
      sub_1B1D14CF8(v12, &v112);
      v6 = *(&v112 + 1);
      v5 = v112;
      v10 = BYTE4(v113);
      v7 = v113;
      v13 = v113 | (WORD2(v113) << 32);
      v99 = BYTE1(v113);
      v106 = v13 >> 16;
      v9 = v13 >> 24;
      v11 = HIBYTE(WORD2(v113));
      v14 = v112 == 3;
    }

    else
    {
      v99 = v8;
      v14 = 1;
    }
  }

  else
  {
    v99 = *(a3 + 17);
    v14 = 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v100 = [v15 canEvaluatePolicy:1 error:0];
  v107 = v15;
  v97 = [v15 canEvaluatePolicy:2 error:0];
  *&v115 = v4;
  if ((v5 & 0xFE) == 2)
  {
    v16 = objc_opt_self();
    v17 = v4;
    v18 = [v16 sharedMonitor];
    v19 = [v18 isKeychainSyncEnabled];
  }

  else
  {
    v20 = v4;
    v19 = v5;
  }

  v117[10] = v19 & 1;
  v21 = (v5 & 0xFF00) == 0x200 || v14;
  v108 = v4;
  if (v21)
  {
    v22 = [objc_opt_self() sharedMonitor];
    LOBYTE(v23) = [v22 canKeychainSyncBeEnabled];

    v4 = v108;
  }

  else
  {
    v23 = (v5 >> 8) & 1;
  }

  v96 = v19;
  v117[11] = v23;
  v24 = (v5 & 0xFF000000) == 0x2000000 || v14;
  if (v24)
  {
    v25 = [objc_opt_self() sharedFeatureManager];
    LODWORD(v26) = [v25 shouldAutoFillPasswordsFromKeychain];
  }

  else
  {
    v26 = (v5 >> 24) & 1;
  }

  v117[13] = v26;
  if ((v14 | v7))
  {
    v6 = [v107 biometryType];
  }

  *v117 = v6;
  v27 = v9 == 2 || v14;
  if (v27)
  {
    LOBYTE(v9) = [objc_opt_self() shouldRequireLocalAuthenticationForPasswords];
  }

  v117[16] = v9 & 1;
  v28 = v10 == 2 || v14;
  if (v28)
  {
    v10 = [objc_opt_self() shouldRequireLocalAuthenticationForPlatformCredentials];
  }

  v117[17] = v10 & 1;
  v29 = v11 == 2 || v14;
  if (v29)
  {
    LOBYTE(v11) = [v4 shouldUseFallbackPasskeyUI];
  }

  v117[18] = v11 & 1;
  v117[9] = a2 & 1;
  if (v14 || BYTE2(v5) == 3)
  {
    if (v100)
    {
      v117[12] = 2;
      v30 = 1;
    }

    else if (v97)
    {
      v30 = 1;
      v117[12] = 1;
    }

    else
    {
      v30 = 0;
      v117[12] = 0;
    }
  }

  else
  {
    v117[12] = BYTE2(v5);
    v30 = (v5 & 0xFF0000) != 0;
  }

  v31 = [v4 serviceType];
  if (v31 == 1)
  {
    v35 = [v4 serviceName];
    if (v35)
    {
      v33 = v35;
      v98 = v30;
      v101 = v26;
      v34 = 0;
      goto LABEL_52;
    }

LABEL_57:

    *(a4 + 47) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return;
  }

  if (v31)
  {
    goto LABEL_57;
  }

  v101 = v26;
  v32 = [v4 serviceName];
  if (v32)
  {
    v33 = v32;
    v98 = v30;
    v34 = 1;
  }

  else
  {
    sub_1B1CED540(0, &qword_1EB7751E8, 0x1E6963620);
    v51 = [v4 appIdentifier];
    v52 = sub_1B1D7BE4C();
    v54 = v53;

    v98 = v30;
    v67 = sub_1B1D123E0(v52, v54);
    v33 = [v67 localizedName];

    v34 = 1;
    v4 = v108;
  }

LABEL_52:
  v36 = sub_1B1D7BE4C();
  v38 = v37;

  *(&v115 + 1) = v36;
  *&v116 = v38;
  BYTE8(v116) = v34;
  v39 = v106 == 2 || v14;
  if (v39)
  {
    v40 = [objc_opt_self() sharedManager];
    v41 = [v40 atLeastOneEnabledExtensionSupportsPasskeys];

    LODWORD(v106) = v41;
  }

  else
  {
    LOBYTE(v41) = v106 & 1;
  }

  v117[15] = v41;
  v42 = v99 == 2 || v14;
  if ((v42 & 1) == 0)
  {
    v117[14] = v99 & 1;
    goto LABEL_89;
  }

  v104 = objc_opt_self();
  v43 = [v104 sharedManager];
  v44 = [v43 extensionsSync];

  if (!v44)
  {
    v117[14] = 0;
    goto LABEL_89;
  }

  sub_1B1CED540(0, &qword_1EB775450, 0x1E696ABD0);
  sub_1B1D172D0();
  v45 = sub_1B1D7BF6C();

  if ((v45 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B1D7C1EC();
    sub_1B1D7BF8C();
    v46 = v118;
    v47 = v119;
    v48 = v120;
    v49 = v121;
    v50 = v122;
  }

  else
  {
    v55 = -1 << *(v45 + 32);
    v47 = v45 + 56;
    v48 = ~v55;
    v56 = -v55;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v50 = v57 & *(v45 + 56);

    v49 = 0;
    v46 = v45;
  }

  v58 = (v48 + 64) >> 6;
  while (1)
  {
    v62 = v49;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    v65 = sub_1B1D7C21C();
    if (!v65 || (*&v110[0] = v65, swift_dynamicCast(), (v59 = v112) == 0))
    {
LABEL_84:
      v66 = 0;
LABEL_87:
      v4 = v108;
      goto LABEL_88;
    }

LABEL_75:
    v60 = [v104 sharedManager];
    v61 = [v60 extensionSupportsPasskeys_];

    if (v61)
    {
      v66 = 1;
      goto LABEL_87;
    }
  }

  v63 = v49;
  v64 = v50;
  v4 = v108;
  if (v50)
  {
LABEL_74:
    v50 = (v64 - 1) & v64;
    v59 = *(*(v46 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v64)))));
    if (!v59)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

  while (1)
  {
    v49 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_111;
    }

    if (v49 >= v58)
    {
      break;
    }

    v64 = *(v47 + 8 * v49);
    ++v63;
    if (v64)
    {
      goto LABEL_74;
    }
  }

  v66 = 0;
LABEL_88:
  sub_1B1D17338(v46);

  v117[14] = v66;
LABEL_89:
  v68 = [v4 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v62 = sub_1B1D7BEEC();

  if (v62 >> 62)
  {
    goto LABEL_112;
  }

  v69 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v69)
  {
LABEL_91:
    v70 = 0;
    v71 = &selRef_configurationWithScale_;
    v105 = v69;
    while (1)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x1B273B2E0](v70, v62);
        v73 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
LABEL_107:
          __break(1u);
LABEL_108:

          v83 = 2;
          swift_unknownObjectRelease_n();
          v4 = v108;
          goto LABEL_141;
        }
      }

      else
      {
        if (v70 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          v69 = sub_1B1D7C1FC();
          if (!v69)
          {
            goto LABEL_113;
          }

          goto LABEL_91;
        }

        v72 = *(v62 + 8 * v70 + 32);
        swift_unknownObjectRetain();
        v73 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_107;
        }
      }

      if ([v72 v71[457]] != 2)
      {
        goto LABEL_93;
      }

      objc_opt_self();
      v74 = swift_dynamicCastObjCClass();
      if (!v74)
      {
        goto LABEL_93;
      }

      v75 = v74;
      swift_unknownObjectRetain();
      v76 = [v75 relyingPartyIdentifier];
      if (!v76)
      {
        break;
      }

      v77 = v76;
      v78 = v71;
      v79 = sub_1B1D7BE4C();
      v81 = v80;

      if (v79 == 0x6F632E656C707061 && v81 == 0xE90000000000006DLL)
      {
        goto LABEL_108;
      }

      v82 = sub_1B1D7C50C();

      swift_unknownObjectRelease_n();
      v4 = v108;
      v71 = v78;
      v69 = v105;
      if (v82)
      {

        goto LABEL_109;
      }

LABEL_94:
      ++v70;
      if (v73 == v69)
      {
        goto LABEL_113;
      }
    }

    swift_unknownObjectRelease();
LABEL_93:
    swift_unknownObjectRelease();
    goto LABEL_94;
  }

LABEL_113:

  v84 = v4;
  if ([v4 requestTypes] == 2)
  {
    v83 = 1;
    goto LABEL_140;
  }

  if ([v4 requestTypes] == 1)
  {
    v83 = 0;
    goto LABEL_140;
  }

  v85 = [v4 loginChoices];
  v86 = sub_1B1D7BEEC();

  if (v86 >> 62)
  {
LABEL_148:
    v87 = sub_1B1D7C1FC();
  }

  else
  {
    v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = 0;
  while (1)
  {
    if (v87 == v88)
    {
      goto LABEL_130;
    }

    if ((v86 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x1B273B2E0](v88, v86);
      if (__OFADD__(v88, 1))
      {
LABEL_129:
        __break(1u);
LABEL_130:

LABEL_138:
        v83 = 6;
        v4 = v108;
        goto LABEL_141;
      }
    }

    else
    {
      if (v88 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_148;
      }

      v89 = *(v86 + 8 * v88 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v88, 1))
      {
        goto LABEL_129;
      }
    }

    if ([v89 loginChoiceKind] == 2)
    {
      break;
    }

    v90 = [v89 loginChoiceKind];
    swift_unknownObjectRelease();
    ++v88;
    if (v90 == 7)
    {
      goto LABEL_132;
    }
  }

  swift_unknownObjectRelease();
LABEL_132:

  v84 = v108;
  if ([v108 requestTypes])
  {
    v83 = 6;
LABEL_140:
    v4 = v84;
  }

  else
  {
    if (([v108 requestTypes] & 2) != 0)
    {
      goto LABEL_138;
    }

    if ((v101 | v106))
    {
      if ((v98 | v106))
      {
        v4 = v108;
        if ([v108 requestTypes] == 512)
        {
          v83 = 7;
          goto LABEL_141;
        }

        if ((v96 & 1) != 0 || v106 & 1 | (([v108 isRegistrationRequest] & 1) == 0))
        {
LABEL_109:
          v83 = 2;
        }

        else
        {
          v83 = 4;
        }
      }

      else
      {
        v83 = 3;
        v4 = v108;
      }
    }

    else
    {
      v83 = 5;
      v4 = v108;
    }
  }

LABEL_141:
  v117[8] = v83;
  sub_1B1D14EDC(v4, &v115);

  *&v111[15] = *&v117[15];
  v92 = v116;
  v110[0] = v115;
  v91 = v115;
  v110[1] = v116;
  *v111 = *v117;
  v93 = *v117;
  v94 = v116;
  *a4 = v115;
  *(a4 + 16) = v94;
  *(a4 + 32) = *v111;
  v95 = *&v111[16];
  *(a4 + 50) = v111[18];
  *(a4 + 48) = v95;
  *(v114 + 15) = *&v117[15];
  v113 = v92;
  v114[0] = v93;
  v112 = v91;
  sub_1B1D17268(v110, v109);
  sub_1B1D172A0(&v112);
}

void sub_1B1D14CF8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = 1;
  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v4, qword_1EB782530);
  v5 = a1;
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7BFEC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "Applying test options: %{public}@", v8, 0xCu);
    sub_1B1CDEC18(v9, &qword_1EB775058, &unk_1B1D880B0);
    MEMORY[0x1B273C4C0](v9, -1, -1);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  v11 = sub_1B1D7B7EC();
  v12 = sub_1B1D7B80C();
  v13 = sub_1B1D7B7DC();
  if ((v14 & 1) != 0 || (v15 = v13) == 0)
  {
    v17 = sub_1B1D7B7CC();

    v15 = 0;
    v16 = v17 & 1;
    if (v17 == 2)
    {
      v16 = 3;
    }
  }

  else
  {

    v18 = 0;
    v16 = 2;
  }

  *a2 = v11;
  *(a2 + 1) = 2;
  *(a2 + 2) = v16;
  *(a2 + 3) = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v18;
  *(a2 + 17) = 33686018;
  *(a2 + 21) = 2;
}

void sub_1B1D14EDC(void *a1, unsigned __int8 *a2)
{
  v3 = [a1 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v4 = sub_1B1D7BEEC();

  LOBYTE(v3) = sub_1B1D11AF0(v4, a2);

  if ((v3 & 1) == 0 && a2[40] - 3 >= 3)
  {
    a2[41] = 1;
  }

  if (qword_1EB7749B8 != -1)
  {
    goto LABEL_51;
  }

LABEL_5:
  v5 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v5, qword_1EB782530);
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7C02C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "ASAuthorizationUIContext configuration:", v8, 2u);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  LOBYTE(v87[0]) = a2[44];
  v9 = sub_1B1D7BE5C();
  v11 = v10;
  v12 = sub_1B1D7BD6C();
  v13 = sub_1B1D7C02C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v87[0] = v15;
    *v14 = 136446210;
    v16 = sub_1B1D0D070(v9, v11, v87);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_1B1C8D000, v12, v13, "\tUser verification: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B273C4C0](v15, -1, -1);
    MEMORY[0x1B273C4C0](v14, -1, -1);
  }

  else
  {
  }

  v17 = a2[42];
  if (a2[42])
  {
    v18 = 0xE200000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  v19 = sub_1B1D7BD6C();
  v20 = sub_1B1D7C02C();

  if (os_log_type_enabled(v19, v20))
  {
    if (v17)
    {
      v21 = 28271;
    }

    else
    {
      v21 = 6710895;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v87[0] = v23;
    *v22 = 136446210;
    v24 = sub_1B1D0D070(v21, v18, v87);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1B1C8D000, v19, v20, "\tKeychain sync: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1B273C4C0](v23, -1, -1);
    MEMORY[0x1B273C4C0](v22, -1, -1);
  }

  else
  {
  }

  if ((a2[43] & 1) == 0)
  {
    v25 = sub_1B1D7BD6C();
    v26 = sub_1B1D7C02C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B1C8D000, v25, v26, "\tKeychain sync restricted by configuration profile", v27, 2u);
      MEMORY[0x1B273C4C0](v27, -1, -1);
    }
  }

  v28 = a2[45];
  if (a2[45])
  {
    v29 = 0xE200000000000000;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  v30 = sub_1B1D7BD6C();
  v31 = sub_1B1D7C02C();

  if (os_log_type_enabled(v30, v31))
  {
    if (v28)
    {
      v32 = 28271;
    }

    else
    {
      v32 = 6710895;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v87[0] = v34;
    *v33 = 136446210;
    v35 = sub_1B1D0D070(v32, v29, v87);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_1B1C8D000, v30, v31, "\tAutoFill from Passwords: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B273C4C0](v34, -1, -1);
    MEMORY[0x1B273C4C0](v33, -1, -1);
  }

  else
  {
  }

  v36 = [objc_opt_self() sharedManager];
  v37 = [v36 getEnabledExtensionsSynchronously];

  if (!v37)
  {
    goto LABEL_54;
  }

  sub_1B1CED540(0, &qword_1EB775450, 0x1E696ABD0);
  v38 = sub_1B1D7BEEC();

  v39 = sub_1B1D7BD6C();
  v40 = sub_1B1D7C02C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1B1C8D000, v39, v40, "\tEnabled credential provider extensions:", v41, 2u);
    MEMORY[0x1B273C4C0](v41, -1, -1);
  }

  if (v38 >> 62)
  {
    a2 = sub_1B1D7C1FC();
    if (!a2)
    {
LABEL_53:

LABEL_54:
      v57 = [a1 requestTypes];
      if (!v57)
      {
LABEL_111:

        v74 = sub_1B1D7BD6C();
        v75 = sub_1B1D7C02C();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v87[0] = v77;
          *v76 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
          sub_1B1D181BC(&qword_1EB7750D0, &unk_1EB7753F0, &qword_1B1D88DF0, MEMORY[0x1E69E6310]);
          v78 = sub_1B1D7BDFC();
          v80 = v79;

          v81 = sub_1B1D0D070(v78, v80, v87);

          *(v76 + 4) = v81;
          _os_log_impl(&dword_1B1C8D000, v74, v75, "\tRequest types: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x1B273C4C0](v77, -1, -1);
          MEMORY[0x1B273C4C0](v76, -1, -1);
        }

        else
        {
        }

        return;
      }

      v58 = v57;
      v59 = MEMORY[0x1E69E7CC0];
      v60 = 1;
      while (2)
      {
        if ((v58 & v60) == 0)
        {
          goto LABEL_59;
        }

        if (v60 > 15)
        {
          if (v60 > 63)
          {
            if (v60 == 64)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
              }

              v64 = *(v59 + 2);
              v73 = *(v59 + 3);
              v65 = v64 + 1;
              if (v64 >= v73 >> 1)
              {
                v59 = sub_1B1D0CF64((v73 > 1), v64 + 1, 1, v59);
              }

              v61 = 0xE500000000000000;
              v66 = 0x454C426163;
            }

            else
            {
              if (v60 != 512)
              {
                goto LABEL_58;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
              }

              v64 = *(v59 + 2);
              v69 = *(v59 + 3);
              v65 = v64 + 1;
              v66 = 0xD00000000000001CLL;
              if (v64 >= v69 >> 1)
              {
                v59 = sub_1B1D0CF64((v69 > 1), v64 + 1, 1, v59);
              }

              v61 = 0x80000001B1D9C290;
            }
          }

          else if (v60 == 16)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v71 = *(v59 + 3);
            v65 = v64 + 1;
            v66 = 0xD000000000000019;
            if (v64 >= v71 >> 1)
            {
              v59 = sub_1B1D0CF64((v71 > 1), v64 + 1, 1, v59);
            }

            v61 = 0x80000001B1D9C2D0;
          }

          else
          {
            if (v60 != 32)
            {
              goto LABEL_58;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v67 = *(v59 + 3);
            v65 = v64 + 1;
            v66 = 0xD000000000000016;
            if (v64 >= v67 >> 1)
            {
              v59 = sub_1B1D0CF64((v67 > 1), v64 + 1, 1, v59);
            }

            v61 = 0x80000001B1D9C2B0;
          }
        }

        else if (v60 > 3)
        {
          if (v60 == 4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v72 = *(v59 + 3);
            v65 = v64 + 1;
            v66 = 0xD000000000000014;
            if (v64 >= v72 >> 1)
            {
              v59 = sub_1B1D0CF64((v72 > 1), v64 + 1, 1, v59);
            }

            v61 = 0x80000001B1D9C310;
          }

          else
          {
            if (v60 != 8)
            {
              goto LABEL_58;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
            }

            v64 = *(v59 + 2);
            v68 = *(v59 + 3);
            v65 = v64 + 1;
            if (v64 >= v68 >> 1)
            {
              v59 = sub_1B1D0CF64((v68 > 1), v64 + 1, 1, v59);
            }

            v66 = 0xD000000000000011;
            v61 = 0x80000001B1D9C2F0;
          }
        }

        else
        {
          if (v60 != 1)
          {
            if (v60 == 2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
              }

              v64 = *(v59 + 2);
              v63 = *(v59 + 3);
              v65 = v64 + 1;
              if (v64 >= v63 >> 1)
              {
                v59 = sub_1B1D0CF64((v63 > 1), v64 + 1, 1, v59);
              }

              v61 = 0xE800000000000000;
              v66 = 0x444920656C707041;
              break;
            }

LABEL_58:
            v58 &= ~v60;
            if (!v58)
            {
              goto LABEL_111;
            }

LABEL_59:
            v60 *= 2;
            continue;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_1B1D0CF64(0, *(v59 + 2) + 1, 1, v59);
          }

          v64 = *(v59 + 2);
          v70 = *(v59 + 3);
          v65 = v64 + 1;
          if (v64 >= v70 >> 1)
          {
            v59 = sub_1B1D0CF64((v70 > 1), v64 + 1, 1, v59);
          }

          v61 = 0xE800000000000000;
          v66 = 0x64726F7773736150;
        }

        break;
      }

      *(v59 + 2) = v65;
      v62 = &v59[16 * v64];
      *(v62 + 4) = v66;
      *(v62 + 5) = v61;
      goto LABEL_58;
    }
  }

  else
  {
    a2 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_53;
    }
  }

  v42 = 0;
  v43 = v38 & 0xC000000000000001;
  v83 = v38 & 0xFFFFFFFFFFFFFF8;
  v84 = v38 & 0xC000000000000001;
  v85 = a2;
  while (1)
  {
    if (v43)
    {
      v44 = MEMORY[0x1B273B2E0](v42, v38);
      v45 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v42 >= *(v83 + 16))
      {
        goto LABEL_50;
      }

      v44 = *(v38 + 8 * v42 + 32);
      v45 = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        swift_once();
        goto LABEL_5;
      }
    }

    v46 = v44;
    v47 = sub_1B1D7BD6C();
    v48 = sub_1B1D7C02C();
    if (os_log_type_enabled(v47, v48))
    {
      break;
    }

LABEL_39:
    ++v42;
    if (v45 == a2)
    {
      goto LABEL_53;
    }
  }

  v86 = v45;
  v49 = v38;
  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v87[0] = v51;
  *v50 = 136446210;
  v52 = [v46 _localizedName];

  if (v52)
  {
    v53 = sub_1B1D7BE4C();
    v55 = v54;

    v56 = sub_1B1D0D070(v53, v55, v87);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_1B1C8D000, v47, v48, "\t\t%{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B273C4C0](v51, -1, -1);
    MEMORY[0x1B273C4C0](v50, -1, -1);

    v38 = v49;
    v45 = v86;
    v43 = v84;
    a2 = v85;
    goto LABEL_39;
  }

  __break(1u);
}

BOOL _s22AuthenticationServices24ASAuthorizationUIContextV10MainButtonV0F4TextO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) != 2)
    {
      if (v2 <= 3)
      {
        if (v2 > 1)
        {
          if (v2 == 2)
          {
            if (v4 != 3 || v3 != 2)
            {
              goto LABEL_45;
            }
          }

          else if (v4 != 3 || v3 != 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v2)
          {
            if (v4 == 3 && v3 == 1)
            {
              return v3 & 1;
            }

            goto LABEL_45;
          }

          if (v4 != 3 || v3)
          {
            goto LABEL_45;
          }
        }
      }

      else if (v2 <= 5)
      {
        if (v2 == 4)
        {
          if (v4 != 3 || v3 != 4)
          {
            goto LABEL_45;
          }
        }

        else if (v4 != 3 || v3 != 5)
        {
          goto LABEL_45;
        }
      }

      else if (v2 == 6)
      {
        if (v4 != 3 || v3 != 6)
        {
          goto LABEL_45;
        }
      }

      else if (v2 == 7)
      {
        if (v4 != 3 || v3 != 7)
        {
          goto LABEL_45;
        }
      }

      else if (v4 != 3 || v3 != 8)
      {
        goto LABEL_45;
      }

      return 1;
    }

    if (v4 == 2)
    {
      return (v3 ^ v2 ^ 1) & 1;
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8))
      {
        return v2 == v3;
      }

      goto LABEL_45;
    }

    if (v4 == 1)
    {
      return (v3 ^ v2 ^ 1) & 1;
    }
  }

LABEL_45:
  LOBYTE(v3) = 0;
  return v3 & 1;
}

BOOL _s22AuthenticationServices24ASAuthorizationUIContextV10MainButtonV0F6ActionO2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 4)
  {
    switch(v2)
    {
      case 5u:
        if (v3 != 5)
        {
          return 0;
        }

        break;
      case 6u:
        if (v3 != 6)
        {
          return 0;
        }

        break;
      case 7u:
        if (v3 != 7)
        {
          return 0;
        }

        break;
      default:
LABEL_16:
        if ((v3 - 2) >= 6)
        {
          return (v3 ^ v2 ^ 1) & 1;
        }

        return 0;
    }

    return 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    goto LABEL_16;
  }

  return v3 == 4;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV10MainButtonV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      result = 0;
      if (v6 != 2)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (v2 <= 3)
    {
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          result = 0;
          if (v6 == 3 && v5 == 2)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = 0;
          if (v6 == 3 && v5 == 3)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        result = 0;
        if (v2)
        {
          if (v6 == 3 && v5 == 1)
          {
            goto LABEL_13;
          }
        }

        else if (v6 == 3 && !v5)
        {
          goto LABEL_13;
        }
      }
    }

    else if (v2 <= 5)
    {
      if (v2 == 4)
      {
        result = 0;
        if (v6 == 3 && v5 == 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = 0;
        if (v6 == 3 && v5 == 5)
        {
          goto LABEL_13;
        }
      }
    }

    else if (v2 == 6)
    {
      result = 0;
      if (v6 == 3 && v5 == 6)
      {
        goto LABEL_13;
      }
    }

    else if (v2 == 7)
    {
      result = 0;
      if (v6 == 3 && v5 == 7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = 0;
      if (v6 == 3 && v5 == 8)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (!*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        v8 = 0;
      }

      else
      {
        v8 = v2 == v5;
      }

      if (!v8)
      {
        return 0;
      }

LABEL_13:
      if (v3 > 4)
      {
        switch(v3)
        {
          case 5:
            if (v7 != 5)
            {
              return 0;
            }

            return v4 ^ *(a2 + 10) ^ 1u;
          case 6:
            if (v7 != 6)
            {
              return 0;
            }

            return v4 ^ *(a2 + 10) ^ 1u;
          case 7:
            if (v7 != 7)
            {
              return 0;
            }

            return v4 ^ *(a2 + 10) ^ 1u;
        }
      }

      else
      {
        switch(v3)
        {
          case 2:
            if (v7 != 2)
            {
              return 0;
            }

            return v4 ^ *(a2 + 10) ^ 1u;
          case 3:
            if (v7 != 3)
            {
              return 0;
            }

            return v4 ^ *(a2 + 10) ^ 1u;
          case 4:
            if (v7 != 4)
            {
              return 0;
            }

            return v4 ^ *(a2 + 10) ^ 1u;
        }
      }

      if ((v7 - 2) < 6)
      {
        return 0;
      }

      if ((v7 ^ v3))
      {
        return 0;
      }

      return v4 ^ *(a2 + 10) ^ 1u;
    }

    result = 0;
    if (v6 == 1)
    {
LABEL_12:
      if (((v5 ^ v2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1B1CEF6D4(*a2, *(a2 + 8));
    sub_1B1CEF6D4(v3, v2);
    sub_1B1CF8E9C(v3, v2);
    sub_1B1CF8E9C(v5, v4);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_1B1D7C50C();
    sub_1B1CEF6D4(v5, v4);
    sub_1B1CEF6D4(v3, v2);
    sub_1B1CF8E9C(v3, v2);
    sub_1B1CF8E9C(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_1B1CEF6D4(v6, v7);
  sub_1B1CEF6D4(v3, v2);
  sub_1B1CF8E9C(v3, v2);
  sub_1B1CF8E9C(v3, v2);
  return 1;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV22ConfigurationOverridesV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 1);
  v7 = a1[16];
  v8 = a1[17];
  v9 = a1[18];
  v10 = a1[19];
  v11 = a1[20];
  v12 = a1[21];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[17];
  v18 = a2[18];
  v19 = a2[19];
  v20 = a2[20];
  v21 = a2[21];
  if (v2 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v13 == 2 || ((v13 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v14 == 2 || ((v14 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4 == 3)
  {
    if (v15 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v15 == 3 || v4 != v15)
    {
      return result;
    }
  }

  if (v5 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v16 == 2 || ((v16 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v7)
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 1))
    {
      v23 = a2[16];
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  if (v8 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v17 == 2 || ((v17 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  if (v9 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v18 == 2 || ((v18 ^ v9) & 1) != 0)
    {
      return result;
    }
  }

  if (v10 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v19 == 2 || ((v19 ^ v10) & 1) != 0)
    {
      return result;
    }
  }

  if (v11 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }

LABEL_48:
    if (v12 == 2)
    {
      if (v21 != 2)
      {
        return 0;
      }
    }

    else if (v21 == 2 || ((v21 ^ v12) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v20 != 2 && ((v20 ^ v11) & 1) == 0)
  {
    goto LABEL_48;
  }

  return result;
}

unint64_t _s22AuthenticationServices24ASAuthorizationUIContextV5TitleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((v5 & 0xC0) == 0x40)
      {
        return (v4 ^ v2 ^ 1) & 1;
      }

      goto LABEL_51;
    }

    v7 = v3;
    v8 = *(a1 + 8);
    if (__PAIR128__(-128, 1) >= __PAIR128__(v7, v2))
    {
      if (v2 | v8 ^ 0x80)
      {
        if ((v5 & 0xC0) != 0x80 || v4 != 1)
        {
          goto LABEL_51;
        }
      }

      else if ((v5 & 0xC0) != 0x80 || v4)
      {
        goto LABEL_51;
      }
    }

    else if (v8 == 128 && v2 == 2)
    {
      if ((v5 & 0xC0) != 0x80 || v4 != 2)
      {
        goto LABEL_51;
      }
    }

    else if (v8 == 128 && v2 == 3)
    {
      if ((v5 & 0xC0) != 0x80 || v4 != 3)
      {
        goto LABEL_51;
      }
    }

    else if ((v5 & 0xC0) != 0x80 || v4 != 4)
    {
      goto LABEL_51;
    }

    if (v5 == 128)
    {
      return 1;
    }
  }

  else if (v5 < 0x40)
  {
    if ((v3 & 1) == 0)
    {
      if ((v5 & 1) != 0 || v2 != v4)
      {
        goto LABEL_51;
      }

      return 1;
    }

    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if ((v5 & 1) == 0 || v4 != 2)
        {
          goto LABEL_51;
        }
      }

      else if ((v5 & 1) == 0 || v4 <= 2)
      {
        goto LABEL_51;
      }

      return 1;
    }

    if (v2)
    {
      if ((v5 & 1) != 0 && v4 == 1)
      {
        return v4 & 1;
      }

      goto LABEL_51;
    }

    if ((v5 & 1) != 0 && !v4)
    {
      return 1;
    }
  }

LABEL_51:
  LOBYTE(v4) = 0;
  return v4 & 1;
}