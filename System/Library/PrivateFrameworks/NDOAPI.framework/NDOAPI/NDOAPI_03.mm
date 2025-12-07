uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A38, &unk_22DEC6570);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DE36248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE45FE4(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE4633C(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.meta.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A38, &unk_22DEC6570);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DE366E8;
}

void sub_22DE366E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE45FE4(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE45FE4(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37A38, &unk_22DEC6570);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37A38, &unk_22DEC6570);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.clearMeta()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE45FE4(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.common.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A40, &unk_22DEC7330);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v10;
  *(a1 + 2) = v10;
  *(a1 + 3) = v10;
  *(a1 + 4) = v10;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = v8[10];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = &a1[v8[11]];
  *v13 = 0;
  v13[8] = 1;
  v14 = &a1[v8[12]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a1[v8[13]];
  *v15 = 0;
  *(v15 + 1) = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A40, &unk_22DEC7330);
  }

  return result;
}

uint64_t sub_22DE36DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE45FE4(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE4633C(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.common.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A40, &unk_22DEC7330);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    *(v14 + 2) = v19;
    *(v14 + 3) = v19;
    *(v14 + 4) = v19;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v20 = v9[10];
    v21 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    v22 = &v14[v9[11]];
    *v22 = 0;
    v22[8] = 1;
    v23 = &v14[v9[12]];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v14[v9[13]];
    *v24 = 0;
    *(v24 + 1) = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A40, &unk_22DEC7330);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  return sub_22DE37268;
}

void sub_22DE37268(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE45FE4(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE45FE4(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.hasCommon.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37A40, &unk_22DEC7330);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37A40, &unk_22DEC7330);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.clearCommon()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE45FE4(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.data.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37BA8, &unk_22DEC7320);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  }

  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v8[6]) = 7;
  v10 = (a1 + v8[7]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[8]);
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37BA8, &unk_22DEC7320);
  }

  return result;
}

uint64_t sub_22DE378CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE45FE4(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE4633C(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37BA8, &unk_22DEC7320);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37BA8, &unk_22DEC7320);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = sub_22DE0501C(MEMORY[0x277D84F90]);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + v9[6]) = 7;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37BA8, &unk_22DEC7320);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  }

  return sub_22DE37D40;
}

void sub_22DE37D40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE45FE4(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37BA8, &unk_22DEC7320);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE45FE4(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37BA8, &unk_22DEC7320);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.hasData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37BA8, &unk_22DEC7320);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37BA8, &unk_22DEC7320);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CIRequest.clearData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE45FE4(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37BA8, &unk_22DEC7320);
  swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.checkInTrigger.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.checkInTrigger.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE5BDA0;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.notificationID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.pushToken.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(v1 + *(v6 + 20), v5, &qword_27DA38088, &unk_22DEC8220);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE4633C(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DE38754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(a1 + *(v7 + 20), v6, &qword_27DA38088, &unk_22DEC8220);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE4633C(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DE388D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 20);
  sub_22DDEF284(a2 + v8, &qword_27DA38088, &unk_22DEC8220);
  sub_22DE4633C(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DE4633C(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.meta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38088, &unk_22DEC8220);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  return sub_22DE38CFC;
}

void sub_22DE38CFC(uint64_t **a1, char a2)
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
    sub_22DE58BCC((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DE4633C(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE58C34(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DE4633C(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(v0 + *(v4 + 20), v3, &qword_27DA38088, &unk_22DEC8220);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA38088, &unk_22DEC8220);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 20);
  sub_22DDEF284(v0 + v1, &qword_27DA38088, &unk_22DEC8220);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22DE38FE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(a1 + *(v7 + 24), v6, &qword_27DA37BC8, qword_22DEC7358);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE4633C(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = sub_22DE05B84(v10);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = a2 + *(v8 + 28);
  *v11 = 0;
  v11[8] = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37BC8, qword_22DEC7358);
  }

  return result;
}

uint64_t sub_22DE39168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 24);
  sub_22DDEF284(a2 + v8, &qword_27DA37BC8, qword_22DEC7358);
  sub_22DE4633C(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.data.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37BC8, qword_22DEC7358);
  sub_22DE4633C(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE05B84(v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1 + *(v3 + 28);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.data.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37BC8, qword_22DEC7358);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = sub_22DE05B84(v17);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v18 = v14 + *(v9 + 28);
    *v18 = 0;
    v18[8] = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37BC8, qword_22DEC7358);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  }

  return sub_22DE395EC;
}

