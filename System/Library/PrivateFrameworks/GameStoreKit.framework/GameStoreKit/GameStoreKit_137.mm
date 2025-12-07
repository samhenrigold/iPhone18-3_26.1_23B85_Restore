uint64_t sub_24F3FDA84()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

void *Player.init(with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24E69A5C4(0, &qword_27F21E318, 0x277CCAAC8);
  sub_24E69A5C4(0, &qword_27F235850, 0x277D0C1C8);
  result = sub_24F92BE38();
  if (v3)
  {
    return sub_24E627880(a1, a2);
  }

  if (result)
  {
    sub_24F3FAC70(result, 0, 0, a3);
    return sub_24E627880(a1, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F3FDC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24F92B098();
  [objc_opt_self() playerFromPlayerID_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242850, &qword_24F9F2E20);
  return sub_24F92B798();
}

void sub_24F3FDCA8()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v0 = sub_24F9220D8();
  __swift_project_value_buffer(v0, qword_27F39E8E0);
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "currentLocalPlayer calling GKLocalPlayer.current", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = [v4 currentLocalPlayer];
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v6, v7, "currentLocalPlayer calling GKLocalPlayer.local", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v9 = [v4 local];
  v10 = sub_24F9220B8();
  v11 = sub_24F92BD98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_24E5DD000, v10, v11, "currentLocalPlayer returning the result: %@", v12, 0xCu);
    sub_24E601704(v13, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  if (!v5)
  {
    v15 = v9;
  }

  v16 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242858, &qword_24F9F2E28);
  sub_24F92B798();
}

uint64_t static Player.currentPlayer()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24F3FDFF4;

  return sub_24F3FE354();
}

uint64_t sub_24F3FDFF4(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_24F3FE0F4, 0, 0);
}

uint64_t sub_24F3FE0F4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [v1 internal];

  sub_24F3FAC70(v3, 0, 0, v2);
  v4 = v0[1];

  return v4();
}

uint64_t _s12GameStoreKit6PlayerV23FriendRequestInboxEntryV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24F92CE08() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v14 == v13 && v6 == v11 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24F3FE2C8()
{
  result = qword_27F242820;
  if (!qword_27F242820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242820);
  }

  return result;
}

uint64_t sub_24F3FE370()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "currentLocalPlayer called", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  v6 = sub_24E69A5C4(0, &unk_27F2229D0, 0x277D0C138);
  *v5 = v0;
  v5[1] = sub_24F3FE518;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000014, 0x800000024FA74E40, sub_24F3FDCA8, 0, v6);
}

uint64_t sub_24F3FE518()
{

  return MEMORY[0x2822009F8](sub_24E626BB4, 0, 0);
}

unint64_t sub_24F3FE618()
{
  result = qword_27F242830;
  if (!qword_27F242830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242830);
  }

  return result;
}

unint64_t sub_24F3FE690()
{
  result = qword_27F242838;
  if (!qword_27F242838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242838);
  }

  return result;
}

unint64_t sub_24F3FE6E8()
{
  result = qword_27F242840;
  if (!qword_27F242840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242840);
  }

  return result;
}

unint64_t sub_24F3FE740()
{
  result = qword_27F242848;
  if (!qword_27F242848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242848);
  }

  return result;
}

uint64_t sub_24F3FE794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43646E65697266 && a2 == 0xEA00000000006564;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F3FE91C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
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

uint64_t sub_24F3FE964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double sub_24F3FE9D4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E100, &qword_24F95B9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(v1 + 17);
  if (*(v1 + 16))
  {

    sub_24F926E48();
    v14 = sub_24F926E68();
    v15 = *(v14 - 8);
    v16 = MEMORY[0x277CE1020];
    if (!v13)
    {
      v16 = MEMORY[0x277CE1010];
    }

    (*(*(v14 - 8) + 104))(v9, *v16, v14);
    sub_24F926E68();
    (*(v15 + 56))(v9, 0, 1, v14);
    v17 = sub_24F926E38();

    sub_24EB98570(v9);
    v28 = v17;
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v18 = qword_27F211820;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_27F24F280;
    sub_24F926E98();
    v20 = sub_24F926E68();
    v21 = *(v20 - 8);
    v22 = MEMORY[0x277CE1020];
    if (!v13)
    {
      v22 = MEMORY[0x277CE1010];
    }

    (*(*(v20 - 8) + 104))(v12, *v22, v20);
    sub_24F926E68();
    (*(v21 + 56))(v12, 0, 1, v20);
    sub_24F926E38();

    sub_24EB98570(v12);
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v23 = sub_24F926E88();

    (*(v4 + 8))(v6, v3);
    v28 = v23;
    v29 = 0;
    v30 = 1;
    v31 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
  sub_24E6E97A8();
  sub_24F924E28();
  result = *&v32;
  v25 = v33;
  v26 = v34;
  *a1 = v32;
  *(a1 + 16) = v25;
  *(a1 + 18) = v26;
  return result;
}

unint64_t sub_24F3FEDD8()
{
  result = qword_27F242860;
  if (!qword_27F242860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242868, &qword_24F9F2F28);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242860);
  }

  return result;
}

uint64_t type metadata accessor for InGameBannerRequiredData(uint64_t a1)
{
  result = qword_27F2428A8;
  if (!qword_27F2428A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InGameBannerRequiredData.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData(0) + 24));

  return v1;
}

uint64_t InGameBannerRequiredData.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData(0) + 28));

  return v1;
}

uint64_t InGameBannerRequiredData.image.getter()
{
  v1 = v0 + *(type metadata accessor for InGameBannerRequiredData(0) + 32);
  v2 = *v1;
  sub_24E781610(*v1, *(v1 + 8));
  return v2;
}

uint64_t InGameBannerRequiredData.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData(0) + 36));

  return v1;
}

double InGameBannerRequiredData.playerIDs.getter()
{
  type metadata accessor for InGameBannerRequiredData(0);

  return result;
}

uint64_t InGameBannerRequiredData.clipThumbnailData.getter()
{
  v1 = v0 + *(type metadata accessor for InGameBannerRequiredData(0) + 48);
  v2 = *v1;
  sub_24E781610(*v1, *(v1 + 8));
  return v2;
}

uint64_t InGameBannerRequiredData.imageSymbolName.getter()
{
  v1 = *(v0 + *(type metadata accessor for InGameBannerRequiredData(0) + 52));

  return v1;
}

uint64_t InGameBannerRequiredData.init(useCase:player:title:message:image:identifier:game:playerIDs:clipThumbnailData:imageSymbolName:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = *a1;
  v23 = type metadata accessor for InGameBannerRequiredData(0);
  sub_24E6009C8(a2, &a9[v23[5]], &unk_27F23E1F0, &unk_24F9549C0);
  v24 = &a9[v23[6]];
  *v24 = a3;
  v24[1] = a4;
  v25 = &a9[v23[7]];
  *v25 = a5;
  v25[1] = a6;
  v26 = &a9[v23[8]];
  *v26 = a7;
  v26[1] = a8;
  v27 = &a9[v23[9]];
  *v27 = a10;
  v27[1] = a11;
  result = sub_24E6009C8(a12, &a9[v23[10]], &qword_27F216FE0, &unk_24F959350);
  *&a9[v23[11]] = a13;
  v29 = &a9[v23[12]];
  *v29 = a14;
  v29[1] = a15;
  v30 = &a9[v23[13]];
  *v30 = a16;
  v30[1] = a17;
  return result;
}

unint64_t InGameBannerRequiredData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F945E30;
  *(inited + 32) = 0x65736143657375;
  *(inited + 40) = 0xE700000000000000;
  v3 = *v1;
  *(inited + 72) = &type metadata for AccessPointUseCase;
  v4 = sub_24F3FF668();
  *(inited + 48) = v3;
  *(inited + 80) = v4;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v5 = type metadata accessor for InGameBannerRequiredData(0);
  v6 = v5[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 136) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E60169C(&v1[v6], boxed_opaque_existential_1, &unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 144) = 0x656C746974;
  *(inited + 152) = 0xE500000000000000;
  v8 = &v1[v5[6]];
  v9 = MEMORY[0x277D22580];
  v10 = *v8;
  v40 = v8[1];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 168) = v40;
  *(inited + 200) = 0x6567617373656DLL;
  *(inited + 208) = 0xE700000000000000;
  v11 = &v1[v5[7]];
  v12 = *v11;
  v13 = v11[1];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 240) = v14;
  v15 = v14;
  v36 = v14;
  v16 = sub_24EA14AE4(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10, MEMORY[0x277D225D8]);
  *(inited + 216) = v12;
  *(inited + 224) = v13;
  *(inited + 248) = v16;
  *(inited + 256) = 0x6567616D69;
  *(inited + 264) = 0xE500000000000000;
  v17 = &v1[v5[8]];
  v18 = *v17;
  v19 = v17[1];
  v38 = v19;
  v39 = *v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242878, &qword_24F9F2F30);
  *(inited + 296) = v20;
  v21 = sub_24F3FF6BC();
  *(inited + 272) = v18;
  *(inited + 280) = v19;
  *(inited + 304) = v21;
  *(inited + 312) = 0x696669746E656469;
  *(inited + 320) = 0xEA00000000007265;
  v22 = &v1[v5[9]];
  v23 = *v22;
  v37 = v22[1];
  *(inited + 352) = v15;
  *(inited + 360) = v16;
  *(inited + 328) = v23;
  *(inited + 336) = v37;
  *(inited + 368) = 1701667175;
  *(inited + 376) = 0xE400000000000000;
  v24 = v5[10];
  *(inited + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 416) = sub_24E736C00();
  v25 = __swift_allocate_boxed_opaque_existential_1((inited + 384));
  sub_24E60169C(&v1[v24], v25, &qword_27F216FE0, &unk_24F959350);
  *(inited + 424) = 0x4449726579616C70;
  *(inited + 432) = 0xE900000000000073;
  v26 = *&v1[v5[11]];
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225240, &qword_24F974E70);
  v27 = sub_24EA14A34();
  *(inited + 440) = v26;
  *(inited + 472) = v27;
  *(inited + 480) = 0xD000000000000011;
  *(inited + 488) = 0x800000024FA74E60;
  v28 = &v1[v5[12]];
  v29 = *v28;
  v30 = v28[1];
  *(inited + 520) = v20;
  *(inited + 528) = v21;
  *(inited + 496) = v29;
  *(inited + 504) = v30;
  *(inited + 536) = 0x6D79536567616D69;
  *(inited + 544) = 0xEF656D614E6C6F62;
  v31 = &v1[v5[13]];
  v32 = *v31;
  v33 = v31[1];
  *(inited + 576) = v36;
  *(inited + 584) = v16;
  *(inited + 552) = v32;
  *(inited + 560) = v33;

  sub_24E781610(v39, v38);

  sub_24E781610(v29, v30);

  v34 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v34;
  return result;
}

unint64_t sub_24F3FF668()
{
  result = qword_27F242870;
  if (!qword_27F242870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242870);
  }

  return result;
}

unint64_t sub_24F3FF6BC()
{
  result = qword_27F242880;
  if (!qword_27F242880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242878, &qword_24F9F2F30);
    sub_24F3FF740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242880);
  }

  return result;
}

unint64_t sub_24F3FF740()
{
  result = qword_27F242888;
  if (!qword_27F242888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242888);
  }

  return result;
}

uint64_t sub_24F3FF794(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x4449726579616C70;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x6D79536567616D69;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x696669746E656469;
    if (a1 != 5)
    {
      v7 = 1701667175;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65736143657375;
    v2 = 0x656C746974;
    v3 = 0x6567617373656DLL;
    if (a1 != 3)
    {
      v3 = 0x6567616D69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726579616C70;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F3FF8DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F400C50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3FF904(uint64_t a1)
{
  v2 = sub_24F400638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3FF940(uint64_t a1)
{
  v2 = sub_24F400638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InGameBannerRequiredData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242890, &qword_24F9F2F38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F400638();
  sub_24F92D128();
  LOBYTE(v15) = *v3;
  v17 = 0;
  sub_24E636B10();
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for InGameBannerRequiredData(0);
    LOBYTE(v15) = 1;
    type metadata accessor for Player(0);
    sub_24E7B74F8(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CCF8();
    LOBYTE(v15) = 2;
    sub_24F92CD08();
    LOBYTE(v15) = 3;
    sub_24F92CCA8();
    v10 = &v3[v9[8]];
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v17 = 4;
    sub_24E781610(v15, v11);
    sub_24E86E0DC();
    sub_24F92CCF8();
    sub_24E71CBAC(v15, v16);
    LOBYTE(v15) = 5;
    sub_24F92CCA8();
    LOBYTE(v15) = 6;
    type metadata accessor for Game(0);
    sub_24E7B74F8(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CCF8();
    v15 = *&v3[v9[11]];
    v17 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24F352CA8();
    sub_24F92CCF8();
    v12 = &v3[v9[12]];
    v13 = v12[1];
    v15 = *v12;
    v16 = v13;
    v17 = 8;
    sub_24E781610(v15, v13);
    sub_24F92CCF8();
    sub_24E71CBAC(v15, v16);
    LOBYTE(v15) = 9;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t InGameBannerRequiredData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2428A0, &qword_24F9F2F40);
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = v35 - v10;
  v12 = type metadata accessor for InGameBannerRequiredData(0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F400638();
  v39 = v11;
  v16 = v41;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v37 = v5;
  v41 = v14;
  v44 = 0;
  sub_24E636FAC();
  sub_24F92CC68();
  v17 = v41;
  *v41 = v43;
  type metadata accessor for Player(0);
  LOBYTE(v43) = 1;
  sub_24E7B74F8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC18();
  sub_24E6009C8(v8, &v17[v12[5]], &unk_27F23E1F0, &unk_24F9549C0);
  LOBYTE(v43) = 2;
  v18 = sub_24F92CC28();
  v36 = v12;
  v19 = &v17[v12[6]];
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v43) = 3;
  v35[2] = 0;
  v21 = sub_24F92CBC8();
  v22 = &v17[v12[7]];
  *v22 = v21;
  v22[1] = v23;
  v44 = 4;
  v24 = sub_24E86F160();
  sub_24F92CC18();
  *&v17[v12[8]] = v43;
  LOBYTE(v43) = 5;
  v25 = sub_24F92CBC8();
  v35[1] = v24;
  v26 = &v17[v12[9]];
  *v26 = v25;
  v26[1] = v27;
  type metadata accessor for Game(0);
  LOBYTE(v43) = 6;
  sub_24E7B74F8(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v28 = v37;
  sub_24F92CC18();
  sub_24E6009C8(v28, &v17[v12[10]], &qword_27F216FE0, &unk_24F959350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v44 = 7;
  sub_24E7C1498();
  sub_24F92CC18();
  *&v17[v36[11]] = v43;
  v44 = 8;
  sub_24F92CC18();
  *&v41[v36[12]] = v43;
  LOBYTE(v43) = 9;
  v29 = sub_24F92CBC8();
  v31 = v30;
  (*(v9 + 8))(v39, v40);
  v32 = v41;
  v33 = &v41[v12[13]];
  *v33 = v29;
  v33[1] = v31;
  sub_24E732AD0(v32, v38);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_24F40068C(v32);
}

unint64_t sub_24F400638()
{
  result = qword_27F242898;
  if (!qword_27F242898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242898);
  }

  return result;
}

uint64_t sub_24F40068C(uint64_t a1)
{
  v2 = type metadata accessor for InGameBannerRequiredData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4006FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F400854(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24F400998(uint64_t a1)
{
  sub_24F400AE4(319, &qword_27F214988, type metadata accessor for Player);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F21F920, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_24F400AE4(319, &qword_27F21ADC8, type metadata accessor for Game);
        if (v4 <= 0x3F)
        {
          sub_24E6BCB54(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F400AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F400B4C()
{
  result = qword_27F2428B8;
  if (!qword_27F2428B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428B8);
  }

  return result;
}

unint64_t sub_24F400BA4()
{
  result = qword_27F2428C0;
  if (!qword_27F2428C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428C0);
  }

  return result;
}

unint64_t sub_24F400BFC()
{
  result = qword_27F2428C8;
  if (!qword_27F2428C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428C8);
  }

  return result;
}

uint64_t sub_24F400C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA74E60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D79536567616D69 && a2 == 0xEF656D614E6C6F62)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24F400FBC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  sub_24F925AF8();
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetWidth(v11);
  sub_24F925B18();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetWidth(v12);
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetHeight(v13);
  sub_24F925B18();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_24F925B18();
  return sub_24F925AE8();
}

double sub_24F40108C@<D0>(uint64_t a1@<X8>)
{
  sub_24F925B58();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24F4010F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24EA092C8;
}

uint64_t sub_24F401180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401D48();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F4011E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401D48();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F401248(uint64_t a1)
{
  v2 = sub_24F401D48();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24F401294(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  sub_24F925AF8();
  v11.origin.x = a3;
  v11.origin.y = a4;
  v11.size.width = a5;
  v11.size.height = a6;
  CGRectGetWidth(v11);
  sub_24F925B18();
  v12.origin.x = a3;
  v12.origin.y = a4;
  v12.size.width = a5;
  v12.size.height = a6;
  CGRectGetWidth(v12);
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  CGRectGetHeight(v13);
  sub_24F925B18();
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetHeight(v14);
  sub_24F925B18();
  return sub_24F925AE8();
}

double sub_24F40135C@<D0>(uint64_t a1@<X8>)
{
  sub_24F925B58();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24F4013C8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24F25EEFC;
}

uint64_t sub_24F401450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401CC8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F4014B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F401CC8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F401518(uint64_t a1)
{
  v2 = sub_24F401CC8();

  return MEMORY[0x282133738](a1, v2);
}

double sub_24F401564@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = qword_24F9F3530[SBYTE1(a1)];
  v12 = (a1 & 0x10000) == 0;
  sub_24F4016A0(a1 & 0x1FF01, &v7);
  v15 = v9;
  v16 = v10;
  v17[0] = v11[0];
  *(v17 + 10) = *(v11 + 10);
  v13 = v7;
  v14 = v8;
  *(v19 + 10) = *(v11 + 10);
  v18[2] = v9;
  v18[3] = v10;
  v19[0] = v11[0];
  v18[0] = v7;
  v18[1] = v8;
  sub_24E60169C(&v13, v6, &qword_27F2428D0, &unk_24F9F31E0);
  sub_24E601704(v18, &qword_27F2428D0, &unk_24F9F31E0);
  v4 = v12;
  *a2 = 0;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0x3FF8000000000000;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 88) = v15;
  *(a2 + 104) = v16;
  *(a2 + 120) = v17[0];
  *(a2 + 130) = *(v17 + 10);
  *(a2 + 56) = v13;
  result = *&v14;
  *(a2 + 72) = v14;
  return result;
}

void sub_24F4016A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1 >> 8;
  v5 = sub_24F926C98();
  v6 = qword_24F9F3530[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  v8 = sub_24F926D08();

  *(v7 + 32) = v8;
  sub_24F926C88();
  v9 = sub_24F926D08();

  *(v7 + 40) = v9;
  *(v7 + 48) = sub_24F926C98();
  sub_24F927828();
  if ((v2 & 1) == 0)
  {
    sub_24F9278B8();
  }

  MEMORY[0x25304CD70](v7);
  sub_24F923BD8();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = qword_24F9F3530[v4];
  *&v19[0] = v6;
  *(&v19[0] + 1) = v26;
  v19[1] = v27;
  *v20 = v28;
  *&v20[16] = v13;
  *&v20[24] = 256;
  *&v18[48] = *&v20[10];
  *&v18[38] = v28;
  *&v18[22] = v27;
  *&v18[6] = v19[0];
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = 256;
  v14 = *v18;
  v15 = *&v18[16];
  v16 = *&v18[32];
  *(a2 + 74) = *&v18[48];
  *(a2 + 58) = v16;
  *(a2 + 42) = v15;
  *(a2 + 26) = v14;
  v21[0] = v6;
  v21[1] = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = 256;

  sub_24E60169C(v19, v17, &qword_27F2428D8, &qword_24F9F31F0);
  sub_24E601704(v21, &qword_27F2428D8, &qword_24F9F31F0);
}

double sub_24F4018CC@<D0>(uint64_t a1@<X8>)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_24F401564(v2 | (v1[1] << 8) | *v1, a1);
}

unint64_t sub_24F401934()
{
  result = qword_27F2428E0;
  if (!qword_27F2428E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2428E8, &qword_24F9F3258);
    sub_24E602068(&qword_27F2428F0, &qword_27F2428F8, qword_24F9F3260, MEMORY[0x277CDF510]);
    sub_24E602068(&qword_27F242900, &qword_27F2428D0, &unk_24F9F31E0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2428E0);
  }

  return result;
}

unint64_t sub_24F401A1C()
{
  result = qword_27F242908;
  if (!qword_27F242908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242908);
  }

  return result;
}

unint64_t sub_24F401A74()
{
  result = qword_27F242910;
  if (!qword_27F242910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242910);
  }

  return result;
}

unint64_t sub_24F401B10()
{
  result = qword_27F242928;
  if (!qword_27F242928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242928);
  }

  return result;
}

