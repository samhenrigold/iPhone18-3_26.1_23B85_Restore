uint64_t type metadata accessor for CloudPlaylistEntry(uint64_t a1)
{
  result = qword_280BE3C68;
  if (!qword_280BE3C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21754D058()
{
  OUTLINED_FUNCTION_12();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0) - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - v3;
  sub_2172CAE0C(v5, v6, v7);
  v8 = sub_217751DC8();
  v9 = *(v0 + 16);
  v52 = *(v9 + 16);
  if (!v52)
  {
LABEL_26:
    OUTLINED_FUNCTION_13();
    return;
  }

  v10 = 0;
  v11 = *(v1 + 80);
  v50 = v9;
  v51 = v9 + ((v11 + 32) & ~v11);
  v49 = v1;
  while (v10 < *(v9 + 16))
  {
    sub_21726A630(v51 + *(v1 + 72) * v10, v4, &qword_27CB24A28, &qword_217758FE0);
    v12 = CloudPlaylistEntry.id.getter();
    if (*(v8 + 16))
    {
      v14 = sub_21763246C(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v8 + 56) + 8 * v14);
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }

        CloudPlaylistEntry.id.getter();
        swift_isUniquelyReferenced_nonNull_native();
        v53 = v8;
        v19 = OUTLINED_FUNCTION_83();
        sub_21763246C(v19, v20);
        OUTLINED_FUNCTION_53_18();
        if (v23)
        {
          goto LABEL_31;
        }

        v24 = v21;
        v25 = v22;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
        if (OUTLINED_FUNCTION_56_15(v26))
        {
          v27 = OUTLINED_FUNCTION_83();
          v29 = sub_21763246C(v27, v28);
          if ((v25 & 1) != (v30 & 1))
          {
            goto LABEL_33;
          }

          v24 = v29;
        }

        if (v25)
        {

          v8 = v53;
          *(*(v53 + 56) + 8 * v24) = v18;
          sub_2171F0738(v4, &qword_27CB24A28, &qword_217758FE0);
        }

        else
        {
          OUTLINED_FUNCTION_16_46();
          *(v45 + 8 * v24) = v18;
          sub_2171F0738(v4, &qword_27CB24A28, &qword_217758FE0);
          v46 = *(v8 + 16);
          v23 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v23)
          {
            goto LABEL_32;
          }

          *(v8 + 16) = v47;
        }

        v1 = v49;
        goto LABEL_25;
      }
    }

    else
    {
    }

    CloudPlaylistEntry.id.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v8;
    v31 = OUTLINED_FUNCTION_83();
    sub_21763246C(v31, v32);
    OUTLINED_FUNCTION_53_18();
    if (v23)
    {
      goto LABEL_28;
    }

    v35 = v33;
    v36 = v34;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24F78, &unk_21775ABB8);
    if (OUTLINED_FUNCTION_56_15(v37))
    {
      v38 = OUTLINED_FUNCTION_83();
      v40 = sub_21763246C(v38, v39);
      if ((v36 & 1) != (v41 & 1))
      {
        goto LABEL_33;
      }

      v35 = v40;
    }

    if (v36)
    {

      v8 = v53;
      *(*(v53 + 56) + 8 * v35) = 0;
      sub_2171F0738(v4, &qword_27CB24A28, &qword_217758FE0);
    }

    else
    {
      OUTLINED_FUNCTION_16_46();
      *(v42 + 8 * v35) = 0;
      sub_2171F0738(v4, &qword_27CB24A28, &qword_217758FE0);
      v43 = *(v8 + 16);
      v23 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v23)
      {
        goto LABEL_29;
      }

      *(v8 + 16) = v44;
    }

LABEL_25:
    v9 = v50;
    if (v52 == ++v10)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_217753178();
  __break(1u);
}

void sub_21754D3F8()
{
  OUTLINED_FUNCTION_12();
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v47 = v7;
  v48 = v6;
  v9 = v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256E0, &unk_21775D820);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_32_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  sub_2172CAE0C(v14, v15, v16);
  v17 = MEMORY[0x277D84F90];
  v57 = sub_217751DC8();
  v18 = v0[2];
  v19 = *(v18 + 16);
  if (v19)
  {
    v40 = v5;
    v41 = v0;
    v42 = v9;
    *&v51 = v17;
    sub_217276198(0, v19, 0);
    v17 = v51;
    v45 = *(v18 + 16);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v21 = 0;
    OUTLINED_FUNCTION_45_0(v20);
    v44 = v22;
    v43 = v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    while (v45 != v21)
    {
      if (v21 >= *(v18 + 16))
      {
        goto LABEL_21;
      }

      v23 = v46;
      v24 = *(v46 + 48);
      sub_21726A630(v43 + *(v44 + 72) * v21, &v13[v24], &qword_27CB24A28, &qword_217758FE0);
      *v1 = v21;
      sub_21726A594(&v13[v24], v1 + *(v23 + 48), &qword_27CB24A28, &qword_217758FE0);
      sub_2175517F0(&v57, v47, &v54);
      sub_2171F0738(v1, &qword_27CB256E0, &unk_21775D820);
      *&v51 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_217276198(v25 > 1, v26 + 1, 1);
        v17 = v51;
      }

      *(v17 + 16) = v26 + 1;
      v27 = (v17 + (v26 << 6));
      v28 = v54;
      v29 = v55;
      v30 = *v56;
      *(v27 + 73) = *&v56[9];
      v27[3] = v29;
      v27[4] = v30;
      v27[2] = v28;
      if (v19 == ++v21)
      {
        v9 = v42;
        v0 = v41;
        v5 = v40;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_9:
    sub_21726A630(v5, &v51, &qword_27CB24188, &dword_217758930);
    if (*(&v52 + 1))
    {
      v54 = v51;
      v55 = v52;
      *v56 = v53;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24398, &unk_2177784D0);
      sub_217380098(v49, v50, &v54);
      if (*(&v52 + 1))
      {
        sub_2171F0738(&v51, &qword_27CB24188, &dword_217758930);
      }
    }

    v31 = *v0;
    v32 = v0[1];
    if (v32 == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = *v0;
    }

    if (v32 == 1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v0[1];
    }

    v35 = v0[3];
    v36 = v0[4];
    v38 = v0[14];
    v37 = v0[15];
    *v9 = v17;
    *(v9 + 8) = 0;
    v39 = v55;
    *(v9 + 16) = v54;
    *(v9 + 32) = v39;
    *(v9 + 48) = *v56;
    *(v9 + 56) = v33;
    *(v9 + 64) = v34;
    *(v9 + 72) = v35;
    *(v9 + 80) = v36;
    *(v9 + 88) = v38;
    *(v9 + 96) = v37;
    sub_2171FB568(v31, v32);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    OUTLINED_FUNCTION_13();
  }
}

uint64_t CloudResource<>.equivalentCloudPlaylistEntryResource.getter()
{
  type metadata accessor for CloudTrack(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  sub_21755329C(v0, v1);
  swift_getEnumCaseMultiPayload();
  sub_2175531EC(v1, v6);
  OUTLINED_FUNCTION_25_0();
  swift_storeEnumTagMultiPayload();
  sub_21738A9E8();
  OUTLINED_FUNCTION_5_60();
  return sub_217553244(v6, v7);
}

uint64_t sub_21754D8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754D970(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21754D8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754D970(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21754D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29588;
  if (!qword_27CB29588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29588);
  }

  return result;
}

uint64_t sub_21754DA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754DAF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21754DA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754DAF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21754DAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29598;
  if (!qword_27CB29598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29598);
  }

  return result;
}

uint64_t sub_21754DB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754DC28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21754DBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754DC28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_21754DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB295A8;
  if (!qword_27CB295A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295A8);
  }

  return result;
}

uint64_t sub_21754DC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754DE54(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21754DCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21754DE54(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_21754DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_0_0();
  v28 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v23();
  sub_2177532F8();
  (*(v28 + 8))(v31, v26);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_21754DE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB295B8;
  if (!qword_27CB295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295B8);
  }

  return result;
}

uint64_t CloudPlaylistEntry.id.getter()
{
  v3 = type metadata accessor for CloudMusicVideo(0);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_64();
  v6 = type metadata accessor for CloudSong(v5);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_3_73();
  v9 = OUTLINED_FUNCTION_16_0();
  sub_21755329C(v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v2);
    sub_217751DE8();
    OUTLINED_FUNCTION_0_89();
    v13 = v2;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2175531EC(v1, v0);
    sub_217751DE8();
    OUTLINED_FUNCTION_1_80();
    v13 = v0;
LABEL_5:
    sub_217553244(v13, v12);
    return OUTLINED_FUNCTION_16_0();
  }

  OUTLINED_FUNCTION_50_19();
  memcpy(v15, v16, v17);
  sub_21726A630(v23, v21, &qword_27CB256E8, &qword_21775D830);
  if (v22)
  {
    sub_2171F3F0C(v21, v20);
    v19 = v20[3];
    v18 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    (*(*(v18 + 8) + 8))(v19);
    sub_2171F0738(v23, &qword_27CB256E8, &qword_21775D830);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_2171F0738(v23, &qword_27CB256E8, &qword_21775D830);
    memcpy(v20, v21, sizeof(v20));
    sub_217751DE8();
    sub_21733BC90(v20);
  }

  return OUTLINED_FUNCTION_16_0();
}

void static CloudPlaylistEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v41 = v2;
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v40 = v8 - v7;
  v9 = OUTLINED_FUNCTION_206();
  v10 = type metadata accessor for CloudSong(v9);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_32_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295C0, &qword_217777718);
  OUTLINED_FUNCTION_45_0(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v25 = *(v24 + 56);
  sub_21755329C(v4, &v39 - v22);
  sub_21755329C(v41, &v23[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_3_73();
    sub_21755329C(v23, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_82();
      sub_2175531EC(&v23[v25], v0);
      static CloudSong.== infix(_:_:)();
      v28 = type metadata accessor for CloudSong;
      sub_217553244(v0, type metadata accessor for CloudSong);
      v29 = v19;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_89();
    v31 = v19;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_3_73();
    sub_21755329C(v23, v1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_4_74();
      v27 = v40;
      sub_2175531EC(&v23[v25], v40);
      static CloudMusicVideo.== infix(_:_:)();
      v28 = type metadata accessor for CloudMusicVideo;
      sub_217553244(v27, type metadata accessor for CloudMusicVideo);
      v29 = v1;
LABEL_14:
      sub_217553244(v29, v28);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_80();
    v31 = v1;
LABEL_10:
    sub_217553244(v31, v30);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v23, v15);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v42, &v23[v25], 0x1F9uLL);
    sub_2173CD150(v15, v42);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v32, v33, v34);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v35, v36, v37);
LABEL_15:
    OUTLINED_FUNCTION_5_60();
    sub_217553244(v23, v38);
    goto LABEL_16;
  }

  sub_2171F0738(v15, &qword_27CB256E8, &qword_21775D830);
LABEL_12:
  sub_2171F0738(v23, &qword_27CB295C0, &qword_217777718);
LABEL_16:
  OUTLINED_FUNCTION_13();
}

void CloudPlaylistEntry.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v6 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  v8 = type metadata accessor for CloudSong(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_69();
  type metadata accessor for CloudPlaylistEntry(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v3, v2);
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
    CloudSong.Attributes.hash(into:)();
    sub_21726A630(v2 + *(v8 + 24), v32, &qword_27CB24A78, &qword_217759040);
    if (*&v32[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v31, v32, sizeof(v31));
      sub_217753208();
      CloudSong.Relationships.hash(into:)();
      sub_217284234(v31);
    }

    sub_217753208();
    v29 = v2 + *(v8 + 32);
    v30 = *(v29 + 16);
    v32[0] = *v29;
    v32[1] = v30;
    *&v32[2] = *(v29 + 32);
    sub_217263F54();
    OUTLINED_FUNCTION_0_89();
    v28 = v2;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v3, v1);
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
    CloudMusicVideo.Attributes.hash(into:)();
    sub_217264574(v5);
    sub_21726A630(v1 + *(v6 + 28), v32, &qword_27CB24A90, &unk_21775D5B0);
    if (*&v32[1] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v31, v32, 0x100uLL);
      sub_217753208();
      sub_217264414(v5, v13, v14, v15, v16, v17, v18, v19);
      sub_217264414(v5, v20, v21, v22, v23, v24, v25, v26);
      sub_2172844EC(v31);
    }

    sub_217264490(v5, *(v1 + *(v6 + 32)), *(v1 + *(v6 + 32) + 8), *(v1 + *(v6 + 32) + 16), *(v1 + *(v6 + 32) + 24));
    OUTLINED_FUNCTION_1_80();
    v28 = v1;
LABEL_12:
    sub_217553244(v28, v27);
    goto LABEL_13;
  }

  memcpy(v32, v3, 0x1F9uLL);
  MEMORY[0x21CEA3550](2);
  sub_21755307C(v5);
  sub_2171F0738(v32, &qword_27CB256E8, &qword_21775D830);
LABEL_13:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPlaylistEntry.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPlaylistEntry.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21754E8FC(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylistEntry.hash(into:)();
  return sub_217753238();
}

void CloudPlaylistEntry.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v24 = v3;
  v4 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v6 = OUTLINED_FUNCTION_64();
  v7 = type metadata accessor for CloudMusicVideo(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_69();
  v10 = type metadata accessor for CloudSong.Attributes(v9);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for CloudSong(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  OUTLINED_FUNCTION_45_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_61_13(v25);
      sub_2173CEA64(v24);
      OUTLINED_FUNCTION_75_7();
      sub_2171F0738(v25, &qword_27CB256E8, &qword_21775D830);
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_4_74();
    OUTLINED_FUNCTION_60_21();
    sub_2171FF30C(v24, v25);
    sub_21755329C(v2 + *(v7 + 20), v0);
    sub_21738598C();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_1_80();
    v23 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v19);
    sub_2171FF30C(v24, v25);
    sub_21755329C(v19 + *(v15 + 20), v14);
    sub_217385938();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_89();
    v23 = v19;
  }

  sub_217553244(v23, v22);
