uint64_t ChannelEntity.prepare(asPartOf:)(uint64_t a1)
{
  v2[103] = v1;
  v2[97] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[104] = v3;
  v4 = *(v3 - 8);
  v2[105] = v4;
  v2[106] = *(v4 + 64);
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v6 = swift_task_alloc();
  v2[110] = v6;
  *v6 = v2;
  v6[1] = sub_4C2CC;

  return BaseObjectGraph.inject<A>(_:)(v2 + 87, v5, v5);
}

uint64_t sub_4C2CC()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_4C91C;
  }

  else
  {
    v2 = sub_4C3E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4C3E0()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 856);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v5 = *(v0 + 824);
  v6 = *(v0 + 776);
  v16 = *(v5 + 40);
  v7 = type metadata accessor for ChannelEntity(0);
  *(v0 + 896) = v7;
  v8 = *(v7 + 48);
  *(v0 + 944) = v8;
  sub_26324(v5 + v8, v1, &unk_12DFA0, &qword_E9B50);
  sub_26324(v1, v2, &unk_12DFA0, &qword_E9B50);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 904) = v11;
  sub_CF40(v2, v11 + v9);
  *(v11 + v10) = v16;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;

  swift_asyncLet_begin();
  v12 = *(v7 + 40);
  v13 = swift_task_alloc();
  *(v0 + 912) = v13;
  v14 = sub_1E0E8(&qword_12E5B8, &protocol conformance descriptor for ChannelEntity);
  *v13 = v0;
  v13[1] = sub_4C5CC;

  return Preparable.artworkData(for:imageProvider:)(v5 + v12, v0 + 696, v7, v14);
}

uint64_t sub_4C5CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 920) = v2;

  if (v2)
  {
    v7 = v6[108];

    return _swift_asyncLet_finish(v6 + 2, v7, sub_4C9A0, v6 + 82);
  }

  else
  {
    v6[116] = a2;
    v6[117] = a1;

    return _swift_task_switch(sub_4C728, 0, 0);
  }
}

uint64_t sub_4C728()
{
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[103] + *(v0[112] + 44);
  sub_4DC8C(*v3, *(v3 + 8));
  *v3 = v1;
  *(v3 + 8) = v2;
  v4 = v0[108];

  return _swift_asyncLet_get(v0 + 2, v4, sub_4C7B8, v0 + 92);
}

uint64_t sub_4C7D4()
{
  sub_4EB1C(*(v0 + 864), *(v0 + 824) + *(v0 + 944));
  v1 = *(v0 + 864);

  return _swift_asyncLet_finish(v0 + 16, v1, sub_4C84C, v0 + 784);
}

uint64_t sub_4C868()
{
  sub_110AC(v0[109], &unk_12DFA0, &qword_E9B50);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  v1 = v0[1];

  return v1();
}

uint64_t sub_4C91C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4C9BC()
{
  sub_110AC(v0[109], &unk_12DFA0, &qword_E9B50);
  __swift_destroy_boxed_opaque_existential_1(v0 + 87);

  v1 = v0[1];

  return v1();
}

uint64_t sub_4CA6C()
{
  result = sub_E7064();
  qword_12E530 = result;
  *algn_12E538 = v1;
  return result;
}

uint64_t static ChannelEntity.databaseEntityName.getter()
{
  if (qword_12CA80 != -1)
  {
    swift_once();
  }

  v0 = qword_12E530;

  return v0;
}

uint64_t sub_4CB04()
{
  v0 = sub_E6014();
  __swift_allocate_value_buffer(v0, qword_12E540);
  v1 = __swift_project_value_buffer(v0, qword_12E540);
  v2 = enum case for MediaRequest.ContentType.podcastChannel(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_4CBC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  qword_12E558 = result;
  return result;
}

uint64_t static ChannelEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CA90 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12E558;
}

uint64_t sub_4CCBC()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E560);
  __swift_project_value_buffer(v0, qword_12E560);
  return sub_E57B4();
}

uint64_t sub_4CD58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t ChannelEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_E5944();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = sub_E7014();
  __chkstk_darwin(v8 - 8);
  sub_E7004();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_E6FF4(v12);
  sub_E53E4();
  sub_E6FD4(v11);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_E6FF4(v13);
  sub_E5924();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_E5684();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_E56A4();
}

uint64_t (*static ChannelEntity.deviceURLPrefix.modify(uint64_t a1))()
{
  if (qword_12CAA0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v1, qword_12E578);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_4D1A4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = sub_E59C4();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 1, 1, v5);
}

uint64_t sub_4D264@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return sub_26324(v7, a4, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4D320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  sub_4EB1C(a1, v7);
  swift_endAccess();
  return sub_110AC(a1, &unk_12DFA0, &qword_E9B50);
}

uint64_t (*static ChannelEntity.catalogURLPrefix.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_12CAA8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v1, qword_12E590);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_4D46C@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return sub_26324(v7, a4, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v10 = __swift_project_value_buffer(v9, a6);
  swift_beginAccess();
  sub_4EB1C(a1, v10);
  return swift_endAccess();
}

uint64_t TipButton.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TipButton.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TipButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TipButton.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *StationEntity.objectID.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void (*ChannelEntity.name.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*ChannelEntity.subscribed.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t ChannelEntity.artworkData.getter()
{
  v1 = v0 + *(type metadata accessor for ChannelEntity(0) + 44);
  v2 = *v1;
  sub_4EB8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t ChannelEntity.init(id:uuid:objectID:adamID:name:subscribed:artworkModel:artworkData:storeURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = sub_E5944();
  __chkstk_darwin(v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  sub_E5914();
  *(a9 + 6) = sub_E5474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5B0, &qword_EBE28);
  sub_E5914();
  *(a9 + 7) = sub_E5494();
  v19 = type metadata accessor for ChannelEntity(0);
  v20 = v19[10];
  v21 = sub_E5FD4();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v19[11]];
  *v22 = xmmword_EBE10;
  v23 = v19[12];
  v24 = sub_E59C4();
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v25 = a5;
  sub_E53F4();
  sub_E53F4();

  sub_4DCF4(a11, &a9[v20], &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v22, *(v22 + 1));
  *v22 = a12;
  *(v22 + 1) = a13;
  return sub_4DCF4(a14, &a9[v23], &unk_12DFA0, &qword_E9B50);
}

uint64_t type metadata accessor for ChannelEntity(uint64_t a1)
{
  result = qword_12E670;
  if (!qword_12E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4DC8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4DCA0(a1, a2);
  }

  return a1;
}

uint64_t sub_4DCA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_4DCF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t ChannelEntity.init(mediaObject:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_E5944();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = [a1 storeId];
  v12 = sub_E7064();
  v39 = v13;
  v40 = v12;

  v14 = [a1 storeId];
  sub_E7064();

  v38 = sub_E67F4();

  v15 = [a1 name];
  if (v15)
  {
    v16 = v15;
    v17 = sub_E7064();
    v36 = v18;
    v37 = v17;
  }

  else
  {
    v36 = 0xE000000000000000;
    v37 = 0;
  }

  sub_E6144();
  v35 = sub_E6334();

  sub_E6144();
  v19 = sub_E6344();

  if (v19)
  {
    sub_E5F94();
  }

  else
  {
    v20 = sub_E5FD4();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  }

  v21 = [a1 url];
  if (v21)
  {
    v22 = v21;
    sub_E7064();

    sub_E59B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v23 = sub_E59C4();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  sub_E5914();
  *(a2 + 6) = sub_E5474();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5B0, &qword_EBE28);
  sub_E5914();
  *(a2 + 7) = sub_E5494();
  v24 = type metadata accessor for ChannelEntity(0);
  v25 = v24[10];
  v26 = sub_E5FD4();
  (*(*(v26 - 8) + 56))(&a2[v25], 1, 1, v26);
  v27 = &a2[v24[11]];
  v34 = xmmword_EBE10;
  *v27 = xmmword_EBE10;
  v28 = v24[12];
  v29 = sub_E59C4();
  (*(*(v29 - 8) + 56))(&a2[v28], 1, 1, v29);
  v30 = v39;
  *a2 = v40;
  *(a2 + 1) = v30;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v32 = v37;
  v31 = v38;
  *(a2 + 4) = 0;
  *(a2 + 5) = v31;
  v41 = v32;
  v42 = v36;
  sub_E53F4();
  LOBYTE(v41) = v35 & 1;
  sub_E53F4();

  sub_4DCF4(v10, &a2[v25], &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v27, *(v27 + 1));
  *v27 = v34;
  return sub_4DCF4(v7, &a2[v28], &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4E2B4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return sub_26324(v7, a4, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_4E354@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_4E360(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_4E3CC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_4E474(uint64_t a1)
{
  v2 = sub_1E0E8(&qword_12E040, &protocol conformance descriptor for ChannelEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_4E4E0(uint64_t a1)
{
  v2 = sub_1E0E8(&qword_12E5F8, &protocol conformance descriptor for ChannelEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_4E548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_4E5E8, 0, 0);
}

uint64_t sub_4E5E8()
{
  v1 = v0[6];
  sub_26324(v0[3], v1, &unk_12DFA0, &qword_E9B50);
  v2 = sub_E59C4();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_110AC(v0[6], &unk_12DFA0, &qword_E9B50);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_4E7A4;
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[2];

    return sub_4EBF4(v7, v5, v6);
  }

  else
  {
    v9 = v0[2];
    (*(v3 + 32))(v9, v0[6], v2);
    (*(v3 + 56))(v9, 0, 1, v2);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_4E7A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_4E8B8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_E59C4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_4E9EC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_588C;

  return sub_4E548(a1, v1 + v5, v7, v8);
}

uint64_t sub_4EB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_4EB8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4EBA0(a1, a2);
  }

  return a1;
}

uint64_t sub_4EBA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_4EBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = sub_E6974();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v6 = swift_task_alloc();
  v3[20] = v6;
  *v6 = v3;
  v6[1] = sub_4ED14;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v5, v5);
}

uint64_t sub_4ED14()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_4F27C;
  }

  else
  {
    v2 = sub_4EE28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4EE28()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E87F0;
  *(v4 + 32) = v1;
  v5 = sub_AF5BC(_swiftEmptyArrayStorage);
  v0[10] = v4;
  v0[11] = v5;
  v6 = swift_task_alloc();
  v0[22] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E718, &unk_EC250);
  v8 = sub_3C2A0(&qword_12E720, &qword_12E718, &unk_EC250, &protocol conformance descriptor for FetchMediaAPIRepresentableIntent<A>);
  *v6 = v0;
  v6[1] = sub_4EF9C;
  v9 = v0[16];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 13, v0 + 10, v9, v7, v8, v2, v3);
}

uint64_t sub_4EF9C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_4F494;
  }

  else
  {
    v2 = sub_4F0C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4F0C4()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    result = sub_E7AC4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[14];

    v9 = sub_E59C4();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    goto LABEL_11;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 url];

  v6 = v0[14];
  if (v5)
  {
    sub_E7064();

    sub_E59B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v7 = sub_E59C4();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_4F27C(uint64_t a1)
{
  v20 = v1;
  sub_E6914();
  swift_errorRetain();
  v2 = sub_E6964();
  v3 = sub_E74B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[18];
    v18 = v1[19];
    v5 = v1[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_E7C64();
    v10 = sub_23E64(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Failed to prepare channel share URL, but failing silently: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v18, v5);
  }

  else
  {
    v12 = v1[18];
    v11 = v1[19];
    v13 = v1[17];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[14];
  v15 = sub_E59C4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v1[1];

  return v16();
}

uint64_t sub_4F494()
{
  v19 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_E6914();
  swift_errorRetain();
  v1 = sub_E6964();
  v2 = sub_E74B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v17 = v0[19];
    v4 = v0[17];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_E7C64();
    v9 = sub_23E64(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v1, v2, "Failed to prepare channel share URL, but failing silently: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);

    (*(v3 + 8))(v17, v4);
  }

  else
  {
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[17];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[14];
  v14 = sub_E59C4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_4F6B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ChannelEntity.prepare(asPartOf:)(a1);
}

uint64_t static ChannelEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for ChannelEntity(0);
  v1 = sub_1E0E8(&qword_12E5C0, &protocol conformance descriptor for ChannelEntity);
  v2 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_4F7E4, 0, v0, &type metadata for String, v1, v2);
}

uint64_t sub_4F7E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ChannelEntity(0);
  sub_26324(a1 + *(v7 + 48), v6, &unk_12DFA0, &qword_E9B50);
  v8 = sub_E59C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_110AC(v6, &unk_12DFA0, &qword_E9B50);
    result = sub_E53E4();
    v11 = v14[0];
    v12 = v14[1];
  }

  else
  {
    v11 = sub_E5974();
    v12 = v13;
    result = (*(v9 + 8))(v6, v8);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

unint64_t sub_4F958()
{
  result = qword_12E5C8;
  if (!qword_12E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E5C8);
  }

  return result;
}

uint64_t sub_4FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_4F7E4, 0, a1, &type metadata for String, a2, v4);
}

uint64_t sub_4FD74@<X0>(void *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_4FDEC@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_4FE74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_4FFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_50100(uint64_t a1)
{
  sub_5041C(319, &qword_12E680, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_50468(319, &qword_12E688, sub_502C8);
    if (v2 <= 0x3F)
    {
      sub_50368(319, &qword_12E690, sub_50314, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_50368(319, &qword_12E6A0, sub_503C8, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_50468(319, &qword_12E6B0, &type metadata accessor for ArtworkModel);
          if (v5 <= 0x3F)
          {
            sub_5041C(319, &unk_12E6B8, &type metadata for Data);
            if (v6 <= 0x3F)
            {
              sub_50468(319, &qword_12D8A0, &type metadata accessor for URL);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_502C8()
{
  result = qword_12E090;
  if (!qword_12E090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12E090);
  }

  return result;
}

unint64_t sub_50314()
{
  result = qword_12E698;
  if (!qword_12E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E698);
  }

  return result;
}

void sub_50368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_E54C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_503C8()
{
  result = qword_12E6A8;
  if (!qword_12E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E6A8);
  }

  return result;
}

void sub_5041C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_50468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_50510()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E728);
  __swift_project_value_buffer(v0, qword_12E728);
  return sub_E57B4();
}

uint64_t static ContextualMetadata.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E728);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*ContextualMetadata.invocationSource.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_33020;
}

void (*ContextualMetadata.associatedActivities.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ContextualMetadata.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v2 - 8);
  v4 = v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  v8 = sub_E5944();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E740, &qword_EC270);
  sub_50A18();
  *a1 = sub_E5424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E750, &qword_EC278);
  sub_50A6C();
  a1[1] = sub_E5424();
  type metadata accessor for ContextualMetadata(0);
  sub_E5914();
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = sub_E5684();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_E56A4();
  v12[1] = &_swiftEmptySetSingleton;
  return sub_E53F4();
}

unint64_t sub_50A18()
{
  result = qword_12E748;
  if (!qword_12E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E748);
  }

  return result;
}

unint64_t sub_50A6C()
{
  result = qword_12E758;
  if (!qword_12E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E758);
  }

  return result;
}