unint64_t sub_24F401B68()
{
  result = qword_27F242930;
  if (!qword_27F242930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242930);
  }

  return result;
}

unint64_t sub_24F401C04()
{
  result = qword_27F242948;
  if (!qword_27F242948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242948);
  }

  return result;
}

unint64_t sub_24F401C5C()
{
  result = qword_27F242950;
  if (!qword_27F242950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242950);
  }

  return result;
}

unint64_t sub_24F401CC8()
{
  result = qword_27F242958;
  if (!qword_27F242958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242958);
  }

  return result;
}

unint64_t sub_24F401D48()
{
  result = qword_27F242960;
  if (!qword_27F242960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242960);
  }

  return result;
}

uint64_t sub_24F401DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialIntegration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SocialIntegrationContactsListPageIntent.game.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SocialIntegrationContactsListPageIntent(0) + 20);

  return sub_24E736938(v3, a1);
}

uint64_t type metadata accessor for SocialIntegrationContactsListPageIntent(uint64_t a1)
{
  result = qword_27F2429B8;
  if (!qword_27F2429B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.game.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SocialIntegrationContactsListPageIntent(0) + 20);

  return sub_24F401F50(a1, v3);
}

uint64_t sub_24F401F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double SocialIntegrationContactsListPageIntent.activeCalls.getter()
{
  type metadata accessor for SocialIntegrationContactsListPageIntent(0);

  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.activeCalls.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SocialIntegrationContactsListPageIntent(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.includeGameCenterOptions.setter(char a1)
{
  result = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.isMoltresEnabled.setter(char a1)
{
  result = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SocialIntegrationContactsListPageIntent.init(socialIntegration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  v5 = v4[5];
  v6 = type metadata accessor for Game(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v8 = v4[6];
  sub_24F3EA30C(a1, a2);
  sub_24E7D0014(a2 + v5);
  result = (v7)(a2 + v5, 1, 1, v6);
  *(a2 + v8) = 0;
  *(a2 + v4[7]) = 0;
  *(a2 + v4[8]) = 0;
  return result;
}

unint64_t SocialIntegrationContactsListPageIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000024FA74E80;
  *(inited + 72) = type metadata accessor for SocialIntegration(0);
  *(inited + 80) = sub_24F403034(&qword_27F242968, type metadata accessor for SocialIntegration, &protocol conformance descriptor for SocialIntegration);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F40307C(v2, boxed_opaque_existential_1, type metadata accessor for SocialIntegration);
  *(inited + 88) = 1701667175;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  v7 = v6[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 136) = sub_24E736C00();
  v8 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E736938(v2 + v7, v8);
  *(inited + 144) = 0x6143657669746361;
  *(inited + 152) = 0xEB00000000736C6CLL;
  v9 = *(v2 + v6[6]);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E48, &qword_24F9CBC60);
  v10 = sub_24F125CF8();
  *(inited + 160) = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD000000000000018;
  *(inited + 208) = 0x800000024FA6CEA0;
  v11 = *(v2 + v6[7]);
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v13;
  *(inited + 216) = v11;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v14 = *(v2 + v6[8]);
  *(inited + 296) = v12;
  *(inited + 304) = v13;
  *(inited + 272) = v14;

  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

unint64_t sub_24F40255C()
{
  v1 = *v0;
  v2 = 1701667175;
  v3 = 0x6143657669746361;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_24F402604@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F403568(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F40262C(uint64_t a1)
{
  v2 = sub_24F402F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F402668(uint64_t a1)
{
  v2 = sub_24F402F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SocialIntegrationContactsListPageIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242970, &qword_24F9F3588);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F402F44();
  sub_24F92D128();
  v14 = 0;
  type metadata accessor for SocialIntegration(0);
  sub_24F403034(&qword_27F242980, type metadata accessor for SocialIntegration, &protocol conformance descriptor for SocialIntegration);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
    v13 = 1;
    type metadata accessor for Game(0);
    sub_24F403034(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CCF8();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E38, &qword_24F9F3580);
    sub_24F402F98(&qword_27F242988, &qword_27F242990, &protocol conformance descriptor for ActiveCall, MEMORY[0x277D83948]);
    sub_24F92CCF8();
    v11[14] = 3;
    sub_24F92CD18();
    v11[13] = 4;
    sub_24F92CD18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SocialIntegrationContactsListPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for SocialIntegration(0);
  MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242998, &qword_24F9F3590);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for Game(0);
  v16 = *(*(v15 - 8) + 56);
  v35 = v14;
  v17 = v12;
  v16(&v12[v14], 1, 1, v15);
  v18 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24F402F44();
  v32 = v9;
  v19 = v34;
  sub_24F92D108();
  if (v19)
  {
    v22 = v35;
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_24E7D0014(v17 + v22);
  }

  else
  {
    v20 = v30;
    v42 = 0;
    sub_24F403034(&qword_27F2429A0, type metadata accessor for SocialIntegration, &protocol conformance descriptor for SocialIntegration);
    v21 = v31;
    sub_24F92CC68();
    sub_24F3EA30C(v21, v17);
    v41 = 1;
    sub_24F403034(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CC18();
    sub_24F401F50(v5, v17 + v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E38, &qword_24F9F3580);
    v40 = 2;
    sub_24F402F98(&qword_27F2429A8, &qword_27F2429B0, &protocol conformance descriptor for ActiveCall, MEMORY[0x277D83978]);
    sub_24F92CC18();
    *(v17 + v10[6]) = v37;
    v39 = 3;
    v23 = v17;
    *(v17 + v10[7]) = sub_24F92CC38() & 1;
    v38 = 4;
    v25 = v32;
    v24 = v33;
    v26 = sub_24F92CC38();
    (*(v20 + 8))(v25, v24);
    *(v23 + v10[8]) = v26 & 1;
    sub_24F40307C(v23, v29, type metadata accessor for SocialIntegrationContactsListPageIntent);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_24F4030E4(v23, type metadata accessor for SocialIntegrationContactsListPageIntent);
  }
}

unint64_t sub_24F402F44()
{
  result = qword_27F242978;
  if (!qword_27F242978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242978);
  }

  return result;
}

uint64_t sub_24F402F98(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E38, &qword_24F9F3580);
    sub_24F403034(a2, type metadata accessor for ActiveCall, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F403034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F40307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4030E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F403158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialIntegration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
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

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24F403290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SocialIntegration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F4033A4(uint64_t a1)
{
  type metadata accessor for SocialIntegration(319);
  if (v1 <= 0x3F)
  {
    sub_24E737854(319);
    if (v2 <= 0x3F)
    {
      sub_24F125C18(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F403464()
{
  result = qword_27F2429C8;
  if (!qword_27F2429C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2429C8);
  }

  return result;
}

unint64_t sub_24F4034BC()
{
  result = qword_27F2429D0;
  if (!qword_27F2429D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2429D0);
  }

  return result;
}

unint64_t sub_24F403514()
{
  result = qword_27F2429D8;
  if (!qword_27F2429D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2429D8);
  }

  return result;
}

uint64_t sub_24F403568(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000024FA74E80 == a2;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6143657669746361 && a2 == 0xEB00000000736C6CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA6CEA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F403738@<X0>(char a1@<W0>, void *a2@<X8>)
{
  type metadata accessor for ArticlePage(0);
  sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v18 != 255)
  {
    if (v18)
    {
      sub_24E683B84(v17, v18);
    }

    else
    {
      v5 = *&v17[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_editorialStoryCard];

      sub_24E683B84(v17, v18);
      if (v5)
      {
        v6 = *(v2 + 104);
        v7 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
        *(a2 + v7[8]) = 1;
        *a2 = v5;
        a2[1] = v6;
        *(a2 + v7[7]) = a1;
        v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_lockup);
        type metadata accessor for LockupViewModel(0);
        swift_allocObject();

        swift_retain_n();
        v9 = sub_24F41AF18(v8, 2, 0, 0, 1, 5, v6);
        v10 = a2 + v7[6];
        v11 = _s9ViewModelVMa(0);
        v12 = v11[6];
        v13 = type metadata accessor for IconRowViewModel(0);
        (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
        *v10 = 4 * (v9 == 0);
        *(v10 + 1) = v9;
        v14 = &v10[v11[7]];
        *v14 = 0;
        *(v14 + 1) = 0;
        *&v10[v11[8]] = 0;
        return (*(*(v7 - 1) + 56))(a2, 0, 1, v7);
      }
    }
  }

  v16 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

void sub_24F403A04(uint64_t a1, double a2, double a3)
{
  if (a1)
  {

    v7 = sub_24E7E9768(v5, v6, a2, a3);
    if (v7)
    {
      v8 = v7;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if (!v10)
      {
        type metadata accessor for ArtworkLoader();
        sub_24F928FD8();
        sub_24F92A758();
        v9 = swift_allocObject();
        swift_weakInit();

        ArtworkLoader.fetchArtworkFromCache(using:closestMatch:completionHandler:)(v8, 1, sub_24F4057D8, v9);

        return;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if ((v10 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
  }
}

uint64_t sub_24F403C14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F403C88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

double sub_24F403CFC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for ArticlePage(0);
    sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    sub_24F24D234(a1, a2, a3, 0);

LABEL_6:
    sub_24F9230A8();
    v15 = (v4 + *(*v4 + 184));
    v11 = *v15;
    v12 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    return sub_24E824448(v11, v12);
  }

  if (a4 != 1)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for ArticlePage(0);
    sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    swift_getKeyPath();

    goto LABEL_6;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for ArticlePage(0);
  sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
  v8 = swift_getKeyPath();
  MEMORY[0x28223BE20](v8);
  swift_getKeyPath();

  sub_24E5FCA4C(a2, a3);
  v9 = a1;
  sub_24F9230A8();
  v10 = (v4 + *(*v4 + 184));
  v11 = *v10;
  v12 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  return sub_24E824448(v11, v12);
}

double sub_24F404120(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for GenericPage(0);
    sub_24F405744(&qword_27F235598, type metadata accessor for GenericPage);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    sub_24F24D234(a1, a2, a3, 0);

LABEL_6:
    sub_24F9230A8();
    v15 = (v4 + *(*v4 + 184));
    v11 = *v15;
    v12 = v15[1];
    *v15 = 0;
    v15[1] = 0;
    return sub_24E824448(v11, v12);
  }

  if (a4 != 1)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for GenericPage(0);
    sub_24F405744(&qword_27F235598, type metadata accessor for GenericPage);
    v14 = swift_getKeyPath();
    MEMORY[0x28223BE20](v14);
    swift_getKeyPath();

    goto LABEL_6;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for GenericPage(0);
  sub_24F405744(&qword_27F235598, type metadata accessor for GenericPage);
  v8 = swift_getKeyPath();
  MEMORY[0x28223BE20](v8);
  swift_getKeyPath();

  sub_24E5FCA4C(a2, a3);
  v9 = a1;
  sub_24F9230A8();
  v10 = (v4 + *(*v4 + 184));
  v11 = *v10;
  v12 = v10[1];
  *v10 = a2;
  v10[1] = a3;
  return sub_24E824448(v11, v12);
}

char *sub_24F404558(uint64_t *a1, uint64_t *a2)
{

  __swift_destroy_boxed_opaque_existential_1(v2 + 3);
  __swift_destroy_boxed_opaque_existential_1(v2 + 8);

  v5 = qword_27F239B60;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680, &unk_24F990A20);
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  v7 = *(*v2 + 168);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v8 - 8) + 8))(&v2[v7], v8);
  sub_24E94E128(&v2[*(*v2 + 176)]);
  sub_24E824448(*&v2[*(*v2 + 184)], *&v2[*(*v2 + 184) + 8]);

  return v2;
}

uint64_t sub_24F4046B8()
{
  type metadata accessor for ArticlePage(0);
  sub_24F405744(&qword_27F216890, type metadata accessor for ArticlePage);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v4 != 255)
  {
    if (v4)
    {
      sub_24E683B84(v3, v4);
    }

    else
    {
      v0 = *&v3[OBJC_IVAR____TtC12GameStoreKit11ArticlePage_card];

      sub_24E683B84(v3, v4);
      if (v0)
      {
        v1 = *(v0 + 32);

        return v1;
      }
    }
  }

  return 0;
}

void sub_24F404820(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F4048A0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F40491C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F40499C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

void sub_24F404A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!a4 && a1)
    {
      v7 = a1;
      v8 = sub_24F926DD8();
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v8;

      sub_24F9230A8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (v9)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F9230A8();
    }
  }
}

double sub_24F404B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v24[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  LODWORD(a1) = *(a1 + 24);
  result = sub_24F403CFC(v14, v15, v16, a1);
  if (a1)
  {
    return result;
  }

  sub_24F403738(2, v13);
  v18 = type metadata accessor for ArticlePageEditorialStoryCardViewModel(0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v13, 1, v18) == 1)
  {
    sub_24F4056AC(v13);
  }

  else if (*(*v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo))
  {
    sub_24E68507C(v13);
  }

  else
  {
    v21 = *(*v13 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork);

    sub_24E68507C(v13);
    if (v21)
    {
LABEL_12:

      LOBYTE(v20) = 1;
      goto LABEL_13;
    }
  }

  sub_24F403738(2, v10);
  if (v19(v10, 1, v18) == 1)
  {
    sub_24F4056AC(v10);
    LOBYTE(v20) = 0;
    goto LABEL_13;
  }

  v20 = *(*v10 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo);

  sub_24E68507C(v10);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_24F403738(3, v7);
  if (v19(v7, 1, v18) == 1)
  {
    sub_24F4056AC(v7);
  }

  else if (*(*v7 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video))
  {
    sub_24E68507C(v7);
  }

  else
  {
    v23 = *(*v7 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork);

    sub_24E68507C(v7);
    if (v23)
    {
      goto LABEL_24;
    }
  }

  sub_24F403738(3, v4);
  if (v19(v4, 1, v18) == 1)
  {
    sub_24F4056AC(v4);
    goto LABEL_20;
  }

  v22 = *(*v4 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video);

  sub_24E68507C(v4);
  if (v22)
  {
LABEL_24:

    return result;
  }

LABEL_20:
  if ((v20 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v24[15] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v24[14] = 1;

      sub_24F9230A8();
    }
  }

  return result;
}

char *sub_24F404F28(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_24F40539C(a1, v14, a3, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t sub_24F405048()
{
  v1 = qword_27F2429E0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698, &unk_24F990A50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27F2429E8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

double sub_24F405108()
{
  v0 = sub_24F404558(&qword_27F22C6A8, &unk_24F9F3880);
  v1 = qword_27F2429E0;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698, &unk_24F990A50);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = qword_27F2429E8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for ArticlePageViewModel(uint64_t a1)
{
  result = qword_27F2429F0;
  if (!qword_27F2429F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F40526C(uint64_t a1)
{
  sub_24F405338(319);
  if (v1 <= 0x3F)
  {
    sub_24EA22D84();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24F405338(uint64_t a1)
{
  if (!qword_27F242A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C6A0, &unk_24F990A60);
    v1 = sub_24F9230B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F242A00);
    }
  }
}

char *sub_24F40539C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a7;
  v33 = a3;
  v34 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C698, &unk_24F990A50);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v30 - v22;
  (*(v16 + 32))(&v30 - v22, a2, a6, v21);
  v24 = swift_allocObject();
  v25 = qword_27F2429E0;
  v37[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A0, &unk_24F990A60);
  sub_24F923058();
  (*(v13 + 32))(&v24[v25], v15, v12);
  v26 = qword_27F2429E8;
  LOBYTE(v37[0]) = 0;
  sub_24F923058();
  (*(v31 + 32))(&v24[v26], v11, v32);
  v27 = v33;
  sub_24E615E00(v33, v37);
  (*(v16 + 16))(v19, v23, a6);
  v28 = sub_24F11C64C(v34, v19, v37, v35, v24, a6, v36);
  __swift_destroy_boxed_opaque_existential_1(v27);
  (*(v16 + 8))(v23, a6);
  return v28;
}

uint64_t sub_24F4056AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168F8, &qword_24F943500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24F405730(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24F405744(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_24F4057A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F4057F4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F927748();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F4058B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F927748();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayerGroupView(uint64_t a1)
{
  result = qword_27F242A08;
  if (!qword_27F242A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4059A4(uint64_t a1)
{
  sub_24F405A50(319);
  if (v1 <= 0x3F)
  {
    sub_24F927748();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F405A50(uint64_t a1)
{
  if (!qword_27F214D28)
  {
    type metadata accessor for PlayerAvatar(255);
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F214D28);
    }
  }
}

void sub_24F405AC4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a1)
  {
    v13 = a3 + 32 * a1;
    v14 = *(v13 + 32);
    v15 = *(v13 + 40);
    sub_24F407F08(a2, v12, type metadata accessor for PlayerAvatar);
    LOBYTE(v19[0]) = 7;
    sub_24F8319B8(v12, v19, a4);
    *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A60, &qword_24F9F3A88) + 36)) = 256;
    sub_24F927618();
    sub_24F9238C8();
    v16 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A50, &qword_24F9F3A80) + 36));
    v17 = v19[1];
    *v16 = v19[0];
    v16[1] = v17;
    v16[2] = v19[2];
    v18 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A38, &qword_24F9F3A78) + 36));
    *v18 = v14 * a5;
    v18[1] = v15 * a5;
    return;
  }

  __break(1u);
}

