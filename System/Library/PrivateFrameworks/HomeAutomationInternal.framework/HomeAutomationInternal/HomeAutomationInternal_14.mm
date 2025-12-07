uint64_t sub_252A26640(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 376) = a2;
  *(v6 + 384) = a6;
  *(v6 + 654) = a5;
  *(v6 + 653) = a4;
  *(v6 + 368) = a1;
  *(v6 + 392) = type metadata accessor for CompletionSnippetModel(0);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  v7 = sub_252E32E84();
  *(v6 + 432) = v7;
  *(v6 + 440) = *(v7 - 8);
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();
  v8 = sub_252E36324();
  *(v6 + 536) = v8;
  *(v6 + 544) = *(v8 - 8);
  *(v6 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v6 + 560) = swift_task_alloc();
  v9 = sub_252E36AB4();
  *(v6 + 568) = v9;
  *(v6 + 576) = *(v9 - 8);
  *(v6 + 584) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A2693C, 0, 0);
}

uint64_t sub_252A2693C()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  *(v0 + 592) = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 560);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  v8 = sub_252E36AD4();
  *(v0 + 600) = __swift_project_value_buffer(v8, qword_27F544EB0);
  sub_252E379F4();

  v9 = [v6 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](0x3A656E6563532020, 0xE900000000000020);
  v13 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v14 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  MEMORY[0x2530AD570](v13, v14);

  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E728A0, 0xD000000000000072, 0x8000000252E72680);

  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  swift_beginAccess();
  *(v0 + 608) = *(v16 + 23);

  sub_252E37024();
  (*(v4 + 56))(v3, 0, 1, v5);
  v17 = swift_task_alloc();
  *(v0 + 616) = v17;
  *v17 = v0;
  v17[1] = sub_252A26C2C;
  v18 = *(v0 + 560);
  v19 = *(v0 + 653);

  return sub_252D29590(v18, v19);
}

uint64_t sub_252A26C2C(uint64_t a1)
{
  v3 = *v2;
  v3[78] = a1;
  v3[79] = v1;

  sub_25293847C(v3[70], &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v4 = sub_252A27CB8;
  }

  else
  {
    v4 = sub_252A26D74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A26D74()
{
  v104 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 384);
  *(v0 + 649) = 0;
  sub_252E36374();
  sub_252E37024();

  v6 = sub_252E36304();
  v93 = v7;
  v94 = v6;
  v8 = *(v2 + 8);
  v8(v1, v3);
  *(v0 + 648) = 1;
  sub_252E36374();
  sub_252E37024();

  v9 = sub_252E36304();
  v91 = v10;
  v92 = v9;
  v8(v1, v3);
  v11 = type metadata accessor for IconConfiguration(0);
  v95 = *(*(v11 - 1) + 56);
  v95(v4, 1, 1, v11);
  type metadata accessor for DefaultHomeDataDecorator();
  swift_initStackObject();
  v12 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);
  sub_252DD3B64(v103);
  v13 = v103[1];
  *(v0 + 16) = v103[0];
  *(v0 + 32) = v13;
  v14 = v103[3];
  *(v0 + 48) = v103[2];
  *(v0 + 64) = v14;
  v15 = sub_252E32E24();
  v17 = v16;
  v18 = [v12 home];
  if (v18)
  {
    v19 = v18;
    v20 = *(v0 + 440);
    v21 = *(v0 + 448);
    v22 = *(v0 + 432);
    type metadata accessor for Home(0);
    swift_allocObject();
    v23 = sub_2529E65BC(v19);
    (*(v20 + 16))(v21, v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v22);

    v24 = sub_252E32E24();
    v26 = v25;
    v18 = (*(v20 + 8))(v21, v22);
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v18);
  sub_252929E74((v27 + 16), v0 + 80);

  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  v28 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  if ((v28 & 1) != 0 && v26)
  {
    sub_252A30F7C(v24, v26, v15, v17, 5u);
  }

  else
  {
    sub_252A31464(v24, v26, v15, v17, 5, *(v0 + 488));
  }

  if (*(v0 + 24))
  {
    v29 = *(v0 + 520);
    v30 = *(v0 + 416);
    v31 = *(v0 + 424);
    v97 = v31;
    v99 = *(v0 + 528);
    v86 = *(v0 + 72);
    v80 = v30;
    v81 = *(v0 + 64);
    v90 = *(v0 + 49);
    v88 = *(v0 + 48);
    v79 = *(v0 + 40);
    v83 = *(v0 + 32);
    v84 = *(v0 + 56);
    sub_252A27E70(*(v0 + 376), v31);
    sub_252938414(v31, v30, &qword_27F540068, &qword_252E3BC90);
    v75 = v11[5];
    *(v0 + 304) = 0;
    *(v0 + 312) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v74 = v11[6];
    *(v0 + 640) = 0;
    sub_252E330C4();
    *(v0 + 641) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
    sub_252E330C4();
    v32 = v11[10];
    *(v0 + 336) = 0;
    *(v0 + 344) = 0;
    sub_252E330C4();
    v77 = v11[11];
    *(v0 + 352) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
    sub_252E330C4();
    v33 = v11[12];
    *(v0 + 320) = 0;
    *(v0 + 328) = 0;
    sub_252E330C4();
    v34 = v11[13];
    *(v0 + 288) = 0;
    *(v0 + 296) = 0;
    sub_252E330C4();
    v35 = v11[14];
    v36 = type metadata accessor for DirectInvocationConfig(0);
    (*(*(v36 - 8) + 56))(v29 + v35, 1, 1, v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v38 = *(*(v37 - 8) + 8);
    v38(v29 + v32, v37);
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
    sub_252E330C4();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v39 - 8) + 8))(v29 + v74, v39);
    *(v0 + 644) = 0;
    sub_252E330C4();
    sub_25292D864(v80, v29 + v35);
    *(v0 + 256) = v83;
    *(v0 + 264) = v79;
    sub_252E330C4();
    v38(v29 + v75, v37);
    *(v0 + 240) = v84;
    *(v0 + 248) = v81;
    sub_252E330C4();
    v38(v29 + v33, v37);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    sub_252E330C4();
    v38(v29 + v34, v37);
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    sub_252E330C4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v40 - 8) + 8))(v29 + v77, v40);
    *(v0 + 360) = v86;
    sub_252E330C4();
    *(v0 + 650) = v88;
    sub_252E330C4();
    *(v0 + 651) = v90;
    sub_252E330C4();
    *(v0 + 652) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    sub_252E330F4();
    sub_25293847C(v0 + 16, &qword_27F541B80, &unk_252E4E7B0);
    sub_25293847C(v80, &qword_27F540068, &qword_252E3BC90);
    sub_25293847C(v97, &qword_27F540068, &qword_252E3BC90);
    sub_25293847C(v99, &qword_27F541B50, &unk_252E47970);
    v95(v29, 0, 1, v11);
    sub_25293DDF0(v29, v99, &qword_27F541B50, &unk_252E47970);
  }

  v100 = *(v0 + 520);
  v41 = *(v0 + 504);
  v42 = *(v0 + 512);
  v43 = *(v0 + 488);
  v44 = *(v0 + 480);
  v76 = *(v0 + 472);
  v98 = *(v0 + 464);
  v45 = *(v0 + 408);
  v89 = *(v0 + 400);
  v46 = v11;
  v47 = *(v0 + 392);
  v85 = *(v0 + 654);
  v87 = *(v0 + 653);
  sub_252938414(*(v0 + 528), v100, &qword_27F541B50, &unk_252E47970);
  sub_252938414(v43, v44, &qword_27F540370, &qword_252E3C450);
  v48 = v47[5];
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v82 = v47[6];
  *(v0 + 647) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v78 = v47[9];
  v95(v42, 1, 1, v46);
  sub_252938414(v42, v41, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v42, &qword_27F541B50, &unk_252E47970);
  v96 = v47[10];
  v49 = sub_252E32CB4();
  (*(*(v49 - 8) + 56))(v76, 1, 1, v49);
  sub_252938414(v76, v98, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v76, &qword_27F540370, &qword_252E3C450);
  *(v0 + 208) = v94;
  *(v0 + 216) = v93;
  sub_252E330C4();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v50 - 8) + 8))(v45 + v48, v50);
  *(v0 + 224) = v92;
  *(v0 + 232) = v91;
  sub_252E330C4();
  sub_252938414(v100, v42, &qword_27F541B50, &unk_252E47970);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v51 - 8) + 8))(v45 + v78, v51);
  sub_252938414(v42, v41, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v42, &qword_27F541B50, &unk_252E47970);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v52 - 8) + 8))(v45 + v82, v52);
  *(v0 + 646) = v85;
  sub_252E330C4();
  *(v0 + 645) = v87;
  sub_252E330C4();
  sub_252938414(v44, v76, &qword_27F540370, &qword_252E3C450);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v53 - 8) + 8))(v45 + v96, v53);
  sub_252938414(v76, v98, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v76, &qword_27F540370, &qword_252E3C450);
  *(v0 + 643) = 0;
  sub_252E330C4();
  *(v0 + 642) = 0;
  sub_252E330C4();
  sub_25293847C(v44, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v100, &qword_27F541B50, &unk_252E47970);
  sub_252A31B70(v45, v89);
  v54 = sub_252E36AC4();
  v55 = sub_252E374C4();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 528);
  v58 = *(v0 + 488);
  v59 = *(v0 + 400);
  if (v56)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v103[0] = v61;
    *v60 = 136315138;
    v101 = v58;
    v102 = v57;
    v62 = CompletionSnippetModel.description.getter();
    v64 = v63;
    sub_252A31BD4(v59);
    v65 = sub_252BE2CE0(v62, v64, v103);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_252917000, v54, v55, "Created Scene Completion snippet model : %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x2530AED00](v61, -1, -1);
    MEMORY[0x2530AED00](v60, -1, -1);

    sub_25293847C(v101, &qword_27F540370, &qword_252E3C450);
    v66 = v102;
  }

  else
  {

    sub_252A31BD4(v59);
    sub_25293847C(v58, &qword_27F540370, &qword_252E3C450);
    v66 = v57;
  }

  sub_25293847C(v66, &qword_27F541B50, &unk_252E47970);
  v67 = *(v0 + 592);
  v68 = *(v0 + 584);
  v69 = *(v0 + 576);
  v70 = *(v0 + 568);
  sub_252A3314C(*(v0 + 408), *(v0 + 368), type metadata accessor for CompletionSnippetModel);
  v71 = sub_252E375C4();
  sub_252E36A74(v71, &dword_252917000, v67, "buildSnippetModel", 17, 2, v68, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v69 + 8))(v68, v70);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_252A27CB8()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];

  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v1, "buildSnippetModel", 17, 2, v2, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A27E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252A31C30(v4);
    if (v6)
    {
      v7 = v6;
      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      v8 = sub_252E36AD4();
      __swift_project_value_buffer(v8, qword_27F544EB0);
      v9 = v5;
      v10 = v7;
      v11 = sub_252E36AC4();
      v12 = sub_252E374C4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412546;
        *(v13 + 4) = v9;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v10;
        *v14 = v5;
        v14[1] = v7;
        v15 = v9;
        v16 = v10;
        _os_log_impl(&dword_252917000, v11, v12, "Inverted the task for directInvocation original: [ %@ ] inverted: [%@]", v13, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B78, &qword_252E4A340);
        swift_arrayDestroy();
        MEMORY[0x2530AED00](v14, -1, -1);
        MEMORY[0x2530AED00](v13, -1, -1);
      }

      v17 = [a1 filters];
      if (v17)
      {
        v18 = v17;
        type metadata accessor for HomeFilter();
        v19 = sub_252E37264();
      }

      else
      {
        v19 = 0;
      }

      type metadata accessor for ControlHomeIntent();
      v21 = v10;
      v22 = sub_252D473EC(v7, v19);

      v23 = objc_allocWithZone(MEMORY[0x277D5C220]);
      v5 = v22;
      v24 = sub_252E36F04();
      v25 = [v23 initWithIdentifier_];

      sub_252D15B64(v5, v25);
      sub_25293F638(0, &qword_27F541B88, 0x277D47438);
      sub_252E33054();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 1;
  }

  v26 = type metadata accessor for DirectInvocationConfig(0);
  v27 = *(*(v26 - 8) + 56);

  return v27(a2, v20, 1, v26);
}

uint64_t sub_252A28180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CompletionSnippetModel(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A283C0, 0, 0);
}

uint64_t sub_252A283C0()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  *(v0 + 328) = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = sub_252E36AD4();
  *(v0 + 336) = __swift_project_value_buffer(v5, qword_27F544EB0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E72960);
  v6 = [v4 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v10 = type metadata accessor for HomeAutomationEntityResponse(0);
  v11 = MEMORY[0x2530AD730](v3, v10);
  MEMORY[0x2530AD570](v11);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000072, 0x8000000252E72680);

  type metadata accessor for HomeAutomationPolledEntityResponses();
  v12 = swift_allocObject();
  *(v0 + 344) = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = v3;
  swift_beginAccess();

  v13 = sub_252BC6360(&unk_27F543C09, 0);
  swift_endAccess();
  v14 = *(v13 + 24);
  if (v14 >> 62)
  {
    v15 = sub_252E378C4();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 352) = v15;
  v16 = *(v0 + 152);

  v17 = [v16 userTask];
  if (v17)
  {
    v18 = v17;
    v19 = sub_252A32CA4(v17);

    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  *(v0 + 415) = v20 & 1;
  v21 = *(v0 + 168);
  v22 = *(v0 + 152);
  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  swift_beginAccess();
  *(v0 + 360) = *(v23 + 23);

  v25 = *(sub_252B680FC(v24) + 161);

  type metadata accessor for ServiceCollectionDecorator();
  *(v0 + 368) = swift_initStackObject();
  *(v0 + 376) = sub_252B7DA9C(v22);

  v26 = swift_task_alloc();
  *(v0 + 384) = v26;
  *v26 = v0;
  v26[1] = sub_252A2879C;

  return sub_252D2AF38(v12, v21, v25);
}

uint64_t sub_252A2879C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_252A29218;
  }

  else
  {
    v4 = sub_252A288D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A288D0()
{
  v64 = v0;
  v52 = *(v0 + 376);
  v59 = *(v0 + 415);
  v1 = *(v0 + 344);
  v51 = *(v0 + 352);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v61 = *(v0 + 264);
  v60 = *(v0 + 256);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v54 = *(v0 + 232);
  v43 = *(v0 + 216);
  v55 = *(v0 + 224);
  v56 = *(v0 + 208);
  v57 = *(v0 + 192);
  v58 = *(v0 + 184);
  v49 = *(v0 + 152);
  *(v0 + 408) = 0;
  sub_252E36374();
  sub_252E37024();

  v8 = sub_252E36304();
  v45 = v9;
  v46 = v8;
  (*(v3 + 8))(v2, v5);
  *(v0 + 409) = 1;
  v47 = sub_252E36374();
  v48 = v10;
  v11 = *(v6 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v12 = v49;

  v13 = sub_252C2436C(v12);
  sub_252A2E2C8(v12, v59, v52, v13, v1, v4);

  sub_252A2F9E8(v52, v13, v4 + v11);

  sub_252938414(v4, v61, &qword_27F541B58, &qword_252E41BE8);
  v53 = *(v6 + 48);
  sub_252938414(v4, v60, &qword_27F541B58, &qword_252E41BE8);
  v50 = *(v6 + 48);
  v14 = v55[5];
  *(v0 + 104) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v44 = v55[6];
  *(v0 + 410) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v41 = v55[9];
  v15 = type metadata accessor for IconConfiguration(0);
  (*(*(v15 - 8) + 56))(v43, 1, 1, v15);
  sub_252938414(v43, v56, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v43, &qword_27F541B50, &unk_252E47970);
  v42 = v55[10];
  v16 = sub_252E32CB4();
  (*(*(v16 - 8) + 56))(v57, 1, 1, v16);
  sub_252938414(v57, v58, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v57, &qword_27F540370, &qword_252E3C450);
  *(v0 + 112) = v46;
  *(v0 + 120) = v45;
  sub_252E330C4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v17 - 8) + 8))(v7 + v14, v17);
  LOBYTE(v51) = v51 != 0;
  *(v0 + 128) = v47;
  *(v0 + 136) = v48;
  sub_252E330C4();
  sub_252938414(v61, v43, &qword_27F541B50, &unk_252E47970);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v18 - 8) + 8))(v7 + v41, v18);
  sub_252938414(v43, v56, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v43, &qword_27F541B50, &unk_252E47970);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v19 - 8) + 8))(v7 + v44, v19);
  *(v0 + 411) = v59 ^ v51;
  sub_252E330C4();
  *(v0 + 412) = 1;
  sub_252E330C4();
  sub_252938414(v60 + v50, v57, &qword_27F540370, &qword_252E3C450);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v20 - 8) + 8))(v7 + v42, v20);
  sub_252938414(v57, v58, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v57, &qword_27F540370, &qword_252E3C450);
  *(v0 + 413) = v51;
  sub_252E330C4();
  *(v0 + 414) = 1;
  sub_252E330C4();
  sub_25293847C(v60 + v50, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v61, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v61 + v53, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v7, v54);
  v21 = sub_252E36AC4();
  v22 = sub_252E374C4();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 272);
  v25 = *(v0 + 232);
  if (v23)
  {
    v26 = swift_slowAlloc();
    v62 = v24;
    v63 = swift_slowAlloc();
    v27 = v63;
    *v26 = 136315138;
    v28 = CompletionSnippetModel.description.getter();
    v30 = v29;
    sub_252A31BD4(v25);
    v31 = sub_252BE2CE0(v28, v30, &v63);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_252917000, v21, v22, "Created Completion snippet model for long running actions: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530AED00](v27, -1, -1);
    MEMORY[0x2530AED00](v26, -1, -1);

    v32 = v62;
  }

  else
  {

    sub_252A31BD4(v25);
    v32 = v24;
  }

  sub_25293847C(v32, &qword_27F541B58, &qword_252E41BE8);
  v33 = *(v0 + 320);
  v34 = *(v0 + 328);
  v35 = *(v0 + 304);
  v36 = *(v0 + 312);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  v37 = sub_252E375C4();
  v40 = 2;
  sub_252E36A74(v37, &dword_252917000, v34, "buildSnippetModel", 17, 2, v33, " enableTelemetry=YES ", 21, v40, MEMORY[0x277D84F90]);
  (*(v36 + 8))(v33, v35);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_252A29218()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];

  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v2, "buildSnippetModel", 17, 2, v1, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A293A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a3;
  v4[34] = a4;
  v4[31] = a1;
  v4[32] = a2;
  v4[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = type metadata accessor for CompletionSnippetModel(0);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[52] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[53] = v6;
  v4[54] = *(v6 - 8);
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A29624, 0, 0);
}

