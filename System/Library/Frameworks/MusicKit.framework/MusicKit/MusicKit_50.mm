uint64_t sub_217639660(uint64_t a1, uint64_t a2)
{
  v4 = sub_2177516D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v15[-v12];
  sub_2177531E8();
  memcpy(v19, v2, sizeof(v19));
  memcpy(v20, v2, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v20) == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(v15, v19, sizeof(v15));
    sub_217753208();
    memcpy(v16, v19, 0x221uLL);
    sub_217284028(v16, v17);
    Artwork.hash(into:)(&v18);
    memcpy(v17, v15, 0x221uLL);
    sub_217284084(v17);
  }

  sub_2171F5110(v2 + *(a2 + 20), v13, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_217753208();
    sub_21763A420(&qword_27CB24320, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v5 + 8))(v7, v4);
  }

  sub_2171F5110(v2 + *(a2 + 24), v10, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_217753208();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_217753208();
    sub_21763A420(&qword_27CB24320, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v5 + 8))(v7, v4);
  }

  return sub_217753238();
}

void *PreviewAsset.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CloudPreviewAsset(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  v16 = &v22[-v15];
  sub_2171FF30C(a1, v30);
  sub_2171FF30C(v30, v26);
  CloudPreviewAsset.init(from:)(v26, v12);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2171FF30C(v30, v29);
    sub_217519534(v12, v9);
    sub_2173866FC();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_217639CFC(v12, v16);
    *&v16[*(v13 + 28)] = v19;
    memcpy(v27, v16, sizeof(v27));
    memcpy(v28, v16, sizeof(v28));
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v28) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_2172A497C(v26);
    }

    else
    {
      memcpy(v26, v28, 0x1B8uLL);
      memcpy(v22, v27, sizeof(v22));
      sub_2171F5110(v22, v25, &qword_27CB243F0, &qword_21775D690);
      CloudAttribute<A>.convertToArtwork()(v24);
      __swift_destroy_boxed_opaque_existential_1(a1);
      memcpy(v23, v26, sizeof(v23));
      sub_2171F0738(v23, &qword_27CB243F0, &qword_21775D690);
      memcpy(v25, v24, 0x221uLL);
      nullsub_1();
      memcpy(v26, v25, 0x221uLL);
    }

    v20 = *(v5 + 20);
    v21 = type metadata accessor for PreviewAsset(0);
    sub_2171F5110(&v16[v20], a2 + *(v21 + 20), &unk_27CB277C0, &qword_217758DC0);
    sub_2171F5110(&v16[*(v5 + 24)], a2 + *(v21 + 24), &unk_27CB277C0, &qword_217758DC0);
    sub_2171F0738(v16, &qword_27CB24A68, &qword_217759030);
    return memcpy(a2, v26, 0x221uLL);
  }
}

uint64_t sub_217639CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudPreviewAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PreviewAsset.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for CloudPreviewAsset(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  memcpy(v26, v2, sizeof(v26));
  memcpy(v27, v2, 0x221uLL);
  enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 = get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v27);
  v28 = a1;
  if (enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0 == 1)
  {
    sub_2172E22C0(v25);
  }

  else
  {
    memcpy(v21, v27, sizeof(v21));
    memcpy(v22, v26, 0x221uLL);
    sub_217284028(v22, v23);
    Artwork.convertToCloudArtworkAttribute()(v24);
    memcpy(v23, v21, 0x221uLL);
    sub_217284084(v23);
    memcpy(v21, v24, 0x1B8uLL);
    nullsub_1();
    memcpy(v25, v21, sizeof(v25));
  }

  v13 = type metadata accessor for PreviewAsset(0);
  OUTLINED_FUNCTION_15_58(*(v13 + 20));
  OUTLINED_FUNCTION_15_58(*(v13 + 24));
  memcpy(v7, v25, 0x1B8uLL);
  sub_217519534(v7, v11);
  v14 = sub_217751DC8();
  sub_217519598(v7);
  *&v11[*(v8 + 28)] = v14;
  if (*(v14 + 16))
  {
    v15 = v20[1];
    v16 = sub_217388FC4(v11, v28, v14);
    if (!v15)
    {
      sub_21733AC44(v16, v17, v18);
      sub_217751E48();
    }
  }

  else
  {
    CloudPreviewAsset.encode(to:)(v28);
  }

  return sub_2171F0738(v11, &qword_27CB24A68, &qword_217759030);
}

void PreviewAsset.description.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  strcpy(v34, "PreviewAsset(");
  v35 = -4864;
  v19 = type metadata accessor for PreviewAsset(0);
  sub_2171F5110(v0 + *(v19 + 20), v8, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2171F0738(v8, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    OUTLINED_FUNCTION_13_58();
    v20(v18, v8, v9);
    v32 = 0x22203A6C7275;
    v33 = 0xE600000000000000;
    OUTLINED_FUNCTION_0_120();
    sub_21763A420(v21, v22, MEMORY[0x277CC9290]);
    v23 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v23);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000, v24);
    MEMORY[0x21CEA23B0](v32, v33);

    (*(v11 + 8))(v18, v9, v25);
  }

  sub_2171F5110(v0 + *(v19 + 24), v5, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_2171F0738(v5, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    OUTLINED_FUNCTION_13_58();
    v26(v15, v5, v9);
    v32 = 0x4C5255736C68202CLL;
    v33 = 0xEB0000000022203ALL;
    OUTLINED_FUNCTION_0_120();
    sub_21763A420(v27, v28, MEMORY[0x277CC9290]);
    v29 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v29);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000, v30);
    MEMORY[0x21CEA23B0](v32, v33);

    (*(v11 + 8))(v15, v9, v31);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21763A420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21763A498(uint64_t a1)
{
  sub_21763A51C();
  if (v1 <= 0x3F)
  {
    sub_2172E2DB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21763A51C()
{
  if (!qword_280BE7698)
  {
    v0 = sub_2177528F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280BE7698);
    }
  }
}

uint64_t OUTLINED_FUNCTION_15_58@<X0>(uint64_t a1@<X8>)
{

  return sub_2171F5110(v5 + a1, v4 + v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_18_50(uint64_t a1)
{

  return sub_217751EB8();
}

void *sub_21763A5AC(void *a1)
{
  v2 = v1;
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = a1;
  type metadata accessor for MusicPlayer.State();
  swift_allocObject();
  v4 = a1;
  v2[2] = sub_217354AF4(v4);
  sub_21763B260();
  type metadata accessor for NotificationObserver();
  v5 = [objc_opt_self() nowPlayingItemDidChangeNotificationName];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = v4;

  v8 = static NotificationObserver.mainActorObserver(name:object:handler:)(v5, v4, &unk_2177878B0, v6);

  v2[4] = v8;

  v9 = *MEMORY[0x277D7F8E8];
  v10 = swift_allocObject();
  swift_weakInit();

  v11 = static NotificationObserver.mainActorObserver(name:object:handler:)(v9, 0, &unk_2177878C0, v10);

  v2[5] = v11;

  return v2;
}

uint64_t MusicPlayer.deinit()
{

  return v0;
}

uint64_t sub_21763A79C(void *a1)
{
  sub_217202078((a1 + 97), v36, &qword_27CB24410, &unk_2177586F0);
  v2 = sub_217751DE8();
  sub_21763BD80(v2, v36, v37);
  OUTLINED_FUNCTION_138((a1 + 191), &v35);
  v3 = a1[192];
  *&v4 = a1[191];
  v26 = v4;
  sub_217751DE8();

  OUTLINED_FUNCTION_138((a1 + 193), &v34);
  v5 = a1[193];
  v6 = a1[194];
  v7 = *&v37[176];
  v8 = *&v37[184];
  sub_217275908(v5, v6);
  sub_217275680(v7, v8);
  *&v9 = v26;
  *(&v9 + 1) = v3;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  *&v37[160] = v9;
  *&v37[176] = v10;
  OUTLINED_FUNCTION_138((a1 + 195), &v30);
  sub_217202078((a1 + 195), v31, &qword_27CB24418, &unk_21777F680);
  v11 = v32;
  if (v32)
  {
    v12 = v33;
    v13 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v14 = *(v11 - 8);
    v15 = MEMORY[0x28223BE20](v13);
    v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    sub_2171F06D8(v31, &qword_27CB24418, &unk_21777F680);
    (*(v12 + 16))(v36, v11, v12);
    (*(v14 + 8))(v17, v11);
    v25 = v36[1];
    v26 = v36[0];
    v23 = v36[3];
    v24 = v36[2];
    v21 = v36[5];
    v22 = v36[4];
    v11 = *(&v36[6] + 1);
    v18 = *&v36[6];
    v19 = *&v36[7];
  }

  else
  {
    sub_2171F06D8(v31, &qword_27CB24418, &unk_21777F680);
    v18 = 0;
    v19 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
  }

  memcpy(v27, &v37[192], sizeof(v27));
  sub_2171F06D8(v27, &qword_27CB244D0, &unk_21775D620);
  *&v37[192] = v26;
  *&v37[208] = v25;
  *&v37[224] = v24;
  *&v37[240] = v23;
  *&v37[256] = v22;
  *&v37[272] = v21;
  *&v37[288] = v18;
  *&v37[296] = v11;
  *&v37[304] = v19;
  memcpy(v28, v37, sizeof(v28));
  sub_217283790(v28, v36);
  sub_21763AABC(v37);
  memcpy(v29, v37, sizeof(v29));
  sub_2172837EC(v29);
  memcpy(v36, v37, 0x138uLL);
  return sub_2172837EC(v36);
}

void sub_21763AABC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_21763C064();
  [*(v1 + 24) setQueueWithDescriptor_];
}

uint64_t sub_21763AB68()
{
  OUTLINED_FUNCTION_30_0();
  v1 = *(v0[18] + 24);
  v0[2] = v0;
  v0[3] = sub_21763AC7C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27598, qword_21776ADF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21749A8F8;
  v0[13] = &block_descriptor_14;
  v0[14] = v2;
  [v1 prepareToPlayWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21763AC7C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 152) = v2;
  if (v2)
  {
    v3 = sub_21763ADA4;
  }

  else
  {
    v3 = sub_21763AD84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21763ADA4()
{
  OUTLINED_FUNCTION_30_0();
  swift_willThrow();
  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21763AE24()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;
  if ([v1 isPreparedToPlay])
  {
    [*(v0 + 24) play];
    OUTLINED_FUNCTION_0_2();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_21763AF08;

    return sub_21763AB54();
  }
}

uint64_t sub_21763AF08()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21763B024, 0, 0);
  }
}

uint64_t sub_21763B024()
{
  OUTLINED_FUNCTION_10();
  [*(v0 + 24) play];
  OUTLINED_FUNCTION_0_2();

  return v1();
}

id (*sub_21763B0C4(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 24);
  a1[1] = v3;
  [v3 currentPlaybackTime];
  *a1 = v4;
  return sub_21763B118;
}

uint64_t sub_21763B174()
{
  OUTLINED_FUNCTION_10();
  [*(*(v0 + 16) + 24) skipToNextItem];
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21763B1FC()
{
  OUTLINED_FUNCTION_10();
  [*(*(v0 + 16) + 24) skipToPreviousItem];
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_21763B260()
{
  bzero(v7, 0x2EAuLL);
  static MusicAuthorization.currentStatus.getter(&v6);
  switch(v6)
  {
    case 3:

      goto LABEL_5;
    default:
      v1 = sub_217753058();

      if (v1)
      {
LABEL_5:
        v3 = [v0[3] nowPlayingItem];
        if (v3)
        {
          sub_2173E0D6C(v3, v5);
          sub_2171F06D8(v7, &qword_27CB24410, &unk_2177586F0);
          v6 = 0;
          v7[0] = *v5;
          v7[1] = *&v5[8];
          memcpy(v8, v5, 0x2D9uLL);
          v8[729] = 0;
          sub_217751DE8();
        }
      }

      sub_2173554B4();
      (*(*v0 + 33))(v7, 1);
      return sub_2171F06D8(v7, &qword_27CB24410, &unk_2177586F0);
  }
}

uint64_t sub_21763B430(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_217752518();
  *(v2 + 48) = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21763BD7C, v4, v3);
}

uint64_t sub_21763B4C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_217752518();
  *(v2 + 48) = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_21763B560, v4, v3);
}

uint64_t sub_21763B560()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_138(v1 + 16, v0 + 16);
  if (swift_weakLoadStrong())
  {
    sub_21763B260();
  }

  OUTLINED_FUNCTION_20_0();

  return v2();
}

void sub_21763B5E8()
{
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000059, 0x80000002177B2E30);
  type metadata accessor for MusicPlayer();
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  sub_217752D08();
  __break(1u);
}

uint64_t MusicPlayer.__deallocating_deinit()
{
  MusicPlayer.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t dispatch thunk of MusicPlayer.prepareToPlay()()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0_41();
  v14 = v0 + 144;
  v15 = *(v0 + 144) + **(v0 + 144);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_2_106(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of MusicPlayer.play()()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0_41();
  v14 = v0 + 152;
  v15 = *(v0 + 152) + **(v0 + 152);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_2_106(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of MusicPlayer.skipToNextEntry()()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0_41();
  v14 = v0 + 224;
  v15 = *(v0 + 224) + **(v0 + 224);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_2_106(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of MusicPlayer.skipToPreviousEntry()()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0_41();
  v14 = v0 + 240;
  v15 = *(v0 + 240) + **(v0 + 240);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_208(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_2_106(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t sub_21763BC74()
{
  OUTLINED_FUNCTION_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_208(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return sub_21763B430(v3, v4);
}

uint64_t sub_21763BCF8()
{
  OUTLINED_FUNCTION_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_208(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return sub_21763B4C8(v3, v4);
}

uint64_t sub_21763BD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21763DBA4(__src);
  memcpy(__dst, __src, 0x91uLL);
  v17 = a2;
  v18 = __dst;
  v6 = sub_21763CA10(sub_21763DBAC, &v16, a1);

  OUTLINED_FUNCTION_5_85(v31);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v31) == 1)
  {
    sub_217202078(a2, v27, &qword_27CB24410, &unk_2177586F0);
    if (v28)
    {
      sub_2175AB364(&v20);
      v7 = v20;
      v8 = v21;
      memcpy(v25, v22, sizeof(v25));
      sub_217276358(v27);
      if (v8)
      {
        sub_217202078(a2, &v20, &qword_27CB24410, &unk_2177586F0);
        if (v21)
        {
          v9 = MusicPlayer.Queue.Entry.startTime.getter();
          v11 = v10;
          sub_217276358(&v20);
        }

        else
        {
          sub_2171F06D8(&v20, &qword_27CB24410, &unk_2177586F0);
          v9 = 0;
          v11 = 1;
        }

        sub_217202078(a2, &v20, &qword_27CB24410, &unk_2177586F0);
        if (v21)
        {
          v12 = MusicPlayer.Queue.Entry.endTime.getter();
          v14 = v13;
          sub_217276358(&v20);
        }

        else
        {
          sub_2171F06D8(&v20, &qword_27CB24410, &unk_2177586F0);
          v12 = 0;
          v14 = 1;
        }

        memcpy(&v19[2], v25, 0x68uLL);
        LOBYTE(v24) = v11 & 1;
        LOBYTE(v23) = v14 & 1;
        v19[0] = v7;
        v19[1] = v8;
        v19[15] = v9;
        LOBYTE(v19[16]) = v11 & 1;
        v19[17] = v12;
        LOBYTE(v19[18]) = v14 & 1;
        nullsub_1();
        OUTLINED_FUNCTION_5_85(v26);
        sub_2171F06D8(v26, &qword_27CB2AFE8, &qword_2177878C8);
        memcpy(__dst, v19, 0x91uLL);
      }
    }

    else
    {
      sub_2171F06D8(v27, &qword_27CB24410, &unk_2177586F0);
    }
  }

  OUTLINED_FUNCTION_5_85(&v20);
  *a3 = v6;
  OUTLINED_FUNCTION_5_85((a3 + 8));
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0xF000000000000000;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0;
  OUTLINED_FUNCTION_5_85(v27);
  sub_217202078(&v20, v26, &qword_27CB2AFE8, &qword_2177878C8);
  sub_2171F06D8(v27, &qword_27CB2AFE8, &qword_2177878C8);
  return sub_2171F06D8(a2, &qword_27CB24410, &unk_2177586F0);
}

id sub_21763C064()
{
  memcpy(__dst, v0, sizeof(__dst));
  v24 = 0;
  v23 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v1 = __dst[0];
  sub_217283790(__dst, __src);
  v2 = sub_21763C334(v1, &v23, &v22, __dst, &v24);
  v3 = v24;
  if (!v24)
  {
    memcpy(v20, &__dst[1], 0x91uLL);
    memcpy(__src, &__dst[1], 0x91uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__src) == 1)
    {
      v3 = 0;
    }

    else
    {
      memcpy(v18, __src, sizeof(v18));
      memcpy(v19, v20, 0x91uLL);
      sub_217284914(v19, v17);
      v3 = sub_21774B91C();
      memcpy(v17, v18, 0x78uLL);
      sub_2172848C0(v17);
    }
  }

  sub_217215924(0, &qword_27CB2AFD8, off_278228DB0);
  v4 = sub_21763DB1C(v2);
  v5 = *(v23 + 16);
  if (v5)
  {
    v6 = (v23 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 2;
      [v4 setStartTime:v7 forItemWithPlayParameters:v8];
      --v5;
    }

    while (v5);
  }

  v9 = *(v22 + 16);
  if (v9)
  {
    v10 = (v22 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 2;
      [v4 setEndTime:v11 forItemWithPlayParameters:v12];
      --v9;
    }

    while (v9);
  }

  [v4 setStartItemPlayParameters_];
  if (__dst[21])
  {
    v13 = sub_217751F18();
  }

  else
  {
    v13 = 0;
  }

  [v4 setPlayActivityFeatureName_];

  if (__dst[23] >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_217751738();
  }

  [v4 setPlayActivityRecommendationData_];

  v15 = __dst[25];
  if (__dst[25])
  {
    v19[0] = __dst[24];
    v19[1] = __dst[25];
    memcpy(&v19[2], &__dst[26], 0x68uLL);
    v20[0] = __dst[24];
    v20[1] = __dst[25];
    memcpy(&v20[2], &__dst[26], 0x68uLL);
    sub_2172DF5A4(v20, __src);
    v15 = sub_21774B91C();
    memcpy(__src, v19, 0x78uLL);
    sub_2172848C0(__src);
  }

  [v4 setContainerPlayParameters_];

  return v4;
}

uint64_t sub_21763C334(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void **a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v68 = MEMORY[0x277D84F90];
    sub_217752BF8();
    v8 = (a1 + 32);
    v42 = a4;
    memcpy(__dst, (a4 + 8), 0x91uLL);
    for (i = v6 - 1; ; --i)
    {
      memcpy(v65, v8, 0x91uLL);
      memcpy(__src, v8, 0x78uLL);
      sub_217284914(v65, v62);
      sub_2172DF5A4(v65, v62);
      v10 = sub_21774B91C();
      memcpy(v66, __src, sizeof(v66));
      sub_2172848C0(v66);
      if ((v65[16] & 1) == 0)
      {
        v11 = v65[15];
        v12 = *a2;
        v13 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2172B347C();
          v12 = v37;
          *a2 = v37;
        }

        v15 = *(v12 + 16);
        if (v15 >= *(v12 + 24) >> 1)
        {
          sub_2172B347C();
          v12 = v38;
          *a2 = v38;
        }

        *(v12 + 16) = v15 + 1;
        v16 = v12 + 16 * v15;
        *(v16 + 32) = v13;
        *(v16 + 40) = v11;
      }

      if ((v65[18] & 1) == 0)
      {
        v17 = v65[17];
        v18 = *a3;
        v19 = v10;
        v20 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v18;
        if ((v20 & 1) == 0)
        {
          sub_2172B347C();
          v18 = v39;
          *a3 = v39;
        }

        v21 = *(v18 + 16);
        if (v21 >= *(v18 + 24) >> 1)
        {
          sub_2172B347C();
          v18 = v40;
          *a3 = v40;
        }

        *(v18 + 16) = v21 + 1;
        v22 = v18 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v17;
      }

      memcpy(v63, v65, sizeof(v63));
      nullsub_1();
      memcpy(v62, v63, 0x91uLL);
      memcpy(&v62[38], __dst, 0x91uLL);
      memcpy(v64, v63, 0x91uLL);
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v64) == 1)
      {
        memcpy(__src, &v62[38], 0x91uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__src) == 1)
        {
          memcpy(v61, v62, 0x91uLL);
          sub_217284914(v65, v59);
          sub_217202078(__dst, v59, &qword_27CB2AFE8, &qword_2177878C8);
          v23 = v61;
LABEL_18:
          sub_2171F06D8(v23, &qword_27CB2AFE8, &qword_2177878C8);
          v24 = *a5;
          *a5 = v10;
          v25 = v10;

          goto LABEL_37;
        }

        sub_217284914(v65, v61);
        sub_217202078(__dst, v61, &qword_27CB2AFE8, &qword_2177878C8);
      }

      else
      {
        memcpy(v61, v62, 0x91uLL);
        v26 = *&v61[15];
        v27 = v61[16];
        v28 = *&v61[17];
        v29 = v61[18];
        memcpy(__src, &v62[38], 0x91uLL);
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__src) != 1)
        {
          memcpy(v59, &v62[38], 0x91uLL);
          memcpy(v54, &v62[38], sizeof(v54));
          v33 = *&v59[15];
          v45 = v59[16];
          v34 = *&v59[17];
          v43 = v59[18];
          memcpy(v55, v62, sizeof(v55));
          memcpy(v48, v62, sizeof(v48));
          sub_217284914(v65, v58);
          sub_217202078(__dst, v58, &qword_27CB2AFE8, &qword_2177878C8);
          sub_217202078(v61, v58, &qword_27CB2AFE8, &qword_2177878C8);
          sub_2172DF5A4(v55, v58);
          sub_217202078(v59, v58, &qword_27CB2AFE8, &qword_2177878C8);
          static PlayParameters.== infix(_:_:)(v48, v54);
          v36 = v35;
          memcpy(v56, v54, sizeof(v56));
          sub_2172848C0(v56);
          memcpy(v57, v48, sizeof(v57));
          sub_2172848C0(v57);
          sub_2171F06D8(v59, &qword_27CB2AFE8, &qword_2177878C8);
          if (v36)
          {
            if (v27)
            {
              if ((v45 & 1) == 0)
              {
                goto LABEL_35;
              }
            }

            else if ((v45 & 1) != 0 || v33 != v26)
            {
              goto LABEL_35;
            }

            if (v29)
            {
              if (v43)
              {
                goto LABEL_34;
              }
            }

            else if ((v43 & 1) == 0 && v34 == v28)
            {
LABEL_34:
              memcpy(v48, v62, sizeof(v48));
              v49 = v26;
              v50 = v27;
              *v51 = *(&v62[32] + 1);
              *&v51[3] = v62[33];
              v52 = v28;
              v53 = v29;
              sub_217284970(v48);
              memcpy(v58, v62, 0x91uLL);
              v23 = v58;
              goto LABEL_18;
            }
          }

LABEL_35:
          memcpy(v48, v62, sizeof(v48));
          v49 = v26;
          v50 = v27;
          *v51 = *(&v62[32] + 1);
          *&v51[3] = v62[33];
          v52 = v28;
          v53 = v29;
          sub_217284970(v48);
          memcpy(v58, v62, 0x91uLL);
          v30 = v58;
          v31 = &qword_27CB2AFE8;
          v32 = &qword_2177878C8;
          goto LABEL_36;
        }

        memcpy(v59, v62, 0x78uLL);
        *&v59[15] = v26;
        LOBYTE(v59[16]) = v27;
        *(&v59[16] + 1) = *(&v62[32] + 1);
        HIDWORD(v59[16]) = v62[33];
        *&v59[17] = v28;
        LOBYTE(v59[18]) = v29;
        sub_217284914(v65, v58);
        sub_217202078(__dst, v58, &qword_27CB2AFE8, &qword_2177878C8);
        sub_217202078(v61, v58, &qword_27CB2AFE8, &qword_2177878C8);
        sub_217284970(v59);
      }

      memcpy(__src, v62, 0x129uLL);
      v30 = __src;
      v31 = &unk_27CB2AFF0;
      v32 = &unk_2177878D0;
