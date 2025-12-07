uint64_t sub_22DE6BE54@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DE6BEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + v2[7]) = 2;
  v5 = a1 + v2[8];
  *v5 = 0;
  v5[4] = 1;
  v6 = (a1 + v2[9]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[10]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccBannerData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_22DDF0028(v2, &v15 - v5, &qword_27DA37F48, &qword_22DEC8170);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    }

    sub_22DE739F8(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v9 = (a1 + v8[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v8[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v8[8];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
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
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccBannerData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
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
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      return sub_22DE6C6E4;
    }

    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

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
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
  return sub_22DE6C6E4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccDeviceData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_22DDF0028(v2, &v18 - v5, &qword_27DA37F48, &qword_22DEC8170);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    }

    sub_22DE739F8(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v9[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[10]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v9[11];
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  return (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v3[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v3[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v3[11];
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccDeviceData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
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
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
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
    v21 = (v13 + v10[10]);
    *v21 = 0;
    v21[1] = 0;
    v22 = v10[11];
    v23 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    return sub_22DE6CCA4;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  return sub_22DE6CCA4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.linkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_22DDF0028(v2, &v14 - v5, &qword_27DA37F48, &qword_22DEC8170);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    }

    sub_22DE739F8(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v9[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.linkData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
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
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v16 = (v13 + v10[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v13 + v10[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v10[7];
    v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return sub_22DE6D140;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DE6D140;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccPromoData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_22DDF0028(v2, &v17 - v5, &qword_27DA37F48, &qword_22DEC8170);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    }

    sub_22DE739F8(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
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
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v9[9];
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  return (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
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
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = v3[9];
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccPromoData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
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
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
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
  sub_22DDF0028(v2, v9, &qword_27DA37F48, &qword_22DEC8170);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_22DDEF284(v9, &qword_27DA37F48, &qword_22DEC8170);
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
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    v21 = v10[9];
    v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    return sub_22DE6D770;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v9, v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  return sub_22DE6D770;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccTextData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(v2, &v10 - v5, &qword_27DA37F48, &qword_22DEC8170);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_22DE6B268(v6, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    }

    sub_22DE739F8(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v9 = (a1 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE6D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_22DDF0028(a1, &v10 - v5, &qword_27DA37F48, &qword_22DEC8170);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_22DDEF284(v6, &qword_27DA37F48, &qword_22DEC8170);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    }

    sub_22DE739F8(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v9 = (a2 + *(result + 20));
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_22DE6DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - v13;
  sub_22DE73990(a1, &v17 - v13, a6);
  sub_22DDEF284(a2, &qword_27DA37F48, &qword_22DEC8170);
  sub_22DE6B268(v14, a2, a7);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_22DE6DBCC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_22DDEF284(v3, &qword_27DA37F48, &qword_22DEC8170);
  sub_22DE6B268(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCItem.ccTextData.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
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
  sub_22DDF0028(v1, v8, &qword_27DA37F48, &qword_22DEC8170);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22DDEF284(v8, &qword_27DA37F48, &qword_22DEC8170);
LABEL_15:
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v15 = (v12 + *(v9 + 20));
    *v15 = 0;
    v15[1] = 0;
    return sub_22DE6DEE0;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_22DE739F8(v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    goto LABEL_15;
  }

  sub_22DE6B268(v8, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  return sub_22DE6DEE0;
}

void sub_22DE6DF24(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    sub_22DE73990((*a1)[3], v10, a5);
    sub_22DDEF284(v13, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_22DE739F8(v11, a6);
  }

  else
  {
    sub_22DDEF284(**a1, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v3 + 24)) = 5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.text.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0) + 20);
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

uint64_t sub_22DE6E2F0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6E34C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE6E3B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE6E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.logoURL.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 20);
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

uint64_t sub_22DE6E568(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE6E5C0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6E61C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE6E684(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 24));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE6E6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.title.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 24);
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

uint64_t sub_22DE6E838(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.subTitle.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 28);
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

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.link.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0) + 32);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D88, &unk_22DEC8210);
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
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE81CA4;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.label.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 20);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  sub_22DDF0028(v1 + *(v6 + 24), v5, &qword_27DA37D80, &unk_22DEC7960);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v7 + 20)) = 7;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE6EF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  sub_22DDF0028(a1 + *(v7 + 24), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE6F0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  sub_22DDEF284(a2 + v8, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.action.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0) + 24);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE6F544;
}

void sub_22DE6F544(uint64_t **a1, char a2)
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
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    sub_22DDEF284(v9 + v3, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37D80, &unk_22DEC7960);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22DE6F6E8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_22DDF0028(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_22DDEF284(v11, a1, a2);
  return v14;
}

uint64_t sub_22DE6F820(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_22DDEF284(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  v4 = (a2 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = *(v3 + 24);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.imageURL.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 20);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.fallbackSymbol.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 24);
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

uint64_t sub_22DE6FBDC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE6FC38@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE6FCA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE6FD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.title.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 28);
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

uint64_t sub_22DE6FE54(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE6FEE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));
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

uint64_t sub_22DE6FF4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.subTitle.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.clearSubTitle()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_22DE70118(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE70174@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE701DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 36));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE7024C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.ctaLabel.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 36);
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

uint64_t sub_22DE70390(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_22DE703E8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_22DE70444@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 40));
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

uint64_t sub_22DE704AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 40));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_22DE7051C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.serialNumber.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 40);
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

uint64_t sub_22DE70660(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(v1 + *(v6 + 44), v5, &qword_27DA37D80, &unk_22DEC7960);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v7 + 20)) = 7;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE70844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(a1 + *(v7 + 44), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE709EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  sub_22DDEF284(a2 + v8, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.action.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE81CA0;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.hasAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(v0 + *(v4 + 44), v3, &qword_27DA37D80, &unk_22DEC7960);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37D80, &unk_22DEC7960);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.clearAction()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0) + 44);
  sub_22DDEF284(v0 + v1, &qword_27DA37D80, &unk_22DEC7960);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.logoURL.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 20);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.title.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 24);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.subTitle.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 28);
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

uint64_t sub_22DE71364@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = a1(0);
  sub_22DDF0028(v2 + *(v8 + 32), v7, &qword_27DA37D88, &unk_22DEC8210);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22DE6B268(v7, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v9[7];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DE7151C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = a2(0);
  sub_22DDF0028(a1 + *(v9 + 32), v8, &qword_27DA37D88, &unk_22DEC8210);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_22DE6B268(v8, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v12 = (a3 + v10[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a3 + v10[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v10[7];
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
  }

  return result;
}

uint64_t sub_22DE716D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v12 = *(a5(0) + 32);
  sub_22DDEF284(a2 + v12, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE6B268(v11, a2 + v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t sub_22DE7182C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  sub_22DDEF284(v2 + v4, &qword_27DA37D88, &unk_22DEC8210);
  sub_22DE6B268(a1, v2 + v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.link.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 32);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D88, &unk_22DEC8210);
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
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D88, &unk_22DEC8210);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  return sub_22DE71B50;
}

void sub_22DE71B50(uint64_t **a1, char a2)
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
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDEF284(v9 + v3, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37D88, &unk_22DEC8210);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_22DE71CD0(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  sub_22DDF0028(v1 + *(v6 + 32), v5, &qword_27DA37D88, &unk_22DEC8210);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_22DDEF284(v5, &qword_27DA37D88, &unk_22DEC8210);
  return v8;
}

uint64_t sub_22DE71DEC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 32);
  sub_22DDEF284(v1 + v2, &qword_27DA37D88, &unk_22DEC8210);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(v1 + *(v6 + 36), v5, &qword_27DA38898, &qword_22DECBB28);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38898, &qword_22DECBB28);
  }

  return result;
}