uint64_t sub_252A29624()
{
  v134 = v0;
  if (qword_27F53F648 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v1 = qword_27F544FD0;
    *(v0 + 448) = qword_27F544FD0;
    v2 = v1;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v5 = sub_252E36AD4();
    *(v0 + 456) = __swift_project_value_buffer(v5, qword_27F544EB0);
    v6 = v3;
    v7 = v4;
    v8 = sub_252E36AC4();
    v9 = sub_252E374C4();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 256);
      v10 = *(v0 + 264);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412546;
      *(v12 + 4) = v11;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v6;
      *v13 = v11;
      v13[1] = v10;
      v14 = v11;
      v15 = v6;
      _os_log_impl(&dword_252917000, v8, v9, "Building BOOLean state completion snippet model : %@ %@", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B78, &qword_252E4A340);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v13, -1, -1);
      MEMORY[0x2530AED00](v12, -1, -1);
    }

    v16 = *(v0 + 256);

    v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
    swift_beginAccess();
    *(v0 + 464) = *(v18 + 23);

    type metadata accessor for ServiceCollectionDecorator();
    *(v0 + 472) = swift_initStackObject();
    v19 = v16;
    v20 = sub_252B7DA9C(v19);
    *(v0 + 480) = v20;
    v21 = [v19 userTask];
    *(v0 + 488) = v21;
    if (!v21)
    {
      break;
    }

    v22 = v21;
    v23 = *(v0 + 264);
    if (sub_252B7F858(39))
    {
      v24 = MEMORY[0x277D84F90];
      if (!v23)
      {
LABEL_27:
        type metadata accessor for HomeAutomationAirPurifierResponses();
        v65 = swift_allocObject();
        *(v65 + 16) = 0;
        *(v65 + 24) = v24;

        v66 = 2;
        v67 = 1;
        goto LABEL_97;
      }

      v25 = sub_252C285F0();
      v26 = v25;
      v133 = v24;
      v27 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 >> 62)
      {
        v28 = sub_252E378C4();
      }

      else
      {
        v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = 0;
      while (1)
      {
        if (v28 == v29)
        {

          goto LABEL_27;
        }

        if ((v26 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x2530ADF00](v29, v26);
        }

        else
        {
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_69;
          }

          v30 = *(v26 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v33 = sub_252DA124C(0);

        ++v29;
        if (v33)
        {
          MEMORY[0x2530AD700]();
          if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v24 = v133;
          v29 = v32;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    else
    {
      if (v23)
      {
        v64 = sub_252C2B064(v22);
      }

      else
      {
        v64 = 0;
      }

      v75 = sub_252A32260(v20);
      if (!v75)
      {
        goto LABEL_78;
      }

      v77 = v75;
      if (v75 >> 62)
      {
        v104 = v76;
        v105 = sub_252E378C4();
        v76 = v104;
        if (!v105)
        {
LABEL_77:

LABEL_78:
          v97 = MEMORY[0x277D84F90];
          if (v64)
          {
            v133 = MEMORY[0x277D84F90];
            if (v64 >> 62)
            {
LABEL_102:
              v106 = sub_252E378C4();
            }

            else
            {
              v106 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v107 = 0;
            while (v106 != v107)
            {
              if ((v64 & 0xC000000000000001) != 0)
              {
                v108 = MEMORY[0x2530ADF00](v107, v64);
              }

              else
              {
                if (v107 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_101;
                }

                v108 = *(v64 + 8 * v107 + 32);
              }

              v109 = v108;
              v110 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                __break(1u);
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v111 = sub_252DA124C(0);

              ++v107;
              if (v111)
              {
                MEMORY[0x2530AD700]();
                if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();
                v97 = v133;
                v107 = v110;
              }
            }

            v78 = 2;
          }

          else
          {
            v78 = 2;
          }

LABEL_94:
          type metadata accessor for HomeAutomationEntityResponses();
          v65 = swift_allocObject();
          *(v65 + 16) = 0;
          *(v65 + 24) = v97;

          v66 = sub_252A32ADC(v22, v64);

          if (v78 == 2)
          {
            v67 = 1;
          }

          else
          {
            sub_252E37024();

            v67 = 0;
          }

LABEL_97:
          *(v0 + 535) = v66;
          *(v0 + 496) = v65;
          v112 = *(v0 + 272);
          (*(*(v0 + 392) + 56))(*(v0 + 416), v67, 1, *(v0 + 384));
          v113 = swift_task_alloc();
          *(v0 + 504) = v113;
          *v113 = v0;
          v113[1] = sub_252A2A818;
          v114 = *(v0 + 416);

          return sub_252D2715C(v65, v112, v114);
        }
      }

      else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v78 = v76 & 1;
      if (!v64)
      {

        v97 = MEMORY[0x277D84F90];
        goto LABEL_94;
      }

      v133 = MEMORY[0x277D84F90];
      v79 = v64 & 0xFFFFFFFFFFFFFF8;
      v125 = v22;
      if (v64 >> 62)
      {
        v80 = sub_252E378C4();
      }

      else
      {
        v80 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v81 = MEMORY[0x277D84F90];
      v123 = v78;
      if (!v80)
      {
        v96 = MEMORY[0x277D84F90];
LABEL_54:

        v133 = v81;
        if (v96 >> 62)
        {
          v98 = sub_252E378C4();
        }

        else
        {
          v98 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v99 = 0;
        v130 = MEMORY[0x277D84F90];
        while (v98 != v99)
        {
          if ((v96 & 0xC000000000000001) != 0)
          {
            v100 = MEMORY[0x2530ADF00](v99, v96);
          }

          else
          {
            if (v99 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_71;
            }

            v100 = *(v96 + 8 * v99 + 32);
          }

          v101 = v100;
          v102 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            goto LABEL_70;
          }

          v103 = sub_252DA124C(0);

          ++v99;
          if (v103)
          {
            MEMORY[0x2530AD700]();
            if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v130 = v133;
            v99 = v102;
          }
        }

        v22 = v125;
        v78 = v123;
        v97 = v130;
        goto LABEL_94;
      }

      v82 = 0;
      v128 = v64 & 0xC000000000000001;
      v129 = v77;
      v127 = v80;
      while (1)
      {
        if (v128)
        {
          v83 = MEMORY[0x2530ADF00](v82, v64);
        }

        else
        {
          if (v82 >= *(v79 + 16))
          {
            goto LABEL_73;
          }

          v83 = *(v64 + 8 * v82 + 32);
        }

        v84 = v83;
        v85 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        v86 = v64;
        type metadata accessor for HomeEntityResponse.Builder();
        v87 = swift_allocObject();
        type metadata accessor for HomeEntity.Builder();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        *(inited + 32) = 7;
        *(inited + 40) = 0;
        *(inited + 48) = 0;
        v89 = MEMORY[0x277D84F90];
        *(inited + 56) = MEMORY[0x277D84F90];
        *(inited + 64) = 0u;
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 112) = 0;
        *(inited + 120) = v89;
        v90 = sub_25294BCA8();
        swift_setDeallocating();
        HomeEntity.Builder.deinit();
        swift_deallocClassInstance();
        *(v87 + 16) = v90;
        *(v87 + 24) = v89;
        v91 = [v84 entity];
        if (v91)
        {
          v92 = *(v87 + 16);
          *(v87 + 16) = v91;
        }

        v93 = sub_252B4EF4C(v129);
        v94 = sub_25297D0C0(v93);

        (*(*v94 + 192))(v95);

        MEMORY[0x2530AD700]();
        v64 = v86;
        if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v82;
        if (v85 == v127)
        {
          v96 = v133;
          v81 = MEMORY[0x277D84F90];
          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v34 = *(v0 + 480);
  v35 = *(v0 + 376);
  v131 = *(v0 + 368);
  v36 = *(v0 + 352);
  v37 = *(v0 + 360);
  v119 = v37;
  v38 = *(v0 + 344);
  v121 = *(v0 + 336);
  v39 = *(v0 + 320);
  v124 = *(v0 + 328);
  v122 = *(v0 + 312);
  v116 = *(v0 + 296);
  v126 = *(v0 + 288);
  v40 = *(v0 + 256);
  v41 = *(v36 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v42 = v40;
  v43 = sub_252C2436C(v42);
  sub_252A2E2C8(v42, 0, v34, v43, 0, v35);

  sub_252A2F9E8(v34, v43, v35 + v41);

  sub_252938414(v35, v131, &qword_27F541B58, &qword_252E41BE8);
  v120 = *(v36 + 48);
  sub_252938414(v35, v37, &qword_27F541B58, &qword_252E41BE8);
  v118 = *(v36 + 48);
  v44 = v124[5];
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v117 = v124[6];
  *(v0 + 528) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v45 = v124[9];
  v46 = type metadata accessor for IconConfiguration(0);
  (*(*(v46 - 8) + 56))(v39, 1, 1, v46);
  sub_252938414(v39, v122, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v39, &qword_27F541B50, &unk_252E47970);
  v115 = v124[10];
  v47 = sub_252E32CB4();
  (*(*(v47 - 8) + 56))(v116, 1, 1, v47);
  sub_252938414(v116, v126, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v116, &qword_27F540370, &qword_252E3C450);
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  sub_252E330C4();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v48 - 8) + 8))(v38 + v44, v48);
  *(v0 + 232) = xmmword_252E41B90;
  sub_252E330C4();
  sub_252938414(v131, v39, &qword_27F541B50, &unk_252E47970);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v49 - 8) + 8))(v38 + v45, v49);
  sub_252938414(v39, v122, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v39, &qword_27F541B50, &unk_252E47970);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v50 - 8) + 8))(v38 + v117, v50);
  *(v0 + 529) = 2;
  sub_252E330C4();
  *(v0 + 530) = 1;
  sub_252E330C4();
  sub_252938414(v119 + v118, v116, &qword_27F540370, &qword_252E3C450);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v51 - 8) + 8))(v38 + v115, v51);
  sub_252938414(v116, v126, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v116, &qword_27F540370, &qword_252E3C450);
  *(v0 + 531) = 0;
  sub_252E330C4();
  *(v0 + 532) = 1;
  sub_252E330C4();
  sub_25293847C(v119 + v118, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v131, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v119, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v131 + v120, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v38, v121);
  v52 = sub_252E36AC4();
  v53 = sub_252E374C4();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 376);
  v56 = *(v0 + 336);
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v133 = v58;
    *v57 = 136315138;
    v59 = CompletionSnippetModel.description.getter();
    v132 = v55;
    v61 = v60;
    sub_252A31BD4(v56);
    v62 = sub_252BE2CE0(v59, v61, &v133);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_252917000, v52, v53, "Created Completion snippet model : %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x2530AED00](v58, -1, -1);
    MEMORY[0x2530AED00](v57, -1, -1);

    v63 = v132;
  }

  else
  {

    sub_252A31BD4(v56);
    v63 = v55;
  }

  sub_25293847C(v63, &qword_27F541B58, &qword_252E41BE8);
  v68 = *(v0 + 440);
  v69 = *(v0 + 448);
  v70 = *(v0 + 424);
  v71 = *(v0 + 432);
  sub_252A3314C(*(v0 + 344), *(v0 + 248), type metadata accessor for CompletionSnippetModel);
  v72 = sub_252E375C4();
  sub_252E36A74(v72, &dword_252917000, v69, "buildSnippetModel", 17, 2, v68, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v71 + 8))(v68, v70);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_252A2A818(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);

  if (v1)
  {
    v5 = sub_252A2B3F4;
  }

  else
  {
    v5 = sub_252A2A984;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A2A984()
{
  v82 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  *(v0 + 533) = 3;
  sub_252E36374();
  sub_252E37024();

  v4 = sub_252E36304();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_252E37174();
    v9 = sub_252E36FC4();
    v11 = v10;

    v74 = sub_252AD52A0(0xFuLL, 15, v9, v11, v4, v6);
    v13 = v12;

    v73 = v13;
  }

  else
  {
    v73 = v6;
    v74 = v4;
  }

  v14 = *(v0 + 400);
  v15 = *(v0 + 384);
  *(v0 + 534) = 0;
  sub_252E36374();
  sub_252E37024();

  v16 = sub_252E36304();
  v18 = v17;
  v7(v14, v15);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    sub_252E37174();
    v20 = sub_252E36FC4();
    v22 = v21;

    v16 = sub_252AD52A0(0xFuLL, 15, v20, v22, v16, v18);
    v24 = v23;

    v69 = v24;
  }

  else
  {
    v69 = v18;
  }

  v25 = *(v0 + 535);
  v26 = *(v0 + 488);
  v70 = v16;
  if (v25 == 2)
  {
    v27 = sub_252A32CA4(v26);

    LOBYTE(v25) = v27 ^ 1;
  }

  else
  {
  }

  v28 = *(v0 + 496);
  v29 = *(v0 + 480);
  v30 = *(v0 + 376);
  v79 = *(v0 + 368);
  v31 = *(v0 + 352);
  v78 = *(v0 + 360);
  v32 = *(v0 + 344);
  v72 = *(v0 + 336);
  v76 = *(v0 + 328);
  v64 = *(v0 + 320);
  v75 = *(v0 + 312);
  v66 = *(v0 + 296);
  v77 = *(v0 + 288);
  v33 = *(v0 + 256);
  v34 = *(v31 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v35 = v33;
  v36 = sub_252C2436C(v35);
  sub_252A2E2C8(v35, v25 & 1, v29, v36, v28, v30);

  sub_252A2F9E8(v29, v36, v30 + v34);

  sub_252938414(v30, v79, &qword_27F541B58, &qword_252E41BE8);
  v71 = *(v31 + 48);
  sub_252938414(v30, v78, &qword_27F541B58, &qword_252E41BE8);
  v68 = *(v31 + 48);
  v37 = v76[5];
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v67 = v76[6];
  *(v0 + 528) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v38 = v76[9];
  v39 = type metadata accessor for IconConfiguration(0);
  (*(*(v39 - 8) + 56))(v64, 1, 1, v39);
  sub_252938414(v64, v75, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v64, &qword_27F541B50, &unk_252E47970);
  v65 = v76[10];
  v40 = sub_252E32CB4();
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  sub_252938414(v66, v77, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v66, &qword_27F540370, &qword_252E3C450);
  *(v0 + 216) = v70;
  *(v0 + 224) = v69;
  sub_252E330C4();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v41 - 8) + 8))(v32 + v37, v41);
  *(v0 + 232) = v74;
  *(v0 + 240) = v73;
  sub_252E330C4();
  sub_252938414(v79, v64, &qword_27F541B50, &unk_252E47970);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v42 - 8) + 8))(v32 + v38, v42);
  sub_252938414(v64, v75, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v64, &qword_27F541B50, &unk_252E47970);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v43 - 8) + 8))(v32 + v67, v43);
  *(v0 + 529) = v25 & 1;
  sub_252E330C4();
  *(v0 + 530) = 1;
  sub_252E330C4();
  sub_252938414(v78 + v68, v66, &qword_27F540370, &qword_252E3C450);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v44 - 8) + 8))(v32 + v65, v44);
  sub_252938414(v66, v77, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v66, &qword_27F540370, &qword_252E3C450);
  *(v0 + 531) = 0;
  sub_252E330C4();
  *(v0 + 532) = 1;
  sub_252E330C4();
  sub_25293847C(v78 + v68, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v79, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v78, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v79 + v71, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v32, v72);
  v45 = sub_252E36AC4();
  v46 = sub_252E374C4();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 376);
  v49 = *(v0 + 336);
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v81 = v51;
    *v50 = 136315138;
    v52 = CompletionSnippetModel.description.getter();
    v80 = v48;
    v54 = v53;
    sub_252A31BD4(v49);
    v55 = sub_252BE2CE0(v52, v54, &v81);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_252917000, v45, v46, "Created Completion snippet model : %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x2530AED00](v51, -1, -1);
    MEMORY[0x2530AED00](v50, -1, -1);

    v56 = v80;
  }

  else
  {

    sub_252A31BD4(v49);
    v56 = v48;
  }

  sub_25293847C(v56, &qword_27F541B58, &qword_252E41BE8);
  v57 = *(v0 + 440);
  v58 = *(v0 + 448);
  v59 = *(v0 + 424);
  v60 = *(v0 + 432);
  sub_252A3314C(*(v0 + 344), *(v0 + 248), type metadata accessor for CompletionSnippetModel);
  v61 = sub_252E375C4();
  sub_252E36A74(v61, &dword_252917000, v58, "buildSnippetModel", 17, 2, v57, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v60 + 8))(v57, v59);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_252A2B3F4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);

  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v2, "buildSnippetModel", 17, 2, v1, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v1, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252A2B5A4(uint64_t a1, uint64_t a2)
{
  v2[75] = a2;
  v2[74] = a1;
  v2[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v3 = type metadata accessor for CompletionSnippetModel(0);
  v2[82] = v3;
  v2[83] = *(v3 - 8);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v4 = sub_252E36324();
  v2[91] = v4;
  v2[92] = *(v4 - 8);
  v2[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v5 = sub_252E36AB4();
  v2[97] = v5;
  v2[98] = *(v5 - 8);
  v2[99] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A2B86C, 0, 0);
}

uint64_t sub_252A2B86C()
{
  v82 = v0;
  if (qword_27F53F648 != -1)
  {
LABEL_54:
    swift_once();
  }

  v1 = qword_27F544FD0;
  *(v0 + 800) = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 768);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 600);
  v7 = sub_252E36AD4();
  *(v0 + 808) = __swift_project_value_buffer(v7, qword_27F544EB0);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000023;
  __dst[1] = 0x8000000252E728C0;
  v8 = [v6 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000072, 0x8000000252E72680);

  sub_25293DEE0(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v12 = v6;
  v80 = sub_252953488(v6, __dst, 0);
  *(v0 + 816) = v80;

  type metadata accessor for ServiceCollectionDecorator();
  swift_allocObject();
  v13 = v12;
  v14 = sub_252B7DA9C(v13);
  *(v0 + 824) = v14;
  v15 = *(v4 + 56);
  v16 = 1;
  v15(v3, 1, 1, v5);
  v17 = *(v14 + 16);

  v18 = [v13 userTask];
  if (v18)
  {
    v19 = v18;
    v20 = sub_252A32CA4(v18);

    v16 = v20 ^ 1;
  }

  *(v0 + 887) = v16 & 1;
  v76 = v17;
  if (sub_252C4D664(5))
  {
    v21 = [*(v0 + 600) filters];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for HomeFilter();
      v23 = sub_252E37264();

      if (v23 >> 62)
      {
        v24 = sub_252E378C4();
        if (v24)
        {
LABEL_10:
          v74 = v15;
          v25 = 0;
          while (1)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v26 = MEMORY[0x2530ADF00](v25, v23);
            }

            else
            {
              if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_51;
              }

              v26 = *(v23 + 8 * v25 + 32);
            }

            v27 = v26;
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            v29 = [v26 isExcludeFilter];
            sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
            v30 = sub_252E37674();
            v31 = v30;
            if (!v29)
            {
              break;
            }

            v32 = sub_252E37694();

            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

            ++v25;
            if (v28 == v24)
            {
              v52 = 1;
              goto LABEL_59;
            }
          }

LABEL_47:

          v51 = [v27 homeEntityName];

          if (v51)
          {
            sub_252E36F34();

            sub_252E37024();
            v52 = 0;
            goto LABEL_59;
          }

          v52 = 1;
          goto LABEL_60;
        }
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_10;
        }
      }

      v52 = 1;
LABEL_59:
    }

    else
    {
      v52 = 1;
    }

