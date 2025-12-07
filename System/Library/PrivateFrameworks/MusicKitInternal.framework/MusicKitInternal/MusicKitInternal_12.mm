uint64_t sub_1D4F73510()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC798);
  __swift_project_value_buffer(v0, qword_1EC7EC798);
  type metadata accessor for MusicPin.Item(0);
  sub_1D4F73958(&qword_1EC7EC830, type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
  return sub_1D560D978();
}

uint64_t sub_1D4F735F0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC7B0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EC7B0);
  if (qword_1EC7E8A18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7EC798);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4F736DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  sub_1D560D9A8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561D750;
  sub_1D560D908();
  sub_1D560D938();
  sub_1D560D878();
  sub_1D560D968();
  result = sub_1D560D8E8();
  qword_1EC7EC7C8 = v0;
  return result;
}

uint64_t sub_1D4F737EC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4F73958(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F739A4(uint64_t a1)
{
  result = sub_1D5613AF8();
  if (v2 <= 0x3F)
  {
    result = sub_1D5613EF8();
    if (v3 <= 0x3F)
    {
      result = sub_1D560EEA8();
      if (v4 <= 0x3F)
      {
        result = sub_1D5614898();
        if (v5 <= 0x3F)
        {
          result = sub_1D5613838();
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

uint64_t OUTLINED_FUNCTION_28_16(unint64_t *a1)
{

  return sub_1D4F73958(a1, v1, &protocol conformance descriptor for LegacyModelCodableMusicPinItem);
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return sub_1D4E628D4(v0, v1 - 128);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  (*(v7 + 32))(a3, a1);
  v8 = *(v6 + 20);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_14();
  v10 = *(v9 + 32);

  return v10(a3 + v8, a2);
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.JoinRequest(uint64_t a1)
{
  result = qword_1EC7EC880;
  if (!qword_1EC7EC880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.playlist.getter()
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_104();

  return v2(v1, v0);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.invitationURL.getter()
{
  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_104();

  return v1(v0);
}

uint64_t MusicCollaborativePlaylist.JoinRequest._configuration.getter()
{
  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_104();

  return v1(v0);
}

uint64_t MusicCollaborativePlaylist.JoinRequest._configuration.setter()
{
  v2 = OUTLINED_FUNCTION_64_1();
  v3 = *(type metadata accessor for MusicCollaborativePlaylist.JoinRequest(v2) + 24);
  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*MusicCollaborativePlaylist.JoinRequest._configuration.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(v0);
  return nullsub_1;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = OUTLINED_FUNCTION_22(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v9 = type metadata accessor for MusicRequestConfiguration(0);
  v10 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v10 ^ 1u, 1, v9);
  sub_1D4F73F78(v8, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
    {
      sub_1D4E50004(v6, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v6, a1);
  }

  return sub_1D4E50004(v8, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D4F73F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F73FE8(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D4F78C24(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicCollaborativePlaylist.JoinRequest.configuration.setter();
}

uint64_t MusicCollaborativePlaylist.JoinRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_1_34();
  sub_1D4F78C80(v7, v8, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_9_24();
  sub_1D4E5840C();
  v9 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  return (*(v3 + 40))(v0 + *(v9 + 24), v6, v1);
}

void (*MusicCollaborativePlaylist.JoinRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicCollaborativePlaylist.JoinRequest.configuration.getter(v10);
  return sub_1D4F74290;
}

void sub_1D4F74290(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D4F78C24(*(*a1 + 48), v3);
    OUTLINED_FUNCTION_1_34();
    sub_1D4F78C80(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4E5840C();
    v8 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
    v9 = OUTLINED_FUNCTION_20_6(v8);
    v10(v9);
    OUTLINED_FUNCTION_16_2();
    sub_1D4E5840C();
  }

  else
  {
    OUTLINED_FUNCTION_1_34();
    sub_1D4F78C80(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_9_24();
    sub_1D4E5840C();
    v13 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
    v14 = OUTLINED_FUNCTION_20_6(v13);
    v15(v14);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicCollaborativePlaylist.JoinRequest.validate()(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC850, &qword_1D5621DA8);
  OUTLINED_FUNCTION_22(v4);
  v2[20] = OUTLINED_FUNCTION_127();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC858, &qword_1D5621DB0);
  OUTLINED_FUNCTION_22(v5);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = sub_1D560EB18();
  v2[23] = v6;
  OUTLINED_FUNCTION_69(v6);
  v2[24] = v7;
  v2[25] = OUTLINED_FUNCTION_127();
  v8 = swift_task_alloc();
  v2[26] = v8;
  *v8 = v2;
  v8[1] = sub_1D4F74580;

  return sub_1D4F74E04(a1);
}

uint64_t sub_1D4F74580()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v2 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v9();
  }
}

uint64_t sub_1D4F7471C()
{
  v1 = *(v0 + 216);
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_147();
  type metadata accessor for ICError();
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 120);
    *(v0 + 128) = v3;
    sub_1D4F78C80(&qword_1EDD52A10, type metadata accessor for ICError, &unk_1D561B844);
    OUTLINED_FUNCTION_16_2();
    v4 = sub_1D560BE68();
    v5 = sub_1D5614D68();
    sub_1D4E494C8(v5, v6, v4);

    if (*(v0 + 40))
    {
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 152);
        if (v7 == 409)
        {
          v8 = 7;
        }

        else
        {
          v8 = 10;
        }

        if (v7 == 400)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

LABEL_12:
        *(v0 + 136) = v3;
        OUTLINED_FUNCTION_16_2();
        v10 = sub_1D560BE68();
        v11 = sub_1D5614D68();
        sub_1D4E494C8(v11, v12, v10);

        if (!*(v0 + 104))
        {
          sub_1D4E50004(v0 + 80, &qword_1EC7E9F98, &qword_1D561C420);
          goto LABEL_27;
        }

        v13 = (v0 + 48);
        sub_1D4E519A8((v0 + 80), (v0 + 48));
        v14 = objc_opt_self();
        __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
        v15 = sub_1D5616158();
        *(v0 + 144) = 0;
        v16 = [v14 dataWithJSONObject:v15 options:0 error:v0 + 144];
        swift_unknownObjectRelease();
        v17 = *(v0 + 144);
        if (!v16)
        {
          v18 = v17;
          sub_1D560BE98();

          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v13);
          goto LABEL_40;
        }

        sub_1D560C198();

        sub_1D560B9C8();
        swift_allocObject();
        sub_1D560B9B8();
        sub_1D4F78C80(&qword_1EC7EC868, MEMORY[0x1E6975408], MEMORY[0x1E6975410]);
        sub_1D560B948();
        v19 = sub_1D560EB08();
        sub_1D4EC9FC4(v19);

        v20 = sub_1D560EB68();
        v21 = OUTLINED_FUNCTION_24_20();
        v22 = *(v0 + 176);
        if (v21 == 1)
        {
          sub_1D4E50004(*(v0 + 176), &qword_1EC7EC858, &qword_1D5621DB0);
        }

        else
        {
          v23 = sub_1D560EB28();
          OUTLINED_FUNCTION_24_0();
          (*(v24 + 8))(v22, v20);
          if (v23 == 40015)
          {
            v9 = 9;
          }
        }

        v25 = sub_1D560EB08();
        sub_1D4EC9FC4(v25);

        if (OUTLINED_FUNCTION_24_20() == 1)
        {
          v26 = OUTLINED_FUNCTION_26_13();
          v27 = *(v0 + 168);
          (*(v28 + 8))(v26);

          OUTLINED_FUNCTION_23_19();
          v29 = &qword_1EC7EC858;
          v30 = &qword_1D5621DB0;
        }

        else
        {
          v31 = *(v0 + 168);
          sub_1D560EB38();
          OUTLINED_FUNCTION_24_0();
          (*(v32 + 8))(v31, v20);
          v33 = sub_1D560EB58();
          if (OUTLINED_FUNCTION_24_20() != 1)
          {
            v36 = *(v0 + 160);
            v50 = sub_1D560EB48();
            v38 = v37;
            OUTLINED_FUNCTION_24_0();
            (*(v39 + 8))(v36, v33);
            if (v38)
            {
              v40 = *(v0 + 192);
              v49 = *(v0 + 200);
              v41 = *(v0 + 184);
              if (v50 == 0xD000000000000021 && v38 == 0x80000001D56805A0)
              {

                OUTLINED_FUNCTION_23_19();

                (*(v40 + 8))(v49, v41);
                __swift_destroy_boxed_opaque_existential_1(v13);
              }

              else
              {
                v51 = sub_1D5616168();

                OUTLINED_FUNCTION_23_19();

                (*(v40 + 8))(v49, v41);
                __swift_destroy_boxed_opaque_existential_1(v13);
                if ((v51 & 1) == 0)
                {
LABEL_27:
                  if (v9 == 10)
                  {
                    swift_willThrow();
                    goto LABEL_40;
                  }

                  goto LABEL_39;
                }
              }

              LOBYTE(v9) = 8;
LABEL_39:
              v45 = sub_1D4F763B4();
              OUTLINED_FUNCTION_121_0(&type metadata for MusicCollaborativePlaylist.Error, v45);
              *v46 = v9;
              swift_willThrow();

              goto LABEL_40;
            }

            v43 = OUTLINED_FUNCTION_26_13();
            (*(v44 + 8))(v43);

            OUTLINED_FUNCTION_23_19();
LABEL_26:
            __swift_destroy_boxed_opaque_existential_1(v13);
            goto LABEL_27;
          }

          v34 = OUTLINED_FUNCTION_26_13();
          v27 = *(v0 + 160);
          (*(v35 + 8))(v34);

          OUTLINED_FUNCTION_23_19();
          v29 = &qword_1EC7EC850;
          v30 = &qword_1D5621DA8;
        }

        sub_1D4E50004(v27, v29, v30);
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D4E50004(v0 + 16, &qword_1EC7E9F98, &qword_1D561C420);
    }

    v9 = 10;
    goto LABEL_12;
  }

LABEL_40:

  OUTLINED_FUNCTION_55();

  return v47();
}

uint64_t sub_1D4F74E04(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC890, "Z9\b");
  v2[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA610, &qword_1D561C518);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_1D560D428();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_1D560CD48();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = sub_1D560D348();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v8 = sub_1D560D388();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v9 = sub_1D560EBD8();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v10 = sub_1D560BB98();
  v2[30] = v10;
  v2[31] = *(v10 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v11 = sub_1D560D838();
  v2[35] = v11;
  v2[36] = *(v11 - 8);
  v2[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v2[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F7525C, 0, 0);
}

uint64_t sub_1D4F7525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v20 = *(v18 + 296);
  v19 = *(v18 + 304);
  v21 = *(v18 + 280);
  v22 = *(v18 + 288);
  sub_1D5614898();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v22 + 8))(v20, v21);
  v23 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_1D4E50004(*(v18 + 304), &unk_1EC7F1970, &qword_1D561F4A0);
    v24 = sub_1D4F763B4();
    v63 = OUTLINED_FUNCTION_121_0(&type metadata for MusicCollaborativePlaylist.Error, v24);
    *v25 = 4;
    swift_willThrow();
    OUTLINED_FUNCTION_3_21();
    v58 = *(v18 + 128);
    v59 = *(v18 + 104);
    v60 = *(v18 + 80);
    v61 = *(v18 + 72);
    v62 = *(v18 + 48);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_16_5();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v58, v59, v60, v61, v62, v63, a15, a16, a17, a18);
  }

  else
  {
    v35 = *(v18 + 304);
    v36 = *(v18 + 264);
    v37 = *(v18 + 272);
    v39 = *(v18 + 248);
    v38 = *(v18 + 256);
    v40 = *(v18 + 240);
    v64 = *(v18 + 40);
    *(v18 + 16) = sub_1D560F138();
    *(v18 + 24) = v41;
    *(v18 + 312) = v41;
    OUTLINED_FUNCTION_24_0();
    (*(v42 + 8))(v35, v23);
    sub_1D560BB28();
    v43 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
    sub_1D560BF08();
    sub_1D560BB28();

    sub_1D560BB28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
    v44 = *(v39 + 72);
    v45 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v46 = swift_allocObject();
    *(v18 + 320) = v46;
    *(v46 + 16) = xmmword_1D5620080;
    v47 = v46 + v45;
    v48 = *(v39 + 16);
    v48(v47, v37, v40);
    v48(v47 + v44, v36, v40);
    v48(v47 + 2 * v44, v38, v40);
    *(v18 + 400) = *(v43 + 24);
    v49 = swift_task_alloc();
    *(v18 + 328) = v49;
    *v49 = v18;
    v49[1] = sub_1D4F75604;
    OUTLINED_FUNCTION_16_5();

    return MEMORY[0x1EEDCE258](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, v64, a15, a16, a17, a18);
  }
}

uint64_t sub_1D4F75604(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v7[42] = v2;

  if (v2)
  {
  }

  else
  {
    v11 = v7[2];
    v7[43] = a2;
    v7[44] = a1;
    v7[45] = v11;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4F7573C()
{
  v13 = *(v0 + 400);
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *(v0 + 176);
  v14 = *(v0 + 168);
  v18 = *(v0 + 160);
  v19 = *(v0 + 152);
  v3 = *(v0 + 144);
  v11 = *(v0 + 40);
  v12 = *(v0 + 136);
  sub_1D5615B68();

  v4 = sub_1D560EEC8();
  v6 = v5;

  MEMORY[0x1DA6EAC70](v4, v6);

  sub_1D560EB88();

  (*(v2 + 16))(v15, v1, v16);
  (*(v14 + 104))(v17, *MEMORY[0x1E6974E78], v18);
  sub_1D560D368();
  v7 = *(v3 + 16);
  *(v0 + 368) = v7;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v19, v11 + v13, v12);
  sub_1D560D2B8();
  v8 = swift_task_alloc();
  *(v0 + 384) = v8;
  *v8 = v0;
  v8[1] = sub_1D4F75990;
  v9 = *(v0 + 128);

  return MEMORY[0x1EEDCE5B0](v9);
}

uint64_t sub_1D4F75990()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4F75A8C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 400);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v81 = *(v0 + 392);
  v5 = *(v0 + 40);
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  v1(v3, v5 + v2, v4);
  sub_1D560B988();
  sub_1D5612208();
  swift_allocObject();
  v6 = sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  v7 = sub_1D560D418();
  v9 = v8;
  sub_1D4F78A58();
  sub_1D560B948();
  if (v81)
  {
    v79 = *(v0 + 272);
    v10 = *(v0 + 248);
    v74 = *(v0 + 256);
    v76 = *(v0 + 264);
    v11 = *(v0 + 240);
    v12 = *(v0 + 216);
    v70 = *(v0 + 208);
    v72 = *(v0 + 232);
    v13 = *(v0 + 192);
    v66 = *(v0 + 184);
    v68 = *(v0 + 200);
    v14 = *(v0 + 120);
    v61 = *(v0 + 112);
    v64 = *(v0 + 128);

    sub_1D4E55E1C(v7, v9);

    (*(v14 + 8))(v64, v61);
    (*(v13 + 8))(v68, v66);
    (*(v12 + 8))(v72, v70);
    v15 = *(v10 + 8);
    v15(v74, v11);
    v15(v76, v11);
    v15(v79, v11);
LABEL_5:

    OUTLINED_FUNCTION_55();
    goto LABEL_6;
  }

  v80 = v6;
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  sub_1D4E55E1C(v7, v9);
  v18 = sub_1D56123B8();
  sub_1D4EC9FB0(v18);

  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v75 = *(v0 + 264);
    v77 = *(v0 + 272);
    v19 = *(v0 + 248);
    v71 = *(v0 + 240);
    v73 = *(v0 + 256);
    v20 = *(v0 + 216);
    v67 = *(v0 + 208);
    v69 = *(v0 + 232);
    v21 = *(v0 + 192);
    v62 = *(v0 + 184);
    v65 = *(v0 + 200);
    v22 = *(v0 + 120);
    v57 = *(v0 + 112);
    v59 = *(v0 + 128);
    v23 = *(v0 + 96);
    v54 = *(v0 + 88);
    v55 = *(v0 + 104);
    v24 = *(v0 + 48);

    sub_1D4E50004(v24, &qword_1EC7EC890, "Z9\b");
    v25 = sub_1D4F763B4();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicCollaborativePlaylist.Error, v25);
    *v26 = 3;
    swift_willThrow();

    (*(v23 + 8))(v55, v54);
    (*(v22 + 8))(v59, v57);
    (*(v21 + 8))(v65, v62);
    (*(v20 + 8))(v69, v67);
    v27 = *(v19 + 8);
    v27(v73, v71);
    v27(v75, v71);
    v27(v77, v71);
    goto LABEL_5;
  }

  v43 = *(v0 + 368);
  v42 = *(v0 + 400);
  v60 = *(v0 + 264);
  v63 = *(v0 + 272);
  v30 = *(v0 + 248);
  v56 = *(v0 + 240);
  v58 = *(v0 + 256);
  v53 = *(v0 + 232);
  v51 = *(v0 + 216);
  v52 = *(v0 + 208);
  v48 = *(v0 + 192);
  v49 = *(v0 + 184);
  v50 = *(v0 + 200);
  v78 = *(v0 + 152);
  v41 = *(v0 + 136);
  v45 = *(v0 + 120);
  v46 = *(v0 + 112);
  v47 = *(v0 + 128);
  v31 = *(v0 + 96);
  v82 = *(v0 + 104);
  v32 = *(v0 + 80);
  v44 = *(v0 + 88);
  v34 = *(v0 + 64);
  v33 = *(v0 + 72);
  v35 = *(v0 + 56);
  v36 = *(v0 + 40);
  v40 = *(v0 + 32);
  (*(v34 + 32))(v32);
  v37 = OUTLINED_FUNCTION_29_12();
  v38(v37);
  v43(v78, v36 + v42, v41);
  sub_1D4F77364(v33, v78, v80, v40);

  (*(v34 + 8))(v32, v35);
  (*(v31 + 8))(v82, v44);
  (*(v45 + 8))(v47, v46);
  (*(v48 + 8))(v50, v49);
  (*(v51 + 8))(v53, v52);
  v39 = *(v30 + 8);
  v39(v58, v56);
  v39(v60, v56);
  v39(v63, v56);

  OUTLINED_FUNCTION_55();
LABEL_6:

  return v28();
}

uint64_t sub_1D4F76138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = v18[33];
  v20 = v18[34];
  v21 = v18[30];
  v22 = *(v18[31] + 8);
  v22(v18[32], v21);
  v22(v19, v21);
  v22(v20, v21);
  v23 = OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_13_24(v23);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_16_5();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D4F7625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_32_5();
  v19 = v18[33];
  v20 = v18[34];
  v22 = v18[31];
  v21 = v18[32];
  v24 = v18[29];
  v23 = v18[30];
  v25 = v18[26];
  v26 = v18[27];
  v27 = OUTLINED_FUNCTION_26_13();
  (*(v28 + 8))(v27);
  (*(v26 + 8))(v24, v25);
  v29 = *(v22 + 8);
  v29(v21, v23);
  v29(v19, v23);
  v29(v20, v23);
  v30 = OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_13_24(v30);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_16_5();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

unint64_t sub_1D4F763B4()
{
  result = qword_1EC7EC860;
  if (!qword_1EC7EC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC860);
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.JoinRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v0[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v2);
  v0[3] = OUTLINED_FUNCTION_127();
  v3 = sub_1D560E728();
  v0[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560D9A8();
  v0[7] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560D838();
  v0[10] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[11] = v8;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1D4F765B8;

  return MusicCollaborativePlaylist.JoinRequest._response()();
}

uint64_t sub_1D4F765B8(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v1)
  {

    OUTLINED_FUNCTION_55();

    return v9();
  }

  else
  {
    *(v5 + 120) = a1;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D4F76724(uint64_t a1)
{
  v23 = v1[13];
  v2 = v1[11];
  v27 = v1[12];
  v28 = v1[10];
  v25 = v1[8];
  v26 = v1[7];
  v21 = v1[6];
  v22 = v1[9];
  v3 = v1[5];
  v24 = v1[4];
  v4 = v1[3];
  sub_1D560D968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v5 = sub_1D560DB08();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D5621D90;
  v12 = v11 + v10;
  v13 = *(v7 + 104);
  v13(v12, *MEMORY[0x1E6975040], v5);
  v13(v12 + v9, *MEMORY[0x1E6975030], v5);
  sub_1D560E718();
  v14 = *MEMORY[0x1E6974FD8];
  v15 = sub_1D560D9E8();
  OUTLINED_FUNCTION_14();
  (*(v16 + 104))(v4, v14, v15);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
  sub_1D560F7D8();
  sub_1D4E50004(v4, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v3 + 8))(v21, v24);
  (*(v25 + 8))(v22, v26);
  (*(v2 + 16))(v27, v23, v28);
  sub_1D56144C8();
  v17 = OUTLINED_FUNCTION_16_2();
  v18(v17);

  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t MusicCollaborativePlaylist.JoinRequest._response()()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v0;
  v2 = sub_1D560C0A8();
  v1[25] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[26] = v3;
  v1[27] = OUTLINED_FUNCTION_127();
  v4 = sub_1D5614898();
  v1[28] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[29] = v5;
  v1[30] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v1[31] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[32] = v7;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4F76B54()
{
  v1 = v0;
  v25 = v0 + 2;
  v26 = v0 + 18;
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];
  v11 = v1[24];
  v23 = v1[25];
  v24 = v8;
  (*(v5 + 104))(v2, *MEMORY[0x1E6976988], v4);
  (*(v5 + 16))(v3, v2, v4);
  (*(v6 + 16))(v7, v11, v9);
  v12 = OUTLINED_FUNCTION_29_12();
  sub_1D4ECAE6C(v12, v13);
  v15 = v14;
  v1[35] = v14;
  v16 = OUTLINED_FUNCTION_16_2();
  v17(v16);
  v18 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  (*(v10 + 16))(v24, v11 + *(v18 + 20), v23);
  v19 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryJoinCollaborationChangeRequest);
  v20 = sub_1D4F788B4(v15, v24);
  v1[36] = v20;
  v1[2] = v1;
  v1[7] = v26;
  v1[3] = sub_1D4F76D84;
  v21 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC870, &qword_1D5640300);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D4F772C0;
  v1[13] = &block_descriptor_3;
  v1[14] = v21;
  [v20 performWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v25);
}