uint64_t type metadata accessor for ContextualMetadata(uint64_t a1)
{
  result = qword_12E828;
  if (!qword_12E828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContextualMetadata.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextualMetadata(0) + 24);
  v4 = sub_E56B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_50CFC(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E8A8, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_50EE0(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E8A8, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_50FA0(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E760, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_51064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_E56B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_510D8(uint64_t a1)
{
  v2 = sub_516CC(&qword_12E7A8, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_51154@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_511C8@<X0>(void *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_51254(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_E56B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_51314(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E56B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_513B8(uint64_t a1)
{
  sub_51584(319, &qword_12E838, &qword_12E840, &qword_EC508, sub_514AC);
  if (v1 <= 0x3F)
  {
    sub_51584(319, &qword_12E858, &qword_12E860, &unk_EC510, sub_515F4);
    if (v2 <= 0x3F)
    {
      sub_E56B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_514AC()
{
  result = qword_12E848;
  if (!qword_12E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E840, &qword_EC508);
    sub_51530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E848);
  }

  return result;
}

unint64_t sub_51530()
{
  result = qword_12E850;
  if (!qword_12E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E850);
  }

  return result;
}

void sub_51584(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_E54C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_515F4()
{
  result = qword_12E868;
  if (!qword_12E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E860, &unk_EC510);
    sub_51678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E868);
  }

  return result;
}

unint64_t sub_51678()
{
  result = qword_12E870;
  if (!qword_12E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E870);
  }

  return result;
}

uint64_t sub_516CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EpisodeEntity.CustomRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_E5DF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_E5E54();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t EpisodeEntity.CustomRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_E5DF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_E5E54();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t EpisodeEntity.CustomRepresentation.__deallocating_deinit()
{
  _s15PodcastsActions13EpisodeEntityV20CustomRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_51A20(uint64_t a1)
{
  v3 = sub_54224(&qword_12E9B8, type metadata accessor for EpisodeEntity.CustomRepresentation, &protocol conformance descriptor for EpisodeEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_51A90()
{
  v1 = sub_54224(&qword_12E9A8, type metadata accessor for EpisodeEntity.CustomRepresentation, &protocol conformance descriptor for EpisodeEntity.CustomRepresentation);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_51B14(uint64_t a1)
{
  v3 = sub_54224(&qword_12E9B8, type metadata accessor for EpisodeEntity.CustomRepresentation, &protocol conformance descriptor for EpisodeEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_51B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5E14();
  *a1 = result;
  return result;
}

uint64_t sub_51BFC()
{
  result = sub_E7064();
  qword_12E8B0 = result;
  *algn_12E8B8 = v1;
  return result;
}

uint64_t static EpisodeEntity.databaseEntityName.getter()
{
  if (qword_12CAB8 != -1)
  {
    swift_once();
  }

  v0 = qword_12E8B0;

  return v0;
}

uint64_t sub_51C94()
{
  v0 = sub_E6014();
  __swift_allocate_value_buffer(v0, qword_12E8C0);
  v1 = __swift_project_value_buffer(v0, qword_12E8C0);
  v2 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static EpisodeEntity.serverContentType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CAC0 != -1)
  {
    swift_once();
  }

  v2 = sub_E6014();
  v3 = __swift_project_value_buffer(v2, qword_12E8C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_51DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC18, &qword_ECC68);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_E87F0;
  v3 = v2 + v1;
  v4 = v0[14];
  v5 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
  v6 = sub_E6014();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC20, &qword_ECC78);
  v7 = sub_E6044();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_EC520;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, enum case for MediaRequest.IncludeExtendTypes.transcripts(_:), v7);
  v13(v12 + v9, enum case for MediaRequest.IncludeExtendTypes.editorialArtwork(_:), v7);
  v13(v12 + 2 * v9, enum case for MediaRequest.IncludeExtendTypes.podcast(_:), v7);
  v13(v12 + 3 * v9, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v7);
  *(v3 + v4) = v11;
  v14 = sub_B0314(v2);
  swift_setDeallocating();
  sub_110AC(v3, &unk_1306C0, &qword_ECC70);
  result = swift_deallocClassInstance();
  qword_12E8D8 = v14;
  return result;
}

uint64_t static EpisodeEntity.typedIncludes.getter()
{
  if (qword_12CAC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_520B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  qword_12E8E0 = result;
  return result;
}

uint64_t static EpisodeEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CAD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12E8E0;
}

uint64_t EpisodeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v7 = __chkstk_darwin(v6 - 8);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v32 = sub_E5944();
  v11 = *(v32 - 8);
  v12 = __chkstk_darwin(v32);
  __chkstk_darwin(v12);
  v13 = sub_E7014();
  v14 = __chkstk_darwin(v13 - 8);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v16 = v1;
  sub_E53E4();
  object = v34._object;
  if (v34._object)
  {
    countAndFlagsBits = v34._countAndFlagsBits;
    sub_E7004();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_E6FF4(v35);
    sub_E53E4();
    sub_E6FD4(v34);

    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    sub_E6FF4(v36);
    sub_E5924();
    sub_E7004();
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    sub_E6FF4(v37);
    v38._countAndFlagsBits = countAndFlagsBits;
    v38._object = object;
    sub_E6FD4(v38);

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_E6FF4(v39);
    v19 = 1;
    sub_E5924();
    (*(v11 + 56))(v10, 0, 1, v32);
    v20 = v16 + *(type metadata accessor for EpisodeEntity(0) + 100);
    v21 = v31;
    if (*(v20 + 8) >> 60 != 15)
    {
      sub_4EBA0(*v20, *(v20 + 8));
      sub_E5674();
      v19 = 0;
    }

    v22 = sub_E5684();
    (*(*(v22 - 8) + 56))(v21, v19, 1, v22);
  }

  else
  {
    v23 = 1;
    sub_E7004();
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    sub_E6FF4(v40);
    sub_E53E4();
    sub_E6FD4(v34);

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    sub_E6FF4(v41);
    sub_E5924();
    (*(v11 + 56))(v29, 1, 1, v32);
    v24 = v1 + *(type metadata accessor for EpisodeEntity(0) + 100);
    v25 = v30;
    if (*(v24 + 8) >> 60 != 15)
    {
      sub_4EBA0(*v24, *(v24 + 8));
      sub_E5674();
      v23 = 0;
    }

    v26 = sub_E5684();
    (*(*(v26 - 8) + 56))(v25, v23, 1, v26);
  }

  return sub_E56A4();
}

uint64_t sub_526C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12E8E8);
  __swift_project_value_buffer(v0, qword_12E8E8);
  return sub_E59B4();
}

uint64_t (*static EpisodeEntity.deviceURLPrefix.modify(uint64_t a1))(void)
{
  if (qword_12CAD8 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v1, qword_12E8E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_5281C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12E900);
  __swift_project_value_buffer(v0, qword_12E900);
  return sub_E59B4();
}

uint64_t (*static EpisodeEntity.catalogURLPrefix.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_12CAE0 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_project_value_buffer(v1, qword_12E900);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_52974()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E918);
  __swift_project_value_buffer(v0, qword_12E918);
  return sub_E57B4();
}

uint64_t static EpisodeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E918);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EpisodeEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E918);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EpisodeEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v1 = sub_E57C4();
  __swift_project_value_buffer(v1, qword_12E918);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_52C20(uint64_t a1)
{
  if (qword_12CAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E918);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

void *EpisodeEntity.objectID.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t EpisodeEntity.uuid.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void (*EpisodeEntity.description.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_33020;
}

void (*EpisodeEntity.category.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*EpisodeEntity.creator.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_5306C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_26324(a1, &v9 - v6, &qword_131EE0, &unk_F5BE0);
  sub_26324(v7, v5, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(v7, &qword_131EE0, &unk_F5BE0);
}

uint64_t EpisodeEntity.downloadDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  __chkstk_darwin(v2 - 8);
  sub_26324(a1, &v5 - v3, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(a1, &qword_131EE0, &unk_F5BE0);
}

void (*EpisodeEntity.downloadDate.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*EpisodeEntity.episodeNumber.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*EpisodeEntity.isPlayed.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*EpisodeEntity.isSaved.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*EpisodeEntity.isDownloaded.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

void (*EpisodeEntity.isTranscriptAvailable.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t EpisodeEntity.artworkData.getter()
{
  v1 = v0 + *(type metadata accessor for EpisodeEntity(0) + 100);
  v2 = *v1;
  sub_4EB8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t EpisodeEntity.init(id:objectID:uuid:adamID:title:description:category:creator:showName:show:downloadDate:releaseDate:episodeNumber:isPlayed:isSaved:isDownloaded:isTranscriptAvailable:artworkModel:artworkData:shareURL:transcriptInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v81 = a7;
  v82 = a8;
  v77 = a6;
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v72 = a2;
  v71 = a1;
  v98 = a28;
  v99 = a29;
  v96 = a26;
  v97 = a27;
  v94 = a24;
  v95 = a25;
  v92 = a22;
  v93 = a23;
  v90 = a20;
  v91 = a21;
  v89 = a19;
  v86 = a17;
  v87 = a18;
  v84 = a15;
  v85 = a16;
  v83 = a14;
  v80 = a13;
  v79 = a12;
  v78 = a11;
  v76 = a10;
  v100 = a30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v32 = __chkstk_darwin(v31 - 8);
  v88 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v58 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v37 = __chkstk_darwin(v36 - 8);
  v70 = &v58 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v58 - v39;
  v41 = sub_E5944();
  __chkstk_darwin(v41 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v66 = sub_E5484();
  *(a9 + 2) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  v69 = sub_E5484();
  *(a9 + 3) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E940, &qword_EC558);
  sub_54224(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v67 = sub_E5444();
  *(a9 + 4) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_54224(&qword_12E760, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);
  *(a9 + 5) = sub_E5444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  v68 = sub_E5464();
  *(a9 + 6) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E958, &qword_EC570);
  *(a9 + 7) = sub_E54A4();
  sub_E5914();
  *(a9 + 12) = sub_E5474();
  sub_E5914();
  *(a9 + 13) = sub_E5474();
  sub_E5914();
  *(a9 + 14) = sub_E5474();
  sub_E5914();
  v63 = sub_E5454();
  *(a9 + 15) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E960, &qword_EC578);
  sub_E5914();
  v65 = sub_E54B4();
  *(a9 + 16) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v64 = sub_E5494();
  *(a9 + 17) = v64;
  sub_E5914();
  v61 = sub_E5494();
  *(a9 + 18) = v61;
  sub_E5914();
  v59 = sub_E5494();
  *(a9 + 19) = v59;
  sub_E5914();
  v58 = sub_E5494();
  *(a9 + 20) = v58;
  v42 = type metadata accessor for EpisodeEntity(0);
  v43 = v42[24];
  v62 = v43;
  v44 = sub_E5FD4();
  (*(*(v44 - 8) + 56))(&a9[v43], 1, 1, v44);
  v45 = &a9[v42[25]];
  *v45 = xmmword_EBE10;
  v46 = v42[26];
  v60 = v46;
  v47 = sub_E59C4();
  (*(*(v47 - 8) + 56))(&a9[v46], 1, 1, v47);
  v48 = v72;
  *a9 = v71;
  *(a9 + 1) = v48;
  v49 = v73;
  v50 = v74;
  *(a9 + 8) = v73;
  *(a9 + 9) = v50;
  v51 = v77;
  *(a9 + 10) = v75;
  *(a9 + 11) = v51;
  sub_26324(v100, &a9[v42[23]], &qword_12E930, &unk_EC530);
  v101 = v81;
  v102 = v82;
  v82 = v49;
  sub_E53F4();
  v101 = v76;
  v102 = v78;
  sub_E53F4();
  v101 = v79;
  v102 = v80;
  sub_E53F4();
  v101 = v83;
  v102 = v84;
  sub_E53F4();
  v101 = v85;
  v102 = v86;
  sub_E53F4();
  v52 = v87;
  sub_26324(v87, v40, &qword_12DCD8, &unk_EC540);
  sub_26324(v40, v70, &qword_12DCD8, &unk_EC540);
  sub_E53F4();
  sub_110AC(v40, &qword_12DCD8, &unk_EC540);
  v53 = v89;
  sub_26324(v89, v35, &qword_131EE0, &unk_F5BE0);
  v54 = v88;
  sub_26324(v35, v88, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v35, &qword_131EE0, &unk_F5BE0);
  v55 = v90;
  sub_26324(v90, v35, &qword_131EE0, &unk_F5BE0);
  sub_26324(v35, v54, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v35, &qword_131EE0, &unk_F5BE0);
  v101 = v91;
  LOBYTE(v102) = 0;
  sub_E53F4();
  LOBYTE(v101) = v92;
  sub_E53F4();
  LOBYTE(v101) = v93;
  sub_E53F4();
  LOBYTE(v101) = v94;
  sub_E53F4();
  LOBYTE(v101) = v95;
  sub_E53F4();

  sub_110AC(v100, &qword_12E930, &unk_EC530);
  sub_110AC(v55, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v53, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v52, &qword_12DCD8, &unk_EC540);
  sub_4DCF4(v96, &a9[v62], &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v45, *(v45 + 1));
  v56 = v98;
  *v45 = v97;
  *(v45 + 1) = v56;
  return sub_4DCF4(v99, &a9[v60], &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_54224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EpisodeEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v155 = a2;
  v3 = sub_E5944();
  __chkstk_darwin(v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  __chkstk_darwin(v4 - 8);
  v6 = &v119 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v8 = __chkstk_darwin(v7 - 8);
  v157 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v156 = &v119 - v11;
  v12 = __chkstk_darwin(v10);
  v166 = &v119 - v13;
  __chkstk_darwin(v12);
  v167 = &v119 - v14;
  v168 = sub_E59C4();
  v164 = *(v168 - 1);
  __chkstk_darwin(v168);
  v153 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E970, &qword_EC588);
  __chkstk_darwin(v16 - 8);
  v151 = &v119 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  v19 = __chkstk_darwin(v18 - 8);
  v162 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v119 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v24 = __chkstk_darwin(v23 - 8);
  v163 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v119 - v27;
  __chkstk_darwin(v26);
  v169 = &v119 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v31 = __chkstk_darwin(v30 - 8);
  v154 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v161 = &v119 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v119 - v36;
  __chkstk_darwin(v35);
  v39 = &v119 - v38;
  v40 = type metadata accessor for ShowEntity(0);
  v41 = *(*(v40 - 8) + 56);
  v41(v39, 1, 1, v40);
  v42 = [a1 podcast];
  v170 = v22;
  v165 = v37;
  if (v42)
  {
    ShowEntity.init(model:)(v42, v37);
    sub_110AC(v39, &qword_12DCD8, &unk_EC540);
    v41(v165, 0, 1, v40);
    v22 = v170;
    sub_45B04(v165, v39, &qword_12DCD8, &unk_EC540);
  }

  v158 = *(v164 + 7);
  v159 = v164 + 56;
  v158(v169, 1, 1, v168);
  v43 = [a1 podcast];
  v44 = v167;
  v160 = v39;
  if (v43)
  {
    v45 = v43;
    v46 = [v43 storeCollectionId];

    v47 = [objc_opt_self() productURLForStoreCollectionId:v46 storeTrackId:{objc_msgSend(a1, "storeTrackId")}];
    if (v47)
    {
      v48 = v47;
      sub_E5994();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = v169;
    sub_110AC(v169, &unk_12DFA0, &qword_E9B50);
    v158(v28, v49, 1, v168);
    sub_45B04(v28, v50, &unk_12DFA0, &qword_E9B50);
    v22 = v170;
    v39 = v160;
  }

  result = [a1 storeTrackId];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v52 = sub_E6814();
    v53 = [a1 transcriptIdentifier];
    v152 = v52;
    if (v53)
    {
      v54 = v53;
      v150 = sub_E7064();

      v171 = v52;
      sub_10D78();

      v149 = sub_E7854();
      v148 = v55;
      v56 = [a1 title];
      if (v56)
      {
        v57 = v56;
        v147 = sub_E7064();
        v146 = v58;
      }

      else
      {
        v147 = 0;
        v146 = 0;
      }

      v60 = [a1 podcast];
      if (v60 && (v61 = v60, v62 = [v60 title], v61, v62))
      {
        v63 = v6;
        sub_E7064();
      }

      else
      {
        v63 = v6;
      }

      v64 = [a1 transcriptProvider];
      sub_E7064();

      sub_E61D4();
      v22 = v170;
      sub_E67A4();

      v59 = 0;
      v6 = v63;
      v44 = v167;
    }

    else
    {
      v59 = 1;
    }

    v65 = sub_E67B4();
    (*(*(v65 - 8) + 56))(v22, v59, 1, v65);
    v66 = a1;
    v67 = [v66 objectID];
    v68 = [v67 URIRepresentation];

    v69 = v153;
    sub_E5994();

    v151 = sub_E5974();
    v150 = v70;
    (*(v164 + 1))(v69, v168);
    v164 = [v66 objectID];

    v71 = [v66 uuid];
    if (v71)
    {
      v72 = v71;
      v153 = sub_E7064();
      v149 = v73;
    }

    else
    {
      v153 = 0;
      v149 = 0;
    }

    v74 = [v66 title];
    if (v74)
    {
      v75 = v74;
      v148 = sub_E7064();
      v147 = v76;
    }

    else
    {
      v148 = 0;
      v147 = 0xE000000000000000;
    }

    v77 = [v66 description];
    v146 = sub_E7064();
    v145 = v78;

    v79 = [v66 category];
    if (v79)
    {
      v80 = v79;
      v144 = sub_E7064();
      v143 = v81;
    }

    else
    {
      v144 = 0;
      v143 = 0xE000000000000000;
    }

    v82 = [v66 author];
    if (v82)
    {
      v83 = v82;
      v142 = sub_E7064();
      v141 = v84;
    }

    else
    {
      v142 = 0;
      v141 = 0;
    }

    v85 = [v66 podcast];
    if (v85 && (v86 = v85, v87 = [v85 title], v86, v87))
    {
      v140 = sub_E7064();
      v139 = v88;
    }

    else
    {
      v140 = 0;
      v139 = 0;
    }

    sub_26324(v39, v161, &qword_12DCD8, &unk_EC540);
    [v66 downloadDate];
    if (v89 <= 0.0)
    {
      v90 = 1;
    }

    else
    {
      [v66 downloadDate];
      sub_E5A04();
      v90 = 0;
    }

    v91 = sub_E5A54();
    v92 = *(*(v91 - 8) + 56);
    v93 = 1;
    v92(v44, v90, 1, v91);
    [v66 pubDate];
    if (v94 > 0.0)
    {
      [v66 pubDate];
      sub_E5A04();
      v93 = 0;
    }

    v92(v166, v93, 1, v91);
    v138 = [v66 episodeNumber];
    v95 = [v66 playState];
    v137 = [v66 isBookmarked];
    v96 = [v66 assetURL];
    v97 = v96;
    if (v96)
    {
    }

    v98 = [v66 transcriptIdentifier];
    v99 = v98;
    if (v98)
    {
    }

    v100 = [v66 podcast];
    v136 = v6;
    if (v100)
    {
      v101 = v100;
      sub_E77C4();
    }

    else
    {
      v102 = sub_E5FD4();
      (*(*(v102 - 8) + 56))(v6, 1, 1, v102);
    }

    v135 = v99 != 0;
    v134 = v97 != 0;
    v133 = v95 == 0;
    sub_26324(v169, v163, &unk_12DFA0, &qword_E9B50);
    v103 = v162;
    sub_26324(v170, v162, &qword_12E930, &unk_EC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
    v129 = sub_E5484();
    v104 = v155;
    *(v155 + 2) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
    v131 = sub_E5484();
    *(v104 + 3) = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E940, &qword_EC558);
    sub_54224(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    v130 = sub_E5444();
    *(v104 + 4) = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
    sub_54224(&qword_12E760, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);
    *(v104 + 5) = sub_E5444();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
    v132 = sub_E5464();
    *(v104 + 6) = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E958, &qword_EC570);
    *(v104 + 7) = sub_E54A4();
    sub_E5914();
    *(v104 + 12) = sub_E5474();
    sub_E5914();
    *(v104 + 13) = sub_E5474();
    sub_E5914();
    *(v104 + 14) = sub_E5474();
    sub_E5914();
    *(v104 + 15) = sub_E5454();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E960, &qword_EC578);
    sub_E5914();
    v125 = sub_E54B4();
    *(v104 + 16) = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
    sub_E5914();
    v123 = sub_E5494();
    *(v104 + 17) = v123;
    sub_E5914();
    v122 = sub_E5494();
    *(v104 + 18) = v122;
    sub_E5914();
    v121 = sub_E5494();
    *(v104 + 19) = v121;
    sub_E5914();
    v120 = sub_E5494();
    *(v104 + 20) = v120;
    v105 = type metadata accessor for EpisodeEntity(0);
    v106 = v105[24];
    v126 = v106;
    v107 = sub_E5FD4();
    (*(*(v107 - 8) + 56))(&v104[v106], 1, 1, v107);
    v124 = &v104[v105[25]];
    v127 = xmmword_EBE10;
    *v124 = xmmword_EBE10;
    v128 = v105[26];
    v158(&v104[v128], 1, 1, v168);
    v108 = v150;
    *v104 = v151;
    *(v104 + 1) = v108;
    v109 = v164;
    v110 = v153;
    *(v104 + 8) = v164;
    *(v104 + 9) = v110;
    v111 = v152;
    *(v104 + 10) = v149;
    *(v104 + 11) = v111;
    sub_26324(v103, &v104[v105[23]], &qword_12E930, &unk_EC530);
    v171 = v148;
    v172 = v147;
    v168 = v109;
    sub_E53F4();
    v171 = v146;
    v172 = v145;
    sub_E53F4();
    v171 = v144;
    v172 = v143;
    sub_E53F4();
    v171 = v142;
    v172 = v141;
    sub_E53F4();
    v171 = v140;
    v172 = v139;
    sub_E53F4();
    v112 = v161;
    v113 = v165;
    sub_26324(v161, v165, &qword_12DCD8, &unk_EC540);
    sub_26324(v113, v154, &qword_12DCD8, &unk_EC540);
    sub_E53F4();
    sub_110AC(v113, &qword_12DCD8, &unk_EC540);
    v114 = v167;
    v115 = v156;
    sub_26324(v167, v156, &qword_131EE0, &unk_F5BE0);
    v116 = v157;
    sub_26324(v115, v157, &qword_131EE0, &unk_F5BE0);
    sub_E53F4();
    sub_110AC(v115, &qword_131EE0, &unk_F5BE0);
    v117 = v166;
    sub_26324(v166, v115, &qword_131EE0, &unk_F5BE0);
    sub_26324(v115, v116, &qword_131EE0, &unk_F5BE0);
    sub_E53F4();
    sub_110AC(v115, &qword_131EE0, &unk_F5BE0);
    v171 = v138;
    LOBYTE(v172) = 0;
    sub_E53F4();
    LOBYTE(v171) = v133;
    sub_E53F4();
    LOBYTE(v171) = v137;
    sub_E53F4();
    LOBYTE(v171) = v134;
    sub_E53F4();
    LOBYTE(v171) = v135;
    sub_E53F4();

    sub_110AC(v162, &qword_12E930, &unk_EC530);
    sub_110AC(v117, &qword_131EE0, &unk_F5BE0);
    sub_110AC(v114, &qword_131EE0, &unk_F5BE0);
    sub_110AC(v112, &qword_12DCD8, &unk_EC540);
    sub_110AC(v170, &qword_12E930, &unk_EC530);
    sub_110AC(v169, &unk_12DFA0, &qword_E9B50);
    sub_110AC(v160, &qword_12DCD8, &unk_EC540);
    sub_4DCF4(v136, &v104[v126], &unk_12DB10, &qword_EAC60);
    v118 = v124;
    sub_4DC8C(*v124, *(v124 + 1));
    *v118 = v127;
    return sub_4DCF4(v163, &v104[v128], &unk_12DFA0, &qword_E9B50);
  }

  return result;
}

void *EpisodeEntity.init(mediaObject:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_E5944();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  __chkstk_darwin(v5 - 8);
  v126 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  __chkstk_darwin(v7 - 8);
  v125 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v10 = __chkstk_darwin(v9 - 8);
  v120 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v119 = &v86 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v86 - v15;
  __chkstk_darwin(v14);
  v129 = &v86 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v19 = __chkstk_darwin(v18 - 8);
  v118 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v117 = &v86 - v22;
  __chkstk_darwin(v21);
  v127 = &v86 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v25 = __chkstk_darwin(v24 - 8);
  v128 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v86 - v28;
  __chkstk_darwin(v27);
  v31 = &v86 - v30;
  sub_E64F4();
  v32 = sub_E67F4();

  v33 = sub_E59C4();
  v34 = *(v33 - 8);
  v122 = *(v34 + 56);
  v123 = v33;
  v121 = v34 + 56;
  v122(v31, 1, 1);
  v35 = sub_E64D4();
  v124 = v16;
  v116 = v32;
  if (v35)
  {
    v36 = v35;
    v37 = sub_E6784();

    if (v37)
    {
      v38 = sub_E6794();

      if (v38 >> 62)
      {
        result = sub_E7AC4();
        if (result)
        {
LABEL_5:
          if ((v38 & 0xC000000000000001) != 0)
          {
            v40 = sub_E79B4();
          }

          else
          {
            if (!*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_36;
            }

            v40 = *(v38 + 32);
          }

          v41 = v40;

          sub_E63B4();

          v42 = sub_E67F4();

          v16 = v124;
          result = objc_opt_self();
          if (((v42 | v32) & 0x8000000000000000) == 0)
          {
            v43 = [result productURLForStoreCollectionId:v42 storeTrackId:v32];
            if (v43)
            {
              v44 = v43;
              sub_E5994();

              v45 = 0;
            }

            else
            {
              v45 = 1;
            }

            sub_110AC(v31, &unk_12DFA0, &qword_E9B50);
            (v122)(v29, v45, 1, v123);
            sub_45B04(v29, v31, &unk_12DFA0, &qword_E9B50);
            goto LABEL_15;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        result = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
          goto LABEL_5;
        }
      }
    }
  }

LABEL_15:
  v46 = sub_E64F4();
  v48 = v47;
  v49 = [a1 title];
  if (v49)
  {
    v50 = v49;
    v51 = sub_E7064();
    v112 = v52;
    v113 = v51;
  }

  else
  {
    v112 = 0xE000000000000000;
    v113 = 0;
  }

  v53 = [a1 itemSummary];
  if (v53)
  {
    v54 = v53;
    v111 = sub_E7064();
    v110 = v55;
  }

  else
  {
    v111 = 0;
    v110 = 0xE000000000000000;
  }

  v56 = [a1 category];
  if (v56)
  {
    v57 = v56;
    v109 = sub_E7064();
    v108 = v58;
  }

  else
  {
    v109 = 0;
    v108 = 0xE000000000000000;
  }

  v59 = [a1 author];
  v114 = v48;
  v115 = v46;
  if (v59)
  {
    v60 = v59;
    v107 = sub_E7064();
    v106 = v61;
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v62 = type metadata accessor for ShowEntity(0);
  v63 = 1;
  (*(*(v62 - 8) + 56))(v127, 1, 1, v62);
  v64 = sub_E5A54();
  v65 = *(*(v64 - 8) + 56);
  v65(v129, 1, 1, v64);
  v66 = [a1 pubDate];
  if (v66)
  {
    v67 = v66;
    sub_E5A34();

    v63 = 0;
  }

  v65(v16, v63, 1, v64);
  v68 = [a1 episodeNumber];
  v69 = sub_E6514();
  v70 = sub_E6504();
  v71 = [a1 freeTranscriptIdentifier];
  v105 = v70;
  v104 = v69;
  v103 = v68;
  if (v71 || (v71 = [a1 entitledTranscriptIdentifier]) != 0)
  {

    v101 = 1;
  }

  else
  {
    v101 = 0;
  }

  v72 = sub_E5FD4();
  v73 = *(v72 - 8);
  *&v94 = *(v73 + 56);
  v95 = v73 + 56;
  (v94)(v125, 1, 1, v72);
  v102 = v31;
  sub_26324(v31, v128, &unk_12DFA0, &qword_E9B50);
  v74 = v126;
  sub_E64E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v96 = sub_E5484();
  a2[2] = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  v98 = sub_E5484();
  a2[3] = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E940, &qword_EC558);
  sub_54224(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v97 = sub_E5444();
  a2[4] = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_54224(&qword_12E760, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);
  a2[5] = sub_E5444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  v100 = a1;
  v99 = sub_E5464();
  a2[6] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E958, &qword_EC570);
  a2[7] = sub_E54A4();
  sub_E5914();
  a2[12] = sub_E5474();
  sub_E5914();
  a2[13] = sub_E5474();
  sub_E5914();
  a2[14] = sub_E5474();
  sub_E5914();
  v90 = sub_E5454();
  a2[15] = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E960, &qword_EC578);
  sub_E5914();
  v93 = sub_E54B4();
  a2[16] = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v91 = sub_E5494();
  a2[17] = v91;
  sub_E5914();
  v89 = sub_E5494();
  a2[18] = v89;
  sub_E5914();
  v88 = sub_E5494();
  a2[19] = v88;
  sub_E5914();
  v87 = sub_E5494();
  a2[20] = v87;
  v75 = type metadata accessor for EpisodeEntity(0);
  v92 = v75[24];
  (v94)(a2 + v92, 1, 1, v72);
  v76 = v74;
  v77 = a2 + v75[25];
  v94 = xmmword_EBE10;
  *v77 = xmmword_EBE10;
  v95 = v75[26];
  (v122)(a2 + v95, 1, 1, v123);
  v78 = v114;
  *a2 = v115;
  a2[1] = v78;
  a2[8] = 0;
  a2[9] = 0;
  v79 = v116;
  a2[10] = 0;
  a2[11] = v79;
  sub_26324(v76, a2 + v75[23], &qword_12E930, &unk_EC530);
  v130 = v113;
  v131 = v112;
  sub_E53F4();
  v130 = v111;
  v131 = v110;
  sub_E53F4();
  v130 = v109;
  v131 = v108;
  sub_E53F4();
  v130 = v107;
  v131 = v106;
  sub_E53F4();
  v130 = 0;
  v131 = 0;
  sub_E53F4();
  v80 = v127;
  v81 = v117;
  sub_26324(v127, v117, &qword_12DCD8, &unk_EC540);
  sub_26324(v81, v118, &qword_12DCD8, &unk_EC540);
  sub_E53F4();
  sub_110AC(v81, &qword_12DCD8, &unk_EC540);
  v82 = v129;
  v83 = v119;
  sub_26324(v129, v119, &qword_131EE0, &unk_F5BE0);
  v84 = v120;
  sub_26324(v83, v120, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v83, &qword_131EE0, &unk_F5BE0);
  v85 = v124;
  sub_26324(v124, v83, &qword_131EE0, &unk_F5BE0);
  sub_26324(v83, v84, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v83, &qword_131EE0, &unk_F5BE0);
  v130 = v103;
  LOBYTE(v131) = 0;
  sub_E53F4();
  LOBYTE(v130) = v104 & 1;
  sub_E53F4();
  LOBYTE(v130) = v105 & 1;
  sub_E53F4();
  LOBYTE(v130) = 0;
  sub_E53F4();
  LOBYTE(v130) = v101;
  sub_E53F4();

  sub_110AC(v126, &qword_12E930, &unk_EC530);
  sub_110AC(v85, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v82, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v80, &qword_12DCD8, &unk_EC540);
  sub_110AC(v102, &unk_12DFA0, &qword_E9B50);
  sub_4DCF4(v125, a2 + v92, &unk_12DB10, &qword_EAC60);
  sub_4DC8C(*v77, *(v77 + 1));
  *v77 = v94;
  return sub_4DCF4(v128, a2 + v95, &unk_12DFA0, &qword_E9B50);
}

uint64_t EpisodeEntity.preferredIdentifier()()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 88);
  }

  v3 = v1;
  return v2;
}

uint64_t sub_56734(uint64_t a1)
{
  v2 = sub_54224(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_567B4(uint64_t a1)
{
  v2 = sub_54224(&qword_12EA10, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t EpisodeEntity.mediaRepresentation.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[9] = swift_task_alloc();
  v3 = sub_E54D4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_56928, 0, 0);
}

uint64_t sub_56928()
{
  v1 = *(v0[8] + 88);
  if (sub_E6804())
  {
    v2 = v0[8];
  }

  else
  {
    v0[6] = v1;
    sub_10D78();
    sub_E7854();
    v2 = v0[8];
  }

  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  sub_E53E4();
  (*(v3 + 104))(v4, enum case for IntentMediaItem.ItemType.podcastEpisode(_:), v6);
  v7 = type metadata accessor for EpisodeEntity(0);
  sub_4EB8C(*(v2 + *(v7 + 100)), *(v2 + *(v7 + 100) + 8));
  sub_E53E4();
  v8 = sub_E59C4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_E54E4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_56AF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return EpisodeEntity.mediaRepresentation.getter(a1);
}

uint64_t EpisodeEntity.debugDescription.getter()
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  __chkstk_darwin(v12);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  __chkstk_darwin(v6);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_E7984(153);
  v16._object = 0x80000000000F6950;
  v16._countAndFlagsBits = 0xD000000000000015;
  sub_E7134(v16);
  sub_E7134(*v0);
  v17._countAndFlagsBits = 0x20202020200ALL;
  v17._object = 0xE600000000000000;
  sub_E7134(v17);
  v13._countAndFlagsBits = *(v0 + 64);
  v7 = v13._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E978, &qword_EC598);
  v18._countAndFlagsBits = sub_E7084();
  sub_E7134(v18);

  v19._countAndFlagsBits = 0x20202020200ALL;
  v19._object = 0xE600000000000000;
  sub_E7134(v19);
  v8 = *(v0 + 80);
  v13._countAndFlagsBits = *(v0 + 72);
  v13._object = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
  v20._countAndFlagsBits = sub_E7084();
  sub_E7134(v20);

  v21._countAndFlagsBits = 0x20202020200ALL;
  v21._object = 0xE600000000000000;
  sub_E7134(v21);
  v13._countAndFlagsBits = *(v0 + 88);
  sub_57150();
  v22._countAndFlagsBits = sub_E7BB4();
  sub_E7134(v22);

  v23._countAndFlagsBits = 0x20202020200ALL;
  v23._object = 0xE600000000000000;
  sub_E7134(v23);
  sub_E53E4();
  sub_E7134(v13);

  v24._countAndFlagsBits = 0x20202020200ALL;
  v24._object = 0xE600000000000000;
  sub_E7134(v24);
  sub_E53E4();
  v25._countAndFlagsBits = sub_E7084();
  sub_E7134(v25);

  v26._countAndFlagsBits = 0x20202020200ALL;
  v26._object = 0xE600000000000000;
  sub_E7134(v26);
  sub_E53E4();
  v27._countAndFlagsBits = sub_E7084();
  sub_E7134(v27);

  v28._countAndFlagsBits = 0x20202020200ALL;
  v28._object = 0xE600000000000000;
  sub_E7134(v28);
  sub_E53E4();
  v29._countAndFlagsBits = sub_E7084();
  sub_E7134(v29);

  v30._countAndFlagsBits = 0x20202020200ALL;
  v30._object = 0xE600000000000000;
  sub_E7134(v30);
  sub_E53E4();
  v31._countAndFlagsBits = sub_E7084();
  sub_E7134(v31);

  v32._countAndFlagsBits = 0x20202020200ALL;
  v32._object = 0xE600000000000000;
  sub_E7134(v32);
  sub_E53E4();
  v33._countAndFlagsBits = sub_E7084();
  sub_E7134(v33);

  v34._countAndFlagsBits = 0x20202020200ALL;
  v34._object = 0xE600000000000000;
  sub_E7134(v34);
  sub_E53E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
  v35._countAndFlagsBits = sub_E7084();
  sub_E7134(v35);

  v36._countAndFlagsBits = 0x20202020200ALL;
  v36._object = 0xE600000000000000;
  sub_E7134(v36);
  sub_E53E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E988, &qword_EC5B0);
  v37._countAndFlagsBits = sub_E7084();
  sub_E7134(v37);

  v38._countAndFlagsBits = 0x20202020200ALL;
  v38._object = 0xE600000000000000;
  sub_E7134(v38);
  sub_E53E4();
  v39._countAndFlagsBits = sub_E7084();
  sub_E7134(v39);

  v40._countAndFlagsBits = 0x20202020200ALL;
  v40._object = 0xE600000000000000;
  sub_E7134(v40);
  sub_E53E4();
  v41._countAndFlagsBits = sub_E7084();
  sub_E7134(v41);

  v42._countAndFlagsBits = 0x20202020200ALL;
  v42._object = 0xE600000000000000;
  sub_E7134(v42);
  sub_E53E4();
  v43._countAndFlagsBits = sub_E7084();
  sub_E7134(v43);

  v44._countAndFlagsBits = 0x20202020200ALL;
  v44._object = 0xE600000000000000;
  sub_E7134(v44);
  v9 = type metadata accessor for EpisodeEntity(0);
  sub_26324(v0 + *(v9 + 104), v5, &unk_12DFA0, &qword_E9B50);
  v45._countAndFlagsBits = sub_E7084();
  sub_E7134(v45);

  v46._countAndFlagsBits = 0x20202020200ALL;
  v46._object = 0xE600000000000000;
  sub_E7134(v46);
  sub_26324(v0 + *(v9 + 96), v2, &unk_12DB10, &qword_EAC60);
  v47._countAndFlagsBits = sub_E7084();
  sub_E7134(v47);

  v48._countAndFlagsBits = 32010;
  v48._object = 0xE200000000000000;
  sub_E7134(v48);
  return v14;
}

unint64_t sub_57150()
{
  result = qword_12E980;
  if (!qword_12E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E980);
  }

  return result;
}

uint64_t static EpisodeEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for EpisodeEntity(0);
  v1 = sub_54224(&qword_12E990, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  v2 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_57258, 0, v0, &type metadata for String, v1, v2);
}

uint64_t sub_57258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for EpisodeEntity(0);
  sub_26324(a1 + *(v7 + 104), v6, &unk_12DFA0, &qword_E9B50);
  v8 = sub_E59C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_110AC(v6, &unk_12DFA0, &qword_E9B50);
    result = sub_E53E4();
    v11 = v14[0];
    v12 = v14[1];
  }

  else
  {
    v11 = sub_E5974();
    v12 = v13;
    result = (*(v9 + 8))(v6, v8);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t sub_573CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_57258, 0, a1, &type metadata for String, a2, v4);
}