LABEL_60:
    v53 = *(v0 + 768);
    v54 = *(v0 + 760);
    v55 = *(v0 + 728);
    sub_25293847C(v53, &qword_27F540298, &unk_252E3C270);
    v15(v54, v52, 1, v55);
    sub_25293DDF0(v54, v53, &qword_27F540298, &unk_252E3C270);
    goto LABEL_61;
  }

  if (v17 >> 62)
  {
    v33 = sub_252E378C4();
    if (!v33)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v33 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
LABEL_61:
      v78 = 0;
      goto LABEL_62;
    }
  }

  v34 = 0;
  v77 = v17 & 0xC000000000000001;
  v75 = v17 & 0xFFFFFFFFFFFFFF8;
  v35 = v17 + 32;
  while (1)
  {
    if (v77)
    {
      v36 = MEMORY[0x2530ADF00](v34, v76);
      v37 = __OFADD__(v34++, 1);
      if (v37)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v34 >= *(v75 + 16))
      {
        goto LABEL_53;
      }

      v36 = *(v35 + 8 * v34);

      v37 = __OFADD__(v34++, 1);
      if (v37)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v38 = qword_27F575A48;
    v39 = [*(v36 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v40 = sub_252E36F34();
    v42 = v41;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v43 = off_27F546230;
    if (*(off_27F546230 + 2) && (v44 = sub_252A44A10(v40, v42), (v45 & 1) != 0))
    {
      v46 = *(v43[7] + 8 * v44);
    }

    else
    {
      v46 = 0;
    }

    if (*(v38 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v46);
      v47 = sub_252E37F14();
      v48 = -1 << *(v38 + 32);
      v49 = v47 & ~v48;
      if ((*(v38 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
      {
        break;
      }
    }

LABEL_23:

    if (v34 == v33)
    {
      goto LABEL_61;
    }
  }

  v50 = ~v48;
  while (*(*(v38 + 48) + 8 * v49) != v46)
  {
    v49 = (v49 + 1) & v50;
    if (((*(v38 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v78 = 1;
LABEL_62:
  v56 = *(v0 + 768);
  v57 = *(v0 + 752);
  v58 = *(v0 + 736);
  v59 = *(v0 + 728);
  v60 = type metadata accessor for HomeAutomationEntityResponses();
  v61 = sub_25299DDFC(v76);
  *(v0 + 832) = v61;

  v63 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v62);
  swift_beginAccess();
  *(v0 + 840) = *(v63 + 23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v64 = swift_allocObject();
  *(v0 + 848) = v64;
  *(v64 + 16) = xmmword_252E3EF80;
  *(v64 + 32) = 0xD000000000000012;
  *(v64 + 40) = 0x8000000252E728F0;
  sub_252938414(v56, v57, &qword_27F540298, &unk_252E3C270);
  v65 = (*(v58 + 48))(v57, 1, v59);
  v66 = *(v0 + 752);
  if (v65 == 1)
  {
    sub_25293847C(*(v0 + 752), &qword_27F540298, &unk_252E3C270);
    *(v64 + 48) = 0u;
    *(v64 + 64) = 0u;
  }

  else
  {
    v67 = *(v0 + 736);
    v68 = *(v0 + 728);
    *(v64 + 72) = v68;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v64 + 48));
    (*(v67 + 32))(boxed_opaque_existential_0, v66, v68);
  }

  *(v64 + 80) = 0x6572756365537369;
  *(v64 + 88) = 0xEF74736575716552;
  v70 = MEMORY[0x277D839B0];
  *(v64 + 96) = v78;
  *(v64 + 120) = v70;
  *(v64 + 128) = 0xD000000000000010;
  *(v64 + 136) = 0x8000000252E72940;
  *(v64 + 144) = v61;
  *(v64 + 168) = v60;
  strcpy((v64 + 176), "intentContext");
  *(v64 + 190) = -4864;
  *(v64 + 216) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v64 + 192) = v80;
  v79 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v71 = swift_task_alloc();
  *(v0 + 856) = v71;
  v72 = sub_252A331B4();
  *v71 = v0;
  v71[1] = sub_252A2C210;

  return v79(0xD000000000000022, 0x8000000252E72910, v64, &type metadata for HomeAutomationCATsSimple.RequestSentUILabelsDialogIds, v72);
}

uint64_t sub_252A2C210(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = sub_252A2CF4C;
  }

  else
  {

    v4 = sub_252A2C348;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A2C348()
{
  v82 = v0;
  v75 = *(v0 + 832);
  v74 = *(v0 + 887);
  v1 = *(v0 + 824);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v6 = *(v0 + 712);
  v7 = *(v0 + 688);
  v73 = *(v0 + 600);
  *(v0 + 880) = 0;
  sub_252E36374();
  sub_252E37024();

  v71 = sub_252E36304();
  v79 = v8;
  (*(v3 + 8))(v2, v4);
  *(v0 + 881) = 2;
  v72 = sub_252E36374();
  v77 = v9;
  v10 = *(v7 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v11 = v73;
  v12 = sub_252C2436C(v11);
  sub_252A2E2C8(v11, v74, v1, v12, v75, v5);

  sub_252A2F9E8(v1, v12, v5 + v10);

  sub_252938414(v5, v6, &qword_27F541B58, &qword_252E41BE8);
  v69 = v7;
  v13 = v6 + *(v7 + 48);
  v14 = type metadata accessor for IconConfiguration(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    v16 = *(v0 + 712);

    sub_25293847C(v13, &qword_27F540370, &qword_252E3C450);
    sub_25293847C(v16, &qword_27F541B50, &unk_252E47970);
    v17 = sub_252E36AC4();
    v18 = sub_252E374C4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_252917000, v17, v18, "Could not create completion model for prehandle", v19, 2u);
      MEMORY[0x2530AED00](v19, -1, -1);
    }

    v20 = *(v0 + 768);
    v21 = *(v0 + 720);
    v22 = *(v0 + 664);
    v80 = *(v0 + 656);
    v23 = *(v0 + 592);

    sub_25293847C(v21, &qword_27F541B58, &qword_252E41BE8);
    sub_25293847C(v20, &qword_27F540298, &unk_252E3C270);
    (*(v22 + 56))(v23, 1, 1, v80);
  }

  else
  {
    v24 = *(v0 + 887);
    v25 = *(v0 + 720);
    v26 = *(v0 + 704);
    v27 = *(v0 + 696);
    v28 = *(v0 + 680);
    v67 = *(v0 + 672);
    v29 = *(v0 + 656);
    v60 = *(v0 + 648);
    v68 = *(v0 + 640);
    v61 = *(v0 + 624);
    v62 = *(v0 + 616);
    sub_25293847C(*(v0 + 712), &qword_27F541B50, &unk_252E47970);
    sub_25293847C(v13, &qword_27F540370, &qword_252E3C450);
    v65 = (v24 & 1) == 0;
    sub_252938414(v25, v26, &qword_27F541B58, &qword_252E41BE8);
    v66 = *(v69 + 48);
    sub_252938414(v25, v27, &qword_27F541B58, &qword_252E41BE8);
    v70 = *(v69 + 48);
    v30 = v29[5];
    *(v0 + 544) = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v64 = v29[6];
    *(v0 + 882) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    sub_252E330C4();
    v31 = v29[9];
    (*(v15 + 56))(v60, 1, 1, v14);
    sub_252938414(v60, v68, &qword_27F541B50, &unk_252E47970);
    sub_252E330C4();
    sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
    v63 = v29[10];
    v32 = sub_252E32CB4();
    (*(*(v32 - 8) + 56))(v61, 1, 1, v32);
    sub_252938414(v61, v62, &qword_27F540370, &qword_252E3C450);
    sub_252E330C4();
    sub_25293847C(v61, &qword_27F540370, &qword_252E3C450);
    *(v0 + 560) = v71;
    *(v0 + 568) = v79;
    sub_252E330C4();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    (*(*(v33 - 8) + 8))(v28 + v30, v33);
    *(v0 + 576) = v72;
    *(v0 + 584) = v77;
    sub_252E330C4();
    sub_252938414(v26, v60, &qword_27F541B50, &unk_252E47970);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
    (*(*(v34 - 8) + 8))(v28 + v31, v34);
    sub_252938414(v60, v68, &qword_27F541B50, &unk_252E47970);
    sub_252E330C4();
    sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    (*(*(v35 - 8) + 8))(v28 + v64, v35);
    *(v0 + 883) = v65;
    sub_252E330C4();
    *(v0 + 884) = 1;
    sub_252E330C4();
    sub_252938414(v27 + v70, v61, &qword_27F540370, &qword_252E3C450);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    (*(*(v36 - 8) + 8))(v28 + v63, v36);
    sub_252938414(v61, v62, &qword_27F540370, &qword_252E3C450);
    sub_252E330C4();
    sub_25293847C(v61, &qword_27F540370, &qword_252E3C450);
    *(v0 + 885) = 1;
    sub_252E330C4();
    *(v0 + 886) = 1;
    sub_252E330C4();
    sub_25293847C(v27 + v70, &qword_27F540370, &qword_252E3C450);
    sub_25293847C(v26, &qword_27F541B50, &unk_252E47970);
    sub_25293847C(v27, &qword_27F541B50, &unk_252E47970);
    sub_25293847C(v26 + v66, &qword_27F540370, &qword_252E3C450);
    sub_252A31B70(v28, v67);
    v37 = sub_252E36AC4();
    v38 = sub_252E374C4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 768);
    v41 = *(v0 + 720);
    v42 = *(v0 + 672);
    if (v39)
    {
      v78 = *(v0 + 768);
      v43 = swift_slowAlloc();
      v76 = v41;
      v44 = swift_slowAlloc();
      v81 = v44;
      *v43 = 136315138;
      v45 = CompletionSnippetModel.description.getter();
      v47 = v46;
      sub_252A31BD4(v42);
      v48 = sub_252BE2CE0(v45, v47, &v81);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_252917000, v37, v38, "Created Completion snippet model for prehandle: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x2530AED00](v44, -1, -1);
      MEMORY[0x2530AED00](v43, -1, -1);

      sub_25293847C(v76, &qword_27F541B58, &qword_252E41BE8);
      v49 = v78;
    }

    else
    {

      sub_252A31BD4(v42);
      sub_25293847C(v41, &qword_27F541B58, &qword_252E41BE8);
      v49 = v40;
    }

    sub_25293847C(v49, &qword_27F540298, &unk_252E3C270);
    v50 = *(v0 + 664);
    v51 = *(v0 + 656);
    v52 = *(v0 + 592);
    sub_252A3314C(*(v0 + 680), v52, type metadata accessor for CompletionSnippetModel);
    (*(v50 + 56))(v52, 0, 1, v51);
  }

  v53 = *(v0 + 800);
  v54 = *(v0 + 792);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  v57 = sub_252E375C4();
  sub_252E36A74(v57, &dword_252917000, v53, "buildSnippetModel", 17, 2, v54, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v55 + 8))(v54, v56);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_252A2CF4C()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];

  sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
  v6 = sub_252E375C4();
  v9 = 2;
  sub_252E36A74(v6, &dword_252917000, v1, "buildSnippetModel", 17, 2, v2, " enableTelemetry=YES ", 21, v9, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252A2D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for CompletionSnippetModel(0);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B58, &qword_252E41BE8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A2D3A0, 0, 0);
}

uint64_t sub_252A2D3A0()
{
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FD0;
  v0[41] = qword_27F544FD0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = sub_252E36AD4();
  v0[42] = __swift_project_value_buffer(v6, qword_27F544EB0);
  sub_252E379F4();
  v0[9] = 0;
  v0[10] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E72870);
  v7 = [v5 description];
  v8 = sub_252E36F34();
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  MEMORY[0x2530AD570](0x6E6F707365522020, 0xEC000000203A6573);
  v0[17] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B90, &qword_252E41C08);
  sub_252E37AE4();
  sub_252CC3D90(v0[9], v0[10], 0xD000000000000072, 0x8000000252E72680);

  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  swift_beginAccess();
  v0[43] = *(v12 + 23);

  type metadata accessor for ServiceCollectionDecorator();
  v0[44] = swift_initStackObject();
  v0[45] = sub_252B7DA9C(v5);
  v13 = swift_task_alloc();
  v0[46] = v13;
  *v13 = v0;
  v13[1] = sub_252A2D698;
  v14 = v0[20];

  return sub_252D2A56C(v14, 0, v3);
}

uint64_t sub_252A2D698(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_252A2E150;
  }

  else
  {
    v4 = sub_252A2D7AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A2D7AC()
{
  v75 = v0;
  v1 = [*(v0 + 152) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252A32CA4(v1);

    v72 = v3 ^ 1;
  }

  else
  {
    v72 = 0;
  }

  v4 = *(v0 + 360);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 248);
  v68 = *(v0 + 152);
  v70 = *(v0 + 160);
  *(v0 + 392) = 0;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v63 = v11;
  v64 = v10;
  v12 = *(v6 + 8);
  v12(v5, v8);
  *(v0 + 393) = 3;
  sub_252E36374();
  sub_252E37024();

  v13 = sub_252E36304();
  v61 = v14;
  v62 = v13;
  v12(v5, v8);
  v57 = v9;
  v15 = *(v9 + 48);
  type metadata accessor for AccessoriesCollectionDecorator();
  swift_allocObject();
  v16 = v68;
  v17 = sub_252C2436C(v16);
  sub_252A2E2C8(v16, v72 & 1, v4, v17, v70, v7);

  sub_252A2F9E8(v4, v17, v7 + v15);

  v18 = [v16 userTask];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 attribute];

    if (v20 == 67)
    {
      v21 = sub_252C4D868();
      goto LABEL_9;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v21 = 1;
LABEL_9:
  v22 = *(v0 + 272);
  v71 = *(v0 + 264);
  v23 = *(v0 + 256);
  v60 = v23;
  v24 = *(v0 + 240);
  v66 = *(v0 + 232);
  v26 = *(v0 + 216);
  v25 = *(v0 + 224);
  v67 = *(v0 + 208);
  v54 = *(v0 + 192);
  v59 = v21 & 1;
  v69 = *(v0 + 184);
  sub_252938414(v22, v71, &qword_27F541B58, &qword_252E41BE8);
  v65 = *(v57 + 48);
  sub_252938414(v22, v23, &qword_27F541B58, &qword_252E41BE8);
  v58 = *(v57 + 48);
  v27 = v25[5];
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v56 = v25[6];
  *(v0 + 394) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v53 = v25[9];
  v28 = type metadata accessor for IconConfiguration(0);
  (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  sub_252938414(v26, v67, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v26, &qword_27F541B50, &unk_252E47970);
  v55 = v25[10];
  v29 = sub_252E32CB4();
  (*(*(v29 - 8) + 56))(v54, 1, 1, v29);
  sub_252938414(v54, v69, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v54, &qword_27F540370, &qword_252E3C450);
  *(v0 + 104) = v64;
  *(v0 + 112) = v63;
  sub_252E330C4();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v30 - 8) + 8))(v24 + v27, v30);
  *(v0 + 120) = v62;
  *(v0 + 128) = v61;
  sub_252E330C4();
  sub_252938414(v71, v26, &qword_27F541B50, &unk_252E47970);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v31 - 8) + 8))(v24 + v53, v31);
  sub_252938414(v26, v67, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v26, &qword_27F541B50, &unk_252E47970);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v32 - 8) + 8))(v24 + v56, v32);
  *(v0 + 395) = v59;
  sub_252E330C4();
  *(v0 + 396) = 1;
  sub_252E330C4();
  sub_252938414(v60 + v58, v54, &qword_27F540370, &qword_252E3C450);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v33 - 8) + 8))(v24 + v55, v33);
  sub_252938414(v54, v69, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v54, &qword_27F540370, &qword_252E3C450);
  *(v0 + 397) = 0;
  sub_252E330C4();
  *(v0 + 398) = 0;
  sub_252E330C4();
  sub_25293847C(v60 + v58, &qword_27F540370, &qword_252E3C450);
  sub_25293847C(v71, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v60, &qword_27F541B50, &unk_252E47970);
  sub_25293847C(v71 + v65, &qword_27F540370, &qword_252E3C450);
  sub_252A31B70(v24, v66);
  v34 = sub_252E36AC4();
  v35 = sub_252E374C4();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 272);
  v38 = *(v0 + 232);
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v74 = v40;
    *v39 = 136315138;
    v73 = v37;
    v41 = CompletionSnippetModel.description.getter();
    v43 = v42;
    sub_252A31BD4(v38);
    v44 = sub_252BE2CE0(v41, v43, &v74);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_252917000, v34, v35, "Created mode completion snippet model : %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x2530AED00](v40, -1, -1);
    MEMORY[0x2530AED00](v39, -1, -1);

    v45 = v73;
  }

  else
  {

    sub_252A31BD4(v38);
    v45 = v37;
  }

  sub_25293847C(v45, &qword_27F541B58, &qword_252E41BE8);
  v46 = *(v0 + 320);
  v47 = *(v0 + 328);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  sub_252A3314C(*(v0 + 240), *(v0 + 144), type metadata accessor for CompletionSnippetModel);
  v50 = sub_252E375C4();
  sub_252E36A74(v50, &dword_252917000, v47, "buildSnippetModel", 17, 2, v46, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v49 + 8))(v46, v48);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_252A2E150()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];

  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v1, "buildSnippetModel", 17, 2, v2, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252A2E2C8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a5;
  LODWORD(v111) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v99 - v11;
  v116 = type metadata accessor for IconConfiguration(0);
  v13 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v114 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v113 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v99 - v21;
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544EB0);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E727B0, 0xD000000000000072, 0x8000000252E72680);
  v115 = v22;
  sub_252A27E70(a1, v22);
  v24 = v13;
  if (sub_252B7DC00())
  {
    sub_252B7FE5C(&v119);
    v25 = *(&v119 + 1);
    if (*(&v119 + 1))
    {
      v26 = v119;
      v27 = v120;
      v28 = v121;
      v30 = v122;
      v29 = v123;
      if (v111)
      {

        v111 = v27;
        v108 = v28;
      }

      else
      {

        v111 = v26;
        v108 = v25;
      }

      sub_252938414(v115, v113, &qword_27F540068, &qword_252E3BC90);
      v31 = *(a3 + 16);
      if (v31 >> 62)
      {
        v48 = sub_252E378C4();
      }

      else
      {
        v48 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v112 = v24;
      v114 = v26;
      v109 = v30;
      v110 = v27;
      v107 = v25;
      v106 = v28;
      v105 = v29;
      if (!v48)
      {

        goto LABEL_26;
      }

      if ((v31 & 0xC000000000000001) == 0)
      {
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v49 = *(v31 + 32);

LABEL_22:
          v50 = [*(v49 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
          if (v50)
          {
            v51 = v50;
            type metadata accessor for Accessory(0);
            swift_allocObject();
            v52 = sub_252D4CE7C(v51);

            (*(*v52 + 256))(v53);

            HomeDeviceType.toSnippetHomeDeviceType()();
            v54 = v117;
LABEL_27:
            v104 = v54;
            v55 = v116;
            v101 = *(v116 + 20);
            v117 = 0;
            v118 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
            sub_252E330C4();
            v56 = v55[6];
            LOBYTE(v117) = 0;
            sub_252E330C4();
            v103 = v55[9];
            LOBYTE(v117) = 48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
            sub_252E330C4();
            v57 = v55[10];
            v117 = 0;
            v118 = 0;
            sub_252E330C4();
            v100 = v55[11];
            v117 = 0;
            v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
            sub_252E330C4();
            v58 = v55[12];
            v117 = 0;
            v118 = 0;
            sub_252E330C4();
            v59 = v55[13];
            v117 = 0;
            v118 = 0;
            sub_252E330C4();
            v60 = v55[14];
            v61 = type metadata accessor for DirectInvocationConfig(0);
            (*(*(v61 - 8) + 56))(a6 + v60, 1, 1, v61);
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
            v63 = *(*(v62 - 8) + 8);
            v63(a6 + v57, v62);
            v117 = 0;
            v118 = 0;
            sub_252E330C4();
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
            (*(*(v64 - 8) + 8))(a6 + v56, v64);
            LOBYTE(v117) = 0;
            sub_252E330C4();
            v65 = a6 + v60;
            v66 = v113;
            sub_25292D864(v113, v65);
            v117 = v111;
            v118 = v108;
            sub_252E330C4();
            v63(a6 + v101, v62);
            v117 = v109;
            v118 = v105;
            sub_252E330C4();
            v63(a6 + v58, v62);
            v117 = v110;
            v118 = v106;
            sub_252E330C4();
            v63(a6 + v59, v62);
            v117 = v114;
            v118 = v107;
            sub_252E330C4();
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
            (*(*(v67 - 8) + 8))(a6 + v100, v67);
            v117 = 0;
            sub_252E330C4();
            v68 = v116;
            LOBYTE(v117) = 2;
            sub_252E330C4();
            LOBYTE(v117) = 2;
            sub_252E330C4();
            LOBYTE(v117) = v104;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
            sub_252E330F4();
            sub_25293847C(&v119, &qword_27F541B80, &unk_252E4E7B0);
            sub_25293847C(v66, &qword_27F540068, &qword_252E3BC90);
            sub_25293847C(v115, &qword_27F540068, &qword_252E3BC90);
            return (*(v112 + 56))(a6, 0, 1, v68);
          }

LABEL_26:
          v54 = 48;
          goto LABEL_27;
        }

        __break(1u);
LABEL_46:
        v98 = sub_252E378C4();

        if (!v98)
        {
          goto LABEL_39;
        }

LABEL_37:
        v111 = 0x8000000252E727D0;
        sub_252938414(v27, v114, &qword_27F540068, &qword_252E3BC90);
        v75 = v116;
        v108 = *(v116 + 20);
        v119 = 0uLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        sub_252E330C4();
        v107 = v75[6];
        LOBYTE(v119) = 0;
        sub_252E330C4();
        v113 = v75[9];
        LOBYTE(v119) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
        sub_252E330C4();
        v76 = v75;
        v77 = v75[10];
        v119 = 0uLL;
        sub_252E330C4();
        v109 = v76[11];
        *&v119 = 0;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
        sub_252E330C4();
        v78 = v76[12];
        v119 = 0uLL;
        sub_252E330C4();
        v79 = v76[13];
        v119 = 0uLL;
        sub_252E330C4();
        v80 = v76[14];
        v81 = type metadata accessor for DirectInvocationConfig(0);
        (*(*(v81 - 8) + 56))(a6 + v80, 1, 1, v81);
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
        v83 = *(*(v82 - 8) + 8);
        v83(a6 + v77, v82);
        v119 = 0uLL;
        sub_252E330C4();
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
        (*(*(v84 - 8) + 8))(a6 + v107, v84);
        LOBYTE(v119) = 0;
        sub_252E330C4();
        v85 = a6 + v80;
        v86 = v114;
        sub_25292D864(v114, v85);
        *&v119 = 0xD00000000000001FLL;
        *(&v119 + 1) = v111;
        sub_252E330C4();
        v83(a6 + v108, v82);
        v119 = xmmword_252E41BB0;
        sub_252E330C4();
        v83(a6 + v78, v82);
        v119 = 0uLL;
        sub_252E330C4();
        v83(a6 + v79, v82);
        v119 = 0uLL;
        sub_252E330C4();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
        (*(*(v87 - 8) + 8))(a6 + v109, v87);
        *&v119 = 0;
        sub_252E330C4();
        LOBYTE(v119) = 2;
        sub_252E330C4();
        LOBYTE(v119) = 2;
        sub_252E330C4();
        LOBYTE(v119) = 48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
        sub_252E330F4();
        sub_25293847C(v86, &qword_27F540068, &qword_252E3BC90);
        sub_25293847C(v115, &qword_27F540068, &qword_252E3BC90);
        return (*(v112 + 56))(a6, 0, 1, v76);
      }

LABEL_44:

      v49 = MEMORY[0x2530ADF00](0, v31);

      goto LABEL_22;
    }
  }

  if ((sub_252C244D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v31 = *(a4 + 16);
  if (v31 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_29;
    }
  }

  else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {

    v32 = MEMORY[0x2530ADF00](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v32 = *(v31 + 32);
  }

  v34 = (*(*v32 + 256))(v33);

  v24 = v13;
  if (v34 != 41)
  {
LABEL_29:
    v70 = a4;
    v27 = v115;
    sub_252A307E8(a1, v70, v115, v12);
    if ((*(v24 + 48))(v12, 1, v116) != 1)
    {
      sub_25293847C(v27, &qword_27F540068, &qword_252E3BC90);
      sub_252A3314C(v12, v15, type metadata accessor for IconConfiguration);
      sub_252A3314C(v15, a6, type metadata accessor for IconConfiguration);
      return (*(v24 + 56))(a6, 0, 1, v116);
    }

    sub_25293847C(v12, &qword_27F541B50, &unk_252E47970);
    sub_252C4D9D8();
    v112 = v24;
    if (v71 == 2)
    {

      if (!v110)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v72 = sub_252E37DB4();

      if ((v72 & 1) == 0 || !v110)
      {
        goto LABEL_39;
      }
    }

    v73 = sub_25299EEB4();
    if (v73 >> 62)
    {
      goto LABEL_46;
    }

    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v74)
    {
      goto LABEL_37;
    }

LABEL_39:
    sub_252938414(v27, v114, &qword_27F540068, &qword_252E3BC90);
    v35 = v116;
    v109 = *(v116 + 20);
    v119 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v108 = v35[6];
    LOBYTE(v119) = 0;
    sub_252E330C4();
    v113 = v35[9];
    LOBYTE(v119) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
    sub_252E330C4();
    v88 = v35[10];
    v119 = 0uLL;
    sub_252E330C4();
    v110 = v35[11];
    *&v119 = 0;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
    sub_252E330C4();
    v89 = v35[12];
    v119 = 0uLL;
    sub_252E330C4();
    v90 = v35[13];
    v119 = 0uLL;
    sub_252E330C4();
    v91 = v35[14];
    v92 = type metadata accessor for DirectInvocationConfig(0);
    (*(*(v92 - 8) + 56))(a6 + v91, 1, 1, v92);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v94 = *(*(v93 - 8) + 8);
    v94(a6 + v88, v93);
    v119 = 0uLL;
    sub_252E330C4();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v95 - 8) + 8))(a6 + v108, v95);
    LOBYTE(v119) = 0;
    sub_252E330C4();
    v96 = a6 + v91;
    v45 = v114;
    sub_25292D864(v114, v96);
    *&v119 = 0x74696B656D6F68;
    *(&v119 + 1) = 0xE700000000000000;
    sub_252E330C4();
    v94(a6 + v109, v93);
    v119 = xmmword_252E41BB0;
    sub_252E330C4();
    v94(a6 + v89, v93);
    v119 = 0uLL;
    sub_252E330C4();
    v94(a6 + v90, v93);
    v119 = 0uLL;
    sub_252E330C4();
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v97 - 8) + 8))(a6 + v110, v97);
    *&v119 = 0;
    sub_252E330C4();
    LOBYTE(v119) = 2;
    sub_252E330C4();
    LOBYTE(v119) = 2;
    sub_252E330C4();
    v47 = 48;
    goto LABEL_40;
  }

  sub_252938414(v115, v114, &qword_27F540068, &qword_252E3BC90);
  v35 = v116;
  v109 = *(v116 + 20);
  v119 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v108 = v35[6];
  LOBYTE(v119) = 0;
  sub_252E330C4();
  v113 = v35[9];
  LOBYTE(v119) = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v36 = v35[10];
  v119 = 0uLL;
  sub_252E330C4();
  v110 = v35[11];
  *&v119 = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v37 = v35[12];
  v119 = 0uLL;
  sub_252E330C4();
  v38 = v35[13];
  v119 = 0uLL;
  sub_252E330C4();
  v112 = v24;
  v39 = v35[14];
  v40 = type metadata accessor for DirectInvocationConfig(0);
  (*(*(v40 - 8) + 56))(a6 + v39, 1, 1, v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v42 = *(*(v41 - 8) + 8);
  v42(a6 + v36, v41);
  v119 = 0uLL;
  sub_252E330C4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  (*(*(v43 - 8) + 8))(a6 + v108, v43);
  LOBYTE(v119) = 0;
  sub_252E330C4();
  v44 = a6 + v39;
  v45 = v114;
  sub_25292D864(v114, v44);
  strcpy(&v119, "appletv.fill");
  BYTE13(v119) = 0;
  HIWORD(v119) = -5120;
  sub_252E330C4();
  v42(a6 + v109, v41);
  v119 = xmmword_252E41BA0;
  sub_252E330C4();
  v42(a6 + v37, v41);
  v119 = 0uLL;
  sub_252E330C4();
  v42(a6 + v38, v41);
  v119 = 0uLL;
  sub_252E330C4();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  (*(*(v46 - 8) + 8))(a6 + v110, v46);
  *&v119 = 0;
  sub_252E330C4();
  LOBYTE(v119) = 2;
  sub_252E330C4();
  LOBYTE(v119) = 2;
  sub_252E330C4();
  v47 = 39;
LABEL_40:
  LOBYTE(v119) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  sub_25293847C(v45, &qword_27F540068, &qword_252E3BC90);
  sub_25293847C(v115, &qword_27F540068, &qword_252E3BC90);
  return (*(v112 + 56))(a6, 0, 1, v35);
}

uint64_t sub_252A2F9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v76 - v7;
  v9 = sub_252E32E84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544EB0);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E72720, 0xD000000000000072, 0x8000000252E72680);
  if (sub_252B7E404())
  {
    v14 = *(a1 + 16);
    if (v14 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v78 = a3;
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = MEMORY[0x2530ADF00](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_64:

          v62 = MEMORY[0x2530ADF00](0, v14);

LABEL_38:
          v63 = [*(v62 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
          if (v63 && (v64 = v63, type metadata accessor for Accessory(0), swift_allocObject(), v65 = sub_252D4CE7C(v64), , (v66 = [*(v65 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home]) != 0))
          {
            v67 = v66;
            type metadata accessor for Home(0);
            swift_allocObject();
            v68 = sub_2529E65BC(v67);

            (*(v10 + 16))(v12, v68 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9);

            v69 = sub_252E32E24();
            v71 = v70;
            v61 = (*(v10 + 8))(v12, v9);
          }

          else
          {

LABEL_43:
            v69 = 0;
            v71 = 0;
          }

          v72 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v61);
          sub_252929E74((v72 + 16), v79);

          __swift_project_boxed_opaque_existential_1(v79, v80);
          v73 = sub_252E338C4();
          __swift_destroy_boxed_opaque_existential_1(v79);
          if ((v73 & 1) != 0 && v71)
          {
            sub_252A30F7C(v69, v71, 0, 0, 6u);
          }

          else
          {
            sub_252A31464(v69, v71, 0, 0, 6, a3);
          }
        }

        v15 = *(v14 + 32);
      }

      v16 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
      if (v16)
      {
        v17 = v16;
        type metadata accessor for Accessory(0);
        swift_allocObject();
        v18 = sub_252D4CE7C(v17);

        v19 = *(v10 + 16);
        v19(v12, v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9);
        v77 = sub_252E32E24();
        v21 = v20;
        v22 = *(v10 + 8);
        v22(v12, v9);
        v23 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
        if (v23)
        {
          v24 = v23;
          type metadata accessor for Home(0);
          swift_allocObject();
          v25 = sub_2529E65BC(v24);
          v19(v12, (v25 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier), v9);

          v26 = sub_252E32E24();
          v28 = v27;
          v23 = (v22)(v12, v9);
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v45 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
        sub_252929E74((v45 + 16), v79);

        __swift_project_boxed_opaque_existential_1(v79, v80);
        v46 = sub_252E338C4();
        __swift_destroy_boxed_opaque_existential_1(v79);
        if ((v46 & 1) != 0 && v28)
        {
          v47 = v77;
          v48 = v26;
          v49 = v28;
          v50 = v21;
          v51 = 2;
          goto LABEL_52;
        }

        v52 = v77;
        v53 = v78;
        v54 = v26;
        v55 = v28;
        v56 = v21;
        v57 = 2;
        goto LABEL_54;
      }

      a3 = v78;
    }
  }

  if ((sub_252B7EBB0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = *(a1 + 16);
  if (v14 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_30;
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v30 = *(v14 + 32);

  while (1)
  {
    v31 = [*(v30 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
    if (v31)
    {
      break;
    }

LABEL_29:

LABEL_30:
    if (a2)
    {

      sub_252A303B4(v58, v8);

      v59 = sub_252E32CB4();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v8, 1, v59) != 1)
      {
        (*(v60 + 32))(a3, v8, v59);
        return (*(v60 + 56))(a3, 0, 1, v59);
      }

      sub_25293847C(v8, &qword_27F540370, &qword_252E3C450);
    }

    v14 = *(a1 + 16);
    if (v14 >> 62)
    {
      v61 = sub_252E378C4();
      if (!v61)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v61 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v61)
      {
        goto LABEL_43;
      }
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_64;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v62 = *(v14 + 32);

      goto LABEL_38;
    }

    __break(1u);
LABEL_66:

    v30 = MEMORY[0x2530ADF00](0, v14);
  }

  v32 = v31;
  v78 = a3;
  type metadata accessor for Accessory(0);
  swift_allocObject();
  v33 = sub_252D4CE7C(v32);

  v34 = [*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (!v34)
  {
    a3 = v78;
    goto LABEL_29;
  }

  v35 = v34;
  type metadata accessor for Room(0);
  swift_allocObject();
  v36 = sub_2529A1E08(v35);

  v37 = *(v10 + 16);
  v37(v12, v36 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9);
  v77 = sub_252E32E24();
  v39 = v38;
  v40 = *(v10 + 8);
  v40(v12, v9);
  v41 = sub_2529A2E84();
  if (v41)
  {
    v37(v12, v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9);

    v42 = sub_252E32E24();
    v44 = v43;
    v41 = (v40)(v12, v9);
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v74 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v41);
  sub_252929E74((v74 + 16), v79);

  __swift_project_boxed_opaque_existential_1(v79, v80);
  v75 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v79);
  if ((v75 & 1) == 0 || !v44)
  {
    v52 = v77;
    v53 = v78;
    v54 = v42;
    v55 = v44;
    v56 = v39;
    v57 = 0;
LABEL_54:
    sub_252A31464(v54, v55, v52, v56, v57, v53);
  }

  v47 = v77;
  v48 = v42;
  v49 = v44;
  v50 = v39;
  v51 = 0;
LABEL_52:
  sub_252A30F7C(v48, v49, v47, v50, v51);
}

uint64_t sub_252A303B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_252C244D4() & 1) == 0 || (sub_252C244D4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 16);
  if (v8 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_26:
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_11;
      }

LABEL_27:
      v26 = sub_252E32CB4();
      v27 = *(*(v26 - 8) + 56);

      return v27(a2, 1, 1, v26);
    }

    v9 = *(v8 + 32);
  }

  v11 = (*(*v9 + 256))(v10);

  if (v11 != 46)
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 16);
  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v8 + 32);
  }

  v14 = *(v5 + 16);
  v14(v7, v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v4);
  v28 = sub_252E32E24();
  v16 = v15;
  v17 = *(v5 + 8);
  v17(v7, v4);
  v18 = [*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for Home(0);
    swift_allocObject();
    v20 = sub_2529E65BC(v19);
    v14(v7, v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v4);

    v21 = sub_252E32E24();
    v23 = v22;
    v18 = (v17)(v7, v4);
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v18);
  sub_252929E74((v24 + 16), v29);

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v25 = sub_252E338C4();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if ((v25 & 1) != 0 && v23)
  {
    sub_252A30F7C(v21, v23, v28, v16, 2u);
  }

  else
  {
    sub_252A31464(v21, v23, v28, v16, 2, a2);
  }
}