void sub_22DE395EC(uint64_t **a1, char a2)
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
    sub_22DE58BCC((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    sub_22DDEF284(v9 + v3, &qword_27DA37BC8, qword_22DEC7358);
    sub_22DE4633C(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE58C34(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37BC8, qword_22DEC7358);
    sub_22DE4633C(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.hasData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(v0 + *(v4 + 24), v3, &qword_27DA37BC8, qword_22DEC7358);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37BC8, qword_22DEC7358);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.clearData()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA37BC8, qword_22DEC7358);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.nextCheckInEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.nextCheckInEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

uint64_t sub_22DE39A60(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.clearNextCheckInEpoch()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.amsStates.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.postFollowUpData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(v2, &v10 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_22DE4633C(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  if (qword_27DA37778 != -1)
  {
    swift_once();
  }

  *(a1 + v8) = qword_27DA37FE8;
}

uint64_t sub_22DE39EC4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Action.postFollowUpData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
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
  sub_22DDF0028(v2, v9, &qword_27DA37BC0, &qword_22DEC7350);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22DE4633C(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      return sub_22DE3A1A8;
    }

    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v16 = *(v10 + 20);
  if (qword_27DA37778 != -1)
  {
    swift_once();
  }

  *(v13 + v16) = qword_27DA37FE8;

  return sub_22DE3A1A8;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.removeFollowUpData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(v2, &v10 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22DE4633C(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v9 = (a1 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  *(a2 + *(result + 24)) = 2;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Action.removeFollowUpData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
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
  sub_22DDF0028(v1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    *(v12 + *(v9 + 24)) = 2;
    return sub_22DE3A5FC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    goto LABEL_15;
  }

  sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
  return sub_22DE3A5FC;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.coverageData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_22DDF0028(v2, &v9 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22DE4633C(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE3A7B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_22DDF0028(a1, &v9 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22DE4633C(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Action.coverageData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_22DDF0028(v1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_15:
    *v11 = MEMORY[0x277D84F90];
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    return sub_22DE3ABB4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    goto LABEL_15;
  }

  sub_22DE4633C(v8, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
  return sub_22DE3ABB4;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_Action.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_22DDF0028(v2, &v15 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22DE4633C(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v9 = (a1 + result[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + result[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + result[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + result[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + result[9]);
  *v13 = 0;
  v13[1] = 0;
  *(a1 + result[10]) = 4;
  v14 = (a1 + result[11]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + result[9]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + result[10]) = 4;
  v9 = (a2 + result[11]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Action.notificationData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37BC0, &qword_22DEC7350);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v13 + v10[8]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v13 + v10[9]);
    *v20 = 0;
    v20[1] = 0;
    *(v13 + v10[10]) = 4;
    v21 = (v13 + v10[11]);
    *v21 = 0;
    v21[1] = 0;
    return sub_22DE3B0C0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    goto LABEL_15;
  }

  sub_22DE4633C(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  return sub_22DE3B0C0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.alertData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_22DDF0028(v2, &v16 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_22DE4633C(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[8];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  return (v15)(a1 + v9[9], 1, 1, v14);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v3[8];
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + v3[9];

  return v11(v9, 1, 1, v8);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Action.alertData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_22DDF0028(v2, v9, &qword_27DA37BC0, &qword_22DEC7350);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v13 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v10[8];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
    v21 = *(*(v20 - 8) + 56);
    v21(v13 + v19, 1, 1, v20);
    v21(v13 + v10[9], 1, 1, v20);
    return sub_22DE3B6A4;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    goto LABEL_15;
  }

  sub_22DE4633C(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  return sub_22DE3B6A4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.reloadConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(v2, &v10 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_22DE4633C(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v9 = (a1 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE3B85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(a1, &v10 - v5, &qword_27DA37BC0, &qword_22DEC7350);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37BC0, &qword_22DEC7350);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_22DE4633C(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    }

    sub_22DE58C34(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v9 = (a2 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE3B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_22DE58BCC(a1, &v17 - v13, a6);
  sub_22DDEF284(a2, &qword_27DA37BC0, &qword_22DEC7350);
  sub_22DE4633C(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_22DE3BB00(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_22DDEF284(v3, &qword_27DA37BC0, &qword_22DEC7350);
  sub_22DE4633C(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_Action.reloadConfigData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
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
  sub_22DDF0028(v1, v8, &qword_27DA37BC0, &qword_22DEC7350);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37BC0, &qword_22DEC7350);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    return sub_22DE3BE14;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_22DE58C34(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    goto LABEL_15;
  }

  sub_22DE4633C(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  return sub_22DE3BE14;
}

void sub_22DE3BE58(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    sub_22DE58BCC((*a1)[3], v10, a5);
    sub_22DDEF284(v13, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_22DE58C34(v11, a6);
  }

  else
  {
    sub_22DDEF284(**a1, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.requiresAck.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_Action.requiresAck.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.acknowledgeData.getter()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.acknowledgeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22DE3C18C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE3C228(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  sub_22DEC48B4();
  sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v4 = v3[5];
  *(a1 + v4) = sub_22DE0501C(MEMORY[0x277D84F90]);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + v3[7]) = 7;
  *(a1 + v3[8]) = 2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.showOnLockScreen.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.showOnLockScreen.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE5BDA0;
}

uint64_t sub_22DE3C584@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE3C5EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 24));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE3C65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE3C770@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE3C7D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE3C848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.body.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE3C95C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE3C99C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE3CA04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 32));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE3CA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.openLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE3CB88(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.dismissLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  *(a2 + result[5]) = 2;
  v4 = (a2 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.followUpID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3CE30;
}

uint64_t sub_22DE3CE9C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v6 = sub_22DE4E6D0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 32) = v3;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.targetApp.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v6 = sub_22DE4E6D0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 32) = v3;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.targetApp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 32) & 1;
  return sub_22DE3D068;
}

void sub_22DE3D068(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 32) = v5;

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasTargetApp.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 32) != 2;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearTargetApp()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 32) = 2;
}

uint64_t sub_22DE3D20C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 48))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3D280(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.title.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 48))
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3D494;
}

void sub_22DE3D494(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 40) = v3;
    *(v8 + 48) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 40) = v3;
    *(v12 + 48) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearTitle()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
}

uint64_t sub_22DE3D658@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3D6CC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 56) = v4;
  *(v7 + 64) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.titleWhenInGroup.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.titleWhenInGroup.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 64))
  {
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3D8E0;
}

void sub_22DE3D8E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 56) = v3;
    *(v8 + 64) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 56) = v3;
    *(v12 + 64) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearTitleWhenInGroup()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
}

uint64_t sub_22DE3DAA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 80))
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3DB18(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 72) = v4;
  *(v7 + 80) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.singularContent.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.singularContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 80))
  {
    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3DD2C;
}

void sub_22DE3DD2C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 72) = v3;
    *(v8 + 80) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 72) = v3;
    *(v12 + 80) = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasSingularContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 80) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearSingularContent()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
}

uint64_t sub_22DE3DF44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 96))
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 96);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3DFB8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 88) = v4;
  *(v7 + 96) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.pluralContent.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.pluralContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 96))
  {
    v7 = *(v6 + 88);
    v8 = *(v6 + 96);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3E1CC;
}

void sub_22DE3E1CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 88) = v3;
    *(v8 + 96) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 88) = v3;
    *(v12 + 96) = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasPluralContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 96) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearPluralContent()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.groupTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v2 = *(v1 + 104);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE3E454@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 112))
  {
    v4 = *(v3 + 104);
    v5 = *(v3 + 112);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3E4C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 104) = v4;
  *(v7 + 112) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.groupTitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 104) = a1;
  *(v8 + 112) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.groupTitle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 112))
  {
    v7 = *(v6 + 104);
    v8 = *(v6 + 112);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3E6DC;
}

void sub_22DE3E6DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 104) = v3;
    *(v8 + 112) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 104) = v3;
    *(v12 + 112) = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasGroupTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 112) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearGroupTitle()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
}

uint64_t sub_22DE3E8F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 128))
  {
    v4 = *(v3 + 120);
    v5 = *(v3 + 128);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3E968(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 120) = v4;
  *(v7 + 128) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.groupContent.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 120) = a1;
  *(v8 + 128) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.groupContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 128))
  {
    v7 = *(v6 + 120);
    v8 = *(v6 + 128);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3EB7C;
}

void sub_22DE3EB7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 120) = v3;
    *(v8 + 128) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 120) = v3;
    *(v12 + 128) = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasGroupContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 128) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearGroupContent()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
}

