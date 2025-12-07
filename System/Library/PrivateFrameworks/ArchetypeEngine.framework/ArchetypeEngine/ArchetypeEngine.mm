uint64_t ATBiomeMediaType.description.getter(unsigned __int8 a1)
{
  v1 = 1735290739;
  v2 = 0x6F6F626F69647561;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x74736163646F70;
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

uint64_t ATBiomeMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_240FD488C();
  MEMORY[0x245CD6870](a1);
  return sub_240FD48BC();
}

uint64_t sub_240FB2BB8()
{
  v1 = *v0;
  sub_240FD488C();
  MEMORY[0x245CD6870](v1);
  return sub_240FD48BC();
}

uint64_t sub_240FB2C2C(uint64_t a1)
{
  v2 = *v1;
  sub_240FD488C();
  MEMORY[0x245CD6870](v2);
  return sub_240FD48BC();
}

uint64_t sub_240FB2C70()
{
  v1 = *v0;
  v2 = 1735290739;
  v3 = 0x6F6F626F69647561;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74736163646F70;
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

uint64_t ATBiomeMediaItem.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ATBiomeMediaItem.artist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ATBiomeMediaItem.album.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ATBiomeMediaItem.iTunesStoreIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ATBiomeMediaItem.link.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ATBiomeMediaItem.link.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ATBiomeMediaItem.bundleID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ATBiomeMediaItem.description.getter()
{
  v1 = *(v0 + 96);
  if (v1 <= 1)
  {
    goto LABEL_6;
  }

  if (v1 == 2)
  {
    sub_240FD46BC();

    strcpy(v7, "[audiobook (");
    BYTE5(v7[1]) = 0;
    HIWORD(v7[1]) = -5120;
    MEMORY[0x245CD64D0](v0[10], v0[11]);
    result = MEMORY[0x245CD64D0](572546345, 0xE400000000000000);
    if (!v0[5])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    MEMORY[0x245CD64D0](v0[4]);
    result = MEMORY[0x245CD64D0](0x2079622022, 0xE500000000000000);
    if (!v0[3])
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    MEMORY[0x245CD64D0](v0[2]);
    MEMORY[0x245CD64D0](0x657470616863202CLL, 0xEC00000022203A72);
    if (v0[1])
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v5 = 0x6E776F6E6B6E755BLL;
    sub_240FD46BC();

    strcpy(v7, "[unknown (");
    BYTE3(v7[1]) = 0;
    HIDWORD(v7[1]) = -369098752;
    MEMORY[0x245CD64D0](v0[10], v0[11]);
    MEMORY[0x245CD64D0](0x656C746974205D29, 0xEB0000000022203ALL);
    if (v0[1])
    {
      v5 = *v0;
      v6 = v0[1];
    }

    else
    {
      v6 = 0xEF5D656C74697420;
    }

    MEMORY[0x245CD64D0](v5, v6);

    goto LABEL_21;
  }

  if (v1 != 3)
  {
    goto LABEL_14;
  }

  sub_240FD46BC();

  v7[0] = 0xD000000000000010;
  v7[1] = 0x8000000240FD5DF0;
  MEMORY[0x245CD64D0](v0[10], v0[11]);
  MEMORY[0x245CD64D0](572546345, 0xE400000000000000);
  if (v0[1])
  {
LABEL_18:
    MEMORY[0x245CD64D0](*v0);
LABEL_21:
    v4 = 34;
    v3 = 0xE100000000000000;
    goto LABEL_22;
  }

  __break(1u);
LABEL_6:
  if (!v1)
  {
    sub_240FD46BC();

    strcpy(v7, "[song (");
    v7[1] = 0xE700000000000000;
    MEMORY[0x245CD64D0](v0[10], v0[11]);
    result = MEMORY[0x245CD64D0](572546345, 0xE400000000000000);
    if (v0[1])
    {
      MEMORY[0x245CD64D0](*v0);
      result = MEMORY[0x245CD64D0](0x2079622022, 0xE500000000000000);
      v3 = v0[3];
      if (v3)
      {
        v4 = v0[2];
LABEL_22:
        MEMORY[0x245CD64D0](v4, v3);
        return v7[0];
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_240FD46BC();

  strcpy(v7, "[podcast (");
  BYTE3(v7[1]) = 0;
  HIDWORD(v7[1]) = -369098752;
  MEMORY[0x245CD64D0](v0[10], v0[11]);
  result = MEMORY[0x245CD64D0](2236509, 0xE300000000000000);
  if (!v0[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x245CD64D0](v0[2]);
  result = MEMORY[0x245CD64D0](0x6F73697065202C22, 0xED000022203A6564);
  if (v0[1])
  {
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_240FB3230()
{
  v1[44] = v0;
  v2 = sub_240FD443C();
  v1[45] = v2;
  v1[46] = *(v2 - 8);
  v1[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FB32F0, 0, 0);
}

uint64_t sub_240FB32F0()
{
  v1 = v0[44];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = *(v1 + 96);
    if (!v4)
    {
      v5 = 203;
      goto LABEL_9;
    }

    if (v4 == 1)
    {
      v5 = 301;
LABEL_9:
      v8 = [objc_opt_self() createBagForSubProfile];
      if (v8)
      {
        v9 = v8;
        v10 = objc_allocWithZone(MEMORY[0x277CEE570]);
        v11 = sub_240FD448C();
        v12 = sub_240FD448C();
        v13 = [v10 initWithType:v5 clientIdentifier:v11 clientVersion:v12 bag:v9];
        v0[48] = v13;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_240FD5170;
        *(v14 + 32) = v3;
        *(v14 + 40) = v2;

        v15 = sub_240FD452C();

        [v13 setItemIdentifiers_];

        v16 = [v13 perform];
        v0[49] = v16;
        v0[2] = v0;
        v0[7] = v0 + 42;
        v0[3] = sub_240FB35C4;
        v17 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5E8, &qword_240FD54E8);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_240FB3AE4;
        v0[13] = &block_descriptor_21;
        v0[14] = v17;
        [v16 resultWithCompletion_];
        v8 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282200938](v8);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_240FB35C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_240FB39B0;
  }

  else
  {
    v2 = sub_240FB36D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_240FB36D4()
{
  v1 = *(v0 + 336);

  v2 = [v1 responseDataItems];
  if (!v2)
  {
    v16 = *(v0 + 384);

    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    goto LABEL_19;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5F8, &qword_240FD54F8);
  v4 = sub_240FD453C();

  if (!*(v4 + 16))
  {
    __break(1u);
    return;
  }

  v5 = *(v4 + 32);

  *(v0 + 288) = 0x7475626972747461;
  *(v0 + 296) = 0xEA00000000007365;
  sub_240FD467C();
  if (!*(v5 + 16) || (v6 = sub_240FB7028(v0 + 144), (v7 & 1) == 0))
  {

    sub_240FBA01C(v0 + 144);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    goto LABEL_17;
  }

  sub_240FB9F6C(*(v5 + 56) + 32 * v6, v0 + 256);
  sub_240FBA01C(v0 + 144);

  if (!*(v0 + 280))
  {
LABEL_17:
    v15 = *(v0 + 384);

LABEL_19:
    sub_240FBA1A8(v0 + 256, &qword_27E51E5F0, &qword_240FD54F0);
LABEL_20:
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = *(v0 + 384);

    goto LABEL_20;
  }

  v8 = *(v0 + 344);
  *(v0 + 304) = 7107189;
  *(v0 + 312) = 0xE300000000000000;
  sub_240FD467C();
  if (!*(v8 + 16) || (v9 = sub_240FB7028(v0 + 184), (v10 & 1) == 0))
  {
    v20 = *(v0 + 384);

    sub_240FBA01C(v0 + 184);
    goto LABEL_20;
  }

  v11 = *(v0 + 384);
  sub_240FB9F6C(*(v8 + 56) + 32 * v9, v0 + 224);

  sub_240FBA01C(v0 + 184);

  if (*(v0 + 248))
  {
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = *(v0 + 320);
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = *(v0 + 328);
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_240FBA1A8(v0 + 224, &qword_27E51E5F0, &qword_240FD54F0);
  v13 = 0;
  v14 = 0;
LABEL_22:
  v17 = *(v0 + 352);

  *(v17 + 64) = v13;
  *(v17 + 72) = v14;

  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_240FB39B0()
{
  v1 = v0[49];
  swift_willThrow();

  sub_240FD442C();
  v2 = sub_240FD441C();
  v3 = sub_240FD45DC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[45];
  v9 = v0[46];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_240FB1000, v2, v3, "Failed to query the media server for the link.", v10, 2u);
    MEMORY[0x245CD6DB0](v10, -1, -1);
  }

  (*(v9 + 8))(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_240FB3AE4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E600, &qword_240FD5500);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ATBiomeMediaItem.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_240FD48AC();
    sub_240FD44DC();
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_240FD48AC();
    if (*(v1 + 24))
    {
LABEL_3:
      sub_240FD48AC();
      sub_240FD44DC();
      if (*(v1 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_240FD48AC();
  if (*(v1 + 40))
  {
LABEL_4:
    sub_240FD48AC();
    sub_240FD44DC();
    if (*(v1 + 56))
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_240FD48AC();
    if (*(v1 + 72))
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_240FD48AC();
    goto LABEL_12;
  }

LABEL_9:
  sub_240FD48AC();
  if (!*(v1 + 56))
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_240FD48AC();
  sub_240FD44DC();
  if (!*(v1 + 72))
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_240FD48AC();
  sub_240FD44DC();
LABEL_12:
  sub_240FD44DC();
  return MEMORY[0x245CD6870](*(v1 + 96));
}

uint64_t ATBiomeMediaItem.hashValue.getter()
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)(v1);
  return sub_240FD48BC();
}

BOOL sub_240FB3D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s15ArchetypeEngine16ATBiomeMediaItemV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13);
}

uint64_t sub_240FB3DAC()
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)(v1);
  return sub_240FD48BC();
}

uint64_t sub_240FB3DF0(uint64_t a1)
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)(v2);
  return sub_240FD48BC();
}

uint64_t ATBiomeDataRetriever.getTopPlayedMedia(k:start:end:mediaTypesOfInterest:maxNumRecordsToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[159] = a5;
  v5[158] = a4;
  v5[157] = a3;
  v5[156] = a2;
  v5[155] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198);
  v5[160] = v6;
  v5[161] = *(v6 - 8);
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v5[164] = swift_task_alloc();
  v7 = sub_240FD422C();
  v5[165] = v7;
  v5[166] = *(v7 - 8);
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v5[169] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FB3FDC, 0, 0);
}

unint64_t sub_240FB3FDC()
{
  v160 = v0;
  v1 = v0[156];
  result = sub_240FD421C();
  if ((v1 * 86400) >> 64 != (86400 * v1) >> 63)
  {
    goto LABEL_82;
  }

  v3 = v0[168];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[157];
  sub_240FD41AC();
  v7 = *(v4 + 8);
  v0[170] = v7;
  v0[171] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);
  result = sub_240FD421C();
  if ((v6 * 86400) >> 64 != (86400 * v6) >> 63)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v8 = v0[168];
  v9 = v0[167];
  v10 = v0[166];
  v11 = v0[165];
  v12 = v0[164];
  sub_240FD41AC();
  v7(v8, v11);
  (*(v10 + 16))(v12, v9, v11);
  (*(v10 + 56))(v12, 0, 1, v11);
  v13 = sub_240FD41BC();
  v150 = v7;
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    v14 = 0;
  }

  else
  {
    v15 = v0[165];
    v16 = v0[164];
    v14 = sub_240FD41BC();
    v7(v16, v15);
  }

  v17 = v0[158];
  v18 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v13 endDate:v14 maxEvents:v0[159] lastN:v0[159] reversed:0];
  v0[172] = v18;

  v19 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v20 = [v19 NowPlaying];
  swift_unknownObjectRelease();
  v21 = [v20 publisherWithOptions_];
  v0[173] = v21;

  v22 = swift_allocObject();
  v23 = MEMORY[0x277D84F90];
  *(v22 + 16) = MEMORY[0x277D84F90];
  v0[174] = v22;
  v0[144] = sub_240FB52B4;
  v0[145] = 0;
  v0[140] = MEMORY[0x277D85DD0];
  v0[141] = 1107296256;
  v0[142] = sub_240FB548C;
  v0[143] = &block_descriptor;
  v24 = _Block_copy(v0 + 140);
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  *(v25 + 24) = v22;
  v0[150] = sub_240FB9698;
  v0[151] = v25;
  v0[146] = MEMORY[0x277D85DD0];
  v0[147] = 1107296256;
  v0[148] = sub_240FB6184;
  v0[149] = &block_descriptor_7;
  v26 = _Block_copy(v0 + 146);

  v27 = [v21 sinkWithCompletion:v24 shouldContinue:v26];
  _Block_release(v26);
  _Block_release(v24);

  swift_beginAccess();
  v28 = *(v22 + 16);
  v148 = v0;
  v145 = *(v28 + 16);
  if (v145)
  {
    v142 = v0[161];
    aBlock = v0[160];
    v144 = v28 + 32;

    v29 = 0;
    v30 = v0;
    v31 = v7;
    v143 = v28;
    while (1)
    {
      v146 = v23;
      v147 = v29;
      v32 = (v144 + 112 * v29);
      v33 = v32[3];
      v34 = v32[4];
      v35 = v32[5];
      *(v30 + 7) = v32[6];
      v36 = v32[1];
      v37 = v32[2];
      *(v30 + 1) = *v32;
      *(v30 + 2) = v36;
      *(v30 + 5) = v34;
      *(v30 + 6) = v35;
      *(v30 + 3) = v37;
      *(v30 + 4) = v33;
      v151 = v30[15];
      if (*(v151 + 16))
      {
        v38 = v30[165];
        v39 = v30[163];
        v149 = *(v151 + 16);
        v40 = v151 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
        sub_240FB96A0((v30 + 2), (v30 + 16));
        v41 = *(v142 + 72);
        sub_240FB99A0(v40, v39, &qword_27E51E570, &qword_240FD5198);
        v42 = *v39;
        result = v31(&v39[aBlock[12]], v38);
        if (v42 != 2)
        {
          if (!*(v151 + 16))
          {
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v43 = v30[165];
          v44 = v30[163];
          sub_240FB99A0(v40, v44, &qword_27E51E570, &qword_240FD5198);
          v31((v44 + aBlock[12]), v43);
        }

        v45 = 0.0;
        if (v149 != 1)
        {
          v46 = v149;
          v47 = 1;
          do
          {
            v51 = v30[165];
            v52 = v30[163];
            v53 = v41;
            sub_240FB99A0(v40 + v41, v52, &qword_27E51E570, &qword_240FD5198);
            v54 = *v52;
            result = v31(&v52[aBlock[12]], v51);
            if (v54 != 2)
            {
              if (v47 >= *(v151 + 16))
              {
                goto LABEL_76;
              }

              v55 = v30[165];
              v56 = v30[163];
              sub_240FB99A0(v40 + v53, v56, &qword_27E51E570, &qword_240FD5198);
              v57 = *v56;
              result = v31(&v56[aBlock[12]], v55);
              if (v57 != 3)
              {
                goto LABEL_14;
              }
            }

            if (v47 - 1 >= *(v151 + 16))
            {
              __break(1u);
              goto LABEL_76;
            }

            v58 = v30[165];
            v59 = v30[163];
            sub_240FB99A0(v40, v59, &qword_27E51E570, &qword_240FD5198);
            v60 = *v59;
            result = v31(&v59[aBlock[12]], v58);
            if (v60 == 1)
            {
              if (v47 >= *(v151 + 16))
              {
                goto LABEL_77;
              }

              v61 = v30[165];
              v62 = v30[163];
              v63 = v30[162];
              sub_240FB99A0(v40 + v53, v62, &qword_27E51E570, &qword_240FD5198);
              v64 = aBlock[12];
              v49 = v149;
              sub_240FB99A0(v40, v63, &qword_27E51E570, &qword_240FD5198);
              v65 = aBlock[12];
              sub_240FD419C();
              v67 = v66;
              v68 = (v63 + v65);
              v30 = v148;
              v150(v68, v61);
              v48 = v150;
              v150((v62 + v64), v61);
              v45 = v45 + v67;
            }

            else
            {
LABEL_14:
              v48 = v31;
              v49 = v46;
            }

            ++v47;
            v40 += v53;
            v46 = v49;
            v50 = v49 == v47;
            v41 = v53;
            v31 = v48;
          }

          while (!v50);
        }
      }

      else
      {
        sub_240FB96A0((v30 + 2), (v30 + 100));
        v45 = 0.0;
      }

      sub_240FB96D8((v30 + 2), (v30 + 127));
      v23 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_240FB66E4(0, v146[2] + 1, 1, v146);
      }

      v70 = v23[2];
      v69 = v23[3];
      if (v70 >= v69 >> 1)
      {
        v23 = sub_240FB66E4((v69 > 1), v70 + 1, 1, v23);
      }

      v29 = v147 + 1;
      result = sub_240FB9710((v30 + 2));
      v71 = *(v30 + 6);
      v157 = *(v30 + 5);
      v158 = v71;
      LOBYTE(v159) = *(v30 + 112);
      v72 = *(v30 + 4);
      v155 = *(v30 + 3);
      v156 = v72;
      v73 = *(v30 + 2);
      v153 = *(v30 + 1);
      v74 = v153;
      v154 = v73;
      v23[2] = v70 + 1;
      v75 = &v23[14 * v70];
      v76 = v159;
      v78 = v157;
      v77 = v158;
      *(v75 + 5) = v156;
      *(v75 + 6) = v78;
      *(v75 + 7) = v77;
      v75[16] = v76;
      v79 = v155;
      *(v75 + 3) = v154;
      *(v75 + 4) = v79;
      *(v75 + 2) = v74;
      *(v75 + 17) = v45;
      if (v147 + 1 == v145)
      {

        goto LABEL_33;
      }

      if (v29 >= *(v143 + 16))
      {
        goto LABEL_78;
      }
    }
  }

  v30 = v0;
