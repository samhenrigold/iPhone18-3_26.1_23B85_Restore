uint64_t sub_252D3E360(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 == 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_10:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 taskType];

  if (v7 != 3)
  {
    return 0;
  }

LABEL_7:
  v8 = [a1 userTask];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v8 attribute];

  if (v10 == 6)
  {
    return sub_252CCFCB8() & 1;
  }

  return 0;
}

uint64_t sub_252D3E47C()
{
  type metadata accessor for PowerOnMatterThermostatHandleDelegate();

  return swift_allocObject();
}

void sub_252D3E4AC(void *a1, void (*a2)(void))
{
  v4 = [a1 filters];
  if (!v4)
  {
    v12 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v26 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v12[v26] = 102;
    [v12 setUserActivity_];
    (a2)(v12);
    goto LABEL_36;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v97 = type metadata accessor for HomeUserTask();
  v7 = objc_allocWithZone(v97);
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v10;
  v12 = v10;
  v13 = sub_252B4CA9C(v6, inited, 0, 1);
  v15 = v14;
  swift_setDeallocating();
  swift_arrayDestroy();
  v99 = v13;
  v100 = v15 & 1;
  sub_2529904E4(v13);
  if ((v15 & 1) == 1)
  {
    goto LABEL_30;
  }

  v96 = a1;
  v98 = a2;
  v16 = qword_27F53F3F8;
  v17 = v99;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_27F575A30;
  v19 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  if (*(v18 + 16))
  {
    v20 = *&v17[v19];
    sub_252E37EC4();
    MEMORY[0x2530AE390](v20);
    v21 = sub_252E37F14();
    v22 = -1 << *(v18 + 32);
    v23 = v21 & ~v22;
    if ((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      while (*(*(v18 + 48) + 8 * v23) != v20)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v18 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_252927D3C(v99);
      a2 = v98;
      goto LABEL_30;
    }
  }

LABEL_10:
  v25 = sub_252C2AC20();
  sub_252927D3C(v99);
  a2 = v98;
  if (v25)
  {
LABEL_30:

    sub_25293847C(&v99, &qword_27F540880, &qword_252E53B20);
    goto LABEL_31;
  }

  sub_25293847C(&v99, &qword_27F540880, &qword_252E53B20);
  if (v15)
  {

LABEL_31:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544C70);
    v41 = sub_252E36AC4();
    v42 = sub_252E374D4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_252917000, v41, v42, "There was an error getting the currentClimateValues", v43, 2u);
      MEMORY[0x2530AED00](v43, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_252E3C290;
    *(v44 + 32) = v13;
    *(v44 + 40) = v15 & 1;
    sub_2529904E4(v13);
    v45 = combineResults(results:)(v44);
    swift_setDeallocating();
    sub_25293847C(v44 + 32, &qword_27F5402B0, &qword_252E3C0E0);
    (a2)(v45);

    sub_252927D3C(v13);
    goto LABEL_36;
  }

  v27 = [v13 entityResponses];
  if (!v27)
  {

    sub_252927D3C(v13);
    goto LABEL_31;
  }

  v28 = v27;
  sub_252927D3C(v13);
  type metadata accessor for HomeEntityResponse();
  v29 = sub_252E37264();

  if (v29 >> 62)
  {
    goto LABEL_92;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_93:

LABEL_94:

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v89 = sub_252E36AD4();
    __swift_project_value_buffer(v89, qword_27F544C70);
    v90 = sub_252E36AC4();
    v91 = sub_252E374D4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_252917000, v90, v91, "We couldn't predict the right mode to set", v92, 2u);
      MEMORY[0x2530AED00](v92, -1, -1);
    }

    v86 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v93 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v86[v93] = 5;
    [v86 setUserActivity_];
    v88 = v86;
    goto LABEL_99;
  }

  while (2)
  {
    v31 = 0;
    v32 = v29 & 0xC000000000000001;
    a2 = (v29 + 32);
LABEL_18:
    if (v32)
    {
      v33 = MEMORY[0x2530ADF00](v31, v29);
    }

    else
    {
      if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v33 = *(a2 + v31);
    }

    v34 = v33;
    v35 = __OFADD__(v31++, 1);
    if (v35)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v36 = sub_252DA6828();
    v37 = *(v36 + 2);
    v38 = 32;
    do
    {
      if (!v37)
      {

        if (v31 == v30)
        {
          v46 = 1;
          goto LABEL_40;
        }

        goto LABEL_18;
      }

      v39 = *&v36[v38];
      v38 += 8;
      --v37;
    }

    while (v39 != 6);

    v46 = 1;
    v47 = sub_252DA5378(6, 0, 1);

    if (v47)
    {
      [v47 doubleValue];
      v49 = v48;

      v46 = 0;
      goto LABEL_41;
    }

LABEL_40:
    v49 = 0.0;
LABEL_41:
    v94 = v46;
    v50 = 0;
    v95 = v30;
LABEL_42:
    if (v32)
    {
      v51 = MEMORY[0x2530ADF00](v50, v29);
    }

    else
    {
      if (v50 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v51 = *(a2 + v50);
    }

    v52 = v51;
    v35 = __OFADD__(v50++, 1);
    if (v35)
    {
      goto LABEL_88;
    }

    v53 = sub_252DA6828();
    v54 = *(v53 + 2);
    v55 = 32;
    do
    {
      if (!v54)
      {

        if (v50 == v30)
        {
          v57 = 1;
LABEL_55:
          v60 = 0.0;
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      v56 = *&v53[v55];
      v55 += 8;
      --v54;
    }

    while (v56 != 17);

    v57 = 1;
    v58 = sub_252DA5378(0x11, 0, 1);

    if (!v58)
    {
      goto LABEL_55;
    }

    [v58 doubleValue];
    v60 = v59;

    v57 = 0;
LABEL_56:
    v61 = 0;
LABEL_57:
    if (!v32)
    {
      if (v61 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v62 = *(a2 + v61);
        goto LABEL_60;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      v30 = sub_252E378C4();
      if (!v30)
      {
        goto LABEL_93;
      }

      continue;
    }

    break;
  }

  v62 = MEMORY[0x2530ADF00](v61, v29);
LABEL_60:
  v63 = v62;
  v35 = __OFADD__(v61++, 1);
  if (v35)
  {
    goto LABEL_90;
  }

  v64 = sub_252DA6828();
  v65 = *(v64 + 2);
  v66 = 32;
  do
  {
    if (!v65)
    {

      if (v61 != v95)
      {
        goto LABEL_57;
      }

LABEL_77:
      a2 = v98;
      if (v57)
      {
        goto LABEL_94;
      }

LABEL_78:
      v69 = 0x5455415F4C4F4F43;
      goto LABEL_79;
    }

    v67 = *&v64[v66];
    v66 += 8;
    --v65;
  }

  while (v67 != 19);

  v68 = sub_252DA5378(0x13, 0, 1);

  if (!v68)
  {
    goto LABEL_77;
  }

  v69 = 0x5455415F54414548;
  [v68 doubleValue];
  v71 = v70;

  a2 = v98;
  if ((v57 & 1) == 0)
  {
    if (v94)
    {
      goto LABEL_94;
    }

    if (v60 <= v49)
    {
      goto LABEL_78;
    }

    if (v49 > v71)
    {
      if (v49 >= v60 || v71 >= v49)
      {

        goto LABEL_84;
      }

      if (vabdd_f64(v71, v49) < vabdd_f64(v60, v49))
      {
        goto LABEL_78;
      }
    }
  }

LABEL_79:
  type metadata accessor for HomeAttributeValue();
  v72 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v69, 0xE90000000000004FLL, 0);
  v73 = objc_allocWithZone(v97);
  v74 = sub_252E36F04();
  v75 = [v73 initWithIdentifier:0 displayString:v74];

  v76 = v75;
  [v76 setTaskType_];
  [v76 setAttribute_];
  [v76 setValue_];

  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_252E3C130;
  *(v77 + 32) = v76;
  v78 = v76;
  v79 = sub_252B4CA9C(v6, v77, 0, 1);
  LOBYTE(v76) = v80;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v76)
  {
    v81 = v79;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v82 = sub_252E36AD4();
    __swift_project_value_buffer(v82, qword_27F544C70);
    MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E96980, 0xD000000000000021, 0x8000000252E68B10, 100);

    v83 = parse(error:with:)(v79, v96);
    v98();

    sub_252927D3C(v79);
    v84 = v79;
    a2 = v98;
    sub_252927D3C(v84);
  }

  else
  {
    (v98)(v79);

    sub_252927D3C(v79);
    v85 = v79;
    a2 = v98;
    sub_252927D3C(v85);
  }

LABEL_84:
  v86 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v87 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v86[v87] = 5;
  [v86 setUserActivity_];
  v88 = v86;
LABEL_99:
  (a2)(v88);

  sub_252927D3C(v13);
  v12 = v86;
LABEL_36:
}

id sub_252D3F178(void *a1)
{
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = type metadata accessor for HomeStore(0);
  v6 = static HomeStore.shared.getter(v5);
  v7 = HomeStore.services(matching:supporting:)(v4, 0);
  v9 = v8;

  if (v9)
  {
    v10 = v7;
    v11 = 1;
LABEL_50:
    sub_252929F10(v10, v11);
    return 0;
  }

  v42 = a1;
  v12 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_49:
    v10 = v7;
    v11 = 0;
    goto LABEL_50;
  }

LABEL_48:
  v13 = sub_252E378C4();
  if (!v13)
  {
    goto LABEL_49;
  }

LABEL_6:
  v14 = 0;
  v43 = v7;
  v44 = v7 & 0xC000000000000001;
  v15 = &off_279711000;
  while (1)
  {
    if (v44)
    {
      v16 = MEMORY[0x2530ADF00](v14, v7);
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v16 = *(v7 + 8 * v14 + 32);

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        v29 = 0;
        goto LABEL_26;
      }
    }

    if (sub_252CD941C() != 29)
    {
      goto LABEL_22;
    }

    v18 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
    v19 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) v15[331]];
    if (!v19)
    {
      goto LABEL_22;
    }

    v20 = v19;
    v21 = v15;
    type metadata accessor for Accessory(0);
    swift_allocObject();
    v22 = *(sub_252D4CE7C(v20) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

    v23 = [v22 matterNodeID];

    if (!v23)
    {
      break;
    }

    v15 = v21;
    v24 = [*(v16 + v18) v21 + 3192];
    if (v24 && (v25 = v24, swift_allocObject(), v26 = *(sub_252D4CE7C(v25) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate), , v27 = [v26 matterNodeID], v26, v27))
    {
      v28 = [v27 unsignedLongLongValue];

      if (!v28)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    ++v14;
    v7 = v43;
    if (v17 == v13)
    {
      v29 = 1;
      goto LABEL_26;
    }
  }

LABEL_24:
  v29 = 0;
  v7 = v43;
LABEL_26:
  sub_252929F10(v7, 0);
  v30 = [v42 userTask];
  if (v30 && (v31 = v30, v32 = [v30 attribute], v31, v32 == 27) && (v33 = objc_msgSend(v42, sel_userTask)) != 0 && (v34 = v33, v35 = objc_msgSend(v33, sel_value), v34, v35))
  {
    v36 = [v35 BOOLValue];
  }

  else
  {
    v36 = 0;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E96930);
  if (v29)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v29)
  {
    v39 = 0xE400000000000000;
  }

  else
  {
    v39 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v38, v39);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E96960);
  if (v36)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v36)
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v40, v41);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000093, 0x8000000252E96980);

  return (v29 & v36);
}

uint64_t sub_252D3F684(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return (sub_252D3F99C)(a2);
}

void *sub_252D3F734@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockIncompleteMatterAccessoryManagerLoadHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252D3F770(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_252CDFDD4();
  if ((v1 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    v5 = "anagerLoadHandler.swift";
    v6 = 0xD00000000000002ELL;
    goto LABEL_10;
  }

  v2 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v1);
  v3 = sub_252AC5368(0x776F6C46646E6966, 0xE800000000000000);

  if (v3 == 2 || (v3 & 1) != 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544DA8);
    v5 = "ccessoryManager initialization";
    v6 = 0xD000000000000063;
LABEL_10:
    sub_252CC3D90(v6, v5 | 0x8000000000000000, 0xD000000000000097, 0x8000000252E96AB0);
    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544DA8);
  sub_252CC4050(0xD000000000000050, 0x8000000252E96BF0, 0xD000000000000097, 0x8000000252E96AB0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 22);
  sub_2529515FC(7, 18, 0xD00000000000001BLL, 0x8000000252E82E50);
  return 1;
}

uint64_t sub_252D3F99C()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D3FA38, 0, 0);
}

uint64_t sub_252D3FA38()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E96A70, 0xD000000000000097, 0x8000000252E96AB0);

  sub_252E362B4();

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_25295A234;
  v3 = *(v0 + 24);

  return sub_252959850(v3);
}

uint64_t sub_252D3FBA4(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; i += 504)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_2529353AC(__dst, v6);
      sub_252D408D4(__src, a2);
      if (v2)
      {
        break;
      }

      memcpy(v6, __src, sizeof(v6));
      result = sub_252935408(v6);
      if (!--v3)
      {
        return result;
      }
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_252935408(v6);
  }

  return result;
}

uint64_t sub_252D3FC68@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 528), 0x1F8uLL);
  memcpy(a1, (v1 + 528), 0x1F8uLL);
  return sub_2529353AC(__dst, v4);
}

void *sub_252D3FCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a2;
  v68 = sub_252E36AB4();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_252E34164();
  v69 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v84, a1, sizeof(v84));
  v17 = *(a1 + 464);
  v80 = *(a1 + 448);
  v81 = v17;
  v82 = *(a1 + 480);
  v18 = *(a1 + 400);
  v76 = *(a1 + 384);
  v77 = v18;
  v19 = *(a1 + 432);
  v78 = *(a1 + 416);
  v20 = *(a1 + 496);
  v21 = *(a1 + 376);
  v83 = v20;
  v79 = v19;
  v7[2] = MEMORY[0x277D84F90];
  v7[129] = a3;
  v7[130] = a4;
  v7[131] = a5;
  v57 = v7 + 2;
  v7[132] = a6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_2529F846C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  v24 = v59;
  v25 = MEMORY[0x277D84F90];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_2529F846C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v21[v23 + 32] = 3;
  memcpy(v74, v84, 0x178uLL);
  *&v74[448] = v80;
  *&v74[464] = v81;
  *&v74[480] = v82;
  *&v74[376] = v21;
  *&v74[496] = v83;
  *&v74[384] = v76;
  *&v74[400] = v77;
  *&v74[416] = v78;
  *&v74[432] = v79;
  memcpy(v7 + 3, v74, 0x1F8uLL);
  memcpy(v75, v84, 0x178uLL);
  *&v75[376] = v21;
  *&v75[448] = v80;
  *&v75[464] = v81;
  *&v75[480] = v82;
  *&v75[496] = v83;
  *&v75[384] = v76;
  *&v75[400] = v77;
  *&v75[416] = v78;
  *&v75[432] = v79;
  memcpy(v7 + 66, v75, 0x1F8uLL);
  sub_2529353AC(v74, v73);
  sub_2529353AC(v75, v73);
  v26 = *(sub_252E340D4() + 16);

  if (!v26 && !*(v7[3] + 16))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E96F90, 0xD00000000000007ELL, 0x8000000252E96C80);
    v52 = sub_252E34104();
    (*(*(v52 - 8) + 8))(v24, v52);
    memcpy(v73, v84, 0x178uLL);
    *&v73[376] = v21;
    goto LABEL_39;
  }

  v58 = v21;
  v27 = sub_252E340D4();
  v28 = *(v27 + 16);
  if (v28)
  {
    v55 = v27;
    v56 = v7;
    v67 = *(v69 + 16);
    v29 = v27 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v65 = (v69 + 8);
    ++v66;
    v69 += 16;
    v64 = *(v69 + 56);
    v61 = "Running intentSelectionFlow";
    v62 = "meFlow with Parse";
    v60 = " initial candidates.";
    v30 = v28 - 1;
    v31 = v25;
    v32 = v63;
    while (1)
    {
      v67(v16, v29, v32);
      if (qword_27F53F5A8 != -1)
      {
        swift_once();
      }

      v33 = qword_27F544F30;
      sub_252E36A94();
      sub_252E375D4();
      sub_252E36A84();
      type metadata accessor for SELFPerformanceLogger();
      swift_allocObject();
      v34 = sub_252D2D190(201, 0x6E776F6E6B6E75, 0xE700000000000000);
      sub_252AB431C(v16, 0, v73);
      if (v34)
      {

        sub_252D2D83C(0, 0);
      }

      v35 = sub_252E375C4();
      LOBYTE(v54) = 2;
      sub_252E36A74(v35, &dword_252917000, v33, "ParseToHomeAutomationIntent", 27, 2, v14, " enableTelemetry=YES ", 21, v54, v25);

      (*v66)(v14, v68);
      memcpy(v71, v73, sizeof(v71));
      memcpy(v72, v73, sizeof(v72));
      if (sub_252956B94(v72) == 1)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v36 = sub_252E36AD4();
        __swift_project_value_buffer(v36, qword_27F544DA8);
        v70[0] = 0;
        v70[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000035, v62 | 0x8000000000000000);
        v37 = v63;
        sub_252E37AE4();
        v32 = v37;
        sub_252CC4050(v70[0], v70[1], 0xD00000000000007ELL, v61 | 0x8000000000000000, 0xD00000000000005ALL, v60 | 0x8000000000000000, 47);

        (*v65)(v16, v37);
        v25 = MEMORY[0x277D84F90];
        if (!v30)
        {
          goto LABEL_24;
        }
      }

      else
      {
        (*v65)(v16, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2529F7FB0(0, *(v31 + 2) + 1, 1, v31);
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        if (v39 >= v38 >> 1)
        {
          v31 = sub_2529F7FB0((v38 > 1), v39 + 1, 1, v31);
        }

        memcpy(v70, v71, sizeof(v70));
        *(v31 + 2) = v39 + 1;
        memcpy(&v31[504 * v39 + 32], v70, 0x1F8uLL);
        if (!v30)
        {
LABEL_24:

          v7 = v56;
          v24 = v59;
          goto LABEL_26;
        }
      }

      --v30;
      v29 += v64;
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_26:
  if (*(v31 + 2))
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544E08);
    *v73 = 0;
    *&v73[8] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E96F00);
    v41 = MEMORY[0x2530AD730](v31, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v41);

    sub_252CC3D90(*v73, *&v73[8], 0xD00000000000007ELL, 0x8000000252E96C80);

    swift_beginAccess();
    sub_25297AA34(v31);
    swift_endAccess();
  }

  else
  {
  }

  v42 = v58;
  if (!*(v7[3] + 16))
  {
    v50 = sub_252E34104();
    (*(*(v50 - 8) + 8))(v24, v50);
    memcpy(v73, v84, 0x178uLL);
    *&v73[376] = v42;
LABEL_39:
    *&v73[448] = v80;
    *&v73[464] = v81;
    *&v73[480] = v82;
    *&v73[496] = v83;
    *&v73[384] = v76;
    *&v73[400] = v77;
    *&v73[416] = v78;
    *&v73[432] = v79;
    sub_252935408(v73);
    return v7;
  }

  v43 = MEMORY[0x277D84F90];
  v72[0] = MEMORY[0x277D84F90];

  sub_252D3FBA4(v44, v72);

  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v45 = sub_252E36AD4();
  __swift_project_value_buffer(v45, qword_27F544E08);
  *v73 = 0;
  *&v73[8] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000043, 0x8000000252E96F40);
  v46 = v72[0];

  v48 = MEMORY[0x2530AD730](v47, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v48);

  sub_252CC3D90(*v73, *&v73[8], 0xD00000000000007ELL, 0x8000000252E96C80);

  swift_beginAccess();
  sub_25297AA34(v46);
  swift_endAccess();
  v49 = sub_252E34104();
  (*(*(v49 - 8) + 8))(v24, v49);
  memcpy(v73, v84, 0x178uLL);
  *&v73[376] = v58;
  *&v73[448] = v80;
  *&v73[464] = v81;
  *&v73[480] = v82;
  *&v73[496] = v83;
  *&v73[384] = v76;
  *&v73[400] = v77;
  *&v73[416] = v78;
  *&v73[432] = v79;
  sub_252935408(v73);
  v7[3] = v43;

  return v7;
}