LABEL_36:
      sub_2171F06D8(v30, v31, v32);
LABEL_37:
      sub_217284970(v65);
      sub_217752BC8();
      sub_217752C08();
      sub_217752C18();
      sub_217752BD8();
      if (!i)
      {
        sub_2172837EC(v42);
        return v68;
      }

      v8 += 152;
    }
  }

  sub_2172837EC(a4);
  return MEMORY[0x277D84F90];
}

void (*sub_21763CA10(void (*result)(void *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3))(void *__return_ptr, uint64_t, uint64_t)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v22 = MEMORY[0x277D84F90];
  v17 = a3 + 32;
LABEL_2:
  for (i = v7 + 752 * v5; ; i += 752)
  {
    if (v6 == v5)
    {
      return v22;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_18;
    }

    v4(__src, i, a2);
    if (v3)
    {
      v16 = v22;

      return v16;
    }

    memcpy(__dst, __src, 0x91uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) != 1)
    {
      memcpy(v19, __src, 0x91uLL);
      v10 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B24CC();
        v10 = v14;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      v22 = v10;
      if (v12 >= v11 >> 1)
      {
        sub_2172B24CC();
        v22 = v15;
      }

      memcpy(v18, v19, sizeof(v18));
      v13 = v22;
      *(v22 + 16) = v12 + 1;
      result = memcpy((v13 + 152 * v12 + 32), v18, 0x91uLL);
      v5 = v9;
      v7 = v17;
      goto LABEL_2;
    }

    memcpy(v19, __src, 0x91uLL);
    result = sub_2171F06D8(v19, &qword_27CB2AFE8, &qword_2177878C8);
    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_21763CBE8(double *a1, void *a2)
{
  v4 = *a1;
  OUTLINED_FUNCTION_2_107(v142);
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  v7 = *(a1 + 23);
  v117 = *(a1 + 22);
  memcpy(__dst, a1 + 24, sizeof(__dst));
  OUTLINED_FUNCTION_4_101(v144);
  v9 = a2[20];
  v8 = a2[21];
  v10 = a2[23];
  v110 = a2[22];
  memcpy(v145, a2 + 24, 0x78uLL);
  if ((sub_217273708(*&v4) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_107(__src);
  OUTLINED_FUNCTION_4_101(&__src[19]);
  OUTLINED_FUNCTION_2_107(v141);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v141) == 1)
  {
    OUTLINED_FUNCTION_4_101(v138);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v138) == 1)
    {
      OUTLINED_FUNCTION_2_107(v139);
      sub_217202078(v142, v137, &qword_27CB2AFE8, &qword_2177878C8);
      sub_217202078(v144, v137, &qword_27CB2AFE8, &qword_2177878C8);
      sub_2171F06D8(v139, &qword_27CB2AFE8, &qword_2177878C8);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_113(v142, v139);
    OUTLINED_FUNCTION_1_113(v144, v139);
LABEL_8:
    memcpy(v138, __src, 0x129uLL);
    v18 = &unk_27CB2AFF0;
    v19 = &unk_2177878D0;
    v20 = v138;
LABEL_9:
    sub_2171F06D8(v20, v18, v19);
    return 0;
  }

  OUTLINED_FUNCTION_2_107(v139);
  OUTLINED_FUNCTION_4_101(v138);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v138) == 1)
  {
    OUTLINED_FUNCTION_2_107(v137);
    OUTLINED_FUNCTION_1_113(v142, v131);
    OUTLINED_FUNCTION_1_113(v144, v131);
    OUTLINED_FUNCTION_1_113(v139, v131);
    sub_217284970(v137);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_3_98(v142, v11, v12, v13, v14, v15, v16, v17, v103, v110, v117, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
  OUTLINED_FUNCTION_3_98(v144, v22, v23, v24, v25, v26, v27, v28, v104, v111, v118, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
  OUTLINED_FUNCTION_3_98(v139, v29, v30, v31, v32, v33, v34, v35, v105, v112, v119, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
  v36 = sub_21763D334(a1 + 1, (a2 + 1));
  OUTLINED_FUNCTION_4_101(v124);
  sub_217284970(v124);
  OUTLINED_FUNCTION_2_107(v131);
  sub_217284970(v131);
  OUTLINED_FUNCTION_2_107(v137);
  sub_2171F06D8(v137, &qword_27CB2AFE8, &qword_2177878C8);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v37 = v5 == v9 && v6 == v8;
    if (!v37 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      v38 = OUTLINED_FUNCTION_1_5();
      sub_217275908(v38, v39);
      sub_217275908(v110, v10);
      v40 = OUTLINED_FUNCTION_1_5();
      sub_217275680(v40, v41);
      goto LABEL_27;
    }

LABEL_25:
    v42 = OUTLINED_FUNCTION_1_5();
    sub_217275908(v42, v43);
    v44 = OUTLINED_FUNCTION_20_6();
    sub_217275908(v44, v45);
    v46 = OUTLINED_FUNCTION_1_5();
    sub_217275680(v46, v47);
    v48 = OUTLINED_FUNCTION_20_6();
    sub_217275680(v48, v49);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_25;
  }

  sub_217275908(v117, v7);
  v50 = OUTLINED_FUNCTION_20_6();
  sub_217275908(v50, v51);
  v52 = MEMORY[0x21CEA1AB0](v117, v7, v110, v10);
  v53 = OUTLINED_FUNCTION_20_6();
  sub_217275680(v53, v54);
  sub_217275680(v117, v7);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v55 = __dst[0];
  v56 = __dst[1];
  memcpy(v124, &__dst[2], sizeof(v124));
  v58 = v145[0];
  v57 = v145[1];
  memcpy(v136, &v145[2], sizeof(v136));
  if (__dst[1])
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    OUTLINED_FUNCTION_10_58();
    memcpy(v138, __src, 0x78uLL);
    if (v57)
    {
      memcpy(&v139[2], &v145[2], 0x68uLL);
      v139[0] = v58;
      v139[1] = v57;
      OUTLINED_FUNCTION_0_121(__dst, v59, v60, v61, v62, v63, v64, v65, v103, v110, v117, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
      OUTLINED_FUNCTION_0_121(v145, v66, v67, v68, v69, v70, v71, v72, v106, v113, v120, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
      OUTLINED_FUNCTION_0_121(__src, v73, v74, v75, v76, v77, v78, v79, v107, v114, v121, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
      static PlayParameters.== infix(_:_:)(v138, v139);
      v81 = v80;
      memcpy(v131, v139, sizeof(v131));
      sub_2172848C0(v131);
      memcpy(v137, v138, 0x78uLL);
      sub_2172848C0(v137);
      v139[0] = v55;
      v139[1] = v56;
      memcpy(&v139[2], v124, 0x68uLL);
      sub_2171F06D8(v139, &qword_27CB244D0, &unk_21775D620);
      return (v81 & 1) != 0;
    }

    memcpy(v139, __src, 0x78uLL);
    OUTLINED_FUNCTION_0_121(__dst, v82, v83, v84, v85, v86, v87, v88, v103, v110, v117, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
    OUTLINED_FUNCTION_0_121(v145, v89, v90, v91, v92, v93, v94, v95, v108, v115, v122, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
    OUTLINED_FUNCTION_0_121(__src, v96, v97, v98, v99, v100, v101, v102, v109, v116, v123, v124[0], v124[1], v124[2], v124[3], v124[4], v124[5], v124[6], v124[7], v124[8], v124[9], v124[10], v124[11], v124[12], v125, v126, v127, v128, v129, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v131[11], v131[12], v131[13], v131[14], v132, v133, v134, v135, v136[0], v136[1], v136[2], v136[3], v136[4], v136[5], v136[6], v136[7], v136[8], v136[9], v136[10], v136[11], v136[12]);
    sub_2172848C0(v139);
    goto LABEL_34;
  }

  if (v145[1])
  {
    OUTLINED_FUNCTION_1_113(__dst, __src);
    OUTLINED_FUNCTION_1_113(v145, __src);
LABEL_34:
    __src[0] = v55;
    __src[1] = v56;
    memcpy(&__src[2], v124, 0x68uLL);
    __src[15] = v58;
    __src[16] = v57;
    memcpy(&__src[17], v136, 0x68uLL);
    v18 = &qword_27CB24AE8;
    v19 = &unk_2177590C0;
    v20 = __src;
    goto LABEL_9;
  }

  __src[0] = __dst[0];
  __src[1] = 0;
  OUTLINED_FUNCTION_10_58();
  OUTLINED_FUNCTION_1_113(__dst, v138);
  OUTLINED_FUNCTION_1_113(v145, v138);
  sub_2171F06D8(__src, &qword_27CB244D0, &unk_21775D620);
  return 1;
}

uint64_t sub_21763D170(const void *a1)
{
  v2 = v1;
  v4 = *v1;
  memcpy(__dst, v2 + 1, sizeof(__dst));
  v5 = v2[21];
  v6 = v2[23];
  v7 = v2[24];
  v8 = v2[25];
  sub_217282F88(a1, v4);
  sub_21726582C();
  if (v5)
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v6 >> 60 == 15)
  {
    OUTLINED_FUNCTION_25();
    if (v8)
    {
LABEL_6:
      memcpy(&v10[2], v2 + 26, 0x68uLL);
      v10[0] = v7;
      v10[1] = v8;
      OUTLINED_FUNCTION_24();
      v11[0] = v7;
      v11[1] = v8;
      memcpy(v12, v2 + 26, sizeof(v12));
      sub_2172DF5A4(v11, v13);
      PlayParameters.hash(into:)(a1);
      memcpy(v13, v10, sizeof(v13));
      return sub_2172848C0(v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_217751778();
    if (v8)
    {
      goto LABEL_6;
    }
  }

  return OUTLINED_FUNCTION_25();
}

uint64_t sub_21763D2AC()
{
  sub_2177531E8();
  sub_21763D170(v1);
  return sub_217753238();
}

uint64_t sub_21763D2F8(uint64_t a1)
{
  sub_2177531E8();
  sub_21763D170(v2);
  return sub_217753238();
}

uint64_t sub_21763D334(double *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = __src[15];
  v5 = *(__src + 128);
  v6 = __src[17];
  v7 = *(__src + 144);
  memcpy(v19, a2, sizeof(v19));
  v8 = *(a2 + 120);
  v9 = *(a2 + 128);
  v10 = *(a2 + 136);
  v11 = *(a2 + 144);
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v16, a2, sizeof(v16));
  sub_2172DF5A4(__dst, v21);
  sub_2172DF5A4(v19, v21);
  static PlayParameters.== infix(_:_:)(__srca, v16);
  LOBYTE(a2) = v12;
  memcpy(v20, v16, sizeof(v20));
  sub_2172848C0(v20);
  memcpy(v21, __srca, sizeof(v21));
  sub_2172848C0(v21);
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v10)
    {
      v15 = v11;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21763D47C(const void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  PlayParameters.hash(into:)(a1);
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_24();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x21CEA3580](v9);
    if (!v6)
    {
      goto LABEL_3;
    }

    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_25();
  if (v6)
  {
    return OUTLINED_FUNCTION_25();
  }

LABEL_3:
  OUTLINED_FUNCTION_24();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x21CEA3580](v7);
}

uint64_t sub_21763D51C()
{
  sub_2177531E8();
  sub_21763D47C(v1);
  return sub_217753238();
}

uint64_t sub_21763D568(uint64_t a1)
{
  sub_2177531E8();
  sub_21763D47C(v2);
  return sub_217753238();
}

void *sub_21763D5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_21763DBA4(v76);
  sub_2175AB364(&v72);
  v9 = v73;
  if (v73)
  {
    v38 = a3;
    v47 = a4;
    v77 = v4;
    v10 = v72;
    v66[0] = v72;
    v66[1] = v73;
    memcpy(v67, v74, sizeof(v67));
    sub_2172DF5A4(v66, v70);
    v11 = MusicPlayer.Queue.Entry.startTime.getter();
    v13 = v12;
    v14 = MusicPlayer.Queue.Entry.endTime.getter();
    v16 = v15;
    memcpy(&__src[2], v74, 0x68uLL);
    v70[0] = v13 & 1;
    v54[0] = v16 & 1;
    __src[0] = v10;
    __src[1] = v9;
    __src[15] = v11;
    LOBYTE(__src[16]) = v13 & 1;
    __src[17] = v14;
    LOBYTE(__src[18]) = v16 & 1;
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_1();
    sub_217202078(a2, v70, &qword_27CB24410, &unk_2177586F0);
    if (v71)
    {
      sub_2175AB364(v54);
      v17 = *&v54[8];
      v45 = *&v54[16];
      v46 = *v54;
      v43 = *&v54[32];
      v44 = *&v54[24];
      v41 = *&v54[48];
      v42 = *&v54[40];
      v39 = *&v54[64];
      v40 = *&v54[56];
      v18 = *&v54[72];
      v19 = *&v54[80];
      v20 = *&v54[88];
      v21 = *&v54[96];
      v22 = *&v54[104];
      v23 = *&v54[112];
      sub_217276358(v70);
    }

    else
    {
      sub_2171F06D8(v70, &qword_27CB24410, &unk_2177586F0);
      v45 = 0;
      v46 = 0;
      v17 = 0;
      v43 = 0;
      v44 = 0;
      v41 = 0;
      v42 = 0;
      v39 = 0;
      v40 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    *v54 = v10;
    *&v54[8] = v9;
    memcpy(&v54[16], v74, 0x68uLL);
    memcpy(v53, v54, sizeof(v53));
    if (v17)
    {
      v75[0] = v46;
      v75[1] = v17;
      v75[2] = v45;
      v75[3] = v44;
      v75[4] = v43;
      v75[5] = v42;
      v75[6] = v41;
      v75[7] = v40;
      v75[8] = v39;
      v75[9] = v18;
      v75[10] = v19;
      v75[11] = v20;
      v75[12] = v21;
      v75[13] = v22;
      v75[14] = v23;
      sub_217202078(v54, v48, &qword_27CB244D0, &unk_21775D620);
      static PlayParameters.== infix(_:_:)(v53, v75);
      v34 = v33;
      memcpy(v49, v75, sizeof(v49));
      sub_2172848C0(v49);
      memcpy(v50, v53, sizeof(v50));
      sub_2172848C0(v50);
      v51[0] = v10;
      v51[1] = v9;
      memcpy(v52, v74, sizeof(v52));
      sub_2171F06D8(v51, &qword_27CB244D0, &unk_21775D620);
      if ((v34 & 1) == 0)
      {
LABEL_14:
        memcpy(v75, __dst, 0x91uLL);
        a4 = v47;
        return memcpy(a4, v75, 0x91uLL);
      }

      memcpy(v54, v38, 0x91uLL);
      memcpy(v38, __dst, 0x91uLL);
      sub_217284914(__src, v75);
      v35 = &qword_27CB2AFE8;
      v36 = &qword_2177878C8;
    }

    else
    {
      memcpy(v75, v54, 0x78uLL);
      sub_217202078(v54, v51, &qword_27CB244D0, &unk_21775D620);
      sub_2172848C0(v75);
      *v54 = v10;
      *&v54[8] = v9;
      memcpy(&v54[16], v74, 0x68uLL);
      *&v54[120] = v46;
      *&v54[128] = 0;
      *&v54[136] = v45;
      *&v54[144] = v44;
      v55 = v43;
      v56 = v42;
      v57 = v41;
      v58 = v40;
      v59 = v39;
      v60 = v18;
      v61 = v19;
      v62 = v20;
      v63 = v21;
      v64 = v22;
      v65 = v23;
      v35 = &qword_27CB24AE8;
      v36 = &unk_2177590C0;
    }

    sub_2171F06D8(v54, v35, v36);
    goto LABEL_14;
  }

  if (qword_27CB23C60 != -1)
  {
    swift_once();
  }

  v24 = sub_217751AF8();
  __swift_project_value_buffer(v24, qword_27CB8A2A0);
  sub_217275AA0(a1, v70);
  v25 = sub_217751AD8();
  v26 = sub_217752808();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v54 = v28;
    *v27 = 136446210;
    v29 = MusicPlayer.Queue.Entry.description.getter();
    v31 = v30;
    sub_217276358(v70);
    v32 = sub_21729C0E8(v29, v31, v54);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2171EE000, v25, v26, "Failed to insert %{public}s into queue descriptor because it's missing play parameters.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x21CEA4360](v28, -1, -1);
    MEMORY[0x21CEA4360](v27, -1, -1);
  }

  else
  {

    sub_217276358(v70);
  }

  memcpy(v75, v76, 0x91uLL);
  return memcpy(a4, v75, 0x91uLL);
}

id sub_21763DB1C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_217215924(0, &qword_27CB2AFE0, off_278228DA8);
  v2 = sub_217752288();
  v3 = [v1 initWithPlayParametersQueue_];

  return v3;
}

uint64_t sub_21763DBD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21763DC10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_21763DCB8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21763DCF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21763DD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2AFF8;
  if (!qword_27CB2AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2AFF8);
  }

  return result;
}

unint64_t sub_21763DDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B000;
  if (!qword_27CB2B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B000);
  }

  return result;
}

void *CloudCoverArtworkRecipe.init(legacyModelRawValue:)@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_217751F98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (!a2 || (sub_217751F88(), v9 = sub_217751F58(), v11 = v10, v12 = , (*(v6 + 8))(v8, v5, v12), v11 >> 60 == 15))
  {
    sub_21733B8A4(v20);
    v17 = v20;
  }

  else
  {
    sub_217751348();
    swift_allocObject();
    v13 = sub_217751338();
    sub_2174AFD08(v13, v14, v15);
    sub_217751308();

    sub_217275680(v9, v11);
    memcpy(v19, v20, 0xE8uLL);
    nullsub_1();
    v17 = v19;
  }

  return memcpy(a3, v17, 0xE8uLL);
}

Swift::String_optional __swiftcall CloudCoverArtworkRecipe.convertToLegacyModelRawValue()()
{
  v1 = sub_217751F98();
  MEMORY[0x28223BE20](v1 - 8);
  sub_217751378();
  swift_allocObject();
  sub_217751368();
  v2 = memcpy(__dst, v0, sizeof(__dst));
  sub_21763E14C(v2, v3, v4);
  v5 = sub_217751358();
  v7 = v6;
  sub_217751F88();
  v8 = sub_217751F68();
  v10 = v9;
  sub_217275694(v5, v7);

  v11 = v8;
  v12 = v10;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

unint64_t sub_21763E14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B008;
  if (!qword_27CB2B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B008);
  }

  return result;
}

uint64_t sub_21763E1AC@<X0>(Swift::String_optional *a1@<X8>)
{
  v3 = CloudCoverArtworkRecipe.convertToLegacyModelRawValue()();
  result = v3.value._countAndFlagsBits;
  *a1 = v3;
  return result;
}

int *sub_21763E1D4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0x100000000;
  if (!v3[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v3[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!v3[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v3[1])
  {
    v7 = 0;
  }

  return sub_21763E308(*a1, v7 | *v3 | v6 | v5 | v4, a3);
}

__int16 *sub_21763E230(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9[0] = a1;
  v4 = FileAsset.convertToLegacyModelStorageDictionary(for:)(v9, a2, a3);
  sub_2172A211C(v4);
  OUTLINED_FUNCTION_0_122();
  return &v6;
}

int *sub_21763E308(char a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = BYTE4(a2);
  v4 = a1;
  CatalogAsset.convertToLegacyModelStorageDictionary(for:)(&v4, a2, a3);
  sub_2172A25C4();
  OUTLINED_FUNCTION_0_122();
  return &v5;
}

int *sub_21763E358(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v5 = a1;
  MusicLyrics.convertToLegacyModelStorageDictionary(for:)(&v5, a2, a3);
  sub_2172A27AC();
  OUTLINED_FUNCTION_0_122();
  return &v6;
}

uint64_t LegacyModelAttributeConvertible<>.convertToRawDictionary(for:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v4 = (*(a4 + 24))(&v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = Dictionary<>.convertToRawDictionary()(v4, AssociatedTypeWitness, AssociatedConformanceWitness);

  return v7;
}

uint64_t LegacyModelAttributeType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

unint64_t sub_21763E560()
{
  result = qword_27CB2B010;
  if (!qword_27CB2B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B018, &qword_217787BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B010);
  }

  return result;
}

unint64_t sub_21763E5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B020;
  if (!qword_27CB2B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LegacyModelAttributeType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21763E734@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  if (qword_280BE7E50 != -1)
  {
    result = swift_once();
  }

  v7 = v4 == qword_280BE7E58 && v5 == unk_280BE7E60;
  if (v7 || (result = sub_217753058(), (result & 1) != 0))
  {
    v8 = 1;
  }

  else if (v6 == 3 || (result = sub_2177072D0(v6, 0), v8 = 0, (result & 1) == 0))
  {
    v8 = 2;
  }

  *a3 = v8;
  return result;
}

void CloudCurator.Kind.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 3;
  if (v3 < 3)
  {
    v4 = v3;
  }

  *a2 = v4;
}

uint64_t CloudCurator.Kind.rawValue.getter()
{
  v1 = 0x65726E6547;
  if (*v0 != 1)
  {
    v1 = 2003789907;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F7461727543;
  }
}

uint64_t sub_21763E8B0@<X0>(uint64_t *a1@<X8>)
{
  result = CloudCurator.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudCurator.Kind.convertToCuratorKind(storePlatformKind:iTunesBrandType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v5 = result == 0x646E617262 && a2 == 0xE500000000000000;
  if (v5 || (v6 = *a3, result = sub_217753058(), (result & 1) != 0))
  {
    v7 = 1;
    goto LABEL_11;
  }

  if (v6 == 3 || (result = sub_2177072D0(v6, 0), v7 = 0, (result & 1) == 0))
  {
LABEL_10:
    v7 = 2;
  }

LABEL_11:
  *a4 = v7;
  return result;
}

unint64_t sub_21763EA44()
{
  result = qword_27CB2B028;
  if (!qword_27CB2B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B030, &qword_217787D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B028);
  }

  return result;
}

unint64_t sub_21763EAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B038;
  if (!qword_27CB2B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B038);
  }

  return result;
}