LABEL_33:
  v30[175] = v23;
  v80 = sub_240FB9740(MEMORY[0x277D84F90]);
  v81 = v23[2];
  if (v81)
  {
    v82 = 0;
    v83 = v23 + 4;
    v84 = v81 - 1;
    while (1)
    {
      v85 = *v83;
      v86 = v83[2];
      *(v30 + 16) = v83[1];
      *(v30 + 17) = v86;
      *(v30 + 15) = v85;
      v87 = v83[3];
      v88 = v83[4];
      v89 = v83[6];
      *(v30 + 20) = v83[5];
      *(v30 + 21) = v89;
      *(v30 + 18) = v87;
      *(v30 + 19) = v88;
      v91 = v83[4];
      v90 = v83[5];
      v92 = v83[3];
      *(v30 + 1008) = *(v83 + 96);
      *(v30 + 61) = v91;
      *(v30 + 62) = v90;
      *(v30 + 60) = v92;
      v93 = *v83;
      v94 = v83[2];
      *(v30 + 58) = v83[1];
      *(v30 + 59) = v94;
      *(v30 + 57) = v93;
      if (v80[2])
      {
        sub_240FB99A0((v30 + 30), (v30 + 44), &qword_27E51E580, &qword_240FD51A8);
        v95 = sub_240FB706C(v30 + 114);
        v96 = 0.0;
        if (v97)
        {
          v96 = *(v80[7] + 8 * v95);
        }
      }

      else
      {
        sub_240FB99A0((v30 + 30), (v30 + 86), &qword_27E51E580, &qword_240FD51A8);
        v96 = 0.0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v80;
      result = sub_240FB706C(v30 + 114);
      v100 = v80[2];
      v101 = (v99 & 1) == 0;
      v102 = __OFADD__(v100, v101);
      v103 = v100 + v101;
      if (v102)
      {
        goto LABEL_79;
      }

      v104 = v99;
      if (v80[3] >= v103)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v116 = result;
          sub_240FB8484();
          result = v116;
        }
      }

      else
      {
        sub_240FB7E7C(v103, isUniquelyReferenced_nonNull_native);
        result = sub_240FB706C(v148 + 114);
        if ((v104 & 1) != (v105 & 1))
        {

          return sub_240FD481C();
        }
      }

      v106 = v96 + *(v148 + 43);
      if (v104)
      {
        v107 = result;
        result = sub_240FBA1A8((v148 + 30), &qword_27E51E580, &qword_240FD51A8);
        v80 = v153;
        *(*(v153 + 56) + 8 * v107) = v106;
        v30 = v148;
        if (v84 == v82)
        {
          break;
        }
      }

      else
      {
        v80 = v153;
        *(v153 + 8 * (result >> 6) + 64) |= 1 << result;
        v108 = v80[6] + 104 * result;
        v110 = *(v148 + 58);
        v109 = *(v148 + 59);
        *v108 = *(v148 + 57);
        *(v108 + 16) = v110;
        *(v108 + 32) = v109;
        v111 = *(v148 + 60);
        v112 = *(v148 + 61);
        v113 = *(v148 + 62);
        *(v108 + 96) = *(v148 + 1008);
        *(v108 + 64) = v112;
        *(v108 + 80) = v113;
        *(v108 + 48) = v111;
        *(v80[7] + 8 * result) = v106;
        v114 = v80[2];
        v102 = __OFADD__(v114, 1);
        v115 = v114 + 1;
        if (v102)
        {
          goto LABEL_81;
        }

        v30 = v148;
        v80[2] = v115;
        if (v84 == v82)
        {
          break;
        }
      }

      ++v82;
      v83 += 7;
      if (v82 >= v23[2])
      {
        goto LABEL_80;
      }
    }
  }

  v30[176] = v80;
  v117 = v80[2];
  if (v117)
  {
    v118 = sub_240FB6F90(v80[2], 0);
    v119 = sub_240FB8C88(&v153, (v118 + 4), v117, v80);
    v120 = v153;

    result = sub_240FB98BC(v120);
    if (v119 == v117)
    {
      v30 = v148;
      goto LABEL_56;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v118 = MEMORY[0x277D84F90];
LABEL_56:
  *&v153 = v118;
  result = sub_240FB6380(&v153);
  v121 = v30[155];
  if ((v121 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v122 = v153;
  v123 = *(v153 + 16);
  if (v123 >= v121)
  {
    v123 = v30[155];
  }

  v30[177] = v123;
  if (v121 && v123)
  {
    v124 = v122 + 32;
    v125 = (2 * v123) | 1;
    v30[178] = 0;
    result = swift_isUniquelyReferenced_nonNull();
    if (result)
    {
      v126 = 0;
    }

    else
    {
      sub_240FB98C4((v122 + 32), 0, v125);
      v137 = v136;
      v124 = v138;
      v126 = v139;
      v125 = v140;
      result = swift_unknownObjectRelease();
      v122 = v137;
      v30 = v148;
    }

    v30[182] = v122;
    v30[181] = v124;
    v30[180] = v126;
    v30[179] = v125;
    if (v125 >= 2 && v126 <= 0)
    {
      v141 = swift_task_alloc();
      v30[183] = v141;
      *v141 = v30;
      v141[1] = sub_240FB4D90;

      return sub_240FB3230();
    }

LABEL_86:
    __break(1u);
    return result;
  }

  v127 = v30[173];
  v128 = v30[172];
  v129 = v30[170];
  v130 = v30;
  v131 = v30[169];
  v132 = v130[167];
  v133 = v130[165];

  v129(v132, v133);
  v129(v131, v133);

  swift_unknownObjectRelease();

  v134 = v130[1];
  v135 = MEMORY[0x277D84F90];

  return v134(v135);
}

uint64_t sub_240FB4D90()
{

  return MEMORY[0x2822009F8](sub_240FB4E8C, 0, 0);
}

void sub_240FB4E8C()
{
  v1 = *(v0 + 1424) + 1;
  if (*(v0 + 1240))
  {
    v2 = (*(v0 + 1416) & 0x7FFFFFFFFFFFFFFFLL) == v1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    v3 = *(v0 + 1456);
    v4 = *(v0 + 1448);
    v5 = *(v0 + 1440);
    v6 = *(v0 + 1432);
    *(v0 + 1424) = v1;
    if ((v6 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      sub_240FB98C4(v4, v5, v6);
      v8 = v7;
      v4 = v9;
      v5 = v10;
      v6 = v11;
      swift_unknownObjectRelease();
      v3 = v8;
    }

    *(v0 + 1456) = v3;
    *(v0 + 1448) = v4;
    *(v0 + 1440) = v5;
    *(v0 + 1432) = v6;
    if (v1 >= v5 && v1 < v6 >> 1)
    {
      v13 = swift_task_alloc();
      *(v0 + 1464) = v13;
      *v13 = v0;
      v13[1] = sub_240FB4D90;

      sub_240FB3230();
      return;
    }

    goto LABEL_33;
  }

  v14 = *(v0 + 1432) >> 1;
  v15 = *(v0 + 1440);
  v16 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    goto LABEL_32;
  }

  if (v16)
  {
    v17 = *(v0 + 1448);
    v42 = MEMORY[0x277D84F90];
    sub_240FB87B0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
LABEL_34:
      __break(1u);
      return;
    }

    if (v15 < v14)
    {
      v18 = v42;
      v19 = v15 + 1;
      v20 = (v17 + 112 * v15);
      while (1)
      {
        v21 = *v20;
        v22 = v20[2];
        *(v0 + 480) = v20[1];
        *(v0 + 496) = v22;
        *(v0 + 464) = v21;
        v23 = v20[3];
        v24 = v20[4];
        v25 = v20[6];
        *(v0 + 544) = v20[5];
        *(v0 + 560) = v25;
        *(v0 + 512) = v23;
        *(v0 + 528) = v24;
        v43 = *v20;
        v44 = v20[1];
        LOBYTE(v49) = *(v20 + 96);
        v47 = v20[4];
        v48 = v20[5];
        v45 = v20[2];
        v46 = v20[3];
        v26 = *(v0 + 568);
        sub_240FB99A0(v0 + 464, v0 + 576, &qword_27E51E588, &qword_240FD51B8);
        v28 = *(v42 + 16);
        v27 = *(v42 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_240FB87B0((v27 > 1), v28 + 1, 1);
        }

        *(v42 + 16) = v28 + 1;
        v29 = v42 + 112 * v28;
        *(v29 + 48) = v44;
        *(v29 + 64) = v45;
        *(v29 + 32) = v43;
        *(v29 + 128) = v49;
        *(v29 + 96) = v47;
        *(v29 + 112) = v48;
        *(v29 + 80) = v46;
        *(v29 + 136) = v26;
        if (v14 == v19)
        {
          break;
        }

        if (v19 >= v15)
        {
          v20 += 7;
          if (v19++ < v14)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v31 = *(v0 + 1376);
      v32 = *(v0 + 1360);
      v33 = *(v0 + 1352);
      v34 = *(v0 + 1336);
      v35 = *(v0 + 1320);

      v32(v34, v35);
      v32(v33, v35);

      swift_unknownObjectRelease();

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v36 = *(v0 + 1376);
  v37 = *(v0 + 1360);
  v38 = *(v0 + 1352);
  v39 = *(v0 + 1336);
  v40 = *(v0 + 1320);

  v37(v39, v40);
  v37(v38, v40);

  swift_unknownObjectRelease();

  v18 = MEMORY[0x277D84F90];
LABEL_28:

  v41 = *(v0 + 8);

  v41(v18);
}

id sub_240FB52B4(void *a1)
{
  v2 = sub_240FD443C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v7 = result;
    sub_240FD442C();
    v8 = v7;
    v9 = sub_240FD441C();
    v10 = sub_240FD45DC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_240FB1000, v9, v10, "Failed to access Now Playing Biome stream with error: %@", v11, 0xCu);
      sub_240FBA1A8(v12, &qword_27E51E730, &unk_240FD5530);
      MEMORY[0x245CD6DB0](v12, -1, -1);
      MEMORY[0x245CD6DB0](v11, -1, -1);
    }

    else
    {
      v13 = v9;
      v9 = v8;
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_240FB548C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_240FB54F4(void *a1, uint64_t a2, uint64_t a3)
{
  v125 = a2;
  v126 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198);
  v124 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v115[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v115[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v115[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v115[-v14];
  v16 = sub_240FD422C();
  v128 = *(v16 - 8);
  v129 = v16;
  MEMORY[0x28223BE20](v16);
  v127 = &v115[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = [a1 eventBody];
  if (!v18)
  {
    return 1;
  }

  v19 = v18;
  v20 = [v18 bundleID];

  if (!v20)
  {
    return 1;
  }

  v122 = sub_240FD449C();
  v22 = v21;

  v23 = [a1 eventBody];
  if (!v23 || (v123 = v22, v24 = v23, v25 = [v23 duration], v24, !v25))
  {
LABEL_23:

    return 1;
  }

  v26 = [a1 eventBody];
  if (!v26)
  {

    (*(v128 + 56))(v15, 1, 1, v129);
LABEL_13:
    sub_240FBA1A8(v15, &qword_27E51E578, &qword_240FD51A0);
    return 1;
  }

  v27 = v26;
  v28 = [v26 absoluteTimestamp];

  if (v28)
  {
    sub_240FD41FC();

    v29 = v128;
    v30 = *(v128 + 56);
    v31 = v13;
    v32 = 0;
  }

  else
  {
    v29 = v128;
    v30 = *(v128 + 56);
    v31 = v13;
    v32 = 1;
  }

  v33 = v129;
  v30(v31, v32, 1, v129);
  sub_240FBA140(v13, v15, &qword_27E51E578, &qword_240FD51A0);
  if ((*(v29 + 48))(v15, 1, v33) == 1)
  {

    goto LABEL_13;
  }

  v34 = v127;
  (*(v29 + 32))(v127, v15, v33);
  v35 = [a1 eventBody];
  if (!v35)
  {
    (*(v29 + 8))(v34, v33);
    goto LABEL_23;
  }

  v36 = v35;
  v116 = [v35 playbackState];

  v37 = [a1 eventBody];
  if (v37 && (v38 = v37, v39 = [v37 title], v38, v39))
  {
    v40 = sub_240FD449C();
    v120 = v41;
    v121 = v40;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  v42 = v123;
  v43 = [a1 eventBody];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 artist];

    if (v45)
    {
      v46 = sub_240FD449C();
      v118 = v47;
      v119 = v46;
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    v42 = v123;
  }

  else
  {
    v118 = 0;
    v119 = 0;
  }

  v49 = [a1 eventBody];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 album];

    if (v51)
    {
      v117 = sub_240FD449C();
      v53 = v52;
    }

    else
    {
      v117 = 0;
      v53 = 0;
    }

    v42 = v123;
  }

  else
  {
    v117 = 0;
    v53 = 0;
  }

  v54 = [a1 eventBody];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 iTunesStoreIdentifier];

    if (v56)
    {
      v57 = sub_240FD449C();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    v42 = v123;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  *(&v114 + 1) = v42;
  *&v114 = v122;
  sub_240FB8E6C(v121, v120, v119, v118, v117, v53, v57, v59, v177, 0, v114);
  v173 = v177[2];
  v174 = v177[3];
  v175 = v177[4];
  v60 = v179;
  v176 = v178;
  v171 = v177[0];
  v172 = v177[1];
  v61 = v180;
  v62 = (v125 + 32);
  v63 = *(v125 + 16);
  do
  {
    if (!v63)
    {
      (*(v128 + 8))(v127, v129);
      sub_240FBA110(v177);
      return 1;
    }

    v64 = *v62++;
    --v63;
  }

  while (v64 != v180);
  v65 = v126;
  swift_beginAccess();
  v66 = *(v65 + 16);
  v67 = *(v66 + 16);
  if (!v67)
  {
    goto LABEL_51;
  }

  v68 = (v66 + 112 * v67);
  v69 = *(v68 - 5);
  v70 = *(v68 - 3);
  v165 = *(v68 - 4);
  v166 = v70;
  v164 = v69;
  v71 = *(v68 - 2);
  v72 = *(v68 - 1);
  v73 = *v68;
  v170 = *(v68 + 16);
  v168 = v72;
  v169 = v73;
  v167 = v71;
  v74 = *(v68 - 2);
  v160 = *(v68 - 3);
  v161 = v74;
  v162 = *(v68 - 1);
  v163 = *v68;
  v75 = *(v68 - 4);
  v158 = *(v68 - 5);
  v159 = v75;
  v76 = *(&v73 + 1);
  v77 = v170;
  *(&v157[2] + 7) = v173;
  *(&v157[3] + 7) = v174;
  *(&v157[4] + 7) = v175;
  *(&v157[5] + 7) = v176;
  *(v157 + 7) = v171;
  *(&v157[1] + 7) = v172;
  if (*(&v73 + 1))
  {
    v78 = v68 - 5;
    v79 = v78[3];
    v139 = v78[2];
    v140 = v79;
    v141 = v78[4];
    v142 = *(v78 + 10);
    v80 = v78[1];
    v137 = *v78;
    v138 = v80;
    if (v60)
    {
      v130[2] = v173;
      v130[3] = v174;
      v130[4] = v175;
      v130[0] = v171;
      v130[1] = v172;
      *&v131 = v176;
      *(&v131 + 1) = v60;
      v132 = v61;
      v143 = v171;
      v144 = v172;
      v149 = v61;
      v147 = v175;
      v148 = v131;
      v145 = v173;
      v146 = v174;
      v181[0] = v137;
      v181[1] = v138;
      v181[3] = v140;
      v181[4] = v141;
      v181[2] = v139;
      v182 = v142;
      v183 = *(&v73 + 1);
      v184 = v170;
      LODWORD(v125) = _s15ArchetypeEngine16ATBiomeMediaItemV23__derived_struct_equalsySbAC_ACtFZ_0(v181, &v143);
      sub_240FB96D8(&v164, v133);
      sub_240FB96D8(v177, v133);
      v53 = &qword_240FD5520;
      sub_240FBA1A8(v130, &qword_27E51E620, &qword_240FD5520);
      v133[2] = v160;
      v133[3] = v161;
      v133[4] = v162;
      v133[0] = v158;
      v133[1] = v159;
      v134 = v163;
      v135 = v76;
      v136 = v77;
      sub_240FBA1A8(v133, &qword_27E51E620, &qword_240FD5520);
      if ((v125 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

LABEL_50:
    v145 = v160;
    v146 = v161;
    v147 = v162;
    v143 = v158;
    v144 = v159;
    *&v148 = v163;
    *(&v148 + 1) = *(&v73 + 1);
    v149 = v170;
    v151 = v157[1];
    v150 = v157[0];
    *&v154[15] = *(&v157[4] + 15);
    *v154 = v157[4];
    v153 = v157[3];
    v152 = v157[2];
    v155 = v60;
    v156 = v61;
    sub_240FB96D8(&v164, v181);
    sub_240FB96D8(v177, v181);
    sub_240FBA1A8(&v143, &qword_27E51E610, &qword_240FD5510);
    goto LABEL_51;
  }

  if (v60)
  {
    goto LABEL_50;
  }

  v145 = v160;
  v146 = v161;
  v147 = v162;
  v143 = v158;
  v144 = v159;
  v148 = v163;
  v149 = v170;
  sub_240FB96D8(&v164, v181);
  sub_240FB96D8(v177, v181);
  sub_240FBA1A8(&v143, &qword_27E51E620, &qword_240FD5520);
LABEL_57:
  v96 = v126;
  swift_beginAccess();
  v97 = *(v96 + 16);
  v98 = *(v97 + 16);
  if (!v98 || (v99 = *(v97 + 112 * v98 + 24), (v100 = *(v99 + 16)) == 0) || (sub_240FB99A0(v99 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * (v100 - 1), v9, &qword_27E51E570, &qword_240FD5198), v101 = *v9, (*(v128 + 8))(&v9[*(v4 + 48)], v129), v101 != 3))
  {
    sub_240FBA110(v177);
    v102 = v126;
    swift_beginAccess();
    v103 = *(v102 + 16);
    v104 = *(v103 + 2);
    v105 = *(v4 + 48);
    *v7 = v116;
    v106 = v128;
    v107 = v129;
    (*(v128 + 16))(v7 + v105, v127, v129);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v102 + 16) = v103;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v104)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v103 = sub_240FCB078(v103);
      *(v126 + 16) = v103;
      if (v104)
      {
LABEL_62:
        if (v104 <= *(v103 + 2))
        {
          v109 = &v103[112 * v104];
          v110 = *(v109 + 3);
          v104 = (v109 + 24);
          v53 = v110;
          v111 = swift_isUniquelyReferenced_nonNull_native();
          *v104 = v110;
          if (v111)
          {
LABEL_64:
            v113 = v53[2];
            v112 = v53[3];
            if (v113 >= v112 >> 1)
            {
              v53 = sub_240FB6834((v112 > 1), v113 + 1, 1, v53);
              *v104 = v53;
            }

            v53[2] = v113 + 1;
            sub_240FBA140(v7, v53 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v113, &qword_27E51E570, &qword_240FD5198);
            *(v126 + 16) = v103;
            swift_endAccess();
            (*(v106 + 8))(v127, v107);
            return 1;
          }

LABEL_70:
          v53 = sub_240FB6834(0, v53[2] + 1, 1, v53);
          *v104 = v53;
          goto LABEL_64;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

LABEL_51:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E618, &qword_240FD5518);
  v81 = (*(v124 + 80) + 32) & ~*(v124 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_240FD5170;
  v83 = *(v4 + 48);
  *(v82 + v81) = v116;
  v84 = v127;
  (*(v128 + 16))(v82 + v81 + v83, v127, v129);
  v85 = v126;
  swift_beginAccess();
  v86 = *(v85 + 16);
  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v85 + 16) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = sub_240FB6A24(0, *(v86 + 2) + 1, 1, v86);
    *(v126 + 16) = v86;
  }

  v89 = *(v86 + 2);
  v88 = *(v86 + 3);
  if (v89 >= v88 >> 1)
  {
    v86 = sub_240FB6A24((v88 > 1), v89 + 1, 1, v86);
  }

  v166 = v173;
  v167 = v174;
  v168 = v175;
  *&v169 = v176;
  v90 = v171;
  v164 = v171;
  v165 = v172;
  *(v86 + 2) = v89 + 1;
  v91 = &v86[112 * v89];
  v92 = v169;
  v94 = v167;
  v93 = v168;
  *(v91 + 4) = v166;
  *(v91 + 5) = v94;
  *(v91 + 6) = v93;
  *(v91 + 14) = v92;
  v95 = v165;
  *(v91 + 2) = v90;
  *(v91 + 3) = v95;
  *(v91 + 15) = v60;
  v91[128] = v61;
  LODWORD(v92) = v157[0];
  *(v91 + 33) = *(v157 + 3);
  *(v91 + 129) = v92;
  *(v91 + 17) = v82;
  *(v126 + 16) = v86;
  swift_endAccess();
  (*(v128 + 8))(v84, v129);
  return 1;
}

uint64_t sub_240FB6184(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

id variable initialization expression of ATLocationRetriever.locationManager()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBFC10]);

  return [v0 init];
}

id variable initialization expression of ATMegadomeLifeEvent.dateFormatter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA968]);

  return [v0 init];
}

uint64_t variable initialization expression of ATSpotlightDataRetriever.oneYearBack()
{
  v0 = sub_240FD422C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD421C();
  sub_240FD41AC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_240FB6380(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_240FCB228(v2);
  }

  v3 = v2[2];
  v36[0] = (v2 + 4);
  v36[1] = v3;
  result = sub_240FD47CC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 17;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 14))
          {
            break;
          }

          v13 = v12 - 13;
          v14 = *(v12 + 1);
          v15 = *(v12 + 5);
          v30 = *(v12 + 3);
          v31 = v15;
          v29 = v14;
          v16 = *(v12 + 7);
          v17 = *(v12 + 9);
          v18 = *(v12 + 13);
          v34 = *(v12 + 11);
          v35 = v18;
          v32 = v16;
          v33 = v17;
          v19 = *(v12 - 9);
          *(v12 + 7) = *(v12 - 7);
          v20 = *(v12 - 3);
          *(v12 + 9) = *(v12 - 5);
          *(v12 + 11) = v20;
          *(v12 + 13) = *(v12 - 1);
          v21 = *(v12 - 11);
          *(v12 + 1) = *(v12 - 13);
          *(v12 + 3) = v21;
          *(v12 + 5) = v19;
          v22 = v29;
          v23 = v31;
          v13[1] = v30;
          v13[2] = v23;
          *v13 = v22;
          v24 = v32;
          v25 = v33;
          v26 = v35;
          v13[5] = v34;
          v13[6] = v26;
          v13[3] = v24;
          v13[4] = v25;
          v12 -= 14;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 14;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E588, &qword_240FD51B8);
      v7 = sub_240FD455C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v29 = v7 + 32;
    *(&v29 + 1) = v6;
    sub_240FB75D0(&v29, v28, v36, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

_DWORD *sub_240FB65B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_240FB65E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D0, &qword_240FD54D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_240FB66E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5E0, &qword_240FD54E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E580, &qword_240FD51A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FB6834(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E618, &qword_240FD5518);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198) - 8);
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

char *sub_240FB6A24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E628, &qword_240FD5528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FB6B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
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

char *sub_240FB6C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B0, &qword_240FD54B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_240FB6DB4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_240FB6F90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E608, &qword_240FD5508);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