uint64_t sub_22DE3ED94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v6 = sub_22DE4E6D0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 136) = v3;
  *(v6 + 144) = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.expirationEpoch.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v6 = sub_22DE4E6D0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 136) = a1;
  *(v6 + 144) = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.expirationEpoch.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 144))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_22DE3EF70;
}

void sub_22DE3EF70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 136) = v3;
  *(v7 + 144) = 0;

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearExpirationEpoch()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 136) = 0;
  *(v3 + 144) = 1;
}

uint64_t sub_22DE3F0CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 160))
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 160);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE3F140(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 152) = v4;
  *(v7 + 160) = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE4E6D0(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.serialNumber.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 160))
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE3F354;
}

void sub_22DE3F354(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE4E6D0(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 152) = v3;
    *(v8 + 160) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE4E6D0(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 152) = v3;
    *(v12 + 160) = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasSerialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 160) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearSerialNumber()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
}

uint64_t sub_22DE3F56C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v6 = sub_22DE4E6D0(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 168) = v3;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.showBadge.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v6 = sub_22DE4E6D0(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 168) = a1 & 1;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.showBadge.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 168) & 1;
  return sub_22DE3F73C;
}

void sub_22DE3F73C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 168) = v5;

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasShowBadge.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  swift_beginAccess();
  return *(v1 + 168) != 2;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearShowBadge()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE4E6D0(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  *(v3 + 168) = 2;
}

uint64_t sub_22DE3F8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE4E6D0(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE4633C(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37D70, &qword_22DEC7958);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.notificationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE4E6D0(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37D70, &qword_22DEC7958);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.notificationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37D70, &qword_22DEC7958);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + v9[5]) = 2;
    v19 = (v14 + v9[6]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[7]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v14 + v9[8]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[9]);
    *v22 = 0;
    v22[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D70, &qword_22DEC7958);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  return sub_22DE3FEC8;
}

void sub_22DE3FEC8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE4E6D0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37D70, &qword_22DEC7958);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE4E6D0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37D70, &qword_22DEC7958);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearNotificationData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37D70, &qword_22DEC7958);
  swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.actionData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37D90, &unk_22DEC7970);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = *(v9 + 20);
    if (qword_27DA37788 != -1)
    {
      swift_once();
    }

    *(v14 + v19) = qword_27DA38008;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D90, &unk_22DEC7970);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  }

  return sub_22DE4052C;
}

void sub_22DE4052C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE4E6D0(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37D90, &unk_22DEC7970);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE4E6D0(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37D90, &unk_22DEC7970);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.hasActionData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37D90, &unk_22DEC7970);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37D90, &unk_22DEC7970);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData.clearActionData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE4E6D0(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37D90, &unk_22DEC7970);
  swift_endAccess();
}

uint64_t sub_22DE40A18(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE40A90@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = *(a1 + *(a2(0) + 20));
  swift_beginAccess();
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
}

uint64_t sub_22DE40B08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t))
{
  v11 = *a1;
  v10 = a1[1];
  v12 = *((a5)(0, a2, a3, a4) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a6(0);
    swift_allocObject();
    v14 = a7(v14);
    *(a2 + v12) = v14;
  }

  swift_beginAccess();
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
}

uint64_t sub_22DE40C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v11 = *(a3(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4(0);
    swift_allocObject();
    v13 = a5(v13);
    *(v8 + v11) = v13;
  }

  swift_beginAccess();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.dismissSheetTitle.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 24))
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE40D94;
}

void sub_22DE40DC0(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 96);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v6 + 96);
      v14 = *(v6 + 88);
      a3(0);
      swift_allocObject();
      v12 = a4(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 16) = v7;
    *(v12 + 24) = v9;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v10 + v8);
    if ((v15 & 1) == 0)
    {
      v17 = *(v6 + 96);
      v18 = *(v6 + 88);
      a3(0);
      swift_allocObject();
      v16 = a4(v16);
      *(v18 + v17) = v16;
    }

    swift_beginAccess();
    *(v16 + 16) = v7;
    *(v16 + 24) = v9;
  }

  free(v6);
}

BOOL sub_22DE40F20(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return *(v2 + 24) != 0;
}

uint64_t sub_22DE40FBC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v8 = a3(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.dismissSheetContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE410E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_22DE41154(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE5174C(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  v7[4] = v4;
  v7[5] = v3;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.dismissSheetContent.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v8 = sub_22DE5174C(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v8[4] = a1;
  v8[5] = a2;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.dismissSheetContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 40))
  {
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_22DE41368;
}

void sub_22DE41368(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v8 = sub_22DE5174C(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    v8[4] = v3;
    v8[5] = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v12 = sub_22DE5174C(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    v12[4] = v3;
    v12[5] = v5;
  }

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.hasDismissSheetContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.clearDismissSheetContent()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v3 = sub_22DE5174C(v3);
    *(v0 + v1) = v3;
  }

  swift_beginAccess();
  v3[4] = 0;
  v3[5] = 0;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.acceptAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37D88, &unk_22DEC8210);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE41828;
}

void sub_22DE41828(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE5174C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37D88, &unk_22DEC8210);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE5174C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37D88, &unk_22DEC8210);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.hasAcceptAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37D88, &unk_22DEC8210);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37D88, &unk_22DEC8210);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.clearAcceptAction()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE5174C(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__acceptAction;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
}

uint64_t sub_22DE41CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE5174C(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE4633C(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.dismissAction.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE5174C(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.dismissAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37D88, &unk_22DEC8210);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE422F0;
}

void sub_22DE422F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE5174C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37D88, &unk_22DEC8210);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE5174C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37D88, &unk_22DEC8210);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.hasDismissAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37D88, &unk_22DEC8210);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37D88, &unk_22DEC8210);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.clearDismissAction()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE5174C(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__dismissAction;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
}

