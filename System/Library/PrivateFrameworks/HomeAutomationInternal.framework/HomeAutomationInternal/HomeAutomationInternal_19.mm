uint64_t sub_252A8C86C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252A8C8BC()
{
  v1 = *(v0 + 8);
  if (!v1 || (v2 = [*(v0 + 8) entityType], v3 = v2, v2 != 5) && (sub_252B680FC(v2), v4 = sub_252B63638(), , (v4 & 1) == 0) && v3 != 1)
  {
    v3 = sub_252A6D5D4(v1);
  }

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C58);
  sub_252E379F4();

  v6 = sub_252BEBD04(v3);
  MEMORY[0x2530AD570](v6);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(0xD000000000000024, 0x8000000252E76310, 0xD000000000000093, 0x8000000252E76340);

  return v3;
}

uint64_t sub_252A8CA20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  [v3 deviceType];
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  if (*(off_27F541CD0 + 2) && (sub_252A488EC(), (v4 & 1) != 0))
  {
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v5 = 0;
  }

  else
  {
LABEL_7:
    v5 = 1;
  }

  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_252A8CB2C(uint64_t a1)
{
  *(v2 + 2448) = a1;
  v3 = sub_252E36324();
  *(v2 + 2456) = v3;
  *(v2 + 2464) = *(v3 - 8);
  *(v2 + 2472) = swift_task_alloc();
  v4 = sub_252E36AB4();
  *(v2 + 2480) = v4;
  *(v2 + 2488) = *(v4 - 8);
  *(v2 + 2496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  *(v2 + 2504) = swift_task_alloc();
  *(v2 + 2512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  *(v2 + 2520) = swift_task_alloc();
  v5 = type metadata accessor for IconConfiguration(0);
  *(v2 + 2528) = v5;
  *(v2 + 2536) = *(v5 - 8);
  *(v2 + 2544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v2 + 2552) = swift_task_alloc();
  *(v2 + 2560) = swift_task_alloc();
  *(v2 + 2568) = swift_task_alloc();
  *(v2 + 2576) = swift_task_alloc();
  *(v2 + 2584) = swift_task_alloc();
  *(v2 + 2592) = swift_task_alloc();
  *(v2 + 2600) = swift_task_alloc();
  *(v2 + 2608) = swift_task_alloc();
  *(v2 + 2616) = swift_task_alloc();
  *(v2 + 2624) = *v1;
  *(v2 + 2640) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_252A8CDC8, 0, 0);
}

uint64_t sub_252A8CDC8()
{
  v86 = v0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2624);
  v2 = sub_252E36AD4();
  *(v0 + 2648) = v2;
  *(v0 + 2656) = __swift_project_value_buffer(v2, qword_27F544C58);
  sub_252CC3D90(0xD000000000000024, 0x8000000252E76450, 0xD000000000000093, 0x8000000252E76340);
  v3 = sub_252B680FC(v1);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 504 * v5 - 472);
    memcpy((v0 + 1024), v6, 0x1F8uLL);
    memmove((v0 + 520), v6, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v0 + 1024, v0 + 1528);

    memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  }

  else
  {

    sub_25293DEE0(v0 + 16);
  }

  v7 = *(v0 + 2640);
  v8 = *(v0 + 2632);
  v9 = *(v0 + 2624);
  v10 = *(v0 + 2616);
  memcpy(__dst, (v0 + 16), 0x1F8uLL);
  v84 = sub_252953488(v9, __dst, 0);
  *(v0 + 2664) = v84;

  *&__dst[0] = v9;
  *(&__dst[0] + 1) = v8;
  *&__dst[1] = v7;
  v11 = sub_252A88D8C();
  *&__dst[0] = v9;
  *(&__dst[0] + 1) = v8;
  *&__dst[1] = v7;
  v12 = sub_252A8CA20(v10);
  v13 = *(sub_252B680FC(v12) + 77);

  v82 = v11;
  if (v13 == 1 && !*(v11 + 2))
  {
    v68 = *(v0 + 2608);
    v69 = *(v0 + 2464);
    v70 = *(v0 + 2456);
    sub_252938414(*(v0 + 2616), v68, &qword_27F540298, &unk_252E3C270);
    v71 = (*(v69 + 48))(v68, 1, v70);
    v72 = *(v0 + 2624);
    v73 = *(v0 + 2608);
    if (v71 != 1)
    {

      v14 = sub_25293847C(v73, &qword_27F540298, &unk_252E3C270);
      goto LABEL_9;
    }

    sub_25293847C(*(v0 + 2608), &qword_27F540298, &unk_252E3C270);
    type metadata accessor for ServiceCollectionDecorator();
    swift_allocObject();
    v74 = *(sub_252B7DA9C(v72) + 16);

    if (v74 >> 62)
    {
      result = sub_252E378C4();
      v75 = result;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
LABEL_33:
        if ((v74 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](0, v74);
        }

        else
        {
          if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        v76 = sub_252CD941C();

        goto LABEL_40;
      }
    }

    v76 = 0;
LABEL_40:
    v77 = v75 == 0;
    v78 = *(v0 + 2616);
    v79 = *(v0 + 2600);
    static SemanticMapper.getSemanticKey(for:)(v76, v77, v79);
    v14 = sub_252A909F4(v79, v78, &qword_27F540298, &unk_252E3C270);
    goto LABEL_9;
  }

LABEL_9:
  v15 = *(v0 + 2640);
  v16 = *(v0 + 2632);
  v17 = *(v0 + 2624);
  v18 = *(v0 + 2592);
  v19 = *(v0 + 2584);
  v20 = *(v0 + 2464);
  v21 = *(v0 + 2456);
  v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v14);
  swift_beginAccess();
  *(v0 + 2672) = *(v22 + 23);

  *(v0 + 2216) = v17;
  *(v0 + 2224) = v16;
  *(v0 + 2232) = v15;
  sub_252A88574(v18);
  *&__dst[0] = v17;
  *(&__dst[0] + 1) = v16;
  *&__dst[1] = v15;
  sub_252A88744(v19);
  v23 = *(v20 + 48);
  v24 = v23(v19, 1, v21);
  v25 = *(v0 + 2584);
  if (v24 == 1)
  {
    sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
    v26 = 0;
  }

  else
  {
    v27 = *(v0 + 2576);
    v28 = *(v0 + 2464);
    v29 = *(v0 + 2456);
    (*(v28 + 16))(v27, v25, v29);
    v30 = *(v28 + 56);
    v30(v27, 0, 1, v29);
    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v31 = swift_allocObject();
    v32 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v30(v31 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v29);
    swift_beginAccess();
    sub_2529D032C(v27, v31 + v32, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    type metadata accessor for HomeAutomationHomeLocation(0);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    sub_252938414(v31 + v32, v26 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
    swift_setDeallocating();
    sub_25293847C(v31 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    swift_deallocClassInstance();
    (*(v28 + 8))(v25, v29);
  }

  *(v0 + 2680) = v26;
  v33 = *(v0 + 2640);
  v34 = *(v0 + 2568);
  v35 = *(v0 + 2456);
  __dst[0] = *(v0 + 2624);
  *&__dst[1] = v33;
  sub_252A88B84(v34);
  if (v23(v34, 1, v35) == 1)
  {
    sub_25293847C(*(v0 + 2568), &qword_27F540298, &unk_252E3C270);
    v36 = 0;
  }

  else
  {
    v37 = *(v0 + 2576);
    v80 = *(v0 + 2568);
    v81 = v23;
    v38 = *(v0 + 2464);
    v39 = *(v0 + 2456);
    (*(v38 + 16))(v37);
    v40 = *(v38 + 56);
    v40(v37, 0, 1, v39);
    type metadata accessor for HomeAutomationHomeLocation.Builder(0);
    v41 = swift_allocObject();
    v42 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
    v40(v41 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v39);
    swift_beginAccess();
    sub_2529D032C(v37, v41 + v42, &qword_27F540298, &unk_252E3C270);
    swift_endAccess();
    sub_25293847C(v37, &qword_27F540298, &unk_252E3C270);
    type metadata accessor for HomeAutomationHomeLocation(0);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    sub_252938414(v41 + v42, v36 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &qword_27F540298, &unk_252E3C270);
    swift_setDeallocating();
    sub_25293847C(v41 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
    swift_deallocClassInstance();
    (*(v38 + 8))(v80, v39);
    v23 = v81;
  }

  *(v0 + 2688) = v36;
  v43 = *(v0 + 2592);
  v44 = *(v0 + 2560);
  v45 = *(v0 + 2456);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v46 = swift_allocObject();
  *(v0 + 2696) = v46;
  *(v46 + 16) = xmmword_252E3F1F0;
  *(v46 + 32) = 0xD000000000000013;
  *(v46 + 40) = 0x8000000252E76480;
  sub_252938414(v43, v44, &qword_27F540298, &unk_252E3C270);
  v47 = v23(v44, 1, v45);
  v48 = *(v0 + 2560);
  if (v47 == 1)
  {
    sub_25293847C(*(v0 + 2560), &qword_27F540298, &unk_252E3C270);
    *(v46 + 48) = 0u;
    *(v46 + 64) = 0u;
  }

  else
  {
    v49 = *(v0 + 2464);
    v50 = *(v0 + 2456);
    *(v46 + 72) = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v46 + 48));
    (*(v49 + 32))(boxed_opaque_existential_0, v48, v50);
  }

  strcpy((v46 + 80), "candidateName");
  *(v46 + 94) = -4864;
  if (v26)
  {
    v52 = type metadata accessor for HomeAutomationHomeLocation(0);
    v53 = v26;
  }

  else
  {
    v53 = 0;
    v52 = 0;
    *(v46 + 104) = 0;
    *(v46 + 112) = 0;
  }

  *(v46 + 96) = v53;
  *(v46 + 120) = v52;
  *(v46 + 128) = 0x656D614E656D6F68;
  *(v46 + 136) = 0xE800000000000000;
  if (v36)
  {
    v54 = type metadata accessor for HomeAutomationHomeLocation(0);
    v55 = v36;
  }

  else
  {
    v55 = 0;
    v54 = 0;
    *(v46 + 152) = 0;
    *(v46 + 160) = 0;
  }

  v56 = *(v0 + 2616);
  v57 = *(v0 + 2552);
  v58 = *(v0 + 2456);
  *(v46 + 144) = v55;
  *(v46 + 168) = v54;
  *(v46 + 176) = 0xD000000000000011;
  *(v46 + 184) = 0x8000000252E764A0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v46 + 192) = v82;
  *(v46 + 216) = v59;
  *(v46 + 224) = 0xD000000000000010;
  *(v46 + 232) = 0x8000000252E764C0;
  sub_252938414(v56, v57, &qword_27F540298, &unk_252E3C270);
  v60 = v23(v57, 1, v58);
  v61 = *(v0 + 2552);
  if (v60 == 1)
  {

    sub_25293847C(v61, &qword_27F540298, &unk_252E3C270);
    *(v46 + 240) = 0u;
    *(v46 + 256) = 0u;
  }

  else
  {
    v62 = *(v0 + 2464);
    v63 = *(v0 + 2456);
    *(v46 + 264) = v63;
    v64 = __swift_allocate_boxed_opaque_existential_0((v46 + 240));
    (*(v62 + 32))(v64, v61, v63);
  }

  strcpy((v46 + 272), "intentContext");
  *(v46 + 286) = -4864;
  *(v46 + 312) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v46 + 288) = v84;
  v83 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v65 = swift_task_alloc();
  *(v0 + 2704) = v65;
  v66 = sub_252A909A0();
  *v65 = v0;
  v65[1] = sub_252A8D940;

  return v83(0xD000000000000021, 0x8000000252E764E0, v46, &type metadata for HomeAutomationCATsSimple.ConfirmationLabelsDialogIds, v66);
}

uint64_t sub_252A8D940(uint64_t a1)
{
  v3 = *v2;
  v3[339] = a1;
  v3[340] = v1;

  if (v1)
  {

    v4 = sub_252A8E49C;
  }

  else
  {
    v5 = v3[324];

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    v4 = sub_252A8DAC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A8DAC4()
{
  v48 = v0;
  v1 = *(v0 + 2640);
  v43 = *(v0 + 2624);
  v45 = *(v0 + 2632);
  *(v0 + 2849) = 0;
  v2 = sub_252E36374();
  v4 = v3;
  *(v0 + 2728) = v2;
  *(v0 + 2736) = v3;
  *(v0 + 2846) = 1;
  *(v0 + 2744) = sub_252E36374();
  *(v0 + 2752) = v5;
  sub_252E379F4();

  MEMORY[0x2530AD570](v2, v4);

  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E76510, 0xD000000000000093, 0x8000000252E76340);

  v47[0] = v43;
  v47[1] = v45;
  v47[2] = v1;
  sub_252B6E8E4(v47, v0 + 2032);
  v6 = *(v0 + 2040);
  if (v6)
  {
    v7 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v7 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v41 = *(v0 + 2032);
      v42 = *(v0 + 2072);
      v40 = *(v0 + 2080);
      v8 = *(v0 + 2544);
      v46 = *(v0 + 2536);
      v9 = *(v0 + 2528);
      v10 = *(v0 + 2520);
      v39 = v10;
      v44 = *(v0 + 2512);
      v32 = type metadata accessor for DirectInvocationConfig(0);
      v33 = *(*(v32 - 8) + 56);
      v33(v10, 1, 1, v32);
      v37 = v9[5];
      *(v0 + 2320) = 0;
      *(v0 + 2328) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      sub_252E330C4();
      v35 = v9[6];
      *(v0 + 2841) = 0;
      sub_252E330C4();
      *(v0 + 2840) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
      sub_252E330C4();
      v11 = v9[10];
      *(v0 + 2256) = 0;
      *(v0 + 2264) = 0;
      sub_252E330C4();
      v38 = v9[11];
      *(v0 + 2432) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
      sub_252E330C4();
      v34 = v9[12];
      *(v0 + 2272) = 0;
      *(v0 + 2280) = 0;
      sub_252E330C4();
      v36 = v9[13];
      *(v0 + 2288) = 0;
      *(v0 + 2296) = 0;
      sub_252E330C4();
      v12 = v9[14];
      v33(v8 + v12, 1, 1, v32);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
      v14 = *(*(v13 - 8) + 8);
      v14(v8 + v11, v13);
      *(v0 + 2416) = 0;
      *(v0 + 2424) = 0;
      sub_252E330C4();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
      (*(*(v15 - 8) + 8))(v8 + v35, v15);
      *(v0 + 2842) = 0;
      sub_252E330C4();
      sub_2529D032C(v39, v8 + v12, &qword_27F540068, &qword_252E3BC90);
      *(v0 + 2304) = v41;
      *(v0 + 2312) = v6;
      sub_252E330C4();
      v14(v8 + v37, v13);
      *(v0 + 2240) = v42;
      *(v0 + 2248) = v40;
      sub_252E330C4();
      v14(v8 + v34, v13);
      *(v0 + 2336) = 0;
      *(v0 + 2344) = 0;
      sub_252E330C4();
      v14(v8 + v36, v13);
      *(v0 + 2352) = 0;
      *(v0 + 2360) = 0;
      sub_252E330C4();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
      (*(*(v16 - 8) + 8))(v8 + v38, v16);
      *(v0 + 2440) = 0;
      sub_252E330C4();
      *(v0 + 2843) = 2;
      sub_252E330C4();
      *(v0 + 2844) = 2;
      sub_252E330C4();
      *(v0 + 2845) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
      sub_252E330F4();
      sub_25293847C(v0 + 2032, &qword_27F541B80, &unk_252E4E7B0);
      sub_25293847C(v39, &qword_27F540068, &qword_252E3BC90);
      sub_25292F398(v8, v44);
      v17 = *(v46 + 56);
      *(v0 + 2760) = v17;
      *(v0 + 2768) = (v46 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v17(v44, 0, 1, v9);
      if (qword_27F53F648 != -1)
      {
        swift_once();
      }

      v18 = qword_27F544FD0;
      *(v0 + 2776) = qword_27F544FD0;
      v19 = v18;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      if (qword_27F53F558 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 2648), qword_27F544EB0);
      v20 = sub_252E36AC4();
      v21 = sub_252E374C4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_252917000, v20, v21, "Building confirmation snippet model", v22, 2u);
        MEMORY[0x2530AED00](v22, -1, -1);
      }

      *(v0 + 2784) = sub_252D15950(0);
      v23 = sub_252D15950(1);
      *(v0 + 2792) = v23;
      v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
      swift_beginAccess();
      *(v0 + 2800) = *(v24 + 23);

      sub_252B680FC(v25);
      v26 = sub_252B631FC();
      *(v0 + 2808) = v26;

      v27 = swift_task_alloc();
      *(v0 + 2816) = v27;
      *v27 = v0;
      v27[1] = sub_252A8E644;

      return sub_252D260EC(v26);
    }

    sub_25293847C(*(v0 + 2616), &qword_27F540298, &unk_252E3C270);

    sub_25293847C(v0 + 2032, &qword_27F541B80, &unk_252E4E7B0);
  }

  else
  {
    sub_25293847C(*(v0 + 2616), &qword_27F540298, &unk_252E3C270);
  }

  v29 = *(v0 + 2448);
  v30 = type metadata accessor for ConfirmationSnippetModel(0);
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_252A8E49C()
{
  v1 = v0[327];
  v2 = v0[324];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252A8E644(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2824) = v1;

  if (v1)
  {

    v5 = sub_252A8ECCC;
  }

  else
  {
    *(v4 + 2832) = a1;

    v5 = sub_252A8E78C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A8E78C()
{
  v26 = *(v0 + 2784);
  v27 = *(v0 + 2792);
  v34 = *(v0 + 2776);
  v25 = *(v0 + 2760);
  v28 = *(v0 + 2744);
  v29 = *(v0 + 2752);
  v37 = *(v0 + 2736);
  v24 = *(v0 + 2728);
  v35 = *(v0 + 2544);
  v36 = *(v0 + 2616);
  v1 = *(v0 + 2512);
  v30 = v1;
  v2 = *(v0 + 2504);
  v23 = *(v0 + 2528);
  v31 = *(v0 + 2496);
  v32 = *(v0 + 2488);
  v33 = *(v0 + 2480);
  v3 = *(v0 + 2472);
  v4 = *(v0 + 2464);
  v5 = *(v0 + 2456);
  v6 = *(v0 + 2448);
  *(v0 + 2847) = 0;
  sub_252E36374();
  sub_252E37024();

  v7 = sub_252E36304();
  v21 = v8;
  v22 = v7;
  v9 = *(v4 + 8);
  v9(v3, v5);
  *(v0 + 2848) = 1;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v12 = v11;
  v9(v3, v5);
  sub_252938414(v1, v2, &qword_27F541B50, &unk_252E47970);
  v13 = type metadata accessor for ConfirmationSnippetModel(0);
  v14 = *(v13 + 44);
  v25(&v6[v14], 1, 1, v23);
  *v6 = v24;
  *(v6 + 1) = v37;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v0 + 2368) = v22;
  *(v0 + 2376) = v21;

  v15 = v26;
  v16 = v27;
  sub_252E330C4();
  *(v0 + 2384) = v10;
  *(v0 + 2392) = v12;
  sub_252E330C4();
  sub_252A75B60();
  v17 = v15;
  sub_252E33054();
  sub_252E33054();

  v6[*(v13 + 48)] = 0;
  sub_252A909F4(v2, &v6[v14], &qword_27F541B50, &unk_252E47970);
  *(v6 + 4) = v28;
  *(v6 + 5) = v29;

  sub_252E379F4();
  *(v0 + 2400) = 0;
  *(v0 + 2408) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E76410);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 2400), *(v0 + 2408), 0xD000000000000072, 0x8000000252E72680);

  v18 = sub_252E375C4();
  sub_252E36A74(v18, &dword_252917000, v34, "buildSnippetModel", 17, 2, v31, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v32 + 8))(v31, v33);
  sub_25293847C(v30, &qword_27F541B50, &unk_252E47970);

  sub_25292F3FC(v35);
  sub_25293847C(v36, &qword_27F540298, &unk_252E3C270);
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252A8ECCC()
{
  v1 = v0[349];
  v2 = v0[348];
  v3 = v0[347];
  v12 = v0[318];
  v13 = v0[327];
  v4 = v0[314];
  v5 = v0[312];
  v6 = v0[311];
  v7 = v0[310];

  v8 = sub_252E375C4();
  v11 = 2;
  sub_252E36A74(v8, &dword_252917000, v3, "buildSnippetModel", 17, 2, v5, " enableTelemetry=YES ", 21, v11, MEMORY[0x277D84F90]);
  (*(v6 + 8))(v5, v7);
  sub_25293847C(v4, &qword_27F541B50, &unk_252E47970);

  sub_25292F3FC(v12);
  sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252A8EF10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252A8EF30, 0, 0);
}