LABEL_6:
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v33 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_69();
  v8 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for CloudPlaylistEntry(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  sub_217751DC8();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  OUTLINED_FUNCTION_13_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v3);
    sub_21726A630(v3 + *(v8 + 24), v34, &qword_27CB24A78, &qword_217759040);
    if (v35 == 1)
    {
      OUTLINED_FUNCTION_0_89();
      sub_217553244(v3, v16);
      v14 = &qword_27CB24A78;
      v15 = &qword_217759040;
      goto LABEL_7;
    }

    sub_2171F0738(v34, &qword_27CB24A78, &qword_217759040);
    sub_2171FF30C(v33, v34);
    OUTLINED_FUNCTION_84();
    v26 = sub_217751DE8();
    v27 = sub_217383824(v26);

    Dictionary<>.init(from:skippingValuesFor:)(v34, v27, v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_0_89();
    v25 = v3;
LABEL_11:
    sub_217553244(v25, v24);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {

    OUTLINED_FUNCTION_61_13(v34);
    sub_2173CF6E0(v33);
    OUTLINED_FUNCTION_98();
    sub_2171F0738(v34, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_74();
  OUTLINED_FUNCTION_60_21();
  sub_21726A630(v2 + *(v5 + 24), v34, &qword_27CB243A8, &unk_217777720);
  if (v35 != 1)
  {

    sub_2171F0738(v34, &qword_27CB243A8, &unk_217777720);
    sub_2171FF30C(v33, v34);
    OUTLINED_FUNCTION_84();
    v17 = sub_217751DE8();
    v18 = sub_217383844(v17);

    Dictionary<>.init(from:skippingValuesFor:)(v34, v18, v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_1_80();
    v25 = v2;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_80();
  sub_217553244(v2, v13);
  v14 = &qword_27CB243A8;
  v15 = &unk_217777720;
LABEL_7:
  sub_2171F0738(v34, v14, v15);
LABEL_12:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *&v36 = v4;
  v5 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_69();
  v8 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for CloudPlaylistEntry(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  sub_217751DC8();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  OUTLINED_FUNCTION_13_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v1, v3);
    if (*(v3 + *(v8 + 28)))
    {
      OUTLINED_FUNCTION_0_89();
      sub_217553244(v3, v14);
      goto LABEL_13;
    }

    sub_2171FF30C(v36, &v36 + 8);
    if (qword_27CB23E08 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C158, v23, v24, v25, v26, v27, v28, v29, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    Dictionary<>.init(from:skippingValuesFor:)(&v36 + 1, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_0_89();
    v22 = v3;
LABEL_12:
    sub_217553244(v22, v21);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {

    OUTLINED_FUNCTION_61_13(&v36 + 8);
    sub_2173D0368(v36);
    OUTLINED_FUNCTION_98();
    sub_2171F0738(&v36 + 8, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_4_74();
  OUTLINED_FUNCTION_60_21();
  sub_21726A630(v2 + *(v5 + 28), &v36 + 8, &qword_27CB24A90, &unk_21775D5B0);
  if (v38 != 1)
  {

    sub_2171F0738(&v36 + 8, &qword_27CB24A90, &unk_21775D5B0);
    sub_2171FF30C(v36, &v36 + 8);
    v15 = sub_217383A2C(&unk_28295F000);
    Dictionary<>.init(from:skippingValuesFor:)(&v36 + 1, v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_1_80();
    v22 = v2;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_80();
  sub_217553244(v2, v13);
  sub_2171F0738(&v36 + 8, &qword_27CB24A90, &unk_21775D5B0);
LABEL_13:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v23 = v5;
  v24 = v4;
  v6 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_69();
  v9 = type metadata accessor for CloudSong(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for CloudPlaylistEntry(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_4();
  sub_217751DC8();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    v17 = OUTLINED_FUNCTION_86();
    sub_2175531EC(v17, v18);
    v19 = v2 + *(v9 + 32);
    if (*(v19 + 24) == 1)
    {
      OUTLINED_FUNCTION_0_89();
      v16 = v2;
      goto LABEL_7;
    }

    sub_2171FF30C(v24, v26);
    v22 = *(v19 + 16);
    v27[0] = *v19;
    v27[1] = v22;
    v28 = *(v19 + 32);
    sub_21726A630(v27, &v25, &qword_27CB25748, &qword_21775D870);
    sub_217385FAC();
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_0_89();
    v21 = v2;
LABEL_11:
    sub_217553244(v21, v20);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {

    memcpy(v26, v3, 0x1F9uLL);
    sub_2173D0F7C(v24, v23);
    OUTLINED_FUNCTION_98();
    sub_2171F0738(v26, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_74();
  sub_2175531EC(v3, v1);
  v14 = (v1 + *(v6 + 32));
  if (v14[3] != 1)
  {

    sub_2171FF30C(v24, v26);
    sub_21733C3CC(*v14, v14[1], v14[2], v14[3]);
    sub_217386110();
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_1_80();
    v21 = v1;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_80();
  v16 = v1;
LABEL_7:
  sub_217553244(v16, v15);
LABEL_12:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v19 = v4;
  v26 = v5;
  v6 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = OUTLINED_FUNCTION_69();
  v9 = type metadata accessor for CloudSong(v8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    v15 = OUTLINED_FUNCTION_45_4();
    sub_2175531EC(v15, v16);
    sub_21738864C(v3 + *(v9 + 20), v19, v26);
    OUTLINED_FUNCTION_0_89();
    v14 = v3;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    OUTLINED_FUNCTION_60_21();
    sub_2173886A0(v2 + *(v6 + 20), v19, v26);
    OUTLINED_FUNCTION_1_80();
    v14 = v2;
LABEL_5:
    sub_217553244(v14, v13);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_61_13(v25);
  sub_21726A630(v25, v23, &qword_27CB256E8, &qword_21775D830);
  if (v24)
  {
    sub_2171F3F0C(v23, v20);
    v17 = v21;
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(*(v18 + 8) + 48))(v26, v19, v17);
    sub_2171F0738(v25, &qword_27CB256E8, &qword_21775D830);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_2171F0738(v25, &qword_27CB256E8, &qword_21775D830);
    sub_217751DE8();
    sub_2171F0738(v23, &qword_27CB256E8, &qword_21775D830);
  }

LABEL_9:
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeRelationships(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v7 = OUTLINED_FUNCTION_42_24(v5, v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_13_16();
  v10 = type metadata accessor for CloudSong(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  if (*(v1 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v0, v3);
    sub_21726A630(v3 + *(v10 + 24), v26, &qword_27CB24A78, &qword_217759040);
    if (v26[2] == 1)
    {
      OUTLINED_FUNCTION_0_89();
      sub_217553244(v3, v17);
      v15 = &qword_27CB24A78;
      v16 = &qword_217759040;
      goto LABEL_9;
    }

    memcpy(v27, v26, 0x600uLL);
    OUTLINED_FUNCTION_34_27();
    sub_2173888E8();
    OUTLINED_FUNCTION_75_7();
    sub_217284234(v27);
    OUTLINED_FUNCTION_0_89();
    v25 = v3;
LABEL_13:
    sub_217553244(v25, v24);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {

    OUTLINED_FUNCTION_50_19();
    memcpy(v18, v19, v20);
    sub_2173D21B4();
    OUTLINED_FUNCTION_75_7();
    sub_2171F0738(v27, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_4_74();
  sub_2175531EC(v0, v2);
  sub_21726A630(v2 + *(v7 + 24), v26, &qword_27CB243A8, &unk_217777720);
  if (v26[2] != 1)
  {

    memcpy(v27, v26, 0x300uLL);
    OUTLINED_FUNCTION_34_27();
    sub_217388950(v21, v22, v23);
    OUTLINED_FUNCTION_75_7();
    sub_21726A3FC(v27);
    OUTLINED_FUNCTION_1_80();
    v25 = v2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_80();
  sub_217553244(v2, v14);
  v15 = &qword_27CB243A8;
  v16 = &unk_217777720;
LABEL_9:
  sub_2171F0738(v26, v15, v16);
LABEL_14:
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v17 = OUTLINED_FUNCTION_42_24(v15, v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_13_16();
  v20 = type metadata accessor for CloudSong(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  if (*(v11 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v14, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_4_74();
      sub_2175531EC(v10, v12);
      sub_21726A630(v12 + *(v17 + 28), v37, &qword_27CB24A90, &unk_21775D5B0);
      if (v37[2] == 1)
      {
        OUTLINED_FUNCTION_1_80();
        sub_217553244(v12, v24);
        sub_2171F0738(v37, &qword_27CB24A90, &unk_21775D5B0);
      }

      else
      {

        memcpy(v38, v37, 0x100uLL);
        OUTLINED_FUNCTION_34_27();
        sub_217388CF8(v28, v29, v30);
        OUTLINED_FUNCTION_98();
        sub_2172844EC(v38);
        OUTLINED_FUNCTION_1_80();
        sub_217553244(v12, v31);
      }
    }

    else
    {

      OUTLINED_FUNCTION_50_19();
      memcpy(v25, v26, v27);
      sub_2173D2CC4();
      OUTLINED_FUNCTION_98();
      sub_2171F0738(v38, &qword_27CB256E8, &qword_21775D830);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v10, v13);
    if ((*(v13 + *(v20 + 28)) & 1) == 0)
    {

      sub_2171FF30C(v36, v38);
      v32 = sub_2174D5760(v38);
      if (!a10)
      {
        v33 = v32;
        v34 = sub_217751DE8();
        sub_2174D37FC(v34, v33);
        OUTLINED_FUNCTION_98();
      }
    }

    OUTLINED_FUNCTION_0_89();
    sub_217553244(v13, v35);
  }

  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v35 = v5;
  v6 = OUTLINED_FUNCTION_101();
  v7 = type metadata accessor for CloudMusicVideo(v6);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_13_16();
  v10 = type metadata accessor for CloudSong(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for CloudPlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_67_1();
  if (*(v0 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    sub_2175531EC(v2, v4);
    v16 = v4 + *(v10 + 32);
    v17 = *(v16 + 24);
    if (v17 != 1)
    {
      v28 = *(v16 + 32);
      v29 = *(v16 + 16);
      v37 = *v16;
      v38 = v29 & 1;
      v39 = v17;
      v40 = v28;
      sub_217221020(v37);
      sub_217751DE8();
      sub_217751DE8();

      sub_2171FF30C(v35, v36);
      v30 = sub_2174D5DD4(&v37);
      if (!v1)
      {
        v33 = v30;
        v34 = sub_217751DE8();
        sub_2174D37FC(v34, v33);
        OUTLINED_FUNCTION_98();
      }
    }

    OUTLINED_FUNCTION_0_89();
    v27 = v4;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v2, v3);
    v14 = (v3 + *(v7 + 32));
    v15 = v14[3];
    if (v15 != 1)
    {
      sub_217221020(*v14);
      sub_217751DE8();

      sub_2171FF30C(v35, v36);
      v21 = OUTLINED_FUNCTION_25_0();
      v25 = sub_2174D5C54(v21, v22, v23, v15, v24);
      if (!v1)
      {
        v31 = v25;
        v32 = sub_217751DE8();
        sub_2174D37FC(v32, v31);
        OUTLINED_FUNCTION_98();
      }
    }

    OUTLINED_FUNCTION_1_80();
    v27 = v3;
LABEL_16:
    sub_217553244(v27, v26);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_50_19();
  memcpy(v18, v19, v20);
  sub_2173D3828();
  OUTLINED_FUNCTION_98();
  sub_2171F0738(v36, &qword_27CB256E8, &qword_21775D830);
LABEL_17:
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21754FF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217553198(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21754FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217553198(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylistEntry.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudMusicVideo(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v36 = v8 - v7;
  v9 = OUTLINED_FUNCTION_206();
  v10 = type metadata accessor for CloudSong(v9);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_22_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295C8, &unk_217777730);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_69();
  type metadata accessor for CloudPlaylistEntry(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_4();
  v40 = v0;
  v15 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_217553198(v15, v16, v17);
  v18 = sub_2177532C8();
  if (!v1)
  {
    v37 = v2;
    sub_21733BE84(v18, v19, v20);
    sub_217752EA8();
    v23 = v39[0];
    v22 = v39[1];
    v24 = v39[2];
    v21 = v40;
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7628, v39))
    {
      goto LABEL_15;
    }

    if (qword_280BE24E8 != -1)
    {
      swift_once();
    }

    v25 = qword_280BE24F0 == v23 && *algn_280BE24F8 == v22;
    if (v25 || (sub_217753058() & 1) != 0)
    {
LABEL_15:

      sub_2171FF30C(v40, v39);
      CloudSong.init(from:)();
      v26 = OUTLINED_FUNCTION_36_26();
      v27(v26);
      OUTLINED_FUNCTION_2_82();
      sub_2175531EC(v37, v3);
LABEL_16:
      swift_storeEnumTagMultiPayload();
      v28 = OUTLINED_FUNCTION_45_4();
      sub_2175531EC(v28, v29);
      goto LABEL_4;
    }

    if (qword_280BE6EA0 != -1)
    {
      swift_once();
    }

    v39[0] = v23;
    v39[1] = v22;
    LOBYTE(v39[2]) = v24;
    if (static Array<A>.~= infix(_:_:)(off_280BE6EA8, v39))
    {
      goto LABEL_28;
    }

    if (qword_280BE6EC8 != -1)
    {
      swift_once();
    }

    if (qword_280BE6ED0 == v23 && *algn_280BE6ED8 == v22)
    {
LABEL_28:
    }

    else
    {
      v31 = sub_217753058();

      if ((v31 & 1) == 0)
      {
        sub_2171FF30C(v40, v38);
        sub_2173D499C(v38, v39);
        v32 = OUTLINED_FUNCTION_36_26();
        v33(v32);
        memcpy(v3, v39, 0x1F9uLL);
        goto LABEL_16;
      }
    }

    sub_2171FF30C(v40, v39);
    CloudMusicVideo.init(from:)();
    v34 = OUTLINED_FUNCTION_36_26();
    v35(v34);
    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v36, v3);
    goto LABEL_16;
  }

  v21 = v40;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = type metadata accessor for CloudMusicVideo(0);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_64();
  v8 = type metadata accessor for CloudSong(v7);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_13_16();
  type metadata accessor for CloudPlaylistEntry(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_3_73();
  sub_21755329C(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      memcpy(v17, v2, 0x1F9uLL);
      sub_2173D4F98(v4);
      sub_2171F0738(v17, &qword_27CB256E8, &qword_21775D830);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4_74();
    sub_2175531EC(v2, v0);
    CloudMusicVideo.encode(to:)();
    OUTLINED_FUNCTION_1_80();
    v14 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_2_82();
    v15 = OUTLINED_FUNCTION_86();
    sub_2175531EC(v15, v16);
    CloudSong.encode(to:)();
    OUTLINED_FUNCTION_0_89();
    v14 = v1;
  }

  sub_217553244(v14, v13);
LABEL_7:
  OUTLINED_FUNCTION_170();
}

void Playlist.Entry.init<A>(_:position:occurrence:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  *&v181 = v2;
  v4 = v3;
  v186 = v5;
  v189 = v7;
  v190 = v6;
  v182 = v9;
  v183 = v8;
  v188 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v172 = v13 - v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  v174 = &v168[-v16];
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v17);
  v173 = &v168[-v18];
  v19 = OUTLINED_FUNCTION_206();
  v177 = type metadata accessor for PlaylistEntryPropertyProvider(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v180 = (v22 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v176 = v25 - v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v168[-v28];
  v30 = type metadata accessor for CloudMusicVideo(0);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v178 = v33 - v32;
  v187 = v4;
  v184 = *(v4 - 8);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v179 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_1();
  v175 = v39 - v40;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v41);
  v43 = &v168[-v42];
  v44 = type metadata accessor for CloudSong(0);
  v45 = OUTLINED_FUNCTION_45_0(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v48 = v47 - v46;
  v49 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudPlaylistEntry(v49);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_32_29();
  MEMORY[0x28223BE20](v51);
  v53 = &v168[-v52];
  sub_21755329C(v190, &v168[-v52]);
  v185 = v53;
  v54 = OUTLINED_FUNCTION_86();
  sub_21755329C(v54, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_82();
    v171 = v48;
    sub_2175531EC(v0, v48);
    v80 = OUTLINED_FUNCTION_16_0();
    sub_21755329C(v80, v81);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v83 = v82[10];
    v84 = v190;
    v85 = (v190 + v82[9]);
    v86 = v85[1];
    v170 = *v85;
    v169 = *(v85 + 16);
    v87 = *(v190 + v83 + 8);
    v173 = *(v190 + v83);
    v174 = v86;
    v172 = v87;
    v88 = v82[11];
    memcpy(v204, (v190 + v88), 0x180uLL);
    v90 = *(v190 + v82[13]);
    v176 = *(v190 + v82[12]);
    v89 = v176;
    v177 = v90;
    v91 = v82[15];
    v178 = *(v190 + v82[14]);
    v92 = v178;
    v180 = *(v190 + v91);
    v93 = v180;
    v94 = &v43[v37[9]];
    *v94 = v170;
    *(v94 + 1) = v86;
    v94[16] = v169;
    v95 = &v43[v37[10]];
    v96 = v172;
    *v95 = v173;
    v95[1] = v96;
    memcpy(&v43[v37[11]], (v84 + v88), 0x180uLL);
    *&v43[v37[12]] = v89;
    *&v43[v37[13]] = v90;
    *&v43[v37[14]] = v92;
    *&v43[v37[15]] = v93;
    sub_21726A630(v43, v175, &qword_27CB24748, &unk_217758CD0);
    v97 = v184;
    v98 = v189;
    v99 = v187;
    (*(v184 + 16))(v179, v189, v187);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v204, v194, &qword_27CB25620, &qword_21776A5F0);

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Song.init<A>(_:configuration:sharedRelatedItemStore:)();
    sub_217283AFC(v193, v194);
    v194[56] = 0;
    Playlist.Entry.init(track:position:occurrence:)();

    (*(v97 + 8))(v98, v99);
    sub_2171F0738(v84, &qword_27CB24A28, &qword_217758FE0);
    sub_217283B58(v193);
    sub_2171F0738(v43, &qword_27CB24748, &unk_217758CD0);
    OUTLINED_FUNCTION_0_89();
    v79 = v171;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_4_74();
    v57 = v178;
    sub_2175531EC(v0, v178);
    sub_21755329C(v57, v29);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v59 = v58[10];
    v60 = v190;
    v61 = v190 + v58[9];
    v62 = *v61;
    v175 = *(v61 + 8);
    v63 = v175;
    LODWORD(v170) = *(v61 + 16);
    v64 = *(v190 + v59 + 8);
    v173 = *(v190 + v59);
    v171 = v62;
    v172 = v64;
    v65 = v58[11];
    memcpy(v204, (v190 + v65), 0x180uLL);
    v66 = v58[13];
    v174 = *(v190 + v58[12]);
    v67 = v174;
    v177 = *(v190 + v66);
    v68 = v177;
    v69 = v58[15];
    v180 = *(v190 + v58[14]);
    v70 = v180;
    v71 = *(v190 + v69);
    v72 = &v29[v23[9]];
    *v72 = v171;
    *(v72 + 1) = v63;
    v72[16] = v170;
    v73 = &v29[v23[10]];
    v74 = v172;
    *v73 = v173;
    v73[1] = v74;
    memcpy(&v29[v23[11]], (v60 + v65), 0x180uLL);
    *&v29[v23[12]] = v67;
    *&v29[v23[13]] = v68;
    *&v29[v23[14]] = v70;
    *&v29[v23[15]] = v71;
    sub_21726A630(v29, v176, &qword_27CB24808, &qword_217758D90);
    v75 = v184;
    v76 = v189;
    v77 = v187;
    (*(v184 + 16))(v179, v189, v187);
    sub_217751DE8();

    sub_217751DE8();
    sub_21726A630(v204, v194, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
    sub_217283BAC(v193, v194);
    v194[56] = 1;
    Playlist.Entry.init(track:position:occurrence:)();

    (*(v75 + 8))(v76, v77);
    sub_2171F0738(v60, &qword_27CB24A28, &qword_217758FE0);
    sub_217283C08(v193);
    sub_2171F0738(v29, &qword_27CB24808, &qword_217758D90);
    OUTLINED_FUNCTION_1_80();
    v79 = v178;
LABEL_5:
    sub_217553244(v79, v78);
    OUTLINED_FUNCTION_5_60();
    v101 = v185;
LABEL_6:
    sub_217553244(v101, v100);
LABEL_7:
    OUTLINED_FUNCTION_13();
    return;
  }

  v102 = OUTLINED_FUNCTION_45_25();
  memcpy(v102, v0, 0x1F9uLL);
  v103 = OUTLINED_FUNCTION_45_25();
  sub_21726A630(v103, v205, v104, v105);
  if ((v205[504] & 1) == 0)
  {
    memcpy(v201, v205, sizeof(v201));
    v112 = v201[0];
    v113 = v201[1];
    v114 = qword_280BE90D0;
    sub_217751DE8();
    if (v114 != -1)
    {
      swift_once();
    }

    v116 = qword_280BE90E8;
    v115 = unk_280BE90F0;
    sub_217751DE8();
    sub_217751DE8();
    v181 = xmmword_280BE90D8;

    *v202 = v112;
    *&v202[8] = v113;
    *&v202[16] = v112;
    *&v202[24] = v113;
    v202[32] = 6;
    bzero(&v202[40], 0xE0uLL);
    *&v202[264] = MEMORY[0x277D84FA0];
    v202[272] = 0;
    *&v202[280] = &unk_28295F940;
    *&v202[288] = v181;
    *&v202[304] = v116;
    *&v202[312] = v115;
    memset(&v202[320], 0, 32);
    v202[352] = 4;
    v199 = 0;
    memset(v198, 0, sizeof(v198));
    v200 = -1;
    memcpy(v204, v202, 0x161uLL);
    MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(v203);
    sub_217269F50(v202);
    if (qword_280BE8AC8 != -1)
    {
      swift_once();
    }

    v117 = *(&xmmword_280BE8AD0 + 1);
    *&v181 = xmmword_280BE8AD0;
    LODWORD(v179) = byte_280BE8AE0;
    sub_217751DE8();
    v178 = OUTLINED_FUNCTION_17_37();
    v176 = OUTLINED_FUNCTION_17_37();
    v175 = OUTLINED_FUNCTION_17_37();
    v171 = OUTLINED_FUNCTION_17_37();
    v197 = 0;
    memset(v196, 0, sizeof(v196));
    sub_2172A497C(v204);
    v118 = v180;
    memcpy(v180, v204, 0x221uLL);
    *(v118 + 69) = 0;
    v118[560] = 1;
    *(v118 + 568) = 0u;
    *(v118 + 584) = 0u;
    v119 = v177;
    v120 = v177[8];
    v121 = sub_2177517D8();
    OUTLINED_FUNCTION_4_10(&v118[v120]);
    OUTLINED_FUNCTION_4_10(&v118[v119[9]]);
    v122 = &v118[v119[10]];
    *(v122 + 48) = 0;
    *(v122 + 16) = 0u;
    *(v122 + 32) = 0u;
    *v122 = 0u;
    *(v122 + 56) = -1;
    v123 = &v118[v119[11]];
    *v123 = 0;
    *(v123 + 1) = 0;
    v123[16] = 0;
    v124 = &v118[v119[12]];
    *(v124 + 14) = 0;
    *(v124 + 5) = 0u;
    *(v124 + 6) = 0u;
    *(v124 + 3) = 0u;
    *(v124 + 4) = 0u;
    *(v124 + 1) = 0u;
    *(v124 + 2) = 0u;
    *v124 = 0u;
    v125 = &v118[v119[14]];
    *v125 = 0;
    *(v125 + 1) = 0;
    v182 = v119[15];
    OUTLINED_FUNCTION_4_10(&v118[v182]);
    v126 = &v118[v119[17]];
    *(v126 + 32) = 0;
    *v126 = 0u;
    *(v126 + 16) = 0u;
    if (qword_280BE3168 != -1)
    {
      swift_once();
    }

    v127 = qword_280C01FB0;
    if (qword_280C01FB0 >> 62)
    {
      type metadata accessor for AnyMusicProperty();
      sub_217751DE8();
      v167 = sub_217752D28();

      v127 = v167;
    }

    else
    {
      sub_217751DE8();
      sub_217753128();
      type metadata accessor for AnyMusicProperty();
    }

    v128 = v177;
    v129 = v180;
    v130 = &v180[v177[13]];
    v131 = &v180[v177[16]];
    *&v180[v177[18]] = v127;
    v132 = &v129[v128[21]];
    memcpy(&v129[v128[19]], v203, 0x161uLL);
    v133 = &v129[v128[20]];
    *v133 = v181;
    *(v133 + 1) = v117;
    v133[16] = v179;
    *v132 = 0;
    *(v132 + 1) = 0;
    *&v129[v128[22]] = v178;
    v134 = v175;
    *&v129[v128[23]] = v176;
    *&v129[v128[24]] = v134;
    *&v129[v128[25]] = v171;
    sub_21733BBDC(v198, v122, &qword_27CB27D20, &qword_217758B80);
    *v130 = v183;
    v130[8] = 0;
    sub_21733BBDC(v196, v126, &qword_27CB24BA8, &unk_217772FF0);
    v135 = v201[60];
    *v131 = v201[59];
    *(v131 + 1) = v135;
    memcpy(v195, &v201[2], sizeof(v195));
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v195) == 1)
    {
      memcpy(v194, v204, 0x221uLL);
      sub_217751DE8();
    }

    else
    {
      memcpy(v194, v195, 0x1B8uLL);
      sub_217751DE8();
      sub_21726A630(&v201[2], v193, &qword_27CB25000, &unk_21776EA00);
      CloudAttribute<A>.convertToArtwork()(v192);
      memcpy(v191, v194, sizeof(v191));
      sub_2171F0738(v191, &qword_27CB243F0, &qword_21775D690);
      memcpy(v193, v192, 0x221uLL);
      nullsub_1();
      memcpy(v194, v193, 0x221uLL);
    }

    v137 = v188;
    v136 = v189;
    v138 = v173;
    v139 = v180;
    memcpy(v193, v180, 0x221uLL);
    sub_2171F0738(v193, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v139, v194, 0x221uLL);
    if ((v201[58] & 1) == 0)
    {
      v140 = v180;
      *(v180 + 69) = v201[57] / 1000.0;
      v140[560] = 0;
    }

    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for CloudFormatter(0);
    v142 = __swift_project_value_buffer(v141, qword_280BE8918);
    v143 = v201[62];
    v144 = v174;
    OUTLINED_FUNCTION_4_10(v174);
    if (v143)
    {
      v145 = *(v142 + *(v141 + 20));
      OUTLINED_FUNCTION_16_0();
      v146 = sub_217751F18();
      v147 = [v145 dateFromString_];

      if (v147)
      {
        v148 = v172;
        sub_2177517C8();

        v149 = 0;
        v150 = v174;
      }

      else
      {
        v149 = 1;
        v150 = v174;
        v148 = v172;
      }

      OUTLINED_FUNCTION_36();
      sub_2171F0738(v151, v152, v153);
      __swift_storeEnumTagSinglePayload(v148, v149, 1, v121);
      v154 = OUTLINED_FUNCTION_25_0();
      sub_21726A594(v154, v155, &qword_27CB241C0, &qword_217759480);
      sub_21726A594(v150, v138, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      sub_2171F0738(v144, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_4_10(v138);
    }

    sub_21733BC90(v201);
    v156 = v180;
    sub_21733BBDC(v138, &v180[v182], &qword_27CB241C0, &qword_217759480);
    v157 = v177;
    v137[5] = v177;
    v137[6] = &protocol witness table for PlaylistEntryPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v137 + 2);
    sub_21755329C(v156, boxed_opaque_existential_0);

    v159 = (boxed_opaque_existential_0 + v157[19]);
    v161 = *v159;
    v160 = v159[1];
    v162 = *(v184 + 8);
    sub_217751DE8();
    v162(v136, v187);
    sub_2171F0738(v190, &qword_27CB24A28, &qword_217758FE0);
    v163 = OUTLINED_FUNCTION_45_25();
    sub_2171F0738(v163, v164, v165);
    OUTLINED_FUNCTION_5_60();
    sub_217553244(v185, v166);
    *v137 = v161;
    v137[1] = v160;
    v100 = type metadata accessor for PlaylistEntryPropertyProvider;
    v101 = v156;
    goto LABEL_6;
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry, &type metadata for Playlist.Entry, &protocol descriptor for InternalPlaylistEntryProviding))
  {
    v107 = v189;
    v108 = v190;
    v109 = v187;
    (*(v106 + 16))(v190, v183, v182, v189, v186, v187, v181);

    (*(v184 + 8))(v107, v109);
    sub_2171F0738(v108, &qword_27CB24A28, &qword_217758FE0);
    v110 = OUTLINED_FUNCTION_45_25();
    sub_2171F0738(v110, &qword_27CB256E8, &qword_21775D830);
    OUTLINED_FUNCTION_5_60();
    sub_217553244(v185, v111);
    sub_2171F0738(v205, &qword_27CB256E8, &qword_21775D830);
    goto LABEL_7;
  }

  v204[0] = 0;
  v204[1] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AB9C0);
  sub_217752D08();
  __break(1u);
}

void sub_2175517F0(uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a8@<X8>)
{
  v11 = CloudPlaylistEntry.id.getter();
  v13 = sub_2173AC898(v11, v12, *a3);
  v15 = v14;

  if ((v15 & 1) == 0 && __OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    CloudPlaylistEntry.id.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *a3;
    sub_2172C8018();
    *a3 = v18;

    v16 = CloudPlaylistEntry.id.getter();
    v17 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v17);

    sub_217751DE8();
    MEMORY[0x21CEA23B0](95, 0xE100000000000000);

    MEMORY[0x28223BE20](v16);
    sub_217312474(a4, sub_2175547A8, a8);
  }
}

void sub_217551A18(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v16[2] = a7;
  v16[3] = a3;
  v11 = *(a6 - 8);
  v16[1] = a8;
  MEMORY[0x28223BE20](a1);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  MEMORY[0x28223BE20](v14 - 8);
  sub_21726A630(a2, v16 - v15, &qword_27CB24A28, &qword_217758FE0);
  (*(v11 + 16))(v13, a4, a6);

  Playlist.Entry.init<A>(_:position:occurrence:configuration:sharedRelatedItemStore:)();
}

uint64_t CloudPlaylistEntry.Placeholder.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_54_18();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x1E8uLL);
  return sub_2175532F4(v8, v7);
}

void static CloudPlaylistEntry.Placeholder.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_43_18(v30);
  v21 = *(v4 + 440);
  v5 = *(v4 + 448);
  v6 = *(v4 + 456);
  v23 = *(v4 + 464);
  v7 = *(v4 + 472);
  v8 = *(v4 + 480);
  OUTLINED_FUNCTION_41_23(v31);
  v9 = *(v2 + 448);
  v19 = *(v2 + 456);
  v20 = *(v2 + 440);
  v22 = *(v2 + 464);
  v11 = *(v2 + 472);
  v10 = *(v2 + 480);
  OUTLINED_FUNCTION_43_18(__src);
  OUTLINED_FUNCTION_41_23(&__src[440]);
  OUTLINED_FUNCTION_43_18(v32);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v32) == 1)
  {
    OUTLINED_FUNCTION_41_23(__dst);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
    {
      v18 = v6;
      OUTLINED_FUNCTION_43_18(v29);
      sub_21726A630(v30, v26, &qword_27CB25000, &unk_21776EA00);
      sub_21726A630(v31, v26, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v29, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_21726A630(v30, v29, &qword_27CB25000, &unk_21776EA00);
    sub_21726A630(v31, v29, &qword_27CB25000, &unk_21776EA00);
    sub_2171F0738(__dst, &qword_27CB25008, &qword_21778F850);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_41_23(v26);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v26) == 1)
  {
    goto LABEL_5;
  }

  v18 = v6;
  OUTLINED_FUNCTION_41_23(v24);
  OUTLINED_FUNCTION_41_23(__dst);
  OUTLINED_FUNCTION_43_18(v29);
  sub_21726A630(v30, v25, &qword_27CB25000, &unk_21776EA00);
  sub_21726A630(v31, v25, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v13 = v12;
  sub_2171F0738(v24, &qword_27CB25000, &unk_21776EA00);
  OUTLINED_FUNCTION_43_18(v25);
  sub_2171F0738(v25, &qword_27CB25000, &unk_21776EA00);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (v5)
  {
    v14 = v7;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v21 == v20)
    {
      v15 = v9;
    }

    else
    {
      v15 = 1;
    }

    v14 = v7;
    if (v15)
    {
      goto LABEL_6;
    }
  }

  if (v23)
  {
    if (!v22)
    {
      goto LABEL_6;
    }

    v16 = v18 == v19 && v23 == v22;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v22)
  {
    goto LABEL_6;
  }

  if (v8 && v10 && (v14 != v11 || v8 != v10))
  {
    sub_217753058();
  }

LABEL_6:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217551EF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000002177B0890 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_21755205C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x44657361656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2175520EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217551EF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217552114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21755332C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217552150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21755332C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylistEntry.Placeholder.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295D8, &qword_217777740);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_36();
  memcpy(v35, v23, 0x1B8uLL);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v28 = sub_21726A630(v35, v34, &qword_27CB25000, &unk_21776EA00);
  sub_21755332C(v28, v29, v30);
  sub_2177532F8();
  memcpy(v34, v35, sizeof(v34));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8, &protocol conformance descriptor for <A> CloudAttribute<A>);
  sub_217752F38();
  if (v24)
  {
    memcpy(v33, v34, sizeof(v33));
    sub_2171F0738(v33, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v33, v34, sizeof(v33));
    sub_2171F0738(v33, &qword_27CB25000, &unk_21776EA00);
    OUTLINED_FUNCTION_33_27();
    sub_217752F28();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_33_27();
    sub_217752EF8();
    OUTLINED_FUNCTION_33_27();
    sub_217752EF8();
  }

  v31 = OUTLINED_FUNCTION_13_2();
  v32(v31);
  OUTLINED_FUNCTION_170();
}

void CloudPlaylistEntry.Placeholder.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 448);
  v6 = *(v0 + 464);
  v7 = *(v0 + 480);
  memcpy(__dst, v0, sizeof(__dst));
  v10 = v4;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_25();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    memcpy(v8, v0, sizeof(v8));
    OUTLINED_FUNCTION_24();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v4);

    if (!v5)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      MEMORY[0x21CEA3550](v3);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      OUTLINED_FUNCTION_25();
      if (v7)
      {
        goto LABEL_5;
      }

LABEL_9:
      OUTLINED_FUNCTION_25();
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_25();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_5:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();
  sub_217751FF8();
LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPlaylistEntry.Placeholder.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudPlaylistEntry.Placeholder.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295E8, &qword_217777748);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v13 = sub_21755332C(v10, v11, v12);
  OUTLINED_FUNCTION_139(&type metadata for CloudPlaylistEntry.Placeholder.Attributes.CodingKeys, v14, v13);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v15 = v6;
    v16 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_21751AE98(&qword_280BE42D0, &protocol conformance descriptor for <A> CloudAttribute<A>);
    v17 = v33;
    OUTLINED_FUNCTION_8_1();
    sub_217752E58();
    memcpy(v43, v42, sizeof(v43));
    v35[0] = 1;
    OUTLINED_FUNCTION_8_1();
    v18 = v15;
    v32 = sub_217752E48();
    v44 = v19 & 1;
    v35[0] = 2;
    OUTLINED_FUNCTION_8_1();
    v20 = sub_217752E18();
    v22 = v21;
    v31 = v20;
    OUTLINED_FUNCTION_8_1();
    v23 = sub_217752E18();
    v24 = *(v18 + 8);
    v30 = v23;
    v26 = v25;
    v24(v9, v17);
    memcpy(v34, v43, 0x1B8uLL);
    v28 = v31;
    v27 = v32;
    v34[55] = v32;
    LOBYTE(v34[56]) = v44;
    v34[57] = v31;
    v34[58] = v22;
    v34[59] = v30;
    v34[60] = v26;
    memcpy(v16, v34, 0x1E8uLL);
    sub_2175532F4(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v2);
    memcpy(v35, v43, sizeof(v35));
    v36 = v27;
    v37 = v44;
    v38 = v28;
    v39 = v22;
    v40 = v30;
    v41 = v26;
    sub_217553380(v35);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21755289C(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
  return sub_217753238();
}

uint64_t static CloudPlaylistEntry.Placeholder.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v6 = *a2;
  v7 = a2[1];
  OUTLINED_FUNCTION_54_18();
  memcpy(v8, v9, v10);
  v11 = v4 == v6 && v5 == v7;
  if (v11 || (OUTLINED_FUNCTION_16_0(), v12 = 0, (sub_217753058() & 1) != 0))
  {
    sub_2175532F4(__dst, v19);
    sub_2175532F4(v21, v19);
    static CloudPlaylistEntry.Placeholder.Attributes.== infix(_:_:)();
    v12 = v13;
    OUTLINED_FUNCTION_54_18();
    memcpy(v14, v15, v16);
    sub_217553380(&v18);
    memcpy(v19, a1 + 2, sizeof(v19));
    sub_217553380(v19);
  }

  return v12 & 1;
}

uint64_t sub_2175529C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_217552A88(char a1)
{
  if (a1)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_217552AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175529C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217552AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175533B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217552B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175533B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPlaylistEntry.Placeholder.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB295F0, &qword_217777750);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_36();
  v28 = *v23;
  v29 = v23[1];
  OUTLINED_FUNCTION_54_18();
  memcpy(v30, v31, v32);
  v33 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2175533B0(v33, v34, v35);
  sub_217751DE8();
  v36 = sub_2177532F8();
  v45[0] = v28;
  v45[1] = v29;
  v44[0] = 0;
  sub_2172E1B18(v36, v37, v38);
  sub_217752F88();

  if (!v24)
  {
    memcpy(v45, v46, sizeof(v45));
    v41 = sub_2175532F4(v46, v44);
    sub_217553404(v41, v42, v43);
    sub_217752F88();
    memcpy(v44, v45, sizeof(v44));
    sub_217553380(v44);
  }

  v39 = OUTLINED_FUNCTION_13_2();
  v40(v39);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPlaylistEntry.Placeholder.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
  return sub_217753238();
}

void CloudPlaylistEntry.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29608, &qword_217777758);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v8 = sub_2175533B0(v5, v6, v7);
  v10 = OUTLINED_FUNCTION_139(&type metadata for CloudPlaylistEntry.Placeholder.CodingKeys, v9, v8);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v21[0]) = 0;
    sub_2172E1C68(v10, v11, v12);
    OUTLINED_FUNCTION_8_1();
    v13 = sub_217752EA8();
    v19 = v22;
    v14 = v23;
    sub_217553458(v13, v15, v16);
    OUTLINED_FUNCTION_8_1();
    sub_217752EA8();
    v17 = OUTLINED_FUNCTION_86();
    v18(v17);
    memcpy(v26, v25, sizeof(v26));
    v21[0] = v19;
    v21[1] = v14;
    memcpy(&v21[2], v25, 0x1E8uLL);
    memcpy(v20, v21, 0x1F8uLL);
    sub_2175534AC(v21, &v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22 = v19;
    v23 = v14;
    memcpy(v24, v26, sizeof(v24));
    sub_21733BC90(&v22);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21755303C(uint64_t a1)
{
  sub_2177531E8();
  CloudPlaylistEntry.Placeholder.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_21755307C(uint64_t a1)
{
  sub_21726A630(v1, __src, &qword_27CB256E8, &qword_21775D830);
  if (v9)
  {
    sub_2171F3F0C(__src, __dst);
    v3 = __dst[3];
    v4 = __dst[4];
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    (*(v4 + 40))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217751DE8();
    sub_2175532F4(&__dst[2], v6);
    sub_217751FF8();

    memcpy(v6, &__dst[2], sizeof(v6));
    CloudPlaylistEntry.Placeholder.Attributes.hash(into:)();
    sub_21733BC90(__dst);
    return sub_217553380(&__dst[2]);
  }
}

unint64_t sub_217553198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB295D0;
  if (!qword_27CB295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295D0);
  }

  return result;
}

uint64_t sub_2175531EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

uint64_t sub_217553244(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21755329C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

unint64_t sub_21755332C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB295E0;
  if (!qword_27CB295E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295E0);
  }

  return result;
}

unint64_t sub_2175533B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB295F8;
  if (!qword_27CB295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB295F8);
  }

  return result;
}

unint64_t sub_217553404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29600;
  if (!qword_27CB29600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29600);
  }

  return result;
}

unint64_t sub_217553458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29610;
  if (!qword_27CB29610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29610);
  }

  return result;
}

unint64_t sub_2175534E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29618;
  if (!qword_27CB29618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29618);
  }

  return result;
}

unint64_t sub_217553540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29620;
  if (!qword_27CB29620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29620);
  }

  return result;
}