uint64_t EpisodeEntity.prepare(asPartOf:)()
{
  *(v1 + 56) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_57504;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_57504()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_578AC, 0, 0);
  }

  else
  {
    v3 = v2[7];
    v4 = type metadata accessor for EpisodeEntity(0);
    v2[10] = v4;
    v5 = *(v4 + 96);
    v6 = swift_task_alloc();
    v2[11] = v6;
    v7 = sub_54224(&qword_12E998, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
    *v6 = v2;
    v6[1] = sub_576EC;

    return Preparable.artworkData(for:imageProvider:)(v3 + v5, v2 + 2, v4, v7);
  }
}

uint64_t sub_576EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_578C4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_57820;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_57820()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 100);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_578C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_57928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v6 = swift_task_alloc();
  v4[10] = v6;
  *v6 = v4;
  v6[1] = sub_579F0;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v5, v5);
}

uint64_t sub_579F0()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_57CB8, 0, 0);
  }

  else
  {
    v3 = v2[7];
    v4 = *(v2[8] + 96);
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_57B84;
    v6 = v2[8];
    v7 = v2[9];

    return Preparable.artworkData(for:imageProvider:)(v3 + v4, v2 + 2, v6, v7);
  }
}

uint64_t sub_57B84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_57D58;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_57CD0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_57CD0()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 100);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_57D58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t EpisodeEntity.episodeStateIdentifier.getter()
{
  v1 = v0[11];
  if ((sub_E6804() & 1) != 0 && v0[10])
  {
    v1 = v0[9];
  }

  return v1;
}

