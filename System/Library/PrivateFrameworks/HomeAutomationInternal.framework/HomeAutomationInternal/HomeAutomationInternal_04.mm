uint64_t sub_252973640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[414] = a3;
  v3[413] = a2;
  v3[412] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v3[415] = swift_task_alloc();
  v4 = sub_252E34164();
  v3[416] = v4;
  v3[417] = *(v4 - 8);
  v3[418] = swift_task_alloc();
  v5 = sub_252E33DB4();
  v3[419] = v5;
  v3[420] = *(v5 - 8);
  v3[421] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25297379C, 0, 0);
}

uint64_t sub_25297379C()
{
  v82 = v0;
  v1 = *(v0 + 3368);
  v2 = *(v0 + 3360);
  v3 = *(v0 + 3352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v4 = sub_252E34024();
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = sub_252E34034();
  v9 = sub_252B680FC(v8);
  swift_beginAccess();
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_8:

    goto LABEL_10;
  }

  memcpy((v0 + 16), (v10 + 504 * v11 - 472), 0x1F8uLL);
  sub_2529353AC(v0 + 16, v0 + 520);

  sub_252B680FC(v12);
  v13 = sub_252B63488();

  if (v13)
  {
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    memcpy(v81, (v0 + 16), 0x1F8uLL);
    v14 = sub_252E1EBE8(v81);

    v15 = *(v14 + 416);
    *(v0 + 3040) = *(v14 + 400);
    *(v0 + 3056) = v15;
    v16 = *(v14 + 432);
    v17 = *(v14 + 448);
    v18 = *(v14 + 464);
    *(v0 + 3120) = *(v14 + 480);
    *(v0 + 3104) = v18;
    v19 = MEMORY[0x277D84F90];
    *(v0 + 3072) = v16;
    *(v0 + 3088) = v17;
    *(v14 + 400) = v19;
    *(v14 + 408) = v19;
    *(v14 + 416) = v19;
    *(v14 + 424) = v19;
    *(v14 + 432) = v19;
    *(v14 + 440) = v19;
    *(v14 + 448) = v19;
    *(v14 + 456) = v19;
    *(v14 + 464) = v19;
    *(v14 + 472) = v19;
    *(v14 + 480) = v19;
    sub_252937BEC(v0 + 3040);
    *(v14 + 384) = v19;

    sub_252E1E4F8(v81);

    v20 = memcpy((v0 + 2032), v81, 0x1F8uLL);
    v21 = sub_252B680FC(v20);
    swift_beginAccess();
    v22 = *(v21 + 16);
    sub_2529353AC(v0 + 2032, v0 + 2536);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + 16) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2529F7FB0(0, *(v22 + 2) + 1, 1, v22);
      *(v21 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_2529F7FB0((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    memcpy(&v22[504 * v25 + 32], (v0 + 2032), 0x1F8uLL);
    *(v21 + 16) = v22;
    swift_endAccess();
    sub_252935408(v0 + 2032);
    sub_252935408(v0 + 16);
    goto LABEL_8;
  }

  sub_252935408(v0 + 16);
LABEL_10:
  v26 = *(v0 + 3344);
  v27 = *(v0 + 3336);
  v28 = *(v0 + 3328);
  sub_252E340E4();
  sub_252AB3FEC(v26, 0, v81);
  (*(v27 + 8))(v26, v28);
  memcpy((v0 + 1528), v81, 0x1F8uLL);
  memcpy((v0 + 1024), v81, 0x1F8uLL);
  if (sub_252956B94((v0 + 1024)) == 1)
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 3344);
    v30 = *(v0 + 3320);
    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544DA8);
    v81[0] = 0;
    v81[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
    sub_252E340E4();
    v32 = sub_252AD2138(v29);
    MEMORY[0x2530AD570](v32);

    sub_252CC4050(v81[0], v81[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 59);

    v33 = sub_252E33DE4();
    (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
    type metadata accessor for AutomateHomeIntent();
    sub_252E33F44();

LABEL_43:

    v61 = *(v0 + 8);
    goto LABEL_56;
  }

  if (v5 == 0x6B73615472657375 && v7 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v34 = v4;

    v35 = [v8 itemToConfirm];
    sub_252E377F4();
    swift_unknownObjectRelease();
    type metadata accessor for HomeUserTask();
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 3288);
      v37 = [v34 automatableTask];

      if (v37)
      {
        type metadata accessor for ControlAutomateHomeIntent();
        v38 = swift_dynamicCastClass();
        if (v38)
        {
          v39 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
          *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = v36;

          v40 = v34;
LABEL_34:
          v52 = *(v0 + 1033);
          if ((v52 - 2) >= 2)
          {
            v57 = *(v0 + 3320);
            if (*(v0 + 1033))
            {
              v58 = *MEMORY[0x277D5BED0];
            }

            else
            {
              *(sub_252B680FC(v41) + 76) = 1;

              v58 = *MEMORY[0x277D5BED8];
            }

            v59 = sub_252E33DE4();
            v60 = *(v59 - 8);
            (*(v60 + 104))(v57, v58, v59);
            (*(v60 + 56))(v57, 0, 1, v59);
            type metadata accessor for AutomateHomeIntent();
          }

          else
          {
            if (qword_27F53F500 != -1)
            {
              swift_once();
            }

            v53 = *(v0 + 3320);
            v54 = sub_252E36AD4();
            __swift_project_value_buffer(v54, qword_27F544DA8);
            v81[0] = 0;
            v81[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E6C360);
            *(v0 + 3376) = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
            v55 = sub_252E36F94();
            MEMORY[0x2530AD570](v55);

            sub_252CC4050(v81[0], v81[1], 0xD000000000000094, 0x8000000252E6C260, 0xD00000000000002FLL, 0x8000000252E6C300, 101);

            v56 = sub_252E33DE4();
            (*(*(v56 - 8) + 56))(v53, 1, 1, v56);
            type metadata accessor for AutomateHomeIntent();
          }

          sub_252E33F44();

          sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);
          goto LABEL_43;
        }
      }

      goto LABEL_33;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v42 = sub_252E36AD4();
    __swift_project_value_buffer(v42, qword_27F544DA8);
    v43 = "ve been ingnored: ";
    v44 = 0xD000000000000026;
  }

  else
  {
    if (v5 == 0x737265746C6966 && v7 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v34 = v4;

      v45 = [v8 itemToConfirm];
      sub_252E377F4();
      swift_unknownObjectRelease();
      type metadata accessor for HomeFilter();
      if (swift_dynamicCast())
      {
        v46 = *(v0 + 3280);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_252E3C130;
        *(v47 + 32) = v46;
        v48 = v46;
        v49 = [v34 automatableTask];

        if (v49)
        {
          type metadata accessor for ControlAutomateHomeIntent();
          v50 = swift_dynamicCastClass();
          if (v50)
          {
            *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters) = v47;

            v51 = v34;

            goto LABEL_34;
          }
        }

LABEL_33:
        v41 = v34;
        goto LABEL_34;
      }
    }

    else
    {
      if ((v5 != 0x6174616D6F747561 || v7 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
      {
        type metadata accessor for HomeAutomationError(0);
        sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
        swift_allocError();
        *v80 = v5;
        v76 = v80 + 1;
        v77 = v4;
        goto LABEL_55;
      }

      v62 = v4;

      v63 = [v8 itemToConfirm];
      sub_252E377F4();
      swift_unknownObjectRelease();
      type metadata accessor for HomeFilter();
      if (swift_dynamicCast())
      {
        v64 = *(v0 + 3272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_252E3C130;
        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v67 = *(*v66 + 752);
        v68 = v64;
        v69 = v67(v64);

        v71 = (*(*v69 + 760))(v70);

        *(v65 + 32) = v71;
        v72 = [v62 automatableTask];

        if (v72)
        {
          type metadata accessor for ControlAutomateHomeIntent();
          v73 = swift_dynamicCastClass();
          if (v73)
          {
            *(v73 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters) = v65;

            v74 = v62;

            goto LABEL_34;
          }
        }

        v41 = v62;
        goto LABEL_34;
      }
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v75 = sub_252E36AD4();
    __swift_project_value_buffer(v75, qword_27F544DA8);
    v43 = "nResponse(input:resolveRecord:)";
    v44 = 0xD000000000000024;
  }

  sub_252CC3D90(v44, v43 | 0x8000000000000000, 0xD000000000000094, 0x8000000252E6C260);
  type metadata accessor for HomeAutomationError(0);
  sub_252974E34(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
  swift_allocError();
  v7 = v8;
  v77 = v8;
LABEL_55:
  *v76 = v7;
  swift_storeEnumTagMultiPayload();
  v78 = v77;
  swift_willThrow();

  sub_25293847C(v0 + 1528, &qword_27F5404C8, &unk_252E3FD60);

  v61 = *(v0 + 8);
LABEL_56:

  return v61();
}

uint64_t sub_252974654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25296BC70;

  return MEMORY[0x2821B9E10](a1, a2, v9, a4);
}

uint64_t sub_252974718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252971424(a1, a2, a3);
}

uint64_t sub_2529747CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9E28](a1, a2, a3, v11, a5);
}

uint64_t sub_252974898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9E38](a1, a2, a3, v11, a5);
}

uint64_t sub_252974964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E30](a1, a2, v9, a4);
}

uint64_t sub_252974A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E40](a1, a2, v9, a4);
}

uint64_t sub_252974B0C()
{
  sub_252E33964();
  sub_252E33954();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252974B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252974C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  *v14 = v7;
  v14[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_252974DDC(uint64_t a1, uint64_t a2)
{
  result = sub_252974E34(&qword_27F540778, a2, type metadata accessor for ControlHomeNeedsConfirmationStrategy, byte_252E3DBC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252974E34(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252974E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_252974EEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407B8, &qword_252E3DC80);
  v0 = swift_allocObject();
  *&result = 12;
  *(v0 + 16) = xmmword_252E3DC60;
  *(v0 + 32) = &type metadata for LocationReferenceResolutionStep;
  *(v0 + 40) = &off_2864B4E98;
  *(v0 + 48) = &type metadata for EntityReferenceResolutionStep;
  *(v0 + 56) = &off_2864BDB40;
  *(v0 + 64) = &type metadata for MeCardStep;
  *(v0 + 72) = &off_2864BF798;
  *(v0 + 80) = &type metadata for EquivalentName;
  *(v0 + 88) = &off_2864BBB98;
  *(v0 + 96) = &type metadata for AddHomeNameStep;
  *(v0 + 104) = &off_2864BC0D0;
  *(v0 + 112) = &type metadata for NeighboringServices;
  *(v0 + 120) = &off_2864C07E8;
  *(v0 + 128) = &type metadata for LocalizedSceneNameStep;
  *(v0 + 136) = &off_2864B7FC0;
  *(v0 + 144) = &type metadata for TurnOffInAPTVStep;
  *(v0 + 152) = &off_2864C0E30;
  *(v0 + 160) = &type metadata for DoorReplacementStep;
  *(v0 + 168) = &off_2864BB920;
  *(v0 + 176) = &type metadata for ConvertMopAccessoryTypeStep;
  *(v0 + 184) = &off_2864B6078;
  *(v0 + 192) = &type metadata for CombineVacuumAndMopStep;
  *(v0 + 200) = &off_2864B92C8;
  *(v0 + 208) = &type metadata for AugmentPauseOrResumeRvcStep;
  *(v0 + 216) = &off_2864BFDB8;
  qword_27F5753E0 = v0;
  return result;
}

uint64_t sub_252975024(uint64_t a1, uint64_t a2)
{
  v2[381] = a2;
  v2[380] = a1;
  v3 = sub_252E36AB4();
  v2[382] = v3;
  v2[383] = *(v3 - 8);
  v2[384] = swift_task_alloc();
  v2[385] = swift_task_alloc();
  v2[386] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252975100, 0, 0);
}

uint64_t sub_252975100()
{
  v65 = v0;
  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FA0;
  *(v0 + 3096) = qword_27F544FA0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 3088);
  v4 = *(v0 + 3080);
  v5 = *(v0 + 3064);
  v6 = *(v0 + 3056);
  v7 = *(v0 + 3040);
  v8 = sub_252E36AD4();
  *(v0 + 3104) = v8;
  __swift_project_value_buffer(v8, qword_27F544E08);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E6C5E0, 0xD00000000000008CLL, 0x8000000252E6C600);
  (*(v5 + 16))(v4, v3, v6);
  if (!*(v7 + 16))
  {
    v44 = *(v0 + 3080);
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E6C730, 0xD00000000000008CLL, 0x8000000252E6C600, 0xD00000000000001ELL, 0x8000000252E6C750, 45);
    v45 = sub_252E375C4();
    v46 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
LABEL_28:
    sub_252E36A74(v45, &dword_252917000, v2, "IntentSelection.IntentGeneration", 32, 2, v44, " enableTelemetry=YES ", 21, 2, v53);
    v49 = *(v0 + 3088);
    v50 = *(v0 + 3056);
    v51 = *(*(v0 + 3064) + 8);
    v51(*(v0 + 3080), v50);
    v51(v49, v50);

    v52 = *(v0 + 8);

    return v52(v46);
  }

  v9 = *(v0 + 3048);
  v10 = *(v9 + 16);
  *(v0 + 3112) = v10;
  v11 = *(v0 + 3040);
  if (!v10)
  {

LABEL_27:
    v2 = *(v0 + 3096);
    v44 = *(v0 + 3080);
    v46 = sub_252DF93D8(v11);

    v45 = sub_252E375C4();
    v53 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v54 = (v0 + 2536);

  v12 = 0;
  while (1)
  {
    *(v0 + 3128) = v11;
    *(v0 + 3120) = v12;
    v13 = *(v0 + 3096);
    v14 = v9 + 16 * v12;
    *(v0 + 3136) = *(v14 + 32);
    v15 = *(v14 + 40);
    *(v0 + 3144) = v15;
    v16 = v13;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v17 = MEMORY[0x277D84F90];
    *(v0 + 3032) = MEMORY[0x277D84F90];
    v18 = *(v11 + 16);
    *(v0 + 3152) = v18;
    if (v18)
    {
      break;
    }

    v27 = v17;
LABEL_20:
    v28 = *(v0 + 3096);
    v29 = *(v0 + 3072);
    v30 = *(v0 + 3064);
    v56 = *(v0 + 3056);
    v57 = *(v0 + 3112);
    v31 = *(v0 + 3120) + 1;
    *&__dst[0] = v27;

    v55 = *(v0 + 3136);
    sub_25297AA34(v17);
    v11 = *&__dst[0];
    *(v0 + 2920) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v32 = sub_252E36F94();
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v64 = 1;
    *(v0 + 2704) = 0;
    *(v0 + 2712) = 1;
    *(v0 + 2713) = *(v0 + 2697);
    *(v0 + 2716) = *(v0 + 2700);
    *(v0 + 2720) = 0u;
    *(v0 + 2736) = 0u;
    *(v0 + 2752) = 0u;
    *(v0 + 2768) = 0u;
    *(v0 + 2784) = 0u;
    *(v0 + 2800) = 1;
    *(v0 + 2804) = *(v0 + 2868);
    *(v0 + 2801) = *(v0 + 2865);
    *(v0 + 2808) = 0;
    *(v0 + 2816) = 0;
    *(v0 + 2824) = 0;
    *(v0 + 2832) = 513;
    *(v0 + 2838) = *(v0 + 3228);
    *(v0 + 2834) = *(v0 + 3224);
    *(v0 + 2840) = v32;
    *(v0 + 2848) = v33;
    *(v0 + 2856) = 0;
    *(v0 + 2864) = 1;
    GEOLocationCoordinate2DMake();
    v34 = *(v0 + 2848);
    __dst[8] = *(v0 + 2832);
    __dst[9] = v34;
    LOBYTE(__dst[10]) = *(v0 + 2864);
    v35 = *(v0 + 2784);
    __dst[4] = *(v0 + 2768);
    __dst[5] = v35;
    v36 = *(v0 + 2816);
    __dst[6] = *(v0 + 2800);
    __dst[7] = v36;
    v37 = *(v0 + 2720);
    __dst[0] = *(v0 + 2704);
    __dst[1] = v37;
    v38 = *(v0 + 2752);
    __dst[2] = *(v0 + 2736);
    __dst[3] = v38;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v28, v29, "IntentSelection.IntentGeneration.Step", 37, 2, __dst);
    v39 = __dst[9];
    *(v0 + 2664) = __dst[8];
    *(v0 + 2680) = v39;
    *(v0 + 2696) = __dst[10];
    v40 = __dst[5];
    *(v0 + 2600) = __dst[4];
    *(v0 + 2616) = v40;
    v41 = __dst[7];
    *(v0 + 2632) = __dst[6];
    *(v0 + 2648) = v41;
    v42 = __dst[1];
    *v54 = __dst[0];
    *(v0 + 2552) = v42;
    v43 = __dst[3];
    *(v0 + 2568) = __dst[2];
    *(v0 + 2584) = v43;
    sub_2529765AC(v54);
    (*(v30 + 8))(v29, v56);

    if (v31 == v57)
    {
      goto LABEL_27;
    }

    v12 = *(v0 + 3120) + 1;
    v9 = *(v0 + 3048);
  }

  v19 = 0;
  *(v0 + 3160) = *(v15 + 8);
  *(v0 + 3168) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x6FC0000000000000;
  while (1)
  {
    *(v0 + 3184) = v17;
    *(v0 + 3176) = v19;
    memcpy((v0 + 16), (*(v0 + 3128) + 504 * v19 + 32), 0x1F8uLL);
    sub_2529353AC(v0 + 16, v0 + 520);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 3160);
    v21 = *(v0 + 3144);
    v22 = *(v0 + 3136);
    *(v0 + 3192) = __swift_project_value_buffer(*(v0 + 3104), qword_27F544DA8);
    *(v0 + 2888) = 0;
    *(v0 + 2896) = 0xE000000000000000;
    sub_252E379F4();

    strcpy((v0 + 2872), "Running step: ");
    *(v0 + 2887) = -18;
    *(v0 + 2904) = v22;
    *(v0 + 2912) = v21;
    *(v0 + 3200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v23 = sub_252E36F94();
    MEMORY[0x2530AD570](v23);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6C6C0);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    v24 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v24);

    sub_252CC3D90(*(v0 + 2872), *(v0 + 2880), 0xD00000000000008CLL, 0x8000000252E6C600);

    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    if (v20(__dst, v22, v21))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2529F7FB0(0, *(v17 + 2) + 1, 1, v17);
    }

    v26 = *(v17 + 2);
    v25 = *(v17 + 3);
    if (v26 >= v25 >> 1)
    {
      v17 = sub_2529F7FB0((v25 > 1), v26 + 1, 1, v17);
    }

    *(v17 + 2) = v26 + 1;
    memcpy(&v17[504 * v26 + 32], (v0 + 16), 0x1F8uLL);
    v19 = *(v0 + 3176) + 1;
    if (v19 == *(v0 + 3152))
    {

      v27 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }
  }

  v59 = *(v0 + 3144);
  memcpy((v0 + 1024), (v0 + 16), 0x1F8uLL);
  v58 = (*(v59 + 16) + **(v59 + 16));
  v47 = swift_task_alloc();
  *(v0 + 3208) = v47;
  *v47 = v0;
  v47[1] = sub_252975A3C;

  return v58(v0 + 1024);
}