unint64_t sub_240FB7028(uint64_t a1)
{
  v2 = sub_240FD465C();

  return sub_240FB7150(a1, v2);
}

unint64_t sub_240FB706C(void *a1)
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)(v4);
  v2 = sub_240FD48BC();

  return sub_240FB7218(a1, v2);
}

unint64_t sub_240FB70D8(uint64_t a1, uint64_t a2)
{
  sub_240FD488C();
  sub_240FD44DC();
  v4 = sub_240FD48BC();

  return sub_240FB7518(a1, a2, v4);
}

unint64_t sub_240FB7150(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_240FBA070(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CD6640](v9, a1);
      sub_240FBA01C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_240FB7218(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a1;
    v7 = ~v4;
    v8 = a1[1];
    v61 = *a1;
    v9 = *(v2 + 48);
    v55 = v2 + 64;
    v53 = v9;
    v54 = ~v4;
    do
    {
      v10 = v9 + 104 * v5;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = *(v10 + 24);
      v13 = *(v10 + 32);
      v15 = *(v10 + 40);
      v16 = *(v10 + 48);
      v17 = *(v10 + 56);
      v18 = *(v10 + 64);
      v20 = *(v10 + 72);
      v19 = *(v10 + 80);
      v21 = *(v10 + 88);
      v22 = *(v10 + 96);
      if (v11)
      {
        if (!v8)
        {
          goto LABEL_4;
        }

        if (*v10 != v61 || v11 != v8)
        {
          v58 = *(v10 + 56);
          v59 = *(v10 + 48);
          v57 = *(v10 + 64);
          v24 = *(v10 + 72);
          v25 = v8;
          v26 = *(v10 + 88);
          v27 = *(v10 + 80);
          v28 = *(v10 + 96);
          v29 = *(v10 + 40);
          v30 = *(v10 + 32);
          v31 = sub_240FD47FC();
          v13 = v30;
          v15 = v29;
          v22 = v28;
          v19 = v27;
          v21 = v26;
          v8 = v25;
          v20 = v24;
          v18 = v57;
          v17 = v58;
          v16 = v59;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v31 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      v32 = v6[3];
      if (v14)
      {
        if (!v32)
        {
          goto LABEL_4;
        }

        if (v12 != v6[2] || v14 != v32)
        {
          v34 = v22;
          v60 = v15;
          v35 = v13;
          v36 = sub_240FD47FC();
          v13 = v35;
          v15 = v60;
          v22 = v34;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v36 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v32)
      {
        goto LABEL_4;
      }

      v37 = v6[5];
      if (v15)
      {
        if (!v37)
        {
          goto LABEL_4;
        }

        if (v13 != v6[4] || v15 != v37)
        {
          v39 = v16;
          v40 = v17;
          v41 = v22;
          v42 = sub_240FD47FC();
          v22 = v41;
          v17 = v40;
          v16 = v39;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v42 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v37)
      {
        goto LABEL_4;
      }

      v43 = v6[7];
      if (v17)
      {
        if (!v43)
        {
          goto LABEL_4;
        }

        if (v16 != v6[6] || v17 != v43)
        {
          v45 = v22;
          v46 = sub_240FD47FC();
          v22 = v45;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v46 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v43)
      {
        goto LABEL_4;
      }

      v47 = v6[9];
      if (v20)
      {
        if (!v47)
        {
          goto LABEL_4;
        }

        if (v18 != v6[8] || v20 != v47)
        {
          v48 = v22;
          v49 = sub_240FD47FC();
          v22 = v48;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v49 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v47)
      {
        goto LABEL_4;
      }

      if (v19 == v6[10] && v21 == v6[11] || (v50 = v22, v51 = sub_240FD47FC(), v22 = v50, v9 = v53, v7 = v54, v3 = v55, v6 = a1, (v51 & 1) != 0))
      {
        if (v22 == *(v6 + 96))
        {
          return v5;
        }
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_240FB7518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_240FD47FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_240FB75D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_240FCAF80(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_240FB7C04((*a3 + 112 * *v85), (*a3 + 112 * *v87), (*a3 + 112 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 112 * v6 + 104);
      v10 = 112 * v8;
      v11 = *a3 + 112 * v8;
      v12 = *(v11 + 104);
      v13 = v8 + 2;
      v14 = (v11 + 328);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 14;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 112 * v6 - 112;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v105 = *(v22 + v10 + 96);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0x70uLL);
            v21[4] = v101;
            v21[5] = v103;
            v21[6] = v105;
            *v21 = v93;
            v21[1] = v95;
            v21[2] = v97;
            v21[3] = v99;
          }

          ++v20;
          v18 -= 112;
          v10 += 112;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240FB65E0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_240FB65E0((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        sub_240FB7C04((*a3 + 112 * *v78), (*a3 + 112 * *v80), (*a3 + 112 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 112 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 8) >= *(v27 + 104))
    {
LABEL_29:
      ++v6;
      v24 += 112;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 112);
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v106 = *(v27 + 96);
    v94 = *v27;
    v96 = *(v27 + 16);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v29 = *(v27 - 96);
    *v27 = *(v27 - 112);
    *(v27 + 16) = v29;
    v30 = *(v27 - 80);
    v31 = *(v27 - 64);
    v32 = *(v27 - 16);
    *(v27 + 80) = *(v27 - 32);
    *(v27 + 96) = v32;
    v33 = *(v27 - 48);
    *(v27 + 48) = v31;
    *(v27 + 64) = v33;
    *(v27 + 32) = v30;
    v28[4] = v102;
    v28[5] = v104;
    v28[6] = v106;
    *v28 = v94;
    v28[1] = v96;
    v27 -= 112;
    v28[2] = v98;
    v28[3] = v100;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_240FB7C04(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[14 * v9] <= a4)
    {
      memmove(a4, __dst, 112 * v9);
    }

    v12 = &v4[14 * v9];
    if (v8 < 112)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[13] < v6[13])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 14;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 14;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x70uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[14 * v11] <= a4)
  {
    memmove(a4, __src, 112 * v11);
  }

  v12 = &v4[14 * v11];
  if (v10 >= 112 && v6 > v7)
  {
LABEL_20:
    v5 -= 14;
    do
    {
      v15 = v5 + 14;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 14;
        if (v15 != v6)
        {
          memmove(v5, v6 - 14, 0x70uLL);
        }

        if (v12 <= v4 || (v6 -= 14, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 14);
      if (v15 != v12)
      {
        memmove(v5, v12 - 14, 0x70uLL);
      }

      v5 -= 14;
      v12 -= 14;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 112;
  if (v6 != v4 || v6 >= &v4[14 * v18])
  {
    memmove(v6, v4, 112 * v18);
  }

  return 1;
}

uint64_t sub_240FB7E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D8, &qword_240FD54D8);
  v56 = v4;
  result = sub_240FD479C();
  v7 = result;
  if (*(v5 + 16))
  {
    v49 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v55 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      if (v56)
      {
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + 104 * v23;
        v27 = *v25;
        v26 = *(v25 + 16);
        v29 = *(v25 + 32);
        v28 = *(v25 + 48);
        v30 = *(v25 + 64);
        v32 = *(v25 + 80);
        v31 = *(v25 + 88);
        v33 = *(v25 + 96);
        v34 = *(v24 + 8 * v23);
      }

      else
      {
        v35 = *(v5 + 48) + 104 * v23;
        v36 = *(v35 + 48);
        v37 = *(v35 + 64);
        v38 = *(v35 + 80);
        v33 = *(v35 + 96);
        v63 = v33;
        v61 = v37;
        v62 = v38;
        v60 = v36;
        v39 = *v35;
        v40 = *(v35 + 16);
        v59 = *(v35 + 32);
        v58[0] = v39;
        v58[1] = v40;
        v34 = *(*(v5 + 56) + 8 * v23);
        v31 = *(&v38 + 1);
        v32 = v38;
        v53 = v60;
        v54 = v61;
        v51 = v40;
        v52 = v59;
        v50 = v39;
        sub_240FB96D8(v58, v57);
        v27 = v50;
        v26 = v51;
        v29 = v52;
        v28 = v53;
        v30 = v54;
      }

      v64 = v27;
      v65 = v26;
      v66 = v29;
      v67 = v28;
      v68 = v30;
      *&v69 = v32;
      *(&v69 + 1) = v31;
      v70 = v33;
      sub_240FD488C();
      ATBiomeMediaItem.hash(into:)(v58);
      result = sub_240FD48BC();
      v41 = -1 << *(v7 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v14 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v5 = v55;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v14 + 8 * v43);
          if (v47 != -1)
          {
            v15 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v42) & ~*(v14 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v5 = v55;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 104 * v15;
      v17 = v69;
      *(v16 + 64) = v68;
      *(v16 + 80) = v17;
      *(v16 + 96) = v70;
      v18 = v65;
      *v16 = v64;
      *(v16 + 16) = v18;
      v19 = v67;
      *(v16 + 32) = v66;
      *(v16 + 48) = v19;
      *(*(v7 + 56) + 8 * v15) = v34;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_34;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v9, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_240FB81DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C0, &unk_240FD54C0);
  v34 = v4;
  result = sub_240FD479C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_240FD488C();
      sub_240FD44DC();
      result = sub_240FD48BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_240FB8484()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D8, &qword_240FD54D8);
  v2 = *v0;
  v3 = sub_240FD478C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_240FB96D8(v25, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 104 * v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v26 = *(v17 + 96);
      v25[4] = v19;
      v25[5] = v20;
      v25[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v25[0] = *v17;
      v25[1] = v22;
      v25[2] = v21;
      v23 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 104 * v16), v17, 0x61uLL);
      *(*(v4 + 56) + 8 * v16) = v23;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_240FB8640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C0, &unk_240FD54C0);
  v2 = *v0;
  v3 = sub_240FD478C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_240FB87B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FB8854(a1, a2, a3, *v3, &qword_27E51E5E0, &qword_240FD54E0, &qword_27E51E580, &qword_240FD51A8);
  *v3 = result;
  return result;
}

char *sub_240FB87F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FB89A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FB8810(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FB8AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FB8854(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 112);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[14 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 112 * v14);
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

char *sub_240FB89A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
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

void *sub_240FB8AB0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C8, &unk_240FD5C80);
  v10 = *(type metadata accessor for ATSpotlightDataRecord(0) - 8);
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
  v15 = *(type metadata accessor for ATSpotlightDataRecord(0) - 8);
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

void *sub_240FB8C88(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v35 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(a4 + 56);
      v19 = *(a4 + 48) + 104 * v17;
      v21 = *(v19 + 16);
      v20 = *(v19 + 32);
      v9 &= v9 - 1;
      v37[0] = *v19;
      v37[1] = v21;
      v37[2] = v20;
      v23 = *(v19 + 64);
      v22 = *(v19 + 80);
      v24 = *(v19 + 48);
      v38 = *(v19 + 96);
      v37[4] = v23;
      v37[5] = v22;
      v37[3] = v24;
      *&v22 = *(v18 + 8 * v17);
      v25 = *(v19 + 16);
      v39 = *v19;
      v40 = v25;
      v26 = *(v19 + 32);
      v27 = *(v19 + 48);
      v28 = *(v19 + 64);
      v29 = *(v19 + 80);
      LOBYTE(v45) = *(v19 + 96);
      v43 = v28;
      v44 = v29;
      v41 = v26;
      v42 = v27;
      v30 = v40;
      *v11 = v39;
      *(v11 + 16) = v30;
      v31 = v42;
      *(v11 + 32) = v41;
      *(v11 + 48) = v31;
      v32 = v44;
      *(v11 + 64) = v43;
      *(v11 + 80) = v32;
      *(v11 + 96) = v45;
      *(v11 + 104) = v22;
      if (v14 == v10)
      {
        sub_240FB96D8(v37, v36);
        goto LABEL_23;
      }

      v11 += 112;
      sub_240FB96D8(v37, v36);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v34 = v12 + 1;
    }

    else
    {
      v34 = v13;
    }

    v12 = v34 - 1;
    v10 = result;
LABEL_23:
    v7 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

__n128 sub_240FB8E6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  v26.n128_u64[0] = a7;
  v26.n128_u64[1] = a8;
  v16 = a11 == 0x6C7070612E6D6F63 && *(&a11 + 1) == 0xEF636973754D2E65;
  if (!v16 && (sub_240FD47FC() & 1) == 0 && __PAIR128__(0x8000000240FD5F00, 0xD000000000000029) != a11 && (sub_240FD47FC() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!a2)
  {

    if (__PAIR128__(0x8000000240FD5F30, 0xD000000000000012) != a11)
    {
      sub_240FD47FC();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (!a1 && a2 == 0xE000000000000000)
  {

    if (__PAIR128__(0x8000000240FD5F30, 0xD000000000000012) == a11)
    {
LABEL_30:
      if ((a1 || a2 != 0xE000000000000000) && (sub_240FD47FC() & 1) == 0 && a4 && (a3 || a4 != 0xE000000000000000) && (sub_240FD47FC() & 1) == 0)
      {

        v19 = 1;
        goto LABEL_50;
      }

LABEL_32:
      if (__PAIR128__(0x8000000240FD5F50, 0xD000000000000010) == a11)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_28:
    if ((sub_240FD47FC() & 1) == 0 || !a2)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (sub_240FD47FC())
  {
    goto LABEL_24;
  }

  if (!a4)
  {
LABEL_25:

    if (__PAIR128__(0x8000000240FD5F30, 0xD000000000000012) != a11)
    {
      goto LABEL_28;
    }

    if (a2)
    {
      goto LABEL_30;
    }

LABEL_33:
    if ((sub_240FD47FC() & 1) == 0)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_34:
    if (!a2 || !a1 && a2 == 0xE000000000000000 || (sub_240FD47FC() & 1) != 0)
    {
      goto LABEL_41;
    }

    if (a4)
    {
      if (!a3 && a4 == 0xE000000000000000)
      {
        goto LABEL_41;
      }

      v25 = sub_240FD47FC();

      if ((v25 & 1) == 0)
      {

        v19 = 2;
        goto LABEL_50;
      }
    }

    else
    {
    }

LABEL_42:
    if (a11 == __PAIR128__(0xEC00000076742E65, 0x6C7070612E6D6F63))
    {
    }

    else
    {
      v20 = sub_240FD47FC();

      if ((v20 & 1) == 0)
      {
LABEL_48:

        goto LABEL_49;
      }
    }

    if (a2)
    {
      if (!a1 && a2 == 0xE000000000000000)
      {
        goto LABEL_48;
      }

      v24 = sub_240FD47FC();

      if ((v24 & 1) == 0)
      {
        v19 = 3;
        goto LABEL_50;
      }
    }

LABEL_49:
    v19 = 4;
LABEL_50:
    v17 = a6;
    goto LABEL_51;
  }

  if (!a3 && a4 == 0xE000000000000000 || (sub_240FD47FC() & 1) != 0 || (v17 = a6) == 0 || !a5 && a6 == 0xE000000000000000 || (v18 = sub_240FD47FC(), v19 = 0, (v18 & 1) != 0))
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_51:
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  *&v32 = a5;
  *(&v32 + 1) = v17;
  v33 = v26;
  v34 = a10;
  v35 = a11;
  v36 = v19;
  v37[0] = a1;
  v37[1] = a2;
  v37[2] = a3;
  v37[3] = a4;
  v37[4] = a5;
  v37[5] = v17;
  v38 = v26;
  v39 = a10;
  v40 = a11;
  v41 = v19;
  sub_240FB96D8(&v30, v29);
  sub_240FBA110(v37);
  v21 = v35;
  *(a9 + 64) = v34;
  *(a9 + 80) = v21;
  *(a9 + 96) = v36;
  v22 = v31;
  *a9 = v30;
  *(a9 + 16) = v22;
  result = v33;
  *(a9 + 32) = v32;
  *(a9 + 48) = result;
  return result;
}

BOOL _s15ArchetypeEngine16ATBiomeMediaItemV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_240FD47FC();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_240FD47FC();
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

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_240FD47FC();
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

  v21 = *(a1 + 56);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_240FD47FC();
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

  v27 = *(a1 + 72);
  v28 = *(a2 + 72);
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = sub_240FD47FC();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  v33 = a1;
  v34 = a2;
  v35 = sub_240FD47FC();
  a2 = v34;
  v36 = v35;
  a1 = v33;
  if (v36)
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return 0;
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

uint64_t sub_240FB9608()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FB9658()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_240FB9740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D8, &qword_240FD54D8);
    v3 = sub_240FD47AC();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[5];
      v22 = v4[4];
      v23 = v6;
      v24 = v4[6];
      v7 = v4[1];
      v19[0] = *v4;
      v19[1] = v7;
      v8 = v4[3];
      v20 = v4[2];
      v21 = v8;
      v31 = *(v4 + 96);
      v29 = v22;
      v30 = v6;
      v25 = v19[0];
      v26 = v7;
      v27 = v20;
      v28 = v8;
      sub_240FB99A0(v19, &v18, &qword_27E51E580, &qword_240FD51A8);
      result = sub_240FB706C(&v25);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 104 * result;
      v12 = v30;
      *(v11 + 64) = v29;
      *(v11 + 80) = v12;
      *(v11 + 96) = v31;
      v13 = v26;
      *v11 = v25;
      *(v11 + 16) = v13;
      v14 = v28;
      *(v11 + 32) = v27;
      *(v11 + 48) = v14;
      *(v3[7] + 8 * result) = *(&v24 + 1);
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_240FB98C4(void *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_240FB6F90((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E588, &qword_240FD51B8);
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_240FB99A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_240FB9A0C()
{
  result = qword_27E51E590;
  if (!qword_27E51E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E590);
  }

  return result;
}

unint64_t sub_240FB9A64()
{
  result = qword_27E51E598;
  if (!qword_27E51E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E598);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ATBiomeMediaType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ATBiomeMediaType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_240FB9C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240FB9C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_240FB9D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240FB9D98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for BMMediaNowPlayingPlaybackState()
{
  if (!qword_27E51E5A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E51E5A0);
    }
  }
}

unint64_t sub_240FB9E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C0, &unk_240FD54C0);
    v3 = sub_240FD47AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_240FB70D8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240FB9F6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_240FBA140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_240FBA1A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t ATAccessibilityError.errorDescription.getter(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        sub_240FD46BC();

        v15 = 0xD00000000000001DLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E630, &qword_240FD5540);
        v8 = swift_allocObject();
        v9 = MEMORY[0x277D84D38];
        *(v8 + 16) = xmmword_240FD5170;
        v10 = MEMORY[0x277D84D90];
        *(v8 + 56) = v9;
        *(v8 + 64) = v10;
        *(v8 + 32) = v3;
        v7 = sub_240FD44AC();
        goto LABEL_18;
      }

      sub_240FD46BC();

      v6 = 0xD000000000000020;
    }

    else
    {
      if (!a3)
      {
        v4 = a2;
        sub_240FD46BC();

        v5 = 0xD00000000000002BLL;
LABEL_16:
        v15 = v5;
        MEMORY[0x245CD64D0](v3, v4);
        return v15;
      }

      sub_240FD46BC();

      v6 = 0xD000000000000025;
    }

    v15 = v6;
LABEL_14:
    v7 = sub_240FD47DC();
LABEL_18:
    MEMORY[0x245CD64D0](v7);

    return v15;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
      v4 = a2;
      sub_240FD46BC();

      v5 = 0xD000000000000024;
      goto LABEL_16;
    }

    sub_240FD46BC();

    v15 = 0xD00000000000001FLL;
    goto LABEL_14;
  }

  if (a3 == 6)
  {

    return v3;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      v12 = a1 ^ 5 | a2;
      v13 = 0xD00000000000001BLL;
      v14 = 0xD000000000000022;
    }

    else
    {
      if (!(a1 ^ 7 | a2))
      {
        return 0xD000000000000025;
      }

      v12 = a1 ^ 8 | a2;
      v13 = 0xD000000000000028;
      v14 = 0xD00000000000002ELL;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (!(a1 ^ 2 | a2))
      {
        return 0xD00000000000002CLL;
      }

      if (a1 ^ 3 | a2)
      {
        return 0xD000000000000025;
      }

      return 0xD000000000000029;
    }

    v12 = a1 | a2;
    v13 = 0xD000000000000023;
    v14 = 0xD00000000000002ALL;
  }

  if (v12)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_240FBA648()
{
  result = qword_27E51E638;
  if (!qword_27E51E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E638);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ArchetypeEngine20ATAccessibilityErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_240FBA6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240FBA73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_240FBA780(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t ATSpotlightDataRecordType.hashValue.getter(unsigned __int8 a1)
{
  sub_240FD488C();
  MEMORY[0x245CD6870](a1);
  return sub_240FD48BC();
}

uint64_t ATSpotlightDataRecord.uniqueIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ATSpotlightDataRecord.content.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ATSpotlightDataRecord.content.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ATSpotlightDataRecord.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ATSpotlightDataRecord(0) + 28);
  v4 = sub_240FD422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ATSpotlightDataRecord(uint64_t a1)
{
  result = qword_27E51E670;
  if (!qword_27E51E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ATSpotlightDataRecord.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord(0) + 32);

  return sub_240FBA9F4(v3, a1);
}

uint64_t sub_240FBA9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ATSpotlightDataRecord.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord(0) + 36);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.mailMessageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 40));

  return v1;
}

uint64_t ATSpotlightDataRecord.authors.getter()
{
  type metadata accessor for ATSpotlightDataRecord(0);
}

uint64_t ATSpotlightDataRecord.recipients.getter()
{
  type metadata accessor for ATSpotlightDataRecord(0);
}

uint64_t ATSpotlightDataRecord.additionalRecipients.getter()
{
  type metadata accessor for ATSpotlightDataRecord(0);
}

uint64_t ATSpotlightDataRecord.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 56));

  return v1;
}