uint64_t sub_24F405C6C@<X0>(char *a1@<X1>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A18, &qword_24F9F3A38);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v61 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A20, &qword_24F9F3A40);
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A28, &qword_24F9F3A48);
  MEMORY[0x28223BE20](v60);
  v13 = (&v54 - v12);
  sub_24F923998();
  v15 = v14;
  sub_24F923998();
  v17 = v16;
  sub_24F923998();
  v19 = v18;
  if (v15 != v17)
  {
    sub_24F923998();
    if (v20 < v19)
    {
      v19 = v20;
    }
  }

  v21 = type metadata accessor for PlayerGroupView(0);
  v22 = v19 / *&a1[v21[7]];
  sub_24F4076A0();
  v56 = v23;
  *v13 = sub_24F9275A8();
  v13[1] = v24;
  v57 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A30, &qword_24F9F3A50) + 44);
  v25 = *(a1 + 1);
  sub_24F927618();
  sub_24F9238C8();
  v26 = v70;
  v27 = v71;
  v28 = v72;
  v58 = v13;
  v29 = v73;
  v55 = v74;
  v54 = v75;
  LOBYTE(v66) = v71;
  v67 = v73;
  v30 = v21[6];
  v31 = *(v7 + 36);
  v32 = sub_24F927748();
  (*(*(v32 - 8) + 16))(&v11[v31], &a1[v30], v32);
  *v11 = v25;
  *(v11 + 1) = v26;
  v11[16] = v27;
  *(v11 + 17) = *v69;
  *(v11 + 5) = *&v69[3];
  *(v11 + 3) = v28;
  v11[32] = v29;
  *(v11 + 33) = *v68;
  *(v11 + 9) = *&v68[3];
  v33 = v54;
  *(v11 + 5) = v55;
  *(v11 + 6) = v33;
  *(v11 + 28) = 256;
  sub_24E6B7C48(*&a1[v21[8]], *a1);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_24F407364(v35, v37, v39);
  v41 = v40;
  swift_unknownObjectRelease();
  v66 = v41;
  swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v56;
  *(v42 + 24) = v22;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_24F407B80;
  *(v43 + 24) = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A2E0, &qword_24F94DD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A38, &qword_24F9F3A78);
  sub_24E602068(&qword_27F21A2F0, &qword_27F21A2E0, &qword_24F94DD58, MEMORY[0x277D83980]);
  sub_24F407BC4();
  v44 = v61;
  sub_24F927228();
  v45 = v59;
  sub_24F407DEC(v11, v59);
  v47 = v62;
  v46 = v63;
  v48 = *(v63 + 16);
  v49 = v64;
  v48(v62, v44, v64);
  v50 = v57;
  sub_24F407DEC(v45, v57);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A68, &qword_24F9F3A90);
  v48((v50 + *(v51 + 48)), v47, v49);
  v52 = *(v46 + 8);
  v52(v44, v49);
  sub_24F407E5C(v11);
  v52(v47, v49);
  sub_24F407E5C(v45);

  sub_24E602068(&qword_27F242A70, &qword_27F242A28, &qword_24F9F3A48, MEMORY[0x277CE11A8]);
  result = sub_24F927158();
  *v65 = result;
  return result;
}

uint64_t sub_24F406238@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24F407F08(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayerGroupView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24F406428(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_24F40648C;
  a2[1] = v7;
  return result;
}

uint64_t sub_24F406338()
{
  v1 = (type metadata accessor for PlayerGroupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F927748();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F406428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40648C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PlayerGroupView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F405C6C(v4, a1);
}

void sub_24F40650C(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378, &qword_24F94DDA0);
  MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for PlayerAvatar(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_24F407F08(v13, v15 + v16, type metadata accessor for PlayerAvatar);
      v17 = v6;
      sub_24E6009C8(v15, v6, &qword_27F21A378, &qword_24F94DDA0);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A78, &qword_24F9F3A98);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_24E6009C8(v17, v9, &qword_27F21A378, &qword_24F94DDA0);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void sub_24F406868(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = MEMORY[0x277D84F90] + 32;
    while (1)
    {
      *&v21[0] = v3;
      sub_24E643A9C(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AA8, &qword_24F9F3AB8);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 40;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0;
        }

        v6 = v12 + 40 * v13;
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      *(v6 + 32) = v25;
      *v6 = v16;
      *(v6 + 16) = v17;
      v6 += 40;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v15 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v15)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v20;
  }
}

void sub_24F406A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      *&v29[0] = v3;
      sub_24ECEB97C(v5, v29 + 8);
      v39 = v29[8];
      v40 = v29[9];
      v41[0] = v30[0];
      *(v41 + 10) = *(v30 + 10);
      v35 = v29[4];
      v36 = v29[5];
      v37 = v29[6];
      v38 = v29[7];
      v31 = v29[0];
      v32 = v29[1];
      v33 = v29[2];
      v34 = v29[3];
      if (!v4)
      {
        v7 = *(v2 + 3);
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A80, &qword_24F9FAAB0);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 192;
        *(v10 + 2) = v9;
        *(v10 + 3) = 2 * v11;
        v12 = v10 + 32;
        v13 = *(v2 + 3) >> 1;
        v14 = 192 * v13;
        if (*(v2 + 2))
        {
          v15 = v2 + 32;
          if (v10 != v2 || v12 >= &v15[v14])
          {
            memmove(v10 + 32, v15, 192 * v13);
          }

          *(v2 + 2) = 0;
        }

        v6 = &v12[v14];
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      v17 = v31;
      v18 = v32;
      v19 = v34;
      *(v6 + 2) = v33;
      *(v6 + 3) = v19;
      *v6 = v17;
      *(v6 + 1) = v18;
      v20 = v35;
      v21 = v36;
      v22 = v38;
      *(v6 + 6) = v37;
      *(v6 + 7) = v22;
      *(v6 + 4) = v20;
      *(v6 + 5) = v21;
      v23 = v39;
      v24 = v40;
      v25 = v41[0];
      *(v6 + 170) = *(v41 + 10);
      *(v6 + 9) = v24;
      *(v6 + 10) = v25;
      *(v6 + 8) = v23;
      v6 += 192;
      v5 += 184;
      if (v1 == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = 0;
LABEL_18:
  v26 = *(v2 + 3);
  if (v26 >= 2)
  {
    v27 = v26 >> 1;
    v16 = __OFSUB__(v27, v4);
    v28 = v27 - v4;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    *(v2 + 2) = v28;
  }
}

void sub_24F406C28(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2260C8, &qword_24F978F10);
  MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for GameDetailsAnnotation(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_24F407F08(v13, v15 + v16, type metadata accessor for GameDetailsAnnotation);
      v17 = v6;
      sub_24E6009C8(v15, v6, &qword_27F2260C8, &qword_24F978F10);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AB0, &qword_24F9FADB0);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_24E6009C8(v17, v9, &qword_27F2260C8, &qword_24F978F10);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

void sub_24F406F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (a1 + 56);
    v24 = *(a1 + 16);
    while (1)
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A98, &qword_24F9F3AA8);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 40;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = v15 + 4;
        v18 = v2[3] >> 1;
        v5 = &v15[5 * v18 + 4];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (v2[2])
        {
          if (v15 != v2 || v17 >= &v2[5 * v18 + 4])
          {
            memmove(v17, v2 + 4, 40 * v18);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v15;
        v1 = v24;
        v11 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v11)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v10;
      v5[4] = v9;
      v5 += 5;
      v6 += 4;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v11 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v11)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }
}

void sub_24F40715C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (a1 + 72);
    v24 = *(a1 + 16);
    while (1)
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 2);
      v10 = *v6;
      v25 = *(v6 - 1);
      v26 = *(v6 - 3);
      if (v4)
      {

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AA0, &qword_24F9F3AB0);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 56;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = v15 + 4;
        v18 = v2[3] >> 1;
        v5 = &v15[7 * v18 + 4];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (v2[2])
        {
          if (v15 != v2 || v17 >= &v2[7 * v18 + 4])
          {
            memmove(v17, v2 + 4, 56 * v18);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v15;
        v1 = v24;
        v11 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v11)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }

      v6 += 6;
      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v26;
      v5[4] = v9;
      v5[5] = v25;
      v5[6] = v10;
      v5 += 7;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v11 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v11)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }
}

void sub_24F407364(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A378, &qword_24F94DDA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v46 = &v39 - v10;
  v11 = a3 >> 1;
  v12 = MEMORY[0x277D84F90];
  if (a3 >> 1 != a2)
  {
    v14 = 0;
    v13 = 0;
    v15 = *(v6 + 80);
    v42 = v15;
    v43 = (v15 + 32) & ~v15;
    v16 = MEMORY[0x277D84F90] + v43;
    if (a2 <= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = a2;
    }

    v44 = v17;
    v18 = MEMORY[0x277D84F90];
    v40 = v6;
    v41 = v8;
    while (v44 != a2)
    {
      v19 = v45 + *(*(type metadata accessor for PlayerAvatar(0) - 8) + 72) * a2;
      v20 = *(v5 + 48);
      *v8 = v14;
      sub_24F407F08(v19, v8 + v20, type metadata accessor for PlayerAvatar);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_36;
      }

      sub_24E6009C8(v8, v46, &qword_27F21A378, &qword_24F94DDA0);
      if (v13)
      {
        v12 = v18;
        v21 = __OFSUB__(v13--, 1);
        if (v21)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v22 = v18[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v23 = v5;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A78, &qword_24F9F3A98);
        v26 = *(v6 + 72);
        v27 = v43;
        v12 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v12);
        if (!v26)
        {
          goto LABEL_39;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_40;
        }

        v31 = v29 / v26;
        v12[2] = v25;
        v12[3] = 2 * (v29 / v26);
        v32 = v12 + v27;
        v33 = v18[3] >> 1;
        v34 = v33 * v26;
        if (v18[2])
        {
          if (v12 < v18 || v32 >= v18 + v43 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v12 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v16 = &v32[v34];
        v35 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v5 = v23;
        v6 = v40;
        v8 = v41;
        v21 = __OFSUB__(v35, 1);
        v13 = v35 - 1;
        if (v21)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      sub_24E6009C8(v46, v16, &qword_27F21A378, &qword_24F94DDA0);
      v16 += *(v6 + 72);
      ++v14;
      v18 = v12;
      if (v11 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = 0;
LABEL_31:
  v36 = v12[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v21 = __OFSUB__(v37, v13);
    v38 = v37 - v13;
    if (!v21)
    {
      v12[2] = v38;
      return;
    }

LABEL_41:
    __break(1u);
  }
}

float64x2_t sub_24F4076A0()
{
  v1 = *(*v0 + 16);
  v2 = type metadata accessor for PlayerGroupView(0);
  v3 = v2;
  if (*(v0 + *(v2 + 32)) < v1)
  {
    v1 = *(v0 + *(v2 + 32));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A30, &qword_24F93B5E8);
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_24F942000;
      *(v24 + 32) = xmmword_24F9F3950;
      __asm { FMOV            V0.2D, #28.0 }

      *(v24 + 48) = _Q0;
      v26 = *(v0 + *(v3 + 28));
      __asm
      {
        FMOV            V1.2D, #-24.0
        FMOV            V2.2D, #24.0
      }

      *(v24 + 64) = vaddq_f64(vaddq_f64(v26, _Q1), xmmword_24F9F3960);
      *(v24 + 80) = _Q2;
      *(v24 + 96) = 0x4039000000000000;
      *(v24 + 104) = v26.f64[1] + -22.0 + -6.0;
      __asm { FMOV            V2.2D, #22.0 }

      *(v24 + 112) = _Q2;
      *(v24 + 128) = v26.f64[0] + -13.0 + -24.0;
      *(v24 + 136) = xmmword_24F9F3970;
      *(v24 + 152) = xmmword_24F9F3980;
      *(v24 + 168) = v26.f64[1] + -12.0 + -15.0;
      __asm { FMOV            V0.2D, #12.0 }

      *(v24 + 176) = result;
      return result;
    }

    if (v1 != 6)
    {
      if (v1 == 7)
      {
        v14 = swift_allocObject();
        __asm { FMOV            V1.2D, #9.0 }

        *(v14 + 16) = xmmword_24F9AF330;
        *(v14 + 32) = _Q1;
        *(v14 + 48) = vdupq_n_s64(0x4040800000000000uLL);
        v16 = *(v0 + *(v3 + 28));
        __asm
        {
          FMOV            V1.2D, #-23.0
          FMOV            V2.2D, #23.0
        }

        *(v14 + 64) = vaddq_f64(vaddq_f64(v16, _Q1), xmmword_24F9F38E0);
        *(v14 + 80) = _Q2;
        _Q1.f64[0] = v16.f64[1];
        *(v14 + 96) = 0x402A000000000000;
        *(v14 + 104) = v16.f64[1] + -14.0 + -13.0;
        __asm { FMOV            V2.2D, #14.0 }

        *(v14 + 112) = _Q2;
        *(v14 + 128) = v16.f64[0] + -16.0 + -10.0;
        *(v14 + 136) = xmmword_24F9F38F0;
        *(v14 + 152) = xmmword_24F9F3900;
        *(v14 + 168) = v16.f64[1] + -11.0 + -6.0;
        __asm { FMOV            V0.2D, #11.0 }

        *(v14 + 176) = _Q0;
        *(v14 + 192) = xmmword_24F9F3910;
        __asm { FMOV            V0.2D, #6.0 }

        *(v14 + 208) = _Q0;
        *(v14 + 224) = 0x403E000000000000;
        *(v14 + 232) = _Q1.f64[0] + -7.0 + -20.0;
        __asm { FMOV            V0.2D, #7.0 }

        *(v14 + 240) = result;
        return result;
      }

      goto LABEL_14;
    }

    v35 = swift_allocObject();
    __asm { FMOV            V1.2D, #9.0 }

    *(v35 + 16) = xmmword_24F93A070;
    *(v35 + 32) = _Q1;
    *(v35 + 48) = vdupq_n_s64(0x4040800000000000uLL);
    v37 = *(v0 + *(v3 + 28));
    __asm
    {
      FMOV            V1.2D, #-25.0
      FMOV            V2.2D, #25.0
    }

    *(v35 + 64) = vaddq_f64(vaddq_f64(v37, _Q1), xmmword_24F9F3920);
    *(v35 + 80) = _Q2;
    *(v35 + 96) = 0x4035000000000000;
    *(v35 + 104) = v37.f64[1] + -20.0 + -7.0;
    __asm { FMOV            V2.2D, #20.0 }

    *(v35 + 112) = _Q2;
    *(v35 + 128) = v37.f64[0] + -15.0 + -12.0;
    *(v35 + 136) = xmmword_24F9F3930;
    *(v35 + 152) = xmmword_24F9F3940;
    *(v35 + 168) = v37.f64[1] + -10.0 + -19.0;
    __asm { FMOV            V0.2D, #10.0 }

    *(v35 + 176) = _Q0;
    *(v35 + 192) = 0x4043800000000000;
    __asm { FMOV            V0.2D, #7.0 }

    *(v35 + 200) = result;
    *(v35 + 216) = 0x401C000000000000;
  }

  else
  {
    if (v1 == 2)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24F93A400;
      *(v22 + 32) = xmmword_24F9F39B0;
      __asm { FMOV            V0.2D, #28.0 }

      *(v22 + 48) = result;
      __asm { FMOV            V2.2D, #-28.0 }

      *(v22 + 64) = vaddq_f64(vaddq_f64(*(v0 + *(v3 + 28)), _Q2), xmmword_24F9F39C0);
      *(v22 + 80) = result;
      return result;
    }

    if (v1 != 3)
    {
      if (v1 == 4)
      {
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_24F93FC20;
        *(v4 + 32) = xmmword_24F9F3950;
        __asm { FMOV            V0.2D, #28.0 }

        *(v4 + 48) = _Q0;
        result = *(v0 + *(v3 + 28));
        __asm
        {
          FMOV            V1.2D, #-24.0
          FMOV            V2.2D, #24.0
        }

        *(v4 + 64) = vaddq_f64(vaddq_f64(result, _Q1), xmmword_24F9F3960);
        *(v4 + 80) = _Q2;
        *(v4 + 96) = 0x4039000000000000;
        *(v4 + 104) = result.f64[1] + -22.0 + -6.0;
        __asm { FMOV            V1.2D, #22.0 }

        *(v4 + 112) = _Q1;
        *(v4 + 128) = result.f64[0] + -13.0 + -24.0;
        result.f64[0] = 6.0;
        *(v4 + 136) = xmmword_24F9F3970;
        *(v4 + 152) = 0x402A000000000000;
        return result;
      }

LABEL_14:
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24F93DE60;
      v31 = *(v3 + 28);
      *(v30 + 32) = 0;
      *(v30 + 40) = 0;
      result = *(v0 + v31);
      *(v30 + 48) = result;
      return result;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24F9479A0;
    *(v32 + 32) = xmmword_24F9F3990;
    __asm { FMOV            V0.2D, #24.0 }

    *(v32 + 48) = result;
    __asm { FMOV            V2.2D, #-24.0 }

    v34 = vaddq_f64(*(v0 + *(v3 + 28)), _Q2);
    *(v32 + 64) = vaddq_f64(v34, xmmword_24F9F39A0);
    *(v32 + 80) = result;
    *(v32 + 96) = 0x4026000000000000;
    *(v32 + 104) = v34.f64[1] + -11.0;
    *(v32 + 112) = result;
  }

  return result;
}

uint64_t sub_24F407B48()
{

  return swift_deallocObject();
}

uint64_t sub_24F407B8C()
{

  return swift_deallocObject();
}

unint64_t sub_24F407BC4()
{
  result = qword_27F242A40;
  if (!qword_27F242A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242A38, &qword_24F9F3A78);
    sub_24F407C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242A40);
  }

  return result;
}

unint64_t sub_24F407C50()
{
  result = qword_27F242A48;
  if (!qword_27F242A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242A50, &qword_24F9F3A80);
    sub_24F407CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242A48);
  }

  return result;
}

unint64_t sub_24F407CDC()
{
  result = qword_27F242A58;
  if (!qword_27F242A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242A60, &qword_24F9F3A88);
    sub_24F407D94();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0, &qword_24F949650, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242A58);
  }

  return result;
}

unint64_t sub_24F407D94()
{
  result = qword_27F214AD0;
  if (!qword_27F214AD0)
  {
    type metadata accessor for PlayerAvatarView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AD0);
  }

  return result;
}

uint64_t sub_24F407DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A20, &qword_24F9F3A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F407E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A20, &qword_24F9F3A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F407F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F407F70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E0, &unk_24F9F3AD0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F408C90(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)]);
  off_27F242AB8 = v3;
  return result;
}

uint64_t sub_24F4080A4()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0, &unk_24FA2D8D0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F40AA08(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], type metadata accessor for DataIntentCacheBusterStreamState);
  off_27F242AC0 = v4;
  return result;
}

uint64_t sub_24F40821C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F2FB5F8(a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F2FB65C(v9);
  }

  sub_24F2FB65C(a1);
  v12 = sub_24E802CE0(&unk_2861C22D8);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24F9F3AC0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F4084AC()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendsDataIntentImplementation] UpdateListener heard of an update, dropping previously cached friends.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211240 != -1)
  {
    swift_once();
  }

  v5 = off_27F242AB8;
  v6 = *(*off_27F242AB8 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_27F242AB8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F242AB8 + v7));
  sub_24E601704(&v5[v6], &qword_27F242AC8, &unk_24FA059C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v5[v7]);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F408694(void *a1, uint64_t a2)
{
  sub_24E601704(a1, &qword_27F242AC8, &unk_24FA059C0);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F408714(void *a1, uint64_t a2)
{
  sub_24E601704(a1, &qword_27F242AC8, &unk_24FA059C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0, &qword_24F9F3B50);
  *a1 = a2;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  return swift_storeEnumTagMultiPayload();
}

void sub_24F4087B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 friendServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24F40A964;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E872254;
  aBlock[3] = &block_descriptor_150;
  v12 = _Block_copy(aBlock);

  [v9 getFriendsForPlayer:a2 fetchOptions:1 withFilter:1 handler:v12];
  swift_unknownObjectRelease();
  _Block_release(v12);
}

void *sub_24F4089B8(unint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v17 = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
    return sub_24F92B788();
  }

  if (a1 >> 62)
  {
    v10 = sub_24F92C738();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_14;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_24F457FDC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v11 = v17;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x253052270](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      sub_24F3FAC70(v13, 0, 0, v7);
      v17 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_24F457FDC((v14 > 1), v15 + 1, 1);
        v11 = v17;
      }

      ++v12;
      v11[2] = v15 + 1;
      sub_24F40AA08(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, type metadata accessor for Player);
    }

    while (v10 != v12);
LABEL_14:
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
    return sub_24F92B798();
  }

  __break(1u);
  return result;
}

uint64_t sub_24F408BE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return sub_24F409A14(a2);
}

uint64_t sub_24F408C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F408D14()
{
  result = qword_27F2151B0;
  if (!qword_27F2151B0)
  {
    type metadata accessor for FriendsDataIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2151B0);
  }

  return result;
}