uint64_t sub_252A307E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  if ((sub_252C244D4() & 1) == 0 || (sub_252C244D4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(a2 + 16);
  if (v15 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_23;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x2530ADF00](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      v19 = sub_252E378C4();
      goto LABEL_15;
    }

    v16 = *(v15 + 32);
  }

  v18 = (*(*v16 + 256))(v17);

  if (v18 != 46 || (sub_252C248B0(&v52), (v4 = *(&v52 + 1)) == 0))
  {
LABEL_23:
    v33 = type metadata accessor for IconConfiguration(0);
    v34 = *(*(v33 - 8) + 56);

    return v34(a4, 1, 1, v33);
  }

  v6 = v52;
  v7 = v53;
  v5 = v54;
  v46 = v55;
  v49 = v56;
  if (sub_252C4D868())
  {

    a1 = v7;
    v44 = v5;
  }

  else
  {

    a1 = v6;
    v44 = v4;
  }

  sub_252938414(a3, v14, &qword_27F540068, &qword_252E3BC90);
  v15 = *(a2 + 16);
  if (v15 >> 62)
  {
    goto LABEL_28;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v47 = v7;
  v48 = v6;
  v45 = a1;
  v42 = v5;
  v43 = v4;
  if (!v19)
  {

    v23 = 48;
    goto LABEL_21;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {

    v21 = MEMORY[0x2530ADF00](0, v15);

    goto LABEL_19;
  }

  result = v49;
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v15 + 32);

LABEL_19:
    (*(*v21 + 256))(v22);

    HomeDeviceType.toSnippetHomeDeviceType()();
    v23 = v50;
LABEL_21:
    v41 = v23;
    v24 = type metadata accessor for IconConfiguration(0);
    v38 = v24[5];
    v50 = 0;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252E330C4();
    v36 = v24[6];
    LOBYTE(v50) = 0;
    sub_252E330C4();
    v40 = v24[9];
    LOBYTE(v50) = 48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
    sub_252E330C4();
    v25 = v24[10];
    v50 = 0;
    v51 = 0;
    sub_252E330C4();
    v37 = v24[11];
    v50 = 0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
    sub_252E330C4();
    v26 = v24[12];
    v50 = 0;
    v51 = 0;
    sub_252E330C4();
    v35 = v24[13];
    v50 = 0;
    v51 = 0;
    sub_252E330C4();
    v27 = v24[14];
    v28 = type metadata accessor for DirectInvocationConfig(0);
    (*(*(v28 - 8) + 56))(a4 + v27, 1, 1, v28);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v30 = *(*(v29 - 8) + 8);
    v30(a4 + v25, v29);
    v50 = 0;
    v51 = 0;
    sub_252E330C4();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v31 - 8) + 8))(a4 + v36, v31);
    LOBYTE(v50) = 0;
    sub_252E330C4();
    sub_25292D864(v14, a4 + v27);
    v50 = v45;
    v51 = v44;
    sub_252E330C4();
    v30(a4 + v38, v29);
    v50 = v46;
    v51 = v49;
    sub_252E330C4();
    v30(a4 + v26, v29);
    v50 = v47;
    v51 = v42;
    sub_252E330C4();
    v30(a4 + v35, v29);
    v50 = v48;
    v51 = v43;
    sub_252E330C4();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v32 - 8) + 8))(a4 + v37, v32);
    v50 = 0;
    sub_252E330C4();
    LOBYTE(v50) = 2;
    sub_252E330C4();
    LOBYTE(v50) = 2;
    sub_252E330C4();
    LOBYTE(v50) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    sub_252E330F4();
    sub_25293847C(&v52, &qword_27F541B80, &unk_252E4E7B0);
    sub_25293847C(v14, &qword_27F540068, &qword_252E3BC90);
    return (*(*(v24 - 1) + 56))(a4, 0, 1, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_252A30F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
    if (!a5)
    {
      sub_252E379F4();

      v32 = 0xD00000000000001ALL;
      v33 = 0x8000000252E72770;
      MEMORY[0x2530AD570](a1, a2);
      v10 = 29222;
      goto LABEL_19;
    }

    if (a5 != 1)
    {
      sub_252E379F4();

      v32 = 0xD00000000000001ALL;
      v33 = 0x8000000252E72790;
      MEMORY[0x2530AD570](a1, a2);
      v17 = 0x6F73736563636126;
      v18 = 0xED00003D64697972;
      goto LABEL_21;
    }

LABEL_7:
    sub_252E379F4();

    v32 = 0xD000000000000014;
    v33 = 0x8000000252E72750;
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](38, 0xE100000000000000);
    v11 = 0xE400000000000000;
    v12 = 1701670760;
    v13 = 0xE700000000000000;
    v14 = 0x72656767697274;
    if (a5 != 3)
    {
      v14 = 0x6172656D6163;
      v13 = 0xE600000000000000;
    }

    if (a5 != 1)
    {
      v12 = 0x726F737365636361;
      v11 = 0xE900000000000079;
    }

    if (a5 <= 2u)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    if (a5 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    MEMORY[0x2530AD570](v15, v16);

    v17 = 4023401;
    v18 = 0xE300000000000000;
    goto LABEL_21;
  }

  if (a5 - 3 < 2)
  {
    goto LABEL_7;
  }

  if (a5 == 5)
  {
    sub_252E379F4();

    v32 = 0xD00000000000001ALL;
    v33 = 0x8000000252E72770;
    MEMORY[0x2530AD570](a1, a2);
    v10 = 24870;
LABEL_19:
    v17 = v10 & 0xFFFF00000000FFFFLL | 0x3D64690000;
    v18 = 0xE500000000000000;
LABEL_21:
    MEMORY[0x2530AD570](v17, v18);
    MEMORY[0x2530AD570](a3, a4);
    v20 = v32;
    v19 = v33;

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D18);

    v22 = sub_252E36AC4();
    v23 = sub_252E374C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      v26 = sub_252BE2CE0(v20, v19, &v32);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_252917000, v22, v23, "Generated link: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2530AED00](v25, -1, -1);
      MEMORY[0x2530AED00](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_27;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D18);
  v29 = sub_252E36AC4();
  v30 = sub_252E374C4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_252917000, v29, v30, "Returning default link", v31, 2u);
    MEMORY[0x2530AED00](v31, -1, -1);
  }

  v32 = 0xD000000000000014;
  v33 = 0x8000000252E72750;
  MEMORY[0x2530AD570](a1, a2);
LABEL_27:
  sub_252E32CA4();
}

uint64_t sub_252A31464@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v13 = sub_252A31A94(0x6C7070612E6D6F63, 0xEE00656D6F482E65, 0);
  v14 = [v13 applicationState];

  LOBYTE(v13) = [v14 isInstalled];
  if (v13)
  {
    strcpy(v42, "com.apple.Home");
    HIBYTE(v42[1]) = -18;
    MEMORY[0x2530AD570](0x40252F40252F2F3ALL, 0xE800000000000000);
    if (v6 >= 5u)
    {
      if (v6 == 5)
      {

        strcpy(v42, "com.apple.Home");
        HIBYTE(v42[1]) = -18;
        MEMORY[0x2530AD570](0x2F656D6F682F2F3ALL, 0xE800000000000000);
        if (a2)
        {
          v37 = a2;
        }

        else
        {
          a1 = 0;
          v37 = 0xE000000000000000;
        }

        MEMORY[0x2530AD570](a1, v37);
      }

      else
      {

        if (qword_27F53F558 != -1)
        {
          swift_once();
        }

        v38 = sub_252E36AD4();
        __swift_project_value_buffer(v38, qword_27F544EB0);
        v39 = sub_252E36AC4();
        v40 = sub_252E374C4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_252917000, v39, v40, "Returning default link", v41, 2u);
          MEMORY[0x2530AED00](v41, -1, -1);
        }

        strcpy(v42, "com.apple.Home");
        HIBYTE(v42[1]) = -18;
        MEMORY[0x2530AD570](0x656D6F682F2F3ALL, 0xE700000000000000);
      }

      sub_252E32CA4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_252E3C3C0;
      v16 = 1836019570;
      v42[0] = 0;
      v42[1] = 0xE000000000000000;
      v17 = 0xE900000000000079;
      v18 = 0x726F737365636361;
      v19 = 0xE700000000000000;
      v20 = 0x72656767697274;
      if (v6 != 3)
      {
        v20 = 0x6172656D6163;
        v19 = 0xE600000000000000;
      }

      if (v6 != 2)
      {
        v18 = v20;
        v17 = v19;
      }

      if (v6)
      {
        v16 = 1701670760;
      }

      if (v6 <= 1u)
      {
        v21 = v16;
      }

      else
      {
        v21 = v18;
      }

      if (v6 <= 1u)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = v17;
      }

      MEMORY[0x2530AD570](v21, v22);

      v23 = v42[0];
      v24 = v42[1];
      v25 = MEMORY[0x277D837D0];
      *(v15 + 56) = MEMORY[0x277D837D0];
      v26 = sub_252987BC8();
      *(v15 + 32) = v23;
      *(v15 + 40) = v24;
      *(v15 + 96) = v25;
      *(v15 + 104) = v26;
      *(v15 + 64) = v26;
      *(v15 + 72) = a3;
      *(v15 + 80) = a4;
      sub_252A33134(a3, a4, v6);
      v27 = sub_252E36F64();
      v29 = v28;

      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544EB0);

      v31 = sub_252E36AC4();
      v32 = sub_252E374C4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_252BE2CE0(v27, v29, v42);
        _os_log_impl(&dword_252917000, v31, v32, "Generated link: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x2530AED00](v34, -1, -1);
        MEMORY[0x2530AED00](v33, -1, -1);
      }

      sub_252E32CA4();
    }
  }

  else
  {
    v35 = sub_252E32CB4();
    return (*(*(v35 - 8) + 56))(a6, 1, 1, v35);
  }
}

id sub_252A31A94(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_252E36F04();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_252E32C54();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_252A31B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A31BD4(uint64_t a1)
{
  v2 = type metadata accessor for CompletionSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_252A31C30(void *a1)
{
  v2 = [a1 attribute];
  type metadata accessor for MutableHomeUserTask();
  swift_initStackObject();
  v3 = a1;
  v4 = sub_252D6CA80(v3);
  swift_beginAccess();
  v5 = v4[4];
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v2 <= 9)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v2 <= 12)
    {
      if (v2 != 10)
      {
        if (v2 == 11)
        {
LABEL_26:
          v4[3] = 27;
          v9 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

          v10 = sub_252E36F04();
          v11 = [v9 initWithIdentifier:0 displayString:v10];

          v12 = v11;
          [v12 setBoolValue_];
LABEL_27:
          [v12 setType_];

          type metadata accessor for MutableAttributeValue();
          swift_allocObject();
          v13 = sub_252D6CC80(v12);

          v5 = v13;
LABEL_64:
          v4[4] = v5;

          v33 = sub_252D6CB58();

          goto LABEL_65;
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v2 == 13)
      {
        if (v5 && (v14 = *(v5 + 56)) != 0)
        {
          v15 = *(v5 + 48);
        }

        else
        {

          v15 = 0;
          v14 = 0xE000000000000000;
        }

        v41[0] = v15;
        v41[1] = v14;
        MEMORY[0x28223BE20](v16);
        v40[2] = v41;
        v24 = sub_2529ED970(sub_25296A724, v40, &unk_2864A7120);
        swift_arrayDestroy();

        if (v24)
        {
          if (!v5)
          {
            goto LABEL_52;
          }

          v25 = xmmword_252E41BD0;
        }

        else
        {
          if (!v5)
          {
            goto LABEL_52;
          }

          v25 = xmmword_252E41BC0;
        }

        *(v5 + 48) = v25;

        goto LABEL_51;
      }

      if (v2 != 16)
      {
        if (v2 != 27)
        {
          goto LABEL_52;
        }

        if ([v3 taskType] != 6)
        {
          if (v5)
          {
            v34 = *(v5 + 24) ^ 1;
          }

          else
          {
            v34 = 0;
          }

          v37 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v38 = sub_252E36F04();
          v39 = [v37 initWithIdentifier:0 displayString:v38];

          v12 = v39;
          [v12 setBoolValue_];
          goto LABEL_27;
        }

        if (!v5)
        {
          goto LABEL_52;
        }

LABEL_51:

        goto LABEL_64;
      }
    }

LABEL_28:
    if (!v5)
    {
      goto LABEL_52;
    }

    if (v6 == 2)
    {
      v17 = 0.0;
      if (*(v5 + 32) == 0.0)
      {
        v17 = 1.0;
      }

      *(v5 + 32) = v17;
      goto LABEL_63;
    }

    if (v6 == 4)
    {
      v8 = *(v5 + 40) == 0;
      goto LABEL_32;
    }

    v18 = *(v5 + 24);
    v19 = qword_27F53F558;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544EB0);
    v21 = sub_252E36AC4();
    v22 = sub_252E374C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v18;
      _os_log_impl(&dword_252917000, v21, v22, "Inverting BOOLean value: %{BOOL}d", v23, 8u);
      MEMORY[0x2530AED00](v23, -1, -1);
    }

    *(v5 + 24) = v18 ^ 1;
    goto LABEL_51;
  }

  v6 = 0;
  if (v2 > 9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 <= 7)
  {
    if ((v2 - 2) >= 2 && v2 != 5)
    {
      goto LABEL_52;
    }

    goto LABEL_26;
  }

  if (v2 == 8)
  {
    goto LABEL_28;
  }

  if (v5)
  {
    if (v6 == 2)
    {
      v35 = 100.0;
      if (*(v5 + 32) != 0.0)
      {
        v35 = 0.0;
      }

      *(v5 + 32) = v35;
      goto LABEL_63;
    }

    if (v6 != 4)
    {
      *(v5 + 24) = (*(v5 + 24) & 1) == 0;
      goto LABEL_63;
    }

    v8 = 100;
    if (*(v5 + 40))
    {
      v8 = 0;
    }

LABEL_32:
    *(v5 + 40) = v8;
LABEL_63:
    swift_retain_n();
    goto LABEL_64;
  }

LABEL_52:
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544EB0);
  v27 = v3;
  v28 = sub_252E36AC4();
  v29 = sub_252E374D4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_252917000, v28, v29, "Failed to invert the task for directInvocation: %@", v30, 0xCu);
    sub_25293847C(v31, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v31, -1, -1);
    MEMORY[0x2530AED00](v30, -1, -1);
  }

  v33 = sub_252D6CB58();
LABEL_65:

  return v33;
}

unint64_t sub_252A32260(uint64_t a1)
{
  v1 = sub_252B7DC00();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = sub_252B80338(v1);
  if (!v2)
  {
    return 0;
  }

  result = sub_252B8048C(v2);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_64:

    return 0;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_64;
  }

LABEL_6:
  v7 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v8 = *(v4 + 32);
  }

  v9 = v8;
  if (sub_252B7F858(1))
  {
    v81 = v9;
    v10 = [v9 userTask];
    if (v10)
    {
      v11 = v10;
      v12 = COERCE_DOUBLE(sub_2529C7370());
      v14 = v13;

      if ((v14 & 1) == 0 && (*&v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v15 = 0;
        v16 = v12;
        while (v6 != v15)
        {
          if (v7)
          {
            v17 = MEMORY[0x2530ADF00](v15, v4);
          }

          else
          {
            if (v15 >= *(v5 + 16))
            {
              __break(1u);
              goto LABEL_73;
            }

            v17 = *(v4 + 8 * v15 + 32);
          }

          v18 = v17;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_69;
          }

          v19 = [v17 userTask];
          if (!v19 || (v20 = v19, v21 = [v19 attribute], v20, v21 != 2) || (v22 = objc_msgSend(v18, sel_userTask)) == 0)
          {

            goto LABEL_44;
          }

          v23 = v22;
          v24 = COERCE_DOUBLE(sub_2529C7370());
          v26 = v25;

          if ((v26 & 1) == 0)
          {
            ++v15;
            if (v24 == v16)
            {
              continue;
            }
          }

          goto LABEL_44;
        }

        if (qword_27F53F558 != -1)
        {
          goto LABEL_75;
        }

        goto LABEL_55;
      }
    }

LABEL_44:
    if (qword_27F53F558 == -1)
    {
LABEL_45:
      v44 = sub_252E36AD4();
      __swift_project_value_buffer(v44, qword_27F544EB0);

      v45 = sub_252E36AC4();
      v46 = sub_252E374C4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v82 = v48;
        *v47 = 136315138;
        v49 = type metadata accessor for HomeUserTaskResponse();
        v50 = MEMORY[0x2530AD730](v4, v49);
        v52 = v51;

        v53 = sub_252BE2CE0(v50, v52, &v82);

        *(v47 + 4) = v53;
        v54 = "Not all services at the same brightness levels: %s";
LABEL_51:
        _os_log_impl(&dword_252917000, v45, v46, v54, v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x2530AED00](v48, -1, -1);
        MEMORY[0x2530AED00](v47, -1, -1);
LABEL_53:

        return 0;
      }

      goto LABEL_52;
    }

LABEL_71:
    swift_once();
    goto LABEL_45;
  }

  if ((sub_252B7F858(5) & 1) == 0)
  {

    return 0;
  }

  v81 = v9;
  v27 = [v9 userTask];
  if (!v27 || (v28 = v27, v29 = COERCE_DOUBLE(sub_2529C7370()), v31 = v30, v28, (v31 & 1) != 0))
  {
LABEL_48:
    if (qword_27F53F558 != -1)
    {
LABEL_73:
      swift_once();
    }

    v55 = sub_252E36AD4();
    __swift_project_value_buffer(v55, qword_27F544EB0);

    v45 = sub_252E36AC4();
    v46 = sub_252E374C4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v82 = v48;
      *v47 = 136315138;
      v56 = type metadata accessor for HomeUserTaskResponse();
      v57 = MEMORY[0x2530AD730](v4, v56);
      v59 = v58;

      v60 = sub_252BE2CE0(v57, v59, &v82);

      *(v47 + 4) = v60;
      v54 = "Not all services at the same speed levels: %s";
      goto LABEL_51;
    }

LABEL_52:

    goto LABEL_53;
  }

  v32 = 0;
  v33 = v29;
  while (1)
  {
    if (v6 == v32)
    {

      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      v72 = sub_252E36AD4();
      __swift_project_value_buffer(v72, qword_27F544EB0);
      v62 = v81;
      v63 = sub_252E36AC4();
      v73 = sub_252E374C4();

      if (os_log_type_enabled(v63, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v82 = v75;
        *v74 = 136315138;
        v76 = [v62 description];
        v77 = sub_252E36F34();
        v79 = v78;

        v80 = sub_252BE2CE0(v77, v79, &v82);

        *(v74 + 4) = v80;
        _os_log_impl(&dword_252917000, v63, v73, "Found all services at same %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x2530AED00](v75, -1, -1);
        MEMORY[0x2530AED00](v74, -1, -1);
      }

      goto LABEL_57;
    }

    if (v7)
    {
      v34 = MEMORY[0x2530ADF00](v32, v4);
      goto LABEL_35;
    }

    if (v32 >= *(v5 + 16))
    {
      break;
    }

    v34 = *(v4 + 8 * v32 + 32);
LABEL_35:
    v35 = v34;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_70;
    }

    v36 = [v34 userTask];
    if (!v36 || (v37 = v36, v38 = [v36 attribute], v37, v38 != 11) || (v39 = objc_msgSend(v35, sel_userTask)) == 0)
    {

      goto LABEL_48;
    }

    v40 = v39;
    v41 = COERCE_DOUBLE(sub_2529C7370());
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      ++v32;
      if (v41 == v33)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_75:
  swift_once();
LABEL_55:
  v61 = sub_252E36AD4();
  __swift_project_value_buffer(v61, qword_27F544EB0);
  v62 = v81;
  v63 = sub_252E36AC4();
  v64 = sub_252E374C4();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v82 = v66;
    *v65 = 136315138;
    v67 = [v62 description];
    v68 = sub_252E36F34();
    v70 = v69;

    v71 = sub_252BE2CE0(v68, v70, &v82);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_252917000, v63, v64, "Found all services at same brightness levels: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x2530AED00](v66, -1, -1);
    MEMORY[0x2530AED00](v65, -1, -1);
  }

LABEL_57:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  result = swift_allocObject();
  *(result + 16) = xmmword_252E3C130;
  *(result + 32) = v62;
  return result;
}

uint64_t sub_252A32ADC(void *a1, unint64_t a2)
{
  if ([a1 taskType] != 6)
  {
    return 2;
  }

  v3 = MEMORY[0x277D84F90];
  if (a2)
  {
    v14 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
LABEL_22:
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = sub_252DA124C(0);

      ++v5;
      if (v9)
      {
        MEMORY[0x2530AD700]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = v14;
        v5 = v8;
      }
    }
  }

  type metadata accessor for HomeAutomationEntityResponses();
  *(swift_initStackObject() + 24) = v3;
  v10 = sub_252999524();

  if (!v10)
  {
    return 2;
  }

  v11 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);

  if (!v11)
  {
    return 2;
  }

  v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

  return v12;
}