uint64_t sub_252975A3C(uint64_t a1)
{
  *(*v1 + 3216) = a1;

  return MEMORY[0x2822009F8](sub_252975B3C, 0, 0);
}

uint64_t sub_252975B3C()
{
  v66 = v0;
  v1 = *(v0 + 3216);
  *(v0 + 2952) = 0;
  *(v0 + 2960) = 0xE000000000000000;
  v60 = *(v0 + 3136);
  sub_252E379F4();

  *(v0 + 2936) = 0x203A70657453;
  *(v0 + 2944) = 0xE600000000000000;
  *(v0 + 2968) = v60;
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E6C6E0);
  v3 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v3);

  sub_252CC3D90(*(v0 + 2936), *(v0 + 2944), 0xD00000000000008CLL, 0x8000000252E6C600);

  sub_25297AA34(v1);
  v4 = *(v0 + 3032);
  v57 = v4;
  if (*(v4 + 16))
  {
    v5 = *(v0 + 3144);
    v6 = *(v0 + 3136);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    if (((*(v5 + 24))(__dst, v4, v6, v5) & 1) == 0)
    {
      *(v0 + 3000) = 0;
      *(v0 + 3008) = 0xE000000000000000;
      v61 = *(v0 + 3136);
      sub_252E379F4();

      *(v0 + 2984) = 0x6574532220202020;
      *(v0 + 2992) = 0xEB00000000203A70;
      *(v0 + 3016) = v61;
      v11 = sub_252E36F94();
      MEMORY[0x2530AD570](v11);

      MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6C700);
      memcpy(__dst, (v0 + 16), 0x1F8uLL);
      sub_2529353AC(v0 + 16, v0 + 2032);
      v12 = HomeAutomationIntent.description.getter();
      v14 = v13;
      memcpy((v0 + 1528), __dst, 0x1F8uLL);
      sub_252935408(v0 + 1528);
      MEMORY[0x2530AD570](v12, v14);

      sub_252CC3D90(*(v0 + 2984), *(v0 + 2992), 0xD00000000000008CLL, 0x8000000252E6C600);
      sub_252935408(v0 + 16);

      v8 = *(v0 + 3184);
      goto LABEL_9;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 3184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_2529F7FB0(0, *(v8 + 2) + 1, 1, *(v0 + 3184));
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2529F7FB0((v9 > 1), v10 + 1, 1, v8);
  }

  while (1)
  {
    *(v8 + 2) = v10 + 1;
    memcpy(&v8[504 * v10 + 32], (v0 + 16), 0x1F8uLL);
LABEL_9:
    v15 = *(v0 + 3176) + 1;
    if (v15 == *(v0 + 3152))
    {
      break;
    }

LABEL_15:
    v63 = v8;
    *(v0 + 3184) = v8;
    *(v0 + 3176) = v15;
    memcpy((v0 + 16), (*(v0 + 3128) + 504 * v15 + 32), 0x1F8uLL);
    sub_2529353AC(v0 + 16, v0 + 520);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 3160);
    v41 = *(v0 + 3144);
    v42 = *(v0 + 3136);
    *(v0 + 3192) = __swift_project_value_buffer(*(v0 + 3104), qword_27F544DA8);
    *(v0 + 2888) = 0;
    *(v0 + 2896) = 0xE000000000000000;
    sub_252E379F4();

    strcpy((v0 + 2872), "Running step: ");
    *(v0 + 2887) = -18;
    *(v0 + 2904) = v42;
    *(v0 + 2912) = v41;
    *(v0 + 3200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v43 = sub_252E36F94();
    MEMORY[0x2530AD570](v43);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6C6C0);
    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    v44 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v44);

    sub_252CC3D90(*(v0 + 2872), *(v0 + 2880), 0xD00000000000008CLL, 0x8000000252E6C600);

    memcpy(__dst, (v0 + 16), 0x1F8uLL);
    if (v40(__dst, v42, v41))
    {
      v64 = *(v0 + 3144);
      memcpy((v0 + 1024), (v0 + 16), 0x1F8uLL);
      v59 = (*(v64 + 16) + **(v64 + 16));
      v55 = swift_task_alloc();
      *(v0 + 3208) = v55;
      *v55 = v0;
      v55[1] = sub_252975A3C;

      return v59(v0 + 1024);
    }

    v8 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2529F7FB0(0, *(v63 + 2) + 1, 1, v63);
    }

    v10 = *(v8 + 2);
    v45 = *(v8 + 3);
    if (v10 >= v45 >> 1)
    {
      v8 = sub_2529F7FB0((v45 > 1), v10 + 1, 1, v8);
    }
  }

  for (i = v57; ; v8 = i)
  {
    v17 = *(v0 + 3096);
    v18 = *(v0 + 3072);
    v19 = *(v0 + 3064);
    v20 = *(v0 + 3056);
    v58 = *(v0 + 3120) + 1;
    v62 = *(v0 + 3112);
    *&__dst[0] = i;

    v56 = *(v0 + 3136);
    sub_25297AA34(v8);
    v21 = *&__dst[0];
    *(v0 + 2920) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407A8, &qword_252E3DC78);
    v22 = sub_252E36F94();
    *(v0 + 2704) = 0;
    *(v0 + 2712) = 1;
    *(v0 + 2713) = *(v0 + 2697);
    *(v0 + 2716) = *(v0 + 2700);
    *(v0 + 2720) = 0u;
    *(v0 + 2736) = 0u;
    *(v0 + 2752) = 0u;
    *(v0 + 2768) = 0u;
    *(v0 + 2784) = 0u;
    *(v0 + 2800) = 1;
    *(v0 + 2804) = *(v0 + 2868);
    *(v0 + 2801) = *(v0 + 2865);
    *(v0 + 2808) = 0;
    *(v0 + 2816) = 0;
    *(v0 + 2824) = 0;
    *(v0 + 2832) = 513;
    *(v0 + 2838) = *(v0 + 3228);
    *(v0 + 2834) = *(v0 + 3224);
    *(v0 + 2840) = v22;
    *(v0 + 2848) = v23;
    *(v0 + 2856) = 0;
    *(v0 + 2864) = 1;
    GEOLocationCoordinate2DMake();
    v24 = *(v0 + 2848);
    __dst[8] = *(v0 + 2832);
    __dst[9] = v24;
    LOBYTE(__dst[10]) = *(v0 + 2864);
    v25 = *(v0 + 2784);
    __dst[4] = *(v0 + 2768);
    __dst[5] = v25;
    v26 = *(v0 + 2816);
    __dst[6] = *(v0 + 2800);
    __dst[7] = v26;
    v27 = *(v0 + 2720);
    __dst[0] = *(v0 + 2704);
    __dst[1] = v27;
    v28 = *(v0 + 2752);
    __dst[2] = *(v0 + 2736);
    __dst[3] = v28;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v17, v18, "IntentSelection.IntentGeneration.Step", 37, 2, __dst);
    v29 = __dst[9];
    *(v0 + 2664) = __dst[8];
    *(v0 + 2680) = v29;
    *(v0 + 2696) = __dst[10];
    v30 = __dst[5];
    *(v0 + 2600) = __dst[4];
    *(v0 + 2616) = v30;
    v31 = __dst[7];
    *(v0 + 2632) = __dst[6];
    *(v0 + 2648) = v31;
    v32 = __dst[1];
    *(v0 + 2536) = __dst[0];
    *(v0 + 2552) = v32;
    v33 = __dst[3];
    *(v0 + 2568) = __dst[2];
    *(v0 + 2584) = v33;
    sub_2529765AC(v0 + 2536);
    (*(v19 + 8))(v18, v20);

    if (v58 == v62)
    {
      break;
    }

    v34 = *(v0 + 3120) + 1;
    *(v0 + 3128) = v21;
    *(v0 + 3120) = v34;
    v35 = *(v0 + 3096);
    v36 = *(v0 + 3048) + 16 * v34;
    *(v0 + 3136) = *(v36 + 32);
    v37 = *(v36 + 40);
    *(v0 + 3144) = v37;
    v38 = v35;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    i = MEMORY[0x277D84F90];
    *(v0 + 3032) = MEMORY[0x277D84F90];
    v39 = *(v21 + 16);
    *(v0 + 3152) = v39;
    if (v39)
    {
      v15 = 0;
      *(v0 + 3160) = *(v37 + 8);
      *(v0 + 3168) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x6FC0000000000000;
      v8 = i;
      v57 = i;
      goto LABEL_15;
    }
  }

  v46 = *(v0 + 3096);
  v47 = *(v0 + 3080);
  v48 = sub_252DF93D8(v21);

  v49 = sub_252E375C4();
  sub_252E36A74(v49, &dword_252917000, v46, "IntentSelection.IntentGeneration", 32, 2, v47, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v50 = *(v0 + 3088);
  v51 = *(v0 + 3056);
  v52 = *(*(v0 + 3064) + 8);
  v52(*(v0 + 3080), v51);
  v52(v50, v51);

  v53 = *(v0 + 8);

  return v53(v48);
}

uint64_t sub_2529765AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407B0, &unk_252E42860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252976614()
{
  v2 = sub_252E32E04();
  *(v1 + 1016) = v2;
  *(v1 + 1024) = *(v2 - 8);
  *(v1 + 1032) = swift_task_alloc();
  v3 = sub_252E35BE4();
  *(v1 + 1040) = v3;
  *(v1 + 1048) = *(v3 - 8);
  *(v1 + 1056) = swift_task_alloc();
  v4 = sub_252E35BF4();
  *(v1 + 1064) = v4;
  *(v1 + 1072) = *(v4 - 8);
  *(v1 + 1080) = swift_task_alloc();
  v5 = sub_252E35C14();
  *(v1 + 1088) = v5;
  *(v1 + 1096) = *(v5 - 8);
  *(v1 + 1104) = swift_task_alloc();
  *(v1 + 1000) = *v0;
  *(v1 + 1112) = *(v0 + 16);
  memcpy((v1 + 520), (v0 + 24), 0x1E0uLL);

  return MEMORY[0x2822009F8](sub_252976808, 0, 0);
}

uint64_t sub_252976808()
{
  v26 = v0;
  v1 = *(v0 + 1112);
  *(v0 + 1120) = [objc_allocWithZone(type metadata accessor for ShowHomeIntent()) init];
  v23 = *(v0 + 1000);
  v24 = v1;
  memcpy(v25, (v0 + 520), sizeof(v25));
  *(v0 + 1128) = sub_252940F38(&v23);
  if (v1)
  {
    v2 = *(v0 + 1112);
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1056);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1040);
    *(v0 + 16) = *(v0 + 1000);
    *(v0 + 32) = v2;
    memcpy((v0 + 40), (v0 + 520), 0x1E0uLL);
    (*(v4 + 104))(v3, *MEMORY[0x277D56138], v5);
    (*(v7 + 104))(v6, *MEMORY[0x277D56120], v8);
    sub_252CC6450(MEMORY[0x277D84F90]);
    sub_252E35C04();
    sub_252E32DF4();
    v9 = swift_task_alloc();
    *(v0 + 1136) = v9;
    *v9 = v0;
    v9[1] = sub_252976B9C;
    v10 = *(v0 + 1104);
    v11 = *(v0 + 1032);

    return sub_252BAE648(v10, v11);
  }

  else
  {
    v13 = *(v0 + 1120);
    type metadata accessor for HomeFilter();
    v14 = sub_252E37254();

    [v13 setFilters_];

    [v13 setDateTimeRange_];
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 1120);
    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D90);
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v23 = 0xD000000000000015;
    *(&v23 + 1) = 0x8000000252E6C770;
    v17 = [v15 description];
    v18 = sub_252E36F34();
    v20 = v19;

    MEMORY[0x2530AD570](v18, v20);

    sub_252CC3D90(v23, *(&v23 + 1), 0xD000000000000081, 0x8000000252E6C790);

    v21 = *(v0 + 8);
    v22 = *(v0 + 1120);

    return v21(v22);
  }
}

uint64_t sub_252976B9C(uint64_t a1)
{
  v2 = *(*v1 + 1104);
  v3 = *(*v1 + 1096);
  v4 = *(*v1 + 1088);
  v5 = *(*v1 + 1032);
  v6 = *(*v1 + 1024);
  v7 = *(*v1 + 1016);
  *(*v1 + 1144) = a1;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252976D58, 0, 0);
}

uint64_t sub_252976D58()
{
  v1 = v0[143];
  v2 = v0[140];
  type metadata accessor for HomeFilter();
  v3 = sub_252E37254();

  [v2 setFilters_];

  [v2 setDateTimeRange_];
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v4 = v0[140];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D90);
  sub_252E379F4();

  v6 = [v4 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E6C770, 0xD000000000000081, 0x8000000252E6C790);

  v10 = v0[1];
  v11 = v0[140];

  return v10(v11);
}