uint64_t sub_252A8EF30()
{
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C58);
  sub_252CC7784(0xD000000000000028, 0x8000000252E763E0, 0, 0xD000000000000093, 0x8000000252E76340);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_252A8F044;

  return sub_252A866EC();
}

uint64_t sub_252A8F044(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252A8F178, 0, 0);
  }
}

uint64_t sub_252A8F178()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = v2[9];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_252A8F294;
  v7 = v0[2];
  v8 = v0[3];

  return sub_252A1E544(v7, &unk_252E46510, v4, &unk_252E46520, v8, v5, 0, v3);
}

uint64_t sub_252A8F294()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_252A8F414;
  }

  else
  {

    v2 = sub_252A8F3B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A8F3B0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A8F414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A8F480(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_252E36324();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_252E36AB4();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542768, &qword_252E46530);
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for ConfirmationSnippetModel(0);
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A8F674, 0, 0);
}

uint64_t sub_252A8F674()
{
  sub_252A8741C(v0 + 2);
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    v0[8] = v1;
    v0[9] = v3;
    v0[10] = v2;
    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v4[1] = sub_252A8F9C4;
    v5 = v0[27];

    return sub_252A8CB2C(v5);
  }

  else
  {
    (*(v0[29] + 56))(v0[27], 1, 1, v0[28]);
    v7 = v0[26];
    sub_25293847C(v0[27], &qword_27F542768, &qword_252E46530);
    v8 = type metadata accessor for IconConfiguration(0);
    v0[33] = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    v0[34] = v10;
    v0[35] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v7, 1, 1, v8);
    if (qword_27F53F648 != -1)
    {
      swift_once();
    }

    v11 = qword_27F544FD0;
    v0[36] = qword_27F544FD0;
    v12 = v11;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    v0[37] = v13;
    __swift_project_value_buffer(v13, qword_27F544EB0);
    v14 = sub_252E36AC4();
    v15 = sub_252E374C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_252917000, v14, v15, "Building confirmation snippet model", v16, 2u);
      MEMORY[0x2530AED00](v16, -1, -1);
    }

    v0[38] = sub_252D15950(0);
    v17 = sub_252D15950(1);
    v0[39] = v17;
    v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
    swift_beginAccess();
    v0[40] = *(v18 + 23);

    sub_252B680FC(v19);
    v20 = sub_252B631FC();
    v0[41] = v20;

    v21 = swift_task_alloc();
    v0[42] = v21;
    *v21 = v0;
    v21[1] = sub_252A8FFB0;

    return sub_252D260EC(v20);
  }
}

uint64_t sub_252A8F9C4()
{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[8];
  v4 = v2[9];

  if (v0)
  {
    v5 = sub_252A906AC;
  }

  else
  {
    v5 = sub_252A8FB1C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A8FB1C()
{
  v1 = v0[27];
  if ((*(v0[29] + 48))(v1, 1, v0[28]) == 1)
  {
    v2 = v0[26];
    sub_25293847C(v1, &qword_27F542768, &qword_252E46530);
    v3 = type metadata accessor for IconConfiguration(0);
    v0[33] = v3;
    v4 = *(v3 - 8);
    v5 = *(v4 + 56);
    v0[34] = v5;
    v0[35] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v5(v2, 1, 1, v3);
    if (qword_27F53F648 != -1)
    {
      swift_once();
    }

    v6 = qword_27F544FD0;
    v0[36] = qword_27F544FD0;
    v7 = v6;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    if (qword_27F53F558 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    v0[37] = v8;
    __swift_project_value_buffer(v8, qword_27F544EB0);
    v9 = sub_252E36AC4();
    v10 = sub_252E374C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_252917000, v9, v10, "Building confirmation snippet model", v11, 2u);
      MEMORY[0x2530AED00](v11, -1, -1);
    }

    v0[38] = sub_252D15950(0);
    v12 = sub_252D15950(1);
    v0[39] = v12;
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
    swift_beginAccess();
    v0[40] = *(v13 + 23);

    sub_252B680FC(v14);
    v15 = sub_252B631FC();
    v0[41] = v15;

    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    v16[1] = sub_252A8FFB0;

    return sub_252D260EC(v15);
  }

  else
  {
    sub_252A9093C(v1, v0[30]);
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v18 = v0[30];
    v19 = v0[17];
    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544C58);
    sub_252E379F4();

    v21 = ConfirmationSnippetModel.description.getter();
    MEMORY[0x2530AD570](v21);

    sub_252CC7784(0xD00000000000001FLL, 0x8000000252E76430, 0, 0xD000000000000093, 0x8000000252E76340);

    sub_252A9093C(v18, v19);
    v22 = type metadata accessor for HomeAutomationSnippetModels(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_252A8FFB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v4 = sub_252A9055C;
  }

  else
  {
    v4 = sub_252A900E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A900E4()
{
  v32 = *(v0 + 304);
  v34 = *(v0 + 312);
  v30 = *(v0 + 272);
  v1 = *(v0 + 224);
  v2 = *(v0 + 200);
  v28 = *(v0 + 208);
  v29 = *(v0 + 264);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  *(v0 + 360) = 0;
  sub_252E36374();
  sub_252E37024();

  v7 = sub_252E36304();
  v26 = v8;
  v27 = v7;
  v9 = *(v4 + 8);
  v9(v3, v5);
  *(v0 + 361) = 1;
  sub_252E36374();
  sub_252E37024();

  v10 = sub_252E36304();
  v25 = v11;
  v9(v3, v5);
  sub_252938414(v28, v2, &qword_27F541B50, &unk_252E47970);
  v12 = *(v1 + 44);
  v30(&v6[v12], 1, 1, v29);
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v0 + 88) = v27;
  *(v0 + 96) = v26;
  v13 = v32;
  v14 = v34;
  sub_252E330C4();
  *(v0 + 104) = v10;
  *(v0 + 112) = v25;
  sub_252E330C4();
  sub_252A75B60();
  v15 = v13;
  sub_252E33054();
  sub_252E33054();

  v6[*(v1 + 48)] = 0;
  sub_252A909F4(v2, &v6[v12], &qword_27F541B50, &unk_252E47970);
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v35 = *(v0 + 208);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v31 = *(v0 + 288);
  v33 = *(v0 + 176);
  v20 = *(v0 + 136);
  __swift_project_value_buffer(*(v0 + 296), qword_27F544C58);
  sub_252E379F4();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E76410);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 120), *(v0 + 128), 0xD000000000000072, 0x8000000252E72680);

  v21 = sub_252E375C4();
  sub_252E36A74(v21, &dword_252917000, v31, "buildSnippetModel", 17, 2, v18, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v19 + 8))(v18, v33);
  sub_25293847C(v35, &qword_27F541B50, &unk_252E47970);
  v22 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252A9055C()
{
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];

  v8 = sub_252E375C4();
  v11 = 2;
  sub_252E36A74(v8, &dword_252917000, v3, "buildSnippetModel", 17, 2, v5, " enableTelemetry=YES ", 21, v11, MEMORY[0x277D84F90]);
  (*(v6 + 8))(v5, v7);
  sub_25293847C(v4, &qword_27F541B50, &unk_252E47970);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252A906AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s22HomeAutomationInternal23BaseConfirmationHandlerCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_252A8B32C(*(v0 + 56));

  sub_252A8B35C(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

unint64_t sub_252A907DC(unint64_t result)
{
  v1 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v1 != 2)
    {
      return (result & 0x3FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v1)
    {
      result &= 0x3FFFFFFFFFFFFFFFuLL;
    }

    return result;
  }

  return result;
}

uint64_t sub_252A9080C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252A908A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A8F480(a1, v1);
}

uint64_t sub_252A9093C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippetModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A909A0()
{
  result = qword_27F542770;
  if (!qword_27F542770)
  {
    result = swift_getWitnessTable(byte_252E5CB84, &type metadata for HomeAutomationCATsSimple.ConfirmationLabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F542770);
  }

  return result;
}

uint64_t sub_252A909F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *sub_252A90A5C(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = [a1 filters];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = [a1 userTask];
  v8 = HomeStore.services(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544C58);
    sub_252E379F4();

    swift_getErrorValue();
    v12 = sub_252E37E54();
    MEMORY[0x2530AD570](v12);

    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E76720, 0xD000000000000093, 0x8000000252E76340, 0x7365636976726573, 0xEE00293A726F6628, 173);

    sub_252929F10(v8, 1);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_252A90C4C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = 0;
  *(v4 + 41) = 0;
  *(v4 + 56) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  v5 = a1;

  v6 = [v5 userTask];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 value];

    if (v8)
    {
      if ([v8 type] == 2)
      {
        sub_252A8B3F0();
      }

      else if ([v8 type] == 6)
      {
        sub_252A8B6A8();
      }
    }
  }

  return v4;
}

uint64_t sub_252A90D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = *(a2 + 43);
  *(v4 + 25) = *(a2 + 44);
  *(v4 + 26) = *(a2 + 41);
  *(v4 + 27) = *(a2 + 42);
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  v5 = *(a2 + 88);
  *(v4 + 48) = *(a2 + 80);
  *(v4 + 56) = v5;
  v6 = *(a2 + 104);
  *(v4 + 64) = *(a2 + 96);
  *(v4 + 72) = v6;
  v7 = *(a2 + 56);
  *(v4 + 80) = *(a2 + 48);
  *(v4 + 88) = v7;
  v8 = *(a2 + 72);
  *(v4 + 96) = *(a2 + 64);
  *(v4 + 104) = v8;
  *(v4 + 105) = *(a2 + 105);
  return v4;
}

uint64_t sub_252A90DBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25294B7BC;

  return sub_252A8A790();
}

unint64_t sub_252A90E4C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_252E378C4();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
      }

      if (qword_27F53F490 != -1)
      {
        swift_once();
      }

      ++v3;
      v4 = sub_252E36AD4();
      __swift_project_value_buffer(v4, qword_27F544C58);
      sub_252E379F4();

      v5 = HomeAutomationAbstractMeasurement.description.getter();
      MEMORY[0x2530AD570](v5);

      sub_252CC3D90(0xD000000000000016, 0x8000000252E767A0, 0xD000000000000093, 0x8000000252E76340);
    }

    while (v2 != v3);
  }

  return result;
}

id sub_252A90FE4(id result, void *a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_252A9103C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252A921B8(a1);
}

uint64_t sub_252A9126C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252A91340;

  return sub_252A921B8(v6);
}

uint64_t sub_252A91340(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  type metadata accessor for ShowHomeFiltersResolutionResult();
  v5 = sub_252E37254();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_252A914C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2529C9ED8;

  return sub_252A92608();
}

uint64_t sub_252A916EC(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_252A91798;

  return sub_252A92608();
}

uint64_t sub_252A91798(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_252A918C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9ED8;

  return sub_252A92910(a1);
}

id sub_252A9196C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (qword_27F53F580 != -1)
  {
    v25 = a1;
    swift_once();
    a1 = v25;
  }

  v9 = qword_27F544F08;
  v40 = 1;
  v39 = 1;
  v38 = 1;
  v37 = 1;
  *&v41 = 0;
  BYTE8(v41) = 1;
  v42 = 0;
  v43 = 0;
  *&v44 = 0;
  *(&v44 + 1) = a1;
  *v45 = a2;
  v46 = 0;
  memset(&v45[8], 0, 32);
  LOBYTE(v47) = 1;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  LOWORD(v51) = 513;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 1;
  GEOLocationCoordinate2DMake();
  v34 = v51;
  v35 = 0u;
  v36 = 1;
  v30 = *&v45[16];
  v31 = 0uLL;
  v32 = v47;
  v33 = 0u;
  v26 = v41;
  v27 = 0u;
  v28 = v44;
  v29 = *v45;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v9, a4, "HandleIntent", 12, 2, &v26);
  v56[8] = v34;
  v56[9] = v35;
  v57 = v36;
  v56[4] = v30;
  v56[5] = v31;
  v56[6] = v32;
  v56[7] = v33;
  v56[0] = v26;
  v56[1] = v27;
  v56[2] = v28;
  v56[3] = v29;
  sub_25293847C(v56, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v10 = sub_252E36804();
  v12 = v11;

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v14 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v14, &unk_27F541F10, &unk_252E42870);
  }

  v15 = [objc_opt_self() sharedAnalytics];
  if (v15)
  {
    v16 = v15;

    sub_252CC1408(v17);

    v18 = sub_252E36E24();

    [v16 logEventWithType:6506 context:v18];
  }

  else
  {
  }

  sub_252DB7C84(v19);

  v20 = sub_252DB5924();

  result = sub_252C5C61C(a5);
  v22 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v20))
  {
    result = [result setCommandDuration_];
LABEL_12:
    sub_252DB7C84(result);
    sub_252DB7138(v22);

    sub_252DB7C84(v23);
    sub_252DB649C(0, 0, 1);

    v24 = a3;

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_252A91EA4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252A91F78;

  return sub_252A92910(v6);
}

uint64_t sub_252A91F78(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id ShowHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShowHomeIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowHomeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShowHomeIntentHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShowHomeIntentHandler();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_252A921D8()
{
  if (qword_27F53F488 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_27F544C40);
    sub_252CC3D90(0xD000000000000024, 0x8000000252E76A50, 0xD000000000000078, 0x8000000252E76950);
    v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
    sub_252929E74((v3 + 16), v0 + 16);

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v4 = sub_252E338D4();
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
      sub_252929E74((v5 + 16), v0 + 56);

      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v6 = sub_252E338B4();
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      }

      else
      {
        v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
        sub_252929E74((v7 + 16), v0 + 96);

        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v8 = sub_252E33894();
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        if ((v8 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_24:
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1, qword_27F544C70);
          sub_252CC4050(0xD000000000000046, 0x8000000252E76A80, 0xD000000000000078, 0x8000000252E76950, 0xD000000000000014, 0x8000000252E76AD0, 39);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_252E3C130;
          type metadata accessor for ShowHomeFiltersResolutionResult();
          *(v19 + 32) = sub_252E20FF8(1);
          goto LABEL_33;
        }
      }

      v9 = sub_25297A2A8();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v10 = [*(v0 + 136) filters];
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v12 = v10;
      type metadata accessor for HomeFilter();
      v13 = sub_252E37264();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v22 = v11;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_13:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      type metadata accessor for ShowHomeFiltersResolutionResult();
      sub_252E2B004(v17);

      MEMORY[0x2530AD700]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v15;
      if (v18 == v14)
      {
        v19 = v22;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v14 = sub_252E378C4();
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_31:
  v19 = MEMORY[0x277D84F90];
LABEL_32:

LABEL_33:
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_252A92624()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C70);
  sub_252CC3D90(0xD000000000000036, 0x8000000252E76A10, 0xD000000000000078, 0x8000000252E76950);
  v2 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v3 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 1;
  [v2 setUserActivity_];
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_252A92760(uint64_t a1)
{
  type metadata accessor for ShowCameraViaHomeAppHandleDelegate();
  v2 = type metadata accessor for ShowCameraOnTVHandleDelegate();
  v3 = type metadata accessor for ShowEntityHandleDelegate();
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E769F0, 0xD000000000000078, 0x8000000252E76950);
  v5 = &off_2864B2B80;
  if (off_2864B2B90())
  {
    return (v5[3])();
  }

  v5 = &off_2864BEF70;
  if (off_2864BEF80(a1, v2, &off_2864BEF70))
  {
    return (v5[3])();
  }

  v5 = &off_2864B8B58;
  if (off_2864B8B68(a1, v3, &off_2864B8B58))
  {
    return (v5[3])();
  }

  type metadata accessor for ShowHomeIntentDefaultHandleDelegate();
  return swift_allocObject();
}

uint64_t sub_252A92910(uint64_t a1)
{
  v1[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407D0, &qword_252E3DCD8);
  v1[27] = swift_task_alloc();
  v2 = sub_252E36AD4();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_252E32E04();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_252E36AB4();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A92ACC, 0, 0);
}

uint64_t sub_252A92ACC()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v2 = sub_252E36804();
  v4 = v3;

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v6 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v4;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v6, &unk_27F541F10, &unk_252E42870);
  }

  v7 = [objc_opt_self() sharedAnalytics];
  if (v7)
  {
    v8 = v7;

    sub_252CC1408(v9);

    v10 = sub_252E36E24();

    [v8 logEventWithType:6505 context:v10];
  }

  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[31];
  v15 = sub_252DB7C84(v11)[5];

  sub_252E32DF4();
  sub_252E32D44();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v18 < 9.22337204e18)
  {
    v20 = v0[36];
    v19 = v0[37];
    v21 = v0[34];
    v22 = v0[35];
    *(v15 + 16) = v18;

    (*(v22 + 16))(v20, v19, v21);
    if (qword_2814B09D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_11:
  v24 = v0[29];
  v23 = v0[30];
  v25 = v0[28];
  v26 = v0[26];
  v27 = __swift_project_value_buffer(v25, qword_2814B09D8);
  (*(v24 + 16))(v23, v27, v25);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E76920);
  v28 = [v26 filters];
  if (v28)
  {
    v29 = v28;
    type metadata accessor for HomeFilter();
    v30 = sub_252E37264();
  }

  else
  {
    v30 = 0;
  }

  v32 = v0[29];
  v31 = v0[30];
  v33 = v0[28];
  v34 = v0[26];
  v0[23] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v35 = sub_252E36F94();
  MEMORY[0x2530AD570](v35);

  MEMORY[0x2530AD570](0x617220656D69540ALL, 0xED00000A3A65676ELL);
  v0[24] = [v34 dateTimeRange];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
  v36 = sub_252E36F94();
  MEMORY[0x2530AD570](v36);

  sub_252CC4A5C(0, 0xE000000000000000, 1, 0xD000000000000078, 0x8000000252E76950);

  (*(v32 + 8))(v31, v33);
  v37 = [v34 filters];
  if (v37 && ((v38 = v37, type metadata accessor for HomeFilter(), v39 = sub_252E37264(), v38, v39 >> 62) ? (v40 = sub_252E378C4()) : (v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v40))
  {
    v41 = sub_252A92760(v0[26]);
    v43 = v42;
    v0[38] = v41;
    v0[21] = swift_getObjectType();
    v0[22] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542780, &unk_252E46660);
    v44 = sub_252E36F94();
    v46 = v45;
    v0[39] = v44;
    v0[40] = v45;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v0[41] = __swift_project_value_buffer(v0[28], qword_27F544C70);
    sub_252E379F4();

    MEMORY[0x2530AD570](v44, v46);
    sub_252CC4A5C(0xD000000000000011, 0x8000000252E73E80, 1, 0xD000000000000078, 0x8000000252E76950);

    ObjectType = swift_getObjectType();
    v60 = (*(v43 + 8) + **(v43 + 8));
    v48 = swift_task_alloc();
    v0[42] = v48;
    *v48 = v0;
    v48[1] = sub_252A9335C;
    v49 = v0[26];

    return v60(v49, ObjectType, v43);
  }

  else
  {
    v51 = v0[36];
    v52 = v0[26];
    v53 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v54 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v53[v54] = 5;
    [v53 setUserActivity_];
    v55 = sub_252A9196C(0x4964696C61766E49, 0xED0000746E65746ELL, v53, v51, v52);

    v56 = v0[37];
    v57 = v0[34];
    v58 = *(v0[35] + 8);
    v58(v0[36], v57);
    v58(v56, v57);

    v59 = v0[1];

    return v59(v55);
  }
}

uint64_t sub_252A9335C(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_252A9345C, 0, 0);
}