_BYTE *_s4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21763EBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4F90;
  if (!qword_280BE4F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4F90);
  }

  return result;
}

uint64_t MusicDataRequest.BasicConfiguration.init(cloudRealm:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  v5 = *(a1 + 3);
  *(a2 + 24) = v5;
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t MusicDataRequest.BasicConfiguration.cloudRealm.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_217751DE8();
  sub_217751DE8();

  return sub_217751DE8();
}

uint64_t MusicDataRequest.BasicConfiguration.defaultScheme.getter()
{
  v1 = *(v0 + 40);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.BasicConfiguration.defaultHost.getter()
{
  v1 = *(v0 + 56);
  sub_217751DE8();
  return v1;
}

uint64_t MusicDataRequest.BasicConfiguration.response(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21763ED64, 0, 0);
}

uint64_t sub_21763ED64()
{
  if (qword_280BEB7D0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_21763EE34;

  return MusicDataRequest.Runner.response(for:)();
}

uint64_t sub_21763EE34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static MusicDataRequest.BasicConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v19 = a1[6];
  v20 = a1[5];
  v17 = a1[8];
  v18 = a1[7];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[5];
  v7 = a2[6];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  v15 = a2[8];
  v16 = a2[7];
  if (!v8 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v3 == v4;
  if (!v9 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217270404();
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v20 == v6 && v19 == v7;
  if (!v12 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v18 == v16 && v17 == v15)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t MusicDataRequest.BasicConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_217751FF8();
  sub_217751FF8();
  sub_21727D208(a1, v3);
  sub_217751FF8();

  return sub_217751FF8();
}

uint64_t MusicDataRequest.BasicConfiguration.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_2177531E8();
  sub_217751FF8();
  sub_217751FF8();
  sub_21727D208(v3, v1);
  sub_217751FF8();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_21763F234(uint64_t a1)
{
  sub_2177531E8();
  MusicDataRequest.BasicConfiguration.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_21763F27C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_217514FAC;

  return MusicDataRequest.BasicConfiguration.response(for:)(a1, a2);
}

uint64_t StaticPropertyProvider.update<A>(_:_:)(void *a1)
{
  v1 = *(*a1 + *MEMORY[0x277D84308] + 8);
  MEMORY[0x28223BE20](a1);
  v3 = &v8[-v2];
  sub_217517DEC(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v5 = *(v1 + 16);
  v6 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v6 ^ 1u, 1, v5);
  return swift_setAtWritableKeyPath();
}

uint64_t StaticPropertyProvider.update<A>(_:_:)(uint64_t *a1, uint64_t a2)
{
  sub_217517DEC(a2, v3);
  if (v3[3])
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
    }
  }

  else
  {
    sub_2171F06D8(v3, &qword_27CB2AD40, &qword_2177583F0);
    v4 = 0u;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  return swift_setAtWritableKeyPath();
}

uint64_t StaticPropertyProvider.update<A>(_:_:)()
{
  OUTLINED_FUNCTION_0();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

uint64_t PropertyProvider<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 16))(v9, a1, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v7 ^ 1u, 1, a3);
}

uint64_t PropertyProvider<>.staticPropertyProvider.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_21763F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v45 = a4;
  v44 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v43 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = *(v14 + 16);
  v20(&v42 - v21, v5, a3, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_2171F06D8(&v54, &qword_27CB24B68, &qword_217759430);
LABEL_10:
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000003BLL, 0x80000002177B2E90);
    v38 = sub_217753348();
    MEMORY[0x21CEA23B0](v38);

    MEMORY[0x21CEA23B0](0xD00000000000004FLL, 0x80000002177B2ED0, v39);
    goto LABEL_12;
  }

  sub_2171F3F0C(&v54, v57);
  (v20)(v17, a2, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_2171F06D8(&v51, &qword_27CB24B68, &qword_217759430);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v57);
    goto LABEL_10;
  }

  sub_2171F3F0C(&v51, &v54);
  v22 = dynamic_cast_existential_1_conditional(a3, a3, &protocol descriptor for PropertyProviderBasedInitializable);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1(&v54);
    goto LABEL_9;
  }

  v24 = v22;
  v25 = v23;
  v26 = v58;
  v27 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v26, v27);
  v28 = *(&v55 + 1);
  v29 = v56;
  __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
  PropertyProviderBackedItem.staticPropertyProvider.getter(v28, v29);
  v30 = *(&v52 + 1);
  v31 = v53;
  __swift_mutable_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  StaticPropertyProvider.merge<A>(_:with:)(a1, v50, v30, a3, v31);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v32 = *(&v52 + 1);
  v33 = v53;
  v34 = __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
  v48 = v32;
  v49 = *(v33 + 8);
  v35 = __swift_allocate_boxed_opaque_existential_0(&v46);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = *(v25 + 16);
  v50[3] = v24;
  v50[4] = v25;
  __swift_allocate_boxed_opaque_existential_0(v50);
  v36(&v46, v24, v25);
  sub_2171FF30C(v50, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD20, &qword_21776B020);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
    (*(v14 + 32))(v45, v12, a3);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    __swift_destroy_boxed_opaque_existential_1(&v54);
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  __swift_storeEnumTagSinglePayload(v12, 1, 1, a3);
  (*(v43 + 8))(v12, v44);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_217752AA8();

  v46 = 0xD000000000000027;
  v47 = 0x80000002177B2F20;
  v40 = sub_217753348();
  MEMORY[0x21CEA23B0](v40);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v41);
LABEL_12:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t StaticPropertyProvider.merge<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PartialMusicAsyncProperty(0, a4, a3, a4);
  OUTLINED_FUNCTION_15();
  v8 = sub_2177522A8();
  v15 = v8;
  OUTLINED_FUNCTION_15();
  result = sub_217752388();
  if (v8 != result)
  {
    v10 = *(a5 + 40);
    do
    {
      OUTLINED_FUNCTION_15();
      v11 = sub_217752358();
      sub_2177522D8();
      if (v11)
      {
        v12 = *(a1 + 32 + 8 * v8);
      }

      else
      {
        v12 = sub_217752AC8();
      }

      sub_2177523E8();
      v10(v12, a2, a4, a3, a5);

      OUTLINED_FUNCTION_15();
      result = sub_217752388();
      v8 = v15;
    }

    while (v15 != result);
  }

  return result;
}

uint64_t RadioShow.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v59 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284E0, &qword_21776D4B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for RadioShowPropertyProvider(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;

  memcpy(v72, a1, 0x161uLL);
  v16 = [a2 respondsToSelector_];
  v60 = a2;
  if ((v16 & 1) != 0 && (v17 = [a2 musicKit_modelObjectStorageDictionary]) != 0)
  {
    v18 = v17;
    v19 = sub_217751D98();
  }

  else
  {
    v19 = sub_217751DC8();
  }

  v63 = sub_21729E6F4(v19);

  memcpy(v68, a1, 0x161uLL);
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v66[0] = qword_280BE4BF8;
  v66[1] = qword_280BE4C00;
  LOBYTE(v66[2]) = byte_280BE4C08;
  v65[0] = qword_280BE4BF8;
  v65[1] = qword_280BE4C00;
  LOBYTE(v65[2]) = byte_280BE4C08;
  swift_bridgeObjectRetain_n();
  v73.value.rawValue._countAndFlagsBits = v66;
  v73.value.rawValue._object = v65;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v67, v73, v74);

  countAndFlagsBits = v67[0].type.rawValue._countAndFlagsBits;
  object = v67[0].id.rawValue._object;
  v62 = v67[0].type.rawValue._object;
  isLibraryType = v67[0].type.isLibraryType;
  v58 = v67[0].href.value._countAndFlagsBits;
  v20 = v67[0].href.value._object;
  sub_21736C814(a3, v67);
  v55 = a3;
  if (!v67[0].type.rawValue._object)
  {
    sub_2171F06D8(v67, &qword_27CB27590, &qword_21776ADF0);
    memset(v68, 0, 40);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v68, 0, 40);
    goto LABEL_14;
  }

  if (!*(&v68[1] + 1))
  {
LABEL_14:
    sub_2171F06D8(v68, &qword_27CB24B68, &qword_217759430);
    goto LABEL_15;
  }

  sub_2171F3F0C(v68, v69);
  v21 = v70;
  v22 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    sub_2174B362C(v9, v12);
    sub_217640854(v12, v15);
    memcpy(v68, v72, 0x161uLL);
    v23 = v10[15];
    memcpy(v65, &v12[v23], 0x161uLL);
    memcpy(v64, &v12[v23], sizeof(v64));
    sub_217269EF4(v65, v67);
    MusicIdentifierSet.union(_:)();
    memcpy(v66, v64, 0x161uLL);
    sub_217269F50(v66);
    sub_2174B3690(v12);
    sub_217269F50(v72);
    v24 = v10[15];
    memcpy(v68, &v15[v24], 0x161uLL);
    sub_217269F50(v68);
    memcpy(&v15[v24], v67, 0x161uLL);
    v25 = &v15[v10[16]];
    v26 = v62;
    sub_217751DE8();

    *v25 = countAndFlagsBits;
    *(v25 + 1) = v26;
    v25[16] = isLibraryType;
    v27 = &v15[v10[17]];

    *v27 = v58;
    v27[1] = v20;
    __swift_destroy_boxed_opaque_existential_1(v69);
    goto LABEL_20;
  }

  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  sub_2171F06D8(v9, &qword_27CB284E0, &qword_21776D4B8);
  __swift_destroy_boxed_opaque_existential_1(v69);
LABEL_15:
  v28 = v20;
  sub_217751DE8();
  sub_217751DE8();
  v54 = OUTLINED_FUNCTION_0_123();
  v53 = OUTLINED_FUNCTION_0_123();
  v29 = OUTLINED_FUNCTION_0_123();
  v30 = OUTLINED_FUNCTION_0_123();
  sub_2172A497C(v68);
  memcpy(v15, v68, 0x221uLL);
  *(v15 + 552) = 0u;
  *(v15 + 71) = 1;
  *(v15 + 36) = 0u;
  *(v15 + 37) = 0u;
  *(v15 + 38) = 0u;
  *(v15 + 39) = 0u;
  *(v15 + 80) = 0;
  memcpy(v15 + 648, v68, 0x221uLL);
  *(v15 + 75) = 0u;
  v31 = v10[11];
  v32 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v15[v31], 1, 1, v32);
  v33 = &v15[v10[12]];
  *(v33 + 12) = 0;
  *(v33 + 4) = 0u;
  *(v33 + 5) = 0u;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v15[v10[13]] = 0;
  if (qword_280BE3578 != -1)
  {
    swift_once();
  }

  v34 = qword_280C01FB8;
  if (qword_280C01FB8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v52 = sub_217752D28();
    v35 = v28;

    v36 = v62;
    object = v34;
    v34 = v52;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v35 = v28;
    v36 = v62;
  }

  *&v15[v10[14]] = v34;
  v37 = &v15[v10[17]];
  memcpy(&v15[v10[15]], v72, 0x161uLL);
  v38 = &v15[v10[16]];
  *v38 = countAndFlagsBits;
  *(v38 + 1) = v36;
  v38[16] = isLibraryType;
  *v37 = v58;
  v37[1] = v35;
  v39 = v53;
  *&v15[v10[18]] = v54;
  *&v15[v10[19]] = v39;
  *&v15[v10[20]] = v29;
  *&v15[v10[21]] = v30;
  a3 = v55;
LABEL_20:
  v40 = v63;
  if (!*(v15 + 151))
  {
    v41 = sub_2172A3830(2, v63);
    if (v42)
    {
      *(v15 + 150) = v41;
      *(v15 + 151) = v42;
    }
  }

  swift_getKeyPath(byte_217787F58);
  sub_2173AC988(4, v40);
  if (*(&v68[1] + 1))
  {
    v43 = swift_dynamicCast();
    if (v43)
    {
      v44 = v67[0].id.rawValue._countAndFlagsBits;
    }

    else
    {
      v44 = 0;
    }

    if (v43)
    {
      v45 = v67[0].id.rawValue._object;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    sub_2171F06D8(v68, &qword_27CB2AD40, &qword_2177583F0);
    v44 = 0;
    v45 = 0;
  }

  sub_2173AC988(5, v40);
  if (!v65[3])
  {
    sub_2171F06D8(v65, &qword_27CB2AD40, &qword_2177583F0);
    if (v45)
    {
      v48 = 0;
      v47 = 0;
      goto LABEL_43;
    }

LABEL_44:

    v67[0].id = xmmword_2177586D0;
    v67[0].type.rawValue = 0u;
    *&v67[0].type.isLibraryType = 0u;
    *&v67[0].href.value._object = 0u;
    goto LABEL_45;
  }

  v46 = swift_dynamicCast();
  if (v46)
  {
    v47 = *&v68[0];
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v48 = *(&v68[0] + 1);
  }

  else
  {
    v48 = 0;
  }

  if (v45)
  {
    goto LABEL_43;
  }

  if (!v48)
  {
    goto LABEL_44;
  }

  v48 = *(&v68[0] + 1);
LABEL_43:

  v67[0].id.rawValue._countAndFlagsBits = v44;
  v67[0].id.rawValue._object = v45;
  v67[0].type.rawValue._countAndFlagsBits = v47;
  v67[0].type.rawValue._object = v48;
  *&v67[0].type.isLibraryType = 0u;
  *&v67[0].href.value._object = 0u;
LABEL_45:
  v68[0] = v67[0].id;
  v68[1] = v67[0].type.rawValue;
  v68[2] = *&v67[0].type.isLibraryType;
  v68[3] = *&v67[0].href.value._object;
  sub_2172A54C0();

  sub_2171F06D8(v67, &qword_27CB24B70, &unk_217759460);
  v66[3] = v10;
  v66[4] = &protocol witness table for RadioShowPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v66);
  sub_217640854(v15, boxed_opaque_existential_0);
  RadioShow.init(propertyProvider:)(v66, v59);
  swift_unknownObjectRelease();
  sub_2171F06D8(a3, &qword_27CB27590, &qword_21776ADF0);
  return sub_2174B3690(v15);
}

uint64_t sub_217640854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioShowPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RadioShow.convertToLegacyModelStorageDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2172A4AA8(a1, a2, a3);
  v79 = sub_217751DC8();
  v3 = objc_opt_self();
  v4 = [v3 rawValueForKind_];
  v5 = MEMORY[0x277D83B88];
  v77 = MEMORY[0x277D83B88];
  v75 = v4;
  sub_21729D33C(&v75, 0, v6, v7, v8, v9, v10, v11, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1));
  if (qword_280BE6658 != -1)
  {
    swift_once();
  }

  v12 = sub_2172A3F00(qword_280C02000);
  if (v13)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  v22 = MEMORY[0x277D837D0];
  v78[3] = MEMORY[0x277D837D0];
  if (v13)
  {
    v21 = v13;
  }

  v78[0] = v20;
  v78[1] = v21;
  sub_21729D33C(v78, 2, v14, v15, v16, v17, v18, v19, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1));
  if (qword_280BE6698 != -1)
  {
    swift_once();
  }

  v30 = qword_280C02028;
  sub_2176CA348(qword_280C02028, v23, v24, v25, v26, v27, v28, v29, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, v75);
  v37 = v76;
  if (v76 == 1 || (v38 = v75, sub_217751DE8(), sub_2171F06D8(&v75, &qword_27CB24B70, &unk_217759460), !v37))
  {
    v72 = 0u;
    v73 = 0u;
  }

  else
  {
    *(&v73 + 1) = v22;
    *&v72 = v38;
    *(&v72 + 1) = v37;
  }

  sub_21729D33C(&v72, 4, v31, v32, v33, v34, v35, v36, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1));
  sub_2176CA348(v30, v39, v40, v41, v42, v43, v44, v45, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1), v73, *(&v73 + 1), v74, v75);
  if (v65 == 1 || (v53 = v66, v52 = v67, sub_217751DE8(), sub_2171F06D8(&v64, &qword_27CB24B70, &unk_217759460), !v52))
  {
    v62 = 0u;
    v63 = 0u;
  }

  else
  {
    *(&v63 + 1) = v22;
    *&v62 = v53;
    *(&v62 + 1) = v52;
  }

  sub_21729D33C(&v62, 5, v46, v47, v48, v49, v50, v51, v62, *(&v62 + 1), v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1));
  v54 = [v3 rawValueForSubKind_];
  sub_21729D33C(&v62, 6, v55, v56, v57, v58, v59, v60, v54, *(&v62 + 1), v63, v5, v64, v65, v66, v67, v68, v69, v70, v71, v72, *(&v72 + 1));
  return v79;
}

void *sub_217640B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v17[1] = a3;
  v17[2] = a5;
  v18 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CloudResourceCollection(0, v13, v12, v13);
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v22, a1, v14);
  (*(v9 + 16))(v11, a2, a4);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2174D0DD8();
  (*(v9 + 8))(a2, a4);
  (*(v15 + 8))(a1, v14);
  return sub_2173AA804(__src, v18);
}

void GenrePropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v29 = v0;
  v30 = v1;
  v28 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memcpy(__dst, v13, sizeof(__dst));
  v14 = *v10;
  v15 = v10[1];
  v16 = *(v10 + 16);
  sub_2172A497C(__src);
  memcpy(v12, __src, 0x221uLL);
  *(v12 + 552) = 0u;
  *(v12 + 568) = 0u;
  *(v12 + 584) = 1;
  v17 = type metadata accessor for GenrePropertyProvider(0);
  *(v12 + 592) = 0u;
  *(v12 + 608) = 0u;
  *(v12 + 624) = 0u;
  *(v12 + 640) = 0;
  v18 = sub_2177517D8();
  OUTLINED_FUNCTION_82_12(v18);
  memcpy((v12 + v17[10]), __src, 0x221uLL);
  v19 = (v12 + v17[11]);
  *v19 = 0;
  v19[1] = 0;
  v20 = v12 + v17[12];
  *(v20 + 48) = 0;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *v20 = 0u;
  *(v20 + 56) = -1;
  v21 = sub_2177516D8();
  OUTLINED_FUNCTION_82_12(v21);
  v22 = (v12 + v17[14]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v12 + v17[15];
  *(v23 + 96) = 0;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v12 + v17[16]) = 0;
  if (qword_280BE3A58 != -1)
  {
    swift_once();
  }

  v24 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v27 = sub_217752D28();

    v24 = v27;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v17[17]) = v24;
  v25 = (v12 + v17[20]);
  memcpy((v12 + v17[18]), __dst, 0x161uLL);
  v26 = v12 + v17[19];
  *v26 = v14;
  *(v26 + 8) = v15;
  *(v26 + 16) = v16;
  *v25 = v8;
  v25[1] = v6;
  *(v12 + v17[21]) = v4;
  *(v12 + v17[22]) = v28;
  *(v12 + v17[23]) = v29;
  *(v12 + v17[24]) = v30;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for GenrePropertyProvider(uint64_t a1)
{
  result = qword_280BE3A40;
  if (!qword_280BE3A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenrePropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *GenrePropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

void GenrePropertyProvider.chartLabel.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 552) = v2;
  *(v1 + 560) = v0;
}

uint64_t GenrePropertyProvider.editorialNotes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[37];
  v7[0] = v1[36];
  v7[1] = v2;
  v4 = v1[39];
  v8 = v1[38];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_21726A630(v7, &v6, &qword_27CB24B70, &unk_217759460);
}

__n128 GenrePropertyProvider.editorialNotes.setter(uint64_t a1)
{
  v3 = v1[37];
  v8[0] = v1[36];
  v8[1] = v3;
  v4 = v1[39];
  v8[2] = v1[38];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(a1 + 16);
  v1[36] = *a1;
  v1[37] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[38] = result;
  v1[39] = v7;
  return result;
}

uint64_t GenrePropertyProvider.libraryAddedDate.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = type metadata accessor for GenrePropertyProvider(v2);
  return sub_21733BBDC(v0, v1 + *(v3 + 36), &qword_27CB241C0, &qword_217759480);
}

uint64_t GenrePropertyProvider.libraryAddedDate.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.mainUberArtwork.getter()
{
  v2 = *(OUTLINED_FUNCTION_69_18() + 40);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  memcpy(v0, (v1 + v2), 0x221uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB24400, &unk_21775E9A0);
}

void *GenrePropertyProvider.mainUberArtwork.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = *(type metadata accessor for GenrePropertyProvider(v2) + 40);
  memcpy(__dst, (v1 + v3), 0x221uLL);
  sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + v3), v0, 0x221uLL);
}

uint64_t GenrePropertyProvider.mainUberArtwork.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.name.getter()
{
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void GenrePropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_143();
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  v1[1] = v0;
}

uint64_t GenrePropertyProvider.name.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.url.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = type metadata accessor for GenrePropertyProvider(v2);
  return sub_21733BBDC(v0, v1 + *(v3 + 52), &unk_27CB277C0, &qword_217758DC0);
}

uint64_t GenrePropertyProvider.url.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.shortName.getter()
{
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void GenrePropertyProvider.shortName.setter()
{
  OUTLINED_FUNCTION_143();
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  v1[1] = v0;
}

uint64_t GenrePropertyProvider.shortName.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.playlists.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = type metadata accessor for GenrePropertyProvider(v2);
  return sub_21733BBDC(v0, v1 + *(v3 + 60), &qword_27CB25330, &unk_21775E9B0);
}

uint64_t GenrePropertyProvider.playlists.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for GenrePropertyProvider(0);

  return sub_217751DE8();
}

void GenrePropertyProvider.searchContextSnippets.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = *(type metadata accessor for GenrePropertyProvider(v2) + 64);

  *(v1 + v3) = v0;
}

uint64_t GenrePropertyProvider.searchContextSnippets.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

void GenrePropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B040, &unk_217787FD8);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177B2F80);
    v71[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_55_12();
    v67 = 49;
    goto LABEL_88;
  }

  v13 = qword_280BE6A70;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_31_39(&qword_280BE6A70);
  }

  if (OUTLINED_FUNCTION_174(qword_280C021E8))
  {
    memcpy(v71, v2, 0x221uLL);
    memcpy(v72, v2, 0x221uLL);
    OUTLINED_FUNCTION_104(v72);
    if (!v14)
    {
LABEL_45:
      v16 = swift_allocObject();
      memcpy(v70, v71, sizeof(v70));
      sub_217284028(v70, &v69);

      memcpy((v16 + 16), v72, 0x221uLL);
      v15 = &type metadata for Artwork;
      goto LABEL_46;
    }

LABEL_7:

    v15 = 0;
    v16 = 0;
    goto LABEL_46;
  }

  v17 = qword_280BE6AE0;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_7_66(&qword_280BE6AE0);
  }

  OUTLINED_FUNCTION_174(qword_280BE6AE8);
  OUTLINED_FUNCTION_161();
  if (v17)
  {
    v18 = *(v2 + 560);
    if (!v18)
    {
      v20 = 0;
      v19 = 0;
      goto LABEL_26;
    }

    v19 = *(v2 + 552);
LABEL_13:
    sub_217751DE8();
    v20 = MEMORY[0x277D837D0];
LABEL_26:

    *v6 = v19;
    v6[1] = v18;
    v6[2] = 0;
    v6[3] = v20;
    goto LABEL_84;
  }

  v21 = qword_280BE6AA8;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_6_86(&qword_280BE6AA8);
  }

  OUTLINED_FUNCTION_174(qword_280C02210);
  OUTLINED_FUNCTION_161();
  if (v21)
  {
    v22 = *(v2 + 568);
    if (v22)
    {
      v23 = &qword_27CB24BE8;
      v24 = &qword_2177595F0;
LABEL_19:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      sub_217751DE8();
LABEL_83:

      *v6 = v22;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = v25;
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  v26 = qword_280BE6AD0;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_39_28(&qword_280BE6AD0);
  }

  OUTLINED_FUNCTION_174(qword_280C02228);
  OUTLINED_FUNCTION_161();
  if (v26)
  {
    v27 = *(v2 + 576);
    v28 = *(v2 + 584);
    v29 = *(v2 + 608);
    *v70 = *(v2 + 592);
    *&v70[16] = v29;
    *&v70[32] = *(v2 + 624);
    if (v28 != 1)
    {
      v16 = swift_allocObject();
      *&v72[0] = v27;
      *(&v72[0] + 1) = v28;
      v30 = *(v2 + 608);
      v72[1] = *(v2 + 592);
      v72[2] = v30;
      v72[3] = *(v2 + 624);
      sub_217350F74(v72, v71);

      *(v16 + 16) = v27;
      *(v16 + 24) = v28;
      v31 = *&v70[16];
      *(v16 + 32) = *v70;
      *(v16 + 48) = v31;
      *(v16 + 64) = *&v70[32];
      v15 = &type metadata for EditorialNotes;
      goto LABEL_46;
    }

    goto LABEL_7;
  }

  v32 = qword_280BE6A98;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_5_86(&qword_280BE6A98);
  }

  OUTLINED_FUNCTION_174(qword_280C02208);
  OUTLINED_FUNCTION_161();
  if (v32)
  {
    v22 = *(v2 + 640);
    if (v22)
    {
      v23 = &qword_27CB24BE0;
      v24 = &unk_2177657E0;
      goto LABEL_19;
    }

LABEL_82:
    v25 = 0;
    goto LABEL_83;
  }

  v33 = qword_280BE6AB8;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_38_31(&qword_280BE6AB8);
  }

  OUTLINED_FUNCTION_174(qword_280C02218);
  OUTLINED_FUNCTION_161();
  if (v33)
  {
    v34 = type metadata accessor for GenrePropertyProvider(0);
    sub_21726A630(v2 + *(v34 + 36), v12, &qword_27CB241C0, &qword_217759480);
    v35 = sub_2177517D8();
    OUTLINED_FUNCTION_73(v12);
    if (!v14)
    {
      *(&v72[1] + 1) = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v72);
      (*(*(v35 - 8) + 32))(boxed_opaque_existential_0, v12, v35);
LABEL_48:

      goto LABEL_49;
    }

    v36 = &qword_27CB241C0;
    v37 = &qword_217759480;
    v38 = v12;
    goto LABEL_38;
  }

  v39 = qword_280BE6AC0;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_37_33(&qword_280BE6AC0);
  }

  OUTLINED_FUNCTION_174(qword_280C02220);
  OUTLINED_FUNCTION_161();
  if (v39)
  {
    v40 = *(type metadata accessor for GenrePropertyProvider(0) + 40);
    memcpy(v71, (v2 + v40), 0x221uLL);
    memcpy(v72, (v2 + v40), 0x221uLL);
    OUTLINED_FUNCTION_104(v72);
    if (!v14)
    {
      goto LABEL_45;
    }

    v16 = 0;
    v15 = 0;
LABEL_46:
    *v6 = v16;
LABEL_47:
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v15;
    goto LABEL_84;
  }

  v43 = qword_280BE6A88;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_71(&qword_280BE6A88);
  }

  OUTLINED_FUNCTION_174(qword_280C021F8);
  OUTLINED_FUNCTION_161();
  if (v43)
  {
    v44 = *(type metadata accessor for GenrePropertyProvider(0) + 44);
LABEL_54:
    v45 = (v2 + v44);
    v18 = v45[1];
    if (!v18)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_26;
    }

    v19 = *v45;
    goto LABEL_13;
  }

  v46 = qword_280BE6A80;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_35_34(&qword_280BE6A80);
  }

  OUTLINED_FUNCTION_174(qword_280C021F0);
  OUTLINED_FUNCTION_161();
  if (v46)
  {
    v47 = type metadata accessor for GenrePropertyProvider(0);
    sub_21726A630(v2 + *(v47 + 48), v72, &qword_27CB256A0, &unk_21775D750);
    if (BYTE8(v72[3]) == 255)
    {

      sub_2171F0738(v72, &qword_27CB256A0, &unk_21775D750);
      v48 = 0;
      v15 = 0;
    }

    else
    {
      v48 = swift_allocObject();
      sub_2172941E0(v48, v49, v50, v51, v52, v53, v54, v55);

      sub_2171F0738(v72, &qword_27CB24618, &qword_217778790);
      v15 = &type metadata for Genre;
    }

    *v6 = v48;
    goto LABEL_47;
  }

  v56 = qword_280BE6AF8;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_34_35(&qword_280BE6AF8);
  }

  OUTLINED_FUNCTION_174(qword_280C02230);
  OUTLINED_FUNCTION_161();
  if (v56)
  {
    v44 = *(type metadata accessor for GenrePropertyProvider(0) + 56);
    goto LABEL_54;
  }

  v57 = qword_280BE6A90;

  if (v57 != -1)
  {
    OUTLINED_FUNCTION_33_39(&qword_280BE6A90);
  }

  OUTLINED_FUNCTION_174(qword_280C02200);
  OUTLINED_FUNCTION_161();
  if (v57)
  {
    v58 = type metadata accessor for GenrePropertyProvider(0);
    sub_21726A630(v2 + *(v58 + 52), v1, &unk_27CB277C0, &qword_217758DC0);
    v59 = sub_2177516D8();
    OUTLINED_FUNCTION_73(v1);
    if (!v14)
    {
      *(&v72[1] + 1) = v59;
      v64 = __swift_allocate_boxed_opaque_existential_0(v72);
      (*(*(v59 - 8) + 32))(v64, v1, v59);
      goto LABEL_48;
    }

    v36 = &unk_27CB277C0;
    v37 = &qword_217758DC0;
    v38 = v1;
LABEL_38:
    sub_2171F0738(v38, v36, v37);
    memset(v72, 0, 32);
LABEL_49:
    v42 = v72[1];
    *v6 = v72[0];
    *(v6 + 1) = v42;
    goto LABEL_84;
  }

  v60 = qword_280BE6B08;

  if (v60 != -1)
  {
    OUTLINED_FUNCTION_4_102(&qword_280BE6B08);
  }

  OUTLINED_FUNCTION_174(qword_280BE6B10);
  OUTLINED_FUNCTION_161();
  if ((v60 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
    swift_allocObject();
    v65 = OUTLINED_FUNCTION_54_0();
    v66 = OUTLINED_FUNCTION_174(v65);

    if ((v66 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_52_17();
        sub_217752AA8();
        OUTLINED_FUNCTION_49_16();
        MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
        v71[0] = v4;
        type metadata accessor for AnyMusicProperty();
        sub_217752C78();
        OUTLINED_FUNCTION_217_0();
        OUTLINED_FUNCTION_55_12();
        v67 = 83;
LABEL_88:
        v68 = v67;
        OUTLINED_FUNCTION_150_7("Fatal error");
        __break(1u);
      }
    }

    v22 = *(v2 + *(type metadata accessor for GenrePropertyProvider(0) + 64));
    if (v22)
    {
      v23 = &qword_27CB24BD8;
      v24 = &unk_2177595E0;
      goto LABEL_19;
    }

    goto LABEL_82;
  }

  v61 = type metadata accessor for GenrePropertyProvider(0);
  sub_21726A630(v2 + *(v61 + 60), v72, &qword_27CB25330, &unk_21775E9B0);
  if (*(&v72[5] + 1))
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
    v63 = swift_allocObject();
    memcpy((v63 + 16), v72, 0x68uLL);
  }

  else
  {

    sub_2171F0738(v72, &qword_27CB25330, &unk_21775E9B0);
    v63 = 0;
    v62 = 0;
  }

  *v6 = v63;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = v62;
LABEL_84:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217642224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21726A630(a1, &v4, &qword_27CB2AD40, &qword_2177583F0);

  return GenrePropertyProvider.subscript.setter();
}

uint64_t GenrePropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B040, &unk_217787FD8);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000024, 0x80000002177B2F80);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_21;
  }

  v1 = qword_280BE6AE0;
  swift_retain_n();
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_7_66(&qword_280BE6AE0);
  }

  OUTLINED_FUNCTION_139_7(qword_280BE6AE8);
  OUTLINED_FUNCTION_44_1();

  if (v1)
  {
    swift_getKeyPath(byte_217788070);
    OUTLINED_FUNCTION_15_6();
    sub_217351C94();
  }

  else
  {
    v2 = qword_280BE6AA8;

    if (v2 != -1)
    {
      OUTLINED_FUNCTION_6_86(&qword_280BE6AA8);
    }

    OUTLINED_FUNCTION_139_7(qword_280C02210);
    OUTLINED_FUNCTION_44_1();

    if (v2)
    {
      swift_getKeyPath("ȫ=e");
      OUTLINED_FUNCTION_15_6();
      sub_217351C74(v3, v4);
    }

    else
    {
      v5 = qword_280BE6A98;

      if (v5 != -1)
      {
        OUTLINED_FUNCTION_5_86(&qword_280BE6A98);
      }

      OUTLINED_FUNCTION_139_7(qword_280C02208);
      OUTLINED_FUNCTION_44_1();

      if (v5)
      {
        swift_getKeyPath(byte_217788030);
        OUTLINED_FUNCTION_15_6();
        sub_217351C78(v6, v7);
      }

      else
      {
        v8 = qword_280BE6B08;

        if (v8 != -1)
        {
          OUTLINED_FUNCTION_4_102(&qword_280BE6B08);
        }

        OUTLINED_FUNCTION_139_7(qword_280BE6B10);
        OUTLINED_FUNCTION_44_1();

        if ((v8 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
          swift_initStackObject();
          v11 = OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_139_7(v11);
          OUTLINED_FUNCTION_44_1();

          while (1)
          {
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            OUTLINED_FUNCTION_217_0();
LABEL_21:
            OUTLINED_FUNCTION_150_7("Fatal error");
            __break(1u);
          }
        }

        swift_getKeyPath(byte_217788010);
        OUTLINED_FUNCTION_15_6();
        sub_217351CB4(v9, v10);
      }
    }
  }

  return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
}

void (*GenrePropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  GenrePropertyProvider.subscript.getter();
  return sub_217642648;
}

void sub_217642648(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    GenrePropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    GenrePropertyProvider.subscript.setter();
  }

  free(v2);
}

void GenrePropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B60, &unk_217759420);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = (v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C70, &qword_21776B9D0);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177B2FB0);
    v30[0] = v6;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v7 + 216), v27, v28);
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v29 = 114;
    goto LABEL_34;
  }

  v1 = v17;
  sub_2171FF30C(v4, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_2171F0738(v11, &qword_27CB24B60, &unk_217759420);
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177B2FE0);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v29 = 117;
    goto LABEL_34;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  sub_217646014(v11, v16, type metadata accessor for GenrePropertyProvider);
  v18 = qword_280BE6AE0;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_7_66(&qword_280BE6AE0);
  }

  OUTLINED_FUNCTION_174(qword_280BE6AE8);
  OUTLINED_FUNCTION_36_14();

  if (v18)
  {

    v19 = v16[69];
    v20 = v16[70];
    sub_217751DE8();
    OUTLINED_FUNCTION_1_115();
    if (!v20)
    {
      v19 = v2[69];
      v20 = sub_217751DE8();
    }

    v2[69] = v19;
    v2[70] = v20;
  }

  else
  {
    v21 = qword_280BE6AA8;

    if (v21 != -1)
    {
      OUTLINED_FUNCTION_6_86(&qword_280BE6AA8);
    }

    OUTLINED_FUNCTION_174(qword_280C02210);
    OUTLINED_FUNCTION_36_14();

    if (v21)
    {

      v22 = v16[71];
      sub_217751DE8();
      OUTLINED_FUNCTION_1_115();
      if (!v22)
      {
        v22 = sub_217751DE8();
      }

      v2[71] = v22;
    }

    else
    {
      v23 = qword_280BE6A98;

      if (v23 != -1)
      {
        OUTLINED_FUNCTION_5_86(&qword_280BE6A98);
      }

      OUTLINED_FUNCTION_174(qword_280C02208);
      OUTLINED_FUNCTION_36_14();

      if (v23)
      {

        v24 = v16[80];
        sub_217751DE8();
        OUTLINED_FUNCTION_1_115();
        if (!v24)
        {
          v24 = sub_217751DE8();
        }

        v2[80] = v24;
      }

      else
      {
        v25 = qword_280BE6B08;

        if (v25 != -1)
        {
          OUTLINED_FUNCTION_4_102(&qword_280BE6B08);
        }

        OUTLINED_FUNCTION_174(qword_280BE6B10);
        OUTLINED_FUNCTION_36_14();

        if ((v25 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
          swift_initStackObject();
          v26 = OUTLINED_FUNCTION_54_0();
          OUTLINED_FUNCTION_174(v26);
          OUTLINED_FUNCTION_36_14();

          while (1)
          {
            OUTLINED_FUNCTION_28_23();
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177B3010);
            v30[0] = v1;
            sub_217752C78();
            OUTLINED_FUNCTION_217_0();
            OUTLINED_FUNCTION_30_22();
            v29 = 135;
LABEL_34:
            v30[0] = v29;
            OUTLINED_FUNCTION_150_7("Fatal error");
            __break(1u);
          }
        }

        sub_21726A630(v16 + *(v12 + 60), v30, &qword_27CB25330, &unk_21775E9B0);
        OUTLINED_FUNCTION_1_115();
        if (v30[11])
        {
          memcpy(v31, v30, 0x68uLL);
        }

        else
        {
          sub_21726A630(v2 + *(v12 + 60), v31, &qword_27CB25330, &unk_21775E9B0);
          if (v30[11])
          {
            sub_2171F0738(v30, &qword_27CB25330, &unk_21775E9B0);
          }
        }

        sub_21733BBDC(v31, v2 + *(v12 + 60), &qword_27CB25330, &unk_21775E9B0);
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217642CE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217787FC0;
  if (qword_280BE6A70 != -1)
  {
    OUTLINED_FUNCTION_31_39(&qword_280BE6A70);
  }

  *(v0 + 32) = qword_280C021E8;
  v1 = qword_280BE6AE0;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_7_66(&qword_280BE6AE0);
  }

  *(v0 + 40) = qword_280BE6AE8;
  v2 = qword_280BE6AA8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_6_86(&qword_280BE6AA8);
  }

  *(v0 + 48) = qword_280C02210;
  v3 = qword_280BE6AD0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_39_28(&qword_280BE6AD0);
  }

  *(v0 + 56) = qword_280C02228;
  v4 = qword_280BE6A98;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_5_86(&qword_280BE6A98);
  }

  *(v0 + 64) = qword_280C02208;
  v5 = qword_280BE6AB8;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_38_31(&qword_280BE6AB8);
  }

  *(v0 + 72) = qword_280C02218;
  v6 = qword_280BE6AC0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_37_33(&qword_280BE6AC0);
  }

  *(v0 + 80) = qword_280C02220;
  v7 = qword_280BE6A88;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_71(&qword_280BE6A88);
  }

  *(v0 + 88) = qword_280C021F8;
  v8 = qword_280BE6A80;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_35_34(&qword_280BE6A80);
  }

  *(v0 + 96) = qword_280C021F0;
  v9 = qword_280BE6AF8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_34_35(&qword_280BE6AF8);
  }

  *(v0 + 104) = qword_280C02230;
  v10 = qword_280BE6A90;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_33_39(&qword_280BE6A90);
  }

  *(v0 + 112) = qword_280C02200;
  v11 = qword_280BE6B08;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_4_102(&qword_280BE6B08);
  }

  *(v0 + 120) = qword_280BE6B10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
  swift_allocObject();
  *(v0 + 128) = OUTLINED_FUNCTION_54_0();
  qword_280C01FD0 = v0;
}

uint64_t GenrePropertyProvider.knownProperties.getter()
{
  type metadata accessor for GenrePropertyProvider(0);

  return sub_217751DE8();
}

uint64_t GenrePropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_69_18() + 72);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *GenrePropertyProvider.identifierSet.setter()
{
  v2 = OUTLINED_FUNCTION_8_20();
  v3 = *(type metadata accessor for GenrePropertyProvider(v2) + 72);
  memcpy(__dst, (v1 + v3), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v3), v0, 0x161uLL);
}

uint64_t GenrePropertyProvider.identifierSet.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_69_18() + 76));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void GenrePropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t GenrePropertyProvider.type.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.href.getter()
{
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void GenrePropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  v1[1] = v0;
}

uint64_t GenrePropertyProvider.href.modify()
{
  v0 = OUTLINED_FUNCTION_8_20();
  type metadata accessor for GenrePropertyProvider(v0);
  return OUTLINED_FUNCTION_51();
}

uint64_t GenrePropertyProvider.rawAttributes.getter()
{
  type metadata accessor for GenrePropertyProvider(0);

  return sub_217751DE8();
}

uint64_t GenrePropertyProvider.rawRelationships.getter()
{
  type metadata accessor for GenrePropertyProvider(0);

  return sub_217751DE8();
}

uint64_t GenrePropertyProvider.rawAssociations.getter()
{
  type metadata accessor for GenrePropertyProvider(0);

  return sub_217751DE8();
}

uint64_t GenrePropertyProvider.rawMetadata.getter()
{
  type metadata accessor for GenrePropertyProvider(0);

  return sub_217751DE8();
}