uint64_t sub_252D408D4(void *__src, char **a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  sub_252E1EBE8(__dst);

  sub_252E1E4F8(__dst);

  v3 = __dst[47];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2529F846C(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_2529F846C((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v3[v5 + 32] = 3;
  __dst[47] = v3;
  memcpy(__srca, __dst, sizeof(__srca));
  v6 = *a2;
  sub_2529353AC(__srca, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2529F7FB0(0, *(v6 + 2) + 1, 1, v6);
    *a2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2529F7FB0((v8 > 1), v9 + 1, 1, v6);
    *a2 = v6;
  }

  *(v6 + 2) = v9 + 1;
  memcpy(&v6[504 * v9 + 32], __srca, 0x1F8uLL);
  memcpy(v11, __dst, sizeof(v11));
  return sub_252935408(v11);
}

uint64_t sub_252D40AA0(uint64_t a1)
{
  v2[1242] = v1;
  v2[1241] = a1;
  v3 = sub_252E36AB4();
  v2[1243] = v3;
  v2[1244] = *(v3 - 8);
  v2[1245] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D40B64, 0, 0);
}

uint64_t sub_252D40B64()
{
  v25 = v0;
  if (qword_27F53F618 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544FA0;
  *(v0 + 9968) = qword_27F544FA0;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v3 = sub_252D2D190(200, 0x6E776F6E6B6E75, 0xE700000000000000);
  *(v0 + 9976) = v3;
  if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v3) && (memcpy(__dst, (*(v0 + 9936) + 24), sizeof(__dst)), v4 = sub_252A12D08(), sub_252D746D8(v4, (v0 + 8080)), , memcpy((v0 + 7576), (v0 + 8080), 0x1F8uLL), sub_252956B94((v0 + 7576)) != 1))
  {
    v12 = *(v0 + 9936);
    memcpy((v0 + 8584), (v12 + 528), 0x1F8uLL);
    memcpy((v12 + 528), (v0 + 7576), 0x1F8uLL);
    sub_2529353AC(v0 + 7576, v0 + 9088);
    sub_252935408(v0 + 8584);
    if (v3)
    {
      v13 = *(v0 + 7784);
      if (v13 > 4)
      {
        if (*(v0 + 7784) <= 6u)
        {
          if (v13 == 5)
          {
            v19 = 0xD000000000000011;
          }

          else
          {
            v19 = 0xD000000000000010;
          }

          if (v13 == 5)
          {
            v20 = 0x8000000252E678A0;
          }

          else
          {
            v20 = 0x8000000252E678C0;
          }
        }

        else if (v13 == 7)
        {
          v20 = 0x8000000252E678E0;
          v19 = 0xD000000000000012;
        }

        else if (v13 == 8)
        {
          v20 = 0xEF64656C69614673;
          v19 = 0x656E4F6863696877;
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }
      }

      else
      {
        v14 = 7628135;
        v15 = 0xE600000000000000;
        v16 = 0x656C67676F74;
        v17 = 0xE400000000000000;
        v18 = 2003789939;
        if (v13 != 3)
        {
          v18 = 0x746E756F63;
          v17 = 0xE500000000000000;
        }

        if (v13 != 2)
        {
          v16 = v18;
          v15 = v17;
        }

        if (!*(v0 + 7784))
        {
          v14 = 7628147;
        }

        if (*(v0 + 7784) <= 1u)
        {
          v19 = v14;
        }

        else
        {
          v19 = v16;
        }

        if (*(v0 + 7784) <= 1u)
        {
          v20 = 0xE300000000000000;
        }

        else
        {
          v20 = v15;
        }
      }

      sub_252D2D83C(v19, v20);
    }

    v21 = *(v0 + 9960);
    v22 = sub_252E375C4();
    sub_252E36A74(v22, &dword_252917000, v2, "IntentSelection", 15, 2, v21, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252E33B24();

    sub_25293847C(v0 + 8080, &qword_27F5404C8, &unk_252E3FD60);
    (*(*(v0 + 9952) + 8))(*(v0 + 9960), *(v0 + 9944));

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 9936);
    v6 = sub_252E36AD4();
    *(v0 + 9984) = __swift_project_value_buffer(v6, qword_27F544E08);
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E96C60, 0xD00000000000007ELL, 0x8000000252E96C80);
    v7 = sub_252D417A4();
    *(v0 + 9992) = v7;
    v8 = sub_252C62D4C(v7, *(v5 + 1032));
    *(v0 + 10000) = v8;
    v9 = *(v5 + 1040);
    v10 = swift_task_alloc();
    *(v0 + 10008) = v10;
    *v10 = v0;
    v10[1] = sub_252D41070;

    return sub_252975024(v8, v9);
  }
}

uint64_t sub_252D41070(uint64_t a1)
{
  *(*v1 + 10016) = a1;

  return MEMORY[0x2822009F8](sub_252D41190, 0, 0);
}

uint64_t sub_252D41190()
{
  v30 = v0;
  v1 = *(v0 + 9936);
  v2 = sub_252DE4708(*(v0 + 10016), *(v1 + 1048));

  sub_252DDD1BC(v2, *(v1 + 1056), __src);

  memcpy((v0 + 520), __src, 0x1F8uLL);
  memcpy((v0 + 16), (v0 + 520), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    v3 = *(v0 + 9936);
    sub_252CC4050(0xD00000000000003ELL, 0x8000000252E96D00, 0xD00000000000007ELL, 0x8000000252E96C80, 0x2865747563657865, 0xE900000000000029, 120);
    memcpy((v0 + 1528), (v3 + 24), 0x1F8uLL);
    memcpy((v0 + 1024), (v3 + 528), 0x1F8uLL);
    memcpy((v3 + 528), (v3 + 24), 0x1F8uLL);
    sub_2529353AC(v0 + 1528, v0 + 2032);
    v4 = v0 + 1024;
  }

  else
  {
    v5 = *(v0 + 9936);
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    memcpy((v0 + 6064), (v0 + 520), 0x1F8uLL);
    sub_2529353AC(v0 + 6064, v0 + 6568);
    sub_252E379F4();

    memcpy(__src, (v0 + 16), 0x1F8uLL);
    memcpy((v0 + 5560), (v0 + 520), 0x1F8uLL);
    sub_2529353AC(v0 + 5560, v0 + 7072);
    v6 = HomeAutomationIntent.description.getter();
    v8 = v7;
    memcpy((v0 + 5056), __src, 0x1F8uLL);
    sub_252935408(v0 + 5056);
    MEMORY[0x2530AD570](v6, v8);

    sub_252CC3D90(0xD000000000000014, 0x8000000252E96D40, 0xD00000000000007ELL, 0x8000000252E96C80);

    memcpy((v0 + 4552), (v5 + 528), 0x1F8uLL);
    memcpy((v5 + 528), (v0 + 16), 0x1F8uLL);
    v4 = v0 + 4552;
  }

  v9 = sub_252935408(v4);
  if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v9))
  {
    v10 = *(v0 + 9936);
    memcpy((v0 + 3544), (v10 + 528), 0x1F8uLL);
    memcpy(__src, (v10 + 528), 0x1F8uLL);
    sub_2529353AC(v0 + 3544, v0 + 4048);
    sub_252D7C580(__src);

    memcpy((v0 + 3040), __src, 0x1F8uLL);
    sub_252935408(v0 + 3040);
  }

  if (*(v0 + 9976))
  {
    memcpy((v0 + 2536), (v0 + 520), 0x1F8uLL);
    v11 = 0;
    if (sub_252956B94((v0 + 2536)) == 1)
    {
      v13 = 0;
    }

    else
    {
      v12 = *(v0 + 2744);
      v13 = 0;
      if (v12 != 9)
      {
        if (*(v0 + 2744) <= 3u)
        {
          if (*(v0 + 2744) > 1u)
          {
            if (v12 == 2)
            {
              v13 = 0xE600000000000000;
              v11 = 0x656C67676F74;
            }

            else
            {
              v13 = 0xE400000000000000;
              v11 = 2003789939;
            }
          }

          else
          {
            v11 = 7628135;
            if (!*(v0 + 2744))
            {
              v11 = 7628147;
            }

            v13 = 0xE300000000000000;
          }
        }

        else if (*(v0 + 2744) <= 5u)
        {
          if (v12 == 4)
          {
            v13 = 0xE500000000000000;
            v11 = 0x746E756F63;
          }

          else
          {
            v13 = 0x8000000252E678A0;
            v11 = 0xD000000000000011;
          }
        }

        else if (v12 == 6)
        {
          v13 = 0x8000000252E678C0;
          v11 = 0xD000000000000010;
        }

        else if (v12 == 7)
        {
          v13 = 0x8000000252E678E0;
          v11 = 0xD000000000000012;
        }

        else
        {
          v13 = 0xEF64656C69614673;
          v11 = 0x656E4F6863696877;
        }
      }
    }

    sub_252D2D83C(v11, v13);
  }

  v14 = *(v0 + 9968);
  v15 = *(v0 + 9960);
  v16 = *(*(v0 + 9992) + 16);

  *(v0 + 9760) = 0;
  *(v0 + 9768) = 1;
  *(v0 + 9776) = 0u;
  *(v0 + 9792) = 0u;
  *(v0 + 9808) = 0u;
  *(v0 + 9824) = 0u;
  *(v0 + 9840) = 0u;
  *(v0 + 9856) = 1;
  *(v0 + 9864) = 0;
  *(v0 + 9872) = 0u;
  *(v0 + 9888) = 513;
  *(v0 + 9896) = 0u;
  *(v0 + 9912) = v16;
  *(v0 + 9920) = 0;
  GEOLocationCoordinate2DMake();
  v17 = *(v0 + 9872);
  v18 = *(v0 + 9904);
  __src[8] = *(v0 + 9888);
  __src[9] = v18;
  LOBYTE(__src[10]) = *(v0 + 9920);
  v19 = *(v0 + 9808);
  v20 = *(v0 + 9840);
  __src[4] = *(v0 + 9824);
  __src[5] = v20;
  __src[6] = *(v0 + 9856);
  __src[7] = v17;
  v21 = *(v0 + 9776);
  __src[0] = *(v0 + 9760);
  __src[1] = v21;
  __src[2] = *(v0 + 9792);
  __src[3] = v19;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v14, v15, "IntentSelection", 15, 2, __src);
  v22 = __src[9];
  *(v0 + 9720) = __src[8];
  *(v0 + 9736) = v22;
  *(v0 + 9752) = __src[10];
  v23 = __src[5];
  *(v0 + 9656) = __src[4];
  *(v0 + 9672) = v23;
  v24 = __src[7];
  *(v0 + 9688) = __src[6];
  *(v0 + 9704) = v24;
  v25 = __src[1];
  *(v0 + 9592) = __src[0];
  *(v0 + 9608) = v25;
  v26 = __src[3];
  *(v0 + 9624) = __src[2];
  *(v0 + 9640) = v26;
  sub_25293847C(v0 + 9592, &qword_27F5407B0, &unk_252E42860);
  sub_252E33B24();

  sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  (*(*(v0 + 9952) + 8))(*(v0 + 9960), *(v0 + 9944));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_252D417A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E3C290;
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  memcpy((v1 + 32), (v0 + 24), 0x1F8uLL);
  v14 = v1;
  swift_beginAccess();
  sub_2529353AC(__dst, v13);

  sub_25297AA34(v2);
  if (qword_27F53F520 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544E08);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000014;
  v13[1] = 0x8000000252E96E50;
  v4 = v14;
  v12[0] = *(v14 + 16);
  v5 = sub_252E37D94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](14889, 0xE200000000000000);
  sub_252CC3D90(v13[0], v13[1], 0xD00000000000007ELL, 0x8000000252E96C80);

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    do
    {
      memcpy(v13, v7, sizeof(v13));
      memcpy(v12, v7, sizeof(v12));
      sub_2529353AC(v13, &v10);
      v10 = HomeAutomationIntent.description.getter();
      v11 = v8;
      MEMORY[0x2530AD570](10, 0xE100000000000000);
      sub_252CC3D90(v10, v11, 0xD00000000000007ELL, 0x8000000252E96C80);

      sub_252935408(v13);
      v7 += 504;
      --v6;
    }

    while (v6);
  }

  sub_252CC3D90(0xD000000000000024, 0x8000000252E96E70, 0xD00000000000007ELL, 0x8000000252E96C80);
  return v4;
}

void *IntentSelectionFlow.deinit()
{

  memcpy(v2, (v0 + 24), sizeof(v2));
  sub_252935408(v2);
  memcpy(__dst, (v0 + 528), sizeof(__dst));
  sub_252935408(__dst);

  return v0;
}

uint64_t IntentSelectionFlow.__deallocating_deinit()
{
  IntentSelectionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252D41AE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D40AA0(a1);
}

uint64_t sub_252D41B80@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  memcpy(__dst, (v3 + 528), sizeof(__dst));
  memcpy(a1, (v3 + 528), 0x1F8uLL);
  return sub_2529353AC(__dst, &v5);
}

uint64_t dispatch thunk of IntentSelectionFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t dispatch thunk of ShowHomeIntentHandleDelegate.handle(intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25296BC70;

  return v9(a1, a2, a3);
}