uint64_t sub_1D4F76D84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4F76E84()
{
  v2 = v0[35];
  v1 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_127();
  (*(v4 + 16))();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  OUTLINED_FUNCTION_29_12();
  v5 = sub_1D5616158();

  v6 = OUTLINED_FUNCTION_29_12();
  v7(v6);

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_1D4F76FE4(uint64_t a1)
{
  v2 = *(v1 + 296);
  swift_willThrow();
  *(v1 + 176) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_64_1();
  sub_1D4EC5648();
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v4 = *(v1 + 184);
  v5 = [v4 domain];
  v6 = sub_1D5614D68();
  v8 = v7;

  if (v6 == sub_1D5614D68() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1D5616168();

    if ((v11 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v12 = [v4 code];

  if (v12 == 2023)
  {
    v13 = *(v1 + 288);
    v14 = *(v1 + 280);

    v15 = sub_1D4F763B4();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicCollaborativePlaylist.Error, v15);
    v17 = 7;
LABEL_20:
    *v16 = v17;
    swift_willThrow();

    goto LABEL_23;
  }

LABEL_11:
  v18 = [v4 domain];
  v19 = sub_1D5614D68();
  v21 = v20;

  if (v19 == sub_1D5614D68() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_1D5616168();

    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([v4 code] == 2024)
  {
    v13 = *(v1 + 288);
    v14 = *(v1 + 280);

    v25 = sub_1D4F763B4();
    OUTLINED_FUNCTION_121_0(&type metadata for MusicCollaborativePlaylist.Error, v25);
    v17 = 8;
    goto LABEL_20;
  }

LABEL_21:

LABEL_22:
  v26 = *(v1 + 288);
  v27 = *(v1 + 280);

  swift_willThrow();
LABEL_23:

  OUTLINED_FUNCTION_55();

  return v28();
}

uint64_t *sub_1D4F772C0(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1D4F23514();
  }

  else if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    swift_unknownObjectRetain();
    return sub_1D4F231B8(v6, &v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F77364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v142 = a3;
  v143 = a2;
  v140 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v113 = &v112 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C0, &qword_1D5621E68);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v137 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v139 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v141 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v135 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v132 = &v112 - v20;
  v130 = sub_1D5610788();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v127 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1D56107C8();
  v125 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v122 = &v112 - v24;
  v144 = sub_1D56102D8();
  v149 = *(v144 - 8);
  v25 = MEMORY[0x1EEE9AC00](v144);
  v121 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v123 = &v112 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v112 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D8, &qword_1D5621E78);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v116 = &v112 - v31;
  v138 = sub_1D56103C8();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v148 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v112 - v34;
  v36 = type metadata accessor for PlaylistCollaborationPropertyProvider(0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = (&v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v37 + 24);
  v41 = sub_1D560C328();
  v119 = v40;
  __swift_storeEnumTagSinglePayload(v39 + v40, 1, 1, v41);
  v42 = v36[8];
  v43 = sub_1D560C0A8();
  v120 = v42;
  __swift_storeEnumTagSinglePayload(v39 + v42, 1, 1, v43);
  v44 = v36[9];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v131 = v44;
  __swift_storeEnumTagSinglePayload(v39 + v44, 1, 1, v45);
  v134 = v36[10];
  v146 = v45;
  __swift_storeEnumTagSinglePayload(v39 + v134, 1, 1, v45);
  v46 = v36[11];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  __swift_storeEnumTagSinglePayload(v39 + v46, 1, 1, v47);
  if (qword_1EC7E8FD8 != -1)
  {
    swift_once();
  }

  v48 = sub_1D560D9A8();
  __swift_project_value_buffer(v48, qword_1EC7F0FC0);
  v49 = sub_1D56109F8();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA610, &qword_1D561C518);
  sub_1D56105B8();
  sub_1D4E50004(v35, &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D5610658();
  v115 = sub_1D5610618();
  v114 = v51;
  v52 = sub_1D56105C8();
  v53 = sub_1D56105F8();
  v54 = sub_1D56105E8();
  v145 = v50;
  v147 = a1;
  v55 = sub_1D56105A8();
  *v39 = 516;
  v117 = v36[7];
  *(v39 + v117) = 2;
  if (qword_1EC7E8D90 != -1)
  {
    swift_once();
  }

  v56 = qword_1EC87C090;
  if (qword_1EC87C090 >> 62)
  {
    sub_1D560CDE8();

    v111 = sub_1D5615E18();

    v56 = v111;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v57 = v144;
  *(v39 + v36[12]) = v56;
  v58 = (v39 + v36[15]);
  v59 = v114;
  *v58 = v115;
  v58[1] = v59;
  *(v39 + v36[16]) = v52;
  *(v39 + v36[17]) = v53;
  *(v39 + v36[18]) = v54;
  *(v39 + v36[19]) = v55;
  sub_1D5610648();
  v60 = v118;
  sub_1D56102E8();
  v61 = v116;
  sub_1D5610288();
  v62 = v149 + 8;
  v63 = *(v149 + 8);
  v63(v60, v57);
  v64 = sub_1D5610398();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v64);
  v126 = v36;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v61, &qword_1EC7EC8D8, &qword_1D5621E78);
    v66 = 4;
  }

  else
  {
    sub_1D516230C(v150);
    (*(*(v64 - 8) + 8))(v61, v64);
    v66 = v150[0];
  }

  v67 = v39;
  *v39 = v66;
  v68 = v124;
  sub_1D56107A8();
  v69 = v123;
  sub_1D56102E8();
  sub_1D56102B8();
  v63(v69, v57);
  v70 = *MEMORY[0x1E6975DC8];
  v149 = v62;
  v71 = v129;
  v72 = *(v129 + 104);
  v73 = v127;
  v118 = v63;
  v74 = v130;
  v72(v127, v70, v130);
  v75 = v122;
  sub_1D5610798();

  v76 = v73;
  v77 = v148;
  (*(v71 + 8))(v76, v74);
  (*(v125 + 8))(v68, v128);
  v78 = v75;
  v79 = v67;
  sub_1D4F78BC4(v78, v67 + v119, &qword_1EC7EA3B8, &unk_1D561E370);
  v80 = v121;
  sub_1D56102E8();
  v81 = sub_1D56102C8();
  v82 = v144;
  v83 = v118;
  (v118)(v80, v144);
  v84 = (v81 & 1) == 0;
  if (v81 == 2)
  {
    v84 = 2;
  }

  *(v67 + v117) = v84;
  sub_1D56102E8();
  v85 = v132;
  sub_1D5610298();
  v83(v69, v82);
  sub_1D4F78BC4(v85, v67 + v120, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v86 = v133;
  sub_1D5610348();
  v87 = sub_1D5610338();
  if (__swift_getEnumTagSinglePayload(v86, 1, v87) == 1)
  {
    sub_1D4E50004(v86, &qword_1EC7EC8C0, &qword_1D5621E68);
    v88 = 1;
    v89 = v137;
    v90 = v135;
    v91 = v126;
    v92 = v147;
  }

  else
  {
    v93 = v112;
    sub_1D5610318();
    (*(*(v87 - 8) + 8))(v86, v87);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
    v95 = __swift_getEnumTagSinglePayload(v93, 1, v94);
    v92 = v147;
    if (v95 == 1)
    {
      sub_1D4E50004(v93, &qword_1EC7EC8C8, &qword_1D5621E70);
      v88 = 1;
      v89 = v137;
      v90 = v135;
    }

    else
    {
      v96 = sub_1D560CD98();
      v97 = v113;
      __swift_storeEnumTagSinglePayload(v113, 1, 1, v96);
      type metadata accessor for Playlist.Collaborator(0);
      sub_1D560CD48();
      sub_1D4F78C80(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      sub_1D4F78C80(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v90 = v135;
      v92 = v147;
      v77 = v148;
      sub_1D5612368();
      sub_1D4E50004(v97, &qword_1EC7EA7D8, &unk_1D561E8B0);
      (*(*(v94 - 8) + 8))(v93, v94);
      v88 = 0;
      v89 = v137;
    }

    v91 = v126;
  }

  __swift_storeEnumTagSinglePayload(v90, v88, 1, v146);
  sub_1D4F78BC4(v90, v79 + v131, &qword_1EC7EC8D0, &unk_1D5623AD0);
  sub_1D5610348();
  v98 = __swift_getEnumTagSinglePayload(v89, 1, v87);
  v99 = v139;
  if (v98 == 1)
  {
    v100 = &qword_1EC7EC8C0;
    v101 = &qword_1D5621E68;
    v102 = v89;
  }

  else
  {
    sub_1D5610328();
    (*(*(v87 - 8) + 8))(v89, v87);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
    if (__swift_getEnumTagSinglePayload(v99, 1, v103) != 1)
    {
      v105 = sub_1D560CD98();
      v106 = v113;
      __swift_storeEnumTagSinglePayload(v113, 1, 1, v105);
      type metadata accessor for Playlist.Collaborator(0);
      sub_1D560CD48();
      sub_1D4F78C80(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      sub_1D4F78C80(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v77 = v148;
      sub_1D5612368();
      sub_1D4E50004(v106, &qword_1EC7EA7D8, &unk_1D561E8B0);
      (*(*(v103 - 8) + 8))(v99, v103);
      v104 = 0;
      goto LABEL_24;
    }

    v100 = &qword_1EC7EC8C8;
    v101 = &qword_1D5621E70;
    v102 = v99;
  }

  sub_1D4E50004(v102, v100, v101);
  v104 = 1;
LABEL_24:
  v107 = v141;
  __swift_storeEnumTagSinglePayload(v141, v104, 1, v146);
  sub_1D4F78BC4(v107, v79 + v134, &qword_1EC7EC8D0, &unk_1D5623AD0);
  v150[3] = v91;
  v150[4] = sub_1D4F78C80(&qword_1EC7EC8E8, type metadata accessor for PlaylistCollaborationPropertyProvider, &unk_1D5631938);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v150);
  sub_1D4F78C24(v79, boxed_opaque_existential_0);
  Playlist.Collaboration.init(propertyProvider:)(v150, v140);

  v109 = sub_1D560CD48();
  (*(*(v109 - 8) + 8))(v143, v109);
  (*(*(v145 - 8) + 8))(v92);
  (*(v136 + 8))(v77, v138);
  return sub_1D4E5840C();
}

uint64_t static MusicCollaborativePlaylist.JoinRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  if ((sub_1D560BFB8() & 1) == 0)
  {
    return 0;
  }

  return _s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0();
}

uint64_t MusicCollaborativePlaylist.JoinRequest.hash(into:)()
{
  OUTLINED_FUNCTION_64_1();
  sub_1D5614898();
  OUTLINED_FUNCTION_8_27();
  sub_1D4F78C80(v0, v1, MEMORY[0x1E69773F0]);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_7_26();
  sub_1D4F78C80(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  sub_1D560CD48();
  OUTLINED_FUNCTION_6_26();
  sub_1D4F78C80(v4, v5, MEMORY[0x1E6974D28]);
  return sub_1D5614CB8();
}

uint64_t MusicCollaborativePlaylist.JoinRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_8_27();
  sub_1D4F78C80(v0, v1, MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  type metadata accessor for MusicCollaborativePlaylist.JoinRequest(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_7_26();
  sub_1D4F78C80(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  sub_1D560CD48();
  OUTLINED_FUNCTION_6_26();
  sub_1D4F78C80(v4, v5, MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4F7876C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D4F78C80(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
  sub_1D5614CB8();
  sub_1D560C0A8();
  sub_1D4F78C80(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  sub_1D560CD48();
  sub_1D4F78C80(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

id sub_1D4F788B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D560BF68();
  v7 = [v3 initWithPlaylist:a1 invitationURL:v6];

  v8 = sub_1D560C0A8();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

uint64_t sub_1D4F789BC(uint64_t a1)
{
  result = sub_1D5614898();
  if (v2 <= 0x3F)
  {
    result = sub_1D560C0A8();
    if (v3 <= 0x3F)
    {
      result = sub_1D560CD48();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D4F78A58()
{
  result = qword_1EC7EC8A0;
  if (!qword_1EC7EC8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC898, &qword_1D5623B20);
    sub_1D4F78ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC8A0);
  }

  return result;
}

unint64_t sub_1D4F78ADC()
{
  result = qword_1EC7EC8A8;
  if (!qword_1EC7EC8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA610, &qword_1D561C518);
    v1 = MEMORY[0x1E6975C78];
    sub_1D4F78C80(&qword_1EC7EC8B0, MEMORY[0x1E6975C78], MEMORY[0x1E6975C88]);
    sub_1D4F78C80(&qword_1EC7EC8B8, v1, MEMORY[0x1E6975C80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC8A8);
  }

  return result;
}

uint64_t sub_1D4F78BC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_1D4F78C24(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1D4F78C80(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_19()
{

  return sub_1D4E55E1C(v1, v0);
}

uint64_t sub_1D4F78D74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D561C770;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC920, &qword_1D5622070);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D537434C(KeyPath | 0x8000000000000000);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 32) = v0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC928, &qword_1D56220A0);
  swift_allocObject();
  OUTLINED_FUNCTION_0_6();

  sub_1D537423C(v3);
  OUTLINED_FUNCTION_0_6();

  *(v1 + 40) = v0;
  qword_1EC87BE80 = v1;
  return result;
}

uint64_t sub_1D4F78E64()
{
  v91 = sub_1D5613858();
  OUTLINED_FUNCTION_1_0();
  v97 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_0();
  v89 = v2;
  v107 = sub_1D5613D38();
  OUTLINED_FUNCTION_1_0();
  v102 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v101 = v5;
  v6 = sub_1D5613598();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v90 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v82 - v12;
  v93 = sub_1D56146E8();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v96 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v82 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1D5621E90;
  KeyPath = swift_getKeyPath();
  v103 = *MEMORY[0x1E6977270];
  v108 = v15;
  v22 = *(v15 + 104);
  v106 = v15 + 104;
  v99 = v22;
  (v22)(v20);
  v23 = *MEMORY[0x1E6976AE0];
  v104 = *(v8 + 104);
  v105 = v8;
  v94 = v8 + 104;
  v104(v13, v23, v6);
  v25 = v101;
  v24 = v102;
  v26 = v107;
  (*(v102 + 104))(v101, *MEMORY[0x1E6976E98], v107);
  v27 = v13;
  v28 = v13;
  v29 = v25;
  v30 = sub_1D4F797C0(KeyPath, v20, v27, v25);

  (*(v24 + 8))(v29, v26);
  v31 = *(v8 + 8);
  v102 = v8 + 8;
  v98 = v31;
  v88 = v6;
  v31(v28, v6);
  v101 = *(v15 + 8);
  v107 = v15 + 8;
  v32 = v93;
  v101(v20, v93);
  *(v100 + 32) = v30;
  swift_getKeyPath();
  v33 = OUTLINED_FUNCTION_1_35();
  v34 = v103;
  v35 = v99;
  v99(v33, v103, v32);
  LODWORD(v87) = *MEMORY[0x1E6976AD0];
  (v104)(v28);
  v36 = *MEMORY[0x1E6976C38];
  v37 = v97;
  v85 = *(v97 + 104);
  v86 = v97 + 104;
  v38 = v89;
  v39 = v91;
  v85(v89, v36, v91);
  v40 = sub_1D4F79A50(v26, v20, v28, v38);

  v41 = *(v37 + 8);
  v97 = v37 + 8;
  v84 = v41;
  v41(v38, v39);
  v42 = v88;
  v98(v28, v88);
  v43 = v93;
  v101(v20, v93);
  v44 = v100;
  *(v100 + 40) = v40;
  v82 = swift_getKeyPath();
  v45 = v43;
  v35(v20, v34, v43);
  v104(v28, *MEMORY[0x1E6976A98], v42);
  v95 = *(v108 + 16);
  v108 += 16;
  v46 = v96;
  v95(v96, v20, v43);
  v47 = *(v105 + 16);
  v105 += 16;
  v92 = v47;
  v48 = v90;
  v83 = v28;
  v47(v90, v28, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC900, &qword_1D5621FA0);
  swift_allocObject();
  v49 = sub_1D4F79F84(v82, v46, v48);
  v98(v28, v42);
  v50 = v101;
  v101(v20, v45);
  *(v44 + 48) = v49;
  v51 = v44;
  v52 = swift_getKeyPath();
  v53 = v99;
  v99(v20, *MEMORY[0x1E6977278], v45);
  v54 = v96;
  v95(v96, v20, v45);
  v55 = OUTLINED_FUNCTION_3_22();
  v56 = v52;
  v57 = v55;
  sub_1D5375784(v56, v54);
  v58 = OUTLINED_FUNCTION_1_35();
  v50(v58, v45);
  *(v51 + 56) = v57;
  swift_getKeyPath();
  v59 = OUTLINED_FUNCTION_1_35();
  v53(v59, v103, v45);
  v60 = v83;
  v61 = v88;
  v62 = v104;
  v104(v83, v87, v88);
  v63 = v89;
  v64 = v91;
  v85(v89, *MEMORY[0x1E6976C28], v91);
  v87 = sub_1D4F79A50(v57, v20, v60, v63);

  v84(v63, v64);
  v65 = v61;
  v66 = v98;
  v98(v60, v61);
  v67 = v93;
  v101(v20, v93);
  *(v100 + 64) = v87;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_10_24();
  v68();
  v62(v60, *MEMORY[0x1E6976AD8], v65);
  v69 = OUTLINED_FUNCTION_5_21();
  v70(v69);
  v71 = OUTLINED_FUNCTION_2_17();
  v72(v71);
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_4_21();
  v73 = OUTLINED_FUNCTION_8_28();
  v66(v73);
  v74 = v101;
  v101(v20, v67);
  v75 = v100;
  *(v100 + 72) = v57;
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_10_24();
  v76();
  v104(v60, *MEMORY[0x1E6976A80], v65);
  v77 = OUTLINED_FUNCTION_5_21();
  (v95)(v77);
  v78 = OUTLINED_FUNCTION_2_17();
  v79(v78);
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_4_21();
  v80 = OUTLINED_FUNCTION_8_28();
  (v98)(v80);
  result = v74(v20, v67);
  *(v75 + 80) = v57;
  qword_1EDD76790 = v75;
  return result;
}

uint64_t sub_1D4F79768@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F797C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = sub_1D5613D38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5613598();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D56146E8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a2);
  (*(v11 + 16))(v13, a3, v10);
  (*(v7 + 16))(v9, v21, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC900, &qword_1D5621FA0);
  swift_allocObject();

  return sub_1D4F7A158(v18, v16, v13, v9, MEMORY[0x1E6976EA0], &qword_1EC7EC918, MEMORY[0x1E6976EA0], MEMORY[0x1E6976EA8]);
}

uint64_t sub_1D4F79A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v6 = sub_1D5613858();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5613598();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D56146E8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a2);
  (*(v11 + 16))(v13, a3, v10);
  (*(v7 + 16))(v9, v21, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC900, &qword_1D5621FA0);
  swift_allocObject();

  return sub_1D4F7A158(v18, v16, v13, v9, MEMORY[0x1E6976C48], qword_1EDD5F198, MEMORY[0x1E6976C48], MEMORY[0x1E6976C50]);
}

uint64_t sub_1D4F79CE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F79D38(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D4F79D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1D4F79DE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1D4F79E40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F79E98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

id sub_1D4F79EF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6977658]);

  return [v0 init];
}

uint64_t sub_1D4F79F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_1EC7F8068) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D5621D90;
  v7 = sub_1D56146E8();
  sub_1D4F7A3A8(&qword_1EC7EC908, MEMORY[0x1E6977290], MEMORY[0x1E69772A8]);

  sub_1D56150C8();
  v8 = sub_1D5613598();
  sub_1D4F7A3A8(&qword_1EC7EC910, MEMORY[0x1E6976B10], MEMORY[0x1E6976B28]);
  sub_1D56150C8();
  *(v3 + qword_1EC7F8070) = v6;
  v9 = (v3 + qword_1EC7F8078);
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_1D560CCC8();

  (*(*(v8 - 8) + 8))(a3, v8);
  (*(*(v7 - 8) + 8))(a2, v7);
  return v10;
}

uint64_t sub_1D4F7A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), uint64_t a8)
{
  *(v8 + qword_1EC7F8068) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D5620080;
  v14 = sub_1D56146E8();
  sub_1D4F7A3A8(&qword_1EC7EC908, MEMORY[0x1E6977290], MEMORY[0x1E69772A8]);

  sub_1D56150C8();
  v15 = sub_1D5613598();
  sub_1D4F7A3A8(&qword_1EC7EC910, MEMORY[0x1E6976B10], MEMORY[0x1E6976B28]);
  sub_1D56150C8();
  v16 = a5(0);
  sub_1D4F7A3A8(a6, a7, a8);
  sub_1D56150C8();
  *(v8 + qword_1EC7F8070) = v13;
  v17 = (v8 + qword_1EC7F8078);
  *v17 = 0;
  v17[1] = 0;
  sub_1D560CCC8();
  OUTLINED_FUNCTION_1_35();

  (*(*(v16 - 8) + 8))(a4, v16);
  (*(*(v15 - 8) + 8))(a3, v15);
  (*(*(v14 - 8) + 8))(a2, v14);
  return v8;
}

uint64_t sub_1D4F7A3A8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicVideo.catalogID.getter()
{
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1D560EEA8();
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v2 + 8))(v6, v0);
  v11 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1D4E6C9CC(v10, &unk_1EC7F1970, &qword_1D561F4A0);
    return 0;
  }

  else
  {
    v12 = sub_1D560F138();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  return v12;
}

