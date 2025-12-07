uint64_t sub_1D9077988(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E698C818]);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 initWithString_];

  if ([v4 parameterForKey_])
  {
    sub_1D917928C();

    swift_unknownObjectRelease();
  }

  else
  {

    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8D08A50(v9, &qword_1ECAB57F0, &unk_1D9190AA0);
    return 0;
  }
}

unint64_t sub_1D9077AB4()
{
  result = qword_1ECAB9AA8;
  if (!qword_1ECAB9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AA8);
  }

  return result;
}

uint64_t dispatch thunk of StorePurchaseDelegate.handle(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

unint64_t sub_1D9077CA0()
{
  result = qword_1ECAB9AB0;
  if (!qword_1ECAB9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AB0);
  }

  return result;
}

PodcastsFoundation::HTTPStatusCode_optional __swiftcall HTTPStatusCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 500)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 400)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 200)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

unint64_t sub_1D9077D7C()
{
  result = qword_1ECAB9AB8;
  if (!qword_1ECAB9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AB8);
  }

  return result;
}

uint64_t sub_1D9077DD0()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91AD918[v1]);
  return sub_1D9179E1C();
}

uint64_t sub_1D9077E58(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](qword_1D91AD918[v2]);
  return sub_1D9179E1C();
}

uint64_t IMURLRequestEncoder.prepareRequestOnQueueAsync(_:account:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9077EFC, 0, 0);
}

uint64_t sub_1D9077EFC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  *v4 = v0;
  v4[1] = sub_1D904D4F4;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000002CLL, 0x80000001D91D4A70, sub_1D9078458, v3, v5);
}

uint64_t sub_1D907800C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v35 = a5;
  v33 = a3;
  v41 = a2;
  v38 = sub_1D9177E0C();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D9177E9C();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v32 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = sub_1D917653C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a4, v13, v16);
  (*(v10 + 16))(v12, a1, v9);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v10 + 80) + v19 + 8) & ~*(v10 + 80);
  v21 = swift_allocObject();
  v22 = v33;
  *(v21 + 16) = v33;
  (*(v14 + 32))(v21 + v18, v17, v13);
  v23 = v35;
  *(v21 + v19) = v35;
  (*(v10 + 32))(v21 + v20, v12, v32);
  aBlock[4] = sub_1D90786FC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_72;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  v26 = v22;
  v27 = v34;
  sub_1D9177E4C();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  v28 = v36;
  v29 = v38;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v27, v28, v24);
  _Block_release(v24);
  (*(v40 + 8))(v28, v29);
  (*(v37 + 8))(v27, v39);
}

void sub_1D9078464(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a1;
  v22 = a3;
  v5 = sub_1D917653C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = sub_1D91764BC();
  (*(v10 + 16))(v13, v20, v9);
  (*(v6 + 16))(v8, a2, v5);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v13, v9);
  (*(v6 + 32))(v17 + v16, v8, v5);
  aBlock[4] = sub_1D9078954;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D90669A0;
  aBlock[3] = &block_descriptor_8_0;
  v18 = _Block_copy(aBlock);

  [v21 prepareRequest:v14 account:v22 completion:v18];
  _Block_release(v18);
}

void sub_1D90786FC()
{
  v1 = *(sub_1D917653C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938) - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_1D9078464(v5, v0 + v2, v6, v7);
}

uint64_t sub_1D90787E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v13 - v7;
  if (a2)
  {
    v13[1] = a2;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
    return sub_1D917875C();
  }

  else
  {
    v11 = sub_1D917653C();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a4, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
    return sub_1D917876C();
  }
}

uint64_t sub_1D9078954(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1D917653C() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1D90787E8(a1, a2, v2 + v6, v9);
}

uint64_t MediaRequest.Params.init(requestType:requestContentType:viewType:directFetch:relationshipIncludes:relationshipRelates:relationshipLimit:include:omit:typedIncludes:typedExtends:typedAssociations:fields:typedFields:withTypes:displayKinds:identifiers:fragment:limit:filters:meta:offset:pageName:requestAllPages:hostUrl:countryCode:isImplicitActionRequest:searchTerm:queryContentTypes:triggerBy:includeEntitlementsOverride:languageTag:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, char *a15, uint64_t a16, char a17, __int128 a18, uint64_t a19, char a20, char *a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34)
{
  v52 = *(a1 + 4);
  *(a9 + 41) = 263;
  *(a9 + 43) = 5;
  *(a9 + 152) = 1;
  *(a9 + 201) = 1;
  v36 = *(a1 + 40);
  v49 = *a2;
  v37 = *a3;
  v38 = *a4;
  v51 = *a15;
  v53 = *a21;
  v39 = type metadata accessor for MediaRequest.Params(0);
  v40 = v39[28];
  v41 = sub_1D9176C2C();
  v47 = a1[1];
  v48 = *a1;
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = (a9 + v39[29]);
  v43 = (a9 + v39[31]);
  v50 = v39[34];
  v44 = (a9 + v39[33]);
  v45 = (a9 + v39[35]);
  *a9 = v48;
  *(a9 + 16) = v47;
  *(a9 + 32) = v52;
  *(a9 + 40) = v36;
  *(a9 + 41) = v49;
  *(a9 + 42) = v37;
  *(a9 + 43) = v38;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 128) = a13;
  *(a9 + 144) = a14;
  *(a9 + 152) = v51;
  *(a9 + 160) = a16;
  *(a9 + 168) = a17 & 1;
  *(a9 + 176) = a18;
  *(a9 + 192) = a19;
  *(a9 + 200) = a20 & 1;
  *(a9 + 201) = v53;
  *(a9 + 202) = a22;
  result = sub_1D8E26828(a23, a9 + v40);
  *v42 = a24;
  v42[1] = a25;
  *(a9 + v39[30]) = a26;
  *v43 = a27;
  v43[1] = a28;
  *(a9 + v39[32]) = a29;
  *v44 = a30;
  v44[1] = a31;
  *(a9 + v50) = a32;
  *v45 = a33;
  v45[1] = a34;
  return result;
}

PodcastsFoundation::MediaRequest::Association __swiftcall MediaRequest.Association.init(contentType:attribute:)(PodcastsFoundation::MediaRequest::ContentType contentType, PodcastsFoundation::MediaRequest::IncludeExtendTypes_optional attribute)
{
  v3 = *attribute.value;
  *v2 = *contentType;
  v2[1] = v3;
  result.contentType = contentType;
  return result;
}

uint64_t MediaRequest.RequestType.init(raw:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1D91767FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91767BC();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D8D08A50(v6, &qword_1ECAB76F0, &qword_1D91B6700);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = -1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_1D917677C();
    v13 = v17;
    v14 = sub_1D917670C();
    result = (*(v8 + 8))(v10, v7);
    v15 = xmmword_1D91AD940;
    v16 = 3;
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 40) = v16;
  return result;
}

uint64_t MediaRequest.Params.init(recommendationsWith:contentTypes:displayKinds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a2;
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v35 = &v26 - v6;
  v36 = sub_1D8D946F4(&unk_1F5461610);
  sub_1D8D08A50(&unk_1F5461630, &unk_1ECAB9A50, &unk_1D9197130);
  v34 = sub_1D8D946F4(&unk_1F5461640);
  sub_1D8D08A50(&unk_1F5461660, &unk_1ECAB9A50, &unk_1D9197130);
  v8 = sub_1D9176C2C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v10 = MEMORY[0x1E69E7CC0];
  v33 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v32 = sub_1D8D94DF8(v10);
  v31 = sub_1D8D951E0(v10);
  v30 = sub_1D8D9503C(v10);
  v28 = sub_1D8D953C4(v10);
  v27 = sub_1D8D952D8(v10);
  v29 = sub_1D8D95394(v10);
  v26 = sub_1D8D957C4(v10);
  *(a4 + 41) = 263;
  *(a4 + 43) = 5;
  *(a4 + 152) = 1;
  *(a4 + 201) = 1;
  v11 = type metadata accessor for MediaRequest.Params(0);
  v12 = v11[28];
  v9((a4 + v12), 1, 1, v8);
  v13 = (a4 + v11[29]);
  v14 = (a4 + v11[31]);
  v15 = v11[34];
  v16 = (a4 + v11[33]);
  v17 = (a4 + v11[35]);
  *a4 = v37;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 83953409;
  v18 = v32;
  *(a4 + 48) = v33;
  *(a4 + 56) = v18;
  v19 = v30;
  *(a4 + 64) = v31;
  *(a4 + 72) = v10;
  v20 = v36;
  *(a4 + 80) = v19;
  *(a4 + 88) = v20;
  v21 = v28;
  *(a4 + 96) = v34;
  *(a4 + 104) = v21;
  v22 = v27;
  *(a4 + 112) = v10;
  *(a4 + 120) = v22;
  v23 = v38;
  *(a4 + 128) = &unk_1F54615E8;
  *(a4 + 136) = v23;
  *(a4 + 144) = v10;
  *(a4 + 152) = 1;
  *(a4 + 160) = 0;
  *(a4 + 168) = 1;
  v24 = v26;
  *(a4 + 176) = v29;
  *(a4 + 184) = v24;
  *(a4 + 192) = 0;
  *(a4 + 200) = 1;
  *(a4 + 202) = 0;
  result = sub_1D8E26828(v35, a4 + v12);
  *v13 = 0;
  v13[1] = 0;
  *(a4 + v11[30]) = 0;
  *v14 = 0;
  v14[1] = 0;
  *(a4 + v11[32]) = v39;
  *v16 = 0;
  v16[1] = 0;
  *(a4 + v15) = 2;
  *v17 = 0;
  v17[1] = 0;
  return result;
}

PodcastsFoundation::MediaRequest::ContentType_optional __swiftcall MediaRequest.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaRequest.Params.init(searchTerm:contentTypes:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v45 = a2;
  v46 = a3;
  v44 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v39 = &v33 - v10;
  v43 = sub_1D8E27040(&unk_1F5461AF0);
  sub_1D8D08A50(&unk_1F5461B10, &qword_1ECAB8E08, &qword_1D91A7608);
  v42 = sub_1D8D946F4(&unk_1F5461B20);
  sub_1D8D08A50(&unk_1F5461B40, &unk_1ECAB9A50, &unk_1D9197130);
  v41 = sub_1D8D946F4(&unk_1F5461B50);
  sub_1D8D08A50(&unk_1F5461B70, &unk_1ECAB9A50, &unk_1D9197130);
  v12 = 3;
  if ((a5 & 1) == 0)
  {
    v12 = a4;
  }

  v40 = v12;
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  v15 = MEMORY[0x1E69E7CC0];
  v38 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v37 = sub_1D8D951E0(v15);
  v36 = sub_1D8D9503C(v15);
  v35 = sub_1D8D953C4(v15);
  v33 = sub_1D8D952D8(v15);
  v34 = sub_1D8D95394(v15);
  v16 = sub_1D8D957C4(v15);
  *(a6 + 41) = 263;
  *(a6 + 43) = 5;
  *(a6 + 152) = 1;
  *(a6 + 201) = 1;
  v17 = type metadata accessor for MediaRequest.Params(0);
  v18 = v17[28];
  v14((a6 + v18), 1, 1, v13);
  v19 = (a6 + v17[29]);
  v20 = (a6 + v17[31]);
  v21 = v17[34];
  v22 = (a6 + v17[33]);
  v23 = (a6 + v17[35]);
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 40) = 83953412;
  v24 = v43;
  *(a6 + 48) = v38;
  *(a6 + 56) = v24;
  v25 = v36;
  *(a6 + 64) = v37;
  *(a6 + 72) = v15;
  v27 = v41;
  v26 = v42;
  *(a6 + 80) = v25;
  *(a6 + 88) = v26;
  v28 = v35;
  *(a6 + 96) = v27;
  *(a6 + 104) = v28;
  v29 = v33;
  *(a6 + 112) = v15;
  *(a6 + 120) = v29;
  *(a6 + 128) = v15;
  *(a6 + 136) = v15;
  *(a6 + 144) = v15;
  *(a6 + 152) = 1;
  v30 = v39;
  *(a6 + 160) = v40;
  *(a6 + 168) = 0;
  *(a6 + 176) = v34;
  *(a6 + 184) = v16;
  *(a6 + 192) = 0;
  *(a6 + 200) = 257;
  *(a6 + 202) = 0;
  result = sub_1D8E26828(v30, a6 + v18);
  *v19 = 0;
  v19[1] = 0;
  *(a6 + v17[30]) = 0;
  v32 = v45;
  *v20 = v44;
  v20[1] = v32;
  *(a6 + v17[32]) = v46;
  *v22 = 0;
  v22[1] = 0;
  *(a6 + v21) = 2;
  *v23 = 0;
  v23[1] = 0;
  return result;
}

uint64_t MediaRequest.Params.requestType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_1D8D8DFD4(v2, v3, v4, v5, v6, v7);
}

__n128 MediaRequest.Params.requestType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1D8D85E5C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t MediaRequest.Params.limit.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t MediaRequest.Params.offset.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t MediaRequest.Params.hostUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaRequest.Params(0) + 112);

  return sub_1D8ECA48C(v3, a1);
}

uint64_t MediaRequest.Params.hostUrl.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MediaRequest.Params(0) + 112);

  return sub_1D8E26828(a1, v3);
}

uint64_t MediaRequest.Params.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaRequest.Params(0) + 116));

  return v1;
}

void MediaRequest.Params.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params(0) + 116));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MediaRequest.Params.isImplicitActionRequest.setter(char a1)
{
  result = type metadata accessor for MediaRequest.Params(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t MediaRequest.Params.searchTerm.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaRequest.Params(0) + 124));

  return v1;
}

void MediaRequest.Params.searchTerm.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params(0) + 124));

  *v5 = a1;
  v5[1] = a2;
}

double MediaRequest.Params.queryContentTypes.getter()
{
  type metadata accessor for MediaRequest.Params(0);

  return result;
}

void MediaRequest.Params.queryContentTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params(0) + 128);

  *(v1 + v3) = a1;
}

uint64_t MediaRequest.Params.triggerBy.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaRequest.Params(0) + 132));

  return v1;
}

void MediaRequest.Params.triggerBy.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params(0) + 132));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t MediaRequest.Params.includeEntitlementsOverride.setter(char a1)
{
  result = type metadata accessor for MediaRequest.Params(0);
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t MediaRequest.Params.languageTag.getter()
{
  v1 = *(v0 + *(type metadata accessor for MediaRequest.Params(0) + 140));

  return v1;
}

void MediaRequest.Params.languageTag.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MediaRequest.Params(0) + 140));

  *v5 = a1;
  v5[1] = a2;
}