unint64_t sub_217553598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29628;
  if (!qword_27CB29628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29628);
  }

  return result;
}

unint64_t sub_2175535F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29630;
  if (!qword_27CB29630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29630);
  }

  return result;
}

unint64_t sub_217553648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29638;
  if (!qword_27CB29638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29638);
  }

  return result;
}

unint64_t sub_2175536A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29640;
  if (!qword_27CB29640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29640);
  }

  return result;
}

unint64_t sub_2175536F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29648;
  if (!qword_27CB29648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29648);
  }

  return result;
}

unint64_t sub_217553750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29650;
  if (!qword_27CB29650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29650);
  }

  return result;
}

unint64_t sub_2175537A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29658;
  if (!qword_27CB29658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29658);
  }

  return result;
}

unint64_t sub_217553800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29660;
  if (!qword_27CB29660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29660);
  }

  return result;
}

unint64_t sub_217553858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29668;
  if (!qword_27CB29668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29668);
  }

  return result;
}

unint64_t sub_2175538B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29670;
  if (!qword_27CB29670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29670);
  }

  return result;
}

unint64_t sub_217553908()
{
  result = qword_27CB29678;
  if (!qword_27CB29678)
  {
    type metadata accessor for CloudPlaylistEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29678);
  }

  return result;
}

unint64_t sub_217553964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29680;
  if (!qword_27CB29680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29680);
  }

  return result;
}

unint64_t sub_2175539B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175539F0(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_217553A44(v4, v5, v6);
  a1[2] = v7;
  result = sub_217553A98(v7, v8, v9);
  a1[3] = result;
  return result;
}

unint64_t sub_2175539F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3C80;
  if (!qword_280BE3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C80);
  }

  return result;
}