uint64_t sub_1D4F7A5DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC940, "j7\b");
  swift_getKeyPath();
  sub_1D5615278();
  sub_1D4F7B134();
  v0 = sub_1D560D138();

  qword_1EC7EC930 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.immersiveURL.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E8A40, &qword_1EC7EC930, sub_1D4F7A5DC);
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

{
  return sub_1D50355DC();
}

uint64_t sub_1D4F7A6B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC940, "j7\b");
  swift_getKeyPath();
  sub_1D5615288();
  v0 = sub_1D560D138();

  qword_1EC7EC938 = v0;
  return result;
}

uint64_t static PartialMusicProperty<A>.customLyrics.getter()
{
  return sub_1D4F5DA4C(&qword_1EC7E8A48, &qword_1EC7EC938, sub_1D4F7A6B0);
}

{
  return sub_1D4F5DA4C(&qword_1EC7E9348, &qword_1EC7F25D8, sub_1D524603C);
}

uint64_t MusicVideo.favoriteStatus.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1D560ED78();
  (*(v4 + 16))(v8, v10, v2);
  v11 = (*(v4 + 88))(v8, v2);
  if (v11 == *MEMORY[0x1E69765E8])
  {
    v12 = 0;
LABEL_7:
    result = (*(v4 + 8))(v10, v2);
    *a1 = v12;
    return result;
  }

  if (v11 == *MEMORY[0x1E69765F8])
  {
    v12 = 1;
    goto LABEL_7;
  }

  if (v11 == *MEMORY[0x1E69765F0])
  {
    v12 = 2;
    goto LABEL_7;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicVideo.siriRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v83 = a1;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v80 = v3;
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v79 = v5 - v4;
  v69 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v78 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v73 = v9 - v8;
  v76 = sub_1D5611AB8();
  OUTLINED_FUNCTION_4();
  v70 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v16 = OUTLINED_FUNCTION_22(v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v62 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v65 = &v62 - v29;
  v30 = sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v32 = v31;
  v77 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v36 = v35 - v34;
  v37 = *(v32 + 16);
  v37(v35 - v34, v1, v30);
  v38 = sub_1D560EE68();
  v74 = v39;
  v75 = v38;
  v40 = sub_1D560ECC8();
  v71 = v41;
  v72 = v40;
  sub_1D560EE78();
  sub_1D560ED28();
  sub_1D560EE58();
  v68 = sub_1D560ED58();
  v42 = v82;
  v43 = v69;
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v69);
  v85 = v30;
  v86 = MEMORY[0x1E69754C8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
  v63 = v36;
  v37(boxed_opaque_existential_0, v36, v30);
  __swift_project_boxed_opaque_existential_1(v84, v85);
  v64 = v30;
  sub_1D5612AF8();
  v45 = v73;
  sub_1D5611A98();
  (*(v70 + 8))(v14, v76);
  sub_1D560FDD8();
  (*(v78 + 8))(v45, v43);
  sub_1D4E6C9CC(v42, &qword_1EC7EA358, &unk_1D561DF50);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v43);
  v46 = v19;
  sub_1D4F7AFE0(v19, v42);
  __swift_destroy_boxed_opaque_existential_1(v84);
  v47 = v79;
  sub_1D560EC98();
  sub_1D4F7B054(v42, v19, &qword_1EC7EA358, &unk_1D561DF50);
  v48 = type metadata accessor for MusicSiriRepresentation(0);
  v49 = v83;
  v50 = v65;
  sub_1D4F7B054(v65, v83 + v48[8], &qword_1EC7E9CA0, &unk_1D561A0C0);
  v51 = v66;
  sub_1D4F7B054(v66, v49 + v48[9], &qword_1EC7EC478, &unk_1D56299D0);
  v52 = v67;
  sub_1D4F7B054(v67, v49 + v48[10], &unk_1EC7E9CA8, &unk_1D561D1D0);
  LOBYTE(v84[0]) = 7;
  v53 = v47;
  sub_1D50391CC();
  v55 = v54;
  v57 = v56;
  sub_1D4E6C9CC(v46, &qword_1EC7EA358, &unk_1D561DF50);
  (*(v80 + 8))(v53, v81);
  sub_1D4E6C9CC(v82, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E6C9CC(v52, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4E6C9CC(v51, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4E6C9CC(v50, &qword_1EC7E9CA0, &unk_1D561A0C0);
  result = (*(v77 + 8))(v63, v64);
  v59 = v83;
  *v83 = v55;
  v59[1] = v57;
  *(v59 + 16) = 7;
  v60 = v74;
  v59[3] = v75;
  v59[4] = v60;
  v61 = v71;
  v59[5] = v72;
  v59[6] = v61;
  return result;
}

uint64_t sub_1D4F7AFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F7B054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D4F7B134()
{
  result = qword_1EDD5CF88;
  if (!qword_1EDD5CF88)
  {
    sub_1D560C0A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5CF88);
  }

  return result;
}

void static CloudTVSeason.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v5 = v4;
  v6 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v167 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v168 = v14;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v170 = v16;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v175 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v173 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v171 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v174 = v24;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13();
  v172 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_154_3(v28);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  v181 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v179 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17_19(v34, v165);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v39 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_93_5();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_114();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_71_1();
  v185 = v5;
  v186 = v3;
  v45 = v5[1];
  v46 = v3[1];
  if (v45)
  {
    if (!v46)
    {
      goto LABEL_21;
    }

    v47 = *v5 == *v3 && v45 == v46;
    if (!v47 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v46)
  {
    goto LABEL_21;
  }

  v166 = v6;
  v48 = type metadata accessor for CloudTVSeason.Attributes(0);
  v49 = v48[5];
  v50 = *(v43 + 48);
  sub_1D4F39AB0(v185 + v49, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v186 + v49, v1 + v50, &qword_1EC7EB5B8, &unk_1D56206A0);
  v51 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v51, v52, v37);
  if (v47)
  {
    OUTLINED_FUNCTION_57(v1 + v50, 1, v37);
    if (v47)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_23;
    }

LABEL_18:
    v60 = &qword_1EC7EC330;
    v61 = &qword_1D56222C0;
LABEL_19:
    v62 = v1;
LABEL_20:
    sub_1D4E50004(v62, v60, v61);
    goto LABEL_21;
  }

  v53 = OUTLINED_FUNCTION_97_1();
  sub_1D4F39AB0(v53, v54, v55, v56);
  OUTLINED_FUNCTION_57(v1 + v50, 1, v37);
  if (v57)
  {
    v58 = OUTLINED_FUNCTION_149_0();
    v59(v58);
    goto LABEL_18;
  }

  (*(v39 + 32))(v0, v1 + v50, v37);
  sub_1D4F39858();
  v63 = sub_1D5614D18();
  v64 = *(v39 + 8);
  v64(v0, v37);
  v65 = OUTLINED_FUNCTION_149_0();
  (v64)(v65);
  sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  v66 = v48[6];
  v67 = *(v186 + v66);
  if (*(v185 + v66))
  {
    if (!v67)
    {
      goto LABEL_21;
    }

    sub_1D4F2C07C();
    v69 = v68;

    if ((v69 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v67)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_62();
  if (v72)
  {
    if (!v70)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31_0(v71);
    v75 = v47 && v73 == v74;
    if (!v75 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v70)
  {
    goto LABEL_21;
  }

  v76 = v48[8];
  v77 = *(v182 + 48);
  v78 = &qword_1EC7EC978;
  sub_1D4F39AB0(v76 + v185, v183, &qword_1EC7EC978, &unk_1D56222A0);
  sub_1D4F39AB0(v76 + v186, v183 + v77, &qword_1EC7EC978, &unk_1D56222A0);
  v79 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_4_18(v79, v80);
  if (v47)
  {
    OUTLINED_FUNCTION_43_0(v183 + v77);
    if (v47)
    {
      sub_1D4E50004(v183, &qword_1EC7EC978, &unk_1D56222A0);
      goto LABEL_47;
    }

LABEL_45:
    v60 = &qword_1EC7EC980;
    v61 = &qword_1D5628710;
    v62 = v183;
    goto LABEL_20;
  }

  sub_1D4F39AB0(v183, v180, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_43_0(v183 + v77);
  if (v81)
  {
    v82 = OUTLINED_FUNCTION_215();
    v83(v82);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_40_3();
  v84(v179, v183 + v77, v184);
  sub_1D4F7C058();
  OUTLINED_FUNCTION_85();
  v78 = sub_1D5614D18();
  v76 = *(v181 + 8);
  v85 = OUTLINED_FUNCTION_46_1();
  v76(v85);
  v86 = OUTLINED_FUNCTION_215();
  v76(v86);
  sub_1D4E50004(v183, &qword_1EC7EC978, &unk_1D56222A0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  OUTLINED_FUNCTION_116_0();
  if (v78)
  {
    if (!v76)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v76)
  {
    goto LABEL_21;
  }

  v1 = v176;
  v89 = *(v177 + 48);
  v90 = &qword_1EC7EC960;
  v91 = &unk_1D56334C0;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v92, v93, v94, v95);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v96, v97, v98, v99);
  v100 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_4_18(v100, v101);
  if (v47)
  {
    OUTLINED_FUNCTION_43_0(v176 + v89);
    if (v47)
    {
      sub_1D4E50004(v176, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  sub_1D4F39AB0(v176, v174, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_43_0(v176 + v89);
  if (v102)
  {
    (*(v175 + 8))(v174, v178);
LABEL_60:
    v60 = &qword_1EC7EC968;
    v61 = &unk_1D5622290;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_40_3();
  v103(v173, v176 + v89, v178);
  sub_1D4F7BF60();
  v90 = sub_1D5614D18();
  v91 = v175 + 8;
  v104 = *(v175 + 8);
  v105 = OUTLINED_FUNCTION_122_1();
  v104(v105);
  (v104)(v174, v178);
  sub_1D4E50004(v176, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_62:
  OUTLINED_FUNCTION_116_0();
  if (v91)
  {
    if (!v90)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    v91 = v106;

    if ((v91 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v90)
  {
    goto LABEL_21;
  }

  v107 = v48[12];
  v108 = *(v186 + v107);
  if (*(v185 + v107))
  {
    if (!v108)
    {
      goto LABEL_21;
    }

    sub_1D4EF81E0();
    if ((v109 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v108)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_62();
  if (v112)
  {
    if (!v110)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31_0(v111);
    v115 = v47 && v113 == v114;
    if (!v115 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v110)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_116_0();
  if (v91)
  {
    if (!v90)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF9F7C();
    v117 = v116;

    if ((v117 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v90)
  {
    goto LABEL_21;
  }

  v118 = *(v177 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v119, v120, v121, v122);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v123, v124, v125, v126);
  OUTLINED_FUNCTION_57(v172, 1, v178);
  if (v47)
  {
    OUTLINED_FUNCTION_57(v172 + v118, 1, v178);
    if (v47)
    {
      sub_1D4E50004(v172, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  sub_1D4F39AB0(v172, v171, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v172 + v118, 1, v178);
  if (v127)
  {
    (*(v175 + 8))(v171, v178);
LABEL_94:
    v60 = &qword_1EC7EC968;
    v61 = &unk_1D5622290;
    v62 = v172;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_81();
  v128(v173, v172 + v118, v178);
  v129 = sub_1D4F7BF60();
  v132 = OUTLINED_FUNCTION_157_0(v129, v130, v131, v129);
  v133 = *(v175 + 8);
  v134 = OUTLINED_FUNCTION_93();
  v133(v134);
  v135 = OUTLINED_FUNCTION_85();
  v133(v135);
  sub_1D4E50004(v172, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v132 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_96:
  OUTLINED_FUNCTION_62();
  if (v138)
  {
    if (!v136)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_31_0(v137);
    v141 = v47 && v139 == v140;
    if (!v141 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v136)
  {
    goto LABEL_21;
  }

  v142 = v48[17];
  v143 = (v185 + v142);
  v144 = *(v185 + v142 + 8);
  v145 = (v186 + v142);
  v146 = *(v186 + v142 + 8);
  if (v144)
  {
    if (!v146)
    {
      goto LABEL_21;
    }

    goto LABEL_111;
  }

  if (*v143 != *v145)
  {
    LOBYTE(v146) = 1;
  }

  if ((v146 & 1) == 0)
  {
LABEL_111:
    v147 = *(v169 + 48);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v148, v149, v150, v151);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v152, v153, v154, v155);
    OUTLINED_FUNCTION_57(v170, 1, v166);
    if (v47)
    {
      OUTLINED_FUNCTION_57(v170 + v147, 1, v166);
      if (v47)
      {
        sub_1D4E50004(v170, &unk_1EC7E9CA8, &unk_1D561D1D0);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1D4F39AB0(v170, v168, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_57(v170 + v147, 1, v166);
      if (!v156)
      {
        OUTLINED_FUNCTION_81();
        v157(v11, v170 + v147, v166);
        OUTLINED_FUNCTION_0_32();
        v159 = sub_1D4F7C014(v158);
        OUTLINED_FUNCTION_157_0(v159, v160, v161, v159);
        v162 = *(v167 + 8);
        v163 = OUTLINED_FUNCTION_93();
        v162(v163);
        v164 = OUTLINED_FUNCTION_85();
        v162(v164);
        sub_1D4E50004(v170, &unk_1EC7E9CA8, &unk_1D561D1D0);
        goto LABEL_21;
      }

      (*(v167 + 8))(v168, v166);
    }

    v60 = &qword_1EC7E9FB0;
    v61 = &qword_1D562C590;
    v62 = v170;
    goto LABEL_20;
  }

LABEL_21:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F7BF60()
{
  result = qword_1EC7EC988;
  if (!qword_1EC7EC988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7C014(&unk_1EC7EC990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC988);
  }

  return result;
}

unint64_t sub_1D4F7C014(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F7C058()
{
  result = qword_1EC7EC998;
  if (!qword_1EC7EC998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7C014(&unk_1EC7EC9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC998);
  }

  return result;
}

uint64_t sub_1D4F7C10C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1701667182 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x756F436B63617274 && a2 == 0xEA0000000000746ELL;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 7107189 && a2 == 0xE300000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1D5616168();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
}

unint64_t sub_1D4F7C5BC(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x6D614E65726E6567;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x73726566666FLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x44657361656C6572;
      break;
    case 13:
      result = 0x756F436B63617274;
      break;
    case 14:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F7C784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F7C10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F7C7AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F7C5B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F7C7D4(uint64_t a1)
{
  v2 = sub_1D4F7CCD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F7C810(uint64_t a1)
{
  v2 = sub_1D4F7CCD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVSeason.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v23 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9A8, &qword_1D56222C8);
  OUTLINED_FUNCTION_4();
  v28 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v30 = *(v25 + 24);
  v31 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v33 = sub_1D4F7CCD0();
  OUTLINED_FUNCTION_132(&type metadata for CloudTVSeason.Attributes.CodingKeys, v34, v33);
  sub_1D5616028();
  if (!v21)
  {
    type metadata accessor for CloudTVSeason.Attributes(0);
    OUTLINED_FUNCTION_117_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v30[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v35 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3(v35);
    OUTLINED_FUNCTION_37_1(3);
    sub_1D5616028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v30[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v36 = sub_1D4F889A8(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_20_3(v36);
    v37 = v30[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_119(v23 + v37);
    OUTLINED_FUNCTION_42_2(v30[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v38 = sub_1D4F7D12C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_20_3(v38);
    OUTLINED_FUNCTION_42_2(v30[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v39 = sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_20_3(v39);
    OUTLINED_FUNCTION_37_1(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v30[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
    v40 = sub_1D4F7D290();
    OUTLINED_FUNCTION_20_3(v40);
    OUTLINED_FUNCTION_119(v23 + v30[15]);
    OUTLINED_FUNCTION_37_1(12);
    sub_1D5616028();
    OUTLINED_FUNCTION_37_1(13);
    sub_1D5616058();
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_32();
    sub_1D4F7C014(v41);
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  (*(v28 + 8))(v22, v26);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4F7CCD0()
{
  result = qword_1EC7EC9B0;
  if (!qword_1EC7EC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9B0);
  }

  return result;
}

unint64_t sub_1D4F7CD24()
{
  result = qword_1EC7EC350;
  if (!qword_1EC7EC350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7C014(&qword_1EDD533A8);
    sub_1D4F7C014(&qword_1EDD533B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC350);
  }

  return result;
}

unint64_t sub_1D4F7CE0C()
{
  result = qword_1EC7EC9C0;
  if (!qword_1EC7EC9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F8884C(&unk_1EC7EC9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9C0);
  }

  return result;
}

unint64_t sub_1D4F7CEB4()
{
  result = qword_1EDD55630;
  if (!qword_1EDD55630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55630);
  }

  return result;
}

unint64_t sub_1D4F7CF08()
{
  result = qword_1EDD55638;
  if (!qword_1EDD55638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55638);
  }

  return result;
}

unint64_t sub_1D4F7CF5C()
{
  result = qword_1EC7EC9D0;
  if (!qword_1EC7EC9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7C014(&unk_1EDD53060);
    sub_1D4F7C014(&unk_1EDD53068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9D0);
  }

  return result;
}

unint64_t sub_1D4F7D044()
{
  result = qword_1EC7EC9E0;
  if (!qword_1EC7EC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7C014(&unk_1EDD530E0);
    sub_1D4F7C014(&unk_1EDD530E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9E0);
  }

  return result;
}

unint64_t sub_1D4F7D12C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v4();
    OUTLINED_FUNCTION_68_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F7D1A8()
{
  result = qword_1EC7EC9F8;
  if (!qword_1EC7EC9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F7C014(&unk_1EDD53108);
    sub_1D4F7C014(&unk_1EDD53110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9F8);
  }

  return result;
}

unint64_t sub_1D4F7D290()
{
  result = qword_1EC7ECA10;
  if (!qword_1EC7ECA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA08, &unk_1D56222F0);
    sub_1D4F7D314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA10);
  }

  return result;
}

unint64_t sub_1D4F7D314()
{
  result = qword_1EC7ECA18;
  if (!qword_1EC7ECA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F7C014(&unk_1EDD56FF8);
    sub_1D4F7C014(&unk_1EDD57000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA18);
  }

  return result;
}

void CloudTVSeason.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v58 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v57 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v56 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v55 = v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_45();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_71_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_31();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v23 = type metadata accessor for CloudTVSeason.Attributes(0);
  sub_1D4F39AB0(v0 + v23[5], v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  v24 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v24, v25, v19);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_215();
    v28(v27);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v29 = OUTLINED_FUNCTION_97_1();
    v30(v29);
  }

  if (*(v0 + v23[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v23[7] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_140_3();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v23[8], v2, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_5_1(v2);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v31(v53, v2, v54);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    v32 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_159_3(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_83_3();
    v36(v35);
  }

  if (*(v0 + v23[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v23[10], v55, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_74(v55);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v37 = OUTLINED_FUNCTION_84_2();
    v38(v37, v55, v57);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v39 = OUTLINED_FUNCTION_91_0();
    v40(v39);
  }

  if (*(v0 + v23[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v23[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v23[13] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v23[14]))
  {
    OUTLINED_FUNCTION_27();
    v41 = OUTLINED_FUNCTION_128();
    sub_1D4F085F8(v41);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v23[15], v56, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_74(v56);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v42 = OUTLINED_FUNCTION_84_2();
    v43(v42, v56, v57);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v44 = OUTLINED_FUNCTION_91_0();
    v45(v44);
  }

  if (*(v0 + v23[16] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v46 = (v0 + v23[17]);
  if (*(v46 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v47 = *v46;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v47);
  }

  sub_1D4F39AB0(v0 + v23[18], v58, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_5_1(v58);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v48 = OUTLINED_FUNCTION_10_25();
    v49(v48);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_32();
    sub_1D4F7C014(v50);
    OUTLINED_FUNCTION_30_9();
    sub_1D5614CB8();
    v51 = OUTLINED_FUNCTION_44_11();
    v52(v51);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVSeason.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v103 = v20;
  v25 = v24;
  v95 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v96 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v31 = OUTLINED_FUNCTION_22(v30);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = v94 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_114();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_71_1();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA48, &unk_1D5622300);
  OUTLINED_FUNCTION_4();
  v42 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_0();
  v102 = type metadata accessor for CloudTVSeason.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v100 = v25;
  v101 = v45;
  v46 = OUTLINED_FUNCTION_121();
  __swift_project_boxed_opaque_existential_1(v46, v47);
  sub_1D4F7CCD0();
  v98 = v21;
  v48 = v103;
  sub_1D5616398();
  if (v48)
  {
    v103 = v48;
    v51 = 0;
    v52 = 0;
    LODWORD(v22) = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v98) = 0;
  }

  else
  {
    v49 = v36;
    v94[0] = v34;
    v94[1] = v42;
    v54 = v97;
    v50 = sub_1D5615F38();
    v59 = v101;
    *v101 = v50;
    v59[1] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v61 = v102;
    sub_1D4F39A1C(v22, v59 + v102[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v104 = 2;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_34_15();
    *(v59 + v61[6]) = a10;
    OUTLINED_FUNCTION_153_0(3);
    v62 = sub_1D5615F38();
    v63 = (v59 + v61[7]);
    *v63 = v62;
    v63[1] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(a10) = 4;
    sub_1D4F888C0();
    sub_1D5615F78();
    sub_1D4F39A1C(v23, v59 + v61[8], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v104 = 5;
    sub_1D4F889A8(&qword_1EDD528F8);
    OUTLINED_FUNCTION_34_15();
    *(v59 + v61[9]) = a10;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 6;
    v55 = sub_1D4F88A24();
    sub_1D5615F78();
    sub_1D4F39A1C(v49, v59 + v61[10], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v104 = 7;
    sub_1D4F7D12C(&qword_1EDD52908);
    OUTLINED_FUNCTION_34_15();
    *(v59 + v61[11]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v104 = 8;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_34_15();
    v103 = 0;
    *(v59 + v61[12]) = a10;
    OUTLINED_FUNCTION_153_0(9);
    v53 = v98;
    v65 = v103;
    v66 = sub_1D5615F38();
    v103 = v65;
    if (v65)
    {
      v68 = OUTLINED_FUNCTION_63_6();
      v69(v68);
      LODWORD(v98) = 0;
      v51 = 1;
      OUTLINED_FUNCTION_11_25();
      OUTLINED_FUNCTION_86_5();
      LODWORD(v97) = v70;
    }

    else
    {
      v71 = (v101 + v102[13]);
      *v71 = v66;
      v71[1] = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA08, &unk_1D56222F0);
      v104 = 10;
      sub_1D4F88C5C();
      v53 = v98;
      v72 = v103;
      sub_1D5615F78();
      v103 = v72;
      if (!v72)
      {
        *(v101 + v102[14]) = a10;
        v53 = v98;
        v76 = v103;
        sub_1D5615F78();
        v99 = v76 == 0;
        v103 = v76;
        if (v76 || (sub_1D4F39A1C(v94[0], v101 + v102[15], &qword_1EC7EC960, &unk_1D56334C0), OUTLINED_FUNCTION_153_0(12), v53 = v98, v77 = v103, v78 = sub_1D5615F38(), (v103 = v77) != 0))
        {
          v80 = OUTLINED_FUNCTION_63_6();
          v81(v80);
          LODWORD(v95) = 0;
        }

        else
        {
          v83 = (v101 + v102[16]);
          *v83 = v78;
          v83[1] = v79;
          OUTLINED_FUNCTION_153_0(13);
          v53 = v98;
          v84 = v103;
          v85 = sub_1D5615F68();
          v103 = v84;
          if (!v84)
          {
            v87 = v101 + v102[17];
            *v87 = v85;
            v87[8] = v86 & 1;
            sub_1D560C0A8();
            OUTLINED_FUNCTION_0_32();
            sub_1D4F7C014(v88);
            v53 = v98;
            v89 = v103;
            sub_1D5615F78();
            v103 = v89;
            if (!v89)
            {
              v92 = OUTLINED_FUNCTION_63_6();
              v93(v92);
              sub_1D4F39A1C(v96, v101 + v102[18], &unk_1EC7E9CA8, &unk_1D561D1D0);
              OUTLINED_FUNCTION_23_20();
              sub_1D4F899DC();
              __swift_destroy_boxed_opaque_existential_1(v100);
              OUTLINED_FUNCTION_22_19();
              sub_1D4F89A30();
              goto LABEL_31;
            }
          }

          v90 = OUTLINED_FUNCTION_63_6();
          v91(v90);
          LODWORD(v95) = 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v100);
        OUTLINED_FUNCTION_11_25();
        OUTLINED_FUNCTION_86_5();
        LODWORD(v97) = v82;
        LODWORD(v98) = v82;
        v58 = 1;
        v56 = v101;
        v57 = v102;
LABEL_6:

        if (v52)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }

      v73 = OUTLINED_FUNCTION_63_6();
      v74(v73);
      v51 = 1;
      OUTLINED_FUNCTION_11_25();
      OUTLINED_FUNCTION_86_5();
      LODWORD(v97) = v75;
      LODWORD(v98) = v75;
    }
  }

  v56 = v101;
  v57 = v102;
  __swift_destroy_boxed_opaque_existential_1(v100);
  if (v51)
  {
    v58 = 0;
    v99 = 0;
    LODWORD(v95) = 0;
    goto LABEL_6;
  }

  LODWORD(v95) = 0;
  v99 = 0;
  v58 = 0;
  if (v52)
  {
LABEL_7:
    sub_1D4E50004(v56 + v57[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_19:
  if (v22)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (!v53)
  {
    if (!v54)
    {
      goto LABEL_23;
    }

LABEL_10:

    if (v55)
    {
      goto LABEL_24;
    }

LABEL_11:
    if (!v96)
    {
      goto LABEL_25;
    }

LABEL_12:

    if (v97)
    {
      goto LABEL_26;
    }

LABEL_13:
    if (!v98)
    {
      goto LABEL_27;
    }

LABEL_14:

    if (v58)
    {
      goto LABEL_28;
    }

LABEL_15:
    if (!v99)
    {
      goto LABEL_29;
    }

LABEL_16:
    sub_1D4E50004(v56 + v57[15], &qword_1EC7EC960, &unk_1D56334C0);
    if ((v95 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  sub_1D4E50004(v56 + v57[8], &qword_1EC7EC978, &unk_1D56222A0);
  if (v54)
  {
    goto LABEL_10;
  }

LABEL_23:
  if (!v55)
  {
    goto LABEL_11;
  }

LABEL_24:
  sub_1D4E50004(v56 + v57[10], &qword_1EC7EC960, &unk_1D56334C0);
  if (v96)
  {
    goto LABEL_12;
  }

LABEL_25:
  if (!v97)
  {
    goto LABEL_13;
  }

LABEL_26:

  if (v98)
  {
    goto LABEL_14;
  }

LABEL_27:
  if (!v58)
  {
    goto LABEL_15;
  }

LABEL_28:

  if (v99)
  {
    goto LABEL_16;
  }

LABEL_29:
  if (v95)
  {
LABEL_30:
  }

LABEL_31:
  OUTLINED_FUNCTION_26();
}

MusicKitInternal::CloudTVSeason::Relationships::CodingKeys_optional __swiftcall CloudTVSeason.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_1D5615EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CloudTVSeason.Relationships.CodingKeys.stringValue.getter()
{
  v1 = 0x7365726E6567;
  if (*v0 != 1)
  {
    v1 = 2003789939;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365646F73697065;
  }
}

uint64_t sub_1D4F7E7FC@<X0>(uint64_t *a1@<X8>)
{
  result = CloudTVSeason.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4F7E840(uint64_t a1)
{
  v2 = sub_1D4F88F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F7E87C(uint64_t a1)
{
  v2 = sub_1D4F88F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVSeason.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v88 = v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  v79 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v77 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v10);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA60, &unk_1D5627000);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_19(v12, v75);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v85 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v80 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_39_9(v18, v76);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA68, &unk_1D5622330);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_114();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_71_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA80, &unk_1D5622348);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_93_5();
  v29 = *(v28 + 56);
  v30 = OUTLINED_FUNCTION_140_3();
  sub_1D4F39AB0(v30, v31, &qword_1EC7ECA78, &qword_1D5622340);
  sub_1D4F39AB0(v88, v1 + v29, &qword_1EC7ECA78, &qword_1D5622340);
  v32 = OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_57(v32, v33, v20);
  if (v34)
  {
    OUTLINED_FUNCTION_57(v1 + v29, 1, v20);
    if (v34)
    {
      sub_1D4E50004(v1, &qword_1EC7ECA78, &qword_1D5622340);
      goto LABEL_12;
    }

LABEL_9:
    v37 = &qword_1EC7ECA80;
    v38 = &unk_1D5622348;
LABEL_10:
    v39 = v1;
LABEL_21:
    sub_1D4E50004(v39, v37, v38);
    goto LABEL_22;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v1 + v29, 1, v20);
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_123_2();
    v36(v35);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_3();
  v40(v3, v1 + v29, v20);
  sub_1D4F88EF0();
  OUTLINED_FUNCTION_97_1();
  v41 = sub_1D5614D18();
  v42 = *(v22 + 8);
  v43 = OUTLINED_FUNCTION_149_0();
  v42(v43);
  v44 = OUTLINED_FUNCTION_123_2();
  v42(v44);
  sub_1D4E50004(v1, &qword_1EC7ECA78, &qword_1D5622340);
  if ((v41 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  type metadata accessor for CloudTVSeason.Relationships(0);
  v45 = *(v86 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v46, v47, v48, v49);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v50, v51, v52, v53);
  OUTLINED_FUNCTION_57(v0, 1, v87);
  if (v34)
  {
    OUTLINED_FUNCTION_9_25(v0 + v45);
    if (v34)
    {
      sub_1D4E50004(v0, &qword_1EC7EA7F0, &unk_1D561E8C0);
LABEL_24:
      v57 = *(v81 + 48);
      v1 = v82;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v58, v59, v60, v61);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v62, v63, v64, v65);
      v66 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_4_18(v66, v67);
      if (v34)
      {
        OUTLINED_FUNCTION_43_0(v82 + v57);
        if (v34)
        {
          sub_1D4E50004(v82, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D4F39AB0(v82, v78, &qword_1EC7ECA58, &unk_1D5622310);
        OUTLINED_FUNCTION_43_0(v82 + v57);
        if (!v68)
        {
          OUTLINED_FUNCTION_40_3();
          v71(v77, v82 + v57, v83);
          sub_1D4F88DE8();
          OUTLINED_FUNCTION_85();
          sub_1D5614D18();
          v72 = *(v79 + 8);
          v73 = OUTLINED_FUNCTION_46_1();
          v72(v73);
          v74 = OUTLINED_FUNCTION_215();
          v72(v74);
          sub_1D4E50004(v82, &qword_1EC7ECA58, &unk_1D5622310);
          goto LABEL_22;
        }

        v69 = OUTLINED_FUNCTION_215();
        v70(v69);
      }

      v37 = &qword_1EC7ECA60;
      v38 = &unk_1D5627000;
      goto LABEL_10;
    }

LABEL_20:
    v37 = &qword_1EC7ECA68;
    v38 = &unk_1D5622330;
    v39 = v0;
    goto LABEL_21;
  }

  sub_1D4F39AB0(v0, v84, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_9_25(v0 + v45);
  if (v54)
  {
    (*(v85 + 8))(v84, v87);
    goto LABEL_20;
  }

  (*(v85 + 32))(v80, v0 + v45, v87);
  sub_1D4F88E6C();
  v55 = sub_1D5614D18();
  v56 = *(v85 + 8);
  v56(v80, v87);
  v56(v84, v87);
  sub_1D4E50004(v0, &qword_1EC7EA7F0, &unk_1D561E8C0);
  if (v55)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVSeason.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECAA0, &qword_1D5622358);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  v6 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = sub_1D4F88F74();
  OUTLINED_FUNCTION_132(&type metadata for CloudTVSeason.Relationships.CodingKeys, v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  sub_1D4F88FC8();
  OUTLINED_FUNCTION_21_3();
  sub_1D5616068();
  if (!v0)
  {
    type metadata accessor for CloudTVSeason.Relationships(0);
    OUTLINED_FUNCTION_117_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89134();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F892A0();
    OUTLINED_FUNCTION_21_3();
    sub_1D5616068();
  }

  return (*(v4 + 8))(v1, v2);
}

void CloudTVSeason.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v37 = v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v38 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v36 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v35 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31();
  v19 = OUTLINED_FUNCTION_93();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_118_1();
  v23 = OUTLINED_FUNCTION_149_0();
  sub_1D4F39AB0(v23, v24, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v0, 1, v15);
  if (v25)
  {
    v26 = v37;
    sub_1D56162F8();
  }

  else
  {
    (*(v17 + 32))(v1, v0, v15);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v17 + 8))(v1, v15);
    v26 = v37;
  }

  v27 = type metadata accessor for CloudTVSeason.Relationships(0);
  sub_1D4F39AB0(v0 + *(v27 + 20), v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_9_25(v2);
  if (v25)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_40_3();
    v28(v35, v2, v9);
    sub_1D56162F8();
    v29 = sub_1D4F89490();
    OUTLINED_FUNCTION_162_2(v26, v30, v29);
    (*(v36 + 8))(v35, v9);
  }

  sub_1D4F39AB0(v0 + *(v27 + 24), v38, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_5_1(v38);
  if (v25)
  {
    sub_1D56162F8();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_29_13();
    v32(v31, v38, v39);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    v33 = OUTLINED_FUNCTION_44_11();
    v34(v33);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVSeason.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_47();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  v33 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v34 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_114();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_38_2();
  v17 = OUTLINED_FUNCTION_98();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_118_1();
  sub_1D56162D8();
  v21 = OUTLINED_FUNCTION_123_2();
  sub_1D4F39AB0(v21, v22, &qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_57(v0, 1, v13);
  if (v23)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    v24(v2, v0, v13);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v15 + 8))(v2, v13);
  }

  v25 = type metadata accessor for CloudTVSeason.Relationships(0);
  sub_1D4F39AB0(v0 + *(v25 + 20), v1, &qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_74(v1);
  if (v23)
  {
    sub_1D56162F8();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_84_2();
    v27(v26, v1, v9);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    v28 = OUTLINED_FUNCTION_91_0();
    v29(v28);
  }

  sub_1D4F39AB0(v0 + *(v25 + 24), v34, &qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_1(v34);
  if (v23)
  {
    sub_1D56162F8();
  }

  else
  {
    v30 = OUTLINED_FUNCTION_84_2();
    v31(v30, v34, v35);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    (*(v33 + 8))(v32, v35);
  }

  sub_1D5616328();
  OUTLINED_FUNCTION_46();
}

void CloudTVSeason.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_22(v7, v20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECAF8, &qword_1D5622360);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for CloudTVSeason.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D4F88F74();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F89598();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v1, v17, &qword_1EC7ECA78, &qword_1D5622340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89704();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    sub_1D4F39A1C(v2, v17 + *(v13 + 20), &qword_1EC7EA7F0, &unk_1D561E8C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F89870();
    OUTLINED_FUNCTION_112_3();
    sub_1D5615F78();
    v18 = OUTLINED_FUNCTION_88_2();
    v19(v18);
    sub_1D4F39A1C(v21, v17 + *(v13 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    sub_1D4F899DC();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F7FE00(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v18, &qword_1EC7ECA78, &qword_1D5622340);
  if (__swift_getEnumTagSinglePayload(v18, 1, v12) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    sub_1D56162F8();
    sub_1D4F8940C();
    sub_1D5614CB8();
    (*(v13 + 8))(v15, v12);
  }

  v19 = v33;
  sub_1D4F39AB0(v2 + *(v33 + 20), v11, &qword_1EC7EA7F0, &unk_1D561E8C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v7);
  v21 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v23 = v28;
    v22 = v29;
    (*(v29 + 32))(v28, v11, v7);
    sub_1D56162F8();
    sub_1D4F89490();
    sub_1D5614CB8();
    (*(v22 + 8))(v23, v7);
  }

  v24 = v32;
  sub_1D4F39AB0(v3 + *(v19 + 24), v32, &qword_1EC7ECA58, &unk_1D5622310);
  if (__swift_getEnumTagSinglePayload(v24, 1, v21) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v26 = v30;
    v25 = v31;
    (*(v31 + 32))(v30, v24, v21);
    sub_1D56162F8();
    sub_1D4F89514();
    sub_1D5614CB8();
    (*(v25 + 8))(v26, v21);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F802DC(uint64_t a1)
{
  v2 = sub_1D4F89A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F80318(uint64_t a1)
{
  v2 = sub_1D4F89A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F8041C(uint64_t a1)
{
  v2 = sub_1D4F89AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F80458(uint64_t a1)
{
  v2 = sub_1D4F89AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D4F804D8()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_71_1();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_1D56163D8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_26();
}

uint64_t CloudTVSeason.attributes.getter()
{
  OUTLINED_FUNCTION_160_2();
  OUTLINED_FUNCTION_23_20();
  return sub_1D4F899DC();
}

uint64_t static CloudTVSeason.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7EC948 = a1;
}

uint64_t (*static CloudTVSeason.relationshipCodingKeys.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4F8077C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7EC948;
}

uint64_t sub_1D4F807CC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7EC948 = v1;
}

uint64_t CloudTVSeason.views.getter()
{
  result = OUTLINED_FUNCTION_160_2();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudTVSeason.meta.getter()
{
  result = OUTLINED_FUNCTION_160_2();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D4F808C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_64_1();
  sub_1D5610088();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C050;
  result = sub_1D5610068();
  qword_1EDD578B0 = v0;
  return result;
}

void static CloudTVSeason.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = OUTLINED_FUNCTION_106_0();
  type metadata accessor for CloudTVSeason.Relationships(v4);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB38, &qword_1D5622380);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = *v1 == *v0 && v1[1] == v0[1];
  if (v10 || (sub_1D5616168() & 1) != 0)
  {
    v11 = type metadata accessor for CloudTVSeason(0);
    static CloudTVSeason.Attributes.== infix(_:_:)();
    if (v12)
    {
      v13 = *(v11 + 24);
      v14 = *(v8 + 48);
      sub_1D4F39AB0(v1 + v13, v2, &qword_1EC7ECB30, &unk_1D565D0F0);
      sub_1D4F39AB0(v0 + v13, v2 + v14, &qword_1EC7ECB30, &unk_1D565D0F0);
      OUTLINED_FUNCTION_74(v2);
      if (!v10)
      {
        sub_1D4F39AB0(v2, v3, &qword_1EC7ECB30, &unk_1D565D0F0);
        OUTLINED_FUNCTION_74(v2 + v14);
        if (!v15)
        {
          sub_1D4F89CF0();
          OUTLINED_FUNCTION_93();
          static CloudTVSeason.Relationships.== infix(_:_:)();
          sub_1D4F89A30();
          sub_1D4F89A30();
          sub_1D4E50004(v2, &qword_1EC7ECB30, &unk_1D565D0F0);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_2_18();
        sub_1D4F89A30();
LABEL_15:
        sub_1D4E50004(v2, &qword_1EC7ECB38, &qword_1D5622380);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_74(v2 + v14);
      if (!v10)
      {
        goto LABEL_15;
      }

      sub_1D4E50004(v2, &qword_1EC7ECB30, &unk_1D565D0F0);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F80C38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7377656976 && a2 == 0xE500000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1635018093 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D4F80DE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F80E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4F80ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F80C38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F80EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F80DDC();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F80F1C(uint64_t a1)
{
  v2 = sub_1D4F89B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F80F58(uint64_t a1)
{
  v2 = sub_1D4F89B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVSeason.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB40, &qword_1D5622388);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  v6 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v8 = sub_1D4F89B4C();
  OUTLINED_FUNCTION_132(&type metadata for CloudTVSeason.CodingKeys, v9, v8);
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v0)
  {
    type metadata accessor for CloudTVSeason(0);
    OUTLINED_FUNCTION_117_3();
    type metadata accessor for CloudTVSeason.Attributes(0);
    OUTLINED_FUNCTION_73_5();
    sub_1D4F7C014(v10);
    OUTLINED_FUNCTION_8_1();
    sub_1D56160C8();
    type metadata accessor for CloudTVSeason.Relationships(0);
    OUTLINED_FUNCTION_72_9();
    sub_1D4F7C014(v11);
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    sub_1D4F89BF4();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    sub_1D4F89C48();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t CloudTVSeason.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for CloudTVSeason(0);
  CloudTVSeason.Attributes.hash(into:)();
  sub_1D4F876D4();
  sub_1D56162F8();
  return sub_1D56162F8();
}

uint64_t sub_1D4F81284(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

void CloudTVSeason.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v20 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for CloudTVSeason.Attributes(v6);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB78, &unk_1D5622390);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_114();
  v9 = type metadata accessor for CloudTVSeason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = OUTLINED_FUNCTION_122_1();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D4F89B4C();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1D4F89C9C();
    sub_1D5615FD8();
    *v13 = v21;
    v13[1] = v22;
    OUTLINED_FUNCTION_73_5();
    sub_1D4F7C014(v16);
    sub_1D5615FD8();
    sub_1D4F89CF0();
    type metadata accessor for CloudTVSeason.Relationships(0);
    OUTLINED_FUNCTION_72_9();
    sub_1D4F7C014(v17);
    sub_1D5615F78();
    sub_1D4F39A1C(v20, v13 + v9[6], &qword_1EC7ECB30, &unk_1D565D0F0);
    sub_1D4F89D44();
    OUTLINED_FUNCTION_128_1(&type metadata for CloudTVSeason.Associations);
    *(v13 + v9[7]) = 2;
    sub_1D4F89D98();
    OUTLINED_FUNCTION_128_1(&type metadata for CloudTVSeason.Metadata);
    v18 = OUTLINED_FUNCTION_51_1();
    v19(v18);
    *(v13 + v9[8]) = 2;
    OUTLINED_FUNCTION_78_5();
    sub_1D4F899DC();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_26_14();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4F817A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void TVSeason.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  v286 = v21;
  v23 = v22;
  v283 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v281 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  v282 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v279 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v285 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v41 = OUTLINED_FUNCTION_22(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13();
  v280 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_135();
  v278 = v44;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v47);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v50);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_3();
  v284 = v52;
  OUTLINED_FUNCTION_70_0();
  v271 = sub_1D56128C8();
  OUTLINED_FUNCTION_4();
  v270 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  v57 = OUTLINED_FUNCTION_22(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v59);
  v265 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v264 = v60;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v62);
  v263 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v65);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v69 = OUTLINED_FUNCTION_22(v68);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v73 = OUTLINED_FUNCTION_22(v72);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v76);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v79);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_13_3();
  v82 = OUTLINED_FUNCTION_48(v81);
  v287 = type metadata accessor for CloudTVSeason(v82);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5_0();
  v288 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v85);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_31();
  v87 = type metadata accessor for TVSeasonPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_5();
  v91 = v90 - v89;
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v254 = v92;
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
  v96 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v96);
  v100 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v96);
  OUTLINED_FUNCTION_33();
  v257 = v100;
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v100);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v96);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_33();
  v267 = v117;
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_33();
  v272 = v121;
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
  v125 = v87[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  v277 = v125;
  OUTLINED_FUNCTION_33();
  v276 = v126;
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v126);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v130 = sub_1D560D9A8();
  __swift_project_value_buffer(v130, qword_1EDD53C60);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  OUTLINED_FUNCTION_24();
  sub_1D56105B8();
  sub_1D4E50004(v20, &qword_1EC7EB5C0, &unk_1D56223C0);
  sub_1D5610658();
  v135 = sub_1D5610618();
  v273 = v136;
  v137 = sub_1D56105C8();
  v138 = sub_1D56105F8();
  v139 = sub_1D56105E8();
  v140 = v23;
  v141 = sub_1D56105A8();
  *(v91 + v87[13]) = 2;
  *(v91 + v87[14]) = 2;
  v289 = v87;
  v142 = v91 + v87[16];
  *v142 = 0;
  *(v142 + 8) = 1;
  if (qword_1EC7E9378 != -1)
  {
    swift_once();
  }

  v143 = qword_1EC87C4B8;
  if (qword_1EC87C4B8 >> 62)
  {
    sub_1D560CDE8();

    OUTLINED_FUNCTION_123_2();
    v251 = sub_1D5615E18();

    v143 = v251;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v91 + v87[28]) = v143;
  v144 = (v91 + v87[31]);
  *v144 = v135;
  v144[1] = v273;
  *(v91 + v87[32]) = v137;
  *(v91 + v87[33]) = v138;
  *(v91 + v87[34]) = v139;
  *(v91 + v87[35]) = v141;
  v274 = v140;
  sub_1D5610648();
  v145 = (v288 + *(v287 + 20));
  v146 = type metadata accessor for CloudTVSeason.Attributes(0);
  sub_1D4F39AB0(v145 + v146[5], v255, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_1(v255);
  if (v215)
  {
    sub_1D4E50004(v255, &qword_1EC7EB5B8, &unk_1D56206A0);
    OUTLINED_FUNCTION_143_2();
    v147 = v256;
  }

  else
  {
    v147 = v256;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0();
    v148 = OUTLINED_FUNCTION_159();
    v149(v148);
    OUTLINED_FUNCTION_143_2();
  }

  __swift_storeEnumTagSinglePayload(v147, v150, 1, v254);
  v151 = OUTLINED_FUNCTION_93();
  sub_1D4E68940(v151, v152, v153, v154);
  v155 = *(v145 + v146[6]);
  if (v155)
  {
    v155 = sub_1D511C2A4(v155);
  }

  v156 = (v91 + v289[6]);
  v157 = v289[8];
  *(v91 + v289[5]) = v155;
  v158 = (v145 + v146[7]);
  v159 = v158[1];
  *v156 = *v158;
  v156[1] = v159;
  *(v91 + v157) = *(v145 + v146[9]);
  sub_1D4F39AB0(v145 + v146[10], v139, &qword_1EC7EC960, &unk_1D56334C0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v139, 1, v160);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v139, &qword_1EC7EC960, &unk_1D56334C0);
    v162 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    (*(v163 + 8))(v139, v160);
    v162 = 0;
  }

  __swift_storeEnumTagSinglePayload(v137, v162, 1, v257);
  v164 = v289[10];
  v165 = v91 + v289[11];
  v166 = v289[12];
  OUTLINED_FUNCTION_103_2();
  sub_1D4E68940(v137, v167, v168, v169);
  *(v91 + v164) = *(v145 + v146[11]);
  v170 = v145 + v146[17];
  v171 = *v170;
  LOBYTE(v170) = v170[8];
  *v165 = v171;
  *(v165 + 8) = v170;
  *(v91 + v166) = *(v145 + v146[12]);
  if (*(v145 + v146[14]))
  {

    sub_1D501B268();
  }

  else
  {

    v172 = 0;
  }

  *(v91 + v289[17]) = v172;
  sub_1D4F39AB0(v145 + v146[15], v258, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_1(v258);
  if (v215)
  {
    sub_1D4E50004(v258, &qword_1EC7EC960, &unk_1D56334C0);
    v175 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0();
    v173 = OUTLINED_FUNCTION_159();
    v174(v173);
    v175 = 0;
  }

  __swift_storeEnumTagSinglePayload(v259, v175, 1, v257);
  OUTLINED_FUNCTION_103_2();
  sub_1D4E68940(v259, v176, v177, v178);
  sub_1D56107A8();
  (*(v264 + 104))(v262, *MEMORY[0x1E6975DC8], v265);
  sub_1D5610798();
  (*(v264 + 8))(v262, v265);
  OUTLINED_FUNCTION_136();
  v179(v261, v263);
  OUTLINED_FUNCTION_103_2();
  sub_1D4E68940(v260, v180, v181, v182);
  v183 = v146[8];
  sub_1D4F39AB0(v145 + v183, v266, &qword_1EC7EC978, &unk_1D56222A0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_1(v266);
  if (v215)
  {
    sub_1D4E50004(v266, &qword_1EC7EC978, &unk_1D56222A0);
    v187 = 0;
    v189 = 0;
  }

  else
  {
    sub_1D5610708();
    OUTLINED_FUNCTION_24_0();
    v185 = OUTLINED_FUNCTION_159();
    v186(v185);
    v187 = sub_1D56128A8();
    v189 = v188;
    (*(v270 + 8))(v269, v271);
  }

  v191 = v288;
  v190 = v289;
  v192 = (v91 + v289[20]);
  v193 = (v91 + v289[21]);
  *v192 = v187;
  v192[1] = v189;
  v194 = v145[1];
  *v193 = *v145;
  v193[1] = v194;
  sub_1D4F39AB0(v145 + v183, v268, &qword_1EC7EC978, &unk_1D56222A0);
  v195 = OUTLINED_FUNCTION_105();
  v197 = __swift_getEnumTagSinglePayload(v195, v196, v184);

  if (v197 == 1)
  {
    sub_1D4E50004(v268, &qword_1EC7EC978, &unk_1D56222A0);
    v198 = 0;
    v199 = 0;
  }

  else
  {
    sub_1D5610708();
    OUTLINED_FUNCTION_24_0();
    (*(v200 + 8))(v268, v184);
    v198 = sub_1D56128B8();
    v199 = v201;
    OUTLINED_FUNCTION_136();
    v202(v269, v271);
  }

  v203 = (v91 + v289[22]);
  v204 = (v91 + v289[23]);
  *v203 = v198;
  v203[1] = v199;
  v205 = (v145 + v146[13]);
  v206 = v205[1];
  *v204 = *v205;
  v204[1] = v206;

  OUTLINED_FUNCTION_103_2();
  sub_1D4F89DEC(v207, v208);
  v209 = *(v287 + 24);
  sub_1D4F39AB0(v288 + v209, v275, &qword_1EC7ECB30, &unk_1D565D0F0);
  v210 = type metadata accessor for CloudTVSeason.Relationships(0);
  OUTLINED_FUNCTION_1(v275);
  if (v215)
  {
    v211 = &qword_1EC7ECB30;
    v212 = &unk_1D565D0F0;
    v213 = v275;
  }

  else
  {
    sub_1D4F39AB0(v275, v252, &qword_1EC7ECA78, &qword_1D5622340);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
    v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    OUTLINED_FUNCTION_43_0(v252);
    if (!v215)
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v216, v217, v218, v219);
      type metadata accessor for TVEpisode(0);
      sub_1D4F7C014(&qword_1EC7ECBB8);
      OUTLINED_FUNCTION_71_6();
      sub_1D4F7C014(v220);
      OUTLINED_FUNCTION_110_3();
      v190 = v289;
      sub_1D5612368();
      v191 = v288;
      sub_1D4E50004(v253, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      (*(v221 + 8))(v252, v214);
      v222 = 0;
      goto LABEL_34;
    }

    v211 = &qword_1EC7ECA78;
    v212 = &qword_1D5622340;
    v213 = v252;
  }

  sub_1D4E50004(v213, v211, v212);
  v222 = 1;
LABEL_34:
  __swift_storeEnumTagSinglePayload(v284, v222, 1, v267);
  OUTLINED_FUNCTION_103_2();
  sub_1D4E68940(v284, v223, v224, v225);
  sub_1D4F39AB0(v191 + v209, v278, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v278);
  if (v215)
  {
    sub_1D4E50004(v278, &qword_1EC7ECB30, &unk_1D565D0F0);
    v226 = 1;
    v227 = v286;
  }

  else
  {
    sub_1D4F39AB0(v278 + *(v210 + 20), v279, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_43_0(v279);
    v227 = v286;
    if (v229)
    {
      sub_1D4E50004(v279, &qword_1EC7EA7F0, &unk_1D561E8C0);
      v226 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v230, v231, v232, v233);
      sub_1D5613C48();
      OUTLINED_FUNCTION_77_2();
      sub_1D4F7C014(v234);
      OUTLINED_FUNCTION_110_3();
      sub_1D5612368();
      sub_1D4E50004(v253, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      v191 = v288;
      (*(v235 + 8))(v279, v228);
      v226 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v285, v226, 1, v272);
  OUTLINED_FUNCTION_103_2();
  sub_1D4E68940(v285, v236, v237, v238);
  sub_1D4F39AB0(v191 + v209, v280, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_1(v280);
  if (v215)
  {
    sub_1D4E50004(v280, &qword_1EC7ECB30, &unk_1D565D0F0);
    v239 = 1;
    v240 = v282;
  }

  else
  {
    sub_1D4F39AB0(v280 + *(v210 + 24), v281, &qword_1EC7ECA58, &unk_1D5622310);
    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_1(v281);
    v240 = v282;
    if (v241)
    {
      sub_1D4E50004(v281, &qword_1EC7ECA58, &unk_1D5622310);
      v239 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v242, v243, v244, v245);
      type metadata accessor for TVShow(0);
      sub_1D4F7C014(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4F7C014(v246);
      OUTLINED_FUNCTION_110_3();
      sub_1D5612368();
      v190 = v289;
      sub_1D4E50004(v253, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0();
      v247 = OUTLINED_FUNCTION_159();
      v248(v247);
      v239 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v240, v239, 1, v276);
  sub_1D4E68940(v240, v91 + v277, &qword_1EC7ECBA0, &unk_1D56270F0);
  v290[3] = v190;
  v290[4] = sub_1D4F7C014(&qword_1EC7EA388);
  __swift_allocate_boxed_opaque_existential_0(v290);
  sub_1D4F899DC();
  TVSeason.init(propertyProvider:)(v290, v283);

  OUTLINED_FUNCTION_24_0();
  (*(v249 + 8))(v227);
  OUTLINED_FUNCTION_24_0();
  (*(v250 + 8))(v274);
  OUTLINED_FUNCTION_26_14();
  sub_1D4F89A30();
  sub_1D4F89A30();
  OUTLINED_FUNCTION_46();
}

void TVSeason.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v247 = v3;
  v248 = v4;
  v246 = v5;
  v242 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v241 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5610088();
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v18);
  v240 = sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v239 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v22 = OUTLINED_FUNCTION_48(v21);
  v236 = type metadata accessor for CloudTVSeason(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v254 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v32);
  sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v244 = v34;
  v245 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v243 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v36);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_3();
  v249 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA0, &unk_1D56270F0);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  v255 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  v44 = OUTLINED_FUNCTION_22(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_2();
  v257 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  v48 = OUTLINED_FUNCTION_22(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v259 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECB30, &unk_1D565D0F0);
  v52 = OUTLINED_FUNCTION_22(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  v258 = v54;
  OUTLINED_FUNCTION_70_0();
  v235 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v234 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v58);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v60);
  v232 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v231 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v65 = OUTLINED_FUNCTION_22(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v211 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v70 = OUTLINED_FUNCTION_22(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  v253 = v71;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_2();
  v252 = v73;
  OUTLINED_FUNCTION_70_0();
  v223 = sub_1D56128C8();
  OUTLINED_FUNCTION_4();
  v222 = v74;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v76);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_154_3(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v79);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_38_2();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v81);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_13_3();
  v250 = v83;
  v84 = OUTLINED_FUNCTION_70_0();
  v85 = type metadata accessor for CloudTVSeason.Attributes(v84);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  v256 = v87;
  v229 = TVSeason.showName.getter();
  v228 = v88;
  if (qword_1EC7E8B58 != -1)
  {
    swift_once();
  }

  sub_1D56140F8();
  sub_1D4F7C014(&unk_1EDD546A0);
  sub_1D4F7C014(&qword_1EC7EA3C8);
  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v2);
  if (v89)
  {
    sub_1D4E50004(v2, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0();
    v90 = OUTLINED_FUNCTION_135_0();
    v91(v90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v92 = OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_24_8(v92, v93, v94, v95);
  if (qword_1EC7E8B60 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  if (v260)
  {
    v96 = v260;
  }

  else
  {
    v96 = MEMORY[0x1E69E7CC0];
  }

  v226 = sub_1D511C730(v96);

  v97 = v227;
  if (qword_1EC7E8B68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v225 = v260;
  v224 = v261;
  if (qword_1EC7E8BC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v98 = v0;
  if (qword_1EC7E8BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  sub_1D56128D8();
  sub_1D5612898();
  OUTLINED_FUNCTION_136();
  v99(v1, v223);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v223 = v260;
  v104 = v252;
  v105 = v230;
  if (qword_1EC7E8B80 != -1)
  {
    swift_once();
  }

  v106 = sub_1D5610978();
  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v68);
  if (v89)
  {
    sub_1D4E50004(v68, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    v107 = OUTLINED_FUNCTION_15_2();
    v108(v107);
  }

  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_24_8(v104, v110, v111, v109);
  OUTLINED_FUNCTION_96_3();
  sub_1D4F84B48(v112, v113, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();

  v222 = v260;
  if (qword_1EC7E8B90 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v218 = v260;
  v221 = TVSeason.title.getter();
  v220 = v115;
  v116 = v253;
  if (qword_1EC7E8BB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBC0, &qword_1D562BF20);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  sub_1D501B598();
  v219 = v117;

  if (qword_1EC7E8BF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_32_1(v97);
  if (v89)
  {
    sub_1D4E50004(v97, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0();
    (*(v118 + 8))(v97, v106);
  }

  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_24_8(v116, v120, v121, v119);
  sub_1D56107A8();
  if (qword_1EC7E8BC0 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  OUTLINED_FUNCTION_108_5();
  v123 = *(v122 - 256);
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  (*(v234 + 104))(v233, *MEMORY[0x1E6975DC8], v235);
  v124 = v105;
  v227 = sub_1D56107B8();
  v126 = v125;
  v127 = OUTLINED_FUNCTION_122_1();
  v128(v127);
  sub_1D4E50004(v123, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_136();
  v129(v124, v232);
  if (qword_1EC7E8B88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  if (v261)
  {
    v130 = 0;
  }

  else
  {
    v130 = v260;
  }

  if (qword_1EC7E8BE8 != -1)
  {
    swift_once();
  }

  sub_1D560C0A8();
  v131 = v256;
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  if (v218)
  {
    v132 = v218;
  }

  else
  {
    v132 = MEMORY[0x1E69E7CC0];
  }

  v133 = v228;
  *v131 = v229;
  v131[1] = v133;
  sub_1D4F39A1C(v250, v131 + v85[5], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_1(v85[6]);
  v134 = (v131 + v85[7]);
  v135 = v224;
  *v134 = v225;
  v134[1] = v135;
  sub_1D4F39A1C(v251, v131 + v85[8], &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_148_1(v85[9]);
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39A1C(v136, v137, v138, v139);
  OUTLINED_FUNCTION_148_1(v85[11]);
  *(v131 + v85[12]) = v132;
  v140 = (v131 + v85[13]);
  v141 = v220;
  *v140 = v221;
  v140[1] = v141;
  OUTLINED_FUNCTION_148_1(v85[14]);
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39A1C(v142, v143, v144, v145);
  v146 = (v131 + v85[16]);
  *v146 = v227;
  v146[1] = v126;
  v147 = v131 + v85[17];
  *v147 = v130;
  v147[8] = 0;
  v148 = type metadata accessor for CloudTVSeason.Relationships(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v148);
  if (qword_1EC7E8BF8 != -1)
  {
    swift_once();
  }

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v153 = v98;
  if (qword_1EC7E8C00 != -1)
  {
    swift_once();
  }

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  v155 = v255;
  if (qword_1EC7E8C08 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_59_7();
  sub_1D560EC28();
  OUTLINED_FUNCTION_57(v259, 1, v152);
  if (!v89 || (OUTLINED_FUNCTION_9_25(v257), !v89) || (OUTLINED_FUNCTION_74(v155), !v89))
  {
    v253 = v148;
    v156 = v212;
    sub_1D4F39AB0(v259, v212, &qword_1EC7ECBA8, &unk_1D56223B0);
    OUTLINED_FUNCTION_57(v156, 1, v152);
    if (v89)
    {
      sub_1D4E50004(v156, &qword_1EC7ECBA8, &unk_1D56223B0);
    }

    else
    {
      type metadata accessor for TVEpisode(0);
      sub_1D4F7C014(&qword_1EC7ECBB8);
      OUTLINED_FUNCTION_71_6();
      sub_1D4F7C014(v157);
      OUTLINED_FUNCTION_104_4();
      sub_1D4F1ABE8(v158);
      sub_1D560DA98();
      (*(v244 + 8))(v98, v245);
      OUTLINED_FUNCTION_24_0();
      (*(v159 + 8))(v156, v152);
    }

    v160 = v216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
    v161 = OUTLINED_FUNCTION_144_1();
    OUTLINED_FUNCTION_24_8(v161, v162, v163, v164);
    v165 = v213;
    sub_1D4F39AB0(v257, v213, &qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_9_25(v165);
    v166 = v255;
    if (v89)
    {
      sub_1D4E50004(v165, &qword_1EC7EA788, &unk_1D56223A0);
    }

    else
    {
      sub_1D5613C48();
      OUTLINED_FUNCTION_77_2();
      sub_1D4F7C014(v167);
      v98 = v243;
      sub_1D4F1ABE8(v243);
      sub_1D560DA98();
      (*(v244 + 8))(v98, v245);
      OUTLINED_FUNCTION_24_0();
      (*(v168 + 8))(v165, v154);
    }

    v169 = v217;
    v170 = v215;
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
    OUTLINED_FUNCTION_24_8(v160, v172, v173, v171);
    sub_1D4F39AB0(v166, v170, &qword_1EC7ECBA0, &unk_1D56270F0);
    OUTLINED_FUNCTION_74(v170);
    if (v89)
    {
      sub_1D4E50004(v258, &qword_1EC7ECB30, &unk_1D565D0F0);
      sub_1D4E50004(v170, &qword_1EC7ECBA0, &unk_1D56270F0);
    }

    else
    {
      type metadata accessor for TVShow(0);
      sub_1D4F7C014(&qword_1EC7ECBB0);
      OUTLINED_FUNCTION_76_6();
      sub_1D4F7C014(v174);
      OUTLINED_FUNCTION_104_4();
      sub_1D4F1ABE8(v175);
      sub_1D560DA98();
      (*(v244 + 8))(v98, v245);
      sub_1D4E50004(v258, &qword_1EC7ECB30, &unk_1D565D0F0);
      OUTLINED_FUNCTION_24_0();
      v176 = OUTLINED_FUNCTION_91_0();
      v177(v176);
    }

    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    OUTLINED_FUNCTION_24_8(v169, v179, v180, v178);
    v181 = v214;
    sub_1D4F39A1C(v249, v214, &qword_1EC7ECA78, &qword_1D5622340);
    v182 = v253;
    sub_1D4F39A1C(v160, v181 + *(v253 + 20), &qword_1EC7EA7F0, &unk_1D561E8C0);
    sub_1D4F39A1C(v169, v181 + *(v182 + 24), &qword_1EC7ECA58, &unk_1D5622310);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v182);
    v186 = OUTLINED_FUNCTION_128();
    sub_1D4F39A1C(v186, v187, v188, v189);
  }

  v191 = *v153;
  v190 = v153[1];
  v192 = v236;
  OUTLINED_FUNCTION_23_20();
  v193 = v237;
  sub_1D4F899DC();
  sub_1D4F39AB0(v258, v193 + v192[6], &qword_1EC7ECB30, &unk_1D565D0F0);
  *v193 = v191;
  v193[1] = v190;
  *(v193 + v192[7]) = 1;
  *(v193 + v192[8]) = 1;
  type metadata accessor for TVSeason(0);

  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
  v202 = v238;
  sub_1D5612B38();
  OUTLINED_FUNCTION_78_5();
  sub_1D4F899DC();
  sub_1D5611A98();
  v203 = sub_1D5611A88();
  v252 = v204;
  v253 = v203;
  v205 = v240;
  (*(v239 + 16))(v241, v202, v240);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v205);
  v251 = sub_1D5611A38();
  v250 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4F7C014(&qword_1EC7ECBC8);
  sub_1D5610628();
  v209 = OUTLINED_FUNCTION_215();
  v210(v209);
  OUTLINED_FUNCTION_26_14();
  sub_1D4F89A30();
  sub_1D4E50004(v258, &qword_1EC7ECB30, &unk_1D565D0F0);
  OUTLINED_FUNCTION_22_19();
  sub_1D4F89A30();
  sub_1D4E50004(v259, &qword_1EC7ECBA8, &unk_1D56223B0);
  sub_1D4E50004(v255, &qword_1EC7ECBA0, &unk_1D56270F0);
  sub_1D4E50004(v257, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F8498C(uint64_t a1)
{
  sub_1D4F7C014(&unk_1EC7ECC90);

  return sub_1D5612668();
}

uint64_t sub_1D4F84B48(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  a3(0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  v4 = sub_1D4F8AFC4();
  v10 = OUTLINED_FUNCTION_70_7(v4, v5, MEMORY[0x1E69E7CC0], v6, v7, v8, v9, v4);

  return v10;
}

uint64_t sub_1D4F84CFC(void (*a1)(void))
{
  a1(0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  v1 = sub_1D4F8AFC4();
  v7 = OUTLINED_FUNCTION_70_7(v1, v2, MEMORY[0x1E69E7CC0], v3, v4, v5, v6, v1);

  return v7;
}

void sub_1D4F84DAC()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_9(v6, v48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v51 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_19(v11, v49);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_38_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4();
  v50 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_19_0();
  v19 = type metadata accessor for CuratorRelationshipProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v24 = OUTLINED_FUNCTION_121();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39AB0(v28, v29, v30, v31);
  v32 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v32, v33, v19);
  if (v34)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v23, v1, &qword_1EC7EA790, &unk_1D561FB10);
    OUTLINED_FUNCTION_43_0(v1);
    if (v34)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      (*(v50 + 32))(v0, v1, v14);
      OUTLINED_FUNCTION_27();
      sub_1D4F4D0F8();
      v35 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_46_1();
      v39(v38);
    }

    sub_1D4F39AB0(v23 + *(v19 + 20), v2, &qword_1EC7EA788, &unk_1D56223A0);
    OUTLINED_FUNCTION_4_18(v2, 1);
    if (v34)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_40_3();
      v40 = OUTLINED_FUNCTION_145_1();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F21B30();
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v42 = OUTLINED_FUNCTION_122_1();
      v43(v42);
    }

    sub_1D4F39AB0(v23 + *(v19 + 24), v51, &qword_1EC7EA780, &unk_1D561FB20);
    OUTLINED_FUNCTION_5_1(v51);
    if (v34)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v44 = OUTLINED_FUNCTION_10_25();
      v45(v44);
      OUTLINED_FUNCTION_27();
      sub_1D4F4D1AC();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v46 = OUTLINED_FUNCTION_44_11();
      v47(v46);
    }

    sub_1D4F8523C(v4);
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F8523C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v1, v2, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_1(v2);
  if (v6)
  {
    return sub_1D56162F8();
  }

  v7 = OUTLINED_FUNCTION_46_1();
  v8(v7);
  sub_1D56162F8();
  sub_1D4F219C8();
  sub_1D5614CB8();
  v9 = OUTLINED_FUNCTION_98();
  return v10(v9);
}

void sub_1D4F853A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v3 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_5();
  v11 = type metadata accessor for CloudSuggestedPivotsRawRequest.Node(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_114();
  sub_1D4F39AB0(v0, v2, &qword_1EC7EB318, &unk_1D561E020);
  OUTLINED_FUNCTION_9_25(v2);
  if (v18)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_209();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
    sub_1D4F7C014(&qword_1EDD53358);
    OUTLINED_FUNCTION_128();
    sub_1D5614CB8();
    if (*(v15 + *(v11 + 24) + 8))
    {
      OUTLINED_FUNCTION_27();
      sub_1D5614E28();
    }

    else
    {
      OUTLINED_FUNCTION_36();
    }

    sub_1D4F39AB0(v15 + *(v11 + 28), v1, &qword_1EC7EA358, &unk_1D561DF50);
    OUTLINED_FUNCTION_5_1(v1);
    if (v18)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v19 = OUTLINED_FUNCTION_91_0();
      v20(v19);
      OUTLINED_FUNCTION_27();
      sub_1D5614CB8();
      (*(v21 + 8))(v8, v3);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F8566C()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15_22(v3, v36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_114();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2();
  v9 = type metadata accessor for LegacyModelCodablePlaylistEntryReaction.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v11 = OUTLINED_FUNCTION_98();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_98_3();
  v15 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v15, v16, v9);
  if (v21)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_91_0();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v17 = OUTLINED_FUNCTION_145_1();
    sub_1D4F39AB0(v17, v18, v19, v20);
    OUTLINED_FUNCTION_9_25(v1);
    if (v21)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_50_8();
      v23(v22);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B0D4();
      v24 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_162_2(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_113_0();
      v28(v27);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA7E0, &unk_1D5623AB0, *(v9 + 20));
    OUTLINED_FUNCTION_5_1(v0);
    if (v21)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v29 = OUTLINED_FUNCTION_53_6();
      v30(v29);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      v31 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_159_3(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_83_3();
      v35(v34);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F8596C()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v78 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v77 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v76 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_135();
  v75 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  v74 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v73 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v72 = v17;
  OUTLINED_FUNCTION_23();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v71 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = OUTLINED_FUNCTION_112_0();
  v23 = type metadata accessor for AssetFlavors(v22);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = OUTLINED_FUNCTION_140_3();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_38_2();
  sub_1D4F39AB0(v0, v2, &qword_1EC7ECC88, &unk_1D56310F0);
  OUTLINED_FUNCTION_9_25(v2);
  if (v32)
  {
    sub_1D56162F8();
  }

  else
  {
    OUTLINED_FUNCTION_135_0();
    sub_1D4F89CF0();
    sub_1D56162F8();
    sub_1D4F39AB0(v27, v1, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v1);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
      v34 = v77;
      v33 = v78;
    }

    else
    {
      v34 = v77;
      v33 = v78;
      OUTLINED_FUNCTION_81();
      v35(v34, v1, v3);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v36);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v37 = OUTLINED_FUNCTION_28_17();
      v38(v37);
    }

    sub_1D4F39AB0(v27 + v23[5], v21, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v21);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_81();
      v39(v34, v21, v3);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v40);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v41 = OUTLINED_FUNCTION_28_17();
      v42(v41);
    }

    v43 = v72;
    sub_1D4F39AB0(v27 + v23[6], v72, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v43);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v44 = OUTLINED_FUNCTION_18_23();
      v45(v44);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v46);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v47 = OUTLINED_FUNCTION_28_17();
      v48(v47);
    }

    v49 = v73;
    sub_1D4F39AB0(v27 + v23[7], v73, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v49);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v50 = OUTLINED_FUNCTION_18_23();
      v51(v50);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v52);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v53 = OUTLINED_FUNCTION_28_17();
      v54(v53);
    }

    v55 = v74;
    sub_1D4F39AB0(v27 + v23[8], v74, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v55);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v56 = OUTLINED_FUNCTION_18_23();
      v57(v56);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v58);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v59 = OUTLINED_FUNCTION_28_17();
      v60(v59);
    }

    v61 = v75;
    sub_1D4F39AB0(v27 + v23[9], v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v61);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v62 = OUTLINED_FUNCTION_18_23();
      v63(v62);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v64);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v65 = OUTLINED_FUNCTION_28_17();
      v66(v65);
    }

    v67 = v76;
    sub_1D4F39AB0(v27 + v23[10], v76, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_5_1(v67);
    if (v32)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v68 = OUTLINED_FUNCTION_18_23();
      v69(v68);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_0_32();
      sub_1D4F7C014(v70);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      (*(v33 + 8))(v34, v3);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F85FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1DA6EC100](v9);
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1DA6EC100](v10);
  if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  return MEMORY[0x1DA6EC100](v11);
}

uint64_t sub_1D4F86040()
{
  if (v0[4])
  {
    return sub_1D56162F8();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_1D56162F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1DA6EC100](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1DA6EC100](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1DA6EC100](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x1DA6EC100](v9);
}

uint64_t sub_1D4F860C8()
{
  if (*(v0 + 49))
  {
    return sub_1D56162F8();
  }

  v1 = v0[3];
  v2 = v0[5];
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v7 = *v0;
  v6 = v0[1];
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v7);
  if (v5)
  {
    sub_1D56162F8();
    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    sub_1D56162F8();
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    return sub_1D56162F8();
  }

  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v6);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v1);
  if (v3)
  {
    return sub_1D56162F8();
  }

LABEL_5:
  sub_1D56162F8();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1DA6EC100](v8);
}

void sub_1D4F86198()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15_22(v3, v36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_114();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2();
  v9 = type metadata accessor for CloudUploadedVideo.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v11 = OUTLINED_FUNCTION_98();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_98_3();
  v15 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v15, v16, v9);
  if (v21)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_91_0();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v17 = OUTLINED_FUNCTION_145_1();
    sub_1D4F39AB0(v17, v18, v19, v20);
    OUTLINED_FUNCTION_9_25(v1);
    if (v21)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_50_8();
      v23(v22);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      v24 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_162_2(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_113_0();
      v28(v27);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA798, &unk_1D5622EF0, *(v9 + 20));
    OUTLINED_FUNCTION_5_1(v0);
    if (v21)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v29 = OUTLINED_FUNCTION_53_6();
      v30(v29);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B314();
      v31 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_159_3(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_83_3();
      v35(v34);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F86498()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_15_22(v3, v36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_114();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38_2();
  v9 = type metadata accessor for CloudUploadedAudio.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v11 = OUTLINED_FUNCTION_98();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_98_3();
  v15 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_57(v15, v16, v9);
  if (v21)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_91_0();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v17 = OUTLINED_FUNCTION_145_1();
    sub_1D4F39AB0(v17, v18, v19, v20);
    OUTLINED_FUNCTION_9_25(v1);
    if (v21)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v22 = OUTLINED_FUNCTION_50_8();
      v23(v22);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      v24 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_162_2(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_113_0();
      v28(v27);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA798, &unk_1D5622EF0, *(v9 + 20));
    OUTLINED_FUNCTION_5_1(v0);
    if (v21)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v29 = OUTLINED_FUNCTION_53_6();
      v30(v29);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B314();
      v31 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_159_3(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_83_3();
      v35(v34);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F86798()
{
  OUTLINED_FUNCTION_47();
  v77 = v0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  v68[2] = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v68[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_22(v7, v68[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v72 = v9;
  v73 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_19(v11, v68[0]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v70 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_2();
  v69 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_4();
  v74 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v78 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v71 = v23;
  OUTLINED_FUNCTION_23();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v68 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v68 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v68 - v31;
  v33 = type metadata accessor for CloudUserProfile.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_118_1();
  sub_1D4F39AB0(v77, v0, &qword_1EC7ECD48, &qword_1D56429E0);
  OUTLINED_FUNCTION_43_0(v0);
  if (v37)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_121();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v1, v32, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_9_25(v32);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
      v38 = v74;
    }

    else
    {
      v38 = v74;
      v39 = OUTLINED_FUNCTION_82_5();
      v40(v39, v32, v17);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v41 = OUTLINED_FUNCTION_81_5();
      v42(v41);
    }

    OUTLINED_FUNCTION_161_2(&qword_1EC7EA7E0, &unk_1D5623AB0, v33[5]);
    OUTLINED_FUNCTION_9_25(v30);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v43 = OUTLINED_FUNCTION_82_5();
      v44(v43, v30, v17);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v45 = OUTLINED_FUNCTION_81_5();
      v46(v45);
    }

    sub_1D4F39AB0(v1 + v33[6], v27, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_9_25(v27);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v47 = OUTLINED_FUNCTION_82_5();
      v48(v47, v27, v17);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v49 = OUTLINED_FUNCTION_81_5();
      v50(v49);
    }

    v51 = v69;
    sub_1D4F39AB0(v1 + v33[7], v69, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_32_1(v51);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v52 = OUTLINED_FUNCTION_107_2();
      v53(v52);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v54 = OUTLINED_FUNCTION_135_0();
      v55(v54);
    }

    v56 = v70;
    sub_1D4F39AB0(v1 + v33[8], v70, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_32_1(v56);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v57 = OUTLINED_FUNCTION_107_2();
      v58(v57);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v59 = OUTLINED_FUNCTION_135_0();
      v60(v59);
    }

    v61 = v71;
    sub_1D4F39AB0(v1 + v33[9], v71, &qword_1EC7EA7E0, &unk_1D5623AB0);
    OUTLINED_FUNCTION_9_25(v61);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v62 = v78;
      (*(v38 + 32))(v78, v61, v17);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B20C();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      (*(v38 + 8))(v62, v17);
    }

    v63 = v75;
    sub_1D4F39AB0(v1 + v33[10], v75, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_5_1(v63);
    if (v37)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v64 = OUTLINED_FUNCTION_10_25();
      v65(v64);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v66 = OUTLINED_FUNCTION_44_11();
      v67(v66);
    }

    OUTLINED_FUNCTION_163_4();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F86E74()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_9(v4, v44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_22(v7, v45);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_19(v10, v46);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = type metadata accessor for CloudTVEpisode.Associations(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v18 = OUTLINED_FUNCTION_159();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_99_3();
  v22 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v22, v23, v16);
  if (v28)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_97_1();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v24 = OUTLINED_FUNCTION_209();
    sub_1D4F39AB0(v24, v25, v26, v27);
    OUTLINED_FUNCTION_43_0(v0);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v29 = OUTLINED_FUNCTION_52_9();
      v30(v29);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      v31 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_46_1();
      v35(v34);
    }

    sub_1D4F39AB0(v1 + *(v16 + 20), v2, &qword_1EC7ECA78, &qword_1D5622340);
    OUTLINED_FUNCTION_74(v2);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_29_13();
      v37(v36, v2, v8);
      OUTLINED_FUNCTION_27();
      sub_1D4F8940C();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v38 = OUTLINED_FUNCTION_111_4();
      v39(v38);
    }

    OUTLINED_FUNCTION_131_3(&qword_1EC7ECD18, &qword_1D5631040, *(v16 + 24));
    OUTLINED_FUNCTION_5_1(&qword_1EC7ECD80);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_10_25();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v42 = OUTLINED_FUNCTION_44_11();
      v43(v42);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F872A4()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_9(v4, v44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_22(v7, v45);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_19(v10, v46);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = type metadata accessor for CloudTVEpisode.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v18 = OUTLINED_FUNCTION_159();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_99_3();
  v22 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v22, v23, v16);
  if (v28)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_97_1();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v24 = OUTLINED_FUNCTION_209();
    sub_1D4F39AB0(v24, v25, v26, v27);
    OUTLINED_FUNCTION_43_0(v0);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v29 = OUTLINED_FUNCTION_52_9();
      v30(v29);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      v31 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_46_1();
      v35(v34);
    }

    sub_1D4F39AB0(v1 + *(v16 + 20), v2, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_74(v2);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_29_13();
      v37(v36, v2, v8);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B4A0();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v38 = OUTLINED_FUNCTION_111_4();
      v39(v38);
    }

    OUTLINED_FUNCTION_131_3(&qword_1EC7ECA58, &unk_1D5622310, *(v16 + 24));
    OUTLINED_FUNCTION_5_1(&qword_1EC7ECD98);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_10_25();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F89514();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v42 = OUTLINED_FUNCTION_44_11();
      v43(v42);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F876D4()
{
  OUTLINED_FUNCTION_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA50, &unk_1D5626FF0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_9(v4, v44);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA58, &unk_1D5622310);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_22(v7, v45);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA810, &unk_1D5622320);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_19(v10, v46);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7F0, &unk_1D561E8C0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA70, &unk_1D56310E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECA78, &qword_1D5622340);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v16 = type metadata accessor for CloudTVSeason.Relationships(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v18 = OUTLINED_FUNCTION_159();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_99_3();
  v22 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_57(v22, v23, v16);
  if (v28)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    OUTLINED_FUNCTION_97_1();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_87_4();
    v24 = OUTLINED_FUNCTION_209();
    sub_1D4F39AB0(v24, v25, v26, v27);
    OUTLINED_FUNCTION_43_0(v0);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v29 = OUTLINED_FUNCTION_52_9();
      v30(v29);
      OUTLINED_FUNCTION_27();
      sub_1D4F8940C();
      v31 = OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_158_0(v31, v32, v33);
      v34 = OUTLINED_FUNCTION_46_1();
      v35(v34);
    }

    sub_1D4F39AB0(v1 + *(v16 + 20), v2, &qword_1EC7EA7F0, &unk_1D561E8C0);
    OUTLINED_FUNCTION_74(v2);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v36 = OUTLINED_FUNCTION_29_13();
      v37(v36, v2, v8);
      OUTLINED_FUNCTION_27();
      sub_1D4F89490();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v38 = OUTLINED_FUNCTION_111_4();
      v39(v38);
    }

    OUTLINED_FUNCTION_131_3(&qword_1EC7ECA58, &unk_1D5622310, *(v16 + 24));
    OUTLINED_FUNCTION_5_1(&qword_1EC7ECB30);
    if (v28)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_10_25();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F89514();
      OUTLINED_FUNCTION_30_9();
      sub_1D5614CB8();
      v42 = OUTLINED_FUNCTION_44_11();
      v43(v42);
    }

    OUTLINED_FUNCTION_2_18();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F87AF4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  sub_1D560D478();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for MusicDaemon.Response.Context(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_71_1();
  v12 = OUTLINED_FUNCTION_74_0();
  sub_1D4F39AB0(v12, v13, &qword_1EC7ECCA0, &qword_1D5622EB8);
  OUTLINED_FUNCTION_43_0(v0);
  if (v14)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_85();
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D560C368();
    sub_1D4F7C014(&qword_1EDD5F560);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v15 = v9 + v5[5];
    sub_1D560D838();
    sub_1D4F7C014(&qword_1EDD53DC0);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v16 = type metadata accessor for MusicDaemon.Item(0);
    sub_1D5614E28();
    sub_1D56106B8();
    sub_1D4F7C014(&qword_1EC7ECCA8);
    sub_1D5614CB8();
    v17 = *(v15 + v16[7]);
    if (v17 == 3)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      MEMORY[0x1DA6EC0D0](v17);
    }

    if (*(v15 + v16[8]) != 2)
    {
      OUTLINED_FUNCTION_27();
    }

    sub_1D56162F8();
    if (*(v15 + v16[9]) != 2)
    {
      OUTLINED_FUNCTION_27();
    }

    sub_1D56162F8();
    sub_1D5614E28();
    sub_1D4F39AB0(v9 + v5[7], v1, &qword_1EC7ECC98, &qword_1D5622EB0);
    OUTLINED_FUNCTION_32_1(v1);
    if (v14)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v18 = OUTLINED_FUNCTION_147_0();
      v19(v18);
      OUTLINED_FUNCTION_27();
      sub_1D4F7C014(&unk_1EC7ECCB0);
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v20 = OUTLINED_FUNCTION_15_2();
      v21(v20);
    }

    v22 = (v9 + v5[8]);
    if (*v22 == 2)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v24 = v22[1];
      v23 = v22[2];
      OUTLINED_FUNCTION_27();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      sub_1D56162F8();
      MEMORY[0x1DA6EC0D0](v24);
      MEMORY[0x1DA6EC0D0](v23);
    }

    sub_1D5614CB8();
    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D4F87F60()
{
  OUTLINED_FUNCTION_47();
  v70 = v0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
  OUTLINED_FUNCTION_4();
  v63 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v62 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_125_2(v10);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5D8, &unk_1D5627030);
  OUTLINED_FUNCTION_4();
  v61 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v60 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_71_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD20, &unk_1D5622F20);
  OUTLINED_FUNCTION_4();
  v69 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v68 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD28, &unk_1D565B660);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v65 = v22;
  OUTLINED_FUNCTION_23();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = OUTLINED_FUNCTION_112_0();
  v28 = type metadata accessor for CloudMusicMovie.Associations(v27);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v30 = OUTLINED_FUNCTION_121();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_151_3();
  sub_1D4F39AB0(v34, v35, v36, v37);
  OUTLINED_FUNCTION_5_1(v4);
  if (v38)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1D4F89CF0();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v2, v3, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_32_1(v3);
    if (v38)
    {
      OUTLINED_FUNCTION_36();
      v39 = v69;
    }

    else
    {
      v39 = v69;
      v40 = OUTLINED_FUNCTION_147_0();
      v41(v40);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B398();
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v42 = OUTLINED_FUNCTION_15_2();
      v43(v42);
    }

    sub_1D4F39AB0(v2 + v28[5], v26, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_32_1(v26);
    if (v38)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v44 = OUTLINED_FUNCTION_122_1();
      v45(v44);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B398();
      OUTLINED_FUNCTION_33_6();
      sub_1D5614CB8();
      v46 = OUTLINED_FUNCTION_15_2();
      v47(v46);
    }

    v48 = v64;
    sub_1D4F39AB0(v2 + v28[6], v1, &qword_1EC7EB5A8, &unk_1D5622F00);
    OUTLINED_FUNCTION_74(v1);
    if (v38)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v50 = v60;
      v49 = v61;
      (*(v61 + 32))(v60, v1, v48);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B290();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v51 = v50;
      v39 = v69;
      (*(v49 + 8))(v51, v48);
    }

    v52 = v66;
    sub_1D4F39AB0(v2 + v28[7], v66, &qword_1EC7ECD18, &qword_1D5631040);
    OUTLINED_FUNCTION_43_0(v52);
    if (v38)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v53 = OUTLINED_FUNCTION_123_2();
      v54(v53);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B41C();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      v55 = OUTLINED_FUNCTION_215();
      v56(v55);
    }

    v57 = v65;
    sub_1D4F39AB0(v2 + v28[8], v65, &qword_1EC7ECD28, &unk_1D565B660);
    OUTLINED_FUNCTION_32_1(v57);
    if (v38)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v58 = v68;
      (*(v39 + 32))(v68, v57, v16);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B398();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v39 + 8))(v58, v16);
    }

    sub_1D4F89A30();
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F88554()
{
  result = qword_1EC7ECA28;
  if (!qword_1EC7ECA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7C014(&unk_1EC7ECA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA28);
  }

  return result;
}

unint64_t sub_1D4F88608()
{
  result = qword_1EC7ECA38;
  if (!qword_1EC7ECA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7C014(&unk_1EC7ECA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA38);
  }

  return result;
}

unint64_t sub_1D4F886BC()
{
  result = qword_1EDD531B8;
  if (!qword_1EDD531B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7C014(&qword_1EDD533A8);
    sub_1D4F7C014(&qword_1EDD533B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD531B8);
  }

  return result;
}

unint64_t sub_1D4F887A4()
{
  result = qword_1EDD52918;
  if (!qword_1EDD52918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F8884C(&unk_1EDD53228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52918);
  }

  return result;
}

unint64_t sub_1D4F8884C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE80, &qword_1D561F3A0);
    sub_1D4F7CEB4();
    sub_1D4F7CF08();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F888C0()
{
  result = qword_1EDD531C8;
  if (!qword_1EDD531C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7C014(&unk_1EDD53060);
    sub_1D4F7C014(&unk_1EDD53068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD531C8);
  }

  return result;
}

unint64_t sub_1D4F889A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    v4();
    OUTLINED_FUNCTION_68_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F88A24()
{
  result = qword_1EDD531D8;
  if (!qword_1EDD531D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7C014(&unk_1EDD530E0);
    sub_1D4F7C014(&unk_1EDD530E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD531D8);
  }

  return result;
}

unint64_t sub_1D4F88B0C()
{
  result = qword_1EDD531E0;
  if (!qword_1EDD531E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F7C014(&unk_1EDD53108);
    sub_1D4F7C014(&unk_1EDD53110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD531E0);
  }

  return result;
}

unint64_t sub_1D4F88BF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EABD8, &unk_1D561D780);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F88C5C()
{
  result = qword_1EDD527D0;
  if (!qword_1EDD527D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA08, &unk_1D56222F0);
    sub_1D4F88CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD527D0);
  }

  return result;
}

unint64_t sub_1D4F88CE0()
{
  result = qword_1EDD53268;
  if (!qword_1EDD53268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5F8, &qword_1D56294F0);
    sub_1D4F7C014(&unk_1EDD56FF8);
    sub_1D4F7C014(&unk_1EDD57000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53268);
  }

  return result;
}

unint64_t sub_1D4F88DE8()
{
  result = qword_1EC7ECA88;
  if (!qword_1EC7ECA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F370B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA88);
  }

  return result;
}

unint64_t sub_1D4F88E6C()
{
  result = qword_1EC7ECA90;
  if (!qword_1EC7ECA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F36BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA90);
  }

  return result;
}

unint64_t sub_1D4F88EF0()
{
  result = qword_1EC7ECA98;
  if (!qword_1EC7ECA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F36F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECA98);
  }

  return result;
}

unint64_t sub_1D4F88F74()
{
  result = qword_1EC7ECAA8;
  if (!qword_1EC7ECAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAA8);
  }

  return result;
}

unint64_t sub_1D4F88FC8()
{
  result = qword_1EC7ECAB0;
  if (!qword_1EC7ECAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F8904C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAB0);
  }

  return result;
}

unint64_t sub_1D4F8904C()
{
  result = qword_1EC7ECAB8;
  if (!qword_1EC7ECAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA80, &qword_1D561F1F0);
    sub_1D4F7C014(&unk_1EDD57140);
    sub_1D4F7C014(&unk_1EDD57148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAB8);
  }

  return result;
}

unint64_t sub_1D4F89134()
{
  result = qword_1EC7ECAC0;
  if (!qword_1EC7ECAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F891B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAC0);
  }

  return result;
}

unint64_t sub_1D4F891B8()
{
  result = qword_1EC7ECAC8;
  if (!qword_1EC7ECAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D4F7C014(&unk_1EDD53408);
    sub_1D4F7C014(&unk_1EDD53410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAC8);
  }

  return result;
}

unint64_t sub_1D4F892A0()
{
  result = qword_1EC7ECAD0;
  if (!qword_1EC7ECAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F89324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAD0);
  }

  return result;
}

unint64_t sub_1D4F89324()
{
  result = qword_1EC7ECAD8;
  if (!qword_1EC7ECAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAD0, &qword_1D561F220);
    sub_1D4F7C014(&unk_1EDD58800);
    sub_1D4F7C014(&unk_1EDD58808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAD8);
  }

  return result;
}

unint64_t sub_1D4F8940C()
{
  result = qword_1EC7ECAE0;
  if (!qword_1EC7ECAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F3786C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAE0);
  }

  return result;
}

unint64_t sub_1D4F89490()
{
  result = qword_1EC7ECAE8;
  if (!qword_1EC7ECAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F37D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAE8);
  }

  return result;
}

unint64_t sub_1D4F89514()
{
  result = qword_1EC7ECAF0;
  if (!qword_1EC7ECAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F37704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECAF0);
  }

  return result;
}

unint64_t sub_1D4F89598()
{
  result = qword_1EC7ECB00;
  if (!qword_1EC7ECB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA70, &unk_1D56310E0);
    sub_1D4F8961C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB00);
  }

  return result;
}

unint64_t sub_1D4F8961C()
{
  result = qword_1EDD532E0;
  if (!qword_1EDD532E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA80, &qword_1D561F1F0);
    sub_1D4F7C014(&unk_1EDD57140);
    sub_1D4F7C014(&unk_1EDD57148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532E0);
  }

  return result;
}

unint64_t sub_1D4F89704()
{
  result = qword_1EDD530B0;
  if (!qword_1EDD530B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA810, &unk_1D5622320);
    sub_1D4F89788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD530B0);
  }

  return result;
}

unint64_t sub_1D4F89788()
{
  result = qword_1EDD53298;
  if (!qword_1EDD53298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D4F7C014(&unk_1EDD53408);
    sub_1D4F7C014(&unk_1EDD53410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53298);
  }

  return result;
}

unint64_t sub_1D4F89870()
{
  result = qword_1EC7ECB08;
  if (!qword_1EC7ECB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECA50, &unk_1D5626FF0);
    sub_1D4F898F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB08);
  }

  return result;
}

unint64_t sub_1D4F898F4()
{
  result = qword_1EDD532F0;
  if (!qword_1EDD532F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAD0, &qword_1D561F220);
    sub_1D4F7C014(&unk_1EDD58800);
    sub_1D4F7C014(&unk_1EDD58808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532F0);
  }

  return result;
}

uint64_t sub_1D4F899DC()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D4F89A30()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1D4F89A84()
{
  result = qword_1EC7ECB18;
  if (!qword_1EC7ECB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB18);
  }

  return result;
}

unint64_t sub_1D4F89AD8()
{
  result = qword_1EC7ECB28;
  if (!qword_1EC7ECB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB28);
  }

  return result;
}

unint64_t sub_1D4F89B4C()
{
  result = qword_1EC7ECB48;
  if (!qword_1EC7ECB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB48);
  }

  return result;
}

unint64_t sub_1D4F89BA0()
{
  result = qword_1EC7ECB50;
  if (!qword_1EC7ECB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB50);
  }

  return result;
}

unint64_t sub_1D4F89BF4()
{
  result = qword_1EC7ECB68;
  if (!qword_1EC7ECB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB68);
  }

  return result;
}

unint64_t sub_1D4F89C48()
{
  result = qword_1EC7ECB70;
  if (!qword_1EC7ECB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB70);
  }

  return result;
}

unint64_t sub_1D4F89C9C()
{
  result = qword_1EDD53A10;
  if (!qword_1EDD53A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53A10);
  }

  return result;
}

uint64_t sub_1D4F89CF0()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v2(v1);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

unint64_t sub_1D4F89D44()
{
  result = qword_1EC7ECB90;
  if (!qword_1EC7ECB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB90);
  }

  return result;
}