uint64_t ATSpotlightDataRecord.mailLastViewedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord(0) + 60);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.mailReceivedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord(0) + 64);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.mailConversationId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 68));

  return v1;
}

uint64_t ATSpotlightDataRecord.extendedContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 76));

  return v1;
}

uint64_t ATSpotlightDataRecord.extendedContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ATSpotlightDataRecord(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ATSpotlightDataRecord.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 84));

  return v1;
}

uint64_t ATSpotlightDataRecord.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 88));

  return v1;
}

uint64_t ATSpotlightDataRecord.calendarType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 92));

  return v1;
}

uint64_t ATSpotlightDataRecord.eventStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord(0) + 96);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.eventEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord(0) + 100);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.eventLocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 108));

  return v1;
}

uint64_t ATSpotlightDataRecord.comment.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 112));

  return v1;
}

uint64_t ATSpotlightDataRecord.genre.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 120));

  return v1;
}

uint64_t ATSpotlightDataRecord.artist.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 124));

  return v1;
}

uint64_t ATSpotlightDataRecord.composer.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 128));

  return v1;
}

uint64_t ATSpotlightDataRecord.album.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord(0) + 132));

  return v1;
}

uint64_t ATSpotlightDataRecord.init(item:bundleID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v217 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v226 = &v217 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v225 = &v217 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v224 = &v217 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v218 = &v217 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v222 = &v217 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v230 = &v217 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v228 = &v217 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v217 - v26;
  v233 = sub_240FD422C();
  v28 = *(v233 - 8);
  v29 = MEMORY[0x28223BE20](v233);
  v220 = &v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v232 = &v217 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v219 = &v217 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v217 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v217 - v38;
  v40._countAndFlagsBits = a2;
  v221 = a3;
  v40._object = a3;
  v223 = bundleIDToRecordType(bundleID:)(v40);
  *a4 = v223;
  v41 = [a1 attributeSet];
  v42 = [v41 uniqueIdentifier];

  if (v42)
  {
    v43 = sub_240FD449C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  *(a4 + 8) = v43;
  *(a4 + 16) = v45;
  v46 = [a1 attributeSet];
  v47 = [v46 contentSnippet];

  if (v47)
  {
    v48 = sub_240FD449C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xE000000000000000;
  }

  *(a4 + 24) = v48;
  *(a4 + 32) = v50;
  v51 = [a1 attributeSet];
  v52 = [v51 contentCreationDate];

  v231 = v28;
  v227 = v11;
  if (v52)
  {
    v53 = a1;
    sub_240FD41FC();

    v54 = *(v28 + 32);
    v55 = v233;
    v54(v27, v37, v233);
    v234 = *(v28 + 56);
    v234(v27, 0, 1, v55);
    v54(v39, v27, v55);
  }

  else
  {
    v56 = v233;
    v234 = *(v28 + 56);
    v234(v27, 1, 1, v233);
    sub_240FD421C();
    sub_240FD41AC();
    (*(v28 + 8))(v37, v56);
    v53 = a1;
    if ((*(v28 + 48))(v27, 1, v56) != 1)
    {
      sub_240FBA1A8(v27, &qword_27E51E578, &qword_240FD51A0);
    }

    v55 = v233;
    v28 = v231;
  }

  v229 = type metadata accessor for ATSpotlightDataRecord(0);
  v57 = *(v229 + 28);
  v58 = *(v28 + 32);
  v58(a4 + v57, v39, v55);
  v59 = [v53 attributeSet];
  v60 = [v59 lastUsedDate];

  v217 = v57;
  if (v60)
  {
    v61 = v219;
    sub_240FD41FC();

    v62 = v228;
    v63 = v58;
    v58(v228, v61, v55);
  }

  else
  {
    v63 = v58;
    v62 = v228;
    (*(v28 + 16))(v228, a4 + v57, v55);
  }

  v234(v62, 0, 1, v55);
  sub_240FBCB00(v62, a4 + *(v229 + 32));
  v64 = v53;
  v65 = [v53 attributeSet];
  v66 = [v65 attributeForKey_];

  if (v66)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  v67 = v231;
  if (*(&v238 + 1))
  {
    v68 = v230;
    v69 = v233;
    v70 = swift_dynamicCast() ^ 1;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v71 = v230;
    v70 = 1;
    v72 = v233;
  }

  v234(v71, v70, 1, v72);
  v73 = [v53 attributeSet];
  v74 = [v73 contentModificationDate];

  if (v74)
  {
    v75 = v220;
    sub_240FD41FC();

    v76 = v233;
    v63(v232, v75, v233);
  }

  else
  {
    v76 = v233;
    (*(v67 + 16))(v232, a4 + v217, v233);
  }

  v77 = v229;
  v78 = v230;
  v79 = *(v67 + 48);
  if (v79(v230, 1, v76) == 1)
  {

    v80 = v222;
    (*(v67 + 16))(v222, v232, v76);
    v234(v80, 0, 1, v76);
  }

  else
  {
    v229 = v64;
    v81 = v78;
    v82 = v78;
    v83 = v218;
    sub_240FBA9F4(v82, v218);
    result = v79(v83, 1, v76);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v85 = v232;
    v86 = sub_240FD41DC();
    (*(v67 + 8))(v83, v76);
    if (v86)
    {
      v78 = v81;
      v80 = v222;
      sub_240FBA9F4(v81, v222);
    }

    else
    {
      v80 = v222;
      (*(v67 + 16))(v222, v85, v76);
      v234(v80, 0, 1, v76);
      v78 = v81;
    }

    v64 = v229;
  }

  sub_240FBCB00(v80, a4 + v77[9]);
  v87 = [v64 attributeSet];
  v88 = sub_240FD448C();
  v89 = [v87 attributeForKey_];

  if (v89)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    v90 = swift_dynamicCast();
    v91 = v235;
    v92 = v236;
    if (!v90)
    {
      v91 = 0;
      v92 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v91 = 0;
    v92 = 0;
  }

  v93 = (a4 + v77[10]);
  *v93 = v91;
  v93[1] = v92;
  v94 = v223;
  v95 = [v64 attributeSet];
  v96 = v95;
  if (v94 != 5)
  {
    v99 = [v95 authorNames];

    if (v99)
    {
      v100 = sub_240FD453C();
    }

    else
    {
      v100 = 0;
    }

    *(a4 + v77[11]) = v100;
    v103 = [v64 attributeSet];
    v104 = [v103 recipientNames];

    if (v104)
    {
      v105 = sub_240FD453C();

      goto LABEL_56;
    }

LABEL_55:
    v105 = 0;
    goto LABEL_56;
  }

  v97 = [v95 authorEmailAddresses];

  if (v97)
  {
    v98 = sub_240FD453C();
  }

  else
  {
    v98 = 0;
  }

  *(a4 + v77[11]) = v98;
  v101 = [v64 attributeSet];
  v102 = [v101 attributeForKey_];

  if (v102)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  if (!*(&v238 + 1))
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
  if (swift_dynamicCast())
  {
    v105 = v235;
  }

  else
  {
    v105 = 0;
  }

LABEL_56:
  *(a4 + v77[12]) = v105;
  v106 = [v64 attributeSet];
  v107 = [v106 attributeForKey_];

  if (v107)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
    v108 = swift_dynamicCast();
    v109 = v235;
    if (!v108)
    {
      v109 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v109 = 0;
  }

  *(a4 + v77[13]) = v109;
  v110 = [v64 attributeSet];
  v111 = [v110 subject];

  if (v111)
  {
    v112 = sub_240FD449C();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v115 = (a4 + v77[14]);
  *v115 = v112;
  v115[1] = v114;
  v116 = [v64 attributeSet];
  v117 = [v116 attributeForKey_];

  if (v117)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v118 = v224;
  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    v119 = swift_dynamicCast() ^ 1;
    v120 = v118;
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v120 = v118;
    v119 = 1;
  }

  v234(v120, v119, 1, v76);
  sub_240FBCB00(v118, a4 + v77[15]);
  v121 = [v64 attributeSet];
  v122 = [v121 attributeForKey_];

  if (v122)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v123 = v225;
  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    v124 = swift_dynamicCast() ^ 1;
    v125 = v123;
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v125 = v123;
    v124 = 1;
  }

  v234(v125, v124, 1, v76);
  sub_240FBCB00(v123, a4 + v77[16]);
  v126 = [v64 attributeSet];
  v127 = [v126 mailConversationID];

  if (v127)
  {
    v128 = sub_240FD449C();
    v130 = v129;
  }

  else
  {
    v128 = 0;
    v130 = 0;
  }

  v131 = (a4 + v77[17]);
  *v131 = v128;
  v131[1] = v130;
  v132 = [v64 attributeSet];
  v133 = [v132 isLikelyJunk];

  LOBYTE(v132) = [v133 BOOLValue];
  *(a4 + v77[18]) = v132;
  v134 = [v64 attributeSet];
  v135 = sub_240FD448C();
  v136 = [v134 attributeForKey_];

  if (v136)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    v137 = swift_dynamicCast();
    v138 = v235;
    v139 = v236;
    if (!v137)
    {
      v138 = 0;
      v139 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v138 = 0;
    v139 = 0;
  }

  v140 = (a4 + v77[19]);
  *v140 = v138;
  v140[1] = v139;
  v141 = [v64 attributeSet];
  v142 = sub_240FD448C();
  v143 = [v141 attributeForKey_];

  if (v143)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    v144 = swift_dynamicCast();
    v145 = v235;
    if (!v144)
    {
      v145 = 2;
    }
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v145 = 2;
  }

  *(a4 + v77[20]) = v145;
  v146 = [v64 attributeSet];
  v147 = [v146 title];

  if (v147)
  {
    v148 = sub_240FD449C();
    v150 = v149;
  }

  else
  {
    v148 = 0;
    v150 = 0;
  }

  v151 = (a4 + v77[21]);
  *v151 = v148;
  v151[1] = v150;
  v152 = [v64 attributeSet];
  v153 = [v152 displayName];

  if (v153)
  {
    v154 = sub_240FD449C();
    v156 = v155;
  }

  else
  {
    v154 = 0;
    v156 = 0;
  }

  v157 = (a4 + v77[22]);
  *v157 = v154;
  v157[1] = v156;
  v158 = [v64 attributeSet];
  v159 = [v158 attributeForKey_];

  if (v159)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v237 = 0u;
    v238 = 0u;
  }

  v239 = v237;
  v240 = v238;
  if (*(&v238 + 1))
  {
    v160 = swift_dynamicCast();
    v161 = v235;
    v162 = v236;
    if (!v160)
    {
      v161 = 0;
      v162 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v239, &qword_27E51E5F0, &qword_240FD54F0);
    v161 = 0;
    v162 = 0;
  }

  v163 = (a4 + v77[23]);
  *v163 = v161;
  v163[1] = v162;
  v164 = [v64 attributeSet];
  v165 = [v164 startDate];

  if (v165)
  {
    v166 = v226;
    sub_240FD41FC();

    v167 = 0;
  }

  else
  {
    v167 = 1;
    v166 = v226;
  }

  v168 = 1;
  v234(v166, v167, 1, v76);
  sub_240FBCB00(v166, a4 + v77[24]);
  v169 = [v64 attributeSet];
  v170 = [v169 endDate];

  v171 = v227;
  if (v170)
  {
    sub_240FD41FC();

    v168 = 0;
  }

  v234(v171, v168, 1, v76);
  sub_240FBCB00(v171, a4 + v77[25]);
  v172 = [v64 attributeSet];
  v173 = [v172 allDay];

  if (v173)
  {
    v174 = [v173 BOOLValue];
  }

  else
  {
    v174 = 2;
  }

  *(a4 + v77[26]) = v174;
  v175 = [v64 attributeSet];
  v176 = [v175 namedLocation];

  if (v176)
  {
    v177 = sub_240FD449C();
    v179 = v178;
  }

  else
  {
    v177 = 0;
    v179 = 0;
  }

  v180 = (a4 + v77[27]);
  *v180 = v177;
  v180[1] = v179;
  v181 = [v64 attributeSet];
  v182 = [v181 comment];

  if (v182)
  {
    v183 = sub_240FD449C();
    v185 = v184;
  }

  else
  {
    v183 = 0;
    v185 = 0;
  }

  v186 = (a4 + v77[28]);
  *v186 = v183;
  v186[1] = v185;
  v187 = [v64 attributeSet];
  v188 = [v187 supportsNavigation];

  if (v188 && (v188, v189 = [v64 attributeSet], v190 = objc_msgSend(v189, sel_supportsNavigation), v189, v190))
  {
    v191 = [v190 BOOLValue];
  }

  else
  {
    v191 = 2;
  }

  *(a4 + v77[29]) = v191;
  v192 = [v64 attributeSet];
  v193 = [v192 genre];

  if (v193)
  {
    v194 = sub_240FD449C();
    v196 = v195;
  }

  else
  {
    v194 = 0;
    v196 = 0;
  }

  v197 = (a4 + v77[30]);
  *v197 = v194;
  v197[1] = v196;
  v198 = [v64 attributeSet];
  v199 = [v198 artist];

  if (v199)
  {
    v200 = sub_240FD449C();
    v202 = v201;
  }

  else
  {
    v200 = 0;
    v202 = 0;
  }

  v203 = (a4 + v77[31]);
  *v203 = v200;
  v203[1] = v202;
  v204 = [v64 attributeSet];
  v205 = [v204 composer];

  if (v205)
  {
    v206 = sub_240FD449C();
    v208 = v207;
  }

  else
  {
    v206 = 0;
    v208 = 0;
  }

  v209 = v232;
  v210 = (a4 + v77[32]);
  *v210 = v206;
  v210[1] = v208;
  v211 = [v64 attributeSet];
  v212 = [v211 composer];

  if (v212)
  {
    v213 = sub_240FD449C();
    v215 = v214;

    (*(v231 + 8))(v209, v233);
  }

  else
  {
    (*(v231 + 8))(v209, v233);

    v213 = 0;
    v215 = 0;
  }

  v216 = (a4 + v77[33]);
  *v216 = v213;
  v216[1] = v215;
  return sub_240FBA1A8(v78, &qword_27E51E578, &qword_240FD51A0);
}