uint64_t sub_57E78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_5850C@<D0>(_OWORD *a2@<X8>)
{
  sub_E53E4();
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_58584@<D0>(_OWORD *a2@<X8>)
{
  sub_E53E4();
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_585FC@<D0>(_OWORD *a2@<X8>)
{
  sub_E53E4();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_5869C@<X0>(uint64_t a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_58720@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_58794@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_58808@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_5887C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_58904(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[23];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[24];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[26];

  return v15(v16, a2, v14);
}

uint64_t sub_58AA8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E930, &unk_EC530);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[23];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[24];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[26];

  return v15(v16, a2, a2, v14);
}

void sub_58C38(uint64_t a1)
{
  sub_58F2C(319);
  if (v1 <= 0x3F)
  {
    sub_58F88(319);
    if (v2 <= 0x3F)
    {
      sub_5902C(319, &qword_12EAA8, &qword_12DCD8, &unk_EC540, sub_5909C);
      if (v3 <= 0x3F)
      {
        sub_5902C(319, &qword_12EAB8, &qword_12EAC0, &qword_ECC30, sub_59150);
        if (v4 <= 0x3F)
        {
          sub_5902C(319, &qword_12EAD0, &qword_131EE0, &unk_F5BE0, sub_59204);
          if (v5 <= 0x3F)
          {
            sub_592B8(319);
            if (v6 <= 0x3F)
            {
              sub_595C8(319, &qword_12E688, sub_502C8);
              if (v7 <= 0x3F)
              {
                sub_5041C(319, &qword_12E680, &type metadata for String);
                if (v8 <= 0x3F)
                {
                  sub_593B0(319);
                  if (v9 <= 0x3F)
                  {
                    sub_594A8(319);
                    if (v10 <= 0x3F)
                    {
                      sub_595C8(319, &unk_12EB30, &type metadata accessor for TranscriptRequestInformation);
                      if (v11 <= 0x3F)
                      {
                        sub_595C8(319, &qword_12E6B0, &type metadata accessor for ArtworkModel);
                        if (v12 <= 0x3F)
                        {
                          sub_5041C(319, &unk_12E6B8, &type metadata for Data);
                          if (v13 <= 0x3F)
                          {
                            sub_595C8(319, &qword_12D8A0, &type metadata accessor for URL);
                            if (v14 <= 0x3F)
                            {
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

void sub_58F2C(uint64_t a1)
{
  if (!qword_12E690)
  {
    sub_50314();
    v1 = sub_E54C4();
    if (!v2)
    {
      atomic_store(v1, &qword_12E690);
    }
  }
}

void sub_58F88(uint64_t a1)
{
  if (!qword_12EA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E0A0, &qword_EC5A0);
    sub_5954C(&qword_12EAA0, &qword_12E0A0, &qword_EC5A0, sub_50314);
    v1 = sub_E54C4();
    if (!v2)
    {
      atomic_store(v1, &qword_12EA98);
    }
  }
}

void sub_5902C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_E54C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_5909C()
{
  result = qword_12EAB0;
  if (!qword_12EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12DCD8, &unk_EC540);
    sub_54224(&qword_12DE68, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EAB0);
  }

  return result;
}

unint64_t sub_59150()
{
  result = qword_12EAC8;
  if (!qword_12EAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12EAC0, &qword_ECC30);
    sub_54224(&qword_12E7A0, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EAC8);
  }

  return result;
}

unint64_t sub_59204()
{
  result = qword_12EAD8;
  if (!qword_12EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131EE0, &unk_F5BE0);
    sub_54224(&qword_12EAE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EAD8);
  }

  return result;
}

void sub_592B8(uint64_t a1)
{
  if (!qword_12EAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12EAF0, &qword_ECC38);
    sub_5954C(&qword_12EAF8, &qword_12EAF0, &qword_ECC38, sub_5935C);
    v1 = sub_E54C4();
    if (!v2)
    {
      atomic_store(v1, &qword_12EAE8);
    }
  }
}

unint64_t sub_5935C()
{
  result = qword_12EB00;
  if (!qword_12EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EB00);
  }

  return result;
}

void sub_593B0(uint64_t a1)
{
  if (!qword_12EB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_132180, &qword_EC5A8);
    sub_5954C(&qword_12EB10, &qword_132180, &qword_EC5A8, sub_59454);
    v1 = sub_E54C4();
    if (!v2)
    {
      atomic_store(v1, &qword_12EB08);
    }
  }
}

unint64_t sub_59454()
{
  result = qword_12EB18;
  if (!qword_12EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EB18);
  }

  return result;
}

void sub_594A8(uint64_t a1)
{
  if (!qword_12EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E988, &qword_EC5B0);
    sub_5954C(&qword_12EB28, &qword_12E988, &qword_EC5B0, sub_503C8);
    v1 = sub_E54C4();
    if (!v2)
    {
      atomic_store(v1, &qword_12EB20);
    }
  }
}

uint64_t sub_5954C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_595C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ShowEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_E5944();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  __chkstk_darwin(v5 - 8);
  v121 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v8 = __chkstk_darwin(v7 - 8);
  v115 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v114 = &v86 - v11;
  __chkstk_darwin(v10);
  v119 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v14 = __chkstk_darwin(v13 - 8);
  v116 = (&v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v120 = &v86 - v17;
  v18 = __chkstk_darwin(v16);
  v118 = &v86 - v19;
  __chkstk_darwin(v18);
  v117 = &v86 - v20;
  v21 = sub_E59C4();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v96 = (&v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v86 - v25;
  v27 = a1;
  v28 = [v27 objectID];
  v29 = [v28 URIRepresentation];

  sub_E5994();
  v30 = sub_E5974();
  v32 = v31;
  v33 = *(v22 + 1);
  v122 = v21;
  v33(v26, v21);
  v34 = [v27 objectID];

  v35 = [v27 uuid];
  if (v35)
  {
    v36 = v35;
    v37 = sub_E7064();
    v113 = v38;
  }

  else
  {
    v37 = 0;
    v113 = 0;
  }

  result = [v27 storeCollectionId];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v110 = v34;
    v112 = v30;
    v108 = sub_E6814();
    v40 = [v27 feedURL];
    if (v40)
    {
      v41 = v40;
      sub_E7064();

      sub_E59B4();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      (*(v22 + 7))(v117, 1, 1, v122);
    }

    v42 = v120;
    v107 = [v27 isExplicit];
    v43 = [v27 title];
    if (v43)
    {
      v44 = v43;
      v45 = sub_E7064();
      v105 = v46;
      v106 = v45;
    }

    else
    {
      v105 = 0xE000000000000000;
      v106 = 0;
    }

    v47 = [v27 description];
    v104 = sub_E7064();
    v103 = v48;

    v49 = [v27 provider];
    v109 = v37;
    if (v49)
    {
      v50 = v49;
      v102 = sub_E7064();
      v101 = v51;
    }

    else
    {
      v102 = 0;
      v101 = 0xE000000000000000;
    }

    [v27 lastDatePlayed];
    v52 = v119;
    sub_E5A04();
    v53 = sub_E5A54();
    (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    v100 = [v27 subscribed];
    v99 = [v27 notifications];
    [v27 hidesPlayedEpisodes];
    v98 = MTPodcastHidesPlayedEpisodesResolved();
    v97 = [v27 deletePlayedEpisodesResolvedValue];
    sub_E77C4();
    v54 = v22;
    v55 = *(v22 + 7);
    v55(v118, 1, 1, v122);
    v56 = [v27 bestAvailableStoreCleanURL];
    v111 = v32;
    if (v56)
    {
      v57 = v96;
      v58 = v56;
      sub_E5994();

      v59 = *(v54 + 4);
      v60 = v116;
      v61 = v57;
      v62 = v122;
      v59(v116, v61, v122);
      v55(v60, 0, 1, v62);
      v59(v42, v60, v62);
      v55(v42, 0, 1, v62);
    }

    else
    {
      v96 = v54;
      v63 = v116;
      v55(v116, 1, 1, v122);
      v64 = [v27 feedURL];
      if (v64)
      {
        v65 = v64;
        sub_E7064();

        v63 = v116;

        sub_E59B4();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v55(v42, 1, 1, v122);
      }

      if (v96[6](v63, 1, v122) != 1)
      {
        sub_110AC(v63, &unk_12DFA0, &qword_E9B50);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
    v116 = sub_E5484();
    *(a2 + 2) = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
    *(a2 + 3) = sub_E5484();
    v66 = type metadata accessor for ShowEntity(0);
    v96 = v66[10];
    v55(v96 + a2, 1, 1, v122);
    v67 = v66[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
    sub_E5914();
    v95 = sub_E5494();
    *&a2[v67] = v95;
    v68 = v66[12];
    sub_E5914();
    v94 = sub_E5474();
    *&a2[v68] = v94;
    v69 = v66[13];
    sub_E5914();
    v93 = sub_E5474();
    *&a2[v69] = v93;
    v70 = v66[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
    sub_E5914();
    v92 = sub_E5454();
    *&a2[v70] = v92;
    v71 = v66[15];
    sub_E5914();
    v91 = sub_E5494();
    *&a2[v71] = v91;
    v72 = v66[16];
    sub_E5914();
    v90 = sub_E5494();
    *&a2[v72] = v90;
    v73 = v66[17];
    sub_E5914();
    v86 = sub_E5494();
    *&a2[v73] = v86;
    v74 = v66[18];
    sub_E5914();
    *&a2[v74] = sub_E5494();
    v75 = v66[19];
    v89 = v75;
    v76 = sub_E5FD4();
    (*(*(v76 - 8) + 56))(&a2[v75], 1, 1, v76);
    v88 = v66[20];
    v77 = v122;
    v55(&a2[v88], 1, 1, v122);
    v87 = v66[21];
    v55(&a2[v87], 1, 1, v77);
    v78 = v111;
    *a2 = v112;
    *(a2 + 1) = v78;
    v80 = v109;
    v79 = v110;
    *(a2 + 4) = v110;
    *(a2 + 5) = v80;
    v81 = v108;
    *(a2 + 6) = v113;
    *(a2 + 7) = v81;
    v82 = v79;
    v83 = v117;
    sub_4EB1C(v117, v96 + a2);
    LOBYTE(v123) = v107;
    sub_E53F4();
    v123 = v106;
    v124 = v105;
    sub_E53F4();
    v123 = v104;
    v124 = v103;
    sub_E53F4();
    v123 = v102;
    v124 = v101;
    sub_E53F4();
    v84 = v119;
    v85 = v114;
    sub_26324(v119, v114, &qword_131EE0, &unk_F5BE0);
    sub_26324(v85, v115, &qword_131EE0, &unk_F5BE0);
    sub_E53F4();
    sub_110AC(v85, &qword_131EE0, &unk_F5BE0);
    LOBYTE(v123) = v100;
    sub_E53F4();
    LOBYTE(v123) = v99;
    sub_E53F4();
    LOBYTE(v123) = v98;
    sub_E53F4();
    LOBYTE(v123) = v97;
    sub_E53F4();

    sub_110AC(v84, &qword_131EE0, &unk_F5BE0);
    sub_110AC(v83, &unk_12DFA0, &qword_E9B50);
    sub_4DCF4(v121, &a2[v89], &unk_12DB10, &qword_EAC60);
    sub_4DCF4(v118, &a2[v88], &unk_12DFA0, &qword_E9B50);
    return sub_4DCF4(v120, &a2[v87], &unk_12DFA0, &qword_E9B50);
  }

  return result;
}

uint64_t ShowEntity.provider.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

uint64_t ShowEntity.CustomRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_E5DF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_E5E54();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t ShowEntity.CustomRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_E5DF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = sub_E5E54();
  (*(v3 + 8))(a1, v2);
  return v5;
}

uint64_t sub_5A628(uint64_t a1)
{
  v3 = sub_5EC04(&qword_12ECC8, type metadata accessor for ShowEntity.CustomRepresentation, &protocol conformance descriptor for ShowEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, v1, v3);
}

uint64_t sub_5A698()
{
  v1 = sub_5EC04(&qword_12ECB8, type metadata accessor for ShowEntity.CustomRepresentation, &protocol conformance descriptor for ShowEntity.CustomRepresentation);

  return static AppEntityTypeDescribing.lnValueType.getter(v0, v1);
}

uint64_t sub_5A6F8(uint64_t a1)
{
  v3 = sub_5EC04(&qword_12ECC8, type metadata accessor for ShowEntity.CustomRepresentation, &protocol conformance descriptor for ShowEntity.CustomRepresentation);

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, v1, v3);
}

uint64_t sub_5A768()
{
  result = sub_E7064();
  qword_12EC28 = result;
  qword_12EC30 = v1;
  return result;
}

uint64_t static ShowEntity.databaseEntityName.getter()
{
  if (qword_12CAF0 != -1)
  {
    swift_once();
  }

  v0 = qword_12EC28;

  return v0;
}

uint64_t sub_5A800()
{
  v0 = sub_E6014();
  __swift_allocate_value_buffer(v0, qword_12EC38);
  v1 = __swift_project_value_buffer(v0, qword_12EC38);
  v2 = enum case for MediaRequest.ContentType.podcast(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_5A8C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  qword_12EC50 = result;
  return result;
}

uint64_t static ShowEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CB00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12EC50;
}

uint64_t sub_5A9B8()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12EC58);
  __swift_project_value_buffer(v0, qword_12EC58);
  return sub_E57B4();
}

uint64_t ShowEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v2 - 8);
  v41 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  v5 = __chkstk_darwin(v4 - 8);
  v36 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = v35 - v7;
  v8 = sub_E5944();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = __chkstk_darwin(v8);
  v35[1] = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35[2] = v35 - v11;
  v12 = sub_E7014();
  v13 = __chkstk_darwin(v12 - 8);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v16 - 8);
  v18 = v35 - v17;
  v19 = sub_E59C4();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v35[0] = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v35 - v23;
  v38 = type metadata accessor for ShowEntity(0);
  sub_26324(v1 + *(v38 + 80), v18, &unk_12DFA0, &qword_E9B50);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_110AC(v18, &unk_12DFA0, &qword_E9B50);
    sub_E7004();
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    sub_E6FF4(v44);
    sub_E53E4();
    sub_E6FD4(v43);

    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    sub_E6FF4(v45);
    sub_E5924();
    sub_E7004();
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    sub_E6FF4(v46);
    sub_E53E4();
    if (v43._object)
    {
      v25._countAndFlagsBits = v43._countAndFlagsBits;
    }

    else
    {
      v25._countAndFlagsBits = 0;
    }

    if (v43._object)
    {
      object = v43._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v25._object = object;
    sub_E6FD4(v25);

    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    sub_E6FF4(v47);
    v27 = v36;
    sub_E5924();
    (*(v39 + 56))(v27, 0, 1, v40);
    v28 = sub_E5684();
    (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
    return sub_E56A4();
  }

  else
  {
    (*(v20 + 32))(v24, v18, v19);
    sub_E7004();
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_E6FF4(v48);
    sub_E53E4();
    sub_E6FD4(v43);

    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    sub_E6FF4(v49);
    sub_E5924();
    sub_E7004();
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    sub_E6FF4(v50);
    sub_E53E4();
    if (v43._object)
    {
      v30._countAndFlagsBits = v43._countAndFlagsBits;
    }

    else
    {
      v30._countAndFlagsBits = 0;
    }

    if (v43._object)
    {
      v31 = v43._object;
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v30._object = v31;
    sub_E6FD4(v30);

    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_E6FF4(v51);
    v32 = v37;
    sub_E5924();
    (*(v39 + 56))(v32, 0, 1, v40);
    (*(v20 + 16))(v35[0], v24, v19);
    v33 = v41;
    sub_E5664();
    v34 = sub_E5684();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    sub_E56A4();
    return (*(v20 + 8))(v24, v19);
  }
}

uint64_t sub_5B114()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12EC70);
  __swift_project_value_buffer(v0, qword_12EC70);
  return sub_E59B4();
}

uint64_t sub_5B1A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12EC88);
  __swift_project_value_buffer(v0, qword_12EC88);
  return sub_E59B4();
}

uint64_t sub_5B23C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_26324(v7, a4, &unk_12DFA0, &qword_E9B50);
}

void (*ShowEntity.title.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.uuid.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ShowEntity.explicit.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

void (*ShowEntity.explicit.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.description.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

uint64_t sub_5B578(uint64_t *a1)
{
  type metadata accessor for ShowEntity(0);

  return sub_E53F4();
}

void (*ShowEntity.description.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t sub_5B6D4(uint64_t *a1)
{
  type metadata accessor for ShowEntity(0);

  return sub_E53F4();
}

void (*ShowEntity.provider.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_5B868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_26324(a1, &v9 - v6, &qword_131EE0, &unk_F5BE0);
  type metadata accessor for ShowEntity(0);
  sub_26324(v7, v5, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(v7, &qword_131EE0, &unk_F5BE0);
}

uint64_t ShowEntity.lastDatePlayed.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ShowEntity(0);
  sub_26324(a1, v4, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(a1, &qword_131EE0, &unk_F5BE0);
}

void (*ShowEntity.lastDatePlayed.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.followed.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

void (*ShowEntity.followed.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.notificationsEnabled.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

void (*ShowEntity.notificationsEnabled.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.hidePlayedEpisodes.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

void (*ShowEntity.hidePlayedEpisodes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.removePlayedDownloads.getter()
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  return v1;
}

void (*ShowEntity.removePlayedDownloads.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity(0);
  *(v3 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t ShowEntity.init(id:objectID:uuid:adamID:feedURL:explicit:title:description:provider:lastDatePlayed:followed:notificationsEnabled:hidePlayedEpisodes:removePlayedDownloads:artworkModel:artworkURL:shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v75 = a8;
  v72 = a7;
  v69 = a6;
  v67 = a5;
  v65 = a4;
  v64 = a3;
  v63 = a2;
  v62 = a1;
  v84 = a22;
  v85 = a23;
  v83 = a21;
  v81 = a19;
  v82 = a20;
  v79 = a17;
  v80 = a18;
  v77 = a15;
  v78 = a16;
  v76 = a14;
  v74 = a13;
  v70 = a11;
  v71 = a12;
  v68 = a10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v25 = __chkstk_darwin(v24 - 8);
  v73 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v66 = &v51 - v27;
  v28 = sub_E5944();
  __chkstk_darwin(v28 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v61 = sub_E5484();
  *(a9 + 2) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  *(a9 + 3) = sub_E5484();
  v29 = type metadata accessor for ShowEntity(0);
  v30 = v29[10];
  v60 = v30;
  v31 = sub_E59C4();
  v32 = *(*(v31 - 8) + 56);
  v32(&a9[v30], 1, 1, v31);
  v33 = v29[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v59 = sub_E5494();
  *&a9[v33] = v59;
  v34 = v29[12];
  sub_E5914();
  v58 = sub_E5474();
  *&a9[v34] = v58;
  v35 = v29[13];
  sub_E5914();
  v57 = sub_E5474();
  *&a9[v35] = v57;
  v36 = v29[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v56 = sub_E5454();
  *&a9[v36] = v56;
  v37 = v29[15];
  sub_E5914();
  v55 = sub_E5494();
  *&a9[v37] = v55;
  v38 = v29[16];
  sub_E5914();
  v54 = sub_E5494();
  *&a9[v38] = v54;
  v39 = v29[17];
  sub_E5914();
  *&a9[v39] = sub_E5494();
  v40 = v29[18];
  sub_E5914();
  *&a9[v40] = sub_E5494();
  v41 = v29[19];
  v53 = v41;
  v42 = sub_E5FD4();
  (*(*(v42 - 8) + 56))(&a9[v41], 1, 1, v42);
  v52 = v29[20];
  v32(&a9[v52], 1, 1, v31);
  v51 = v29[21];
  v32(&a9[v51], 1, 1, v31);
  v43 = v63;
  *a9 = v62;
  *(a9 + 1) = v43;
  v44 = v64;
  v45 = v65;
  *(a9 + 4) = v64;
  *(a9 + 5) = v45;
  v46 = v69;
  *(a9 + 6) = v67;
  *(a9 + 7) = v46;
  v69 = v44;
  v47 = v72;
  sub_4EB1C(v72, &a9[v60]);
  LOBYTE(v86) = v75;
  sub_E53F4();
  v86 = v68;
  v87 = v70;
  sub_E53F4();
  v86 = v71;
  v87 = v74;
  sub_E53F4();
  v86 = v76;
  v87 = v77;
  sub_E53F4();
  v48 = v78;
  v49 = v66;
  sub_26324(v78, v66, &qword_131EE0, &unk_F5BE0);
  sub_26324(v49, v73, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v49, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v86) = v79;
  sub_E53F4();
  LOBYTE(v86) = v80;
  sub_E53F4();
  LOBYTE(v86) = v81;
  sub_E53F4();
  LOBYTE(v86) = v82;
  sub_E53F4();

  sub_110AC(v48, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v47, &unk_12DFA0, &qword_E9B50);
  sub_4DCF4(v83, &a9[v53], &unk_12DB10, &qword_EAC60);
  sub_4DCF4(v84, &a9[v52], &unk_12DFA0, &qword_E9B50);
  return sub_4DCF4(v85, &a9[v51], &unk_12DFA0, &qword_E9B50);
}

void *ShowEntity.init(mediaObject:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_E5944();
  __chkstk_darwin(v4 - 8);
  v105 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v7 = __chkstk_darwin(v6 - 8);
  v107 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v106 = &v81 - v10;
  __chkstk_darwin(v9);
  v108 = &v81 - v11;
  v12 = sub_E5F74();
  __chkstk_darwin(v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v14 = __chkstk_darwin(v13 - 8);
  v111 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v19 = __chkstk_darwin(v18 - 8);
  v112 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v110 = &v81 - v22;
  v23 = __chkstk_darwin(v21);
  v109 = &v81 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v81 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v81 - v29;
  __chkstk_darwin(v28);
  v113 = &v81 - v31;
  v32 = [a1 podcastStoreId];
  if (v32)
  {
    v33 = v32;
    sub_E7064();

    v36 = sub_E67F4();
    swift_bridgeObjectRelease_n();
    result = objc_opt_self();
    if (v36 < 0)
    {
      __break(1u);
      return result;
    }

    v38 = [result storeCleanURLForAdamID:v36];
    if (v38)
    {
      v39 = v38;
      sub_E5994();

      v40 = sub_E59C4();
      (*(*(v40 - 8) + 56))(v27, 0, 1, v40);
    }

    else
    {
      v41 = sub_E59C4();
      (*(*(v41 - 8) + 56))(v27, 1, 1, v41);
    }
  }

  else
  {
    v34 = [a1 resolvedFeedURL];
    if (v34)
    {
      v35 = v34;
      sub_E7064();

      sub_E59B4();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v42 = sub_E59C4();
      (*(*(v42 - 8) + 56))(v30, 1, 1, v42);
    }

    v27 = v30;
  }

  sub_CF40(v27, v113);
  v43 = [a1 artworkTemplateURL];
  if (v43)
  {
    v44 = v43;
    sub_E7064();

    v116 = xmmword_EBE00;
    v117 = 0u;
    memset(v118, 0, 25);

    sub_E5F64();
    sub_E6104();
    sub_E5FC4();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v46 = sub_E5FD4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v103 = v46;
  v102 = v48;
  v101 = v47 + 56;
  (v48)(v17, v45, 1);
  v49 = a1;
  v100 = sub_E63B4();
  v99 = v50;
  sub_E63B4();

  v98 = sub_E67F4();

  v51 = [v49 resolvedFeedURL];
  if (v51)
  {
    v52 = v51;
    sub_E7064();

    sub_E59B4();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v53 = sub_E59C4();
    (*(*(v53 - 8) + 56))(v109, 1, 1, v53);
  }

  v97 = [v49 isExplicit];
  v54 = [v49 title];
  if (v54)
  {
    v55 = v54;
    v96 = sub_E7064();
    v95 = v56;
  }

  else
  {
    v96 = 0;
    v95 = 0xE000000000000000;
  }

  v57 = [v49 description];
  v93 = sub_E7064();
  v92 = v58;

  v59 = [v49 provider];
  v104 = v49;
  if (v59)
  {
    v60 = v59;
    v91 = sub_E7064();
    v90 = v61;
  }

  else
  {
    v91 = 0;
    v90 = 0xE000000000000000;
  }

  v62 = sub_E5A54();
  (*(*(v62 - 8) + 56))(v108, 1, 1, v62);
  sub_26324(v17, v111, &unk_12DB10, &qword_EAC60);
  v63 = sub_E59C4();
  v64 = *(v63 - 8);
  v94 = v17;
  v65 = *(v64 + 56);
  v65(v110, 1, 1, v63);
  v85 = v65;
  sub_26324(v113, v112, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v89 = sub_E5484();
  a2[2] = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E938, &qword_EC550);
  a2[3] = sub_E5484();
  v66 = type metadata accessor for ShowEntity(0);
  v88 = v66[10];
  v65(a2 + v88, 1, 1, v63);
  v67 = v66[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  v87 = sub_E5494();
  *(a2 + v67) = v87;
  v68 = v66[12];
  sub_E5914();
  v86 = sub_E5474();
  *(a2 + v68) = v86;
  v69 = v66[13];
  sub_E5914();
  v84 = sub_E5474();
  *(a2 + v69) = v84;
  v70 = v66[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v83 = sub_E5454();
  *(a2 + v70) = v83;
  v71 = v66[15];
  sub_E5914();
  v82 = sub_E5494();
  *(a2 + v71) = v82;
  v72 = v66[16];
  sub_E5914();
  *(a2 + v72) = sub_E5494();
  v73 = v66[17];
  sub_E5914();
  *(a2 + v73) = sub_E5494();
  v74 = v66[18];
  sub_E5914();
  *(a2 + v74) = sub_E5494();
  v105 = v66[19];
  (v102)(&v105[a2], 1, 1, v103);
  v103 = v66[20];
  v75 = v85;
  v85(a2 + v103, 1, 1, v63);
  v102 = v66[21];
  v75(&v102[a2], 1, 1, v63);
  v76 = v99;
  *a2 = v100;
  a2[1] = v76;
  a2[4] = 0;
  a2[5] = 0;
  v77 = v98;
  a2[6] = 0;
  a2[7] = v77;
  v78 = v109;
  sub_4EB1C(v109, a2 + v88);
  LOBYTE(v114) = v97;
  sub_E53F4();
  v114 = v96;
  v115 = v95;
  sub_E53F4();
  v114 = v93;
  v115 = v92;
  sub_E53F4();
  v114 = v91;
  v115 = v90;
  sub_E53F4();
  v79 = v108;
  v80 = v106;
  sub_26324(v108, v106, &qword_131EE0, &unk_F5BE0);
  sub_26324(v80, v107, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v80, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v114) = 0;
  sub_E53F4();
  LOBYTE(v114) = 0;
  sub_E53F4();
  LOBYTE(v114) = 0;
  sub_E53F4();
  LOBYTE(v114) = 0;
  sub_E53F4();

  sub_110AC(v79, &qword_131EE0, &unk_F5BE0);
  sub_110AC(v78, &unk_12DFA0, &qword_E9B50);
  sub_110AC(v94, &unk_12DB10, &qword_EAC60);
  sub_110AC(v113, &unk_12DFA0, &qword_E9B50);
  sub_4DCF4(v111, &v105[a2], &unk_12DB10, &qword_EAC60);
  sub_4DCF4(v110, a2 + v103, &unk_12DFA0, &qword_E9B50);
  return sub_4DCF4(v112, &v102[a2], &unk_12DFA0, &qword_E9B50);
}

uint64_t ShowEntity.preferredIdentifier()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = *(v0 + 56);
  }

  v3 = v1;
  return v2;
}

uint64_t sub_5D6F0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_26324(v7, a4, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_5D7A4(uint64_t a1)
{
  v2 = sub_5EC04(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_5D824(uint64_t a1)
{
  v2 = sub_5EC04(&qword_12ED20, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t ShowEntity.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v1);
  v3 = &v8 - v2;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_E7984(110);
  v11._object = 0x80000000000F6A70;
  v11._countAndFlagsBits = 0xD000000000000012;
  sub_E7134(v11);
  sub_E7134(*v0);
  v12._countAndFlagsBits = 0x20202020200ALL;
  v12._object = 0xE600000000000000;
  sub_E7134(v12);
  v8._countAndFlagsBits = *(v0 + 32);
  v4 = v8._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E978, &qword_EC598);
  v13._countAndFlagsBits = sub_E7084();
  sub_E7134(v13);

  v14._countAndFlagsBits = 0x20202020200ALL;
  v14._object = 0xE600000000000000;
  sub_E7134(v14);
  v5 = *(v0 + 48);
  v8._countAndFlagsBits = *(v0 + 40);
  v8._object = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
  v15._countAndFlagsBits = sub_E7084();
  sub_E7134(v15);

  v16._countAndFlagsBits = 0x20202020200ALL;
  v16._object = 0xE600000000000000;
  sub_E7134(v16);
  v8._countAndFlagsBits = *(v0 + 56);
  sub_57150();
  v17._countAndFlagsBits = sub_E7BB4();
  sub_E7134(v17);

  v18._countAndFlagsBits = 0x20202020200ALL;
  v18._object = 0xE600000000000000;
  sub_E7134(v18);
  sub_E53E4();
  sub_E7134(v8);

  v19._countAndFlagsBits = 0x20202020200ALL;
  v19._object = 0xE600000000000000;
  sub_E7134(v19);
  v6 = type metadata accessor for ShowEntity(0);
  sub_E53E4();
  v20._countAndFlagsBits = sub_E7084();
  sub_E7134(v20);

  v21._countAndFlagsBits = 0x20202020200ALL;
  v21._object = 0xE600000000000000;
  sub_E7134(v21);
  sub_E53E4();
  v22._countAndFlagsBits = sub_E7084();
  sub_E7134(v22);

  v23._countAndFlagsBits = 0x20202020200ALL;
  v23._object = 0xE600000000000000;
  sub_E7134(v23);
  sub_E53E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E988, &qword_EC5B0);
  v24._countAndFlagsBits = sub_E7084();
  sub_E7134(v24);

  v25._countAndFlagsBits = 0x20202020200ALL;
  v25._object = 0xE600000000000000;
  sub_E7134(v25);
  sub_E53E4();
  v26._countAndFlagsBits = sub_E7084();
  sub_E7134(v26);

  v27._countAndFlagsBits = 0x20202020200ALL;
  v27._object = 0xE600000000000000;
  sub_E7134(v27);
  sub_E53E4();
  v28._countAndFlagsBits = sub_E7084();
  sub_E7134(v28);

  v29._countAndFlagsBits = 0x20202020200ALL;
  v29._object = 0xE600000000000000;
  sub_E7134(v29);
  sub_E53E4();
  v30._countAndFlagsBits = sub_E7084();
  sub_E7134(v30);

  v31._countAndFlagsBits = 0x20202020200ALL;
  v31._object = 0xE600000000000000;
  sub_E7134(v31);
  sub_26324(v0 + *(v6 + 80), v3, &unk_12DFA0, &qword_E9B50);
  v32._countAndFlagsBits = sub_E7084();
  sub_E7134(v32);

  v33._countAndFlagsBits = 32010;
  v33._object = 0xE200000000000000;
  sub_E7134(v33);
  return v9;
}

uint64_t ShowEntity.mediaRepresentation.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_E54D4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_E59C4();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_5DDE4, 0, 0);
}

uint64_t sub_5DDE4()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  v5 = type metadata accessor for ShowEntity(0);
  sub_26324(v4 + *(v5 + 80), v1, &unk_12DFA0, &qword_E9B50);
  if ((*(v2 + 48))(v1, 1, v3) != 1)
  {
    (*(v0[13] + 32))(v0[14], v0[16], v0[12]);
    sub_E59D4();
    (*(v0[13] + 8))(v0[14], v0[12]);
  }

  v6 = *(v0[8] + 56);
  if (sub_E6804())
  {
  }

  else
  {
    v0[6] = v6;
    sub_10D78();
    sub_E7854();
  }

  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[11];
  v11 = v0[9];
  v10 = v0[10];
  v14 = v0[12];
  sub_E53E4();
  (*(v10 + 104))(v9, enum case for IntentMediaItem.ItemType.podcastShow(_:), v11);
  sub_E53E4();
  (*(v8 + 56))(v7, 1, 1, v14);
  sub_E54E4();

  v12 = v0[1];

  return v12();
}

uint64_t sub_5E098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5E10;

  return ShowEntity.mediaRepresentation.getter(a1);
}

uint64_t ShowEntity.prepare(asPartOf:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_E61A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[7] = swift_task_alloc();
  v4 = sub_E6404();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_E6734();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v2[14] = swift_task_alloc();
  v6 = sub_E5FD4();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_5E374, 0, 0);
}

uint64_t sub_5E374()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  v5 = type metadata accessor for ShowEntity(0);
  v0[18] = v5;
  sub_26324(v4 + *(v5 + 76), v3, &unk_12DB10, &qword_EAC60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[14], &unk_12DB10, &qword_EAC60);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[10];
    v9 = v0[8];
    v10 = v0[9];
    sub_16AD0(v0[14], v0[17]);
    (*(v10 + 104))(v8, enum case for NetworkTaskPriority.userInitiated(_:), v9);
    sub_5EC04(&qword_12ECA0, &type metadata accessor for CachingImageContentProvider, &protocol conformance descriptor for CachingImageContentProvider);
    sub_E6DB4();
    (*(v10 + 8))(v8, v9);
    sub_E5FA4();
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_5E5DC;
    v12 = v0[11];
    v14 = v0[6];
    v13 = v0[7];

    return ImageContentProvider.url(for:)(v13, v14, v12, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_5E5DC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_5E880;
  }

  else
  {
    v5 = sub_5E74C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_5E74C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];
  v4 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_16B34(v1);
  v5 = sub_E59C4();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_4DCF4(v3, v4 + *(v2 + 80), &unk_12DFA0, &qword_E9B50);

  v6 = v0[1];

  return v6();
}

uint64_t sub_5E880()
{
  v1 = v0[17];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_16B34(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_5E94C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ShowEntity.prepare(asPartOf:)(a1);
}

uint64_t static ShowEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for ShowEntity(0);
  v1 = sub_5EC04(&qword_12ECA8, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v2 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_5EA90, 0, v0, &type metadata for String, v1, v2);
}

uint64_t sub_5EA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ShowEntity(0);
  sub_26324(a1 + *(v7 + 84), v6, &unk_12DFA0, &qword_E9B50);
  v8 = sub_E59C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_110AC(v6, &unk_12DFA0, &qword_E9B50);
    result = sub_E53E4();
    v11 = v14[0];
    v12 = v14[1];
  }

  else
  {
    v11 = sub_E5974();
    v12 = v13;
    result = (*(v9 + 8))(v6, v8);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

uint64_t sub_5EC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5F228(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F958();

  return ProxyRepresentation.init(exporting:)(sub_5EA90, 0, a1, &type metadata for String, a2, v4);
}

uint64_t sub_5F29C@<X0>(void *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_5F314@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  result = sub_E53E4();
  *a1 = v3;
  return result;
}

double sub_5F3B8@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_5F410@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  sub_E53E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_5F4B0@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  result = sub_E53E4();
  *a1 = v3;
  return result;
}

uint64_t sub_5F554@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  result = sub_E53E4();
  *a1 = v3;
  return result;
}

uint64_t sub_5F5F8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  result = sub_E53E4();
  *a1 = v3;
  return result;
}

uint64_t sub_5F69C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShowEntity(0);
  result = sub_E53E4();
  *a1 = v3;
  return result;
}

uint64_t sub_5F754(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_5F8A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_5F9E0(uint64_t a1)
{
  sub_58F2C(319);
  if (v1 <= 0x3F)
  {
    sub_58F88(319);
    if (v2 <= 0x3F)
    {
      sub_5FCD0(319, &qword_12E688, sub_502C8);
      if (v3 <= 0x3F)
      {
        sub_5FB94();
        if (v4 <= 0x3F)
        {
          sub_5FCD0(319, &qword_12D8A0, &type metadata accessor for URL);
          if (v5 <= 0x3F)
          {
            sub_594A8(319);
            if (v6 <= 0x3F)
            {
              sub_5FC60(319);
              if (v7 <= 0x3F)
              {
                sub_5FCD0(319, &qword_12E6B0, &type metadata accessor for ArtworkModel);
                if (v8 <= 0x3F)
                {
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

void sub_5FB94()
{
  if (!qword_12E680)
  {
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12E680);
    }
  }
}

uint64_t sub_5FBE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_5FC60(uint64_t a1)
{
  if (!qword_12EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131EE0, &unk_F5BE0);
    sub_59204();
    v1 = sub_E54C4();
    if (!v2)
    {
      atomic_store(v1, &qword_12EAD0);
    }
  }
}

void sub_5FCD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t StationEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v4 = __chkstk_darwin(v3 - 8);
  v85 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v8 = __chkstk_darwin(v7 - 8);
  v81 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = &v72 - v10;
  v11 = sub_E5944();
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_E5A54();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v89 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_E59C4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v79 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_E5FD4();
  v91 = *(v18 - 8);
  __chkstk_darwin(v18);
  v92 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_E5954();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v25 = __chkstk_darwin(v24 - 8);
  v88 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v72 - v28;
  __chkstk_darwin(v27);
  v31 = &v72 - v30;
  v32 = [a1 podcasts];
  *&v90 = v18;
  v87 = v31;
  if (v32)
  {
    v74 = v21;
    v75 = v16;
    v76 = v15;
    v77 = a1;
    v78 = v13;
    v73 = v32;
    sub_E7464();
    sub_63068(&qword_12EEA8, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    sub_E7824();
    if (v97)
    {
      v33 = (v91 + 56);
      v34 = (v91 + 48);
      v35 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_61B34(&v96, v95);
        sub_26454(v95, v94);
        sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
        if (swift_dynamicCast())
        {
          v36 = v93;
          sub_E77C4();

          __swift_destroy_boxed_opaque_existential_1(v95);
          if ((*v34)(v29, 1, v18) != 1)
          {
            sub_16AD0(v29, v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_230C8(0, v35[2] + 1, 1, v35);
            }

            v38 = v35[2];
            v37 = v35[3];
            if (v38 >= v37 >> 1)
            {
              v35 = sub_230C8((v37 > 1), v38 + 1, 1, v35);
            }

            v35[2] = v38 + 1;
            sub_16AD0(v92, v35 + ((v91[80] + 32) & ~v91[80]) + *(v91 + 9) * v38);
            v18 = v90;
            goto LABEL_6;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v95);
          (*v33)(v29, 1, 1, v18);
        }

        sub_110AC(v29, &unk_12DB10, &qword_EAC60);
LABEL_6:
        sub_E7824();
        if (!v97)
        {
          goto LABEL_15;
        }
      }
    }

    v35 = _swiftEmptyArrayStorage;
LABEL_15:

    (*(v74 + 8))(v23, v20);
    *&v96 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EEB0, &qword_ED330);
    sub_3C2A0(&qword_12EEB8, &qword_12EEB0, &qword_ED330, &protocol conformance descriptor for [A]);
    v39 = sub_E7404();
    v16 = v75;
    if (v39)
    {
      v31 = v87;
      sub_E5FB4();
      a1 = v77;
      v15 = v76;
      goto LABEL_19;
    }

    v31 = v87;
    v18 = v90;
    a1 = v77;
    v15 = v76;
  }

  (*(v91 + 7))(v31, 1, 1, v18);
LABEL_19:
  v40 = a1;
  v41 = [v40 objectID];
  v42 = [v41 URIRepresentation];

  v43 = v79;
  sub_E5994();

  v92 = sub_E5974();
  v78 = v44;
  (*(v16 + 8))(v43, v15);
  v45 = [v40 uuid];
  if (v45)
  {
    v46 = v45;
    v79 = sub_E7064();
    v77 = v47;
  }

  else
  {
    v79 = 0;
    v77 = 0;
  }

  v48 = [v40 objectID];

  v49 = [v40 title];
  if (v49)
  {
    v50 = v49;
    v76 = sub_E7064();
    v75 = v51;
  }

  else
  {
    v76 = 0;
    v75 = 0xE000000000000000;
  }

  [v40 generatedDate];
  sub_E5A04();
  v52 = [v40 defaultSettings];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 showPlayedEpisodes];

    v55 = v54 ^ 1;
  }

  else
  {
    v55 = 1;
  }

  LODWORD(v74) = v55;
  v56 = [v40 hidden];
  sub_26324(v31, v88, &unk_12DB10, &qword_EAC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  v57 = sub_E5484();
  v58 = v84;
  *(v84 + 5) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_63068(&qword_12E760, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);
  v73 = sub_E5444();
  *(v58 + 6) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v72 = sub_E5454();
  *(v58 + 7) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  *(v58 + 8) = sub_E5494();
  v59 = type metadata accessor for StationEntity(0);
  v60 = v59[11];
  (*(v91 + 7))(&v58[v60], 1, 1, v90);
  v61 = &v58[v59[12]];
  v90 = xmmword_EBE10;
  *v61 = xmmword_EBE10;
  v62 = v78;
  *v58 = v92;
  *(v58 + 1) = v62;
  v63 = v77;
  *(v58 + 2) = v79;
  *(v58 + 3) = v63;
  *(v58 + 4) = v48;
  v58[v59[13]] = v56;
  *&v96 = v76;
  *(&v96 + 1) = v75;
  v92 = v48;
  sub_E53F4();
  v91 = v40;
  v64 = v82;
  v65 = v80;
  v66 = v83;
  (*(v82 + 16))(v80, v89, v83);
  (*(v64 + 56))(v65, 0, 1, v66);
  sub_26324(v65, v81, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v65, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v96) = v74;
  sub_E53F4();
  v67 = &v58[v60];
  v68 = v88;
  sub_61AC4(v88, v67);
  sub_4DC8C(*v61, *(v61 + 1));
  *v61 = v90;
  v69 = type metadata accessor for ContextualMetadata(0);
  v70 = v86;
  (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
  sub_26324(v70, v85, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();

  sub_110AC(v70, &qword_12EAC0, &qword_ECC30);
  sub_110AC(v68, &unk_12DB10, &qword_EAC60);
  (*(v64 + 8))(v89, v66);
  return sub_110AC(v87, &unk_12DB10, &qword_EAC60);
}

uint64_t sub_60B28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5204();
  qword_12EE70 = result;
  return result;
}

uint64_t static StationEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_12CB20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_12EE70;
}

uint64_t sub_60C38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __swift_allocate_value_buffer(v0, qword_12EE78);
  __swift_project_value_buffer(v0, qword_12EE78);
  return sub_E59B4();
}

uint64_t static StationEntity.deviceURLPrefix.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB28 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v3 = __swift_project_value_buffer(v2, qword_12EE78);
  return sub_26324(v3, a1, &unk_12DFA0, &qword_E9B50);
}

uint64_t sub_60D38()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12EE90);
  __swift_project_value_buffer(v0, qword_12EE90);
  return sub_E57B4();
}

uint64_t static StationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB30 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12EE90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*StationEntity.title.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_60F34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_26324(a1, &v9 - v6, &qword_12EAC0, &qword_ECC30);
  sub_26324(v7, v5, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();
  return sub_110AC(v7, &qword_12EAC0, &qword_ECC30);
}

uint64_t StationEntity.contextualMetadata.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  __chkstk_darwin(v2 - 8);
  sub_26324(a1, &v5 - v3, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();
  return sub_110AC(a1, &qword_12EAC0, &qword_ECC30);
}

void (*StationEntity.contextualMetadata.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_61178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_26324(a1, &v9 - v6, &qword_131EE0, &unk_F5BE0);
  sub_26324(v7, v5, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(v7, &qword_131EE0, &unk_F5BE0);
}

uint64_t StationEntity.dateCreated.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  __chkstk_darwin(v2 - 8);
  sub_26324(a1, &v5 - v3, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  return sub_110AC(a1, &qword_131EE0, &unk_F5BE0);
}

void (*StationEntity.dateCreated.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_33020;
}

void (*StationEntity.showUnplayedEpisodes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t StationEntity.artworkData.getter()
{
  v1 = v0 + *(type metadata accessor for StationEntity(0) + 48);
  v2 = *v1;
  sub_4EB8C(*v1, *(v1 + 8));
  return v2;
}

uint64_t StationEntity.init(id:uuid:objectID:title:dateCreated:showUnplayedEpisodes:isHidden:artworkModel:artworkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v59 = a8;
  v51 = a4;
  v52 = a6;
  v49 = a2;
  v50 = a3;
  v48 = a1;
  v56 = a13;
  v57 = a14;
  v55 = a12;
  v53 = a10;
  v47 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EAC0, &qword_ECC30);
  v18 = __chkstk_darwin(v17 - 8);
  v58 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v54 = &v45 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  v27 = sub_E5944();
  __chkstk_darwin(v27 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
  *(a9 + 5) = sub_E5484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E948, &unk_EC560);
  sub_63068(&qword_12E760, type metadata accessor for ContextualMetadata, &protocol conformance descriptor for ContextualMetadata);
  v46 = sub_E5444();
  *(a9 + 6) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E950, &unk_ECC80);
  sub_E5914();
  v45 = sub_E5454();
  *(a9 + 7) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E968, &qword_EC580);
  sub_E5914();
  *(a9 + 8) = sub_E5494();
  v28 = type metadata accessor for StationEntity(0);
  v29 = v28[11];
  v30 = sub_E5FD4();
  (*(*(v30 - 8) + 56))(&a9[v29], 1, 1, v30);
  v31 = &a9[v28[12]];
  *v31 = xmmword_EBE10;
  v32 = v49;
  *a9 = v48;
  *(a9 + 1) = v32;
  v33 = v51;
  *(a9 + 2) = v50;
  *(a9 + 3) = v33;
  *(a9 + 4) = a5;
  a9[v28[13]] = v47;
  v60 = v52;
  v61 = a7;
  v52 = a5;
  sub_E53F4();
  v34 = sub_E5A54();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v26, v59, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  sub_26324(v26, v24, &qword_131EE0, &unk_F5BE0);
  sub_E53F4();
  sub_110AC(v26, &qword_131EE0, &unk_F5BE0);
  LOBYTE(v60) = v53;
  sub_E53F4();
  v36 = &a9[v29];
  v37 = v55;
  sub_61AC4(v55, v36);
  v38 = *v31;
  v39 = *(v31 + 1);
  v41 = v56;
  v40 = v57;
  sub_4EB8C(v56, v57);
  sub_4DC8C(v38, v39);
  *v31 = v41;
  *(v31 + 1) = v40;
  v42 = type metadata accessor for ContextualMetadata(0);
  v43 = v54;
  (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
  sub_26324(v43, v58, &qword_12EAC0, &qword_ECC30);
  sub_E53F4();
  sub_4DC8C(v41, v40);

  sub_110AC(v37, &unk_12DB10, &qword_EAC60);
  (*(v35 + 8))(v59, v34);
  return sub_110AC(v43, &qword_12EAC0, &qword_ECC30);
}

uint64_t type metadata accessor for StationEntity(uint64_t a1)
{
  result = qword_12EF68;
  if (!qword_12EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_OWORD *sub_61B34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_61B48(uint64_t a1)
{
  v2 = sub_63068(&qword_12DC58, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_61BC4(uint64_t a1)
{
  v2 = sub_63068(&qword_12EEF0, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t StationEntity.mediaRepresentation.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[6] = swift_task_alloc();
  v3 = sub_E54D4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_61D38, 0, 0);
}

uint64_t sub_61D38()
{
  v1 = v0[5];
  if (!*(v1 + 24))
  {
  }

  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];

  sub_E53E4();
  (*(v2 + 104))(v3, enum case for IntentMediaItem.ItemType.podcastStation(_:), v5);
  v6 = (v1 + *(type metadata accessor for StationEntity(0) + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = sub_E59C4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_4EB8C(v7, v8);
  sub_E54E4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_61EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return StationEntity.mediaRepresentation.getter(a1);
}

uint64_t StationEntity.prepare(asPartOf:)()
{
  *(v1 + 56) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_62020;

  return BaseObjectGraph.inject<A>(_:)(v1 + 16, v2, v2);
}

uint64_t sub_62020()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_578AC, 0, 0);
  }

  else
  {
    v3 = v2[7];
    v4 = type metadata accessor for StationEntity(0);
    v2[10] = v4;
    v5 = *(v4 + 44);
    v6 = swift_task_alloc();
    v2[11] = v6;
    v7 = sub_63068(&qword_12EEC0, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
    *v6 = v2;
    v6[1] = sub_62208;

    return Preparable.artworkData(for:imageProvider:)(v3 + v5, v2 + 2, v4, v7);
  }
}

uint64_t sub_62208(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_578C4;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_6233C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_6233C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 48);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_623C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v6 = swift_task_alloc();
  v4[10] = v6;
  *v6 = v4;
  v6[1] = sub_62490;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v5, v5);
}

uint64_t sub_62490()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_57CB8, 0, 0);
  }

  else
  {
    v3 = v2[7];
    v4 = *(v2[8] + 44);
    v5 = swift_task_alloc();
    v2[12] = v5;
    *v5 = v2;
    v5[1] = sub_62624;
    v6 = v2[8];
    v7 = v2[9];

    return Preparable.artworkData(for:imageProvider:)(v3 + v4, v2 + 2, v6, v7);
  }
}

uint64_t sub_62624(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_57D58;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_62758;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_62758()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 48);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_62AF8@<X0>(void *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_62BC0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

uint64_t sub_62C48(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_62D18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_62DC8(uint64_t a1)
{
  sub_5041C(319, &qword_12E680, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_62F90(319);
    if (v2 <= 0x3F)
    {
      sub_58F2C(319);
      if (v3 <= 0x3F)
      {
        sub_62FF8(319, &qword_12EAB8, &qword_12EAC0, &qword_ECC30, sub_59150);
        if (v4 <= 0x3F)
        {
          sub_62FF8(319, &qword_12EAD0, &qword_131EE0, &unk_F5BE0, sub_59204);
          if (v5 <= 0x3F)
          {
            sub_62FF8(319, &qword_12EB20, &qword_12E988, &qword_EC5B0, sub_630B0);
            if (v6 <= 0x3F)
            {
              sub_63134(319);
              if (v7 <= 0x3F)
              {
                sub_5041C(319, &unk_12E6B8, &type metadata for Data);
                if (v8 <= 0x3F)
                {
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

void sub_62F90(uint64_t a1)
{
  if (!qword_12E688)
  {
    sub_4ABC(255, &qword_12E090, NSManagedObjectID_ptr);
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_12E688);
    }
  }
}

void sub_62FF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_E54C4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_63068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_630B0()
{
  result = qword_12EB28;
  if (!qword_12EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E988, &qword_EC5B0);
    sub_503C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EB28);
  }

  return result;
}

void sub_63134(uint64_t a1)
{
  if (!qword_12E6B0)
  {
    sub_E5FD4();
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_12E6B0);
    }
  }
}

uint64_t type metadata accessor for WarmupAudioQueueResult(uint64_t a1)
{
  result = qword_12F060;
  if (!qword_12F060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_63288()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_145600);
  __swift_project_value_buffer(v0, qword_145600);
  return sub_E57B4();
}

uint64_t sub_633BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB38 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_145600);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_63468()
{
  result = qword_12EFF0;
  if (!qword_12EFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12EFF8, &qword_ED828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12EFF0);
  }

  return result;
}

uint64_t sub_634CC(uint64_t a1)
{
  v2 = sub_45ED4(&qword_12E220, &unk_ED6E0);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_63568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_E56B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_635DC(uint64_t a1)
{
  v2 = sub_45ED4(&qword_12EFE8, &unk_ED890);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_63658(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_E56B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_63718(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_E56B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_637BC(uint64_t a1)
{
  result = sub_E56B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_63840()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12F098);
  __swift_project_value_buffer(v0, qword_12F098);
  return sub_E57B4();
}

uint64_t static AudioActivity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB40 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_63958()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F118, &qword_EDC70);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130840, &qword_EDC78) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_ED920;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_E5644();
  v4[v1] = 1;
  sub_E5644();
  v4[2 * v1] = 2;
  sub_E5644();
  v4[3 * v1] = 3;
  sub_E5644();
  v4[4 * v1] = 4;
  sub_E5644();
  v4[5 * v1] = 5;
  sub_E5644();
  v4[6 * v1] = 6;
  sub_E5644();
  v4[7 * v1] = 7;
  sub_E5644();
  v4[8 * v1] = 8;
  sub_E5644();
  v4[9 * v1] = 9;
  sub_E5644();
  v4[10 * v1] = 10;
  sub_E5644();
  v4[11 * v1] = 11;
  sub_E5644();
  v4[12 * v1] = 12;
  sub_E5644();
  v4[13 * v1] = 13;
  sub_E5644();
  v4[14 * v1] = 14;
  sub_E5644();
  v4[15 * v1] = 15;
  sub_E5644();
  v4[16 * v1] = 16;
  sub_E5644();
  v4[17 * v1] = 17;
  sub_E5644();
  v4[18 * v1] = 18;
  sub_E5644();
  v4[19 * v1] = 19;
  sub_E5644();
  v4[20 * v1] = 20;
  sub_E5644();
  v4[21 * v1] = 21;
  sub_E5644();
  v4[22 * v1] = 22;
  sub_E5644();
  v4[23 * v1] = 23;
  sub_E5644();
  v4[24 * v1] = 24;
  sub_E5644();
  v4[25 * v1] = 25;
  sub_E5644();
  v4[26 * v1] = 26;
  sub_E5644();
  v4[27 * v1] = 27;
  sub_E5644();
  v4[28 * v1] = 28;
  sub_E5644();
  v4[29 * v1] = 29;
  sub_E5644();
  v4[30 * v1] = 30;
  sub_E5644();
  v4[31 * v1] = 31;
  sub_E5644();
  v4[32 * v1] = 32;
  sub_E5644();
  v5 = sub_B0694(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12F0B0 = v5;
  return result;
}

uint64_t static AudioActivity.caseDisplayRepresentations.getter()
{
  if (qword_12CB48 != -1)
  {
    swift_once();
  }
}

PodcastsActions::AudioActivity_optional __swiftcall AudioActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_E7C04();

  v5 = 0;
  v6 = 15;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
      goto LABEL_25;
    case 14:
      v5 = 14;
LABEL_25:
      v6 = v5;
      break;
    case 15:
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
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    default:
      v6 = 33;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t AudioActivity.rawValue.getter()
{
  result = 0x6975636562726162;
  switch(*v0)
  {
    case 1:
      return 0x7961446863616562;
    case 2:
      return 0x676E696E61656C63;
    case 3:
      v4 = 0x74756D6D6F63;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 4:
      v2 = 1802465123;
      goto LABEL_33;
    case 5:
      v2 = 1818458467;
      goto LABEL_33;
    case 6:
      return 0x65636E6164;
    case 7:
      return 0x676E696E6964;
    case 8:
      v2 = 1986622052;
      goto LABEL_33;
    case 9:
      return 0x676E697375636F66;
    case 0xA:
      return 0x676E696D6167;
    case 0xB:
      v4 = 0x6E6564726167;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 0xC:
      return 1953065320;
    case 0xD:
      return 0x6341726F6F646E69;
    case 0xE:
      return 0x697461746964656DLL;
    case 0xF:
      return 0x41726F6F6474756FLL;
    case 0x10:
      v3 = 1953653104;
      return v3 | 0x676E697900000000;
    case 0x11:
      v2 = 1684104562;
      goto LABEL_33;
    case 0x12:
      return 0x676E6978616C6572;
    case 0x13:
      return 0x7069725464616F72;
    case 0x14:
      return 0x676E69776F72;
    case 0x15:
      v2 = 1852732786;
      goto LABEL_33;
    case 0x16:
      v4 = 0x7265776F6873;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 0x17:
      return 0x676E697065656C73;
    case 0x18:
      return 0x6874676E65727473;
    case 0x19:
      v3 = 1685419123;
      return v3 | 0x676E697900000000;
    case 0x1A:
      v4 = 0x6C6576617274;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
    case 0x1B:
      v2 = 1802264951;
      goto LABEL_33;
    case 0x1C:
      v2 = 1802661751;
LABEL_33:
      result = v2 | 0x676E6900000000;
      break;
    case 0x1D:
      result = 0xD000000000000014;
      break;
    case 0x1E:
      result = 0xD000000000000013;
      break;
    case 0x1F:
      result = 0xD000000000000016;
      break;
    case 0x20:
      result = 1634168697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_64658()
{
  v0 = AudioActivity.rawValue.getter();
  v2 = v1;
  if (v0 == AudioActivity.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_E7BD4();
  }

  return v5 & 1;
}

unint64_t sub_646F8()
{
  result = qword_12F0B8;
  if (!qword_12F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0B8);
  }

  return result;
}

Swift::Int sub_6474C()
{
  sub_E7CC4();
  AudioActivity.rawValue.getter();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_647B4(uint64_t a1)
{
  AudioActivity.rawValue.getter();
  sub_E7124();
}

Swift::Int sub_64818(uint64_t a1)
{
  sub_E7CC4();
  AudioActivity.rawValue.getter();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_64888@<X0>(uint64_t *a1@<X8>)
{
  result = AudioActivity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_648B4()
{
  result = qword_12F0C0;
  if (!qword_12F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0C0);
  }

  return result;
}

unint64_t sub_6490C()
{
  result = qword_12F0C8;
  if (!qword_12F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0C8);
  }

  return result;
}

unint64_t sub_64964()
{
  result = qword_12F0D0;
  if (!qword_12F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0D0);
  }

  return result;
}

unint64_t sub_649BC()
{
  result = qword_12F0D8;
  if (!qword_12F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0D8);
  }

  return result;
}

unint64_t sub_64A14()
{
  result = qword_12F0E0;
  if (!qword_12F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0E0);
  }

  return result;
}

unint64_t sub_64A70()
{
  result = qword_12F0E8;
  if (!qword_12F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0E8);
  }

  return result;
}

uint64_t sub_64B14(uint64_t a1)
{
  v2 = sub_50A6C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_64B64()
{
  result = qword_12F0F0;
  if (!qword_12F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0F0);
  }

  return result;
}

unint64_t sub_64BBC()
{
  result = qword_12F0F8;
  if (!qword_12F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F0F8);
  }

  return result;
}

unint64_t sub_64C14()
{
  result = qword_12F100;
  if (!qword_12F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F100);
  }

  return result;
}

uint64_t sub_64C68(uint64_t a1)
{
  v2 = sub_64A70();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_64CB8()
{
  result = qword_12F108;
  if (!qword_12F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F110, &qword_EDB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F108);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioActivity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_64E84()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12F120);
  __swift_project_value_buffer(v0, qword_12F120);
  return sub_E57B4();
}

uint64_t static InvocationSource.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB50 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F120);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_64F90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F1A0, &qword_EDF50);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130830, &qword_EDF58) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E9EF0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_E5644();
  v4[v1] = 1;
  sub_E5644();
  v5 = sub_B087C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12F138 = v5;
  return result;
}

uint64_t static InvocationSource.caseDisplayRepresentations.getter()
{
  if (qword_12CB58 != -1)
  {
    swift_once();
  }
}

PodcastsActions::InvocationSource_optional __swiftcall InvocationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_11FF10;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t InvocationSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x6574736567677573;
  }

  else
  {
    return 0x74696E4972657375;
  }
}