unint64_t sub_1D4F89D98()
{
  result = qword_1EC7ECB98;
  if (!qword_1EC7ECB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECB98);
  }

  return result;
}

uint64_t sub_1D4F89DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F89EA8()
{
  result = qword_1EC7ECBD8;
  if (!qword_1EC7ECBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECBD8);
  }

  return result;
}

unint64_t sub_1D4F89F00()
{
  result = qword_1EC7ECBE0;
  if (!qword_1EC7ECBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECBE0);
  }

  return result;
}

unint64_t sub_1D4F89F58()
{
  result = qword_1EC7ECBE8;
  if (!qword_1EC7ECBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECBE8);
  }

  return result;
}

unint64_t sub_1D4F89FB0()
{
  result = qword_1EC7ECBF0;
  if (!qword_1EC7ECBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECBF8, &qword_1D56225A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECBF0);
  }

  return result;
}

unint64_t sub_1D4F8A060()
{
  result = qword_1EC7ECC08;
  if (!qword_1EC7ECC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC08);
  }

  return result;
}

unint64_t sub_1D4F8A0B8()
{
  result = qword_1EC7ECC10;
  if (!qword_1EC7ECC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC10);
  }

  return result;
}

void sub_1D4F8A340(uint64_t a1)
{
  type metadata accessor for CloudTVSeason.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_1D4F8A6FC(319, qword_1EDD57860, type metadata accessor for CloudTVSeason.Relationships);
    if (v2 <= 0x3F)
    {
      sub_1D4E518A0(319, qword_1EDD578B8, &type metadata for CloudTVSeason.Associations);
      if (v3 <= 0x3F)
      {
        sub_1D4E518A0(319, qword_1EDD57800, &type metadata for CloudTVSeason.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D4F8A468(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v10 > 0x3F)
    {
      return v9;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v11 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD527C8, &qword_1EC7ECA08, &unk_1D56222F0);
    if (v13 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
      v2 = v14;
      if (v15 <= 0x3F)
      {
        sub_1D4F8A6FC(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
        v2 = v16;
        if (v17 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1D4F8A6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D4F8A778(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EC7ECC20, &qword_1EC7ECA70, &unk_1D56310E0);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD530A8, &qword_1EC7EA810, &unk_1D5622320);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD530D8, &qword_1EC7ECA50, &unk_1D5626FF0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudTVSeason.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D4F8A948(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudTVSeason.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudTVSeason.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudTVSeason.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4F8AC58()
{
  result = qword_1EC7ECC28;
  if (!qword_1EC7ECC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC28);
  }

  return result;
}

unint64_t sub_1D4F8ACB0()
{
  result = qword_1EC7ECC30;
  if (!qword_1EC7ECC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC30);
  }

  return result;
}

unint64_t sub_1D4F8AD08()
{
  result = qword_1EC7ECC38;
  if (!qword_1EC7ECC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC38);
  }

  return result;
}

unint64_t sub_1D4F8AD60()
{
  result = qword_1EC7ECC40;
  if (!qword_1EC7ECC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC40);
  }

  return result;
}

unint64_t sub_1D4F8ADB8()
{
  result = qword_1EC7ECC48;
  if (!qword_1EC7ECC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC48);
  }

  return result;
}

unint64_t sub_1D4F8AE10()
{
  result = qword_1EC7ECC50;
  if (!qword_1EC7ECC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC50);
  }

  return result;
}

unint64_t sub_1D4F8AE68()
{
  result = qword_1EC7ECC58;
  if (!qword_1EC7ECC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC58);
  }

  return result;
}

unint64_t sub_1D4F8AEC0()
{
  result = qword_1EC7ECC60;
  if (!qword_1EC7ECC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC60);
  }

  return result;
}