char *sub_252976F6C(uint64_t a1)
{
  v1 = a1;
  v138 = a1;
  v2 = *(a1 + 16);
  v3 = (a1 + 512);
  v4 = -1;
  do
  {
    if (v2 == ++v4)
    {

      return v1;
    }

    if (*(*(v3 - 10) + 16))
    {
      break;
    }

    if (*(*(v3 - 9) + 16))
    {
      break;
    }

    if (*(*(v3 - 8) + 16))
    {
      break;
    }

    if (*(*(v3 - 7) + 16))
    {
      break;
    }

    if (*(*(v3 - 6) + 16))
    {
      break;
    }

    if (*(*(v3 - 5) + 16))
    {
      break;
    }

    if (*(*(v3 - 4) + 16))
    {
      break;
    }

    if (*(*(v3 - 3) + 16))
    {
      break;
    }

    if (*(*(v3 - 2) + 16))
    {
      break;
    }

    if (*(*(v3 - 1) + 16))
    {
      break;
    }

    v5 = *v3;
    v3 += 63;
  }

  while (!*(v5 + 16));
  v6 = 0xD0000000000000A5;
  v7 = v2 + 1;
  v8 = 432;
  do
  {
    if (!--v7)
    {
LABEL_35:

LABEL_36:
      v21 = v2 + 1;
      v22 = 440;
      do
      {
        if (!--v21)
        {
          goto LABEL_58;
        }

        v23 = *&v1[v22];
        v22 += 504;
      }

      while (!*(v23 + 16));
      v24 = v1 + 440;
      v25 = v2;
      while (1)
      {
        if (*(*(v24 - 32) + 16))
        {
          v26 = *(v24 - 96);
          v27 = *(*v24 + 16) || v26 == 2;
          if (!v27 && (v26 & 1) != 0)
          {
            break;
          }
        }

        v24 += 504;
        if (!--v25)
        {
          goto LABEL_58;
        }
      }

      if (qword_27F53F520 != -1)
      {
        goto LABEL_329;
      }

      while (1)
      {
        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 96, 0x8000000252E6C920);
        v29 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v29);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v30 = 0;
          v31 = 536;
          while (!*(*&v1[v31 - 96] + 16))
          {
            ++v30;
            v31 += 504;
            if (result == v30)
            {
              goto LABEL_52;
            }
          }

          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_357;
          }

          if (v33 != result)
          {
            while (v33 < result)
            {
              if (!*(*&v1[v31 + 408] + 16))
              {
                if (v33 != v30)
                {
                  if (v30 >= result)
                  {
                    goto LABEL_331;
                  }

                  memcpy(__src, &v1[504 * v30 + 32], sizeof(__src));
                  memcpy(v137, &v1[v31], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v126 = &v1[504 * v30];
                  memcpy(v134, v126 + 32, sizeof(v134));
                  memcpy(v126 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v33 >= *(v1 + 2))
                  {
                    goto LABEL_333;
                  }

                  memcpy(__dst, &v1[v31], sizeof(__dst));
                  memcpy(&v1[v31], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v30;
              }

              ++v33;
              v31 += 504;
              if (v33 == result)
              {
                goto LABEL_56;
              }
            }

LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

LABEL_56:
          v32 = result;
          result = v30;
          if (v32 < v30)
          {
            goto LABEL_349;
          }
        }

        else
        {
LABEL_52:
          v32 = *(v1 + 2);
        }

        sub_252D57BC8(result, v32);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_58:
        v34 = v2 + 1;
        v35 = 448;
        do
        {
          if (!--v34)
          {
            goto LABEL_80;
          }

          v36 = *&v1[v35];
          v35 += 504;
        }

        while (!*(v36 + 16));
        v37 = v1 + 448;
        v38 = v2;
        while (1)
        {
          if (*(*(v37 - 31) + 16))
          {
            v39 = *(v37 - 104);
            v40 = *(*v37 + 16) || v39 == 2;
            if (!v40 && (v39 & 1) != 0)
            {
              break;
            }
          }

          v37 += 504;
          if (!--v38)
          {
            goto LABEL_80;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v41 = sub_252E36AD4();
        __swift_project_value_buffer(v41, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 92, 0x8000000252E6C970);
        v42 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v42);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v43 = 0;
          v44 = 536;
          while (!*(*&v1[v44 - 88] + 16))
          {
            ++v43;
            v44 += 504;
            if (result == v43)
            {
              goto LABEL_75;
            }
          }

          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_358;
          }

          if (v46 != result)
          {
            while (v46 < result)
            {
              if (!*(*&v1[v44 + 416] + 16))
              {
                if (v46 != v43)
                {
                  if (v43 >= result)
                  {
                    goto LABEL_332;
                  }

                  memcpy(__src, &v1[504 * v43 + 32], sizeof(__src));
                  memcpy(v137, &v1[v44], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v127 = &v1[504 * v43];
                  memcpy(v134, v127 + 32, sizeof(v134));
                  memcpy(v127 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v46 >= *(v1 + 2))
                  {
                    goto LABEL_335;
                  }

                  memcpy(__dst, &v1[v44], sizeof(__dst));
                  memcpy(&v1[v44], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v43;
              }

              ++v46;
              v44 += 504;
              if (v46 == result)
              {
                goto LABEL_78;
              }
            }

            goto LABEL_321;
          }

LABEL_78:
          v45 = result;
          result = v43;
          if (v45 < v43)
          {
            goto LABEL_350;
          }
        }

        else
        {
LABEL_75:
          v45 = *(v1 + 2);
        }

        sub_252D57BC8(result, v45);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_80:
        v47 = v2 + 1;
        v48 = 472;
        do
        {
          if (!--v47)
          {
            goto LABEL_102;
          }

          v49 = *&v1[v48];
          v48 += 504;
        }

        while (!*(v49 + 16));
        v50 = (v1 + 344);
        v51 = v2;
        while (1)
        {
          if (*(*(v50 - 26) + 16))
          {
            v52 = *v50;
            v53 = *(*(v50 + 16) + 16) || v52 == 2;
            if (!v53 && (v52 & 1) != 0)
            {
              break;
            }
          }

          v50 += 504;
          if (!--v51)
          {
            goto LABEL_102;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v54 = sub_252E36AD4();
        __swift_project_value_buffer(v54, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6C9C0);
        v55 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v55);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v56 = 0;
          v57 = 536;
          while (!*(*&v1[v57 - 64] + 16))
          {
            ++v56;
            v57 += 504;
            if (result == v56)
            {
              goto LABEL_97;
            }
          }

          v59 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_359;
          }

          if (v59 != result)
          {
            while (v59 < result)
            {
              if (!*(*&v1[v57 + 440] + 16))
              {
                if (v59 != v56)
                {
                  if (v56 >= result)
                  {
                    goto LABEL_334;
                  }

                  memcpy(__src, &v1[504 * v56 + 32], sizeof(__src));
                  memcpy(v137, &v1[v57], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v128 = &v1[504 * v56];
                  memcpy(v134, v128 + 32, sizeof(v134));
                  memcpy(v128 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v59 >= *(v1 + 2))
                  {
                    goto LABEL_337;
                  }

                  memcpy(__dst, &v1[v57], sizeof(__dst));
                  memcpy(&v1[v57], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v56;
              }

              ++v59;
              v57 += 504;
              if (v59 == result)
              {
                goto LABEL_100;
              }
            }

            goto LABEL_322;
          }

LABEL_100:
          v58 = result;
          result = v56;
          if (v58 < v56)
          {
            goto LABEL_351;
          }
        }

        else
        {
LABEL_97:
          v58 = *(v1 + 2);
        }

        sub_252D57BC8(result, v58);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_102:
        v60 = v2 + 1;
        v61 = 488;
        do
        {
          if (!--v60)
          {
            goto LABEL_124;
          }

          v62 = *&v1[v61];
          v61 += 504;
        }

        while (!*(v62 + 16));
        v63 = v1 + 256;
        v64 = v2;
        while (1)
        {
          if (*(*v63 + 16))
          {
            v65 = v63[88];
            v66 = *(*(v63 + 29) + 16) || v65 == 2;
            if (!v66 && (v65 & 1) != 0)
            {
              break;
            }
          }

          v63 += 504;
          if (!--v64)
          {
            goto LABEL_124;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v67 = sub_252E36AD4();
        __swift_project_value_buffer(v67, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6CA00);
        v68 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v68);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v69 = 0;
          v70 = 536;
          while (!*(*&v1[v70 - 48] + 16))
          {
            ++v69;
            v70 += 504;
            if (result == v69)
            {
              goto LABEL_119;
            }
          }

          v72 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            goto LABEL_360;
          }

          if (v72 != result)
          {
            while (v72 < result)
            {
              if (!*(*&v1[v70 + 456] + 16))
              {
                if (v72 != v69)
                {
                  if (v69 >= result)
                  {
                    goto LABEL_336;
                  }

                  memcpy(__src, &v1[504 * v69 + 32], sizeof(__src));
                  memcpy(v137, &v1[v70], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v129 = &v1[504 * v69];
                  memcpy(v134, v129 + 32, sizeof(v134));
                  memcpy(v129 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v72 >= *(v1 + 2))
                  {
                    goto LABEL_339;
                  }

                  memcpy(__dst, &v1[v70], sizeof(__dst));
                  memcpy(&v1[v70], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v69;
              }

              ++v72;
              v70 += 504;
              if (v72 == result)
              {
                goto LABEL_122;
              }
            }

            goto LABEL_323;
          }

LABEL_122:
          v71 = result;
          result = v69;
          if (v71 < v69)
          {
            goto LABEL_352;
          }
        }

        else
        {
LABEL_119:
          v71 = *(v1 + 2);
        }

        sub_252D57BC8(result, v71);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_124:
        v73 = v2 + 1;
        v74 = 504;
        do
        {
          if (!--v73)
          {
            goto LABEL_146;
          }

          v75 = *&v1[v74];
          v74 += 504;
        }

        while (!*(v75 + 16));
        v76 = v1;
        v77 = v2;
        while (1)
        {
          if (*(*(v76 + 10) + 16))
          {
            v78 = v76[344];
            v79 = *(*(v76 + 63) + 16) || v78 == 2;
            if (!v79 && (v78 & 1) != 0)
            {
              break;
            }
          }

          v76 += 504;
          if (!--v77)
          {
            goto LABEL_146;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v80 = sub_252E36AD4();
        __swift_project_value_buffer(v80, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6CA40);
        v81 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v81);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v82 = 0;
          v83 = 536;
          while (!*(*&v1[v83 - 48] + 16))
          {
            ++v82;
            v83 += 504;
            if (result == v82)
            {
              goto LABEL_141;
            }
          }

          v85 = v82 + 1;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_361;
          }

          if (v85 != result)
          {
            while (v85 < result)
            {
              if (!*(*&v1[v83 + 456] + 16))
              {
                if (v85 != v82)
                {
                  if (v82 >= result)
                  {
                    goto LABEL_338;
                  }

                  memcpy(__src, &v1[504 * v82 + 32], sizeof(__src));
                  memcpy(v137, &v1[v83], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v130 = &v1[504 * v82];
                  memcpy(v134, v130 + 32, sizeof(v134));
                  memcpy(v130 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v85 >= *(v1 + 2))
                  {
                    goto LABEL_341;
                  }

                  memcpy(__dst, &v1[v83], sizeof(__dst));
                  memcpy(&v1[v83], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v82;
              }

              ++v85;
              v83 += 504;
              if (v85 == result)
              {
                goto LABEL_144;
              }
            }

            goto LABEL_324;
          }

LABEL_144:
          v84 = result;
          result = v82;
          if (v84 < v82)
          {
            goto LABEL_353;
          }
        }

        else
        {
LABEL_141:
          v84 = *(v1 + 2);
        }

        sub_252D57BC8(result, v84);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_146:
        v86 = v2 + 1;
        v87 = 456;
        do
        {
          if (!--v86)
          {
            goto LABEL_168;
          }

          v88 = *&v1[v87];
          v87 += 504;
        }

        while (!*(v88 + 16));
        v89 = (v1 + 344);
        v90 = v2;
        while (1)
        {
          if (*(*(v89 - 22) + 16))
          {
            v91 = *v89;
            v92 = *(*(v89 + 14) + 16) || v91 == 2;
            if (!v92 && (v91 & 1) != 0)
            {
              break;
            }
          }

          v89 += 504;
          if (!--v90)
          {
            goto LABEL_168;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v93 = sub_252E36AD4();
        __swift_project_value_buffer(v93, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 102, 0x8000000252E6CA80);
        v94 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v94);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v95 = 0;
          v96 = 536;
          while (!*(*&v1[v96 - 80] + 16))
          {
            ++v95;
            v96 += 504;
            if (result == v95)
            {
              goto LABEL_163;
            }
          }

          v98 = v95 + 1;
          if (__OFADD__(v95, 1))
          {
            goto LABEL_362;
          }

          if (v98 != result)
          {
            while (v98 < result)
            {
              if (!*(*&v1[v96 + 424] + 16))
              {
                if (v98 != v95)
                {
                  if (v95 >= result)
                  {
                    goto LABEL_340;
                  }

                  memcpy(__src, &v1[504 * v95 + 32], sizeof(__src));
                  memcpy(v137, &v1[v96], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v131 = &v1[504 * v95];
                  memcpy(v134, v131 + 32, sizeof(v134));
                  memcpy(v131 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v98 >= *(v1 + 2))
                  {
                    goto LABEL_343;
                  }

                  memcpy(__dst, &v1[v96], sizeof(__dst));
                  memcpy(&v1[v96], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v95;
              }

              ++v98;
              v96 += 504;
              if (v98 == result)
              {
                goto LABEL_166;
              }
            }

            goto LABEL_325;
          }

LABEL_166:
          v97 = result;
          result = v95;
          if (v97 < v95)
          {
            goto LABEL_354;
          }
        }

        else
        {
LABEL_163:
          v97 = *(v1 + 2);
        }

        sub_252D57BC8(result, v97);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_168:
        v99 = v2 + 1;
        v100 = 464;
        do
        {
          if (!--v99)
          {
            goto LABEL_190;
          }

          v101 = *&v1[v100];
          v100 += 504;
        }

        while (!*(v101 + 16));
        v102 = (v1 + 344);
        v103 = v2;
        while (1)
        {
          if (*(*(v102 - 21) + 16))
          {
            v104 = *v102;
            v105 = *(*(v102 + 15) + 16) || v104 == 2;
            if (!v105 && (v104 & 1) != 0)
            {
              break;
            }
          }

          v102 += 504;
          if (!--v103)
          {
            goto LABEL_190;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v106 = sub_252E36AD4();
        __swift_project_value_buffer(v106, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 96, 0x8000000252E6CAC0);
        v107 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v107);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (result)
        {
          v108 = 0;
          v109 = 536;
          while (!*(*&v1[v109 - 72] + 16))
          {
            ++v108;
            v109 += 504;
            if (result == v108)
            {
              goto LABEL_185;
            }
          }

          v111 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_363;
          }

          if (v111 != result)
          {
            while (v111 < result)
            {
              if (!*(*&v1[v109 + 432] + 16))
              {
                if (v111 != v108)
                {
                  if (v108 >= result)
                  {
                    goto LABEL_342;
                  }

                  memcpy(__src, &v1[504 * v108 + 32], sizeof(__src));
                  memcpy(v137, &v1[v109], sizeof(v137));
                  sub_2529353AC(__src, __dst);
                  sub_2529353AC(v137, __dst);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  v132 = &v1[504 * v108];
                  memcpy(v134, v132 + 32, sizeof(v134));
                  memcpy(v132 + 32, v137, 0x1F8uLL);
                  result = sub_252935408(v134);
                  if (v111 >= *(v1 + 2))
                  {
                    goto LABEL_345;
                  }

                  memcpy(__dst, &v1[v109], sizeof(__dst));
                  memcpy(&v1[v109], __src, 0x1F8uLL);
                  sub_252935408(__dst);
                  v138 = v1;
                  result = *(v1 + 2);
                }

                ++v108;
              }

              ++v111;
              v109 += 504;
              if (v111 == result)
              {
                goto LABEL_188;
              }
            }

            goto LABEL_326;
          }

LABEL_188:
          v110 = result;
          result = v108;
          if (v110 < v108)
          {
            goto LABEL_355;
          }
        }

        else
        {
LABEL_185:
          v110 = *(v1 + 2);
        }

        sub_252D57BC8(result, v110);
        v1 = v138;
        v2 = *(v138 + 16);
LABEL_190:
        v112 = v2 + 1;
        v113 = 512;
        do
        {
          if (!--v112)
          {
            return v1;
          }

          v114 = *&v1[v113];
          v113 += 504;
        }

        while (!*(v114 + 16));
        for (i = (v1 + 344); ; i += 504)
        {
          if (*(*(i - 23) + 16))
          {
            v116 = *i;
            v117 = *(*(i + 21) + 16) || v116 == 2;
            if (!v117 && (v116 & 1) != 0)
            {
              break;
            }
          }

          if (!--v2)
          {
            return v1;
          }
        }

        if (qword_27F53F520 != -1)
        {
          swift_once();
        }

        v118 = sub_252E36AD4();
        __swift_project_value_buffer(v118, qword_27F544E08);
        v137[0] = 0;
        v137[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](v6 - 106, 0x8000000252E6CB10);
        v119 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v119);

        sub_252CC3D90(v137[0], v137[1], 0xD0000000000000A5, 0x8000000252E6C870);

        result = *(v1 + 2);
        if (!result)
        {
LABEL_207:
          v122 = *(v1 + 2);
LABEL_211:
          sub_252D57BC8(result, v122);
          return v138;
        }

        v120 = 0;
        v121 = 536;
        while (!*(*&v1[v121 - 24] + 16))
        {
          ++v120;
          v121 += 504;
          if (result == v120)
          {
            goto LABEL_207;
          }
        }

        v6 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_364;
        }

        if (v6 == result)
        {
LABEL_210:
          v122 = result;
          result = v120;
          if (v122 < v120)
          {
            goto LABEL_356;
          }

          goto LABEL_211;
        }

        while (v6 < result)
        {
          if (!*(*&v1[v121 + 480] + 16))
          {
            if (v6 != v120)
            {
              if (v120 >= result)
              {
                goto LABEL_344;
              }

              memcpy(__src, &v1[504 * v120 + 32], sizeof(__src));
              memcpy(v137, &v1[v121], sizeof(v137));
              sub_2529353AC(__src, __dst);
              sub_2529353AC(v137, __dst);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_252D57AC0(v1);
              }

              v133 = &v1[504 * v120];
              memcpy(v134, v133 + 32, sizeof(v134));
              memcpy(v133 + 32, v137, 0x1F8uLL);
              result = sub_252935408(v134);
              if (v6 >= *(v1 + 2))
              {
                goto LABEL_346;
              }

              memcpy(__dst, &v1[v121], sizeof(__dst));
              memcpy(&v1[v121], __src, 0x1F8uLL);
              sub_252935408(__dst);
              v138 = v1;
              result = *(v1 + 2);
            }

            ++v120;
          }

          ++v6;
          v121 += 504;
          if (v6 == result)
          {
            goto LABEL_210;
          }
        }

LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        swift_once();
      }
    }

    v9 = *(a1 + v8);
    v8 += 504;
  }

  while (!*(v9 + 16));
  v10 = a1 + 432;
  v11 = *(a1 + 16);
  while (1)
  {
    if (!v11)
    {
      __break(1u);
      goto LABEL_320;
    }

    if (*(*(v10 - 240) + 16))
    {
      v12 = *(v10 - 88);
      v13 = *(*v10 + 16) || v12 == 2;
      if (!v13 && (v12 & 1) != 0)
      {
        break;
      }
    }

    v10 += 504;
    if (!--v11)
    {
      goto LABEL_35;
    }
  }

  v14 = qword_27F53F520;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544E08);
  v137[0] = 0;
  v137[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E6C820);
  v16 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A5, 0x8000000252E6C870);

  if (!v2)
  {
LABEL_32:
    v18 = v2;
    goto LABEL_33;
  }

  v18 = 0;
  v19 = 536;
  while (!*(*&v1[v19 - 104] + 16))
  {
    ++v18;
    v19 += 504;
    if (v2 == v18)
    {
      goto LABEL_32;
    }
  }

  v123 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    if (v123 != v2)
    {
      do
      {
        v124 = *(v1 + 2);
        if (v123 >= v124)
        {
          goto LABEL_328;
        }

        if (!*(*&v1[v19 + 400] + 16))
        {
          if (v123 != v18)
          {
            if (v18 >= v124)
            {
              goto LABEL_347;
            }

            memcpy(__src, &v1[504 * v18 + 32], sizeof(__src));
            memcpy(v137, &v1[v19], sizeof(v137));
            sub_2529353AC(__src, __dst);
            sub_2529353AC(v137, __dst);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_252D57AC0(v1);
            }

            v125 = &v1[504 * v18];
            memcpy(v134, v125 + 32, sizeof(v134));
            memcpy(v125 + 32, v137, 0x1F8uLL);
            result = sub_252935408(v134);
            if (v123 >= *(v1 + 2))
            {
              goto LABEL_348;
            }

            memcpy(__dst, &v1[v19], sizeof(__dst));
            memcpy(&v1[v19], __src, 0x1F8uLL);
            result = sub_252935408(__dst);
            v138 = v1;
            v124 = *(v1 + 2);
          }

          ++v18;
        }

        ++v123;
        v19 += 504;
      }

      while (v123 != v124);
    }

LABEL_33:
    v20 = *(v1 + 2);
    if (v20 >= v18)
    {
      sub_252D57BC8(v18, v20);
      v1 = v138;
      v2 = *(v138 + 16);
      goto LABEL_36;
    }

    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
  }

  __break(1u);
  return result;
}

dispatch_semaphore_t sub_252978984()
{
  result = dispatch_semaphore_create(1);
  qword_27F5753E8 = result;
  return result;
}

uint64_t sub_252978A28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 176) = v2;
}

uint64_t sub_252978AC0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t sub_252978B58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
}

uint64_t sub_252978BF0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t sub_252978D40()
{
  sub_252E35F84();
  if (!sub_252E35F54())
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v0 = sub_252E36AD4();
    __swift_project_value_buffer(v0, qword_27F544D60);
    sub_252CC4050(0xD000000000000072, 0x8000000252E6CB50, 0xD000000000000079, 0x8000000252E6CBD0, 0xD000000000000010, 0x8000000252E6CC50, 68);
    sub_252E35F74();
  }

  v1 = sub_252E35F04();

  return v1;
}