uint64_t sub_252A9345C()
{
  v1 = v0[43];
  v2 = v0[40];
  v18 = v0[39];
  v19 = v0[36];
  v3 = v0[26];
  v4 = v0[27];
  sub_252E379F4();

  v5 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v0[25] = *&v1[v5];
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E769D0, 0xD000000000000078, 0x8000000252E76950);

  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5407F0, &qword_252E3DE18);
  sub_252E32DF4();
  *v4 = v3;
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal18ApplicationContext_showHomeIntentTimed;
  swift_beginAccess();
  v11 = v3;
  sub_252A93E1C(v4, &v8[v10]);
  swift_endAccess();

  v12 = sub_252A9196C(v18, v2, v1, v19, v11);

  swift_unknownObjectRelease();
  v13 = v0[37];
  v14 = v0[34];
  v15 = *(v0[35] + 8);
  v15(v0[36], v14);
  v15(v13, v14);

  v16 = v0[1];

  return v16(v12);
}

uint64_t dispatch thunk of ShowHomeIntentHandler.resolveFilters(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return v7(a1);
}

uint64_t dispatch thunk of ShowHomeIntentHandler.confirm(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return v7(a1);
}

uint64_t dispatch thunk of ShowHomeIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return v7(a1);
}

uint64_t sub_252A93AAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252A91EA4(v2, v3, v4);
}

uint64_t sub_252A93B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252CD44B8(a1, v4, v5, v6);
}

uint64_t sub_252A93C2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B954;

  return sub_252A916EC(v2, v3);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252A93D28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25293B808;

  return sub_252A9126C(v2, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252A93E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5407D0, &qword_252E3DCD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A93EB8()
{
  type metadata accessor for TelevisionHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252A93EE8(void *a1)
{
  result = [a1 entityResponses];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_77;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v58 = MEMORY[0x277D84F90];
      v6 = v3 & 0xC000000000000001;
      v50 = v3;
      v51 = i;
      v54 = v3 + 32;
      v55 = v3 & 0xFFFFFFFFFFFFFF8;
      v3 = &off_279711000;
      v53 = v6;
      do
      {
        if (v6)
        {
          v7 = MEMORY[0x2530ADF00](v5, v50);
        }

        else
        {
          if (v5 >= *(v55 + 16))
          {
            goto LABEL_72;
          }

          v7 = *(v54 + 8 * v5);
        }

        v8 = v7;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v10 = [v7 *(v3 + 1768)];
        if (!v10)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v23 = sub_252E36AD4();
          __swift_project_value_buffer(v23, qword_27F544D60);
          sub_252E379F4();

          v24 = [v8 description];
          v25 = sub_252E36F34();
          v27 = v26;

          MEMORY[0x2530AD570](v25, v27);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

LABEL_26:
          v16 = MEMORY[0x277D84F90];
          v28 = *(MEMORY[0x277D84F90] + 16);
          if (!v28)
          {
            goto LABEL_5;
          }

          goto LABEL_30;
        }

        v11 = v10;
        v12 = [v10 deviceTypes];
        if (!v12)
        {

          goto LABEL_26;
        }

        v13 = v12;
        v14 = sub_252E37264();

        v15 = *(v14 + 16);
        if (v15)
        {
          v57 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v15, 0);
          v16 = v57;
          v17 = 32;
          do
          {
            v18 = sub_252E25FC4(*(v14 + v17));
            if (v19)
            {
              v20 = 0;
            }

            else
            {
              v20 = v18;
            }

            v22 = *(v57 + 16);
            v21 = *(v57 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_2529AA420((v21 > 1), v22 + 1, 1);
            }

            *(v57 + 16) = v22 + 1;
            *(v57 + 8 * v22 + 32) = v20;
            v17 += 8;
            --v15;
          }

          while (v15);

          v3 = 0x279711000;
          i = v51;
        }

        else
        {

          v16 = MEMORY[0x277D84F90];
        }

        v6 = v53;
        v28 = *(v16 + 16);
        if (!v28)
        {
LABEL_5:

          continue;
        }

LABEL_30:
        v29 = 32;
        while (v28)
        {
          v30 = *(v16 + v29);
          v29 += 8;
          --v28;
          if (v30 == 41)
          {

            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_6;
          }
        }

LABEL_6:
        ;
      }

      while (v5 != i);

      v31 = v58;
      if (v58 < 0 || (v58 & 0x4000000000000000) != 0)
      {
        v52 = sub_252E378C4();
        if (v52)
        {
          goto LABEL_39;
        }

        goto LABEL_69;
      }

      v52 = *(v58 + 16);
      if (!v52)
      {
        goto LABEL_69;
      }

LABEL_39:
      v32 = 0;
LABEL_41:
      if ((v58 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x2530ADF00](v32, v31);
LABEL_44:
        v34 = v33;
        v9 = __OFADD__(v32++, 1);
        if (!v9)
        {
          v35 = [v33 taskResponses];
          if (v35)
          {
            v36 = v35;
            type metadata accessor for HomeUserTaskResponse();
            v37 = sub_252E37264();

            v38 = [v34 *(v3 + 1768)];
            if (v38)
            {

              if (v37 >> 62)
              {
                v39 = sub_252E378C4();
                if (v39)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v39)
                {
LABEL_49:
                  v56 = v34;
                  v40 = 0;
                  v3 = v37 & 0xC000000000000001;
                  while (1)
                  {
                    if (v3)
                    {
                      v41 = MEMORY[0x2530ADF00](v40, v37);
                    }

                    else
                    {
                      if (v40 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_74;
                      }

                      v41 = *(v37 + 32 + 8 * v40);
                    }

                    v42 = v41;
                    v9 = __OFADD__(v40++, 1);
                    if (v9)
                    {
                      goto LABEL_73;
                    }

                    if (qword_27F53F728 != -1)
                    {
                      swift_once();
                    }

                    v43 = qword_27F575C38;
                    v44 = [v42 taskOutcome];
                    if (*(v43 + 16))
                    {
                      v45 = v44;
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v45);
                      v46 = sub_252E37F14();
                      v47 = -1 << *(v43 + 32);
                      v48 = v46 & ~v47;
                      if ((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
                      {
                        v49 = ~v47;
                        while (*(*(v43 + 48) + 8 * v48) != v45)
                        {
                          v48 = (v48 + 1) & v49;
                          if (((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                          {
                            goto LABEL_50;
                          }
                        }

                        v31 = v58;
                        v3 = &off_279711000;
                        if (v32 == v52)
                        {

                          return 1;
                        }

                        goto LABEL_41;
                      }
                    }

LABEL_50:

                    if (v40 == v39)
                    {

                      return 0;
                    }
                  }
                }
              }
            }
          }

          else
          {
          }

LABEL_69:

          return 0;
        }

LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v32 < *(v31 + 16))
      {
        v33 = *(v58 + 32 + 8 * v32);
        goto LABEL_44;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      ;
    }

    return 0;
  }

  return result;
}

uint64_t sub_252A94570(void *a1)
{
  result = [a1 entityResponses];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v48 = v3;
    if (v3 >> 62)
    {
      goto LABEL_64;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        v6 = v48 & 0xC000000000000001;
        v7 = v48 & 0xFFFFFFFFFFFFFF8;
        v47 = v4;
        while (1)
        {
          if (v6)
          {
            v8 = MEMORY[0x2530ADF00](v5, v48);
          }

          else
          {
            if (v5 >= *(v7 + 16))
            {
              goto LABEL_61;
            }

            v8 = *(v48 + 32 + 8 * v5);
          }

          v9 = v8;
          v10 = __OFADD__(v5++, 1);
          if (v10)
          {
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v11 = [v8 entity];
          if (v11)
          {
            break;
          }

          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v24 = sub_252E36AD4();
          __swift_project_value_buffer(v24, qword_27F544D60);
          sub_252E379F4();

          v25 = [v9 description];
          v26 = sub_252E36F34();
          v28 = v27;

          MEMORY[0x2530AD570](v26, v28);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

LABEL_26:
          v17 = MEMORY[0x277D84F90];
          v29 = *(MEMORY[0x277D84F90] + 16);
          if (v29)
          {
            goto LABEL_27;
          }

LABEL_51:

LABEL_52:

LABEL_6:
          if (v5 == v4)
          {
            goto LABEL_65;
          }
        }

        v12 = v11;
        v13 = [v11 deviceTypes];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v15 = sub_252E37264();

        v16 = *(v15 + 16);
        if (v16)
        {
          v49 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v16, 0);
          v17 = v49;
          v18 = 32;
          do
          {
            v19 = sub_252E25FC4(*(v15 + v18));
            if (v20)
            {
              v21 = 0;
            }

            else
            {
              v21 = v19;
            }

            v23 = *(v49 + 16);
            v22 = *(v49 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_2529AA420((v22 > 1), v23 + 1, 1);
            }

            *(v49 + 16) = v23 + 1;
            *(v49 + 8 * v23 + 32) = v21;
            v18 += 8;
            --v16;
          }

          while (v16);

          v4 = v47;
          v6 = v48 & 0xC000000000000001;
        }

        else
        {

          v17 = MEMORY[0x277D84F90];
        }

        v7 = v48 & 0xFFFFFFFFFFFFFF8;
        v29 = *(v17 + 16);
        if (!v29)
        {
          goto LABEL_51;
        }

LABEL_27:
        v30 = 32;
        do
        {
          if (!v29)
          {

            goto LABEL_6;
          }

          v31 = *(v17 + v30);
          v30 += 8;
          --v29;
        }

        while (v31 != 36);

        v32 = [v9 taskResponses];
        if (!v32)
        {
          goto LABEL_52;
        }

        v33 = v32;
        type metadata accessor for HomeUserTaskResponse();
        v34 = sub_252E37264();

        v35 = [v9 entity];
        if (!v35)
        {

          v6 = v48 & 0xC000000000000001;
          goto LABEL_6;
        }

        if (!(v34 >> 62))
        {
          v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_34;
          }

          goto LABEL_57;
        }

        v36 = sub_252E378C4();
        if (!v36)
        {
LABEL_57:

LABEL_58:
          v4 = v47;
          v6 = v48 & 0xC000000000000001;
          v7 = v48 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_6;
        }

LABEL_34:
        v37 = 0;
        while (1)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2530ADF00](v37, v34);
          }

          else
          {
            if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_62;
            }

            v38 = *(v34 + 32 + 8 * v37);
          }

          v39 = v38;
          v10 = __OFADD__(v37++, 1);
          if (v10)
          {
            break;
          }

          if (qword_27F53F730 != -1)
          {
            swift_once();
          }

          v40 = qword_27F575C40;
          v41 = [v39 taskOutcome];
          if (*(v40 + 16))
          {
            v42 = v41;
            sub_252E37EC4();
            MEMORY[0x2530AE390](v42);
            v43 = sub_252E37F14();
            v44 = -1 << *(v40 + 32);
            v45 = v43 & ~v44;
            if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
            {
              v46 = ~v44;
              while (*(*(v40 + 48) + 8 * v45) != v42)
              {
                v45 = (v45 + 1) & v46;
                if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              return 1;
            }
          }

LABEL_35:

          if (v37 == v36)
          {

            goto LABEL_58;
          }
        }

LABEL_63:
        __break(1u);
LABEL_64:
        v4 = sub_252E378C4();
        if (!v4)
        {
          goto LABEL_65;
        }
      }

      goto LABEL_26;
    }

LABEL_65:

    return 0;
  }

  return result;
}

void sub_252A94B20(void *a1, void (*a2)(char *))
{
  v4 = [a1 userTask];
  if (!v4)
  {
LABEL_131:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v118 = sub_252E36AD4();
    __swift_project_value_buffer(v118, qword_27F544C70);
    sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007ELL, 0x8000000252E76B90, 0xD000000000000021, 0x8000000252E68B10, 44);
    v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v119 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v24[v119] = 5;
    [v24 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v120 = sub_252E37254();
    [v24 setEntityResponses_];

    a2(v24);
    goto LABEL_134;
  }

  v5 = v4;
  v6 = [a1 filters];
  if (!v6)
  {

    goto LABEL_131;
  }

  v7 = v6;
  v136 = a2;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v134 = a1;
  v135 = v5;
  if (v8 >> 62)
  {
    goto LABEL_129;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_130:

    goto LABEL_131;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2530ADF00](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      v9 = sub_252E378C4();
      if (!v9)
      {
        goto LABEL_130;
      }

      goto LABEL_5;
    }

    v14 = [v11 isExcludeFilter];
    sub_252956D08();
    v15 = sub_252E37674();
    v16 = v15;
    if (!v14)
    {
      break;
    }

    v17 = sub_252E37694();

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_130;
    }
  }