uint64_t sub_24F408D8C()
{
  v1 = v0[4];
  v2 = *v1;
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_24F40A87C();
  *v5 = v0;
  v5[1] = sub_24F408E8C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v4, v6);
}

uint64_t sub_24F408E8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24F4091F0;
  }

  else
  {

    v2 = sub_24F408FA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F408FA8()
{
  v1 = v0[2];
  v2 = [v1 internal];
  v0[8] = v2;

  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  *v4 = v0;
  v4[1] = sub_24F4090D4;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000012, 0x800000024FA74F10, sub_24F40A8C8, v3, v5);
}

uint64_t sub_24F4090D4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24F4092BC;
  }

  else
  {

    v2 = sub_24F409254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4091F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F409254()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24F4092BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F409348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250, &qword_24F9F3B60);
  *(v0 + 40) = sub_24F92A9E8();
  if (qword_27F211240 != -1)
  {
    swift_once();
  }

  v1 = off_27F242AB8;
  *(v0 + 48) = off_27F242AB8;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 56) = v3;
  v4 = *(v2 + 48);
  *(v0 + 96) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F40A844((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  *(v0 + 64) = __swift_project_value_buffer(v6, qword_27F39E808);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "[FriendsDataIntentImplementation] Fetching friends...", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_24F409588;
  v11 = *(v0 + 32);

  return sub_24F408D6C(v11);
}

uint64_t sub_24F409588(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_24F409834;
  }

  else
  {
    v4 = sub_24F40969C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F40969C()
{

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 80);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_24E5DD000, v1, v2, "[FriendsDataIntentImplementation] Fetched %ld friends.", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = (*(v0 + 96) + 3) & 0x1FFFFFFFCLL;
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v9 + v10));
  sub_24F40A860((v9 + v8));
  os_unfair_lock_unlock((v9 + v10));
  if (!v7)
  {
    v11 = *(v0 + 80);

    *(v0 + 24) = v11;
    sub_24F92A9C8();

    v12 = *(v0 + 80);
    v13 = *(v0 + 8);

    v13(v12);
  }
}

uint64_t sub_24F409834()
{
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendsDataIntentImplementation] Failed to fetch friends: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);

  v14 = (v11 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v14));
  sub_24E601704(v13 + v12, &qword_27F242AC8, &unk_24FA059C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock((v13 + v14));
  v15 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_24F92A9C8();

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_24F409A14(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_24F91F648();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F409B28, 0, 0);
}

uint64_t sub_24F409B28()
{
  if (qword_27F211240 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = off_27F242AB8;
  v4 = *(*off_27F242AB8 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27F242AB8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F242AB8 + v5));
  sub_24F40A7D4(&v3[v4], v2);
  os_unfair_lock_unlock(&v3[v5]);
  sub_24F40A7D4(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v22 = swift_task_alloc();
      v0[11] = v22;
      *v22 = v0;
      v23 = sub_24F40A0AC;
LABEL_22:
      v22[1] = v23;
      v33 = v0[3];

      return sub_24F409328(v33);
    }

    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    v11 = *v7;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0, &qword_24F9F3B50);
    (*(v10 + 32))(v8, &v7[*(v12 + 48)], v9);
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E808);

    v14 = sub_24F9220B8();
    v15 = sub_24F92BD98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = *(v11 + 16);

      _os_log_impl(&dword_24E5DD000, v14, v15, "[FriendsDataIntentImplementation] Friends list cached, returning %ld friends.", v16, 0xCu);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    else
    {
    }

    v24 = v0[6];
    v25 = v0[4];
    v26 = v0[5];
    sub_24F91F618();
    sub_24F91F558();
    v28 = v27;
    v29 = *(v26 + 8);
    v0[16] = v29;
    v0[17] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v24, v25);
    if (v28 > 300.0)
    {

      v30 = sub_24F9220B8();
      v31 = sub_24F92BD98();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_24E5DD000, v30, v31, "[FriendsDataIntentImplementation] Friends list cache is getting old, performing a fetch.", v32, 2u);
        MEMORY[0x2530542D0](v32, -1, -1);
      }

      v22 = swift_task_alloc();
      v0[18] = v22;
      *v22 = v0;
      v23 = sub_24F40A618;
      goto LABEL_22;
    }

    v34 = v0[10];
    v29(v0[7], v0[4]);
    sub_24E601704(v34, &qword_27F242AC8, &unk_24FA059C0);

    v35 = v0[1];

    return v35(v11);
  }

  else
  {
    v0[13] = *v0[9];
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    v0[14] = __swift_project_value_buffer(v17, qword_27F39E808);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v18, v19, "[FriendsDataIntentImplementation] Friends fetch already in flight, waiting on it to finish...", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_24F40A254;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F40A0AC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_24F40A1AC, 0, 0);
}

uint64_t sub_24F40A1AC()
{
  sub_24E601704(v0[10], &qword_27F242AC8, &unk_24FA059C0);
  v1 = v0[12];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F40A254()
{

  if (v0)
  {

    v1 = sub_24F40A4BC;
  }

  else
  {
    v1 = sub_24F40A36C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F40A36C()
{
  v1 = v0[2];

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendsDataIntentImplementation] Existing friends fetch completed, returning %ld friends.", v4, 0xCu);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[10];

  sub_24E601704(v5, &qword_27F242AC8, &unk_24FA059C0);

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_24F40A4BC()
{
  v1 = MEMORY[0x277D84F90];

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendsDataIntentImplementation] Existing friends fetch completed, returning %ld friends.", v4, 0xCu);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + 80);

  sub_24E601704(v5, &qword_27F242AC8, &unk_24FA059C0);

  v6 = *(v0 + 8);
  v7 = MEMORY[0x277D84F90];

  return v6(v7);
}

uint64_t sub_24F40A618(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_24F40A718, 0, 0);
}

uint64_t sub_24F40A718()
{
  v1 = *(v0 + 80);
  (*(v0 + 128))(*(v0 + 56), *(v0 + 32));
  sub_24E601704(v1, &qword_27F242AC8, &unk_24FA059C0);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24F40A7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F40A87C()
{
  result = qword_27F216FC8;
  if (!qword_27F216FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F216FC8);
  }

  return result;
}

uint64_t sub_24F40A8D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void *sub_24F40A964(unint64_t a1, unint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);

  return sub_24F4089B8(a1, a2);
}

uint64_t block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F40AA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t IncomingFriendRequestShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for IncomingFriendRequestShelfIntent(uint64_t a1)
{
  result = qword_27F242AF8;
  if (!qword_27F242AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t IncomingFriendRequestShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x7265646E6573;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for IncomingFriendRequestShelfIntent(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for Player(0);
  *(inited + 128) = v8;
  v9 = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  *(inited + 136) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F40B4C4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x616C506C61636F6CLL;
  *(inited + 152) = 0xEB00000000726579;
  v11 = *(v6 + 24);
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F40B4C4(v1 + v11, v12, type metadata accessor for Player);

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24F40AD80()
{
  v1 = 0x7265646E6573;
  if (*v0 != 1)
  {
    v1 = 0x616C506C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F40ADDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F40B898(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F40AE04(uint64_t a1)
{
  v2 = sub_24F40B470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F40AE40(uint64_t a1)
{
  v2 = sub_24F40B470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncomingFriendRequestShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AE0, &qword_24F9F3BB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F40B470();
  sub_24F92D128();
  v11 = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for IncomingFriendRequestShelfIntent(0);
    v10 = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v9 = 2;
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IncomingFriendRequestShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AF0, &qword_24F9F3BB8);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for IncomingFriendRequestShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F40B470();
  v27 = v9;
  v13 = v28;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v14 = v24;
  v15 = v10;
  v22 = v4;
  v31 = 0;
  v16 = v26;
  v17 = v12;
  *v12 = sub_24F92CC28();
  v12[1] = v18;
  v21[2] = v18;
  v30 = 1;
  v21[1] = sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v7, v12 + *(v15 + 20));
  v29 = 2;
  v19 = v22;
  sub_24F92CC68();
  (*(v14 + 8))(v27, v16);
  sub_24E61C0A8(v19, v17 + *(v15 + 24));
  sub_24F40B4C4(v17, v23, type metadata accessor for IncomingFriendRequestShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_24F40B52C(v17, type metadata accessor for IncomingFriendRequestShelfIntent);
}

unint64_t sub_24F40B470()
{
  result = qword_27F242AE8;
  if (!qword_27F242AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242AE8);
  }

  return result;
}

uint64_t sub_24F40B4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F40B52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F40B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F40B660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F40B704(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F40B794()
{
  result = qword_27F242B08;
  if (!qword_27F242B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B08);
  }

  return result;
}

unint64_t sub_24F40B7EC()
{
  result = qword_27F242B10;
  if (!qword_27F242B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B10);
  }

  return result;
}

unint64_t sub_24F40B844()
{
  result = qword_27F242B18;
  if (!qword_27F242B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B18);
  }

  return result;
}

uint64_t sub_24F40B898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F40B9AC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for SocialUserGroup(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for SocialMenuIntent(0);
  v2[14] = swift_task_alloc();
  v2[15] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230, &qword_24F9536F8) - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F40BB0C, 0, 0);
}

uint64_t sub_24F40BB0C(__n128 a1)
{
  v2 = v1[8];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1[15];
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = v1[11];
    v32 = *(v4 + 72);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v8 = v1[16];
      v7 = v1[17];
      v9 = v1[10];
      sub_24E60169C(v5, v7, &unk_27F23E230, &qword_24F9536F8);
      sub_24E7725B4(v7, v8);
      v10 = (*(v31 + 48))(v8, 1, v9);
      v11 = v1[16];
      if (v10 == 1)
      {
        sub_24E601704(v11, &unk_27F23E230, &qword_24F9536F8);
      }

      else
      {
        sub_24F40C9D8(v11, v1[12], type metadata accessor for SocialUserGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_24E6181C8(0, v6[2] + 1, 1, v6);
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          v6 = sub_24E6181C8((v12 > 1), v13 + 1, 1, v6);
        }

        v14 = v1[12];
        v6[2] = v13 + 1;
        sub_24F40C9D8(v14, v6 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v13, type metadata accessor for SocialUserGroup);
      }

      v5 += v32;
      --v3;
    }

    while (v3);
    v2 = v1[8];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v16 = v1[13];
  v15 = v1[14];
  v17 = v1[9];
  v18 = type metadata accessor for ContactsPageViewSocialMenuProvider(0);
  sub_24E60169C(v17 + v18[7], v15 + v16[5], &qword_27F216FE0, &unk_24F959350);
  v19 = *(v17 + v18[8]);
  v20 = *(v17 + v18[9]);
  v21 = *(v17 + v18[10]);
  *v15 = 0xD000000000000010;
  v15[1] = 0x800000024FA74F30;
  *(v15 + v16[6]) = v19;
  *(v15 + v16[7]) = v20;
  *(v15 + v16[8]) = v21;
  *(v15 + v16[9]) = v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B20, &qword_24F9F3DD8);

  v23 = sub_24F92A9E8();
  v1[18] = v23;
  v1[19] = sub_24EB46AEC(v15, *v17, "GameStoreKit/ContactsPageViewSocialMenuProvider.swift", 53, 2);
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v23;
  v25 = sub_24E74EC40();
  swift_retain_n();

  v26 = sub_24F92BEF8();
  v27 = MEMORY[0x277D225C0];
  v1[5] = v25;
  v1[6] = v27;
  v1[2] = v26;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v28 = sub_24F40C4E0();
  v29 = swift_task_alloc();
  v1[20] = v29;
  *v29 = v1;
  v29[1] = sub_24F40BEF0;

  return MEMORY[0x282180360](v1 + 7, v22, v28);
}

uint64_t sub_24F40BEF0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_24F40C0D4;
  }

  else
  {
    *(v2 + 176) = *(v2 + 56);
    v3 = sub_24F40C00C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F40C00C()
{
  v1 = v0[14];

  sub_24F40CA40(v1, type metadata accessor for SocialMenuIntent);

  v2 = v0[1];
  v3 = v0[22];

  return v2(v3);
}

uint64_t sub_24F40C0D4()
{
  v1 = *(v0 + 112);

  sub_24F40CA40(v1, type metadata accessor for SocialMenuIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t type metadata accessor for ContactsPageViewSocialMenuProvider(uint64_t a1)
{
  result = qword_27F242B30;
  if (!qword_27F242B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F40C1E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E230, &qword_24F9536F8) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = *(a2 + 16);
  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_18:
    v25 = v13;
    sub_24F92A9C8();
  }

  v10 = 0;
  v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  v24 = *a1;
  v22 = v24 + 32;
  v13 = MEMORY[0x277D84F90];
  v23 = v12;
  while (1)
  {
    sub_24E60169C(v11, v8, &unk_27F23E230, &qword_24F9536F8);
    v14 = type metadata accessor for SocialUserGroup(0);
    result = (*(*(v14 - 8) + 48))(v8, 1, v14);
    if (result == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_24E61A360(0, v13[2] + 1, 1, v13);
      }

      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        v13 = sub_24E61A360((v16 > 1), v17 + 1, 1, v13);
      }

      v13[2] = v17 + 1;
      v13[v17 + 4] = 0;
      goto LABEL_4;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v24 + 16))
    {
      goto LABEL_20;
    }

    v18 = *(v22 + 8 * v10);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_24E61A360(0, v13[2] + 1, 1, v13);
    }

    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      v13 = sub_24E61A360((v19 > 1), v20 + 1, 1, v13);
    }

    v13[2] = v20 + 1;
    v13[v20 + 4] = v18;
    ++v10;
    v12 = v23;
LABEL_4:
    sub_24E601704(v8, &unk_27F23E230, &qword_24F9536F8);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24F40C498()
{

  return swift_deallocObject();
}

unint64_t sub_24F40C4E0()
{
  result = qword_27F242B28;
  if (!qword_27F242B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B20, &qword_24F9F3DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B28);
  }

  return result;
}