char *sub_252978E58()
{
  v1 = v0;
  v2 = sub_252E363B4();
  MEMORY[0x28223BE20](v2 - 8);
  *(v0 + 57) = 0;
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal18ApplicationContext_showHomeIntentTimed;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5407F0, &qword_252E3DE18);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  sub_252E34174();
  sub_252927BEC(&v28, (v1 + 16));
  sub_252E33814();
  sub_252927BEC(&v28, (v1 + 56));
  sub_252E33F34();
  sub_252927BEC(&v28, (v1 + 96));
  type metadata accessor for HomeAutomationCATs(0);
  sub_252E363A4();
  *(v1 + 22) = sub_252E362C4();
  type metadata accessor for HomeAutomationCATsSimple(0);
  sub_252E363A4();
  *(v1 + 23) = sub_252E36354();
  type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  sub_252E363A4();
  *(v1 + 29) = sub_252E362C4();
  v5 = type metadata accessor for DefaultOutputGenerator();
  v6 = swift_allocObject();
  v7 = sub_252E33C64();
  swift_allocObject();
  v8 = sub_252E33C54();
  v9 = MEMORY[0x277D5BD58];
  v6[5] = v7;
  v6[6] = v9;
  v6[2] = v8;
  sub_252E33F34();
  swift_allocObject();
  v27 = sub_252E33C54();
  v10 = sub_252E334C4();
  swift_allocObject();
  v11 = sub_252E334B4();
  v12 = MEMORY[0x277D5B808];
  v6[10] = v10;
  v6[11] = v12;
  v6[7] = v11;
  *(v1 + 20) = v5;
  *(v1 + 21) = &off_2864B0420;
  *(v1 + 17) = v6;
  v29 = type metadata accessor for LocationService(0);
  v30 = &protocol witness table for LocationService;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36C84();
  v15 = __swift_project_value_buffer(v14, qword_27F5432C0);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v15, v14);
  sub_252927BEC(&v28, (v1 + 240));
  sub_252E35F84();
  sub_252E35F74();
  v16 = sub_252E35F64();

  *(v1 + 35) = v16;
  *(v1 + 39) = &type metadata for FeatureFlagProvider;
  *(v1 + 40) = &protocol witness table for FeatureFlagProvider;
  v17 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  *(v1 + 44) = sub_25297A460();
  *(v1 + 45) = &protocol witness table for NSMeasurementFormatter;
  *(v1 + 41) = v17;
  v18 = sub_252E368F4();
  v19 = sub_252E368E4();
  *(v1 + 49) = v18;
  *(v1 + 50) = &protocol witness table for ReferenceResolutionClient;
  *(v1 + 46) = v19;
  v20 = sub_252E369B4();
  v21 = sub_252E369A4();
  v22 = MEMORY[0x277D5FCE0];
  if (v21)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  if (!v21)
  {
    v22 = 0;
  }

  *(v1 + 52) = v21;
  *(v1 + 53) = 0;
  *(v1 + 54) = 0;
  *(v1 + 55) = v23;
  *(v1 + 56) = v22;
  sub_252E36924();
  *(v1 + 51) = sub_252E36914();
  v24 = type metadata accessor for DefaultHomeDataDecorator();
  v25 = swift_allocObject();
  *(v1 + 27) = v24;
  *(v1 + 28) = &protocol witness table for DefaultHomeDataDecorator;
  *(v1 + 24) = v25;
  return v1;
}

uint64_t sub_252979258()
{
  v1 = v0[7];
  v2 = *(v1 + 456);
  v0[8] = v2;
  if (v2)
  {
    v6 = v0[1];
    v3 = v2;

    return v6(v2);
  }

  else
  {
    sub_252929E74(v1 + 56, (v0 + 2));
    sub_252E33E04();
    swift_allocObject();
    v0[9] = sub_252E33DF4();
    v7 = (*MEMORY[0x277D5BEF8] + MEMORY[0x277D5BEF8]);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_25297937C;

    return v7();
  }
}

uint64_t sub_25297937C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25297947C, 0, 0);
}

uint64_t sub_25297947C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v2 + 456);
  *(v2 + 456) = v1;
  v4 = v1;

  v5 = *(v0 + 88);
  v8 = *(v0 + 8);
  v6 = *(v0 + 64);

  return v8(v5);
}

uint64_t ApplicationContext.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  __swift_destroy_boxed_opaque_existential_1((v0 + 240));

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));

  sub_25293847C(v0 + 416, &qword_27F540318, &qword_252E3DCD0);

  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal18ApplicationContext_showHomeIntentTimed, &qword_27F5407D0, &qword_252E3DCD8);
  return v0;
}

uint64_t ApplicationContext.__deallocating_deinit()
{
  ApplicationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252979634(uint64_t a1, uint64_t a2)
{
  if (sub_252E338B4() & 1) != 0 || (sub_252E33894() & 1) != 0 || (sub_252E338A4())
  {
    return 1;
  }

  return sub_252E33884();
}

uint64_t sub_2529796B4(uint64_t a1, uint64_t a2)
{
  if (sub_252E338F4() & 1) != 0 || (sub_252E338D4())
  {
    return 1;
  }

  return sub_252E33834();
}

uint64_t sub_252979724()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E6CE10, 0xD000000000000079, 0x8000000252E6CBD0);
  if (qword_27F53F220 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F5407C0 = 0;

  return sub_252E37614();
}

char *_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(uint64_t a1)
{
  sub_252D806C0(a1);
  sub_252D7ED58(0xD000000000000012, 0x8000000252E3DD80, sub_252979724, 0, 15);

  if (qword_27F53F220 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = qword_27F5407C0;
  if (qword_27F5407C0)
  {
  }

  else
  {
    type metadata accessor for ApplicationContext(0);
    swift_allocObject();
    v1 = sub_252978E58();
    qword_27F5407C0 = v1;
  }

  sub_252E37614();
  return v1;
}

uint64_t sub_252979914()
{
  type metadata accessor for ApplicationContext(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_252E36F34();
  }

  sub_252E36FD4();

  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

uint64_t type metadata accessor for ApplicationContext(uint64_t a1)
{
  result = qword_27F5407D8;
  if (!qword_27F5407D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252979A44(uint64_t a1)
{
  sub_252979C38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_252979C38(uint64_t a1)
{
  if (!qword_27F5407E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5407F0, &qword_252E3DE18);
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5407E8);
    }
  }
}

uint64_t sub_252979CB4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_252E32E04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_252979D3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_252E32E04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_252979FA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_252E32E04() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

id sub_25297A2A8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v1 = sub_252A31A94(0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0);
  v2 = [v1 applicationState];

  v3 = [v2 isInstalled];
  return v3;
}

unint64_t sub_25297A460()
{
  result = qword_27F540878;
  if (!qword_27F540878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540878);
  }

  return result;
}

unint64_t sub_25297A4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x7465677261546E69 && a2 == 0xE800000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F543C08;
    v8 = 1;
LABEL_7:
    v9 = sub_252BC6360(v7, v8);
    swift_endAccess();
    result = type metadata accessor for HomeAutomationPolledEntityResponses();
LABEL_8:
    *(a3 + 24) = result;
    *a3 = v9;
    return result;
  }

  if (a1 == 0x7261546E49746F6ELL && a2 == 0xEB00000000746567 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F543C09;
    v8 = 0;
    goto LABEL_7;
  }

  if (a1 == 0x7453746567726174 && a2 == 0xEB00000000657461 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252BC61B0();
    if (!result)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = result;
    result = type metadata accessor for HomeAutomationEntityState(0);
    goto LABEL_8;
  }

  return sub_252C86824(a1, a2, a3);
}

uint64_t sub_25297A744(uint64_t result)
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

  result = sub_2529F7A80(result, v10, 1, v3);
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

void *sub_25297A930(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2529F7BEC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540880, &qword_252E53B20);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25297AA34(uint64_t result)
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

  result = sub_2529F7FB0(result, v10, 1, v3);
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