ArchetypeEngine::ATSpotlightDataRecordType __swiftcall bundleIDToRecordType(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  if (bundleID._countAndFlagsBits == 0xD000000000000013 && 0x8000000240FD6240 == bundleID._object || (sub_240FD47FC() & 1) != 0)
  {
    return 4;
  }

  if (countAndFlagsBits == 0xD000000000000014 && 0x8000000240FD5E60 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 5;
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x8000000240FD6260 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 3;
  }

  if (countAndFlagsBits == 0xD000000000000015 && 0x8000000240FD6280 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 1;
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x8000000240FD5E40 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 0;
  }

  result = ArchetypeEngine_ATSpotlightDataRecordType_SpotlightMusicRecord;
  if (countAndFlagsBits != 0x6C7070612E6D6F63 || object != 0xEF636973754D2E65)
  {
    if (sub_240FD47FC())
    {
      return 2;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_240FBCB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ATSpotlightDataRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_240FD47FC();
  }
}

unint64_t ATSpotlightDataRecord.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_240FD422C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240FD48EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0xD00000000000003DLL;
  v43 = 0x8000000240FD6300;
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  MEMORY[0x245CD64D0](0x203A2065707954, 0xE700000000000000);
  LOBYTE(v36) = *v0;
  sub_240FD475C();
  MEMORY[0x245CD64D0](2592, 0xE200000000000000);
  MEMORY[0x245CD64D0](v39, *(&v39 + 1));

  *(&v40 + 1) = type metadata accessor for ATSpotlightDataRecord(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
  sub_240FBE4A4(v0, boxed_opaque_existential_0);
  sub_240FD48CC();
  sub_240FD48DC();
  (*(v8 + 8))(v10, v7);
  sub_240FD474C();

  sub_240FD47BC();
  v40 = v37;
  v41 = v38;
  v39 = v36;
  if (!*(&v38 + 1))
  {
LABEL_26:

    MEMORY[0x245CD64D0](0xD00000000000003CLL, 0x8000000240FD6340);
    return v42;
  }

  v31 = (v5 + 56);
  v29 = (v5 + 32);
  v28 = (v5 + 8);
  v12 = MEMORY[0x277D837D0];
  while (1)
  {
    v13 = v39;
    sub_240FBE508(&v40, &v36);
    sub_240FB9F6C(&v36, &v34);
    result = swift_dynamicCast();
    if (result)
    {
      break;
    }

    sub_240FB9F6C(&v36, &v34);
    result = swift_dynamicCast();
    if (result)
    {
      v17 = v32;
      v34 = 0;
      v35 = 0xE000000000000000;
      if (!*(&v13 + 1))
      {
        goto LABEL_28;
      }

      MEMORY[0x245CD64D0](v13, *(&v13 + 1));

      MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
      if (v17)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v17)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      MEMORY[0x245CD64D0](v18, v19);
    }

    else
    {
      sub_240FB9F6C(&v36, &v34);
      v20 = swift_dynamicCast();
      v21 = *v31;
      if (v20)
      {
        v21(v3, 0, 1, v4);
        v22 = v30;
        result = (*v29)(v30, v3, v4);
        v34 = 0;
        v35 = 0xE000000000000000;
        if (!*(&v13 + 1))
        {
          goto LABEL_29;
        }

        MEMORY[0x245CD64D0](v13, *(&v13 + 1));

        MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
        sub_240FBED14(&qword_27E51E648, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v23 = sub_240FD47DC();
        MEMORY[0x245CD64D0](v23);

        MEMORY[0x245CD64D0](2592, 0xE200000000000000);
        MEMORY[0x245CD64D0](v34, v35);

        (*v28)(v22, v4);
        goto LABEL_16;
      }

      v21(v3, 1, 1, v4);
      sub_240FBA1A8(v3, &qword_27E51E578, &qword_240FD51A0);
      sub_240FB9F6C(&v36, &v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(&v36);

        goto LABEL_17;
      }

      v24 = v32;
      v34 = 0;
      v35 = 0xE000000000000000;
      if (!*(&v13 + 1))
      {
        goto LABEL_30;
      }

      MEMORY[0x245CD64D0](v13, *(&v13 + 1));

      MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
      v25 = MEMORY[0x245CD6520](v24, v12);
      v27 = v26;

      MEMORY[0x245CD64D0](v25, v27);
    }

LABEL_15:

    MEMORY[0x245CD64D0](2592, 0xE200000000000000);
    MEMORY[0x245CD64D0](v34, v35);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(&v36);
LABEL_17:
    sub_240FD47BC();
    v40 = v37;
    v41 = v38;
    v39 = v36;
    if (!*(&v38 + 1))
    {
      goto LABEL_26;
    }
  }

  v15 = v32;
  v16 = v33;
  v34 = 0;
  v35 = 0xE000000000000000;
  if (*(&v13 + 1))
  {
    MEMORY[0x245CD64D0](v13, *(&v13 + 1));

    MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
    MEMORY[0x245CD64D0](v15, v16);
    goto LABEL_15;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_240FBD2D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_240FD47FC();
  }
}

uint64_t sub_240FBD410(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000240FD6240 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD5700;
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v6;
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v7;
    *(v5 + 64) = 0xD00000000000001FLL;
    *(v5 + 72) = 0x8000000240FD62E0;
LABEL_5:
    v30 = *(v2 + 16);

    sub_240FBDAA4(v5);
    return v30;
  }

  if (a1 == 0xD000000000000014 && 0x8000000240FD5E60 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD56F0;
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v9;
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v10;
    *(v5 + 64) = sub_240FD449C();
    *(v5 + 72) = v11;
    *(v5 + 80) = sub_240FD449C();
    *(v5 + 88) = v12;
    *(v5 + 96) = sub_240FD449C();
    *(v5 + 104) = v13;
    *(v5 + 112) = sub_240FD449C();
    *(v5 + 120) = v14;
    *(v5 + 128) = sub_240FD449C();
    *(v5 + 136) = v15;
    *(v5 + 144) = sub_240FD449C();
    *(v5 + 152) = v16;
    *(v5 + 160) = sub_240FD449C();
    *(v5 + 168) = v17;
    *(v5 + 176) = sub_240FD449C();
    *(v5 + 184) = v18;
    *(v5 + 192) = 0xD000000000000019;
    *(v5 + 200) = 0x8000000240FD62C0;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000013 && 0x8000000240FD6260 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD5170;
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v19;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000015 && 0x8000000240FD6280 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD56E0;
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v20;
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v21;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000013 && 0x8000000240FD5E40 == a2 || (sub_240FD47FC() & 1) != 0 || a1 == 0x6C7070612E6D6F63 && a2 == 0xEF636973754D2E65 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD56D0;
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v22;
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v23;
    *(v5 + 64) = sub_240FD449C();
    *(v5 + 72) = v24;
    *(v5 + 80) = sub_240FD449C();
    *(v5 + 88) = v25;
    *(v5 + 96) = sub_240FD449C();
    *(v5 + 104) = v26;
    *(v5 + 112) = sub_240FD449C();
    *(v5 + 120) = v27;
    *(v5 + 128) = sub_240FD449C();
    *(v5 + 136) = v28;
    *(v5 + 144) = sub_240FD449C();
    *(v5 + 152) = v29;
    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_240FBD9A0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_240FBD9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_240FD5710;
  *(v1 + 32) = sub_240FD449C();
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_240FD449C();
  *(v1 + 56) = v3;
  *(v1 + 64) = sub_240FD449C();
  *(v1 + 72) = v4;
  *(v1 + 80) = sub_240FD449C();
  *(v1 + 88) = v5;
  *(v1 + 96) = sub_240FD449C();
  *(v1 + 104) = v6;
  *(v1 + 112) = sub_240FD449C();
  *(v1 + 120) = v7;
  *(v0 + 16) = v1;
  return v0;
}

char *sub_240FBDAA4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_240FB6B4C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_240FBDB98(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_240FB6C58(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ATSpotlightDataRecord(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v56 = &v50 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v50 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v50 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v19 = sub_240FD422C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v57 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v59 = &v50 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v60 = &v50 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v50 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v50 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v50 - v33;
  v35 = *a1;
  v58 = a1;
  if (v35 == 5)
  {
    v52 = v11;
    v53 = v29;
    v54 = v6;
    v36 = type metadata accessor for ATSpotlightDataRecord(0);
    sub_240FBA9F4(&a1[*(v36 + 64)], v18);
    v37 = *(v20 + 48);
    if (v37(v18, 1, v19) != 1)
    {
      v51 = *(v20 + 32);
      v51(v34, v18, v19);
      v18 = v55;
      sub_240FBA9F4(v61 + *(v36 + 64), v55);
      if (v37(v18, 1, v19) != 1)
      {
        v51(v32, v18, v19);
        v44 = sub_240FD41DC();
        v45 = *(v20 + 8);
        v45(v32, v19);
        v48 = v34;
        goto LABEL_26;
      }

      (*(v20 + 8))(v34, v19);
      a1 = v58;
    }

    sub_240FBA1A8(v18, &qword_27E51E578, &qword_240FD51A0);
    v29 = v53;
    v6 = v54;
    v11 = v52;
  }

  v38 = type metadata accessor for ATSpotlightDataRecord(0);
  sub_240FBA9F4(&a1[v38[9]], v14);
  v39 = *(v20 + 48);
  if (v39(v14, 1, v19) == 1)
  {
    (*(v20 + 16))(v29, &a1[v38[7]], v19);
    v40 = v39(v14, 1, v19);
    v41 = v60;
    if (v40 != 1)
    {
      sub_240FBA1A8(v14, &qword_27E51E578, &qword_240FD51A0);
    }
  }

  else
  {
    (*(v20 + 32))(v29, v14, v19);
    v41 = v60;
  }

  sub_240FBA9F4(v61 + v38[9], v11);
  if (v39(v11, 1, v19) == 1)
  {
    (*(v20 + 16))(v41, v61 + v38[7], v19);
    if (v39(v11, 1, v19) != 1)
    {
      sub_240FBA1A8(v11, &qword_27E51E578, &qword_240FD51A0);
    }
  }

  else
  {
    (*(v20 + 32))(v41, v11, v19);
  }

  sub_240FBED14(&unk_27E51E6A0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if (sub_240FD447C())
  {
    v42 = v58;
    v43 = v56;
    sub_240FBA9F4(&v58[v38[8]], v56);
    if (v39(v43, 1, v19) == 1)
    {
      (*(v20 + 16))(v59, &v42[v38[7]], v19);
      if (v39(v43, 1, v19) != 1)
      {
        sub_240FBA1A8(v43, &qword_27E51E578, &qword_240FD51A0);
      }
    }

    else
    {
      (*(v20 + 32))(v59, v43, v19);
    }

    sub_240FBA9F4(v61 + v38[8], v6);
    if (v39(v6, 1, v19) == 1)
    {
      v46 = v57;
      (*(v20 + 16))(v57, v61 + v38[7], v19);
      if (v39(v6, 1, v19) != 1)
      {
        sub_240FBA1A8(v6, &qword_27E51E578, &qword_240FD51A0);
      }
    }

    else
    {
      v46 = v57;
      (*(v20 + 32))(v57, v6, v19);
    }

    v47 = v59;
    v44 = sub_240FD41DC();
    v45 = *(v20 + 8);
    v45(v46, v19);
    v45(v47, v19);
    v45(v41, v19);
  }

  else
  {
    v44 = sub_240FD41DC();
    v45 = *(v20 + 8);
    v45(v41, v19);
  }

  v48 = v29;
LABEL_26:
  v45(v48, v19);
  return v44 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_240FBE4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATSpotlightDataRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_240FBE508(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_240FBE51C()
{
  result = qword_27E51E650;
  if (!qword_27E51E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E650);
  }

  return result;
}

uint64_t sub_240FBE570(uint64_t a1)
{
  *(a1 + 8) = sub_240FBED14(&qword_27E51E658, type metadata accessor for ATSpotlightDataRecord, &protocol conformance descriptor for ATSpotlightDataRecord);
  result = sub_240FBED14(&qword_27E51E660, type metadata accessor for ATSpotlightDataRecord, &protocol conformance descriptor for ATSpotlightDataRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ATSpotlightDataRecordType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ATSpotlightDataRecordType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_240FBE7A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_240FD422C();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_240FBE8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_240FD422C();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_240FBEA14(uint64_t a1)
{
  sub_240FD422C();
  if (v1 <= 0x3F)
  {
    sub_240FBEB7C(319);
    if (v2 <= 0x3F)
    {
      sub_240FBEC80(319, &qword_27E51E688, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_240FBEBD4(319);
        if (v4 <= 0x3F)
        {
          sub_240FBEC80(319, &qword_27E51E698, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240FBEB7C(uint64_t a1)
{
  if (!qword_27E51E680)
  {
    sub_240FD422C();
    v1 = sub_240FD463C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E51E680);
    }
  }
}

void sub_240FBEBD4(uint64_t a1)
{
  if (!qword_27E51E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E640, &qword_240FD5730);
    v1 = sub_240FD463C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E51E690);
    }
  }
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

void sub_240FBEC80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_240FD463C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_240FBED14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void ATLocationRetriever.init(effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager;
  *&v2[v3] = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v4 = OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_semaphore;
  *&v2[v4] = dispatch_semaphore_create(0);
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ATLocationRetriever();
  v5 = objc_msgSendSuper2(&v12, sel_init);
  sub_240FC06B8(0, &unk_27E51E6C0, 0x277D85C78);
  v6 = v5;
  v7 = sub_240FD45EC();
  v8 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v9 = sub_240FD448C();
  v10 = [v8 initWithEffectiveBundleIdentifier:v9 delegate:v6 onQueue:v7];

  if (v10)
  {

    v11 = *&v6[OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager];
    *&v6[OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager] = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_240FBEF40()
{
  v1[19] = v0;
  v2 = sub_240FD443C();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FBF000, 0, 0);
}

uint64_t sub_240FBF000()
{
  v1 = [*(v0[19] + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager) location];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[24] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_240FBF1B4;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E738, &unk_240FD5960);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240FBF520;
    v0[13] = &block_descriptor_0;
    v0[14] = v4;
    [v3 reverseGeocodeLocation:v2 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_240FBF1B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_240FBF380;
  }

  else
  {
    v2 = sub_240FBF2C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_240FBF2C4()
{
  v1 = *(v0 + 144);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245CD66B0](0, *(v0 + 144));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = *(v0 + 192);

  v5 = *(v0 + 8);

  v5(v3);
}

uint64_t sub_240FBF380()
{
  v1 = v0[25];
  swift_willThrow();
  sub_240FD442C();
  v2 = v1;
  v3 = sub_240FD441C();
  v4 = sub_240FD45DC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_240FB1000, v3, v4, "Failed to retrieve a placemark for the last location with error: %@.", v9, 0xCu);
    sub_240FC0638(v10);
    MEMORY[0x245CD6DB0](v10, -1, -1);
    MEMORY[0x245CD6DB0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_240FBF520(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E600, &qword_240FD5500);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_240FC06B8(0, &unk_27E51E740, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_240FD453C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_240FBF630()
{
  v1 = [*(v0[3] + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager) location];
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E750, &qword_240FD5970);
    *v4 = v0;
    v4[1] = sub_240FBF79C;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000019, 0x8000000240FD64C0, sub_240FC0700, v3, v5);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_240FBF79C()
{

  return MEMORY[0x2822009F8](sub_240FBF8B4, 0, 0);
}

uint64_t sub_240FBF8B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) preferredName];
    v3 = *(v0 + 32);
    if (v2)
    {
      v4 = v2;
      v5 = sub_240FD449C();
      v7 = v6;

      v8 = v7;
      v9 = v5;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = 0;
  v8 = 0;
LABEL_7:
  v10 = *(v0 + 8);

  return v10(v9, v8);
}

void sub_240FBF988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() defaultManager];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_240FC079C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240FBFD5C;
  aBlock[3] = &block_descriptor_10;
  v11 = _Block_copy(aBlock);

  [v8 fetchLocationOfInterestAtLocation:a2 withHandler:v11];
  _Block_release(v11);
}

uint64_t sub_240FBFB64(void *a1, void *a2)
{
  v4 = sub_240FD443C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    v8 = a1;
  }

  else
  {
    sub_240FD442C();
    v9 = a2;
    v10 = sub_240FD441C();
    v11 = sub_240FD45DC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (a2)
      {
        v14 = a2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        v16 = v15;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      *(v12 + 4) = v15;
      *v13 = v16;
      _os_log_impl(&dword_240FB1000, v10, v11, "Failed to fetch locations of interest with error: %@.", v12, 0xCu);
      sub_240FC0638(v13);
      MEMORY[0x245CD6DB0](v13, -1, -1);
      MEMORY[0x245CD6DB0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);
  return sub_240FD457C();
}

void sub_240FBFD5C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t ATLocationRetriever.currentLocationName()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_240FBFE78;

  return sub_240FBF610();
}

uint64_t sub_240FBFE78(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;

  if (a2)
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v5 + 32) = v9;
    *v9 = v6;
    v9[1] = sub_240FBFFF4;

    return sub_240FBEF40();
  }
}

uint64_t sub_240FBFFF4(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_240FC00F4, 0, 0);
}

uint64_t sub_240FC00F4()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [*(v0 + 40) name], v1, v2))
  {
    v3 = sub_240FD449C();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

id ATLocationRetriever.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATLocationRetriever.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATLocationRetriever();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240FC03B0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_240FC0410(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_240FC0484(void *a1)
{
  v2 = sub_240FD443C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD442C();
  v6 = a1;
  v7 = sub_240FD441C();
  v8 = sub_240FD45DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_240FB1000, v7, v8, "Failed to fetch the current location from CoreLocation with error: %@.", v9, 0xCu);
    sub_240FC0638(v10);
    MEMORY[0x245CD6DB0](v10, -1, -1);
    MEMORY[0x245CD6DB0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_240FD460C();
}

uint64_t sub_240FC0638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E730, &unk_240FD5530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240FC06B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_240FC0708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240FC079C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);

  return sub_240FBFB64(a1, a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ATSpotlightCalendarRetriever.getRecentRecordsAsync(maxNumRecordsToFetch:addendum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_240FC0864, 0, 0);
}

uint64_t sub_240FC0864()
{
  v1 = (v0[5] + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_240FC0920;
  v5 = v0[4];
  v6 = v0[2];
  v7 = v0[3];

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v3, v2, v6, v7, v5);
}

uint64_t sub_240FC0920(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ATSpotlightCalendarRetriever.getRecentRecords(maxNumRecordsToFetch:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v8 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v7 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v9 = dispatch_semaphore_create(0);
  v10 = sub_240FD459C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v8;
  v11[6] = v7;
  v11[7] = a1;
  v11[8] = v9;

  v12 = v9;
  sub_240FC285C(0, 0, v6, &unk_240FD5990, v11);

  sub_240FD45FC();
}

uint64_t ATSpotlightCalendarRetriever.getCalendarEvents(startOffsetInSeconds:endOffsetInSeconds:excludeAllDayEvents:maxNumRecordsToFetch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 80) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_240FC0BB4, 0, 0);
}

uint64_t sub_240FC0BB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_240FD46BC();
  MEMORY[0x245CD64D0](0xD000000000000018, 0x8000000240FD6510);
  *(v0 + 16) = v3;
  v5 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v5);

  MEMORY[0x245CD64D0](0xD00000000000001ALL, 0x8000000240FD6530);
  *(v0 + 24) = v4;
  v6 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v6);

  MEMORY[0x245CD64D0](10537, 0xE200000000000000);
  if (v2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0x8000000240FD6550;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x245CD64D0](v7, v8);

  *(v0 + 64) = 0xE000000000000000;
  v9 = *(v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v10 = *(v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_240FC30EC;
  v12 = *(v0 + 48);

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v9, v10, v12, 0, 0xE000000000000000);
}