uint64_t sub_24F40C544@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v37 = (&v34 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F253B40, &unk_24F9DFE80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v38 = type metadata accessor for SocialUser(0);
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v14;
  v15 = *a1;
  v16 = type metadata accessor for Player(0);
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F941C80;
  *(v17 + 32) = v15;
  v19 = a2[2];
  v18 = a2[3];
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v23 = a2[7];
  v40[0] = v19;
  v40[1] = v18;
  v40[2] = v20;
  v40[3] = v21;
  v40[4] = v22;
  v40[5] = v23;
  v24 = v20;

  v25 = v22;
  v26 = v23;
  v27 = v15;
  v28 = v19;
  v29 = v18;
  SocialUser.init(player:contacts:callProviders:includeSocialProfiles:preferPlayerName:)(v37, v40, 1, 0, v10);
  if ((*(v11 + 48))(v10, 1, v38) == 1)
  {
    sub_24E601704(v10, &unk_27F253B40, &unk_24F9DFE80);
    v30 = type metadata accessor for SocialUserGroup(0);
    return (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  }

  else
  {
    v32 = v35;
    sub_24F40C9D8(v10, v35, type metadata accessor for SocialUser);
    v33 = v36;
    sub_24F14246C(v32, v36);
    SocialUserGroup.init(user:)(v33, v39);
    return sub_24F40CA40(v32, type metadata accessor for SocialUser);
  }
}

uint64_t sub_24F40C880@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a4[1];
  v36 = *a4;
  v9 = a4[3];
  v34 = a4[2];
  v35 = v8;
  v32 = a4[4];
  v33 = v9;
  v10 = a5[3];
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[6];
  v15 = a5[7];
  v27.n128_u64[0] = a5[2];
  v11 = v27.n128_u64[0];
  v27.n128_u64[1] = v10;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v24 = v7;

  sub_24E60169C(&v36, v26, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v35, v26, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v34, v26, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v33, v26, &unk_27F23E1A0, &qword_24F9976C0);
  sub_24E60169C(&v32, v26, &unk_27F22E000, &unk_24F984240);
  v16 = v12;

  v17 = v14;
  v18 = v15;
  v19 = v11;
  v20 = v10;
  return sub_24F2C4AEC(v24, a2, a3, a4, &v27, 0, a6);
}

uint64_t sub_24F40C9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F40CA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F40CAB4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24F40CB84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F40CC34(uint64_t a1)
{
  sub_24F928FD8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for JSIntentDispatcher();
    if (v2 <= 0x3F)
    {
      sub_24E737854(319);
      if (v3 <= 0x3F)
      {
        sub_24F125C18(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F40CD24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F40CE74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsDeveloper(uint64_t a1)
{
  result = qword_27F242B40;
  if (!qword_27F242B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F40CFFC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24F3C7948(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        sub_24F3C7948(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F40D0F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BB0, &qword_24F9F4000);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for GameDetailsDeveloper(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v42 = v14 + 40;
  sub_24E61DA68(&v43, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 24);
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v39 = v15;
  v17(&v14[v15], 1, 1, v16);
  v36 = v12;
  v18 = *(v12 + 32);
  v19 = sub_24F9289E8();
  v20 = *(*(v19 - 8) + 56);
  v40 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F40EDA8();
  v37 = v11;
  v22 = v38;
  sub_24F92D108();
  if (v22)
  {
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_24E601704(v42, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v24], &qword_27F213E68, &unk_24F93BC80);
    return sub_24E601704(&v14[v40], &qword_27F213FB0, &qword_24F93E6B0);
  }

  else
  {
    v38 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v23 = v35;
    sub_24F92CC68();
    v25 = v44;
    *v14 = v43;
    *(v14 + 1) = v25;
    *(v14 + 4) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v46 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v39;
    sub_24E61DA68(&v43, v42, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v43) = 2;
    sub_24F40EDFC(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v8, &v14[v26], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v43) = 3;
    v27 = sub_24F92CC28();
    v28 = v34;
    v29 = &v14[*(v36 + 28)];
    *v29 = v27;
    v29[1] = v30;
    LOBYTE(v43) = 4;
    sub_24F40EDFC(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v31 = v38;
    sub_24F92CC18();
    (*(v28 + 8))(v37, v23);
    sub_24E61DA68(v31, &v14[v40], &qword_27F213FB0, &qword_24F93E6B0);
    sub_24F40EE44(v14, v33, type metadata accessor for GameDetailsDeveloper);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24F40EEAC(v14, type metadata accessor for GameDetailsDeveloper);
  }
}

unint64_t sub_24F40D764()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x65706F6C65766564;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24F40D80C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F40F088(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F40D834(uint64_t a1)
{
  v2 = sub_24F40EDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F40D870(uint64_t a1)
{
  v2 = sub_24F40EDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F40D914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B60, &qword_24F9F3FB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B68, &qword_24F9F3FC0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B70, &qword_24F9F3FC8);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B78, &unk_24F9F3FD0);
  sub_24F40DC04(a1, &v5[*(v13 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F242B60, &qword_24F9F3FB8);
  v14 = &v9[*(v7 + 44)];
  v15 = v27;
  *(v14 + 4) = v26;
  *(v14 + 5) = v15;
  *(v14 + 6) = v28;
  v16 = v23;
  *v14 = v22;
  *(v14 + 1) = v16;
  v17 = v25;
  *(v14 + 2) = v24;
  *(v14 + 3) = v17;
  sub_24E6009C8(v9, v12, &qword_27F242B68, &qword_24F9F3FC0);
  v12[*(v10 + 36)] = 0;
  sub_24E60169C(a1 + 40, v21, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v21, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v18 = sub_24F9248C8();
  __swift_project_value_buffer(v18, qword_27F39F078);
  sub_24F40EA7C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v12, &qword_27F242B70, &qword_24F9F3FC8);
}

uint64_t sub_24F40DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = sub_24F926E68();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = v3;
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B98, &qword_24F9F3FE0);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BA0, &qword_24F9F3FE8);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v58 - v21;
  v22 = type metadata accessor for GameDetailsDeveloper(0);
  v23 = a1;
  sub_24E60169C(a1 + *(v22 + 32), v11, &qword_27F213FB0, &qword_24F93E6B0);
  v24 = v13;
  v25 = *(v13 + 48);
  v26 = v12;
  if (v25(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F213FB0, &qword_24F93E6B0);
    (*(v68 + 56))(v72, 1, 1, v69);
  }

  else
  {
    v59 = v17;
    v60 = v23;
    v27 = v24;
    v58 = *(v24 + 32);
    v28 = v17;
    v61 = v26;
    v58(v17, v11, v26);
    v29 = v62;
    v30 = v63;
    v31 = v66;
    (*(v62 + 104))(v63, *MEMORY[0x277CE1020], v66);
    (*(v24 + 16))(v67, v28, v26);
    v62 = *(v29 + 32);
    v32 = v65;
    (v62)(v65, v30, v31);
    v33 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v34 = (v14 + *(v29 + 80) + v33) & ~*(v29 + 80);
    v35 = v34 + v64;
    v36 = swift_allocObject();
    v37 = v36 + v33;
    v38 = v36;
    v58(v37, v67, v61);
    (v62)(v38 + v34, v32, v31);
    *(v38 + v35) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v39 = v84;
    v67 = v88;
    v65 = v86;
    v66 = v89;
    LOBYTE(v75[0]) = v85;
    v73 = v87;
    LODWORD(v34) = sub_24F9251C8();
    (*(v27 + 8))(v59, v61);
    v40 = v69;
    v41 = &v8[*(v69 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v43 = *MEMORY[0x277CE13B8];
    v44 = sub_24F927748();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    *v41 = v34;
    *v8 = sub_24EB98724;
    *(v8 + 1) = v38;
    *(v8 + 2) = v39;
    v23 = v60;
    v8[24] = v75[0];
    *(v8 + 25) = v78[0];
    *(v8 + 7) = *(v78 + 3);
    *(v8 + 4) = v65;
    v8[40] = v73;
    *(v8 + 41) = v76;
    *(v8 + 11) = *(&v76 + 3);
    v45 = v66;
    *(v8 + 6) = v67;
    *(v8 + 7) = v45;
    v46 = v72;
    sub_24E6009C8(v8, v72, &qword_27F242B98, &qword_24F9F3FE0);
    (*(v68 + 56))(v46, 0, 1, v40);
  }

  v47 = sub_24F924C98();
  LOBYTE(v78[0]) = 0;
  sub_24F40E384(v23, v75);
  *&v74[7] = v75[0];
  *&v74[23] = v75[1];
  *&v74[39] = v75[2];
  *&v74[55] = v75[3];
  v48 = v78[0];
  v49 = v72;
  v50 = v70;
  sub_24F40EBEC(v72, v70);
  v51 = v71;
  sub_24F40EBEC(v50, v71);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BA8, &unk_24F9F3FF0) + 48);
  *&v76 = v47;
  *(&v76 + 1) = 0x4010000000000000;
  v77[0] = v48;
  *&v77[1] = *v74;
  *&v77[17] = *&v74[16];
  *&v77[33] = *&v74[32];
  *&v77[49] = *&v74[48];
  *&v77[64] = *&v74[63];
  v53 = *v77;
  *v52 = v76;
  *(v52 + 16) = v53;
  v54 = *&v77[16];
  v55 = *&v77[32];
  v56 = *&v77[48];
  *(v52 + 80) = *&v77[64];
  *(v52 + 48) = v55;
  *(v52 + 64) = v56;
  *(v52 + 32) = v54;
  sub_24E60169C(&v76, v78, &qword_27F220848, &qword_24F964490);
  sub_24E601704(v49, &qword_27F242BA0, &qword_24F9F3FE8);
  v78[0] = v47;
  v78[1] = 0x4010000000000000;
  v79 = v48;
  v81 = *&v74[16];
  v82 = *&v74[32];
  *v83 = *&v74[48];
  *&v83[15] = *&v74[63];
  v80 = *v74;
  sub_24E601704(v78, &qword_27F220848, &qword_24F964490);
  return sub_24E601704(v50, &qword_27F242BA0, &qword_24F9F3FE8);
}

uint64_t sub_24F40E384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  if (qword_27F211590 != -1)
  {
    swift_once();
  }

  v52 = qword_27F39EBE8;
  v53 = unk_27F39EBF0;
  v49 = sub_24E600AEC();

  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  v11 = sub_24F9251C8();
  v12 = *(v3 + 36);
  v13 = *MEMORY[0x277CE13B8];
  v14 = sub_24F927748();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  *v5 = v11;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v15 = sub_24F925C58();
  v17 = v16;
  LOBYTE(v12) = v18;
  sub_24E600B40(v6, v8, v10 & 1);

  sub_24E601704(v5, &qword_27F213F10, &unk_24F93BE10);
  sub_24F925898();
  sub_24F9258E8();

  v19 = sub_24F925C98();
  v46 = v20;
  v47 = v19;
  HIDWORD(v45) = v21;
  v48 = v22;

  sub_24E600B40(v15, v17, v12 & 1);

  v23 = (v50 + *(type metadata accessor for GameDetailsDeveloper(0) + 28));
  v24 = v23[1];
  v52 = *v23;
  v53 = v24;

  v25 = sub_24F925E18();
  v27 = v26;
  LOBYTE(v12) = v28;
  sub_24F925898();
  sub_24F9258E8();

  v29 = sub_24F925C98();
  v31 = v30;
  v33 = v32;

  sub_24E600B40(v25, v27, v12 & 1);

  v52 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v34 = sub_24F925C58();
  v36 = v35;
  LOBYTE(v11) = v37;
  v39 = v38;
  sub_24E600B40(v29, v31, v33 & 1);

  v40 = BYTE4(v45) & 1;
  v51 = BYTE4(v45) & 1;
  LOBYTE(v52) = BYTE4(v45) & 1;
  v54 = v11 & 1;
  v42 = v46;
  v41 = v47;
  *a2 = v47;
  *(a2 + 8) = v42;
  *(a2 + 16) = v40;
  *(a2 + 24) = v48;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v11 & 1;
  *(a2 + 56) = v39;
  v43 = v41;
  sub_24E5FD138(v41, v42, v40);

  sub_24E5FD138(v34, v36, v11 & 1);

  sub_24E600B40(v34, v36, v11 & 1);

  sub_24E600B40(v43, v42, v51);
}

uint64_t sub_24F40E780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24F40EE44(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24F40EDFC(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
  v19 = sub_24F927348();
  result = sub_24F40EEAC(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F40E934(uint64_t a1)
{
  sub_24F156B98();

  return sub_24F9218E8();
}

unint64_t sub_24F40E9C4()
{
  result = qword_27F242B58;
  if (!qword_27F242B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B58);
  }

  return result;
}

unint64_t sub_24F40EA7C()
{
  result = qword_27F242B80;
  if (!qword_27F242B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B70, &qword_24F9F3FC8);
    sub_24F40EB34();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B80);
  }

  return result;
}

unint64_t sub_24F40EB34()
{
  result = qword_27F242B88;
  if (!qword_27F242B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B68, &qword_24F9F3FC0);
    sub_24E602068(&qword_27F242B90, &qword_27F242B60, &qword_24F9F3FB8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B88);
  }

  return result;
}

uint64_t sub_24F40EBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BA0, &qword_24F9F3FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40EC5C()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t sub_24F40EDA8()
{
  result = qword_27F242BB8;
  if (!qword_27F242BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BB8);
  }

  return result;
}

uint64_t sub_24F40EDFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F40EE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F40EEAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F40EF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B70, &qword_24F9F3FC8);
  sub_24F40EA7C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F40EF84()
{
  result = qword_27F242BC0;
  if (!qword_27F242BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BC0);
  }

  return result;
}

unint64_t sub_24F40EFDC()
{
  result = qword_27F242BC8;
  if (!qword_27F242BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BC8);
  }

  return result;
}

unint64_t sub_24F40F034()
{
  result = qword_27F242BD0;
  if (!qword_27F242BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BD0);
  }

  return result;
}

uint64_t sub_24F40F088(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED00006E6F634972)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F40F244()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

void (*sub_24F40F2B8(uint64_t a1, void *a2, uint64_t a3))(void *, void)
{
  v4 = v3;
  v33 = a2;
  v7 = sub_24F929758();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GSKDebugMetricsEvent(0);
  v34 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = *(sub_24F929738() + 16);

  if (v17)
  {
    (*(v8 + 16))(v10, a1, v7);
    sub_24F91F6A8();
    *&v16[v11[5]] = sub_24F929738();
    v19 = sub_24F929748();
    (*(v8 + 8))(v10, v7);
    *&v16[v11[6]] = v19;
    v20 = &v16[v11[7]];
    *v20 = v33;
    *(v20 + 1) = a3;
    v21 = *(v4 + OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder_stateLock);

    v33 = v21;
    [v21 lock];
    sub_24F40F9BC(v16, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = sub_24F923088();
    v24 = v23;
    v25 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_24E6197A4(0, v25[2] + 1, 1, v25);
      *v24 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_24E6197A4((v27 > 1), v28 + 1, 1, v25);
      *v24 = v25;
    }

    v25[2] = v28 + 1;
    sub_24F40FA20(v13, v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28);
    v22(v35, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v29 = *(v35[0] + 16);

    if (v29 >= 0x65)
    {
      v30 = v29 - 100;
      swift_getKeyPath();
      swift_getKeyPath();
      result = sub_24F923088();
      if (*(*v31 + 16) < v29 - 100)
      {
        __break(1u);
        return result;
      }

      v32 = result;
      sub_24F14A360(0, v30);
      v32(v35, 0);
    }

    [v33 unlock];
    return sub_24F40FA84(v16);
  }

  return result;
}

double sub_24F40F6CC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder__events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08, &qword_24F9F4218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for GSKDebugMetricsEventRecorder(uint64_t a1)
{
  result = qword_27F242BE8;
  if (!qword_27F242BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F40F7D8(uint64_t a1)
{
  sub_24F40F884(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F40F884(uint64_t a1)
{
  if (!qword_27F242BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242C00, qword_24F9F4150);
    v1 = sub_24F9230B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F242BF8);
    }
  }
}

id sub_24F40F90C()
{
  type metadata accessor for GSKDebugMetricsEventRecorder(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C00, qword_24F9F4150);
  sub_24F923058();
  v1 = OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder_stateLock;
  result = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v0 + v1) = result;
  *(v0 + 16) = 100;
  qword_27F39E538 = v0;
  return result;
}

uint64_t sub_24F40F9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40FA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40FA84(uint64_t a1)
{
  v2 = type metadata accessor for GSKDebugMetricsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F40FAE0(uint64_t a1)
{
  v1[2] = a1;
  v3 = sub_24F91F4A8();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_24F40FBE8;

  return sub_24F41029C(a1);
}

uint64_t sub_24F40FBE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = sub_24F410010;
  }

  else
  {
    v5 = sub_24F40FD00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F40FD00()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24E71CBC0(v2, v1);
  v4 = sub_24F91F4C8();
  v5 = [v3 initWithData_];

  sub_24E627880(v2, v1);
  if (v5)
  {
    sub_24E627880(v0[8], v0[9]);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    if (qword_27F211460 != -1)
    {
      swift_once();
    }

    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];
    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E970);
    (*(v10 + 16))(v8, v11, v9);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BDB8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[6];
    v17 = v0[3];
    v18 = v0[4];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      sub_24F4109D8();
      v21 = sub_24F92CD88();
      v23 = v22;
      (*(v18 + 8))(v16, v17);
      v24 = sub_24E7620D4(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24E5DD000, v13, v14, "Failed to create UIImage from downloaded data for URL: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v16, v17);
    }

    v25 = v0[8];
    v26 = v0[9];
    sub_24F410A30();
    swift_allocError();
    swift_willThrow();
    sub_24E627880(v25, v26);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_24F410010()
{
  v29 = v0;
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E970);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = v0[10];
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136315394;
    sub_24F4109D8();
    v15 = sub_24F92CD88();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24E7620D4(v15, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v26;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Failed to download image data from URL: %s, error: %@", v13, 0x16u);
    sub_24E6D44CC(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530542D0](v27, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24F41029C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24F91F4A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_24F91E968();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4103C4, 0, 0);
}

uint64_t sub_24F4103C4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v0[11] = v5;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  sub_24F91E918();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24F4104B4;
  v7 = v0[10];

  return MEMORY[0x28211ECF8](v7, 0);
}

uint64_t sub_24F4104B4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 112) = v3;

  if (v3)
  {
    v9 = sub_24F410690;
  }

  else
  {

    *(v8 + 120) = a2;
    *(v8 + 128) = a1;
    v9 = sub_24F4105F0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24F4105F0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_24F410690()
{
  v32 = v0;
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E970);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v29 = v0[14];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v13 = 136315394;
    sub_24F4109D8();
    v15 = sub_24F92CD88();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24E7620D4(v15, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v29;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Failed to download data from URL: %s, error: %@", v13, 0x16u);
    sub_24E6D44CC(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2530542D0](v30, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[8];
  swift_willThrow();
  (*(v25 + 8))(v24, v26);

  v27 = v0[1];

  return v27();
}

double ThreeDimensionalMediaArtworkImageDownloader.__deallocating_deinit()
{

  swift_deallocClassInstance();
  return result;
}

unint64_t sub_24F4109D8()
{
  result = qword_27F21B620;
  if (!qword_27F21B620)
  {
    sub_24F91F4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B620);
  }

  return result;
}

unint64_t sub_24F410A30()
{
  result = qword_27F242C10;
  if (!qword_27F242C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C10);
  }

  return result;
}