double sub_1D907A264(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

void sub_1D907A3AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7374736163646F70;
  v5 = 0xEA00000000007365;
  v6 = 0x69726F6765746163;
  if (v2 != 5)
  {
    v6 = 0x6970652D7478656ELL;
    v5 = 0xED00007365646F73;
  }

  v7 = 0x80000001D91C7F60;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x697263736E617274;
    v7 = 0xEB00000000737470;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C7F40;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C7F20;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

PodcastsFoundation::MediaRequest::HTTPMethod_optional __swiftcall MediaRequest.HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaRequest.HTTPMethod.rawValue.getter()
{
  v1 = 1953722224;
  if (*v0 != 1)
  {
    v1 = 0x6574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7628135;
  }
}

uint64_t sub_1D907A604(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1953722224;
  if (v2 != 1)
  {
    v4 = 0x6574656C6564;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7628135;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1953722224;
  if (*a2 != 1)
  {
    v8 = 0x6574656C6564;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7628135;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D907A6E8()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D907A778(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D907A7F4(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D907A88C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953722224;
  if (v2 != 1)
  {
    v5 = 0x6574656C6564;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7628135;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void MediaRequest.ViewType.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

PodcastsFoundation::MediaRequest::IncludeExtendTypes_optional __swiftcall MediaRequest.IncludeExtendTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9179C6C();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D907ABB4@<X0>(unint64_t *a1@<X8>)
{
  result = MediaRequest.IncludeExtendTypes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MediaRequest.URLFragment.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

PodcastsFoundation::MediaRequest::Relationship_optional __swiftcall MediaRequest.Relationship.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaRequest.Relationship.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7365646F73697065;
  v3 = 0x2D74736163646F70;
  v4 = 0x697263736E617274;
  if (v1 != 3)
  {
    v4 = 0x7372657470616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D907ADB0()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D907AEAC(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D907AF94(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D907B098(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7365646F73697065;
  v5 = 0xEF736E6F73616573;
  v6 = 0x2D74736163646F70;
  v7 = 0xEB00000000737470;
  v8 = 0x697263736E617274;
  if (v2 != 3)
  {
    v8 = 0x7372657470616863;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C7F20;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

PodcastsFoundation::MediaRequest::Filter_optional __swiftcall MediaRequest.Filter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaRequest.Filter.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656C75646F6DLL;
  v3 = 0x6C725564656566;
  v4 = 0x6449636E7973;
  if (v1 != 3)
  {
    v4 = 0x4B79616C70736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_1D907B258()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D907B340(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D907B414(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D907B504(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656C75646F6DLL;
  v5 = 0xE700000000000000;
  v6 = 0x6C725564656566;
  v7 = 0xE600000000000000;
  v8 = 0x6449636E7973;
  if (v2 != 3)
  {
    v8 = 0x4B79616C70736964;
    v7 = 0xEC00000073646E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001D91C81C0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

PodcastsFoundation::MediaRequest::WithTypes_optional __swiftcall MediaRequest.WithTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaRequest.WithTypes.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x63646F507377656ELL;
  v3 = 0x69726F6765746163;
  if (v1 != 5)
  {
    v3 = 0x7372657470616863;
  }

  v4 = 0x697263736E617274;
  if (v1 != 3)
  {
    v4 = 0x6E79536E61656C63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D656C7469746E65;
  if (v1 != 1)
  {
    v5 = 0x726566664F707061;
  }

  if (*v0)
  {
    v2 = v5;
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

double sub_1D907B710(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

unint64_t sub_1D907B84C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073746E65;
  v3 = *v1;
  v4 = 0xEC00000073747361;
  v5 = 0x63646F507377656ELL;
  v6 = 0xEA00000000007365;
  v7 = 0x69726F6765746163;
  if (v3 != 5)
  {
    v7 = 0x7372657470616863;
    v6 = 0xE800000000000000;
  }

  v8 = 0xEB00000000737470;
  v9 = 0x697263736E617274;
  result = 0xE900000000000063;
  if (v3 != 3)
  {
    v9 = 0x6E79536E61656C63;
    v8 = 0xE900000000000063;
  }

  if (*v1 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6D656C7469746E65;
  if (v3 != 1)
  {
    v11 = 0x726566664F707061;
    v2 = 0xE900000000000073;
  }

  if (*v1)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

void MediaRequest.MediaRequestActionType.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

PodcastsFoundation::MediaRequest::Field_optional __swiftcall MediaRequest.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaRequest.Field.rawValue.getter()
{
  result = 0x6B726F77747261;
  switch(*v0)
  {
    case 1:
      result = 0x5479616C70736964;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x657373416C6D7474;
      break;
    case 4:
      result = 0x656B6F546C6D7474;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x72617262694C6E69;
      break;
    case 0xA:
      result = 1701667182;
      break;
    case 0xB:
      result = 0x614E747369747261;
      break;
    case 0xC:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D907BC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D907BCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1D9179DBC();
  a3(v4);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D907BD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D907BDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_1D9179DBC();
  a4(v5);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D907BE4C@<X0>(unint64_t *a1@<X8>)
{
  result = MediaRequest.Field.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MediaRequest.PageName.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

double MediaRequest.Association.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  if (v2 == 26)
  {
    sub_1D9179DDC();
  }

  else
  {
    sub_1D9179DDC();
    MediaRequest.IncludeExtendTypes.rawValue.getter();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  return result;
}

uint64_t MediaRequest.Association.hashValue.getter()
{
  v2[39] = *v0;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D907C128()
{
  v2[39] = *v0;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D907C178(uint64_t a1)
{
  v3[39] = *v1;
  sub_1D9179DBC();
  MediaRequest.Association.hash(into:)(v3);
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation12MediaRequestC11AssociationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D8D8D46C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 26)
  {
    return v3 == 26;
  }

  if (v3 == 26)
  {
    return 0;
  }

  v5 = MediaRequest.IncludeExtendTypes.rawValue.getter();
  v7 = v6;
  if (v5 != MediaRequest.IncludeExtendTypes.rawValue.getter() || v7 != v8)
  {
    v9 = sub_1D9179ACC();

    return (v9 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D907C2C8()
{
  result = qword_1ECAB9AC8;
  if (!qword_1ECAB9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AC8);
  }

  return result;
}

unint64_t sub_1D907C320()
{
  result = qword_1ECAB9AD0;
  if (!qword_1ECAB9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AD0);
  }

  return result;
}

unint64_t sub_1D907C378()
{
  result = qword_1ECAB9AD8;
  if (!qword_1ECAB9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AD8);
  }

  return result;
}

unint64_t sub_1D907C3D0()
{
  result = qword_1ECAB9AE0;
  if (!qword_1ECAB9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AE0);
  }

  return result;
}

unint64_t sub_1D907C428()
{
  result = qword_1ECAB9AE8;
  if (!qword_1ECAB9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AE8);
  }

  return result;
}

unint64_t sub_1D907C480()
{
  result = qword_1ECAB9AF0;
  if (!qword_1ECAB9AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AF0);
  }

  return result;
}

unint64_t sub_1D907C4D8()
{
  result = qword_1ECAB9AF8;
  if (!qword_1ECAB9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9AF8);
  }

  return result;
}

unint64_t sub_1D907C530()
{
  result = qword_1ECAB9B00;
  if (!qword_1ECAB9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9B00);
  }

  return result;
}

void sub_1D907C5E8(uint64_t a1)
{
  if (!qword_1ECAB0170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9B10, &qword_1D91AE208);
    sub_1D8D93908();
    v1 = sub_1D91780DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB0170);
    }
  }
}

void sub_1D907C660(uint64_t a1)
{
  if (!qword_1ECAB0150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D942BC();
    v1 = sub_1D91780DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB0150);
    }
  }
}

void sub_1D907C6D8(uint64_t a1)
{
  if (!qword_1ECAB0168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D93908();
    v1 = sub_1D91780DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECAB0168);
    }
  }
}

uint64_t sub_1D907C750(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D907C798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D907C7E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaRequest.IncludeExtendTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaRequest.IncludeExtendTypes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaRequest.Association(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 65286 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65286 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65286;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65286;
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

_WORD *storeEnumTagSinglePayload for MediaRequest.Association(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
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
    v5 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1D907CB10()
{
  result = qword_1ECAB9B18;
  if (!qword_1ECAB9B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9B18);
  }

  return result;
}

void __swiftcall ServerPodcast.toFeed()(IMPodcastFeed *__return_ptr retstr)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v56 - v4;
  v6 = [objc_allocWithZone(IMPodcastFeed) init];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
  if (!v8)
  {
    [v6 setFeedDescription_];
    goto LABEL_12;
  }

  v9 = *(v8 + 104);
  if (!v9)
  {
    v10 = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (*(v9 + 24))
  {

LABEL_8:
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    goto LABEL_9;
  }

  v11 = *(v9 + 40);

  if (v11)
  {
    goto LABEL_8;
  }

  v10 = 0;
LABEL_10:
  [v7 setFeedDescription_];

  if (*(v8 + 24))
  {

    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    goto LABEL_13;
  }

LABEL_12:
  v12 = 0;
LABEL_13:
  [v7 setAuthor_];

  if (!v8)
  {
    [v7 setCategory_];
    goto LABEL_22;
  }

  v13 = *(v8 + 208);
  if (v13 && *(v13 + 16))
  {

    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v14 = 0;
  }

  [v7 setCategory_];

  v15 = *(v8 + 112);
  if (v15)
  {

    ServerArtwork.urlResolved.getter(v5);

    v16 = sub_1D9176C2C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      sub_1D8E677CC(v5);
LABEL_22:
      v15 = 0;
      goto LABEL_24;
    }

    sub_1D9176ACC();
    (*(v17 + 8))(v5, v16);
    v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

LABEL_24:
  [v7 setImageURL_];

  if (v8)
  {
    if (*(v8 + 24))
    {

      v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v18 = 0;
    }

    [v7 setProvider_];

    if (*(v8 + 96))
    {

      v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_32;
    }
  }

  else
  {
    [v7 setProvider_];
  }

  v19 = 0;
LABEL_32:
  [v7 setTitle_];

  if (v8)
  {
    if (!*(v8 + 184) || (, v20 = sub_1D917980C(), , v20 != 1))
    {
      LOBYTE(v20) = sub_1D9179ACC();
    }

    [v7 setIsExplicit_];
    [v7 setIsNotSubscribable_];
    if (*(v8 + 40))
    {

      v21 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v21 = 0;
    }

    [v7 setShareURL_];

    if (*(v8 + 144))
    {

      v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_43;
    }
  }

  else
  {
    [v7 setIsExplicit_];
    [v7 setIsNotSubscribable_];
    [v7 setShareURL_];
  }

  v22 = 0;
LABEL_43:
  [v7 setShowType_];

  if (v8)
  {
    if (*(v8 + 200))
    {

      v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v23 = 0;
    }

    [v7 setWebpageURL_];

    v24 = *(v8 + 152);
    if (v24)
    {
      v25 = *(v24 + 16);
      if (v25)
      {
        if (*(v25 + 56))
        {

          v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

          goto LABEL_53;
        }
      }
    }
  }

  else
  {
    [v7 setWebpageURL_];
  }

  v26 = 0;
LABEL_53:
  [v7 setUberBackgroundImageURL_];

  if (v8)
  {
    v27 = *(v8 + 152);
    if (v27 && (v28 = *(v27 + 16)) != 0 && *(v28 + 72))
    {

      v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v29 = 0;
    }

    [v7 setUberBackgroundJoeColor_];

    sub_1D917980C();

    v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    [v7 setUberBackgroundJoeColor_];
    v30 = 0;
  }

  [v7 setDisplayType_];

  v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v7 setPodcastStoreId_];

  if (!v8)
  {
    [v7 setArtworkPrimaryColor_];
LABEL_69:
    v34 = 0;
    goto LABEL_70;
  }

  v32 = *(v8 + 112);
  if (v32 && *(v32 + 72))
  {

    v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v33 = 0;
  }

  [v7 setArtworkPrimaryColor_];

  if (!*(v8 + 80))
  {
    goto LABEL_69;
  }

  v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

LABEL_70:
  [v7 setResolvedFeedURL_];

  v35 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
  if (!v35)
  {
    goto LABEL_80;
  }

  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_80;
  }

  v37 = *(v36 + 16);
  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_74;
    }

LABEL_80:
    v40 = 0;
    v39 = 0;
    goto LABEL_81;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_80;
  }

LABEL_74:
  if ((v37 & 0xC000000000000001) != 0)
  {

    v55 = MEMORY[0x1DA72AA90](0, v37);

    v38 = v55;
    goto LABEL_77;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 32);
LABEL_77:
    v39 = v38;
    v40 = sub_1D907D79C();

LABEL_81:
    [v7 setChannelItem_];

    if (v8 && *(v8 + 240))
    {

      v41 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v41 = 0;
    }

    [v7 setShowSpecificUpsellCopy_];

    v42 = OBJC_IVAR___MTServerPodcast_episodes;
    swift_beginAccess();
    v43 = *(v2 + v42);
    if (v43)
    {
      if (v43 >> 62)
      {
        goto LABEL_120;
      }

      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_88:
      if (v44)
      {
        v58 = MEMORY[0x1E69E7CC0];

        sub_1D91795CC();
        if ((v44 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_122;
        }

        v45 = 0;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x1DA72AA90](v45, v43);
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);
          }

          v47 = v46;
          ++v45;
          sub_1D907DDC4();

          sub_1D917959C();
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
        }

        while (v44 != v45);
      }

      sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
      v48 = sub_1D91785DC();

      [v48 mutableCopy];

      sub_1D917928C();
      swift_unknownObjectRelease();
      sub_1D8CF2154(0, &unk_1ECAAFE00, 0x1E695DF70);
      if (swift_dynamicCast())
      {
        v49 = v60;
      }

      else
      {
        v49 = 0;
      }

      [v7 setItems_];
    }

    if (!v8 || (v44 = *(v8 + 224)) == 0)
    {
LABEL_118:

      return;
    }

    v57 = v39;
    v58 = MEMORY[0x1E69E7CC0];
    v8 = v44 & 0xFFFFFFFFFFFFFF8;
    if (!(v44 >> 62))
    {
      v50 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_104:

      if (v50)
      {
        v51 = 0;
        v43 = 0;
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x1DA72AA90](v51, v44);
            v39 = (v51 + 1);
            if (__OFADD__(v51, 1))
            {
LABEL_116:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v51 >= *(v8 + 16))
            {
              __break(1u);
LABEL_120:
              v44 = sub_1D917935C();
              goto LABEL_88;
            }

            v52 = *(v44 + 8 * v51 + 32);

            v39 = (v51 + 1);
            if (__OFADD__(v51, 1))
            {
              goto LABEL_116;
            }
          }

          v60 = v52;
          sub_1D907DC1C(&v59);

          if (v59)
          {
            MEMORY[0x1DA729B90](v53);
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v56 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D917863C();
            }

            sub_1D917869C();
          }

          ++v51;
        }

        while (v39 != v50);
      }

      sub_1D8CF2154(0, &qword_1EDCD0A08, off_1E8567520);
      v54 = sub_1D91785DC();

      [v7 setOffers_];

      v39 = v57;
      goto LABEL_118;
    }

LABEL_122:
    v50 = sub_1D917935C();
    goto LABEL_104;
  }

  __break(1u);
}

id sub_1D907D79C()
{
  v1 = [objc_allocWithZone(IMPodcastFeedChannelItem) init];
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setName_];

  if (*(v2 + 56))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 48);
  }

  [v1 setShowCount_];
  if (*(v2 + 72))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 64);
  }

  [v1 setAvailableShowCount_];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v1 setStoreId_];

  v7 = *(v2 + 24);
  if (v7 && *(v7 + 56))
  {

    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v8 = 0;
  }

  [v1 setArtworkURL_];

  v9 = *(v2 + 128);
  if (v9 && *(v9 + 56))
  {

    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {

    v10 = 0;
  }

  [v1 setLogoImageURL_];

  if (!v9)
  {
    [v1 setLogoImageHeight_];
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v11 = 0.0;
  if ((*(v9 + 40) & 1) == 0)
  {
    *&v11 = *(v9 + 32);
  }

  [v1 setLogoImageHeight_];
  if (*(v9 + 24) == 1)
  {
    goto LABEL_21;
  }

  v13 = *(v9 + 16);
LABEL_22:
  *&v12 = v13;
  [v1 setLogoImageWidth_];
  v14 = *(v2 + 112);
  if (v14 && (v15 = *(v14 + 32)) != 0 && *(v15 + 56))
  {

    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v16 = 0;
  }

  [v1 setUberBackgroundImageURL_];

  v17 = *(v2 + 112);
  if (v17 && (v18 = *(v17 + 32)) != 0 && *(v18 + 72))
  {

    v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v19 = 0;
  }

  [v1 setUberBackgroundJoeColor_];

  if (*(v2 + 144))
  {

    v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v20 = 0;
  }

  [v1 setBackgroundColor_];

  if (*(v2 + 168))
  {

    v21 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v21 = 0;
  }

  [v1 setUrl_];

  if (*(v2 + 73) - 1 < 2)
  {
    if (*(v2 + 152))
    {
      v22 = *(v2 + 152);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    if (*(v2 + 120))
    {
      v23 = *(v2 + 120);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v26 = v22;

    sub_1D8E3025C(v23);
    if (v26 >> 62)
    {
      sub_1D917935C();
    }
  }

  v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setDisplayType_];

  return v1;
}

void sub_1D907DC1C(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(IMPodcastOffer) init];

  v4 = sub_1D917980C();

  if (v4 > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v3 setKind_];

  v6 = sub_1D917980C();

  if (v6 > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v3 setPriceType_];

  *a2 = v3;
}

id sub_1D907DDC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v77 = &v78[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78[-v5 - 7];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v78[-v8 - 7];
  v10 = [objc_allocWithZone(IMPodcastFeedItem) init];
  v11 = *&v0[OBJC_IVAR___MTServerPodcastEpisode_attributes];
  if (*(v11 + 24))
  {

    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v12 = 0;
  }

  [v10 setAuthor_];

  v13 = *(v11 + 248);
  if (v13 && *(v13 + 16))
  {

    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v14 = 0;
  }

  [v10 setCategory_];

  if (!*(v11 + 224) || (, v15 = sub_1D917980C(), , v15 != 1))
  {
    LOBYTE(v15) = sub_1D9179ACC();
  }

  [v10 setIsExplicit_];
  if (*(v11 + 328))
  {

    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v16 = 0;
  }

  [v10 setGuid_];

  if (*(v11 + 184))
  {
    goto LABEL_15;
  }

  v18 = *(v11 + 112);
  if (v18 && *(v18 + 24))
  {

LABEL_15:

    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    goto LABEL_20;
  }

  v17 = 0;
LABEL_20:
  [v10 setItemDescription_];

  v19 = *(v11 + 112);
  if (v19)
  {
    if (*(v19 + 24))
    {
LABEL_24:

      v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_26;
    }

    if (*(v19 + 40))
    {

      goto LABEL_24;
    }
  }

  v20 = 0;
LABEL_26:
  [v10 setItemSummary_];

  PodcastEpisodeAttributes.releaseDateResolved.getter(v9);
  v21 = sub_1D9176E3C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v9, 1, v21) != 1)
  {
    v24 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v22 + 8))(v9, v21);
  }

  [v10 setPubDate_];

  v25 = *(v11 + 208);
  if (v25)
  {

    PodcastEpisodeAttributes.AvailabilityDates.free.getter(v6);

    if (v23(v6, 1, v21) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v22 + 8))(v6, v21);
    }
  }

  else
  {
    (*(v22 + 56))(v6, 1, 1, v21);
  }

  v26 = v77;
  [v10 setFirstTimeAvailableAsFree_];

  v27 = *(v11 + 208);
  if (v27)
  {
    v78[0] = 2;

    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(v78, v26);

    if (v23(v26, 1, v21) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v22 + 8))(v26, v21);
    }
  }

  else
  {
    (*(v22 + 56))(v26, 1, 1, v21);
  }

  v28 = v1;
  [v10 setFirstTimeAvailableAsPaid_];

  if (*(v11 + 88))
  {

    v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v29 = 0;
  }

  [v10 setTitle_];

  if (*(v11 + 104))
  {

    v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v30 = 0;
  }

  [v10 setItunesTitle_];

  PodcastEpisodeAttributes.uti.getter();
  if (v31)
  {
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v32 = 0;
  }

  [v10 setUti_];

  if (*(v11 + 360))
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v11 + 352);
  }

  [v10 setSeasonNumber_];
  if (*(v11 + 344))
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v11 + 336);
  }

  [v10 setEpisodeNumber_];
  if (*(v11 + 168))
  {

    sub_1D917980C();
  }

  v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v10 setEpisodeType_];

  if (*(v11 + 240))
  {

    v36 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v36 = 0;
  }

  [v10 setWebpageURL_];

  v37 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v10 setEpisodeStoreId_];

  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v38, &v82);
  v40 = v39;
  v41 = v82;
  v43 = v42 / 1000.0;
  if (v44)
  {
    v43 = 0.0;
  }

  [v10 setDuration_];
  v45 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v10 setPriceType_];

  if (v40)
  {
    v46 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v46 = 0;
  }

  [v10 setEnclosureURL_];

  v80[1] = v41;
  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v47, &v81);
  v49 = v48;
  v50 = v81;
  if (v51)
  {
    v52 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v52 = 0;
  }

  [v10 setFreeTranscriptIdentifier_];

  if (v49)
  {
    v53 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v53 = 0;
  }

  [v10 setFreeTranscriptSnippet_];

  if (v50 == 2)
  {
    v54 = 0;
  }

  else
  {
    v54 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v10 setFreeTranscriptProvider_];

  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v55, v80);
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v80[0];
  v63 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v10 setEntitledPriceType_];

  v64 = v59 / 1000.0;
  if (v61)
  {
    v64 = 0.0;
  }

  [v10 setEntitledDuration_];
  if (v57)
  {
    v65 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v65 = 0;
  }

  [v10 setEntitledEnclosureURL_];

  v78[1] = v62;
  ServerPodcastEpisode.determineBestTranscriptMetadata(for:)(v66, &v79);
  v68 = v67;
  v69 = v79;
  if (v70)
  {
    v71 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v71 = 0;
  }

  [v10 setEntitledTranscriptIdentifier_];

  if (v68)
  {
    v72 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v72 = 0;
  }

  [v10 setEntitledTranscriptSnippet_];

  if (v69 == 2)
  {
    v73 = 0;
  }

  else
  {
    v73 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  [v10 setEntitledTranscriptProvider_];

  v74 = [v28 chapters];
  [v10 setChapters_];

  v75 = [v28 chapterSource];
  [v10 setChapterSource_];

  return v10;
}