void *sub_25297AB2C(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2529F7A80(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_252E082D0(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_2529F7A80((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_25291AE30(result);
  *v1 = v4;
  return result;
}

uint64_t sub_25297AEDC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_2529F7B8C(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = v8 - *(v3 + 2);
  result = sub_252E1135C();
  if (result < v2)
  {
    goto LABEL_15;
  }

  v12 = result;
  if (result)
  {
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
LABEL_19:
      v18 = (v10 + 64) >> 6;
      do
      {
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_42;
        }

        if (v19 >= v18)
        {
          goto LABEL_13;
        }

        v20 = *(v11 + 8 * v19);
        ++v15;
      }

      while (!v20);
      v16 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) | (v19 << 6);
      v15 = v19;
      goto LABEL_24;
    }

    *(v3 + 2) = v15;
  }

  result = v34;
  if (v12 != v10)
  {
LABEL_13:
    result = sub_25291AE30(result);
    *v1 = v3;
    return result;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v11 = v35;
  v10 = v36;
  v15 = v37;
  if (!v38)
  {
    goto LABEL_19;
  }

  v16 = (v38 - 1) & v38;
  v17 = __clz(__rbit64(v38)) | (v37 << 6);
  v18 = (v36 + 64) >> 6;
LABEL_24:
  v21 = *(*(result + 48) + 8 * v17);
  while (1)
  {
    v22 = *(v3 + 3);
    v23 = v22 >> 1;
    if ((v22 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v23)
    {
      goto LABEL_32;
    }

LABEL_27:
    *(v3 + 2) = v6;
  }

  v31 = v15;
  v32 = v18;
  v33 = result;
  v27 = v11;
  v28 = v3;
  v29 = v16;
  v30 = sub_2529F7B8C((v22 > 1), v6 + 1, 1, v28);
  v16 = v29;
  v15 = v31;
  v18 = v32;
  v11 = v27;
  v3 = v30;
  result = v33;
  v23 = *(v3 + 3) >> 1;
  if (v6 >= v23)
  {
    goto LABEL_27;
  }

LABEL_32:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v21;
    if (!v16)
    {
      break;
    }

LABEL_31:
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(*(result + 48) + ((v15 << 9) | (8 * v24)));
    if (v6 == v23)
    {
      v6 = v23;
      goto LABEL_27;
    }
  }

  v25 = v15;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v18)
    {
      *(v3 + 2) = v6;
      goto LABEL_13;
    }

    v16 = *(v11 + 8 * v26);
    ++v25;
    if (v16)
    {
      v15 = v26;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_25297B17C(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v8 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25297B314(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_252E378C4();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_252E378C4();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_252D58128();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_252E08894(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_25291AE30(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_252E37904())
    {
      goto LABEL_11;
    }

    sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_252E372A4();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_252E37904())
      {
        sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void *sub_25297B69C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_252E08AE0(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[6] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_2529F7A6C((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[6] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_25291AE30(result);
  *v1 = v3;
  return result;
}

uint64_t sub_25297B924(uint64_t result)
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

  v3 = sub_2529F8884(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
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

void *sub_25297BB90(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_2529F8AC8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5408A0, &qword_252E3DF08);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25297BCAC(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_25297BDA8(void *result)
{
  v4 = result[2];
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_2529F84A8(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = (v10 - v12);
  result = sub_252E09068(v107, &v5[152 * v12 + 32], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = *(v5 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v5 + 2) = v16;
  }

  if (result != v13)
  {
    v17 = v107[0];
LABEL_14:
    result = sub_25291AE30(v17);
    *v1 = v5;
    return result;
  }

LABEL_17:
  v3 = v93;
  v4 = *(v5 + 2);
  v13 = v107[1];
  v90 = v107[0];
  v2 = v107[2];
  v16 = v108;
  v18 = v109;
  if (v109)
  {
    v19 = v108;
LABEL_27:
    v23 = (v18 - 1) & v18;
    v24 = (*(v90 + 48) + 152 * (__clz(__rbit64(v18)) | (v19 << 6)));
    v25 = v24[1];
    v3[50] = *v24;
    v3[51] = v25;
    v26 = v24[5];
    v28 = v24[2];
    v27 = v24[3];
    v3[54] = v24[4];
    v3[55] = v26;
    v3[52] = v28;
    v3[53] = v27;
    v29 = v24[6];
    v30 = v24[7];
    v31 = v24[8];
    v104 = *(v24 + 72);
    v3[57] = v30;
    v3[58] = v31;
    v3[56] = v29;
    memmove(__dst, v24, 0x92uLL);
    GEOLocationCoordinate2DMake();
    sub_25297DE08(v103, v101);
    v22 = v19;
LABEL_28:
    v32 = v3[67];
    v3[56] = v3[66];
    v3[57] = v32;
    v3[58] = v3[68];
    v104 = v106;
    v33 = v3[63];
    v3[52] = v3[62];
    v3[53] = v33;
    v34 = v3[65];
    v3[54] = v3[64];
    v3[55] = v34;
    v35 = v3[61];
    v3[50] = v3[60];
    v3[51] = v35;
    if (sub_25297DE64(v103) == 1)
    {
      v36 = v90;
    }

    else
    {
      v2 = (v2 + 64) >> 6;
      v36 = v90;
      do
      {
        v45 = *(v5 + 3);
        v91 = v45 >> 1;
        if ((v45 >> 1) < v4 + 1)
        {
          v5 = sub_2529F84A8((v45 > 1), v4 + 1, 1, v5);
          v91 = *(v5 + 3) >> 1;
        }

        v46 = v3[67];
        v3[36] = v3[66];
        v3[37] = v46;
        v3[38] = v3[68];
        v48 = v3[62];
        v47 = v3[63];
        v49 = v3[61];
        v3[32] = v48;
        v3[33] = v47;
        v50 = v3[65];
        v51 = v3[63];
        v3[34] = v3[64];
        v3[35] = v50;
        v52 = v3[61];
        v53 = v3[60];
        v3[30] = v53;
        v3[31] = v52;
        v54 = v3[67];
        v3[46] = v3[66];
        v3[47] = v54;
        v3[48] = v3[68];
        v3[42] = v48;
        v3[43] = v51;
        v55 = v3[65];
        v3[44] = v3[64];
        v3[45] = v55;
        v100 = v106;
        v102 = v106;
        v3[40] = v53;
        v3[41] = v49;
        if (sub_25297DE64(v101) != 1)
        {
          while (v4 < v91)
          {
            v70 = v3[67];
            v3[16] = v3[66];
            v3[17] = v70;
            v3[18] = v3[68];
            v96 = v106;
            v71 = v3[63];
            v3[12] = v3[62];
            v3[13] = v71;
            v72 = v3[65];
            v3[14] = v3[64];
            v3[15] = v72;
            v73 = v3[61];
            v3[10] = v3[60];
            v3[11] = v73;
            v74 = v3[37];
            v3[26] = v3[36];
            v3[27] = v74;
            v3[28] = v3[38];
            v98 = v100;
            v75 = v3[33];
            v3[22] = v3[32];
            v3[23] = v75;
            v76 = v3[35];
            v3[24] = v3[34];
            v3[25] = v76;
            v77 = v3[31];
            v3[20] = v3[30];
            v3[21] = v77;
            sub_25297DE08(v97, v93);
            sub_25293847C(v95, &qword_27F5408A8, &unk_252E3DF10);
            memmove(&v5[152 * v4 + 32], __src, 0x92uLL);
            if (!v23)
            {
              if (v2 <= (v22 + 1))
              {
                v79 = v22 + 1;
              }

              else
              {
                v79 = v2;
              }

              v80 = v79 - 1;
              while (1)
              {
                v78 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  break;
                }

                if (v78 >= v2)
                {
                  sub_25297DE88(v93);
                  v23 = 0;
                  v106 = v94;
                  v56 = v3[7];
                  v3[66] = v3[6];
                  v3[67] = v56;
                  v3[68] = v3[8];
                  v57 = v3[3];
                  v3[62] = v3[2];
                  v3[63] = v57;
                  v58 = v3[5];
                  v3[64] = v3[4];
                  v3[65] = v58;
                  v59 = v3[1];
                  v22 = v80;
                  v3[60] = *v3;
                  v3[61] = v59;
                  v36 = v90;
                  goto LABEL_38;
                }

                v23 = v13[v78];
                ++v22;
                if (v23)
                {
                  v22 = v78;
                  v36 = v90;
                  goto LABEL_50;
                }
              }

              __break(1u);
              goto LABEL_52;
            }

            v78 = v22;
LABEL_50:
            v81 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v82 = (*(v36 + 48) + 152 * (v81 | (v78 << 6)));
            v83 = v82[1];
            *v3 = *v82;
            v3[1] = v83;
            v84 = v82[5];
            v86 = v82[2];
            v85 = v82[3];
            v3[4] = v82[4];
            v3[5] = v84;
            v3[2] = v86;
            v3[3] = v85;
            v87 = v82[6];
            v88 = v82[7];
            v89 = v82[8];
            v94 = *(v82 + 72);
            v3[7] = v88;
            v3[8] = v89;
            v3[6] = v87;
            memmove(__dst, v82, 0x92uLL);
            GEOLocationCoordinate2DMake();
            sub_25297DE08(v93, v92);
LABEL_38:
            v60 = v3[67];
            v3[36] = v3[66];
            v3[37] = v60;
            v3[38] = v3[68];
            v62 = v3[62];
            v61 = v3[63];
            v63 = v3[61];
            v3[32] = v62;
            v3[33] = v61;
            v64 = v3[65];
            v65 = v3[63];
            v3[34] = v3[64];
            v3[35] = v64;
            v66 = v3[61];
            v67 = v3[60];
            v3[30] = v67;
            v3[31] = v66;
            v68 = v3[67];
            v3[46] = v3[66];
            v3[47] = v68;
            v3[48] = v3[68];
            v3[42] = v62;
            v3[43] = v65;
            v69 = v3[65];
            v3[44] = v3[64];
            v3[45] = v69;
            ++v4;
            v100 = v106;
            v102 = v106;
            v3[40] = v67;
            v3[41] = v63;
            if (sub_25297DE64(v101) == 1)
            {
              break;
            }
          }
        }

        *(v5 + 2) = v4;
        v41 = v3[67];
        v3[56] = v3[66];
        v3[57] = v41;
        v3[58] = v3[68];
        v104 = v106;
        v42 = v3[63];
        v3[52] = v3[62];
        v3[53] = v42;
        v43 = v3[65];
        v3[54] = v3[64];
        v3[55] = v43;
        v44 = v3[61];
        v3[50] = v3[60];
        v3[51] = v44;
      }

      while (sub_25297DE64(v103) != 1);
    }

    v37 = v3[67];
    v3[46] = v3[66];
    v3[47] = v37;
    v3[48] = v3[68];
    v102 = v106;
    v38 = v3[63];
    v3[42] = v3[62];
    v3[43] = v38;
    v39 = v3[65];
    v3[44] = v3[64];
    v3[45] = v39;
    v40 = v3[61];
    v3[40] = v3[60];
    v3[41] = v40;
    sub_25293847C(v101, &qword_27F5408A8, &unk_252E3DF10);
    v17 = v36;
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v2 + 64) >> 6;
  if (v20 <= (v16 + 1))
  {
    v21 = (v16 + 1);
  }

  else
  {
    v21 = (v2 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
LABEL_52:
      sub_25297DE88(__dst);
      v23 = 0;
      goto LABEL_28;
    }

    v18 = v13[v19];
    ++v16;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25297C3C8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25297C538(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_252E378C4();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_252E378C4();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t HomeEntityResponse.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeEntity.Builder.init()();
  v3 = (*(*v2 + 448))(v1);

  v4 = MEMORY[0x277D84F90];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t HomeEntityResponse.Builder.init()()
{
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeEntity.Builder.init()();
  v3 = (*(*v2 + 448))(v1);

  v4 = MEMORY[0x277D84F90];
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t HomeEntityResponse.Builder.__allocating_init(from:withOutcome:withValue:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  HomeEntityResponse.Builder.init(from:withOutcome:withValue:)(a1, a2, a3);
  return v6;
}

uint64_t HomeEntityResponse.Builder.init(from:withOutcome:withValue:)(void *a1, uint64_t a2, id a3)
{
  v4 = v3;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v8.n128_f64[0] = HomeEntity.Builder.init()();
  v10 = (*(*v9 + 448))(v8);

  *(v3 + 24) = MEMORY[0x277D84F90];
  v11 = (v3 + 24);
  *(v4 + 16) = v10;
  if (a1)
  {
    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      if (a3)
      {
        v14 = a3;
        v15 = [v13 taskType];
        v16 = [v13 attribute];
        v17 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        a3 = v14;
        v18 = sub_252E36F04();
        v19 = [v17 initWithIdentifier:0 displayString:v18];

        v20 = v19;
        [v20 setTaskType_];
        [v20 setAttribute_];
        [v20 setValue_];

        v21 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v22 = v20;
        v23 = sub_252E36F04();
        v24 = [v21 initWithIdentifier:0 displayString:v23];

        v25 = v24;
        [v25 setTaskOutcome_];
        [v25 setUserTask_];
      }

      else
      {
        v26 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v27 = v13;
        v28 = sub_252E36F04();
        v29 = [v26 initWithIdentifier:0 displayString:v28];

        v25 = v29;
        [v25 setTaskOutcome_];
        [v25 setUserTask_];

        v22 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_252E3C130;
      *(v30 + 32) = v25;

      swift_beginAccess();
      *v11 = v30;
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

uint64_t HomeEntityResponse.Builder.__allocating_init(from:withOutcome:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HomeEntityResponse.Builder.init(from:withOutcome:)(a1, a2);
  return v4;
}

uint64_t HomeEntityResponse.Builder.init(from:withOutcome:)(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v6.n128_f64[0] = HomeEntity.Builder.init()();
  v8 = (*(*v7 + 448))(v6);

  *(v2 + 24) = MEMORY[0x277D84F90];
  v9 = (v2 + 24);
  *(v3 + 16) = v8;
  if (a1)
  {
    v10 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v11 = a1;
    v12 = sub_252E36F04();
    v13 = [v10 initWithIdentifier:0 displayString:v12];

    v14 = v13;
    [v14 setTaskOutcome_];
    [v14 setUserTask_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C130;
    *(v15 + 32) = v14;

    swift_beginAccess();
    *v9 = v15;
  }

  return v3;
}

uint64_t sub_25297CD10(unint64_t a1, uint64_t (*a2)(void))
{
  v13 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    [v7 copyWithZone_];
    sub_252E377F4();
    swift_unknownObjectRelease();

    a2(0);
    ++v6;
    if (swift_dynamicCast() && v12)
    {
      MEMORY[0x2530AD700]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v11 = v13;
      v6 = v9;
    }
  }

  return v11;
}

uint64_t sub_25297CECC(unint64_t a1)
{
  v11 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    [v5 copyWithZone_];
    sub_252E377F4();
    swift_unknownObjectRelease();

    sub_25293F638(0, &qword_27F540898, 0x277CD3CF8);
    ++v4;
    if (swift_dynamicCast() && v10)
    {
      MEMORY[0x2530AD700]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v9 = v11;
      v4 = v7;
    }
  }

  return v9;
}

uint64_t sub_25297D07C(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = a1;
    v3 = a1;
  }
}

uint64_t sub_25297D0C0(uint64_t result)
{
  v2 = v1;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v5 = *(result + 16);
  v6 = result + 32;
  while (1)
  {
    if (v5 == v3)
    {
      swift_beginAccess();
      *(v2 + 24) = v4;
    }

    if (v3 >= v5)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_11;
    }

    v8 = *(v6 + 8 * v3++);
    if (v8)
    {
      v9 = v8;
      MEMORY[0x2530AD700]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v4 = v10;
      v3 = v7;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25297D1D0(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297C538(v2, sub_252D58128, sub_252E055F4);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v8;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_25297D310()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v3 = v1;

  v4 = sub_252E36F04();
  v5 = [v2 initWithIdentifier:0 displayString:v4];

  v6 = v5;
  [v6 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v7 = sub_252E37254();

  [v6 setTaskResponses_];

  return v6;
}

uint64_t sub_25297D404()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 24);
  type metadata accessor for HomeEntityResponse.Builder();
  v3 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v5 = *(*v4 + 448);
  v6 = v1;

  v8 = v5(v7);

  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 16) = v6;
  v9 = v6;

  v10 = sub_25297CD10(v2, type metadata accessor for HomeUserTaskResponse);

  swift_beginAccess();
  *(v3 + 24) = v10;

  return v3;
}

uint64_t HomeEntityResponse.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_25297D6E8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v3 = [v0 entity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 entityIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_252E36F34();
      v9 = v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_252E3C130;
      type metadata accessor for HomeFilter.Builder();
      swift_allocObject();
      v10 = HomeFilter.Builder.init()();
      v12 = v11;
      v13 = [v4 homeEntityName];
      if (v13)
      {
        v14 = v13;
        v15 = sub_252E36F34();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = (*(*v12 + 576))(v15, v17);

      v19 = (*(*v18 + 592))([v4 type]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_252E3C290;
      *(v20 + 32) = v7;
      *(v20 + 40) = v9;
      v21 = (*(*v19 + 568))();

      v22 = [v4 room];
      if (v22)
      {
        v23 = v22;
        v24 = sub_252E36F34();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = (*(*v21 + 680))(v24, v26);

      v28 = [v4 home];
      if (v28)
      {
        v29 = v28;
        v30 = sub_252E36F34();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = (*(*v27 + 632))(v30, v32);

      v35 = (*(*v33 + 760))(v34);

      *(v2 + 32) = v35;
    }
  }

  v36 = type metadata accessor for HomeStore(0);
  v37 = static HomeStore.shared.getter(v36);
  v38 = HomeStore.services(matching:supporting:)(v2, 0);
  v40 = v39;

  if (v40)
  {
    goto LABEL_36;
  }

  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_36:
    sub_252929F10(v38, v40 & 1);
    v58 = MEMORY[0x277D84F90];

    sub_252CC6468(v58);
    return;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_36;
  }

LABEL_17:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x2530ADF00](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v41 = *(v38 + 32);
  }

  sub_252929F10(v38, 0);
  v42 = [v1 taskResponses];
  if (!v42)
  {
    sub_252CC6468(MEMORY[0x277D84F90]);

    return;
  }

  v43 = v42;
  type metadata accessor for HomeUserTaskResponse();
  v1 = sub_252E37264();

  v61 = v41;
  if (v1 >> 62)
  {
LABEL_41:
    v44 = sub_252E378C4();
    if (v44)
    {
      goto LABEL_23;
    }

LABEL_42:
    v46 = MEMORY[0x277D84F90];
LABEL_43:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540888, &qword_252E3DEF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = v61;
    v60 = inited + 32;
    *(inited + 40) = v46;
    sub_252CC6468(inited);
    swift_setDeallocating();
    sub_25293847C(v60, &qword_27F540890, &qword_252E3DF00);
    return;
  }

  v44 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_42;
  }

LABEL_23:
  if (v44 >= 1)
  {
    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x2530ADF00](v45, v1);
      }

      else
      {
        v47 = *(v1 + 8 * v45 + 32);
      }

      v48 = v47;
      v49 = [v47 userTask];
      if (v49)
      {
        v50 = v49;
        v51 = [v49 attribute];
        v52 = [v50 value];
        v53 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v54 = sub_252E36F04();
        v55 = [v53 initWithIdentifier:0 displayString:v54];

        v56 = v55;
        [v56 setTaskType_];
        [v56 setAttribute_];
        [v56 setValue_];

        v57 = v56;
        MEMORY[0x2530AD700]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v46 = v62;
      }

      else
      {
      }

      ++v45;
    }

    while (v44 != v45);
    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_25297DE64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_25297DE88(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_252E3DEC0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

unint64_t sub_25297DEB4(char a1)
{
  result = 0x74616E7265746C61;
  switch(a1)
  {
    case 1:
    case 55:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x7274744165746164;
      break;
    case 4:
      result = 0x656D695465746164;
      break;
    case 5:
      result = 0x61746C6564;
      break;
    case 6:
      result = 0x61755161746C6564;
      break;
    case 7:
      result = 0x6C6F5261746C6564;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x746E657665;
      break;
    case 10:
      result = 0x73656D6F68;
      break;
    case 11:
      result = 1936029032;
      break;
    case 12:
      result = 0x74696D696CLL;
      break;
    case 13:
      result = 1668508013;
      break;
    case 14:
      result = 0x736E756F6ELL;
      break;
    case 15:
      result = 0x6E69486563616C70;
      break;
    case 16:
      result = 0x73746553676174;
      break;
    case 17:
      result = 0x736D6F6F72;
      break;
    case 18:
      result = 0x7241746567726174;
      break;
    case 19:
      result = 0x614D746567726174;
      break;
    case 20:
      result = 0x73656E656373;
      break;
    case 21:
      result = 0x7365636976726573;
      break;
    case 22:
    case 25:
      result = 0x726F737365636361;
      break;
    case 23:
      result = 0x4E65636976726573;
      break;
    case 24:
      result = 0x4765636976726573;
      break;
    case 26:
      result = 0x69746E456D6F7266;
      break;
    case 27:
      result = 0x697469746E456F74;
      break;
    case 28:
      result = 0x736574617473;
      break;
    case 29:
      result = 0x7374696E75;
      break;
    case 30:
      result = 1651664246;
      break;
    case 31:
      result = 0x6E6F697473657571;
      break;
    case 32:
      result = 0x73657361726870;
      break;
    case 33:
      result = 0x73656E6F7ALL;
      break;
    case 34:
      result = 0x72656767697274;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 36:
      result = 0x56636972656D756ELL;
      break;
    case 37:
      result = 0x6C616E696769726FLL;
      break;
    case 38:
      result = 0x636E657265666572;
      break;
    case 39:
      result = 0xD00000000000001ALL;
      break;
    case 40:
      result = 0xD000000000000018;
      break;
    case 41:
      result = 0x7364726F576C6C61;
      break;
    case 42:
      result = 0x664F7265626D756ELL;
      break;
    case 43:
      result = 0xD000000000000010;
      break;
    case 44:
    case 46:
      result = 0xD000000000000012;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
      result = 0x6D614E70756F7267;
      break;
    case 48:
      result = 0x69746E4572657375;
      break;
    case 49:
      result = 0x7367616C66;
      break;
    case 50:
      result = 0xD000000000000017;
      break;
    case 51:
      result = 0x6261636F56736168;
      break;
    case 52:
      result = 0x7265666552736168;
      break;
    case 53:
      result = 0x6974746553736168;
      break;
    case 54:
      result = 0x526D796E6F6E7973;
      break;
    case 56:
      result = 0x6E49646568636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25297E4F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_25297DEB4(*a1);
  v5 = v4;
  if (v3 == sub_25297DEB4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_25297E57C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25297DEB4(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25297E5E0(uint64_t a1)
{
  sub_25297DEB4(*v1);
  sub_252E37044();
}

uint64_t sub_25297E634(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_25297DEB4(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_25297E694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252985A50(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25297E6C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25297DEB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25297E6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252985A50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25297E72C(uint64_t a1)
{
  v2 = sub_252981E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25297E768(uint64_t a1)
{
  v2 = sub_252981E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5408B0, &unk_252E3DF20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v74 - v7;
  v249 = 1;
  v240 = 1;
  v238 = 1;
  v9 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_252981E48();
  sub_252E37F74();
  if (v2)
  {
    v250 = v2;
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v141 = 0;
    v140 = 3;
    v139 = 4;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    v136 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v138 = MEMORY[0x277D84F90];
    v11 = 4;
    v12 = MEMORY[0x277D84F90];
    v13 = 4;
    v14 = 2;
    v15 = 3;
    v16 = 3;
    v17 = MEMORY[0x277D84F90];
    v92 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v90 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
    v88 = MEMORY[0x277D84F90];
    v89 = MEMORY[0x277D84F90];
    v86 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    v84 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402E0, &qword_252E3C118);
  LOBYTE(v143[0]) = 0;
  sub_252981E9C();
  sub_252E37C64();
  v82 = v157;
  LOBYTE(v143[0]) = 1;
  sub_252981F74();
  sub_252E37BE4();
  v19 = v157;
  LOBYTE(v143[0]) = 2;
  sub_252981FC8();
  sub_252E37BE4();
  v20 = a2;
  v81 = v19;
  v21 = v157;
  LOBYTE(v143[0]) = 3;
  sub_25298201C();
  sub_252E37BE4();
  v249 = v157;
  sub_252E35DD4();
  LOBYTE(v143[0]) = 4;
  sub_2529857B0(&qword_27F5408E8, MEMORY[0x277D56498], MEMORY[0x277D564B8]);
  sub_252E37BE4();
  v22 = v157;
  LOBYTE(v143[0]) = 5;
  sub_252982070();
  sub_252E37BE4();
  v141 = v22;
  v23 = v5;
  v24 = v157;
  LOBYTE(v143[0]) = 6;
  sub_2529820C4();
  sub_252E37BE4();
  LODWORD(v22) = v157;
  LOBYTE(v143[0]) = 7;
  sub_252982118();
  sub_252E37BE4();
  v140 = v22;
  v79 = v24;
  v80 = v21;
  v78 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403E0, &qword_252E3C5A0);
  LOBYTE(v143[0]) = 8;
  sub_25298216C();
  sub_252E37C64();
  v250 = 0;
  v25 = v6;
  v12 = v157;
  LOBYTE(v143[0]) = 9;
  sub_252982244();
  v26 = v23;
  v27 = v250;
  sub_252E37BE4();
  v250 = v27;
  if (v27)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v139 = 4;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    v136 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v138 = MEMORY[0x277D84F90];
    v11 = 4;
    v92 = MEMORY[0x277D84F90];
    v93 = MEMORY[0x277D84F90];
    v90 = MEMORY[0x277D84F90];
    v91 = MEMORY[0x277D84F90];
    v88 = MEMORY[0x277D84F90];
    v89 = MEMORY[0x277D84F90];
    v86 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
    v84 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    v17 = v82;
    v15 = v80;
    v16 = v81;
    v13 = v78;
    v14 = v79;
    goto LABEL_4;
  }

  v77 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  LOBYTE(v143[0]) = 10;
  sub_252984B28(&qword_27F540920, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v28 = v250;
  sub_252E37C64();
  v250 = v28;
  if (v28)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v139 = 4;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    LODWORD(v105) = 22;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    v136 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    v138 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v138 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540928, &unk_252E3DF30);
  LOBYTE(v143[0]) = 11;
  sub_252982298();
  v29 = v250;
  sub_252E37C64();
  v250 = v29;
  if (v29)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v139 = 4;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    v136 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v137 = v157;
  LOBYTE(v143[0]) = 12;
  sub_252982370();
  v30 = v250;
  sub_252E37BE4();
  v250 = v30;
  if (v30)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v139 = 4;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    v136 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v139 = v157;
  LOBYTE(v143[0]) = 13;
  sub_252E37C64();
  v250 = 0;
  v136 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540948, &qword_252E47730);
  LOBYTE(v143[0]) = 14;
  sub_2529823C4();
  v31 = v250;
  sub_252E37C64();
  v250 = v31;
  if (v31)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    v133 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v133 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540960, &qword_252E3DF40);
  LOBYTE(v143[0]) = 15;
  sub_25298249C();
  v32 = v250;
  sub_252E37C64();
  v250 = v32;
  if (v32)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v126 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v126 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540978, &qword_252E3DF48);
  LOBYTE(v143[0]) = 16;
  sub_252982574();
  v33 = v250;
  sub_252E37C64();
  v250 = v33;
  if (v33)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    v116 = MEMORY[0x277D84F90];
    v119 = MEMORY[0x277D84F90];
    v121 = MEMORY[0x277D84F90];
    v122 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v124 = v157;
  LOBYTE(v143[0]) = 17;
  sub_252E37C64();
  v250 = 0;
  v122 = v157;
  LOBYTE(v143[0]) = 18;
  sub_252E37C64();
  v250 = 0;
  v121 = v157;
  LOBYTE(v143[0]) = 19;
  sub_252E37C64();
  v250 = 0;
  v119 = v157;
  LOBYTE(v143[0]) = 20;
  sub_252E37C64();
  v250 = 0;
  v116 = v157;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540998, &qword_252E3DF58);
  LOBYTE(v143[0]) = 21;
  v134 = sub_252982688();
  v135 = v34;
  v35 = v250;
  sub_252E37C64();
  v250 = v35;
  if (v35)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    v108 = MEMORY[0x277D84F90];
    v109 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    v112 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v115 = v157;
  LOBYTE(v143[0]) = 22;
  sub_252E37C64();
  v250 = 0;
  v114 = v157;
  LOBYTE(v143[0]) = 23;
  sub_252E37C64();
  v250 = 0;
  v112 = v157;
  LOBYTE(v143[0]) = 24;
  sub_252E37C64();
  v250 = 0;
  v111 = v157;
  LOBYTE(v143[0]) = 25;
  sub_252E37C64();
  v250 = 0;
  v110 = v157;
  LOBYTE(v143[0]) = 26;
  sub_252E37C64();
  v250 = 0;
  v109 = v157;
  LOBYTE(v143[0]) = 27;
  sub_252E37C64();
  v250 = 0;
  v108 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409B0, &unk_252E3DF60);
  LOBYTE(v143[0]) = 28;
  sub_252982760();
  v36 = v250;
  sub_252E37C64();
  v250 = v36;
  if (v36)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    v106 = MEMORY[0x277D84F90];
    v107 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v107 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409C8, &qword_252E4B3C0);
  LOBYTE(v143[0]) = 29;
  sub_252982838();
  v37 = v250;
  sub_252E37C64();
  v250 = v37;
  if (v37)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
    LODWORD(v113) = 2;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    LODWORD(v105) = 22;
    v106 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v106 = v157;
  LOBYTE(v143[0]) = 30;
  sub_252982910();
  v38 = v250;
  sub_252E37BE4();
  v250 = v38;
  if (v38)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v135) = 9;
LABEL_33:
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    v104 = 2;
    goto LABEL_15;
  }

  LODWORD(v135) = v157;
  LOBYTE(v143[0]) = 31;
  sub_252982964();
  v39 = v250;
  sub_252E37BE4();
  v250 = v39;
  if (v39)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    goto LABEL_33;
  }

  v104 = v157;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409F0, &qword_252E3DF70);
  LOBYTE(v143[0]) = 32;
  sub_2529829B8();
  v40 = v250;
  sub_252E37C64();
  v250 = v40;
  if (v40)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    v103 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v103 = v157;
  LOBYTE(v143[0]) = 33;
  sub_252E37C64();
  v250 = 0;
  v102 = v157;
  LOBYTE(v143[0]) = 34;
  sub_252982A90();
  v41 = v250;
  sub_252E37BE4();
  v250 = v41;
  if (v41)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v131 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
LABEL_39:
    LODWORD(v113) = 2;
    LODWORD(v105) = 22;
    v10 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v95 = MEMORY[0x277D84F90];
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v240 = v157;
  LOBYTE(v157) = 35;
  v128 = sub_252E37BA4();
  v131 = v42;
  v250 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A10, &qword_252E3DF78);
  LOBYTE(v143[0]) = 36;
  sub_252982AE4(&qword_27F540A18, &qword_27F540A20, "U\v?/po>/", MEMORY[0x277D83978]);
  v43 = v250;
  sub_252E37C64();
  v250 = v43;
  if (v43)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    goto LABEL_39;
  }

  v101 = v157;
  LOBYTE(v157) = 37;
  v127 = sub_252E37BA4();
  v130 = v44;
  v250 = 0;
  LOBYTE(v143[0]) = 38;
  sub_252982B6C();
  v45 = v250;
  sub_252E37BE4();
  v250 = v45;
  if (v45)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v132 = 0;
    LODWORD(v134) = 0;
    v129 = 0;
    goto LABEL_88;
  }

  v129 = v157;
  LODWORD(v134) = v158;
  v238 = BYTE1(v158);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
  LOBYTE(v143[0]) = 39;
  v47 = sub_252982BC0();
  v105 = v46;
  v100 = v47;
  v48 = v250;
  sub_252E37BE4();
  v250 = v48;
  if (v48)
  {
    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
    v132 = 0;
    goto LABEL_88;
  }

  v123 = v157;
  if (!v157)
  {
    v132 = 0;
LABEL_64:
    LOBYTE(v143[0]) = 40;
    v52 = v250;
    sub_252E37BE4();
    v250 = v52;
    if (!v52)
    {
      goto LABEL_68;
    }

    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    v125 = 0;
LABEL_88:
    LODWORD(v113) = 2;
    goto LABEL_94;
  }

  v157 = MEMORY[0x277D84F90];
  v120 = v123 & 0xFFFFFFFFFFFFFF8;
  if (v123 >> 62)
  {
    v118 = sub_252E378C4();
  }

  else
  {
    v118 = *(v120 + 16);
  }

  v117 = 0;
  v99 = v123 & 0xC000000000000001;
  v49 = MEMORY[0x277D84F90];
LABEL_52:
  v132 = v49;
  v125 = v117;
  while (1)
  {
    if (v118 == v125)
    {

      goto LABEL_64;
    }

    if (!v99)
    {
      break;
    }

    MEMORY[0x2530ADF00](v125, v123);
LABEL_58:
    v117 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      goto LABEL_67;
    }

    v113 = sub_252A79090();

    ++v125;
    if (v113)
    {
      MEMORY[0x2530AD700](v50);
      v51 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v132 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v132 >= v51 >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v49 = v157;
      goto LABEL_52;
    }
  }

  if (v125 < *(v120 + 16))
  {

    goto LABEL_58;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  v120 = v157;
  if (!v157)
  {
    v125 = 0;
LABEL_86:
    LOBYTE(v157) = 41;
    v56 = v250;
    LODWORD(v113) = sub_252E37BB4();
    v250 = v56;
    if (!v56)
    {
      goto LABEL_91;
    }

    (*(v25 + 8))(v8, v23);
    LODWORD(v120) = 0;
    LODWORD(v118) = 0;
    LODWORD(v117) = 0;
    v123 = 0;
    goto LABEL_88;
  }

  v157 = MEMORY[0x277D84F90];
  v118 = v120 & 0xFFFFFFFFFFFFFF8;
  if (v120 >> 62)
  {
    v117 = sub_252E378C4();
  }

  else
  {
    v117 = *(v118 + 16);
  }

  v113 = 0;
  v100 = v120 & 0xC000000000000001;
  v53 = MEMORY[0x277D84F90];
  while (2)
  {
    v125 = v53;
    v123 = v113;
LABEL_75:
    if (v117 == v123)
    {

      goto LABEL_86;
    }

    if (v100)
    {
      MEMORY[0x2530ADF00](v123, v120);
LABEL_80:
      v113 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_90;
      }

      v105 = sub_252A79090();

      ++v123;
      if (v105)
      {
        MEMORY[0x2530AD700](v54);
        v55 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v125 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v125 >= v55 >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v53 = v157;
        continue;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v123 < *(v118 + 16))
  {

    goto LABEL_80;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  LOBYTE(v157) = 42;
  v57 = v250;
  v123 = sub_252E37C44();
  v250 = v57;
  if (!v57)
  {
    LOBYTE(v143[0]) = 43;
    sub_252E37C64();
    v250 = 0;
    v100 = v157;
    LOBYTE(v143[0]) = 43;
    sub_252E37C64();
    v250 = 0;
    v98 = v157;
    LOBYTE(v143[0]) = 45;
    sub_252E37C64();
    v250 = 0;
    v96 = v157;
    LOBYTE(v143[0]) = 46;
    sub_252E37C64();
    v250 = 0;
    v95 = v157;
    LOBYTE(v143[0]) = 47;
    sub_252E37C64();
    v250 = 0;
    v97 = v157;
    LOBYTE(v143[0]) = 48;
    sub_252E37C64();
    v250 = 0;
    v99 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A50, &qword_252E3DF90);
    LOBYTE(v143[0]) = 49;
    sub_252982C74();
    v58 = v250;
    sub_252E37C64();
    v250 = v58;
    if (v58)
    {
      (*(v25 + 8))(v8, v23);
      LODWORD(v120) = 0;
      LODWORD(v118) = 0;
      LODWORD(v117) = 0;
      LODWORD(v105) = 22;
      v10 = MEMORY[0x277D84F90];
      v94 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

    v94 = v157;
    LOBYTE(v143[0]) = 50;
    sub_252982D4C();
    v59 = v250;
    sub_252E37BE4();
    v250 = v59;
    if (v59)
    {
      (*(v25 + 8))(v8, v23);
      LODWORD(v120) = 0;
      LODWORD(v118) = 0;
      LODWORD(v117) = 0;
      v10 = MEMORY[0x277D84F90];
      LODWORD(v105) = 22;
      goto LABEL_15;
    }

    LODWORD(v105) = v157;
    LOBYTE(v157) = 51;
    v60 = sub_252E37C14();
    v250 = 0;
    LODWORD(v117) = v60 & 1;
    LOBYTE(v157) = 52;
    v61 = sub_252E37C14();
    v250 = 0;
    LODWORD(v118) = v61 & 1;
    LOBYTE(v157) = 53;
    v62 = sub_252E37C14();
    v250 = 0;
    LODWORD(v120) = v62 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A70, &qword_252E3DF98);
    LOBYTE(v143[0]) = 54;
    sub_252982DA0();
    v63 = v250;
    sub_252E37C64();
    v250 = v63;
    if (v63)
    {
      (*(v25 + 8))(v8, v23);
      v10 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

    v10 = v157;
    v145 = 55;
    sub_252982E54();
    v64 = v250;
    sub_252E37C64();
    v250 = v64;
    if (v64)
    {
      (*(v25 + 8))(v8, v26);
      v91 = MEMORY[0x277D84F90];
      v92 = MEMORY[0x277D84F90];
      v89 = MEMORY[0x277D84F90];
      v90 = MEMORY[0x277D84F90];
      v87 = MEMORY[0x277D84F90];
      v88 = MEMORY[0x277D84F90];
      v85 = MEMORY[0x277D84F90];
      v86 = MEMORY[0x277D84F90];
      v83 = MEMORY[0x277D84F90];
      v84 = MEMORY[0x277D84F90];
      v93 = MEMORY[0x277D84F90];
      goto LABEL_16;
    }

    v92 = v147;
    v93 = v146;
    v90 = v149;
    v91 = v148;
    v88 = v151;
    v89 = v150;
    v86 = v153;
    v87 = v152;
    v84 = v155;
    v85 = v154;
    v83 = v156;
    v144[0] = MEMORY[0x277D84F90];
    v144[1] = MEMORY[0x277D84F90];
    v144[2] = MEMORY[0x277D84F90];
    v144[3] = MEMORY[0x277D84F90];
    v144[4] = MEMORY[0x277D84F90];
    v144[5] = MEMORY[0x277D84F90];
    v144[6] = MEMORY[0x277D84F90];
    v144[7] = MEMORY[0x277D84F90];
    v144[8] = MEMORY[0x277D84F90];
    v144[9] = MEMORY[0x277D84F90];
    v144[10] = MEMORY[0x277D84F90];
    sub_252937BEC(v144);
    type metadata accessor for ControlHomeIntentCodable();
    LOBYTE(v143[0]) = 56;
    sub_2529857B0(&qword_27F540A90, type metadata accessor for ControlHomeIntentCodable, protocol conformance descriptor for ControlHomeIntentCodable);
    v65 = v250;
    sub_252E37BE4();
    v250 = v65;
    if (!v65)
    {
      if (v157)
      {
        v66 = sub_252ADB274();

        (*(v25 + 8))(v8, v26);
        goto LABEL_118;
      }

      LOBYTE(v143[0]) = 56;
      sub_252982EA8();
      v67 = v250;
      sub_252E37BE4();
      v250 = v67;
      if (!v67)
      {
        v76 = v158;
        if (v158 >> 60 == 15)
        {
          (*(v25 + 8))(v8, v26);
        }

        else
        {
          v68 = v157;
          sub_25293F638(0, &qword_27F540AA0, 0x277CCAAC8);
          v75 = v68;
          v69 = v250;
          sub_252E374F4();
          v250 = v69;
          if (v69)
          {
            (*(v25 + 8))(v8, v26);
            sub_252982EFC(v75, v76);
            goto LABEL_16;
          }

          (*(v25 + 8))(v8, v26);
          sub_252982EFC(v75, v76);
          if (v160)
          {
            sub_25293F638(0, &qword_27F540AA8, 0x277CD3D30);
            if (swift_dynamicCast())
            {
              v66 = v143[0];
            }

            else
            {
              v66 = 0;
            }

            goto LABEL_118;
          }

          sub_252982F10(&v157);
        }

        v66 = 0;
LABEL_118:
        v143[0] = v82;
        LOBYTE(v143[1]) = v81;
        BYTE1(v143[1]) = v80;
        LODWORD(v76) = v249;
        BYTE2(v143[1]) = v249;
        *(&v143[1] + 3) = v247;
        HIBYTE(v143[1]) = v248;
        v143[2] = v141;
        LOBYTE(v143[3]) = v79;
        BYTE1(v143[3]) = v140;
        BYTE2(v143[3]) = v78;
        *(&v143[3] + 3) = v245;
        HIBYTE(v143[3]) = v246;
        v74 = v12;
        v143[4] = v12;
        LOBYTE(v143[5]) = v77;
        *(&v143[5] + 1) = *v244;
        HIDWORD(v143[5]) = *&v244[3];
        v143[6] = v138;
        v143[7] = v137;
        LOBYTE(v143[8]) = v139;
        *(&v143[8] + 1) = *v243;
        HIDWORD(v143[8]) = *&v243[3];
        v143[9] = v136;
        v143[10] = v133;
        v143[11] = v126;
        v143[12] = v124;
        v143[13] = v122;
        v143[14] = v121;
        v143[15] = v119;
        v143[16] = v116;
        v143[17] = v115;
        v143[18] = v114;
        v143[19] = v112;
        v143[20] = v111;
        v143[21] = v110;
        v143[22] = v109;
        v143[23] = v108;
        v143[24] = v107;
        v143[25] = v106;
        LOBYTE(v143[26]) = v135;
        BYTE1(v143[26]) = v104;
        *(&v143[26] + 2) = v241;
        HIWORD(v143[26]) = v242;
        v143[27] = v103;
        v143[28] = v102;
        *(&v143[29] + 1) = *v239;
        *(&v143[36] + 2) = v236;
        LODWORD(v75) = v240;
        LOBYTE(v143[29]) = v240;
        HIDWORD(v143[29]) = *&v239[3];
        v70 = v129;
        v143[30] = v128;
        v71 = v132;
        v143[31] = v131;
        v143[32] = v101;
        v143[33] = v127;
        v143[34] = v130;
        v143[35] = v129;
        LOBYTE(v143[36]) = v134;
        *(&v143[39] + 1) = *v235;
        v72 = v238;
        BYTE1(v143[36]) = v238;
        HIWORD(v143[36]) = v237;
        v143[37] = v132;
        v73 = v125;
        v143[38] = v125;
        LOBYTE(v143[39]) = v113;
        HIDWORD(v143[39]) = *&v235[3];
        v143[40] = v123;
        v143[41] = v100;
        v143[42] = v98;
        v143[43] = v96;
        v143[44] = v95;
        v143[45] = v97;
        v143[46] = v99;
        v143[47] = v94;
        LOBYTE(v143[48]) = v105;
        BYTE1(v143[48]) = v117;
        WORD1(v143[48]) = v118;
        WORD2(v143[48]) = v120;
        v143[49] = v10;
        v143[50] = v93;
        v143[51] = v92;
        v143[52] = v91;
        v143[53] = v90;
        v143[54] = v89;
        v143[55] = v88;
        v143[56] = v87;
        v143[57] = v86;
        v143[58] = v85;
        v143[59] = v84;
        v143[60] = v83;
        v143[61] = MEMORY[0x277D84FA0];
        v143[62] = v66;
        memcpy(v20, v143, 0x1F8uLL);
        sub_2529353AC(v143, &v157);
        __swift_destroy_boxed_opaque_existential_1(v142);
        v157 = v82;
        LOBYTE(v158) = v81;
        BYTE1(v158) = v80;
        BYTE2(v158) = v76;
        v159 = v141;
        LOBYTE(v160) = v79;
        BYTE1(v160) = v140;
        BYTE2(v160) = v78;
        v161 = v74;
        v162 = v77;
        v164 = v138;
        v165 = v137;
        v166 = v139;
        v168 = v136;
        v169 = v133;
        v170 = v126;
        v171 = v124;
        v172 = v122;
        v173 = v121;
        v174 = v119;
        v175 = v116;
        v176 = v115;
        v177 = v114;
        v178 = v112;
        v179 = v111;
        v180 = v110;
        v181 = v109;
        v182 = v108;
        v183 = v107;
        v184 = v106;
        v185 = v135;
        v186 = v104;
        v189 = v103;
        v190 = v102;
        v191 = v75;
        v193 = v128;
        v194 = v131;
        v195 = v101;
        v196 = v127;
        v197 = v130;
        v198 = v70;
        v199 = v134;
        v200 = v72;
        v203 = v71;
        v204 = v73;
        *(&v158 + 3) = v247;
        HIBYTE(v158) = v248;
        *(&v160 + 3) = v245;
        HIBYTE(v160) = v246;
        *&v163[3] = *&v244[3];
        *v163 = *v244;
        *v167 = *v243;
        *&v167[3] = *&v243[3];
        v187 = v241;
        v188 = v242;
        *v192 = *v239;
        *&v192[3] = *&v239[3];
        v201 = v236;
        v202 = v237;
        v205 = v113;
        *v206 = *v235;
        *&v206[3] = *&v235[3];
        v207 = v123;
        v208 = v100;
        v209 = v98;
        v210 = v96;
        v211 = v95;
        v212 = v97;
        v213 = v99;
        v214 = v94;
        v215 = v105;
        v216 = v117;
        v217 = v118;
        v218 = 0;
        v219 = v120;
        v220 = 0;
        v221 = v10;
        v222 = v93;
        v223 = v92;
        v224 = v91;
        v225 = v90;
        v226 = v89;
        v227 = v88;
        v228 = v87;
        v229 = v86;
        v230 = v85;
        v231 = v84;
        v232 = v83;
        v233 = MEMORY[0x277D84FA0];
        v234 = v66;
        return sub_252935408(&v157);
      }
    }

    (*(v25 + 8))(v8, v26);
    goto LABEL_16;
  }

  (*(v25 + 8))(v8, v23);
  LODWORD(v120) = 0;
  LODWORD(v118) = 0;
  LODWORD(v117) = 0;
  v123 = 0;
LABEL_94:
  LODWORD(v105) = 22;
  v10 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v98 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v96 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
LABEL_15:
  v92 = v10;
  v93 = v10;
  v90 = v10;
  v91 = v10;
  v88 = v10;
  v89 = v10;
  v86 = v10;
  v87 = v10;
  v84 = v10;
  v85 = v10;
  v83 = v10;
LABEL_16:
  v17 = v82;
  v15 = v80;
  v16 = v81;
  v13 = v78;
  v14 = v79;
  v11 = v77;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v142);
  v157 = v17;
  LOBYTE(v158) = v16;
  BYTE1(v158) = v15;
  v159 = v141;
  LOBYTE(v160) = v14;
  BYTE1(v160) = v140;
  BYTE2(v160) = v13;
  v161 = v12;
  v162 = v11;
  v164 = v138;
  v165 = v137;
  v166 = v139;
  v168 = v136;
  v169 = v133;
  v170 = v126;
  v171 = v124;
  v172 = v122;
  v173 = v121;
  v174 = v119;
  v175 = v116;
  v176 = v115;
  v177 = v114;
  v178 = v112;
  v179 = v111;
  v180 = v110;
  v181 = v109;
  v182 = v108;
  v183 = v107;
  v184 = v106;
  v185 = v135;
  v186 = v104;
  v189 = v103;
  v190 = v102;
  v193 = v128;
  v194 = v131;
  v195 = v101;
  v196 = v127;
  v197 = v130;
  v198 = v129;
  BYTE2(v158) = v249;
  *(&v158 + 3) = v247;
  HIBYTE(v158) = v248;
  *(&v160 + 3) = v245;
  HIBYTE(v160) = v246;
  *v163 = *v244;
  *&v163[3] = *&v244[3];
  *v167 = *v243;
  *&v167[3] = *&v243[3];
  v187 = v241;
  v188 = v242;
  v191 = v240;
  *v192 = *v239;
  *&v192[3] = *&v239[3];
  v199 = v134;
  v200 = v238;
  v201 = v236;
  v202 = v237;
  v203 = v132;
  v204 = v125;
  v205 = v113;
  *v206 = *v235;
  *&v206[3] = *&v235[3];
  v207 = v123;
  v208 = v100;
  v209 = v98;
  v210 = v96;
  v211 = v95;
  v212 = v97;
  v213 = v99;
  v214 = v94;
  v215 = v105;
  v216 = v117;
  v217 = v118;
  v218 = 0;
  v219 = v120;
  v220 = 0;
  v221 = v10;
  v222 = v93;
  v223 = v92;
  v224 = v91;
  v225 = v90;
  v226 = v89;
  v227 = v88;
  v228 = v87;
  v229 = v86;
  v230 = v85;
  v231 = v84;
  v232 = v83;
  v233 = MEMORY[0x277D84FA0];
  v234 = 0;
  return sub_252935408(&v157);
}

unint64_t sub_252981E48()
{
  result = qword_27F5408B8;
  if (!qword_27F5408B8)
  {
    result = swift_getWitnessTable(byte_252E3E110, &type metadata for HomeAutomationIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F5408B8);
  }

  return result;
}

unint64_t sub_252981E9C()
{
  result = qword_27F5408C0;
  if (!qword_27F5408C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5402E0, &qword_252E3C118);
    v4[0] = sub_252981F20();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F5408C0);
  }

  return result;
}

unint64_t sub_252981F20()
{
  result = qword_27F5408C8;
  if (!qword_27F5408C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent, &type metadata for HomeAutomationIntent, v0, v1);
    atomic_store(result, &qword_27F5408C8);
  }

  return result;
}

unint64_t sub_252981F74()
{
  result = qword_27F5408D0;
  if (!qword_27F5408D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5408D0);
  }

  return result;
}

unint64_t sub_252981FC8()
{
  result = qword_27F5408D8;
  if (!qword_27F5408D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F5408D8);
  }

  return result;
}

unint64_t sub_25298201C()
{
  result = qword_27F5408E0;
  if (!qword_27F5408E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5408E0);
  }

  return result;
}

unint64_t sub_252982070()
{
  result = qword_27F5408F0;
  if (!qword_27F5408F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F5408F0);
  }

  return result;
}

unint64_t sub_2529820C4()
{
  result = qword_27F5408F8;
  if (!qword_27F5408F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaQuantifierSemantic, &type metadata for DeltaQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F5408F8);
  }

  return result;
}