uint64_t ATSpotlightCalendarRetriever.getCalendarEvents(startOffsetInDays:endOffsetInDays:excludeAllDayEvents:maxNumRecordsToFetch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 80) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_240FC0DDC, 0, 0);
}

void sub_240FC0DDC()
{
  v1 = *(v0 + 32);
  v2 = 86400 * v1;
  if ((v1 * 86400) >> 64 != (86400 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v0 + 40);
  v4 = 86400 * v3;
  if ((v3 * 86400) >> 64 != (86400 * v3) >> 63)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 80);
  sub_240FD46BC();
  MEMORY[0x245CD64D0](0xD000000000000018, 0x8000000240FD6510);
  *(v0 + 16) = v4;
  v7 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v7);

  MEMORY[0x245CD64D0](0xD00000000000001ALL, 0x8000000240FD6530);
  *(v0 + 24) = v2;
  v8 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v8);

  MEMORY[0x245CD64D0](10537, 0xE200000000000000);
  if (v6)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 0x8000000240FD6550;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x245CD64D0](v9, v10);

  *(v0 + 64) = 0xE000000000000000;
  v11 = *(v5 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v12 = *(v5 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_240FC1010;
  v14 = *(v0 + 48);

  ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v11, v12, v14, 0, 0xE000000000000000);
}