uint64_t sub_252A32CA4(void *a1)
{
  v2 = [a1 attribute];
  v3 = [a1 value];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  if (v3)
  {
    v7 = [v3 integerValue];

    v6 = v7;
  }

  v8 = [a1 value];
  v9 = v8 == 0;
  if (v8)
  {
    v10 = v8;
    [v8 doubleValue];
    v5 = v11;
  }

  v12 = [a1 value];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 type];

  if (v4 && v14 == 4)
  {
    v9 = 0;
    v5 = v6;
    goto LABEL_21;
  }

  if (v14 != 1 || (v15 = [a1 value]) == 0)
  {
LABEL_21:
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544EB0);
    sub_252E379F4();

    *&v31[6] = v5;
    v32 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
    v22 = sub_252E36F94();
    MEMORY[0x2530AD570](v22);

    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E72660, 0xD000000000000072, 0x8000000252E72680);

    LOBYTE(v17) = 0;
    if (v2 <= 10)
    {
      if (v2 == 2)
      {
        goto LABEL_33;
      }

      if (v2 != 8)
      {
        if (v2 != 9)
        {
          return v17 & 1;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v2 <= 15)
      {
        if (v2 != 11)
        {
          if (v2 == 13)
          {
            v23 = [a1 value];
            if (v23 && (v24 = v23, v25 = [v23 stringValue], v24, v25))
            {
              v26 = sub_252E36F34();
              v28 = v27;
            }

            else
            {
              v26 = 0;
              v28 = 0xE000000000000000;
            }

            v33 = v26;
            v34 = v28;
            MEMORY[0x28223BE20](v23);
            v31[2] = &v33;
            v29 = sub_2529ED970(sub_25296A69C, v31, &unk_2864A72A8);
            swift_arrayDestroy();

            LOBYTE(v17) = v29 ^ 1;
          }

          return v17 & 1;
        }

LABEL_33:
        LOBYTE(v17) = (v9 & 1) == 0 && v5 == 0.0;
        return v17 & 1;
      }

      if (v2 != 38)
      {
        if (v2 == 16)
        {
          LOBYTE(v17) = (v5 == 0.0) & ~v9;
        }

        return v17 & 1;
      }
    }

    if (v5 == 0.0)
    {
      LOBYTE(v17) = v9;
    }

    else
    {
      LOBYTE(v17) = 1;
    }

    return v17 & 1;
  }

  v16 = v15;
  v17 = [v15 BOOLValue];

  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v18 = sub_252E36AD4();
  __swift_project_value_buffer(v18, qword_27F544EB0);
  sub_252E379F4();

  v33 = 0xD00000000000001ALL;
  v34 = 0x8000000252E72700;
  if (v17)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v17)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v19, v20);

  sub_252CC3D90(v33, v34, 0xD000000000000072, 0x8000000252E72680);

  if (v2 != 8)
  {
    LOBYTE(v17) = (v2 != 38) ^ v17;
  }

  return v17 & 1;
}

uint64_t sub_252A33134(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_252A3314C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_252A331B4()
{
  result = qword_27F541B98;
  if (!qword_27F541B98)
  {
    result = swift_getWitnessTable(byte_252E5CBBC, &type metadata for HomeAutomationCATsSimple.RequestSentUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F541B98);
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_252A33244(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 146))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252A332A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_252A3332C(uint64_t a1)
{
  v2 = v1;
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v24 = a1 + 32;
  while (1)
  {
    v29 = *(v24 + 8 * v3);

    sub_252A362EC(&v29, &v28);
    if (v2)
    {

      return v4;
    }

    v6 = v28;
    v7 = v28 >> 62;
    if (v28 >> 62)
    {
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v4 >> 62;
    if (v4 >> 62)
    {
      v23 = sub_252E378C4();
      v11 = v23 + v8;
      if (__OFADD__(v23, v8))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v9)
      {
        v12 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_252E378C4();
      goto LABEL_16;
    }

    if (v9)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_252E37A54();
    v4 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v26 = v8;
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v14 >> 1) - v13) < v26)
    {
      goto LABEL_38;
    }

    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_40;
      }

      sub_2529E6488(&qword_27F541C38, &qword_27F541C30, &qword_252E41DE8, MEMORY[0x277D83988]);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C30, &qword_252E41DE8);
        v17 = sub_2529FBF08(v27, i, v6);
        v19 = *v18;

        (v17)(v27, 0);
        *(v12 + 8 * v13 + 32 + 8 * i) = v19;
      }
    }

    else
    {
      sub_252E34554();
      swift_arrayInitWithCopy();
    }

    v2 = 0;
    if (v26 >= 1)
    {
      v20 = *(v12 + 16);
      v21 = __OFADD__(v20, v26);
      v22 = v20 + v26;
      if (v21)
      {
        goto LABEL_39;
      }

      *(v12 + 16) = v22;
    }

LABEL_4:
    if (++v3 == v25)
    {
      return v4;
    }
  }

  result = sub_252E378C4();
  v15 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v26 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_252A33640(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x61737265766E6F63;
  v4 = 0xEE006C616E6F6974;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E65657263536E6FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x61737265766E6F63;
  v8 = 0xEE006C616E6F6974;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E65657263536E6FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A3374C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A337F4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A33888(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A3392C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A3EE9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A3395C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE006C616E6F6974;
  v5 = 0x61737265766E6F63;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65657263536E6FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A33A84(uint64_t a1)
{
  sub_252E37044();
}

unint64_t sub_252A33B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A3C504(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A33BC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E45656369766544;
  v5 = 0xEE00797469746E45;
  v6 = 0x79726F6765746143;
  v7 = 0x69746E456D6F6F52;
  v8 = 0xEA00000000007974;
  if (v2 != 4)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x69746E45656D6F48;
  v10 = 0xEA00000000007974;
  if (v2 != 1)
  {
    v9 = 0x746E45656E656353;
    v10 = 0xEB00000000797469;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

char *sub_252A33D54()
{
  v23 = sub_252E32A64();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[1];
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v26 = *v0;
  v27 = v4;
  v24 = 0x6965636976726573;
  v25 = 0xEA00000000003A64;
  v22 = sub_252947DBC();
  v6 = sub_252E37794();
  v7 = *(v6 + 16);
  v8 = v7 != 0;
  if (v7 <= 1)
  {
LABEL_9:

    return v5;
  }

  v9 = v6;
  v24 = v5;
  result = sub_2529AA3A0(0, (v7 - v8) & ~((v7 - v8) >> 63), 0);
  if (((v7 - v8) & 0x8000000000000000) == 0)
  {
    v5 = v24;
    v20 = v9;
    v21 = (v1 + 8);
    v11 = (v9 + 16 * v8 + 40);
    while (v8 < v7)
    {
      v12 = v7;
      v13 = *v11;
      v26 = *(v11 - 1);
      v27 = v13;

      sub_252E32A44();
      v14 = sub_252E377A4();
      v16 = v15;
      (*v21)(v3, v23);

      v24 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_2529AA3A0((v17 > 1), v18 + 1, 1);
        v5 = v24;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      ++v8;
      v11 += 2;
      v7 = v12;
      if (v12 == v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252A33F8C()
{
  v39 = v0[1];
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v28 = v0[4];
  v29 = *v0;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[9];
  v30 = v0[8];
  v38 = *(v0 + 80);
  v32 = v0[12];
  v33 = v0[11];
  v34 = v0[14];
  v35 = v0[13];
  v36 = v0[16];
  v37 = v0[15];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v8 = *(*v7 + 664);

  v31 = v2;
  v9 = v2;
  v10 = v1;
  v11 = v8(v9, v1);
  if (v5)
  {
    v3 = v5;
    v12 = v30;
  }

  else
  {
    v4 = v28;
    if (v3)
    {
      v12 = v30;
    }

    else
    {

      v12 = v30;
      v4 = v30;
      v3 = v6;
    }
  }

  v13 = (*(*v11 + 576))(v4, v3);

  v14 = (*(*v13 + 608))(v12, v6);

  v15 = (*(*v14 + 680))(v33, v32);

  v16 = (*(*v15 + 664))(v31, v10);

  v17 = (*(*v16 + 648))(v35, v34);

  v18 = (*(*v17 + 632))(v37, v36);

  v40 = v38;
  v19 = sub_252A47F84(&v40);
  if (v20)
  {
    v19 = 0;
  }

  v21 = (*(*v18 + 624))(v19);

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_252E3C290;
    *(v23 + 32) = v29;
    *(v23 + 40) = v39;
    v24 = *(*v21 + 568);

    v25 = v24(v23);

    v21 = v25;
  }

  v26 = (*(*v21 + 760))(v22);

  return v26;
}

uint64_t sub_252A343D4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x79636E65696C6173;
    v7 = 1701869940;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1836019570;
    v9 = 1701736314;
    if (a1 != 7)
    {
      v9 = 1701670760;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x6D614E656E656373;
    v3 = 0x726F737365636361;
    if (a1 != 4)
    {
      v3 = 0x7954656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6D614E70756F7267;
    if (a1 != 1)
    {
      v4 = 0x4E65636976726573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252A34554(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BD0, &qword_252E41DA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = v5;
  v6 = *(v1 + 32);
  v32 = *(v1 + 40);
  v33 = v6;
  v7 = *(v1 + 48);
  v30 = *(v1 + 56);
  v31 = v7;
  v8 = *(v1 + 72);
  v28 = *(v1 + 64);
  v29 = v8;
  v27 = *(v1 + 80);
  v9 = *(v1 + 96);
  v25 = *(v1 + 88);
  v26 = v9;
  v10 = *(v1 + 112);
  v23 = *(v1 + 104);
  v24 = v10;
  v11 = *(v1 + 128);
  v21 = *(v1 + 120);
  v22 = v11;
  v20 = *(v1 + 144);
  v12 = *(v1 + 145);
  v13 = a1[3];
  v14 = a1;
  v16 = &v19 - v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_252A39AE0();
  sub_252E37F84();
  v51 = 0;
  v17 = v36;
  sub_252E37C94();
  if (!v17)
  {
    LODWORD(v36) = v12;
    v50 = 1;
    sub_252E37C94();
    v49 = 2;
    sub_252E37C94();
    v48 = 3;
    sub_252E37C94();
    v47 = 4;
    sub_252E37C94();
    v46 = v27;
    v45 = 5;
    sub_252984F9C();
    sub_252E37CD4();
    v44 = 6;
    sub_252E37C94();
    v43 = 7;
    sub_252E37C94();
    v42 = 8;
    sub_252E37C94();
    v41 = 9;
    sub_252E37D14();
    v40 = v20;
    v39 = 10;
    sub_252A39BDC();
    sub_252E37D54();
    v38 = v36;
    v37 = 11;
    sub_252A39C30();
    sub_252E37D54();
  }

  return (*(v4 + 8))(v16, v3);
}

uint64_t sub_252A34930(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v14 = *(v1 + 96);
  v12 = *(v1 + 56);
  v13 = *(v1 + 112);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  if (*(v1 + 8))
  {
    sub_252E37EE4();
    sub_252E37044();
    if (v2)
    {
LABEL_3:
      sub_252E37EE4();
      sub_252E37044();
      goto LABEL_6;
    }
  }

  else
  {
    sub_252E37EE4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_252E37EE4();
LABEL_6:
  if (v3)
  {
    sub_252E37EE4();
    sub_252E37044();
    v8 = v13;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_252E37EE4();
    v8 = v13;
    if (v12)
    {
LABEL_8:
      sub_252E37EE4();
      sub_252E37044();
      v9 = v14;
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  sub_252E37EE4();
  v9 = v14;
  if (v4)
  {
LABEL_9:
    sub_252E37EE4();
    sub_252E37044();
    if (v5 == 52)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_252E37EE4();
  if (v5 == 52)
  {
LABEL_10:
    sub_252E37EE4();
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_252E37EE4();
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E37044();

  if (v9)
  {
LABEL_11:
    sub_252E37EE4();
    sub_252E37044();
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_19:
    sub_252E37EE4();
    if (v6)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_18:
  sub_252E37EE4();
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_12:
  sub_252E37EE4();
  sub_252E37044();
  if (v6)
  {
LABEL_13:
    sub_252E37EE4();
    sub_252E37044();
    goto LABEL_21;
  }

LABEL_20:
  sub_252E37EE4();
LABEL_21:
  v10 = 0.0;
  if (v7 != 0.0)
  {
    v10 = v7;
  }

  MEMORY[0x2530AE3C0](*&v10);
  sub_252E37044();

  sub_252E37044();
}

uint64_t sub_252A34D1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BB0, &qword_252E41DA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_252A39AE0();
  sub_252E37F74();
  if (!v2)
  {
    LOBYTE(v78) = 0;
    *&v53 = sub_252E37BA4();
    *(&v53 + 1) = v20;
    LOBYTE(v78) = 1;
    v21 = sub_252E37BA4();
    v51 = v22;
    v52 = v21;
    LOBYTE(v78) = 2;
    *&v50 = sub_252E37BA4();
    *(&v50 + 1) = v23;
    LOBYTE(v78) = 3;
    v49 = sub_252E37BA4();
    v55 = v24;
    LOBYTE(v78) = 4;
    v25 = sub_252E37BA4();
    v65 = 0;
    *&v64 = v25;
    *(&v64 + 1) = v26;
    LOBYTE(v66) = 5;
    sub_25298270C();
    v27 = v65;
    sub_252E37BE4();
    if (v27)
    {
      v65 = v27;
      (*(v6 + 8))(v8, v5);
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v62 = 0;
      v63 = 0;
      v57 = 52;
      v17 = 0;
    }

    else
    {
      v28 = a2;
      v29 = v78;
      LOBYTE(v78) = 6;
      v30 = sub_252E37BA4();
      v57 = v29;
      v62 = v30;
      v63 = v31;
      LOBYTE(v78) = 7;
      v59 = sub_252E37BA4();
      v61 = v32;
      LOBYTE(v78) = 8;
      v33 = sub_252E37BA4();
      v65 = 0;
      v58 = v33;
      v60 = v34;
      LOBYTE(v78) = 9;
      sub_252E37C24();
      v65 = 0;
      v17 = v35;
      LOBYTE(v66) = 10;
      sub_252A39B34();
      v36 = v65;
      sub_252E37C64();
      v65 = v36;
      if (!v36)
      {
        v56 = v78;
        v76 = 11;
        sub_252A39B88();
        v37 = v65;
        sub_252E37C64();
        v65 = v37;
        if (!v37)
        {
          (*(v6 + 8))(v8, v5);
          HIDWORD(v48) = v77;
          v38 = v53;
          v66 = v53;
          v39 = v51;
          *&v67 = v52;
          *(&v67 + 1) = v51;
          v40 = v50;
          v68 = v50;
          v41 = v49;
          v42 = v55;
          *&v69 = v49;
          *(&v69 + 1) = v55;
          v70 = v64;
          LOBYTE(v71) = v57;
          *(&v71 + 1) = v62;
          *&v72 = v63;
          *(&v72 + 1) = v59;
          *&v73 = v61;
          *(&v73 + 1) = v58;
          *&v74 = v60;
          *(&v74 + 1) = v17;
          LOBYTE(v75) = v56;
          HIBYTE(v75) = v77;
          v43 = v74;
          *(v28 + 112) = v73;
          *(v28 + 128) = v43;
          v44 = v72;
          *(v28 + 80) = v71;
          *(v28 + 96) = v44;
          v45 = v67;
          *v28 = v66;
          *(v28 + 16) = v45;
          v46 = v68;
          v47 = v70;
          *(v28 + 48) = v69;
          *(v28 + 64) = v47;
          *(v28 + 32) = v46;
          *(v28 + 144) = v75;
          sub_25297DE08(&v66, &v78);
          __swift_destroy_boxed_opaque_existential_1(v54);
          v78 = v38;
          v79 = v52;
          v80 = v39;
          v81 = v40;
          v82 = v41;
          v83 = v42;
          v84 = v64;
          v85 = v57;
          v87 = v62;
          v88 = v63;
          v89 = v59;
          v90 = v61;
          v91 = v58;
          v92 = v60;
          v93 = v17;
          v94 = v56;
          v18 = BYTE4(v48);
          goto LABEL_5;
        }

        (*(v6 + 8))(v8, v5);
        goto LABEL_9;
      }

      (*(v6 + 8))(v8, v5);
    }

    v56 = 2;
LABEL_9:
    v15 = *(&v53 + 1);
    v16 = v53;
    v13 = v51;
    v14 = v52;
    v11 = *(&v50 + 1);
    v12 = v50;
    v10 = v49;
    goto LABEL_4;
  }

  v65 = v2;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0uLL;
  v55 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v56 = 2;
  v57 = 52;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v54);
  *&v78 = v16;
  *(&v78 + 1) = v15;
  v79 = v14;
  v80 = v13;
  *&v81 = v12;
  *(&v81 + 1) = v11;
  v82 = v10;
  v83 = v55;
  v84 = v64;
  v85 = v57;
  *v86 = v96[0];
  *&v86[3] = *(v96 + 3);
  v87 = v62;
  v88 = v63;
  v89 = v59;
  v90 = v61;
  v91 = v58;
  v92 = v60;
  v93 = v17;
  v94 = v56;
  v18 = 5;
LABEL_5:
  v95 = v18;
  return sub_2529AEC80(&v78);
}

uint64_t sub_252A35494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252A3EEE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252A354C8(uint64_t a1)
{
  v2 = sub_252A39AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A35504(uint64_t a1)
{
  v2 = sub_252A39AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A35540()
{
  sub_252E37EC4();
  sub_252A34930(v1);
  return sub_252E37F14();
}

uint64_t sub_252A35584(uint64_t a1)
{
  sub_252E37EC4();
  sub_252A34930(v2);
  return sub_252E37F14();
}

unint64_t sub_252A355F8()
{
  result = qword_27F541BA8;
  if (!qword_27F541BA8)
  {
    result = swift_getWitnessTable(byte_252E41D38, &type metadata for ReferencedEntityValue, v0, v1);
    atomic_store(result, &qword_27F541BA8);
  }

  return result;
}

uint64_t sub_252A3564C@<X0>(uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v4 = sub_252E36CA4();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_252E36D04();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36CB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_252E36C24();
  v40 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_252E36B34();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E36AB4();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F650 != -1)
  {
    swift_once();
  }

  v18 = qword_27F544FD8;
  sub_252E36A94();
  sub_252E375D4();
  v51 = v18;
  sub_252E36A84();
  sub_252A35E88(v56, &aBlock);
  v49 = aBlock;
  v48 = v60;
  v19 = MEMORY[0x277D84F90];
  v50 = BYTE1(v60);
  v52 = v17;
  if ((v60 & 0x100) != 0)
  {
    v47 = v15;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544E98);
    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E72A50, 0xD000000000000075, 0x8000000252E72A80);
    sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
    (*(v9 + 104))(v11, *MEMORY[0x277D851C0], v8);
    v21 = sub_252E375A4();
    (*(v9 + 8))(v11, v8);
    v63 = sub_252A39C84;
    v64 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_252AD686C;
    v62 = &block_descriptor_4;
    v22 = _Block_copy(&aBlock);
    sub_252E36CD4();
    v58 = v19;
    sub_252A3E6C0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
    v23 = v45;
    v24 = v55;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v7, v23, v22);
    v25 = v19;
    _Block_release(v22);

    v54[1](v23, v24);
    (*(v44 + 8))(v7, v46);

    v26 = v19;
    v27 = v19;
    v15 = v47;
  }

  else
  {
    v28 = sub_252A3C1E0();
    sub_252A3E31C(v28);
    v29 = *(v28 + 2);
    if (v29)
    {
      v46 = a3;
      v47 = v15;
      aBlock = v19;
      sub_252E37AB4();
      v30 = *(v42 + 16);
      v31 = *(v42 + 80);
      v45 = v28;
      v32 = &v28[(v31 + 32) & ~v31];
      v55 = *(v42 + 72);
      v56 = v30;
      v54 = (v40 + 8);
      v33 = (v42 + 8);
      v34 = v43;
      v35 = v41;
      do
      {
        v56(v35, v32, v34);
        sub_252E36B24();
        sub_252E36C14();
        (*v54)(v13, v57);
        (*v33)(v35, v34);
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v32 += v55;
        --v29;
      }

      while (v29);

      v19 = aBlock;
      a3 = v46;
      v15 = v47;
    }

    else
    {
    }

    v26 = sub_252B05604(v19);
    v27 = sub_252B058DC(v19);

    v25 = MEMORY[0x277D84F90];
  }

  *a3 = v49;
  *(a3 + 8) = v48;
  *(a3 + 9) = v50;
  *(a3 + 16) = v26;
  *(a3 + 24) = v27;
  v36 = sub_252E375C4();
  v39 = v25;
  v37 = v52;
  sub_252E36A74(v36, &dword_252917000, v51, "ReferenceResolution.GetReferencedEntities", 41, 2, v52, " enableTelemetry=YES ", 21, 2, v39);
  return (*(v53 + 8))(v37, v15);
}

uint64_t sub_252A35E88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = sub_252B05484(a1);
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_41:
    v25 = v3 & 0xFFFFFFFFFFFFFF8;
    v26 = sub_252E378C4();
  }

  else
  {
    v25 = v2 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v24 = 4;
  while (1)
  {
    v5 = v4;
    if (v26 == v4)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v3);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v4 >= *(v25 + 16))
      {
        goto LABEL_40;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v6 = sub_252A39CA0();
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E98);
    sub_252E379F4();

    v8 = sub_252E359E4();
    MEMORY[0x2530AD570](v8);

    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E72FB0);
    if (v6)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v6)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v9, v10);

    sub_252CC3D90(0xD000000000000012, 0x8000000252E72F90, 0xD000000000000075, 0x8000000252E72A80);

    v4 = v5 + 1;
    if (v6)
    {
      v11 = 5;
      goto LABEL_22;
    }
  }

  v24 = 0;
  v11 = 3;
LABEL_22:
  v12 = sub_252A39DB8(v3);

  if (qword_27F53F550 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544E98);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E72FD0);
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v12)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  if ((v12 & 1) == 0)
  {
    v11 = v24;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E72FF0);
  v16 = v26 == v5;
  v17 = v26 != v5;
  if (v26 == v5)
  {
    v18 = 0x65736C6166;
  }

  else
  {
    v18 = 1702195828;
  }

  v19 = (v26 == v5) & ~v12;
  v20 = (v12 | v17) & 1;
  if (v16)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v18, v21);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E72A80);

  *a2 = v11;
  *(a2 + 8) = v20;
  *(a2 + 9) = v19;
  return result;
}

uint64_t sub_252A3625C(uint64_t a1)
{
  v1 = sub_252B680FC(a1);
  swift_beginAccess();
  v2 = *(v1 + 208);
  [v2 lock];
  *(v1 + 200) = 1;
  [v2 unlock];
  swift_endAccess();

  v3 = sub_252A3C1E0();
  sub_252A3E31C(v3);
}

unint64_t *sub_252A362EC@<X0>(unint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v9 = MEMORY[0x277D84F90];
  if (!(*result >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  result = sub_252E378C4();
  v3 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      sub_252E349D4();

      if (v8)
      {
        break;
      }

      v6 = (v6 + 1);
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x2530AD700](result);
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    result = sub_252E372D4();
    v5 = v9;
  }

  while (v4 != v3);
LABEL_22:
  *a2 = v5;
  return result;
}

void sub_252A36464(__int128 *a1@<X8>)
{
  v139 = a1;
  v3 = sub_252E34B94();
  v130 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34804();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v118 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v118 - v14;
  type metadata accessor for HomeFilter();
  v16 = sub_252E36BD4();
  v136 = v3;
  v137 = v7;
  v126 = v13;
  v127 = v15;
  v138 = v6;
  if (v16)
  {
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v151 = 0u;
    LOBYTE(v156[0]) = 52;
    *(v156 + 1) = v165[0];
    DWORD1(v156[0]) = *(v165 + 3);
    *(v156 + 8) = 0u;
    *(&v156[1] + 8) = 0u;
    *(&v156[2] + 8) = 0u;
    *(&v156[3] + 1) = 0;
    v157 = 1282;
    v18 = v16;
    sub_2529AEC80(&v151);
    v120 = v18;
    sub_252A379FC(&v158);
    v19 = *(&v158 + 1);
    v20 = v158;
    v21 = *(&v159 + 1);
    v22 = v159;
    v23 = *(&v160 + 1);
    v5 = v160;
    v137 = *(&v161 + 1);
    v138 = v161;
    v135 = *(&v162 + 1);
    v136 = v162;
    LODWORD(v134) = LOBYTE(v163[0]);
    v165[0] = *(v163 + 1);
    *(v165 + 3) = DWORD1(v163[0]);
    v24 = *(&v163[0] + 1);
    v25 = *&v163[1];
    v126 = *&v163[2];
    v127 = *(&v163[1] + 1);
    v122 = *&v163[3];
    v123 = *(&v163[2] + 1);
    v2 = *(&v163[3] + 1);
    v121 = v164;
    v119 = HIBYTE(v164);
    if (qword_27F53F550 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_3;
  }

  v22 = v1;
  sub_252E36C14();
  v49 = sub_252E35A04();

  v50 = v49;
  v51 = *(v49 + 16);
  v128 = v1;
  v23 = v139;
  v135 = v51;
  if (v51)
  {
    v52 = 0;
    v53 = v137;
    v54 = v138;
    v134 = v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v133 = (v137 + 16);
    LODWORD(v132) = *MEMORY[0x277D5E6D8];
    v55 = v130;
    v130 = (v130 + 8);
    v131 = v55 + 104;
    v129 = (v137 + 8);
    v56 = v136;
    do
    {
      if (v52 >= *(v50 + 16))
      {
        __break(1u);
        swift_once();
        v17 = sub_252E36AD4();
        __swift_project_value_buffer(v17, qword_27F544E98);
        *&v158 = 0;
        *(&v158 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E72BA0);
        *&v151 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC4050(v158, *(&v158 + 1), 0xD000000000000075, 0x8000000252E72A80, 0xD000000000000019, 0x8000000252E72BD0, 485);

        v36 = 0;
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v34 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v27 = 0;
        v47 = 0;
        v29 = 0;
        v30 = 0;
        v41 = 5;
        v31 = 2;
        v2 = 0;
        v48 = 52;
        v23 = v139;
        goto LABEL_102;
      }

      v57 = v50;
      (*(v53 + 16))(v10, v134 + *(v53 + 72) * v52, v54);
      v58 = sub_252E347F4();
      v60 = v59;
      (*v131)(v5, v132, v56);
      v61 = sub_252E34B84();
      v63 = v62;
      (*v130)(v5, v56);
      if (v60)
      {
        if (v58 == v61 && v60 == v63)
        {

LABEL_59:

          v96 = v138;
          v97 = v126;
          v98 = *(v137 + 32);
          v98(v126, v10, v138);
          v158 = 0u;
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          LOBYTE(v163[0]) = 52;
          *(v163 + 1) = v165[0];
          v19 = &v158;
          DWORD1(v163[0]) = *(v165 + 3);
          *(v163 + 8) = 0u;
          *(&v163[1] + 8) = 0u;
          *(&v163[2] + 8) = 0u;
          *(&v163[3] + 1) = 0;
          v164 = 1282;
          sub_2529AEC80(&v158);
          v5 = v127;
          v98(v127, v97, v96);
          sub_252E36C14();
          v99 = sub_252E359F4();

          v23 = v139;
          if (!*(v99 + 16))
          {
            goto LABEL_67;
          }

          v100 = sub_252A44A10(1701667182, 0xE400000000000000);
          if ((v101 & 1) == 0)
          {
            goto LABEL_67;
          }

          v85 = *(*(v99 + 56) + 8 * v100);

          if (!(v85 >> 62))
          {
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

LABEL_67:

            v36 = 0;
            v133 = 0;
LABEL_68:
            v103 = sub_252E347E4();
            v105 = sub_252A3C504(v103, v104);
            if (v105 <= 2u)
            {
              v106 = v105;
              goto LABEL_77;
            }

            if (v105 > 4u)
            {
              if (v105 == 5)
              {
                v106 = v105;
                goto LABEL_77;
              }

              v106 = 5;
            }

            else
            {
              if (v105 == 3)
              {

                goto LABEL_78;
              }

              v106 = v105;
LABEL_77:
              v107 = sub_252E37DB4();

              if (v107)
              {
LABEL_78:
                *&v143 = v36;
                *(&v143 + 1) = v133;
                v144 = 0u;
                v145 = 0u;
                v146 = 0u;
                v147 = 0u;
                LOBYTE(v148[0]) = 52;
                *(v148 + 1) = v165[0];
                DWORD1(v148[0]) = *(v19 + 171);
                *(v148 + 8) = 0u;
                *(&v148[1] + 8) = 0u;
                *(&v148[2] + 8) = 0u;
                *(&v148[3] + 1) = 0;
                v149 = 1282;
                sub_2529AEC80(&v143);
                if (qword_27F53F550 == -1)
                {
LABEL_79:
                  v108 = sub_252E36AD4();
                  __swift_project_value_buffer(v108, qword_27F544E98);
                  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E72C80, 0xD000000000000075, 0x8000000252E72A80);
                  (*v129)(v5, v138);
                  sub_25297DE88(&v151);
                  v109 = v156[2];
                  v23[6] = v156[1];
                  v23[7] = v109;
                  v23[8] = v156[3];
                  *(v23 + 72) = v157;
                  v110 = v154;
                  v23[2] = v153;
                  v23[3] = v110;
                  v111 = v156[0];
                  v23[4] = v155;
                  v23[5] = v111;
                  v112 = v151;
                  v113 = v152;
                  goto LABEL_103;
                }

LABEL_91:
                swift_once();
                goto LABEL_79;
              }
            }

            (*v129)(v5, v138);
            v35 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v34 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v27 = 0;
            v47 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 2;
            v2 = 0;
            v48 = 52;
            v37 = v133;
            v41 = v106;
            goto LABEL_102;
          }

          if (!sub_252E378C4())
          {
            goto LABEL_67;
          }

LABEL_63:
          if ((v85 & 0xC000000000000001) == 0)
          {
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

LABEL_66:

              v36 = sub_252E358E4();
              v133 = v102;

              goto LABEL_68;
            }

            __break(1u);
LABEL_108:
            swift_once();
LABEL_101:
            v114 = sub_252E36AD4();
            __swift_project_value_buffer(v114, qword_27F544E98);
            *&v143 = 0;
            *(&v143 + 1) = 0xE000000000000000;
            sub_252E379F4();
            *v142 = v143;
            MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E72C40);
            v148[1] = v163[1];
            v148[2] = v163[2];
            v148[3] = v163[3];
            v149 = v164;
            v145 = v160;
            v146 = v161;
            v147 = v162;
            v148[0] = v163[0];
            v143 = v158;
            v144 = v159;
            sub_252E37AE4();
            sub_252CC3D90(v142[0], v142[1], 0xD000000000000075, 0x8000000252E72A80);

            v37 = *(&v158 + 1);
            v36 = v158;
            v38 = *(&v159 + 1);
            v35 = v159;
            v40 = *(&v160 + 1);
            v39 = v160;
            v42 = *(&v161 + 1);
            v34 = v161;
            v44 = *(&v162 + 1);
            v43 = v162;
            v48 = v163[0];
            v165[0] = *(v163 + 1);
            *(v165 + 3) = DWORD1(v163[0]);
            v45 = *(&v163[0] + 1);
            v27 = *(&v163[1] + 1);
            v46 = *&v163[1];
            v29 = *(&v163[2] + 1);
            v47 = *&v163[2];
            v2 = *(&v163[3] + 1);
            v30 = *&v163[3];
            v31 = v164;
            v41 = HIBYTE(v164);
            goto LABEL_102;
          }

LABEL_106:
          MEMORY[0x2530ADF00](0, v85);
          goto LABEL_66;
        }

        v64 = sub_252E37DB4();

        if (v64)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }

      ++v52;
      v54 = v138;
      (*v129)(v10, v138);
      v53 = v137;
      v50 = v57;
    }

    while (v135 != v52);

    v23 = v139;
    v19 = &v158;
    v22 = v128;
  }

  else
  {

    v19 = &v158;
  }

  v66 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v65);
  sub_252929E74((v66 + 288), &v158);

  v67 = *(&v159 + 1);
  v25 = v160;
  __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
  v68 = (*(v25 + 88))(v67, v25);
  __swift_destroy_boxed_opaque_existential_1(&v158);
  if ((v68 & 1) == 0)
  {
LABEL_43:
    sub_252E36C14();
    v81 = sub_252E359F4();

    if (*(v81 + 16))
    {
      v82 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
      if (v83)
      {
        v74 = *(*(v81 + 56) + 8 * v82);

        if ((v74 & 0xC000000000000001) != 0)
        {
LABEL_89:
          MEMORY[0x2530ADF00](0, v74);
        }

        else
        {
          if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_91;
          }
        }

        v84 = sub_252E358F4();

        if (*(v84 + 16))
        {
          v85 = sub_252B0AB50(v84);

          if (v85 >> 62)
          {
            if (sub_252E378C4())
            {
LABEL_51:
              v161 = 0u;
              v162 = 0u;
              v159 = 0u;
              v160 = 0u;
              v158 = 0u;
              LOBYTE(v163[0]) = 52;
              *(v19 + 81) = v165[0];
              DWORD1(v163[0]) = *(v19 + 171);
              *(v19 + 88) = 0u;
              *(v19 + 104) = 0u;
              *(v19 + 120) = 0u;
              *(&v163[3] + 1) = 0;
              v164 = 1282;
              sub_2529AEC80(&v158);
              if ((v85 & 0xC000000000000001) != 0)
              {
                v86 = MEMORY[0x2530ADF00](0, v85);
              }

              else
              {
                if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_106;
                }

                v86 = *(v85 + 32);
              }

              v134 = v86;

              v87 = sub_252968368();
              sub_252A379FC(&v151);

              v88 = v151;
              v89 = v152;
              v131 = v153;
              v132 = *(&v152 + 1);
              v90 = *(&v153 + 1);
              v137 = *(&v154 + 1);
              v138 = v154;
              v135 = *(&v155 + 1);
              v136 = v155;
              v48 = v156[0];
              v165[0] = *(v156 + 1);
              *(v19 + 171) = DWORD1(v156[0]);
              v129 = *(&v156[0] + 1);
              v130 = v90;
              v127 = *(&v156[1] + 1);
              v128 = *&v156[1];
              v29 = *(&v156[2] + 1);
              v126 = *&v156[2];
              v2 = *(&v156[3] + 1);
              v30 = *&v156[3];
              v31 = v157;
              v91 = HIBYTE(v157);
              if (qword_27F53F550 != -1)
              {
                swift_once();
              }

              v92 = sub_252E36AD4();
              v123 = __swift_project_value_buffer(v92, qword_27F544E98);
              *&v151 = 0;
              *(&v151 + 1) = 0xE000000000000000;
              sub_252E379F4();
              v150 = v151;
              MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E72BF0);
              v124 = v89;
              v133 = (v88 >> 64);
              v125 = v88;
              v151 = v88;
              *&v152 = v89;
              *(&v152 + 1) = v132;
              *&v153 = v131;
              *(&v153 + 1) = v130;
              *&v154 = v138;
              *(&v154 + 1) = v137;
              *&v155 = v136;
              *(&v155 + 1) = v135;
              LOBYTE(v156[0]) = v48;
              *(v156 + 1) = v165[0];
              DWORD1(v156[0]) = *(v165 + 3);
              *(&v156[0] + 1) = v129;
              *&v156[1] = v128;
              v93 = v126;
              *(&v156[1] + 1) = v127;
              *&v156[2] = v126;
              *(&v156[2] + 1) = v29;
              *&v156[3] = v30;
              *(&v156[3] + 1) = v2;
              LOBYTE(v157) = v31;
              v94 = v91;
              HIBYTE(v157) = v91;
              v148[1] = v156[1];
              v148[2] = v156[2];
              v148[3] = v156[3];
              v149 = v157;
              v147 = v155;
              v148[0] = v156[0];
              v145 = v153;
              v146 = v154;
              v143 = v88;
              v144 = v152;
              sub_25297DE08(&v151, v142);
              v95 = sub_252E36F94();
              MEMORY[0x2530AD570](v95);

              sub_252CC3D90(v150, *(&v150 + 1), 0xD000000000000075, 0x8000000252E72A80);

              v34 = v138;
              v23 = v139;
              v35 = v124;
              v36 = v125;
              v37 = v133;
              v38 = v132;
              v40 = v130;
              v39 = v131;
              v41 = v94;
              v43 = v136;
              v42 = v137;
              v44 = v135;
              v46 = v128;
              v45 = v129;
              v27 = v127;
              v47 = v93;
              goto LABEL_102;
            }
          }

          else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }
        }
      }
    }

    v36 = 0;
    v37 = 0;
    v35 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v34 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v27 = 0;
    v47 = 0;
    v29 = 0;
    v30 = 0;
    v41 = 5;
    v31 = 2;
    v2 = 0;
    v48 = 52;
    goto LABEL_102;
  }

  sub_252E36C14();
  v69 = sub_252E359F4();

  if (!*(v69 + 16) || (v70 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v71 & 1) == 0))
  {
LABEL_42:

    goto LABEL_43;
  }

  v24 = *(*(v69 + 56) + 8 * v70);

  if (v24 >> 62)
  {
    v72 = sub_252E378C4();
    if (v72)
    {
      goto LABEL_21;
    }

    goto LABEL_97;
  }

  v72 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