uint64_t sub_65214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574736567677573;
  }

  else
  {
    v3 = 0x74696E4972657375;
  }

  if (v2)
  {
    v4 = 0xED00006465746169;
  }

  else
  {
    v4 = 0xEE00707041794264;
  }

  if (*a2)
  {
    v5 = 0x6574736567677573;
  }

  else
  {
    v5 = 0x74696E4972657375;
  }

  if (*a2)
  {
    v6 = 0xEE00707041794264;
  }

  else
  {
    v6 = 0xED00006465746169;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

unint64_t sub_652D8()
{
  result = qword_12F140;
  if (!qword_12F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F140);
  }

  return result;
}

Swift::Int sub_6532C()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_653C8(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_65450(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_654E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_11FF10;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_65548(uint64_t *a1@<X8>)
{
  v2 = 0x74696E4972657375;
  if (*v1)
  {
    v2 = 0x6574736567677573;
  }

  v3 = 0xED00006465746169;
  if (*v1)
  {
    v3 = 0xEE00707041794264;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_655A4()
{
  result = qword_12F148;
  if (!qword_12F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F148);
  }

  return result;
}

unint64_t sub_655FC()
{
  result = qword_12F150;
  if (!qword_12F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F150);
  }

  return result;
}

unint64_t sub_65654()
{
  result = qword_12F158;
  if (!qword_12F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F158);
  }

  return result;
}

unint64_t sub_656AC()
{
  result = qword_12F160;
  if (!qword_12F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F160);
  }

  return result;
}