void static GenrePropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v342 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v343 = &v337 - v14;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v345 = &v337 - v16;
  sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v346 = v18;
  v347 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_45_0(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_131_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v27 = &v337 - v26;
  v28 = OUTLINED_FUNCTION_39_6();
  memcpy(v28, v5, 0x221uLL);
  v29 = OUTLINED_FUNCTION_60_26();
  memcpy(v29, v3, 0x221uLL);
  v30 = OUTLINED_FUNCTION_23_48();
  memcpy(v30, v5, 0x221uLL);
  memcpy(v370, v3, sizeof(v370));
  memcpy(v371, v5, 0x221uLL);
  OUTLINED_FUNCTION_104(v371);
  if (v44)
  {
    v31 = OUTLINED_FUNCTION_16_61();
    memcpy(v31, v370, 0x221uLL);
    v32 = OUTLINED_FUNCTION_16_61();
    OUTLINED_FUNCTION_104(v32);
    if (!v44)
    {
      OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_117_0();
      sub_21726A630(v60, v61, v62, v63);
      OUTLINED_FUNCTION_60_26();
LABEL_10:
      OUTLINED_FUNCTION_117_0();
      sub_21726A630(v64, v65, v66, v67);
      goto LABEL_11;
    }

    v340 = v8;
    v341 = v6;
    OUTLINED_FUNCTION_32_39();
    OUTLINED_FUNCTION_20_43();
    memcpy(v33, v34, 0x221uLL);
    v35 = OUTLINED_FUNCTION_39_6();
    sub_21726A630(v35, v359, &qword_27CB24400, &unk_21775E9A0);
    v36 = OUTLINED_FUNCTION_60_26();
    sub_21726A630(v36, v359, &qword_27CB24400, &unk_21775E9A0);
    v37 = OUTLINED_FUNCTION_32_39();
    sub_2171F0738(v37, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    OUTLINED_FUNCTION_32_39();
    OUTLINED_FUNCTION_20_43();
    memcpy(v38, v39, 0x221uLL);
    OUTLINED_FUNCTION_20_43();
    memcpy(v40, v41, 0x221uLL);
    v42 = OUTLINED_FUNCTION_16_61();
    memcpy(v42, v370, 0x221uLL);
    v43 = OUTLINED_FUNCTION_16_61();
    OUTLINED_FUNCTION_104(v43);
    if (v44)
    {
      OUTLINED_FUNCTION_20_43();
      memcpy(v45, v46, 0x221uLL);
      OUTLINED_FUNCTION_39_6();
      OUTLINED_FUNCTION_117_0();
      sub_21726A630(v47, v48, v49, v50);
      OUTLINED_FUNCTION_60_26();
      OUTLINED_FUNCTION_117_0();
      sub_21726A630(v51, v52, v53, v54);
      OUTLINED_FUNCTION_32_39();
      OUTLINED_FUNCTION_117_0();
      sub_21726A630(v55, v56, v57, v58);
      v59 = v353;
LABEL_9:
      sub_217284084(v59);
LABEL_11:
      OUTLINED_FUNCTION_16_61();
      OUTLINED_FUNCTION_20_43();
      memcpy(v68, v69, 0x449uLL);
      v70 = OUTLINED_FUNCTION_16_61();
LABEL_12:
      sub_2171F0738(v70, v71, v72);
      goto LABEL_13;
    }

    v340 = v8;
    v341 = v6;
    memcpy(v353, v370, 0x221uLL);
    v73 = OUTLINED_FUNCTION_39_6();
    OUTLINED_FUNCTION_68_21(v73);
    v74 = OUTLINED_FUNCTION_60_26();
    OUTLINED_FUNCTION_68_21(v74);
    v75 = OUTLINED_FUNCTION_32_39();
    OUTLINED_FUNCTION_68_21(v75);
    v76 = static Artwork.== infix(_:_:)(v359, v353);
    memcpy(v351, v353, 0x221uLL);
    sub_217284084(v351);
    memcpy(v352, v359, 0x221uLL);
    sub_217284084(v352);
    OUTLINED_FUNCTION_20_43();
    memcpy(v77, v78, 0x221uLL);
    sub_2171F0738(v353, &qword_27CB24400, &unk_21775E9A0);
    if ((v76 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v79 = *(v5 + 560);
  v80 = v3[70];
  if (v79)
  {
    if (!v80)
    {
      goto LABEL_13;
    }

    v81 = *(v5 + 552) == v3[69] && v79 == v80;
    if (!v81 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v80)
  {
    goto LABEL_13;
  }

  v82 = v3;
  v83 = *(v5 + 568);
  v339 = v82;
  v84 = *(v82 + 71);
  if (v83)
  {
    if (!v84)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262A00();
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v84)
  {
    goto LABEL_13;
  }

  v87 = *(v5 + 592);
  v354[0] = *(v5 + 576);
  v354[1] = v87;
  v88 = *(v5 + 592);
  v354[2] = *(v5 + 608);
  v89 = *(v5 + 608);
  v354[3] = *(v5 + 624);
  v90 = v339[37];
  v355 = v339[36];
  v356 = v90;
  v91 = v339[37];
  v357 = v339[38];
  v92 = v339[38];
  v358 = v339[39];
  v352[0] = v88;
  v352[1] = v89;
  v352[2] = *(v5 + 624);
  v93 = v354[0];
  v94 = *(&v355 + 1);
  v351[0] = v91;
  v351[1] = v92;
  v351[2] = v339[39];
  if (*(&v354[0] + 1) == 1)
  {
    if (*(&v355 + 1) == 1)
    {
      *&v364 = *&v354[0];
      *(&v364 + 1) = 1;
      OUTLINED_FUNCTION_12_54(*(v5 + 592), *(v5 + 608));
      OUTLINED_FUNCTION_81_16();
      *(v95 + 255) = v96;
      OUTLINED_FUNCTION_73_18();
      sub_21726A630(v97, v98, &qword_27CB24B70, &unk_217759460);
      OUTLINED_FUNCTION_73_18();
      sub_21726A630(v99, v100, &qword_27CB24B70, &unk_217759460);
      v101 = OUTLINED_FUNCTION_23_48();
      sub_2171F0738(v101, &qword_27CB24B70, &unk_217759460);
      v102 = v339;
      goto LABEL_38;
    }

    v109 = v355;
    v110 = *&v354[0];
    OUTLINED_FUNCTION_20_43();
    sub_21726A630(v126, v127, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_20_43();
    sub_21726A630(v128, v129, &qword_27CB24B70, &unk_217759460);
LABEL_35:
    *&v364 = v110;
    *(&v364 + 1) = *(&v93 + 1);
    OUTLINED_FUNCTION_12_54(v352[0], v352[1]);
    OUTLINED_FUNCTION_81_16();
    *(v130 + 255) = v131;
    v367.n128_u64[0] = v109;
    v367.n128_u64[1] = v94;
    v368 = v351[0];
    v369[0] = v351[1];
    v369[1] = v351[2];
    goto LABEL_36;
  }

  v364 = v354[0];
  OUTLINED_FUNCTION_12_54(*(v5 + 592), *(v5 + 608));
  OUTLINED_FUNCTION_81_16();
  *(v105 + 255) = v106;
  v103[113] = v364;
  v103[114] = v107;
  v103[115] = v108;
  v103[116] = v106;
  if (v94 == 1)
  {
    v109 = v104;
    v110 = v93;
    v111 = v365;
    v103[182] = v364;
    v103[183] = v111;
    OUTLINED_FUNCTION_81_16();
    v113 = *(v112 + 255);
    *(v114 + 2944) = v115;
    *(v114 + 2960) = v113;
    OUTLINED_FUNCTION_57_21();
    sub_21726A630(v116, v117, v118, &unk_217759460);
    OUTLINED_FUNCTION_57_21();
    sub_21726A630(v119, v120, v121, &unk_217759460);
    OUTLINED_FUNCTION_23_48();
    OUTLINED_FUNCTION_57_21();
    sub_21726A630(v122, v123, v124, &unk_217759460);
    v125 = OUTLINED_FUNCTION_32_39();
    sub_217351248(v125);
    goto LABEL_35;
  }

  v102 = v339;
  v132 = v339[38];
  v103[183] = v339[37];
  v103[184] = v132;
  v103[185] = v102[39];
  *&v360 = v104;
  *(&v360 + 1) = v94;
  v133 = OUTLINED_FUNCTION_16_61();
  HIDWORD(v338) = static EditorialNotes.== infix(_:_:)(v133, &v360);
  v353[0] = v360;
  v353[1] = v361;
  v353[2] = v362;
  v353[3] = v363;
  v337 = v93;
  sub_21726A630(v354, v359, &qword_27CB24B70, &unk_217759460);
  OUTLINED_FUNCTION_57_21();
  sub_21726A630(v134, v135, v136, &unk_217759460);
  OUTLINED_FUNCTION_23_48();
  OUTLINED_FUNCTION_57_21();
  sub_21726A630(v137, v138, v139, &unk_217759460);
  sub_217351248(v353);
  v359[0] = v359[35];
  v359[1] = v359[36];
  v359[2] = v359[37];
  v359[3] = v359[38];
  sub_217351248(v359);
  *&v360 = v337;
  *(&v360 + 1) = *(&v93 + 1);
  v361 = v352[0];
  v362 = v352[1];
  v363 = v352[2];
  v140 = OUTLINED_FUNCTION_32_39();
  sub_2171F0738(v140, &qword_27CB24B70, &unk_217759460);
  if ((v338 & 0x100000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_38:
  v141 = *(v102 + 80);
  if (*(v5 + 640))
  {
    if (!v141)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262CB4();
    v143 = v142;

    if ((v143 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v141)
  {
    goto LABEL_13;
  }

  v144 = type metadata accessor for GenrePropertyProvider(0);
  v145 = v144[9];
  v146 = *(v24 + 48);
  sub_21726A630(v5 + v145, v27, &qword_27CB241C0, &qword_217759480);
  v147 = v339 + v145;
  v148 = v339;
  sub_21726A630(v147, &v27[v146], &qword_27CB241C0, &qword_217759480);
  v149 = v347;
  if (__swift_getEnumTagSinglePayload(v27, 1, v347) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v27[v146], 1, v149) == 1)
    {
      sub_2171F0738(v27, &qword_27CB241C0, &qword_217759480);
      goto LABEL_50;
    }

LABEL_48:
    v71 = &qword_27CB25C10;
    v72 = &unk_217765A50;
    v70 = v27;
    goto LABEL_12;
  }

  sub_21726A630(v27, v0, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(&v27[v146], 1, v149) == 1)
  {
    (*(v346 + 8))(v0, v149);
    goto LABEL_48;
  }

  v150 = v346;
  (*(v346 + 32))(v21, &v27[v146], v149);
  OUTLINED_FUNCTION_24_41();
  sub_217645C8C(v151, v152, MEMORY[0x277CC9598]);
  v153 = sub_217751F08();
  v154 = *(v150 + 8);
  v154(v21, v149);
  v154(v0, v149);
  v148 = v339;
  sub_2171F0738(v27, &qword_27CB241C0, &qword_217759480);
  if ((v153 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_50:
  v155 = v144[10];
  memcpy(v353, (v5 + v155), 0x221uLL);
  v156 = v144;
  v157 = v144[10];
  memcpy(v359, v148 + v157, 0x221uLL);
  v158 = OUTLINED_FUNCTION_23_48();
  memcpy(v158, (v5 + v155), 0x221uLL);
  memcpy(v370, v148 + v157, sizeof(v370));
  v159 = OUTLINED_FUNCTION_32_39();
  memcpy(v159, (v5 + v155), 0x221uLL);
  v160 = OUTLINED_FUNCTION_32_39();
  OUTLINED_FUNCTION_104(v160);
  if (v44)
  {
    v161 = OUTLINED_FUNCTION_16_61();
    memcpy(v161, v370, 0x221uLL);
    v162 = OUTLINED_FUNCTION_16_61();
    OUTLINED_FUNCTION_104(v162);
    if (v44)
    {
      OUTLINED_FUNCTION_20_43();
      memcpy(v163, v164, 0x221uLL);
      OUTLINED_FUNCTION_46_3();
      sub_21726A630(v165, v166, v167, v168);
      OUTLINED_FUNCTION_46_3();
      sub_21726A630(v169, v170, v171, v172);
      sub_2171F0738(v352, &qword_27CB24400, &unk_21775E9A0);
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_117_0();
    sub_21726A630(v194, v195, v196, v197);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_20_43();
  memcpy(v173, v174, 0x221uLL);
  OUTLINED_FUNCTION_20_43();
  memcpy(v175, v176, 0x221uLL);
  v177 = OUTLINED_FUNCTION_16_61();
  memcpy(v177, v370, 0x221uLL);
  v178 = OUTLINED_FUNCTION_16_61();
  OUTLINED_FUNCTION_104(v178);
  if (v179)
  {
    OUTLINED_FUNCTION_20_43();
    memcpy(v180, v181, 0x221uLL);
    OUTLINED_FUNCTION_117_0();
    sub_21726A630(v182, v183, v184, v185);
    OUTLINED_FUNCTION_117_0();
    sub_21726A630(v186, v187, v188, v189);
    OUTLINED_FUNCTION_117_0();
    sub_21726A630(v190, v191, v192, v193);
    v59 = v350;
    goto LABEL_9;
  }

  memcpy(v350, v370, 0x221uLL);
  OUTLINED_FUNCTION_46_3();
  sub_21726A630(v198, v199, v200, v201);
  OUTLINED_FUNCTION_46_3();
  sub_21726A630(v202, v203, v204, v205);
  OUTLINED_FUNCTION_46_3();
  sub_21726A630(v206, v207, v208, v209);
  v210 = static Artwork.== infix(_:_:)(v351, v350);
  memcpy(v348, v350, 0x221uLL);
  sub_217284084(v348);
  memcpy(v349, v351, 0x221uLL);
  sub_217284084(v349);
  OUTLINED_FUNCTION_20_43();
  memcpy(v211, v212, 0x221uLL);
  sub_2171F0738(v350, &qword_27CB24400, &unk_21775E9A0);
  if ((v210 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_59:
  v213 = v144[11];
  v214 = *(v148 + v213 + 8);
  if (*(v5 + v213 + 8))
  {
    if (!v214)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v5 + v213);
    v217 = v44 && v215 == v216;
    if (!v217 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v214)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_20_43();
  OUTLINED_FUNCTION_46_3();
  sub_21726A630(v218, v219, v220, v221);
  OUTLINED_FUNCTION_46_3();
  sub_21726A630(v222, v223, v224, v225);
  if (v366 == 255)
  {
    if (BYTE8(v369[1]) == 255)
    {
      v240 = OUTLINED_FUNCTION_23_48();
      sub_2171F0738(v240, v241, v242);
      goto LABEL_74;
    }

LABEL_36:
    v70 = OUTLINED_FUNCTION_23_48();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23_48();
  OUTLINED_FUNCTION_73_18();
  sub_21726A630(v226, v227, v228, v229);
  if (BYTE8(v369[1]) == 255)
  {
    v254 = OUTLINED_FUNCTION_16_61();
    sub_2171F0738(v254, v255, v256);
    goto LABEL_36;
  }

  v352[0] = v367;
  v352[1] = v368;
  v352[2] = v369[0];
  *(&v352[2] + 9) = *(v369 + 9);
  OUTLINED_FUNCTION_44_27();
  OUTLINED_FUNCTION_16_61();
  OUTLINED_FUNCTION_117_0();
  v235 = sub_217644EA4(v230, v231, v232, v233, v234);
  sub_2171F0738(v352, &qword_27CB24618, &qword_217778790);
  v236 = OUTLINED_FUNCTION_16_61();
  sub_2171F0738(v236, &qword_27CB24618, &qword_217778790);
  v237 = OUTLINED_FUNCTION_23_48();
  sub_2171F0738(v237, v238, v239);
  if ((v235 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_74:
  v243 = v345;
  v244 = *(v344 + 48);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v245, v246, v247, v248);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v249, v250, v251, v252);
  v253 = v341;
  if (__swift_getEnumTagSinglePayload(v243, 1, v341) == 1)
  {
    OUTLINED_FUNCTION_73(v243 + v244);
    if (!v44)
    {
      goto LABEL_83;
    }

    sub_2171F0738(v243, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v257 = v343;
    sub_21726A630(v243, v343, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_73(v243 + v244);
    if (v44)
    {
      (*(v340 + 8))(v257, v253);
LABEL_83:
      v71 = &qword_27CB24840;
      v72 = &unk_217758DD0;
      v70 = v243;
      goto LABEL_12;
    }

    v258 = v340;
    v259 = v342;
    (*(v340 + 32))(v342, v243 + v244, v253);
    OUTLINED_FUNCTION_28_44();
    sub_217645C8C(v260, v261, MEMORY[0x277CC9278]);
    v262 = v253;
    v263 = sub_217751F08();
    v264 = *(v258 + 8);
    v264(v259, v262);
    v264(v257, v262);
    sub_2171F0738(v243, &unk_27CB277C0, &qword_217758DC0);
    if ((v263 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_64_23();
  if (v267)
  {
    if (!v265)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_59_0(v266);
    v270 = v44 && v268 == v269;
    if (!v270 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v265)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_20_43();
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v271, v272, v273, v274);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v275, v276, v277, v278);
  if (!v368.n128_u64[1])
  {
    if (!*&v369[6])
    {
      v289 = OUTLINED_FUNCTION_23_48();
      sub_2171F0738(v289, v290, v291);
      goto LABEL_100;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_23_48();
  OUTLINED_FUNCTION_73_18();
  sub_21726A630(v279, v280, v281, v282);
  if (!*&v369[6])
  {
    v296 = OUTLINED_FUNCTION_16_61();
    sub_2171F0738(v296, v297, v298);
    goto LABEL_36;
  }

  memcpy(v352, v369 + 8, 0x68uLL);
  v283 = OUTLINED_FUNCTION_16_61();
  v284 = sub_21733E390(v283, v352);
  sub_2171F0738(v352, &unk_27CB28230, &unk_21775CD50);
  v285 = OUTLINED_FUNCTION_16_61();
  sub_2171F0738(v285, &unk_27CB28230, &unk_21775CD50);
  v286 = OUTLINED_FUNCTION_23_48();
  sub_2171F0738(v286, v287, v288);
  if ((v284 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_100:
  v292 = v156[16];
  v293 = *(v339 + v292);
  if (*(v5 + v292))
  {
    if (!v293)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_21726F358();
    v295 = v294;

    if ((v295 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v293)
  {
    goto LABEL_13;
  }

  v299 = OUTLINED_FUNCTION_19_38(v156[17]);
  sub_217270140(v299, v300, v301, v302, v303, v304, v305, v306, v337, v338, v339, v340);
  if (v307)
  {
    v308 = v156[18];
    memcpy(v351, (v5 + v308), 0x161uLL);
    memcpy(v350, (v5 + v308), 0x161uLL);
    v309 = v156[18];
    memcpy(v352, v339 + v309, 0x161uLL);
    memcpy(v349, v339 + v309, 0x161uLL);
    sub_217269EF4(v351, v348);
    sub_217269EF4(v352, v348);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v309) = v310;
    v311 = OUTLINED_FUNCTION_16_61();
    memcpy(v311, v349, 0x161uLL);
    v312 = OUTLINED_FUNCTION_16_61();
    sub_217269F50(v312);
    v313 = OUTLINED_FUNCTION_23_48();
    memcpy(v313, v350, 0x161uLL);
    v314 = OUTLINED_FUNCTION_23_48();
    sub_217269F50(v314);
    if (v309)
    {
      v315 = v156[19];
      v316 = *(v5 + v315);
      v317 = *(v5 + v315 + 8);
      v318 = (v339 + v315);
      v319 = v316 == *v318 && v317 == v318[1];
      if (v319 || (sub_217753058() & 1) != 0)
      {
        OUTLINED_FUNCTION_64_23();
        if (!v322)
        {
          if (v320)
          {
            goto LABEL_13;
          }

          goto LABEL_123;
        }

        if (v320)
        {
          OUTLINED_FUNCTION_59_0(v321);
          v325 = v44 && v323 == v324;
          if (v325 || (sub_217753058() & 1) != 0)
          {
LABEL_123:
            v326 = OUTLINED_FUNCTION_19_38(v156[21]);
            sub_217261FB0(v326, v327);
            if (v328)
            {
              v329 = OUTLINED_FUNCTION_19_38(v156[22]);
              sub_217261FB0(v329, v330);
              if (v331)
              {
                v332 = OUTLINED_FUNCTION_19_38(v156[23]);
                sub_217261FB0(v332, v333);
                if (v334)
                {
                  v335 = OUTLINED_FUNCTION_19_38(v156[24]);
                  sub_217261FB0(v335, v336);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void GenrePropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v52 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v54 = &v51 - v12;
  v13 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v51 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_45_0(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_225_3(v65);
  OUTLINED_FUNCTION_225_3(v66);
  OUTLINED_FUNCTION_104(v66);
  if (v21)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v58, v65, sizeof(v58));
    OUTLINED_FUNCTION_119();
    memcpy(v59, v65, 0x221uLL);
    sub_217284028(v59, v60);
    Artwork.hash(into:)(v4);
    memcpy(v60, v58, 0x221uLL);
    sub_217284084(v60);
  }

  v55 = v5;
  if (*(v0 + 560))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 568))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v22 = *(v0 + 592);
  v61 = *(v0 + 576);
  v62 = v22;
  v23 = *(v0 + 624);
  v63 = *(v0 + 608);
  v64 = v23;
  sub_217265238();
  if (*(v0 + 640))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v24 = type metadata accessor for GenrePropertyProvider(0);
  sub_21726A630(v0 + v24[9], v1, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(v1, 1, v13) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v25 = v51;
    (*(v51 + 32))(v18, v1, v13);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_24_41();
    sub_217645C8C(v26, v27, MEMORY[0x277CC9588]);
    sub_217751EB8();
    (*(v25 + 8))(v18, v13);
  }

  v28 = v24[10];
  memcpy(v59, (v2 + v28), 0x221uLL);
  memcpy(v60, (v2 + v28), 0x221uLL);
  OUTLINED_FUNCTION_104(v60);
  if (v21)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v56, v59, sizeof(v56));
    OUTLINED_FUNCTION_119();
    memcpy(v57, v59, sizeof(v57));
    sub_217284028(v57, v58);
    Artwork.hash(into:)(v4);
    memcpy(v58, v56, sizeof(v58));
    sub_217284084(v58);
  }

  if (*(v2 + v24[11] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v29 = v55;
  sub_21726A630(v2 + v24[12], v58, &qword_27CB256A0, &unk_21775D750);
  if (v58[56] == 255)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    *v57 = *v58;
    *&v57[16] = *&v58[16];
    *&v57[32] = *&v58[32];
    *&v57[41] = *&v58[41];
    OUTLINED_FUNCTION_119();
    sub_217645B58(v4);
    sub_2171F0738(v57, &qword_27CB24618, &qword_217778790);
  }

  v30 = v54;
  sub_21726A630(v2 + v24[13], v54, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v32 = v52;
    v31 = v53;
    (*(v53 + 32))(v52, v30, v29);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_28_44();
    sub_217645C8C(v33, v34, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v31 + 8))(v32, v29);
  }

  if (*(v2 + v24[14] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v2 + v24[15], v58, &qword_27CB25330, &unk_21775E9B0);
  if (*&v58[88])
  {
    memcpy(v57, v58, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v57, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v35 = *(v2 + v24[16]);
  if (v35)
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0(v4, v35, v36, v37, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v41 = OUTLINED_FUNCTION_201();
  sub_217281970(v41, v42);
  memcpy(v58, (v2 + v24[18]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v4);
  sub_217751FF8();
  if (*(v2 + v24[20] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v43 = OUTLINED_FUNCTION_201();
  sub_217265A08(v43, v44);
  v45 = OUTLINED_FUNCTION_201();
  sub_217265A08(v45, v46);
  v47 = OUTLINED_FUNCTION_201();
  sub_217265A08(v47, v48);
  v49 = OUTLINED_FUNCTION_201();
  sub_217265A08(v49, v50);
  OUTLINED_FUNCTION_13();
}

uint64_t GenrePropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  GenrePropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_217644D54(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  GenrePropertyProvider.subscript.getter();
  return sub_217642648;
}

uint64_t sub_217644DD0(uint64_t a1)
{
  sub_2177531E8();
  GenrePropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217644EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(__int128 *))
{
  sub_21726A630(a1, &v29, a3, a4);
  sub_21726A630(a2, &v34, a3, a4);
  if (v33)
  {
    if (v38)
    {
      if (*(v29 + 16) == *(v34 + 16) && *(v29 + 24) == *(v34 + 24))
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_217753058();
      }

LABEL_27:

      return v10 & 1;
    }

    v28 = v37;
    v26 = v35;
    v27 = v36;
    v25 = v34;
    v11 = *(v29 + 16);
    v12 = *(v29 + 24);
    v14 = *(&v34 + 1);
    v13 = v34;
LABEL_11:
    if (v11 == v13 && v12 == v14)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_217753058();
    }

    a5(&v25);
    goto LABEL_27;
  }

  if (v38)
  {
    v28 = v32;
    v26 = v30;
    v27 = v31;
    v25 = v29;
    v12 = *(&v29 + 1);
    v11 = v29;
    v13 = *(v34 + 16);
    v14 = *(v34 + 24);
    goto LABEL_11;
  }

  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v22 = v34;
  v23[0] = v35;
  v23[1] = v36;
  v24 = v37;
  v16 = v29 == v34 && *(&v29 + 1) == *(&v22 + 1);
  if (v16 || (v10 = 0, (sub_217753058() & 1) != 0))
  {
    v17 = *(&v27 + 1);
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v19 = *(v18 + 104);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
    v10 = v19(v23, v20, v17, v18);
  }

  a5(&v22);
  a5(&v25);
  return v10 & 1;
}

void sub_217645100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_84_13();
  a51 = v53;
  a52 = v54;
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v55, v56, v57, v58);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v59, v60, v61, v62);
  if (a33)
  {
    OUTLINED_FUNCTION_79_18();
    if (v63)
    {
      OUTLINED_FUNCTION_14_56();
      v66 = v66 && v64 == v65;
      if (!v66)
      {
        sub_217753058();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_108();
    Track.innerItem.getter();
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v76 = OUTLINED_FUNCTION_8_72();
    v78 = v77(v76);
    v80 = v79;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    if (&unk_2177589C0 != v78 || v52 != v80)
    {
      OUTLINED_FUNCTION_17_52();
    }

LABEL_21:

    sub_21727576C(&a17);
LABEL_22:

    goto LABEL_23;
  }

  if (a42)
  {
    OUTLINED_FUNCTION_0_124();
    OUTLINED_FUNCTION_41_32();
    Track.innerItem.getter();
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v67 = OUTLINED_FUNCTION_9_71();
    v68(v67);
    v70 = v69;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    OUTLINED_FUNCTION_72_17();
    if (!v66 || v70 != v74)
    {
      OUTLINED_FUNCTION_50_25(v71, v72, v73, v74);
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_124();
  OUTLINED_FUNCTION_3_99();
  static Track.== infix(_:_:)(v82, v83);
  OUTLINED_FUNCTION_76_15();
  sub_21727576C(v84);
  sub_21727576C(&a17);
LABEL_23:
  OUTLINED_FUNCTION_85_14();
}

void sub_2176453B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_84_13();
  a51 = v53;
  a52 = v54;
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v55, v56, v57, v58);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v59, v60, v61, v62);
  if (a33)
  {
    OUTLINED_FUNCTION_79_18();
    if (v63)
    {
      OUTLINED_FUNCTION_14_56();
      v66 = v66 && v64 == v65;
      if (!v66)
      {
        sub_217753058();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_108();
    MusicCatalogSearchResponse.TopResult.innerItem.getter(v77);
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v78 = OUTLINED_FUNCTION_8_72();
    v80 = v79(v78);
    v82 = v81;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    if (&qword_217771D80 != v80 || v52 != v82)
    {
      OUTLINED_FUNCTION_17_52();
    }

LABEL_21:

    sub_217283E78(&a17);
LABEL_22:

    goto LABEL_23;
  }

  if (a42)
  {
    OUTLINED_FUNCTION_0_124();
    OUTLINED_FUNCTION_41_32();
    MusicCatalogSearchResponse.TopResult.innerItem.getter(v67);
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v68 = OUTLINED_FUNCTION_9_71();
    v69(v68);
    v71 = v70;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    OUTLINED_FUNCTION_72_17();
    if (!v66 || v71 != v75)
    {
      OUTLINED_FUNCTION_50_25(v72, v73, v74, v75);
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_124();
  OUTLINED_FUNCTION_3_99();
  static MusicCatalogSearchResponse.TopResult.== infix(_:_:)(v84, v85);
  OUTLINED_FUNCTION_76_15();
  sub_217283E78(v86);
  sub_217283E78(&a17);
LABEL_23:
  OUTLINED_FUNCTION_85_14();
}

void sub_217645548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for MusicPersonalRecommendation(0);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  MEMORY[0x28223BE20](v27);
  v29 = (&a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = (&a9 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &a9 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B050, &qword_2177881D8);
  OUTLINED_FUNCTION_45_0(v39);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v42 = (&a9 - v41);
  v44 = *(v43 + 56);
  sub_21726A630(v25, &a9 - v41, &qword_27CB24978, &qword_21776DBA0);
  sub_21726A630(v23, v42 + v44, &qword_27CB24978, &qword_21776DBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v42;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = *(v42 + v44);
      if (*(v45 + 16) != *(v46 + 16) || *(v45 + 24) != *(v46 + 24))
      {
        sub_217753058();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_25_51();
    sub_217646014(v42 + v44, v29, v51);
    if (*(v45 + 16) == *v29 && *(v45 + 24) == v29[1])
    {
LABEL_21:
      OUTLINED_FUNCTION_26_39();
      sub_217646070();
LABEL_22:

      goto LABEL_23;
    }

LABEL_18:
    sub_217753058();
    goto LABEL_21;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *(v42 + v44);
    OUTLINED_FUNCTION_25_51();
    sub_217646014(v42, v32, v49);
    if (*v32 == *(v48 + 16) && v32[1] == *(v48 + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  sub_217646014(v42, v38, type metadata accessor for MusicPersonalRecommendation);
  sub_217646014(v42 + v44, v35, type metadata accessor for MusicPersonalRecommendation);
  static MusicPersonalRecommendation.== infix(_:_:)(v38, v35);
  sub_217646070();
  sub_217646070();
LABEL_23:
  OUTLINED_FUNCTION_13();
}

void sub_217645828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_84_13();
  a51 = v53;
  a52 = v54;
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v55, v56, v57, v58);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v59, v60, v61, v62);
  if (a33)
  {
    OUTLINED_FUNCTION_79_18();
    if (v63)
    {
      OUTLINED_FUNCTION_14_56();
      v66 = v66 && v64 == v65;
      if (!v66)
      {
        sub_217753058();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_108();
    MusicPersonalRecommendation.Item.innerItem.getter(v77);
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v78 = OUTLINED_FUNCTION_8_72();
    v80 = v79(v78);
    v82 = v81;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    if (&unk_21775A270 != v80 || v52 != v82)
    {
      OUTLINED_FUNCTION_17_52();
    }

LABEL_21:

    sub_217283F28(&a17);
LABEL_22:

    goto LABEL_23;
  }

  if (a42)
  {
    OUTLINED_FUNCTION_0_124();
    OUTLINED_FUNCTION_41_32();
    MusicPersonalRecommendation.Item.innerItem.getter(v67);
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v68 = OUTLINED_FUNCTION_9_71();
    v69(v68);
    v71 = v70;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    OUTLINED_FUNCTION_72_17();
    if (!v66 || v71 != v75)
    {
      OUTLINED_FUNCTION_50_25(v72, v73, v74, v75);
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_124();
  OUTLINED_FUNCTION_3_99();
  static MusicPersonalRecommendation.Item.== infix(_:_:)(v84, v85);
  OUTLINED_FUNCTION_76_15();
  sub_217283F28(v86);
  sub_217283F28(&a17);
LABEL_23:
  OUTLINED_FUNCTION_85_14();
}

void sub_2176459C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  OUTLINED_FUNCTION_84_13();
  a51 = v53;
  a52 = v54;
  OUTLINED_FUNCTION_75_15();
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v55, v56, v57, v58);
  OUTLINED_FUNCTION_117_0();
  sub_21726A630(v59, v60, v61, v62);
  if (a33)
  {
    OUTLINED_FUNCTION_79_18();
    if (v63)
    {
      OUTLINED_FUNCTION_14_56();
      v66 = v66 && v64 == v65;
      if (!v66)
      {
        sub_217753058();
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_108();
    MusicLibrarySearchResponse.TopResult.innerItem.getter(v77);
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v78 = OUTLINED_FUNCTION_8_72();
    v80 = v79(v78);
    v82 = v81;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    if (&unk_217778870 != v80 || v52 != v82)
    {
      OUTLINED_FUNCTION_17_52();
    }

LABEL_21:

    sub_217284444(&a17);
LABEL_22:

    goto LABEL_23;
  }

  if (a42)
  {
    OUTLINED_FUNCTION_0_124();
    OUTLINED_FUNCTION_41_32();
    MusicLibrarySearchResponse.TopResult.innerItem.getter(v67);
    __swift_project_boxed_opaque_existential_1(&a9, a12);
    v68 = OUTLINED_FUNCTION_9_71();
    v69(v68);
    v71 = v70;
    __swift_destroy_boxed_opaque_existential_1(&a9);
    OUTLINED_FUNCTION_72_17();
    if (!v66 || v71 != v75)
    {
      OUTLINED_FUNCTION_50_25(v72, v73, v74, v75);
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_124();
  OUTLINED_FUNCTION_3_99();
  static MusicLibrarySearchResponse.TopResult.== infix(_:_:)(v84, v85);
  OUTLINED_FUNCTION_76_15();
  sub_217284444(v86);
  sub_217284444(&a17);
LABEL_23:
  OUTLINED_FUNCTION_85_14();
}

uint64_t sub_217645B58(uint64_t a1)
{
  sub_21726A630(v1, v10, &qword_27CB24618, &qword_217778790);
  if (v12)
  {
    sub_217751DE8();
    sub_217751FF8();
  }

  else
  {
    v6 = v10[0];
    v7 = v10[1];
    v8 = v10[2];
    v9 = v11;
    sub_217751FF8();
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 112))(a1, v4, v5);
    return sub_21728418C(&v6);
  }
}

uint64_t sub_217645C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217645CFC(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_217351B98(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_217351B44(319, &unk_280BE5120, &qword_27CB24618, &qword_217778790);
        v2 = v11;
        if (v12 <= 0x3F)
        {
          sub_217351B98(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          v2 = v13;
          if (v14 <= 0x3F)
          {
            sub_217351B44(319, &qword_280BE7F80, &unk_27CB28230, &unk_21775CD50);
            v2 = v15;
            if (v16 <= 0x3F)
            {
              sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
              v2 = v17;
              if (v18 <= 0x3F)
              {
                sub_217351B98(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
                v2 = v19;
                if (v20 <= 0x3F)
                {
                  sub_217351BFC();
                  v2 = v21;
                  if (v22 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_217646014(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_217646070()
{
  v1 = OUTLINED_FUNCTION_8_20();
  v2(v1);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_34_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_50_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_68_21(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2304, v2, v3);
}

uint64_t OUTLINED_FUNCTION_69_18()
{

  return type metadata accessor for GenrePropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_82_12(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t sub_21764622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176462E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217646268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176462E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2176462E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B060;
  if (!qword_27CB2B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B060);
  }

  return result;
}

uint64_t sub_2176463BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217646478(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176463F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217646478(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_217646478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B070;
  if (!qword_27CB2B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B070);
  }

  return result;
}

uint64_t sub_2176464EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176465A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217646528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176465A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2176465A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B080;
  if (!qword_27CB2B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B080);
  }

  return result;
}

uint64_t sub_21764661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176467D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217646658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176467D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2176466D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176467D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B090;
  if (!qword_27CB2B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B090);
  }

  return result;
}

uint64_t CloudPlaylistFolderItem.id.getter()
{
  v1 = type metadata accessor for CloudPlaylist(0);
  v2 = OUTLINED_FUNCTION_45_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  type metadata accessor for CloudPlaylistFolderItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = (v5 - v4);
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217648B7C(v6, v0);
    v7 = *v0;
    sub_217751DE8();
    sub_217646D5C(v0, type metadata accessor for CloudPlaylist);
  }

  else
  {
    memcpy(v9, v6, 0x132uLL);
    v7 = v9[0];
    sub_217751DE8();
    sub_2175C5F08(v9);
  }

  return v7;
}

uint64_t type metadata accessor for CloudPlaylistFolderItem(uint64_t a1)
{
  result = qword_27CB2B118;
  if (!qword_27CB2B118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CloudPlaylistFolderItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CloudPlaylist(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  type metadata accessor for CloudPlaylistFolderItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v23[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B098, &qword_217788210);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_52();
  v19 = *(v18 + 56);
  sub_217648ACC(a1, v2);
  sub_217648ACC(a2, v2 + v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_116();
    sub_217648ACC(v2, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_5_87();
      sub_217648B7C(v2 + v19, v9);
      v20 = static CloudPlaylist.== infix(_:_:)();
      sub_217646D5C(v9, v15);
      sub_217646D5C(v12, v15);
LABEL_9:
      sub_217646D5C(v2, type metadata accessor for CloudPlaylistFolderItem);
      return v20 & 1;
    }

    OUTLINED_FUNCTION_0_125();
    sub_217646D5C(v12, v21);
  }

  else
  {
    OUTLINED_FUNCTION_1_116();
    sub_217648ACC(v2, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v23, (v2 + v19), 0x132uLL);
      v20 = static CloudPlaylistFolder.== infix(_:_:)(v15, v23);
      sub_2175C5F08(v23);
      sub_2175C5F08(v15);
      goto LABEL_9;
    }

    sub_2175C5F08(v15);
  }

  sub_2171F0738(v2, &qword_27CB2B098, &qword_217788210);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_217646D5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t CloudPlaylistFolderItem.hash(into:)(uint64_t a1)
{
  type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  type metadata accessor for CloudPlaylistFolderItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v1, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_87();
    sub_217648B7C(v1, v6);
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    OUTLINED_FUNCTION_24_42();
    CloudPlaylist.Attributes.hash(into:)();
    v8 = OUTLINED_FUNCTION_24_42();
    sub_217264C3C(v8);
    v9 = OUTLINED_FUNCTION_24_42();
    sub_21726492C(v9);
    v10 = OUTLINED_FUNCTION_24_42();
    sub_2172647B8(v10);
    return sub_217646D5C(v6, v1);
  }

  memcpy(v24, v1, 0x132uLL);
  MEMORY[0x21CEA3550](0);
  sub_217751FF8();
  v12 = v24[5];
  if (!v24[3])
  {
    OUTLINED_FUNCTION_120();
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_120();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_119();
  sub_217751FF8();
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  OUTLINED_FUNCTION_119();
  sub_217751FF8();
LABEL_8:
  sub_2171F5110(&v24[6], v23, &qword_27CB24A40, &qword_217781F90);
  if (v23[2] == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v22, v23, sizeof(v22));
    OUTLINED_FUNCTION_119();
    sub_2171F5110(v22, v21, &qword_27CB24A48, &qword_217759000);
    if (v21[2])
    {
      memcpy(v20, v21, sizeof(v20));
      OUTLINED_FUNCTION_119();
      sub_2172DE7B4(a1);
      sub_2171F0738(v20, &qword_27CB24A50, &qword_217759008);
    }

    else
    {
      OUTLINED_FUNCTION_120();
    }

    sub_217264E2C(a1, v13, v14, v15, v16, v17, v18, v19);
    sub_2172841E0(v22);
  }

  sub_217753208();
  sub_217753208();
  return sub_2175C5F08(v24);
}

uint64_t CloudPlaylistFolderItem.hashValue.getter()
{
  sub_2177531E8();
  CloudPlaylistFolderItem.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176470E8(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylistFolderItem.hash(into:)(v2);
  return sub_217753238();
}

void CloudPlaylistFolderItem.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v3 = OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudPlaylist.Attributes(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_59();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v0, v2);
  OUTLINED_FUNCTION_91();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217648B7C(v2, v1);
    sub_2171FF30C(v0, v14);
    sub_217648ACC(v1 + *(v9 + 20), v8);
    OUTLINED_FUNCTION_17_53();
    sub_217385674(v12);
    sub_217646D5C(v1, type metadata accessor for CloudPlaylist);
  }

  else
  {
    memcpy(v14, v2, 0x132uLL);
    sub_2171FF30C(v0, &v13);
    sub_217751DE8();
    sub_217751DE8();
    sub_217385AAC();
    sub_2175C5F08(v14);
  }

  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_28_45();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_59();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v2, v3);
  OUTLINED_FUNCTION_91();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_109();
    sub_217648B7C(v3, v1);
    sub_2171F5110(v1 + *(v4 + 24), v29, &qword_27CB24358, &unk_21775D510);
    if (v29[2] != 1)
    {

      sub_2171F0738(v29, &qword_27CB24358, &unk_21775D510);
      sub_2171FF30C(v0, v29);
      swift_beginAccess();
      v11 = sub_217751DE8();
      sub_217383728(v11);
      OUTLINED_FUNCTION_787();

      OUTLINED_FUNCTION_17_53();
      Dictionary<>.init(from:skippingValuesFor:)(v12, v13, v14, v15, v16, v17, v18);
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v1, v19);
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_125();
    sub_217646D5C(v1, v7);
    v8 = &qword_27CB24358;
    v9 = &unk_21775D510;
    v10 = v29;
  }

  else
  {
    memcpy(v29, v3, 0x132uLL);
    sub_2171F5110(&v29[6], v28, &qword_27CB24A40, &qword_217781F90);
    if (v28[2] != 1)
    {

      sub_2171F0738(v28, &qword_27CB24A40, &qword_217781F90);
      sub_2171FF30C(v0, v28);
      swift_beginAccess();
      v20 = sub_217751DE8();
      sub_2173838C4(v20);
      OUTLINED_FUNCTION_787();

      OUTLINED_FUNCTION_17_53();
      Dictionary<>.init(from:skippingValuesFor:)(v21, v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_98();
      sub_2175C5F08(v29);
      goto LABEL_8;
    }

    sub_2175C5F08(v29);
    v8 = &qword_27CB24A40;
    v9 = &qword_217781F90;
    v10 = v28;
  }

  sub_2171F0738(v10, v8, v9);
LABEL_8:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_28_45();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_59();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v2, v3);
  OUTLINED_FUNCTION_91();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_109();
    sub_217648B7C(v3, v1);
    sub_2171F5110(v1 + *(v4 + 28), v32, &qword_27CB24350, &unk_21776A5D0);
    if (v32[2] == 1)
    {
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v1, v7);
      sub_2171F0738(v32, &qword_27CB24350, &unk_21776A5D0);
    }

    else
    {

      sub_2171F0738(v32, &qword_27CB24350, &unk_21776A5D0);
      sub_2171FF30C(v0, v32);
      v8 = sub_217383A0C(&unk_28295F028);
      Dictionary<>.init(from:skippingValuesFor:)(v32, v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v1, v14);
    }
  }

  else
  {
    memcpy(v32, v3, 0x132uLL);
    if (v32[38])
    {
      sub_2175C5F08(v32);
    }

    else
    {

      sub_2171FF30C(v0, &v28);
      if (qword_27CB23D20 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2A648, v15, v16, v17, v18, v19, v20, v21, v28, v29, v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8], v32[9], v32[10], v32[11], v32[12]);
      Dictionary<>.init(from:skippingValuesFor:)(&v28, v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_98();
      sub_2175C5F08(v32);
    }
  }

  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v19 = v1;
  v2 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_62();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_44();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_116();
  v5 = OUTLINED_FUNCTION_91();
  sub_217648ACC(v5, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_109();
    OUTLINED_FUNCTION_30_37();
    v7 = *(v2 + 32);
    sub_2171F5110(v0 + v7, v17, &qword_27CB24348, &unk_21775D520);
    if (v17[6] == 1)
    {
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v0, v8);
      sub_2171F0738(v17, &qword_27CB24348, &unk_21775D520);
    }

    else
    {

      sub_2171F0738(v17, &qword_27CB24348, &unk_21775D520);
      sub_2171FF30C(v19, v16);
      sub_2171F5110(v0 + v7, v17, &qword_27CB24348, &unk_21775D520);
      sub_217751DE8();
      OUTLINED_FUNCTION_20_44();
      sub_217387380(v9, v10, v11);
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v0, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_40(v17);
    if ((v18 & 1) == 0)
    {

      sub_2171FF30C(v19, v16);
      sub_217751DE8();
      OUTLINED_FUNCTION_20_44();
      sub_217387D44(v13, v14, v15);
    }

    sub_2175C5F08(v17);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_101();
  type metadata accessor for CloudPlaylist(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_13_59();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v0, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217648B7C(v10, v2);
    OUTLINED_FUNCTION_20_44();
    sub_2173884CC(v11, v12, v13);
    OUTLINED_FUNCTION_98();
    sub_217646D5C(v2, type metadata accessor for CloudPlaylist);
  }

  else
  {
    memcpy(v21, v10, 0x132uLL);
    v14 = v21[2];
    v15 = v21[3];
    v16 = v21[4];
    v17 = v21[5];
    sub_2171FF30C(v4, v20);
    sub_217751DE8();
    sub_217751DE8();
    sub_2174D4498(v14, v15, v16, v17, v20);
    if (!v1)
    {
      OUTLINED_FUNCTION_787();
      sub_217751DE8();
      OUTLINED_FUNCTION_17_53();
      sub_2174D37FC(v18, v19);
      OUTLINED_FUNCTION_98();
    }

    sub_2175C5F08(v21);
  }

  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_19_39(v11, v12);
  v14 = v13;
  v15 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_62();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_44();
  if (*(v14 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_116();
  v18 = OUTLINED_FUNCTION_91();
  sub_217648ACC(v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_109();
    OUTLINED_FUNCTION_30_37();
    sub_2171F5110(v10 + *(v15 + 24), v26, &qword_27CB24358, &unk_21775D510);
    if (v26[2] != 1)
    {

      memcpy(v27, v26, 0x380uLL);
      sub_2173888A8(v27, a10, v14);
      OUTLINED_FUNCTION_98();
      sub_21726A354(v27);
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v10, v24);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_0_125();
    sub_217646D5C(v10, v20);
    v21 = &qword_27CB24358;
    v22 = &unk_21775D510;
    v23 = v26;
  }

  else
  {
    OUTLINED_FUNCTION_31_40(v27);
    sub_2171F5110(&v27[48], v25, &qword_27CB24A40, &qword_217781F90);
    if (v25[2] != 1)
    {

      memcpy(v26, v25, 0x100uLL);
      sub_217388AE8(v26, a10, v14);
      OUTLINED_FUNCTION_98();
      sub_2172841E0(v26);
      sub_2175C5F08(v27);
      goto LABEL_11;
    }

    sub_2175C5F08(v27);
    v21 = &qword_27CB24A40;
    v22 = &qword_217781F90;
    v23 = v25;
  }

  sub_2171F0738(v23, v21, v22);
LABEL_11:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_19_39(v13, v14);
  v15 = OUTLINED_FUNCTION_101();
  v16 = type metadata accessor for CloudPlaylist(v15);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_62();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_44();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_116();
  v19 = OUTLINED_FUNCTION_91();
  sub_217648ACC(v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_109();
    OUTLINED_FUNCTION_30_37();
    sub_2171F5110(v12 + *(v16 + 28), v28, &qword_27CB24350, &unk_21776A5D0);
    if (v28[2] == 1)
    {
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v12, v21);
      sub_2171F0738(v28, &qword_27CB24350, &unk_21776A5D0);
    }

    else
    {

      memcpy(v29, v28, 0x200uLL);
      OUTLINED_FUNCTION_20_44();
      sub_217388C50(v22, v23, v24);
      OUTLINED_FUNCTION_26_40();
      sub_21726A300(v29);
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v12, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_40(v29);
    if ((v29[304] & 1) == 0)
    {

      sub_2171FF30C(a10, v28);
      sub_2174D5864(v28);
      if (!v11)
      {
        OUTLINED_FUNCTION_787();
        sub_217751DE8();
        OUTLINED_FUNCTION_17_53();
        sub_2174D37FC(v26, v27);
        OUTLINED_FUNCTION_26_40();
      }
    }

    sub_2175C5F08(v29);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistFolderItem.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_19_39(v13, v14);
  v15 = OUTLINED_FUNCTION_101();
  v16 = type metadata accessor for CloudPlaylist(v15);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_62();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_44();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_116();
  v19 = OUTLINED_FUNCTION_91();
  sub_217648ACC(v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_2_109();
    OUTLINED_FUNCTION_30_37();
    sub_2171F5110(v12 + *(v16 + 32), v28, &qword_27CB24348, &unk_21775D520);
    if (v28[6] == 1)
    {
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v12, v21);
      sub_2171F0738(v28, &qword_27CB24348, &unk_21775D520);
    }

    else
    {

      memcpy(v29, v28, 0x140uLL);
      OUTLINED_FUNCTION_20_44();
      sub_217388E88(v22, v23, v24);
      OUTLINED_FUNCTION_26_40();
      sub_21726A2AC(v29);
      OUTLINED_FUNCTION_0_125();
      sub_217646D5C(v12, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_40(v29);
    if ((v29[305] & 1) == 0)
    {

      sub_2171FF30C(a10, v28);
      sub_2174D61CC(v28);
      if (!v11)
      {
        OUTLINED_FUNCTION_787();
        sub_217751DE8();
        OUTLINED_FUNCTION_17_53();
        sub_2174D37FC(v26, v27);
        OUTLINED_FUNCTION_26_40();
      }
    }

    sub_2175C5F08(v29);
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21764827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217648B28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176482B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217648B28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylistFolderItem.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v62 = v5;
  sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v59 = v6;
  v60 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v61 = v9 - v8;
  v10 = type metadata accessor for CloudPlaylist(0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B0A0, &unk_217788218);
  OUTLINED_FUNCTION_0_0();
  v64 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_8();
  v18 = type metadata accessor for CloudPlaylistFolderItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21_44();
  v70 = v4;
  v20 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_217648B28(v20, v21, v22);
  v23 = sub_2177532C8();
  if (v0)
  {
    v26 = v70;
  }

  else
  {
    v56 = v14;
    v57 = v2;
    v65 = v18;
    sub_21733BE84(v23, v24, v25);
    sub_217752EA8();
    v28 = v69[0];
    v27 = v69[1];
    v26 = v70;
    if (qword_280BE3B28 != -1)
    {
      swift_once();
      v27 = v69[1];
    }

    v29 = qword_280BE3B30 == v69[0] && *algn_280BE3B38 == v27;
    if (v29 || (v30 = v27, v31 = sub_217753058(), v32 = v30, (v31 & 1) != 0))
    {

      sub_2171FF30C(v70, &v66);
      CloudPlaylistFolder.init(from:)();
      (*(v64 + 8))(v1, v15);
      v33 = v2;
      memcpy(v2, v69, 0x132uLL);
      swift_storeEnumTagMultiPayload();
      v34 = v62;
    }

    else
    {
      v35 = v69[0];
      if (qword_280BE4610 != -1)
      {
        swift_once();
        v35 = v69[0];
        v32 = v30;
      }

      v69[0] = v35;
      v69[1] = v32;
      v36 = static Array<A>.~= infix(_:_:)(off_280BE4618, v69);
      v37 = v30;
      v38 = v64;
      v34 = v62;
      if (!v36)
      {
        if (qword_280BE4788 != -1)
        {
          swift_once();
          v37 = v30;
        }

        v39 = qword_280BE4790 == v28 && *algn_280BE4798 == v37;
        if (!v39 && (sub_217753058() & 1) == 0)
        {
          v63 = v15;
          __swift_project_boxed_opaque_existential_1(v70, v70[3]);
          sub_217753298();
          v69[0] = 0;
          v69[1] = 0xE000000000000000;
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
          v66 = 34;
          v67 = 0xE100000000000000;
          MEMORY[0x21CEA23B0](v28, v30);
          MEMORY[0x21CEA23B0](34, 0xE100000000000000);

          MEMORY[0x21CEA23B0](34, 0xE100000000000000, v49);

          MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177B3170, v50);
          sub_217752B08();
          v51 = sub_217752B48();
          swift_allocError();
          v53 = v52;
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
          *v53 = v65;
          (*(v60 + 16))(v53 + v54, v61, v59);
          (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
          swift_willThrow();
          (*(v60 + 8))(v61, v59);
          (*(v64 + 8))(v1, v63);
          goto LABEL_4;
        }
      }

      sub_2171FF30C(v70, v69);
      v40 = v56;
      CloudPlaylist.init(from:)(v69, v41, v42, v43, v44, v45, v46, v47, v55, v56, SWORD2(v56), SBYTE6(v56), SHIBYTE(v56), v57, v59, v60, v61, v62, v64, v65, v66, v67, v68);
      (*(v38 + 8))(v1, v15);
      OUTLINED_FUNCTION_2_109();
      v48 = v40;
      v33 = v58;
      sub_217648B7C(v48, v58);
      swift_storeEnumTagMultiPayload();
    }

    sub_217648B7C(v33, v34);
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylistFolderItem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for CloudPlaylist(0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25_52();
  type metadata accessor for CloudPlaylistFolderItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_1_116();
  sub_217648ACC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217648B7C(v8, v1);
    CloudPlaylist.encode(to:)();
    return sub_217646D5C(v1, type metadata accessor for CloudPlaylist);
  }

  else
  {
    memcpy(v10, v8, 0x132uLL);
    CloudPlaylistFolder.encode(to:)(a1);
    return sub_2175C5F08(v10);
  }
}

uint64_t sub_217648ACC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_217648B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0A8;
  if (!qword_27CB2B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0A8);
  }

  return result;
}

uint64_t sub_217648B7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_217648BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0B0;
  if (!qword_27CB2B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0B0);
  }

  return result;
}

unint64_t sub_217648C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0B8;
  if (!qword_27CB2B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0B8);
  }

  return result;
}

unint64_t sub_217648C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0C0;
  if (!qword_27CB2B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0C0);
  }

  return result;
}

unint64_t sub_217648CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0C8;
  if (!qword_27CB2B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0C8);
  }

  return result;
}

unint64_t sub_217648D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0D0;
  if (!qword_27CB2B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0D0);
  }

  return result;
}

unint64_t sub_217648D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0D8;
  if (!qword_27CB2B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0D8);
  }

  return result;
}

unint64_t sub_217648DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0E0;
  if (!qword_27CB2B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0E0);
  }

  return result;
}

unint64_t sub_217648E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0E8;
  if (!qword_27CB2B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0E8);
  }

  return result;
}

unint64_t sub_217648E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0F0;
  if (!qword_27CB2B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0F0);
  }

  return result;
}

unint64_t sub_217648EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B0F8;
  if (!qword_27CB2B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B0F8);
  }

  return result;
}

unint64_t sub_217648F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B100;
  if (!qword_27CB2B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B100);
  }

  return result;
}

unint64_t sub_217648FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B108;
  if (!qword_27CB2B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B108);
  }

  return result;
}

unint64_t sub_217648FFC()
{
  result = qword_27CB2B110;
  if (!qword_27CB2B110)
  {
    type metadata accessor for CloudPlaylistFolderItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B110);
  }

  return result;
}

uint64_t sub_217649054(uint64_t a1)
{
  result = type metadata accessor for CloudPlaylist(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_217649100(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2176491F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B128;
  if (!qword_27CB2B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B128);
  }

  return result;
}

unint64_t sub_217649248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B130;
  if (!qword_27CB2B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B130);
  }

  return result;
}

unint64_t sub_2176492A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B138;
  if (!qword_27CB2B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B138);
  }

  return result;
}

unint64_t sub_2176492F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B140;
  if (!qword_27CB2B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B140);
  }

  return result;
}

unint64_t sub_217649350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B148;
  if (!qword_27CB2B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B148);
  }

  return result;
}

unint64_t sub_2176493A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B150;
  if (!qword_27CB2B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B150);
  }

  return result;
}

unint64_t sub_217649400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B158;
  if (!qword_27CB2B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B158);
  }

  return result;
}

unint64_t sub_217649458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B160;
  if (!qword_27CB2B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B160);
  }

  return result;
}

unint64_t sub_2176494B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B168;
  if (!qword_27CB2B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B168);
  }

  return result;
}

unint64_t sub_217649508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B170;
  if (!qword_27CB2B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B170);
  }

  return result;
}

unint64_t sub_217649560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B178;
  if (!qword_27CB2B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B178);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_62()
{

  return type metadata accessor for CloudPlaylistFolderItem(0);
}

id _MusicKit_SharedTypeErasedCloudServiceStatusMonitor()@<X0>(void *a1@<X8>)
{
  if (qword_280BEAE60 != -1)
  {
    swift_once();
  }

  v3 = qword_280C029A0;
  a1[3] = sub_2171F25D4();
  *a1 = v3;

  return v3;
}

uint64_t LegacyModelLibraryRelationshipConfiguration.init(relationshipProperty:rawRelationshipKey:correspondingUnderlyingLegacyModelObjectType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t LegacyModelLibraryAugmentedItemResult.init(augmentedItem:resolvedRelationshipProperties:unresolvedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for LegacyModelLibraryAugmentedItemResult(0, a4, a5, v11);
  *(a6 + *(result + 36)) = a2;
  *(a6 + *(result + 40)) = a3;
  return result;
}

uint64_t LegacyModelLibraryRelationshipConfiguration.rawRelationshipKey.getter()
{
  v1 = *(v0 + 8);
  sub_217751DE8();
  return v1;
}

void sub_217649858(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_217649C00(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2176498E0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_217649A24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_217649C00(uint64_t a1)
{
  if (!qword_280BE7590)
  {
    type metadata accessor for AnyMusicProperty();
    v1 = sub_217752418();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE7590);
    }
  }
}

uint64_t MusicDetailedIdentifierKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t sub_217649D14(uint64_t a1)
{
  sub_2177531E8();
  MusicDetailedIdentifierKind.hash(into:)();
  return sub_217753238();
}

unint64_t sub_217649D60()
{
  result = qword_27CB2B180;
  if (!qword_27CB2B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B188, &qword_217788AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B180);
  }

  return result;
}

unint64_t sub_217649DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2B190;
  if (!qword_27CB2B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2B190);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicDetailedIdentifierKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t static CloudRecordLabel.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_186_0(a1) == *a2 && *(v2 + 8) == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CloudRecordLabel(0);
  static CloudRecordLabel.Attributes.== infix(_:_:)();
  if ((v6 & 1) == 0 || *(v2 + v5[6]) != *(a2 + v5[6]))
  {
    return 0;
  }

  v7 = v5[7];
  sub_21738C4B0(v2 + v7, v20, &qword_27CB24A98, &unk_217759060);
  sub_21738C4B0(a2 + v7, v22, &qword_27CB24A98, &unk_217759060);
  if (v21 == 1)
  {
    if (v22[2] == 1)
    {
      sub_2171F0738(v20, &qword_27CB24A98, &unk_217759060);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  sub_21738C4B0(v20, v19, &qword_27CB24A98, &unk_217759060);
  if (v22[2] == 1)
  {
    sub_217284540(v19);
LABEL_13:
    sub_2171F0738(v20, &qword_27CB2B1A0, &qword_217788B98);
    return 0;
  }

  memcpy(v18, v22, sizeof(v18));
  v8 = static CloudRecordLabel.Associations.== infix(_:_:)(v19, v18);
  sub_217284540(v18);
  sub_217284540(v19);
  sub_2171F0738(v20, &qword_27CB24A98, &unk_217759060);
  if (!v8)
  {
    return 0;
  }

LABEL_15:
  v9 = v5[8];
  v10 = *(v2 + v9);
  v11 = *(a2 + v9);
  if (v10 != 1)
  {
    if (v11 == 1)
    {
      sub_21733CF78(v10);
      sub_21733CF78(1);
      sub_21733CF78(v10);

LABEL_21:
      sub_217221010(v10);
      v13 = v11;
LABEL_32:
      sub_217221010(v13);
      return 0;
    }

    if (v10)
    {
      if (v11)
      {
        sub_21733CF78(v10);
        sub_21733CF78(v11);
        sub_21733CF78(v10);
        sub_21733CF78(v11);
        OUTLINED_FUNCTION_93();
        sub_21726F358();
        v15 = v14;
        sub_217221010(v11);
        sub_217221010(v11);
        if ((v15 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:

        sub_217221010(v10);
        return 1;
      }

      sub_21733CF78(v10);
      v16 = v10;
    }

    else
    {
      sub_21733CF78(0);
      v16 = 0;
      if (!v11)
      {
        sub_21733CF78(0);
        sub_21733CF78(0);
        sub_217221010(0);
        goto LABEL_28;
      }
    }

    sub_21733CF78(v11);
    sub_21733CF78(v16);
    sub_217221010(v11);
LABEL_31:

    v13 = v10;
    goto LABEL_32;
  }

  sub_21733CF78(1);
  if (v11 != 1)
  {
    sub_21733CF78(v11);
    goto LABEL_21;
  }

  v12 = 1;
  sub_21733CF78(1);
  sub_217221010(1);
  return v12;
}

void CloudRecordLabel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v70 = v23;
  v26 = v25;
  v66 = v27;
  type metadata accessor for CloudRecordLabel.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1A8, &qword_217788BA0);
  OUTLINED_FUNCTION_0_0();
  v67 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  v32 = v65 - v31;
  v33 = type metadata accessor for CloudRecordLabel(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v36 = *(v35 + 32);
  v71 = (v38 - v37);
  v72 = v36;
  *(v71 + v36) = 1;
  v39 = OUTLINED_FUNCTION_160(v26, v26[3]);
  sub_21764DFE0(v39, v40, v41);
  v68 = v32;
  v42 = v70;
  v43 = sub_2177532C8();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_217221010(*(v71 + v72));
  }

  else
  {
    v70 = v26;
    v46 = v67;
    sub_2172E1C68(v43, v44, v45);
    OUTLINED_FUNCTION_12_55();
    sub_217752EA8();
    v47 = v73[1];
    v48 = v71;
    *v71 = v73[0];
    *(v48 + 8) = v47;
    v65[1] = v47;
    LOBYTE(v73[0]) = 1;
    OUTLINED_FUNCTION_15_59();
    sub_21764E1EC(v49);
    sub_217752EA8();
    v50 = sub_21764E034(v24, v48 + v33[5]);
    sub_21764E098(v50, v51, v52);
    v65[0] = 0;
    v53 = sub_217752E58();
    v54 = v46;
    v55 = v70;
    *(v48 + v33[6]) = v73[0];
    sub_21764E0EC(v53, v56, v57);
    OUTLINED_FUNCTION_12_55();
    sub_217752E58();
    v58 = memcpy((v48 + v33[7]), v73, 0x100uLL);
    sub_21764E140(v58, v59, v60);
    OUTLINED_FUNCTION_12_55();
    sub_217752E58();
    (*(v54 + 8))(v68, v69);
    v62 = v72;
    v61 = v73[0];
    sub_217221010(*(v48 + v72));
    *(v48 + v62) = v61;
    OUTLINED_FUNCTION_4_103();
    sub_21764E2A0(v48, v66, v63);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_3_100();
    sub_21764E194(v48, v64);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudRecordLabel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1D8, &qword_217788BA8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21764DFE0(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v3[1];
  v33 = *v3;
  v34 = v15;
  v32 = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_4_5();
  sub_217752F88();
  if (!v2)
  {
    v19 = type metadata accessor for CloudRecordLabel(0);
    LOBYTE(v33) = 1;
    type metadata accessor for CloudRecordLabel.Attributes(0);
    OUTLINED_FUNCTION_15_59();
    sub_21764E1EC(v20);
    v21 = sub_217752F88();
    LOBYTE(v33) = *(v3 + *(v19 + 24));
    v32 = 2;
    sub_21733CB7C(v21, v22, v23);
    OUTLINED_FUNCTION_4_5();
    v24 = sub_217752F38();
    LOBYTE(v33) = 3;
    sub_21733CB28(v24, v25, v26);
    sub_217752F38();
    v33 = *(v3 + *(v19 + 32));
    v32 = 4;
    v27 = sub_21733CF78(v33);
    sub_2174D7A24(v27, v28, v29);
    OUTLINED_FUNCTION_4_5();
    sub_217752F38();
    v18.n128_f64[0] = sub_217221010(v33);
  }

  return (*(v7 + 8))(v10, v5, v18);
}

void RecordLabel.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v65 = v2;
  v4 = v3;
  v76 = v5;
  v7 = v6;
  v74 = v8;
  v78 = type metadata accessor for CloudRecordLabel(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v79 = v11 - v10;
  v12 = type metadata accessor for RecordLabelPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_36_34();
  if (qword_280BE6348 != -1)
  {
    swift_once();
  }

  v75 = v4;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0;
  sub_2172DB678();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v15 = v14[10];
  v16 = v7 + v14[9];
  v17 = *(v16 + 8);
  v70 = *v16;
  v68 = *(v16 + 16);
  v18 = *(v7 + v15 + 8);
  v67 = *(v7 + v15);
  v19 = *(v7 + v14[12]);
  v20 = *(v7 + v14[13]);
  v21 = *(v7 + v14[14]);
  v77 = v7;
  v22 = *(v7 + v14[15]);
  sub_2172A497C(v97);
  memcpy(v0, v97, 0x221uLL);
  memcpy((v0 + 600), v97, 0x221uLL);
  v23 = v12[11];
  v24 = sub_2177516D8();
  v72 = v23;
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = v0 + v12[12];
  *(v25 + 96) = 0;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  v66 = v25;
  v26 = v0 + v12[13];
  *(v26 + 96) = 0;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v73 = v26;
  v27 = qword_27CB23D38;
  v69 = v17;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_27CB8A2E0;
  if (qword_27CB8A2E0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v64 = sub_217752D28();

    v28 = v64;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v0 + v12[15]) = v28;
  v29 = (v0 + v12[18]);
  memcpy((v0 + v12[16]), v96, 0x161uLL);
  v30 = v0 + v12[17];
  *v30 = v70;
  *(v30 + 8) = v69;
  *(v30 + 16) = v68;
  *v29 = v67;
  v29[1] = v18;
  *(v0 + v12[19]) = v19;
  *(v0 + v12[20]) = v20;
  *(v0 + v12[21]) = v21;
  *(v0 + v12[22]) = v22;
  OUTLINED_FUNCTION_4_103();
  sub_21764E2A0(v77, v79, v31);
  v32 = v79 + v78[5];
  memcpy(v86, v32, sizeof(v86));
  memcpy(v87, v32, sizeof(v87));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v87) == 1)
  {
    v33 = v97;
  }

  else
  {
    memcpy(v85, v87, 0x1B8uLL);
    memcpy(v80, v86, 0x1B8uLL);
    sub_21738C4B0(v80, v84, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v82);
    memcpy(v81, v85, sizeof(v81));
    sub_2171F0738(v81, &qword_27CB243F0, &qword_21775D690);
    memcpy(v84, v82, 0x221uLL);
    nullsub_1();
    v33 = v84;
  }

  memcpy(v85, v33, sizeof(v85));
  memcpy(v84, v0, 0x221uLL);
  sub_2171F0738(v84, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v0, v85, 0x221uLL);
  v34 = *(v32 + 472);
  *(v0 + 552) = *(v32 + 480);
  *(v0 + 560) = *(v32 + 488);
  if (v34)
  {
    v35 = *(v32 + 440);
    v36 = *(v32 + 464);
    v71 = *(v32 + 448);
    sub_217751DE8();
    sub_217751DE8();
    v37 = v71;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0uLL;
  }

  *(v0 + 568) = v35;
  *(v0 + 576) = v37;
  *(v0 + 592) = v36;
  v38 = *(v32 + 504);
  *(v0 + 1152) = *(v32 + 496);
  *(v0 + 1160) = v38;
  v39 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v32 + v39, v0 + v72);
  v40 = v78[7];
  sub_21738C4B0(v79 + v40, v82, &qword_27CB24A98, &unk_217759060);
  if (v82[2] == 1)
  {
    sub_2171F0738(v82, &qword_27CB24A98, &unk_217759060);
    v41 = v75;
  }

  else
  {
    sub_21738C4B0(v82, v81, &qword_27CB24270, &unk_21775D640);
    sub_217284540(v82);
    v41 = v75;
    if (v81[2])
    {
      OUTLINED_FUNCTION_38_32();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
      v45 = sub_2172E2038(v42, v43, v44);
      OUTLINED_FUNCTION_21_45(v45, v46, v47, v48, &type metadata for Album, v49, v45, &protocol witness table for Album, v65);
      sub_2171F0738(v83, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v81, &qword_27CB24278, &unk_217759070);
      goto LABEL_19;
    }

    sub_2171F0738(v81, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_26_41();
LABEL_19:
  sub_21764E230(v80, v66);
  sub_21738C4B0(v79 + v40, v82, &qword_27CB24A98, &unk_217759060);
  if (v82[2] == 1)
  {
    sub_2171F0738(v82, &qword_27CB24A98, &unk_217759060);
    v50 = v77;
  }

  else
  {
    sub_21738C4B0(&v82[16], v81, &qword_27CB24270, &unk_21775D640);
    sub_217284540(v82);
    v50 = v77;
    if (v81[2])
    {
      OUTLINED_FUNCTION_38_32();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
      v54 = sub_2172E2038(v51, v52, v53);
      OUTLINED_FUNCTION_21_45(v54, v55, v56, v57, &type metadata for Album, v58, v54, &protocol witness table for Album, v65);
      sub_2171F0738(v83, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v81, &qword_27CB24278, &unk_217759070);
      goto LABEL_25;
    }

    sub_2171F0738(v81, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_26_41();
LABEL_25:
  sub_21764E230(v80, v73);
  v59 = v78[8];
  v60 = *(v79 + v59);
  if (v60 == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = *(v79 + v59);
  }

  *(v0 + v12[14]) = v61;
  v82[3] = v12;
  v82[4] = &protocol witness table for RecordLabelPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v82);
  sub_21764E2A0(v0, boxed_opaque_existential_0, type metadata accessor for RecordLabelPropertyProvider);
  sub_21733CF78(v60);
  RecordLabel.init(propertyProvider:)(v82, v74);

  (*(*(v41 - 8) + 8))(v76, v41);
  sub_2171F0738(v50, &qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_3_100();
  sub_21764E194(v79, v63);
  sub_21764E194(v0, type metadata accessor for RecordLabelPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void RecordLabel.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v160 = v8;
  v149 = type metadata accessor for CloudRecordLabel(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v155 = v11 - v10;
  v144 = type metadata accessor for CloudRecordLabel.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v165 = v21 - v20;
  if (qword_27CB23B10 != -1)
  {
    swift_once();
  }

  sub_2176CA854(qword_27CB8A248, v13, v14, v15, v16, v17, v18, v19, v113, v117, v121, v125, v129, v134, v139, v144, v149, v155, v160, v165, v170[0], v170[1], v170[2], v170[3], v170[4], v170[5]);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v182) == 1)
  {
    sub_2172E22C0(v170);
  }

  else
  {
    memcpy(v170, v182, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v172);
    memcpy(v171, v170, 0x221uLL);
    sub_217284084(v171);
    memcpy(v173, v172, sizeof(v173));
    nullsub_1();
    memcpy(v170, v173, 0x1B8uLL);
  }

  if (qword_27CB23B38 != -1)
  {
    swift_once();
  }

  v118 = v7;
  v22 = sub_2172A4004();
  v135 = v23;
  v140 = v22;
  if (qword_27CB23B40 != -1)
  {
    swift_once();
  }

  v130 = sub_2172A4004();
  v25 = v24;
  v26 = sub_217751DC8();
  if (qword_27CB23B18 != -1)
  {
    swift_once();
  }

  v27 = sub_2172A48C0(qword_27CB8A250);
  if (qword_27CB23B20 != -1)
  {
    swift_once();
  }

  v122 = v5;
  v28 = sub_2172A48A4(qword_27CB8A258);
  if (qword_27CB23B30 != -1)
  {
    swift_once();
  }

  v126 = v3;
  v29 = sub_2172A4004();
  if (v30)
  {
    v37 = v29;
  }

  else
  {
    v37 = 0;
  }

  if (v30)
  {
    v38 = v30;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  if (qword_27CB23B48 != -1)
  {
    swift_once();
  }

  v39 = v166;
  sub_2176CA39C(qword_27CB8A280, v30, v31, v32, v33, v34, v35, v36, v114, v118, v122, v126, v130, v135, v140, v145, v150, v156, v161, v166, v170[0], v170[1], v170[2], v170[3], v170[4], v170[5], v170[6], v170[7], v170[8], v170[9]);
  memcpy(v39, v170, 0x1B8uLL);
  v39[55] = v141;
  v39[56] = v136;
  v39[57] = v131;
  v39[58] = v25;
  v39[59] = v26;
  v39[60] = v27;
  v39[61] = v28;
  v39[62] = v37;
  v39[63] = v38;
  v181[1] = 0;
  v181[0] = 0;
  v181[2] = 1;
  bzero(&v181[3], 0xE8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255E8, &unk_21775D4D0);
  swift_allocObject();
  v40 = sub_21736C3E8();
  sub_2176CAF84(v40, v41, v42, v43, v44, v45, v46, v47, v115, v119, v123, v127, v131, v136, v141, v146, v151, v157, v162, v167, v170[0], v170[1], v170[2], v170[3], v170[4], v170[5], v170[6], v170[7], v170[8], v170[9]);

  swift_allocObject();
  v48 = sub_21736C3E8();
  sub_2176CAF84(v48, v49, v50, v51, v52, v53, v54, v55, v116, v120, v124, v128, v132, v137, v142, v147, v152, v158, v163, v168, v170[0], v170[1], v170[2], v170[3], v170[4], v170[5], v170[6], v170[7], v170[8], v170[9]);

  if (v180[11] | v179[11])
  {
    v56 = sub_21738C4B0(v180, v171, &qword_27CB25318, &qword_2177657C0);
    if (v171[11])
    {
      sub_2172E2038(v56, v57, v58);
      sub_217230490(v172);
      LOBYTE(v174[0]) = v172[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
      OUTLINED_FUNCTION_46_28();
      sub_2171F0738(v171, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v171, &qword_27CB25318, &qword_2177657C0);
      memset(v173, 0, 128);
    }

    v59 = sub_21738C4B0(v179, v171, &qword_27CB25318, &qword_2177657C0);
    if (v171[11])
    {
      sub_2172E2038(v59, v60, v61);
      sub_217230490(v174);
      LOBYTE(v176) = v174[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
      OUTLINED_FUNCTION_46_28();
      sub_2171F0738(v181, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v171, &qword_27CB25388, &unk_21775D410);
    }

    else
    {
      sub_2171F0738(v181, &qword_27CB24A98, &unk_217759060);
      sub_2171F0738(v171, &qword_27CB25318, &qword_2177657C0);
      memset(v172, 0, 128);
    }

    memcpy(v171, v173, 0x80uLL);
    memcpy(&v171[16], v172, 0x80uLL);
    memcpy(v181, v171, sizeof(v181));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25488, &qword_21775CD08);
  swift_allocObject();
  v62 = sub_2172E3DC4();
  sub_2172A4888(v62);
  OUTLINED_FUNCTION_5_4();

  if ((v0 + 2) <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = (v0 + 2);
  }

  v65 = *v0;
  v64 = v0[1];
  OUTLINED_FUNCTION_6_87();
  sub_21764E2A0(v169, v159 + v66, v67);
  sub_21738C4B0(v181, v159 + v153[7], &qword_27CB24A98, &unk_217759060);
  *v159 = v65;
  v159[1] = v64;
  *(v159 + v153[6]) = 1;
  *(v159 + v153[8]) = v63;
  v68 = v1[5];
  v69 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v68);
  v70 = *(v69 + 24);
  sub_217751DE8();
  v70(v172, v68, v69);
  nullsub_1();
  memcpy(v173, v172, 0x161uLL);
  OUTLINED_FUNCTION_4_103();
  sub_21764E2A0(v159, v164, v71);
  OUTLINED_FUNCTION_9_72();
  v72 = OUTLINED_FUNCTION_5_4();
  v73(v72, v69);
  __swift_project_boxed_opaque_existential_1(v171, v171[3]);
  v74 = OUTLINED_FUNCTION_5_4();
  v75(v74);
  __swift_destroy_boxed_opaque_existential_1(v171);
  v148 = v177;
  v154 = v176;
  v143 = v178;
  OUTLINED_FUNCTION_9_72();
  v76 = OUTLINED_FUNCTION_5_4();
  v77(v76, v69);
  __swift_project_boxed_opaque_existential_1(v171, v171[3]);
  OUTLINED_FUNCTION_26_1();
  v78 = OUTLINED_FUNCTION_5_4();
  v80 = v79(v78);
  v133 = v81;
  v138 = v80;
  __swift_destroy_boxed_opaque_existential_1(v171);
  memcpy(v171, v173, 0x168uLL);
  memset(&v171[45], 0, 24);
  nullsub_1();
  OUTLINED_FUNCTION_9_72();
  v82 = OUTLINED_FUNCTION_5_4();
  v83(v82, v69);
  v84 = v175;
  v85 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v85, v84);
  OUTLINED_FUNCTION_26_1();
  v86 = OUTLINED_FUNCTION_5_4();
  v88 = v87(v86);
  __swift_destroy_boxed_opaque_existential_1(v174);
  OUTLINED_FUNCTION_9_72();
  v89 = OUTLINED_FUNCTION_5_4();
  v90(v89, v69);
  v91 = v175;
  v92 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v92, v91);
  OUTLINED_FUNCTION_26_1();
  v93 = OUTLINED_FUNCTION_5_4();
  v95 = v94(v93);
  __swift_destroy_boxed_opaque_existential_1(v174);
  v96 = v1[5];
  v97 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v96);
  (*(v97 + 96))(v174, v96, v97);
  v98 = v175;
  v99 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v99, v98);
  OUTLINED_FUNCTION_26_1();
  v101 = (*(v100 + 80))(v98);
  __swift_destroy_boxed_opaque_existential_1(v174);
  v103 = v1[5];
  v102 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v103);
  (*(v102 + 96))(v174, v103, v102);
  v104 = v175;
  v105 = OUTLINED_FUNCTION_37_34();
  __swift_project_boxed_opaque_existential_1(v105, v104);
  OUTLINED_FUNCTION_26_1();
  v107 = (*(v106 + 88))(v104);
  OUTLINED_FUNCTION_3_100();
  sub_21764E194(v159, v108);
  sub_2171F0738(v181, &qword_27CB24A98, &unk_217759060);
  OUTLINED_FUNCTION_5_88();
  sub_21764E194(v169, v109);
  __swift_destroy_boxed_opaque_existential_1(v174);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  v111 = v164 + v110[9];
  *v111 = v154;
  *(v111 + 8) = v148;
  *(v111 + 16) = v143;
  v112 = (v164 + v110[10]);
  *v112 = v138;
  v112[1] = v133;
  memcpy((v164 + v110[11]), v171, 0x180uLL);
  *(v164 + v110[12]) = v88;
  *(v164 + v110[13]) = v95;
  *(v164 + v110[14]) = v101;
  *(v164 + v110[15]) = v107;
  OUTLINED_FUNCTION_169_1(v180);
  OUTLINED_FUNCTION_169_1(v179);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudRecordLabel.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

void static CloudRecordLabel.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  v5 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  memcpy(v97, v4, sizeof(v97));
  OUTLINED_FUNCTION_11_3();
  memcpy(v19, v20, v21);
  memcpy(v95, v4, 0x1B8uLL);
  OUTLINED_FUNCTION_11_3();
  memcpy(v22, v23, v24);
  memcpy(v99, v4, 0x1B8uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v99) == 1)
  {
    OUTLINED_FUNCTION_25_2(v94);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v94) == 1)
    {
      v88 = v14;
      v89 = v15;
      memcpy(v96, v95, sizeof(v96));
      OUTLINED_FUNCTION_33_1(v97, v93);
      OUTLINED_FUNCTION_33_1(v98, v93);
      OUTLINED_FUNCTION_169_1(v96);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(v94, v95, sizeof(v94));
    OUTLINED_FUNCTION_33_1(v97, v96);
    OUTLINED_FUNCTION_33_1(v98, v96);
    v25 = &qword_27CB25008;
    v26 = &qword_21778F850;
    v27 = v94;
LABEL_6:
    sub_2171F0738(v27, v25, v26);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_2(v93);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v93) == 1)
  {
    goto LABEL_5;
  }

  v88 = v14;
  v89 = v15;
  OUTLINED_FUNCTION_25_2(v91);
  OUTLINED_FUNCTION_25_2(v94);
  memcpy(v96, v95, sizeof(v96));
  OUTLINED_FUNCTION_33_1(v97, v92);
  OUTLINED_FUNCTION_33_1(v98, v92);
  sub_2172A92BC();
  v29 = v28;
  OUTLINED_FUNCTION_169_1(v91);
  memcpy(v92, v95, sizeof(v92));
  OUTLINED_FUNCTION_169_1(v92);
  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v85 = v18;
  v86 = v11;
  v87 = v7;
  v84 = v5;
  v31 = v4[55];
  v30 = v4[56];
  v33 = v4[57];
  v32 = v4[58];
  v34 = v4[59];
  v36 = v2[55];
  v35 = v2[56];
  v37 = v2[57];
  v38 = v2[58];
  v39 = v2[59];
  if (!v34)
  {
    if (!v39)
    {
      v56 = v4[55];
      v57 = v4[56];
      v58 = v4[57];
      v80 = v2[57];
      v59 = v32;
      sub_21733B8BC(v56, v57, v33, v32, 0);
      sub_21733B8BC(v36, v35, v80, v38, 0);
      sub_21733B90C(v31, v30, v58, v59, 0);
      goto LABEL_16;
    }

LABEL_13:
    v51 = v4[55];
    v90 = v4[56];
    v52 = v30;
    v53 = v33;
    v83 = v35;
    v54 = v37;
    v55 = v32;
    sub_21733B8BC(v51, v52, v33, v32, v34);
    sub_21733B8BC(v36, v35, v54, v38, v39);
    sub_21733B90C(v31, v90, v53, v55, v34);
    sub_21733B90C(v36, v83, v54, v38, v39);
    goto LABEL_14;
  }

  if (!v39)
  {
    goto LABEL_13;
  }

  v95[0] = v2[55];
  v95[1] = v35;
  v95[2] = v37;
  v95[3] = v38;
  v95[4] = v39;
  v93[0] = v31;
  v93[1] = v30;
  v93[2] = v33;
  v93[3] = v32;
  v93[4] = v34;
  v81 = v31;
  v82 = v33;
  v90 = v30;
  v40 = v32;
  sub_21733B8BC(v31, v30, v33, v32, v34);
  v41 = OUTLINED_FUNCTION_28_46();
  sub_21733B8BC(v41, v42, v43, v44, v45);
  LODWORD(v80) = sub_2172AA368();
  v46 = OUTLINED_FUNCTION_28_46();
  sub_21733B90C(v46, v47, v48, v49, v50);
  sub_21733B90C(v81, v90, v82, v40, v34);
  if ((v80 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_16:
  v60 = v2[60];
  if (v4[60])
  {
    v62 = v86;
    v61 = v87;
    v63 = v85;
    v64 = v89;
    if (!v60)
    {
      goto LABEL_14;
    }

    sub_217751DE8();
    sub_217262A00();
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v62 = v86;
    v61 = v87;
    v63 = v85;
    v64 = v89;
    if (v60)
    {
      goto LABEL_14;
    }
  }

  v67 = v2[61];
  if (v4[61])
  {
    if (!v67)
    {
      goto LABEL_14;
    }

    sub_217751DE8();
    sub_217262CB4();
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v67)
  {
    goto LABEL_14;
  }

  v70 = v4[63];
  v71 = v2[63];
  if (!v70)
  {
    if (v71)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (v71)
  {
    v72 = v4[62] == v2[62] && v70 == v71;
    if (v72 || (sub_217753058() & 1) != 0)
    {
LABEL_35:
      v73 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
      v74 = *(v64 + 48);
      OUTLINED_FUNCTION_33_1(v4 + v73, v63);
      OUTLINED_FUNCTION_33_1(v2 + v73, v63 + v74);
      v75 = v84;
      if (__swift_getEnumTagSinglePayload(v63, 1, v84) == 1)
      {
        if (__swift_getEnumTagSinglePayload(v63 + v74, 1, v75) == 1)
        {
          sub_2171F0738(v63, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_14;
        }
      }

      else
      {
        v76 = v88;
        sub_21738C4B0(v63, v88, &unk_27CB277C0, &qword_217758DC0);
        if (__swift_getEnumTagSinglePayload(v63 + v74, 1, v75) != 1)
        {
          (*(v61 + 32))(v62, v63 + v74, v75);
          OUTLINED_FUNCTION_1_117();
          sub_21764E1EC(v77);
          sub_217751F08();
          v78 = *(v61 + 8);
          v78(v62, v75);
          v78(v76, v75);
          sub_2171F0738(v63, &unk_27CB277C0, &qword_217758DC0);
          goto LABEL_14;
        }

        (*(v61 + 8))(v76, v75);
      }

      v25 = &qword_27CB24840;
      v26 = &unk_217758DD0;
      v27 = v63;
      goto LABEL_6;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21764C2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21764C4AC(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21764C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21764C2B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21764C5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764E2FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21764C5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764E2FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudRecordLabel.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v26;
  a23 = v27;
  v28 = v23;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1E0, &unk_217788BB0);
  OUTLINED_FUNCTION_0_0();
  v33 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_111();
  v35 = OUTLINED_FUNCTION_160(v30, v30[3]);
  sub_21764E2FC(v35, v36, v37);
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v38, v39, v40);
  OUTLINED_FUNCTION_11_3();
  memcpy(v41, v42, v43);
  a13 = 0;
  sub_21738C4B0(&v66, v64, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  v44 = sub_2172DEEB4();
  OUTLINED_FUNCTION_11_10(v65, &a13, v45, v46, v44);
  memcpy(v64, v65, sizeof(v64));
  sub_2171F0738(v64, &qword_27CB25000, &unk_21776EA00);
  if (!v24)
  {
    v47 = v28[56];
    v48 = v28[57];
    v49 = v28[58];
    v50 = v28[59];
    v59 = v28[55];
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v63 = v50;
    sub_21733B8BC(v59, v47, v48, v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D8, &qword_217761D38);
    v51 = sub_21737ABAC();
    OUTLINED_FUNCTION_10_59(v51);
    sub_21733B90C(v59, v60, v61, v62, v63);
    v59 = v28[60];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v52 = sub_2175D4B00(&unk_280BE23A0);
    OUTLINED_FUNCTION_10_59(v52);
    v59 = v28[61];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v53 = sub_2175D4A04();
    OUTLINED_FUNCTION_10_59(v53);
    LOBYTE(v59) = 4;
    sub_217752EF8();
    v54 = *(type metadata accessor for CloudRecordLabel.Attributes(0) + 36);
    LOBYTE(v59) = 5;
    sub_2177516D8();
    OUTLINED_FUNCTION_1_117();
    v56 = sub_21764E1EC(v55);
    OUTLINED_FUNCTION_11_10(v28 + v54, &v59, v57, v58, v56);
  }

  (*(v33 + 8))(v25, v31);
  OUTLINED_FUNCTION_170();
}

void CloudRecordLabel.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  memcpy(v19, v0, sizeof(v19));
  v13 = *(v0 + 432);
  memcpy(v20, v0, sizeof(v20));
  v21 = v13;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v20) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v18, v19, sizeof(v18));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v13);
  }

  v14 = *(v0 + 472);
  if (v14)
  {
    v15 = *(v0 + 456);
    v18[0] = *(v0 + 440);
    v18[1] = v15;
    *&v18[2] = v14;
    OUTLINED_FUNCTION_119();
    sub_2172E3DD4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 480))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 488))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 504))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v16 = type metadata accessor for CloudRecordLabel.Attributes(0);
  sub_21738C4B0(v0 + *(v16 + 36), v12, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v5 + 32))(v9, v12, v3);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_117();
    sub_21764E1EC(v17);
    sub_217751EB8();
    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_13();
}