uint64_t sub_22DE427B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *(v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_22DDF0028(v8 + v9, v7, &qword_27DA37D88, &unk_22DEC8210);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22DE4633C(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a2 + v10[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v10[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DE42984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE58BCC(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE5174C(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE4633C(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.rejectAction.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE5174C(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE4633C(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37D88, &unk_22DEC8210);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.rejectAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37D88, &unk_22DEC8210);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[7];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE42F8C;
}

void sub_22DE42F8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE58BCC(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE5174C(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37D88, &unk_22DEC8210);
    swift_endAccess();
    sub_22DE58C34(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE5174C(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE4633C(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37D88, &unk_22DEC8210);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.hasRejectAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20));
  v5 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0028(v4 + v5, v3, &qword_27DA37D88, &unk_22DEC8210);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_22DDEF284(v3, &qword_27DA37D88, &unk_22DEC8210);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData.clearRejectAction()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData._StorageClass(0);
    swift_allocObject();
    v7 = sub_22DE5174C(v7);
    *(v1 + v5) = v7;
  }

  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI46Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__rejectAction;
  swift_beginAccess();
  sub_22DDF0208(v4, v7 + v9, &qword_27DA37D88, &unk_22DEC8210);
  swift_endAccess();
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.followUpID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.followUpClient.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData.followUpClient.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE5BDA0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageData.serialNumbers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22DE436AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE43748(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22DE43810@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE43878(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE438E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.notificationID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE439FC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE43B1C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.body.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE43D1C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 36));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_22DE43D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 36));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE43DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.footer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE43F08(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.interruptionLevel.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.interruptionLevel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE5BDA0;
}

uint64_t sub_22DE44000@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DE44064(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.actionURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.actionURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_NotificationData.clearActionURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0) + 44));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.actionURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AlertData.alertID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AlertData.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AlertData.message.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AlertData.defaultButton.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 32);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37C10, &unk_22DEC7590);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  return sub_22DE448D8;
}

void sub_22DE448D8(uint64_t **a1, char a2)
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
    sub_22DE58BCC((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    sub_22DDEF284(v9 + v3, &qword_27DA37C10, &unk_22DEC7590);
    sub_22DE4633C(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE58C34(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37C10, &unk_22DEC7590);
    sub_22DE4633C(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_AlertData.hasDefaultButton.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(v0 + *(v4 + 32), v3, &qword_27DA37C10, &unk_22DEC7590);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37C10, &unk_22DEC7590);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AlertData.clearDefaultButton()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 32);
  sub_22DDEF284(v0 + v1, &qword_27DA37C10, &unk_22DEC7590);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AlertData.alternateButton.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 36);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37C10, &unk_22DEC7590);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    sub_22DE4633C(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  return sub_22DE5BDC0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_AlertData.hasAlternateButton.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  sub_22DDF0028(v0 + *(v4 + 36), v3, &qword_27DA37C10, &unk_22DEC7590);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37C10, &unk_22DEC7590);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AlertData.clearAlternateButton()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0) + 36);
  sub_22DDEF284(v0 + v1, &qword_27DA37C10, &unk_22DEC7590);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData.configID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