unint64_t sub_1D4F8AF18()
{
  result = qword_1EC7ECC68;
  if (!qword_1EC7ECC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC68);
  }

  return result;
}

unint64_t sub_1D4F8AF70()
{
  result = qword_1EC7ECC70;
  if (!qword_1EC7ECC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECC70);
  }

  return result;
}

unint64_t sub_1D4F8AFC4()
{
  result = qword_1EDD529D8;
  if (!qword_1EDD529D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECC78, &qword_1D56577A0);
    sub_1D4F8B080();
    sub_1D4F7C014(&unk_1EDD57B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD529D8);
  }

  return result;
}

unint64_t sub_1D4F8B080()
{
  result = qword_1EDD54F10;
  if (!qword_1EDD54F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F10);
  }

  return result;
}

unint64_t sub_1D4F8B0D4()
{
  result = qword_1EC7ECCD0;
  if (!qword_1EC7ECCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
    sub_1D4F8B158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECCD0);
  }

  return result;
}

unint64_t sub_1D4F8B158()
{
  result = qword_1EC7ECCD8;
  if (!qword_1EC7ECCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECCE0, &qword_1D5622EE8);
    sub_1D4F7C014(&unk_1EC7ECCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECCD8);
  }

  return result;
}

unint64_t sub_1D4F8B20C()
{
  result = qword_1EC7ECCF0;
  if (!qword_1EC7ECCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA800, &unk_1D5622EC0);
    sub_1D4F379D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECCF0);
  }

  return result;
}