unint64_t sub_24F410A98()
{
  result = qword_27F242C18;
  if (!qword_27F242C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C18);
  }

  return result;
}

uint64_t sub_24F410B00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_24F410CEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
    return result;
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ActivitySharingPromptView(uint64_t a1)
{
  result = qword_27F242C20;
  if (!qword_27F242C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F410F10(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24F01AF4C(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F928FD8();
      if (v3 <= 0x3F)
      {
        sub_24F928818();
        if (v4 <= 0x3F)
        {
          sub_24F01AF4C(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24F4110E0(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
            if (v6 <= 0x3F)
            {
              sub_24F01AF4C(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_24F4110E0(319, &qword_27F22C060, MEMORY[0x277D7EC08]);
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

void sub_24F4110E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_24F411150(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E540 = xmmword_24F947C50;
  qword_27F39E550 = v1;
  unk_27F39E558 = v3;
  qword_27F39E560 = 0x4024000000000000;
  qword_27F39E568 = v4;
  return result;
}

double sub_24F41119C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  v4 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E570 = xmmword_24F947C70;
  qword_27F39E580 = v1;
  unk_27F39E588 = v3;
  qword_27F39E590 = 0x4024000000000000;
  qword_27F39E598 = v4;
  return result;
}

uint64_t sub_24F4111E8@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v51 - v3;
  v63 = sub_24F929158();
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v51 - v6;
  v7 = type metadata accessor for ActivitySharingPromptView(0);
  v8 = *(v7 - 8);
  v55 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C30, &qword_24F9F43B8);
  MEMORY[0x28223BE20](v60);
  v12 = &v51 - v11;
  v13._object = 0x800000024FA75020;
  v13._countAndFlagsBits = 0xD000000000000027;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = localizedString(_:comment:)(v13, v14);
  object = v15._object;
  countAndFlagsBits = v15._countAndFlagsBits;
  sub_24E60169C(v1 + 16, (v12 + 24), qword_27F21B590, &unk_24F93BE30);
  v16._countAndFlagsBits = 0xD000000000000028;
  v16._object = 0x800000024FA75050;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = localizedString(_:comment:)(v16, v17);
  v56 = v18._object;
  v57 = v18._countAndFlagsBits;
  sub_24E60169C(v1 + 56, (v12 + 88), qword_27F21B590, &unk_24F93BE30);
  v19 = *(v1 + 96);
  sub_24F412118(v1, v10);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v54 = swift_allocObject();
  sub_24F412180(v10, v54 + v20);
  v53 = v1;
  sub_24F412118(v1, v10);
  v52 = swift_allocObject();
  sub_24F412180(v10, v52 + v20);
  sub_24F412118(v1, v10);
  v51 = swift_allocObject();
  sub_24F412180(v10, v51 + v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C38, &qword_24F9F43C0);
  v22 = v21[34];
  v23 = type metadata accessor for HeaderPresentation(0);
  (*(*(v23 - 8) + 56))(&v12[v22], 1, 1, v23);
  v24 = &v12[v21[37]];
  LOBYTE(v67) = 0;

  sub_24F926F28();
  v25 = v69;
  *v24 = v68;
  *(v24 + 1) = v25;
  v26 = &v12[v21[38]];
  LOBYTE(v67) = 0;
  sub_24F926F28();
  v27 = v69;
  *v26 = v68;
  *(v26 + 1) = v27;
  v28 = &v12[v21[39]];
  v67 = 0;
  sub_24F926F28();
  v29 = v69;
  *v28 = v68;
  *(v28 + 1) = v29;
  v30 = v21[40];
  *&v12[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v31 = v21[41];
  *&v12[v31] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = v21[42];
  *&v12[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v33 = &v12[v21[43]];
  *v33 = sub_24F923398() & 1;
  *(v33 + 1) = v34;
  v33[16] = v35 & 1;
  v36 = object;
  *v12 = countAndFlagsBits;
  *(v12 + 1) = v36;
  *(v12 + 2) = 0;
  v37 = v56;
  *(v12 + 8) = v57;
  *(v12 + 9) = v37;
  *(v12 + 10) = 0;
  *(v12 + 64) = 0;
  *(v12 + 17) = v19;
  *(v12 + 18) = 0;
  *(v12 + 19) = 0;
  *(v12 + 20) = sub_24F4121E4;
  *(v12 + 21) = v54;
  *(v12 + 22) = sub_24F412264;
  v38 = v51;
  *(v12 + 23) = v52;
  *(v12 + 24) = sub_24F4122D4;
  *(v12 + 25) = v38;
  *(v12 + 26) = CGSizeMake;
  *(v12 + 27) = 0;
  v12[v21[35]] = 7;
  v12[v21[36]] = 0;
  v39 = v53;
  sub_24F412118(v53, v10);
  v40 = swift_allocObject();
  sub_24F412180(v10, v40 + v20);
  v41 = &v12[*(v60 + 36)];
  sub_24F923AD8();
  sub_24F92B818();
  *v41 = &unk_24F9F4460;
  *(v41 + 1) = v40;
  v42 = *(v55 + 40);
  v43 = sub_24F928818();
  v44 = *(v43 - 8);
  v45 = v61;
  (*(v44 + 16))(v61, v39 + v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v47 = v62;
  v46 = v63;
  sub_24F928F28();
  v48 = sub_24F921B48();
  v49 = v64;
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
  sub_24F4127C4();
  sub_24F925E58();
  sub_24E601704(v49, &qword_27F2157E8, &unk_24F940C00);
  (*(v65 + 8))(v47, v46);
  sub_24E601704(v45, &qword_27F2157F0, &qword_24F9846A0);
  return sub_24E601704(v12, &qword_27F242C30, &qword_24F9F43B8);
}

double sub_24F411958@<D0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24F924C88();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_24F411AC4(a2, &v13);
  v36 = v23;
  v37 = v24;
  v38[0] = v25[0];
  *(v38 + 9) = *(v25 + 9);
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v26 = v13;
  v27 = v14;
  v39[10] = v23;
  v39[11] = v24;
  v40[0] = v25[0];
  *(v40 + 9) = *(v25 + 9);
  v39[6] = v19;
  v39[7] = v20;
  v39[8] = v21;
  v39[9] = v22;
  v39[2] = v15;
  v39[3] = v16;
  v39[4] = v17;
  v39[5] = v18;
  v39[0] = v13;
  v39[1] = v14;
  sub_24E60169C(&v26, &v12, &qword_27F242C50, &qword_24F9F4470);
  sub_24E601704(v39, &qword_27F242C50, &qword_24F9F4470);
  v5 = v37;
  *(a3 + 184) = v36;
  *(a3 + 200) = v5;
  *(a3 + 216) = v38[0];
  *(a3 + 225) = *(v38 + 9);
  v6 = v33;
  *(a3 + 120) = v32;
  *(a3 + 136) = v6;
  v7 = v35;
  *(a3 + 152) = v34;
  *(a3 + 168) = v7;
  v8 = v29;
  *(a3 + 56) = v28;
  *(a3 + 72) = v8;
  v9 = v31;
  *(a3 + 88) = v30;
  *(a3 + 104) = v9;
  result = *&v26;
  v11 = v27;
  *(a3 + 24) = v26;
  *(a3 + 40) = v11;
  return result;
}

uint64_t sub_24F411AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F41392C(&v63);
  v5 = v63;
  v4 = v64;
  v43 = v64;
  v6 = v65;
  v41 = v66;
  v42 = v65;
  v40 = v67;
  v7 = v68;
  sub_24F414174(&v63, v83);
  v8 = sub_24F925818();
  sub_24F41392C(v69);
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v83[0]) = 0;
  v18 = *a1;
  v17 = a1[1];

  sub_24F41392C(v70);
  v19 = v70[1];
  v37 = v70[0];
  v38 = v70[3];
  v39 = v70[2];
  v20 = v70[4];
  v36 = v70[5];
  sub_24F414174(v70, v83);
  v21 = sub_24F925818();
  sub_24F41392C(&v71);
  sub_24F923318();
  *&v72 = v5;
  *(&v72 + 1) = v4;
  *&v73 = v6;
  *(&v73 + 1) = v41;
  *&v74 = v40;
  *(&v74 + 1) = v7;
  LOBYTE(v75) = v8;
  *(&v75 + 1) = v10;
  *v76 = v12;
  *&v76[8] = v14;
  *&v76[16] = v16;
  v76[24] = 0;
  v52 = v72;
  *(v56 + 9) = *&v76[9];
  v55 = v75;
  v56[0] = *v76;
  v53 = v73;
  v54 = v74;
  *&v77 = v18;
  *(&v77 + 1) = v17;
  *&v78 = v37;
  *(&v78 + 1) = v19;
  *&v79 = v39;
  *(&v79 + 1) = v38;
  *&v80 = v20;
  *(&v80 + 1) = v36;
  LOBYTE(v81) = v21;
  *(&v81 + 1) = v22;
  *v82 = v23;
  *&v82[8] = v24;
  *&v82[16] = v25;
  v82[24] = 0;
  v57 = v77;
  v58 = v78;
  *(v62 + 9) = *&v82[9];
  v61 = v81;
  v62[0] = *v82;
  v59 = v79;
  v60 = v80;
  v51 = 0;
  v26 = v72;
  v27 = v73;
  v28 = v75;
  v29 = *v76;
  *(a2 + 32) = v74;
  *(a2 + 48) = v28;
  *a2 = v26;
  *(a2 + 16) = v27;
  v30 = v56[1];
  v31 = v58;
  v32 = v59;
  *(a2 + 96) = v57;
  *(a2 + 112) = v31;
  *(a2 + 64) = v29;
  *(a2 + 80) = v30;
  v33 = v62[1];
  *(a2 + 176) = v62[0];
  *(a2 + 192) = v33;
  v34 = v61;
  *(a2 + 144) = v60;
  *(a2 + 160) = v34;
  *(a2 + 128) = v32;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v83[0] = v18;
  v83[1] = v17;
  *&v83[2] = v37;
  *&v83[3] = v19;
  *&v83[4] = v39;
  *&v83[5] = v38;
  *&v83[6] = v20;
  *&v83[7] = v36;
  v84 = v21;
  v85 = v22;
  v86 = v23;
  v87 = v24;
  v88 = v25;
  v89 = 0;
  sub_24E60169C(&v72, v44, &qword_27F242C58, &qword_24F9F4478);
  sub_24E60169C(&v77, v44, &qword_27F242C60, &qword_24F9F4480);
  sub_24E601704(v83, &qword_27F242C60, &qword_24F9F4480);
  v44[0] = v5;
  v44[1] = v43;
  v44[2] = v42;
  v44[3] = v41;
  v44[4] = v40;
  v44[5] = v7;
  v45 = v8;
  v46 = v10;
  v47 = v12;
  v48 = v14;
  v49 = v16;
  v50 = 0;
  return sub_24E601704(v44, &qword_27F242C58, &qword_24F9F4478);
}

uint64_t sub_24F411DB8@<X0>(uint64_t a1@<X8>)
{
  sub_24F41392C(v7);
  v2 = v8;
  v3 = v9;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return sub_24F414174(v7, &v6);
}

uint64_t sub_24F411E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  sub_24F41392C(v10);
  v5 = v11;
  v6 = v12;
  *a2 = v4;
  *(a2 + 8) = v3;
  v7 = v10[1];
  *(a2 + 16) = v10[0];
  *(a2 + 32) = v7;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return sub_24F414174(v10, &v9);
}

uint64_t sub_24F411E80(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F921B58();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F411F74, v4, v3);
}

uint64_t sub_24F411F74()
{

  type metadata accessor for ActivitySharingPromptView(0);
  sub_24F7695C8((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v7 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v0[10] = type metadata accessor for ReportPromptDidPresentAction(0);
    v0[11] = sub_24F4141AC(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction, &unk_24FA088C8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_24F928A98();
    *boxed_opaque_existential_1 = 0;
    sub_24F76973C(v2);
    sub_24F9218A8();
    (*(v3 + 8))(v2, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_24E601704((v0 + 2), &unk_27F212740, &unk_24F940730);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F412118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingPromptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F412180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingPromptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F4121E4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ActivitySharingPromptView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_24F411958(v5, a2);
}

uint64_t sub_24F412264@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActivitySharingPromptView(0);

  return sub_24F411DB8(a1);
}

uint64_t sub_24F4122D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySharingPromptView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F411E10(v4, a1);
}

uint64_t objectdestroyTm_69()
{
  v1 = type metadata accessor for ActivitySharingPromptView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  if (*(v2 + 5))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  }

  if (*(v2 + 10))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  }

  v3 = v1[8];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v2[v5], 1, v6))
    {
      (*(v7 + 8))(&v2[v5], v6);
    }
  }

  else
  {
  }

  v8 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(&v2[v8], 1, v9))
    {
      (*(v10 + 8))(&v2[v8], v9);
    }
  }

  else
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923E98();
    (*(*(v12 - 8) + 8))(&v2[v11], v12);
  }

  else
  {
  }

  v13 = &v2[v1[12]];
  if (v13[40])
  {
    if (*(v13 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
  }

  v14 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F921B58();
    (*(*(v15 - 8) + 8))(&v2[v14], v15);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F4126F8()
{
  v2 = *(type metadata accessor for ActivitySharingPromptView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24F411E80(v0 + v3);
}

unint64_t sub_24F4127C4()
{
  result = qword_27F242C40;
  if (!qword_27F242C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242C30, &qword_24F9F43B8);
    sub_24E602068(&qword_27F242C48, &qword_27F242C38, &qword_24F9F43C0, &unk_24F9651C8);
    sub_24F4141AC(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C40);
  }

  return result;
}

__n128 sub_24F4128AC@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_24F9249A8();
  v29 = 0;
  sub_24F412ACC(&v15);
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30 = v15;
  v31 = v16;
  v43[10] = v25;
  v43[11] = v26;
  v43[12] = v27;
  v43[6] = v21;
  v43[7] = v22;
  v43[9] = v24;
  v43[8] = v23;
  v43[2] = v17;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = v20;
  v43[0] = v15;
  v43[1] = v16;
  sub_24E60169C(&v30, v14, &qword_27F242C68, &qword_24F9F45B8);
  sub_24E601704(v43, &qword_27F242C68, &qword_24F9F45B8);
  *&v28[151] = v39;
  *&v28[167] = v40;
  *&v28[183] = v41;
  *&v28[199] = v42;
  *&v28[87] = v35;
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[7] = v30;
  v4 = v29;
  sub_24F9242E8();
  *a2 = v3;
  *(a2 + 8) = 0xC024000000000000;
  *(a2 + 16) = v4;
  v5 = *&v28[176];
  *(a2 + 177) = *&v28[160];
  *(a2 + 193) = v5;
  *(a2 + 209) = *&v28[192];
  *(a2 + 224) = *&v28[207];
  v6 = *&v28[112];
  *(a2 + 113) = *&v28[96];
  *(a2 + 129) = v6;
  v7 = *&v28[144];
  *(a2 + 145) = *&v28[128];
  *(a2 + 161) = v7;
  v8 = *&v28[48];
  *(a2 + 49) = *&v28[32];
  *(a2 + 65) = v8;
  v9 = *&v28[80];
  *(a2 + 81) = *&v28[64];
  *(a2 + 97) = v9;
  v10 = *&v28[16];
  *(a2 + 17) = *v28;
  *(a2 + 33) = v10;
  v11 = v20;
  *(a2 + 296) = v19;
  *(a2 + 312) = v11;
  *(a2 + 328) = v21;
  v12 = v16;
  *(a2 + 232) = v15;
  *(a2 + 248) = v12;
  result = v18;
  *(a2 + 264) = v17;
  *(a2 + 280) = result;
  return result;
}

double sub_24F412ACC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926C08();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F926E08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F926E98();
  v9 = *MEMORY[0x277CE0FE0];
  v35 = *(v5 + 104);
  v38 = v9;
  v35(v7, v9, v4);
  v50 = sub_24F926E88();

  v10 = *(v5 + 8);
  v10(v7, v4);
  v37 = v10;
  sub_24F927618();
  sub_24F9238C8();
  v48 = v60;
  v49 = v58;
  v44 = v61;
  LODWORD(v45) = v59;
  v46 = v63;
  v47 = v62;
  sub_24F926E98();
  v11 = v9;
  v12 = v35;
  v35(v7, v11, v4);
  v43 = sub_24F926E88();

  v10(v7, v4);
  sub_24F927618();
  sub_24F9238C8();
  v39 = v64;
  v40 = v66;
  v41 = v69;
  v42 = v68;
  v78 = v65;
  v76 = v67;
  (*(v52 + 104))(v51, *MEMORY[0x277CE0ED0], v53);
  v52 = sub_24F926D58();
  v13 = v78;
  LODWORD(v51) = v78;
  v14 = v4;
  v15 = v76;
  v36 = v76;
  sub_24F926E98();
  v12(v7, v38, v14);
  v53 = sub_24F926E88();

  v37(v7, v14);
  sub_24F927618();
  sub_24F9238C8();
  v16 = v70;
  v17 = v71;
  v18 = v72;
  v19 = v73;
  v57 = v45;
  v56 = v44;
  v20 = v43;
  v21 = v39;
  *&v79 = v43;
  *(&v79 + 1) = v39;
  LOBYTE(v80) = v13;
  *(&v80 + 1) = *v77;
  DWORD1(v80) = *&v77[3];
  v23 = v40;
  v22 = v41;
  *(&v80 + 1) = v40;
  LOBYTE(v81) = v15;
  DWORD1(v81) = *&v75[3];
  *(&v81 + 1) = *v75;
  v24 = v42;
  *(&v81 + 1) = v42;
  *&v82 = v41;
  v25 = v52;
  *(&v82 + 1) = 0x3FF0000000000000;
  *&v83[0] = v52;
  v45 = xmmword_24F958350;
  *(v83 + 8) = xmmword_24F958350;
  *(&v83[1] + 1) = 0x4024000000000000;
  v55 = v71;
  v54 = v73;
  v26 = v57;
  v27 = v44;
  v28 = v49;
  *a1 = v50;
  *(a1 + 8) = v28;
  *(a1 + 16) = v26;
  v29 = v47;
  *(a1 + 24) = v48;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v46;
  v30 = v81;
  v31 = v82;
  v32 = v83[0];
  *(a1 + 136) = v83[1];
  *(a1 + 120) = v32;
  *(a1 + 104) = v31;
  *(a1 + 88) = v30;
  v33 = v79;
  *(a1 + 72) = v80;
  *(a1 + 56) = v33;
  *(a1 + 152) = v53;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  *(a1 + 184) = v19;
  *(a1 + 192) = v74;

  sub_24E60169C(&v79, v84, &qword_27F242C70, &qword_24F9F45C0);
  v84[0] = v20;
  v84[1] = v21;
  v85 = v51;
  *v86 = *v77;
  *&v86[3] = *&v77[3];
  v87 = v23;
  v88 = v36;
  *v89 = *v75;
  *&v89[3] = *&v75[3];
  v90 = v24;
  v91 = v22;
  v92 = 0x3FF0000000000000;
  v93 = v25;
  v94 = v45;
  v95 = 0x4024000000000000;
  sub_24E601704(v84, &qword_27F242C70, &qword_24F9F45C0);

  return result;
}