unint64_t sub_217553A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3C98;
  if (!qword_280BE3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C98);
  }

  return result;
}

unint64_t sub_217553A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3C90;
  if (!qword_280BE3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C90);
  }

  return result;
}

unint64_t sub_217553AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3C88;
  if (!qword_280BE3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C88);
  }

  return result;
}

void sub_217553B44(uint64_t a1)
{
  type metadata accessor for CloudSong(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CloudMusicVideo(319);
    if (v2 <= 0x3F)
    {
      sub_217553BCC(319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_217553BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_280BE7130[0])
  {
    v4 = sub_217553C28(0, a2, a3);
    v6 = type metadata accessor for CloudInternalPolymorphicMusicItem(a1, &type metadata for CloudPlaylistEntry.Placeholder, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_280BE7130);
    }
  }
}

unint64_t sub_217553C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3C78;
  if (!qword_280BE3C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3C78);
  }

  return result;
}

uint64_t sub_217553CE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 504))
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

uint64_t sub_217553D20(uint64_t result, int a2, int a3)
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 504) = 1;
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

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217553DF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 488))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217553E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 488) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 488) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPlaylistEntry.Placeholder.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudPlaylistEntry.Placeholder.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2175540E4(_BYTE *result, int a2, int a3)
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

unint64_t sub_2175541D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29688;
  if (!qword_27CB29688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29688);
  }

  return result;
}

unint64_t sub_21755422C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29690;
  if (!qword_27CB29690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29690);
  }

  return result;
}

unint64_t sub_217554284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29698;
  if (!qword_27CB29698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29698);
  }

  return result;
}

unint64_t sub_2175542DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296A0;
  if (!qword_27CB296A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296A0);
  }

  return result;
}

unint64_t sub_217554334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296A8;
  if (!qword_27CB296A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296A8);
  }

  return result;
}

unint64_t sub_21755438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296B0;
  if (!qword_27CB296B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296B0);
  }

  return result;
}

unint64_t sub_2175543E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296B8;
  if (!qword_27CB296B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296B8);
  }

  return result;
}

unint64_t sub_21755443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296C0;
  if (!qword_27CB296C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296C0);
  }

  return result;
}

unint64_t sub_217554494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296C8;
  if (!qword_27CB296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296C8);
  }

  return result;
}

unint64_t sub_2175544EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296D0;
  if (!qword_27CB296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296D0);
  }

  return result;
}

unint64_t sub_217554544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296D8;
  if (!qword_27CB296D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296D8);
  }

  return result;
}

unint64_t sub_21755459C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296E0;
  if (!qword_27CB296E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296E0);
  }

  return result;
}

unint64_t sub_2175545F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296E8;
  if (!qword_27CB296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296E8);
  }

  return result;
}

unint64_t sub_21755464C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296F0;
  if (!qword_27CB296F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296F0);
  }

  return result;
}

unint64_t sub_2175546A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB296F8;
  if (!qword_27CB296F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB296F8);
  }

  return result;
}

unint64_t sub_2175546FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29700;
  if (!qword_27CB29700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29700);
  }

  return result;
}

unint64_t sub_217554754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29708;
  if (!qword_27CB29708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29708);
  }

  return result;
}

void OUTLINED_FUNCTION_16_46()
{
  v4 = *(v3 - 88);
  *(v4 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v5 = (*(v4 + 48) + 16 * v0);
  *v5 = v2;
  v5[1] = v1;
}

uint64_t OUTLINED_FUNCTION_40_24(uint64_t a1)
{

  return sub_217752D08();
}

void *OUTLINED_FUNCTION_41_23(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_42_24(uint64_t a1, uint64_t a2)
{
  *(v4 - 72) = v3;
  *(v2 + 8) = a2;

  return type metadata accessor for CloudMusicVideo(0);
}

void *OUTLINED_FUNCTION_43_18(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_56_15(uint64_t a1)
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_60_21()
{

  return sub_2175531EC(v0, v1);
}

void *OUTLINED_FUNCTION_61_13(void *a1)
{

  return memcpy(a1, v1, 0x1F9uLL);
}

uint64_t sub_217554A10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_217751AF8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_217751AE8();
}

uint64_t sub_217554B54(uint64_t a1)
{
  OUTLINED_FUNCTION_122_7(a1);
  v5 = *(*(v4 + 56) + 16);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_133_10(MEMORY[0x277D84F90]);
    v2(v6);
    v7 = 0;
    v8 = v17;
    do
    {
      v3(v13, v7);
      swift_getAtKeyPath();
      v12(v13);
      OUTLINED_FUNCTION_158_6();
      if (v9)
      {
        OUTLINED_FUNCTION_161_8();
        v10();
        v8 = v17;
      }

      ++v7;
      *(v8 + 16) = v1;
      OUTLINED_FUNCTION_44_22((v8 + 56 * v2), v14, v15, v16);
    }

    while (v5 != v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_217554C78(uint64_t a1)
{
  v3 = type metadata accessor for MusicPersonalRecommendation(0);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  swift_beginAccess();
  v17 = a1;
  v9 = *(*(a1 + 56) + 16);
  if (v9)
  {
    v15 = v1;
    v18 = MEMORY[0x277D84F90];
    sub_2172760A8(0, v9, 0);
    v10 = 0;
    v11 = v18;
    do
    {
      sub_2172943A8(v10, v5);
      swift_getAtKeyPath();
      sub_21755FBE4(v5, type metadata accessor for MusicPersonalRecommendation);
      v18 = v11;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2172760A8(v12 > 1, v13 + 1, 1);
        v11 = v18;
      }

      ++v10;
      *(v11 + 16) = v13 + 1;
      sub_21755FB2C(v8, v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, type metadata accessor for MusicPersonalRecommendation);
    }

    while (v9 != v10);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t sub_217554ED8(uint64_t a1)
{
  OUTLINED_FUNCTION_122_7(a1);
  v5 = *(*(v4 + 56) + 16);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_133_10(MEMORY[0x277D84F90]);
    v2(v6);
    v7 = 0;
    v8 = v17;
    do
    {
      v3(v13, v7);
      swift_getAtKeyPath();
      v12(v13);
      OUTLINED_FUNCTION_158_6();
      if (v9)
      {
        OUTLINED_FUNCTION_161_8();
        v10();
        v8 = v17;
      }

      ++v7;
      *(v8 + 16) = v1;
      OUTLINED_FUNCTION_32_21(v8 + (v2 << 6), v14, v15, v16[0], *(v16 + 9));
    }

    while (v5 != v7);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_217554FF4()
{
  v39 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v4, v5, v6, v7);
  v8 = v57;
  v9 = BYTE8(v57);
  sub_217283C5C(v57, SBYTE8(v57));
  sub_2171F0738(&v57, &unk_27CB2ACA0, &unk_217759C60);
  sub_21725CF00(v8, v9);
  v10 = 0;
  v11 = v60;
  v64 = v60 + 32;
  v62 = 0;
  v12 = v61;
  while (v12)
  {
    swift_beginAccess();
    if (v10 == *(*(v11 + 56) + 16))
    {
      goto LABEL_27;
    }

    sub_217294664();
    v53 = v48;
    v54 = v49;
    v55 = v50;
    v56 = v51;
    sub_21725CF00(v11, 1);
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_29;
    }

LABEL_14:
    v62 = v10;
    if (qword_280BE66D8 != -1)
    {
      swift_once();
    }

    v23 = qword_280BE66E0;
    sub_21729C5E8(&v54, &v48);
    v24 = *(&v49 + 1);
    v25 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    (*(v25 + 96))(&v40, v24, v25);
    v26 = *(&v41 + 1);
    v27 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    (*(*(v27 + 8) + 8))(&v45, v23, &type metadata for Playlist.Entry, &type metadata for Playlist.Entry.Item, v26);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    sub_21729C644(&v48);
    if (v47[24] == 255)
    {
      sub_2171F0738(&v45, &qword_27CB27D20, &qword_217758B80);
      sub_2172758B4(&v53);
    }

    else
    {
      v57 = v45;
      v58 = v46;
      v59[0] = *v47;
      *(v59 + 9) = *&v47[9];
      sub_21729C79C(&v57, &v45);
      if (v47[24])
      {
        v28 = &type metadata for Song;
      }

      else
      {
        v28 = &type metadata for MusicVideo;
      }

      if (v47[24])
      {
        v29 = &protocol witness table for Song;
      }

      else
      {
        v29 = &protocol witness table for MusicVideo;
      }

      *(&v49 + 1) = v28;
      *&v50 = v29;
      v30 = swift_allocObject();
      v31 = v46;
      *(v30 + 16) = v45;
      *(v30 + 32) = v31;
      *(v30 + 48) = *v47;
      *(v30 + 64) = *&v47[16];
      *&v48 = v30;
      __swift_project_boxed_opaque_existential_1(&v48, v28);
      v32 = (v29[1])(v28, v29);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(&v48);
      sub_217620780(&v40);
      v35 = v40;
      v45 = v57;
      v46 = v58;
      *v47 = v59[0];
      *&v47[9] = *(v59 + 9);
      sub_217275858(&v53, &v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADB0, &unk_217778730);
      swift_allocObject();
      sub_217631F6C(v32, v34, v35, &v45, &v48);
      v36 = sub_2172758B4(&v53);
      MEMORY[0x21CEA25D0](v36);
      v37 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v37 >> 1)
      {
        OUTLINED_FUNCTION_57(v37);
        sub_2177522F8();
      }

      sub_217752378();
      v39 = v63;
    }
  }

  v14 = *(v11 + 16);
  if (v10 == v14)
  {
LABEL_27:
    sub_2171F0738(&v60, &qword_27CB279D0, &qword_217778740);
    return;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10 >= v14)
    {
      goto LABEL_30;
    }

    sub_21738C4B0(v64 + (v10 << 6), &v57, &qword_27CB279E0, &unk_2177881E0);
    sub_21738C4B0(&v57, &v45, &qword_27CB279E0, &unk_2177881E0);
    if (v47[24])
    {
      v15 = *(v45 + 16);
      v16 = *(v45 + 24);
      sub_217283C5C(v11, 0);
      sub_217751DE8();
      sub_217293954(v15, v16, v17, v18, v19, v20, v21, v22, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), *v47, *&v47[8], *&v47[16], *&v47[24], v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52[0], v52[1], v52[2], v53, *(&v53 + 1));

      sub_2171F0738(&v57, &qword_27CB279E0, &unk_2177881E0);
    }

    else
    {
      sub_217751DE8();
      sub_2171F0738(&v57, &qword_27CB279E0, &unk_2177881E0);
      v40 = v45;
      v41 = v46;
      v42 = *v47;
      v43 = *&v47[16];
    }

    v50 = v42;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    sub_21725CF00(v11, 0);
    ++v10;
    goto LABEL_14;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_217555518(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29728, &unk_217778720);
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = type metadata accessor for PlaylistEntryPropertyProvider(0);
  *(v3 + 480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2175555E8, 0, 0);
}

uint64_t sub_2175555E8()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 249);
  sub_217554FF4();
  v3 = v2;
  *(v0 + 488) = v2;
  OUTLINED_FUNCTION_9_14(&dword_2177871E8);
  v8 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 496) = v5;
  *v5 = v6;
  v5[1] = sub_2175556A4;

  return v8(v1 & 1, v3);
}

uint64_t sub_2175556A4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 504) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_4_25();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_217555800()
{
  v1 = v0[31].n128_u64[1];
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = v0[29].n128_u64[1];
    v28 = MEMORY[0x277D84F90];
    sub_217275DB0(0, v2, 0);
    v3 = v1 + 32;
    while (1)
    {
      v27 = v2;
      sub_21738C4B0(v3, &v0[7].n128_i64[1], &unk_27CB2ADA0, &unk_21775A060);
      sub_21729C79C(&v0[7].n128_i64[1], &v0[12]);
      sub_217275858(v0[11].n128_u64[1] + 32, &v0[19].n128_i64[1]);
      sub_21729C5E8(&v0[20].n128_i64[1], &v0[25].n128_i64[1]);
      v5 = v0[27].n128_i64[0];
      v4 = v0[27].n128_u64[1];
      __swift_project_boxed_opaque_existential_1(&v0[25].n128_u64[1], v5);
      (*(v4 + 96))(v5, v4);
      sub_21729C644(&v0[25].n128_i64[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v7 = v0[29].n128_i64[1];
      v6 = v0[30].n128_i64[0];
      v8 = v0[29].n128_i64[0];
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v7);
      sub_21755FB2C(v8, v6, type metadata accessor for PlaylistEntryPropertyProvider);
      v9 = *(v26 + 40);
      sub_2171F0738(v6 + v9, &qword_27CB27D20, &qword_217758B80);
      sub_21729C79C(&v0[12], v6 + v9);
      v0[18].n128_u64[1] = v7;
      v0[19].n128_u64[0] = &protocol witness table for PlaylistEntryPropertyProvider;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v0[17]);
      sub_21755FB88(v6, boxed_opaque_existential_0, type metadata accessor for PlaylistEntryPropertyProvider);
      v11 = (boxed_opaque_existential_0 + *(v26 + 76));
      v13 = *v11;
      v12 = v11[1];
      sub_217751DE8();
      sub_2172758B4(&v0[19].n128_i64[1]);
      sub_21729C7F8(&v0[12]);
      v0[16].n128_u64[0] = v13;
      v0[16].n128_u64[1] = v12;
      v14 = OUTLINED_FUNCTION_153();
      sub_21755FBE4(v14, v15);
      sub_2171F0738(&v0[7].n128_i64[1], &unk_27CB2ADA0, &unk_21775A060);
      v17 = *(v28 + 16);
      v16 = *(v28 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = OUTLINED_FUNCTION_57(v16);
        sub_217275DB0(v18, v17 + 1, 1);
      }

      *(v28 + 16) = v17 + 1;
      OUTLINED_FUNCTION_44_22((v28 + 56 * v17), v0[16], v0[17], v0[18]);
      v3 += 72;
      --v2;
      if (v27 == 1)
      {
        goto LABEL_7;
      }
    }

    v19 = v0[29].n128_i64[0];
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v0[29].n128_i64[1]);
    sub_2171F0738(v19, &qword_27CB29728, &unk_217778720);
    return sub_217752D08();
  }

  else
  {
LABEL_7:

    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v21, v22, v23, v24);
    OUTLINED_FUNCTION_126_11();
    sub_217555C40();

    OUTLINED_FUNCTION_0_2();

    return v25();
  }
}