void PodcastEpisodeAttributes.episodeType.getter(char *a1@<X8>)
{
  if (*(v1 + 168))
  {

    v3 = sub_1D917980C();

    v4 = v3 == 1;
    if (v3 == 2)
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

BOOL MediaAttributes.contentRatingResolved.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 96))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D917980C();

  return v3 == 1;
}

void PodcastAttributes.displayTypeResolved.getter(char *a1@<X8>)
{

  v2 = sub_1D917980C();

  v3 = v2 == 1;
  if (v2 == 2)
  {
    v3 = 2;
  }

  *a1 = v3;
}

uint64_t PodcastAttributes.DisplayType.rawValue.getter()
{
  v1 = 1684627824;
  if (*v0 != 1)
  {
    v1 = 0x646972627968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701147238;
  }
}

uint64_t Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x6269726373627573;
  }

  else
  {
    return 7628135;
  }
}

uint64_t ServerArtwork.urlResolved.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = *(v1 + 56);
  if (!v6 || (*(v1 + 24) & 1) != 0 || (*(v1 + 40) & 1) != 0)
  {
    v7 = sub_1D9176C2C();
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = *(v1 + 32);
    v37 = *(v1 + 48);
    v38 = v6;
    v35 = 8218747;
    v36 = 0xE300000000000000;

    v12 = sub_1D905F354(v11);
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v33 = v14;
    v34 = v15;
    v16 = sub_1D8D447DC();
    v17 = MEMORY[0x1E69E6158];
    v18 = sub_1D917922C(&v35, &v33, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v16, v16, v16);
    v20 = v19;

    v37 = v18;
    v38 = v20;
    v35 = 8222587;
    v36 = 0xE300000000000000;
    v21 = sub_1D905F354(v10);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v33 = v23;
    v34 = v24;
    v25 = sub_1D917922C(&v35, &v33, 0, 0, 0, 1, v17, v17, v17, v16, v16, v16);
    v27 = v26;

    v37 = v25;
    v38 = v27;
    v35 = 8218235;
    v36 = 0xE300000000000000;
    v33 = 6778986;
    v34 = 0xE300000000000000;
    sub_1D917922C(&v35, &v33, 0, 0, 0, 1, v17, v17, v17, v16, v16, v16);

    v28 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v29 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v30 = [v28 initWithString_];

    if (v30)
    {
      sub_1D9176B9C();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = sub_1D9176C2C();
    (*(*(v32 - 8) + 56))(v5, v31, 1, v32);
    return sub_1D8D6734C(v5, a1, &unk_1ECAB5910, &qword_1D9188C90);
  }
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.free.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9[-v3];
  v11 = 1;
  PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v11, &v9[-v3]);
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) == 1)
  {
    v10 = 0;
    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v10, a1);
    result = v7(v4, 1, v5);
    if (result != 1)
    {
      return sub_1D8D08A50(v4, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v6 + 32))(a1, v4, v5);
    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  return result;
}

PodcastsFoundation::PodcastEpisodeAttributes::MediaKind_optional PodcastEpisodeAttributes.mediaKindResolved.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 280);
  if (v3)
  {
    v4 = *(v1 + 272);

    v5._countAndFlagsBits = v4;
    v5._object = v3;
    result.value = PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v5).value;
    v7 = v8;
    if (v8 == 5)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t PodcastEpisodeAttributes.uti.getter()
{
  v1 = sub_1D91772BC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 280);
  if (v5)
  {
    v6 = *(v0 + 272);

    v7._countAndFlagsBits = v6;
    v7._object = v5;
    PodcastEpisodeAttributes.MediaKind.init(rawValue:)(v7);
    if (v11 != 5)
    {
      if (v11 == 1)
      {
        sub_1D917729C();
        goto LABEL_6;
      }

      if (v11)
      {
        return 0;
      }
    }
  }

  sub_1D917728C();
LABEL_6:
  v8 = sub_1D917721C();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t PodcastEpisodeAttributes.EpisodeType.rawValue.getter()
{
  v1 = 0x72656C69617274;
  if (*v0 != 1)
  {
    v1 = 0x73756E6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t PodcastEpisodeAttributes.episodeArtwork.getter()
{
  v1 = *(v0 + 128);
  if (!v1)
  {
  }

  v2 = *(v0 + 120) == 0x65646F73697065 && v1 == 0xE700000000000000;
  if (v2 || (sub_1D9179ACC() & 1) != 0)
  {
  }

  else
  {
    return 0;
  }
}

BOOL PodcastAttributes.isSerialShowTypeInFeed.getter()
{
  if (*(v0 + 144))
  {
    v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_opt_self() showTypeFromString_];

  return v2 == 2;
}

uint64_t String.posixTimestampToDate()@<X0>(uint64_t a3@<X8>)
{
  if (qword_1EDCD09F8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDCD0A00;
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v4 dateFromString_];

  if (v6)
  {
    sub_1D9176DFC();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1D9176E3C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a3, v7, 1, v8);
}

id ServerPodcastEpisode.__allocating_init(id:type:href:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  v17 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v16[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v18 = &v16[OBJC_IVAR___MTServerPodcastEpisode_id];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v16[OBJC_IVAR___MTServerPodcastEpisode_type];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v16[OBJC_IVAR___MTServerPodcastEpisode_href];
  *v20 = a5;
  *(v20 + 1) = a6;
  *&v16[OBJC_IVAR___MTServerPodcastEpisode_attributes] = a7;
  swift_beginAccess();
  *&v16[v17] = a8;
  v23.receiver = v16;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t ServerPodcastBase.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);

  return v1;
}

uint64_t ServerPodcastBase.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type);

  return v1;
}