uint64_t sub_22DE4512C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22DEC81D0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_22DEC4AE4();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE45330()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FA0);
  __swift_project_value_buffer(v0, qword_27DA37FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "PASSIVE";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ACTIVE";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "TIME_SENSITIVE";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CRITICAL";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE455C0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CBD0);
  __swift_project_value_buffer(v0, qword_28145CBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22DEC81E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "POST_FOLLOW_UP";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "REMOVE_FOLLOW_UP";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "UPDATE_COVERAGE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "DELETE_COVERAGE";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "SHOW_NOTIFICATION";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "SHOW_ALERT";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "RELOAD_CONFIG";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE45908()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C080);
  __swift_project_value_buffer(v0, qword_28145C080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "DEV_BOOT_UP";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "SIGN_IN";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "PAIRED_DEVICES_CHANGE";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ACTIVE_WATCH_CHANGE";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SCHEDULED";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "LANG_UPDATE";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "PUSH_NOTIFICATION";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE45C78()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CFE0);
  __swift_project_value_buffer(v0, qword_28145CFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "common";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE45EB0()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_28145D128 = v0;
  return result;
}

uint64_t sub_22DE45FE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v18, v11, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v11, v1 + v12, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v19, v8, &qword_27DA37A40, &unk_22DEC7330);
  swift_beginAccess();
  sub_22DDF0208(v8, v1 + v14, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v20, v5, &qword_27DA37BA8, &unk_22DEC7320);

  swift_beginAccess();
  sub_22DDF0208(v5, v1 + v16, &qword_27DA37BA8, &unk_22DEC7320);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE4633C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE463A4()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data, &qword_27DA37BA8, &unk_22DEC7320);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DE464C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DE46730(a2, a1, a3, a4);
        break;
      case 2:
        sub_22DE46654(a2, a1, a3, a4);
        break;
      case 1:
        sub_22DE46578(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_22DE46578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DDF2564(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE46654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF2564(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE46730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  sub_22DDF2564(&qword_28145C148, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE4684C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE468B4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DE46ADC(a1, a2, a3, a4);
    return sub_22DE46D04(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE468B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDF2564(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DE46ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDF2564(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

uint64_t sub_22DE46D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37BA8, &unk_22DEC7320);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37BA8, &unk_22DEC7320);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  sub_22DDF2564(&qword_28145C148, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
}

BOOL sub_22DE46F70(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v67 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38358, &unk_22DECA2A0);
  MEMORY[0x28223BE20](v65);
  v68 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v75 = &v63 - v8;
  v73 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  MEMORY[0x28223BE20](v71);
  v74 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v69 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v78 = &v63 - v14;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v77 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - v25;
  v27 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v27, v26, &qword_27DA37A38, &unk_22DEC6570);
  v28 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  v29 = v79;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_22DDF0028(v26, v21, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(v29 + v28, &v21[v30], &qword_27DA37A38, &unk_22DEC6570);
  v31 = *(v16 + 48);
  if (v31(v21, 1, v15) == 1)
  {

    sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
    v32 = a1;
    if (v31(&v21[v30], 1, v15) == 1)
    {
      sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_27DA38368;
    v35 = &qword_22DECA2B0;
    v36 = v21;
LABEL_14:
    sub_22DDEF284(v36, v34, v35);
    goto LABEL_15;
  }

  v32 = a1;
  v33 = v77;
  sub_22DDF0028(v21, v77, &qword_27DA37A38, &unk_22DEC6570);
  if (v31(&v21[v30], 1, v15) == 1)
  {

    sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DE58C34(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    goto LABEL_6;
  }

  v37 = v70;
  sub_22DE4633C(&v21[v30], v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  v38 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v33, v37);
  sub_22DE58C34(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DE58C34(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v39 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  v40 = v78;
  sub_22DDF0028(v32 + v39, v78, &qword_27DA37A40, &unk_22DEC7330);
  v41 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  v42 = *(v71 + 48);
  v43 = v74;
  sub_22DDF0028(v40, v74, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDF0028(v29 + v41, v43 + v42, &qword_27DA37A40, &unk_22DEC7330);
  v44 = *(v72 + 48);
  v45 = v73;
  if (v44(v43, 1, v73) != 1)
  {
    v49 = v69;
    sub_22DDF0028(v43, v69, &qword_27DA37A40, &unk_22DEC7330);
    v50 = v44(v43 + v42, 1, v45);
    v47 = v76;
    v48 = v75;
    if (v50 == 1)
    {
      sub_22DDEF284(v78, &qword_27DA37A40, &unk_22DEC7330);
      sub_22DE58C34(v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
      goto LABEL_13;
    }

    v52 = v43 + v42;
    v53 = v64;
    sub_22DE4633C(v52, v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v54 = _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBodyV2eeoiySbAC_ACtFZ_0(v49, v53);
    sub_22DE58C34(v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v78, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DE58C34(v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v43, &qword_27DA37A40, &unk_22DEC7330);
    if (v54)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
  v46 = v44(v43 + v42, 1, v45);
  v47 = v76;
  v48 = v75;
  if (v46 != 1)
  {
LABEL_13:
    v34 = &qword_27DA38360;
    v35 = &unk_22DECCF70;
    v36 = v43;
    goto LABEL_14;
  }

  sub_22DDEF284(v43, &qword_27DA37A40, &unk_22DEC7330);
LABEL_19:
  v55 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v32 + v55, v48, &qword_27DA37BA8, &unk_22DEC7320);
  v56 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
  swift_beginAccess();
  v57 = *(v65 + 48);
  v58 = v68;
  sub_22DDF0028(v48, v68, &qword_27DA37BA8, &unk_22DEC7320);
  sub_22DDF0028(v29 + v56, v58 + v57, &qword_27DA37BA8, &unk_22DEC7320);
  v59 = *(v66 + 48);
  v60 = v67;
  if (v59(v58, 1, v67) == 1)
  {

    sub_22DDEF284(v48, &qword_27DA37BA8, &unk_22DEC7320);
    if (v59(v58 + v57, 1, v60) == 1)
    {
      sub_22DDEF284(v58, &qword_27DA37BA8, &unk_22DEC7320);
      return 1;
    }

    goto LABEL_24;
  }

  sub_22DDF0028(v58, v47, &qword_27DA37BA8, &unk_22DEC7320);
  if (v59(v58 + v57, 1, v60) == 1)
  {

    sub_22DDEF284(v48, &qword_27DA37BA8, &unk_22DEC7320);
    sub_22DE58C34(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
LABEL_24:
    sub_22DDEF284(v58, &qword_27DA38358, &unk_22DECA2A0);
    return 0;
  }

  v61 = v63;
  sub_22DE4633C(v58 + v57, v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  v62 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequestV2eeoiySbAC_ACtFZ_0(v47, v61);

  sub_22DE58C34(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  sub_22DDEF284(v48, &qword_27DA37BA8, &unk_22DEC7320);
  sub_22DE58C34(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
  sub_22DDEF284(v58, &qword_27DA37BA8, &unk_22DEC7320);
  return (v62 & 1) != 0;
}

uint64_t sub_22DE47BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE47C84(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE47CF0(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE47DCC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C158);
  __swift_project_value_buffer(v0, qword_28145C158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "check_in_trigger";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "notification_id";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "notification_data";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "push_token";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_22DEC4884();
          sub_22DEC4944();
          goto LABEL_5;
        }

        if (result == 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_13:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
          sub_22DEC49C4();
          goto LABEL_5;
        }

        sub_22DE53860(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, sub_22DE5BBA8, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_CheckInTrigger);
      }

LABEL_5:
      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE482D0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, 2);
    if (*(*v3 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    sub_22DE4DDE8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, 4);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE482D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  if (*(a1 + *(result + 24)) != 7)
  {
    sub_22DE5BBA8();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE483A8@<X0>(int *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[7];
  *(a2 + a1[6]) = 7;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + a1[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_22DE48454(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382E8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE484F4(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145C148, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE48560(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_28145C148, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE485FC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CB88);
  __swift_project_value_buffer(v0, qword_28145CB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE4887C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_22DE48930(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DE4887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DDF2564(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DE48930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  sub_22DDF2564(&qword_28145BDA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE48A54(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE48C70(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE48A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDF2564(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DE48C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA37BC8, qword_22DEC7358);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37BC8, qword_22DEC7358);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  sub_22DDF2564(&qword_28145BDA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
}

uint64_t sub_22DE48ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_22DE48FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE49088(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145CB78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE490F4(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_28145CB78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DE49190()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145BDB8);
  __swift_project_value_buffer(v0, qword_28145BDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "next_check_in_epoch";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "actions";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "ams_states";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 4:
          sub_22DE49500(a1, v5, a2, a3);
          break;
        case 3:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
          sub_22DDF2564(&qword_28145D8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          sub_22DEC49D4();
          break;
        case 2:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
          sub_22DEC49A4();
          break;
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DE49500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22DEC4884();
  sub_22DEC4874();
  sub_22DDF2564(&unk_28145E540, MEMORY[0x277D21648], MEMORY[0x277D21640]);
  return sub_22DEC4944();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE49750(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
      sub_22DDF2564(&qword_28145D8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
      sub_22DEC4AC4();
    }

    if (*(v3[1] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4874();
      sub_22DDF2564(&unk_28145E540, MEMORY[0x277D21648], MEMORY[0x277D21640]);
      sub_22DEC4A54();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE49750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE49814@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = sub_22DE05B84(v4);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  v6[8] = 1;
  return result;
}

uint64_t sub_22DE498DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE4997C(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145BDA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE499E8(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_28145BDA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DE49A84()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D8C0);
  __swift_project_value_buffer(v0, qword_28145D8C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22DEC81F0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "action_type";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "post_follow_up_data";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "remove_follow_up_data";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "coverage_data";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "notification_data";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "alert_data";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "reload_config_data";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "requires_ack";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "acknowledge_data";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_22DE4A610(v5, a1, a2, a3);
        }

        else
        {
          sub_22DE4ABCC(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_22DE49FEC(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_22DE4A060(v5, a1, a2, a3);
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_22DE4B188(v5, a1, a2, a3);
      }

      else
      {
        sub_22DE4B744(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_22DE4BD00(v5, a1, a2, a3);
          break;
        case 8:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
          sub_22DEC4974();
          break;
        case 9:
          sub_22DE4C2BC(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DE49FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  sub_22DE5BBFC();
  return sub_22DEC4984();
}

uint64_t sub_22DE4A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38318, &qword_22DECA260);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37BC0, &qword_22DEC7350);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37BC0, &qword_22DEC7350);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE4633C(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DE58C34(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v29 = v44;
    }

    else
    {
      sub_22DDEF284(v24, &qword_27DA38318, &qword_22DECA260);
      v31 = v39;
      sub_22DE4633C(v17, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      sub_22DE4633C(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38318, &qword_22DECA260);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38318, &qword_22DECA260);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38318, &qword_22DECA260);
    return sub_22DDEF284(v32, &qword_27DA38318, &qword_22DECA260);
  }

  else
  {
    v35 = v40;
    sub_22DE4633C(v32, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38318, &qword_22DECA260);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE4A610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38320, &qword_22DECA268);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37BC0, &qword_22DEC7350);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37BC0, &qword_22DEC7350);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE4633C(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22DDEF284(v24, &qword_27DA38320, &qword_22DECA268);
      v31 = v40;
      sub_22DE4633C(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
      sub_22DE4633C(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE58C34(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38320, &qword_22DECA268);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38320, &qword_22DECA268);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38320, &qword_22DECA268);
    return sub_22DDEF284(v32, &qword_27DA38320, &qword_22DECA268);
  }

  else
  {
    v35 = v39;
    sub_22DE4633C(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38320, &qword_22DECA268);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE4ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38328, &qword_22DECA270);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37BC0, &qword_22DEC7350);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37BC0, &qword_22DEC7350);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE4633C(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22DDEF284(v24, &qword_27DA38328, &qword_22DECA270);
      v31 = v40;
      sub_22DE4633C(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
      sub_22DE4633C(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE58C34(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38328, &qword_22DECA270);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38328, &qword_22DECA270);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38328, &qword_22DECA270);
    return sub_22DDEF284(v32, &qword_27DA38328, &qword_22DECA270);
  }

  else
  {
    v35 = v39;
    sub_22DE4633C(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38328, &qword_22DECA270);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE4B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38330, &qword_22DECA278);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37BC0, &qword_22DEC7350);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37BC0, &qword_22DEC7350);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE4633C(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22DDEF284(v24, &qword_27DA38330, &qword_22DECA278);
      v31 = v40;
      sub_22DE4633C(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
      sub_22DE4633C(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE58C34(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38330, &qword_22DECA278);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38330, &qword_22DECA278);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38330, &qword_22DECA278);
    return sub_22DDEF284(v32, &qword_27DA38330, &qword_22DECA278);
  }

  else
  {
    v35 = v39;
    sub_22DE4633C(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38330, &qword_22DECA278);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE4B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38338, &qword_22DECA280);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37BC0, &qword_22DEC7350);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37BC0, &qword_22DEC7350);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE4633C(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22DDEF284(v24, &qword_27DA38338, &qword_22DECA280);
      v31 = v40;
      sub_22DE4633C(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
      sub_22DE4633C(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE58C34(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38338, &qword_22DECA280);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38338, &qword_22DECA280);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38338, &qword_22DECA280);
    return sub_22DDEF284(v32, &qword_27DA38338, &qword_22DECA280);
  }

  else
  {
    v35 = v39;
    sub_22DE4633C(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38338, &qword_22DECA280);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE4BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38340, &qword_22DECA288);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37BC0, &qword_22DEC7350);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37BC0, &qword_22DEC7350);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE4633C(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    sub_22DE4633C(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22DDEF284(v24, &qword_27DA38340, &qword_22DECA288);
      v31 = v40;
      sub_22DE4633C(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
      sub_22DE4633C(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE58C34(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38340, &qword_22DECA288);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38340, &qword_22DECA288);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38340, &qword_22DECA288);
    return sub_22DDEF284(v32, &qword_27DA38340, &qword_22DECA288);
  }

  else
  {
    v35 = v39;
    sub_22DE4633C(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38340, &qword_22DECA288);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37BC0, &qword_22DEC7350);
    sub_22DE4633C(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE4C2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  sub_22DEC4884();
  return sub_22DEC4944();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  result = sub_22DE4C5E8(v5, a1, a2, a3);
  if (!v4)
  {
    sub_22DDF0028(v5, v11, &qword_27DA37BC0, &qword_22DEC7350);
    v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_22DE4CD18(v5, a1, a2, a3);
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_22DE4CF50(v5, a1, a2, a3);
        }

        else
        {
          sub_22DE4D188(v5, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_22DE4C8A8(v5, a1, a2, a3);
        }

        else
        {
          sub_22DE4CAE0(v5, a1, a2, a3);
        }
      }

      else
      {
        sub_22DE4C674(v5, a1, a2, a3);
      }

      sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
    }

    sub_22DE4D3C0(v5, a1, a2, a3);
    if (*(*(v5 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0) + 20)) + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE4C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  if (*(a1 + *(result + 28)) != 7)
  {
    sub_22DE5BBFC();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE4C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37BC0, &qword_22DEC7350);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_22DE4633C(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DDF2564(&qword_27DA381E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
  }

  result = sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37BC0, &qword_22DEC7350);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DE4633C(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    sub_22DDF2564(&qword_27DA38210, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData);
  }

  result = sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4CAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37BC0, &qword_22DEC7350);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22DE4633C(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    sub_22DDF2564(&qword_28145C558, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData);
  }

  result = sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37BC0, &qword_22DEC7350);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22DE4633C(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DDF2564(&qword_27DA38230, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_NotificationData);
  }

  result = sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37BC0, &qword_22DEC7350);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_22DE4633C(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DDF2564(&qword_27DA38260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  }

  result = sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37BC0, &qword_22DEC7350);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37BC0, &qword_22DEC7350);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_22DE4633C(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    sub_22DDF2564(&qword_27DA38278, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
    sub_22DEC4AD4();
    return sub_22DE58C34(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData);
  }

  result = sub_22DE58C34(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData);
  __break(1u);
  return result;
}

uint64_t sub_22DE4D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE4D484@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  *(a2 + v5) = sub_22DE0501C(MEMORY[0x277D84F90]);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v7 = a1[8];
  *(a2 + a1[7]) = 7;
  *(a2 + v7) = 2;
  return result;
}

uint64_t sub_22DE4D540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE4D5B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22DE4D658(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382D0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Action);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE4D6F8(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_28145D8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Action);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE4D764(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_28145D8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_Action);

  return sub_22DEC4A44();
}

uint64_t sub_22DE4D800()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FB8);
  __swift_project_value_buffer(v0, qword_27DA37FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "show_on_lock_screen";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "body";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "open_label";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 6;
  *v14 = "dismiss_label";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
        sub_22DEC4974();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 5 || result == 6)
    {
LABEL_2:
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
      sub_22DEC49C4();
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE4DCEC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE54750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
    sub_22DE4DD64(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, 3);
    sub_22DE4DDE8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, 5);
    sub_22DE547CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, 6);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE4DCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE4DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4DEB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22DE4DF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF2564(&qword_27DA382C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE4E000(uint64_t a1)
{
  v2 = sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE4E06C(uint64_t a1, uint64_t a2)
{
  sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  return sub_22DEC4A44();
}

uint64_t sub_22DE4E108()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA37FD0);
  __swift_project_value_buffer(v0, qword_27DA37FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22DEC8200;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "follow_up_id";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "target_app";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "title_when_in_group";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "singular_content";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "plural_content";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "group_title";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "group_content";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "expiration_epoch";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "serial_number";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "show_badge";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "notification_data";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "action_data";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE4E5A4()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData._StorageClass(0);
  swift_allocObject();
  result = sub_22DE4E5E4();
  qword_27DA37FE8 = result;
  return result;
}

uint64_t sub_22DE4E5E4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 2;
  v1 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_22DE4E6D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v41 - v6;
  *(v1 + 16) = 0;
  *(v1 + 32) = 2;
  *(v1 + 136) = 0;
  v44 = (v1 + 136);
  *(v1 + 120) = 0u;
  v43 = (v1 + 120);
  *(v1 + 104) = 0u;
  v42 = (v1 + 104);
  *(v1 + 88) = 0u;
  v41 = (v1 + 88);
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0;
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  v45 = (v1 + 152);
  *(v1 + 160) = 0;
  *(v1 + 168) = 2;
  v7 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v46 = (v1 + 168);
  v47 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  v48 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v12;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v11;
  swift_beginAccess();
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v14;
  *(v1 + 48) = v13;
  swift_beginAccess();
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v16;
  *(v1 + 64) = v15;

  swift_beginAccess();
  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 72) = v18;
  *(v1 + 80) = v17;

  swift_beginAccess();
  v20 = *(a1 + 88);
  v19 = *(a1 + 96);
  v21 = v41;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 96) = v19;

  swift_beginAccess();
  v23 = *(a1 + 104);
  v22 = *(a1 + 112);
  v24 = v42;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 112) = v22;

  swift_beginAccess();
  v26 = *(a1 + 120);
  v25 = *(a1 + 128);
  v27 = v43;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 128) = v25;

  swift_beginAccess();
  v28 = *(a1 + 136);
  LOBYTE(v13) = *(a1 + 144);
  v29 = v44;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 144) = v13;
  swift_beginAccess();
  v31 = *(a1 + 152);
  v30 = *(a1 + 160);
  v32 = v45;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 160) = v30;

  swift_beginAccess();
  LOBYTE(v30) = *(a1 + 168);
  v33 = v46;
  swift_beginAccess();
  *v33 = v30;
  v34 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  v35 = v49;
  sub_22DDF0028(a1 + v34, v49, &qword_27DA37D70, &qword_22DEC7958);
  v36 = v47;
  swift_beginAccess();
  sub_22DDF0208(v35, v1 + v36, &qword_27DA37D70, &qword_22DEC7958);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v38 = v50;
  sub_22DDF0028(a1 + v37, v50, &qword_27DA37D90, &unk_22DEC7970);

  v39 = v48;
  swift_beginAccess();
  sub_22DDF0208(v38, v1 + v39, &qword_27DA37D90, &unk_22DEC7970);
  swift_endAccess();
  return v1;
}

void *sub_22DE4ECAC()
{

  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData, &qword_27DA37D70, &qword_22DEC7958);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData, &qword_27DA37D90, &unk_22DEC7970);
  return v0;
}

uint64_t sub_22DE4ED44()
{
  v0 = sub_22DE4ECAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DE4EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_22DE4EED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22DDF03C8(a2, a1, a3, a4);
        break;
      case 2:
        sub_22DE4F0B4(a2, a1, a3, a4);
        break;
      case 3:
        sub_22DE4F148(a2, a1, a3, a4);
        break;
      case 4:
        sub_22DE4F1CC(a2, a1, a3, a4);
        break;
      case 5:
        sub_22DE4F250(a2, a1, a3, a4);
        break;
      case 6:
        sub_22DE4F2D4(a2, a1, a3, a4);
        break;
      case 7:
        sub_22DE4F358(a2, a1, a3, a4);
        break;
      case 8:
        sub_22DE4F3DC(a2, a1, a3, a4);
        break;
      case 9:
        sub_22DE4F460(a2, a1, a3, a4);
        break;
      case 10:
        sub_22DE4F4E4(a2, a1, a3, a4);
        break;
      case 11:
        sub_22DE4F568(a2, a1, a3, a4);
        break;
      case 12:
        sub_22DE4F5EC(a2, a1, a3, a4);
        break;
      case 13:
        sub_22DE4F6C8(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22DE4F0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DE5BCF8();
  sub_22DEC4984();
  return swift_endAccess();
}

uint64_t sub_22DE4F148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49A4();
  return swift_endAccess();
}

uint64_t sub_22DE4F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC49C4();
  return swift_endAccess();
}

uint64_t sub_22DE4F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22DEC4974();
  return swift_endAccess();
}

uint64_t sub_22DE4F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE4F6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE4F7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE4F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE51FF4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DE4F9BC(a1, a2, a3, a4);
    sub_22DE4FA5C(a1, a2, a3, a4);
    sub_22DE4FAF8(a1, a2, a3, a4);
    sub_22DE4FB94(a1, a2, a3, a4);
    sub_22DE4FC30(a1, a2, a3, a4);
    sub_22DE4FCCC(a1, a2, a3, a4);
    sub_22DE4FD68(a1, a2, a3, a4);
    sub_22DE4FE04(a1, a2, a3, a4);
    sub_22DE4FE88(a1, a2, a3, a4);
    sub_22DE4FF24(a1, a2, a3, a4);
    sub_22DE4FFAC(a1, a2, a3, a4);
    return sub_22DE501D4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE4F9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 32) != 2)
  {
    sub_22DE5BCF8();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE4FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 80))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 96))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 128))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DE4FE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 160))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE4FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 168) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE4FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37D70, &qword_22DEC7958);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D70, &qword_22DEC7958);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDF2564(&qword_27DA381C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
}