double sub_24F4130E0@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v21 = 0;
  v11 = v2[1];
  *&v22 = *v2;
  *(&v22 + 1) = v11;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  *&v24 = v7;
  *(&v24 + 1) = v8;
  *&v25 = v9;
  *(&v25 + 1) = v10;
  v28 = v24;
  v29 = v25;
  v26 = v22;
  v27 = v23;
  v30[0] = v22;
  v30[1] = v11;
  v30[2] = v5;
  v30[3] = v6;
  v30[4] = v7;
  v30[5] = v8;
  v30[6] = v9;
  v30[7] = v10;

  sub_24F41433C(&v22, v19);
  sub_24F414374(v30);
  *&v20[7] = v26;
  *&v20[23] = v27;
  *&v20[39] = v28;
  *&v20[55] = v29;
  v12 = v21;
  sub_24F927628();
  sub_24F9242E8();
  *(a2 + 8) = v9;
  v13 = *v20;
  *(a2 + 33) = *&v20[16];
  v14 = *&v20[48];
  *(a2 + 49) = *&v20[32];
  *(a2 + 65) = v14;
  *(a2 + 17) = v13;
  v15 = v19[2];
  *(a2 + 136) = v19[3];
  v16 = v19[5];
  *(a2 + 152) = v19[4];
  *(a2 + 168) = v16;
  *(a2 + 184) = v19[6];
  result = *v19;
  v18 = v19[1];
  *(a2 + 88) = v19[0];
  *(a2 + 104) = v18;
  *a2 = v4;
  *(a2 + 16) = v12;
  *(a2 + 80) = *&v20[63];
  *(a2 + 120) = v15;
  return result;
}

uint64_t sub_24F413290@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_24F929888();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110, &qword_24F93F700);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - v2;
  v4._object = 0x800000024FA75100;
  v4._countAndFlagsBits = 0xD000000000000020;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v29 = localizedString(_:comment:)(v4, v5);
  sub_24E600AEC();
  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  sub_24F925988();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_24E600B40(v6, v8, v10 & 1);

  v29._countAndFlagsBits = v11;
  v29._object = v13;
  v15 &= 1u;
  LOBYTE(v30) = v15;
  *(&v30 + 1) = v17;
  sub_24F9268B8();
  sub_24E600B40(v11, v13, v15);

  KeyPath = swift_getKeyPath();
  v19 = v24;
  v20 = &v3[*(v23 + 36)];
  *v20 = KeyPath;
  v20[8] = 0;
  v29 = 0;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  sub_24F9297A8();
  sub_24E601704(v28, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v29, &qword_27F2129B0, &unk_24F945320);
  sub_24E64575C();
  sub_24F925EE8();
  (*(v25 + 8))(v19, v27);
  return sub_24F41457C(v3);
}

uint64_t sub_24F41354C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_24F929888();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v1;
  v4 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    v5 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x614E646E65697266;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = v5;
    *(inited + 56) = v4;
    sub_24E60169C(&v46, &v40, &unk_27F23B740, &qword_24F93EC10);
    v7 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F219F90, &qword_24F955020);
    v8._object = 0x800000024FA750C0;
    v8._countAndFlagsBits = 0xD000000000000032;
    v9 = localizedString(_:with:)(v8, v7);
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
  }

  else
  {
    v12._countAndFlagsBits = 0xD000000000000035;
    v12._object = 0x800000024FA75080;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = localizedString(_:comment:)(v12, v13);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
  }

  v40 = countAndFlagsBits;
  v41 = object;
  sub_24E600AEC();
  v15 = sub_24F925E18();
  v17 = v16;
  v19 = v18;
  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  sub_24E600B40(v15, v17, v19 & 1);

  LODWORD(v40) = sub_24F9251C8();
  v25 = sub_24F925C58();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v40 = v25;
  v41 = v27;
  v42 = v29 & 1;
  v43 = v31;
  v44 = KeyPath;
  v45 = 0;
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  sub_24F9297A8();
  sub_24E601704(v38, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v39, &qword_27F2129B0, &unk_24F945320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8, &unk_24F964BD0);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v35 + 8))(v3, v37);
  sub_24E600B40(v25, v27, v29 & 1);
}

double sub_24F41392C@<D0>(double *a1@<X8>)
{
  v67 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v51[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v51[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v51[-v23];
  v59 = type metadata accessor for ActivitySharingPromptView(0);
  v61 = v1;
  sub_24F769764(v24);
  v25 = v3[13];
  v58 = *MEMORY[0x277CE0560];
  v57 = v25;
  v55 = v3 + 13;
  v25(v21);
  v56 = v3[7];
  v56(v21, 0, 1, v2);
  v60 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v24, v9, &qword_27F215598, &qword_24F945EF0);
  v27 = v2;
  sub_24E60169C(v21, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v66 = v3;
  v28 = v3[6];
  if (v28(v9, 1, v2) == 1)
  {
    v65 = v28;
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    v27 = v2;
    sub_24E601704(v24, &qword_27F215598, &qword_24F945EF0);
    if (v65(&v9[v26], 1, v2) != 1)
    {
LABEL_13:
      sub_24E601704(v9, &unk_27F254F20, &qword_24F940790);
      goto LABEL_14;
    }

    sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_6:
    v24 = v63;
    sub_24F769764(v63);
    v21 = v62;
    v57(v62, v58, v27);
    v56(v21, 0, 1, v27);
    v33 = *(v60 + 48);
    v34 = v64;
    sub_24E60169C(v24, v64, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v21, &v34[v33], &qword_27F215598, &qword_24F945EF0);
    v35 = v65;
    if (v65(v34, 1, v27) == 1)
    {
      sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v24, &qword_27F215598, &qword_24F945EF0);
      if (v35(&v34[v33], 1, v27) == 1)
      {
        sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
LABEL_19:
        if (qword_27F211260 != -1)
        {
          swift_once();
        }

        v37 = &xmmword_27F39E570;
        goto LABEL_17;
      }

      v9 = v34;
      goto LABEL_13;
    }

    v36 = v53;
    sub_24E60169C(v34, v53, &qword_27F215598, &qword_24F945EF0);
    if (v35(&v34[v33], 1, v27) == 1)
    {
      v18 = v36;
      v9 = v34;
      goto LABEL_11;
    }

    v45 = v21;
    v46 = v24;
    v47 = v66;
    v48 = v54;
    (v66[4])(v54, &v34[v33], v27);
    sub_24F4141AC(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v49 = sub_24F92AFF8();
    v50 = v47[1];
    v50(v48, v27);
    sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v46, &qword_27F215598, &qword_24F945EF0);
    v50(v36, v27);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    if (v49)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_24E60169C(v9, v18, &qword_27F215598, &qword_24F945EF0);
  if (v28(&v9[v26], 1, v2) == 1)
  {
LABEL_11:
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v24, &qword_27F215598, &qword_24F945EF0);
    (v66[1])(v18, v27);
    goto LABEL_13;
  }

  v65 = v28;
  v29 = v66;
  v30 = &v9[v26];
  v31 = v54;
  (v66[4])(v54, v30, v27);
  sub_24F4141AC(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v52 = sub_24F92AFF8();
  v32 = v29[1];
  v32(v31, v27);
  sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v24, &qword_27F215598, &qword_24F945EF0);
  v32(v18, v27);
  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
  if (v52)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (qword_27F211258 != -1)
  {
    swift_once();
  }

  v37 = &xmmword_27F39E540;
LABEL_17:
  v38 = *(v37 + 5);
  result = *(v37 + 4);
  v41 = *(v37 + 2);
  v40 = *(v37 + 3);
  v43 = *v37;
  v42 = *(v37 + 1);
  v44 = v67;
  *v67 = v43;
  *(v44 + 1) = v42;
  *(v44 + 2) = v41;
  *(v44 + 3) = v40;
  v44[4] = result;
  *(v44 + 5) = v38;
  return result;
}

uint64_t sub_24F4141AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F414224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F41426C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F4143C8()
{
  result = qword_27F242C78;
  if (!qword_27F242C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242C80, &qword_24F9F45D8);
    sub_24E602068(&qword_27F242C88, &qword_27F242C90, &qword_24F9F45E0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C78);
  }

  return result;
}

unint64_t sub_24F414484()
{
  result = qword_27F242C98;
  if (!qword_27F242C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242CA0, &qword_24F9F45E8);
    sub_24E602068(&qword_27F242CA8, &qword_27F242CB0, qword_24F9F45F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C98);
  }

  return result;
}

uint64_t sub_24F41457C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110, &qword_24F93F700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E11pageMetrics_8pipeline7tracker26clickLocationConfigurationQr0dE004PageG0VSg_AI0G8PipelineVAI18ImpressionsTracker_pSgAD05ClickkL0VSgtFQOyAA15ModifiedContentVy12GameStoreKit013GSKOnboardingC0VyAA6VStackVyAA05TupleC0VyAUyAV6Header33_C0D16470DD6F29555941506FD87889C9LLVAA14_PaddingLayoutVG_AUyAV0sC0A2_LLVA5_GAA6SpacerVtGGA3_A8_AA05EmptyC0VGAA13_TaskModifierVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CompletedChallengesDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  *(v2 + 144) = *a1;
  *(v2 + 64) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_24F414708, 0, 0);
}

uint64_t sub_24F414708()
{
  *(v0 + 80) = sub_24F92B7F8();
  *(v0 + 88) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F4147A0, v2, v1);
}

uint64_t sub_24F4147A0()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 96) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F414828, 0, 0);
}

uint64_t sub_24F414828(uint64_t a1)
{
  *(v1 + 104) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F4148B4, v3, v2);
}

uint64_t sub_24F4148B4()
{
  v1 = *(v0 + 96);

  swift_getKeyPath();
  *(v0 + 48) = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  *(v0 + 112) = v3;

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24F4149DC;
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 144);
  v9 = *(v0 + 56);

  return sub_24F414E04(v4, v3, v8, v6, v7, v9);
}

uint64_t sub_24F4149DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_24F414C6C;
  }

  else
  {
    v4 = sub_24F414B18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F414B18()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BDB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 128);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "CompletedChallengesDataIntentImplementation %ld completed challenges fetched", v6, 0xCu);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_24F414C6C()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CompletedChallengesDataIntentImplementation completed challenges fetch failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F414E04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1672) = a6;
  *(v6 + 1624) = a5;
  *(v6 + 1576) = a4;
  *(v6 + 1808) = a3;
  *(v6 + 1528) = a2;
  *(v6 + 1480) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DDF8, &qword_24F95B110);
  *(v6 + 1680) = swift_task_alloc();
  v7 = type metadata accessor for Challenge(0);
  *(v6 + 1688) = v7;
  *(v6 + 1696) = *(v7 - 8);
  *(v6 + 1704) = swift_task_alloc();
  *(v6 + 1712) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F414F1C, 0, 0);
}

uint64_t sub_24F414F1C()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1480);
  v6 = swift_task_alloc();
  *(v0 + 1720) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v7 = swift_task_alloc();
  *(v0 + 1728) = v7;
  v8 = sub_24E69A5C4(0, &qword_27F242CB8, 0x277D0C0C8);
  *v7 = v0;
  v7[1] = sub_24F415050;

  return MEMORY[0x2822008A0](v0 + 1336, 0, 0, 0xD000000000000036, 0x800000024FA75130, sub_24F41732C, v6, v8);
}

uint64_t sub_24F415050()
{
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v2 = sub_24F415728;
  }

  else
  {

    v2 = sub_24F41516C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F41516C()
{
  v60 = v0;
  v1 = v0[167];
  v0[218] = v1;
  v50 = v1;
  v2 = [v1 details];
  v51 = v0;
  v0[219] = sub_24E69A5C4(0, &qword_27F21DE20, 0x277D0C0C0);
  v3 = sub_24F92B5A8();

  v58 = MEMORY[0x277D84FA0];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    v55 = v3 & 0xFFFFFFFFFFFFFF8;
    v56 = v3 & 0xC000000000000001;
    v53 = v3;
    v54 = v3 + 32;
    v52 = i;
    while (1)
    {
      if (v56)
      {
        v6 = MEMORY[0x253052270](v5, v3);
      }

      else
      {
        if (v5 >= *(v55 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v54 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v9 = [v6 participants];
      sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
      v10 = sub_24F92B5A8();

      if (v10 >> 62)
      {
        v11 = sub_24F92C738();
        if (!v11)
        {
LABEL_22:

          v13 = MEMORY[0x277D84F90];
          goto LABEL_4;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v59 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_26;
      }

      v57 = v7;
      v12 = 0;
      v13 = v59;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](v12, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 playerID];
        v17 = sub_24F92B0D8();
        v19 = v18;

        v59 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24F4578E0((v20 > 1), v21 + 1, 1);
          v13 = v59;
        }

        ++v12;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v11 != v12);

      i = v52;
      v3 = v53;
      v7 = v57;
LABEL_4:
      sub_24EAE9E40(v13);

      if (v5 == i)
      {
        v23 = v58;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v23 = MEMORY[0x277D84FA0];
LABEL_29:

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_24EAE678C(*(v23 + 16), 0);
    v26 = sub_24EAE7C84(&v59, v25 + 4, v24, v23);
    sub_24E6586B4(v59);
    if (v26 == v24)
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_33:
  v27 = v51[209];
  v28 = swift_allocObject();
  v51[220] = v28;
  *(v28 + 16) = v25;
  *(v28 + 24) = 0;
  *(v28 + 32) = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30, &qword_24FA1FBA0);
  swift_asyncLet_begin();
  v29 = [v50 details];
  v30 = sub_24F92B5A8();

  if (v30 >> 62)
  {
    v31 = sub_24F92C738();
    if (v31)
    {
      goto LABEL_35;
    }

LABEL_45:

    v37 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_45;
  }

LABEL_35:
  v59 = MEMORY[0x277D84F90];
  v32 = sub_24F4578E0(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return MEMORY[0x282200930](v32, v33, v34, v35);
  }

  v36 = 0;
  v37 = v59;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x253052270](v36, v30);
    }

    else
    {
      v38 = *(v30 + 8 * v36 + 32);
    }

    v39 = v38;
    v40 = [v38 bundleID];
    v41 = sub_24F92B0D8();
    v43 = v42;

    v59 = v37;
    v45 = *(v37 + 16);
    v44 = *(v37 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_24F4578E0((v44 > 1), v45 + 1, 1);
      v37 = v59;
    }

    ++v36;
    *(v37 + 16) = v45 + 1;
    v46 = v37 + 16 * v45;
    *(v46 + 32) = v41;
    *(v46 + 40) = v43;
  }

  while (v31 != v36);

LABEL_46:
  v47 = v51[209];
  v48 = swift_allocObject();
  v51[221] = v48;
  *(v48 + 16) = v37;
  *(v48 + 24) = 0;
  *(v48 + 32) = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE38, &unk_24F95B150);
  swift_asyncLet_begin();
  v34 = sub_24F4157B4;
  v32 = (v51 + 2);
  v33 = v51 + 173;
  v35 = v51 + 162;

  return MEMORY[0x282200930](v32, v33, v34, v35);
}

uint64_t sub_24F415728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4157B4()
{
  v1[222] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 179, sub_24F415C8C, v1 + 168);
  }

  else
  {
    v1[223] = v1[173];

    return MEMORY[0x282200930](v1 + 82, v1 + 179, sub_24F415868, v1 + 180);
  }
}

uint64_t sub_24F415868()
{
  *(v1 + 1792) = v0;
  if (v0)
  {
    v2 = sub_24F415D88;
  }

  else
  {
    v2 = sub_24F41589C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F41589C()
{
  v23 = v0;
  v1 = v0[218];
  v21 = v0[179];

  v2 = [v1 details];
  v3 = sub_24F92B5A8();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    v20 = v0[212];
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253052270](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = i;
      v11 = v0[223];
      v12 = v0[211];
      v13 = v0[210];
      v22[0] = v7;
      sub_24F416078(v22, v21, v11, v13);

      if ((*(v20 + 48))(v13, 1, v12) == 1)
      {
        sub_24E601704(v0[210], &qword_27F21DDF8, &qword_24F95B110);
        i = v10;
      }

      else
      {
        v14 = v0[214];
        v15 = v0[213];
        sub_24F4174B0(v0[210], v14, type metadata accessor for Challenge);
        sub_24F4174B0(v14, v15, type metadata accessor for Challenge);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_24E6177DC(0, v6[2] + 1, 1, v6);
        }

        v17 = v6[2];
        v16 = v6[3];
        i = v10;
        if (v17 >= v16 >> 1)
        {
          v6 = sub_24E6177DC((v16 > 1), v17 + 1, 1, v6);
        }

        v18 = v0[213];
        v6[2] = v17 + 1;
        sub_24F4174B0(v18, v6 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, type metadata accessor for Challenge);
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:
  v0[225] = v6;

  return MEMORY[0x282200920](v0 + 82, v0 + 179, sub_24F415B80, v0 + 198);
}

uint64_t sub_24F415BD8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1800);

  return v1(v2);
}

uint64_t sub_24F415CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F415D88()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1432, sub_24F415DF4, v0 + 1488);
}

uint64_t sub_24F415E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F415EF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E7E3A7C;

  return sub_24E6473DC(a2, a3, a4);
}

uint64_t sub_24F415FB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E67D244;

  return sub_24E64768C(a2, a3, a4);
}