unint64_t sub_252982118()
{
  result = qword_27F540900;
  if (!qword_27F540900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F540900);
  }

  return result;
}

unint64_t sub_25298216C()
{
  result = qword_27F540908;
  if (!qword_27F540908)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5403E0, &qword_252E3C5A0);
    v4[0] = sub_2529821F0();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540908);
  }

  return result;
}

unint64_t sub_2529821F0()
{
  result = qword_27F540910;
  if (!qword_27F540910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F540910);
  }

  return result;
}

unint64_t sub_252982244()
{
  result = qword_27F540918;
  if (!qword_27F540918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540918);
  }

  return result;
}

unint64_t sub_252982298()
{
  result = qword_27F540930;
  if (!qword_27F540930)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540928, &unk_252E3DF30);
    v4[0] = sub_25298231C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540930);
  }

  return result;
}

unint64_t sub_25298231C()
{
  result = qword_27F540938;
  if (!qword_27F540938)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HueSemantic, &type metadata for HueSemantic, v0, v1);
    atomic_store(result, &qword_27F540938);
  }

  return result;
}

unint64_t sub_252982370()
{
  result = qword_27F540940;
  if (!qword_27F540940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F540940);
  }

  return result;
}

unint64_t sub_2529823C4()
{
  result = qword_27F540950;
  if (!qword_27F540950)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540948, &qword_252E47730);
    v4[0] = sub_252982448();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540950);
  }

  return result;
}