void sub_217555C40()
{
  OUTLINED_FUNCTION_135_8();
  v5 = *(v4 + 16);
  v33 = MEMORY[0x277D84F90];
  v6 = OUTLINED_FUNCTION_164_7();
  v22 = v7;
  (v7)(v6);
  v8 = v33;
  if (v5)
  {
    v9 = *(v3 + 16);
    v10 = v3 + 32;
    v11 = v5;
    while (v9)
    {
      v2(v10, &v30);
      v32[24] = 0;
      OUTLINED_FUNCTION_163_5();
      if (v12)
      {
        OUTLINED_FUNCTION_762();
        v22();
        v8 = v33;
      }

      *(v8 + 16) = v1;
      OUTLINED_FUNCTION_32_21(v8 + (v0 << 6), v30, v31, *v32, *&v32[9]);
      v10 += 56;
      --v9;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    for (i = v3 + 56 * v5 + 32; ; i += 56)
    {
      v14 = *(v3 + 16);
      if (v5 == v14)
      {

        sub_21738C4B0((v23 + 2), v26 + 16, &qword_27CB24188, &dword_217758930);
        v16 = v23[7];
        v17 = v23[8];
        v19 = v23[9];
        v18 = v23[10];
        v20 = v23[11];
        v21 = v23[12];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v23, v24, v25);
        *v26 = v8;
        *(v26 + 8) = 0;
        *(v26 + 56) = v16;
        *(v26 + 64) = v17;
        *(v26 + 72) = v19;
        *(v26 + 80) = v18;
        *(v26 + 88) = v20;
        *(v26 + 96) = v21;
        return;
      }

      if (v5 >= v14)
      {
        break;
      }

      v2(i, &v30);
      v28 = v31;
      v29 = *v32;
      v27 = v30;
      OUTLINED_FUNCTION_163_5();
      if (v12)
      {
        OUTLINED_FUNCTION_762();
        v22();
        v8 = v33;
      }

      *(v8 + 16) = v1;
      OUTLINED_FUNCTION_44_22((v8 + (v0 << 6)), v27, v28, v29);
      *(v15 + 88) = 0;
      ++v5;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21755602C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v35 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for MusicPersonalRecommendation(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v40 = MEMORY[0x277D84F90];
  result = sub_2172762F8(0, v14, 0);
  v16 = v40;
  v36 = a1;
  if (v14)
  {
    v17 = 0;
    v18 = *(a1 + 16);
    v37 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v38 = v18;
    while (v38 != v17)
    {
      sub_21755FB88(v37 + *(v11 + 72) * v17, v6, type metadata accessor for MusicPersonalRecommendation);
      swift_storeEnumTagMultiPayload();
      v40 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2172762F8((v19 > 1), v20 + 1, 1);
        v16 = v40;
      }

      ++v17;
      *(v16 + 16) = v20 + 1;
      result = sub_21755FC3C(v6, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20);
      if (v14 == v17)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v21 = v36;
    while (1)
    {
      v22 = *(v21 + 16);
      if (v14 == v22)
      {

        v26 = v34;
        v25 = v35;
        sub_21738C4B0((v34 + 2), v35 + 16, &qword_27CB24188, &dword_217758930);
        v28 = v26[7];
        v27 = v26[8];
        v30 = v26[9];
        v29 = v26[10];
        v31 = v26[11];
        v32 = v26[12];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        result = sub_2171F0738(v26, &qword_27CB28678, &qword_21776DEA0);
        *v25 = v16;
        *(v25 + 8) = 0;
        *(v25 + 56) = v28;
        *(v25 + 64) = v27;
        *(v25 + 72) = v30;
        *(v25 + 80) = v29;
        *(v25 + 88) = v31;
        *(v25 + 96) = v32;
        return result;
      }

      if (v14 >= v22)
      {
        break;
      }

      sub_21755FB88(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v13, type metadata accessor for MusicPersonalRecommendation);
      sub_21755FB2C(v13, v9, type metadata accessor for MusicPersonalRecommendation);
      swift_storeEnumTagMultiPayload();
      v40 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2172762F8((v23 > 1), v24 + 1, 1);
        v16 = v40;
      }

      *(v16 + 16) = v24 + 1;
      result = sub_21755FC3C(v9, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24);
      ++v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_217556418()
{
  OUTLINED_FUNCTION_135_8();
  v5 = *(v4 + 16);
  v36 = MEMORY[0x277D84F90];
  v25 = v6;
  (v6)(0, v5, 0);
  v7 = v36;
  if (v5)
  {
    v8 = *(v3 + 16);
    v9 = v3 + 32;
    v10 = v5;
    while (v8)
    {
      v2(v9, &v33);
      v35[25] = 0;
      OUTLINED_FUNCTION_156_8();
      if (v11)
      {
        OUTLINED_FUNCTION_762();
        v25();
        v7 = v36;
      }

      *(v7 + 16) = v0;
      v12 = (v7 + (v1 << 6));
      v13 = v33;
      v14 = v34;
      v15 = *v35;
      *(v12 + 74) = *&v35[10];
      v12[3] = v14;
      v12[4] = v15;
      v12[2] = v13;
      v9 += 64;
      --v8;
      if (!--v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    for (i = v3 + (v5 << 6) + 32; ; i += 64)
    {
      v17 = *(v3 + 16);
      if (v5 == v17)
      {

        sub_21738C4B0((v26 + 2), v29 + 16, &qword_27CB24188, &dword_217758930);
        v19 = v26[7];
        v20 = v26[8];
        v22 = v26[9];
        v21 = v26[10];
        v23 = v26[11];
        v24 = v26[12];
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v26, v27, v28);
        *v29 = v7;
        *(v29 + 8) = 0;
        *(v29 + 56) = v19;
        *(v29 + 64) = v20;
        *(v29 + 72) = v22;
        *(v29 + 80) = v21;
        *(v29 + 88) = v23;
        *(v29 + 96) = v24;
        return;
      }

      if (v5 >= v17)
      {
        break;
      }

      v2(i, &v33);
      *&v32[9] = *&v35[9];
      v31 = v34;
      *v32 = *v35;
      v30 = v33;
      OUTLINED_FUNCTION_156_8();
      if (v11)
      {
        OUTLINED_FUNCTION_762();
        v25();
        v7 = v36;
      }

      *(v7 + 16) = v0;
      OUTLINED_FUNCTION_32_21(v7 + (v1 << 6), v30, v31, *v32, *&v32[9]);
      *(v18 + 89) = 0;
      ++v5;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21755676C(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_48_18(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_23_40(v15);
    OUTLINED_FUNCTION_1322();

    return sub_217509B44(v17, v18);
  }

  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v21)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v13)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_58_17(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_57_17(v23);
  OUTLINED_FUNCTION_1322();

  return sub_21755EB98(v25);
}

uint64_t sub_2175568D8(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175568F0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Artist, &type metadata for Artist, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_48_18(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_23_40(v2);
    OUTLINED_FUNCTION_1322();

    return sub_21750985C(v4, v5);
  }

  if (qword_280BE2A18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v8)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_58_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_57_17(v10);
  OUTLINED_FUNCTION_1322();

  return sub_21755E7C0(v12);
}

uint64_t sub_217556A54(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556A6C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Curator, &type metadata for Curator, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_48_18(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_23_40(v2);
    OUTLINED_FUNCTION_1322();

    return sub_217509574(v4, v5);
  }

  if (qword_280BE7660 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v8)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_58_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_57_17(v10);
  OUTLINED_FUNCTION_1322();

  return sub_21755E3E8(v12);
}

uint64_t sub_217556BD0(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo, &type metadata for MusicVideo, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_48_18(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_23_40(v15);
    OUTLINED_FUNCTION_1322();

    return sub_21750928C(v17, v18);
  }

  if (qword_280BE7F40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v21)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v13)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_58_17(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_57_17(v23);
  OUTLINED_FUNCTION_1322();

  return sub_21755DFF8(v25);
}

uint64_t sub_217556D4C(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_48_18(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_23_40(v15);
    OUTLINED_FUNCTION_1322();

    return sub_217508FA4(v17, v18);
  }

  if (qword_280BE84D8 != -1)
  {
    OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v21)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v13)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_58_17(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_57_17(v23);
  OUTLINED_FUNCTION_1322();

  return sub_21755DC2C(v25);
}

uint64_t sub_217556EB8(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217556ED0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for RadioShow, &type metadata for RadioShow, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_48_18(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_23_40(v2);
    OUTLINED_FUNCTION_1322();

    return sub_217508CBC(v4, v5);
  }

  if (qword_280BE23C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v8)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_58_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_57_17(v10);
  OUTLINED_FUNCTION_1322();

  return sub_21755D854(v12);
}

uint64_t sub_217557034(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21755704C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for RecordLabel, &type metadata for RecordLabel, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_48_18(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_23_40(v2);
    OUTLINED_FUNCTION_1322();

    return sub_2175089D4(v4, v5);
  }

  if (qword_280BE5130 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v8)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_58_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_57_17(v10);
  OUTLINED_FUNCTION_1322();

  return sub_21755D47C(v12);
}

uint64_t sub_2175571B0(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175571C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Song, &type metadata for Song, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v14 = swift_task_alloc();
    v15 = OUTLINED_FUNCTION_48_18(v14);
    *v15 = v16;
    OUTLINED_FUNCTION_23_40(v15);
    OUTLINED_FUNCTION_1322();

    return sub_2175086EC(v17, v18);
  }

  if (qword_280BEB230 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v21)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v13)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_58_17(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_57_17(v23);
  OUTLINED_FUNCTION_1322();

  return sub_21755D0B0(v25);
}

uint64_t sub_21755732C(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217557344()
{
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item, &type metadata for MusicPlayer.Queue.Entry.Item, &protocol descriptor for _MusicLibraryMappable))
  {
    if (dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item, &type metadata for MusicPlayer.Queue.Entry.Item, &protocol descriptor for MusicItemTypeValueProviding))
    {
      v1 = swift_task_alloc();
      v2 = OUTLINED_FUNCTION_48_18(v1);
      *v2 = v3;
      v4 = OUTLINED_FUNCTION_23_40(v2);

      return sub_21750A404(v4, v5);
    }

    else
    {
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
      return sub_217752D08();
    }
  }

  else
  {
    sub_21738C4B0(*(v0 + 24), *(v0 + 16), &qword_27CB27A88, &qword_21776B6D0);
    OUTLINED_FUNCTION_0_2();

    return v7();
  }
}

uint64_t sub_217557510(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217557528()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Genre, &type metadata for Genre, &protocol descriptor for PolymorphicMusicItem))
  {
LABEL_2:
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_48_18(v1);
    *v2 = v3;
    OUTLINED_FUNCTION_23_40(v2);
    OUTLINED_FUNCTION_1322();

    return sub_21750A6F0(v4, v5);
  }

  if (qword_280BE2A80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_139_9();
  OUTLINED_FUNCTION_814();
  if (v8)
  {
    OUTLINED_FUNCTION_64_20();
    OUTLINED_FUNCTION_138_5();
    if (v0)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_58_17(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_57_17(v10);
  OUTLINED_FUNCTION_1322();

  return sub_21755EF64(v12);
}

uint64_t sub_21755768C(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175576A4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  if (dynamic_cast_existential_1_conditional(&type metadata for Station, &type metadata for Station, &protocol descriptor for _MusicLibraryMappable))
  {
    if (dynamic_cast_existential_1_conditional(&type metadata for Station, &type metadata for Station, &protocol descriptor for PolymorphicMusicItem))
    {
LABEL_3:
      v2 = swift_task_alloc();
      v3 = OUTLINED_FUNCTION_48_18(v2);
      *v3 = v4;
      OUTLINED_FUNCTION_23_40(v3);
      OUTLINED_FUNCTION_1322();

      return sub_21750ACC4(v5, v6);
    }

    if (qword_280BE26C0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_139_9();
    OUTLINED_FUNCTION_814();
    if (v17)
    {
      OUTLINED_FUNCTION_64_20();
      OUTLINED_FUNCTION_138_5();
      if (v0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v18 = swift_task_alloc();
    v19 = OUTLINED_FUNCTION_58_17(v18);
    *v19 = v20;
    OUTLINED_FUNCTION_57_17(v19);
    OUTLINED_FUNCTION_1322();

    return sub_21755F33C(v21);
  }

  else
  {
    sub_21738C4B0(*(v1 + 24), *(v1 + 16), &qword_27CB255B8, &unk_21775D470);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_21755786C(uint64_t a1, char a2)
{
  *(v3 + 353) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217557884()
{
  OUTLINED_FUNCTION_182();
  sub_21738C4B0(*(v0 + 312), v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  sub_21738C4B0(v0 + 16, v0 + 120, &unk_27CB2ACA0, &unk_217759C60);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACB0, &unk_217786F10);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 353);
    sub_2171F3F0C((v0 + 264), v0 + 224);
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v3);
    *(v0 + 352) = v2 & 1;
    v15 = (*(v4 + 8) + **(v4 + 8));
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 320) = v5;
    *v5 = v6;
    v5[1] = sub_217557AF8;
    v7 = *(v0 + 304);

    return v15(v7, v0 + 352, v1, v3, v4);
  }

  else
  {
    v9 = *(v0 + 353);
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0;
    sub_2171F0738(v0 + 264, &qword_27CB29720, &qword_217778710);
    OUTLINED_FUNCTION_9_14(&unk_217778718);
    v16 = v10;
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_35_25(v11);
    *v12 = v13;
    v12[1] = sub_217557BF0;
    v14 = *(v0 + 304);

    return v16(v14, v9 & 1);
  }
}

uint64_t sub_217557AF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217557BF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217557CE8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217557D58()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217557DCC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217557E34()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &unk_27CB2ACA0, &unk_217759C60);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

void sub_2175584D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_36_27();
    *(v3 - 16) = &type metadata for Track;
    *(v3 - 8) = &protocol witness table for Track;
    swift_getKeyPath(byte_217778778);
    OUTLINED_FUNCTION_60_22();
    v4 = OUTLINED_FUNCTION_42_25();
    sub_217554ED8(v4);
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  v7 = OUTLINED_FUNCTION_20_33();
  sub_217275DFC(v7, v8, v9);
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v10)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v11, v12, v13, &unk_2177589C0);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v14, v15, v16, v17);
    if (v25)
    {
      OUTLINED_FUNCTION_56_16();

      v18 = OUTLINED_FUNCTION_37_26();
      sub_21729366C(v18, v19);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v10)
    {
      OUTLINED_FUNCTION_57(v20);
      OUTLINED_FUNCTION_43_19();
      sub_217275DFC(v22, v23, v24);
    }

    OUTLINED_FUNCTION_12_37();
    if (v21)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_217559184()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_36_27();
    *(v3 - 16) = &type metadata for MusicCatalogSearchResponse.TopResult;
    *(v3 - 8) = &protocol witness table for MusicCatalogSearchResponse.TopResult;
    swift_getKeyPath(byte_217778778);
    OUTLINED_FUNCTION_60_22();
    v4 = OUTLINED_FUNCTION_42_25();
    sub_217554ED8(v4);
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  v7 = OUTLINED_FUNCTION_20_33();
  sub_21727605C(v7, v8, v9);
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v10)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v11, v12, v13, &qword_217771D80);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v14, v15, v16, v17);
    if (v26)
    {
      OUTLINED_FUNCTION_56_16();

      v18 = OUTLINED_FUNCTION_37_26();
      sub_2172921E8(v20, v18, v19);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v10)
    {
      OUTLINED_FUNCTION_57(v21);
      OUTLINED_FUNCTION_43_19();
      sub_21727605C(v23, v24, v25);
    }

    OUTLINED_FUNCTION_12_37();
    if (v22)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_21755933C()
{
  OUTLINED_FUNCTION_12();
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  OUTLINED_FUNCTION_0_0();
  v44 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v43 - v7;
  type metadata accessor for MusicPersonalRecommendation(0);
  OUTLINED_FUNCTION_0_0();
  v43[2] = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  v45 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v16 = v43 - v15;
  v46 = *v0;
  if (*(v0 + 8))
  {
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_36_27();
    *(v18 - 16) = v17;
    *(v18 - 8) = &protocol witness table for MusicPersonalRecommendation;
    swift_getKeyPath(byte_217778778);
    v19 = v46;
    sub_217283C5C(v46, 1);

    v20 = OUTLINED_FUNCTION_56_0();
    sub_217554C78(v20);

    v21 = v19;
    v22 = 1;
LABEL_13:
    sub_21725CF00(v21, v22);
    goto LABEL_14;
  }

  v23 = *(v46 + 16);
  if (!v23)
  {
LABEL_14:
    OUTLINED_FUNCTION_13();
    return;
  }

  v47 = MEMORY[0x277D84F90];
  v24 = v46;
  sub_217751DE8();
  v25 = OUTLINED_FUNCTION_164_7();
  sub_2172760A8(v25, v26, v27);
  v28 = 0;
  v29 = v47;
  v30 = v45;
  OUTLINED_FUNCTION_47_3();
  v32 = v24 + v31;
  v43[0] = v8;
  while (v28 < *(v46 + 16))
  {
    sub_21738C4B0(v32 + *(v44 + 72) * v28, v8, &qword_27CB24978, &qword_21776DBA0);
    sub_21738C4B0(v8, v5, &qword_27CB24978, &qword_21776DBA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_217751DE8();

      v8 = v43[0];
      sub_217292370(v45);

      v30 = v45;
    }

    else
    {
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v5, v30, v33);
    }

    OUTLINED_FUNCTION_0_90();
    v34 = OUTLINED_FUNCTION_56_0();
    sub_21755FB2C(v34, v35, v36);
    sub_2171F0738(v8, &qword_27CB24978, &qword_21776DBA0);
    v47 = v29;
    v37 = v16;
    v39 = *(v29 + 16);
    v38 = *(v29 + 24);
    if (v39 >= v38 >> 1)
    {
      v42 = OUTLINED_FUNCTION_57(v38);
      sub_2172760A8(v42, v39 + 1, 1);
      v30 = v45;
      v29 = v47;
    }

    ++v28;
    *(v29 + 16) = v39 + 1;
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v37, v40, v41);
    v16 = v37;
    if (v23 == v28)
    {
      v21 = v46;
      v22 = 0;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_2175596E4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_36_27();
    *(v3 - 16) = &type metadata for MusicPersonalRecommendation.Item;
    *(v3 - 8) = &protocol witness table for MusicPersonalRecommendation.Item;
    swift_getKeyPath(byte_217778778);
    OUTLINED_FUNCTION_60_22();
    OUTLINED_FUNCTION_102_11();
    v4 = OUTLINED_FUNCTION_42_25();
    sub_217554ED8(v4);
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  v7 = OUTLINED_FUNCTION_20_33();
  sub_217276100(v7, v8, v9);
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v10)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v11, v12, v13, &unk_21775A270);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v14, v15, v16, v17);
    if (v26)
    {
      OUTLINED_FUNCTION_56_16();

      v18 = OUTLINED_FUNCTION_37_26();
      sub_217292624(v20, v18, v19);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v10)
    {
      OUTLINED_FUNCTION_57(v21);
      OUTLINED_FUNCTION_43_19();
      sub_217276100(v23, v24, v25);
    }

    OUTLINED_FUNCTION_12_37();
    if (v22)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_21755988C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_91_11();
  if (v1)
  {
    OUTLINED_FUNCTION_90_12();
    MEMORY[0x28223BE20](v2);
    OUTLINED_FUNCTION_36_27();
    *(v3 - 16) = &type metadata for MusicLibrarySearchResponse.TopResult;
    *(v3 - 8) = &protocol witness table for MusicLibrarySearchResponse.TopResult;
    swift_getKeyPath(byte_217778778);
    OUTLINED_FUNCTION_60_22();
    v4 = OUTLINED_FUNCTION_42_25();
    sub_217554ED8(v4);
    OUTLINED_FUNCTION_129_9();
    v5 = OUTLINED_FUNCTION_78_13();
LABEL_14:
    sub_21725CF00(v5, v6);
    goto LABEL_15;
  }

  if (!*(v0 + 16))
  {
LABEL_15:
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_13();
    return;
  }

  OUTLINED_FUNCTION_128_11();
  v7 = OUTLINED_FUNCTION_20_33();
  sub_21727614C(v7, v8, v9);
  OUTLINED_FUNCTION_39_19();
  while (1)
  {
    OUTLINED_FUNCTION_89_14();
    if (v10)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_38_23();
    sub_21738C4B0(v11, v12, v13, &unk_217778870);
    OUTLINED_FUNCTION_86_13();
    sub_21738C4B0(v14, v15, v16, v17);
    if (v24)
    {
      OUTLINED_FUNCTION_56_16();

      v18 = OUTLINED_FUNCTION_37_26();
      sub_217292BF8(v18);

      OUTLINED_FUNCTION_41_24();
    }

    else
    {
      OUTLINED_FUNCTION_21_34();
    }

    OUTLINED_FUNCTION_30_29();
    OUTLINED_FUNCTION_17_38();
    if (v10)
    {
      OUTLINED_FUNCTION_57(v19);
      OUTLINED_FUNCTION_43_19();
      sub_21727614C(v21, v22, v23);
    }

    OUTLINED_FUNCTION_12_37();
    if (v20)
    {
      v5 = OUTLINED_FUNCTION_94_10();
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t MusicPersonalRecommendationsResponse.hashValue.getter()
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  return sub_217753238();
}

uint64_t sub_217559AC8(uint64_t a1)
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  return sub_217753238();
}