unint64_t sub_1D4F8B290()
{
  result = qword_1EC7ECD00;
  if (!qword_1EC7ECD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5D8, &unk_1D5627030);
    sub_1D4F380DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECD00);
  }

  return result;
}

unint64_t sub_1D4F8B314()
{
  result = qword_1EC7ECD08;
  if (!qword_1EC7ECD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA7A0, &unk_1D5631110);
    sub_1D4F38028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECD08);
  }

  return result;
}

unint64_t sub_1D4F8B398()
{
  result = qword_1EC7ECD38;
  if (!qword_1EC7ECD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD20, &unk_1D5622F20);
    sub_1D4F37CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECD38);
  }

  return result;
}

unint64_t sub_1D4F8B41C()
{
  result = qword_1EC7ECD40;
  if (!qword_1EC7ECD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD10, &unk_1D5622F10);
    sub_1D4F37B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECD40);
  }

  return result;
}

unint64_t sub_1D4F8B4A0()
{
  result = qword_1EC7ECDA0;
  if (!qword_1EC7ECDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4F377B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECDA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_15()
{

  return sub_1D5615F78();
}

uint64_t OUTLINED_FUNCTION_70_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1D560D138();
}

uint64_t OUTLINED_FUNCTION_87_4()
{

  return sub_1D56162F8();
}

uint64_t OUTLINED_FUNCTION_98_3()
{

  return sub_1D4F39AB0(v1, v3, v2, v0);
}

uint64_t OUTLINED_FUNCTION_131_3@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v4 - 112);

  return sub_1D4F39AB0(v3 + a3, v6, a1, a2);
}