unint64_t sub_65704()
{
  result = qword_12F168;
  if (!qword_12F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F168);
  }

  return result;
}

unint64_t sub_65760()
{
  result = qword_12F170;
  if (!qword_12F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F170);
  }

  return result;
}

uint64_t sub_65804(uint64_t a1)
{
  v2 = sub_50A18();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_65854()
{
  result = qword_12F178;
  if (!qword_12F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F178);
  }

  return result;
}

unint64_t sub_658AC()
{
  result = qword_12F180;
  if (!qword_12F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F180);
  }

  return result;
}

unint64_t sub_65904()
{
  result = qword_12F188;
  if (!qword_12F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F188);
  }

  return result;
}

uint64_t sub_65958(uint64_t a1)
{
  v2 = sub_65760();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_659A8()
{
  result = qword_12F190;
  if (!qword_12F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F198, &qword_EDED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F190);
  }

  return result;
}

uint64_t sub_65A34()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12F1A8);
  __swift_project_value_buffer(v0, qword_12F1A8);
  return sub_E57B4();
}

uint64_t static PlaybackAttributes.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F1A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PlaybackAttributes.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F1A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PlaybackAttributes.typeDisplayRepresentation.modify(uint64_t a1))(void)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v1 = sub_E57C4();
  __swift_project_value_buffer(v1, qword_12F1A8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_65CE0(uint64_t a1)
{
  if (qword_12CB60 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12F1A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_65DA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F238, &qword_EE230);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130820, &qword_EE238) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E9EF0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_E5644();
  v4[v1] = 1;
  sub_E5644();
  v5 = sub_B0A64(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12F1C0 = v5;
  return result;
}

uint64_t static PlaybackAttributes.caseDisplayRepresentations.getter()
{
  if (qword_12CB68 != -1)
  {
    swift_once();
  }
}

PodcastsActions::PlaybackAttributes_optional __swiftcall PlaybackAttributes.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_11FFB0;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t PlaybackAttributes.rawValue.getter()
{
  if (*v0)
  {
    return 0x746165706572;
  }

  else
  {
    return 0x656C6666756873;
  }
}

uint64_t sub_66008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746165706572;
  }

  else
  {
    v3 = 0x656C6666756873;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746165706572;
  }

  else
  {
    v5 = 0x656C6666756873;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

unint64_t sub_660B0()
{
  result = qword_12F1C8;
  if (!qword_12F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1C8);
  }

  return result;
}