LABEL_97:
    v21 = MEMORY[0x277D84F90];
LABEL_98:

    sub_252A37CB0(v21, v140);

    v163[1] = v140[6];
    v163[2] = v140[7];
    v163[3] = v140[8];
    v164 = v141;
    v160 = v140[2];
    v161 = v140[3];
    v162 = v140[4];
    v163[0] = v140[5];
    v158 = v140[0];
    v159 = v140[1];
    if (sub_25297DE64(&v158) != 1)
    {
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v151 = 0u;
      LOBYTE(v156[0]) = 52;
      *(v156 + 1) = v165[0];
      DWORD1(v156[0]) = *(v165 + 3);
      *(v156 + 8) = 0u;
      *(&v156[1] + 8) = 0u;
      *(&v156[2] + 8) = 0u;
      *(&v156[3] + 1) = 0;
      v157 = 1282;
      sub_2529AEC80(&v151);
      if (qword_27F53F550 != -1)
      {
        goto LABEL_108;
      }

      goto LABEL_101;
    }

    v19 = &v158;
    goto LABEL_43;
  }

LABEL_21:
  v20 = 0;
  v137 = v24 & 0xFFFFFFFFFFFFFF8;
  v138 = v24 & 0xC000000000000001;
  v21 = MEMORY[0x277D84F90];
  v136 = v72;
  while (v138)
  {
    v19 = v23;
    MEMORY[0x2530ADF00](v20, v24);
    v23 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_27:
    v25 = sub_252E35914();

    v74 = *(v25 + 16);
    v5 = v21[2];
    v22 = &v5[v74];
    if (__OFADD__(v5, v74))
    {
      goto LABEL_84;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v22 > v21[3] >> 1)
    {
      if (v5 <= v22)
      {
        v76 = &v5[v74];
      }

      else
      {
        v76 = v5;
      }

      v21 = sub_2529F85F4(isUniquelyReferenced_nonNull_native, v76, 1, v21);
    }

    v22 = v128;
    if (*(v25 + 16))
    {
      v5 = v21[2];
      v77 = (v21[3] >> 1) - v5;
      sub_252E34724();
      if (v77 < v74)
      {
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      v22 = v128;
      if (v74)
      {
        v78 = v21[2];
        v79 = __OFADD__(v78, v74);
        v80 = v78 + v74;
        if (v79)
        {
          goto LABEL_88;
        }

        v21[2] = v80;
      }
    }

    else
    {

      if (v74)
      {
        goto LABEL_85;
      }
    }

    ++v20;
    v73 = v23 == v136;
    v23 = v19;
    if (v73)
    {
      goto LABEL_98;
    }
  }

  if (v20 < *(v137 + 16))
  {
    v19 = v23;

    v23 = (v20 + 1);
    if (__OFADD__(v20, 1))
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_3:
  v26 = sub_252E36AD4();
  v118 = __swift_project_value_buffer(v26, qword_27F544E98);
  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v150 = v158;
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E72CA0);
  v124 = v22;
  v125 = v20;
  *&v158 = v20;
  v132 = v21;
  v133 = v19;
  *(&v158 + 1) = v19;
  *&v159 = v22;
  *(&v159 + 1) = v21;
  v130 = v23;
  v131 = v5;
  *&v160 = v5;
  *(&v160 + 1) = v23;
  *&v161 = v138;
  *(&v161 + 1) = v137;
  *&v162 = v136;
  *(&v162 + 1) = v135;
  LOBYTE(v163[0]) = v134;
  *(v163 + 1) = v165[0];
  DWORD1(v163[0]) = *(v165 + 3);
  v128 = v25;
  v129 = v24;
  *(&v163[0] + 1) = v24;
  *&v163[1] = v25;
  v28 = v126;
  v27 = v127;
  *(&v163[1] + 1) = v127;
  *&v163[2] = v126;
  v30 = v122;
  v29 = v123;
  *(&v163[2] + 1) = v123;
  *&v163[3] = v122;
  *(&v163[3] + 1) = v2;
  v31 = v121;
  LOBYTE(v164) = v121;
  v32 = v119;
  HIBYTE(v164) = v119;
  v148[1] = v163[1];
  v148[2] = v163[2];
  v148[3] = v163[3];
  v149 = v164;
  v147 = v162;
  v148[0] = v163[0];
  v145 = v160;
  v146 = v161;
  v143 = v158;
  v144 = v159;
  sub_25297DE08(&v158, v142);
  v33 = sub_252E36F94();
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v150, *(&v150 + 1), 0xD000000000000075, 0x8000000252E72A80);

  v34 = v138;
  v23 = v139;
  v35 = v124;
  v36 = v125;
  v37 = v133;
  v38 = v132;
  v40 = v130;
  v39 = v131;
  v41 = v32;
  v43 = v136;
  v42 = v137;
  v44 = v135;
  v46 = v128;
  v45 = v129;
  v47 = v28;
  v48 = v134;
LABEL_102:
  *&v158 = v36;
  *(&v158 + 1) = v37;
  *&v159 = v35;
  *(&v159 + 1) = v38;
  *&v160 = v39;
  *(&v160 + 1) = v40;
  *&v161 = v34;
  *(&v161 + 1) = v42;
  *&v162 = v43;
  *(&v162 + 1) = v44;
  LOBYTE(v163[0]) = v48;
  *(v163 + 1) = v165[0];
  DWORD1(v163[0]) = *(v165 + 3);
  *(&v163[0] + 1) = v45;
  *&v163[1] = v46;
  *(&v163[1] + 1) = v27;
  *&v163[2] = v47;
  *(&v163[2] + 1) = v29;
  *&v163[3] = v30;
  *(&v163[3] + 1) = v2;
  LOBYTE(v164) = v31;
  HIBYTE(v164) = v41;
  GEOLocationCoordinate2DMake();
  v115 = v163[2];
  v23[6] = v163[1];
  v23[7] = v115;
  v23[8] = v163[3];
  *(v23 + 72) = v164;
  v116 = v161;
  v23[2] = v160;
  v23[3] = v116;
  v117 = v163[0];
  v23[4] = v162;
  v23[5] = v117;
  v112 = v158;
  v113 = v159;
LABEL_103:
  *v23 = v112;
  v23[1] = v113;
}