uint64_t OUTLINED_FUNCTION_158_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_159_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_160_2()
{

  return type metadata accessor for CloudTVSeason(0);
}

uint64_t OUTLINED_FUNCTION_161_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1D4F39AB0(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_162_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_163_4()
{

  return sub_1D4F89A30();
}

uint64_t sub_1D4F8B840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561E360;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDE8, &unk_1D56231B8);
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 32) = v2;
  swift_getKeyPath();
  v3 = sub_1D5612ED8();

  *(v0 + 40) = v3;
  swift_getKeyPath();
  sub_1D5612ED8();
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  qword_1EDD767A0 = v0;
  return result;
}

uint64_t sub_1D4F8B91C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F8B974()
{
  sub_1D5614438();
  OUTLINED_FUNCTION_1_16();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561E360;
  v4 = v3;
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDE0, &qword_1D5623138);
  swift_getKeyPath();
  v18 = *(v1 + 104);
  v5 = OUTLINED_FUNCTION_3_24();
  v6(v5);
  sub_1D4F8C718(&qword_1EDD52C78, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  v7 = sub_1D5612D58();

  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_98();
  v8(v9);
  *(v4 + 32) = v7;
  swift_getKeyPath();
  v10 = OUTLINED_FUNCTION_3_24();
  v18(v10);
  v11 = sub_1D5612D58();

  v12 = OUTLINED_FUNCTION_98();
  v8(v12);
  *(v17 + 40) = v11;
  swift_getKeyPath();
  v13 = OUTLINED_FUNCTION_3_24();
  v18(v13);
  v14 = sub_1D5612D58();

  v15 = OUTLINED_FUNCTION_98();
  result = (v8)(v15);
  *(v17 + 48) = v14;
  qword_1EDD76798 = v17;
  return result;
}