void MusicPersonalRecommendationsResponse.replacing<A>(_:)()
{
  OUTLINED_FUNCTION_12();
  v83 = v1;
  v82 = v2;
  v81 = v3;
  v73 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v75 = v7;
  MEMORY[0x28223BE20](v6);
  v74 = &v72 - v8;
  v9 = type metadata accessor for MusicPersonalRecommendation(0);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v20);
  v85 = &v72 - v21;
  v72 = v0;
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v22, v23, v24, v25);
  OUTLINED_FUNCTION_5_37();
  sub_21738C4B0(v26, v27, v28, v29);
  v30 = v87;
  v31 = v88;
  sub_217283C5C(v87, v88);
  v32 = v15;
  sub_2171F0738(&v87, &qword_27CB28678, &qword_21776DEA0);
  sub_21725CF00(v30, v31);
  v33 = 0;
  v91 = 0;
  v34 = v89;
  v86 = v90;
  v35 = MEMORY[0x277D84F90];
  v76 = v32;
  v84 = v18;
  v36 = v89;
  while (1)
  {
    if (v86)
    {
      swift_beginAccess();
      if (v33 == *(v34[7] + 16))
      {
        goto LABEL_28;
      }

      sub_2172943A8(v33, v18);
      goto LABEL_9;
    }

    v37 = v34[2];
    if (v33 == v37)
    {
LABEL_28:
      sub_2171F0738(&v89, &qword_27CB29710, &qword_21777D6E0);
      __swift_storeEnumTagSinglePayload(v85, 1, 1, v9);
      sub_21738C4B0(v72, &v89, &qword_27CB28678, &qword_21776DEA0);
      sub_21755602C(v35, &v89, v73);
      OUTLINED_FUNCTION_13();
      return;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_47_3();
    v40 = v74;
    sub_21738C4B0(v34 + v38 + *(v39 + 72) * v33, v74, &qword_27CB24978, &qword_21776DBA0);
    sub_217751DE8();
    sub_217293F44(v84);
    v18 = v84;
    v34 = v36;
    v32 = v76;
    sub_2171F0738(v40, &qword_27CB24978, &qword_21776DBA0);
LABEL_9:
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v18, v85, v41);
    v42 = __OFADD__(v33, 1);
    if (v86)
    {
      sub_21725CF00(v34, 1);
      if (v42)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_21725CF00(v34, 0);
      if (v42)
      {
        goto LABEL_30;
      }
    }

    v91 = v33 + 1;
    v43 = OUTLINED_FUNCTION_88_12();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v9);
    OUTLINED_FUNCTION_0_90();
    v46 = OUTLINED_FUNCTION_56_0();
    v49 = sub_21755FB2C(v46, v47, v48);
    v34 = &v72;
    MEMORY[0x28223BE20](v49);
    *(&v72 - 2) = v32;
    v50 = v79;
    v51 = v81;
    sub_217752198();
    v52 = OUTLINED_FUNCTION_78_13();
    if (__swift_getEnumTagSinglePayload(v52, v53, v9) == 1)
    {
      sub_2171F0738(v50, &qword_27CB24B58, &unk_21775A2A0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB88(v32, v78, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_151_7();
        v35 = v66;
      }

      OUTLINED_FUNCTION_154_7();
      if (v56)
      {
        v67 = OUTLINED_FUNCTION_57(v55);
        sub_2172B1610(v67, v51, 1, v35);
        v35 = v68;
      }
    }

    else
    {
      OUTLINED_FUNCTION_103_12();
      v57 = v80;
      sub_21755FB2C(v50, v80, v58);
      sub_21755FB88(v57, v77, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_151_7();
        v35 = v69;
      }

      OUTLINED_FUNCTION_154_7();
      v32 = v76;
      if (v56)
      {
        v70 = OUTLINED_FUNCTION_57(v59);
        sub_2172B1610(v70, v51, 1, v35);
        v35 = v71;
      }

      OUTLINED_FUNCTION_24_31();
      sub_21755FBE4(v80, v60);
    }

    *(v35 + 16) = v51;
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_103_12();
    sub_21755FB2C(v61, v62, v63);
    v64 = OUTLINED_FUNCTION_93();
    sub_21755FBE4(v64, v65);
    ++v33;
    v18 = v84;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_21755A160(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_217753058() & 1;
  }
}

uint64_t MusicPersonalRecommendationsResponse.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  *(v1 + 1216) = v0;
  *(v1 + 1208) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  *(v1 + 1224) = v5;
  OUTLINED_FUNCTION_15_3(v5);
  *(v1 + 1232) = v6;
  *(v1 + 1240) = swift_task_alloc();
  *(v1 + 1248) = swift_task_alloc();
  v7 = type metadata accessor for MusicPersonalRecommendation(0);
  *(v1 + 1256) = v7;
  OUTLINED_FUNCTION_15_3(v7);
  *(v1 + 1264) = v8;
  *(v1 + 1272) = swift_task_alloc();
  *(v1 + 1280) = swift_task_alloc();
  *(v1 + 1288) = swift_task_alloc();
  *(v1 + 1296) = swift_task_alloc();
  *(v1 + 1304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B58, &unk_21775A2A0);
  *(v1 + 1312) = swift_task_alloc();
  *(v1 + 233) = *v3;
  v9 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21755A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = &qword_21776DEA0;
  sub_21738C4B0(*(v14 + 1216), v14 + 352, &qword_27CB28678, &qword_21776DEA0);
  sub_21738C4B0(v14 + 352, v14 + 16, &qword_27CB28678, &qword_21776DEA0);
  v17 = *(v14 + 352);
  v18 = *(v14 + 360);
  sub_217283C5C(v17, v18);
  sub_2171F0738(v14 + 352, &qword_27CB28678, &qword_21776DEA0);
  sub_21725CF00(v17, v18);
  v19 = 0;
  *(v14 + 120) = 0;
  v20 = MEMORY[0x277D84F90];
  *(v14 + 1320) = *(v14 + 16);
  v21 = *(v14 + 24);
  *(v14 + 234) = v21;
  while (2)
  {
    *(v14 + 1328) = v20;
    v22 = *(v14 + 1320);
    if (v21)
    {
      OUTLINED_FUNCTION_113_11();
      if (v19 != *(*(v22 + 56) + 16))
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(v19, v16);
        goto LABEL_12;
      }

LABEL_25:
      sub_2171F0738(v14 + 16, &qword_27CB29710, &qword_21777D6E0);
      v79 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v79, v80, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_129_1();

      __asm { BRAA            X1, X16 }
    }

    v23 = *(v22 + 16);
    if (v19 == v23)
    {
      goto LABEL_25;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v19 >= v23)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_31_28();
    OUTLINED_FUNCTION_149_7(v25 + v24 * v19, v20);
    v26 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v26, v27);
    OUTLINED_FUNCTION_20_6();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = *(v14 + 1296);
    v30 = *(v14 + 1248);
    v31 = *(v14 + 1240);
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_98_15(*(v14 + 1320));
      sub_217292370(v29);

      sub_2171F0738(v30, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v32 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v32, v33, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v31, v29, v34);
    }

    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v35, v36, v37);
LABEL_12:
    v38 = *(v14 + 234);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v39, v40, v41);
    v42 = v19 + 1;
    LOBYTE(v20) = __OFADD__(v19, 1);
    v43 = *(v14 + 1320);
    if (v38)
    {
      sub_21725CF00(v43, 1);
      if (v20)
      {
        goto LABEL_68;
      }

LABEL_19:
      v20 = *(v14 + 1312);
      v44 = *(v14 + 1256);
      *(v14 + 1336) = v42;
      *(v14 + 120) = v42;
      v45 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
      OUTLINED_FUNCTION_0_90();
      v48 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v48, v49, v50);
      OUTLINED_FUNCTION_132_10();
      switch(*(v14 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v14 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_29;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_40;
          }

          goto LABEL_70;
        case 2:
          OUTLINED_FUNCTION_127_9((v14 + 128));
          OUTLINED_FUNCTION_159_8();
          v51 = *(v14 + 1288);
          v16 = *(v14 + 1280);
          v133 = *(v14 + 1272);
          v52 = *(v14 + 1256);
          v53 = *(v51 + 8);
          v54 = *(v51 + 24);
          v131 = *(v51 + 16);
          v132 = *v51;
          v55 = *(v51 + 32);
          v130 = *(v51 + 40);
          v128 = *(v51 + 64);
          v129 = *(v51 + 48);
          v126 = *(v51 + 72);
          v127 = *(v51 + 56);
          sub_21738C4B0(v51 + v52[10], v16 + v52[10], &qword_27CB241C0, &qword_217759480);
          v123 = *(v51 + v52[11]);
          v124 = *(v51 + v52[12]);
          v56 = (v51 + v52[13]);
          v57 = *v56;
          v15 = v56[1];
          v58 = v56[2];
          v122 = *(v51 + v52[14]);
          v121 = *(v51 + v52[15]);
          sub_21755F734(v14 + 128, v16 + v52[16]);
          v59 = *(v51 + v52[17]);
          v125 = *(v51 + v52[18]);
          v60 = *(v51 + v52[19]);
          v61 = *(v51 + v52[20]);
          *v16 = v132;
          v16[1] = v53;
          v16[2] = v131;
          v16[3] = v54;
          v16[4] = v55;
          *(v16 + 40) = v130;
          v16[6] = v129;
          v16[7] = v127;
          v16[8] = v128;
          v16[9] = v126;
          *(v16 + v52[11]) = v123;
          *(v16 + v52[12]) = v124;
          v62 = (v16 + v52[13]);
          *v62 = v57;
          v62[1] = v15;
          v62[2] = v58;
          *(v16 + v52[14]) = v122;
          *(v16 + v52[15]) = v121;
          *(v16 + v52[17]) = v59;
          *(v16 + v52[18]) = v125;
          *(v16 + v52[19]) = v60;
          *(v16 + v52[20]) = v61;
          OUTLINED_FUNCTION_0_90();
          sub_21755FB88(v16, v133, v63);
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_2172E1074(v57, v15, v58);
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = *(v14 + 1328);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v69 = OUTLINED_FUNCTION_21_3();
            sub_2172B1610(v69, v70, v71, v72);
            v20 = v73;
          }

          OUTLINED_FUNCTION_117_13();
          if (v66)
          {
            OUTLINED_FUNCTION_57(v65);
            OUTLINED_FUNCTION_79_15();
            sub_2172B1610(v74, v75, v76, v77);
            v20 = v78;
          }

          v67 = OUTLINED_FUNCTION_16_47();
          sub_21755FBE4(v67, v68);
          sub_21755F790(v14 + 128);
          OUTLINED_FUNCTION_166_7();
          OUTLINED_FUNCTION_47_21();
          v19 = *(v14 + 1336);
          v21 = *(v14 + 234);
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v14 + 1424) = v94;
          *v94 = v95;
          OUTLINED_FUNCTION_14_40(v94);
          OUTLINED_FUNCTION_129_1();

          return sub_21750A118(v96, v97);
        default:
          OUTLINED_FUNCTION_127_9((v14 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_33;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
          }

          OUTLINED_FUNCTION_46_14();
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
          }

          v106 = off_280BE71C8;
          if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
          {
            OUTLINED_FUNCTION_30_18();
            v107 = OUTLINED_FUNCTION_153();
            v15(v107);
            OUTLINED_FUNCTION_148_6();
            v108 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v108, v109, v110, v111, v112);
            v106 = v134;
          }

          else
          {
            sub_217751DE8();
          }

          if (v106[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v20)
            {
LABEL_33:
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v14 + 1344) = v89;
              *v89 = v90;
              OUTLINED_FUNCTION_13_41(v89);
              OUTLINED_FUNCTION_129_1();

              return sub_217509B44(v91, v92);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v14 + 1376) = v117;
          *v117 = v118;
          OUTLINED_FUNCTION_19_28(v117);
          OUTLINED_FUNCTION_129_1();

          result = sub_21755EB98(v119);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v43, 0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
LABEL_40:
  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
  }

  v99 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_30_18();
    v100 = OUTLINED_FUNCTION_153();
    v15(v100);
    OUTLINED_FUNCTION_148_6();
    v101 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v101, v102, v103, v104, v105);
    v99 = v134;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v99[2])
  {

LABEL_55:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v14 + 1416) = v113;
    *v113 = v114;
    OUTLINED_FUNCTION_18_38(v113);
    OUTLINED_FUNCTION_129_1();

    return sub_21755DC2C(v115);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v20 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_29:
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v14 + 1384) = v83;
  *v83 = v84;
  OUTLINED_FUNCTION_15_45(v83);
  OUTLINED_FUNCTION_129_1();

  return sub_217508FA4(v85, v86);
}

uint64_t sub_21755AC24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 1352) = v0;

  if (!v0)
  {
    *(v3 + 1360) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21755AD20()
{
  OUTLINED_FUNCTION_10();

  *(v0 + 1368) = *(v0 + 1352);
  v1 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_21755AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_847();
  sub_2171F0738(v35 + 872, &qword_27CB25388, &unk_21775D410);
  memcpy((v35 + 128), (v35 + 976), 0x68uLL);
  *(v35 + 232) = 0;
  v134 = *(v35 + 1360);
  while (2)
  {
    v42 = OUTLINED_FUNCTION_33_28();
    sub_21738C4B0(v42, v43, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_51_18();
    v135 = *(v39 + v33[17]);
    v136 = *(v39 + v33[18]);
    v137 = *(v39 + v33[19]);
    v44 = *(v39 + v33[20]);
    *v34 = a25;
    *(v34 + 8) = v38;
    *(v34 + 16) = a24;
    *(v34 + 24) = v40;
    *(v34 + 32) = v32;
    *(v34 + 40) = BYTE4(a23);
    v39 = a20;
    *(v34 + 48) = a22;
    *(v34 + 56) = a20;
    *(v34 + 64) = a21;
    *(v34 + 72) = a19;
    *(v34 + v33[11]) = a13;
    *(v34 + v33[12]) = BYTE4(a13);
    v45 = (v34 + v33[13]);
    *v45 = v36;
    v45[1] = v41;
    v45[2] = v37;
    *(v34 + v33[14]) = BYTE4(a12);
    *(v34 + v33[15]) = a11;
    *(v34 + v33[17]) = v135;
    *(v34 + v33[18]) = v136;
    *(v34 + v33[19]) = v137;
    *(v34 + v33[20]) = v44;
    OUTLINED_FUNCTION_0_90();
    sub_21755FB88(v34, a26, v46);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_152_10();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v35 + 1328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v76 = OUTLINED_FUNCTION_21_3();
      sub_2172B1610(v76, v77, v78, v79);
      v33 = v80;
    }

    OUTLINED_FUNCTION_117_13();
    v40 = &qword_21776DBA0;
    if (v48)
    {
      OUTLINED_FUNCTION_79_15();
      sub_2172B1610(v81, v82, v83, v84);
      v33 = v85;
    }

    v49 = OUTLINED_FUNCTION_16_47();
    sub_21755FBE4(v49, v50);
    sub_21755F790(v35 + 128);
    OUTLINED_FUNCTION_166_7();
    OUTLINED_FUNCTION_47_21();
    OUTLINED_FUNCTION_119_11();
    if (v51)
    {
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_145_5();
      if (!v52)
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(a20, a19);
        goto LABEL_16;
      }

LABEL_22:
      OUTLINED_FUNCTION_46_23();
      sub_2171F0738(v35 + 16, &qword_27CB29710, &qword_21777D6E0);
      v86 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v86, v87, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_807();

      return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, v134, a11, a12, a13, a14, v135, v136, a17, v137, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v53 = v36[2];
    if (a20 == v53)
    {
      goto LABEL_22;
    }

    if ((a20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (a20 >= v53)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_31_28();
    v36 = &qword_27CB24978;
    OUTLINED_FUNCTION_149_7(v55 + v54 * a20, v33);
    v56 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v56, v57);
    OUTLINED_FUNCTION_20_6();
    swift_getEnumCaseMultiPayload();
    v58 = OUTLINED_FUNCTION_81_14();
    if (v52)
    {
      OUTLINED_FUNCTION_98_15(v58);
      OUTLINED_FUNCTION_153_7();

      sub_2171F0738(a19, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v59 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v59, v60, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v34, v38, v61);
    }

    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v62, v63, v64);
LABEL_16:
    v65 = *(v35 + 234);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_144_7();
    if (v65)
    {
      sub_21725CF00(v69, 1);
      if (v33)
      {
        goto LABEL_65;
      }

LABEL_20:
      v33 = *(v35 + 1312);
      v32 = *(v35 + 1288);
      v34 = *(v35 + 1256);
      *(v35 + 1336) = v36;
      *(v35 + 120) = v36;
      v70 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v34);
      OUTLINED_FUNCTION_0_90();
      v73 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v73, v74, v75);
      OUTLINED_FUNCTION_132_10();
      switch(*(v35 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v35 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_26;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_67;
        case 2:
          OUTLINED_FUNCTION_127_9((v35 + 128));
          OUTLINED_FUNCTION_159_8();
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1424) = v107;
          *v107 = v108;
          OUTLINED_FUNCTION_14_40(v107);
          OUTLINED_FUNCTION_807();

          return sub_21750A118(v109, v110);
        default:
          OUTLINED_FUNCTION_127_9((v35 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_30;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
          }

          OUTLINED_FUNCTION_46_14();
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
          }

          v119 = off_280BE71C8;
          if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
          {
            OUTLINED_FUNCTION_30_18();
            v120 = OUTLINED_FUNCTION_153();
            (v41)(v120);
            OUTLINED_FUNCTION_148_6();
            v121 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v121, v122, v123, v124, v125);
            v119 = a28;
          }

          else
          {
            sub_217751DE8();
          }

          if (v119[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v33)
            {
LABEL_30:
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v35 + 1344) = v102;
              *v102 = v103;
              OUTLINED_FUNCTION_13_41(v102);
              OUTLINED_FUNCTION_807();

              return sub_217509B44(v104, v105);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1376) = v130;
          *v130 = v131;
          OUTLINED_FUNCTION_19_28(v130);
          OUTLINED_FUNCTION_807();

          result = sub_21755EB98(v132);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v69, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
LABEL_37:
  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
  }

  v112 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_30_18();
    v113 = OUTLINED_FUNCTION_153();
    (v41)(v113);
    OUTLINED_FUNCTION_148_6();
    v114 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v114, v115, v116, v117, v118);
    v112 = a28;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v112[2])
  {

LABEL_52:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v35 + 1416) = v126;
    *v126 = v127;
    OUTLINED_FUNCTION_18_38(v126);
    OUTLINED_FUNCTION_807();

    return sub_21755DC2C(v128);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v35 + 1384) = v97;
  *v97 = v98;
  OUTLINED_FUNCTION_15_45(v97);
  OUTLINED_FUNCTION_807();

  return sub_217508FA4(v99, v100);
}