void sub_252A379FC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 groupName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v44 = v7;
    v45 = v6;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  if ([v2 entityType] == 7 && (v8 = objc_msgSend(v2, sel_homeEntityName)) != 0)
  {
    v9 = v8;
    v10 = sub_252E36F34();
    v42 = v11;
    v43 = v10;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  if ([v2 entityType] == 5 && (v12 = objc_msgSend(v2, sel_homeEntityName)) != 0)
  {
    v13 = v12;
    v14 = sub_252E36F34();
    v40 = v15;
    v41 = v14;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v16 = [v2 outerDeviceName];
  if (v16)
  {
    v17 = v16;
    v39 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v39 = 0;
    v19 = 0;
  }

  [v2 deviceType];
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v20 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v21 = sub_252A488EC(), (v22 & 1) != 0))
  {
    v23 = *(v20[7] + v21);
  }

  else
  {
    v23 = 52;
  }

  v24 = [v2 roomName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_252E36F34();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [v2 zoneName];
  if (v29)
  {
    v30 = v29;
    v31 = sub_252E36F34();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [v2 homeName];
  if (v34)
  {
    v35 = v34;
    v36 = sub_252E36F34();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v45;
  *(a1 + 24) = v44;
  *(a1 + 32) = v43;
  *(a1 + 40) = v42;
  *(a1 + 48) = v41;
  *(a1 + 56) = v40;
  *(a1 + 64) = v39;
  *(a1 + 72) = v19;
  *(a1 + 80) = v23;
  *(a1 + 88) = v26;
  *(a1 + 96) = v28;
  *(a1 + 104) = v31;
  *(a1 + 112) = v33;
  *(a1 + 120) = v36;
  *(a1 + 128) = v38;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1282;
}

void sub_252A37CB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v146 = sub_252E34B94();
  v5 = *(v146 - 8);
  v6 = MEMORY[0x28223BE20](v146);
  v135 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v113 - v8;
  v150 = sub_252E34694();
  v10 = *(v150 - 8);
  v11 = MEMORY[0x28223BE20](v150);
  v137 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v113 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v113 - v16;
  MEMORY[0x28223BE20](v15);
  v121 = &v113 - v17;
  v18 = sub_252E34724();
  MEMORY[0x28223BE20](v18);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(a1 + 16);
  if (v130)
  {
    v132 = v21;
    v22 = 0;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v128 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v129 = v24;
    v145 = v10 + 16;
    v139 = *MEMORY[0x277D5E6E0];
    v143 = (v5 + 8);
    v144 = (v5 + 104);
    v142 = (v10 + 8);
    v122 = (v10 + 32);
    v133 = *MEMORY[0x277D5E6E8];
    v124 = (v23 - 8);
    v127 = *(v23 + 56);
    v118 = MEMORY[0x277D84F90];
    v134 = v9;
    v138 = v10;
    v125 = v23;
    v126 = v18;
    do
    {
      v131 = v22;
      v129(v132, v128 + v127 * v22, v18);
      v25 = sub_252E346D4();
      v147 = *(v25 + 16);
      if (v147)
      {
        v26 = 0;
        v148 = v25;
        while (1)
        {
          if (v26 >= *(v25 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v140 = *(v10 + 72);
          *(&v141 + 1) = *(v10 + 16);
          (*(&v141 + 1))(v149, v25 + v27 + v140 * v26, v150);
          v3 = sub_252E34674();
          v2 = v28;
          v29 = v146;
          *&v141 = *v144;
          (v141)(v9, v139, v146);
          v30 = sub_252E34B84();
          v32 = v31;
          v33 = *v143;
          (*v143)(v9, v29);
          if (v3 == v30 && v2 == v32)
          {
            break;
          }

          v34 = sub_252E37DB4();

          if (v34)
          {
            goto LABEL_14;
          }

          ++v26;
          (*v142)(v149, v150);
          v25 = v148;
          v10 = v138;
          if (v147 == v26)
          {
            goto LABEL_3;
          }
        }

LABEL_14:
        v35 = v121;
        v3 = *v122;
        v36 = v150;
        (*v122)(v121, v149, v150);
        v2 = sub_252E34654();
        v38 = v37;
        v136 = *v142;
        v136(v35, v36);
        if (v38)
        {
          v119 = v2;
          v120 = v3;
          v123 = v38;
          v39 = 0;
          v40 = v148;
          v2 = v148 + v27;
          while (1)
          {
            if (v39 >= *(v40 + 16))
            {
              goto LABEL_71;
            }

            (*(&v141 + 1))(v137, v2, v150);
            v41 = sub_252E34674();
            v43 = v42;
            v44 = v135;
            v45 = v146;
            (v141)(v135, v133, v146);
            v3 = sub_252E34B84();
            v47 = v46;
            v33(v44, v45);
            if (v41 == v3 && v43 == v47)
            {
              break;
            }

            v48 = sub_252E37DB4();

            if (v48)
            {
              goto LABEL_24;
            }

            ++v39;
            v136(v137, v150);
            v2 += v140;
            v40 = v148;
            v9 = v134;
            if (v147 == v39)
            {

              v18 = v126;
              (*v124)(v132, v126);
              v10 = v138;
              goto LABEL_4;
            }
          }

LABEL_24:

          v9 = v134;
          v49 = v117;
          v50 = v150;
          (v120)(v117, v137, v150);
          v2 = sub_252E34654();
          v52 = v51;
          v136(v49, v50);
          v18 = v126;
          if (!v52)
          {
            (*v124)(v132, v126);
            goto LABEL_38;
          }

          v53 = v132;
          v54 = sub_252E346C4();
          if (!v55)
          {
            (*v124)(v53, v18);

            goto LABEL_38;
          }

          v56 = v54;
          v57 = v55;
          if (qword_27F53F270 != -1)
          {
            swift_once();
          }

          v58 = off_27F541BA0;
          if (!*(off_27F541BA0 + 2))
          {

            goto LABEL_40;
          }

          v59 = sub_252A44A10(v2, v52);
          v61 = v60;

          if ((v61 & 1) == 0)
          {
            goto LABEL_40;
          }

          v62 = *(v58[7] + 8 * v59);
          if (v62 <= 4)
          {
            if (v62 <= 2)
            {
              if (v62 == 1)
              {
                v63 = 0;
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v74 = 0;
                v75 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v71 = 0;
                v72 = 0;
                v73 = 52;
                v77 = v123;
                v76 = v119;
                goto LABEL_55;
              }

              if (v62 != 2)
              {
                goto LABEL_40;
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = 0;
              v74 = 0;
              v75 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v73 = 52;
              v71 = v119;
              v72 = v123;
              goto LABEL_54;
            }

            if (v62 == 3)
            {
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = 0;
              v74 = 0;
              v75 = 0;
              v68 = 0;
              v69 = 0;
              v71 = 0;
              v72 = 0;
              v73 = 52;
              v63 = v119;
              v70 = v123;
              goto LABEL_54;
            }
          }

          else
          {
            if (v62 <= 7)
            {
              if (v62 != 5)
              {
                if (v62 != 7)
                {
                  goto LABEL_40;
                }

                v78._countAndFlagsBits = v119;
                v78._object = v123;
                AccessoryTypeSemantic.init(rawValue:)(v78);
                v63 = 0;
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v74 = 0;
                v75 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v71 = 0;
                v72 = 0;
                v76 = 0;
                v77 = 0;
                v73 = v162;
LABEL_55:
                *&v162 = v56;
                *(&v162 + 1) = v57;
                v3 = v57;
                v116 = v69;
                *&v163 = v69;
                *(&v163 + 1) = v68;
                v136 = v68;
                *&v141 = v75;
                *(&v141 + 1) = v74;
                *&v164 = v75;
                *(&v164 + 1) = v74;
                v147 = v67;
                v148 = v63;
                *&v165 = v67;
                *(&v165 + 1) = v66;
                v79 = v66;
                v2 = v65;
                *&v166 = v65;
                *(&v166 + 1) = v64;
                v80 = v64;
                v114 = v73;
                LOBYTE(v167) = v73;
                *(&v167 + 1) = v63;
                *&v168 = v70;
                v140 = v70;
                v119 = v76;
                v120 = v71;
                *(&v168 + 1) = v71;
                *&v169 = v72;
                v115 = v72;
                *(&v169 + 1) = v76;
                v170 = v77;
                v123 = v77;
                v171 = 1282;
                sub_25297DE08(&v162, &v152);
                v81 = v56;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v118 = sub_2529F84A8(0, *(v118 + 2) + 1, 1, v118);
                }

                v83 = *(v118 + 2);
                v82 = *(v118 + 3);
                if (v83 >= v82 >> 1)
                {
                  v118 = sub_2529F84A8((v82 > 1), v83 + 1, 1, v118);
                }

                (*v124)();
                v84 = v118;
                *(v118 + 2) = v83 + 1;
                v85 = &v84[152 * v83];
                v86 = v163;
                *(v85 + 2) = v162;
                *(v85 + 3) = v86;
                v87 = v164;
                v88 = v165;
                v89 = v167;
                *(v85 + 6) = v166;
                *(v85 + 7) = v89;
                *(v85 + 4) = v87;
                *(v85 + 5) = v88;
                v90 = v168;
                v91 = v169;
                v92 = v170;
                *(v85 + 88) = v171;
                *(v85 + 9) = v91;
                *(v85 + 10) = v92;
                *(v85 + 8) = v90;
                *&v152 = v81;
                *(&v152 + 1) = v3;
                *&v153 = v116;
                *(&v153 + 1) = v136;
                v154 = v141;
                *&v155 = v147;
                *(&v155 + 1) = v79;
                *&v156 = v2;
                *(&v156 + 1) = v80;
                LOBYTE(v157) = v114;
                *(&v157 + 1) = *v151;
                DWORD1(v157) = *&v151[3];
                *(&v157 + 1) = v148;
                *&v158 = v140;
                *(&v158 + 1) = v120;
                *&v159 = v115;
                *(&v159 + 1) = v119;
                v160 = v123;
                v161 = 1282;
                sub_2529AEC80(&v152);
                v10 = v138;
                goto LABEL_4;
              }

              v63 = 0;
              v64 = 0;
              v65 = 0;
              v74 = 0;
              v75 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = 52;
              v66 = v123;
              v67 = v119;
LABEL_54:
              v76 = 0;
              v77 = 0;
              goto LABEL_55;
            }

            if (v62 != 8)
            {
              if (v62 != 9)
              {
                if (v62 == 10)
                {
                  v63 = 0;
                  v64 = 0;
                  v65 = 0;
                  v66 = 0;
                  v67 = 0;
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  v73 = 52;
                  v74 = v123;
                  v75 = v119;
                  goto LABEL_54;
                }

LABEL_40:

                v63 = 0;
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v74 = 0;
                v75 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v71 = 0;
                v72 = 0;
                v76 = 0;
                v77 = 0;
                v73 = 52;
                goto LABEL_55;
              }

              v63 = 0;
              v66 = 0;
              v67 = 0;
              v74 = 0;
              v75 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = 52;
              v64 = v123;
              v65 = v119;
              goto LABEL_54;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v74 = 0;
          v75 = 0;
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = 52;
          v68 = v123;
          v69 = v119;
          goto LABEL_54;
        }

        v18 = v126;
        (*v124)(v132, v126);
LABEL_38:

        v10 = v138;
      }

      else
      {
LABEL_3:

        v18 = v126;
        (*v124)(v132, v126);
      }

LABEL_4:
      v22 = v131 + 1;
    }

    while (v131 + 1 != v130);
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

  v2 = 0xD00000000000001FLL;
  v93 = *(v118 + 2);
  v9 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/SiriReferenceResolution.swift";
  v3 = "getReferencedEntityValue(from:)";
  if (v93 < 2)
  {
    if (v93)
    {
      v96 = *(v118 + 9);
      v158 = *(v118 + 8);
      v159 = v96;
      v160 = *(v118 + 10);
      v161 = *(v118 + 88);
      v97 = *(v118 + 5);
      v154 = *(v118 + 4);
      v155 = v97;
      v98 = *(v118 + 7);
      v156 = *(v118 + 6);
      v157 = v98;
      v99 = *(v118 + 3);
      v152 = *(v118 + 2);
      v153 = v99;
      sub_25297DE08(&v152, &v162);

      v168 = v158;
      v169 = v159;
      v170 = v160;
      v171 = v161;
      v164 = v154;
      v165 = v155;
      v166 = v156;
      v167 = v157;
      v162 = v152;
      v163 = v153;
      GEOLocationCoordinate2DMake();
      v100 = v169;
      v101 = v113;
      *(v113 + 96) = v168;
      *(v101 + 112) = v100;
      *(v101 + 128) = v170;
      *(v101 + 144) = v171;
      v102 = v165;
      *(v101 + 32) = v164;
      *(v101 + 48) = v102;
      v103 = v167;
      *(v101 + 64) = v166;
      *(v101 + 80) = v103;
      v104 = v162;
      v105 = v163;
      goto LABEL_69;
    }
  }

  else
  {
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v94 = sub_252E36AD4();
    __swift_project_value_buffer(v94, qword_27F544E98);
    *&v162 = 0;
    *(&v162 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000004CLL, 0x8000000252E72D40);
    v95 = MEMORY[0x2530AD730](v118, &type metadata for ReferencedEntityValue);
    MEMORY[0x2530AD570](v95);

    sub_252CC4050(v162, *(&v162 + 1), 0xD000000000000075, 0x8000000252E72A80, 0xD00000000000001FLL, 0x8000000252E72D20, 549);
  }

  if (qword_27F53F550 != -1)
  {
LABEL_72:
    swift_once();
  }

  v106 = sub_252E36AD4();
  __swift_project_value_buffer(v106, qword_27F544E98);
  *&v162 = 0;
  *(&v162 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v2 + 24, 0x8000000252E72CE0);
  v107 = MEMORY[0x2530AD730](v118, &type metadata for ReferencedEntityValue);
  v109 = v108;

  MEMORY[0x2530AD570](v107, v109);

  sub_252CC4050(v162, *(&v162 + 1), v2 + 86, (v9 - 32) | 0x8000000000000000, 0xD00000000000001FLL, (v3 - 32) | 0x8000000000000000, 556);

  sub_25297DE88(&v162);
  v110 = v169;
  v101 = v113;
  *(v113 + 96) = v168;
  *(v101 + 112) = v110;
  *(v101 + 128) = v170;
  *(v101 + 144) = v171;
  v111 = v165;
  *(v101 + 32) = v164;
  *(v101 + 48) = v111;
  v112 = v167;
  *(v101 + 64) = v166;
  *(v101 + 80) = v112;
  v104 = v162;
  v105 = v163;
LABEL_69:
  *v101 = v104;
  *(v101 + 16) = v105;
}

uint64_t sub_252A38B98(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = (*(a1 + 48) + 152 * (__clz(__rbit64(v6)) | (v9 << 6)));
        v22 = v11[2];
        v23 = v11[3];
        v24 = v11[4];
        v25 = v11[5];
        v20 = *v11;
        v21 = v11[1];
        v12 = sub_252A33F8C();
        MEMORY[0x2530AD700](v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        v6 &= v6 - 1;
        result = sub_252E372D4();
        v2 = v26;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A38D08()
{
  v0 = sub_252E34874();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v60 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v59 = &v54 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v54 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v54 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v54 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BE8, &qword_252E41DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  v20 = *(v1 + 104);
  v20(v18, *MEMORY[0x277D5E508], v0);
  v21 = sub_252E34854();
  v23 = v22;
  v24 = *(v1 + 8);
  v24(v18, v0);
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  *(inited + 48) = 1;
  v20(v16, *MEMORY[0x277D5E530], v0);
  v25 = sub_252E34854();
  v27 = v26;
  v24(v16, v0);
  *(inited + 56) = v25;
  *(inited + 64) = v27;
  *(inited + 72) = 2;
  v28 = v55;
  v20(v55, *MEMORY[0x277D5E528], v0);
  v29 = sub_252E34854();
  v31 = v30;
  v24(v28, v0);
  *(inited + 80) = v29;
  *(inited + 88) = v31;
  *(inited + 96) = 3;
  v32 = v56;
  v20(v56, *MEMORY[0x277D5E550], v0);
  v33 = sub_252E34854();
  v35 = v34;
  v24(v32, v0);
  *(inited + 104) = v33;
  *(inited + 112) = v35;
  *(inited + 120) = 4;
  v36 = v57;
  v20(v57, *MEMORY[0x277D5E540], v0);
  v37 = sub_252E34854();
  v39 = v38;
  v24(v36, v0);
  *(inited + 128) = v37;
  *(inited + 136) = v39;
  *(inited + 144) = 6;
  v40 = v58;
  v20(v58, *MEMORY[0x277D5E538], v0);
  v41 = sub_252E34854();
  v43 = v42;
  v24(v40, v0);
  *(inited + 152) = v41;
  *(inited + 160) = v43;
  *(inited + 168) = 5;
  v44 = v59;
  v20(v59, *MEMORY[0x277D5E558], v0);
  v45 = sub_252E34854();
  v47 = v46;
  v24(v44, v0);
  *(inited + 176) = v45;
  *(inited + 184) = v47;
  *(inited + 192) = 9;
  v48 = v60;
  v20(v60, *MEMORY[0x277D5E548], v0);
  v49 = sub_252E34854();
  v51 = v50;
  v24(v48, v0);
  *(inited + 200) = v49;
  *(inited + 208) = v51;
  *(inited + 216) = 10;
  v52 = sub_252CC643C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BF0, &qword_252E41DC0);
  result = swift_arrayDestroy();
  off_27F541BA0 = v52;
  return result;
}

uint64_t sub_252A39200(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v188 = a1[4];
  v196 = a1[5];
  v182 = a1[6];
  v192 = a1[7];
  v6 = a1[9];
  v180 = a1[8];
  v7 = *(a1 + 80);
  v9 = a1[11];
  v8 = a1[12];
  v11 = a1[13];
  v10 = a1[14];
  v13 = a1[15];
  v12 = a1[16];
  v14 = *(a1 + 144);
  v15 = *(a1 + 145);
  v17 = *a2;
  v16 = a2[1];
  v18 = a2[3];
  v186 = a2[4];
  v19 = a2[5];
  v181 = a2[6];
  v190 = a2[7];
  v179 = a2[8];
  v184 = a2[9];
  v20 = *(a2 + 80);
  v22 = a2[11];
  v21 = a2[12];
  v23 = a2[13];
  v24 = a2[14];
  v26 = a2[15];
  v25 = a2[16];
  v27 = *(a2 + 144);
  v28 = *(a2 + 145);
  if (v5)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v5 != v18)
    {
      v166 = a2[13];
      v133 = a1[1];
      v172 = *(a1 + 144);
      v150 = *(a2 + 144);
      v161 = *(a2 + 145);
      v140 = a2[1];
      v145 = *a2;
      v137 = *(a1 + 145);
      v29 = *a1;
      v30 = a1[16];
      v121 = a1[12];
      v123 = a1[15];
      v125 = a2[12];
      v127 = a1[9];
      v31 = a2[16];
      v32 = a2[15];
      v33 = a1[14];
      v34 = a1[13];
      v35 = a2[14];
      v156 = a2[11];
      v36 = a1[11];
      v37 = sub_252E37DB4();
      v9 = v36;
      v22 = v156;
      v8 = v121;
      v13 = v123;
      v23 = v166;
      v24 = v35;
      v11 = v34;
      v10 = v33;
      v26 = v32;
      v25 = v31;
      v21 = v125;
      v6 = v127;
      v12 = v30;
      v4 = v29;
      v15 = v137;
      v16 = v140;
      v17 = v145;
      v28 = v161;
      v27 = v150;
      v14 = v172;
      v3 = v133;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v196)
  {
    if (!v19)
    {
      return 0;
    }

    if (v188 != v186 || v196 != v19)
    {
      v167 = v23;
      v134 = v3;
      v130 = v7;
      v38 = v4;
      v197 = v12;
      v151 = v27;
      v39 = v13;
      v141 = v16;
      v146 = v17;
      v138 = v15;
      v40 = v25;
      v126 = v21;
      v128 = v6;
      v41 = v26;
      v162 = v28;
      v42 = v10;
      v173 = v14;
      v43 = v11;
      v44 = v24;
      v45 = v8;
      v157 = v22;
      v46 = v9;
      v47 = sub_252E37DB4();
      v9 = v46;
      v22 = v157;
      v8 = v45;
      v23 = v167;
      v24 = v44;
      v11 = v43;
      v14 = v173;
      v10 = v42;
      v28 = v162;
      v26 = v41;
      v21 = v126;
      v6 = v128;
      v25 = v40;
      v15 = v138;
      v16 = v141;
      v17 = v146;
      v13 = v39;
      v27 = v151;
      v12 = v197;
      v4 = v38;
      v7 = v130;
      v3 = v134;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v192)
  {
    if (!v190)
    {
      return 0;
    }

    if (v182 != v181 || v192 != v190)
    {
      v168 = v23;
      v135 = v3;
      v131 = v7;
      v48 = v4;
      v198 = v12;
      v152 = v27;
      v49 = v13;
      v142 = v16;
      v147 = v17;
      v193 = v25;
      v129 = v6;
      v50 = v26;
      v163 = v28;
      v51 = v10;
      v174 = v14;
      v52 = v11;
      v53 = v24;
      v54 = v8;
      v158 = v22;
      v55 = v9;
      v56 = v21;
      v57 = sub_252E37DB4();
      v21 = v56;
      v9 = v55;
      v22 = v158;
      v8 = v54;
      v23 = v168;
      v24 = v53;
      v11 = v52;
      v14 = v174;
      v10 = v51;
      v28 = v163;
      v26 = v50;
      v6 = v129;
      v25 = v193;
      v12 = v198;
      v16 = v142;
      v17 = v147;
      v13 = v49;
      v27 = v152;
      v4 = v48;
      v7 = v131;
      v3 = v135;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v190)
  {
    return 0;
  }

  if (v6)
  {
    if (!v184)
    {
      return 0;
    }

    if (v180 != v179 || v6 != v184)
    {
      v169 = v23;
      v136 = v3;
      v132 = v7;
      v58 = v4;
      v199 = v12;
      v153 = v27;
      v59 = v13;
      v143 = v16;
      v148 = v17;
      v194 = v25;
      v60 = v26;
      v164 = v28;
      v61 = v10;
      v175 = v14;
      v62 = v11;
      v63 = v24;
      v64 = v8;
      v159 = v22;
      v65 = v9;
      v66 = v21;
      v67 = sub_252E37DB4();
      v21 = v66;
      v9 = v65;
      v22 = v159;
      v8 = v64;
      v23 = v169;
      v24 = v63;
      v11 = v62;
      v14 = v175;
      v10 = v61;
      v28 = v164;
      v26 = v60;
      v25 = v194;
      v12 = v199;
      v16 = v143;
      v17 = v148;
      v13 = v59;
      v27 = v153;
      v4 = v58;
      v7 = v132;
      v3 = v136;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v184)
  {
    return 0;
  }

  if (v7 == 52)
  {
    if (v20 != 52)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 52)
    {
      return 0;
    }

    v160 = v22;
    v68 = v21;
    v183 = v9;
    v185 = v24;
    v122 = v8;
    v170 = v23;
    v187 = v11;
    v189 = v10;
    v191 = v26;
    v195 = v25;
    v124 = v13;
    v200 = v12;
    v176 = v14;
    v165 = v28;
    v69 = v17;
    v70 = v16;
    v71 = v15;
    v72 = v4;
    v73 = v3;
    v74 = AccessoryTypeSemantic.rawValue.getter();
    v76 = v75;
    if (v74 == AccessoryTypeSemantic.rawValue.getter() && v76 == v77)
    {

      v3 = v73;
      v4 = v72;
      v15 = v71;
      v16 = v70;
      v17 = v69;
      v28 = v165;
      v14 = v176;
      v25 = v195;
      v12 = v200;
      v8 = v122;
      v13 = v124;
      v10 = v189;
      v26 = v191;
      v11 = v187;
      v9 = v183;
      v24 = v185;
      v23 = v170;
      v21 = v68;
      v22 = v160;
    }

    else
    {
      v78 = sub_252E37DB4();

      v3 = v73;
      v4 = v72;
      v15 = v71;
      v16 = v70;
      v17 = v69;
      v28 = v165;
      v14 = v176;
      v25 = v195;
      v12 = v200;
      v8 = v122;
      v13 = v124;
      v10 = v189;
      v26 = v191;
      v11 = v187;
      v9 = v183;
      v24 = v185;
      v23 = v170;
      v21 = v68;
      v22 = v160;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v9 != v22 || v8 != v21)
    {
      v171 = v23;
      v79 = v3;
      v80 = v4;
      v81 = v12;
      v154 = v27;
      v82 = v13;
      v144 = v16;
      v149 = v17;
      v139 = v15;
      v83 = v25;
      v84 = v26;
      v85 = v28;
      v86 = v10;
      v177 = v14;
      v87 = v11;
      v88 = v24;
      v89 = sub_252E37DB4();
      v23 = v171;
      v24 = v88;
      v11 = v87;
      v14 = v177;
      v10 = v86;
      v28 = v85;
      v26 = v84;
      v25 = v83;
      v15 = v139;
      v16 = v144;
      v17 = v149;
      v13 = v82;
      v27 = v154;
      v12 = v81;
      v4 = v80;
      v3 = v79;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v10)
  {
    if (!v24)
    {
      return 0;
    }

    if (v11 != v23 || v10 != v24)
    {
      v90 = v3;
      v91 = v4;
      v92 = v12;
      v155 = v27;
      v93 = v13;
      v178 = v14;
      v94 = v17;
      v95 = v16;
      v96 = v15;
      v97 = v25;
      v98 = v26;
      v99 = sub_252E37DB4();
      v26 = v98;
      v25 = v97;
      v15 = v96;
      v16 = v95;
      v17 = v94;
      v14 = v178;
      v13 = v93;
      v27 = v155;
      v12 = v92;
      v4 = v91;
      v3 = v90;
      if ((v99 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v12)
  {
    if (!v25)
    {
      return 0;
    }

    if (v13 != v26 || v12 != v25)
    {
      v100 = v3;
      v101 = v4;
      v102 = sub_252E37DB4();
      v4 = v101;
      v3 = v100;
      if ((v102 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v103 = 0x6E65657263536E6FLL;
  if (v14)
  {
    if (v14 == 1)
    {
      v104 = 0x61737265766E6F63;
      v105 = 0xEE006C616E6F6974;
    }

    else
    {
      v105 = 0xE400000000000000;
      v104 = 1701736302;
    }
  }

  else
  {
    v105 = 0xE800000000000000;
    v104 = 0x6E65657263536E6FLL;
  }

  v106 = v28;
  v107 = v17;
  v108 = v16;
  v109 = v15;
  if (v27)
  {
    if (v27 == 1)
    {
      v103 = 0x61737265766E6F63;
      v110 = 0xEE006C616E6F6974;
    }

    else
    {
      v110 = 0xE400000000000000;
      v103 = 1701736302;
    }
  }

  else
  {
    v110 = 0xE800000000000000;
  }

  v111 = v4;
  v112 = v3;
  if (v104 == v103 && v105 == v110)
  {

    v113 = v112;
    v114 = v111;
    v115 = v109;
    v116 = v108;
    v117 = v107;
    v118 = v106;
  }

  else
  {
    v119 = sub_252E37DB4();

    v113 = v112;
    v114 = v111;
    v115 = v109;
    v116 = v108;
    v117 = v107;
    v118 = v106;
    if ((v119 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v113)
  {
    if (!v116)
    {
      goto LABEL_77;
    }

    return 0;
  }

  if (!v116 || (v114 != v117 || v113 != v116) && (sub_252E37DB4() & 1) == 0)
  {
    return 0;
  }

LABEL_77:

  return sub_252A0C460(v115, v118);
}

unint64_t sub_252A39AE0()
{
  result = qword_27F541BB8;
  if (!qword_27F541BB8)
  {
    result = swift_getWitnessTable(asc_252E420CC, &type metadata for ReferencedEntityValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541BB8);
  }

  return result;
}

unint64_t sub_252A39B34()
{
  result = qword_27F541BC0;
  if (!qword_27F541BC0)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for EntityReferenceType, v0, v1);
    atomic_store(result, &qword_27F541BC0);
  }

  return result;
}

unint64_t sub_252A39B88()
{
  result = qword_27F541BC8;
  if (!qword_27F541BC8)
  {
    result = swift_getWitnessTable(byte_252E4207C, &type metadata for HomeAppEntityType, v0, v1);
    atomic_store(result, &qword_27F541BC8);
  }

  return result;
}

unint64_t sub_252A39BDC()
{
  result = qword_27F541BD8;
  if (!qword_27F541BD8)
  {
    result = swift_getWitnessTable(byte_252E42054, &type metadata for EntityReferenceType, v0, v1);
    atomic_store(result, &qword_27F541BD8);
  }

  return result;
}

unint64_t sub_252A39C30()
{
  result = qword_27F541BE0;
  if (!qword_27F541BE0)
  {
    result = swift_getWitnessTable(byte_252E4202C, &type metadata for HomeAppEntityType, v0, v1);
    atomic_store(result, &qword_27F541BE0);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252A39CA0()
{
  if (*(sub_252E359F4() + 16))
  {
    sub_252A44A10(0xD000000000000010, 0x8000000252E73010);
    v1 = v0;

    if (v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (*(sub_252E359F4() + 16))
  {
    sub_252A44A10(0x507473694C6F7375, 0xEF6E6F697469736FLL);
    v3 = v2;

    if (v3)
    {
LABEL_7:
      v4 = 1;
      return v4 & 1;
    }
  }

  else
  {
  }

  if (*(sub_252E359F4() + 16))
  {
    sub_252A44A10(0xD000000000000012, 0x8000000252E73030);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_252A39DB8(unint64_t a1)
{
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C20, &unk_252E5B5E0);
  v2 = MEMORY[0x28223BE20](v99);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v86 = &v86 - v5;
  v107 = sub_252E34544();
  v97 = *(v107 - 8);
  v6 = MEMORY[0x28223BE20](v107);
  v91 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v86 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v104 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v86 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v86 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v103 = &v86 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v86 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v86 - v26;
  v96 = v4;
  if (a1 >> 62)
  {
LABEL_38:
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = sub_252E378C4();
  }

  else
  {
    v105 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v18;
  v93 = v21;
  v98 = v15;
  v106 = a1 & 0xC000000000000001;
  v29 = MEMORY[0x277D84F90];
  v102 = v28;
  if (!v28)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v15 = 0;
  v30 = MEMORY[0x277D84F90];
  do
  {
    v21 = v15;
    while (1)
    {
      if (v106)
      {
        MEMORY[0x2530ADF00](v21, a1);
        v15 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v21 >= *(v105 + 16))
        {
          goto LABEL_37;
        }

        v15 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      sub_252E34554();
      sub_252E34E24();
      if (v109)
      {
        break;
      }

LABEL_7:
      ++v21;
      if (v15 == v102)
      {
        goto LABEL_24;
      }
    }

    v18 = sub_252E34524();

    if (!v18)
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_2529F88D0(0, v30[2] + 1, 1, v30);
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v30 = sub_2529F88D0((v32 > 1), v33 + 1, 1, v30);
    }

    v30[2] = v33 + 1;
    v30[v33 + 4] = v18;
  }

  while (v15 != v102);
LABEL_24:
  v34 = sub_252A3332C(v30);

  v90 = v12;
  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v102;
    if (v35)
    {
      goto LABEL_26;
    }

LABEL_40:

    v39 = MEMORY[0x277D84F90];
    v109 = v29;
    if (v36)
    {
      goto LABEL_41;
    }

LABEL_55:
    if (v29 >> 62)
    {
      goto LABEL_76;
    }

    v45 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v45)
    {
      goto LABEL_77;
    }

LABEL_57:
    v46 = 0;
    v47 = v29 & 0xC000000000000001;
    v48 = (v97 + 48);
    v105 = v97 + 32;
    v106 = v29 & 0xFFFFFFFFFFFFFF8;
    v49 = MEMORY[0x277D84F90];
    v102 = (v29 & 0xC000000000000001);
    while (1)
    {
      if (v47)
      {
        MEMORY[0x2530ADF00](v46, v29);
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v46 >= *(v106 + 16))
        {
          goto LABEL_75;
        }

        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_74;
        }
      }

      v51 = v29;
      v52 = v100;
      sub_252E34534();

      v53 = v107;
      if ((*v48)(v52, 1, v107) == 1)
      {
        sub_25293847C(v52, &qword_27F540288, &qword_252E41DE0);
      }

      else
      {
        v54 = v45;
        v55 = *v105;
        (*v105)(v101, v52, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2529F88A8(0, *(v49 + 2) + 1, 1, v49);
        }

        v57 = *(v49 + 2);
        v56 = *(v49 + 3);
        if (v57 >= v56 >> 1)
        {
          v49 = sub_2529F88A8((v56 > 1), v57 + 1, 1, v49);
        }

        *(v49 + 2) = v57 + 1;
        v55(&v49[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v57], v101, v107);
        v45 = v54;
        v47 = v102;
      }

      ++v46;
      v29 = v51;
      if (v50 == v45)
      {
        goto LABEL_78;
      }
    }
  }

  v35 = sub_252E378C4();
  v36 = v102;
  if (!v35)
  {
    goto LABEL_40;
  }

LABEL_26:
  v109 = v29;
  result = sub_2529AA600(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    goto LABEL_103;
  }

  v95 = a1;
  v38 = 0;
  v39 = v109;
  do
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v38, v34);
    }

    else
    {
    }

    sub_252E34534();

    v109 = v39;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_2529AA600((v40 > 1), v41 + 1, 1);
      v39 = v109;
    }

    ++v38;
    *(v39 + 16) = v41 + 1;
    sub_252A3E5E0(v27, v39 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v41);
  }

  while (v35 != v38);

  a1 = v95;
  v36 = v102;
  v109 = v29;
  if (!v102)
  {
    goto LABEL_55;
  }

LABEL_41:
  v42 = 0;
  v29 = MEMORY[0x277D84F90];
  while (2)
  {
    v43 = v42;
LABEL_43:
    if (v106)
    {
      MEMORY[0x2530ADF00](v43, a1);
      v42 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      goto LABEL_46;
    }

    if (v43 >= *(v105 + 16))
    {
      goto LABEL_73;
    }

    v42 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
LABEL_46:
      sub_252E34554();
      sub_252E34E24();

      if (v108)
      {
        MEMORY[0x2530AD700](v44);
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v29 = v109;
        if (v42 == v36)
        {
          goto LABEL_55;
        }

        continue;
      }

      ++v43;
      if (v42 == v36)
      {
        goto LABEL_55;
      }

      goto LABEL_43;
    }

    break;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  v45 = sub_252E378C4();
  if (v45)
  {
    goto LABEL_57;
  }

LABEL_77:
  v49 = MEMORY[0x277D84F90];
LABEL_78:

  v58 = sub_252B4F43C(v49);

  v109 = v39;
  result = sub_25297B924(v58);
  v106 = v109;
  v95 = *(v109 + 16);
  if (!v95)
  {
LABEL_96:
    v85 = 0;
LABEL_101:

    return v85;
  }

  v59 = 0;
  LODWORD(v100) = *MEMORY[0x277D5E238];
  v105 = v97 + 104;
  v102 = (v97 + 56);
  v60 = (v97 + 48);
  v89 = (v97 + 32);
  v97 += 8;
  v94 = *MEMORY[0x277D5E240];
  v61 = v93;
  v62 = v86;
  v101 = v60;
  while (2)
  {
    if (v59 < *(v106 + 16))
    {
      v64 = v60;
      v65 = v103;
      sub_252A3E650(v106 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v59, v103);
      v66 = *v105;
      v67 = v107;
      (*v105)(v61, v100, v107);
      v68 = *v102;
      (*v102)(v61, 0, 1, v67);
      v69 = *(v99 + 48);
      sub_252A3E650(v65, v62);
      sub_252A3E650(v61, v62 + v69);
      v70 = *v64;
      if ((*v64)(v62, 1, v67) == 1)
      {
        sub_25293847C(v61, &qword_27F540288, &qword_252E41DE0);
        if (v70(v62 + v69, 1, v67) == 1)
        {
          goto LABEL_98;
        }

LABEL_89:
        sub_25293847C(v62, &qword_27F541C20, &unk_252E5B5E0);
      }

      else
      {
        v71 = v62;
        v72 = v62;
        v73 = v92;
        sub_252A3E650(v71, v92);
        if (v70(v72 + v69, 1, v67) == 1)
        {
          v61 = v93;
          sub_25293847C(v93, &qword_27F540288, &qword_252E41DE0);
          (*v97)(v73, v67);
          v62 = v72;
          goto LABEL_89;
        }

        v74 = v91;
        (*v89)(v91, v72 + v69, v67);
        sub_252A3E6C0(&qword_27F541C28, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
        v87 = sub_252E36EF4();
        v75 = *v97;
        (*v97)(v74, v67);
        v61 = v93;
        v88 = v68;
        sub_25293847C(v93, &qword_27F540288, &qword_252E41DE0);
        v75(v73, v67);
        v62 = v86;
        v68 = v88;
        sub_25293847C(v86, &qword_27F540288, &qword_252E41DE0);
        if (v87)
        {
          goto LABEL_99;
        }
      }

      v76 = v98;
      v77 = v107;
      v66(v98, v94, v107);
      v68(v76, 0, 1, v77);
      v78 = *(v99 + 48);
      v79 = v96;
      sub_252A3E650(v103, v96);
      sub_252A3E650(v76, v79 + v78);
      v80 = v101;
      if (v70(v79, 1, v77) == 1)
      {
        sub_25293847C(v76, &qword_27F540288, &qword_252E41DE0);
        v63 = v70(v79 + v78, 1, v77);
        v60 = v80;
        if (v63 == 1)
        {
          v62 = v79;
LABEL_98:
          sub_25293847C(v62, &qword_27F540288, &qword_252E41DE0);
LABEL_99:
          sub_25293847C(v103, &qword_27F540288, &qword_252E41DE0);
LABEL_100:
          v85 = 1;
          goto LABEL_101;
        }

LABEL_81:
        sub_25293847C(v79, &qword_27F541C20, &unk_252E5B5E0);
        result = sub_25293847C(v103, &qword_27F540288, &qword_252E41DE0);
      }

      else
      {
        v81 = v90;
        sub_252A3E650(v79, v90);
        if (v70(v79 + v78, 1, v77) == 1)
        {
          v60 = v80;
          sub_25293847C(v98, &qword_27F540288, &qword_252E41DE0);
          (*v97)(v81, v77);
          goto LABEL_81;
        }

        v82 = v91;
        (*v89)(v91, v79 + v78, v77);
        sub_252A3E6C0(&qword_27F541C28, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
        LODWORD(v88) = sub_252E36EF4();
        v83 = *v97;
        v84 = v82;
        v60 = v101;
        (*v97)(v84, v77);
        sub_25293847C(v98, &qword_27F540288, &qword_252E41DE0);
        v61 = v93;
        v83(v81, v77);
        sub_25293847C(v79, &qword_27F540288, &qword_252E41DE0);
        result = sub_25293847C(v103, &qword_27F540288, &qword_252E41DE0);
        if (v88)
        {
          goto LABEL_100;
        }
      }

      if (v95 == ++v59)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

char *sub_252A3AC34(unint64_t a1)
{
  v2 = sub_252E36B34();
  v100 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v98 = &v75 - v7;
  MEMORY[0x28223BE20](v6);
  v97 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BF8, &qword_252E41DC8);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v75 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C00, &unk_252E41DD0);
  MEMORY[0x28223BE20](v115);
  v114 = (&v75 - v11);
  v113 = sub_252E36CA4();
  v12 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_252E36D04();
  v14 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E36C44();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v109 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v117 = &v75 - v20;
  v132 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  v21 = a1;
  a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a1)
  {
    v108 = v21 & 0xC000000000000001;
    v107 = 0x8000000252E72DC0;
    v87 = v21 & 0xFFFFFFFFFFFFFF8;
    v86 = v21 + 32;
    v106 = &v128;
    v105 = (v12 + 1);
    v22 = (v14 + 8);
    v14 = v21;
    v104 = v22;
    v94 = (v17 + 32);
    v93 = (v17 + 16);
    v92 = (v17 + 88);
    v91 = *MEMORY[0x277D5FEC0];
    v85 = *MEMORY[0x277D5FED0];
    v83 = *MEMORY[0x277D5FEC8];
    v81 = *MEMORY[0x277D5FED8];
    v79 = *MEMORY[0x277D5FEE0];
    v77 = "resolve(queries:)";
    v124 = "eferences asynchronously...";
    v96 = "tion failed with error: ";
    v95 = (v17 + 8);
    v76 = 0x8000000252E72E90;
    v88 = (v17 + 96);
    v17 = 0;
    v78 = "uring reference resolution ";
    v80 = "er result - needsDisambiguation";
    v82 = "sDisambiguationPlural";
    v90 = (v100 + 32);
    v84 = "er result - foundMatchPlural";
    v121 = 0x8000000252E72E70;
    v103 = xmmword_252E41C50;
    v89 = "ApplicationContext";
    v122 = (v100 + 8);
    v123 = (v100 + 16);
    v99 = MEMORY[0x277D84F90];
    v118 = v21;
    v12 = MEMORY[0x277D84F90];
    v102 = v16;
    v101 = a1;
    while (1)
    {
      if (v108)
      {
        v120 = MEMORY[0x2530ADF00](v17, v14);
        v23 = __OFADD__(v17++, 1);
        if (v23)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v17 >= *(v87 + 16))
        {
          goto LABEL_90;
        }

        v120 = *(v86 + 8 * v17);

        v23 = __OFADD__(v17++, 1);
        if (v23)
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v21 = a1;
          a1 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v119 = v17;
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v24 = off_2814B0DC0;
      if (off_2814B0DC0)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v24 = sub_252D7EAE8();
        off_2814B0DC0 = v24;

        sub_252D7E92C();
      }

      sub_252E37614();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v103;
      *(v25 + 40) = v107;
      *(v25 + 48) = sub_252979724;
      *(v25 + 56) = 0;
      v130 = sub_252990560;
      v131 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128 = sub_252AD686C;
      v129 = &block_descriptor_5;
      v26 = _Block_copy(&aBlock);

      v27 = v110;
      sub_252E36CD4();
      v125 = v12;
      sub_252A3E6C0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
      v28 = v112;
      v29 = v113;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v27, v28, v26);
      _Block_release(v26);
      (*v105)(v28, v29);
      (*v104)(v27, v111);

      if (qword_27F53F220 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v30 = qword_27F5407C0;
      v16 = v109;
      if (qword_27F5407C0)
      {
      }

      else
      {
        type metadata accessor for ApplicationContext(0);
        swift_allocObject();
        v30 = sub_252978E58();
        qword_27F5407C0 = v30;
      }

      sub_252E37614();
      sub_252929E74((v30 + 368), &aBlock);

      v31 = v129;
      v32 = v130;
      __swift_project_boxed_opaque_existential_1(&aBlock, v129);
      v33 = sub_252E36C34();
      v34 = v116;
      (*(*(v33 - 8) + 56))(v116, 1, 1, v33);
      v35 = v114;
      (*(v32 + 2))(v120, v34, v31, v32);
      sub_25293847C(v34, &qword_27F541BF8, &qword_252E41DC8);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v36 = *v35;
      v125 = *v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      swift_willThrowTypedImpl();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v37 = sub_252E36AD4();
      __swift_project_value_buffer(v37, qword_27F544E98);
      aBlock = 0;
      v127 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, v89 | 0x8000000000000000);
      v125 = v36;
      sub_252E37AE4();
      sub_252CC4050(aBlock, v127, 0xD000000000000075, v124 | 0x8000000000000000, 0xD000000000000011, v96 | 0x8000000000000000, 337);

      v12 = MEMORY[0x277D84F90];
      v14 = v118;
LABEL_5:
      a1 = v101;
      v17 = v119;
      if (v119 == v101)
      {
        return v99;
      }
    }

    v14 = v117;
    v38 = v102;
    (*v94)(v117, v35, v102);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*v93)(v16, v14, v38);
    v39 = (*v92)(v16, v38);
    if (v39 == v91)
    {
      (*v88)(v16, v38);
      v40 = *v90;
      v41 = v16;
      v42 = v97;
      (*v90)(v97, v41, v2);
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v43 = sub_252E36AD4();
      __swift_project_value_buffer(v43, qword_27F544E98);
      sub_252CC3D90(0xD000000000000026, v84 | 0x8000000000000000, 0xD000000000000075, v124 | 0x8000000000000000);
      (*v123)(v98, v42, v2);
      v44 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_2529F8480(0, *(v44 + 2) + 1, 1, v44);
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_2529F8480((v45 > 1), v46 + 1, 1, v44);
      }

      v47 = v100;
      (*(v100 + 8))(v97, v2);
      *(v44 + 2) = v46 + 1;
      v40(&v44[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46], v98, v2);
      v132 = v44;
LABEL_34:
      v14 = v118;
      v12 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    if (v39 == v85)
    {
      (*v88)(v16, v38);
      v48 = *v16;
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v49 = sub_252E36AD4();
      __swift_project_value_buffer(v49, qword_27F544E98);
      v50 = 0xD00000000000002FLL;
      v51 = &v113;
LABEL_43:
      sub_252CC3D90(v50, *(v51 - 32) | 0x8000000000000000, 0xD000000000000075, v124 | 0x8000000000000000);
      sub_25297B2BC(v48);
LABEL_44:
      v12 = MEMORY[0x277D84F90];
      v14 = v118;
LABEL_45:
      v16 = v132;
      v53 = *(v132 + 2);
      v99 = v132;
      if (v53)
      {
        v125 = v12;
        sub_2529AA5A0(0, v53, 0);
        v54 = v125;
        v55 = v16 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v56 = *(v100 + 72);
        v16 = *(v100 + 16);
        do
        {
          (v16)(v5, v55, v2);
          if (qword_27F53F550 != -1)
          {
            swift_once();
          }

          v57 = sub_252E36AD4();
          __swift_project_value_buffer(v57, qword_27F544E98);
          aBlock = 0;
          v127 = 0xE000000000000000;
          sub_252E379F4();

          aBlock = 0xD000000000000014;
          v127 = v121;
          sub_252A3E6C0(&qword_27F541C10, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
          v58 = sub_252E37D94();
          MEMORY[0x2530AD570](v58);

          sub_252CC3D90(aBlock, v127, 0xD000000000000075, v124 | 0x8000000000000000);

          (*v122)(v5, v2);
          v125 = v54;
          v60 = v54[2];
          v59 = v54[3];
          v61 = v60 + 1;
          if (v60 >= v59 >> 1)
          {
            sub_2529AA5A0((v59 > 1), v60 + 1, 1);
            v54 = v125;
          }

          v54[2] = v61;
          v55 += v56;
          --v53;
        }

        while (v53);
        (*v95)(v117, v102);

        v14 = v118;
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        (*v95)(v117, v102);
      }

      goto LABEL_5;
    }

    if (v39 == v83)
    {
      (*v88)(v16, v38);
      v48 = *v16;
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v52 = sub_252E36AD4();
      __swift_project_value_buffer(v52, qword_27F544E98);
      v50 = 0xD00000000000002CLL;
      v51 = &v111;
      goto LABEL_43;
    }

    if (v39 != v81)
    {
      if (v39 == v79)
      {
        if (qword_27F53F550 != -1)
        {
          swift_once();
        }

        v70 = sub_252E36AD4();
        __swift_project_value_buffer(v70, qword_27F544E98);
        aBlock = 0;
        v127 = 0xE000000000000000;
        sub_252E379F4();

        aBlock = 0xD00000000000002BLL;
        v127 = v76;
        v125 = v120;
        sub_252E36B54();
        sub_252A3E6C0(&qword_27F541C18, MEMORY[0x277D5FE30], MEMORY[0x277D5FE38]);
        v71 = sub_252E37D94();
        MEMORY[0x2530AD570](v71);

        sub_252CC3D90(aBlock, v127, 0xD000000000000075, v124 | 0x8000000000000000);
      }

      else
      {
        if (qword_27F53F550 != -1)
        {
          swift_once();
        }

        v72 = sub_252E36AD4();
        __swift_project_value_buffer(v72, qword_27F544E98);
        aBlock = 0;
        v127 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, v77 | 0x8000000000000000);
        sub_252A3E6C0(&qword_27F541C08, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
        v73 = sub_252E37D94();
        MEMORY[0x2530AD570](v73);

        sub_252CC4050(aBlock, v127, 0xD000000000000075, v124 | 0x8000000000000000, 0xD000000000000011, v96 | 0x8000000000000000, 331);

        (*v95)(v16, v38);
      }

      goto LABEL_44;
    }

    (*v88)(v16, v38);
    v62 = *v16;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v63 = sub_252E36AD4();
    v17 = __swift_project_value_buffer(v63, qword_27F544E98);
    sub_252CC3D90(0xD000000000000035, v78 | 0x8000000000000000, 0xD000000000000075, v124 | 0x8000000000000000);
    v12 = *(v62 + 16);
    if (!v12)
    {
      a1 = MEMORY[0x277D84F90];
LABEL_83:

      sub_25297B2BC(a1);
      goto LABEL_34;
    }

    v16 = 0;
    v99 = (v62 + 32);
    a1 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v16 >= *(v62 + 16))
      {
        goto LABEL_87;
      }

      v64 = *&v99[8 * v16];
      v17 = *(v64 + 16);
      v65 = *(a1 + 16);
      v14 = (v65 + v17);
      if (__OFADD__(v65, v17))
      {
        goto LABEL_88;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v14 <= *(a1 + 24) >> 1)
      {
        if (!*(v64 + 16))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v65 <= v14)
        {
          v67 = v65 + v17;
        }

        else
        {
          v67 = v65;
        }

        a1 = sub_2529F8480(isUniquelyReferenced_nonNull_native, v67, 1, a1);
        if (!*(v64 + 16))
        {
LABEL_59:

          if (v17)
          {
            goto LABEL_89;
          }

          goto LABEL_60;
        }
      }

      if ((*(a1 + 24) >> 1) - *(a1 + 16) < v17)
      {
        goto LABEL_91;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v68 = *(a1 + 16);
        v23 = __OFADD__(v68, v17);
        v69 = v68 + v17;
        if (v23)
        {
          goto LABEL_92;
        }

        *(a1 + 16) = v69;
      }

LABEL_60:
      if (v12 == ++v16)
      {
        goto LABEL_83;
      }
    }
  }

  return MEMORY[0x277D84F90];
}