unint64_t sub_252982448()
{
  result = qword_27F540958;
  if (!qword_27F540958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F540958);
  }

  return result;
}

unint64_t sub_25298249C()
{
  result = qword_27F540968;
  if (!qword_27F540968)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540960, &qword_252E3DF40);
    v4[0] = sub_252982520();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540968);
  }

  return result;
}

unint64_t sub_252982520()
{
  result = qword_27F540970;
  if (!qword_27F540970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F540970);
  }

  return result;
}

unint64_t sub_252982574()
{
  result = qword_27F540980;
  if (!qword_27F540980)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540978, &qword_252E3DF48);
    v4[0] = sub_25298261C(&qword_27F540988, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540980);
  }

  return result;
}

uint64_t sub_25298261C(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540990, &qword_252E3DF50);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252982688()
{
  result = qword_27F5409A0;
  if (!qword_27F5409A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540998, &qword_252E3DF58);
    v4[0] = sub_25298270C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F5409A0);
  }

  return result;
}

unint64_t sub_25298270C()
{
  result = qword_27F5409A8;
  if (!qword_27F5409A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5409A8);
  }

  return result;
}

unint64_t sub_252982760()
{
  result = qword_27F5409B8;
  if (!qword_27F5409B8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409B0, &unk_252E3DF60);
    v4[0] = sub_2529827E4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F5409B8);
  }

  return result;
}

unint64_t sub_2529827E4()
{
  result = qword_27F5409C0;
  if (!qword_27F5409C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F5409C0);
  }

  return result;
}

unint64_t sub_252982838()
{
  result = qword_27F5409D0;
  if (!qword_27F5409D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409C8, &qword_252E4B3C0);
    v4[0] = sub_2529828BC();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F5409D0);
  }

  return result;
}

unint64_t sub_2529828BC()
{
  result = qword_27F5409D8;
  if (!qword_27F5409D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F5409D8);
  }

  return result;
}

unint64_t sub_252982910()
{
  result = qword_27F5409E0;
  if (!qword_27F5409E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.Verb, &type metadata for HomeAutomationIntent.Verb, v0, v1);
    atomic_store(result, &qword_27F5409E0);
  }

  return result;
}

unint64_t sub_252982964()
{
  result = qword_27F5409E8;
  if (!qword_27F5409E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F5409E8);
  }

  return result;
}

unint64_t sub_2529829B8()
{
  result = qword_27F5409F8;
  if (!qword_27F5409F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409F0, &qword_252E3DF70);
    v4[0] = sub_252982A3C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F5409F8);
  }

  return result;
}

unint64_t sub_252982A3C()
{
  result = qword_27F540A00;
  if (!qword_27F540A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F540A00);
  }

  return result;
}

unint64_t sub_252982A90()
{
  result = qword_27F540A08;
  if (!qword_27F540A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F540A08);
  }

  return result;
}

uint64_t sub_252982AE4(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A10, &qword_252E3DF78);
    v10 = sub_252985374(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252982B6C()
{
  result = qword_27F540A30;
  if (!qword_27F540A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.ReferenceType, &type metadata for HomeAutomationIntent.ReferenceType, v0, v1);
    atomic_store(result, &qword_27F540A30);
  }

  return result;
}

unint64_t sub_252982BC0()
{
  result = qword_27F540A40;
  if (!qword_27F540A40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A38, &qword_252E3DF88);
    v4[0] = sub_2529857B0(&qword_27F540A48, type metadata accessor for CodableHomeFilter, aC_1);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540A40);
  }

  return result;
}

unint64_t sub_252982C74()
{
  result = qword_27F540A58;
  if (!qword_27F540A58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A50, &qword_252E3DF90);
    v4[0] = sub_252982CF8();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540A58);
  }

  return result;
}

unint64_t sub_252982CF8()
{
  result = qword_27F540A60;
  if (!qword_27F540A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.HomeIntentFlag, &type metadata for HomeAutomationIntent.HomeIntentFlag, v0, v1);
    atomic_store(result, &qword_27F540A60);
  }

  return result;
}

unint64_t sub_252982D4C()
{
  result = qword_27F540A68;
  if (!qword_27F540A68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.UsoTaskType, &type metadata for HomeAutomationIntent.UsoTaskType, v0, v1);
    atomic_store(result, &qword_27F540A68);
  }

  return result;
}

unint64_t sub_252982DA0()
{
  result = qword_27F540A78;
  if (!qword_27F540A78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A70, &qword_252E3DF98);
    v4[0] = sub_2529857B0(&qword_27F540A80, type metadata accessor for Entity, protocol conformance descriptor for Entity);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F540A78);
  }

  return result;
}

unint64_t sub_252982E54()
{
  result = qword_27F540A88;
  if (!qword_27F540A88)
  {
    result = swift_getWitnessTable("%/>/", &_s19FuzzyMatchingValuesVN, v0, v1);
    atomic_store(result, &qword_27F540A88);
  }

  return result;
}

unint64_t sub_252982EA8()
{
  result = qword_27F540A98;
  if (!qword_27F540A98)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27F540A98);
  }

  return result;
}

uint64_t sub_252982EFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25296464C(result, a2);
  }

  return result;
}