void sub_252D41EFC(uint64_t *a1, void *a2, void *a3)
{
  v84 = a3;
  v5 = sub_252E36AD4();
  v88 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v82 - v8;
  v92 = *a1;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v85 = a2;
  v9 = __swift_project_value_buffer(v5, qword_27F544C70);

  v10 = sub_252E36AC4();
  v11 = sub_252E374C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = v5;
    v14 = v9;
    v15 = swift_slowAlloc();
    v91[0] = v15;
    *v12 = 136315138;
    v16 = *(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v17 = *(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v18 = sub_252BE2CE0(v16, v17, v91);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_252917000, v10, v11, "Checking filter against accessory %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v19 = v15;
    v9 = v14;
    v5 = v13;
    MEMORY[0x2530AED00](v19, -1, -1);
    MEMORY[0x2530AED00](v12, -1, -1);
  }

  v20 = v85;
  v21 = sub_252D50978(v85);
  v91[0] = 0;
  v91[1] = 0xE000000000000000;
  sub_252E379F4();

  v91[0] = 0xD000000000000011;
  v91[1] = 0x8000000252E96FC0;
  if (v21)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  v23 = v20;
  if (v21)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v22, v24);

  v86 = "Final ShowHome Filters: ";
  sub_252CC3D90(v91[0], v91[1], 0xD00000000000007FLL, 0x8000000252E733E0);

  v25 = [v20 homeEntityName];
  if (v25)
  {
    LODWORD(v82) = v21;
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;

    v30 = *(v88 + 16);
    v83 = v9;
    v30(v87, v9, v5);
    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_252E379F4();

    v91[0] = 0xD00000000000002FLL;
    v91[1] = 0x8000000252E97020;
    v31 = [v23 homeEntityName];
    if (v31)
    {
      v32 = v31;
      v33 = sub_252E36F34();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v47 = v86;
    v89 = v33;
    v90 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v48 = sub_252E36F94();
    MEMORY[0x2530AD570](v48);

    v49 = v87;
    sub_252CC3D90(v91[0], v91[1], 0xD00000000000007FLL, v47 | 0x8000000000000000);

    (*(v88 + 8))(v49, v5);
    if (*(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v27 && *(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v29)
    {

      strcpy(v91, "Name match: ");
      BYTE5(v91[1]) = 0;
      HIWORD(v91[1]) = -5120;
    }

    else
    {
      v50 = sub_252E37DB4();

      strcpy(v91, "Name match: ");
      BYTE5(v91[1]) = 0;
      HIWORD(v91[1]) = -5120;
      if ((v50 & 1) == 0)
      {
        v52 = 0;
        v51 = 0xE500000000000000;
        v53 = 0x65736C6166;
        v21 = v82;
        goto LABEL_24;
      }
    }

    v51 = 0xE400000000000000;
    v52 = 1;
    v21 = v82;
    v53 = 1702195828;
LABEL_24:
    MEMORY[0x2530AD570](v53, v51);

    v54 = v91[0];
    v55 = v47 | 0x8000000000000000;
    v56 = v91[1];
    goto LABEL_35;
  }

  v36 = [v20 outerDeviceName];
  if (v36)
  {
    v37 = v36;
    v82 = sub_252E36F34();
    v38 = v5;
    v40 = v39;

    v41 = *(v88 + 16);
    v87 = v38;
    v41(v83, v9, v38);
    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_252E379F4();

    v91[0] = 0xD000000000000030;
    v91[1] = 0x8000000252E96FE0;
    v42 = [v20 outerDeviceName];
    if (v42)
    {
      v43 = v42;
      v44 = sub_252E36F34();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v89 = v44;
    v90 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v57 = sub_252E36F94();
    MEMORY[0x2530AD570](v57);

    v58 = v83;
    sub_252CC3D90(v91[0], v91[1], 0xD00000000000007FLL, v86 | 0x8000000000000000);

    (*(v88 + 8))(v58, v87);
    if (*(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v82 && *(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v40)
    {

      strcpy(v91, "Name match: ");
      BYTE5(v91[1]) = 0;
      HIWORD(v91[1]) = -5120;
    }

    else
    {
      v59 = sub_252E37DB4();

      strcpy(v91, "Name match: ");
      BYTE5(v91[1]) = 0;
      HIWORD(v91[1]) = -5120;
      if ((v59 & 1) == 0)
      {
        v52 = 0;
        v60 = 0xE500000000000000;
        v61 = 0x65736C6166;
        goto LABEL_34;
      }
    }

    v60 = 0xE400000000000000;
    v52 = 1;
    v61 = 1702195828;
LABEL_34:
    MEMORY[0x2530AD570](v61, v60);

    v54 = v91[0];
    v55 = v86 | 0x8000000000000000;
    v56 = v91[1];
LABEL_35:
    sub_252CC3D90(v54, v56, 0xD00000000000007FLL, v55);

    if ((v52 & v21 & 1) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

  if ((v21 & 1) == 0)
  {
    return;
  }

LABEL_36:
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v62.n128_f64[0] = HomeFilter.Builder.init()();
  v63 = v92;
  v65 = (*(*v64 + 576))(*(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v92 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v62);

  v66 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
  v67 = [*(v63 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (v67)
  {
    type metadata accessor for Room(0);
    swift_allocObject();
    v68 = sub_2529A1E08(v67);
    v67 = *(v68 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v69 = *(v68 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  }

  else
  {
    v69 = 0;
  }

  v70 = (*(*v65 + 680))(v67, v69);

  v71 = [*(v92 + v66) room];
  if (!v71)
  {
    goto LABEL_43;
  }

  type metadata accessor for Room(0);
  swift_allocObject();
  sub_2529A1E08(v71);
  v72 = sub_2529A2E84();

  if (!v72)
  {
    v71 = 0;
LABEL_43:
    v73 = 0;
    goto LABEL_44;
  }

  v71 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v73 = *(v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

LABEL_44:
  v74 = (*(*v70 + 632))(v71, v73);

  v76 = (*(*v92 + 256))(v75);
  v77 = (*(*v74 + 624))(v76);

  v79 = (*(*v77 + 760))(v78);

  v80 = v79;
  v81 = v84;
  MEMORY[0x2530AD700]();
  if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
}

uint64_t sub_252D42994@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = sub_252E36AB4();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v39, a1, sizeof(v39));
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v6 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v31 = v6;
  v33 = v5;
  sub_252E36A84();
  memcpy(v38, a1, sizeof(v38));
  v30 = sub_252D45810(v38);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544DA8);
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_252E379F4();

  v36 = 0xD000000000000025;
  v37 = 0x8000000252E97180;
  memcpy(v38, v39, sizeof(v38));
  sub_252A0EF78();
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v10, v11);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v36, v37, 0xD000000000000072, 0x8000000252E97070);

  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_252E379F4();

  v36 = 0xD000000000000024;
  v37 = 0x8000000252E971B0;
  memcpy(v38, v39, sizeof(v38));
  v12 = sub_252A16EC4();
  v13 = (v12 & 1) == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  sub_252CC3D90(v36, v37, 0xD000000000000072, 0x8000000252E97070);

  if (sub_252D459F0())
  {

    v16 = 4;
    v17 = v33;
  }

  else
  {
    v18 = sub_252D45C98();
    v17 = v33;
    v19 = v30;
    if (v18)
    {

      v16 = 3;
    }

    else
    {
      memcpy(v38, v39, sizeof(v38));
      if (!sub_252D45FEC(v38, v30) || (memcpy(v38, v39, sizeof(v38)), sub_252A0EF78(), (v20 & 1) != 0) || (memcpy(v38, v39, sizeof(v38)), (sub_252A16EC4() & 1) != 0))
      {
        if (sub_252D45E60())
        {
          memcpy(v38, v39, sizeof(v38));
          sub_252A0EF78();
          if ((v21 & 1) == 0)
          {
            memcpy(v38, v39, sizeof(v38));
            if ((sub_252A16EC4() & 1) == 0)
            {

              v16 = 2;
              goto LABEL_41;
            }
          }
        }

        memcpy(v38, v39, sizeof(v38));
        if (sub_252D462EC(v38, v19))
        {

          v16 = 5;
        }

        else
        {
          if (v19)
          {
            v22 = v19;
            v23 = [v22 currentUser];
            v24 = [v22 homeAccessControlForUser_];

            if ([v24 isAccessAllowed])
            {
            }

            else
            {
              v25 = [v24 accessNotAllowedReasonCode];

              if (v25 == 4)
              {

                v16 = 7;
                goto LABEL_41;
              }
            }
          }

          memcpy(v38, v39, sizeof(v38));
          if (sub_252D466E4(v38, v19))
          {

            v16 = 6;
          }

          else
          {
            memcpy(v38, v39, sizeof(v38));
            v26 = sub_252D46BBC(v38);

            if (v26)
            {
              v16 = 8;
            }

            else
            {
              v16 = 9;
            }
          }
        }
      }

      else
      {

        v16 = 1;
      }
    }
  }

LABEL_41:
  *v32 = v16;
  v27 = sub_252E375C4();
  sub_252E36A74(v27, &dword_252917000, v31, "ReasonToBlock", 13, 2, v17, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return (*(v34 + 8))(v17, v35);
}

uint64_t HomeAutomationGuardFlow.__allocating_init(guardError:)(char *a1)
{
  v2 = swift_allocObject();
  HomeAutomationGuardFlow.init(guardError:)(a1);
  return v2;
}

uint64_t HomeAutomationGuardFlow.GuardError.hashValue.getter()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t HomeAutomationGuardFlow.init(guardError:)(char *a1)
{
  v2 = *a1;
  sub_25293DEE0(__src);
  v3 = memcpy((v1 + 152), __src, 0x1F8uLL);
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  sub_252929E74((v4 + 96), v13);

  v5 = sub_252927BEC(v13, v1 + 104);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  swift_beginAccess();
  v7 = *(v6 + 22);

  *(v1 + 16) = v7;
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  sub_252929E74((v9 + 136), v13);

  v10 = sub_252927BEC(v13, v1 + 24);
  v11 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10) + 29);

  *(v1 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v1 + 96) = &off_2864BA730;
  *(v1 + 64) = v11;
  *(v1 + 144) = v2;
  return v1;
}

BOOL sub_252D430FC()
{
  v1 = sub_252E34164();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v11);
  (*(v2 + 8))(v4, v1);
  memcpy(v12, v11, sizeof(v12));
  v5 = sub_252956B94(v12);
  if (v5 == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_252E379F4();

    v10[0] = 0xD000000000000016;
    v10[1] = 0x8000000252E97050;
    sub_252E34104();
    sub_252D45468();
    v7 = sub_252E37D94();
    MEMORY[0x2530AD570](v7);

    MEMORY[0x2530AD570](32, 0xE100000000000000);
    sub_252CC4050(v10[0], v10[1], 0xD000000000000072, 0x8000000252E97070, 0x7475706E69286E6FLL, 0xEA0000000000293ALL, 253);
  }

  else
  {
    memcpy(v10, (v0 + 152), sizeof(v10));
    memcpy((v0 + 152), v11, 0x1F8uLL);
    sub_25293847C(v10, &qword_27F5404C8, &unk_252E3FD60);
  }

  return v5 != 1;
}

uint64_t sub_252D43364(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_252D433FC;

  return sub_252D43608((v2 + 2));
}

uint64_t sub_252D433FC()
{

  return MEMORY[0x2822009F8](sub_252D434F8, 0, 0);
}

uint64_t sub_252D434F8()
{
  sub_252929E74(*(v0 + 152) + 104, v0 + 56);
  sub_252929E74(v0 + 16, v0 + 96);
  v1 = swift_allocObject();
  sub_252927BEC((v0 + 96), v1 + 16);
  sub_252E331C4();
  swift_allocObject();
  *(v0 + 136) = sub_252E331B4();
  sub_252E33AF4();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D43608(uint64_t a1)
{
  v2[580] = v1;
  v2[579] = a1;
  v3 = sub_252E34014();
  v2[581] = v3;
  v2[582] = *(v3 - 8);
  v2[583] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D436CC, 0, 0);
}

uint64_t sub_252D436CC()
{
  v83 = v0;
  v1 = v0[580];
  v2 = *(v1 + 144);
  if (v2 > 3)
  {
    if (*(v1 + 144) > 5u)
    {
      if (v2 == 6)
      {
        memcpy(v0 + 2, (v1 + 152), 0x1F8uLL);
        if (sub_252956B94(v0 + 2) == 1 || (memcpy(__src, v0 + 2, 0x1F8uLL), (v29 = sub_252D45810(__src)) == 0))
        {
          v13 = 0;
          v14 = sub_252D46D8C;
        }

        else
        {
          v30 = v29;
          v13 = swift_allocObject();
          *(v13 + 16) = v30;

          v14 = sub_252D46D90;
        }

        goto LABEL_37;
      }

      if (v2 != 7)
      {
        v13 = 0;
        v14 = sub_252D46D8C;
        goto LABEL_37;
      }

      sub_252E379F4();

      strcpy(__src, "com.apple.Home");
      HIBYTE(__src[1]) = -18;
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E97140);
      v3 = __src[0];
      v4 = __src[1];
      v0[586] = __src[1];
      v5 = *(v1 + 48);
      v6 = *(v1 + 56);
      __swift_project_boxed_opaque_existential_1((v1 + 24), v5);
      sub_252AD7CC4();
      v7 = swift_task_alloc();
      v0[587] = v7;
      *v7 = v0;
      v7[1] = sub_252D444A0;
      v8 = v0[583];
      v9 = v0[580];
      v10 = v0[579];
      v85 = v6;

      return sub_252BDB88C(v10, &unk_252E5D688, v9, v8, v3, v4, 1, v5);
    }

    if (v2 == 4)
    {
      v13 = 0;
      v14 = sub_252D449E8;
      goto LABEL_37;
    }

LABEL_20:
    memcpy(v0 + 128, (v1 + 152), 0x1F8uLL);
    memcpy(v0 + 65, (v1 + 152), 0x1F8uLL);
    if (sub_252956B94(v0 + 65) != 1)
    {
      memcpy(v0 + 191, v0 + 128, 0x1F8uLL);
      memcpy(__src, v0 + 65, 0x1F8uLL);
      sub_2529353AC((v0 + 191), (v0 + 254));
      v26 = sub_252D45810(__src);
      v0[584] = v26;
      if (v26)
      {
        v27 = v26;
        v28 = swift_task_alloc();
        v0[585] = v28;
        *v28 = v0;
        v28[1] = sub_252D44218;

        return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)((v0 + 574), v27);
      }

      sub_25293847C((v0 + 128), &qword_27F5404C8, &unk_252E3FD60);
    }

    v13 = 0;
    v14 = sub_252D46D8C;
    goto LABEL_37;
  }

  if (*(v1 + 144) <= 1u)
  {
    if (!*(v1 + 144))
    {
      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F64();

      v12 = sub_252E36074();

      v13 = swift_allocObject();
      *(v13 + 16) = v12 & 1;

      v14 = sub_252D4598C;
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  if (v2 != 2)
  {
    v31 = sub_252D44954;
    v13 = 0;
    goto LABEL_38;
  }

  memcpy(__dst, (v1 + 152), sizeof(__dst));
  memcpy(v0 + 317, (v1 + 152), 0x1F8uLL);
  if (sub_252956B94(v0 + 317) == 1)
  {
LABEL_35:
    v32 = 0;
    goto LABEL_36;
  }

  memcpy(v0 + 443, __dst, 0x1F8uLL);
  memcpy(__src, __dst, 0x1F8uLL);
  sub_2529353AC((v0 + 443), (v0 + 506));
  v15 = sub_252AEFEB0();
  memcpy(v0 + 380, __src, 0x1F8uLL);
  sub_252935408((v0 + 380));
  v16 = type metadata accessor for HomeStore(0);
  v17 = static HomeStore.shared.getter(v16);
  v18 = v17[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v18 != 2 && (v18 & 1) == 0 || (v19 = [v15 filters]) == 0)
  {

    goto LABEL_34;
  }

  v20 = v19;
  type metadata accessor for HomeFilter();
  v21 = sub_252E37264();

  v22 = [v15 userTask];
  v23 = HomeStore.accessories(matching:supporting:)(v21, v22);
  v25 = v24;

  if (v25)
  {
    sub_252929F10(v23, 1);
LABEL_34:

    goto LABEL_35;
  }

  v37 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_96:
    v38 = sub_252E378C4();
  }

  else
  {
    v38 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = 0;
  v40 = v23 & 0xC000000000000001;
  v41 = v23 + 32;
  v79 = v37;
  v80 = v23;
  v77 = v23 & 0xC000000000000001;
  v78 = v38;
  v76 = v23 + 32;
  while (1)
  {
    if (v39 == v38)
    {

      sub_252929F10(v23, 0);
      goto LABEL_35;
    }

    if (v40)
    {
      v42 = MEMORY[0x2530ADF00](v39, v23);
      v43 = __OFADD__(v39++, 1);
      if (v43)
      {
LABEL_85:
        __break(1u);
LABEL_86:

        sub_252929F10(v80, 0);

        v32 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      if (v39 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_96;
      }

      v42 = *(v41 + 8 * v39);

      v43 = __OFADD__(v39++, 1);
      if (v43)
      {
        goto LABEL_85;
      }
    }

    v44 = (*v42 + 256);
    v45 = *v44;
    if ((*v44)() == 36)
    {
      break;
    }

    v46 = (*v42 + 272);
    v47 = *v46;
    v48 = (*v46)();
    if (*(v48 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](36);
      v49 = sub_252E37F14();
      v50 = -1 << *(v48 + 32);
      v51 = v49 & ~v50;
      if ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
      {
        v52 = ~v50;
        while (*(*(v48 + 48) + 8 * v51) != 36)
        {
          v51 = (v51 + 1) & v52;
          if (((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_86;
      }
    }

LABEL_54:

    v54 = (v45)(v53);
    if (v54 == 38)
    {
      v56 = &unk_2864AF500;
      goto LABEL_58;
    }

    v55 = MEMORY[0x277D84FA0];
    if (v54 == 41)
    {
      v56 = &unk_2864AF528;
LABEL_58:
      v55 = sub_2529FC004(v56);
    }

    if (*(v55 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](36);
      v57 = sub_252E37F14();
      v58 = -1 << *(v55 + 32);
      v59 = v57 & ~v58;
      if ((*(v55 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
      {
        v60 = ~v58;
        while (*(*(v55 + 48) + 8 * v59) != 36)
        {
          v59 = (v59 + 1) & v60;
          if (((*(v55 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        goto LABEL_86;
      }
    }

LABEL_64:

    if (sub_252D4FE78(36))
    {

      v75 = v80;
      goto LABEL_94;
    }

    if (v45() == 41)
    {

      sub_252929F10(v80, 0);
      goto LABEL_88;
    }

    v61 = v47();
    v23 = v80;
    if (*(v61 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](41);
      v62 = sub_252E37F14();
      v63 = -1 << *(v61 + 32);
      v64 = v62 & ~v63;
      if ((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
      {
        v65 = ~v63;
        while (*(*(v61 + 48) + 8 * v64) != 41)
        {
          v64 = (v64 + 1) & v65;
          if (((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_87;
      }
    }

LABEL_71:

    v67 = (v45)(v66);
    if (v67 == 38)
    {
      v69 = &unk_2864AF550;
    }

    else
    {
      v68 = MEMORY[0x277D84FA0];
      if (v67 != 41)
      {
        goto LABEL_76;
      }

      v69 = &unk_2864AF578;
    }

    v68 = sub_2529FC004(v69);
LABEL_76:
    if (*(v68 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](41);
      v70 = sub_252E37F14();
      v71 = -1 << *(v68 + 32);
      v72 = v70 & ~v71;
      if ((*(v68 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
      {
        v73 = ~v71;
        while (*(*(v68 + 48) + 8 * v72) != 41)
        {
          v72 = (v72 + 1) & v73;
          if (((*(v68 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_81;
          }
        }

LABEL_87:

        sub_252929F10(v80, 0);

LABEL_88:

        v32 = 1;
        goto LABEL_36;
      }
    }

LABEL_81:

    v74 = sub_252D4FE78(41);

    v38 = v78;
    v37 = v79;
    v41 = v76;
    v40 = v77;
    if (v74)
    {

      goto LABEL_93;
    }
  }

LABEL_93:
  v75 = v23;
LABEL_94:
  sub_252929F10(v75, 0);
  v32 = 1;
LABEL_36:
  v13 = swift_allocObject();
  *(v13 + 16) = v32;

  v14 = sub_252D45984;
LABEL_37:
  v31 = v14;
LABEL_38:
  v33 = v0[580];
  v34 = v33[6];
  v35 = v33[7];
  __swift_project_boxed_opaque_existential_1(v33 + 3, v34);
  sub_252943BD0(v31, v13, 1, v34, v35);

  v36 = v0[1];

  return v36();
}

uint64_t sub_252D44218()
{

  return MEMORY[0x2822009F8](sub_252D44314, 0, 0);
}

uint64_t sub_252D44314()
{
  sub_25293847C(v0 + 1024, &qword_27F5404C8, &unk_252E3FD60);
  v1 = *(v0 + 4672);
  if (*(v0 + 4616))
  {
    v2 = *(v0 + 4632);

    sub_252927BEC((v0 + 4592), v0 + 4552);
    sub_252927BEC((v0 + 4552), v2);
  }

  else
  {
    sub_25293847C(v0 + 4592, &qword_27F542188, &qword_252E43C80);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;

    v4 = *(v0 + 4640);
    v5 = v4[6];
    v6 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
    sub_252943BD0(sub_252D45968, v3, 1, v5, v6);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252D444A0()
{
  v2 = *v1;
  v3 = *v1;
  v2[588] = v0;

  (*(v2[582] + 8))(v2[583], v2[581]);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252D44660, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_252D44660()
{
  v1 = *(v0 + 4704);
  sub_252E33964();
  sub_252E33954();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D446E4(uint64_t a1)
{
  v1 = a1;
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x8000000252E97160;
  *(v2 + 72) = MEMORY[0x277D839B0];
  *(v2 + 48) = v1;
  sub_252E362B4();
}

uint64_t sub_252D447E4(uint64_t a1)
{
  v1 = a1;
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();

  type metadata accessor for HomeAutomationIntentContext.Builder(0);
  swift_allocObject();
  v2 = sub_2529930C0();
  *(v2 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTVRequest) = v1;
  v3 = type metadata accessor for HomeAutomationIntentContext(0);
  swift_allocObject();
  v4 = sub_252996D9C(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C290;
  strcpy((v5 + 32), "intentContext");
  *(v5 + 46) = -4864;
  *(v5 + 72) = v3;
  *(v5 + 48) = v4;

  sub_252E362B4();
}

uint64_t sub_252D44954(uint64_t a1)
{
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();

  sub_252E362B4();
}

uint64_t sub_252D449E8(uint64_t a1)
{
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();

  sub_252E362B4();
}

uint64_t sub_252D44A7C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for HomeAutomationIncompatibleHomeHubVersionParameters(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D44B10, 0, 0);
}

uint64_t sub_252D44B10()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v3 = sub_252E36324();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  *(v1 + *(v2 + 20)) = 0;
  v4 = v1 + *(v2 + 24);
  *v4 = 0x3FF0000000000000;
  *(v4 + 8) = 0;
  v5 = sub_252C07CDC();
  v0[5] = v5;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_252D44C58;

  return v8(0xD000000000000029, 0x8000000252E95510, v5);
}

uint64_t sub_252D44C58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_252D44E18;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_252D44DA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D44DA4()
{
  sub_252D45994(v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1(v2);
}

uint64_t sub_252D44E18()
{
  sub_252D45994(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D44E88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - v5;
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  swift_beginAccess();

  type metadata accessor for HomeAutomationIntentContext.Builder(0);
  swift_allocObject();
  v7 = sub_2529930C0();
  v8 = [a1 name];
  sub_252E36F34();

  sub_252E37024();

  v9 = sub_252E36324();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v10((v11 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name), 1, 1, v9);
  swift_beginAccess();
  sub_252956BAC(v6, v11 + v12);
  swift_endAccess();
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  type metadata accessor for HomeAutomationHomeLocation(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_252956C1C(v11 + v12, v13 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v11 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  swift_deallocClassInstance();
  *(v7 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = v13;

  v14 = type metadata accessor for HomeAutomationIntentContext(0);
  swift_allocObject();
  v15 = sub_252996D9C(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_252E3C290;
  strcpy((v16 + 32), "intentContext");
  *(v16 + 46) = -4864;
  *(v16 + 72) = v14;
  *(v16 + 48) = v15;

  sub_252E362B4();
}

uint64_t sub_252D451EC(uint64_t a1)
{
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();

  sub_252E362B4();
}

void *HomeAutomationGuardFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  memcpy(__dst, v0 + 19, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return v0;
}

uint64_t HomeAutomationGuardFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  memcpy(__dst, v0 + 19, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return swift_deallocClassInstance();
}

uint64_t sub_252D45394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D43364(a1);
}

uint64_t sub_252D45430(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeAutomationGuardFlow();

  return sub_252E33644();
}

unint64_t sub_252D45468()
{
  result = qword_27F5406B0;
  if (!qword_27F5406B0)
  {
    v3 = sub_252E34104();
    result = swift_getWitnessTable(MEMORY[0x277D5C120], v3, v0, v1);
    atomic_store(result, &qword_27F5406B0);
  }

  return result;
}

uint64_t sub_252D454C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A738CC(a1, v1 + 16);
}

unint64_t sub_252D45560()
{
  result = qword_27F545920;
  if (!qword_27F545920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationGuardFlow.GuardError, &type metadata for HomeAutomationGuardFlow.GuardError, v0, v1);
    atomic_store(result, &qword_27F545920);
  }

  return result;
}

uint64_t dispatch thunk of HomeAutomationGuardFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t sub_252D45780()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D44A7C(v0);
}

id sub_252D45810(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_252AEFEB0();
  v2 = [v1 filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    v5 = sub_252DD5A58(v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_252C758E0(v5);

  v7 = sub_252DD6238(v6);

  if (v7 || (v8 = type metadata accessor for HomeStore(0), v9 = static HomeStore.shared.getter(v8), v7 = sub_2529D9114(), v9, v7))
  {
  }

  else
  {
    v13 = static HomeStore.shared.getter(v10);
    v7 = sub_2529F1BFC();

    if (!v7)
    {
      return 0;
    }
  }

  v11 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  return v11;
}

uint64_t sub_252D45994(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationIncompatibleHomeHubVersionParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D459F0()
{
  v0 = type metadata accessor for HomeStore(0);
  v1 = static HomeStore.shared.getter(v0);
  v2 = sub_2529E1FF0(0x776F6C46646E6966, 0xE800000000000000, 0);

  if (v2 == 2 || (v2 & 1) != 0)
  {
    v4 = static HomeStore.shared.getter(v3);
    v5 = *&v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager];

    LODWORD(v4) = [v5 isDataSyncInProgress];
    if (v4)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544DA8);
      sub_252CC4050(0xD00000000000004FLL, 0x8000000252E97530, 0xD000000000000072, 0x8000000252E97070, 0xD00000000000001DLL, 0x8000000252E97580, 151);
      sub_2529515FC(7, 17, 0xD000000000000019, 0x8000000252E975A0);
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000003CLL, 0x8000000252E974F0, 0xD000000000000072, 0x8000000252E97070);
    return 0;
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    sub_252CC4050(0xD00000000000004ELL, 0x8000000252E975C0, 0xD000000000000072, 0x8000000252E97070, 0xD00000000000001DLL, 0x8000000252E97580, 143);
    sub_2529515FC(7, 17, 0xD00000000000001BLL, 0x8000000252E82E50);
    return 1;
  }
}

uint64_t sub_252D45C98()
{
  v0 = type metadata accessor for HomeStore(0);
  v1 = static HomeStore.shared.getter(v0);
  v2 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager];

  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  sub_252929E74((v4 + 16), v12);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  if ((sub_252E338F4() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v12);
    return 0;
  }

  v5 = [v2 isDataSyncInProgress];
  v6 = __swift_destroy_boxed_opaque_existential_1(v12);
  if ((v5 & 1) != 0 || ((v7 = static HomeStore.shared.getter(v6), v8 = sub_2529D8DC0(), v7, v8 >> 62) ? (v9 = sub_252E378C4()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9))
  {

    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E974D0, 0xD000000000000072, 0x8000000252E97070);
  sub_2529515FC(7, 19, 0, 0);

  return 1;
}

uint64_t sub_252D45E60()
{
  v0 = type metadata accessor for HomeStore(0);
  v1 = static HomeStore.shared.getter(v0);
  v2 = v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v2 == 2 || (v2 & 1) == 0)
  {
    return 0;
  }

  v4 = static HomeStore.shared.getter(v3);
  v5 = sub_2529D8DC0();

  if (v5 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v8 = static HomeStore.shared.getter(v7);
    v9 = sub_2529D9D50();

    if (v9 >> 62)
    {
      v12 = sub_252E378C4();

      if (v12)
      {
        return 0;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
        return 0;
      }
    }
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E97400, 0xD000000000000072, 0x8000000252E97070);
  return 1;
}

BOOL sub_252D45FEC(uint64_t a1, void *a2)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 288), &v21);

  v4 = v23;
  v5 = v24;
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  v6 = (*(v5 + 168))(v4, v5);
  v7 = __swift_destroy_boxed_opaque_existential_1(&v21);
  if ((v6 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    v9 = "Providing NoHomeSetUp error";
    v10 = 0xD00000000000003FLL;
    goto LABEL_9;
  }

  if (_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0(v7))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    v9 = "ck and let the next checker run";
    v10 = 0xD000000000000063;
LABEL_9:
    sub_252CC3D90(v10, v9 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E97070);
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = a2;
  v14 = [v13 currentUser];
  v15 = [v13 homeAccessControlForUser_];
  v16 = [v15 isRestrictedGuest];

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544DA8);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();

  v21 = 0xD000000000000012;
  v22 = 0x8000000252E972C0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v16)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v18, v19);

  sub_252CC3D90(v21, v22, 0xD000000000000072, 0x8000000252E97070);

  if (!v16)
  {

    return 0;
  }

  v20 = sub_252D45E60();

  return (v20 & 1) != 0;
}

uint64_t sub_252D462EC(uint64_t a1, void *a2)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 288), &v26);

  v4 = v28;
  v5 = v29;
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  v6 = (*(v5 + 168))(v4, v5);
  v7 = __swift_destroy_boxed_opaque_existential_1(&v26);
  if ((v6 & 1) == 0)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    v9 = ". Likely HH1/HH2 incompatible.";
    v10 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (_s22HomeAutomationInternal25RestrictedGuestCheckUtilsO23isCurrentDeviceCommunalSbyFZ_0(v7))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    v9 = "location away or unknown)";
    v10 = 0xD000000000000060;
LABEL_9:
    sub_252CC3D90(v10, v9 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E97070);
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = a2;
  v14 = [v13 currentUser];
  v15 = [v13 homeAccessControlForUser_];

  v25 = [v15 isAccessAllowed];
  v16 = [v15 isRestrictedGuest];
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544DA8);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_252E379F4();

  v26 = 0xD000000000000012;
  v27 = 0x8000000252E972C0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  v19 = 0xE400000000000000;
  if (v16)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v18, v20);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E972E0);
  if (v25)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (!v25)
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v21, v19);

  sub_252CC3D90(v26, v27, 0xD000000000000072, 0x8000000252E97070);

  if (!v16)
  {
    goto LABEL_29;
  }

  v22 = [v13 homeLocationStatus];
  if (([v15 isRestrictedGuestInAllowedPeriod] & 1) == 0)
  {
    v23 = ", isAccessAllowed ";
    v24 = 0xD00000000000003FLL;
    goto LABEL_31;
  }

  if ((v22 | 2) != 2)
  {
LABEL_29:

    return 0;
  }

  v23 = "ess error (outside of schedule)";
  v24 = 0xD000000000000049;
LABEL_31:
  sub_252CC3D90(v24, v23 | 0x8000000000000000, 0xD000000000000072, 0x8000000252E97070);

  return 1;
}

uint64_t sub_252D466E4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v37 - v4;
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v7 = [v6 currentUser];
  v8 = [v6 homeAccessControlForUser_];

  LOBYTE(v7) = [v8 isRestrictedGuest];
  if (v7 & 1) != 0 || (v9 = [v6 currentUser], v10 = objc_msgSend(v6, sel_homeAccessControlForUser_, v9), v9, LOBYTE(v9) = objc_msgSend(v10, sel_isAccessAllowed), v10, (v9))
  {

    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E971E0, 0xD000000000000072, 0x8000000252E97070);
  type metadata accessor for ErrorFilingHelper();
  inited = swift_initStackObject();
  v37[1] = inited;
  sub_252E36884();
  swift_allocObject();
  v38 = sub_252E36874();
  v39 = 0;
  *(inited + 16) = v38;
  v40 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E97210);
  v14 = [v6 currentUser];
  v15 = [v14 description];
  v16 = sub_252E36F34();
  v18 = v17;

  MEMORY[0x2530AD570](v16, v18);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E97240);
  v19 = [v6 description];
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  MEMORY[0x2530AD570](46, 0xE100000000000000);
  v24 = v39;
  v23 = v40;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_252E379F4();
  v25 = [v6 currentUser];
  v26 = [v25 description];
  v27 = sub_252E36F34();
  v29 = v28;

  MEMORY[0x2530AD570](v27, v29);

  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E97260);
  v30 = [v6 description];
  v31 = sub_252E36F34();
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E97280);
  v34 = v39;
  v35 = v40;
  MEMORY[0x2530ACCE0](0x74694B656D6F48, 0xE700000000000000, 0x736775422077654ELL, 0xE800000000000000, 590644);
  v36 = sub_252E36834();
  (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
  sub_25295ADB4(v24, v23, 0x7A69726F68747541, 0xED00006E6F697461, v34, v35, v5);

  sub_25293847C(v5, &qword_27F540570, &unk_252E50EE0);
  return 1;
}

uint64_t sub_252D46BBC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F44();

  v1 = sub_252E36064();

  sub_252E35F74();
  sub_252E35F44();

  v2 = sub_252E36054();

  sub_252E35F74();
  sub_252E35F44();

  v3 = sub_252E36044();

  v4 = sub_252CDFDD4();
  if ((v4 & 1) != 0 && (v1 & 1) == 0)
  {
    if (v2)
    {
      __dst[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
      __dst[4] = sub_252D46D38();
      LOBYTE(__dst[0]) = 23;
      v5 = sub_252E34214();
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v4 = v5;
      if (v5 & 1) != 0 || ((v3 ^ 1))
      {
        return v4 & 1;
      }
    }

    else if ((v3 & 1) == 0)
    {
      v4 = 0;
      return v4 & 1;
    }

    __dst[3] = &type metadata for FeatureFlagProvider.SiriHomeFeatures;
    __dst[4] = sub_252D46D38();
    LOBYTE(__dst[0]) = 24;
    v6 = sub_252E34214();
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v4 = v6;
  }

  return v4 & 1;
}

unint64_t sub_252D46D38()
{
  result = qword_2814B0C28[0];
  if (!qword_2814B0C28[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FeatureFlagProvider.SiriHomeFeatures, &type metadata for FeatureFlagProvider.SiriHomeFeatures, v0, v1);
    atomic_store(result, qword_2814B0C28);
  }

  return result;
}

void *sub_252D46D94(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v3 = *(v2 + 22);

  v1[2] = v3;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 136), v12);

  v6 = sub_252927BEC(v12, (v1 + 3));
  v7 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6) + 29);

  v8 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[11] = v8;
  v1[12] = &off_2864BA730;
  v1[8] = v7;
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  swift_beginAccess();
  v10 = *(v9 + 23);

  v1[13] = v10;
  return v1;
}

uint64_t ControlHomeIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  ControlHomeIntent.Builder.init()();
  return v0;
}

id ControlHomeIntent.__allocating_init(userTask:filters:time:)(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_252D474AC(a1, a2, a3);

  return v5;
}

{
  v4 = v3;
  v7 = [objc_allocWithZone(v4) init];
  [v7 setUserTask_];
  type metadata accessor for HomeFilter();
  v8 = sub_252E37254();

  [v7 setFilters_];

  [v7 setTime_];
  return v7;
}

id ControlHomeIntent.__allocating_init(userTask:filters:)(void *a1, uint64_t a2)
{
  v3 = sub_252D473EC(a1, a2);

  return v3;
}

void *ControlHomeIntent.Builder.__allocating_init(intent:)(void *a1)
{
  v2 = [a1 userTask];
  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [a1 time];
  v7 = sub_252D47574(v2, v5, v6);

  return v7;
}

void *ControlHomeIntent.Builder.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setTaskType_];
  [v4 setAttribute_];
  [v4 setValue_];

  v5 = MEMORY[0x277D84F90];
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = 0;
  return v0;
}

uint64_t sub_252D471A4(void *a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  v3 = a1;
}

id sub_252D471E4()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v4 = v2;
  v5 = v1;

  v6 = [v3 init];
  [v6 setUserTask_];
  type metadata accessor for HomeFilter();
  v7 = sub_252E37254();

  [v6 setFilters_];

  [v6 setTime_];
  return v6;
}

void *sub_252D472E8(uint64_t a1)
{
  type metadata accessor for ControlHomeIntent.Builder();
  v2 = v1[2];
  swift_beginAccess();
  v4 = v1[3];
  v3 = v1[4];
  v5 = v3;
  v6 = v2;

  v7 = sub_252D47574(v2, v4, v3);

  return v7;
}

uint64_t ControlHomeIntent.Builder.deinit()
{

  return v0;
}

uint64_t ControlHomeIntent.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_252D473EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(v3) init];
  [v6 setUserTask_];
  if (a2)
  {
    type metadata accessor for HomeFilter();
    v7 = sub_252E37254();
  }

  else
  {
    v7 = 0;
  }

  [v6 setFilters_];

  [v6 setTime_];
  return v6;
}

id sub_252D474AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(v3) init];
  [v7 setUserTask_];
  if (a2)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  [v7 setFilters_];

  [v7 setTime_];
  return v7;
}

void *sub_252D47574(void *a1, unint64_t a2, void *a3)
{
  v7 = (*(v3 + 176))();
  v8 = v7[2];
  v7[2] = a1;

  v9 = a1;

  v10 = sub_25297CCF8(a2);

  swift_beginAccess();
  v7[3] = v10;

  v11 = v7[4];
  v7[4] = a3;
  v12 = a3;

  return v7;
}

uint64_t sub_252D47790(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name;
  v16 = *(v12 + 56);
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &v21 - v13);
  sub_252956C1C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_252956C1C(v14, v10);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_252B3DE3C();
      v18 = sub_252E36EF4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_25293847C(v14, &qword_27F540758, &unk_252E4D160);
    v18 = 0;
    return v18 & 1;
  }

  sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
  v18 = 1;
  return v18 & 1;
}

uint64_t ControlHomeIntent.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v18);
  if (v19)
  {
    type metadata accessor for ControlHomeIntent();
    if (swift_dynamicCast())
    {
      v2 = [v17 userTask];
      v3 = [v1 userTask];
      v4 = v3;
      if (v2)
      {
        if (!v3)
        {
LABEL_28:

          goto LABEL_8;
        }

        type metadata accessor for HomeUserTask();
        v5 = sub_252E37694();

        if ((v5 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_12:
        v8 = [v17 filters];
        if (v8)
        {
          v9 = v8;
          type metadata accessor for HomeFilter();
          v10 = sub_252E37264();
        }

        else
        {
          v10 = 0;
        }

        v11 = [v1 filters];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for HomeFilter();
          v13 = sub_252E37264();

          if (v10)
          {
            if (v13)
            {
              v14 = sub_252AE91C8(v10, v13);

              if (v14)
              {
                goto LABEL_25;
              }

LABEL_24:

              goto LABEL_8;
            }

            goto LABEL_21;
          }

          if (v13)
          {

            goto LABEL_24;
          }
        }

        else if (v10)
        {
LABEL_21:

          goto LABEL_8;
        }

LABEL_25:
        v2 = [v17 time];
        v15 = [v1 time];
        v16 = v15;
        if (!v2)
        {

          if (!v16)
          {
            v6 = 1;
            return v6 & 1;
          }

          goto LABEL_8;
        }

        if (v15)
        {
          sub_252D47CC8();
          v6 = sub_252E37694();

          return v6 & 1;
        }

        goto LABEL_28;
      }

      if (!v3)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_252982F10(v18);
  }

LABEL_8:
  v6 = 0;
  return v6 & 1;
}

unint64_t sub_252D47CC8()
{
  result = qword_27F545928;
  if (!qword_27F545928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F545928);
  }

  return result;
}

unint64_t DisambiguationSnippetModel.stringId.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v32 - v3;
  v38 = type metadata accessor for DisambiguationOption(0);
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  MEMORY[0x28223BE20](v8 - 8);
  v35 = (v32 - v9);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_252E379F4();

  v44 = 0xD000000000000010;
  v45 = 0x8000000252E97690;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v42, v43);

  v42 = 0x736E6F6974706F23;
  v43 = 0xEA0000000000203ALL;
  v10 = type metadata accessor for DisambiguationSnippetModel(0);
  v39 = *(v0 + *(v10 + 20));

  sub_252D4A8B0(&v39);
  v34 = v10;
  v11 = v39;
  v12 = *(v39 + 16);
  v36 = v5;
  if (v12)
  {
    v33 = v0;
    v41 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v12, 0);
    v13 = v41;
    v14 = *(v5 + 80);
    v32[1] = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v37 = *(v5 + 72);
    do
    {
      sub_252D4AB5C(v15, v7, type metadata accessor for DisambiguationOption);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_252E379F4();

      v39 = 0x203A6C6562616CLL;
      v40 = 0xE700000000000000;
      MEMORY[0x2530AD570](*v7, v7[1]);
      MEMORY[0x2530AD570](0x686365657073202CLL, 0xEE003A6C6562614CLL);
      MEMORY[0x2530AD570](v7[2], v7[3]);
      MEMORY[0x2530AD570](0x6E6F436E6F636920, 0xEC0000003A676966);
      sub_252938414(v7 + *(v38 + 24), v4, &qword_27F541B50, &unk_252E47970);
      v16 = type metadata accessor for IconConfiguration(0);
      if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
      {
        sub_25293847C(v4, &qword_27F541B50, &unk_252E47970);
        v17 = 0xE300000000000000;
        v18 = 7104878;
      }

      else
      {
        v18 = IconConfiguration.description.getter();
        v17 = v19;
        sub_252D4A958(v4, type metadata accessor for IconConfiguration);
      }

      MEMORY[0x2530AD570](v18, v17);

      v20 = v39;
      v21 = v40;
      sub_252D4A958(v7, type metadata accessor for DisambiguationOption);
      v41 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2529AA3A0((v22 > 1), v23 + 1, 1);
        v13 = v41;
      }

      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v15 += v37;
      --v12;
    }

    while (v12);

    v1 = v33;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v25 = MEMORY[0x2530AD730](v13, MEMORY[0x277D837D0]);
  v27 = v26;

  MEMORY[0x2530AD570](v25, v27);

  MEMORY[0x2530AD570](v42, v43);

  v42 = 0;
  v43 = 0xE000000000000000;
  sub_252E379F4();

  v42 = 0xD000000000000010;
  v43 = 0x8000000252E976B0;
  v28 = v35;
  sub_252938414(v1 + *(v34 + 24), v35, &qword_27F5434B8, &qword_252E4BE48);
  if ((*(v36 + 48))(v28, 1, v38) == 1)
  {
    sub_25293847C(v28, &qword_27F5434B8, &qword_252E4BE48);
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    v30 = *v28;
    v29 = v28[1];

    sub_252D4A958(v28, type metadata accessor for DisambiguationOption);
  }

  MEMORY[0x2530AD570](v30, v29);

  MEMORY[0x2530AD570](v42, v43);

  return v44;
}

uint64_t sub_252D48390()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v33 - v3;
  v39 = type metadata accessor for DisambiguationOption(0);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = (v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();

  v43 = 0x5379616C70736964;
  v44 = 0xEF203A676E697274;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v41, v42);

  MEMORY[0x2530AD570](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v11 = type metadata accessor for DisambiguationSnippetModel(0);
  v41 = *(v0 + *(v11 + 20));

  sub_252D4A8B0(&v41);
  v36 = v11;
  v37 = v10;
  v12 = v41;
  v13 = *(v41 + 16);
  if (v13)
  {
    v35 = v0;
    v40 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v13, 0);
    v14 = v40;
    v15 = *(v5 + 80);
    v33[1] = v12;
    v34 = v5;
    v16 = v12 + ((v15 + 32) & ~v15);
    v38 = *(v5 + 72);
    do
    {
      sub_252D4AB5C(v16, v7, type metadata accessor for DisambiguationOption);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_252E379F4();

      v41 = 0x203A6C6562616CLL;
      v42 = 0xE700000000000000;
      MEMORY[0x2530AD570](*v7, v7[1]);
      MEMORY[0x2530AD570](0x686365657073202CLL, 0xEE003A6C6562614CLL);
      MEMORY[0x2530AD570](v7[2], v7[3]);
      MEMORY[0x2530AD570](0x6E6F436E6F636920, 0xEC0000003A676966);
      sub_252938414(v7 + *(v39 + 24), v4, &qword_27F541B50, &unk_252E47970);
      v17 = type metadata accessor for IconConfiguration(0);
      if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
      {
        sub_25293847C(v4, &qword_27F541B50, &unk_252E47970);
        v18 = 0xE300000000000000;
        v19 = 7104878;
      }

      else
      {
        v19 = IconConfiguration.description.getter();
        v18 = v20;
        sub_252D4A958(v4, type metadata accessor for IconConfiguration);
      }

      MEMORY[0x2530AD570](v19, v18);

      v21 = v41;
      v22 = v42;
      sub_252D4A958(v7, type metadata accessor for DisambiguationOption);
      v40 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2529AA3A0((v23 > 1), v24 + 1, 1);
        v14 = v40;
      }

      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v16 += v38;
      --v13;
    }

    while (v13);

    v5 = v34;
    v1 = v35;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v26 = MEMORY[0x2530AD730](v14, MEMORY[0x277D837D0]);
  v28 = v27;

  MEMORY[0x2530AD570](v26, v28);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E976D0);
  v29 = v37;
  sub_252938414(v1 + *(v36 + 24), v37, &qword_27F5434B8, &qword_252E4BE48);
  if ((*(v5 + 48))(v29, 1, v39) == 1)
  {
    sub_25293847C(v29, &qword_27F5434B8, &qword_252E4BE48);
    v30 = 0xE300000000000000;
    v31 = 7104878;
  }

  else
  {
    v31 = *v29;
    v30 = v29[1];

    sub_252D4A958(v29, type metadata accessor for DisambiguationOption);
  }

  MEMORY[0x2530AD570](v31, v30);

  return v43;
}