void CloudRecordLabel.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v52 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  v29 = &v51 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1F0, &qword_217788BC8);
  OUTLINED_FUNCTION_0_0();
  v53 = v31;
  v54 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_36_34();
  v33 = type metadata accessor for CloudRecordLabel.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v55 = (v36 - v35);
  v56 = v25;
  v37 = OUTLINED_FUNCTION_160(v25, v25[3]);
  sub_21764E2FC(v37, v38, v39);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DF600();
    sub_217752E58();
    v40 = v55;
    memcpy(v55, v60, 0x1B8uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB261D8, &qword_217761D38);
    sub_21737AF28();
    sub_217752E58();
    v41 = v59;
    v42 = v58;
    *(v40 + 440) = v57;
    *(v40 + 456) = v42;
    *(v40 + 59) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v43 = sub_2175D4B00(&unk_280BE2398);
    OUTLINED_FUNCTION_20_45(v43);
    *(v40 + 60) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    v44 = sub_2175D4B80();
    OUTLINED_FUNCTION_20_45(v44);
    *(v40 + 61) = v57;
    LOBYTE(v57) = 4;
    *(v40 + 62) = sub_217752E18();
    *(v40 + 63) = v45;
    sub_2177516D8();
    LOBYTE(v57) = 5;
    OUTLINED_FUNCTION_1_117();
    sub_21764E1EC(v46);
    sub_217752E58();
    v47 = OUTLINED_FUNCTION_8_73();
    v48(v47);
    sub_21751AF10(v29, &v40[*(v33 + 36)]);
    OUTLINED_FUNCTION_6_87();
    sub_21764E2A0(v40, v52, v49);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_5_88();
    sub_21764E194(v40, v50);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21764D1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764EDF4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21764D224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21764EDF4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudRecordLabel.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B1F8, &unk_217788BD0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_111();
  v7 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21764EDF4(v7, v8, v9);
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudRecordLabel.Associations.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x656C65722D706F74;
  }

  else
  {
    return 0x722D74736574616CLL;
  }
}