LABEL_17:
  v18 = type metadata accessor for HomeStore(0);
  v19 = static HomeStore.shared.getter(v18);
  v20 = HomeStore.accessories(matching:supporting:)(v8, 0);
  v22 = v21;

  if (v22)
  {
    sub_252929F10(v20, 1);

    if (qword_27F53F498 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_138;
  }

  type metadata accessor for MutableMatterHomeFilter();
  swift_initStackObject();
  v27 = v12;
  v28 = sub_2529D0A90(v27);
  v127 = v27;

  *(v28 + 72) = 41;
  v29 = sub_2529D0538();
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v30.n128_f64[0] = HomeFilter.Builder.init()();
  v32 = (*(*v31 + 624))(41, v30);

  v33 = (*(*v32 + 728))(1);

  v35 = (*(*v33 + 760))(v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_252E3C130;
  v131 = v36;
  *(v36 + 32) = v29;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_252E3C130;
  v129 = v37;
  *(v37 + 32) = v135;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v35;
  v126 = v29;
  v39 = v135;
  v125 = v35;
  sub_25297A8D8(inited);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_252E3C130;
  *(v40 + 32) = v39;
  v135 = v8;
  v128 = v40;
  if (v20 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = v39;
  if (!v12)
  {
LABEL_52:
    sub_252929F10(v20, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_252E3C290;
    *(v66 + 32) = v131;
    v67 = v66 + 32;
    *(v66 + 40) = v129;
    v12 = sub_252B4D7EC(v66, 0, 1);
    v69 = v68;
    swift_setDeallocating();
    sub_252A965B0(v67);
    if (v69)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  v41 = 0;
  v42 = v20 & 0xC000000000000001;
  while (!v42)
  {
    if (v41 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      swift_once();
LABEL_19:
      v23 = sub_252E36AD4();
      __swift_project_value_buffer(v23, qword_27F544C70);
      sub_252CC4050(0xD000000000000031, 0x8000000252E76C10, 0xD00000000000007ELL, 0x8000000252E76B90, 0xD000000000000021, 0x8000000252E68B10, 49);
      v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v25 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v24[v25] = 102;
      [v24 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v26 = sub_252E37254();
      [v24 setEntityResponses_];

      (v136)(v24);
LABEL_134:

      return;
    }

    v43 = *(v20 + 32 + 8 * v41);

    v44 = __OFADD__(v41++, 1);
    if (v44)
    {
      goto LABEL_48;
    }

LABEL_29:
    v45 = (*v43 + 256);
    v46 = *v45;
    if ((*v45)() == 41)
    {
      goto LABEL_25;
    }

    v47 = (*(*v43 + 272))();
    if (!*(v47 + 16) || (sub_252E37EC4(), MEMORY[0x2530AE390](41), v48 = sub_252E37F14(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
    {
LABEL_35:

      v53 = (v46)(v52);
      if (v53 == 38)
      {
        v55 = &unk_2864A1B10;
LABEL_39:
        v54 = sub_2529FC004(v55);
      }

      else
      {
        v54 = MEMORY[0x277D84FA0];
        if (v53 == 41)
        {
          v55 = &unk_2864A1B38;
          goto LABEL_39;
        }
      }

      if (!*(v54 + 16))
      {
        goto LABEL_49;
      }

      sub_252E37EC4();
      MEMORY[0x2530AE390](41);
      v56 = sub_252E37F14();
      v57 = -1 << *(v54 + 32);
      v58 = v56 & ~v57;
      if (((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
        goto LABEL_49;
      }

      v59 = ~v57;
      while (*(*(v54 + 48) + 8 * v58) != 41)
      {
        v58 = (v58 + 1) & v59;
        if (((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_24;
    }

    v51 = ~v49;
    while (*(*(v47 + 48) + 8 * v50) != 41)
    {
      v50 = (v50 + 1) & v51;
      if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_24:

    v42 = v20 & 0xC000000000000001;
LABEL_25:

    if (v41 == v12)
    {
      goto LABEL_52;
    }
  }

  v43 = MEMORY[0x2530ADF00](v41, v20);
  v44 = __OFADD__(v41++, 1);
  if (!v44)
  {
    goto LABEL_29;
  }

LABEL_48:
  __break(1u);
LABEL_49:

  sub_252929F10(v20, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_252E3C3C0;
  *(v60 + 32) = v131;
  *(v60 + 40) = v129;
  *(v60 + 48) = v8;
  *(v60 + 56) = v128;
  v12 = sub_252B4D7EC(v60, 0, 1);
  v62 = v61;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
  swift_arrayDestroy();
  if ((v62 & 1) == 0)
  {
LABEL_53:
    v70 = v12;
    v71 = a2;
    if ((sub_252A93EE8(v70) & 1) == 0 || (sub_252A94570(v70) & 1) == 0)
    {
      a2(v70);

      sub_252927D3C(v12);
      v65 = v12;
      goto LABEL_114;
    }

    type metadata accessor for MutableControlHomeIntentResponse();
    swift_initStackObject();
    v72 = v70;
    v123 = sub_252D6D96C(v72);
    v124 = v12;
    sub_252927D3C(v12);
    v73 = [v72 entityResponses];
    v74 = MEMORY[0x277D84F90];
    if (v73)
    {
      v75 = v73;
      type metadata accessor for HomeEntityResponse();
      v76 = sub_252E37264();

      v137 = v74;
      v122 = v76;
      if (v76 >> 62)
      {
        a2 = sub_252E378C4();
        if (a2)
        {
          goto LABEL_58;
        }
      }

      else
      {
        a2 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
LABEL_58:
          v77 = 0;
          v135 = (v76 & 0xC000000000000001);
          v134 = (v76 & 0xFFFFFFFFFFFFFF8);
          v130 = a2;
          v132 = v76 + 32;
          while (1)
          {
LABEL_59:
            if (v135)
            {
              v78 = MEMORY[0x2530ADF00](v77, v122);
            }

            else
            {
              if (v77 >= v134[2])
              {
                goto LABEL_137;
              }

              v78 = *(v132 + 8 * v77);
            }

            v79 = v78;
            v44 = __OFADD__(v77++, 1);
            if (v44)
            {
              goto LABEL_136;
            }

            v80 = [v78 entity];
            if (!v80)
            {
              break;
            }

            v81 = v80;
            v82 = [v80 deviceTypes];
            if (!v82)
            {

              goto LABEL_82;
            }

            v83 = v82;
            v12 = sub_252E37264();

            v84 = v12[2];
            if (!v84)
            {

              goto LABEL_81;
            }

            sub_2529AA420(0, v84, 0);
            v85 = v74;
            v86 = 4;
            do
            {
              v87 = sub_252E25FC4(v12[v86]);
              if (v88)
              {
                v89 = 0;
              }

              else
              {
                v89 = v87;
              }

              v91 = *(v74 + 16);
              v90 = *(v74 + 24);
              if (v91 >= v90 >> 1)
              {
                sub_2529AA420((v90 > 1), v91 + 1, 1);
              }

              *(v74 + 16) = v91 + 1;
              *(v74 + 8 * v91 + 32) = v89;
              ++v86;
              --v84;
            }

            while (v84);

            v74 = MEMORY[0x277D84F90];
            a2 = v130;
            v96 = *(v85 + 16);
            if (v96)
            {
LABEL_83:
              v97 = 32;
              while (v96)
              {
                v98 = *(v85 + v97);
                v97 += 8;
                --v96;
                if (v98 == 36)
                {

                  v99 = [v79 taskResponses];
                  if (!v99)
                  {
                    goto LABEL_92;
                  }

                  v100 = v99;
                  type metadata accessor for HomeUserTaskResponse();
                  v101 = sub_252E37264();

                  v102 = [v79 entity];
                  if (!v102)
                  {
                    break;
                  }

                  if (v101 >> 62)
                  {
                    v103 = sub_252E378C4();
                    if (!v103)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!v103)
                    {
                      break;
                    }
                  }

                  v104 = 0;
                  while (1)
                  {
                    if ((v101 & 0xC000000000000001) != 0)
                    {
                      v105 = MEMORY[0x2530ADF00](v104, v101);
                    }

                    else
                    {
                      if (v104 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_141;
                      }

                      v105 = *(v101 + 32 + 8 * v104);
                    }

                    v106 = v105;
                    v44 = __OFADD__(v104++, 1);
                    if (v44)
                    {
                      __break(1u);
LABEL_141:
                      __break(1u);
                      goto LABEL_142;
                    }

                    if (qword_27F53F730 != -1)
                    {
                      swift_once();
                    }

                    v107 = qword_27F575C40;
                    v108 = [v106 taskOutcome];
                    if (*(v107 + 16))
                    {
                      v12 = v108;
                      sub_252E37EC4();
                      MEMORY[0x2530AE390](v12);
                      v109 = sub_252E37F14();
                      v110 = -1 << *(v107 + 32);
                      v111 = v109 & ~v110;
                      if ((*(v107 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
                      {
                        break;
                      }
                    }

LABEL_94:

                    v74 = MEMORY[0x277D84F90];
                    a2 = v130;
                    if (v104 == v103)
                    {
                      goto LABEL_91;
                    }
                  }

                  v112 = ~v110;
                  while (*(*(v107 + 48) + 8 * v111) != v12)
                  {
                    v111 = (v111 + 1) & v112;
                    if (((*(v107 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
                    {
                      goto LABEL_94;
                    }
                  }

                  v74 = MEMORY[0x277D84F90];
                  a2 = v130;
                  if (v77 != v130)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_116;
                }
              }
            }

LABEL_91:

LABEL_92:
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            if (v77 == a2)
            {
LABEL_116:
              v74 = v137;
              v71 = v136;
              goto LABEL_117;
            }
          }

          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v92 = sub_252E36AD4();
          __swift_project_value_buffer(v92, qword_27F544D60);
          sub_252E379F4();

          v93 = [v79 description];
          v12 = sub_252E36F34();
          v95 = v94;

          MEMORY[0x2530AD570](v12, v95);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);
LABEL_81:

LABEL_82:
          v85 = v74;
          v96 = *(v74 + 16);
          if (v96)
          {
            goto LABEL_83;
          }

          goto LABEL_91;
        }
      }

LABEL_117:
    }

    if (v74 >> 62)
    {
      v113 = sub_252E378C4();
      if (v113)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v113 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v113)
      {
LABEL_120:
        v138 = MEMORY[0x277D84F90];
        sub_252E37AB4();
        if (v113 < 0)
        {
          __break(1u);
          return;
        }

        v114 = 0;
        do
        {
          if ((v74 & 0xC000000000000001) != 0)
          {
            v115 = MEMORY[0x2530ADF00](v114, v74);
          }

          else
          {
            v115 = *(v74 + 8 * v114 + 32);
          }

          v116 = v115;
          ++v114;
          type metadata accessor for MutableHomeEntityResponse();
          swift_allocObject();
          sub_252D6D668(v116);

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v113 != v114);

        v117 = v138;
LABEL_145:
        *(v123 + 24) = v117;

        v121 = sub_252D6BB10();
        v71();

        sub_252927D3C(v124);
        sub_252927D3C(v124);

        goto LABEL_115;
      }
    }

    v117 = MEMORY[0x277D84F90];
    goto LABEL_145;
  }

LABEL_50:
  if (qword_27F53F498 != -1)
  {
LABEL_142:
    swift_once();
  }

  v63 = sub_252E36AD4();
  __swift_project_value_buffer(v63, qword_27F544C70);
  MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E76B90, 0xD000000000000021, 0x8000000252E68B10, 77);

  v64 = parse(error:with:)(v12, v134);
  (a2)();

  v65 = v12;
LABEL_114:
  sub_252927D3C(v65);
LABEL_115:
}

uint64_t sub_252A95E14(void *a1)
{
  v1 = a1;
  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = type metadata accessor for HomeStore(0);
  v6 = static HomeStore.shared.getter(v5);
  v7 = v6[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v7 != 2 && (v7 & 1) == 0 || (v8 = &off_279711000, (v9 = [v1 filters]) == 0))
  {

    return 0;
  }

  v10 = v9;
  type metadata accessor for HomeFilter();
  v11 = sub_252E37264();

  v12 = [v1 userTask];
  v13 = HomeStore.accessories(matching:supporting:)(v11, v12);
  v15 = v14;

  if (v15)
  {
    v16 = v13;
    v17 = 1;
LABEL_74:
    sub_252929F10(v16, v17);
    return 0;
  }

  v18 = [v1 filters];
  if (!v18)
  {
    goto LABEL_42;
  }

  v19 = v18;
  v20 = sub_252E37264();

  if (v20 >> 62)
  {
    goto LABEL_40;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_13:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x2530ADF00](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v21 = *(v20 + 32);
  }

  v19 = v21;

  v22 = [v1 v8[192]];
  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = v22;
  v24 = sub_252E37264();

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_19;
  }

LABEL_78:
  v25 = sub_252E378C4();
LABEL_19:

  if (v25 != 1 || [v19 deviceType] != 36 && objc_msgSend(v19, sel_outerDeviceType) != 36)
  {
LABEL_34:

    goto LABEL_42;
  }

  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  HomeFilter.Builder.init()();
  v27 = *(*v26 + 752);
  v1 = v19;
  v28 = v27(v19);

  v29 = (*(*v28 + 624))(41);

  v31 = (*(*v29 + 760))(v30);

  v20 = static HomeStore.shared.getter(v32);
  v33 = sub_2529D9D50();

  v8 = (v33 & 0xFFFFFFFFFFFFFF8);
  if (v33 >> 62)
  {
    v19 = sub_252E378C4();
  }

  else
  {
    v19 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = 0;
  do
  {
    if (v19 == v34)
    {

LABEL_41:

LABEL_42:
      if (v13 >> 62)
      {
        goto LABEL_72;
      }

      v38 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
LABEL_73:
        v16 = v13;
        v17 = 0;
        goto LABEL_74;
      }

LABEL_44:
      v39 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x2530ADF00](v39, v13);
          v41 = __OFADD__(v39++, 1);
          if (v41)
          {
LABEL_68:
            __break(1u);
LABEL_69:
            sub_252929F10(v13, 0);

            return 1;
          }
        }

        else
        {
          if (v39 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_72:
            v38 = sub_252E378C4();
            if (!v38)
            {
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          v40 = *(v13 + 32 + 8 * v39);

          v41 = __OFADD__(v39++, 1);
          if (v41)
          {
            goto LABEL_68;
          }
        }

        v42 = (*v40 + 256);
        v43 = *v42;
        if ((*v42)() == 41)
        {
          sub_252929F10(v13, 0);

          return 1;
        }

        v44 = (*(*v40 + 272))();
        if (*(v44 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v45 = sub_252E37F14();
          v46 = -1 << *(v44 + 32);
          v47 = v45 & ~v46;
          if ((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
          {
            v48 = ~v46;
            while (*(*(v44 + 48) + 8 * v47) != 41)
            {
              v47 = (v47 + 1) & v48;
              if (((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_69;
          }
        }

LABEL_55:

        v50 = (v43)(v49);
        if (v50 == 38)
        {
          break;
        }

        v51 = MEMORY[0x277D84FA0];
        if (v50 == 41)
        {
          v52 = &unk_2864AB0D0;
LABEL_59:
          v51 = sub_2529FC004(v52);
        }

        if (*(v51 + 16))
        {
          sub_252E37EC4();
          MEMORY[0x2530AE390](41);
          v53 = sub_252E37F14();
          v54 = -1 << *(v51 + 32);
          v55 = v53 & ~v54;
          if ((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
          {
            v56 = ~v54;
            while (*(*(v51 + 48) + 8 * v55) != 41)
            {
              v55 = (v55 + 1) & v56;
              if (((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_69;
          }
        }

LABEL_45:

        if (v39 == v38)
        {
          goto LABEL_73;
        }
      }

      v52 = &unk_2864AB0A8;
      goto LABEL_59;
    }

    if ((v33 & 0xC000000000000001) == 0)
    {
      if (v34 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v20 = *(v33 + 8 * v34 + 32);

        if (__OFADD__(v34, 1))
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      __break(1u);
LABEL_40:
      if (!sub_252E378C4())
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    v20 = MEMORY[0x2530ADF00](v34, v33);
    if (__OFADD__(v34, 1))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_29:
    v35 = sub_252D50D28(v31);

    ++v34;
  }

  while ((v35 & 1) == 0);

  sub_252929F10(v13, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v36 = sub_252E36AD4();
  __swift_project_value_buffer(v36, qword_27F544C70);
  sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E76B50, 0xD00000000000007ELL, 0x8000000252E76B90);

  return 1;
}

uint64_t sub_252A965B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceEntity(uint64_t a1)
{
  result = qword_27F5427D8;
  if (!qword_27F5427D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252A966BC()
{
  v0 = sub_252BF8258();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = &unk_2864A7F60;
  }

  sub_252E36424();
  __swift_project_boxed_opaque_existential_1(&v19, v21);
  v2 = sub_252E364D4();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v19);
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v6 = v5;

  sub_252E36744();

  v7 = (*(*v6 + 376))(v19, v20);

  v8 = (*(*v7 + 384))(7);

  v9 = (*(*v8 + 392))(v2, v4);

  v10 = (*(*v9 + 400))(v1);

  v11 = (*(*v10 + 408))(0);

  sub_252E36744();

  v12 = (*(*v11 + 416))(v19, v20);

  sub_252E36744();

  v13 = (*(*v12 + 424))(v19, v20);

  v14 = (*(*v13 + 432))(0, 0);

  v15 = (*(*v14 + 440))(0);

  v17 = (*(*v15 + 448))(v16);

  return v17;
}

uint64_t sub_252A96AFC()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_252E379F4();
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  v0 = sub_252E37FB4();
  MEMORY[0x2530AD570](v0);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E76CC0);
  sub_252E36424();
  __swift_project_boxed_opaque_existential_1(&v14, v16);
  v1 = sub_252E364D4();
  MEMORY[0x2530AD570](v1);

  __swift_destroy_boxed_opaque_existential_1(&v14);
  MEMORY[0x2530AD570](0x6D616E202020200ALL, 0xEB00000000203A65);

  sub_252E36744();

  if (v15)
  {
    v2 = v14;
  }

  else
  {
    v2 = 0x29656E6F6E28;
  }

  if (v15)
  {
    v3 = v15;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v2, v3);

  MEMORY[0x2530AD570](0x7974202020200A2CLL, 0xEC000000203A6570);

  sub_252E36744();

  if ((~v14 & 0xC0C0) != 0)
  {
    v4 = sub_252A97594(v14);
    v5 = v6;
  }

  else
  {
    v4 = 0x29656E6F6E28;
    v5 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v4, v5);

  MEMORY[0x2530AD570](0x6D6F68202020200ALL, 0xEF203A656D614E65);

  sub_252E36744();

  if (v15)
  {
    v7 = v14;
  }

  else
  {
    v7 = 0x29656E6F6E28;
  }

  if (v15)
  {
    v8 = v15;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v7, v8);

  MEMORY[0x2530AD570](0x6F6F72202020200ALL, 0xEF203A656D614E6DLL);

  sub_252E36744();

  if (v15)
  {
    v9 = v14;
  }

  else
  {
    v9 = 0x29656E6F6E28;
  }

  if (v15)
  {
    v10 = v15;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v9, v10);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E76CE0);

  sub_252E36744();

  if (v15)
  {
    v11 = v14;
  }

  else
  {
    v11 = 0x29656E6F6E28;
  }

  if (v15)
  {
    v12 = v15;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return v17;
}

uint64_t sub_252A96E98(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27F5427A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  swift_allocObject();
  *(v1 + v7) = sub_252E36734();
  v8 = qword_27F5427B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542870, &qword_252E46A70);
  swift_allocObject();
  *(v1 + v8) = sub_252E36734();
  v9 = qword_27F5427B8;
  swift_allocObject();
  *(v1 + v9) = sub_252E36734();
  v10 = qword_27F5427C0;
  swift_allocObject();
  *(v1 + v10) = sub_252E36734();
  v11 = qword_27F5427C8;
  swift_allocObject();
  *(v1 + v11) = sub_252E36734();
  v12 = qword_27F5427D0;
  swift_allocObject();
  *(v1 + v12) = sub_252E36734();
  (*(v4 + 16))(v6, a1, v3);
  v13 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v13;
}

uint64_t sub_252A970C8()
{
}

uint64_t sub_252A97148()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 65522 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65522 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65522;
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

      return (*a1 | (v4 << 16)) - 65522;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65522;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xC | (*a1 >> 14)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DeviceType(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65522 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65522 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 16) + 1;
    *result = a2 - 14;
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
    *result = 16 * (-a2 & 0xC) - (a2 << 14);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A973B0()
{
  result = qword_27F5427E8;
  if (!qword_27F5427E8)
  {
    result = swift_getWitnessTable(byte_252E46790, &type metadata for DeviceType, v0, v1);
    atomic_store(result, &qword_27F5427E8);
  }

  return result;
}

uint64_t sub_252A97428()
{
  v0 = aComAppleHome_0[0];

  return v0;
}

uint64_t sub_252A97480(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E468F4);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252A974E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_252E4697C, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252A97534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E468F4);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252A97594(unsigned __int16 a1)
{
  if (a1 >> 14 == 1)
  {
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    MEMORY[0x2530AD570](0x7954656369766544, 0xEA00000000006570);
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E76D00);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E76D20);
    goto LABEL_5;
  }

  if (!(a1 >> 14))
  {
    sub_252E379F4();
    MEMORY[0x2530AD570](60, 0xE100000000000000);
    MEMORY[0x2530AD570](0x7954656369766544, 0xEA00000000006570);
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E76D40);
LABEL_5:
    sub_252E37AE4();
    MEMORY[0x2530AD570](8194604, 0xE300000000000000);
    return 0;
  }

  return 0x29656E6F6E28;
}

uint64_t sub_252A97788(char a1)
{
  result = 0x6669727550726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x5654656C707061;
      break;
    case 3:
      result = 0x79726574746162;
      break;
    case 4:
      result = 0x6172656D6163;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x53746361746E6F63;
      break;
    case 8:
      result = 1919905636;
      break;
    case 9:
      result = 7233894;
      break;
    case 10:
      result = 0x746563756166;
      break;
    case 11:
      result = 0x6F44656761726167;
      break;
    case 12:
      result = 0x6F43726574616568;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x79746964696D7568;
      break;
    case 15:
      result = 0x736E65536B61656CLL;
      break;
    case 16:
      result = 0x6C7562746867696CLL;
      break;
    case 17:
      v3 = 0x53746867696CLL;
      goto LABEL_38;
    case 18:
      result = 1801678700;
      break;
    case 19:
      result = 0x65536E6F69746F6DLL;
      break;
    case 20:
      result = 0x636E61707563636FLL;
      break;
    case 21:
      result = 0x74656C74756FLL;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0x7974697275636573;
      break;
    case 24:
      result = 0x726F736E6573;
      break;
    case 25:
      result = 0x7265776F6873;
      break;
    case 26:
      v3 = 0x53656B6F6D73;
LABEL_38:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 27:
      result = 0x656C6B6E69727073;
      break;
    case 28:
      result = 0x686374697773;
      break;
    case 29:
      result = 0x69736976656C6574;
      break;
    case 30:
      result = 0xD000000000000011;
      break;
    case 31:
      result = 0x74736F6D72656874;
      break;
    case 32:
      result = 0x65766C6176;
      break;
    case 33:
      result = 0x776F646E6977;
      break;
    case 34:
      result = 0x6F43776F646E6977;
      break;
    case 35:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A97B64(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_252A97788(*a1);
  v5 = v4;
  if (v3 == sub_252A97788(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A97BEC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A97788(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A97C50(uint64_t a1)
{
  sub_252A97788(*v1);
  sub_252E37044();
}

uint64_t sub_252A97CA4(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252A97788(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A97D04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A98E08(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252A97D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252A97788(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A97D60()
{
  v0 = qword_27F542798;

  return v0;
}

uint64_t sub_252A97DA8(uint64_t a1)
{
  v2 = sub_252A999B4();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252A97DE4(uint64_t a1)
{
  v2 = sub_252A999B4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252A97E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A99750();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252A97E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A999B4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252A97ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A99750();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252A97F1C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x8000000252E67580;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x8000000252E67580;
  }

  else
  {
    v6 = 0x8000000252E675A0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7954656C676E6953;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEE00657361436570;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x8000000252E675A0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7954656C676E6953;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEE00657361436570;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252A98004()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A980B8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A98158(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A98208@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A98E5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252A98238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657361436570;
  v4 = 0xD000000000000011;
  v5 = 0x8000000252E67580;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x8000000252E675A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7954656C676E6953;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252A982A8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 12895;
  }

  else
  {
    v2 = 12639;
  }

  if (*a2)
  {
    v3 = 12895;
  }

  else
  {
    v3 = 12639;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_252A98318()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A98378(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252A983BC(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A98418@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

  *a2 = v5;
  return result;
}

void sub_252A98478(uint64_t *a1@<X8>)
{
  v2 = 12639;
  if (*v1)
  {
    v2 = 12895;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_252A98498(unsigned __int16 a1)
{
  if (a1 >> 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C3C0;
    sub_252A994B4();
    sub_252A99508();
    sub_252E366F4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    sub_252A994B4();
    sub_252A99508();
  }

  sub_252E366F4();
  sub_252A9955C();
  sub_252E36574();
}

uint64_t sub_252A9883C@<X0>(_WORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252A98EA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252A98864(uint64_t a1)
{
  sub_252A995B0();

  return sub_252E36514();
}

uint64_t sub_252A988A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A995B0();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252A988EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252A995B0();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252A98950(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A995B0();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252A989A0()
{
  result = qword_27F5427F0;
  if (!qword_27F5427F0)
  {
    result = swift_getWitnessTable(a5, &type metadata for DeviceType, v0, v1);
    atomic_store(result, &qword_27F5427F0);
  }

  return result;
}

unint64_t sub_252A989F8()
{
  result = qword_27F5427F8;
  if (!qword_27F5427F8)
  {
    result = swift_getWitnessTable(aI_5, &type metadata for DeviceType, v0, v1);
    atomic_store(result, &qword_27F5427F8);
  }

  return result;
}

unint64_t sub_252A98A50()
{
  result = qword_27F542800;
  if (!qword_27F542800)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for DeviceType, v0, v1);
    atomic_store(result, &qword_27F542800);
  }

  return result;
}

uint64_t sub_252A98C44(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DeviceEntity(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252A98C88(unsigned int a1, unsigned int a2)
{
  v2 = a2;
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      if ((a2 & 0xC000) != 0x4000)
      {
        goto LABEL_18;
      }

      v3 = a1;
      v4 = sub_252A97788(a1);
      v6 = v5;
      if (v4 != sub_252A97788(v2) || v6 != v7)
      {
LABEL_13:
        v12 = sub_252E37DB4();

        if (v12)
        {
          goto LABEL_14;
        }

LABEL_18:
        v17 = 0;
        return v17 & 1;
      }
    }

    else
    {
      if ((a2 & 0xC000) != 0x8000)
      {
        goto LABEL_18;
      }

      v3 = a1;
      v8 = sub_252A97788(a1);
      v10 = v9;
      if (v8 != sub_252A97788(v2) || v10 != v11)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    a1 = (v3 >> 8) & 0x3F;
    v2 = (v2 >> 8) & 0x3F;
    goto LABEL_15;
  }

  if (a2 >= 0x4000u)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = sub_252A97788(a1);
  v15 = v14;
  if (v13 == sub_252A97788(v2) && v15 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_252E37DB4();
  }

  return v17 & 1;
}

unint64_t sub_252A98E08(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37DE4();

  if (v2 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252A98E5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252A98EA8(uint64_t a1, uint64_t a2)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v14, v16);
  sub_252E364C4();
  v2 = sub_252E37B74();

  __swift_destroy_boxed_opaque_existential_1(&v14);
  if (v2 == 2)
  {
    sub_252A994B4();
    sub_252A99508();
    sub_252E365A4();
    v10 = v14;
    if (v14 != 36)
    {
      sub_252E365A4();
      if (v14 != 36)
      {
        return v10 | (v14 << 8) | 0xFFFF8000;
      }
    }

    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544EE0);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E76E10);
    sub_252E365B4();
    sub_252E37AE4();
    v7 = v14;
    v8 = v15;
    v9 = 206;
LABEL_22:
    sub_252CC4050(v7, v8, 0xD00000000000007ALL, 0x8000000252E76D90, 0xD000000000000010, 0x8000000252E6F060, v9);

    return 49344;
  }

  if (v2 == 1)
  {
    sub_252A994B4();
    sub_252A99508();
    sub_252E365A4();
    v5 = v14;
    if (v14 != 36)
    {
      sub_252E365A4();
      if (v14 != 36)
      {
        return v5 | (v14 << 8) | 0x4000u;
      }
    }

    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544EE0);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E76E50);
    sub_252E365B4();
    sub_252E37AE4();
    v7 = v14;
    v8 = v15;
    v9 = 196;
    goto LABEL_22;
  }

  if (v2)
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544EE0);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_252E379F4();

    sub_252E36584();
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    v13 = sub_252E364C4();
    MEMORY[0x2530AD570](v13);

    __swift_destroy_boxed_opaque_existential_1(&v14);
    v7 = 0xD000000000000028;
    v8 = 0x8000000252E76D60;
    v9 = 183;
    goto LABEL_22;
  }

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544EE0);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E76E80);
  sub_252E365B4();
  sub_252E37AE4();
  sub_252CC4050(v14, v15, 0xD00000000000007ALL, 0x8000000252E76D90, 0xD000000000000010, 0x8000000252E6F060, 188);

  sub_252A994B4();
  sub_252E36594();
  if (v14 == 36)
  {
    return 4294951104;
  }

  else
  {
    return v14;
  }
}

unint64_t sub_252A994B4()
{
  result = qword_27F542850;
  if (!qword_27F542850)
  {
    result = swift_getWitnessTable(byte_252E46DA8, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F542850);
  }

  return result;
}

unint64_t sub_252A99508()
{
  result = qword_27F542858;
  if (!qword_27F542858)
  {
    result = swift_getWitnessTable(a14, &type metadata for DeviceType.Identifiers, v0, v1);
    atomic_store(result, &qword_27F542858);
  }

  return result;
}

unint64_t sub_252A9955C()
{
  result = qword_27F542860;
  if (!qword_27F542860)
  {
    result = swift_getWitnessTable(aI4, &type metadata for DeviceType.TransientEntity, v0, v1);
    atomic_store(result, &qword_27F542860);
  }

  return result;
}

unint64_t sub_252A995B0()
{
  result = qword_27F542868;
  if (!qword_27F542868)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for DeviceType, v0, v1);
    atomic_store(result, &qword_27F542868);
  }

  return result;
}

unint64_t sub_252A99638()
{
  result = qword_27F542878;
  if (!qword_27F542878)
  {
    result = swift_getWitnessTable(byte_252E46A94, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F542878);
  }

  return result;
}

unint64_t sub_252A99690()
{
  result = qword_27F542880;
  if (!qword_27F542880)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542888, &qword_252E46B38);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F542880);
  }

  return result;
}

unint64_t sub_252A996F8()
{
  result = qword_27F542890;
  if (!qword_27F542890)
  {
    result = swift_getWitnessTable(byte_252E46B10, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F542890);
  }

  return result;
}

unint64_t sub_252A99750()
{
  result = qword_27F542898;
  if (!qword_27F542898)
  {
    result = swift_getWitnessTable(byte_252E46AE0, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F542898);
  }

  return result;
}

unint64_t sub_252A997A8()
{
  result = qword_27F5428A0;
  if (!qword_27F5428A0)
  {
    result = swift_getWitnessTable(aQX, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F5428A0);
  }

  return result;
}

unint64_t sub_252A99800()
{
  result = qword_27F5428A8;
  if (!qword_27F5428A8)
  {
    result = swift_getWitnessTable(byte_252E46BC8, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F5428A8);
  }

  return result;
}

unint64_t sub_252A99858()
{
  result = qword_27F5428B0;
  if (!qword_27F5428B0)
  {
    result = swift_getWitnessTable(byte_252E46C40, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F5428B0);
  }

  return result;
}

unint64_t sub_252A998B0()
{
  result = qword_27F5428B8;
  if (!qword_27F5428B8)
  {
    result = swift_getWitnessTable(a4, &type metadata for DeviceType.Identifiers, v0, v1);
    atomic_store(result, &qword_27F5428B8);
  }

  return result;
}

unint64_t sub_252A99908()
{
  result = qword_27F5428C0;
  if (!qword_27F5428C0)
  {
    result = swift_getWitnessTable(byte_252E46D10, &type metadata for DeviceType.TransientEntity, v0, v1);
    atomic_store(result, &qword_27F5428C0);
  }

  return result;
}

unint64_t sub_252A99960()
{
  result = qword_27F5428C8;
  if (!qword_27F5428C8)
  {
    result = swift_getWitnessTable(byte_252E46AC4, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F5428C8);
  }

  return result;
}

unint64_t sub_252A999B4()
{
  result = qword_27F5428D0;
  if (!qword_27F5428D0)
  {
    result = swift_getWitnessTable(byte_252E46B78, &type metadata for DeviceType.SingleDeviceType, v0, v1);
    atomic_store(result, &qword_27F5428D0);
  }

  return result;
}

uint64_t sub_252A99A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A99AE4, 0, 0);
}

uint64_t sub_252A99AE4()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = [v1 userTask];
  if (v4)
  {
    v5 = v4;
    if (v0[15])
    {
      v6 = sub_252C32D14();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    type metadata accessor for HomeAutomationNumericEntityResponses();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = v6;
    *v3 = v7;
  }

  v9 = v0[15];
  v8 = v0[16];
  v10 = swift_allocObject();
  v0[22] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v2;

  if (v9)
  {
    v11 = v8[6];
    v12 = v9;
    v13 = *__swift_project_boxed_opaque_existential_1(v8 + 3, v11);
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_252A99DEC;

    return sub_252C0CBE0(0, v13, v3);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
      v8 = v0[16];
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v17 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 9, v17);
    sub_252AD7CC4();
    v18 = swift_task_alloc();
    v0[29] = v18;
    *v18 = v0;
    v18[1] = sub_252A9A110;
    v19 = v0[20];

    return sub_252BDB88C((v0 + 2), &unk_252E46E58, v10, v19, 0, 0, 0, v17);
  }
}

uint64_t sub_252A99DEC(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252A9A080, 0, 0);
  }

  else
  {
    v4 = v3[15];
    v5 = swift_task_alloc();
    v3[26] = v5;
    *v5 = v3;
    v5[1] = sub_252A99F6C;

    return sub_252E174F4(v4);
  }
}

uint64_t sub_252A99F6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_252A9A3DC;
  }

  else
  {
    v4 = sub_252A9A280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A9A080()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252A9A110()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 240) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252A9A808;
  }

  else
  {
    v5 = sub_2529A4D98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A9A280()
{
  v1 = v0[24];
  v0[12] = v1;
  v2 = v0 + 12;
  v3 = v0[27];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[16];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[31] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_252A9A478;
  v12 = v0[19];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252A9A3DC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252A9A478()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 264) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252A9A750;
  }

  else
  {

    v5 = sub_252A9A5F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A9A5F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 216);
  v9 = *(v0 + 192);
  v10 = *(v0 + 120);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252A9A750()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A9A808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252A9A890(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252A9A8B0, 0, 0);
}

uint64_t sub_252A9A8B0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;

  return sub_252C0CBE0(0, v2, v1 + 16);
}

uint64_t sub_252A9A974(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252A9AA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252A99A14(a1, a2, a3);
}

void *sub_252A9AB50@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetNumericValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_252A9ABB4(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = sub_252C32D14();
  v7 = [a1 userTask];
  if (!v7)
  {

    sub_252C515AC();
    goto LABEL_12;
  }

  v8 = v7;
  if ([v7 taskType] != 4)
  {
    v9 = [v8 taskType];

    if (v9 == 5)
    {
      goto LABEL_8;
    }

LABEL_12:

    return 0;
  }

LABEL_8:
  if (v6 >> 62)
  {
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v10 != 0);
}

uint64_t sub_252A9ACC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252A9A890(v2, v3);
}

unint64_t sub_252A9AD58(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
    case 4:
    case 14:
    case 40:
      result = 0xD00000000000001DLL;
      break;
    case 2:
    case 6:
    case 23:
    case 36:
    case 52:
    case 67:
    case 69:
      result = 0xD000000000000018;
      break;
    case 3:
    case 19:
    case 31:
    case 48:
    case 58:
      result = 0xD000000000000016;
      break;
    case 5:
    case 22:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 18:
      result = 0xD000000000000023;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
    case 10:
      result = 0xD000000000000024;
      break;
    case 11:
    case 30:
    case 53:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
    case 33:
    case 34:
    case 46:
    case 49:
    case 50:
      result = 0xD000000000000013;
      break;
    case 15:
    case 43:
    case 64:
      result = 0xD000000000000019;
      break;
    case 16:
    case 20:
    case 27:
    case 41:
    case 55:
    case 57:
      result = 0xD000000000000015;
      break;
    case 17:
    case 21:
    case 26:
    case 28:
    case 70:
      result = 0xD00000000000001ELL;
      break;
    case 24:
    case 42:
    case 45:
    case 54:
    case 56:
    case 63:
      result = 0xD000000000000017;
      break;
    case 25:
    case 47:
    case 61:
    case 62:
    case 65:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD000000000000028;
      break;
    case 32:
    case 35:
    case 37:
    case 39:
    case 66:
      result = 0xD000000000000012;
      break;
    case 38:
    case 68:
      result = 0xD000000000000014;
      break;
    case 51:
    case 59:
      result = 0xD00000000000001FLL;
      break;
    case 60:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252A9B1D4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_252A9AD58(*a1);
  v5 = v4;
  if (v3 == sub_252A9AD58(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252A9B25C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252A9AD58(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9B2C0(uint64_t a1)
{
  sub_252A9AD58(*v1);
  sub_252E37044();
}

uint64_t sub_252A9B314(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252A9AD58(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252A9B374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A9B42C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_252A9B3A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252A9AD58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252A9B3D0()
{
  v0 = sub_252CC5CD0(&unk_2864A36C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5428E8, &unk_252E46E60);
  result = swift_arrayDestroy();
  qword_27F5757B8 = v0;
  return result;
}

unint64_t sub_252A9B42C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37DE4();

  if (v2 >= 0x47)
  {
    return 71;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for HomeAutomationSemanticTags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBA)
  {
    goto LABEL_17;
  }

  if (a2 + 70 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 70) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 70;
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

      return (*a1 | (v4 << 8)) - 70;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 70;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x47;
  v8 = v6 - 71;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeAutomationSemanticTags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 70 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 70) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBA)
  {
    v4 = 0;
  }

  if (a2 > 0xB9)
  {
    v5 = ((a2 - 186) >> 8) + 1;
    *result = a2 + 70;
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
    *result = a2 + 70;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A9B5D4()
{
  result = qword_27F5428F0;
  if (!qword_27F5428F0)
  {
    result = swift_getWitnessTable(byte_252E46EC4, &type metadata for HomeAutomationSemanticTags, v0, v1);
    atomic_store(result, &qword_27F5428F0);
  }

  return result;
}

uint64_t ReferenceSemantic.rawValue.getter()
{
  result = 31085;
  switch(*v0)
  {
    case 1:
      return 0xD00000000000001FLL;
    case 3:
      return 0xD00000000000001FLL;
    case 4:
      return 0xD00000000000001FLL;
    case 5:
      return 0xD00000000000001DLL;
    case 6:
      return result;
    case 7:
      return 6647407;
    case 8:
      return 1953718636;
    case 9:
      return 1954047342;
    case 0xA:
      return 0x73756F6976657270;
    case 0xB:
      return 0x6F54646E6F636573;
    case 0xC:
      return 0x4C6F546472696874;
    case 0xD:
      return 0x656C6464696DLL;
    case 0xE:
      return 0x7473726966;
    case 0xF:
      return 0x646E6F636573;
    case 0x10:
      return 0x6472696874;
    case 0x11:
      return 0x687472756F66;
    case 0x12:
      return 0x6874666966;
    case 0x13:
      return 0x6874786973;
    case 0x14:
      return 0x68746E65766573;
    case 0x15:
      return 0x687468676965;
    case 0x16:
      return 0x68746E696ELL;
    case 0x17:
      return 0x68746E6574;
    case 0x18:
      return 0x68746E6576656C65;
    case 0x19:
      return 0x6874666C657774;
    case 0x1A:
      v2 = 1919510644;
      goto LABEL_40;
    case 0x1B:
      v2 = 1920298854;
      goto LABEL_40;
    case 0x1C:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 0x1D:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 0x1E:
      return 0x6565746E65766573;
    case 0x1F:
      v2 = 1751607653;
      goto LABEL_40;
    case 0x20:
      v2 = 1701734766;
LABEL_40:
      result = v2 | 0x6E65657400000000;
      break;
    case 0x21:
      result = 0x746569746E657774;
      break;
    case 0x22:
    case 0x25:
    case 0x26:
      result = 0x662079746E657774;
      break;
    case 0x23:
      result = 0x732079746E657774;
      break;
    case 0x24:
      result = 0x742079746E657774;
      break;
    default:
      result = 0xD000000000000021;
      break;
  }

  return result;
}

uint64_t static ReferenceSemantic.< infix(_:_:)()
{
  v0 = ReferenceSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == ReferenceSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

HomeAutomationInternal::ReferenceSemantic_optional __swiftcall ReferenceSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 21;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
LABEL_35:
      v6 = v5;
      break;
    case 21:
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
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    default:
      v6 = 39;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_252A9BC04()
{
  v0 = ReferenceSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == ReferenceSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A9BCA0()
{
  sub_252E37EC4();
  ReferenceSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9BD08(uint64_t a1)
{
  ReferenceSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252A9BD6C(uint64_t a1)
{
  sub_252E37EC4();
  ReferenceSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252A9BDDC@<X0>(uint64_t *a1@<X8>)
{
  result = ReferenceSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252A9BE04()
{
  v0 = ReferenceSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == ReferenceSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A9BEA0()
{
  v0 = ReferenceSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == ReferenceSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252A9BF50()
{
  v0 = ReferenceSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == ReferenceSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_252A9C000()
{
  v0 = ReferenceSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == ReferenceSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252A9C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252A9C3DC();
  v5 = sub_252A9C430();
  v6 = sub_252A9C484();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252A9C120()
{
  result = qword_27F5428F8;
  if (!qword_27F5428F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceSemantic, &type metadata for ReferenceSemantic, v0, v1);
    atomic_store(result, &qword_27F5428F8);
  }

  return result;
}

unint64_t sub_252A9C178()
{
  result = qword_27F542900;
  if (!qword_27F542900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceSemantic, &type metadata for ReferenceSemantic, v0, v1);
    atomic_store(result, &qword_27F542900);
  }

  return result;
}

unint64_t sub_252A9C1D0()
{
  result = qword_27F542908;
  if (!qword_27F542908)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F542910, &qword_252E47040);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F542908);
  }

  return result;
}

unint64_t sub_252A9C238()
{
  result = qword_27F542918;
  if (!qword_27F542918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceSemantic, &type metadata for ReferenceSemantic, v0, v1);
    atomic_store(result, &qword_27F542918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReferenceSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferenceSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A9C3DC()
{
  result = qword_27F542920;
  if (!qword_27F542920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceSemantic, &type metadata for ReferenceSemantic, v0, v1);
    atomic_store(result, &qword_27F542920);
  }

  return result;
}

unint64_t sub_252A9C430()
{
  result = qword_27F542928;
  if (!qword_27F542928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceSemantic, &type metadata for ReferenceSemantic, v0, v1);
    atomic_store(result, &qword_27F542928);
  }

  return result;
}

unint64_t sub_252A9C484()
{
  result = qword_27F542930;
  if (!qword_27F542930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceSemantic, &type metadata for ReferenceSemantic, v0, v1);
    atomic_store(result, &qword_27F542930);
  }

  return result;
}

uint64_t type metadata accessor for HomeAppEntity(uint64_t a1)
{
  result = qword_27F542950;
  if (!qword_27F542950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252A9C578(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F542948;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v8 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v8;
}

uint64_t sub_252A9C6D8()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t sub_252A9C730()
{
  v0 = aComAppleHome_1[0];

  return v0;
}

uint64_t sub_252A9C784(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aE_5);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252A9C7E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_252E472DC, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252A9C838(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aE_5);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252A9CA38(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for HomeAppEntity(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_252A9CA80(uint64_t a1)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[3] = v4;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 136), (v1 + 4));

  v8 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7) + 29);

  v9 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[12] = v9;
  v1[13] = &off_2864BA730;
  v1[9] = v8;
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  swift_beginAccess();
  v11 = *(v10 + 23);

  v1[14] = v11;
  v1[2] = a1;
  return v1;
}

uint64_t sub_252A9CB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v5 = sub_252E33C44();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A9CC40, 0, 0);
}

uint64_t sub_252A9CC40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v1 = sub_252E34024();
  v0[20] = v1;
  v2 = sub_252E34034();
  v0[21] = v2;
  v3 = [v1 automatableTask];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  type metadata accessor for ControlAutomateHomeIntent();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_9:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544DA8);
    sub_252CC4050(0xD000000000000042, 0x8000000252E6E6B0, 0xD00000000000008FLL, 0x8000000252E77350, 0xD00000000000003ALL, 0x8000000252E773E0, 36);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v31 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_12;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v7 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v8 = v6;

  v9 = [v7 init];
  v0[22] = v9;
  v10 = v9;
  [v10 setUserTask_];
  v11 = type metadata accessor for HomeFilter();
  v12 = sub_252E37254();

  [v10 setFilters_];

  [v10 setTime_];
  v13 = [v2 disambiguationItems];
  v14 = sub_252E37264();

  v15 = sub_252A9E238(v14);

  if (v15)
  {
    v16 = sub_252A6EACC(v15);
    v0[23] = v16;

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544D18);
    sub_252E379F4();

    v18 = MEMORY[0x2530AD730](v16, v11);
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD00000000000008FLL, 0x8000000252E77350);

    v19 = sub_252A6D8E8(v16);
    v0[24] = v19;
    *(sub_252B680FC(v19) + 72) = 1;

    v21 = sub_252B680FC(v20);
    *(v21 + 104) = v19;
    *(v21 + 112) = 0;

    *(sub_252B680FC(v22) + 120) = v16;

    v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
    sub_252929E74((v24 + 288), (v0 + 2));

    v25 = v0[5];
    v26 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v25);
    LOBYTE(v19) = (*(v26 + 120))(v25, v26);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v19)
    {
      v27 = v0[15];
      v0[25] = *(v27 + 112);
      v0[26] = *(v27 + 16);
      sub_252CC3D90(0xD000000000000033, 0x8000000252E77450, 0xD000000000000096, 0x8000000252E76FA0);
      v37 = sub_252A71970;
      v28 = swift_task_alloc();
      v0[27] = v28;
      *v28 = v0;
      v29 = sub_252A9D37C;
    }

    else
    {
      v0[36] = *(v0[15] + 16);
      sub_252CC3D90(0xD000000000000028, 0x8000000252E77420, 0xD000000000000096, 0x8000000252E76FA0);
      v36 = sub_252A6F108(v16, 0);
      v0[37] = v36;
      v0[12] = v36;
      v37 = sub_252A71628;
      v28 = swift_task_alloc();
      v0[38] = v28;
      *v28 = v0;
      v29 = sub_252A9DB00;
    }

    v28[1] = v29;

    return v37(v16);
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D18);
  sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD00000000000008FLL, 0x8000000252E77350, 0xD00000000000003ALL, 0x8000000252E773E0, 41);
  type metadata accessor for HomeAutomationError(0);
  sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
  swift_allocError();
  *v35 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_12:

  v32 = v0[1];

  return v32();
}

uint64_t sub_252A9D37C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {

    v4 = sub_252A9D7AC;
  }

  else
  {
    v4 = sub_252A9D498;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252A9D498()
{
  v1 = *(v0 + 184);
  v25 = sub_252A6F5D8(v1, *(v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = swift_allocBox();
  v4 = v3;
  *(v0 + 240) = v2;
  sub_252BAFC18(v1);
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  if (*(off_27F541CD0 + 2) && (sub_252A488EC(), (v5 & 1) != 0))
  {
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v0 + 224);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v26 = *(v0 + 208);
  v22 = *(v0 + 120);
  v12 = sub_252E36324();
  (*(*(v12 - 8) + 56))(v4, v6, 1, v12);
  v13 = swift_allocObject();
  *(v0 + 248) = v13;
  v13[2] = v11;
  v13[3] = v2;
  v13[4] = v9;
  v13[5] = v8;
  v13[6] = v25;
  v13[7] = v7;
  v13[8] = v10;
  v14 = swift_allocObject();
  *(v0 + 256) = v14;
  v14[2] = v11;
  v14[3] = v2;
  v14[4] = v9;
  v14[5] = v8;
  v14[6] = v10;
  v15 = swift_allocObject();
  *(v0 + 264) = v15;
  v15[2] = &unk_252E475C8;
  v15[3] = v14;
  v15[4] = v25;
  v15[5] = v7;
  v23 = v22[7];
  v24 = v22[8];
  __swift_project_boxed_opaque_existential_1(v22 + 4, v23);
  v16 = v11;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v17 = v16;

  sub_252DF2694(v9, v26);

  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_252A9D834;
  v19 = *(v0 + 152);
  v20 = *(v0 + 104);

  return sub_252A1DBA0(v20, &unk_252E475C0, v13, &unk_252E475D0, v15, v19, v23, v24);
}

uint64_t sub_252A9D7AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A9D834()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  (*(v2[17] + 8))(v2[19], v2[16]);
  if (v0)
  {
    v3 = sub_252A9DA54;
  }

  else
  {
    v3 = sub_252A9D99C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252A9D99C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A9DA54()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A9DB00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {

    v5 = sub_252A9DF00;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_252A9DC3C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A9DC3C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 120);
  sub_25297BB38(*(v0 + 320));
  v6 = v4[7];
  v5 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v6);
  sub_252929E74((v4 + 9), v0 + 56);
  v7 = *(v0 + 96);
  v8 = swift_allocObject();
  *(v0 + 328) = v8;
  sub_252927BEC((v0 + 56), (v8 + 2));
  v8[7] = v7;
  v8[8] = v2;
  v8[9] = v3;

  sub_252DF2694(v9, v1);

  v10 = swift_task_alloc();
  *(v0 + 336) = v10;
  *v10 = v0;
  v10[1] = sub_252A9DDA4;
  v11 = *(v0 + 144);
  v12 = *(v0 + 104);

  return sub_252BDCAFC(v12, &unk_252E475B0, v8, v11, v6, v5);
}

uint64_t sub_252A9DDA4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);

  if (v0)
  {
    v3 = sub_252A9E00C;
  }

  else
  {
    v3 = sub_252A9DF88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252A9DF00()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A9DF88()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252A9E00C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252A9E0D0(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_252E37AB4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_252E378C4();
    sub_252E37AB4();
  }

  return v9;
}

uint64_t sub_252A9E238(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_252E37AB4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_252974E7C(i, v5);
    type metadata accessor for HomeFilter();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_252A9E324()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

void sub_252A9E3A4()
{
  type metadata accessor for AutomateHomeNeedsDisambiguationStrategy();

  JUMPOUT(0x2530A97C0);
}

uint64_t sub_252A9E414()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *(sub_252B680FC(v2) + 72) = 1;

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v14);
  (*(v1 + 8))(v4, v0);
  memcpy(v15, v14, sizeof(v15));
  memcpy(v16, v14, sizeof(v16));
  v5 = sub_252956B94(v16);
  if (v5 == 1)
  {
    return sub_252E33A04();
  }

  v7 = BYTE1(v16[1]);
  if (BYTE1(v16[1]) == 3)
  {
    goto LABEL_9;
  }

  if (BYTE1(v16[1]) && BYTE1(v16[1]) != 1)
  {
    goto LABEL_12;
  }

  v8 = sub_252E37DB4();

  if ((v8 & 1) == 0)
  {
    if (v7)
    {
LABEL_12:
      swift_bridgeObjectRelease_n();
      goto LABEL_13;
    }

    v9 = sub_252E37DB4();

    if ((v9 & 1) == 0)
    {
LABEL_9:
      sub_252B680FC(v5);
      v10 = sub_252B63488();

      if (v7 != 3 && v10)
      {
        if (v7 == 1)
        {
          goto LABEL_12;
        }

        v11 = sub_252E37DB4();

        if (v11)
        {
          goto LABEL_13;
        }
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v12 = sub_252E36AD4();
      __swift_project_value_buffer(v12, qword_27F544DA8);
      sub_252CC3D90(0x676E696C646E6148, 0xEE007475706E6920, 0xD000000000000096, 0x8000000252E76FA0);
      sub_252E339F4();
      return sub_25299F5D4(v15);
    }
  }

LABEL_13:
  sub_252E339E4();
  return sub_25299F5D4(v15);
}

uint64_t sub_252A9E720(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_252A9E7CC;

  return sub_252A9E8DC(a2);
}

uint64_t sub_252A9E7CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_252A9E8FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v1 = sub_252E34034();
  v2 = [v1 disambiguationItems];
  v3 = sub_252E37264();

  v4 = sub_252A9E238(v3);

  if (v4)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544C40);
    sub_252E379F4();

    v6 = type metadata accessor for HomeFilter();
    v7 = MEMORY[0x2530AD730](v4, v6);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD000000000000096, 0x8000000252E76FA0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429B8, qword_252E47458);
    swift_allocObject();
    v8 = sub_252E34094();

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544C40);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000002FLL, 0x8000000252E772C0, 55);
    sub_2529515FC(6, 3, 0xD000000000000028, 0x8000000252E772F0);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v12 = v1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_252A9EC64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v1 = sub_252E34034();
  v2 = [v1 disambiguationItems];
  v3 = sub_252E37264();

  v4 = sub_252A9E238(v3);

  if (v4)
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544C40);
    sub_252E379F4();

    v6 = type metadata accessor for HomeFilter();
    v7 = MEMORY[0x2530AD730](v4, v6);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E77320, 0xD000000000000096, 0x8000000252E76FA0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429B8, qword_252E47458);
    swift_allocObject();
    v8 = sub_252E34094();

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544C40);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E77290, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000002FLL, 0x8000000252E772C0, 55);
    sub_2529515FC(6, 3, 0xD000000000000028, 0x8000000252E772F0);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v12 = v1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_252A9EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252A9F07C(a1, a2, a3, a4);
}

uint64_t sub_252A9F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1284] = a4;
  v4[1283] = a2;
  v4[1282] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541038, &unk_252E47570);
  v4[1285] = v5;
  v4[1286] = *(v5 - 8);
  v4[1287] = swift_task_alloc();
  v6 = sub_252E36AD4();
  v4[1288] = v6;
  v4[1289] = *(v6 - 8);
  v4[1290] = swift_task_alloc();
  v7 = sub_252E34164();
  v4[1291] = v7;
  v4[1292] = *(v7 - 8);
  v4[1293] = swift_task_alloc();
  v8 = sub_252E33DB4();
  v4[1294] = v8;
  v4[1295] = *(v8 - 8);
  v4[1296] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A9F264, 0, 0);
}

uint64_t sub_252A9F264()
{
  v257 = v0;
  v1 = v0[1296];
  v2 = v0[1295];
  v3 = v0[1294];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  sub_252E34044();
  v4 = sub_252E33DA4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v215 = sub_252E34024();
  if ((v4 != 0x737265746C6966 || v6 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0 && (v4 != 0x6174616D6F747561 || v6 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    v34 = v4;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v10 = v216;
    __swift_project_value_buffer(*(v216 + 1288), qword_27F544C40);
    sub_252E379F4();

    *&v256[0] = 0xD000000000000029;
    *(&v256[0] + 1) = 0x8000000252E76F70;
    MEMORY[0x2530AD570](v34, v6);
    sub_252CC4050(0xD000000000000029, 0x8000000252E76F70, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 66);

    sub_2529515FC(6, 3, 0xD000000000000025, 0x8000000252E77080);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v35 = v34;
    v35[1] = v6;
    goto LABEL_11;
  }

  v214 = v4;
  v7 = *(v216 + 1293);
  v8 = *(v216 + 1292);
  v9 = *(v216 + 1291);
  sub_252E340E4();
  sub_252AB3FEC(v7, 0, __src);
  (*(v8 + 8))(v7, v9);
  v10 = v216;
  memcpy(v216 + 1, __src, 0x1F8uLL);
  if (sub_252956B94(v216 + 2) == 1)
  {

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v216 + 1288), qword_27F544C40);
    *&v256[0] = 0;
    *(&v256[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E770B0);
    v11 = sub_252E340C4();
    MEMORY[0x2530AD570](v11);

    sub_252CC4050(*&v256[0], *(&v256[0] + 1), 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 72);

    sub_2529515FC(6, 3, 0xD00000000000001FLL, 0x8000000252E770F0);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    sub_252E340E4();
LABEL_11:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = v10[1];
    goto LABEL_138;
  }

  v13 = *(v216 + 40);
  v213 = *(v216 + 39);
  memcpy(__dst, v216 + 1, sizeof(__dst));
  v14 = *(v216 + 37);
  v15 = *(v216 + 304);
  v16 = *(v216 + 305);
  v226 = *(v216 + 306);
  v227 = *(v216 + 155);
  v17 = v216[31];
  v238 = v216[30];
  v239 = v17;
  v240 = *(v216 + 64);
  v18 = v216[27];
  v234 = v216[26];
  v235 = v18;
  v19 = v216[29];
  v236 = v216[28];
  v237 = v19;
  v20 = v216[23];
  v230 = v216[22];
  v231 = v20;
  v21 = v216[25];
  v232 = v216[24];
  v233 = v21;
  v22 = v216[21];
  v228 = v216[20];
  v229 = v22;
  v212 = v16;
  v211 = v14;
  v210 = v15;
  if (v16 & 1) != 0 || (v15)
  {
  }

  else
  {
    *&v256[0] = v14;
    BYTE8(v256[0]) = 0;

    v25 = sub_252C92E6C(v256);
    if (v25)
    {
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_252E3C130;
      *(v27 + 32) = v26;
      v28 = v26;

      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v216 + 1288), qword_27F544C40);
      *&v256[0] = 0;
      *(&v256[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v256[0] = 0xD00000000000001ELL;
      *(&v256[0] + 1) = 0x8000000252E77270;
      v29 = v28;
      v30 = [v29 description];
      v31 = sub_252E36F34();
      v33 = v32;

      MEMORY[0x2530AD570](v31, v33);

      sub_252CC3D90(*&v256[0], *(&v256[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

      v213 = v27;
    }
  }

  v208 = *(v216 + 23);
  v209 = *(v216 + 17);
  v241 = MEMORY[0x277D84F90];
  if (v13)
  {
    if (v13 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_18;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v216 + 1288), qword_27F544C40);
      *&v256[0] = 0;
      *(&v256[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v256[0] = 0xD00000000000001CLL;
      *(&v256[0] + 1) = 0x8000000252E77250;
      v23 = type metadata accessor for HomeFilter();
      v24 = MEMORY[0x2530AD730](v13, v23);
      MEMORY[0x2530AD570](v24);

      sub_252CC3D90(*&v256[0], *(&v256[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);
      goto LABEL_87;
    }
  }

  v36 = [v215 automatableTask];
  if (v36)
  {
    v37 = v36;
    type metadata accessor for ControlAutomateHomeIntent();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v207 = v6;
  if (v39 >> 62)
  {
    goto LABEL_85;
  }

  v222 = v39 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v41 = 0;
    v219 = v39 + 32;
    v220 = (v39 & 0xC000000000000001);
    v205 = v10 + 1314;
    v203 = v39;
    v204 = v10 + 166;
    v13 = MEMORY[0x277D84F90];
    v42 = v213;
    v217 = i;
LABEL_39:
    v10 = (v42 & 0xFFFFFFFFFFFFFF8);
    v206 = v13;
    while (1)
    {
      if (v220)
      {
        v43 = MEMORY[0x2530ADF00](v41, v203);
      }

      else
      {
        if (v41 >= *(v222 + 16))
        {
          goto LABEL_82;
        }

        v43 = *(v219 + 8 * v41);
      }

      v44 = v43;
      if (__OFADD__(v41++, 1))
      {
        goto LABEL_81;
      }

      v223 = v41;
      if (!v42)
      {
        v10 = v216;
        memcpy(v216 + 64, __dst, 0x118uLL);
        *(v216 + 163) = v211;
        *(v216 + 1312) = v210;
        *(v216 + 1313) = v212;
        *v205 = v226;
        *(v205 + 2) = v227;
        *(v216 + 165) = v213;
        v52 = v239;
        *(v204 + 10) = v238;
        *(v204 + 11) = v52;
        v204[24] = v240;
        v53 = v235;
        *(v204 + 6) = v234;
        *(v204 + 7) = v53;
        v54 = v237;
        *(v204 + 8) = v236;
        *(v204 + 9) = v54;
        v55 = v231;
        *(v204 + 2) = v230;
        *(v204 + 3) = v55;
        v56 = v233;
        *(v204 + 4) = v232;
        *(v204 + 5) = v56;
        v57 = v229;
        *v204 = v228;
        *(v204 + 1) = v57;
        memcpy(v256, v216 + 64, 0x1F8uLL);
        sub_2529353AC((v10 + 128), (v10 + 191));
        v58 = sub_252BAC7E4();
        memcpy(v216 + 520, v256, 0x1F8uLL);
        sub_252935408(v216 + 520);
        if (v58 >> 62)
        {
          v59 = sub_252E378C4();
        }

        else
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v60 = v206;
        v61 = v44;
        if (v59)
        {
          v62 = 0;
          v10 = (v58 & 0xC000000000000001);
          v39 = v58 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v10)
            {
              v63 = MEMORY[0x2530ADF00](v62, v58);
            }

            else
            {
              if (v62 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              v63 = *(v58 + 8 * v62 + 32);
            }

            v64 = v63;
            v65 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_83;
            }

            sub_252A20DFC(v63);
            MEMORY[0x2530AD700]();
            if (*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v241 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v60 = v241;

            ++v62;
            if (v65 == v59)
            {
              v10 = v216;
              break;
            }
          }
        }

        v42 = v10[165];
        v208 = v10[149];
        v209 = v10[143];

        v13 = v60;
        v41 = v223;
        if (v223 != v217)
        {
          goto LABEL_39;
        }

LABEL_78:
        v6 = v207;
        goto LABEL_87;
      }

      v46 = v42 >> 62 ? sub_252E378C4() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v44;

      if (v46)
      {
        break;
      }

LABEL_40:

      if (v41 == v217)
      {
        v10 = v216;
        goto LABEL_78;
      }
    }

    v48 = 0;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x2530ADF00](v48, v42);
      }

      else
      {
        if (v48 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v49 = *(v42 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      sub_252A20DFC(v49);
      MEMORY[0x2530AD700]();
      v39 = *((v241 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39 >= *((v241 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v13 = v241;

      ++v48;
      if (v51 == v46)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v222 = v39 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = MEMORY[0x277D84F90];
  v6 = v207;
LABEL_87:

  v66 = [v215 automatableTask];
  if (v66)
  {
    v67 = v66;
    type metadata accessor for ControlAutomateHomeIntent();
    v68 = swift_dynamicCastClass();
    if (v68)
    {
      *(v68 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters) = v13;

      v69 = v215;

      goto LABEL_92;
    }
  }

  v70 = v215;
LABEL_92:
  if (qword_27F53F488 != -1)
  {
    goto LABEL_144;
  }

  while (1)
  {
    v71 = v10[1290];
    v72 = v10;
    v73 = v10[1289];
    v74 = v72[1288];
    v75 = __swift_project_value_buffer(v74, qword_27F544C40);
    (*(v73 + 16))(v71, v75, v74);
    *&v256[0] = 0;
    *(&v256[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v256[0] = 0xD000000000000013;
    *(&v256[0] + 1) = 0x8000000252E77110;
    MEMORY[0x2530AD570](v214, v6);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E77130);
    v10 = v13 >> 62 ? sub_252E378C4() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v76 = MEMORY[0x277D84F90];
    if (!v10)
    {
      break;
    }

    v77 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x2530ADF00](v77, v13);
      }

      else
      {
        if (v77 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v78 = *(v13 + 8 * v77 + 32);
      }

      v79 = v78;
      v80 = (v77 + 1);
      if (__OFADD__(v77, 1))
      {
        break;
      }

      v81 = [v78 description];
      v82 = sub_252E36F34();
      v84 = v83;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_2529F7A80(0, *(v76 + 2) + 1, 1, v76);
      }

      v6 = *(v76 + 2);
      v85 = *(v76 + 3);
      if (v6 >= v85 >> 1)
      {
        v76 = sub_2529F7A80((v85 > 1), v6 + 1, 1, v76);
      }

      *(v76 + 2) = v6 + 1;
      v86 = &v76[16 * v6];
      *(v86 + 4) = v82;
      *(v86 + 5) = v84;
      ++v77;
      if (v80 == v10)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
  }

LABEL_108:
  v87 = *(v216 + 1290);
  v88 = *(v216 + 1289);
  v89 = *(v216 + 1288);
  v90 = MEMORY[0x2530AD730](v76, MEMORY[0x277D837D0]);
  v92 = v91;

  MEMORY[0x2530AD570](v90, v92);

  sub_252CC3D90(*&v256[0], *(&v256[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

  v93 = (*(v88 + 8))(v87, v89);
  *(sub_252B680FC(v93) + 75) = 1;

  v95 = sub_252B680FC(v94);
  v96 = v216;
  swift_beginAccess();
  v97 = *(v95 + 16);
  v98 = *(v97 + 16);
  if (v98)
  {
    memcpy(v216 + 190, (v97 + 504 * v98 - 472), 0x1F8uLL);
    sub_2529353AC((v216 + 190), v216 + 3544);

    v99 = v216[195];
    v246 = v216[194];
    v247 = v99;
    v248 = v216[196];
    v249 = *(v216 + 394);
    v100 = v216[191];
    v242 = v216[190];
    v243 = v100;
    v101 = v216[193];
    v244 = v216[192];
    v245 = v101;
    v102 = *(v216 + 395);
    v103 = v216[198];
    v104 = v216[199];
    v252 = *(v216 + 400);
    v250 = v103;
    v251 = v104;
    v105 = *(v216 + 401);
    memcpy(v253, v216 + 201, sizeof(v253));
    v106 = v216[195];
    *(v216 + 2600) = v216[194];
    *(v216 + 2616) = v106;
    *(v216 + 2632) = v216[196];
    *(v216 + 331) = *(v216 + 394);
    v107 = v216[191];
    *(v216 + 2536) = v216[190];
    *(v216 + 2552) = v107;
    v108 = v216[193];
    *(v216 + 2568) = v216[192];
    *(v216 + 2584) = v108;
    *(v216 + 332) = v102;
    v109 = v216[199];
    *(v216 + 2664) = v216[198];
    *(v216 + 2680) = v109;
    *(v216 + 337) = *(v216 + 400);
    *(v216 + 338) = v105;
    memcpy(v216 + 2712, v216 + 201, 0x148uLL);
    memcpy(v256, v216 + 2536, 0x1F8uLL);
    sub_2529353AC(v216 + 2536, (v216 + 253));
    v110 = sub_252CDFDD4();
    memcpy(v216 + 127, v256, 0x1F8uLL);
    v111 = sub_252935408((v216 + 127));
    if (v110)
    {
      v111 = [v215 automatableTask];
      if (v111)
      {
        v112 = v111;
        type metadata accessor for ControlAutomateHomeIntent();
        v113 = swift_dynamicCastClass();
        if (v113)
        {
          v114 = v216 + 568;
          v221 = *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);

          sub_252CC3D90(0xD000000000000023, 0x8000000252E77190, 0xD000000000000096, 0x8000000252E76FA0);
          if (*(v209 + 16))
          {

            *&v256[0] = 0;
            *(&v256[0] + 1) = 0xE000000000000000;
            sub_252E379F4();

            v254 = 0xD00000000000002CLL;
            v255 = 0x8000000252E771C0;
            v256[4] = v246;
            v256[5] = v247;
            v256[6] = v248;
            v256[0] = v242;
            v256[1] = v243;
            v256[2] = v244;
            v256[3] = v245;
            *&v256[7] = v249;
            *&v256[10] = v252;
            v256[8] = v250;
            v256[9] = v251;
            memcpy(&v256[11], v253, 0x148uLL);
            *(&v256[7] + 1) = v209;
            *(&v256[10] + 1) = v105;
            v115 = HomeAutomationIntent.description.getter();
            MEMORY[0x2530AD570](v115);

            sub_252CC3D90(v254, v255, 0xD000000000000096, 0x8000000252E76FA0);
            v102 = v209;
          }

          else
          {
            if (!*(v208 + 16))
            {
LABEL_119:
              v117 = v247;
              v216[572] = v246;
              v216[573] = v117;
              v216[574] = v248;
              v118 = v243;
              *v114 = v242;
              v216[569] = v118;
              v119 = v245;
              v216[570] = v244;
              v216[571] = v119;
              v120 = v250;
              v216[577] = v251;
              *(v216 + 1150) = v249;
              *(v216 + 1151) = v102;
              *(v216 + 1156) = v252;
              v216[576] = v120;
              *(v216 + 1157) = v105;
              memcpy(v216 + 579, v253, 0x148uLL);
              memcpy(v256, v114, 0x1F8uLL);
              sub_2529353AC(v114, v216 + 9592);
              v121 = sub_252D5B220();
              memcpy(v216 + 8584, v256, 0x1F8uLL);
              v96 = v216;
              sub_252935408(v216 + 8584);
              if (v121)
              {
                v218 = v102;
                type metadata accessor for HomeUserTask.Builder();
                v122 = swift_allocObject();
                v122[3] = 0;
                v122[4] = 0;
                v122[2] = 4;
                v123 = [v221 taskType];
                v124 = [v221 attribute];
                v125 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                v126 = v121;
                v127 = sub_252E36F04();
                v128 = [v125 initWithIdentifier:0 displayString:v127];

                v129 = v128;
                [v129 setTaskType_];
                [v129 setAttribute_];
                [v129 setValue_];

                swift_setDeallocating();
                swift_deallocClassInstance();
                v130 = [v215 automatableTask];
                if (v130)
                {
                  v131 = v130;
                  v132 = swift_dynamicCastClass();
                  if (v132)
                  {
                    v133 = *(v132 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
                    *(v132 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask) = v129;

                    v134 = v129;
                  }
                }

                *&v256[0] = 0;
                *(&v256[0] + 1) = 0xE000000000000000;
                sub_252E379F4();

                *&v256[0] = 0xD00000000000001DLL;
                *(&v256[0] + 1) = 0x8000000252E771F0;
                v135 = [v221 description];
                v136 = sub_252E36F34();
                v138 = v137;

                MEMORY[0x2530AD570](v136, v138);

                MEMORY[0x2530AD570](0x203A77656E0ALL, 0xE600000000000000);
                v139 = [v129 description];
                v140 = sub_252E36F34();
                v142 = v141;

                MEMORY[0x2530AD570](v140, v142);

                sub_252CC3D90(*&v256[0], *(&v256[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

                v96 = v216;
                v102 = v218;
              }

              else
              {
              }

              goto LABEL_126;
            }

            v105 = v208;

            *&v256[0] = 0;
            *(&v256[0] + 1) = 0xE000000000000000;
            sub_252E379F4();

            v254 = 0xD000000000000030;
            v255 = 0x8000000252E77210;
            v256[4] = v246;
            v256[5] = v247;
            v256[6] = v248;
            v256[0] = v242;
            v256[1] = v243;
            v256[2] = v244;
            v256[3] = v245;
            *&v256[7] = v249;
            *&v256[10] = v252;
            v256[8] = v250;
            v256[9] = v251;
            memcpy(&v256[11], v253, 0x148uLL);
            *(&v256[7] + 1) = v102;
            *(&v256[10] + 1) = v208;
            v116 = HomeAutomationIntent.description.getter();
            MEMORY[0x2530AD570](v116);

            sub_252CC3D90(v254, v255, 0xD000000000000096, 0x8000000252E76FA0);
          }

          goto LABEL_119;
        }
      }
    }

LABEL_126:
    v143 = v96 + 379;
    sub_252B680FC(v111);
    v144 = sub_252B63488();

    if (v144)
    {
      v146 = (v96 + 505);
      v147 = (v96 + 631);
      v256[4] = v246;
      v256[5] = v247;
      v256[6] = v248;
      v256[0] = v242;
      v256[1] = v243;
      v256[2] = v244;
      v256[3] = v245;
      *&v256[7] = v249;
      *&v256[10] = v252;
      v148 = v96;
      v256[8] = v250;
      v256[9] = v251;
      memcpy(&v256[11], v253, 0x148uLL);
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();
      *(&v256[7] + 1) = v102;
      *(&v256[10] + 1) = v105;
      v149 = v102;
      v150 = sub_252E1EBE8(v256);

      v151 = *(v150 + 416);
      *v147 = *(v150 + 400);
      *(v147 + 16) = v151;
      v152 = *(v150 + 432);
      v153 = *(v150 + 448);
      v154 = *(v150 + 464);
      *(v147 + 80) = *(v150 + 480);
      *(v147 + 48) = v153;
      *(v147 + 64) = v154;
      *(v147 + 32) = v152;
      v155 = MEMORY[0x277D84F90];
      *(v150 + 400) = MEMORY[0x277D84F90];
      *(v150 + 408) = v155;
      *(v150 + 416) = v155;
      *(v150 + 424) = v155;
      *(v150 + 432) = v155;
      *(v150 + 440) = v155;
      *(v150 + 448) = v155;
      *(v150 + 456) = v155;
      *(v150 + 464) = v155;
      *(v150 + 472) = v155;
      *(v150 + 480) = v155;
      sub_252937BEC(v147);
      *(v150 + 384) = v155;

      sub_252E1E4F8(v256);

      v156 = v247;
      *(v146 + 64) = v246;
      *(v146 + 80) = v156;
      *(v146 + 96) = v248;
      v157 = v243;
      *v146 = v242;
      *(v146 + 16) = v157;
      v158 = v245;
      *(v146 + 32) = v244;
      *(v146 + 48) = v158;
      v159 = v250;
      v148[514] = v251;
      v160 = *(&v256[7] + 1);
      v161 = *(&v256[10] + 1);
      *(v146 + 112) = v249;
      *(v148 + 1025) = v149;
      *(v148 + 1030) = v252;
      v148[513] = v159;
      *(v148 + 1031) = v105;
      memcpy(v148 + 516, v253, 0x148uLL);
      sub_252935408(v146);
      v249 = *&v256[7];
      v246 = v256[4];
      v247 = v256[5];
      v248 = v256[6];
      v242 = v256[0];
      v243 = v256[1];
      v244 = v256[2];
      v245 = v256[3];
      v252 = *&v256[10];
      v250 = v256[8];
      v251 = v256[9];
      memcpy(v253, &v256[11], sizeof(v253));
      *&v256[0] = 0;
      *(&v256[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      v254 = 0xD000000000000016;
      v255 = 0x8000000252E77170;
      v256[4] = v246;
      v256[5] = v247;
      v256[6] = v248;
      v256[0] = v242;
      v256[1] = v243;
      v256[2] = v244;
      v256[3] = v245;
      *&v256[7] = v249;
      *&v256[10] = v252;
      v256[8] = v250;
      v256[9] = v251;
      memcpy(&v256[11], v253, 0x148uLL);
      *(&v256[7] + 1) = v160;
      *(&v256[10] + 1) = v161;
      v162 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v162);

      sub_252CC3D90(v254, v255, 0xD000000000000096, 0x8000000252E76FA0);

      v163 = v160;
      v105 = v161;
    }

    else
    {
      v163 = v102;
    }

    sub_252B680FC(v145);
    v164 = sub_252B63B0C();

    v165 = *(v164 + 16);

    if (v165)
    {
      v167 = v247;
      v216[320] = v246;
      v216[321] = v167;
      v216[322] = v248;
      v168 = v243;
      v216[316] = v242;
      v216[317] = v168;
      v169 = v245;
      v216[318] = v244;
      v216[319] = v169;
      v170 = v250;
      v216[325] = v251;
      *(v216 + 646) = v249;
      *(v216 + 647) = v163;
      *(v216 + 652) = v252;
      v216[324] = v170;
      *(v216 + 653) = v105;
      memcpy(v216 + 327, v253, 0x148uLL);
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();
      memcpy(v256, v216 + 316, 0x1F8uLL);
      sub_2529353AC((v216 + 316), v216 + 5560);
      v171 = sub_252E1EBE8(v256);

      swift_beginAccess();
      *(v171 + 488) = MEMORY[0x277D84FA0];

      sub_252E1E4F8(v256);

      sub_252935408((v216 + 316));
      v172 = *(&v256[7] + 1);
      v173 = *(&v256[10] + 1);
      v174 = v247;
      *(v216 + 4616) = v246;
      *(v216 + 4632) = v174;
      *(v216 + 4648) = v248;
      *(v216 + 583) = v249;
      v175 = v243;
      *(v216 + 4552) = v242;
      *(v216 + 4568) = v175;
      v176 = v245;
      *(v216 + 4584) = v244;
      *(v216 + 4600) = v176;
      *(v216 + 584) = v163;
      *(v216 + 589) = v252;
      v177 = v251;
      *(v216 + 4680) = v250;
      *(v216 + 4696) = v177;
      *(v216 + 590) = v105;
      memcpy(v216 + 4728, v253, 0x148uLL);
      sub_252935408(v216 + 4552);
      v249 = *&v256[7];
      v246 = v256[4];
      v247 = v256[5];
      v248 = v256[6];
      v242 = v256[0];
      v243 = v256[1];
      v244 = v256[2];
      v245 = v256[3];
      v252 = *&v256[10];
      v250 = v256[8];
      v251 = v256[9];
      memcpy(v253, &v256[11], sizeof(v253));
      sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E77150, 0xD000000000000096, 0x8000000252E76FA0);
      v105 = v173;
    }

    else
    {
      v172 = v163;
    }

    v178 = sub_252B680FC(v166);
    v179 = v247;
    v143[4] = v246;
    v143[5] = v179;
    v143[6] = v248;
    v180 = v243;
    *v143 = v242;
    v143[1] = v180;
    v181 = v245;
    v143[2] = v244;
    v143[3] = v181;
    v182 = v251;
    v216[387] = v250;
    *(v143 + 14) = v249;
    *(v216 + 773) = v172;
    v216[388] = v182;
    *(v216 + 778) = v252;
    *(v216 + 779) = v105;
    memcpy(v216 + 390, v253, 0x148uLL);
    swift_beginAccess();
    v183 = *(v178 + 16);
    sub_2529353AC(v143, v216 + 6568);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v178 + 16) = v183;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v183 = sub_2529F7FB0(0, *(v183 + 2) + 1, 1, v183);
      *(v178 + 16) = v183;
    }

    v186 = *(v183 + 2);
    v185 = *(v183 + 3);
    if (v186 >= v185 >> 1)
    {
      v183 = sub_2529F7FB0((v185 > 1), v186 + 1, 1, v183);
    }

    *(v183 + 2) = v186 + 1;
    memcpy(&v183[504 * v186 + 32], v143, 0x1F8uLL);
    *(v178 + 16) = v183;
    v96 = v216;
    swift_endAccess();

    v187 = v247;
    v216[446] = v246;
    v216[447] = v187;
    v216[448] = v248;
    *(v216 + 898) = v249;
    v188 = v243;
    v216[442] = v242;
    v216[443] = v188;
    v189 = v245;
    v216[444] = v244;
    v216[445] = v189;
    *(v216 + 899) = v172;
    v190 = v250;
    v191 = v251;
    *(v216 + 904) = v252;
    v216[451] = v191;
    v216[450] = v190;
    *(v216 + 905) = v105;
    memcpy(v216 + 453, v253, 0x148uLL);
    sub_252935408((v216 + 442));
    goto LABEL_137;
  }

LABEL_137:
  v192 = *(v96 + 1287);
  v193 = *(v96 + 1286);
  v194 = *(v96 + 1285);
  *(&v256[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429C8, &unk_252E47580);
  *&v256[0] = v13;
  type metadata accessor for AutomateHomeIntent();
  v195 = v215;
  sub_252E33CC4();
  sub_252E33E24();

  (*(v193 + 8))(v192, v194);

  memcpy(v96 + 7576, __dst, 0x118uLL);
  *(v96 + 982) = v211;
  *(v216 + 7864) = v210;
  *(v216 + 7865) = v212;
  *(v96 + 7866) = v226;
  *(v96 + 3935) = v227;
  *(v96 + 984) = v213;
  v196 = v239;
  *(v96 + 8040) = v238;
  *(v96 + 8056) = v196;
  *(v96 + 1009) = v240;
  v197 = v235;
  *(v96 + 7976) = v234;
  *(v96 + 7992) = v197;
  v198 = v237;
  *(v96 + 8008) = v236;
  *(v96 + 8024) = v198;
  v199 = v231;
  *(v96 + 7912) = v230;
  *(v96 + 7928) = v199;
  v200 = v233;
  *(v96 + 7944) = v232;
  *(v96 + 7960) = v200;
  v201 = v229;
  *(v96 + 7880) = v228;
  *(v96 + 7896) = v201;
  sub_252935408(v96 + 7576);

  v12 = *(v96 + 1);
LABEL_138:

  return v12();
}

uint64_t sub_252AA11D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[1284] = a4;
  v4[1283] = a2;
  v4[1282] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D0, &qword_252E480A0);
  v4[1285] = v5;
  v4[1286] = *(v5 - 8);
  v4[1287] = swift_task_alloc();
  v6 = sub_252E36AD4();
  v4[1288] = v6;
  v4[1289] = *(v6 - 8);
  v4[1290] = swift_task_alloc();
  v7 = sub_252E34164();
  v4[1291] = v7;
  v4[1292] = *(v7 - 8);
  v4[1293] = swift_task_alloc();
  v8 = sub_252E33DB4();
  v4[1294] = v8;
  v4[1295] = *(v8 - 8);
  v4[1296] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AA13BC, 0, 0);
}

uint64_t sub_252AA13BC()
{
  v245 = v0;
  v2 = v0[1296];
  v3 = v0[1295];
  v4 = v0[1294];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v202 = v5;
  v203 = sub_252E34024();
  if ((v5 != 0x737265746C6966 || v7 != 0xE700000000000000) && (sub_252E37DB4() & 1) == 0 && (v5 != 0x6174616D6F747561 || v7 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    v35 = v7;
    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    v11 = v204;
    __swift_project_value_buffer(*(v204 + 1288), qword_27F544C40);
    sub_252E379F4();

    *&v244[0] = 0xD000000000000029;
    *(&v244[0] + 1) = 0x8000000252E76F70;
    MEMORY[0x2530AD570](v5, v35);
    sub_252CC4050(0xD000000000000029, 0x8000000252E76F70, 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 66);

    sub_2529515FC(6, 3, 0xD000000000000025, 0x8000000252E77080);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v36 = v5;
    v36[1] = v35;
    goto LABEL_11;
  }

  v201 = v7;
  v8 = *(v204 + 1293);
  v9 = *(v204 + 1292);
  v10 = *(v204 + 1291);
  sub_252E340E4();
  sub_252AB3FEC(v8, 0, __src);
  (*(v9 + 8))(v8, v10);
  v11 = v204;
  memcpy(v204 + 1, __src, 0x1F8uLL);
  if (sub_252956B94(v204 + 2) == 1)
  {

    if (qword_27F53F488 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v204 + 1288), qword_27F544C40);
    *&v244[0] = 0;
    *(&v244[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E770B0);
    v12 = sub_252E340C4();
    MEMORY[0x2530AD570](v12);

    sub_252CC4050(*&v244[0], *(&v244[0] + 1), 0xD000000000000096, 0x8000000252E76FA0, 0xD00000000000003ELL, 0x8000000252E77040, 72);

    sub_2529515FC(6, 3, 0xD00000000000001FLL, 0x8000000252E770F0);
    type metadata accessor for HomeAutomationError(0);
    sub_252AA38FC(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    sub_252E340E4();
LABEL_11:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = *(v11 + 8);
    goto LABEL_117;
  }

  v14 = *(v204 + 39);
  v15 = *(v204 + 40);
  memcpy(__dst, v204 + 1, sizeof(__dst));
  v16 = *(v204 + 37);
  v17 = *(v204 + 304);
  v18 = *(v204 + 305);
  v214 = *(v204 + 306);
  v215 = *(v204 + 155);
  v19 = v204[31];
  v226 = v204[30];
  v227 = v19;
  v228 = *(v204 + 64);
  v20 = v204[27];
  v222 = v204[26];
  v223 = v20;
  v21 = v204[29];
  v224 = v204[28];
  v225 = v21;
  v22 = v204[23];
  v218 = v204[22];
  v219 = v22;
  v23 = v204[25];
  v220 = v204[24];
  v221 = v23;
  v24 = v204[21];
  v216 = v204[20];
  v217 = v24;
  v200 = v18;
  v199 = v16;
  v198 = v17;
  if (v18 & 1) != 0 || (v17)
  {
  }

  else
  {
    *&v244[0] = v16;
    BYTE8(v244[0]) = 0;

    v27 = sub_252C92E6C(v244);
    if (v27)
    {
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_252E3C130;
      *(v14 + 32) = v28;
      v29 = v28;

      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v204 + 1288), qword_27F544C40);
      *&v244[0] = 0;
      *(&v244[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v244[0] = 0xD00000000000001ELL;
      *(&v244[0] + 1) = 0x8000000252E77270;
      v30 = v29;
      v31 = [v30 description];
      v32 = sub_252E36F34();
      v34 = v33;

      MEMORY[0x2530AD570](v32, v34);

      sub_252CC3D90(*&v244[0], *(&v244[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);
    }
  }

  v195 = *(v204 + 23);
  v196 = *(v204 + 17);
  v229 = MEMORY[0x277D84F90];
  v197 = v14;
  if (v15)
  {
    if (v15 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_18;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if (qword_27F53F488 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v204 + 1288), qword_27F544C40);
      *&v244[0] = 0;
      *(&v244[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v244[0] = 0xD00000000000001CLL;
      *(&v244[0] + 1) = 0x8000000252E77250;
      v25 = type metadata accessor for HomeFilter();
      v26 = MEMORY[0x2530AD730](v15, v25);
      MEMORY[0x2530AD570](v26);

      sub_252CC3D90(*&v244[0], *(&v244[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);
      goto LABEL_76;
    }
  }

  v37 = [v203 filters];
  if (v37)
  {
    v38 = v37;
    type metadata accessor for HomeFilter();
    v39 = sub_252E37264();

    if (!(v39 >> 62))
    {
      goto LABEL_32;
    }

LABEL_73:
    v209 = v39 & 0xFFFFFFFFFFFFFF8;
    v40 = sub_252E378C4();
    if (v40)
    {
      goto LABEL_33;
    }

LABEL_74:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_76;
  }

  v39 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_73;
  }

LABEL_32:
  v209 = v39 & 0xFFFFFFFFFFFFFF8;
  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_74;
  }

LABEL_33:
  v41 = 0;
  v206 = v39 + 32;
  v207 = v39 & 0xC000000000000001;
  v193 = v39;
  v15 = MEMORY[0x277D84F90];
  v205 = v40;
  while (2)
  {
    v11 = v14 & 0xFFFFFFFFFFFFFF8;
    v211 = v14 & 0xC000000000000001;
    v194 = v15;
    while (1)
    {
      if (v207)
      {
        v42 = MEMORY[0x2530ADF00](v41, v193);
      }

      else
      {
        if (v41 >= *(v209 + 16))
        {
          goto LABEL_123;
        }

        v42 = *(v206 + 8 * v41);
      }

      v43 = v42;
      if (__OFADD__(v41++, 1))
      {
        goto LABEL_122;
      }

      v210 = v41;
      if (!v14)
      {
        break;
      }

      if (v14 >> 62)
      {
        v45 = sub_252E378C4();
      }

      else
      {
        v45 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = v43;

      if (v45)
      {
        v47 = 0;
        while (1)
        {
          if (v211)
          {
            v48 = MEMORY[0x2530ADF00](v47, v14);
          }

          else
          {
            if (v47 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v48 = *(v14 + 8 * v47 + 32);
          }

          v49 = v48;
          v1 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          sub_252A20DFC(v48);
          MEMORY[0x2530AD700]();
          if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v15 = v229;

          ++v47;
          if (v1 == v45)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_35:

      if (v41 == v205)
      {
        v11 = v204;
        goto LABEL_76;
      }
    }

    v11 = v204;
    memcpy(v204 + 64, __dst, 0x118uLL);
    *(v204 + 163) = v199;
    *(v204 + 1312) = v198;
    *(v204 + 1313) = v200;
    *(v204 + 1314) = v214;
    *(v204 + 659) = v215;
    *(v204 + 165) = v197;
    v50 = v227;
    v204[93] = v226;
    v204[94] = v50;
    *(v204 + 190) = v228;
    v51 = v223;
    v204[89] = v222;
    v204[90] = v51;
    v52 = v225;
    v204[91] = v224;
    v204[92] = v52;
    v53 = v219;
    v204[85] = v218;
    v204[86] = v53;
    v54 = v221;
    v204[87] = v220;
    v204[88] = v54;
    v55 = v217;
    v204[83] = v216;
    v204[84] = v55;
    memcpy(v244, v204 + 64, 0x1F8uLL);
    sub_2529353AC(v11 + 1024, v11 + 1528);
    v56 = sub_252BAC7E4();
    memcpy(v204 + 520, v244, 0x1F8uLL);
    sub_252935408(v204 + 520);
    if (v56 >> 62)
    {
      v57 = sub_252E378C4();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v194;
    v15 = v43;
    if (v57)
    {
      v59 = 0;
      v11 = v56 & 0xC000000000000001;
      do
      {
        if (v11)
        {
          v60 = MEMORY[0x2530ADF00](v59, v56);
        }

        else
        {
          if (v59 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_125;
          }

          v60 = *(v56 + 8 * v59 + 32);
        }

        v61 = v60;
        v1 = (v59 + 1);
        if (__OFADD__(v59, 1))
        {
          goto LABEL_124;
        }

        sub_252A20DFC(v60);
        MEMORY[0x2530AD700]();
        if (*((v229 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v229 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v58 = v229;

        ++v59;
      }

      while (v1 != v57);
      v11 = v204;
    }

    v14 = *(v11 + 1320);
    v195 = *(v11 + 1192);
    v196 = *(v11 + 1144);

    v15 = v58;
    v41 = v210;
    if (v210 != v205)
    {
      continue;
    }

    break;
  }

LABEL_76:

  v210 = sub_252DE1F7C(v62);
  if (qword_27F53F488 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v63 = *(v11 + 10320);
    v64 = v11;
    v65 = *(v11 + 10312);
    v66 = *(v64 + 10304);
    v67 = __swift_project_value_buffer(v66, qword_27F544C40);
    (*(v65 + 16))(v63, v67, v66);
    *&v244[0] = 0;
    *(&v244[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v244[0] = 0xD000000000000013;
    *(&v244[0] + 1) = 0x8000000252E77110;
    MEMORY[0x2530AD570](v202, v201);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E77130);
    v11 = v15 >> 62 ? sub_252E378C4() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v68 = MEMORY[0x277D84F90];
    if (!v11)
    {
      break;
    }

    v69 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x2530ADF00](v69, v15);
      }

      else
      {
        if (v69 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v70 = *(v15 + 8 * v69 + 32);
      }

      v71 = v70;
      v72 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v73 = [v70 description];
      v74 = sub_252E36F34();
      v76 = v75;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_2529F7A80(0, *(v68 + 2) + 1, 1, v68);
      }

      v78 = *(v68 + 2);
      v77 = *(v68 + 3);
      if (v78 >= v77 >> 1)
      {
        v68 = sub_2529F7A80((v77 > 1), v78 + 1, 1, v68);
      }

      *(v68 + 2) = v78 + 1;
      v79 = &v68[16 * v78];
      *(v79 + 4) = v74;
      *(v79 + 5) = v76;
      ++v69;
      if (v72 == v11)
      {
        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

LABEL_92:
  v211 = (v204 + 256);
  v80 = *(v204 + 1290);
  v81 = *(v204 + 1289);
  v82 = *(v204 + 1288);
  v83 = MEMORY[0x2530AD730](v68, MEMORY[0x277D837D0]);
  v85 = v84;

  MEMORY[0x2530AD570](v83, v85);

  v1 = "eter for disambiguation: ";
  sub_252CC3D90(*&v244[0], *(&v244[0] + 1), 0xD000000000000096, 0x8000000252E76FA0);

  v86 = (*(v81 + 8))(v80, v82);
  *(sub_252B680FC(v86) + 75) = 1;

  v88 = sub_252B680FC(v87);
  v89 = v204;
  swift_beginAccess();
  v90 = *(v88 + 16);
  v91 = *(v90 + 16);
  if (v91)
  {
    memcpy(v204 + 190, (v90 + 504 * v91 - 472), 0x1F8uLL);
    sub_2529353AC((v204 + 190), v204 + 3544);

    v92 = v204[195];
    v234 = v204[194];
    v235 = v92;
    v236 = v204[196];
    v237 = *(v204 + 394);
    v93 = v204[191];
    v230 = v204[190];
    v231 = v93;
    v94 = v204[193];
    v232 = v204[192];
    v233 = v94;
    v95 = *(v204 + 395);
    v96 = v204[198];
    v97 = v204[199];
    v240 = *(v204 + 400);
    v238 = v96;
    v239 = v97;
    v98 = *(v204 + 401);
    memcpy(v241, v204 + 201, sizeof(v241));
    v99 = v204[195];
    *(v204 + 2600) = v204[194];
    *(v204 + 2616) = v99;
    *(v204 + 2632) = v204[196];
    *(v204 + 331) = *(v204 + 394);
    v100 = v204[191];
    *(v204 + 2536) = v204[190];
    *(v204 + 2552) = v100;
    v101 = v204[193];
    *(v204 + 2568) = v204[192];
    *(v204 + 2584) = v101;
    *(v204 + 332) = v95;
    v102 = v204[199];
    *(v204 + 2664) = v204[198];
    *(v204 + 2680) = v102;
    *(v204 + 337) = *(v204 + 400);
    *(v204 + 338) = v98;
    memcpy(v204 + 2712, v204 + 201, 0x148uLL);
    memcpy(v244, v204 + 2536, 0x1F8uLL);
    sub_2529353AC(v204 + 2536, (v204 + 253));
    v103 = sub_252CDFDD4();
    memcpy(v204 + 127, v244, 0x1F8uLL);
    v104 = sub_252935408((v204 + 127));
    if ((v103 & 1) == 0 || (v104 = [v203 userTask]) == 0)
    {
LABEL_106:
      v131 = v89 + 379;
      sub_252B680FC(v104);
      v132 = sub_252B63488();

      v208 = v1;
      if (v132)
      {
        v134 = (v89 + 505);
        v135 = (v89 + 631);
        v244[4] = v234;
        v244[5] = v235;
        v244[6] = v236;
        v244[0] = v230;
        v244[1] = v231;
        v244[2] = v232;
        v244[3] = v233;
        *&v244[7] = v237;
        *&v244[10] = v240;
        v136 = v89;
        v244[8] = v238;
        v244[9] = v239;
        memcpy(&v244[11], v241, 0x148uLL);
        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        *(&v244[7] + 1) = v95;
        *(&v244[10] + 1) = v98;
        v137 = v98;
        v138 = sub_252E1EBE8(v244);

        v139 = *(v138 + 416);
        *v135 = *(v138 + 400);
        *(v135 + 16) = v139;
        v140 = *(v138 + 432);
        v141 = *(v138 + 448);
        v142 = *(v138 + 464);
        *(v135 + 80) = *(v138 + 480);
        *(v135 + 48) = v141;
        *(v135 + 64) = v142;
        *(v135 + 32) = v140;
        v143 = MEMORY[0x277D84F90];
        *(v138 + 400) = MEMORY[0x277D84F90];
        *(v138 + 408) = v143;
        *(v138 + 416) = v143;
        *(v138 + 424) = v143;
        *(v138 + 432) = v143;
        *(v138 + 440) = v143;
        *(v138 + 448) = v143;
        *(v138 + 456) = v143;
        *(v138 + 464) = v143;
        *(v138 + 472) = v143;
        *(v138 + 480) = v143;
        sub_252937BEC(v135);
        *(v138 + 384) = v143;

        sub_252E1E4F8(v244);

        v144 = v235;
        *(v134 + 64) = v234;
        *(v134 + 80) = v144;
        *(v134 + 96) = v236;
        v145 = v231;
        *v134 = v230;
        *(v134 + 16) = v145;
        v146 = v233;
        *(v134 + 32) = v232;
        *(v134 + 48) = v146;
        v147 = v238;
        v136[514] = v239;
        v148 = *(&v244[7] + 1);
        v149 = *(&v244[10] + 1);
        *(v134 + 112) = v237;
        *(v136 + 1025) = v95;
        *(v136 + 1030) = v240;
        v136[513] = v147;
        *(v136 + 1031) = v137;
        memcpy(v136 + 516, v241, 0x148uLL);
        sub_252935408(v134);
        v237 = *&v244[7];
        v234 = v244[4];
        v235 = v244[5];
        v236 = v244[6];
        v230 = v244[0];
        v231 = v244[1];
        v232 = v244[2];
        v233 = v244[3];
        v240 = *&v244[10];
        v238 = v244[8];
        v239 = v244[9];
        memcpy(v241, &v244[11], sizeof(v241));
        *&v244[0] = 0;
        *(&v244[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        v242 = 0xD000000000000016;
        v243 = 0x8000000252E77170;
        v244[4] = v234;
        v244[5] = v235;
        v244[6] = v236;
        v244[0] = v230;
        v244[1] = v231;
        v244[2] = v232;
        v244[3] = v233;
        *&v244[7] = v237;
        *&v244[10] = v240;
        v244[8] = v238;
        v244[9] = v239;
        memcpy(&v244[11], v241, 0x148uLL);
        *(&v244[7] + 1) = v148;
        *(&v244[10] + 1) = v149;
        v150 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v150);

        sub_252CC3D90(v242, v243, 0xD000000000000096, v208 | 0x8000000000000000);

        v95 = v148;
        v98 = v149;
      }

      sub_252B680FC(v133);
      v151 = sub_252B63B0C();

      v152 = *(v151 + 16);

      if (v152)
      {
        v154 = v235;
        v204[320] = v234;
        v204[321] = v154;
        v204[322] = v236;
        v155 = v231;
        v204[316] = v230;
        v204[317] = v155;
        v156 = v233;
        v204[318] = v232;
        v204[319] = v156;
        v157 = v238;
        v204[325] = v239;
        v158 = v98;
        *(v204 + 646) = v237;
        *(v204 + 647) = v95;
        *(v204 + 652) = v240;
        v204[324] = v157;
        *(v204 + 653) = v98;
        memcpy(v204 + 327, v241, 0x148uLL);
        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        memcpy(v244, v204 + 316, 0x1F8uLL);
        sub_2529353AC((v204 + 316), v204 + 5560);
        v159 = sub_252E1EBE8(v244);

        swift_beginAccess();
        *(v159 + 488) = MEMORY[0x277D84FA0];

        sub_252E1E4F8(v244);

        sub_252935408((v204 + 316));
        v160 = *(&v244[7] + 1);
        v161 = *(&v244[10] + 1);
        v162 = v235;
        *(v204 + 4616) = v234;
        *(v204 + 4632) = v162;
        *(v204 + 4648) = v236;
        *(v204 + 583) = v237;
        v163 = v231;
        *(v204 + 4552) = v230;
        *(v204 + 4568) = v163;
        v164 = v233;
        *(v204 + 4584) = v232;
        *(v204 + 4600) = v164;
        *(v204 + 584) = v95;
        *(v204 + 589) = v240;
        v165 = v239;
        *(v204 + 4680) = v238;
        *(v204 + 4696) = v165;
        *(v204 + 590) = v158;
        memcpy(v204 + 4728, v241, 0x148uLL);
        sub_252935408(v204 + 4552);
        v237 = *&v244[7];
        v234 = v244[4];
        v235 = v244[5];
        v236 = v244[6];
        v230 = v244[0];
        v231 = v244[1];
        v232 = v244[2];
        v233 = v244[3];
        v240 = *&v244[10];
        v238 = v244[8];
        v239 = v244[9];
        memcpy(v241, &v244[11], sizeof(v241));
        sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E77150, 0xD000000000000096, v208 | 0x8000000000000000);
        v166 = v160;
        v98 = v161;
      }

      else
      {
        v166 = v95;
      }

      v167 = sub_252B680FC(v153);
      v168 = v235;
      v131[4] = v234;
      v131[5] = v168;
      v131[6] = v236;
      v169 = v231;
      *v131 = v230;
      v131[1] = v169;
      v170 = v233;
      v131[2] = v232;
      v131[3] = v170;
      v171 = v239;
      v204[387] = v238;
      *(v131 + 14) = v237;
      *(v204 + 773) = v166;
      v204[388] = v171;
      *(v204 + 778) = v240;
      *(v204 + 779) = v98;
      memcpy(v204 + 390, v241, 0x148uLL);
      swift_beginAccess();
      v172 = *(v167 + 16);
      sub_2529353AC(v131, v204 + 6568);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v167 + 16) = v172;
      v174 = v166;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v172 = sub_2529F7FB0(0, *(v172 + 2) + 1, 1, v172);
        *(v167 + 16) = v172;
      }

      v176 = *(v172 + 2);
      v175 = *(v172 + 3);
      if (v176 >= v175 >> 1)
      {
        v172 = sub_2529F7FB0((v175 > 1), v176 + 1, 1, v172);
      }

      *(v172 + 2) = v176 + 1;
      memcpy(&v172[504 * v176 + 32], v131, 0x1F8uLL);
      *(v167 + 16) = v172;
      v89 = v204;
      swift_endAccess();

      v177 = v235;
      v204[446] = v234;
      v204[447] = v177;
      v204[448] = v236;
      *(v204 + 898) = v237;
      v178 = v231;
      v204[442] = v230;
      v204[443] = v178;
      v179 = v233;
      v204[444] = v232;
      v204[445] = v179;
      *(v204 + 899) = v174;
      v180 = v238;
      v181 = v239;
      *(v204 + 904) = v240;
      v204[451] = v181;
      v204[450] = v180;
      *(v204 + 905) = v98;
      memcpy(v204 + 453, v241, 0x148uLL);
      sub_252935408((v204 + 442));
      goto LABEL_116;
    }

    v47 = v104;
    v205 = v95;
    v206 = v98;
    v11 = 8584;
    v46 = v204 + 568;
    v45 = 9592;
    sub_252CC3D90(0xD000000000000023, 0x8000000252E77190, 0xD000000000000096, 0x8000000252E76FA0);
    if (v196[2])
    {

      *&v244[0] = 0;
      *(&v244[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      v242 = 0xD00000000000002CLL;
      v243 = 0x8000000252E771C0;
      v244[4] = v234;
      v244[5] = v235;
      v244[6] = v236;
      v244[0] = v230;
      v244[1] = v231;
      v244[2] = v232;
      v244[3] = v233;
      *&v244[7] = v237;
      *&v244[10] = v240;
      v244[8] = v238;
      v244[9] = v239;
      memcpy(&v244[11], v241, 0x148uLL);
      *(&v244[7] + 1) = v196;
      *(&v244[10] + 1) = v98;
      v105 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v105);

      sub_252CC3D90(v242, v243, 0xD000000000000096, 0x8000000252E76FA0);
      v205 = v196;
      v45 = 9592;
    }

    else
    {
LABEL_100:
      if (!*(v195 + 16))
      {
LABEL_103:
        v107 = v235;
        v46[4] = v234;
        v46[5] = v107;
        v46[6] = v236;
        v108 = v231;
        *v46 = v230;
        v46[1] = v108;
        v109 = v233;
        v46[2] = v232;
        v46[3] = v109;
        v110 = v238;
        v204[577] = v239;
        *(v46 + 14) = v237;
        *(v204 + 1151) = v205;
        *(v204 + 1156) = v240;
        v204[576] = v110;
        *(v204 + 1157) = v206;
        memcpy(v204 + 579, v241, 0x148uLL);
        memcpy(v244, v46, 0x1F8uLL);
        sub_2529353AC(v46, v204 + v45);
        v111 = sub_252D5B220();
        memcpy(v204 + v11, v244, 0x1F8uLL);
        v112 = v204 + v11;
        v89 = v204;
        sub_252935408(v112);
        if (v111)
        {
          type metadata accessor for HomeUserTask.Builder();
          v113 = swift_allocObject();
          v113[3] = 0;
          v113[4] = 0;
          v113[2] = 4;
          v114 = [v47 taskType];
          v115 = v1;
          v116 = [v47 attribute];
          v117 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v118 = v111;
          v119 = sub_252E36F04();
          v120 = [v117 initWithIdentifier:0 displayString:v119];

          v121 = v120;
          [v121 setTaskType_];
          [v121 setAttribute_];
          [v121 setValue_];

          swift_setDeallocating();
          swift_deallocClassInstance();
          v122 = ControlHomeIntent.withUpdated(task:)(v121);

          *&v244[0] = 0;
          *(&v244[0] + 1) = 0xE000000000000000;
          sub_252E379F4();

          *&v244[0] = 0xD00000000000001DLL;
          *(&v244[0] + 1) = 0x8000000252E771F0;
          v123 = [v47 description];
          v124 = sub_252E36F34();
          v126 = v125;

          MEMORY[0x2530AD570](v124, v126);

          MEMORY[0x2530AD570](0x203A77656E0ALL, 0xE600000000000000);
          v89 = v204;
          v127 = [v121 description];
          v128 = sub_252E36F34();
          v130 = v129;

          MEMORY[0x2530AD570](v128, v130);
          v1 = v115;

          sub_252CC3D90(*&v244[0], *(&v244[0] + 1), 0xD000000000000096, v115 | 0x8000000000000000);

          v47 = v118;
          v210 = v122;
        }

        v95 = v205;
        v98 = v206;
        goto LABEL_106;
      }

      *&v244[0] = 0;
      *(&v244[0] + 1) = 0xE000000000000000;
      sub_252E379F4();

      v242 = 0xD000000000000030;
      v243 = 0x8000000252E77210;
      v244[4] = v234;
      v244[5] = v235;
      v244[6] = v236;
      v244[0] = v230;
      v244[1] = v231;
      v244[2] = v232;
      v244[3] = v233;
      *&v244[7] = v237;
      *&v244[10] = v240;
      v244[8] = v238;
      v244[9] = v239;
      memcpy(&v244[11], v241, 0x148uLL);
      *(&v244[7] + 1) = v205;
      *(&v244[10] + 1) = v195;
      v106 = HomeAutomationIntent.description.getter();
      MEMORY[0x2530AD570](v106);

      sub_252CC3D90(v242, v243, 0xD000000000000096, v1 | 0x8000000000000000);
      v206 = v195;
    }

    goto LABEL_103;
  }

LABEL_116:
  v182 = *(v89 + 1287);
  v183 = *(v89 + 1286);
  v184 = *(v89 + 1285);
  *(&v244[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429C8, &unk_252E47580);
  *&v244[0] = v15;
  type metadata accessor for ControlHomeIntent();
  v185 = v210;
  sub_252E33CC4();
  sub_252E33E24();

  (*(v183 + 8))(v182, v184);

  memcpy(v89 + 7576, __dst, 0x118uLL);
  *(v89 + 982) = v199;
  *(v211 + 3768) = v198;
  *(v211 + 3769) = v200;
  *(v89 + 7866) = v214;
  *(v89 + 3935) = v215;
  *(v89 + 984) = v197;
  v186 = v227;
  *(v89 + 8040) = v226;
  *(v89 + 8056) = v186;
  *(v89 + 1009) = v228;
  v187 = v223;
  *(v89 + 7976) = v222;
  *(v89 + 7992) = v187;
  v188 = v225;
  *(v89 + 8008) = v224;
  *(v89 + 8024) = v188;
  v189 = v219;
  *(v89 + 7912) = v218;
  *(v89 + 7928) = v189;
  v190 = v221;
  *(v89 + 7944) = v220;
  *(v89 + 7960) = v190;
  v191 = v217;
  *(v89 + 7880) = v216;
  *(v89 + 7896) = v191;
  sub_252935408(v89 + 7576);

  v13 = *(v89 + 1);
LABEL_117:

  return v13();
}