uint64_t sub_21755B4F8()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1288);
  sub_2171F0738(v0 + 872, &qword_27CB25388, &unk_21775D410);
  OUTLINED_FUNCTION_24_31();
  sub_21755FBE4(v1, v2);
  sub_2171F0738(v0 + 16, &qword_27CB29710, &qword_21777D6E0);
  OUTLINED_FUNCTION_80_14();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21755B5E0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {

    *(v3 + 1368) = v0;
  }

  else
  {
    *(v3 + 1360) = 0;
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21755B6EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 1392) = v0;

  if (!v0)
  {
    *(v3 + 1400) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21755B7E8()
{
  OUTLINED_FUNCTION_10();

  *(v0 + 1408) = *(v0 + 1392);
  v1 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_21755B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_847();
  sub_2171F0738(v35 + 664, &unk_27CB28230, &unk_21775CD50);
  memcpy((v35 + 128), (v35 + 768), 0x68uLL);
  *(v35 + 232) = 1;
  v134 = *(v35 + 1400);
  while (2)
  {
    v42 = OUTLINED_FUNCTION_33_28();
    sub_21738C4B0(v42, v43, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_51_18();
    v135 = *(v39 + v33[17]);
    v136 = *(v39 + v33[18]);
    v137 = *(v39 + v33[19]);
    v44 = *(v39 + v33[20]);
    *v34 = a25;
    *(v34 + 8) = v38;
    *(v34 + 16) = a24;
    *(v34 + 24) = v40;
    *(v34 + 32) = v32;
    *(v34 + 40) = BYTE4(a23);
    v39 = a20;
    *(v34 + 48) = a22;
    *(v34 + 56) = a20;
    *(v34 + 64) = a21;
    *(v34 + 72) = a19;
    *(v34 + v33[11]) = a13;
    *(v34 + v33[12]) = BYTE4(a13);
    v45 = (v34 + v33[13]);
    *v45 = v36;
    v45[1] = v41;
    v45[2] = v37;
    *(v34 + v33[14]) = BYTE4(a12);
    *(v34 + v33[15]) = a11;
    *(v34 + v33[17]) = v135;
    *(v34 + v33[18]) = v136;
    *(v34 + v33[19]) = v137;
    *(v34 + v33[20]) = v44;
    OUTLINED_FUNCTION_0_90();
    sub_21755FB88(v34, a26, v46);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_152_10();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v35 + 1328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v76 = OUTLINED_FUNCTION_21_3();
      sub_2172B1610(v76, v77, v78, v79);
      v33 = v80;
    }

    OUTLINED_FUNCTION_117_13();
    v40 = &qword_21776DBA0;
    if (v48)
    {
      OUTLINED_FUNCTION_79_15();
      sub_2172B1610(v81, v82, v83, v84);
      v33 = v85;
    }

    v49 = OUTLINED_FUNCTION_16_47();
    sub_21755FBE4(v49, v50);
    sub_21755F790(v35 + 128);
    OUTLINED_FUNCTION_166_7();
    OUTLINED_FUNCTION_47_21();
    OUTLINED_FUNCTION_119_11();
    if (v51)
    {
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_145_5();
      if (!v52)
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(a20, a19);
        goto LABEL_16;
      }

LABEL_22:
      OUTLINED_FUNCTION_46_23();
      sub_2171F0738(v35 + 16, &qword_27CB29710, &qword_21777D6E0);
      v86 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v86, v87, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_807();

      return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, v134, a11, a12, a13, a14, v135, v136, a17, v137, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v53 = v36[2];
    if (a20 == v53)
    {
      goto LABEL_22;
    }

    if ((a20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (a20 >= v53)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_31_28();
    v36 = &qword_27CB24978;
    OUTLINED_FUNCTION_149_7(v55 + v54 * a20, v33);
    v56 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v56, v57);
    OUTLINED_FUNCTION_20_6();
    swift_getEnumCaseMultiPayload();
    v58 = OUTLINED_FUNCTION_81_14();
    if (v52)
    {
      OUTLINED_FUNCTION_98_15(v58);
      OUTLINED_FUNCTION_153_7();

      sub_2171F0738(a19, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v59 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v59, v60, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v34, v38, v61);
    }

    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v62, v63, v64);
LABEL_16:
    v65 = *(v35 + 234);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_144_7();
    if (v65)
    {
      sub_21725CF00(v69, 1);
      if (v33)
      {
        goto LABEL_65;
      }

LABEL_20:
      v33 = *(v35 + 1312);
      v32 = *(v35 + 1288);
      v34 = *(v35 + 1256);
      *(v35 + 1336) = v36;
      *(v35 + 120) = v36;
      v70 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v34);
      OUTLINED_FUNCTION_0_90();
      v73 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v73, v74, v75);
      OUTLINED_FUNCTION_132_10();
      switch(*(v35 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v35 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_26;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_67;
        case 2:
          OUTLINED_FUNCTION_127_9((v35 + 128));
          OUTLINED_FUNCTION_159_8();
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1424) = v107;
          *v107 = v108;
          OUTLINED_FUNCTION_14_40(v107);
          OUTLINED_FUNCTION_807();

          return sub_21750A118(v109, v110);
        default:
          OUTLINED_FUNCTION_127_9((v35 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_30;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
          }

          OUTLINED_FUNCTION_46_14();
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
          }

          v119 = off_280BE71C8;
          if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
          {
            OUTLINED_FUNCTION_30_18();
            v120 = OUTLINED_FUNCTION_153();
            (v41)(v120);
            OUTLINED_FUNCTION_148_6();
            v121 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v121, v122, v123, v124, v125);
            v119 = a28;
          }

          else
          {
            sub_217751DE8();
          }

          if (v119[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v33)
            {
LABEL_30:
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v35 + 1344) = v102;
              *v102 = v103;
              OUTLINED_FUNCTION_13_41(v102);
              OUTLINED_FUNCTION_807();

              return sub_217509B44(v104, v105);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1376) = v130;
          *v130 = v131;
          OUTLINED_FUNCTION_19_28(v130);
          OUTLINED_FUNCTION_807();

          result = sub_21755EB98(v132);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v69, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
LABEL_37:
  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
  }

  v112 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_30_18();
    v113 = OUTLINED_FUNCTION_153();
    (v41)(v113);
    OUTLINED_FUNCTION_148_6();
    v114 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v114, v115, v116, v117, v118);
    v112 = a28;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v112[2])
  {

LABEL_52:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v35 + 1416) = v126;
    *v126 = v127;
    OUTLINED_FUNCTION_18_38(v126);
    OUTLINED_FUNCTION_807();

    return sub_21755DC2C(v128);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v35 + 1384) = v97;
  *v97 = v98;
  OUTLINED_FUNCTION_15_45(v97);
  OUTLINED_FUNCTION_807();

  return sub_217508FA4(v99, v100);
}

uint64_t sub_21755BFC4()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1288);
  sub_2171F0738(v0 + 664, &unk_27CB28230, &unk_21775CD50);
  OUTLINED_FUNCTION_24_31();
  sub_21755FBE4(v1, v2);
  sub_2171F0738(v0 + 16, &qword_27CB29710, &qword_21777D6E0);
  OUTLINED_FUNCTION_80_14();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21755C0AC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  if (v0)
  {

    *(v3 + 1408) = v0;
  }

  else
  {
    *(v3 + 1400) = 0;
  }

  OUTLINED_FUNCTION_4_25();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21755C1B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21755C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_847();
  sub_2171F0738(v35 + 456, &qword_27CB25928, &unk_21775D9A0);
  memcpy((v35 + 128), (v35 + 560), 0x68uLL);
  *(v35 + 232) = 3;
  v134 = *(v35 + 1432);
  while (2)
  {
    v42 = OUTLINED_FUNCTION_33_28();
    sub_21738C4B0(v42, v43, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_51_18();
    v135 = *(v39 + v33[17]);
    v136 = *(v39 + v33[18]);
    v137 = *(v39 + v33[19]);
    v44 = *(v39 + v33[20]);
    *v34 = a25;
    *(v34 + 8) = v38;
    *(v34 + 16) = a24;
    *(v34 + 24) = v40;
    *(v34 + 32) = v32;
    *(v34 + 40) = BYTE4(a23);
    v39 = a20;
    *(v34 + 48) = a22;
    *(v34 + 56) = a20;
    *(v34 + 64) = a21;
    *(v34 + 72) = a19;
    *(v34 + v33[11]) = a13;
    *(v34 + v33[12]) = BYTE4(a13);
    v45 = (v34 + v33[13]);
    *v45 = v36;
    v45[1] = v41;
    v45[2] = v37;
    *(v34 + v33[14]) = BYTE4(a12);
    *(v34 + v33[15]) = a11;
    *(v34 + v33[17]) = v135;
    *(v34 + v33[18]) = v136;
    *(v34 + v33[19]) = v137;
    *(v34 + v33[20]) = v44;
    OUTLINED_FUNCTION_0_90();
    sub_21755FB88(v34, a26, v46);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_152_10();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v35 + 1328);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v76 = OUTLINED_FUNCTION_21_3();
      sub_2172B1610(v76, v77, v78, v79);
      v33 = v80;
    }

    OUTLINED_FUNCTION_117_13();
    v40 = &qword_21776DBA0;
    if (v48)
    {
      OUTLINED_FUNCTION_79_15();
      sub_2172B1610(v81, v82, v83, v84);
      v33 = v85;
    }

    v49 = OUTLINED_FUNCTION_16_47();
    sub_21755FBE4(v49, v50);
    sub_21755F790(v35 + 128);
    OUTLINED_FUNCTION_166_7();
    OUTLINED_FUNCTION_47_21();
    OUTLINED_FUNCTION_119_11();
    if (v51)
    {
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_145_5();
      if (!v52)
      {
        OUTLINED_FUNCTION_134_9();
        sub_2172943A8(a20, a19);
        goto LABEL_16;
      }

LABEL_22:
      OUTLINED_FUNCTION_46_23();
      sub_2171F0738(v35 + 16, &qword_27CB29710, &qword_21777D6E0);
      v86 = OUTLINED_FUNCTION_107_8();
      OUTLINED_FUNCTION_167_9(v86, v87, &qword_27CB28678, &qword_21776DEA0);
      OUTLINED_FUNCTION_130_10();

      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_807();

      return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, v134, a11, a12, a13, a14, v135, v136, a17, v137, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
    }

    v53 = v36[2];
    if (a20 == v53)
    {
      goto LABEL_22;
    }

    if ((a20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    if (a20 >= v53)
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_31_28();
    v36 = &qword_27CB24978;
    OUTLINED_FUNCTION_149_7(v55 + v54 * a20, v33);
    v56 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_149_7(v56, v57);
    OUTLINED_FUNCTION_20_6();
    swift_getEnumCaseMultiPayload();
    v58 = OUTLINED_FUNCTION_81_14();
    if (v52)
    {
      OUTLINED_FUNCTION_98_15(v58);
      OUTLINED_FUNCTION_153_7();

      sub_2171F0738(a19, &qword_27CB24978, &qword_21776DBA0);
    }

    else
    {
      sub_217751DE8();
      v59 = OUTLINED_FUNCTION_145_0();
      sub_2171F0738(v59, v60, &qword_21776DBA0);
      OUTLINED_FUNCTION_0_90();
      sub_21755FB2C(v34, v38, v61);
    }

    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v62, v63, v64);
LABEL_16:
    v65 = *(v35 + 234);
    OUTLINED_FUNCTION_0_90();
    sub_21755FB2C(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_144_7();
    if (v65)
    {
      sub_21725CF00(v69, 1);
      if (v33)
      {
        goto LABEL_65;
      }

LABEL_20:
      v33 = *(v35 + 1312);
      v32 = *(v35 + 1288);
      v34 = *(v35 + 1256);
      *(v35 + 1336) = v36;
      *(v35 + 120) = v36;
      v70 = OUTLINED_FUNCTION_88_12();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v34);
      OUTLINED_FUNCTION_0_90();
      v73 = OUTLINED_FUNCTION_56_0();
      sub_21755FB2C(v73, v74, v75);
      OUTLINED_FUNCTION_132_10();
      switch(*(v35 + 344))
      {
        case 1:
          OUTLINED_FUNCTION_127_9((v35 + 664));
          if (dynamic_cast_existential_1_conditional(&type metadata for Playlist, &type metadata for Playlist, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_26;
          }

          if (qword_280BE84D8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_67;
        case 2:
          OUTLINED_FUNCTION_127_9((v35 + 128));
          OUTLINED_FUNCTION_159_8();
          continue;
        case 3:
          OUTLINED_FUNCTION_110_10();
          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1424) = v107;
          *v107 = v108;
          OUTLINED_FUNCTION_14_40(v107);
          OUTLINED_FUNCTION_807();

          return sub_21750A118(v109, v110);
        default:
          OUTLINED_FUNCTION_127_9((v35 + 872));
          if (dynamic_cast_existential_1_conditional(&type metadata for Album, &type metadata for Album, &protocol descriptor for PolymorphicMusicItem))
          {
            goto LABEL_30;
          }

          if (qword_280BE85B8 != -1)
          {
            OUTLINED_FUNCTION_41_1(&qword_280BE85B8);
          }

          OUTLINED_FUNCTION_46_14();
          if (qword_280BE71C0 != -1)
          {
            OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
          }

          v119 = off_280BE71C8;
          if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
          {
            OUTLINED_FUNCTION_30_18();
            v120 = OUTLINED_FUNCTION_153();
            (v41)(v120);
            OUTLINED_FUNCTION_148_6();
            v121 = OUTLINED_FUNCTION_3_74();
            sub_21755F7E4(v121, v122, v123, v124, v125);
            v119 = a28;
          }

          else
          {
            sub_217751DE8();
          }

          if (v119[2])
          {
            OUTLINED_FUNCTION_50_20();
            OUTLINED_FUNCTION_66_9();
            if (v33)
            {
LABEL_30:
              swift_task_alloc();
              OUTLINED_FUNCTION_36_1();
              *(v35 + 1344) = v102;
              *v102 = v103;
              OUTLINED_FUNCTION_13_41(v102);
              OUTLINED_FUNCTION_807();

              return sub_217509B44(v104, v105);
            }
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_36_1();
          *(v35 + 1376) = v130;
          *v130 = v131;
          OUTLINED_FUNCTION_19_28(v130);
          OUTLINED_FUNCTION_807();

          result = sub_21755EB98(v132);
          break;
      }

      return result;
    }

    break;
  }

  sub_21725CF00(v69, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  OUTLINED_FUNCTION_44_0(&qword_280BE84D8);
LABEL_37:
  OUTLINED_FUNCTION_46_14();
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_9_45(&qword_280BE71C0);
  }

  v112 = off_280BE71C8;
  if (dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind, &type metadata for _MusicLibraryMapping.ItemKind, &protocol descriptor for _MusicLibraryMappingExtendedItemKindsProviding))
  {
    OUTLINED_FUNCTION_30_18();
    v113 = OUTLINED_FUNCTION_153();
    (v41)(v113);
    OUTLINED_FUNCTION_148_6();
    v114 = OUTLINED_FUNCTION_3_74();
    sub_21755F7E4(v114, v115, v116, v117, v118);
    v112 = a28;
  }

  else
  {
    sub_217751DE8();
  }

  if (!v112[2])
  {

LABEL_52:
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v35 + 1416) = v126;
    *v126 = v127;
    OUTLINED_FUNCTION_18_38(v126);
    OUTLINED_FUNCTION_807();

    return sub_21755DC2C(v128);
  }

  OUTLINED_FUNCTION_50_20();
  OUTLINED_FUNCTION_66_9();
  if ((v33 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_26:
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v35 + 1384) = v97;
  *v97 = v98;
  OUTLINED_FUNCTION_15_45(v97);
  OUTLINED_FUNCTION_807();

  return sub_217508FA4(v99, v100);
}

uint64_t sub_21755CA28()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 1288);

  sub_2171F0738(v0 + 456, &qword_27CB25928, &unk_21775D9A0);
  OUTLINED_FUNCTION_24_31();
  sub_21755FBE4(v1, v2);
  sub_2171F0738(v0 + 16, &qword_27CB29710, &qword_21777D6E0);
  OUTLINED_FUNCTION_80_14();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_21755CB18()
{
  OUTLINED_FUNCTION_30_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return MusicPersonalRecommendationsResponse.libraryMapped(policy:scope:)();
}

uint64_t MusicPersonalRecommendationsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2171FF30C(a1, v18);
  sub_21765E96C(v18, v19);
  if (!v2)
  {
    sub_2174B961C(v19, v18);
    v5 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v7 = OUTLINED_FUNCTION_140_9();
    Decoder.dataRequestConfiguration.getter(v7, v8);
    v9 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_140_9();
    Decoder.sharedRelatedItemStore.getter();
    v11 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
    if (v18[16] >= 2uLL)
    {
      v12 = sub_217751DE8();
      sub_2174BEF8C(v12);
      Array<A>.update(with:)(v13);

      v11 = v20;
    }

    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_2174B9678(v11, v17, a2);

    sub_2171F0738(v15, &qword_27CB24188, &dword_217758930);
    sub_21733AB9C(v17);
    sub_2174B9AF4(v18);
    sub_2174B9AF4(v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPersonalRecommendationsResponse.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = OUTLINED_FUNCTION_140_9();
  Encoder.dataRequestConfiguration.getter(v3, v4);
  sub_21755CDB0(v7);
  result = sub_21733AB9C(&v6);
  if (!v1)
  {
    sub_21765EE98(a1);
    return sub_2174B9AF4(v7);
  }

  return result;
}

double sub_21755CDB0@<D0>(uint64_t a1@<X8>)
{
  sub_2172ECF40();
  sub_21738C4B0(v1 + 16, v6, &qword_27CB24188, &dword_217758930);
  if (!v7)
  {
    sub_2171F0738(v6, &qword_27CB24188, &dword_217758930);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_7;
  }

  sub_2171FF30C(v6, v12);
  sub_217283154(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    sub_2171F0738(&v8, &qword_27CB29730, &unk_217778840);
    v3 = 1;
    goto LABEL_8;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  v3 = sub_2174BF360(v9);
  sub_2174BF6D8(v12);
LABEL_8:
  *(a1 + 72) = v17;
  *(a1 + 88) = v18;
  v4 = v13;
  *(a1 + 104) = v19;
  *a1 = v12[4];
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  *(a1 + 40) = v15;
  *(a1 + 56) = v16;
  result = *&v20;
  *(a1 + 112) = v20;
  *(a1 + 128) = v3;
  return result;
}

uint64_t sub_21755CF68(uint64_t a1)
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_217597FF4();
  sub_21738C4B0(v1 + 16, v8, &qword_27CB24188, &dword_217758930);
  v2 = v8[3];
  sub_2171F0738(v8, &qword_27CB24188, &dword_217758930);
  if (v2)
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  v8[0] = 0xD000000000000025;
  v8[1] = 0x80000002177B0980;
  v3 = v9;
  v4 = v10;
  MEMORY[0x21CEA23B0](v9, v10);

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v5);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v5);
  return v8[0];
}