uint64_t sub_240FC1010(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t ATSpotlightCalendarRetriever.parseCalendarEventRecords(eventRecords:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v81 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v72 - v5;
  v75 = sub_240FD422C();
  v7 = *(v75 - 8);
  v8 = MEMORY[0x28223BE20](v75);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v72 - v10;
  v12 = type metadata accessor for ATSpotlightDataRecord(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_240FB9E58(MEMORY[0x277D84F90]);
  v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v16 setDateStyle_];
  [v16 setTimeStyle_];
  v17 = *(a1 + 16);
  if (!v17)
  {

    v70 = 0;
LABEL_29:
    sub_240FC2DA8(v70, 0);
    return v83;
  }

  v85 = v6;
  v74 = v16;
  v87 = v11;
  v82 = 0;
  v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = (v7 + 48);
  v20 = (v7 + 32);
  v77 = (v7 + 8);
  v78 = (v7 + 48);
  v21 = &qword_240FD51A0;
  v89 = *(v13 + 72);
  v22 = v75;
  v79 = v12;
  v73 = v20;
  while (1)
  {
    sub_240FBE4A4(v18, v15);
    v23 = &v15[v12[23]];
    v24 = v23[1];
    if (v24)
    {
      break;
    }

    sub_240FC2D4C(v15);
LABEL_4:
    v18 += v89;
    if (!--v17)
    {

      v70 = v82;
      goto LABEL_29;
    }
  }

  v90 = v18;
  v86 = v24;
  v88 = *v23;
  v25 = v85;
  sub_240FB99A0(&v15[v12[24]], v85, &qword_27E51E578, v21);
  v26 = v21;
  v27 = *v19;
  if ((*v19)(v25, 1, v22) == 1)
  {
    sub_240FC2D4C(v15);
    sub_240FBA1A8(v25, &qword_27E51E578, v26);
LABEL_10:
    v21 = v26;
    v18 = v90;
    goto LABEL_4;
  }

  v84 = v17;
  v28 = *v20;
  (*v20)(v87, v25, v22);
  v29 = &v15[v12[25]];
  v30 = v81;
  sub_240FB99A0(v29, v81, &qword_27E51E578, v26);
  if (v27(v30, 1, v22) == 1)
  {
    (*v77)(v87, v22);
    sub_240FC2D4C(v15);
    sub_240FBA1A8(v30, &qword_27E51E578, v26);
    v19 = v78;
    v12 = v79;
    v17 = v84;
    goto LABEL_10;
  }

  v28(v80, v30, v22);
  v91 = 0;
  v92 = 0xE000000000000000;
  v31 = v86;

  sub_240FD46BC();

  v91 = 0x2074612079737542;
  v92 = 0xE90000000000005BLL;
  v32 = sub_240FD41BC();
  v33 = v74;
  v34 = [v74 stringFromDate_];

  v35 = sub_240FD449C();
  v37 = v36;

  MEMORY[0x245CD64D0](v35, v37);

  MEMORY[0x245CD64D0](539831584, 0xE400000000000000);
  v38 = sub_240FD41BC();
  v39 = [v33 stringFromDate_];

  v40 = sub_240FD449C();
  v42 = v41;

  MEMORY[0x245CD64D0](v40, v42);

  MEMORY[0x245CD64D0](93, 0xE100000000000000);
  v43 = v91;
  v44 = v92;
  sub_240FC2DA8(v82, 0);
  v45 = v83;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v45;
  v48 = sub_240FB70D8(v88, v31);
  v49 = *(v45 + 16);
  v50 = (v47 & 1) == 0;
  v51 = v49 + v50;
  v18 = v90;
  if (!__OFADD__(v49, v50))
  {
    v52 = v47;
    v76 = v44;
    v82 = v43;
    if (*(v45 + 24) >= v51)
    {
      v22 = v75;
      v17 = v84;
      if (isUniquelyReferenced_nonNull_native)
      {
        v55 = v91;
        if ((v47 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_240FB8640();
        v55 = v91;
        if ((v52 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_240FB81DC(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_240FB70D8(v88, v31);
      v22 = v75;
      v17 = v84;
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_32;
      }

      v48 = v53;
      v55 = v91;
      if ((v52 & 1) == 0)
      {
LABEL_20:
        v55[(v48 >> 6) + 8] |= 1 << v48;
        v57 = (v55[6] + 16 * v48);
        *v57 = v88;
        v57[1] = v31;
        *(v55[7] + 8 * v48) = MEMORY[0x277D84F90];
        v58 = v55[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_31;
        }

        v55[2] = v60;
        goto LABEL_22;
      }
    }

    v56 = v55;

    v55 = v56;
LABEL_22:
    v83 = v55;
    v61 = v55[7];
    v62 = *(v61 + 8 * v48);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *(v61 + 8 * v48) = v62;
    if ((v63 & 1) == 0)
    {
      v62 = sub_240FB6B4C(0, *(v62 + 2) + 1, 1, v62);
      *(v61 + 8 * v48) = v62;
    }

    v65 = *(v62 + 2);
    v64 = *(v62 + 3);
    if (v65 >= v64 >> 1)
    {
      *(v61 + 8 * v48) = sub_240FB6B4C((v64 > 1), v65 + 1, 1, v62);
    }

    v66 = *v77;
    (*v77)(v80, v22);
    v66(v87, v22);
    sub_240FC2D4C(v15);
    v67 = *(v61 + 8 * v48);
    *(v67 + 16) = v65 + 1;
    v68 = v67 + 16 * v65;
    v69 = v76;
    *(v68 + 32) = v82;
    *(v68 + 40) = v69;
    v82 = sub_240FC1880;
    v19 = v78;
    v12 = v79;
    v20 = v73;
    v21 = &qword_240FD51A0;
    goto LABEL_4;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_240FD481C();
  __break(1u);
  return result;
}

uint64_t ATSpotlightCalendarRetriever.getCalendarEvents(atTime:excludeAllDayEvents:maxNumRecordsToFetch:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 80) = a2;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_240FC18B8, 0, 0);
}

void sub_240FC18B8()
{
  sub_240FD41EC();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v2 = v1 - 30;
  if (__OFSUB__(v1, 30))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_240FD41EC();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = v3 + 30;
  if (__OFADD__(v3, 30))
  {
LABEL_25:
    __break(1u);
    return;
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  sub_240FD46BC();
  MEMORY[0x245CD64D0](0xD000000000000018, 0x8000000240FD6510);
  *(v0 + 16) = v4;
  v7 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v7);

  MEMORY[0x245CD64D0](0xD00000000000001ALL, 0x8000000240FD6530);
  *(v0 + 24) = v2;
  v8 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v8);

  MEMORY[0x245CD64D0](10537, 0xE200000000000000);
  if (v6)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 0x8000000240FD6550;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x245CD64D0](v9, v10);

  *(v0 + 56) = 0xE000000000000000;
  v11 = *(v5 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v12 = *(v5 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_240FC1B6C;
  v14 = *(v0 + 40);

  ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v11, v12, v14, 0, 0xE000000000000000);
}

uint64_t sub_240FC1B6C(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_240FC1C8C, 0, 0);
}

uint64_t sub_240FC1C8C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_240FC6B58(sub_240FC2DB8, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_240FC1D38(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7D8, &qword_240FD5A08);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7E0, &qword_240FD5A10);
  MEMORY[0x28223BE20](v40);
  v45 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = type metadata accessor for ATSpotlightDataRecord(0);
  v18 = *(v17 + 96);
  v48 = a1;
  sub_240FB99A0(a1 + v18, v16, &qword_27E51E578, &qword_240FD51A0);
  v19 = sub_240FD422C();
  v39 = *(v19 - 8);
  v20 = *(v39 + 48);
  v21 = v20(v16, 1, v19);
  sub_240FBA1A8(v16, &qword_27E51E578, &qword_240FD51A0);
  if (v21 == 1 || (v22 = *(v17 + 100), sub_240FB99A0(v48 + v22, v14, &qword_27E51E578, &qword_240FD51A0), v23 = v20(v14, 1, v19), sub_240FBA1A8(v14, &qword_27E51E578, &qword_240FD51A0), v23 == 1))
  {
    v24 = 0;
    return v24 & 1;
  }

  v25 = v47;
  sub_240FB99A0(v48 + v18, v47, &qword_27E51E578, &qword_240FD51A0);
  result = v20(v25, 1, v19);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v27 = v46;
  sub_240FB99A0(v48 + v22, v46, &qword_27E51E578, &qword_240FD51A0);
  result = v20(v27, 1, v19);
  if (result != 1)
  {
    v28 = sub_240FC2E7C();
    result = sub_240FD446C();
    if (result)
    {
      v29 = v39;
      v30 = *(v39 + 16);
      v31 = v41;
      v30(v41, v25, v19);
      v32 = v43;
      v30((v31 + *(v43 + 48)), v27, v19);
      v33 = v42;
      sub_240FB99A0(v31, v42, &qword_27E51E7D8, &qword_240FD5A08);
      v34 = *(v32 + 48);
      v48 = v28;
      v35 = *(v29 + 32);
      v35(v45, v33, v19);
      v36 = *(v29 + 8);
      v36(v33 + v34, v19);
      v37 = v31;
      v38 = v45;
      sub_240FC2ED4(v37, v33);
      v35((v38 + *(v40 + 36)), v33 + *(v32 + 48), v19);
      v36(v33, v19);
      v36(v46, v19);
      v36(v47, v19);
      if (sub_240FD445C())
      {
        v24 = sub_240FD446C();
      }

      else
      {
        v24 = 0;
      }

      sub_240FBA1A8(v38, &qword_27E51E7E0, &qword_240FD5A10);
      return v24 & 1;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ATSpotlightCalendarRetriever.__allocating_init()()
{
  v0 = sub_240FD422C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v5 = (v4 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  *v5 = 0xD000000000000013;
  v5[1] = 0x8000000240FD5E40;
  *(v4 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_timestampSearchPaddingInSeconds) = 30;
  sub_240FD421C();
  sub_240FD41AC();
  (*(v1 + 8))(v3, v0);
  *(v4 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v4;
}

uint64_t ATSpotlightCalendarRetriever.init()()
{
  v1 = v0;
  v2 = sub_240FD422C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  *v6 = 0xD000000000000013;
  v6[1] = 0x8000000240FD5E40;
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_timestampSearchPaddingInSeconds) = 30;
  sub_240FD421C();
  sub_240FD41AC();
  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t ATSpotlightCalendarRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ATSpotlightCalendarRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_240FC263C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240FC268C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240FC2768;

  return sub_240FC7B7C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_240FC2768()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240FC285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_240FB99A0(a3, v25 - v10, &qword_27E51E7C0, &qword_240FD5988);
  v12 = sub_240FD459C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_240FBA1A8(v11, &qword_27E51E7C0, &qword_240FD5988);
  }

  else
  {
    sub_240FD458C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_240FD456C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_240FD44BC() + 32;
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
      v25[3] = v19;
      v23 = swift_task_create();

      sub_240FBA1A8(a3, &qword_27E51E7C0, &qword_240FD5988);

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

  sub_240FBA1A8(a3, &qword_27E51E7C0, &qword_240FD5988);
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

uint64_t sub_240FC2B5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_240FC2C54;

  return v6(a1);
}

uint64_t sub_240FC2C54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240FC2D4C(uint64_t a1)
{
  v2 = type metadata accessor for ATSpotlightDataRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240FC2DA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for ATSpotlightCalendarRetriever(uint64_t a1)
{
  result = qword_27E51E7C8;
  if (!qword_27E51E7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240FC2E7C()
{
  result = qword_27E51E7E8;
  if (!qword_27E51E7E8)
  {
    sub_240FD422C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E7E8);
  }

  return result;
}

uint64_t sub_240FC2ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7D8, &qword_240FD5A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FC2F44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240FC2F7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FC30F4;

  return sub_240FC2B5C(a1, v4);
}

uint64_t sub_240FC3034(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FC2768;

  return sub_240FC2B5C(a1, v4);
}

uint64_t sub_240FC30F8()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  if (v2)
  {
    v22 = 0xD000000000000012;
    v23 = 0x8000000240FD6680;
    if ((v3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0x8000000240FD66A0;
    v19 = 0xD000000000000013;
    v4 = v1[5];
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_240FD45AC();
  v22 = 0;
  v23 = 0xE000000000000000;
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_240FD45AC();
  v19 = 0;
  v21 = 0xE000000000000000;
  v4 = v1[5];
  if (v4)
  {
LABEL_4:
    v16 = v1[4];
    v5 = v4;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0x8000000240FD66C0;
  v16 = 0xD000000000000010;
LABEL_8:
  v6 = 0x6E776F6E6B6E755BLL;
  if (v1[7])
  {
    v17 = v1[6];
    v7 = v1[7];
    v8 = v1[9];
    if (v8)
    {
LABEL_10:
      v6 = v1[8];
      v9 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0xEE005D7974696320;
    v17 = 0x6E776F6E6B6E755BLL;
    v8 = v1[9];
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v9 = 0xEF5D657461747320;
LABEL_13:
  v24 = v6;
  if (v1[11])
  {
    v18 = v1[10];
    v20 = v1[11];
    v10 = v1[13];
    if (v10)
    {
LABEL_15:
      v15 = v1[12];
      v11 = v10;
      goto LABEL_18;
    }
  }

  else
  {
    v20 = 0x8000000240FD66E0;
    v18 = 0xD000000000000015;
    v10 = v1[13];
    if (v10)
    {
      goto LABEL_15;
    }
  }

  v11 = 0x8000000240FD6700;
  v15 = 0xD000000000000011;
LABEL_18:
  v12 = 0xE000000000000000;

  sub_240FD46BC();

  MEMORY[0x245CD64D0](v22, v23);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v19, v21);

  MEMORY[0x245CD64D0](2108457, 0xE300000000000000);
  MEMORY[0x245CD64D0](v16, v5);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v17, v7);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v24, v9);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v18, v20);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v15, v11);

  if (v1[15])
  {
    MEMORY[0x245CD64D0](v1[14]);
    MEMORY[0x245CD64D0](41, 0xE100000000000000);
    v13 = 10272;
    v12 = 0xE200000000000000;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x245CD64D0](v13, v12);

  return 40;
}

uint64_t sub_240FC34BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v98 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = v78 - v8;
  v9 = type metadata accessor for ATMegadomeLifeEvent(0);
  v10 = v9[9];
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(a3 + v10) = v11;
  v80 = v11;
  *a3 = sub_240FD430C();
  a3[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E840, &qword_240FD5B58);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v78 - v15;
  v17 = sub_240FD432C();
  v18 = sub_240FC590C(&qword_27E51E848, MEMORY[0x28221EA70], MEMORY[0x28221EA68]);
  v79 = v17;
  MEMORY[0x245CD6230](v17, v18);
  v19 = sub_240FD427C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD42CC();
  (*(v14 + 8))(v16, v13);
  v83 = a3;
  sub_240FD426C();
  (*(v20 + 8))(v22, v19);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E850, &qword_240FD5B60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v78 - v25;
  v81 = a1;
  sub_240FD42FC();
  v27 = sub_240FD435C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v26, 1, v27) == 1)
  {
    sub_240FBA1A8(v26, &qword_27E51E850, &qword_240FD5B60);
    v30 = sub_240FD422C();
    v31 = v97;
    (*(*(v30 - 8) + 56))(v97, 1, 1, v30);
  }

  else
  {
    v31 = v97;
    sub_240FD434C();
    (*(v28 + 8))(v26, v27);
  }

  v32 = sub_240FBA140(v31, v83 + v9[6], &qword_27E51E578, &qword_240FD51A0);
  MEMORY[0x28223BE20](v32);
  v33 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v81;
  sub_240FD42FC();
  if (v29(v33, 1, v27) == 1)
  {
    sub_240FBA1A8(v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27E51E850, &qword_240FD5B60);
    v35 = sub_240FD422C();
    v36 = v98;
    (*(*(v35 - 8) + 56))(v98, 1, 1, v35);
  }

  else
  {
    v36 = v98;
    sub_240FD433C();
    (*(v28 + 8))(v33, v27);
  }

  v37 = v83;
  sub_240FBA140(v36, v83 + v9[7], &qword_27E51E578, &qword_240FD51A0);
  v82 = v9[8];
  *(v37 + v82) = MEMORY[0x277D84F90];
  v38 = sub_240FD431C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E858, &qword_240FD5B68);
  v40 = MEMORY[0x28223BE20](v38);
  v92 = v78 - v42;
  v43 = *(v40 + 16);
  if (!v43)
  {

    goto LABEL_25;
  }

  v78[1] = v78;
  v87 = 0;
  v45 = *(v41 + 16);
  v44 = v41 + 16;
  v90 = v45;
  v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
  v78[2] = v40;
  v47 = v40 + v46;
  v89 = (v44 - 8);
  v84 = MEMORY[0x277D84F90];
  v88 = *(v44 + 56);
  v48 = &unk_240FD5B78;
  v85 = v39;
  v91 = v44;
  do
  {
    v49 = v92;
    v90(v92, v47, v39);
    v97 = sub_240FD42AC();
    v98 = v78;
    v96 = *(v97 - 1);
    v50 = *(v96 + 64);
    MEMORY[0x28223BE20](v97);
    v93 = v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E860, &qword_240FD5B70);
    v95 = v78;
    MEMORY[0x28223BE20](v51 - 8);
    v53 = v78 - v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E868, v48);
    v94 = v78;
    MEMORY[0x28223BE20](v54 - 8);
    v56 = v78 - v55;
    sub_240FD436C();
    (*v89)(v49, v39);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E870, &qword_240FD5B80);
    v58 = v48;
    v59 = *(v57 - 8);
    if ((*(v59 + 48))(v56, 1, v57) == 1)
    {
      sub_240FBA1A8(v56, &qword_27E51E868, v58);
      v48 = v58;
LABEL_13:
      (*(v96 + 56))(v53, 1, 1, v97);
LABEL_14:
      sub_240FBA1A8(v53, &qword_27E51E860, &qword_240FD5B70);
      goto LABEL_15;
    }

    v99 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E800, &qword_240FD5A48);
    sub_240FC5954();
    sub_240FC590C(&qword_27E51E810, MEMORY[0x28221E9F0], MEMORY[0x28221E9E8]);
    v60 = v87;
    sub_240FD42BC();
    if (v60)
    {

      (*(v59 + 8))(v56, v57);
      v87 = 0;
      v39 = v85;
      v48 = &unk_240FD5B78;
      goto LABEL_13;
    }

    v87 = 0;
    (*(v59 + 8))(v56, v57);
    v62 = v96;
    v61 = v97;
    if ((*(v96 + 48))(v53, 1, v97) == 1)
    {
      v39 = v85;
      v48 = &unk_240FD5B78;
      goto LABEL_14;
    }

    v63 = v93;
    v64 = (*(v62 + 32))(v93, v53, v61);
    MEMORY[0x28223BE20](v64);
    (*(v62 + 16))(v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), v63, v61);
    sub_240FC59AC(v78 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), v100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v85;
    v48 = &unk_240FD5B78;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = sub_240FB6C80(0, *(v84 + 2) + 1, 1, v84);
    }

    v67 = *(v84 + 2);
    v66 = *(v84 + 3);
    if (v67 >= v66 >> 1)
    {
      v84 = sub_240FB6C80((v66 > 1), v67 + 1, 1, v84);
    }

    (*(v62 + 8))(v93, v61);
    v68 = v84;
    *(v84 + 2) = v67 + 1;
    v69 = &v68[128 * v67];
    v70 = v100[0];
    v71 = v100[1];
    v72 = v100[3];
    *(v69 + 4) = v100[2];
    *(v69 + 5) = v72;
    *(v69 + 2) = v70;
    *(v69 + 3) = v71;
    v73 = v100[4];
    v74 = v100[5];
    v75 = v100[7];
    *(v69 + 8) = v100[6];
    *(v69 + 9) = v75;
    *(v69 + 6) = v73;
    *(v69 + 7) = v74;
    *(v83 + v82) = v68;