uint64_t sub_22DE501D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37D90, &unk_22DEC7970);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D90, &unk_22DEC7970);
  }

  sub_22DE4633C(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DDF2564(&qword_27DA381F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
  sub_22DEC4AD4();
  return sub_22DE58C34(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
}

BOOL sub_22DE503FC(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData(0);
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38378, &qword_22DECA2C0);
  MEMORY[0x28223BE20](v82);
  v88 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D90, &unk_22DEC7970);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v79 - v9;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails(0);
  v87 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38380, &qword_22DECA2C8);
  MEMORY[0x28223BE20](v13);
  v89 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D70, &qword_22DEC7958);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v79 - v19;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  v23 = *(a2 + 24);
  if (v22)
  {
    if (!v23 || (v21 != *(a2 + 16) || v22 != v23) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 32);
  swift_beginAccess();
  v25 = *(a2 + 32);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  swift_beginAccess();
  v28 = *(a2 + 48);
  if (v27)
  {
    if (!v28 || (v26 != *(a2 + 40) || v27 != v28) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 56);
  v30 = *(a1 + 64);
  swift_beginAccess();
  v31 = *(a2 + 64);
  if (v30)
  {
    if (!v31 || (v29 != *(a2 + 56) || v30 != v31) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  swift_beginAccess();
  v34 = *(a2 + 80);
  if (v33)
  {
    if (!v34 || (v32 != *(a2 + 72) || v33 != v34) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 88);
  v36 = *(a1 + 96);
  swift_beginAccess();
  v37 = *(a2 + 96);
  if (v36)
  {
    if (!v37 || (v35 != *(a2 + 88) || v36 != v37) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  swift_beginAccess();
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);
  swift_beginAccess();
  v40 = *(a2 + 112);
  if (v39)
  {
    if (!v40 || (v38 != *(a2 + 104) || v39 != v40) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 120);
  v42 = *(a1 + 128);
  swift_beginAccess();
  v43 = *(a2 + 128);
  if (v42)
  {
    if (!v43 || (v41 != *(a2 + 120) || v42 != v43) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 136);
  v45 = *(a1 + 144);
  swift_beginAccess();
  v46 = *(a2 + 144);
  if (v45)
  {
    if (!*(a2 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v44 != *(a2 + 136))
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v47 = *(a1 + 152);
  v48 = *(a1 + 160);
  swift_beginAccess();
  v49 = *(a2 + 160);
  if (v48)
  {
    if (!v49 || (v47 != *(a2 + 152) || v48 != v49) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 168);
  swift_beginAccess();
  v51 = *(a2 + 168);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    return 0;
  }

  v52 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  sub_22DDF0028(a1 + v52, v20, &qword_27DA37D70, &qword_22DEC7958);
  v53 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__notificationData;
  swift_beginAccess();
  v54 = *(v13 + 48);
  v55 = v89;
  sub_22DDF0028(v20, v89, &qword_27DA37D70, &qword_22DEC7958);
  v80 = v54;
  sub_22DDF0028(a2 + v53, v55 + v54, &qword_27DA37D70, &qword_22DEC7958);
  v56 = *(v87 + 48);
  if (v56(v55, 1, v10) == 1)
  {

    sub_22DDEF284(v20, &qword_27DA37D70, &qword_22DEC7958);
    if (v56(v55 + v80, 1, v10) == 1)
    {
      sub_22DDEF284(v89, &qword_27DA37D70, &qword_22DEC7958);
      goto LABEL_81;
    }

    goto LABEL_78;
  }

  sub_22DDF0028(v55, v18, &qword_27DA37D70, &qword_22DEC7958);
  if (v56(v55 + v80, 1, v10) == 1)
  {

    sub_22DDEF284(v20, &qword_27DA37D70, &qword_22DEC7958);
    sub_22DE58C34(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
LABEL_78:
    sub_22DDEF284(v89, &qword_27DA38380, &qword_22DECA2C8);
LABEL_79:

    return 0;
  }

  v57 = v89;
  sub_22DE4633C(v89 + v80, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);

  v58 = _s6NDOAPI50Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetailsV2eeoiySbAC_ACtFZ_0(v18, v12);
  sub_22DE58C34(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDEF284(v20, &qword_27DA37D70, &qword_22DEC7958);
  sub_22DE58C34(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CFUNotificationDetails);
  sub_22DDEF284(v57, &qword_27DA37D70, &qword_22DEC7958);
  if ((v58 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_81:
  v59 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v60 = v85;
  sub_22DDF0028(a1 + v59, v85, &qword_27DA37D90, &unk_22DEC7970);
  v61 = OBJC_IVAR____TtCV6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpDataP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__actionData;
  swift_beginAccess();
  v62 = *(v82 + 48);
  v63 = v60;
  v64 = v88;
  sub_22DDF0028(v63, v88, &qword_27DA37D90, &unk_22DEC7970);
  sub_22DDF0028(a2 + v61, v64 + v62, &qword_27DA37D90, &unk_22DEC7970);
  v65 = *(v83 + 48);
  if (v65(v64, 1, v86) != 1)
  {
    v66 = v88;
    sub_22DDF0028(v88, v84, &qword_27DA37D90, &unk_22DEC7970);
    if (v65(v66 + v62, 1, v86) == 1)
    {

      sub_22DDEF284(v85, &qword_27DA37D90, &unk_22DEC7970);
      sub_22DE58C34(v84, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
      goto LABEL_86;
    }

    v71 = v81;
    sub_22DE4633C(v88 + v62, v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    v72 = *(v86 + 20);
    v73 = *(v84 + v72);
    v74 = *(v71 + v72);
    if (v73 != v74)
    {

      v75 = sub_22DE527E8(v73, v74);

      if (!v75)
      {

        sub_22DE58C34(v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
        sub_22DDEF284(v85, &qword_27DA37D90, &unk_22DEC7970);
        sub_22DE58C34(v84, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
        v69 = v88;
        v67 = &qword_27DA37D90;
        v68 = &unk_22DEC7970;
        goto LABEL_87;
      }
    }

    sub_22DEC48B4();
    sub_22DDF2564(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v76 = v84;
    v77 = v81;
    v78 = sub_22DEC4BF4();

    sub_22DE58C34(v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    sub_22DDEF284(v85, &qword_27DA37D90, &unk_22DEC7970);
    sub_22DE58C34(v76, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_FollowUpActionData);
    sub_22DDEF284(v88, &qword_27DA37D90, &unk_22DEC7970);
    return (v78 & 1) != 0;
  }

  sub_22DDEF284(v85, &qword_27DA37D90, &unk_22DEC7970);
  if (v65(v88 + v62, 1, v86) != 1)
  {
LABEL_86:
    v67 = &qword_27DA38378;
    v68 = &qword_22DECA2C0;
    v69 = v88;
LABEL_87:
    sub_22DDEF284(v69, v67, v68);
    return 0;
  }

  sub_22DDEF284(v88, &qword_27DA37D90, &unk_22DEC7970);
  return 1;
}