uint64_t DisambiguationOption.action.setter(uint64_t a1)
{
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t DisambiguationOption.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DisambiguationOption.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DisambiguationOption.speechLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DisambiguationOption.speechLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DisambiguationOption.action.getter()
{
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33074();
}

uint64_t sub_252D48B84@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252D48BDC(void **a1)
{
  v1 = *a1;
  type metadata accessor for DisambiguationOption(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

void (*DisambiguationOption.action.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for DisambiguationOption(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_25292DC78;
}

uint64_t sub_252D48CE8()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D48DB0(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D48E64(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252D48F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D4C5DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252D48F58(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6562616CLL;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F69746361;
  if (*v1 != 2)
  {
    v5 = 0x666E6F436E6F6369;
    v4 = 0xEA00000000006769;
  }

  if (*v1)
  {
    v3 = 0x614C686365657073;
    v2 = 0xEB000000006C6562;
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

uint64_t sub_252D48FDC()
{
  v1 = 0x6C6562616CLL;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x666E6F436E6F6369;
  }

  if (*v0)
  {
    v1 = 0x614C686365657073;
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

unint64_t sub_252D4905C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252D4C5DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252D49084(uint64_t a1)
{
  v2 = sub_252D4A9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D490C0(uint64_t a1)
{
  v2 = sub_252D4A9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = v32 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545930, &qword_252E5D750);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v32 - v6;
  v8 = type metadata accessor for DisambiguationOption(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 24);
  v13 = type metadata accessor for IconConfiguration(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v42 = v12;
  v43 = v11;
  v15(v11 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4A9B8();
  v17 = v41;
  sub_252E37F74();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_25293847C(v43 + v42, &qword_27F541B50, &unk_252E47970);
  }

  else
  {
    v32[4] = v16;
    v33 = v15;
    v18 = v37;
    v19 = v38;
    v32[3] = v8;
    v41 = a1;
    v20 = v39;
    v47 = 0;
    v21 = sub_252E37C04();
    v22 = v7;
    v23 = v43;
    *v43 = v21;
    v23[1] = v24;
    v32[2] = v24;
    v46 = 1;
    v23[2] = sub_252E37C04();
    v23[3] = v25;
    v45 = 3;
    sub_252D4AA0C(&qword_27F542A38, type metadata accessor for IconConfiguration, protocol conformance descriptor for IconConfiguration);
    v26 = v19;
    v32[1] = 0;
    sub_252E37C64();
    v27 = v35;
    v33(v26, 0, 1, 0);
    v28 = v43;
    sub_252A909F4(v26, v43 + v42, &qword_27F541B50, &unk_252E47970);
    v44 = 2;
    sub_252AA8EEC(&qword_27F542A30, MEMORY[0x277D63230]);
    v29 = v40;
    sub_252E37C64();
    v30 = v36;
    sub_252E33074();
    (*(v30 + 8))(v27, v20);
    sub_252A75B60();
    sub_252E33054();
    (*(v18 + 8))(v22, v29);
    sub_252D4AB5C(v28, v34, type metadata accessor for DisambiguationOption);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_252D4A958(v28, type metadata accessor for DisambiguationOption);
  }
}

uint64_t DisambiguationOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545940, &qword_252E5D758);
  v10 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4A9B8();
  sub_252E37F84();
  v15 = 0;
  sub_252E37CF4();
  if (v1)
  {
  }

  v14 = 1;
  sub_252E37CF4();
  type metadata accessor for DisambiguationOption(0);
  v13 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  sub_252AA8E38();
  sub_252E37D54();
  sub_252E33074();
  sub_252A75B60();
  sub_252E33054();
  v12 = 2;
  sub_252AA8EEC(&qword_27F542A58, MEMORY[0x277D63228]);
  sub_252E37D54();
  (*(v11 + 8))(v5, v3);
  return (*(v10 + 8))(v8, v6);
}

uint64_t sub_252D49988@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DisambiguationSnippetModel.displayText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

void (*DisambiguationSnippetModel.displayText.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t DisambiguationSnippetModel.options.getter()
{
  type metadata accessor for DisambiguationSnippetModel(0);
}

uint64_t DisambiguationSnippetModel.options.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DisambiguationSnippetModel(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_252D49C9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6F6974706FLL;
  if (v2 != 1)
  {
    v4 = 0x4F746C7561666564;
    v3 = 0xED00006E6F697470;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x5479616C70736964;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000747865;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 0x4F746C7561666564;
    v7 = 0xED00006E6F697470;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000747865;
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

uint64_t sub_252D49DBC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D49E74(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D49F18(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252D49FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D4C628(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252D49FFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0xE700000000000000;
  v5 = 0x736E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 0x4F746C7561666564;
    v4 = 0xED00006E6F697470;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5479616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D4A070()
{
  v1 = 0x736E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x4F746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

unint64_t sub_252D4A0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252D4C628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252D4A108(uint64_t a1)
{
  v2 = sub_252D4AA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D4A144(uint64_t a1)
{
  v2 = sub_252D4AA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v24 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545948, &qword_252E5D760);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = v24 - v5;
  v7 = type metadata accessor for DisambiguationSnippetModel(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for DisambiguationOption(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v31 = v10;
  v32 = v11;
  v14(&v10[v11], 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4AA54();
  v28 = v6;
  v16 = v30;
  sub_252E37F74();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_25293847C(&v31[v32], &qword_27F5434B8, &qword_252E4BE48);
  }

  else
  {
    v17 = v7;
    v24[1] = v15;
    v30 = v14;
    v19 = v26;
    v18 = v27;
    LOBYTE(v33) = 0;
    v33 = sub_252E37C04();
    v34 = v20;
    v21 = v31;
    sub_252E330C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545958, &qword_252E5D768);
    v35 = 1;
    sub_252D4AAA8();
    sub_252E37C64();
    *(v21 + *(v17 + 20)) = v33;
    LOBYTE(v33) = 2;
    sub_252D4AA0C(&qword_27F545968, type metadata accessor for DisambiguationOption, protocol conformance descriptor for DisambiguationOption);
    sub_252E37C64();
    (*(v19 + 8))(v28, v29);
    v22 = v25;
    v30(v18, 0, 1, v12);
    sub_252A909F4(v18, v21 + v32, &qword_27F5434B8, &qword_252E4BE48);
    sub_252D4AB5C(v21, v22, type metadata accessor for DisambiguationSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_252D4A958(v21, type metadata accessor for DisambiguationSnippetModel);
  }
}

uint64_t DisambiguationSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545970, &qword_252E5D770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D4AA54();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v11) = 0;
  sub_252E37CF4();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v11 = *(v3 + *(type metadata accessor for DisambiguationSnippetModel(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545958, &qword_252E5D768);
    sub_252D4ABC4();
    sub_252E37D54();
    LOBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
    sub_252D4AC78();
    sub_252E37D54();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_252D4A8B0(void *a1)
{
  v2 = *(type metadata accessor for DisambiguationOption(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25293467C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_252D4B290(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_252D4A958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_252D4A9B8()
{
  result = qword_27F545938;
  if (!qword_27F545938)
  {
    result = swift_getWitnessTable(byte_252E5DB28, &type metadata for DisambiguationOption.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545938);
  }

  return result;
}

uint64_t sub_252D4AA0C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_252D4AA54()
{
  result = qword_27F545950;
  if (!qword_27F545950)
  {
    result = swift_getWitnessTable(aQ_8, &type metadata for DisambiguationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545950);
  }

  return result;
}

unint64_t sub_252D4AAA8()
{
  result = qword_27F545960;
  if (!qword_27F545960)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545958, &qword_252E5D768);
    v4[0] = sub_252D4AA0C(&qword_27F545968, type metadata accessor for DisambiguationOption, protocol conformance descriptor for DisambiguationOption);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F545960);
  }

  return result;
}

uint64_t sub_252D4AB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_252D4ABC4()
{
  result = qword_27F545978;
  if (!qword_27F545978)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545958, &qword_252E5D768);
    v4[0] = sub_252D4AA0C(&qword_27F545980, type metadata accessor for DisambiguationOption, protocol conformance descriptor for DisambiguationOption);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27F545978);
  }

  return result;
}

unint64_t sub_252D4AC78()
{
  result = qword_27F545988;
  if (!qword_27F545988)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5434B8, &qword_252E4BE48);
    v4[0] = sub_252D4AA0C(&qword_27F545980, type metadata accessor for DisambiguationOption, protocol conformance descriptor for DisambiguationOption);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F545988);
  }

  return result;
}

void sub_252D4ADE4(uint64_t a1)
{
  sub_252D4AED8(319, &qword_27F542A90, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_252D4AED8(319, &qword_27F542A88, sub_252A75B60, MEMORY[0x277D63220]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252D4AED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_252D4AF64(uint64_t a1)
{
  sub_252ACF134();
  if (v1 <= 0x3F)
  {
    sub_252D4AED8(319, &qword_27F5459B0, type metadata accessor for DisambiguationOption, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_252D4AED8(319, &qword_27F5459B8, type metadata accessor for DisambiguationOption, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252D4B084()
{
  result = qword_27F5459C0;
  if (!qword_27F5459C0)
  {
    result = swift_getWitnessTable(asc_252E5D9C0, &type metadata for DisambiguationOption.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5459C0);
  }

  return result;
}

unint64_t sub_252D4B0DC()
{
  result = qword_27F5459C8;
  if (!qword_27F5459C8)
  {
    result = swift_getWitnessTable(byte_252E5DAB0, &type metadata for DisambiguationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5459C8);
  }

  return result;
}

unint64_t sub_252D4B134()
{
  result = qword_27F5459D0;
  if (!qword_27F5459D0)
  {
    result = swift_getWitnessTable(byte_252E5D9E8, &type metadata for DisambiguationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5459D0);
  }

  return result;
}

unint64_t sub_252D4B18C()
{
  result = qword_27F5459D8;
  if (!qword_27F5459D8)
  {
    result = swift_getWitnessTable(byte_252E5DA10, &type metadata for DisambiguationSnippetModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5459D8);
  }

  return result;
}

unint64_t sub_252D4B1E4()
{
  result = qword_27F5459E0;
  if (!qword_27F5459E0)
  {
    result = swift_getWitnessTable(byte_252E5D8F8, &type metadata for DisambiguationOption.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5459E0);
  }

  return result;
}

unint64_t sub_252D4B23C()
{
  result = qword_27F5459E8;
  if (!qword_27F5459E8)
  {
    result = swift_getWitnessTable(byte_252E5D920, &type metadata for DisambiguationOption.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5459E8);
  }

  return result;
}

uint64_t sub_252D4B290(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DisambiguationOption(0);
        v6 = sub_252E372B4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DisambiguationOption(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_252D4B62C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252D4B3BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252D4B3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for DisambiguationOption(0);
  v8 = MEMORY[0x28223BE20](v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v27 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v27 - v16);
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_252D4AB5C(v23, v17, type metadata accessor for DisambiguationOption);
      sub_252D4AB5C(v20, v13, type metadata accessor for DisambiguationOption);
      if (*v17 == *v13 && v17[1] == v13[1])
      {
        sub_252D4A958(v13, type metadata accessor for DisambiguationOption);
        result = sub_252D4A958(v17, type metadata accessor for DisambiguationOption);
LABEL_5:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_6;
      }

      v25 = sub_252E37DB4();
      sub_252D4A958(v13, type metadata accessor for DisambiguationOption);
      result = sub_252D4A958(v17, type metadata accessor for DisambiguationOption);
      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_252A6FB70(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_252A6FB70(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252D4B62C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v123 = a1;
  v137 = type metadata accessor for DisambiguationOption(0);
  v130 = *(v137 - 8);
  v9 = MEMORY[0x28223BE20](v137);
  v126 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v136 = &v117 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v117 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v117 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v134 = (&v117 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v133 = (&v117 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v122 = (&v117 - v24);
  result = MEMORY[0x28223BE20](v23);
  v121 = (&v117 - v26);
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v138 = v29;
      v112 = *(v29 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v29;
          v29 = *(v29 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_252D4C044(*a3 + *(v130 + 72) * v29, *a3 + *(v130 + 72) * *&v113[16 * v112 + 16], *a3 + *(v130 + 72) * v115, v5);
          if (v6)
          {
          }

          if (v115 < v29)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_252934564(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v29;
          v116[1] = v115;
          v138 = v114;
          result = sub_2529344D8(v112 - 1);
          v29 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_252934564(v29);
    v29 = result;
    goto LABEL_112;
  }

  v117 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v131 = a3;
  v127 = v18;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v128 = v27;
      v118 = v29;
      v32 = *a3;
      v33 = *(v130 + 72);
      v34 = v28 + 1;
      v35 = v121;
      sub_252D4AB5C(v32 + v33 * v31, v121, type metadata accessor for DisambiguationOption);
      v132 = v33;
      v36 = v32 + v33 * v30;
      v37 = v122;
      sub_252D4AB5C(v36, v122, type metadata accessor for DisambiguationOption);
      v38 = *v35 == *v37 && v35[1] == v37[1];
      v119 = v6;
      if (v38)
      {
        LODWORD(v129) = 0;
      }

      else
      {
        LODWORD(v129) = sub_252E37DB4();
      }

      sub_252D4A958(v122, type metadata accessor for DisambiguationOption);
      result = sub_252D4A958(v121, type metadata accessor for DisambiguationOption);
      v120 = v30;
      v39 = v30 + 2;
      v40 = v132 * (v30 + 2);
      v41 = v32 + v40;
      v42 = v34;
      v43 = v132 * v34;
      a3 = v32 + v132 * v34;
      do
      {
        v45 = v39;
        v29 = v42;
        v5 = v43;
        v46 = v40;
        v135 = v39;
        if (v39 >= v128)
        {
          break;
        }

        v47 = v15;
        v48 = v133;
        sub_252D4AB5C(v41, v133, type metadata accessor for DisambiguationOption);
        v49 = v134;
        sub_252D4AB5C(a3, v134, type metadata accessor for DisambiguationOption);
        v50 = *v48 == *v49 && v48[1] == v49[1];
        v44 = v50 ? 0 : sub_252E37DB4();
        v15 = v47;
        v6 = type metadata accessor for DisambiguationOption;
        sub_252D4A958(v134, type metadata accessor for DisambiguationOption);
        result = sub_252D4A958(v133, type metadata accessor for DisambiguationOption);
        v45 = v135;
        v39 = v135 + 1;
        v41 += v132;
        a3 += v132;
        v42 = v29 + 1;
        v43 = v5 + v132;
        v40 = v46 + v132;
        v18 = v127;
      }

      while (((v129 ^ v44) & 1) == 0);
      if ((v129 & 1) == 0)
      {
        v31 = v45;
LABEL_36:
        v29 = v118;
        v6 = v119;
        a3 = v131;
        v30 = v120;
        goto LABEL_37;
      }

      if (v45 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v45)
      {
        v51 = v120 * v132;
        v52 = v120;
        do
        {
          if (v52 != v29)
          {
            v54 = *v131;
            if (!*v131)
            {
              goto LABEL_145;
            }

            sub_252A6FB70(v54 + v51, v126);
            if (v51 < v5 || v54 + v51 >= (v54 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v51 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_252A6FB70(v126, v54 + v5);
          }

          ++v52;
          v5 -= v132;
          v46 -= v132;
          v51 += v132;
        }

        while (v52 < v29--);
        v31 = v135;
        goto LABEL_36;
      }

      v31 = v45;
      v29 = v118;
      v6 = v119;
      a3 = v131;
      v30 = v120;
    }

LABEL_37:
    v55 = *(a3 + 8);
    if (v31 < v55)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_138;
      }

      if (v31 - v30 < v117)
      {
        break;
      }
    }

LABEL_59:
    if (v31 < v30)
    {
      goto LABEL_137;
    }

    v135 = v31;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v67 = *(v29 + 16);
    v66 = *(v29 + 24);
    v68 = v67 + 1;
    v28 = v135;
    if (v67 >= v66 >> 1)
    {
      result = sub_252934578((v66 > 1), v67 + 1, 1, v29);
      v28 = v135;
      v29 = result;
    }

    *(v29 + 16) = v68;
    v69 = v29 + 16 * v67;
    *(v69 + 32) = v30;
    *(v69 + 40) = v28;
    v5 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (v67)
    {
      while (1)
      {
        a3 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v70 = *(v29 + 32);
          v71 = *(v29 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_126;
          }

          v86 = (v29 + 16 * v68);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_129;
          }

          v92 = (v29 + 32 + 16 * a3);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_133;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a3 = v68 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v96 = (v29 + 16 * v68);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_93:
        if (v91)
        {
          goto LABEL_128;
        }

        v99 = v29 + 16 * a3;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_131;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_100:
        v107 = a3 - 1;
        if (a3 - 1 >= v68)
        {
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
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v131)
        {
          goto LABEL_144;
        }

        v108 = v29;
        v109 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v107);
        v110 = *(v109 + 16 * a3 + 8);
        sub_252D4C044(*v131 + *(v130 + 72) * v29, *v131 + *(v130 + 72) * *(v109 + 16 * a3), *v131 + *(v130 + 72) * v110, v5);
        if (v6)
        {
        }

        if (v110 < v29)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_252934564(v108);
        }

        if (v107 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v111 = &v108[16 * v107];
        *(v111 + 4) = v29;
        *(v111 + 5) = v110;
        v138 = v108;
        result = sub_2529344D8(a3);
        v29 = v138;
        v68 = *(v138 + 16);
        v28 = v135;
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v29 + 32 + 16 * v68;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_124;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_125;
      }

      v81 = (v29 + 16 * v68);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_127;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_130;
      }

      if (v85 >= v77)
      {
        v103 = (v29 + 32 + 16 * a3);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          a3 = v68 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v131;
    v27 = v131[1];
    if (v28 >= v27)
    {
      goto LABEL_110;
    }
  }

  v56 = v30 + v117;
  if (__OFADD__(v30, v117))
  {
    goto LABEL_140;
  }

  if (v56 >= v55)
  {
    v56 = *(a3 + 8);
  }

  if (v56 < v30)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v31 == v56)
  {
    goto LABEL_59;
  }

  v118 = v29;
  v119 = v6;
  a3 = *a3;
  v57 = *(v130 + 72);
  v58 = a3 + v57 * (v31 - 1);
  v59 = v30;
  v60 = -v57;
  v120 = v59;
  v61 = v59 - v31;
  v124 = v57;
  v125 = v56;
  v5 = a3 + v31 * v57;
LABEL_48:
  v135 = v31;
  v128 = v5;
  v129 = v61;
  v132 = v58;
  while (1)
  {
    sub_252D4AB5C(v5, v18, type metadata accessor for DisambiguationOption);
    sub_252D4AB5C(v58, v15, type metadata accessor for DisambiguationOption);
    if (*v18 == *v15 && v18[1] == v15[1])
    {
      sub_252D4A958(v15, type metadata accessor for DisambiguationOption);
      sub_252D4A958(v18, type metadata accessor for DisambiguationOption);
LABEL_47:
      v31 = v135 + 1;
      v58 = v132 + v124;
      v61 = v129 - 1;
      v5 = v128 + v124;
      if (v135 + 1 == v125)
      {
        v31 = v125;
        v29 = v118;
        v6 = v119;
        v30 = v120;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v63 = sub_252E37DB4();
    sub_252D4A958(v15, type metadata accessor for DisambiguationOption);
    result = sub_252D4A958(v18, type metadata accessor for DisambiguationOption);
    if ((v63 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v64 = v136;
    sub_252A6FB70(v5, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_252A6FB70(v64, v58);
    v58 += v60;
    v5 += v60;
    if (__CFADD__(v61++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_252D4C044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a4;
  v47 = type metadata accessor for DisambiguationOption(0);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v45 = (&v40 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v40 - v12);
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v40 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v44 = a2;
  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v19 = a3 - v44;
  if (a3 - v44 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v20 = (a2 - a1) / v18;
  v51 = a1;
  v50 = v48;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (v48 < v44 || v44 + v23 <= v48)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v48 != v44)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = v48 + v23;
    if (v23 >= 1)
    {
      v30 = -v18;
      v31 = v48 + v23;
      v43 = -v18;
      do
      {
        v41 = v29;
        v32 = v44;
        v44 += v30;
        while (1)
        {
          if (v32 <= a1)
          {
            v51 = v32;
            v49 = v41;
            goto LABEL_69;
          }

          v33 = a3;
          v42 = v29;
          v34 = v43;
          v35 = v31 + v43;
          v36 = v45;
          sub_252D4AB5C(v31 + v43, v45, type metadata accessor for DisambiguationOption);
          v37 = v46;
          sub_252D4AB5C(v44, v46, type metadata accessor for DisambiguationOption);
          v38 = *v36 == *v37 && v36[1] == v37[1];
          v39 = v38 ? 0 : sub_252E37DB4();
          a3 = v33 + v34;
          sub_252D4A958(v46, type metadata accessor for DisambiguationOption);
          sub_252D4A958(v45, type metadata accessor for DisambiguationOption);
          if (v39)
          {
            break;
          }

          v29 = v31 + v34;
          if (v33 < v31 || a3 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 += v34;
          if (v35 <= v48)
          {
            v44 = v32;
            goto LABEL_68;
          }
        }

        if (v33 < v32 || a3 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          v29 = v42;
        }

        else
        {
          v29 = v42;
          if (v33 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v43;
      }

      while (v31 > v48);
    }

LABEL_68:
    v51 = v44;
    v49 = v29;
  }

  else
  {
    v21 = v20 * v18;
    if (v48 < a1 || a1 + v21 <= v48)
    {
      swift_arrayInitWithTakeFrontToBack();
      v22 = v44;
    }

    else
    {
      v22 = v44;
      if (v48 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v24 = v48 + v21;
    v49 = v48 + v21;
    if (v21 >= 1 && v22 < a3)
    {
      while (1)
      {
        sub_252D4AB5C(v22, v16, type metadata accessor for DisambiguationOption);
        sub_252D4AB5C(v48, v13, type metadata accessor for DisambiguationOption);
        if (*v16 == *v13 && v16[1] == v13[1])
        {
          break;
        }

        v27 = sub_252E37DB4();
        sub_252D4A958(v13, type metadata accessor for DisambiguationOption);
        sub_252D4A958(v16, type metadata accessor for DisambiguationOption);
        if ((v27 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v22 || a1 >= v22 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v22 += v18;
LABEL_38:
        a1 += v18;
        v51 = a1;
        if (v48 >= v24 || v22 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_252D4A958(v13, type metadata accessor for DisambiguationOption);
      sub_252D4A958(v16, type metadata accessor for DisambiguationOption);
LABEL_30:
      v28 = v48 + v18;
      if (a1 < v48 || a1 >= v28)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v48)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v50 = v28;
      v48 = v28;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_252D7BA0C(&v51, &v50, &v49);
  return 1;
}

unint64_t sub_252D4C5DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252D4C628(uint64_t a1, uint64_t a2)
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

unint64_t sub_252D4C678(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v26)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = i;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v28);
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_252D9822C(&v36, &v35);
      if (v2)
      {
        goto LABEL_40;
      }

      v8 = v35;
      v6 = (v35 >> 62);
      if (v35 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v5 >> 62;
      if (v5 >> 62)
      {
        v25 = sub_252E378C4();
        v12 = v25 + v9;
        if (__OFADD__(v25, v9))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v13 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_252E378C4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v6)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16)
      {
        if (((v15 >> 1) - v14) < v9)
        {
          goto LABEL_44;
        }

        v18 = v13 + 8 * v14 + 32;
        v29 = v13;
        if (v6)
        {
          if (v16 < 1)
          {
            goto LABEL_46;
          }

          sub_2529E6488(&qword_27F541868, &qword_27F541840, &qword_252E40AD8, MEMORY[0x277D83988]);
          for (j = 0; j != v16; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
            v20 = sub_2529FBE00(v34, j, v8);
            v22 = *v21;

            (v20)(v34, 0);
            *(v18 + 8 * j) = v22;
          }
        }

        else
        {
          type metadata accessor for Accessory(0);
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v9 >= 1)
        {
          v23 = *(v29 + 16);
          v7 = __OFADD__(v23, v9);
          v24 = v23 + v9;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v29 + 16) = v24;
        }
      }

      else
      {

        if (v9 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v30)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_252E378C4();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252D4C9E8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject characteristics];
      sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&qword_27F545A08, &qword_27F545A00, &unk_252E5DBB0, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A00, &unk_252E5DBB0);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

id static Accessory.isMatterAccessory(_:)(void *a1)
{
  result = [a1 matterNodeID];
  if (result)
  {

    v3 = [a1 matterNodeID];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 unsignedLongLongValue];

      if (!v5)
      {
        return 0;
      }
    }

    v6 = sub_252E37434();
    v8 = v7;
    if (v6 == sub_252E36F34() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_252E37DB4();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    return ([a1 isBridged] ^ 1);
  }

  return result;
}

uint64_t *sub_252D4CE7C(void *a1)
{
  v55 = sub_252E32E84();
  v51 = *(v55 - 8);
  v3 = MEMORY[0x28223BE20](v55);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v56 = &v48 - v6;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) = a1;
  v48 = a1;
  v7 = [v48 services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v8 = sub_252E37264();

  v57 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v10 = MEMORY[0x277D84F90];
    v49 = v5;
    v50 = v1;
    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v5, v8);
        }

        else
        {
          if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v11 = *(v8 + 8 * v5 + 32);
        }

        v12 = v11;
        v13 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ([v11 isUserInteractive])
        {
          v1 = &v57;
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v5;
        if (v13 == i)
        {
          v14 = v57;
          v5 = v49;
          v1 = v50;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_16:

    v57 = v10;
    if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
    {
      v15 = *(v14 + 16);
      if (!v15)
      {
        break;
      }

      goto LABEL_19;
    }

    v15 = sub_252E378C4();
    if (!v15)
    {
      break;
    }

LABEL_19:
    v5 = 0;
    v53 = v14;
    v54 = v14 & 0xC000000000000001;
    v52 = (v51 + 32);
    while (1)
    {
      if (v54)
      {
        v16 = MEMORY[0x2530ADF00](v5, v14);
      }

      else
      {
        if (v5 >= *(v14 + 16))
        {
          goto LABEL_39;
        }

        v16 = *(v14 + 8 * v5 + 32);
      }

      v17 = v16;
      v18 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for Service(0);
      v19 = swift_allocObject();
      *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v17;
      v20 = v17;
      v21 = [v20 uniqueIdentifier];
      sub_252E32E64();

      v22 = [v20 name];
      v23 = sub_252E36F34();
      v25 = v24;

      v26 = [v20 assistantIdentifier];
      if (v26)
      {
        v8 = v26;
        v27 = sub_252E36F34();
        v29 = v28;
      }

      else
      {

        v27 = 0;
        v29 = 0;
      }

      v30 = (*v52)(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v56, v55);
      v31 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v31 = v23;
      v31[1] = v25;
      *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v32 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v32 = v27;
      v32[1] = v29;
      v1 = &v57;
      MEMORY[0x2530AD700](v30);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v5;
      v14 = v53;
      if (v18 == v15)
      {
        v10 = v57;
        v5 = v49;
        v1 = v50;
        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_32:

  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services) = v10;
  v33 = v48;
  v34 = [v48 uniqueIdentifier];
  sub_252E32E64();

  v35 = [v33 name];
  v36 = sub_252E36F34();
  v38 = v37;

  v39 = [v33 assistantIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = v33;
    v42 = sub_252E36F34();
    v44 = v43;
  }

  else
  {

    v42 = 0;
    v44 = 0;
  }

  (*(v51 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5, v55);
  v45 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v45 = v36;
  v45[1] = v38;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
  v46 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v46 = v42;
  v46[1] = v44;
  return v1;
}

void *sub_252D4D438(void *a1)
{
  v3 = sub_252E32E84();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = a1[3];
  v54 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v54;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Accessory(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v55[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v56) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v54;
  v17 = v5;
  v18 = v55[0];
  LOBYTE(v55[0]) = 2;
  v50 = sub_252E37C04();
  v51 = v18;
  v52 = v19;
  LOBYTE(v55[0]) = 3;
  v20 = sub_252E37BA4();
  v44 = v12;
  v46 = v9;
  v48 = v21;
  v49 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D9D50();

  MEMORY[0x28223BE20](v26);
  v28 = v50;
  v27 = v51;
  *(&v42 - 6) = v17;
  *(&v42 - 5) = v28;
  *(&v42 - 4) = v52;
  *(&v42 - 3) = v22;
  v43 = v22;
  *(&v42 - 2) = v48;
  *(&v42 - 1) = v27;
  v29 = sub_2529A3DE8(sub_252CDD62C, (&v42 - 8), v25);
  v45 = 0;

  v47 = v29;
  if (!v29)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    v37 = __swift_project_value_buffer(v36, qword_27F544CB8);
    sub_252CC4050(0xD000000000000026, 0x8000000252E97840, 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 55);
    strcpy(v55, "identifier: ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v38 = sub_252E37D94();
    MEMORY[0x2530AD570](v38);

    sub_252CC4050(v55[0], v55[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 56);

    v55[0] = 0x203A656D616ELL;
    v55[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v50, v52);

    sub_252CC4050(v55[0], v55[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 57);

    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_252E379F4();

    v55[0] = 0xD000000000000015;
    v55[1] = 0x8000000252E6AA20;
    v56 = v43;
    v57 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v39 = sub_252E36F94();
    MEMORY[0x2530AD570](v39);

    sub_252CC4050(v55[0], v55[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 58);

    strcpy(v55, "entityType: ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    v56 = v51;
    v40 = sub_252E36F94();
    MEMORY[0x2530AD570](v40);

    v11 = v37;
    sub_252CC4050(v55[0], v55[1], 0xD00000000000006FLL, 0x8000000252E977A0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 59);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v44 + 8))(v46, v6);
    (*(v53 + 8))(v17, v49);
    v13 = v16;
    goto LABEL_4;
  }

  v30 = v47;

  v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v11 = v58;
  *(v58 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) = v31;
  v32 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v33 = v31;

  *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services) = v32;
  sub_252929E74(v16, v55);
  v34 = v45;
  v35 = Entity.init(from:)(v55);
  if (v34)
  {
    (*(v12 + 8))(v46, v6);

    (*(v53 + 8))(v17, v49);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v35;
    (*(v12 + 8))(v46, v6);

    v41 = *(v53 + 8);

    v41(v17, v49);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

uint64_t sub_252D4DCA4()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) category];
  v3 = [v2 categoryType];

  v4 = sub_252E36F34();
  v6 = v5;

  if (qword_27F53F8C0 != -1)
  {
    swift_once();
  }

  v7 = off_27F546238;
  if (*(off_27F546238 + 2) && (v8 = sub_252A44A10(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(v7[7] + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_9;
    }

LABEL_16:
    v13 = 0;
    v14 = 1;
    if (v10 == 37)
    {
LABEL_18:
      if (!v14)
      {
LABEL_21:
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v15 = sub_252E36AD4();
        __swift_project_value_buffer(v15, qword_27F544CB8);
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E976F0);
        v16 = HomeDeviceType.description.getter(v10);
        MEMORY[0x2530AD570](v16);

        MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E97730);
        v17 = HomeDeviceType.description.getter(v13);
        MEMORY[0x2530AD570](v17);

        MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E97770);
        MEMORY[0x2530AD570](*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E977A0);

        return v13;
      }

      if (sub_252D4DFC8())
      {
        v13 = sub_252CD941C();

        goto LABEL_21;
      }

      return v10;
    }

LABEL_17:
    if (v10)
    {
      return v10;
    }

    goto LABEL_18;
  }

  if (sub_252E378C4() != 1)
  {
    goto LABEL_16;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v12);
LABEL_12:
    v13 = sub_252CD941C();

    v14 = 0;
    if (v10 == 37)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D4DFC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  if (v1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    while ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      if ([*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) isPrimaryService])
      {
        return v4;
      }

      ++v3;
      if (v5 == i)
      {
        return 0;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

uint64_t sub_252D4E0D0()
{
  v71 = sub_252E32E84();
  v1 = *(v71 - 8);
  v2 = MEMORY[0x28223BE20](v71);
  v70 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v61 - v4;
  v62 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v6 = [v62 services];
  v61[1] = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v7 = sub_252E37264();

  if (v7 >> 62)
  {
    goto LABEL_25;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v8; i = v1)
  {
    v9 = 0;
    v68 = v7 & 0xFFFFFFFFFFFFFF8;
    v69 = v7 & 0xC000000000000001;
    v64 = (v1 + 8);
    v65 = (v1 + 32);
    v10 = MEMORY[0x277D84F90];
    v66 = v8;
    v67 = v7;
    while (1)
    {
      if (v69)
      {
        v11 = MEMORY[0x2530ADF00](v9, v7);
      }

      else
      {
        if (v9 >= *(v68 + 16))
        {
          goto LABEL_24;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v1 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      type metadata accessor for Service(0);
      v13 = swift_allocObject();
      v14 = v12;
      v15 = [v14 uniqueIdentifier];
      sub_252E32E64();

      v16 = [v14 assistantIdentifier];
      if (v16)
      {
        sub_252E36F34();
      }

      v17 = v5;
      (*v65)(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5, v71);
      v18 = [v14 serviceType];
      v19 = sub_252E36F34();
      v21 = v20;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v22 = off_27F546230;
      if (*(off_27F546230 + 2) && (v23 = sub_252A44A10(v19, v21), (v24 & 1) != 0))
      {
        v25 = *(v22[7] + 8 * v23);
      }

      else
      {
        v25 = 0;
      }

      swift_setDeallocating();
      (*v64)(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v71);

      swift_deallocClassInstance();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2529F7B8C(0, *(v10 + 2) + 1, 1, v10);
      }

      v26 = v66;
      v28 = *(v10 + 2);
      v27 = *(v10 + 3);
      if (v28 >= v27 >> 1)
      {
        v10 = sub_2529F7B8C((v27 > 1), v28 + 1, 1, v10);
      }

      *(v10 + 2) = v28 + 1;
      *&v10[8 * v28 + 32] = v25;
      ++v9;
      v5 = v17;
      v7 = v67;
      if (v1 == v26)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v8 = sub_252E378C4();
  }

  v10 = MEMORY[0x277D84F90];
LABEL_27:

  v65 = sub_252C759A0(v10);

  v29 = [v62 services];
  v30 = sub_252E37264();

  if (!(v30 >> 62))
  {
    v69 = v30 & 0xFFFFFFFFFFFFFF8;
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = i;
    if (v31)
    {
      goto LABEL_29;
    }

LABEL_62:
    v66 = MEMORY[0x277D84F90];
    goto LABEL_63;
  }

LABEL_61:
  v69 = v30 & 0xFFFFFFFFFFFFFF8;
  v31 = sub_252E378C4();
  v32 = i;
  if (!v31)
  {
    goto LABEL_62;
  }

LABEL_29:
  v33 = 0;
  v67 = (v32 + 32);
  v68 = v30 & 0xC000000000000001;
  v34 = (v32 + 8);
  v66 = MEMORY[0x277D84F90];
  v64 = v30;
  do
  {
    v35 = v33;
    while (1)
    {
      if (v68)
      {
        v36 = MEMORY[0x2530ADF00](v35, v30);
      }

      else
      {
        if (v35 >= *(v69 + 16))
        {
          goto LABEL_60;
        }

        v36 = *(v30 + 8 * v35 + 32);
      }

      v37 = v36;
      v33 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      type metadata accessor for Service(0);
      v38 = swift_allocObject();
      v39 = v37;
      v40 = [v39 uniqueIdentifier];
      sub_252E32E64();

      v41 = [v39 assistantIdentifier];
      if (v41)
      {
        sub_252E36F34();
      }

      (*v67)(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v70, v71);
      v42 = [v39 serviceSubtype];
      if (v42)
      {
        break;
      }

      v43 = [v39 associatedServiceType];
      if (v43)
      {
        v50 = v43;
        v51 = sub_252E36F34();
        v47 = v52;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v48 = off_27F546230;
        if (!*(off_27F546230 + 2))
        {
          goto LABEL_52;
        }

        v49 = v51;
        goto LABEL_50;
      }

      swift_setDeallocating();
      (*v34)(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v71);

      swift_deallocClassInstance();
      ++v35;
      if (v33 == v31)
      {
        goto LABEL_63;
      }
    }

    v44 = v42;
    v45 = sub_252E36F34();
    v47 = v46;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v48 = off_27F546230;
    if (!*(off_27F546230 + 2))
    {
      goto LABEL_52;
    }

    v49 = v45;
LABEL_50:
    v53 = sub_252A44A10(v49, v47);
    if (v54)
    {
      v55 = *(v48[7] + 8 * v53);
      goto LABEL_53;
    }

LABEL_52:
    v55 = 0;
LABEL_53:

    swift_setDeallocating();
    (*v34)(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v71);

    swift_deallocClassInstance();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_2529F7B8C(0, *(v66 + 2) + 1, 1, v66);
    }

    v57 = *(v66 + 2);
    v56 = *(v66 + 3);
    if (v57 >= v56 >> 1)
    {
      v66 = sub_2529F7B8C((v56 > 1), v57 + 1, 1, v66);
    }

    v58 = v66;
    *(v66 + 2) = v57 + 1;
    *&v58[8 * v57 + 32] = v55;
    v30 = v64;
  }

  while (v33 != v31);
LABEL_63:

  v59 = sub_252C759A0(v66);

  return sub_2529F2308(v59, v65);
}

uint64_t sub_252D4E984()
{
  v1 = sub_252E32E84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v27 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifiersForBridgedAccessories];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    v7 = sub_252E37264();

    if (*(v7 + 16))
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v8 = sub_252E36AD4();
      __swift_project_value_buffer(v8, qword_27F544CB8);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_252E379F4();

      v28 = 0xD000000000000021;
      v29 = 0x8000000252E97920;
      v9 = MEMORY[0x2530AD730](v7, v1);
      MEMORY[0x2530AD570](v9);

      sub_252CC3D90(v28, v29, 0xD00000000000006FLL, 0x8000000252E977A0);

      v10 = *(v7 + 16);
      if (v10)
      {
        v28 = v5;
        sub_2529AA3A0(0, v10, 0);
        v5 = v28;
        v12 = *(v2 + 16);
        v11 = v2 + 16;
        v13 = *(v11 + 64);
        v23[1] = v7;
        v14 = v7 + ((v13 + 32) & ~v13);
        v24 = *(v11 + 56);
        v25 = v12;
        v26 = v11;
        do
        {
          v15 = v27;
          v25(v27, v14, v1);
          v16 = sub_252E32E24();
          v18 = v17;
          (*(v11 - 8))(v15, v1);
          v28 = v5;
          v20 = *(v5 + 16);
          v19 = *(v5 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_2529AA3A0((v19 > 1), v20 + 1, 1);
            v5 = v28;
          }

          *(v5 + 16) = v20 + 1;
          v21 = v5 + 16 * v20;
          *(v21 + 32) = v16;
          *(v21 + 40) = v18;
          v14 += v24;
          --v10;
        }

        while (v10);
      }
    }
  }

  return v5;
}

uint64_t sub_252D4EC70(void *a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
  sub_25293F638(0, &qword_27F540170, 0x277CD1760);
  v7 = sub_252E37264();

  v17 = v3;
  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v13 = [v11 uniqueIdentifier];

        sub_252E32E64();
        v14 = sub_252E32E24();
        (*(v17 + 8))(v5, v2);
        return v14;
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_252D4EEA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E3C290;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v3 = [v2 name];
  v4 = sub_252E36F34();
  v6 = v5;

  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  v25 = v1;
  v7 = [v2 services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v26 = v8 & 0xC000000000000001;
    v11 = v8 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26)
      {
        v13 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_16;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v16 = v8;
      v17 = [v13 name];
      v18 = sub_252E36F34();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2529F7A80(0, *(v12 + 2) + 1, 1, v12);
      }

      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_2529F7A80((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 2) = v22 + 1;
      v23 = &v12[16 * v22];
      *(v23 + 4) = v18;
      *(v23 + 5) = v20;
      ++v10;
      v8 = v16;
      if (v15 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_19:

  sub_25297A744(v12);
  return v25;
}

char *sub_252D4F104()
{
  v1 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  if ((*(*v0 + 256))() == 41)
  {
    v1 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_2529F7A6C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 27;
    v28 = v1;
  }

  if (sub_252D51FE0())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2529F7A6C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_2529F7A6C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 66;
    v28 = v1;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v7 = sub_252E37264();

  v8 = sub_252D4C9E8(v7);

  if (v8 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 characteristicType];
      v16 = sub_252E36F34();
      v18 = v17;

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v19 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v20 = sub_252A44A10(v16, v18);
        if (v21)
        {
          goto LABEL_30;
        }
      }

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v19 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v20 = sub_252A44A10(v16, v18);
        if (v22)
        {
          goto LABEL_30;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v19 = off_27F546240;
      if (*(off_27F546240 + 2) && (v20 = sub_252A44A10(v16, v18), (v23 & 1) != 0))
      {
LABEL_30:
        v24 = *(v19[7] + 8 * v20);
      }

      else
      {
        v24 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2529F7A6C(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      if (v26 >= v25 >> 1)
      {
        v11 = sub_2529F7A6C((v25 > 1), v26 + 1, 1, v11);
      }

      *(v11 + 2) = v26 + 1;
      *&v11[8 * v26 + 32] = v24;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_43:

  sub_25297A864(v11);
  return v28;
}

char *sub_252D4F520()
{
  if ((*(*v0 + 256))() == 41)
  {
    return &unk_2864A1BB0;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v3 = sub_252E37264();

  v4 = sub_252D4C9E8(v3);

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v1 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 characteristicType];
      v11 = sub_252E36F34();
      v13 = v12;

      if (qword_27F53F8E0 != -1)
      {
        swift_once();
      }

      v14 = off_27F546258;
      if (*(off_27F546258 + 2) && (v15 = sub_252A44A10(v11, v13), (v16 & 1) != 0))
      {
        v17 = *(v14[7] + 8 * v15);
      }

      else
      {
        v17 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_2529F7A6C(0, *(v1 + 2) + 1, 1, v1);
      }

      v19 = *(v1 + 2);
      v18 = *(v1 + 3);
      if (v19 >= v18 >> 1)
      {
        v1 = sub_2529F7A6C((v18 > 1), v19 + 1, 1, v1);
      }

      *(v1 + 2) = v19 + 1;
      *&v1[8 * v19 + 32] = v17;
      ++v6;
      if (v9 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_27:

  return v1;
}

char *sub_252D4F7B8()
{
  v1 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  if ((*(*v0 + 256))() == 41)
  {
    v1 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_2529F7A6C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    *&v1[8 * v3 + 32] = 27;
    v33 = v1;
  }

  if (sub_252D51FE0())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2529F7A6C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_2529F7A6C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    *&v1[8 * v5 + 32] = 66;
    v33 = v1;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) services];
  sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
  v7 = sub_252E37264();

  v8 = sub_252D4C9E8(v7);

  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v30 = v8 & 0xFFFFFFFFFFFFFF8;
    v31 = v8 & 0xC000000000000001;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31)
      {
        v12 = MEMORY[0x2530ADF00](v10, v8);
      }

      else
      {
        if (v10 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 characteristicType];
      v16 = sub_252E36F34();
      v18 = v17;

      if (qword_27F53F8E0 != -1)
      {
        v19 = swift_once();
      }

      v20 = off_27F546258;
      if (*(off_27F546258 + 2))
      {
        v19 = sub_252A44A10(v16, v18);
        if (v21)
        {
          goto LABEL_33;
        }
      }

      if (qword_27F53F8A8 != -1)
      {
        v19 = swift_once();
      }

      v32[0] = v16;
      v32[1] = v18;
      MEMORY[0x28223BE20](v19);
      v29[2] = v32;
      if (sub_2529ED970(sub_25296A69C, v29, v22))
      {
        goto LABEL_34;
      }

      if (qword_27F53F8D0 != -1)
      {
        swift_once();
      }

      v20 = off_27F546248;
      if (*(off_27F546248 + 2))
      {
        v19 = sub_252A44A10(v16, v18);
        if (v23)
        {
          goto LABEL_33;
        }
      }

      if (qword_27F53F8C8 != -1)
      {
        swift_once();
      }

      v20 = off_27F546240;
      if (*(off_27F546240 + 2) && (v19 = sub_252A44A10(v16, v18), (v24 & 1) != 0))
      {
LABEL_33:
        v25 = *(v20[7] + 8 * v19);
      }

      else
      {
LABEL_34:
        v25 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2529F7A6C(0, *(v11 + 2) + 1, 1, v11);
      }

      v27 = *(v11 + 2);
      v26 = *(v11 + 3);
      if (v27 >= v26 >> 1)
      {
        v11 = sub_2529F7A6C((v26 > 1), v27 + 1, 1, v11);
      }

      *(v11 + 2) = v27 + 1;
      *&v11[8 * v27 + 32] = v25;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_46:

  sub_25297A864(v11);
  return v33;
}

BOOL sub_252D4FC60(uint64_t a1)
{
  v3 = (*v1 + 256);
  v4 = *v3;
  if ((*v3)() == a1)
  {
    return 1;
  }

  (*(*v1 + 272))();
  v5 = sub_252DB4F4C();

  if (v5)
  {
    return 1;
  }

  v7 = (v4)(v6);
  if (v7 == 38)
  {
    v8 = &unk_2864A0E78;
  }

  else
  {
    if (v7 != 41)
    {
      goto LABEL_8;
    }

    v8 = &unk_2864A0EA0;
  }

  sub_2529FC004(v8);
LABEL_8:
  v9 = sub_252DB4F4C();

  if (v9)
  {
    return 1;
  }

  return sub_252D4FE78(a1);
}

uint64_t sub_252D4FD9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a1 && *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a2;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_252D4EEA8();
    v10[0] = a1;
    v10[1] = a2;
    MEMORY[0x28223BE20](v7);
    v9[2] = v10;
    v6 = sub_2529ED970(sub_25296A724, v9, v7);
  }

  return v6 & 1;
}

BOOL sub_252D4FE78(uint64_t a1)
{
  if (a1 != 42)
  {
    return 0;
  }

  v2 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
  sub_25293F638(0, &qword_27F540170, 0x277CD1760);
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = sub_252E378C4();
  if (!v4)
  {
LABEL_20:

    return 0;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_20;
    }
  }

  v10 = v9;

  v11 = [v10 userSettings];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v11 supportedFeatures];

  return (v13 & 2) != 0;
}

void sub_252D50010(uint64_t a1)
{
  v2 = v1;
  v56 = sub_252E32E84();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_252E32E24();
  v60 = v7;
  v58 = &v59;
  v8 = sub_2529ED970(sub_25296A724, v57, a1);

  if ((v8 & 1) == 0)
  {
    v9 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v9)
    {
      v10 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v11 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    }

    else
    {
      v11 = 0xE400000000000000;
      v10 = 1701736302;
    }

    v59 = v10;
    v60 = v11;
    MEMORY[0x28223BE20](v9);
    *(&v47 - 2) = &v59;

    v12 = sub_2529ED970(sub_25296A724, (&v47 - 4), a1);

    if ((v12 & 1) == 0)
    {
      v13 = *(a1 + 16);
      if (v13)
      {
        v51 = v2;
        v14 = 0;
        v15 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
        v16 = a1 + 32;
        v54 = (v4 + 8);
        v17 = &off_279711000;
        v48 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
        v49 = v13;
        v47 = a1 + 32;
        while (2)
        {
          v18 = (v16 + 16 * v14);
          v19 = *v18;
          v20 = *(v51 + v15);
          v55 = v18[1];

          v21 = v17[280];
          v53 = v20;
          v22 = [v20 v21];
          v52 = sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
          v23 = sub_252E37264();

          if (v23 >> 62)
          {
            v24 = sub_252E378C4();
          }

          else
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v25 = 0;
          v50 = v14 + 1;
          while (v24 != v25)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x2530ADF00](v25, v23);
            }

            else
            {
              if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_47;
              }

              v27 = *(v23 + 8 * v25 + 32);
            }

            v28 = v27;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              return;
            }

            v29 = [v27 uniqueIdentifier];
            sub_252E32E64();

            v30 = sub_252E32E24();
            v32 = v31;
            (*v54)(v6, v56);
            if (v30 == v19 && v32 == v55)
            {

              return;
            }

            v26 = sub_252E37DB4();

            ++v25;
            if (v26)
            {
LABEL_43:

              return;
            }
          }

          v33 = [v53 services];
          v34 = sub_252E37264();

          if (v34 >> 62)
          {
            v35 = sub_252E378C4();
            if (v35)
            {
LABEL_23:
              v36 = 0;
              v52 = v34 & 0xFFFFFFFFFFFFFF8;
              v53 = (v34 & 0xC000000000000001);
              do
              {
                if (v53)
                {
                  v37 = MEMORY[0x2530ADF00](v36, v34);
                }

                else
                {
                  if (v36 >= *(v52 + 16))
                  {
                    goto LABEL_49;
                  }

                  v37 = *(v34 + 8 * v36 + 32);
                }

                v38 = v37;
                v39 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
                  goto LABEL_48;
                }

                v40 = [v37 assistantIdentifier];
                if (v40)
                {
                  v41 = v40;
                  v42 = sub_252E36F34();
                  v44 = v43;

                  if (v42 == v19 && v44 == v55)
                  {

                    return;
                  }

                  v46 = sub_252E37DB4();

                  if (v46)
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                }

                ++v36;
              }

              while (v39 != v35);
            }
          }

          else
          {
            v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v35)
            {
              goto LABEL_23;
            }
          }

          v14 = v50;
          v16 = v47;
          v15 = v48;
          v17 = &off_279711000;
          if (v50 != v49)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

uint64_t sub_252D50560(void *a1)
{
  v2 = [a1 taskType];
  if (v2 > 6)
  {
    goto LABEL_10;
  }

  if (((1 << v2) & 0x4E) != 0)
  {
    v3 = [a1 attribute];

    return sub_252D50868(v3);
  }

  if (((1 << v2) & 0x30) != 0)
  {
    v5 = [a1 attribute];

    return sub_252D50758(v5);
  }

  else
  {
LABEL_10:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544CB8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E978F0);
    [a1 taskType];
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E977A0, 0x7374726F70707573, 0xEF293A6B73617428, 268);

    return 0;
  }
}

uint64_t sub_252D50758(uint64_t a1)
{
  v3 = (*v1 + 336);
  v4 = *v3;
  v5 = (*v3)();
  v6 = *(v5 + 16);
  v7 = 32;
  if (a1 == 5)
  {
    while (v6)
    {
      v8 = *(v5 + v7);
      v7 += 8;
      --v6;
      if (v8 == 3)
      {

        v10 = (v4)(v9);
        v11 = *(v10 + 16);
        v12 = 32;
        while (v11)
        {
          v13 = *(v10 + v12);
          v12 += 8;
          --v11;
          if (v13 == 4)
          {

            v15 = (v4)(v14);
            v16 = *(v15 + 16);
            v17 = 32;
            do
            {
              v18 = v16-- != 0;
              v19 = v18;
              if (!v18)
              {
                break;
              }

              v20 = *(v15 + v17);
              v17 += 8;
            }

            while (v20 != 2);
            goto LABEL_23;
          }
        }

        break;
      }
    }

    v19 = 0;
  }

  else
  {
    do
    {
      v21 = v6-- != 0;
      v19 = v21;
      if (!v21)
      {
        break;
      }

      v22 = *(v5 + v7);
      v7 += 8;
    }

    while (v22 != a1);
  }

LABEL_23:

  return v19;
}

uint64_t sub_252D50868(uint64_t a1)
{
  v3 = (*v1 + 352);
  v4 = *v3;
  v5 = (*v3)();
  v6 = *(v5 + 16);
  v7 = 32;
  if (a1 == 5)
  {
    while (v6)
    {
      v8 = *(v5 + v7);
      v7 += 8;
      --v6;
      if (v8 == 3)
      {

        v10 = (v4)(v9);
        v11 = *(v10 + 16);
        v12 = 32;
        while (v11)
        {
          v13 = *(v10 + v12);
          v12 += 8;
          --v11;
          if (v13 == 4)
          {

            v15 = (v4)(v14);
            v16 = *(v15 + 16);
            v17 = 32;
            do
            {
              v18 = v16-- != 0;
              v19 = v18;
              if (!v18)
              {
                break;
              }

              v20 = *(v15 + v17);
              v17 += 8;
            }

            while (v20 != 2);
            goto LABEL_23;
          }
        }

        break;
      }
    }

    v19 = 0;
  }

  else
  {
    do
    {
      v21 = v6-- != 0;
      v19 = v21;
      if (!v21)
      {
        break;
      }

      v22 = *(v5 + v7);
      v7 += 8;
    }

    while (v22 != a1);
  }

LABEL_23:

  return v19;
}

uint64_t sub_252D50978(void *a1)
{
  v2 = a1;
  v3 = [a1 groupName];
  if (v3)
  {
    v34 = v2;
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;

    v35 = v1;
    v8 = sub_252D521EC();
    v9 = v8;
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
LABEL_28:
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (1)
    {
      if (v11 == v12)
      {
        goto LABEL_18;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v12, v9);
        if (__OFADD__(v12, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          if (qword_27F53F4C8 != -1)
          {
            swift_once();
          }

          v16 = sub_252E36AD4();
          __swift_project_value_buffer(v16, qword_27F544D00);
          v36 = 0;
          v37 = 0xE000000000000000;
          sub_252E379F4();
          v18 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v17 = *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          v36 = v18;
          v37 = v17;
          MEMORY[0x2530AD570](0x70756F7267207327, 0xEC0000005B203A73);
          v19 = type metadata accessor for Group(0);
          v20 = MEMORY[0x2530AD730](v9, v19);
          v22 = v21;

          MEMORY[0x2530AD570](v20, v22);

          MEMORY[0x2530AD570](0x746F6E206F64205DLL, 0xEF20686374616D20);
          MEMORY[0x2530AD570](v5, v7);

          sub_252CC3D90(v36, v37, 0xD00000000000006FLL, 0x8000000252E977A0);

LABEL_25:
          v31 = 0;
          return v31 & 1;
        }
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v13 = *(v9 + 8 * v12 + 32);

        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }
      }

      if (*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v5 && *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v7)
      {

        goto LABEL_22;
      }

      v15 = sub_252E37DB4();

      ++v12;
      if (v15)
      {

LABEL_22:
        v2 = v34;
        v1 = v35;
        break;
      }
    }
  }

  v23 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = v23;
  type metadata accessor for Room(0);
  swift_allocObject();
  v25 = v24;
  v26 = sub_2529A1E08(v25);
  v27 = type metadata accessor for HomeStore(0);
  v28 = static HomeStore.shared.getter(v27);
  v29 = sub_2529F2818(v2);

  v36 = v26;
  MEMORY[0x28223BE20](v30);
  v33[2] = &v36;
  v31 = sub_252A00B58(sub_2529509E4, v33, v29);

  return v31 & 1;
}

uint64_t sub_252D50D28(void *a1)
{
  v2 = v1;
  if (![a1 deviceType])
  {
    goto LABEL_11;
  }

  v4 = [a1 deviceType];
  v5 = (*v1 + 256);
  v6 = *v5;
  if ((*v5)() == v4)
  {
    goto LABEL_11;
  }

  (*(*v1 + 272))();
  v7 = sub_252DB4F4C();

  if (v7)
  {
    goto LABEL_11;
  }

  v9 = (v6)(v8);
  if (v9 == 38)
  {
    v10 = &unk_2864A0E78;
    goto LABEL_8;
  }

  if (v9 == 41)
  {
    v10 = &unk_2864A0EA0;
LABEL_8:
    sub_2529FC004(v10);
  }

  v11 = sub_252DB4F4C();

  if ((v11 & 1) == 0 && !sub_252D4FE78(v4))
  {
    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544D00);
    sub_252E379F4();
    v32 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E97870);
    v33 = HomeDeviceType.description.getter([a1 deviceType]);
    MEMORY[0x2530AD570](v33);

    sub_252CC3D90(v32, v31, 0xD00000000000006FLL, 0x8000000252E977A0);
    goto LABEL_40;
  }

LABEL_11:
  v12 = [a1 outerDeviceName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_252E36F34();
    v16 = v15;

    v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v18 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v19 = v17 == v14 && v18 == v16;
    if (!v19 && (sub_252E37DB4() & 1) == 0)
    {
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544CE8);
      sub_252E379F4();

      MEMORY[0x2530AD570](0x20656D616E207327, 0xEF20746F6E207369);
      MEMORY[0x2530AD570](v14, v16);

      sub_252CC3D90(v17, v18, 0xD00000000000006FLL, 0x8000000252E977A0);
      goto LABEL_40;
    }
  }

  if ([a1 outerDeviceType])
  {
    v20 = [a1 outerDeviceType];
    v21 = (*v2 + 256);
    v22 = *v21;
    if ((*v21)() != v20)
    {
      (*(*v2 + 272))();
      v23 = sub_252DB4F4C();

      if ((v23 & 1) == 0)
      {
        v25 = (v22)(v24);
        if (v25 == 38)
        {
          v26 = &unk_2864A0E78;
        }

        else
        {
          if (v25 != 41)
          {
            goto LABEL_29;
          }

          v26 = &unk_2864A0EA0;
        }

        sub_2529FC004(v26);
LABEL_29:
        v28 = sub_252DB4F4C();

        if ((v28 & 1) != 0 || sub_252D4FE78(v20))
        {
          goto LABEL_31;
        }

        if (qword_27F53F4C8 != -1)
        {
          swift_once();
        }

        v34 = sub_252E36AD4();
        __swift_project_value_buffer(v34, qword_27F544D00);
        sub_252E379F4();
        MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
        MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E97870);
        [a1 outerDeviceType];
        sub_252E37AE4();
        sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006FLL, 0x8000000252E977A0);
LABEL_40:

        return 0;
      }
    }
  }

LABEL_31:

  return sub_252967EAC(a1);
}

uint64_t sub_252D51310(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v8 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_16:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](i, v3);
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_13:
            __break(1u);
            return v8;
          }
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_13;
          }
        }

        if (sub_252967B6C(a1))
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        if (v6 == v4)
        {
          return v8;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D51460(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v30 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v27 = v2;
      v28 = v2 & 0xC000000000000001;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        while (1)
        {
          if (v28)
          {
            MEMORY[0x2530ADF00](v4, v27);
            v6 = __OFADD__(v4++, 1);
            if (v6)
            {
LABEL_31:
              __break(1u);
              return v30;
            }
          }

          else
          {
            if (v4 >= *(v5 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            v6 = __OFADD__(v4++, 1);
            if (v6)
            {
              goto LABEL_31;
            }
          }

          v7 = *(a1 + 16);
          if (v7)
          {
            break;
          }

LABEL_27:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          if (v4 == v3)
          {
            return v30;
          }
        }

        v2 = 0;
        while (2)
        {
          v8 = *(a1 + 32 + 8 * v2);
          v9 = sub_252CD95D8();
          v10 = *(v9 + 16);
          v11 = 32;
          if (v8 != 5)
          {
            do
            {
              if (!v10)
              {

                v22 = sub_252CD995C();
                v23 = *(v22 + 16);
                v24 = 32;
                while (v23)
                {
                  v25 = *(v22 + v24);
                  v24 += 8;
                  --v23;
                  if (v25 == v8)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_4;
              }

              v21 = *(v9 + v11);
              v11 += 8;
              --v10;
            }

            while (v21 != v8);
LABEL_26:
            ++v2;

            if (v2 != v7)
            {
              continue;
            }

            goto LABEL_27;
          }

          break;
        }

        while (v10)
        {
          v12 = *(v9 + v11);
          v11 += 8;
          --v10;
          if (v12 == 3)
          {

            v13 = sub_252CD95D8();
            v14 = *(v13 + 16);
            v15 = 32;
            while (v14)
            {
              v16 = *(v13 + v15);
              v15 += 8;
              --v14;
              if (v16 == 4)
              {

                v17 = sub_252CD95D8();
                v18 = *(v17 + 16);
                v19 = 32;
                while (v18)
                {
                  v20 = *(v17 + v19);
                  v19 += 8;
                  --v18;
                  if (v20 == 2)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_4;
              }
            }

            break;
          }
        }

LABEL_4:

        if (v4 == v3)
        {
          return v30;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D516B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [a2 userTask];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 attribute];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C130;
    *(inited + 32) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_252E3C290;
    *(v14 + 32) = v12;
    v15 = a1;
    v16 = sub_252D51310(inited);

    v17 = sub_252C75958(v16);

    v18 = sub_252D51460(v14);
    swift_setDeallocating();
    v19 = sub_252C75958(v18);

    v20 = sub_2529F9A94(v19, v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_252E3C130;
    *(v21 + 32) = a1;
    v22 = a1;
    v23 = sub_252D51310(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    v20 = sub_252C75958(v23);
  }

  v24 = v20;

  if ((v24 & 0xC000000000000001) != 0)
  {

    v25 = sub_252E378C4();

    if (v25 == 1)
    {
LABEL_6:
      v26 = sub_252DA0BE0(v24);

      if (qword_27F53F4C8 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v6, qword_27F544D00);
      (*(v7 + 16))(v9, v27, v6);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E978C0);
      if (v26)
      {
        v29 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v28 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v38 = v29;
      v39 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      sub_252E37AE4();

      MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
      MEMORY[0x2530AD570](*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
      sub_252CC3D90(v40, v41, 0xD00000000000006FLL, 0x8000000252E977A0);

      v30 = (*(v7 + 8))(v9, v6);
      goto LABEL_17;
    }
  }

  else if (*(v24 + 16) == 1)
  {
    goto LABEL_6;
  }

  v30 = sub_252D4DFC8();
  v26 = v30;
  if (v30)
  {
    if (qword_27F53F4C8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F544D00);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_252E379F4();

    v40 = 0xD000000000000027;
    v41 = 0x8000000252E97890;
    v31 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v32 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    MEMORY[0x2530AD570](v31, v32);

    MEMORY[0x2530AD570](0x20726F6620, 0xE500000000000000);
    MEMORY[0x2530AD570](*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
    sub_252CC3D90(v40, v41, 0xD00000000000006FLL, 0x8000000252E977A0);
  }

LABEL_17:
  v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v30);
  sub_252929E74((v33 + 192), &v40);

  v34 = v42;
  v35 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  (*(v35 + 8))(v26, v34, v35);

  return __swift_destroy_boxed_opaque_existential_1(&v40);
}

uint64_t sub_252D51C5C()
{
  sub_252E379F4();
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

  MEMORY[0x2530AD570](0x6976726573207B20, 0xED0000203A736563);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  v3 = type metadata accessor for Service(0);
  v4 = MEMORY[0x2530AD730](v2, v3);
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](125, 0xE100000000000000);
  return v1;
}

char *sub_252D51D3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
  if (v1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
    sub_252E36EA4();

    v11 = sub_252AD24A4(2, 8224, 0xE200000000000000);
    v13 = v12;

    sub_252E379F4();

    MEMORY[0x2530AD570](0x72657320200A7B20, 0xEF0A3A7365636976);
    MEMORY[0x2530AD570](v11, v13);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
    v14 = sub_252AD24A4(1, 8224, 0xE200000000000000);

    return v14;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v4, v1);
      }

      else
      {
      }

      v5 = sub_252CDC7C8();
      v7 = v6;

      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2529AA3A0((v8 > 1), v9 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
    }

    while (v2 != v4);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D51FE0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
  sub_25293F638(0, &qword_27F540170, 0x277CD1760);
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2530ADF00](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  v9 = [v8 settings];
  v10 = [v9 supportedFeatures];

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E97950, 0xD00000000000006FLL, 0x8000000252E977A0);
  return 1;
}

uint64_t sub_252D521EC()
{

  v1 = sub_252C75958(v0);

  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = sub_2529D9D18();

  v13 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_16:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v6, v4);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v13;
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = sub_25294F970();
        v9 = sub_252C75958(v8);

        v10 = sub_252A11A10(v1, v9);

        if (v10)
        {
        }

        else
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        ++v6;
        if (v7 == v5)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  return v11;
}