Swift::Int sub_66104()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_66184(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_661F0(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_6626C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_11FFB0;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_662CC(uint64_t *a1@<X8>)
{
  v2 = 0x656C6666756873;
  if (*v1)
  {
    v2 = 0x746165706572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_6630C()
{
  result = qword_12F1D0;
  if (!qword_12F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1D0);
  }

  return result;
}

unint64_t sub_66364()
{
  result = qword_12F1D8;
  if (!qword_12F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1D8);
  }

  return result;
}

unint64_t sub_663BC()
{
  result = qword_12F1E0;
  if (!qword_12F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1E0);
  }

  return result;
}

unint64_t sub_66414()
{
  result = qword_12F1E8;
  if (!qword_12F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1E8);
  }

  return result;
}

unint64_t sub_6646C()
{
  result = qword_12F1F0;
  if (!qword_12F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1F0);
  }

  return result;
}

unint64_t sub_664C4()
{
  result = qword_12F1F8;
  if (!qword_12F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F1F8);
  }

  return result;
}

unint64_t sub_6651C()
{
  result = qword_12F200;
  if (!qword_12F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F200);
  }

  return result;
}

unint64_t sub_665C0()
{
  result = qword_12F208;
  if (!qword_12F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F208);
  }

  return result;
}

uint64_t sub_66614(uint64_t a1)
{
  v2 = sub_665C0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_66664()
{
  result = qword_12F210;
  if (!qword_12F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F210);
  }

  return result;
}