uint64_t sub_21764D4B4@<X0>(uint64_t *a1@<X8>)
{
  result = CloudRecordLabel.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21764D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C3B4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21764D534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21738C3B4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudRecordLabel.Associations.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50_26(a1, v9);
  OUTLINED_FUNCTION_50_26(a2, v11);
  if (v10)
  {
    sub_21738C4B0(v9, v8, &qword_27CB24270, &unk_21775D640);
    if (!v11[2])
    {
LABEL_11:
      sub_2171F0738(v8, &qword_27CB24278, &unk_217759070);
      goto LABEL_13;
    }

    memcpy(v7, v11, sizeof(v7));
    v4 = sub_2172DDD44(v8, v7);
    sub_2171F0738(v7, &qword_27CB24278, &unk_217759070);
    sub_2171F0738(v8, &qword_27CB24278, &unk_217759070);
    sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11[2])
    {
LABEL_13:
      sub_2171F0738(v9, &qword_27CB25070, &unk_21777EF10);
      return 0;
    }

    sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_50_26(a1 + 128, v9);
  OUTLINED_FUNCTION_50_26(a2 + 128, v11);
  if (!v10)
  {
    if (!v11[2])
    {
      sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
      return 1;
    }

    goto LABEL_13;
  }

  sub_21738C4B0(v9, v8, &qword_27CB24270, &unk_21775D640);
  if (!v11[2])
  {
    goto LABEL_11;
  }

  memcpy(v7, v11, sizeof(v7));
  v5 = sub_2172DDD44(v8, v7);
  OUTLINED_FUNCTION_169_1(v7);
  OUTLINED_FUNCTION_169_1(v8);
  sub_2171F0738(v9, &qword_27CB24270, &unk_21775D640);
  return (v5 & 1) != 0;
}