uint64_t sub_1D907F5E0(uint64_t a1)
{
  v2 = sub_1D908FF80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D907F61C(uint64_t a1)
{
  v2 = sub_1D908FF80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D907F6E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B78, &qword_1D91AE508);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D908FF80();
  sub_1D9179F1C();
  LOBYTE(v12) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D91799BC();
    v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes);
    HIBYTE(v11) = 2;
    type metadata accessor for PodcastAttributes(0);
    sub_1D9090018(&qword_1ECAB20C0, 255, type metadata accessor for PodcastAttributes, &protocol conformance descriptor for PodcastAttributes);
    sub_1D917999C();
    v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships);
    HIBYTE(v11) = 3;
    type metadata accessor for PodcastRelationships();
    sub_1D9090018(&qword_1ECAB1D90, v10, type metadata accessor for PodcastRelationships, &protocol conformance descriptor for PodcastRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

char *ServerPodcastBase.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B80, &unk_1D91AE510);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D908FF80();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ServerPodcastBase();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    v9 = sub_1D91798BC();
    v11 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v21) = 1;
    v13 = sub_1D91798BC();
    v14 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_type);
    *v14 = v13;
    v14[1] = v15;
    type metadata accessor for PodcastAttributes(0);
    v20 = 2;
    sub_1D9090018(&qword_1EDCD48C0, 255, type metadata accessor for PodcastAttributes, &protocol conformance descriptor for PodcastAttributes);
    sub_1D917989C();
    *(v1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes) = v21;
    type metadata accessor for PodcastRelationships();
    v20 = 3;
    sub_1D9090018(&qword_1EDCD3968, v16, type metadata accessor for PodcastRelationships, &protocol conformance descriptor for PodcastRelationships);
    sub_1D917989C();
    *(v1 + OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships) = v21;
    v17 = type metadata accessor for ServerPodcastBase();
    v19.receiver = v1;
    v19.super_class = v17;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D907FD7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *ServerPodcast.__allocating_init(from:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MTServerPodcast_episodes] = 0;
  sub_1D8CFD9D8(a1, v6);
  v4 = ServerPodcastBase.init(from:)(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

char *ServerPodcast.init(from:)(void *a1)
{
  *(v1 + OBJC_IVAR___MTServerPodcast_episodes) = 0;
  sub_1D8CFD9D8(a1, v5);
  v3 = ServerPodcastBase.init(from:)(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t ServerPodcastEpisode.id.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_id);

  return v1;
}

uint64_t ServerPodcastEpisode.type.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_type);

  return v1;
}

uint64_t ServerPodcastEpisode.href.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTServerPodcastEpisode_href);

  return v1;
}

void sub_1D90800C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1D9080128()
{
  v1 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D9080174(uint64_t a1)
{
  v3 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ServerPodcastEpisode.init(id:type:href:attributes:relationships:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v8[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  v11 = &v8[OBJC_IVAR___MTServerPodcastEpisode_id];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v8[OBJC_IVAR___MTServerPodcastEpisode_type];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = &v8[OBJC_IVAR___MTServerPodcastEpisode_href];
  *v13 = a5;
  *(v13 + 1) = a6;
  *&v8[OBJC_IVAR___MTServerPodcastEpisode_attributes] = a7;
  swift_beginAccess();
  *&v8[v10] = a8;
  v15.receiver = v8;
  v15.super_class = type metadata accessor for ServerPodcastEpisode();
  return objc_msgSendSuper2(&v15, sel_init);
}

double sub_1D90802D4(void *a1)
{
  v3 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 || (v5 = [objc_allocWithZone(type metadata accessor for PodcastEpisodeRelationships()) init], v6 = *(v1 + v3), *(v1 + v3) = v5, v6, (v4 = *(v1 + v3)) != 0))
  {
    v8 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
    swift_beginAccess();
    if (!*&v4[v8])
    {
      v9 = objc_allocWithZone(type metadata accessor for PodcastRelationshipContainer());
      v10 = v4;
      v11 = [v9 init];
      v12 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
      swift_beginAccess();
      v13 = *&v10[v12];
      *&v10[v12] = v11;
    }

    v14 = *(v1 + v3);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
      swift_beginAccess();
      v16 = *(v14 + v15);
      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D9189070;
        *(v17 + 32) = a1;
        v18 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
        swift_beginAccess();
        *&v16[v18] = v17;
        v19 = v16;
        v20 = a1;
      }
    }
  }

  return result;
}

uint64_t sub_1D90804CC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1717924456;
  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974616C6572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_1D908055C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D90910AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9080584(uint64_t a1)
{
  v2 = sub_1D90900A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90805C0(uint64_t a1)
{
  v2 = sub_1D90900A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D908069C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BA0, &qword_1D91AE520);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90900A8();
  sub_1D9179F1C();
  LOBYTE(v14) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D91799BC();
    LOBYTE(v14) = 2;
    sub_1D91799BC();
    v14 = *(v3 + OBJC_IVAR___MTServerPodcastEpisode_attributes);
    LOBYTE(v13) = 3;
    type metadata accessor for PodcastEpisodeAttributes(0);
    sub_1D9090018(&qword_1ECAB9420, 255, type metadata accessor for PodcastEpisodeAttributes, &protocol conformance descriptor for PodcastEpisodeAttributes);
    sub_1D91799FC();
    v9 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
    swift_beginAccess();
    v13 = *(v3 + v9);
    v12[15] = 4;
    type metadata accessor for PodcastEpisodeRelationships();
    sub_1D9090018(&qword_1ECAB9428, v10, type metadata accessor for PodcastEpisodeRelationships, &protocol conformance descriptor for PodcastEpisodeRelationships);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

char *ServerPodcastEpisode.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BA8, &qword_1D91AE528);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v25 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  *&v1[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90900A8();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for ServerPodcastEpisode();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    LOBYTE(v27) = 0;
    v10 = sub_1D91798BC();
    v12 = &v1[OBJC_IVAR___MTServerPodcastEpisode_id];
    *v12 = v10;
    v12[1] = v13;
    LOBYTE(v27) = 1;
    v14 = sub_1D91798BC();
    v15 = &v1[OBJC_IVAR___MTServerPodcastEpisode_type];
    *v15 = v14;
    v15[1] = v16;
    LOBYTE(v27) = 2;
    v17 = sub_1D91798BC();
    v18 = &v1[OBJC_IVAR___MTServerPodcastEpisode_href];
    *v18 = v17;
    v18[1] = v19;
    type metadata accessor for PodcastEpisodeAttributes(0);
    LOBYTE(v28) = 3;
    sub_1D9090018(&qword_1EDCD2E70, 255, type metadata accessor for PodcastEpisodeAttributes, &protocol conformance descriptor for PodcastEpisodeAttributes);
    sub_1D91798FC();
    *&v1[OBJC_IVAR___MTServerPodcastEpisode_attributes] = v27;
    type metadata accessor for PodcastEpisodeRelationships();
    LOBYTE(v27) = 4;
    sub_1D9090018(&qword_1EDCD2758, v20, type metadata accessor for PodcastEpisodeRelationships, &protocol conformance descriptor for PodcastEpisodeRelationships);
    sub_1D917989C();
    v21 = v28;
    v22 = v25;
    swift_beginAccess();
    v23 = *&v3[v22];
    *&v3[v22] = v21;

    v24 = type metadata accessor for ServerPodcastEpisode();
    v26.receiver = v3;
    v26.super_class = v24;
    v3 = objc_msgSendSuper2(&v26, sel_init);
    (*(v9 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t ServerPodcastStation.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id);

  return v1;
}

uint64_t ServerPodcastStation.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type);

  return v1;
}

uint64_t sub_1D9080FB0()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x7365646F73697065;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D908101C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9091264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9081044(uint64_t a1)
{
  v2 = sub_1D9090140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9081080(uint64_t a1)
{
  v2 = sub_1D9090140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1D90810D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D9081180(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BD0, &unk_1D91AE530);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090140();
  sub_1D9179F1C();
  LOBYTE(v14) = 0;
  sub_1D91799BC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D91799BC();
    v14 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_attributes);
    LOBYTE(v13) = 2;
    type metadata accessor for PodcastStationAttributes();
    sub_1D9090018(&qword_1ECAB9BE0, v10, type metadata accessor for PodcastStationAttributes, &protocol conformance descriptor for PodcastStationAttributes);
    sub_1D91799FC();
    v11 = OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes;
    swift_beginAccess();
    v13 = *(v3 + v11);
    v12[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    sub_1D90287C8();
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

char *ServerPodcastStation.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BE8, &qword_1D91AE540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v21 = OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_episodes] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090140();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for ServerPodcastStation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    LOBYTE(v23) = 0;
    v10 = sub_1D91798BC();
    v12 = &v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id];
    *v12 = v10;
    v12[1] = v13;
    LOBYTE(v23) = 1;
    v14 = sub_1D91798BC();
    v15 = &v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_type];
    *v15 = v14;
    v15[1] = v16;
    type metadata accessor for PodcastStationAttributes();
    LOBYTE(v24) = 2;
    sub_1D9090018(&qword_1ECAB9BF0, v17, type metadata accessor for PodcastStationAttributes, &protocol conformance descriptor for PodcastStationAttributes);
    sub_1D91798FC();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_attributes] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8F38, &qword_1D91A7A68);
    LOBYTE(v23) = 3;
    sub_1D9028F30();
    sub_1D917989C();
    v18 = v24;
    v19 = v21;
    swift_beginAccess();
    *&v3[v19] = v18;

    v20 = type metadata accessor for ServerPodcastStation();
    v22.receiver = v3;
    v22.super_class = v20;
    v3 = objc_msgSendSuper2(&v22, sel_init);
    (*(v9 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

double sub_1D9081820(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  return result;
}

double sub_1D9081870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(v4 + v6) = a1;

  return result;
}

uint64_t sub_1D9081904@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1D9081988()
{
  if (*v0)
  {
    return 0x74726F6873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_1D90819C0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74726F6873 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D9081A98(uint64_t a1)
{
  v2 = sub_1D90901B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9081AD4(uint64_t a1)
{
  v2 = sub_1D90901B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerDescription.deinit()
{

  return v0;
}

uint64_t ServerDescription.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9081B78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9BF8, &qword_1D91AE548);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90901B8();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D917994C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D917994C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ServerDescription.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerDescription.init(from:)(a1);
  return v2;
}

void *ServerDescription.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C00, &qword_1D91AE550);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90901B8();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for ServerDescription();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v1[2] = sub_1D917984C();
    v1[3] = v8;
    v14 = 1;
    v10 = sub_1D917984C();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v1[4] = v10;
    v1[5] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t ServerArtwork.url.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ServerArtwork.bgColor.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ServerArtwork.textColor1.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ServerArtwork.textColor2.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ServerArtwork.textColor3.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ServerArtwork.textColor4.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

__n128 ServerArtwork.__allocating_init(width:height:url:bgColor:textColor1:textColor2:textColor3:textColor4:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12, uint64_t a13, uint64_t a14)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2 & 1;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4 & 1;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  *(v21 + 80) = a9;
  *(v21 + 96) = a10;
  result = a12;
  *(v21 + 112) = a12;
  *(v21 + 128) = a13;
  *(v21 + 136) = a14;
  return result;
}

uint64_t ServerArtwork.init(width:height:url:bgColor:textColor1:textColor2:textColor3:textColor4:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4 & 1;
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  *(v13 + 64) = a7;
  *(v13 + 72) = a8;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 112) = a11;
  *(v13 + 128) = a12;
  *(v13 + 136) = a13;
  return v13;
}

uint64_t sub_1D90821D0()
{
  v1 = 0x6874646977;
  v2 = 7107189;
  if (*v0 != 2)
  {
    v2 = 0x726F6C6F436762;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 > 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return 0x6F6C6F4374786574;
  }
}

uint64_t sub_1D90822C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D90913C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90822F0(uint64_t a1)
{
  v2 = sub_1D90904B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908232C(uint64_t a1)
{
  v2 = sub_1D90904B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerArtwork.deinit()
{

  return v0;
}

uint64_t ServerArtwork.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ServerArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C08, &qword_1D91AE558);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90904B8();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D917998C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D917998C();
  v8[13] = 2;
  sub_1D917994C();
  v8[12] = 3;
  sub_1D917994C();
  v8[11] = 4;
  sub_1D917994C();
  v8[10] = 5;
  sub_1D917994C();
  v8[9] = 6;
  sub_1D917994C();
  v8[8] = 7;
  sub_1D917994C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ServerArtwork.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ServerArtwork.init(from:)(a1);
  return v2;
}

uint64_t *ServerArtwork.init(from:)(void *a1)
{
  v20[1] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C10, &qword_1D91AE560);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90904B8();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = 0;
    *(v1 + 16) = sub_1D917988C();
    *(v1 + 24) = v8 & 1;
    v27 = 1;
    *(v1 + 32) = sub_1D917988C();
    *(v1 + 40) = v9 & 1;
    v26 = 2;
    *(v1 + 48) = sub_1D917984C();
    *(v1 + 56) = v11;
    v25 = 3;
    *(v1 + 64) = sub_1D917984C();
    *(v1 + 72) = v12;
    v24 = 4;
    *(v1 + 80) = sub_1D917984C();
    *(v1 + 88) = v13;
    v23 = 5;
    *(v1 + 96) = sub_1D917984C();
    *(v1 + 104) = v14;
    v22 = 6;
    *(v1 + 112) = sub_1D917984C();
    *(v1 + 120) = v15;
    v21 = 7;
    v16 = sub_1D917984C();
    v17 = v7;
    v19 = v18;
    (*(v5 + 8))(v17, v4);
    *(v1 + 128) = v16;
    *(v1 + 136) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

id sub_1D9082AC8()
{
  result = sub_1D9082AE8();
  qword_1EDCD0A00 = result;
  return result;
}

id sub_1D9082AE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8908, &unk_1D91A4830);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1D9176F0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1D9176EBC();
  v8 = sub_1D9176EDC();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v7 setDateFormat_];

  sub_1D9176FEC();
  v10 = sub_1D917701C();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1D9176FFC();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  return v7;
}