unint64_t sub_666BC()
{
  result = qword_12F218;
  if (!qword_12F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F218);
  }

  return result;
}

unint64_t sub_66714()
{
  result = qword_12F220;
  if (!qword_12F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F220);
  }

  return result;
}

uint64_t sub_66768(uint64_t a1)
{
  v2 = sub_6651C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_667B8()
{
  result = qword_12F228;
  if (!qword_12F228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F230, &qword_EE1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F228);
  }

  return result;
}

uint64_t sub_6684C()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_145618);
  __swift_project_value_buffer(v0, qword_145618);
  return sub_E57B4();
}

uint64_t sub_668B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2B0, &qword_EE508);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2B8, qword_EE510) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_EB2E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_E5644();
  v4[v1] = 1;
  sub_E5644();
  v4[2 * v1] = 2;
  sub_E5644();
  v5 = sub_B0C4C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_145630 = v5;
  return result;
}

uint64_t sub_66A2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1818845556;
  if (v2 != 1)
  {
    v5 = 0x726574616CLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1954047342;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1818845556;
  if (*a2 != 1)
  {
    v8 = 0x726574616CLL;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1954047342;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_E7BD4();
  }

  return v11 & 1;
}

unint64_t sub_66B10()
{
  result = qword_12F240;
  if (!qword_12F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F240);
  }

  return result;
}

Swift::Int sub_66B64()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_66BF4(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_66C70(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

unint64_t sub_66CFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_673B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_66D2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1818845556;
  if (v2 != 1)
  {
    v5 = 0x726574616CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1954047342;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_66D7C()
{
  result = qword_12F248;
  if (!qword_12F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F248);
  }

  return result;
}

unint64_t sub_66DD4()
{
  result = qword_12F250;
  if (!qword_12F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F250);
  }

  return result;
}

unint64_t sub_66E2C()
{
  result = qword_12F258;
  if (!qword_12F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F258);
  }

  return result;
}

unint64_t sub_66E84()
{
  result = qword_12F260;
  if (!qword_12F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F260);
  }

  return result;
}

unint64_t sub_66EDC()
{
  result = qword_12F268;
  if (!qword_12F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F268);
  }

  return result;
}

unint64_t sub_66F34()
{
  result = qword_12F270;
  if (!qword_12F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F270);
  }

  return result;
}

unint64_t sub_66F8C()
{
  result = qword_12F278;
  if (!qword_12F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F278);
  }

  return result;
}

uint64_t sub_66FE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB70 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_145618);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_670D8()
{
  result = qword_12F280;
  if (!qword_12F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F280);
  }

  return result;
}

uint64_t sub_6712C(uint64_t a1)
{
  v2 = sub_670D8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_6717C()
{
  result = qword_12F288;
  if (!qword_12F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F288);
  }

  return result;
}

unint64_t sub_671D4()
{
  result = qword_12F290;
  if (!qword_12F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F290);
  }

  return result;
}

unint64_t sub_6722C()
{
  result = qword_12F298;
  if (!qword_12F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F298);
  }

  return result;
}

uint64_t sub_67280()
{
  if (qword_12CB78 != -1)
  {
    swift_once();
  }
}

uint64_t sub_672DC(uint64_t a1)
{
  v2 = sub_66F8C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_6732C()
{
  result = qword_12F2A0;
  if (!qword_12F2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F2A8, &qword_EE498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2A0);
  }

  return result;
}

unint64_t sub_673B0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_120050;
  v6._object = a2;
  v4 = sub_E7B34(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_67408()
{
  result = qword_12F2C0;
  if (!qword_12F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2C0);
  }

  return result;
}

unint64_t sub_67460()
{
  result = qword_12F2C8;
  if (!qword_12F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2C8);
  }

  return result;
}

unint64_t sub_674B8()
{
  result = qword_12F2D0;
  if (!qword_12F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2D0);
  }

  return result;
}

uint64_t sub_6750C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_145638);
  __swift_project_value_buffer(v0, qword_145638);
  return sub_E5914();
}

uint64_t sub_67578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_145650);
  v1 = __swift_project_value_buffer(v0, qword_145650);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_67638(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  v2[16] = swift_task_alloc();
  v3 = sub_E5D24();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_E6974();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for AudioEntity(0);
  v2[25] = swift_task_alloc();
  v5 = sub_E62C4();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_67844, 0, 0);
}

uint64_t sub_67844()
{
  v37 = v0;
  v1 = v0[30];
  v2 = v0[25];
  sub_E5504();
  sub_4B104(v2, v1);
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  sub_E6914();
  v7 = *(v6 + 16);
  v0[31] = v7;
  v0[32] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3, v5);
  v8 = sub_E6964();
  v9 = sub_E74D4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  if (v10)
  {
    v32 = v9;
    v12 = v0[27];
    v13 = v0[28];
    v14 = v0[26];
    v33 = v0[21];
    v34 = v0[20];
    v35 = v0[24];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36 = v31;
    *v15 = 136315138;
    v7(v13, v11, v14);
    v16 = sub_E7084();
    v18 = v17;
    v19 = v8;
    v20 = *(v12 + 8);
    v20(v11, v14);
    v21 = sub_23E64(v16, v18, &v36);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_0, v19, v32, "Identified content to play: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);

    v22 = *(v33 + 8);
    v22(v35, v34);
  }

  else
  {
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[24];
    v26 = v0[20];
    v27 = v0[21];

    v20 = *(v24 + 8);
    v20(v11, v23);
    v22 = *(v27 + 8);
    v22(v25, v26);
  }

  v0[33] = v22;
  v0[34] = v20;
  sub_E51D4();
  v0[35] = v0[13];
  v28 = sub_E5D94();
  v29 = swift_task_alloc();
  v0[36] = v29;
  *v29 = v0;
  v29[1] = sub_67BC8;

  return BaseObjectGraph.inject<A>(_:)(v0 + 12, v28, v28);
}

uint64_t sub_67BC8()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_68598;
  }

  else
  {
    v2 = sub_67CFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_67CFC()
{
  v47 = v0;
  *(v0 + 304) = *(v0 + 96);
  sub_E5504();
  v1 = *(v0 + 344);
  if (v1 == 3)
  {
    sub_E6914();
    v2 = sub_E6964();
    v3 = sub_E74D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Starting playback immediately.", v4, 2u);
    }

    v5 = *(v0 + 264);
    v6 = *(v0 + 240);
    v41 = *(v0 + 248);
    v7 = *(v0 + 224);
    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v11 = *(v0 + 128);

    v5(v9, v10);
    v12 = sub_E5D34();
    *(v0 + 40) = v12;
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v41(v7, v6, v8);
    v14 = sub_E63C4();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    sub_E73D4();
    sub_E61E4();
    (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, enum case for PlaybackController.QueueCommand.replace(_:), v12);
    v43 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v15 = swift_task_alloc();
    *(v0 + 328) = v15;
    *v15 = v0;
    v15[1] = sub_68468;
    v16.n128_u64[0] = 5.0;

    return (v43)(v0 + 16, 0, v16);
  }

  else
  {
    sub_E6914();
    v18 = sub_E6964();
    v19 = sub_E74D4();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 264);
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v44 = v1;
    if (v20)
    {
      v42 = *(v0 + 264);
      v24 = swift_slowAlloc();
      v40 = v22;
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315138;
      *(v0 + 345) = v1;
      v26 = sub_E7084();
      v28 = sub_23E64(v26, v27, &v46);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v18, v19, "Inserting at queue position: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);

      v42(v40, v23);
    }

    else
    {

      v21(v22, v23);
    }

    v29 = *(v0 + 248);
    v30 = *(v0 + 240);
    v31 = *(v0 + 208);
    v32 = *(v0 + 144);
    v33 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = sub_E5D34();
    *(v0 + 80) = v35;
    *(v0 + 88) = &protocol witness table for PlaybackController.QueueCommand;
    v36 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    v29(v36, v30, v31);
    v37 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    if (v44)
    {
      v37 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
    }

    (*(v32 + 104))(v33, *v37, v34);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F338, &qword_F2E90);
    (*(v32 + 32))(v36 + *(v38 + 48), v33, v34);
    (*(*(v35 - 8) + 104))(v36, enum case for PlaybackController.QueueCommand.addItemToQueue(_:), v35);
    v45 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
    v39 = swift_task_alloc();
    *(v0 + 312) = v39;
    *v39 = v0;
    v39[1] = sub_68220;

    return (v45)(v0 + 56, 0);
  }
}

uint64_t sub_68220(void *a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = sub_6868C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 56));
    v5 = sub_68350;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_68350()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[26];
  sub_E53A4();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_68468(void *a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = sub_68798;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v4 + 16));
    v5 = sub_695C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_68598()
{
  (*(v0 + 272))(*(v0 + 240), *(v0 + 208));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6868C()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[26];

  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_68798()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[26];

  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_688A8()
{
  result = qword_12F2D8;
  if (!qword_12F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2D8);
  }

  return result;
}

unint64_t sub_68900()
{
  result = qword_12F2E0;
  if (!qword_12F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2E0);
  }

  return result;
}

uint64_t sub_689C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB80 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_145638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_68A7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_145650);

  return sub_69558(v3, a1);
}

uint64_t sub_68B00(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_68BAC;

  return sub_67638(a1);
}

uint64_t sub_68BAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_68CA0@<D0>(uint64_t a1@<X8>)
{
  sub_68E3C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_68CE4(uint64_t a1)
{
  v2 = sub_674B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
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

uint64_t sub_68D34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_68D7C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_68DD8()
{
  result = qword_12F2E8;
  if (!qword_12F2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12F2F0, &unk_EF770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F2E8);
  }

  return result;
}

uint64_t sub_68E3C@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v50 = sub_E5774();
  v1 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F300, &qword_EE700);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v52 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v42 = sub_E5214();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F308, &qword_EE708);
  sub_E5914();
  v51 = sub_E5944();
  v16 = *(v51 - 8);
  v47 = *(v16 + 56);
  v48 = v16 + 56;
  v47(v15, 0, 1, v51);
  v17 = type metadata accessor for WarmupAudioQueueResult(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_E5354();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v45 = v19 + 56;
  v20(v9, 1, 1, v18);
  v20(v7, 1, 1, v18);
  v46 = enum case for InputConnectionBehavior.default(_:);
  v39 = *(v1 + 104);
  v49 = v1 + 104;
  v21 = v50;
  v39(v3);
  sub_69510(&qword_12E220, type metadata accessor for WarmupAudioQueueResult, &unk_ED6E0);
  v22 = v7;
  v23 = v3;
  v41 = sub_E5564();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F310, &qword_EE710);
  sub_E5914();
  v24 = v47;
  v47(v15, 0, 1, v51);
  v53 = &_swiftEmptySetSingleton;
  v44 = v20;
  v20(v9, 1, 1, v18);
  v20(v22, 1, 1, v18);
  v38 = v23;
  v25 = v46;
  v26 = v21;
  v27 = v39;
  (v39)(v23, v46, v26);
  sub_665C0();
  v40 = sub_E5544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F318, &qword_EE718);
  sub_E5914();
  v24(v15, 0, 1, v51);
  LOBYTE(v53) = 3;
  v28 = v44;
  v44(v9, 1, 1, v18);
  v28(v22, 1, 1, v18);
  v29 = v38;
  v30 = v50;
  v27(v38, v25, v50);
  sub_670D8();
  v31 = v29;
  v32 = sub_E5544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F320, &qword_EE720);
  sub_E5914();
  v47(v15, 0, 1, v51);
  v44(v9, 1, 1, v18);
  v27(v31, v46, v30);
  sub_69510(&qword_12F328, type metadata accessor for AudioEntity, &protocol conformance descriptor for AudioEntity);
  result = sub_E5534();
  v34 = v43;
  v35 = v40;
  v36 = v41;
  *v43 = v42;
  v34[1] = v36;
  v34[2] = v35;
  v34[3] = v32;
  v34[4] = result;
  return result;
}

uint64_t sub_69510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_69558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_695CC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12F348);
  __swift_project_value_buffer(v0, qword_12F348);
  return sub_E5914();
}

uint64_t static DownloadEpisodesAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CB90 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12F348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DownloadEpisodesAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t static DownloadEpisodesAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F360, &qword_EE730);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F368, &qword_EE738);
  __chkstk_darwin(v1);
  sub_69904();
  sub_E5744();
  v3._object = 0x80000000000F6EB0;
  v3._countAndFlagsBits = 0xD000000000000013;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F378, &qword_EE768);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_69904()
{
  result = qword_12F370;
  if (!qword_12F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F370);
  }

  return result;
}

uint64_t sub_6997C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

uint64_t sub_699A8(uint64_t *a1, uint64_t *a2)
{

  sub_E51E4();
}

void (*DownloadEpisodesAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_69AB8(uint64_t *a1, uint64_t *a2)
{

  sub_E5514();
}

void (*DownloadEpisodesAppIntent.episodes.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t DownloadEpisodesAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v19 = sub_E5774();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_E5944();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v20 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F380, &qword_EE778);
  sub_E5914();
  sub_E5914();
  (*(v14 + 56))(v12, 0, 1, v13);
  v21 = 0;
  v15 = sub_E5354();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v18, enum case for InputConnectionBehavior.default(_:), v19);
  sub_70530(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t DownloadEpisodesAppIntent.perform()(uint64_t a1)
{
  *(v2 + 56) = a1;
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 64) = v3;
  *(v2 + 72) = *(v3 - 8);
  *(v2 + 80) = swift_task_alloc();
  v4 = sub_E6974();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *v1;

  return _swift_task_switch(sub_6A08C, 0, 0);
}

uint64_t sub_6A08C(uint64_t a1)
{
  v36 = v1;
  sub_E6914();

  v2 = sub_E6964();
  v3 = sub_E74D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[12];
    v34 = v1[13];
    v5 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315138;
    sub_E5504();
    v8 = sub_E7204();
    v10 = v9;

    v11 = sub_23E64(v8, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Received a request to download episodes: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v4 + 8))(v34, v5);
  }

  else
  {
    v13 = v1[12];
    v12 = v1[13];
    v14 = v1[11];

    (*(v13 + 8))(v12, v14);
  }

  sub_E5504();
  v15 = v1[5];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v1[9];
    v18 = v1[10];
    v35 = _swiftEmptyArrayStorage;
    sub_15D58(0, v16, 0);
    v19 = v35;
    v20 = v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v21 = *(v17 + 72);
    do
    {
      sub_6FAC8(v20, v1[10]);
      v22 = *(v18 + 64);
      if (v22)
      {
        v23 = 1;
        v24 = *(v18 + 64);
      }

      else
      {
        v23 = 0;
        v24 = *(v18 + 88);
      }

      v25 = v1[10];
      v26 = v22;
      sub_6FB2C(v25);
      v35 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        sub_15D58((v27 > 1), v28 + 1, 1);
        v19 = v35;
      }

      v19[2] = v28 + 1;
      v29 = &v19[3 * v28];
      v29[4] = v24;
      v29[5] = 0;
      *(v29 + 48) = v23;
      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  v1[16] = v19;
  v30 = swift_task_alloc();
  v1[17] = v30;
  *v30 = v1;
  v30[1] = sub_6A3C8;
  v31 = v1[14];
  v32 = v1[15];

  return sub_6A670(sub_6A670, v19, v31, v32);
}

uint64_t sub_6A3C8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_6A600;
  }

  else
  {
    v2 = sub_6A4F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6A4F8()
{
  v7 = v0;
  OpenAppLocationAppIntent.init()(v6);
  v1 = v6[0];
  v2 = v6[1];
  v3 = v6[2];
  *(v0 + 152) = 9;
  sub_E5514();
  *(v0 + 153) = 2;
  sub_E5514();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  sub_6FB88();
  sub_E5374();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6A600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6A670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a2;
  v4[10] = a1;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6A694, 0, 0);
}

uint64_t sub_6A694()
{
  v0[11] = sub_6FCE0();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6A770;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6A770()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6A8A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6A8A0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_E5B44();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_A4F8();
  *v4 = v0;
  v4[1] = sub_6A9A0;
  v6 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v0 + 9, v3, &type metadata for DownloadEpisodesIntent, v5, v1, v2);
}

uint64_t sub_6A9A0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_705F0;
  }

  else
  {
    v2 = sub_705D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6AAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return _swift_task_switch(sub_6AAF4, 0, 0);
}

uint64_t sub_6AAF4()
{
  v0[11] = sub_70578();
  v0[12] = sub_E5B44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_6ABD0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_6ABD0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_705D4;
  }

  else
  {
    v2 = sub_6AD00;
  }

  return _swift_task_switch(v2, 0, 0);
}