uint64_t CloudRecordLabel.Associations.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B208, &unk_217788BE0);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_111();
  v10 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_21738C3B4(v10, v11, v12);
  OUTLINED_FUNCTION_40_32();
  sub_2177532F8();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_21764EF08(&qword_27CB250C0);
  OUTLINED_FUNCTION_33_40(v4, &v15);
  if (!v2)
  {
    v14 = 1;
    OUTLINED_FUNCTION_33_40(v4 + 128, &v14);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t CloudRecordLabel.Associations.hash(into:)(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(v4, __src, sizeof(v4));
    OUTLINED_FUNCTION_24();
    sub_2172DE6DC(a1);
    sub_2171F0738(v4, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_21738C4B0(v1 + 128, __src, &qword_27CB24270, &unk_21775D640);
  if (!__src[2])
  {
    return OUTLINED_FUNCTION_25();
  }

  memcpy(v4, __src, sizeof(v4));
  OUTLINED_FUNCTION_24();
  sub_2172DE6DC(a1);
  return sub_2171F0738(v4, &qword_27CB24278, &unk_217759070);
}

uint64_t CloudRecordLabel.Associations.hashValue.getter()
{
  sub_2177531E8();
  sub_21738C4B0(v0, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_21738C4B0(v0 + 128, __src, &qword_27CB24270, &unk_21775D640);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v4);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}