uint64_t sub_22DE72018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(a1 + *(v7 + 36), v6, &qword_27DA38898, &qword_22DECBB28);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38898, &qword_22DECBB28);
  }

  return result;
}

uint64_t sub_22DE721B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  sub_22DDEF284(a2 + v8, &qword_27DA38898, &qword_22DECBB28);
  sub_22DE6B268(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  sub_22DDEF284(v1 + v3, &qword_27DA38898, &qword_22DECBB28);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.dismissAction.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38898, &qword_22DECBB28);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38898, &qword_22DECBB28);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  return sub_22DE7266C;
}

void sub_22DE7266C(uint64_t **a1, char a2)
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
    sub_22DE73990((*a1)[5], v4, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
    sub_22DDEF284(v9 + v3, &qword_27DA38898, &qword_22DECBB28);
    sub_22DE6B268(v4, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DE739F8(v5, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38898, &qword_22DECBB28);
    sub_22DE6B268(v5, v9 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.hasDismissAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(v0 + *(v4 + 36), v3, &qword_27DA38898, &qword_22DECBB28);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA38898, &qword_22DECBB28);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.clearDismissAction()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0) + 36);
  sub_22DDEF284(v0 + v1, &qword_27DA38898, &qword_22DECBB28);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DDF0028(v1 + *(v6 + 20), v5, &qword_27DA37D80, &unk_22DEC7960);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE6B268(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v7 + 20)) = 7;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE72B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DDF0028(a1 + *(v7 + 20), v6, &qword_27DA37D80, &unk_22DEC7960);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DE6B268(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(v8 + 20)) = 7;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t sub_22DE72CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE73990(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  sub_22DDEF284(a2 + v8, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE6B268(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.action.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    *(v14 + *(v9 + 20)) = 7;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37D80, &unk_22DEC7960);
    }
  }

  else
  {
    sub_22DE6B268(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  return sub_22DE81CA0;
}

BOOL sub_22DE73144(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_22DDF0028(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_22DDEF284(v11, a1, a2);
  return v14;
}

uint64_t sub_22DE7327C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_22DDEF284(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_22DE73348()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38760);
  __swift_project_value_buffer(v0, qword_27DA38760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "CC_BANNER";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "CC_DEVICE";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CC_PROMO";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CC_LINK";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "CC_TEXT";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DE73678()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  result = (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  qword_27DA38790 = v0;
  return result;
}

uint64_t sub_22DE73744(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v13, v8, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v8, v1 + v9, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v14, v5, &qword_27DA37A40, &unk_22DEC7330);

  swift_beginAccess();
  sub_22DDF0208(v5, v1 + v11, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE73990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE739F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE73B58()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_22DE73744(v11);
    *(v4 + v8) = v10;
  }

  return sub_22DE73C94(v10, a1, a2, a3);
}

uint64_t sub_22DE73C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DE73D28(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_22DE73E04(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_22DE73D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE800BC(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE73E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DE800BC(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0);
  result = sub_22DE73F4C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE73F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE73F9C(a1, a2, a3, a4);
  if (!v4)
  {
    return sub_22DE741C4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE73F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DE800BC(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DE741C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DE800BC(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

BOOL sub_22DE743F0(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  MEMORY[0x28223BE20](v48);
  v52 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v46 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - v9;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v53 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - v20;
  v22 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v54;
  sub_22DDF0028(v23, v21, &qword_27DA37A38, &unk_22DEC6570);
  v25 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__meta;
  swift_beginAccess();
  v26 = *(v14 + 56);
  sub_22DDF0028(v21, v16, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(v24 + v25, &v16[v26], &qword_27DA37A38, &unk_22DEC6570);
  v27 = *(v11 + 48);
  if (v27(v16, 1, v10) != 1)
  {
    v29 = a1;
    v30 = v53;
    sub_22DDF0028(v16, v53, &qword_27DA37A38, &unk_22DEC6570);
    if (v27(&v16[v26], 1, v10) != 1)
    {
      v31 = v47;
      sub_22DE6B268(&v16[v26], v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

      v32 = _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_RequestMetaV2eeoiySbAC_ACtFZ_0(v30, v31);
      sub_22DE739F8(v31, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
      v28 = v29;
      sub_22DE739F8(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DDEF284(v16, &qword_27DA37A38, &unk_22DEC6570);
      if (v32)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DE739F8(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
LABEL_6:
    sub_22DDEF284(v16, &qword_27DA38368, &qword_22DECA2B0);
    goto LABEL_7;
  }

  sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
  v28 = a1;
  if (v27(&v16[v26], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v16, &qword_27DA37A38, &unk_22DEC6570);
LABEL_9:
  v33 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  v34 = v49;
  sub_22DDF0028(v28 + v33, v49, &qword_27DA37A40, &unk_22DEC7330);
  v35 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestP33_2E671CB3414F520C2731BDA23B038D1C13_StorageClass__common;
  swift_beginAccess();
  v36 = *(v48 + 48);
  v37 = v52;
  sub_22DDF0028(v34, v52, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDF0028(v24 + v35, v37 + v36, &qword_27DA37A40, &unk_22DEC7330);
  v38 = v51;
  v39 = *(v50 + 48);
  if (v39(v37, 1, v51) == 1)
  {

    sub_22DDEF284(v34, &qword_27DA37A40, &unk_22DEC7330);
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_22DDEF284(v37, &qword_27DA37A40, &unk_22DEC7330);
      return 1;
    }

    goto LABEL_14;
  }

  v40 = v46;
  sub_22DDF0028(v37, v46, &qword_27DA37A40, &unk_22DEC7330);
  if (v39(v37 + v36, 1, v38) == 1)
  {

    sub_22DDEF284(v34, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DE739F8(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
LABEL_14:
    sub_22DDEF284(v37, &qword_27DA38360, &unk_22DECCF70);
    return 0;
  }

  v42 = v45;
  sub_22DE6B268(v37 + v36, v45, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v43 = _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBodyV2eeoiySbAC_ACtFZ_0(v40, v42);

  sub_22DE739F8(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDEF284(v34, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DE739F8(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDEF284(v37, &qword_27DA37A40, &unk_22DEC7330);
  return (v43 & 1) != 0;
}

uint64_t sub_22DE74BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_27DA37820 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27DA38790;
}

uint64_t sub_22DE74CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest, "A;5TТ");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE74D54(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA38938, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE74DC0(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA38938, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE74E74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22DEC81D0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "meta";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_22DEC4AE4();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_22DE750EC(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_22DE751A0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DE750EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DE800BC(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DE751A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE752C4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DE754E0(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE752C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DE800BC(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DE754E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA37DD0, &qword_22DECBB20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37DD0, &qword_22DECBB20);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
}

uint64_t sub_22DE75748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_22DE75858(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B60, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE758F8(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA37DD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE75964(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA37DD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
        sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0), sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection), result = sub_22DEC4AC4(), !v4))
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F278(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE75D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE75DE0(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE75E4C(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA37DC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DE75EC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F278(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE75F8C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA387C8);
  __swift_project_value_buffer(v0, qword_27DA387C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22DECB020;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "header";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "is_expandable";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "expand_threshold";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "items";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "expand_label";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "footer";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
          sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
          sub_22DEC49D4();
        }

        else if (result == 5 || result == 6)
        {
LABEL_4:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
          sub_22DEC49C4();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_4;
          case 2:
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
            sub_22DEC4974();
            break;
          case 3:
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
            sub_22DEC4994();
            break;
        }
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, 1);
  if (!v4)
  {
    sub_22DE765E8(v3, a1, a2, a3);
    sub_22DE76660(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
      sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
      sub_22DEC4AC4();
    }

    sub_22DE7B750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
    sub_22DE7B7CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE765E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DE76660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_22DEC4A84();
  }

  return result;
}

uint64_t sub_22DE76724@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  v7 = a1[9];
  v8 = a2 + a1[8];
  v8[4] = 1;
  *v8 = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + a1[10]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22DE767E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE76888(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE768F4(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA388B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);

  return sub_22DEC4A44();
}

uint64_t sub_22DE76990()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA387E0);
  __swift_project_value_buffer(v0, qword_27DA387E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22DECB020;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "cc_banner_data";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "cc_device_data";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "link_data";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cc_promo_data";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cc_text_data";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_22DE77990(v5, a1, a2, a3);
          break;
        case 5:
          sub_22DE77F4C(v5, a1, a2, a3);
          break;
        case 6:
          sub_22DE78508(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_22DE76DB0(a1, v5, a2, a3);
          break;
        case 2:
          sub_22DE76E24(v5, a1, a2, a3);
          break;
        case 3:
          sub_22DE773D4(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DE76DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  sub_22DE81C44();
  return sub_22DEC4984();
}

uint64_t sub_22DE76E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B78, &qword_22DECCF40);
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
  sub_22DDF0028(a1, v12, &qword_27DA37F48, &qword_22DEC8170);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F48, &qword_22DEC8170);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE6B268(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DE739F8(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v29 = v44;
    }

    else
    {
      sub_22DDEF284(v24, &qword_27DA38B78, &qword_22DECCF40);
      v31 = v39;
      sub_22DE6B268(v17, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      sub_22DE6B268(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38B78, &qword_22DECCF40);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38B78, &qword_22DECCF40);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38B78, &qword_22DECCF40);
    return sub_22DDEF284(v32, &qword_27DA38B78, &qword_22DECCF40);
  }

  else
  {
    v35 = v40;
    sub_22DE6B268(v32, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38B78, &qword_22DECCF40);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE773D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B80, &qword_22DECCF48);
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
  sub_22DDF0028(a1, v12, &qword_27DA37F48, &qword_22DEC8170);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F48, &qword_22DEC8170);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE6B268(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22DDEF284(v24, &qword_27DA38B80, &qword_22DECCF48);
      v31 = v40;
      sub_22DE6B268(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      sub_22DE6B268(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE739F8(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38B80, &qword_22DECCF48);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38B80, &qword_22DECCF48);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38B80, &qword_22DECCF48);
    return sub_22DDEF284(v32, &qword_27DA38B80, &qword_22DECCF48);
  }

  else
  {
    v35 = v39;
    sub_22DE6B268(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38B80, &qword_22DECCF48);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE77990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
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
  sub_22DDF0028(a1, v12, &qword_27DA37F48, &qword_22DEC8170);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F48, &qword_22DEC8170);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE6B268(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
      v31 = v40;
      sub_22DE6B268(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DE6B268(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE739F8(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DDF0028(v24, v32, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
    return sub_22DDEF284(v32, &qword_27DA37D88, &unk_22DEC8210);
  }

  else
  {
    v35 = v39;
    sub_22DE6B268(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE77F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B88, &qword_22DECCF50);
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
  sub_22DDF0028(a1, v12, &qword_27DA37F48, &qword_22DEC8170);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F48, &qword_22DEC8170);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE6B268(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22DDEF284(v24, &qword_27DA38B88, &qword_22DECCF50);
      v31 = v40;
      sub_22DE6B268(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      sub_22DE6B268(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE739F8(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38B88, &qword_22DECCF50);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38B88, &qword_22DECCF50);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38B88, &qword_22DECCF50);
    return sub_22DDEF284(v32, &qword_27DA38B88, &qword_22DECCF50);
  }

  else
  {
    v35 = v39;
    sub_22DE6B268(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38B88, &qword_22DECCF50);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DE78508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B90, &qword_22DECCF58);
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
  sub_22DDF0028(a1, v12, &qword_27DA37F48, &qword_22DEC8170);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F48, &qword_22DEC8170);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DE6B268(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    sub_22DE6B268(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22DDEF284(v24, &qword_27DA38B90, &qword_22DECCF58);
      v31 = v40;
      sub_22DE6B268(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE6B268(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DE739F8(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38B90, &qword_22DECCF58);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38B90, &qword_22DECCF58);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38B90, &qword_22DECCF58);
    return sub_22DDEF284(v32, &qword_27DA38B90, &qword_22DECCF58);
  }

  else
  {
    v35 = v39;
    sub_22DE6B268(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38B90, &qword_22DECCF58);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F48, &qword_22DEC8170);
    sub_22DE6B268(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  result = sub_22DE78CDC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DDF0028(v3, v10, &qword_27DA37F48, &qword_22DEC8170);
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_22DE78F9C(v3, a1, a2, a3);
        }

        else
        {
          sub_22DE78D68(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_22DE791D4(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_22DE7940C(v3, a1, a2, a3);
      }

      else
      {
        sub_22DE79644(v3, a1, a2, a3);
      }

      sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE78CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    sub_22DE81C44();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DE78D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F48, &qword_22DEC8170);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_22DE6B268(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
  }

  result = sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE78F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F48, &qword_22DEC8170);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DE6B268(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
  }

  result = sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE791D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F48, &qword_22DEC8170);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22DE6B268(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DEC4AD4();
    return sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  result = sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE7940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F48, &qword_22DEC8170);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22DE6B268(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
  }

  result = sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE79644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F48, &qword_22DEC8170);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F48, &qword_22DEC8170);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_22DE6B268(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    sub_22DEC4AD4();
    return sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
  }

  result = sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DE798C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(a1 + 24)) = 5;
  return result;
}

uint64_t sub_22DE79990(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE79A30(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE79A9C(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA388C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCTextData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData, 1);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE79D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE79DA4(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE79E10(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA38990, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE79EAC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38810);
  __swift_project_value_buffer(v0, qword_27DA38810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "logo_url";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "title";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sub_title";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "link";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        sub_22DE7C138(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      }
    }

    else if (result == 2 || result == 3)
    {
LABEL_2:
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
      sub_22DEC49C4();
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, 2);
  if (!v4)
  {
    sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, 3);
    sub_22DE7B654(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, 4);
    sub_22DE7C3BC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, 5);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7A334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7A3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7A484@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = a1[8];
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_22DE7A564(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7A604(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7A670(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA389A8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE7A70C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38828);
  __swift_project_value_buffer(v0, qword_27DA38828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
      sub_22DEC49C4();
    }

    else if (result == 2)
    {
      sub_22DE7A9A4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DE7A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink, 1);
  if (!v4)
  {
    sub_22DE7AAE0(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7AAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE7AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_22DE7AE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7AEB4(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7AF20(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA389C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink);

  return sub_22DEC4A44();
}

uint64_t sub_22DE7AFBC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38840);
  __swift_project_value_buffer(v0, qword_27DA38840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22DEC81E0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "image_url";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22DEC4AE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "fallback_symbol";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sub_title";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cta_label";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "serial_number";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "action";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      if (result == 1 || result == 2 || result == 3)
      {
LABEL_2:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
        sub_22DEC49C4();
      }
    }

    else
    {
      if (result <= 6)
      {
        goto LABEL_2;
      }

      if (result == 7)
      {
        sub_22DE7B448(a1, v5, a2, a3);
      }
    }
  }
}

uint64_t sub_22DE7B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, 1);
  if (!v4)
  {
    sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, 2);
    sub_22DE7B654(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, 3);
    sub_22DE7B6D8(v3, a1, a2, a3);
    sub_22DE7B750(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE7B7CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
    sub_22DE7B848(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE7B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  sub_22DDF0028(a1 + *(v12 + 44), v7, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE7BAAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v10);
  *v12 = 0;
  v12[1] = 0;
  v13 = a1[11];
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t sub_22DE7BBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7BC4C(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7BCB8(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA389D8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);

  return sub_22DEC4A44();
}

uint64_t sub_22DE7BD54()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38858);
  __swift_project_value_buffer(v0, qword_27DA38858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "logo_url";
  *(v5 + 8) = 8;
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
  *v11 = "sub_title";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "link";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "dismiss_action";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
        sub_22DEC49C4();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_2;
        case 4:
          sub_22DE7C138(a1, v5, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
          break;
        case 5:
          sub_22DE7C1F0(a1, v5, a2, a3);
          break;
      }
    }
  }
}

uint64_t sub_22DE7C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DEC49E4();
}

uint64_t sub_22DE7C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7A334(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, 1);
  if (!v4)
  {
    sub_22DE7A3B8(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, 2);
    sub_22DE7B654(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, 3);
    sub_22DE7C3BC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, 4);
    sub_22DE7C5E0(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7C3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  sub_22DDF0028(a1 + *(v15 + 32), v10, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22DDEF284(v10, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DE6B268(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE800BC(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DE739F8(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DE7C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  sub_22DDF0028(a1 + *(v12 + 36), v7, &qword_27DA38898, &qword_22DECBB28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38898, &qword_22DECBB28);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
}

uint64_t sub_22DE7C844@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  (*(*(v9 - 8) + 56))(a2 + v7, 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_22DE7C970(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B20, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7CA10(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7CA7C(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA389F0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);

  return sub_22DEC4A44();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_22DE7CBC8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DE7CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DE7CCD4(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE7CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DE6B268(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE800BC(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DE7CF3C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DE800BC(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE7CFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22DE7D088(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE800BC(&qword_27DA38B18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE7D128(uint64_t a1)
{
  v2 = sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE7D194(uint64_t a1, uint64_t a2)
{
  sub_22DE800BC(&qword_27DA38A08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_53;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_53;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_53;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v14;
      v30 = sub_22DEC50E4();
      v14 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_53;
  }

  v31 = v14[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_53;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v14;
      v37 = sub_22DEC50E4();
      v14 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_53;
  }

  v38 = v14[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_53;
    }

    if (*v39 != *v41 || v40 != v42)
    {
      v43 = v14;
      v44 = sub_22DEC50E4();
      v14 = v43;
      if ((v44 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v42)
  {
    goto LABEL_53;
  }

  v45 = v14[9];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_53;
    }

    if (*v46 != *v48 || v47 != v49)
    {
      v50 = v14;
      v51 = sub_22DEC50E4();
      v14 = v50;
      if ((v51 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v49)
  {
    goto LABEL_53;
  }

  v52 = v14[10];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_53;
    }

    if (*v53 != *v55 || v54 != v56)
    {
      v57 = v14;
      v58 = sub_22DEC50E4();
      v14 = v57;
      if ((v58 & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (v56)
  {
    goto LABEL_53;
  }

  v59 = v14[11];
  v60 = *(v11 + 48);
  sub_22DDF0028(a1 + v59, v13, &qword_27DA37D80, &unk_22DEC7960);
  v61 = a2 + v59;
  v62 = v60;
  sub_22DDF0028(v61, &v13[v60], &qword_27DA37D80, &unk_22DEC7960);
  v63 = *(v5 + 48);
  if (v63(v13, 1, v4) == 1)
  {
    if (v63(&v13[v62], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
LABEL_56:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v64 = sub_22DEC4BF4();
      return v64 & 1;
    }

    goto LABEL_52;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37D80, &unk_22DEC7960);
  if (v63(&v13[v62], 1, v4) == 1)
  {
    sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_52:
    sub_22DDEF284(v13, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_53;
  }

  sub_22DE6B268(&v13[v62], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v66 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v10, v7);
  sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
  if (v66)
  {
    goto LABEL_56;
  }

LABEL_53:
  v64 = 0;
  return v64 & 1;
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerLink(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_16;
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v14 + 24);
  v26 = *(v11 + 48);
  v31[1] = v23;
  sub_22DDF0028(v23 + v25, v13, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DDF0028(v24 + v25, &v13[v26], &qword_27DA37D80, &unk_22DEC7960);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
LABEL_19:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_22DEC4BF4();
      return v28 & 1;
    }

    goto LABEL_15;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37D80, &unk_22DEC7960);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_15:
    sub_22DDEF284(v13, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_16;
  }

  sub_22DE6B268(&v13[v26], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v30 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v10, v7);
  sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CCDismissActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_22DDF0028(a1 + v14, v13, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DDF0028(a2 + v14, &v13[v15], &qword_27DA37D80, &unk_22DEC7960);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
LABEL_9:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22DEC4BF4();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_22DDF0028(v13, v9, &qword_27DA37D80, &unk_22DEC7960);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_6:
    sub_22DDEF284(v13, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_22DE6B268(&v13[v15], v21[0], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v19 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v9, v18);
  sub_22DE739F8(v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_CCPromoDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38898, &qword_22DECBB28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v75 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BA0, &unk_22DECCF80);
  MEMORY[0x28223BE20](v11);
  v13 = &v75 - v12;
  v82 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_36;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v78 = v19;
      v26 = v11;
      v27 = v5;
      v28 = v10;
      v29 = v4;
      v30 = a1;
      v31 = v13;
      v32 = a2;
      v33 = v7;
      v34 = v20;
      v35 = sub_22DEC50E4();
      v20 = v34;
      v7 = v33;
      a2 = v32;
      v13 = v31;
      a1 = v30;
      v4 = v29;
      v10 = v28;
      v5 = v27;
      v11 = v26;
      v19 = v78;
      if ((v35 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_36;
  }

  v36 = v20[6];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_36;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v78 = v19;
      v41 = v11;
      v42 = v5;
      v43 = v10;
      v44 = v4;
      v45 = a1;
      v46 = v13;
      v47 = a2;
      v48 = v7;
      v49 = v20;
      v50 = sub_22DEC50E4();
      v20 = v49;
      v7 = v48;
      a2 = v47;
      v13 = v46;
      a1 = v45;
      v4 = v44;
      v10 = v43;
      v5 = v42;
      v11 = v41;
      v19 = v78;
      if ((v50 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else if (v40)
  {
    goto LABEL_36;
  }

  v51 = v20[7];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_36;
    }

    v77 = v7;
    if (*v52 != *v54 || v53 != v55)
    {
      v56 = v20;
      v57 = sub_22DEC50E4();
      v20 = v56;
      if ((v57 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v77 = v7;
    if (v55)
    {
      goto LABEL_36;
    }
  }

  v76 = v20;
  v58 = v20[8];
  v59 = *(v17 + 48);
  sub_22DDF0028(a1 + v58, v19, &qword_27DA37D88, &unk_22DEC8210);
  v78 = v59;
  sub_22DDF0028(a2 + v58, &v59[v19], &qword_27DA37D88, &unk_22DEC8210);
  v60 = v82;
  v80 = *(v80 + 48);
  if ((v80)(v19, 1, v82) != 1)
  {
    sub_22DDF0028(v19, v81, &qword_27DA37D88, &unk_22DEC8210);
    if ((v80)(&v78[v19], 1, v60) != 1)
    {
      v64 = v79;
      sub_22DE6B268(&v78[v19], v79, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v65 = v81;
      LODWORD(v80) = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v81, v64);
      v82 = v11;
      sub_22DE739F8(v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v11 = v82;
      sub_22DE739F8(v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DDEF284(v19, &qword_27DA37D88, &unk_22DEC8210);
      if ((v80 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    sub_22DE739F8(v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_27:
    v61 = &qword_27DA38310;
    v62 = &unk_22DECA250;
    v63 = v19;
LABEL_35:
    sub_22DDEF284(v63, v61, v62);
    goto LABEL_36;
  }

  if ((v80)(&v78[v19], 1, v60) != 1)
  {
    goto LABEL_27;
  }

  sub_22DDEF284(v19, &qword_27DA37D88, &unk_22DEC8210);
LABEL_29:
  v66 = v10;
  v67 = v76[9];
  v68 = v13;
  v69 = *(v11 + 48);
  sub_22DDF0028(a1 + v67, v68, &qword_27DA38898, &qword_22DECBB28);
  sub_22DDF0028(a2 + v67, v68 + v69, &qword_27DA38898, &qword_22DECBB28);
  v70 = *(v5 + 48);
  if (v70(v68, 1, v4) == 1)
  {
    if (v70(v68 + v69, 1, v4) == 1)
    {
      sub_22DDEF284(v68, &qword_27DA38898, &qword_22DECBB28);
LABEL_39:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v71 = sub_22DEC4BF4();
      return v71 & 1;
    }

    goto LABEL_34;
  }

  sub_22DDF0028(v68, v66, &qword_27DA38898, &qword_22DECBB28);
  if (v70(v68 + v69, 1, v4) == 1)
  {
    sub_22DE739F8(v66, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
LABEL_34:
    v61 = &qword_27DA38BA0;
    v62 = &unk_22DECCF80;
    v63 = v68;
    goto LABEL_35;
  }

  v73 = v77;
  sub_22DE6B268(v68 + v69, v77, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  v74 = _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_CCDismissActionV2eeoiySbAC_ACtFZ_0(v66, v73);
  sub_22DE739F8(v73, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DE739F8(v66, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction);
  sub_22DDEF284(v68, &qword_27DA38898, &qword_22DECBB28);
  if (v74)
  {
    goto LABEL_39;
  }

LABEL_36:
  v71 = 0;
  return v71 & 1;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_CCTextDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_22DEC50E4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_22DEC48B4();
    sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_CCResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DD0, &qword_22DECBB20);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = (&v37 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38B98, &unk_22DECCF60);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCResponse(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_22DDF0028(a1 + v19, v18, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF0028(v46 + v19, &v18[v20], &qword_27DA38088, &unk_22DEC8220);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_27DA38350;
    v23 = &unk_22DED04F0;
    v24 = v18;
LABEL_16:
    sub_22DDEF284(v24, v22, v23);
    goto LABEL_17;
  }

  sub_22DDF0028(v18, v14, &qword_27DA38088, &unk_22DEC8220);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    sub_22DE739F8(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    goto LABEL_6;
  }

  sub_22DE6B268(&v18[v20], v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v25 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_ResponseMetaV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_22DE739F8(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DE739F8(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_22DDF0028(v45 + v26, v44, &qword_27DA37DD0, &qword_22DECBB20);
  sub_22DDF0028(v46 + v26, v28 + v27, &qword_27DA37DD0, &qword_22DECBB20);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) != 1)
  {
    v32 = v39;
    sub_22DDF0028(v28, v39, &qword_27DA37DD0, &qword_22DECBB20);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_22DE739F8(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
      goto LABEL_14;
    }

    v34 = v28 + v27;
    v35 = v38;
    sub_22DE6B268(v34, v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    if ((sub_22DE2F278(*v32, *v35) & 1) == 0)
    {
      sub_22DE739F8(v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
      sub_22DE739F8(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
      v22 = &qword_27DA37DD0;
      v23 = &qword_22DECBB20;
      goto LABEL_15;
    }

    sub_22DEC48B4();
    sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v36 = sub_22DEC4BF4();
    sub_22DE739F8(v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    sub_22DE739F8(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse);
    sub_22DDEF284(v28, &qword_27DA37DD0, &qword_22DECBB20);
    if (v36)
    {
      goto LABEL_11;
    }

LABEL_17:
    v31 = 0;
    return v31 & 1;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
LABEL_14:
    v22 = &qword_27DA38B98;
    v23 = &unk_22DECCF60;
LABEL_15:
    v24 = v28;
    goto LABEL_16;
  }

  sub_22DDEF284(v28, &qword_27DA37DD0, &qword_22DECBB20);
LABEL_11:
  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_22DEC4BF4();
  return v31 & 1;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCSectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = v4;
  if (sub_22DE3196C(*a1, *a2))
  {
    v22 = v21;
    v23 = v21[9];
    v24 = (a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v26[1];
    if (v25)
    {
      if (!v27)
      {
        return 0;
      }

      if (*v24 != *v26 || v25 != v27)
      {
        v28 = sub_22DEC50E4();
        v22 = v21;
        if ((v28 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v27)
    {
      return 0;
    }

    v29 = v22[10];
    v30 = (a1 + v29);
    v31 = *(a1 + v29 + 8);
    v32 = (a2 + v29);
    v33 = v32[1];
    if (v31)
    {
      if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_22DEC50E4() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22DEC4BF4() & 1;
    }

    if (!v33)
    {
      goto LABEL_34;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CCRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22DE743F0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CCItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F48, &qword_22DEC8170);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F50, &unk_22DEC8178);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem(0);
  v15 = *(v14 + 24);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 5)
  {
    if (v17 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v23[1] = v14;
  v18 = *(v11 + 48);
  sub_22DDF0028(a1, v13, &qword_27DA37F48, &qword_22DEC8170);
  sub_22DDF0028(a2, &v13[v18], &qword_27DA37F48, &qword_22DEC8170);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37F48, &qword_22DEC8170);
LABEL_14:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_22DEC4BF4();
      return v20 & 1;
    }

    goto LABEL_10;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37F48, &qword_22DEC8170);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
LABEL_10:
    sub_22DDEF284(v13, &qword_27DA37F50, &unk_22DEC8178);
    goto LABEL_11;
  }

  sub_22DE6B268(&v13[v18], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  v22 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CCItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  sub_22DDEF284(v13, &qword_27DA37F48, &qword_22DEC8170);
  if (v22)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCBannerDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_32;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_32;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_32;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v14;
      v30 = sub_22DEC50E4();
      v14 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_32;
  }

  v31 = v14[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_32;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v14;
      v37 = sub_22DEC50E4();
      v14 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_32;
  }

  v38 = v14[8];
  v39 = *(v11 + 48);
  sub_22DDF0028(a1 + v38, v13, &qword_27DA37D88, &unk_22DEC8210);
  v40 = a2 + v38;
  v41 = v39;
  sub_22DDF0028(v40, &v13[v39], &qword_27DA37D88, &unk_22DEC8210);
  v42 = *(v5 + 48);
  if (v42(v13, 1, v4) == 1)
  {
    if (v42(&v13[v41], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37D88, &unk_22DEC8210);
LABEL_35:
      sub_22DEC48B4();
      sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_22DEC4BF4();
      return v43 & 1;
    }

    goto LABEL_31;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37D88, &unk_22DEC8210);
  if (v42(&v13[v41], 1, v4) == 1)
  {
    sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_31:
    sub_22DDEF284(v13, &qword_27DA38310, &unk_22DECA250);
    goto LABEL_32;
  }

  sub_22DE6B268(&v13[v41], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v45 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CTLinkV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_22DE739F8(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DE739F8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDEF284(v13, &qword_27DA37D88, &unk_22DEC8210);
  if (v45)
  {
    goto LABEL_35;
  }

LABEL_32:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CCItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v52 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(0);
  MEMORY[0x28223BE20](v52);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data(0);
  v14 = MEMORY[0x28223BE20](v13);
  v54 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BA8, &qword_22DECCF90);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v49 - v29;
  v31 = *(v28 + 56);
  sub_22DE73990(v55, &v49 - v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  sub_22DE73990(v56, &v30[v31], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_22DE73990(v30, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData;
        v38 = v24;
        goto LABEL_24;
      }

      sub_22DE6B268(&v30[v31], v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v34 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceDataV2eeoiySbAC_ACtFZ_0(v24, v9);
      v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData;
      sub_22DE739F8(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData);
      v35 = v24;
    }

    else
    {
      sub_22DE73990(v30, v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      if (swift_getEnumCaseMultiPayload())
      {
        v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData;
        v38 = v26;
        goto LABEL_24;
      }

      sub_22DE6B268(&v30[v31], v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v34 = _s6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_CCBannerDataV2eeoiySbAC_ACtFZ_0(v26, v12);
      v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData;
      sub_22DE739F8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData);
      v35 = v26;
    }

LABEL_27:
    v36 = v40;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_22DE73990(v30, v21, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
      v38 = v21;
      goto LABEL_24;
    }

    v39 = v50;
    sub_22DE6B268(&v30[v31], v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v34 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_CTLinkV2eeoiySbAC_ACtFZ_0(v21, v39);
    v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
    sub_22DE739F8(v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v35 = v21;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22DE73990(v30, v18, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v33 = v51;
      sub_22DE6B268(&v30[v31], v51, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v34 = _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_CCPromoDataV2eeoiySbAC_ACtFZ_0(v18, v33);
      sub_22DE739F8(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData);
      v35 = v18;
      v36 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData;
LABEL_28:
      sub_22DE739F8(v35, v36);
      sub_22DE739F8(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      return v34 & 1;
    }

    v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData;
    v38 = v18;
    goto LABEL_24;
  }

  v41 = v54;
  sub_22DE73990(v30, v54, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v42 = v53;
    sub_22DE6B268(&v30[v31], v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
    v43 = *(v52 + 20);
    v44 = (v41 + v43);
    v45 = *(v41 + v43 + 8);
    v46 = (v42 + v43);
    v47 = v46[1];
    if (v45)
    {
      if (!v47 || (*v44 != *v46 || v45 != v47) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v47)
    {
LABEL_33:
      sub_22DE739F8(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      goto LABEL_25;
    }

    sub_22DEC48B4();
    sub_22DE800BC(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_22DEC4BF4())
    {
      sub_22DE739F8(v42, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData);
      sub_22DE739F8(v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data);
      v34 = 1;
      return v34 & 1;
    }

    goto LABEL_33;
  }

  v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData;
  v38 = v41;
LABEL_24:
  sub_22DE739F8(v38, v37);
  sub_22DDEF284(v30, &qword_27DA38BA8, &qword_22DECCF90);
LABEL_25:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_22DE800BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DE80108()
{
  result = qword_27DA38908;
  if (!qword_27DA38908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38908);
  }

  return result;
}

unint64_t sub_22DE80160()
{
  result = qword_27DA38910;
  if (!qword_27DA38910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38910);
  }

  return result;
}

unint64_t sub_22DE801B8()
{
  result = qword_27DA38918;
  if (!qword_27DA38918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38918);
  }

  return result;
}

unint64_t sub_22DE80210()
{
  result = qword_27DA38920;
  if (!qword_27DA38920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA38928, &qword_22DECBBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38920);
  }

  return result;
}

uint64_t sub_22DE80F0C(uint64_t a1)
{
  result = sub_22DEC48B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22DE80FB8(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE810B4(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE810B4(319, &qword_27DA38A38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE810B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DE81140(uint64_t a1)
{
  sub_22DE810B4(319, &qword_27DA38A50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE8121C(uint64_t a1)
{
  sub_22DE810B4(319, &qword_27DA38A68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_28145AD88);
      if (v3 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD28);
        if (v4 <= 0x3F)
        {
          sub_22DE33AAC(319, &qword_28145AD08);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22DE8137C(uint64_t a1)
{
  sub_22DE810B4(319, &qword_27DA38A80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem.OneOf_Data, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_27DA38A88);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DE81458(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCBannerData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDeviceData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCPromoData(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCTextData(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22DE81530(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE815EC(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v2 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE816F8(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v2 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE817FC(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v2 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DE8190C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v2 <= 0x3F)
    {
      sub_22DE810B4(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22DE810B4(319, &qword_27DA38AF0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCDismissAction, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE81A60(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE810B4(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DE81B1C(uint64_t a1)
{
  sub_22DE810B4(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DE810B4(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_22DE81C44()
{
  result = qword_27DA38B70;
  if (!qword_27DA38B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38B70);
  }

  return result;
}

unint64_t sub_22DE81CE0(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC0, &qword_22DECCF98);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_22DEC5F50;
      *(inited + 32) = 0x72656D75736E6F63;
      v4 = inited + 32;
      v5 = 0xE800000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC0, &qword_22DECCF98);
      inited = swift_initStackObject();
      v3 = inited;
      *(inited + 16) = xmmword_22DEC5F50;
      *(inited + 32) = 7368801;
      v4 = inited + 32;
      v5 = 0xE300000000000000;
    }

    *(inited + 40) = v5;
    v6 = sub_22DEC4DE4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC0, &qword_22DECCF98);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_22DEC5F50;
    *(v3 + 32) = 0x6173726576696E75;
    v4 = v3 + 32;
    *(v3 + 40) = 0xED00006B6E694C6CLL;
    v6 = sub_22DEC4D54();
  }

  *(v3 + 48) = v6;
  v7 = sub_22DE05C9C(v3);
  swift_setDeallocating();
  sub_22DE81E28(v4);
  return v7;
}

uint64_t sub_22DE81E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38BC8, qword_22DECCFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  if (qword_27DA37880 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27DA38BE8;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.common.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE84CE8(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE85040(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.meta.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE84CE8(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE85040(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v2);
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a1 + *(v3 + 28));
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + *(v3 + 32));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkParams.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.data.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v9 = sub_22DE84CE8(v9);
    *(v2 + v7) = v9;
  }

  sub_22DE85040(a1, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v6, v9 + v11, &qword_27DA37A30, &qword_22DECCFC0);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A38, &unk_22DEC6570);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE85040(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
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

uint64_t sub_22DE8264C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE875F8(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE84CE8(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE85040(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A38, &unk_22DEC6570);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.meta.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
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
    sub_22DE85040(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DE82AEC;
}

void sub_22DE82AEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE875F8(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE84CE8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE85040(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A38, &unk_22DEC6570);
    swift_endAccess();
    sub_22DE87660(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
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
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE84CE8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE85040(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.common.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A40, &unk_22DEC7330);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE85040(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
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

uint64_t sub_22DE82FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE875F8(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE84CE8(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE85040(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A40, &unk_22DEC7330);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.common.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
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
    sub_22DE85040(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  }

  return sub_22DE83468;
}

void sub_22DE83468(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE875F8(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE84CE8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE85040(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A40, &unk_22DEC7330);
    swift_endAccess();
    sub_22DE87660(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
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
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE84CE8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE85040(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
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

BOOL sub_22DE836E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22DDF0028(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_22DDEF284(v11, a1, a2);
  return v15;
}

uint64_t sub_22DE83830(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v15 = sub_22DE84CE8(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_22DDF0208(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.data.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20));
  v7 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v6 + v7, v5, &qword_27DA37A30, &qword_22DECCFC0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22DE85040(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v10);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v11 = (a1 + *(v8 + 28));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + *(v8 + 32));
  *v12 = 0;
  v12[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A30, &qword_22DECCFC0);
  }

  return result;
}

uint64_t sub_22DE83B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE875F8(a1, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  v11 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v13 = sub_22DE84CE8(v13);
    *(a2 + v11) = v13;
  }

  sub_22DE85040(v10, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0208(v6, v13 + v14, &qword_27DA37A30, &qword_22DECCFC0);
  return swift_endAccess();
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0) - 8) + 64);
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
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v16 + v17, v8, &qword_27DA37A30, &qword_22DECCFC0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = sub_22DE0501C(v19);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v20 = (v14 + *(v9 + 28));
    *v20 = 0;
    v20[1] = 0;
    v21 = (v14 + *(v9 + 32));
    *v21 = 0;
    v21[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A30, &qword_22DECCFC0);
    }
  }

  else
  {
    sub_22DE85040(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  }

  return sub_22DE83F90;
}

void sub_22DE83F90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22DE875F8(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      swift_allocObject();
      v6 = sub_22DE84CE8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE85040(v10, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v14, v6 + v15, &qword_27DA37A30, &qword_22DECCFC0);
    swift_endAccess();
    sub_22DE87660(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
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
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
      swift_allocObject();
      v18 = sub_22DE84CE8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22DE85040(v9, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v14, v18 + v23, &qword_27DA37A30, &qword_22DECCFC0);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.interestedSerials.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkCode.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE843D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));
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

uint64_t sub_22DE8443C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkCode.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.clearUlLinkCode()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkParams.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE845FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));
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

uint64_t sub_22DE84660(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.ulLinkParams.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32);
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

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.clearUlLinkParams()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.additionalPayload.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22DE8497C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38BD0);
  __swift_project_value_buffer(v0, qword_27DA38BD0);
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

uint64_t sub_22DE84BB4()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_27DA38BE8 = v0;
  return result;
}

uint64_t sub_22DE84CE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v18, v11, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v11, v1 + v12, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v19, v8, &qword_27DA37A40, &unk_22DEC7330);
  swift_beginAccess();
  sub_22DDF0208(v8, v1 + v14, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v20, v5, &qword_27DA37A30, &qword_22DECCFC0);

  swift_beginAccess();
  sub_22DDF0208(v5, v1 + v16, &qword_27DA37A30, &qword_22DECCFC0);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DE85040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE850A8()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data, &qword_27DA37A30, &qword_22DECCFC0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(0);
    swift_allocObject();
    v10 = sub_22DE84CE8(v11);
    *(v4 + v8) = v10;
  }

  return sub_22DE85204(v10, a1, a2, a3);
}

uint64_t sub_22DE85204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_22DE85474(a2, a1, a3, a4);
        break;
      case 2:
        sub_22DE85398(a2, a1, a3, a4);
        break;
      case 1:
        sub_22DE852BC(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_22DE852BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DE876C0(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE85398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DE876C0(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DE85474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0);
  result = sub_22DE855BC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DE855BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE85624(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DE8584C(a1, a2, a3, a4);
    return sub_22DE85A74(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DE85624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DE85040(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DE876C0(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DE87660(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DE8584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DE85040(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DE876C0(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC4AD4();
  return sub_22DE87660(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

uint64_t sub_22DE85A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A30, &qword_22DECCFC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A30, &qword_22DECCFC0);
  }

  sub_22DE85040(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DEC4AD4();
  return sub_22DE87660(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
}

BOOL sub_22DE85CA0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v67 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38CA0, &unk_22DECD330);
  MEMORY[0x28223BE20](v65);
  v68 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A30, &qword_22DECCFC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v75 = &v63 - v8;
  v73 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  MEMORY[0x28223BE20](v71);
  v74 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v27 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v27, v26, &qword_27DA37A38, &unk_22DEC6570);
  v28 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__meta;
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
    sub_22DE87660(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    goto LABEL_6;
  }

  v37 = v70;
  sub_22DE85040(&v21[v30], v70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  v38 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v33, v37);
  sub_22DE87660(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DE87660(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v39 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
  swift_beginAccess();
  v40 = v78;
  sub_22DDF0028(v32 + v39, v78, &qword_27DA37A40, &unk_22DEC7330);
  v41 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__common;
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
      sub_22DE87660(v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
      goto LABEL_13;
    }

    v52 = v43 + v42;
    v53 = v64;
    sub_22DE85040(v52, v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v54 = static Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.== infix(_:_:)(v49, v53);
    sub_22DE87660(v53, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v78, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DE87660(v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
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
  v55 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v32 + v55, v48, &qword_27DA37A30, &qword_22DECCFC0);
  v56 = OBJC_IVAR____TtCV6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestP33_E7DC292E27012D0492F3F3E24D0D4F6113_StorageClass__data;
  swift_beginAccess();
  v57 = *(v65 + 48);
  v58 = v68;
  sub_22DDF0028(v48, v68, &qword_27DA37A30, &qword_22DECCFC0);
  sub_22DDF0028(v29 + v56, v58 + v57, &qword_27DA37A30, &qword_22DECCFC0);
  v59 = *(v66 + 48);
  v60 = v67;
  if (v59(v58, 1, v67) == 1)
  {

    sub_22DDEF284(v48, &qword_27DA37A30, &qword_22DECCFC0);
    if (v59(v58 + v57, 1, v60) == 1)
    {
      sub_22DDEF284(v58, &qword_27DA37A30, &qword_22DECCFC0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_22DDF0028(v58, v47, &qword_27DA37A30, &qword_22DECCFC0);
  if (v59(v58 + v57, 1, v60) == 1)
  {

    sub_22DDEF284(v48, &qword_27DA37A30, &qword_22DECCFC0);
    sub_22DE87660(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
LABEL_24:
    sub_22DDEF284(v58, &qword_27DA38CA0, &unk_22DECD330);
    return 0;
  }

  v61 = v63;
  sub_22DE85040(v58 + v57, v63, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  v62 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestDataV2eeoiySbAC_ACtFZ_0(v47, v61);

  sub_22DE87660(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DDEF284(v48, &qword_27DA37A30, &qword_22DECCFC0);
  sub_22DE87660(v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
  sub_22DDEF284(v58, &qword_27DA37A30, &qword_22DECCFC0);
  return (v62 & 1) != 0;
}

uint64_t sub_22DE868A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  if (qword_27DA37880 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27DA38BE8;
}

uint64_t sub_22DE86968(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE876C0(&qword_27DA38C98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE86A08(uint64_t a1)
{
  v2 = sub_22DE876C0(&qword_27DA37A48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE86A74(uint64_t a1, uint64_t a2)
{
  sub_22DE876C0(&qword_27DA37A48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DE86B10()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38BF0);
  __swift_project_value_buffer(v0, qword_27DA38BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "interested_serials";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ul_link_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ul_link_params";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "additional_payload";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_22DEC49B4();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
          sub_22DEC49C4();
        }
      }

LABEL_5:
      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_22DEC4AA4(), !v4))
  {
    result = sub_22DE86FB4(v3, a1, a2, a3);
    if (!v4)
    {
      sub_22DE8702C(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        sub_22DEC4884();
        sub_22DEC4A54();
      }

      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
      return sub_22DEC4894();
    }
  }

  return result;
}

uint64_t sub_22DE86FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE8702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DE870F0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DE876C0(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DE87178@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = sub_22DE0501C(v4);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = *(a1 + 32);
  v7 = (a2 + *(a1 + 28));
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_22DE8721C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE876C0(&qword_27DA38C90, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DE872BC(uint64_t a1)
{
  v2 = sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DE87328(uint64_t a1, uint64_t a2)
{
  sub_22DE876C0(&qword_27DA38C48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 32);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (sub_22DEAFB4C(a1[1], a2[1]))
  {
    sub_22DEC48B4();
    sub_22DE876C0(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22DE85CA0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DE876C0(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DE875F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE87660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE876C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DE87970(uint64_t a1)
{
  result = sub_22DEC48B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22DE87A1C(uint64_t a1)
{
  sub_22DE87B08(319, &qword_28145AD38, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DE624D8();
    if (v2 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v3 <= 0x3F)
      {
        sub_22DE87B08(319, &qword_28145AD88, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DE87B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22DE87B64(uint64_t a1)
{
  sub_22DE87CBC(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  if (v1 <= 0x3F)
  {
    sub_22DE87CBC(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    if (v2 <= 0x3F)
    {
      sub_22DE87CBC(319, &qword_27DA38C88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AMSRequestData);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22DE87CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22DEC4EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

int *Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  *(a2 + result[6]) = 2;
  v5 = (a2 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + result[10]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + result[11]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + result[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + result[13]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + result[14]) = 2;
  *(a2 + result[15]) = 2;
  *(a2 + result[16]) = 2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.primary.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceEnclosureColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceCoverGlassColor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.isTinkerPaired.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.isActiveWatch.setter(char a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22DE88024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

int *Com_Apple_Sse_Ocean_Ndo_Api_UserData.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + result[7]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_22DE88128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_22DE8818C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  *(a1 + 2) = v2;
  *(a1 + 3) = v2;
  *(a1 + 4) = v2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = v3[10];
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  result = (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v7 = &a1[v3[11]];
  *v7 = 0;
  v7[8] = 1;
  v8 = &a1[v3[12]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v3[13]];
  *v9 = 0;
  *(v9 + 1) = 0;
  return result;
}

uint64_t sub_22DE882D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 48));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.nextCheckInEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.userData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0) + 40);
  sub_22DDEF284(v1 + v3, &qword_27DA37A28, &unk_22DEC6560);
  sub_22DE88A44(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_UserData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF0028(v1 + *(v6 + 28), v5, &qword_27DA37D80, &unk_22DEC7960);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE88A44(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a1 + *(v7 + 20)) = 7;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D80, &unk_22DEC7960);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.data.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D78, &unk_22DEC8150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF0028(v1 + *(v6 + 24), v5, &qword_27DA37D78, &unk_22DEC8150);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DE88A44(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  a1[1] = sub_22DE0501C(v9);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a1 + *(v7 + 28));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + *(v7 + 32));
  *v11 = 0;
  v11[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37D78, &unk_22DEC8150);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0) + 28);
  sub_22DDEF284(v1 + v3, &qword_27DA37D80, &unk_22DEC7960);
  sub_22DE88A44(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTLink.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v3[7];
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_CTAction.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  *(a2 + *(v3 + 20)) = 7;
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22DE88A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_CTActionType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) > 8)
  {
    *v1 = 7;
  }

  else
  {
    *v1 = byte_22DECE24A[rawValue - 1];
  }

  return rawValue;
}

uint64_t sub_22DE88B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DE94534();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.interestedSerials.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SerialData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SerialData(0);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DE88DA4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.serialNumber.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0) + 20);
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

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey.warrantyHashKey.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CachedWarrantyKey(0) + 24);
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

uint64_t sub_22DE89040@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
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

uint64_t sub_22DE890A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.serialNumber.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 20);
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

uint64_t sub_22DE891F8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.primary.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22DE5BDA0;
}

uint64_t sub_22DE89328(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceType.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 28);
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

uint64_t sub_22DE89494(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceModel.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 32);
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

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceData.deviceColor.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DE8963C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceData(0) + 36));
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