uint64_t sub_1D4F8BBDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D4F8BC34(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D4F8BC8C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D4F8BD38(void *a1)
{
  a1[1] = sub_1D4F8C718(&qword_1EDD52C88, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  a1[2] = sub_1D4F8C718(&qword_1EDD52C98, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  result = sub_1D4F8C718(&qword_1EDD52C80, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  a1[3] = result;
  return result;
}

uint64_t sub_1D4F8BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = swift_task_alloc();
  *(v13 + 16) = v14;
  *v14 = v13;
  v14[1] = sub_1D4ECF3E8;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)();
}

uint64_t sub_1D4F8BEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_task_alloc();
  *(v10 + 16) = v17;
  *v17 = v10;
  v17[1] = sub_1D4ECF4E0;

  return LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(a1, a2, a3, a4, a5, a6, a9, a7);
}

void sub_1D4F8BFEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  *(swift_allocObject() + 16) = xmmword_1D5622FA0;
  swift_getKeyPath();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDC0, &qword_1D56230A0);
  OUTLINED_FUNCTION_2_19(v0);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

void sub_1D4F8C080()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDC8, &qword_1D56230D0);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

void sub_1D4F8C0DC()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 40) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDD0, &qword_1D5623100);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5374180(v3);
}

void sub_1D4F8C11C()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 48) = v1;
  swift_getKeyPath();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDD8, &qword_1D5623130);
  OUTLINED_FUNCTION_2_19(v2);
  OUTLINED_FUNCTION_0_6();

  sub_1D5375864();
}

uint64_t sub_1D4F8C178()
{
  OUTLINED_FUNCTION_0_6();

  *(v0 + 56) = v1;
  qword_1EDD767B0 = v0;
  return result;
}

void *sub_1D4F8C19C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D4F8C204@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}