uint64_t sub_21755D0B0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755D0C4()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_2175589B0(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_65_20();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217283AFC(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_2177871D0);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755D1F8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_217283B58(v7);
  }

  else
  {
    sub_217283B58(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755D318()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283AFC(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B0E30(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B0E30(v23, v24, v25, v26);
  }

  sub_217283B58(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_65_20();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217283AFC(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_2177871D0);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755D47C(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755D49C, 0, 0);
}

void sub_21755D49C()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217558FF0(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_74_14();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217283C68(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787520);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755D5D0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_217283CC4(v7);
  }

  else
  {
    sub_217283CC4(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755D6F0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283C68(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B0F14(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B0F14(v23, v24, v25, v26);
  }

  sub_217283CC4(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_74_14();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217283C68(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787520);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755D854(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755D874, 0, 0);
}

void sub_21755D874()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217558688(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_73_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217284338(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_2177874E0);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755D9A8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_217284394(v7);
  }

  else
  {
    sub_217284394(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755DAC8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217284338(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B0FF8(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B0FF8(v23, v24, v25, v26);
  }

  sub_217284394(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_73_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217284338(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_2177874E0);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755DC2C(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755DC40()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217558024(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_72_13();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_2172757C0(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787268);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755DD74()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_21726B8C4(v7);
  }

  else
  {
    sub_21726B8C4(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755DE94()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_2172757C0(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B10DC(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B10DC(v23, v24, v25, v26);
  }

  sub_21726B8C4(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_72_13();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_2172757C0(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787268);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755DFF8(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755E00C()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217558CC8(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_71_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217283BAC(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787398);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755E140()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_217283C08(v7);
  }

  else
  {
    sub_217283C08(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755E260()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283BAC(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B11C0(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B11C0(v23, v24, v25, v26);
  }

  sub_217283C08(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_71_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217283BAC(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787398);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755E3E8(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755E408, 0, 0);
}

void sub_21755E408()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_21755881C(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_70_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217284288(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787598);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755E53C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_2172842E4(v7);
  }

  else
  {
    sub_2172842E4(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755E65C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217284288(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B12A4(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B12A4(v23, v24, v25, v26);
  }

  sub_2172842E4(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_70_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217284288(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787598);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755E7C0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755E7E0, 0, 0);
}

void sub_21755E7E0()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_2175581A8(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_69_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_21725CF68(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787308);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755E914()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_217284498(v7);
  }

  else
  {
    sub_217284498(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755EA34()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_21725CF68(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B1388(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B1388(v23, v24, v25, v26);
  }

  sub_217284498(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_69_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_21725CF68(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787308);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755EB98(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return OUTLINED_FUNCTION_20();
}

void sub_21755EBAC()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217557EA0(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_68_17();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_21725CF0C(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787118);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755ECE0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_21725CE44(v7);
  }

  else
  {
    sub_21725CE44(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755EE00()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_21725CF0C(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B146C(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B146C(v23, v24, v25, v26);
  }

  sub_21725CE44(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_68_17();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_21725CF0C(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787118);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755EF64(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755EF84, 0, 0);
}

void sub_21755EF84()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217558E5C(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_67_15();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217284130(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787348);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755F0B8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_21728418C(v7);
  }

  else
  {
    sub_21728418C(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755F1D8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217284130(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B2848(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B2848(v23, v24, v25, v26);
  }

  sub_21728418C(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_67_15();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217284130(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787348);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755F33C(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_21755F35C, 0, 0);
}

void sub_21755F35C()
{
  OUTLINED_FUNCTION_173_0();
  v16 = v0;
  OUTLINED_FUNCTION_209();
  v2 = sub_217558B44(v1);
  OUTLINED_FUNCTION_112_12(v2);
  OUTLINED_FUNCTION_111_12(v3);
  if (!v5)
  {

    OUTLINED_FUNCTION_61_14();
    OUTLINED_FUNCTION_66_14();
    OUTLINED_FUNCTION_63_18();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1385();

    __asm { BRAA            X1, X16 }
  }

  if (*(v4 + 16))
  {
    v6 = OUTLINED_FUNCTION_109_11(v4);
    sub_217283D6C(v6, v7);
    OUTLINED_FUNCTION_9_14(&unk_217787548);
    v15 = v8;
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_35_25(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_10_43(v10);

    v15(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21755F490()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_53_19();
    sub_217283DC8(v7);
  }

  else
  {
    sub_217283DC8(v3 + 120);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_21755F5B0()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_28_35();
  sub_217283D6C(v1, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_21_3();
    sub_2172B2878(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_52_0();
  if (v12)
  {
    OUTLINED_FUNCTION_55_19();
    sub_2172B2878(v23, v24, v25, v26);
  }

  sub_217283DC8(v0 + 176);
  OUTLINED_FUNCTION_2_83();
  if (v3)
  {
    OUTLINED_FUNCTION_137_8();
    OUTLINED_FUNCTION_62_17();
    OUTLINED_FUNCTION_66_14();
    OUTLINED_FUNCTION_45_26();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_1322();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_54_19();
  if (!v12)
  {
    v14 = OUTLINED_FUNCTION_27_35(v13);
    sub_217283D6C(v14, v15);
    OUTLINED_FUNCTION_9_14(&unk_217787548);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_35_25(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_10_43(v17);
    OUTLINED_FUNCTION_1322();

LABEL_9:
    v5(v4, v5, v6, v7, v8, v9, v10, v11);
    return;
  }

  __break(1u);
}

uint64_t sub_21755F7E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v73 = a5;
  sub_217747F44();
  v8 = v67;
  v9 = v69;
  v10 = v70;
  v52 = v71;
  v54 = v66;
  v55 = v72;
  v46 = v68;
  v11 = (v68 + 64) >> 6;
  v48 = a1;
  sub_217751DE8();
  v47 = a3;

  v50 = v11;
  v51 = v67;
  while (1)
  {
    v12 = v10;
    v13 = v9;
    if (!v10)
    {
      break;
    }

LABEL_7:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = *(v54 + 48) + 32 * v15;
    LOBYTE(v15) = *(*(v54 + 56) + v15);
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    v57 = *v16;
    v58 = v18;
    v59 = v17;
    LOBYTE(v60) = v15;
    sub_217751DE8();
    v52(&v61, &v57);

    v19 = v61;
    if (!v61)
    {
LABEL_19:
      sub_2172303F0(v54);
    }

    v20 = v62;
    v21 = v64;
    HIDWORD(v53) = v65;
    v22 = *v73;
    v56 = v63;
    v30 = sub_217632574();
    v31 = v22[2];
    v32 = (v23 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_21;
    }

    v34 = v23;
    if (v22[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29738, &qword_217778850);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217746B80(v33, a4 & 1, v24, v25, v26, v27, v28, v29, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
      v35 = sub_217632574();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v30 = v35;
    }

    v37 = (v12 - 1) & v12;
    v38 = *v73;
    if (v34)
    {
      v39 = *(v38[7] + v30);

      *(v38[7] + v30) = v39;
    }

    else
    {
      v38[(v30 >> 6) + 8] |= 1 << v30;
      v40 = (v38[6] + 32 * v30);
      *v40 = v19;
      v40[1] = v20;
      v40[2] = v56;
      v40[3] = v21;
      *(v38[7] + v30) = BYTE4(v53);
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_22;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v9 = v13;
    v11 = v50;
    v8 = v51;
    v10 = v37;
  }

  v14 = v9;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_19;
    }

    v12 = *(v8 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

unint64_t sub_21755FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB29718;
  if (!qword_27CB29718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB29718);
  }

  return result;
}

uint64_t sub_21755FB2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_21755FB88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t sub_21755FBE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21755FC3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_21_34()
{
  v1 = *(v0 - 288);
  *(v0 - 240) = *(v0 - 304);
  *(v0 - 224) = v1;
  *(v0 - 208) = *(v0 - 272);
  result = *(v0 - 263);
  *(v0 - 199) = result;
  return result;
}

void OUTLINED_FUNCTION_45_26()
{

  sub_217555C40();
}

void OUTLINED_FUNCTION_46_23()
{
  v2 = v0[156];
  *(v1 - 112) = v0[159];
  *(v1 - 104) = v2;
  *(v1 - 96) = v0[155];
}

uint64_t OUTLINED_FUNCTION_47_21()
{
  *(v1 + 16) = v0;
  v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4;

  return sub_21755FB2C(v2, v7, v3);
}

unint64_t OUTLINED_FUNCTION_50_20()
{

  return sub_217632574();
}

uint64_t OUTLINED_FUNCTION_51_18()
{
  v4 = v1 + *(v0 + 64);

  return sub_21755F734(v2 + 128, v4);
}

uint64_t OUTLINED_FUNCTION_56_16()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_59_14()
{

  return sub_21738C4B0(v2 - 168, v2 - 288, v1, v0);
}

uint64_t OUTLINED_FUNCTION_60_22()
{
  sub_217283C5C(v0, 1);
}

uint64_t OUTLINED_FUNCTION_61_14()
{

  return sub_21738C4B0(v0, v2 + 16, v1, v3);
}

uint64_t OUTLINED_FUNCTION_62_17()
{

  return sub_21738C4B0(v0, v1 + 16, v2, v3);
}

void OUTLINED_FUNCTION_63_18()
{

  sub_217555C40();
}

unint64_t OUTLINED_FUNCTION_64_20()
{

  return sub_217632574();
}

uint64_t OUTLINED_FUNCTION_98_15(uint64_t a1)
{
  sub_217283C5C(a1, 0);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_107_8()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

void *OUTLINED_FUNCTION_110_10()
{

  return memcpy((v0 + 456), (v0 + 240), 0x68uLL);
}

void OUTLINED_FUNCTION_111_12(uint64_t a1@<X8>)
{
  v2[40] = 0;
  v2[41] = v1;
  v2[39] = a1;
}

uint64_t OUTLINED_FUNCTION_113_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_122_7(uint64_t a1)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_127_9(void *a1)
{

  return memcpy(a1, (v1 + 240), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_128_11()
{
  *(v1 - 104) = v0;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_129_9()
{
}

uint64_t OUTLINED_FUNCTION_130_10()
{

  return sub_21755602C(v0, (v1 + 1080), v2);
}

uint64_t OUTLINED_FUNCTION_132_10()
{
  v4 = v0 + *(v1 + 64);

  return sub_21755F734(v4, v2 + 240);
}

uint64_t OUTLINED_FUNCTION_134_9()
{
}

uint64_t OUTLINED_FUNCTION_136_9()
{
}

double OUTLINED_FUNCTION_137_8()
{
}

double OUTLINED_FUNCTION_138_5()
{
}

void *OUTLINED_FUNCTION_139_9()
{

  return sub_21759E240();
}

uint64_t OUTLINED_FUNCTION_148_6()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_151_7()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1610(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_152_10()
{

  return sub_2172E1074(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_153_7()
{

  return sub_217292370(v0);
}

uint64_t OUTLINED_FUNCTION_166_7()
{

  return sub_21755FBE4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_167_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21738C4B0(v4, v5 + 1080, a3, a4);
}

void CuratorPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v26 = v0;
  v27 = v1;
  v25 = v2;
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
  *(v12 + 568) = 1;
  *(v12 + 576) = 0u;
  *(v12 + 592) = 0u;
  *(v12 + 608) = 0u;
  *(v12 + 624) = 0;
  *(v12 + 632) = 2;
  memcpy((v12 + 640), __src, 0x221uLL);
  v17 = type metadata accessor for CuratorPropertyProvider(0);
  *(v12 + 1192) = 0u;
  v18 = v17[11];
  v19 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v12 + v18, 1, 1, v19);
  v20 = v12 + v17[12];
  *(v20 + 96) = 0;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v12 + v17[13]) = 0;
  if (qword_280BE7AA8 != -1)
  {
    swift_once();
  }

  v21 = qword_280C023C8;
  if (qword_280C023C8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v24 = sub_217752D28();

    v21 = v24;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v17[14]) = v21;
  v22 = (v12 + v17[17]);
  memcpy((v12 + v17[15]), __dst, 0x161uLL);
  v23 = v12 + v17[16];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  *v22 = v8;
  v22[1] = v6;
  *(v12 + v17[18]) = v4;
  *(v12 + v17[19]) = v25;
  *(v12 + v17[20]) = v26;
  *(v12 + v17[21]) = v27;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for CuratorPropertyProvider(uint64_t a1)
{
  result = qword_280BE7A98;
  if (!qword_280BE7A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CuratorPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *CuratorPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t CuratorPropertyProvider.editorialNotes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[36];
  v7[0] = v1[35];
  v7[1] = v2;
  v4 = v1[38];
  v8 = v1[37];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_21726A630(v7, &v6, &qword_27CB24B70, &unk_217759460);
}

__n128 CuratorPropertyProvider.editorialNotes.setter(uint64_t a1)
{
  v3 = v1[36];
  v8[0] = v1[35];
  v8[1] = v3;
  v4 = v1[38];
  v8[2] = v1[37];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(a1 + 16);
  v1[35] = *a1;
  v1[36] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[37] = result;
  v1[38] = v7;
  return result;
}

uint64_t CuratorPropertyProvider.mainUberArtwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 640), 0x221uLL);
  memcpy(a1, (v1 + 640), 0x221uLL);
  return sub_21726A630(__dst, v4, &qword_27CB24400, &unk_21775E9A0);
}

void *CuratorPropertyProvider.mainUberArtwork.setter(const void *a1)
{
  memcpy(v4, (v1 + 640), 0x221uLL);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + 640), a1, 0x221uLL);
}

void CuratorPropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 1192) = v2;
  *(v1 + 1200) = v0;
}

uint64_t CuratorPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for CuratorPropertyProvider(0);

  return sub_217751DE8();
}

void CuratorPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_24_32() + 52);

  *(v1 + v2) = v0;
}

void CuratorPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29740, &unk_217778880);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177B09E0);
    v46[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_55_12();
    goto LABEL_66;
  }

  v9 = qword_280BE8148;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_14_41(&qword_280BE8148);
  }

  if (OUTLINED_FUNCTION_174(qword_280C02450))
  {
    memcpy(v46, v2, 0x221uLL);
    memcpy(v47, v2, 0x221uLL);
    OUTLINED_FUNCTION_104(v47);
    if (!v10)
    {
LABEL_36:
      v12 = swift_allocObject();
      memcpy(v45, v46, sizeof(v45));
      sub_217284028(v45, &v44);

      memcpy((v12 + 16), v47, 0x221uLL);
      v11 = &type metadata for Artwork;
      goto LABEL_37;
    }

LABEL_7:

    v11 = 0;
    v12 = 0;
    goto LABEL_37;
  }

  v13 = qword_280BE8190;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_2_84(&qword_280BE8190);
  }

  OUTLINED_FUNCTION_174(qword_280C02478);
  OUTLINED_FUNCTION_161();
  if (v13)
  {
    v14 = *(v2 + 552);
    if (v14)
    {
      v15 = &qword_27CB24BE8;
      v16 = &qword_2177595F0;
LABEL_13:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      sub_217751DE8();
LABEL_61:

      *v6 = v14;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = v17;
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v18 = qword_280BE81A8;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_112_0(&qword_280BE81A8);
  }

  OUTLINED_FUNCTION_174(qword_280C02488);
  OUTLINED_FUNCTION_161();
  if (v18)
  {
    v19 = *(v2 + 560);
    v20 = *(v2 + 568);
    v21 = *(v2 + 592);
    *v45 = *(v2 + 576);
    *&v45[16] = v21;
    *&v45[32] = *(v2 + 608);
    if (v20 != 1)
    {
      v12 = swift_allocObject();
      *&v47[0] = v19;
      *(&v47[0] + 1) = v20;
      v22 = *(v2 + 592);
      v47[1] = *(v2 + 576);
      v47[2] = v22;
      v47[3] = *(v2 + 608);
      sub_217350F74(v47, v46);

      *(v12 + 16) = v19;
      *(v12 + 24) = v20;
      v23 = *&v45[16];
      *(v12 + 32) = *v45;
      *(v12 + 48) = v23;
      *(v12 + 64) = *&v45[32];
      v11 = &type metadata for EditorialNotes;
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  v24 = qword_280BE8180;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_1_82(&qword_280BE8180);
  }

  OUTLINED_FUNCTION_174(qword_280C02470);
  OUTLINED_FUNCTION_161();
  if (v24)
  {
    v14 = *(v2 + 624);
    if (v14)
    {
      v15 = &qword_27CB24BE0;
      v16 = &unk_2177657E0;
      goto LABEL_13;
    }

LABEL_60:
    v17 = 0;
    goto LABEL_61;
  }

  v25 = qword_280BE8168;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_280BE8168);
  }

  OUTLINED_FUNCTION_174(qword_280C02460);
  OUTLINED_FUNCTION_161();
  if (v25)
  {
    v26 = *(v2 + 632);

    v27 = &type metadata for Curator.Kind;
    if (v26 == 2)
    {
      v27 = 0;
    }

    *v6 = v26 & 1;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v27;
  }

  else
  {
    v28 = qword_280BE81A0;

    if (v28 != -1)
    {
      OUTLINED_FUNCTION_11_49(&qword_280BE81A0);
    }

    OUTLINED_FUNCTION_174(qword_280C02480);
    OUTLINED_FUNCTION_161();
    if (v28)
    {
      memcpy(v46, (v2 + 640), 0x221uLL);
      memcpy(v47, (v2 + 640), 0x221uLL);
      OUTLINED_FUNCTION_104(v47);
      if (!v10)
      {
        goto LABEL_36;
      }

      v12 = 0;
      v11 = 0;
LABEL_37:
      *v6 = v12;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = v11;
      goto LABEL_62;
    }

    v29 = qword_280BE8158;

    if (v29 != -1)
    {
      OUTLINED_FUNCTION_50_0(&qword_280BE8158);
    }

    OUTLINED_FUNCTION_174(qword_280C02458);
    OUTLINED_FUNCTION_161();
    if (v29)
    {
      v30 = *(v2 + 1200);
      if (v30)
      {
        v31 = *(v2 + 1192);
        sub_217751DE8();
        v32 = MEMORY[0x277D837D0];
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *v6 = v31;
      v6[1] = v30;
      v6[2] = 0;
      v6[3] = v32;
    }

    else
    {
      v33 = qword_280BE8170;

      if (v33 != -1)
      {
        OUTLINED_FUNCTION_134(&qword_280BE8170);
      }

      OUTLINED_FUNCTION_174(qword_280C02468);
      OUTLINED_FUNCTION_161();
      if (v33)
      {
        v34 = type metadata accessor for CuratorPropertyProvider(0);
        sub_21726A630(v2 + *(v34 + 44), v1, &unk_27CB277C0, &qword_217758DC0);
        v35 = sub_2177516D8();
        if (__swift_getEnumTagSinglePayload(v1, 1, v35) == 1)
        {

          sub_2171F0738(v1, &unk_27CB277C0, &qword_217758DC0);
          memset(v47, 0, 32);
        }

        else
        {
          *(&v47[1] + 1) = v35;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
          (*(*(v35 - 8) + 32))(boxed_opaque_existential_0, v1, v35);
        }

        v41 = v47[1];
        *v6 = v47[0];
        *(v6 + 1) = v41;
      }

      else
      {
        v36 = qword_280BE8138;

        if (v36 != -1)
        {
          OUTLINED_FUNCTION_49(&qword_280BE8138);
        }

        OUTLINED_FUNCTION_174(qword_280BE8140);
        OUTLINED_FUNCTION_161();
        if ((v36 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25498, &unk_21775D580);
          swift_allocObject();
          v42 = OUTLINED_FUNCTION_54_0();
          v43 = OUTLINED_FUNCTION_174(v42);

          if ((v43 & 1) == 0)
          {
            while (1)
            {
              OUTLINED_FUNCTION_52_17();
              sub_217752AA8();
              OUTLINED_FUNCTION_49_16();
              MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
              v46[0] = v4;
              type metadata accessor for AnyMusicProperty();
              sub_217752C78();
              OUTLINED_FUNCTION_217_0();
              OUTLINED_FUNCTION_55_12();
LABEL_66:
              OUTLINED_FUNCTION_58_1("Fatal error");
              __break(1u);
            }
          }

          v14 = *(v2 + *(type metadata accessor for CuratorPropertyProvider(0) + 52));
          if (v14)
          {
            v15 = &qword_27CB24BD8;
            v16 = &unk_2177595E0;
            goto LABEL_13;
          }

          goto LABEL_60;
        }

        v37 = type metadata accessor for CuratorPropertyProvider(0);
        sub_21726A630(v2 + *(v37 + 48), v47, &qword_27CB25330, &unk_21775E9B0);
        if (*(&v47[5] + 1))
        {
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
          v39 = swift_allocObject();
          memcpy((v39 + 16), v47, 0x68uLL);
        }

        else
        {

          sub_2171F0738(v47, &qword_27CB25330, &unk_21775E9B0);
          v39 = 0;
          v38 = 0;
        }

        *v6 = v39;
        v6[1] = 0;
        v6[2] = 0;
        v6[3] = v38;
      }
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_13();
}