id static NSDateFormatter.posixTimestampFormatter.getter()
{
  if (qword_1EDCD09F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD0A00;

  return v1;
}

uint64_t PodcastAttributes.artistName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PodcastAttributes.url.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

PodcastsFoundation::PodcastAttributes::DisplayType_optional __swiftcall PodcastAttributes.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PodcastAttributes.displayType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PodcastAttributes.feedUrl.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PodcastAttributes.name.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PodcastAttributes.copyright.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PodcastAttributes.kind.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t PodcastAttributes.releaseDateTime.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t PodcastAttributes.contentRating.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t PodcastAttributes.websiteUrl.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t PodcastAttributes.upsell.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t sub_1D9083064@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B28, &unk_1D91AE4F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = *a1;
  swift_beginAccess();
  sub_1D8D088B4(v3 + v13, v12, &qword_1ECAB9B28, &unk_1D91AE4F8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return sub_1D8D6734C(v12, a3, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  sub_1D8D08A50(v12, &qword_1ECAB9B28, &unk_1D91AE4F8);
  a2(v3);
  sub_1D8D088B4(a3, v9, &qword_1ECAB75C0, &unk_1D9188A50);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_1D908631C(v9, v3 + v13);
  return swift_endAccess();
}

uint64_t sub_1D908326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  if (*(a1 + 168))
  {
    if (qword_1EDCD09F8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDCD0A00;
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v9 = [v7 dateFromString_];

    if (v9)
    {
      sub_1D9176DFC();

      v10 = sub_1D9176E3C();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_1D9176E3C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_1D8D6734C(v6, a2, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    v11 = sub_1D9176E3C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

unint64_t sub_1D9083470(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6269726373627573;
      break;
    case 3:
      result = 0x5479616C70736964;
      break;
    case 4:
      result = 0x6C725564656566;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6B726F77747261;
      break;
    case 8:
      result = 0x6867697279706F63;
      break;
    case 9:
      result = 1684957547;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x44657361656C6572;
      break;
    case 12:
      result = 0x52746E65746E6F63;
      break;
    case 13:
      result = 0x5565746973626577;
      break;
    case 14:
      result = 0x6D614E65726E6567;
      break;
    case 15:
      result = 0x754E6E6F73616573;
      break;
    case 16:
      result = 0x73726566666FLL;
      break;
    case 17:
      result = 0x6C6C65737075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9083674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9091638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D908369C(uint64_t a1)
{
  v2 = sub_1D909050C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90836D8(uint64_t a1)
{
  v2 = sub_1D909050C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastAttributes.deinit()
{

  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation17PodcastAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
  return v0;
}

uint64_t PodcastAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C18, &unk_1D91AE568);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909050C();
  sub_1D9179F1C();
  LOBYTE(v14) = 0;
  sub_1D917994C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D917994C();
    LOBYTE(v14) = 2;
    sub_1D917995C();
    LOBYTE(v14) = 3;
    sub_1D91799BC();
    LOBYTE(v14) = 4;
    sub_1D917994C();
    LOBYTE(v14) = 5;
    sub_1D917994C();
    v14 = v3[13];
    HIBYTE(v13) = 6;
    type metadata accessor for ServerDescription();
    sub_1D9090018(&qword_1ECAB20B8, v9, type metadata accessor for ServerDescription, &protocol conformance descriptor for ServerDescription);
    sub_1D917999C();
    v14 = v3[14];
    HIBYTE(v13) = 7;
    type metadata accessor for ServerArtwork();
    sub_1D9090018(&qword_1ECAB26D8, v10, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917999C();
    LOBYTE(v14) = 8;
    sub_1D917994C();
    LOBYTE(v14) = 9;
    sub_1D917994C();
    v14 = v3[19];
    HIBYTE(v13) = 10;
    type metadata accessor for PodcastEditorialArtworkContainer();
    sub_1D9090018(qword_1ECAB12D0, v11, type metadata accessor for PodcastEditorialArtworkContainer, &protocol conformance descriptor for PodcastEditorialArtworkContainer);
    sub_1D917999C();
    LOBYTE(v14) = 11;
    sub_1D917994C();
    LOBYTE(v14) = 12;
    sub_1D917994C();
    LOBYTE(v14) = 13;
    sub_1D917994C();
    v14 = v3[26];
    HIBYTE(v13) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D90906C8(&qword_1ECAAFEE8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D917999C();
    v14 = v3[27];
    HIBYTE(v13) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C20, &qword_1D91AE578);
    sub_1D9090584(&qword_1ECAAFED8, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1D917999C();
    v14 = v3[28];
    HIBYTE(v13) = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C28, &qword_1D91AE580);
    sub_1D90905F0();
    sub_1D917999C();
    LOBYTE(v14) = 17;
    sub_1D917994C();
  }

  return (*(v6 + 8))(v8, v5);
}

void *PodcastAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C30, &qword_1D91AE588);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - v5;
  v7 = OBJC_IVAR____TtC18PodcastsFoundation17PodcastAttributes____lazy_storage___releaseDateResolved;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909050C();
  v39 = v6;
  v9 = v3;
  sub_1D9179EEC();
  if (v2)
  {
    sub_1D8D08A50(v3 + OBJC_IVAR____TtC18PodcastsFoundation17PodcastAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v38;
    LOBYTE(v42) = 0;
    *(v3 + 16) = sub_1D917984C();
    *(v3 + 24) = v11;
    LOBYTE(v42) = 1;
    *(v3 + 32) = sub_1D917984C();
    *(v3 + 40) = v12;
    LOBYTE(v42) = 2;
    *(v3 + 48) = sub_1D917985C();
    LOBYTE(v42) = 3;
    *(v3 + 56) = sub_1D91798BC();
    *(v3 + 64) = v14;
    LOBYTE(v42) = 4;
    *(v3 + 72) = sub_1D917984C();
    *(v3 + 80) = v15;
    LOBYTE(v42) = 5;
    *(v3 + 88) = sub_1D917984C();
    *(v3 + 96) = v16;
    type metadata accessor for ServerDescription();
    v41 = 6;
    sub_1D9090018(&qword_1EDCD4760, v17, type metadata accessor for ServerDescription, &protocol conformance descriptor for ServerDescription);
    sub_1D917989C();
    v37 = v3;
    *(v3 + 104) = v42;
    type metadata accessor for ServerArtwork();
    v41 = 7;
    sub_1D9090018(&qword_1EDCD54A0, v18, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    v19 = v37;
    v37[14] = v42;
    LOBYTE(v42) = 8;
    v19[15] = sub_1D917984C();
    v19[16] = v20;
    LOBYTE(v42) = 9;
    v21 = sub_1D917984C();
    v22 = v37;
    v37[17] = v21;
    v22[18] = v23;
    type metadata accessor for PodcastEditorialArtworkContainer();
    v41 = 10;
    sub_1D9090018(&qword_1EDCD1B18, v24, type metadata accessor for PodcastEditorialArtworkContainer, &protocol conformance descriptor for PodcastEditorialArtworkContainer);
    sub_1D917989C();
    v37[19] = v42;
    LOBYTE(v42) = 11;
    v25 = sub_1D917984C();
    v26 = v37;
    v37[20] = v25;
    v26[21] = v27;
    LOBYTE(v42) = 12;
    v28 = sub_1D917984C();
    v29 = v37;
    v37[22] = v28;
    v29[23] = v30;
    LOBYTE(v42) = 13;
    v31 = sub_1D917984C();
    v32 = v37;
    v37[24] = v31;
    v32[25] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v41 = 14;
    sub_1D90906C8(&qword_1EDCD0A50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D917989C();
    v37[26] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C20, &qword_1D91AE578);
    v41 = 15;
    sub_1D9090584(&qword_1EDCD0A48, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_1D917989C();
    v37[27] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C28, &qword_1D91AE580);
    v41 = 16;
    sub_1D9090734();
    sub_1D917989C();
    v37[28] = v42;
    LOBYTE(v42) = 17;
    v34 = sub_1D917984C();
    v36 = v35;
    (*(v10 + 8))(v39, v40);
    v9 = v37;
    v37[29] = v34;
    v9[30] = v36;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1D9084A04()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_1D9084A38()
{
  v1 = *(*v0 + 88);

  return v1;
}

uint64_t sub_1D9084A78()
{
  v1 = *(*v0 + 120);

  return v1;
}

uint64_t sub_1D9084AAC()
{
  v1 = *(*v0 + 136);

  return v1;
}

uint64_t sub_1D9084B04()
{
  v1 = *(*v0 + 176);

  return v1;
}

BOOL sub_1D9084B38()
{
  if (!*(*v0 + 184))
  {
    return 0;
  }

  v1 = sub_1D917980C();

  return v1 == 1;
}

void sub_1D9084C64(uint64_t a1@<X8>)
{
  strcpy(a1, "showPageTall");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_1D9084CA8(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D9084D00(uint64_t a1)
{
  v2 = sub_1D90907E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9084D3C(uint64_t a1)
{
  v2 = sub_1D90907E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastEditorialArtworkContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastEditorialArtworkContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C38, &qword_1D91AE590);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90907E8();
  sub_1D9179F1C();
  v10[1] = *(v2 + 16);
  type metadata accessor for ServerArtwork();
  sub_1D9090018(&qword_1ECAB26D8, v8, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
  sub_1D917999C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PodcastEditorialArtworkContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastEditorialArtworkContainer.init(from:)(a1);
  return v2;
}

void *PodcastEditorialArtworkContainer.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C40, &qword_1D91AE598);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90907E8();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerArtwork();
    sub_1D9090018(&qword_1EDCD54A0, v7, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    (*(v10 + 8))(v6, v4);
    *(v1 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t PodcastEpisodeAttributes.feedUrl.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t PodcastEpisodeAttributes.copyright.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t PodcastEpisodeAttributes.contentRating.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t PodcastEpisodeAttributes.channelKind.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 256);

  return v1;
}

double PodcastEpisodeAttributes.channelKind.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;

  return result;
}

PodcastsFoundation::PodcastEpisodeAttributes::ChannelKind_optional __swiftcall PodcastEpisodeAttributes.ChannelKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PodcastEpisodeAttributes.ChannelKind.rawValue.getter()
{
  v1 = 30324;
  if (*v0 != 1)
  {
    v1 = 1937204590;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636973756DLL;
  }
}

uint64_t sub_1D9085420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 30324;
  if (v2 != 1)
  {
    v4 = 1937204590;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x636973756DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 30324;
  if (*a2 != 1)
  {
    v8 = 1937204590;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636973756DLL;
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
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D90854F8()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D9085584(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90855FC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9085690(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (v2 != 1)
  {
    v5 = 1937204590;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636973756DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

PodcastsFoundation::PodcastEpisodeAttributes::EpisodeType_optional __swiftcall PodcastEpisodeAttributes.EpisodeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9085734(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x72656C69617274;
  if (v2 != 1)
  {
    v4 = 0x73756E6F62;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656C69617274;
  if (*a2 != 1)
  {
    v8 = 0x73756E6F62;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D9085828()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D90858C0(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D9085944(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90859E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72656C69617274;
  if (v2 != 1)
  {
    v5 = 0x73756E6F62;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

PodcastsFoundation::PodcastEpisodeAttributes::MediaKind_optional __swiftcall PodcastEpisodeAttributes.MediaKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PodcastEpisodeAttributes.MediaKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F69647561;
  v3 = 0x6567616D69;
  v4 = 0x746E656D75636F64;
  if (v1 != 3)
  {
    v4 = 0x6C616E7265747865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F65646976;
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

uint64_t sub_1D9085B30()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D9085C08(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D9085CCC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9085DAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6F69647561;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0x746E656D75636F64;
  if (v2 != 3)
  {
    v7 = 0x6C616E7265747865;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6F65646976;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t PodcastEpisodeAttributes.assetUrl.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t PodcastEpisodeAttributes.guid.getter()
{
  v1 = *(v0 + 320);

  return v1;
}

uint64_t sub_1D9085F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B28, &unk_1D91AE4F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  sub_1D8D088B4(a1, &v18 - v13, &qword_1ECAB75C0, &unk_1D9188A50);
  v15 = *a2;
  sub_1D8D6734C(v14, v10, &qword_1ECAB75C0, &unk_1D9188A50);
  (*(v12 + 56))(v10, 0, 1, v11);
  v16 = *a5;
  swift_beginAccess();
  sub_1D908631C(v10, v15 + v16);
  return swift_endAccess();
}

uint64_t sub_1D9086118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  if (*(a1 + 200))
  {
    if (qword_1EDCD09F8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDCD0A00;
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v9 = [v7 dateFromString_];

    if (v9)
    {
      sub_1D9176DFC();

      v10 = sub_1D9176E3C();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_1D9176E3C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_1D8D6734C(v6, a2, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    v11 = sub_1D9176E3C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_1D908631C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9B28, &unk_1D91AE4F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PodcastEpisodeAttributes.__allocating_init(artistName:url:subscribable:feedUrl:offers:name:itunesTitle:description:artworkOrigin:artwork:copyright:kind:fullDescription:releaseDateTime:firstAvailableDates:contentRating:websiteUrl:genreNames:mediaKind:assetUrl:durationInMilliseconds:guid:episodeNumber:seasonNumber:inLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, __int128 a25, uint64_t a26, char a27, uint64_t a28, char a29, char a30)
{
  v36 = swift_allocObject();
  *(v36 + 256) = 0;
  *(v36 + 264) = 0;
  v37 = OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  *(v36 + 32) = a3;
  *(v36 + 40) = a4;
  *(v36 + 48) = a5;
  *(v36 + 56) = a6;
  *(v36 + 64) = a7;
  *(v36 + 72) = a8;
  *(v36 + 80) = a9;
  *(v36 + 96) = a10;
  *(v36 + 112) = a11;
  *(v36 + 128) = a12;
  *(v36 + 144) = a13;
  *(v36 + 160) = a14;
  *(v36 + 176) = a15;
  *(v36 + 192) = a16;
  *(v36 + 208) = a17;
  *(v36 + 224) = a18;
  *(v36 + 240) = a19;
  *(v36 + 248) = a20;
  *(v36 + 272) = a21;
  *(v36 + 288) = a22;
  *(v36 + 304) = a23;
  *(v36 + 312) = a24 & 1;
  *(v36 + 320) = a25;
  *(v36 + 336) = a26;
  *(v36 + 344) = a27 & 1;
  *(v36 + 352) = a28;
  *(v36 + 360) = a29 & 1;
  *(v36 + 361) = a30;
  return v36;
}

uint64_t PodcastEpisodeAttributes.init(artistName:url:subscribable:feedUrl:offers:name:itunesTitle:description:artworkOrigin:artwork:copyright:kind:fullDescription:releaseDateTime:firstAvailableDates:contentRating:websiteUrl:genreNames:mediaKind:assetUrl:durationInMilliseconds:guid:episodeNumber:seasonNumber:inLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, char a24, __int128 a25, uint64_t a26, char a27, uint64_t a28, char a29, char a30)
{
  *(v30 + 256) = 0;
  *(v30 + 264) = 0;
  v37 = OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v38 - 8) + 56))(v30 + v37, 1, 1, v38);
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = a4;
  *(v30 + 48) = a5;
  *(v30 + 56) = a6;
  *(v30 + 64) = a7;
  *(v30 + 72) = a8;
  *(v30 + 80) = a9;
  *(v30 + 96) = a10;
  *(v30 + 112) = a11;
  *(v30 + 128) = a12;
  *(v30 + 144) = a13;
  *(v30 + 160) = a14;
  *(v30 + 176) = a15;
  *(v30 + 192) = a16;
  *(v30 + 208) = a17;
  *(v30 + 224) = a18;
  *(v30 + 240) = a19;
  *(v30 + 248) = a20;
  *(v30 + 272) = a21;
  *(v30 + 288) = a22;
  *(v30 + 304) = a23;
  *(v30 + 312) = a24 & 1;
  *(v30 + 320) = a25;
  *(v30 + 336) = a26;
  *(v30 + 344) = a27 & 1;
  *(v30 + 352) = a28;
  *(v30 + 360) = a29 & 1;
  *(v30 + 361) = a30;
  return v30;
}

unint64_t sub_1D9086798(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6269726373627573;
      break;
    case 3:
      result = 0x6C725564656566;
      break;
    case 4:
      result = 0x73726566666FLL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x695473656E757469;
      break;
    case 7:
      result = 0x7470697263736564;
      break;
    case 8:
      result = 0x4F6B726F77747261;
      break;
    case 9:
      result = 0x6B726F77747261;
      break;
    case 10:
      result = 0x6867697279706F63;
      break;
    case 11:
      result = 1684957547;
      break;
    case 12:
      result = 0x637365446C6C7566;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x52746E65746E6F63;
      break;
    case 16:
      result = 0x5565746973626577;
      break;
    case 17:
      result = 0x6D614E65726E6567;
      break;
    case 18:
      result = 0x4B6C656E6E616863;
      break;
    case 19:
      result = 0x6E694B616964656DLL;
      break;
    case 20:
      result = 0x6C72557465737361;
      break;
    case 21:
      result = 0xD000000000000016;
      break;
    case 22:
      result = 1684632935;
      break;
    case 23:
      result = 0x4E65646F73697065;
      break;
    case 24:
      result = 0x754E6E6F73616573;
      break;
    case 25:
      result = 0x72617262694C6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D9086A98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9091BF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9086ACC(uint64_t a1)
{
  v2 = sub_1D909083C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9086B08(uint64_t a1)
{
  v2 = sub_1D909083C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastEpisodeAttributes.deinit()
{

  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
  return v0;
}

uint64_t sub_1D9086C3C(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void PodcastEpisodeAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C48, &qword_1D91AE5A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909083C();
  sub_1D9179F1C();
  LOBYTE(v12) = 0;
  sub_1D917994C();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D917994C();
    LOBYTE(v12) = 2;
    sub_1D917995C();
    LOBYTE(v12) = 3;
    sub_1D917994C();
    v12 = v3[9];
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    sub_1D9090890();
    sub_1D917999C();
    LOBYTE(v12) = 5;
    sub_1D917994C();
    LOBYTE(v12) = 6;
    sub_1D917994C();
    v12 = v3[14];
    v13 = 7;
    type metadata accessor for ServerDescription();
    sub_1D9090018(&qword_1ECAB20B8, v9, type metadata accessor for ServerDescription, &protocol conformance descriptor for ServerDescription);
    sub_1D917999C();
    LOBYTE(v12) = 8;
    sub_1D917994C();
    v12 = v3[17];
    v13 = 9;
    type metadata accessor for ServerArtwork();
    sub_1D9090018(&qword_1ECAB26D8, v10, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917999C();
    LOBYTE(v12) = 10;
    sub_1D917994C();
    LOBYTE(v12) = 11;
    sub_1D917994C();
    LOBYTE(v12) = 12;
    sub_1D917994C();
    LOBYTE(v12) = 13;
    sub_1D917994C();
    v12 = v3[26];
    v13 = 14;
    type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates();
    sub_1D9090018(&qword_1ECAB9C68, v11, type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates, &protocol conformance descriptor for PodcastEpisodeAttributes.AvailabilityDates);
    sub_1D917999C();
    LOBYTE(v12) = 15;
    sub_1D917994C();
    LOBYTE(v12) = 16;
    sub_1D917994C();
    v12 = v3[31];
    v13 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D90906C8(&qword_1ECAAFEE8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D917999C();
    swift_beginAccess();
    v13 = 18;

    sub_1D917994C();

    v13 = 19;
    sub_1D917994C();
    v13 = 20;
    sub_1D917994C();
    v13 = 21;
    sub_1D917996C();
    v13 = 22;
    sub_1D917994C();
    v13 = 23;
    sub_1D917998C();
    v13 = 24;
    sub_1D917998C();
    v13 = 25;
    sub_1D917995C();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D9087398(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void *PodcastEpisodeAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v39 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C70, &qword_1D91AE5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v38 = v1 + 33;
  v1[32] = 0;
  v1[33] = 0;
  v9 = OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D909083C();
  sub_1D9179EEC();
  if (v2)
  {

    sub_1D8D08A50(v3 + OBJC_IVAR____TtC18PodcastsFoundation24PodcastEpisodeAttributes____lazy_storage___releaseDateResolved, &qword_1ECAB9B28, &unk_1D91AE4F8);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v40) = 0;
    v3[2] = sub_1D917984C();
    v3[3] = v11;
    LOBYTE(v40) = 1;
    v3[4] = sub_1D917984C();
    v3[5] = v12;
    LOBYTE(v40) = 2;
    *(v3 + 48) = sub_1D917985C();
    LOBYTE(v40) = 3;
    v3[7] = sub_1D917984C();
    v3[8] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    v41 = 4;
    sub_1D909098C();
    sub_1D917989C();
    v3[9] = v40;
    LOBYTE(v40) = 5;
    v3[10] = sub_1D917984C();
    v3[11] = v15;
    LOBYTE(v40) = 6;
    v3[12] = sub_1D917984C();
    v3[13] = v16;
    type metadata accessor for ServerDescription();
    v41 = 7;
    sub_1D9090018(&qword_1EDCD4760, v17, type metadata accessor for ServerDescription, &protocol conformance descriptor for ServerDescription);
    sub_1D917989C();
    v3[14] = v40;
    LOBYTE(v40) = 8;
    v3[15] = sub_1D917984C();
    v3[16] = v18;
    type metadata accessor for ServerArtwork();
    v41 = 9;
    sub_1D9090018(&qword_1EDCD54A0, v19, type metadata accessor for ServerArtwork, &protocol conformance descriptor for ServerArtwork);
    sub_1D917989C();
    v3[17] = v40;
    LOBYTE(v40) = 10;
    v3[18] = sub_1D917984C();
    v3[19] = v20;
    LOBYTE(v40) = 11;
    v3[20] = sub_1D917984C();
    v3[21] = v21;
    LOBYTE(v40) = 12;
    v3[22] = sub_1D917984C();
    v3[23] = v22;
    LOBYTE(v40) = 13;
    v3[24] = sub_1D917984C();
    v3[25] = v23;
    type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates();
    v41 = 14;
    sub_1D9090018(&qword_1EDCD2F28, v24, type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates, &protocol conformance descriptor for PodcastEpisodeAttributes.AvailabilityDates);
    sub_1D917989C();
    v3[26] = v40;
    LOBYTE(v40) = 15;
    v3[27] = sub_1D917984C();
    v3[28] = v25;
    LOBYTE(v40) = 16;
    v3[29] = sub_1D917984C();
    v3[30] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v41 = 17;
    sub_1D90906C8(&qword_1EDCD0A50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D917989C();
    v3[31] = v40;
    LOBYTE(v40) = 18;
    v27 = sub_1D917984C();
    v29 = v28;
    swift_beginAccess();
    v30 = v38;
    v3[32] = v27;
    *v30 = v29;

    v41 = 19;
    v3[34] = sub_1D917984C();
    v3[35] = v31;
    v41 = 20;
    v3[36] = sub_1D917984C();
    v3[37] = v32;
    v41 = 21;
    v3[38] = sub_1D917986C();
    *(v3 + 312) = v33 & 1;
    v41 = 22;
    v3[40] = sub_1D917984C();
    v3[41] = v34;
    v41 = 23;
    v3[42] = sub_1D917988C();
    *(v3 + 344) = v35 & 1;
    v41 = 24;
    v3[44] = sub_1D917988C();
    *(v3 + 360) = v36 & 1;
    v41 = 25;
    LOBYTE(v27) = sub_1D917985C();
    (*(v6 + 8))(v8, v5);
    *(v3 + 361) = v27;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D9088388()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_1D90883BC()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t sub_1D90883FC()
{
  v1 = *(*v0 + 144);

  return v1;
}

uint64_t sub_1D9088454()
{
  v1 = *(*v0 + 216);

  return v1;
}

BOOL sub_1D9088488()
{
  if (!*(*v0 + 224))
  {
    return 0;
  }

  v1 = sub_1D917980C();

  return v1 == 1;
}

uint64_t sub_1D90884EC()
{
  v1 = *(*v0 + 232);

  return v1;
}

uint64_t sub_1D9088558@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

PodcastsFoundation::Kind_optional __swiftcall Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9088648(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6269726373627573;
  }

  else
  {
    v3 = 7628135;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x6269726373627573;
  }

  else
  {
    v5 = 7628135;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D90886EC()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D908876C(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90887D8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D9088860(uint64_t *a1@<X8>)
{
  v2 = 7628135;
  if (*v1)
  {
    v2 = 0x6269726373627573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

PodcastsFoundation::PriceType_optional __swiftcall PriceType.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9088940()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D908899C(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D90889DC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

PodcastsFoundation::PriceType_optional sub_1D9088B34@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = PriceType.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1D9088B6C(uint64_t a1)
{
  v2 = sub_1D90965A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9088BA8(uint64_t a1)
{
  v2 = sub_1D90965A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

PodcastsFoundation::PriceType_optional sub_1D9088BE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = v2;
  v4 = v1;

  return PriceType.init(stringValue:)(*&v3);
}

uint64_t sub_1D9088C3C()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1701869940;
  }
}

void sub_1D9088C60(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D9088D3C(uint64_t a1)
{
  v2 = sub_1D9090A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9088D78(uint64_t a1)
{
  v2 = sub_1D9090A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastShowOffer.deinit()
{

  return v0;
}

uint64_t PodcastShowOffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9088E1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C78, &qword_1D91AE5B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A40();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799BC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D91799BC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PodcastShowOffer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastShowOffer.init(from:)(a1);
  return v2;
}

void *PodcastShowOffer.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C80, &qword_1D91AE5C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A40();
  sub_1D9179EEC();
  if (v2)
  {
    type metadata accessor for PodcastShowOffer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v8;
    v14 = 1;
    v10 = sub_1D91798BC();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v1[4] = v10;
    v1[5] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1D908920C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

void sub_1D908929C(char *a1@<X8>)
{

  v2 = sub_1D917980C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v3;
}

unint64_t sub_1D9089314()
{
  v1 = 1701869940;
  v2 = 0x6C7255736C68;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 1684957547;
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

uint64_t sub_1D9089380@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9092434(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D90893A8(uint64_t a1)
{
  v2 = sub_1D9090A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90893E4(uint64_t a1)
{
  v2 = sub_1D9090A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastEpisodeOffer.deinit()
{

  return v0;
}

uint64_t PodcastEpisodeOffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastEpisodeOffer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C88, &qword_1D91AE5C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A94();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799BC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D91799BC();
  v8[13] = 2;
  sub_1D917994C();
  v8[12] = 3;
  sub_1D917996C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PodcastEpisodeOffer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastEpisodeOffer.init(from:)(a1);
  return v2;
}

void *PodcastEpisodeOffer.init(from:)(void *a1)
{
  v3 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C90, &qword_1D91AE5D0);
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9090A94();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v5;
    v21 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v9;
    v20 = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v10;
    v19 = 2;
    v1[6] = sub_1D917984C();
    v1[7] = v11;
    v18 = 3;
    v13 = sub_1D917986C();
    v15 = v14;
    (*(v8 + 8))(v7, v17);
    v3[8] = v13;
    *(v3 + 72) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.subscript.getter@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = *a1;
  swift_beginAccess();
  v24 = *(v3 + 24);
  if (*(v24 + 16) && (v25 = sub_1D8F06EDC(v23), (v26 & 1) != 0))
  {
    (*(v14 + 16))(v19, *(v24 + 56) + *(v14 + 72) * v25, v13);
    v27 = *(v14 + 32);
    v27(v22, v19, v13);
    swift_endAccess();
    v28 = v43;
    v27(v43, v22, v13);
    return (*(v14 + 56))(v28, 0, 1, v13);
  }

  else
  {
    swift_endAccess();
    if (*(*(v3 + 16) + 16) && (sub_1D8F06EDC(v23), (v30 & 1) != 0))
    {
      v31 = qword_1EDCD09F8;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = qword_1EDCD0A00;
      v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v34 = [v32 dateFromString_];

      if (v34)
      {
        sub_1D9176DFC();

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v36 = *(v14 + 56);
      v36(v9, v35, 1, v13);
      sub_1D8D6734C(v9, v12, &qword_1ECAB75C0, &unk_1D9188A50);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_1D8D08A50(v12, &qword_1ECAB75C0, &unk_1D9188A50);
        v37 = v43;
        v38 = 1;
      }

      else
      {
        v41 = *(v14 + 32);
        v41(v16, v12, v13);
        v39 = v42;
        (*(v14 + 16))(v42, v16, v13);
        v36(v39, 0, 1, v13);
        swift_beginAccess();
        sub_1D8F7D7CC(v39, v23);
        swift_endAccess();
        v40 = v43;
        v41(v43, v16, v13);
        v37 = v40;
        v38 = 0;
      }

      return (v36)(v37, v38, 1, v13);
    }

    else
    {
      return (*(v14 + 56))(v43, 1, 1, v13);
    }
  }
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v3[6] = *(v1 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C98, &qword_1D91AE5D8);
  sub_1D9092898();
  sub_1D9179BBC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.deinit()
{

  return v0;
}

uint64_t PodcastEpisodeAttributes.AvailabilityDates.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9089F8C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D909259C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D9089FB8(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  v4[6] = *(v2 + 16);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9C98, &qword_1D91AE5D8);
  sub_1D9092898();
  sub_1D9179BBC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

void sub_1D908A088(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D908A110(uint64_t a1)
{
  v2 = sub_1D9092924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908A14C(uint64_t a1)
{
  v2 = sub_1D9092924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastStationAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastStationAttributes.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CA8, &qword_1D91AE5E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092924();
  sub_1D9179F1C();
  sub_1D917994C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PodcastStationAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastStationAttributes.init(from:)(a1);
  return v2;
}

void *PodcastStationAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CB8, &qword_1D91AE5E8);
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092924();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v14;
    v10 = sub_1D917984C();
    v12 = v11;
    (*(v8 + 8))(v7, v5);
    *(v3 + 16) = v10;
    *(v3 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D908A548(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CA8, &qword_1D91AE5E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092924();
  sub_1D9179F1C();
  sub_1D917994C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D908A690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C656E6E616863;
  }

  else
  {
    v3 = 0x69726F6765746163;
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
    v5 = 0x6C656E6E616863;
  }

  else
  {
    v5 = 0x69726F6765746163;
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
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D908A73C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D908A7C4(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D908A838(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D908A8C8(uint64_t *a1@<X8>)
{
  v2 = 0x69726F6765746163;
  if (*v1)
  {
    v2 = 0x6C656E6E616863;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D908A90C()
{
  if (*v0)
  {
    return 0x6C656E6E616863;
  }

  else
  {
    return 0x69726F6765746163;
  }
}

void sub_1D908A94C(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D908A9B0(uint64_t a1)
{
  v2 = sub_1D9092978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908A9EC(uint64_t a1)
{
  v2 = sub_1D9092978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastRelationships.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastRelationships.init(from:)(a1);
  return v2;
}

void *PodcastRelationships.init(from:)(void *a1)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CC0, &qword_1D91AE5F0);
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092978();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v4;
    type metadata accessor for PodcastChannelRelationshipContainer();
    v13 = 1;
    sub_1D9090018(&qword_1EDCD1798, v8, type metadata accessor for PodcastChannelRelationshipContainer, &protocol conformance descriptor for PodcastChannelRelationshipContainer);
    v9 = v12;
    sub_1D917989C();
    *(v1 + 16) = v14;
    type metadata accessor for PodcastCategoriesRelationshipContainer();
    v13 = 0;
    sub_1D9090018(&qword_1ECAB1258, v10, type metadata accessor for PodcastCategoriesRelationshipContainer, &protocol conformance descriptor for PodcastCategoriesRelationshipContainer);
    sub_1D917989C();
    (*(v7 + 8))(v6, v9);
    *(v1 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t PodcastRelationships.deinit()
{

  return v0;
}

uint64_t PodcastRelationships.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastRelationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CC8, &qword_1D91AE5F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092978();
  sub_1D9179F1C();
  v13 = *(v3 + 24);
  HIBYTE(v12) = 0;
  type metadata accessor for PodcastCategoriesRelationshipContainer();
  sub_1D9090018(&qword_1ECAB9CD0, v9, type metadata accessor for PodcastCategoriesRelationshipContainer, &protocol conformance descriptor for PodcastCategoriesRelationshipContainer);
  sub_1D917999C();
  if (!v2)
  {
    v13 = *(v3 + 16);
    HIBYTE(v12) = 1;
    type metadata accessor for PodcastChannelRelationshipContainer();
    sub_1D9090018(&unk_1ECAB1290, v10, type metadata accessor for PodcastChannelRelationshipContainer, &protocol conformance descriptor for PodcastChannelRelationshipContainer);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D908AFD0(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D908B028(uint64_t a1)
{
  v2 = sub_1D9092A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908B064(uint64_t a1)
{
  v2 = sub_1D9092A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastChannelRelationshipContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastChannelRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t PodcastChannelRelationshipContainer.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CD8, &qword_1D91AE600);
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092A14();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CE0, &qword_1D91AE608);
    sub_1D9092A68();
    result = sub_1D917989C();
    v9 = v5;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v12 = v21;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v21 = MEMORY[0x1E69E7CC0];
    v13 = *(v12 + 16);
    v14 = v20;
    while (1)
    {
      if (v13 == v10)
      {
        (*(v14 + 8))(v7, v9);

        *(v3 + 16) = v11;
        goto LABEL_4;
      }

      if (v10 >= *(v12 + 16))
      {
        break;
      }

      v15 = *(v12 + 8 * v10++ + 32);
      if (v15)
      {
        v19 = a1;
        v16 = v9;
        v17 = v15;
        MEMORY[0x1DA729B90]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18[1] = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v11 = v21;
        v9 = v16;
        a1 = v19;
        v14 = v20;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PodcastChannelRelationshipContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CF0, &qword_1D91AE618);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092A14();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9CF8, &qword_1D91AE620);
  sub_1D9092B18();
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

void sub_1D908B550(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D908B5A8(uint64_t a1)
{
  v2 = sub_1D9092BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908B5E4(uint64_t a1)
{
  v2 = sub_1D9092BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastCategoriesRelationshipContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastCategoriesRelationshipContainer.init(from:)(a1);
  return v2;
}

uint64_t PodcastCategoriesRelationshipContainer.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D00, &qword_1D91AE628);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092BD0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB90C0, &unk_1D91AE630);
    sub_1D902E358();
    result = sub_1D917989C();
    v9 = v7;
    v17 = v5;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v12 = v19;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v19 = MEMORY[0x1E69E7CC0];
    v13 = *(v12 + 16);
    while (1)
    {
      if (v13 == v10)
      {
        (*(v18 + 8))(v9, v17);

        *(v3 + 16) = v11;
        goto LABEL_4;
      }

      if (v10 >= *(v12 + 16))
      {
        break;
      }

      if (*(v12 + 8 * v10++ + 32))
      {

        MEMORY[0x1DA729B90](v15);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16[1] = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v11 = v19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PodcastCategoriesRelationshipContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D08, &unk_1D91AE640);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092BD0();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41A0, &qword_1D91A8140);
  sub_1D9028658();
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

void *PodcastEpisodeRelationships.podcast.getter()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double PodcastEpisodeRelationships.transcripts.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts);

  return result;
}

uint64_t sub_1D908BBB4()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D908BC84(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D908BD40(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D908BE0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9091060(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D908BE3C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74736163646F70;
  v4 = 0xEB00000000737470;
  v5 = 0x697263736E617274;
  if (*v1 != 2)
  {
    v5 = 0x7372657470616863;
    v4 = 0xE800000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D91C8050;
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

unint64_t sub_1D908BEC8()
{
  v1 = 0x74736163646F70;
  v2 = 0x697263736E617274;
  if (*v0 != 2)
  {
    v2 = 0x7372657470616863;
  }

  if (!*v0)
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

unint64_t sub_1D908BF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9091060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D908BF78(uint64_t a1)
{
  v2 = sub_1D9092C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908BFB4(uint64_t a1)
{
  v2 = sub_1D9092C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastEpisodeRelationships.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D28, &qword_1D91AE650);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092C24();
  sub_1D9179F1C();
  v16 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition);
  LOBYTE(v15) = 0;
  type metadata accessor for PodcastPlaybackPositionContainer();
  sub_1D9090018(&qword_1ECAB9D30, v9, type metadata accessor for PodcastPlaybackPositionContainer, &protocol conformance descriptor for PodcastPlaybackPositionContainer);
  sub_1D917999C();
  if (!v2)
  {
    v10 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
    swift_beginAccess();
    v15 = *(v3 + v10);
    v14 = 1;
    type metadata accessor for PodcastRelationshipContainer();
    sub_1D9090018(&qword_1ECAB9338, v11, type metadata accessor for PodcastRelationshipContainer, &protocol conformance descriptor for PodcastRelationshipContainer);
    sub_1D917999C();
    v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts);
    v14 = 2;
    sub_1D9092C9C();

    sub_1D917999C();

    v15 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters);
    v14 = 3;
    type metadata accessor for ChapterRelationshipContainer();
    sub_1D9090018(&qword_1ECAB9D40, 255, type metadata accessor for ChapterRelationshipContainer, &protocol conformance descriptor for ChapterRelationshipContainer);
    sub_1D917999C();
  }

  return (*(v6 + 8))(v8, v5);
}

char *PodcastEpisodeRelationships.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D48, &qword_1D91AE658);
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v16 - v6;
  v8 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092C24();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    type metadata accessor for PodcastPlaybackPositionContainer();
    LOBYTE(v21) = 0;
    sub_1D9090018(&qword_1ECAB12B0, v10, type metadata accessor for PodcastPlaybackPositionContainer, &protocol conformance descriptor for PodcastPlaybackPositionContainer);
    v11 = v16;
    sub_1D917989C();
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_playbackPosition] = v20;
    type metadata accessor for PodcastRelationshipContainer();
    LOBYTE(v20) = 1;
    sub_1D9090018(&qword_1ECAB17C8, v13, type metadata accessor for PodcastRelationshipContainer, &protocol conformance descriptor for PodcastRelationshipContainer);
    sub_1D917989C();
    v14 = v21;
    swift_beginAccess();
    v15 = *&v3[v8];
    *&v3[v8] = v14;

    v19 = 2;
    sub_1D9092CF0();
    sub_1D917989C();
    *&v3[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_transcripts] = v21;
    type metadata accessor for ChapterRelationshipContainer();
    v19 = 3;
    sub_1D9090018(&qword_1ECAB1800, 255, type metadata accessor for ChapterRelationshipContainer, &protocol conformance descriptor for ChapterRelationshipContainer);
    sub_1D917989C();
    *&v3[OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters] = v21;
    v18.receiver = v3;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v9 + 8))(v7, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t ServerTranscript.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id);

  return v1;
}

uint64_t ServerTranscript.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type);

  return v1;
}

id ServerTranscript.__allocating_init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type];
  *v13 = a3;
  *(v13 + 1) = a4;
  sub_1D9092D64(a5, &v11[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes], type metadata accessor for ServerTranscript.Attributes);
  v16.receiver = v11;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D9092E40(a5, type metadata accessor for ServerTranscript.Attributes);
  return v14;
}

id ServerTranscript.init(id:type:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type];
  *v13 = a3;
  *(v13 + 1) = a4;
  sub_1D9092D64(a5, &v5[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes], type metadata accessor for ServerTranscript.Attributes);
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D9092E40(a5, type metadata accessor for ServerTranscript.Attributes);
  return v14;
}

uint64_t ServerTranscript.Attributes.ttmlToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerTranscript.Attributes.init(ttmlToken:ttmlAssetUrls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for ServerTranscript.Attributes(0);
  return sub_1D9092F48(a3, a4 + *(v6 + 20), type metadata accessor for ServerTranscript.Attributes.AssetUrls);
}

uint64_t ServerTranscript.Attributes.AssetUrls.init(ttml:signature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8D6734C(a1, a3, &unk_1ECAB5910, &qword_1D9188C90);
  v5 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  return sub_1D8D6734C(a2, a3 + *(v5 + 20), &unk_1ECAB5910, &qword_1D9188C90);
}

uint64_t sub_1D908CC20()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 1819112564;
  }
}

void sub_1D908CC58(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1819112564 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D908CD3C(uint64_t a1)
{
  v2 = sub_1D9092DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908CD78(uint64_t a1)
{
  v2 = sub_1D9092DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTranscript.Attributes.AssetUrls.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D60, &qword_1D91AE660);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092DEC();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D9176C2C();
  sub_1D9090018(&qword_1ECAB2CB0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1D917999C();
  if (!v1)
  {
    type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    v8[14] = 1;
    sub_1D917999C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ServerTranscript.Attributes.AssetUrls.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v21 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D68, &qword_1D91AE668);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092DEC();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v13;
  v23 = v15;
  v24 = v6;
  sub_1D9176C2C();
  v30 = 0;
  sub_1D9090018(&qword_1ECAB2C98, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v16 = v26;
  v17 = v27;
  sub_1D917989C();
  v18 = v23;
  sub_1D8D6734C(v16, v23, &unk_1ECAB5910, &qword_1D9188C90);
  v29 = 1;
  v19 = v24;
  sub_1D917989C();
  (*(v28 + 8))(v12, v17);
  sub_1D8D6734C(v19, v18 + *(v22 + 20), &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D9092D64(v18, v25, type metadata accessor for ServerTranscript.Attributes.AssetUrls);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D9092E40(v18, type metadata accessor for ServerTranscript.Attributes.AssetUrls);
}

BOOL static ServerTranscript.Attributes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ServerTranscript.Attributes(0) + 20);

  return _s18PodcastsFoundation16ServerTranscriptC10AttributesV9AssetUrlsV2eeoiySbAG_AGtFZ_0(a1 + v5, a2 + v5);
}

uint64_t sub_1D908D3A0()
{
  if (*v0)
  {
    return 0x657373416C6D7474;
  }

  else
  {
    return 0x656B6F546C6D7474;
  }
}

void sub_1D908D3EC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F546C6D7474 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x657373416C6D7474 && a2 == 0xED0000736C725574)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D908D4D8(uint64_t a1)
{
  v2 = sub_1D9092EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908D514(uint64_t a1)
{
  v2 = sub_1D9092EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTranscript.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D70, &qword_1D91AE670);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EA0();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799BC();
  if (!v1)
  {
    type metadata accessor for ServerTranscript.Attributes(0);
    v8[14] = 1;
    type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    sub_1D9090018(&qword_1ECAB9D78, 255, type metadata accessor for ServerTranscript.Attributes.AssetUrls, &protocol conformance descriptor for ServerTranscript.Attributes.AssetUrls);
    sub_1D91799FC();
  }

  return (*(v4 + 8))(v6, v3);
}

void ServerTranscript.Attributes.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v17 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D80, &qword_1D91AE678);
  v16 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ServerTranscript.Attributes(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EA0();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = a1;
    v11 = v16;
    v20 = 0;
    *v10 = sub_1D91798BC();
    v10[1] = v12;
    v13 = v12;
    v19 = 1;
    sub_1D9090018(&qword_1ECAB2190, 255, type metadata accessor for ServerTranscript.Attributes.AssetUrls, &protocol conformance descriptor for ServerTranscript.Attributes.AssetUrls);
    sub_1D91798FC();
    (*(v11 + 8))(v7, v18);
    sub_1D9092F48(v5, v10 + *(v8 + 20), type metadata accessor for ServerTranscript.Attributes.AssetUrls);
    sub_1D9092D64(v10, v15, type metadata accessor for ServerTranscript.Attributes);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    sub_1D9092E40(v10, type metadata accessor for ServerTranscript.Attributes);
  }
}

uint64_t sub_1D908DA50(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  return static ServerTranscript.Attributes.AssetUrls.== infix(_:_:)();
}

id ServerTranscript.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D908DB68(uint64_t a1)
{
  v2 = sub_1D9092EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908DBA4(uint64_t a1)
{
  v2 = sub_1D9092EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServerTranscript.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D88, &qword_1D91AE680);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EF4();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799BC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D91799BC();
    v8[13] = 2;
    type metadata accessor for ServerTranscript.Attributes(0);
    sub_1D9090018(&qword_1ECAB9D90, 255, type metadata accessor for ServerTranscript.Attributes, &protocol conformance descriptor for ServerTranscript.Attributes);
    sub_1D91799FC();
  }

  return (*(v4 + 8))(v6, v3);
}

void *ServerTranscript.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ServerTranscript.Attributes(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9D98, &qword_1D91AE688);
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092EF4();
  sub_1D9179EEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v5;
    v9 = v6;
    v26 = 0;
    v10 = v22;
    v11 = sub_1D91798BC();
    v13 = v24;
    v14 = &v24[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_id];
    *v14 = v11;
    v14[1] = v15;
    v26 = 1;
    v16 = sub_1D91798BC();
    v17 = &v13[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_type];
    *v17 = v16;
    v17[1] = v18;
    v26 = 2;
    sub_1D9090018(&qword_1ECAB2178, 255, type metadata accessor for ServerTranscript.Attributes, &protocol conformance descriptor for ServerTranscript.Attributes);
    v19 = v21;
    sub_1D91798FC();
    v20 = v24;
    sub_1D9092F48(v19, &v24[OBJC_IVAR____TtC18PodcastsFoundation16ServerTranscript_attributes], type metadata accessor for ServerTranscript.Attributes);
    v25.receiver = v20;
    v25.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    (*(v9 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

double PodcastRelationshipContainer.data.getter()
{
  swift_beginAccess();

  return result;
}

void sub_1D908E300(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D908E358(uint64_t a1)
{
  v2 = sub_1D9092FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908E394(uint64_t a1)
{
  v2 = sub_1D9092FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *PodcastRelationshipContainer.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DA0, &qword_1D91AE690);
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092FB0();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
    return v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DA8, &qword_1D91AE698);
    sub_1D9093004();
    result = sub_1D917989C();
    v18 = v8;
    v19 = v6;
    v20 = ObjectType;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v13 = v23;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v23 = MEMORY[0x1E69E7CC0];
    v14 = *(v13 + 16);
    v15 = v21;
    while (1)
    {
      if (v14 == v11)
      {
        (*(v15 + 8))(v18, v19);

        *&v3[OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data] = v12;
        v22.receiver = v3;
        v22.super_class = v20;
        v9 = objc_msgSendSuper2(&v22, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v9;
      }

      if (v11 >= *(v13 + 16))
      {
        break;
      }

      v16 = *(v13 + 8 * v11++ + 32);
      if (v16)
      {
        v17 = v16;
        MEMORY[0x1DA729B90]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        result = sub_1D917869C();
        v12 = v23;
        v15 = v21;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PodcastRelationshipContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DB8, &qword_1D91AE6A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9092FB0();
  sub_1D9179F1C();
  v8 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v10 = *(v2 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DC0, &qword_1D91AE6B0);
  sub_1D90930B4();
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D908E8C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D908E950(uint64_t a1)
{
  v2 = sub_1D9093168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908E98C(uint64_t a1)
{
  v2 = sub_1D9093168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastPlaybackPositionContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastPlaybackPositionContainer.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DD8, &qword_1D91AE6B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093168();
  sub_1D9179F1C();
  v9[1] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DE0, &qword_1D91AE6C0);
  sub_1D90931BC();
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PodcastPlaybackPositionContainer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastPlaybackPositionContainer.init(from:)(a1);
  return v2;
}

void *PodcastPlaybackPositionContainer.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DF8, &qword_1D91AE6C8);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093168();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9DE0, &qword_1D91AE6C0);
    sub_1D9093294();
    sub_1D91798FC();
    (*(v9 + 8))(v6, v4);
    *(v1 + 16) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t PodcastPlaybackPositionData.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PodcastPlaybackPositionData.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PodcastPlaybackPositionData.href.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D908EE88()
{
  v1 = 25705;
  v2 = 1717924456;
  if (*v0 != 2)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D908EEEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9096318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D908EF14(uint64_t a1)
{
  v2 = sub_1D9093348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908EF50(uint64_t a1)
{
  v2 = sub_1D9093348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastPlaybackPositionData.deinit()
{

  return v0;
}

uint64_t PodcastPlaybackPositionData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastPlaybackPositionData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E00, &qword_1D91AE6D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093348();
  sub_1D9179F1C();
  v15 = 0;
  sub_1D91799BC();
  if (!v2)
  {
    v14 = 1;
    sub_1D91799BC();
    v13 = 2;
    sub_1D91799BC();
    v12 = *(v3 + 64);
    v11[15] = 3;
    type metadata accessor for PodcastPlaybackPositionDataAttributes();
    sub_1D9090018(&qword_1ECAB9E10, v9, type metadata accessor for PodcastPlaybackPositionDataAttributes, &protocol conformance descriptor for PodcastPlaybackPositionDataAttributes);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PodcastPlaybackPositionData.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastPlaybackPositionData.init(from:)(a1);
  return v2;
}

void *PodcastPlaybackPositionData.init(from:)(void *a1)
{
  v12[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E18, &qword_1D91AE6D8);
  v4 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v6 = v12 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9093348();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    v1[2] = sub_1D91798BC();
    v1[3] = v7;
    v15 = 1;
    v1[4] = sub_1D91798BC();
    v1[5] = v8;
    v14 = 2;
    v1[6] = sub_1D91798BC();
    v1[7] = v9;
    type metadata accessor for PodcastPlaybackPositionDataAttributes();
    v13 = 3;
    sub_1D9090018(&qword_1ECAB9E20, v10, type metadata accessor for PodcastPlaybackPositionDataAttributes, &protocol conformance descriptor for PodcastPlaybackPositionDataAttributes);
    sub_1D91798FC();
    (*(v4 + 8))(v6, v12[0]);
    v1[8] = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1D908F5FC()
{
  v1 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1D908F668@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D909647C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D908F690(uint64_t a1)
{
  v2 = sub_1D90933C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D908F6CC(uint64_t a1)
{
  v2 = sub_1D90933C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PodcastPlaybackPositionDataAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PodcastPlaybackPositionDataAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E28, &qword_1D91AE6E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90933C0();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799DC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D91799CC();
  v8[13] = 2;
  sub_1D917994C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PodcastPlaybackPositionDataAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PodcastPlaybackPositionDataAttributes.init(from:)(a1);
  return v2;
}

double *PodcastPlaybackPositionDataAttributes.init(from:)(void *a1)
{
  v3 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9E38, &qword_1D91AE6E8);
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90933C0();
  sub_1D9179EEC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    sub_1D91798DC();
    *(v1 + 16) = v8;
    v16 = 1;
    *(v1 + 24) = sub_1D91798CC() & 1;
    v15 = 2;
    v10 = sub_1D917984C();
    v12 = v11;
    (*(v5 + 8))(v7, v14);
    *(v3 + 32) = v10;
    *(v3 + 40) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_1D908FBA8@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t OptionalElement.value.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1D91791BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t OptionalElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = sub_1D91791BC();
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v18 = a3;
  v20 = type metadata accessor for OptionalElement(0, a2, a3, v10);
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v19;
  sub_1D9179EDC();
  if (v14)
  {

    (*(*(a2 - 8) + 56))(v13, 1, 1, a2);
  }

  else
  {
    v19 = v7;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1D9179B2C();
    (*(*(a2 - 8) + 56))(v9, 0, 1, a2);
    (*(v17 + 32))(v13, v9, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  (*(v11 + 32))(v22, v13, v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D908FF80()
{
  result = qword_1EDCD46A8[0];
  if (!qword_1EDCD46A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD46A8);
  }

  return result;
}

uint64_t sub_1D9090018(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90900A8()
{
  result = qword_1ECAB1D88;
  if (!qword_1ECAB1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1D88);
  }

  return result;
}

unint64_t sub_1D9090140()
{
  result = qword_1ECAB9BD8;
  if (!qword_1ECAB9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9BD8);
  }

  return result;
}

unint64_t sub_1D90901B8()
{
  result = qword_1EDCD4778[0];
  if (!qword_1EDCD4778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD4778);
  }

  return result;
}

uint64_t _s18PodcastsFoundation13ServerArtworkC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v3 != v4)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1D9179ACC();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 72);
  v10 = *(a2 + 72);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1D9179ACC();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a1 + 88);
  v16 = *(a2 + 88);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_1D9179ACC();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = *(a1 + 104);
  v22 = *(a2 + 104);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*(a1 + 96) != *(a2 + 96) || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_1D9179ACC();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = *(a1 + 120);
  v28 = *(a2 + 120);
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (!v28)
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112) || v27 != v28)
  {
    v29 = a1;
    v30 = a2;
    v31 = sub_1D9179ACC();
    a2 = v30;
    v32 = v31;
    a1 = v29;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_46:
  v33 = *(a1 + 136);
  v34 = *(a2 + 136);
  v2 = (v33 | v34) == 0;
  if (!v33 || !v34)
  {
    return v2;
  }

  if (*(a1 + 128) == *(a2 + 128) && v33 == v34)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

unint64_t sub_1D90904B8()
{
  result = qword_1EDCD54B8;
  if (!qword_1EDCD54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54B8);
  }

  return result;
}

unint64_t sub_1D909050C()
{
  result = qword_1EDCD48E0;
  if (!qword_1EDCD48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD48E0);
  }

  return result;
}

uint64_t sub_1D9090584(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C20, &qword_1D91AE578);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D90905F0()
{
  result = qword_1ECAAFF60;
  if (!qword_1ECAAFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C28, &qword_1D91AE580);
    sub_1D9090018(qword_1ECAB21C8, v1, type metadata accessor for PodcastShowOffer, &protocol conformance descriptor for PodcastShowOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFF60);
  }

  return result;
}

uint64_t sub_1D90906C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9090734()
{
  result = qword_1EDCD0A90;
  if (!qword_1EDCD0A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C28, &qword_1D91AE580);
    sub_1D9090018(&qword_1EDCD5030, v1, type metadata accessor for PodcastShowOffer, &protocol conformance descriptor for PodcastShowOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A90);
  }

  return result;
}

unint64_t sub_1D90907E8()
{
  result = qword_1EDCD1B30;
  if (!qword_1EDCD1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD1B30);
  }

  return result;
}

unint64_t sub_1D909083C()
{
  result = qword_1EDCD2F40[0];
  if (!qword_1EDCD2F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD2F40);
  }

  return result;
}

unint64_t sub_1D9090890()
{
  result = qword_1ECAB9C58;
  if (!qword_1ECAB9C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    sub_1D9090018(&qword_1ECAB9C60, v1, type metadata accessor for PodcastEpisodeOffer, &protocol conformance descriptor for PodcastEpisodeOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB9C58);
  }

  return result;
}

unint64_t sub_1D909098C()
{
  result = qword_1EDCD0A78;
  if (!qword_1EDCD0A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9C50, &qword_1D91AE5A8);
    sub_1D9090018(&qword_1EDCD4038, v1, type metadata accessor for PodcastEpisodeOffer, &protocol conformance descriptor for PodcastEpisodeOffer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0A78);
  }

  return result;
}

unint64_t sub_1D9090A40()
{
  result = qword_1EDCD5048[0];
  if (!qword_1EDCD5048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD5048);
  }

  return result;
}

unint64_t sub_1D9090A94()
{
  result = qword_1EDCD4050[0];
  if (!qword_1EDCD4050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD4050);
  }

  return result;
}

BOOL _s18PodcastsFoundation16ServerTranscriptC10AttributesV9AssetUrlsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v18 = *(v17 + 48);
  v40 = a1;
  sub_1D8D088B4(a1, &v36 - v15, &unk_1ECAB5910, &qword_1D9188C90);
  v41 = a2;
  sub_1D8D088B4(a2, &v16[v18], &unk_1ECAB5910, &qword_1D9188C90);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1D8D088B4(v16, v11, &unk_1ECAB5910, &qword_1D9188C90);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = *(v5 + 32);
      v22 = &v16[v18];
      v23 = v5;
      v24 = v38;
      v21(v38, v22, v4);
      sub_1D9090018(&qword_1ECAB2CA0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v25 = sub_1D91781BC();
      v36 = v23;
      v26 = *(v23 + 8);
      v26(v24, v4);
      v26(v11, v4);
      sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    v20 = v16;
LABEL_14:
    sub_1D8D08A50(v20, &qword_1ECAB6178, &unk_1D9193430);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v36 = v5;
  sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_8:
  v27 = *(type metadata accessor for ServerTranscript.Attributes.AssetUrls(0) + 20);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_1D8D088B4(v40 + v27, v39, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(v41 + v27, v29 + v28, &unk_1ECAB5910, &qword_1D9188C90);
  if (v19(v29, 1, v4) == 1)
  {
    if (v19((v29 + v28), 1, v4) == 1)
    {
      sub_1D8D08A50(v29, &unk_1ECAB5910, &qword_1D9188C90);
      return 1;
    }

    goto LABEL_13;
  }

  v30 = v37;
  sub_1D8D088B4(v29, v37, &unk_1ECAB5910, &qword_1D9188C90);
  if (v19((v29 + v28), 1, v4) == 1)
  {
    (*(v36 + 8))(v30, v4);
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  v32 = v36;
  v33 = v38;
  (*(v36 + 32))(v38, v29 + v28, v4);
  sub_1D9090018(&qword_1ECAB2CA0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v34 = sub_1D91781BC();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_1D8D08A50(v29, &unk_1ECAB5910, &qword_1D9188C90);
  return (v34 & 1) != 0;
}

unint64_t sub_1D9091060(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D917980C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D90910AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D9091264(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F73697065 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D90913C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D9091638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEC000000656C6261 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C725564656566 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91C8010 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEF656D6954657461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x5565746973626577 && a2 == 0xEA00000000006C72 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xED0000737265626DLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73726566666FLL && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C6C65737075 && a2 == 0xE600000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D9091BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEC000000656C6261 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C725564656566 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726566666FLL && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x695473656E757469 && a2 == 0xEB00000000656C74 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4F6B726F77747261 && a2 == 0xED00006E69676972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x637365446C6C7566 && a2 == 0xEF6E6F6974706972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEF656D6954657461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91C80B0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5565746973626577 && a2 == 0xEA00000000006C72 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_1D9179ACC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x4B6C656E6E616863 && a2 == 0xEB00000000646E69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E694B616964656DLL && a2 == 0xE900000000000064 || (sub_1D9179ACC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6C72557465737361 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91C8150 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_1D9179ACC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x72617262694C6E69 && a2 == 0xE900000000000079)
  {

    return 25;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t sub_1D9092434(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91C8150 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D909259C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F68, &qword_1D91B15D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90965A8();
  sub_1D9179EEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  v34 = v4;
  v35 = a1;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v36 = v6;
  while (1)
  {
    v9 = byte_1F5461EE0[v7 + 32];
    v39 = byte_1F5461EE0[v7 + 32];
    v10 = sub_1D91798BC();
    if (v1)
    {

      v1 = 0;
      goto LABEL_5;
    }

    v12 = v3;
    v13 = v10;
    v14 = v11;
    v37 = 0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v8;
    v16 = sub_1D8F06EDC(v9);
    v18 = v8[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v8[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v16;
        sub_1D8F84F64();
        v16 = v30;
        v25 = v13;
        v24 = v14;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D9008718(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1D8F06EDC(v9);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_23;
      }
    }

    v24 = v14;
    v25 = v13;
LABEL_13:
    v3 = v12;
    v6 = v36;
    v8 = v38;
    if (v22)
    {
      v26 = (v38[7] + 16 * v16);
      *v26 = v25;
      v26[1] = v24;
    }

    else
    {
      v38[(v16 >> 6) + 8] |= 1 << v16;
      *(v8[6] + v16) = v9;
      v27 = (v8[7] + 16 * v16);
      *v27 = v25;
      v27[1] = v24;
      v28 = v8[2];
      v20 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v20)
      {
        goto LABEL_22;
      }

      v8[2] = v29;
    }

    v1 = v37;
LABEL_5:
    if (++v7 == 4)
    {
      (*(v34 + 8))(v6, v3);
      type metadata accessor for PodcastEpisodeAttributes.AvailabilityDates();
      v3 = swift_allocObject();
      v31 = MEMORY[0x1E69E7CC8];
      *(v3 + 16) = v8;
      *(v3 + 24) = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}