uint64_t sub_24F416078@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v110 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC0, &unk_24F9F47C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v92 - v11;
  v109 = type metadata accessor for Challenge.Participant(0);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v111 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v92 - v15;
  v16 = sub_24F91F648();
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x28223BE20](v16);
  v100 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v18 - 8);
  v98 = &v92 - v19;
  v20 = type metadata accessor for Game(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v99 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v97 = &v92 - v25;
  v26 = &off_279691000;
  v104 = *a1;
  v27 = [v104 bundleID];
  v28 = sub_24F92B0D8();
  v30 = v29;

  v31 = *(a2 + 16);
  v103 = a4;
  if (!v31)
  {

LABEL_20:
    if (qword_27F2113B8 == -1)
    {
LABEL_21:
      v65 = sub_24F9220D8();
      __swift_project_value_buffer(v65, qword_27F39E778);
      v66 = v104;
      v67 = sub_24F9220B8();
      v68 = sub_24F92BDB8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v113 = v70;
        *v69 = 136315138;
        v71 = [v66 *(v26 + 2152)];
        v72 = sub_24F92B0D8();
        v74 = v73;

        v75 = sub_24E7620D4(v72, v74, &v113);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_24E5DD000, v67, v68, "CompletedChallengesDataIntentImplementation skipped: %s not found", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x2530542D0](v70, -1, -1);
        MEMORY[0x2530542D0](v69, -1, -1);
      }

      v76 = type metadata accessor for Challenge(0);
      return (*(*(v76 - 8) + 56))(v103, 1, 1, v76);
    }

LABEL_26:
    swift_once();
    goto LABEL_21;
  }

  v32 = sub_24E76D644(v28, v30);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = *(a2 + 56) + *(v21 + 72) * v32;
  v36 = v97;
  sub_24E7E38E0(v35, v97, type metadata accessor for Game);
  v37 = v104;
  v38 = [v104 challengeVendorID];
  v39 = sub_24F92B0D8();
  v94 = v40;
  v95 = v39;

  v41 = [v37 scheduledEndDate];
  v42 = v98;
  sub_24F91F608();

  (*(v101 + 56))(v42, 0, 1, v102);
  v43 = [v37 challengeID];
  v44 = sub_24F92B0D8();
  v92 = v45;
  v93 = v44;

  v46 = [v37 endDate];
  sub_24F91F608();

  sub_24E7E38E0(v36, v99, type metadata accessor for Game);
  v47 = [v37 participants];
  sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
  v26 = sub_24F92B5A8();

  if (v26 >> 62)
  {
    v48 = sub_24F92C738();
    v49 = v4;
    if (v48)
    {
LABEL_5:
      v50 = v48;
      v51 = 0;
      v52 = v26 & 0xC000000000000001;
      v108 = v26 & 0xFFFFFFFFFFFFFF8;
      v53 = (v107 + 48);
      v112 = MEMORY[0x277D84F90];
      v105 = v26 & 0xC000000000000001;
      while (1)
      {
        if (v52)
        {
          v54 = MEMORY[0x253052270](v51, v26);
        }

        else
        {
          if (v51 >= *(v108 + 16))
          {
            goto LABEL_25;
          }

          v54 = *(v26 + 8 * v51 + 32);
        }

        v55 = v54;
        v56 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v113 = v54;
        v57 = v49;
        sub_24F416A74(&v113, v110, v12);

        if ((*v53)(v12, 1, v109) == 1)
        {
          sub_24E601704(v12, &qword_27F242CC0, &unk_24F9F47C0);
        }

        else
        {
          v58 = v50;
          v59 = v26;
          v60 = v106;
          sub_24F4174B0(v12, v106, type metadata accessor for Challenge.Participant);
          sub_24F4174B0(v60, v111, type metadata accessor for Challenge.Participant);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_24E61782C(0, v112[2] + 1, 1, v112);
          }

          v62 = v112[2];
          v61 = v112[3];
          if (v62 >= v61 >> 1)
          {
            v112 = sub_24E61782C((v61 > 1), v62 + 1, 1, v112);
          }

          v63 = v111;
          v64 = v112;
          v112[2] = v62 + 1;
          sub_24F4174B0(v63, v64 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v62, type metadata accessor for Challenge.Participant);
          v49 = v57;
          v26 = v59;
          v50 = v58;
          v52 = v105;
        }

        ++v51;
        if (v56 == v50)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v48 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v4;
    if (v48)
    {
      goto LABEL_5;
    }
  }

  v112 = MEMORY[0x277D84F90];
LABEL_29:

  v78 = type metadata accessor for ChallengeDefinitionDetail(0);
  v79 = v96;
  (*(*(v78 - 8) + 56))(v96, 1, 1, v78);
  v80 = [v104 rank];
  v81 = v80;
  if (v80)
  {
    v82 = [v80 integerValue];
  }

  else
  {
    v82 = 0;
  }

  v84 = v94;
  v83 = v95;
  v85 = v81 == 0;
  sub_24F1B20A0(v97, type metadata accessor for Game);
  v86 = type metadata accessor for Challenge(0);
  v87 = v103;
  sub_24E6009C8(v98, &v103[v86[13]], &unk_27F22EC30, &qword_24F939880);
  v88 = v92;
  *v87 = v93;
  *(v87 + 1) = v88;
  *(v87 + 2) = v83;
  *(v87 + 3) = v84;
  (*(v101 + 32))(&v87[v86[6]], v100, v102);
  sub_24F4174B0(v99, &v87[v86[7]], type metadata accessor for Game);
  *&v87[v86[8]] = v112;
  v89 = &v87[v86[9]];
  *v89 = 0;
  *(v89 + 1) = 0xE000000000000000;
  sub_24E6009C8(v79, &v87[v86[10]], &qword_27F212A08, &qword_24F9397D0);
  v90 = &v87[v86[11]];
  *v90 = 0;
  v90[8] = 0;
  v91 = &v87[v86[12]];
  *v91 = v82;
  v91[8] = v85;
  return (*(*(v86 - 1) + 56))(v87, 0, 1, v86);
}

uint64_t sub_24F416A74@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for Player(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v36 - v14;
  v16 = *a1;
  v17 = [*a1 playerID];
  v18 = sub_24F92B0D8();
  v20 = v19;

  if (*(a2 + 16))
  {
    v21 = sub_24E76D644(v18, v20);
    v23 = v22;

    if (v23)
    {
      sub_24E7E38E0(*(a2 + 56) + *(v6 + 72) * v21, v11, type metadata accessor for Player);
      sub_24F4174B0(v11, v15, type metadata accessor for Player);
      sub_24E7E38E0(v15, v8, type metadata accessor for Player);
      v24 = [v16 rank];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 integerValue];
      }

      else
      {
        v26 = 0;
      }

      sub_24F1B20A0(v15, type metadata accessor for Player);
      v33 = v37;
      sub_24F4174B0(v8, v37, type metadata accessor for Player);
      v34 = type metadata accessor for Challenge.Participant(0);
      v35 = v33 + *(v34 + 20);
      *v35 = v26;
      *(v35 + 8) = v25 == 0;
      return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    }
  }

  else
  {
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v27 = sub_24F9220D8();
  __swift_project_value_buffer(v27, qword_27F39E778);
  v28 = sub_24F9220B8();
  v29 = sub_24F92BDB8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_24E5DD000, v28, v29, "CompletedChallengesDataIntentImplementation skipped: player not found", v30, 2u);
    MEMORY[0x2530542D0](v30, -1, -1);
  }

  v31 = type metadata accessor for Challenge.Participant(0);
  return (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
}

void sub_24F416DF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8, &qword_24F9F47D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v19 = [v12 challengeServicePrivate];

  v13 = sub_24F92B098();
  v14 = sub_24F92B098();

  if (a6)
  {
    a6 = sub_24F92B098();
  }

  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_24F4175AC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_151;
  v17 = _Block_copy(aBlock);

  [v19 getLeaderboardChallengesCompletedWithPlayerID:v13 type:v14 bundleID:a6 completionHandler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

uint64_t sub_24F41708C(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E778);
    v5 = a2;
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24E5DD000, v6, v7, "CompletedChallengesDataIntentImplementation completed page internal fetch failed: %@", v8, 0xCu);
      sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v9, -1, -1);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    sub_24F417650();
    swift_allocError();
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8, &qword_24F9F47D0);
    return sub_24F92B788();
  }

  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8, &qword_24F9F47D0);
  return sub_24F92B798();
}

uint64_t sub_24F417270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E7E3A7C;

  return CompletedChallengesDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F417340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F415EF0(a1, v4, v5, v6);
}

uint64_t sub_24F4173F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F415FB4(a1, v4, v5, v6);
}

uint64_t sub_24F4174B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F417518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8, &qword_24F9F47D0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F4175AC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8, &qword_24F9F47D0);

  return sub_24F41708C(a1, a2);
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F417650()
{
  result = qword_27F242CD0;
  if (!qword_27F242CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242CD0);
  }

  return result;
}

unint64_t sub_24F4176B8()
{
  result = qword_27F242CD8[0];
  if (!qword_27F242CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F242CD8);
  }

  return result;
}

uint64_t sub_24F417720()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F210020 != -1)
  {
    swift_once();
  }

  v5[15] = 1;

  sub_24F923298();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_24F92A988();
}

unint64_t sub_24F417874()
{
  result = qword_27F216370;
  if (!qword_27F216370)
  {
    type metadata accessor for ResetTipDatastoreDebugSettingsAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216370);
  }

  return result;
}

uint64_t sub_24F4178F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F417A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F417B48(uint64_t a1)
{
  sub_24F41A580(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F41A580(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F417CAC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  *a4 = sub_24F9275C8();
  a4[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D88, &qword_24F9F49F8);
  sub_24F417DCC(a2, a3, a1, a4 + *(v10 + 44));
  v11 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D90, &unk_24F9F4A00) + 36);
  v12 = *(sub_24F924258() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #28.0 }

  *v11 = _Q0;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D98, &qword_24F9F4A10);
  *(a4 + *(result + 36)) = 0x403C000000000000;
  return result;
}

uint64_t sub_24F417DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v146 = a4;
  v137 = type metadata accessor for LargeBreakoutOverlayView(0);
  MEMORY[0x28223BE20](v137);
  v139 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DA0, &qword_24F9F4A18);
  MEMORY[0x28223BE20](v138);
  v143 = &v114 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DA8, &qword_24F9F4A20);
  MEMORY[0x28223BE20](v142);
  v145 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v141 = &v114 - v10;
  MEMORY[0x28223BE20](v11);
  v144 = &v114 - v12;
  v13 = sub_24F923E98();
  v134 = *(v13 - 8);
  v135 = v13;
  MEMORY[0x28223BE20](v13);
  v133 = (&v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_24F9234D8();
  v129 = *(v15 - 8);
  v130 = v15;
  MEMORY[0x28223BE20](v15);
  v128 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  MEMORY[0x28223BE20](v126);
  v136 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v114 - v19;
  v131 = type metadata accessor for LargeBreakoutView.BackgroundView(0);
  MEMORY[0x28223BE20](v131);
  v140 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v114 - v22;
  MEMORY[0x28223BE20](v24);
  v149 = &v114 - v25;
  v26 = sub_24F923F78();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v132 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v115 = (&v114 - v30);
  MEMORY[0x28223BE20](v31);
  v148 = (&v114 - v32);
  MEMORY[0x28223BE20](v33);
  v151 = (&v114 - v34);
  MEMORY[0x28223BE20](v35);
  v118 = (&v114 - v36);
  MEMORY[0x28223BE20](v37);
  v39 = &v114 - v38;
  v40 = *(type metadata accessor for LargeBreakoutView(0) + 20);
  sub_24F7699B0(v39);
  v156 = a1;
  v41 = sub_24ED15AB8(v39);
  v124 = v42;
  v125 = v41;
  v123 = v43;
  v122 = v44;
  v154 = v27;
  v46 = *(v27 + 8);
  v45 = (v27 + 8);
  v46(v39, v26);
  sub_24F7699B0(v39);
  LODWORD(a1) = sub_24EA12978(v39);
  v46(v39, v26);
  v47 = a2;
  v48 = v26;
  v155 = v47;
  sub_24F7699B0(v39);
  v116 = v46;
  v46(v39, v26);
  v49 = *(v156 + 16);
  v150 = v49;
  v121 = a1;
  if (a1)
  {
    if (*(v49 + 93) == 1)
    {
      v50 = *(v49 + 88);
LABEL_6:
      v120 = v50;
      goto LABEL_8;
    }
  }

  else if (*(v49 + 93))
  {
    v50 = 1;
    goto LABEL_6;
  }

  v120 = 0;
LABEL_8:
  sub_24F923998();
  v52 = v51;
  v54 = v53;
  v153 = v40;
  sub_24F7699B0(v39);
  v119 = sub_24EA11A64(v39);
  v55 = v116;
  v116(v39, v26);
  sub_24F7699B0(v39);
  v56 = sub_24EE6C54C(v39, v157);
  v55(v39, v26, v56);
  v57 = v118;
  sub_24F7699B0(v118);
  v58 = *MEMORY[0x277CDFA90];
  v59 = v154 + 104;
  v152 = *(v154 + 104);
  v152(v39, v58, v48);
  v60 = sub_24F923F68();
  (v55)(v39, v48);
  (v55)(v57, v48);
  v61 = 48;
  if (v60)
  {
    v61 = 96;
  }

  v118 = *(v150 + v61);

  v62 = v151;
  sub_24F7699B0(v151);
  v152(v39, v58, v48);
  v63 = sub_24F923F68();
  (v55)(v39, v48);
  (v55)(v62, v48);
  v64 = 56;
  if (v63)
  {
    v64 = 104;
  }

  v117 = *(v150 + v64);

  sub_24F7699B0(v148);
  v152(v39, v58, v48);
  v65 = sub_24F923F68();
  v151 = v45;
  (v55)(v39, v48);
  v154 = v59;
  v147 = v58;
  v66 = v127;
  if (v65)
  {
    sub_24EA11CF4(v127);
  }

  else
  {
    sub_24EA12338(v127);
  }

  v68 = v128;
  v67 = v129;
  v69 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x277CDF3C0], v130);
  v70 = sub_24F9234C8();
  (*(v67 + 8))(v68, v69);
  sub_24F41A1A4(v66, type metadata accessor for LargeBreakoutOverlayViewModel);
  (v55)(v148, v48);
  *v23 = v52;
  *(v23 + 1) = v54;
  v71 = v157[6];
  *(v23 + 136) = v157[7];
  v72 = v157[9];
  *(v23 + 152) = v157[8];
  *(v23 + 168) = v72;
  *(v23 + 184) = v157[10];
  v73 = v157[2];
  *(v23 + 72) = v157[3];
  v74 = v157[5];
  *(v23 + 88) = v157[4];
  *(v23 + 104) = v74;
  *(v23 + 120) = v71;
  v75 = v157[1];
  *(v23 + 24) = v157[0];
  *(v23 + 2) = v119;
  *(v23 + 40) = v75;
  *(v23 + 56) = v73;
  v23[200] = v121 & 1;
  v76 = v117;
  *(v23 + 26) = v118;
  *(v23 + 27) = v76;
  v23[224] = v120;
  v23[225] = v70 & 1;
  v77 = v124;
  *(v23 + 29) = v125;
  *(v23 + 30) = v77;
  *(v23 + 31) = v123;
  v23[256] = v122;
  v78 = *(v131 + 52);
  *&v23[v78] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  sub_24F41A0CC(v23, v149, type metadata accessor for LargeBreakoutView.BackgroundView);
  v79 = v133;
  sub_24F769788(v133);
  LOBYTE(v78) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v134 + 8))(v79, v135);
  if (v78)
  {
    v80 = v115;
    sub_24F7699B0(v115);
    v81 = v152;
    v152(v39, v147, v48);
    LODWORD(v148) = sub_24F923F68();
    (v55)(v39, v48);
    (v55)(v80, v48);
    v82 = 48;
    if (v148)
    {
      v82 = 96;
    }

    v150 = *(v150 + v82);
    swift_retain_n();
    v83 = v132;
  }

  else
  {
    v150 = 1;
    v83 = v132;
    v81 = v152;
  }

  sub_24F7699B0(v83);
  v81(v39, v147, v48);
  v84 = sub_24F923F68();
  (v55)(v39, v48);
  v85 = v136;
  if (v84)
  {
    sub_24EA11CF4(v136);
  }

  else
  {
    sub_24EA12338(v136);
  }

  (v55)(v83, v48);
  v86 = *(v137 + 20);
  KeyPath = swift_getKeyPath();
  v88 = v139;
  *&v139[v86] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  sub_24F41A0CC(v85, v88, type metadata accessor for LargeBreakoutOverlayViewModel);
  sub_24F9275C8();
  sub_24F9238C8();
  v89 = v143;
  sub_24F41A0CC(v88, v143, type metadata accessor for LargeBreakoutOverlayView);
  v90 = (v89 + *(v138 + 36));
  v91 = v157[12];
  *v90 = v157[11];
  v90[1] = v91;
  v90[2] = v157[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v93 = sub_24F925838();
  *(inited + 32) = v93;
  v94 = sub_24F925828();
  *(inited + 33) = v94;
  v95 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v93)
  {
    v95 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v94)
  {
    v95 = sub_24F925848();
  }

  sub_24F923318();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v141;
  sub_24E6009C8(v89, v141, &qword_27F242DA0, &qword_24F9F4A18);
  v105 = v104 + *(v142 + 36);
  *v105 = v95;
  *(v105 + 8) = v97;
  *(v105 + 16) = v99;
  *(v105 + 24) = v101;
  *(v105 + 32) = v103;
  *(v105 + 40) = 0;
  v106 = v144;
  sub_24E6009C8(v104, v144, &qword_27F242DA8, &qword_24F9F4A20);
  v107 = v149;
  v108 = v140;
  sub_24F41A13C(v149, v140, type metadata accessor for LargeBreakoutView.BackgroundView);
  v109 = v145;
  sub_24E60169C(v106, v145, &qword_27F242DA8, &qword_24F9F4A20);
  v110 = v146;
  sub_24F41A13C(v108, v146, type metadata accessor for LargeBreakoutView.BackgroundView);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DB0, &qword_24F9F4A90);
  v112 = v150;
  *(v110 + *(v111 + 48)) = v150;
  sub_24E60169C(v109, v110 + *(v111 + 64), &qword_27F242DA8, &qword_24F9F4A20);
  sub_24ED1931C(v112);
  sub_24ED1933C(v112);
  sub_24E601704(v106, &qword_27F242DA8, &qword_24F9F4A20);
  sub_24F41A1A4(v107, type metadata accessor for LargeBreakoutView.BackgroundView);
  sub_24E601704(v109, &qword_27F242DA8, &qword_24F9F4A20);
  sub_24ED1933C(v112);
  return sub_24F41A1A4(v108, type metadata accessor for LargeBreakoutView.BackgroundView);
}