LABEL_15:
    v47 += v88;
    --v43;
  }

  while (v43);

  v34 = v81;
LABEL_25:
  v76 = v80;
  [v80 setDateStyle_];
  [v76 setTimeStyle_];

  return (*(*(v79 - 8) + 8))(v34);
}

uint64_t ATMegadomeLifeEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v70 = &v63 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v71 = &v63 - v8;
  v9 = v0[1];
  v66 = v10;
  if (v9)
  {
    v69[0] = *v1;
    v69[1] = v9;
  }

  else
  {
    strcpy(v69, "[unknown name]");
    HIBYTE(v69[1]) = -18;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7F0, &unk_240FD5A38);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - v12;
  v72 = type metadata accessor for ATMegadomeLifeEvent(0);
  sub_240FB99A0(v1 + v72[5], v13, &qword_27E51E7F0, &unk_240FD5A38);
  v14 = sub_240FD424C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_240FBA1A8(v13, &qword_27E51E7F0, &unk_240FD5A38);
    strcpy(v68, "[unknown type]");
    HIBYTE(v68[1]) = -18;
  }

  else
  {
    v68[0] = sub_240FD423C();
    v68[1] = v17;
    (*(v15 + 8))(v13, v14);
  }

  v18 = v71;
  v19 = v72;
  v20 = v72[6];
  sub_240FB99A0(v1 + v20, v71, &qword_27E51E578, &qword_240FD51A0);
  v21 = sub_240FD422C();
  v67 = *(v21 - 8);
  v22 = *(v67 + 48);
  v73 = v21;
  v23 = v22(v18, 1);
  sub_240FBA1A8(v18, &qword_27E51E578, &qword_240FD51A0);
  v24 = 0x6E776F6E6B6E755BLL;
  v71 = 0xEE005D6574616420;
  v25 = 0xEE005D6574616420;
  if (v23 != 1)
  {
    v26 = *(v1 + v19[9]);
    v27 = v1 + v20;
    v28 = v66;
    sub_240FB99A0(v27, v66, &qword_27E51E578, &qword_240FD51A0);
    result = (v22)(v28, 1, v73);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v30 = sub_240FD41BC();
    (*(v67 + 8))(v28, v73);
    v31 = [v26 stringFromDate_];

    v24 = sub_240FD449C();
    v25 = v32;

    v19 = v72;
  }

  v65 = v24;
  v66 = v25;
  v33 = v19[7];
  v34 = v70;
  sub_240FB99A0(v1 + v33, v70, &qword_27E51E578, &qword_240FD51A0);
  v35 = (v22)(v34, 1, v73);
  sub_240FBA1A8(v34, &qword_27E51E578, &qword_240FD51A0);
  if (v35 != 1)
  {
    v38 = *(v1 + v19[9]);
    v36 = v1;
    v39 = v64;
    sub_240FB99A0(v1 + v33, v64, &qword_27E51E578, &qword_240FD51A0);
    result = (v22)(v39, 1, v73);
    if (result != 1)
    {
      v40 = sub_240FD41BC();
      (*(v67 + 8))(v39, v73);
      v41 = [v38 stringFromDate_];

      v37 = sub_240FD449C();
      v71 = v42;

      goto LABEL_14;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v36 = v1;
  v37 = 0x6E776F6E6B6E755BLL;
LABEL_14:
  v43 = *(v36 + v72[8]);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v73 = v37;
    v76 = MEMORY[0x277D84F90];
    sub_240FB87F0(0, v44, 0);
    v45 = v76;
    v46 = (v43 + 32);
    do
    {
      v47 = *v46;
      v48 = v46[1];
      v49 = v46[3];
      v77[2] = v46[2];
      v77[3] = v49;
      v77[0] = v47;
      v77[1] = v48;
      v50 = v46[4];
      v51 = v46[5];
      v52 = v46[7];
      v77[6] = v46[6];
      v77[7] = v52;
      v77[4] = v50;
      v77[5] = v51;
      sub_240FC5200(v77, &v74);
      v53 = sub_240FC30F8();
      v55 = v54;
      sub_240FC5238(v77);
      v76 = v45;
      v57 = *(v45 + 16);
      v56 = *(v45 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_240FB87F0((v56 > 1), v57 + 1, 1);
        v45 = v76;
      }

      *(v45 + 16) = v57 + 1;
      v58 = v45 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
      v46 += 8;
      --v44;
    }

    while (v44);
    v37 = v73;
  }

  v59 = v66;
  v74 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
  sub_240FC5268();
  v60 = sub_240FD444C();
  v62 = v61;

  v74 = 0;
  v75 = 0xE000000000000000;
  sub_240FD46BC();

  v74 = 10;
  v75 = 0xE100000000000000;
  MEMORY[0x245CD64D0](v69[0], v69[1]);

  MEMORY[0x245CD64D0](0x203A657079740ALL, 0xE700000000000000);
  MEMORY[0x245CD64D0](v68[0], v68[1]);

  MEMORY[0x245CD64D0](0x5B203A656D69740ALL, 0xE800000000000000);
  MEMORY[0x245CD64D0](v65, v59);

  MEMORY[0x245CD64D0](539831584, 0xE400000000000000);
  MEMORY[0x245CD64D0](v37, v71);

  MEMORY[0x245CD64D0](0x697461636F6C0A5DLL, 0xEE005B203A736E6FLL);
  MEMORY[0x245CD64D0](v60, v62);

  MEMORY[0x245CD64D0](2653, 0xE200000000000000);
  return v74;
}