uint64_t sub_252982F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void HomeAutomationIntent.encode(to:)(void *a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540AB0, &qword_252E3DFA8);
  v124 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - v4;
  v6 = *v1;
  LODWORD(v122) = *(v1 + 8);
  LODWORD(v121) = *(v1 + 9);
  LODWORD(v120) = *(v1 + 10);
  v119 = v1[2];
  v118 = *(v1 + 24);
  v117 = *(v1 + 25);
  v116 = *(v1 + 26);
  v115 = v1[4];
  v114 = *(v1 + 40);
  v7 = v1[6];
  v112 = v1[7];
  v113 = v7;
  v111 = *(v1 + 64);
  v8 = v1[9];
  v109 = v1[10];
  v110 = v8;
  v9 = v1[11];
  v107 = v1[12];
  v108 = v9;
  v10 = v1[14];
  v66 = v1[13];
  v67 = v10;
  v11 = v1[16];
  v68 = v1[15];
  v69 = v11;
  v12 = v1[18];
  v70 = v1[17];
  v71 = v12;
  v13 = v1[20];
  v72 = v1[19];
  v73 = v13;
  v14 = v1[22];
  v74 = v1[21];
  v75 = v14;
  v15 = v1[24];
  v76 = v1[23];
  v77 = v15;
  v134 = v1[60];
  v78 = v1[25];
  v16 = *(v1 + 28);
  v131 = *(v1 + 27);
  v132 = v16;
  v133 = *(v1 + 29);
  v17 = *(v1 + 26);
  v129 = *(v1 + 25);
  v130 = v17;
  LODWORD(v15) = *(v1 + 209);
  v79 = *(v1 + 208);
  v80 = v15;
  v18 = v1[28];
  v81 = v1[27];
  v82 = v18;
  v83 = *(v1 + 232);
  v19 = v1[31];
  v84 = v1[30];
  v85 = v19;
  v20 = v1[33];
  v86 = v1[32];
  v87 = v20;
  v21 = v1[35];
  v88 = v1[34];
  v89 = v21;
  LODWORD(v9) = *(v1 + 288);
  v90 = *(v1 + 289);
  v91 = v9;
  v22 = v1[38];
  v92 = v1[37];
  v93 = v22;
  v94 = *(v1 + 312);
  v23 = v1[41];
  v95 = v1[40];
  v96 = v23;
  v24 = v1[43];
  v97 = v1[42];
  v98 = v24;
  v25 = v1[45];
  v99 = v1[44];
  v100 = v25;
  v26 = v1[47];
  v101 = v1[46];
  v102 = v26;
  v103 = *(v1 + 384);
  v104 = *(v1 + 385);
  v105 = *(v1 + 386);
  v106 = *(v1 + 388);
  v27 = v1[49];
  v28 = v1[62];
  v29 = a1[3];
  v30 = a1;
  v32 = v31;
  __swift_project_boxed_opaque_existential_1(v30, v29);
  sub_252981E48();

  v33 = v5;
  sub_252E37F84();
  *&v136 = v6;
  LOBYTE(v126[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402E0, &qword_252E3C118);
  sub_25298472C();
  v34 = v123;
  sub_252E37D54();
  if (v34)
  {

    (*(v124 + 8))(v5, v32);
    return;
  }

  v35 = v121;
  v36 = v120;
  v65 = v27;
  v123 = v28;

  LOBYTE(v136) = v122;
  LOBYTE(v126[0]) = 1;
  sub_252984804();
  sub_252E37CD4();
  LOBYTE(v136) = v35;
  LOBYTE(v126[0]) = 2;
  sub_252984858();
  sub_252E37CD4();
  LOBYTE(v136) = v36;
  LOBYTE(v126[0]) = 3;
  sub_2529848AC();
  sub_252E37CD4();
  *&v136 = v119;
  LOBYTE(v126[0]) = 4;
  sub_252E35DD4();
  sub_2529857B0(&qword_27F540AE0, MEMORY[0x277D56498], MEMORY[0x277D564A0]);
  sub_252E37CD4();
  LOBYTE(v136) = v118;
  LOBYTE(v126[0]) = 5;
  sub_252984900();
  sub_252E37CD4();
  LOBYTE(v136) = v117;
  LOBYTE(v126[0]) = 6;
  sub_252984954();
  sub_252E37CD4();
  LOBYTE(v136) = v116;
  LOBYTE(v126[0]) = 7;
  sub_2529849A8();
  sub_252E37CD4();
  *&v136 = v115;
  LOBYTE(v126[0]) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403E0, &qword_252E3C5A0);
  sub_2529849FC();
  sub_252E37D54();
  LOBYTE(v136) = v114;
  LOBYTE(v126[0]) = 9;
  sub_252984AD4();
  sub_252E37CD4();
  *&v136 = v113;
  LOBYTE(v126[0]) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_252984B28(&qword_27F540B18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v37 = v32;
  v38 = v33;
  sub_252E37D54();
  *&v136 = v112;
  LOBYTE(v126[0]) = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540928, &unk_252E3DF30);
  sub_252984B94();
  sub_252E37D54();
  LOBYTE(v136) = v111;
  LOBYTE(v126[0]) = 12;
  sub_252984C6C();
  sub_252E37CD4();
  *&v136 = v110;
  LOBYTE(v126[0]) = 13;
  sub_252E37D54();
  *&v136 = v109;
  LOBYTE(v126[0]) = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540948, &qword_252E47730);
  sub_252984CC0();
  sub_252E37D54();
  *&v136 = v108;
  LOBYTE(v126[0]) = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540960, &qword_252E3DF40);
  sub_252984D98();
  sub_252E37D54();
  *&v136 = v107;
  LOBYTE(v126[0]) = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540978, &qword_252E3DF48);
  sub_252984E70();
  sub_252E37D54();
  *&v136 = v66;
  LOBYTE(v126[0]) = 17;
  sub_252E37D54();
  *&v136 = v67;
  LOBYTE(v126[0]) = 18;
  sub_252E37D54();
  *&v136 = v68;
  LOBYTE(v126[0]) = 19;
  sub_252E37D54();
  *&v136 = v69;
  LOBYTE(v126[0]) = 20;
  sub_252E37D54();
  *&v136 = v70;
  LOBYTE(v126[0]) = 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540998, &qword_252E3DF58);
  sub_252984F18();
  sub_252E37D54();
  *&v136 = v71;
  LOBYTE(v126[0]) = 22;
  sub_252E37D54();
  *&v136 = v72;
  LOBYTE(v126[0]) = 23;
  sub_252E37D54();
  *&v136 = v73;
  LOBYTE(v126[0]) = 24;
  sub_252E37D54();
  *&v136 = v74;
  LOBYTE(v126[0]) = 25;
  sub_252E37D54();
  *&v136 = v75;
  LOBYTE(v126[0]) = 26;
  sub_252E37D54();
  *&v136 = v76;
  LOBYTE(v126[0]) = 27;
  sub_252E37D54();
  *&v136 = v77;
  LOBYTE(v126[0]) = 28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409B0, &unk_252E3DF60);
  sub_252984FF0();
  sub_252E37D54();
  *&v136 = v78;
  LOBYTE(v126[0]) = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409C8, &qword_252E4B3C0);
  sub_2529850C8();
  sub_252E37D54();
  LOBYTE(v136) = v79;
  LOBYTE(v126[0]) = 30;
  sub_2529851A0();
  sub_252E37CD4();
  LOBYTE(v136) = v80;
  LOBYTE(v126[0]) = 31;
  sub_2529851F4();
  sub_252E37CD4();
  *&v136 = v81;
  LOBYTE(v126[0]) = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5409F0, &qword_252E3DF70);
  sub_252985248();
  sub_252E37D54();
  *&v136 = v82;
  LOBYTE(v126[0]) = 33;
  sub_252E37D54();
  LOBYTE(v136) = v83;
  LOBYTE(v126[0]) = 34;
  sub_252985320();
  sub_252E37CD4();
  LOBYTE(v136) = 35;
  sub_252E37C94();
  *&v136 = v86;
  LOBYTE(v126[0]) = 36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A10, &qword_252E3DF78);
  sub_252982AE4(&qword_27F540BC0, &qword_27F540BC8, protocol conformance descriptor for <> Scalar<A, B>, MEMORY[0x277D83948]);
  sub_252E37D54();
  LOBYTE(v136) = 37;
  sub_252E37C94();
  *&v136 = v89;
  BYTE8(v136) = v91;
  BYTE9(v136) = v90;
  LOBYTE(v126[0]) = 38;
  sub_2529853C4();
  sub_252E37CD4();
  v121 = 0;
  if (v92)
  {
    if (v92 >> 62)
    {
      v39 = sub_252E378C4();
    }

    else
    {
      v39 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      *&v136 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if (v39 < 0)
      {
        __break(1u);
        goto LABEL_23;
      }

      v41 = 0;
      v120 = v92 & 0xC000000000000001;
      do
      {
        if (v120)
        {
          v42 = MEMORY[0x2530ADF00](v41, v92);
        }

        else
        {
          v42 = *(v92 + 8 * v41 + 32);
        }

        v43 = v42;
        ++v41;
        type metadata accessor for CodableHomeFilter();
        swift_allocObject();
        v122 = sub_2529D0A90(v43);

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v39 != v41);
      v40 = v136;
    }

    *&v136 = v40;
    LOBYTE(v126[0]) = 39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
    sub_2529856FC();
    v44 = v121;
    sub_252E37D54();
    v121 = v44;
    if (v44)
    {
LABEL_33:
      (*(v124 + 8))(v38, v32);

      return;
    }
  }

  if (v93)
  {
    if (!(v93 >> 62))
    {
      v45 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_23:
    v45 = sub_252E378C4();
LABEL_24:
    v46 = MEMORY[0x277D84F90];
    if (v45)
    {
      *&v136 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if (v45 < 0)
      {
        __break(1u);
LABEL_35:

        goto LABEL_36;
      }

      v47 = 0;
      v120 = v93 & 0xC000000000000001;
      do
      {
        if (v120)
        {
          v48 = MEMORY[0x2530ADF00](v47, v93);
        }

        else
        {
          v48 = *(v93 + 8 * v47 + 32);
        }

        v49 = v48;
        ++v47;
        type metadata accessor for CodableHomeFilter();
        swift_allocObject();
        v122 = sub_2529D0A90(v49);

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v45 != v47);
      v46 = v136;
    }

    *&v136 = v46;
    LOBYTE(v126[0]) = 40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
    sub_2529856FC();
    v50 = v121;
    sub_252E37D54();
    v121 = v50;
    if (v50)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

LABEL_36:
  LOBYTE(v136) = 41;
  v51 = v121;
  sub_252E37CA4();
  if (v51)
  {
    goto LABEL_4;
  }

  LOBYTE(v136) = 42;
  sub_252E37D34();
  *&v136 = v96;
  LOBYTE(v126[0]) = 43;
  sub_252E37D54();
  *&v136 = v97;
  LOBYTE(v126[0]) = 44;
  sub_252E37D54();
  *&v136 = v98;
  LOBYTE(v126[0]) = 45;
  sub_252E37D54();
  *&v136 = v99;
  LOBYTE(v126[0]) = 46;
  sub_252E37D54();
  *&v136 = v100;
  LOBYTE(v126[0]) = 47;
  sub_252E37D54();
  *&v136 = v101;
  LOBYTE(v126[0]) = 48;
  sub_252E37D54();
  *&v136 = v102;
  LOBYTE(v126[0]) = 49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A50, &qword_252E3DF90);
  sub_252985418();
  sub_252E37D54();
  LOBYTE(v136) = v103;
  LOBYTE(v126[0]) = 50;
  sub_2529854F0();
  sub_252E37CD4();
  LOBYTE(v136) = 51;
  sub_252E37D04();
  LOBYTE(v136) = 52;
  sub_252E37D04();
  LOBYTE(v136) = 53;
  sub_252E37D04();
  *&v136 = v65;
  LOBYTE(v126[0]) = 54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A70, &qword_252E3DF98);
  sub_252985544();
  sub_252E37D54();
  v138 = v131;
  v139 = v132;
  v140 = v133;
  v141 = v134;
  v136 = v129;
  v137 = v130;
  v128 = 55;
  sub_2529855F8(&v129, v126);
  sub_252985654();
  sub_252E37D54();
  v126[2] = v138;
  v126[3] = v139;
  v126[4] = v140;
  v127 = v141;
  v126[0] = v136;
  v126[1] = v137;
  sub_252937BEC(v126);
  if (!v123)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (!v52)
  {
    type metadata accessor for ControlHomeIntent();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = v61;
      type metadata accessor for ControlHomeIntentCodable();
      swift_allocObject();
      v63 = v123;
      v135[0] = sub_252ADB074(v62);
      v125 = 56;
      sub_2529857B0(&qword_27F540C08, type metadata accessor for ControlHomeIntentCodable, protocol conformance descriptor for ControlHomeIntentCodable);
      sub_252E37D54();
      (*(v124 + 8))(v38, v32);

      return;
    }

LABEL_4:
    (*(v124 + 8))(v38, v32);
    return;
  }

  v53 = v52;
  v54 = objc_opt_self();
  v135[0] = 0;
  v55 = v123;
  v56 = [v54 archivedDataWithRootObject:v53 requiringSecureCoding:0 error:v135];
  v57 = v135[0];
  if (v56)
  {

    v58 = sub_252E32D34();
    v60 = v59;

    v135[0] = v58;
    v135[1] = v60;
    v125 = 56;
    sub_2529856A8();
    sub_252E37D54();
    (*(v124 + 8))(v38, v37);

    sub_25296464C(v58, v60);
  }

  else
  {
    v64 = v57;
    sub_252E32C54();

    swift_willThrow();
    (*(v124 + 8))(v38, v37);
  }
}

unint64_t sub_25298472C()
{
  result = qword_27F540AB8;
  if (!qword_27F540AB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5402E0, &qword_252E3C118);
    v4[0] = sub_2529847B0();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540AB8);
  }

  return result;
}

unint64_t sub_2529847B0()
{
  result = qword_27F540AC0;
  if (!qword_27F540AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent, &type metadata for HomeAutomationIntent, v0, v1);
    atomic_store(result, &qword_27F540AC0);
  }

  return result;
}

unint64_t sub_252984804()
{
  result = qword_27F540AC8;
  if (!qword_27F540AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F540AC8);
  }

  return result;
}

unint64_t sub_252984858()
{
  result = qword_27F540AD0;
  if (!qword_27F540AD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConfirmationSemantic, &type metadata for ConfirmationSemantic, v0, v1);
    atomic_store(result, &qword_27F540AD0);
  }

  return result;
}

unint64_t sub_2529848AC()
{
  result = qword_27F540AD8;
  if (!qword_27F540AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F540AD8);
  }

  return result;
}

unint64_t sub_252984900()
{
  result = qword_27F540AE8;
  if (!qword_27F540AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaSemantic, &type metadata for DeltaSemantic, v0, v1);
    atomic_store(result, &qword_27F540AE8);
  }

  return result;
}

unint64_t sub_252984954()
{
  result = qword_27F540AF0;
  if (!qword_27F540AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaQuantifierSemantic, &type metadata for DeltaQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F540AF0);
  }

  return result;
}

unint64_t sub_2529849A8()
{
  result = qword_27F540AF8;
  if (!qword_27F540AF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F540AF8);
  }

  return result;
}

unint64_t sub_2529849FC()
{
  result = qword_27F540B00;
  if (!qword_27F540B00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5403E0, &qword_252E3C5A0);
    v4[0] = sub_252984A80();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B00);
  }

  return result;
}

unint64_t sub_252984A80()
{
  result = qword_27F540B08;
  if (!qword_27F540B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F540B08);
  }

  return result;
}

unint64_t sub_252984AD4()
{
  result = qword_27F540B10;
  if (!qword_27F540B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EventSemantic, &type metadata for EventSemantic, v0, v1);
    atomic_store(result, &qword_27F540B10);
  }

  return result;
}

uint64_t sub_252984B28(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252984B94()
{
  result = qword_27F540B20;
  if (!qword_27F540B20)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540928, &unk_252E3DF30);
    v4[0] = sub_252984C18();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B20);
  }

  return result;
}

unint64_t sub_252984C18()
{
  result = qword_27F540B28;
  if (!qword_27F540B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HueSemantic, &type metadata for HueSemantic, v0, v1);
    atomic_store(result, &qword_27F540B28);
  }

  return result;
}

unint64_t sub_252984C6C()
{
  result = qword_27F540B30;
  if (!qword_27F540B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LimitSemantic, &type metadata for LimitSemantic, v0, v1);
    atomic_store(result, &qword_27F540B30);
  }

  return result;
}

unint64_t sub_252984CC0()
{
  result = qword_27F540B38;
  if (!qword_27F540B38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540948, &qword_252E47730);
    v4[0] = sub_252984D44();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B38);
  }

  return result;
}

unint64_t sub_252984D44()
{
  result = qword_27F540B40;
  if (!qword_27F540B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AttributeSemantic, &type metadata for AttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F540B40);
  }

  return result;
}

unint64_t sub_252984D98()
{
  result = qword_27F540B48;
  if (!qword_27F540B48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540960, &qword_252E3DF40);
    v4[0] = sub_252984E1C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B48);
  }

  return result;
}

unint64_t sub_252984E1C()
{
  result = qword_27F540B50;
  if (!qword_27F540B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F540B50);
  }

  return result;
}

unint64_t sub_252984E70()
{
  result = qword_27F540B58;
  if (!qword_27F540B58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540978, &qword_252E3DF48);
    v4[0] = sub_25298261C(&qword_27F540B60, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B58);
  }

  return result;
}

unint64_t sub_252984F18()
{
  result = qword_27F540B68;
  if (!qword_27F540B68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540998, &qword_252E3DF58);
    v4[0] = sub_252984F9C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B68);
  }

  return result;
}

unint64_t sub_252984F9C()
{
  result = qword_27F540B70;
  if (!qword_27F540B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessoryTypeSemantic, &type metadata for AccessoryTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F540B70);
  }

  return result;
}

unint64_t sub_252984FF0()
{
  result = qword_27F540B78;
  if (!qword_27F540B78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409B0, &unk_252E3DF60);
    v4[0] = sub_252985074();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B78);
  }

  return result;
}

unint64_t sub_252985074()
{
  result = qword_27F540B80;
  if (!qword_27F540B80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateSemantic, &type metadata for StateSemantic, v0, v1);
    atomic_store(result, &qword_27F540B80);
  }

  return result;
}

unint64_t sub_2529850C8()
{
  result = qword_27F540B88;
  if (!qword_27F540B88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409C8, &qword_252E4B3C0);
    v4[0] = sub_25298514C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540B88);
  }

  return result;
}

unint64_t sub_25298514C()
{
  result = qword_27F540B90;
  if (!qword_27F540B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F540B90);
  }

  return result;
}

unint64_t sub_2529851A0()
{
  result = qword_27F540B98;
  if (!qword_27F540B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.Verb, &type metadata for HomeAutomationIntent.Verb, v0, v1);
    atomic_store(result, &qword_27F540B98);
  }

  return result;
}

unint64_t sub_2529851F4()
{
  result = qword_27F540BA0;
  if (!qword_27F540BA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QuestionTypeSemantic, &type metadata for QuestionTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F540BA0);
  }

  return result;
}

unint64_t sub_252985248()
{
  result = qword_27F540BA8;
  if (!qword_27F540BA8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409F0, &qword_252E3DF70);
    v4[0] = sub_2529852CC();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540BA8);
  }

  return result;
}

unint64_t sub_2529852CC()
{
  result = qword_27F540BB0;
  if (!qword_27F540BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhraseSemantic, &type metadata for PhraseSemantic, v0, v1);
    atomic_store(result, &qword_27F540BB0);
  }

  return result;
}

unint64_t sub_252985320()
{
  result = qword_27F540BB8;
  if (!qword_27F540BB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F540BB8);
  }

  return result;
}

uint64_t sub_252985374(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A28, &qword_252E3DF80);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2529853C4()
{
  result = qword_27F540BD0;
  if (!qword_27F540BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.ReferenceType, &type metadata for HomeAutomationIntent.ReferenceType, v0, v1);
    atomic_store(result, &qword_27F540BD0);
  }

  return result;
}

unint64_t sub_252985418()
{
  result = qword_27F540BD8;
  if (!qword_27F540BD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A50, &qword_252E3DF90);
    v4[0] = sub_25298549C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540BD8);
  }

  return result;
}

unint64_t sub_25298549C()
{
  result = qword_27F540BE0;
  if (!qword_27F540BE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.HomeIntentFlag, &type metadata for HomeAutomationIntent.HomeIntentFlag, v0, v1);
    atomic_store(result, &qword_27F540BE0);
  }

  return result;
}

unint64_t sub_2529854F0()
{
  result = qword_27F540BE8;
  if (!qword_27F540BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationIntent.UsoTaskType, &type metadata for HomeAutomationIntent.UsoTaskType, v0, v1);
    atomic_store(result, &qword_27F540BE8);
  }

  return result;
}

unint64_t sub_252985544()
{
  result = qword_27F540BF0;
  if (!qword_27F540BF0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A70, &qword_252E3DF98);
    v4[0] = sub_2529857B0(&qword_27F540BF8, type metadata accessor for Entity, protocol conformance descriptor for Entity);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540BF0);
  }

  return result;
}

unint64_t sub_252985654()
{
  result = qword_27F540C00;
  if (!qword_27F540C00)
  {
    result = swift_getWitnessTable(byte_252E572BC, &_s19FuzzyMatchingValuesVN, v0, v1);
    atomic_store(result, &qword_27F540C00);
  }

  return result;
}

unint64_t sub_2529856A8()
{
  result = qword_27F540C10;
  if (!qword_27F540C10)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27F540C10);
  }

  return result;
}

unint64_t sub_2529856FC()
{
  result = qword_27F540C18;
  if (!qword_27F540C18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A38, &qword_252E3DF88);
    v4[0] = sub_2529857B0(&qword_27F540C20, type metadata accessor for CodableHomeFilter, aU_22);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F540C18);
  }

  return result;
}

uint64_t sub_2529857B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationIntentCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationIntentCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}