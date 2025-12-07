uint64_t sub_252D523AC()
{
  v35 = sub_252E32E84();
  v0 = *(v35 - 8);
  v1 = MEMORY[0x28223BE20](v35);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - v4;
  v6 = type metadata accessor for HomeStore(0);
  v7 = static HomeStore.shared.getter(v6);
  v8 = sub_2529D984C();

  v38 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_30;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v8;
  if (!v9)
  {
LABEL_31:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  while (1)
  {
    v10 = 0;
    v11 = 0;
    v34 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
    v29 = v8 & 0xFFFFFFFFFFFFFF8;
    v30 = v8 & 0xC000000000000001;
    v27 = v9;
    v28 = v8 + 32;
    v8 = v0 + 8;
LABEL_6:
    if (v30)
    {
      break;
    }

    if (v10 >= *(v29 + 16))
    {
      goto LABEL_29;
    }

    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v9 = sub_252E378C4();
    v26 = v8;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  v12 = MEMORY[0x2530ADF00](v10, v26);
  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (v13)
  {
    goto LABEL_28;
  }

LABEL_9:
  v33 = v12;
  v15 = [*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v16 = sub_252E37264();

  v17 = sub_252D4C678(v16);

  v31 = v11;
  v32 = v14;
  v37 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 >> 62)
  {
    v0 = sub_252E378C4();
  }

  else
  {
    v0 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  do
  {
    if (v0 == v18)
    {

      goto LABEL_5;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2530ADF00](v18, v17);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v18 >= *(v37 + 16))
      {
        goto LABEL_27;
      }

      v19 = *(v17 + 8 * v18 + 32);

      if (__OFADD__(v18, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    v20 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
    sub_252E32E64();

    v21 = [*(v36 + v34) uniqueIdentifier];
    sub_252E32E64();

    LOBYTE(v21) = sub_252E32E54();

    v22 = *v8;
    v23 = v35;
    (*v8)(v3, v35);
    v22(v5, v23);
    ++v18;
  }

  while ((v21 & 1) == 0);

  sub_252E37A94();
  v0 = *(v38 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  v11 = v31;
  v10 = v32;
  if (v32 != v27)
  {
    goto LABEL_6;
  }

  v24 = v38;
LABEL_32:

  return v24;
}

id sub_252D527F0(SEL *a1, uint64_t (*a2)(void), uint64_t (*a3)(id))
{
  result = [*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) *a1];
  if (result)
  {
    v7 = result;
    a2(0);
    swift_allocObject();
    return a3(v7);
  }

  return result;
}

uint64_t sub_252D52870()
{
}

uint64_t Accessory.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Accessory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Accessory(uint64_t a1)
{
  result = qword_27F5459F0;
  if (!qword_27F5459F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ConfirmationParameters(uint64_t a1)
{
  result = qword_27F545A10;
  if (!qword_27F545A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252D52CF8(uint64_t a1)
{
  type metadata accessor for ControlHomeIntent();
  if (v1 <= 0x3F)
  {
    sub_252BAB7B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_252D52D88(void **a1)
{
  v2 = sub_252E36AD4();
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v2, qword_27F544C58);
  v72 = "ping confirm intent";
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E97B50, 0xD000000000000088, 0x8000000252E979C0);
  v5 = *a1;
  v7 = sub_252B680FC(v6);
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 504 * v9 - 472);
    memcpy(v76, v10, sizeof(v76));
    memmove(v77, v10, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v76, v78);
  }

  else
  {

    sub_25293DEE0(v77);
  }

  memcpy(v78, v77, 0x1F8uLL);
  v11 = [v5 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();

    v14 = 0;
    v15 = sub_252DD5A58(v13);
  }

  else
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_252C758E0(v15);

  v17 = sub_252DD6238(v16);

  if (!v17)
  {
    goto LABEL_22;
  }

  v18 = type metadata accessor for HomeStore(0);
  v19 = static HomeStore.shared.getter(v18);
  v20 = sub_2529D9114();

  if (!v20)
  {
    goto LABEL_17;
  }

  if ((sub_252E32E54() & 1) == 0 || *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {

LABEL_17:

    goto LABEL_18;
  }

  if (*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {

LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v26 = sub_252E37DB4();

  if (v26)
  {
    goto LABEL_22;
  }

LABEL_18:
  v22 = static HomeStore.shared.getter(v21);
  v23 = sub_2529D8DC0();

  if (v23 >> 62)
  {
    v24 = sub_252E378C4();
    v14 = 0;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v24 > 1;
LABEL_23:
  v27 = sub_252C4BEB8();
  v28 = v27;
  v29 = *(sub_252B680FC(v27) + 74);

  if (v29 & 1) != 0 || (v31 = *(sub_252B680FC(v30) + 73), v32 = , (v31) || (v33 = *(sub_252B680FC(v32) + 129), , v33 == 1))
  {
    v34 = "as a get request.";
    v35 = 0xD000000000000032;
LABEL_27:
    v36 = v34 | 0x8000000000000000;
    v37 = v72 | 0x8000000000000000;
LABEL_28:
    sub_252CC3D90(v35, v36, 0xD000000000000088, v37);
    sub_25299F5D4(v78);
    return 0;
  }

  v39 = [v5 userTask];
  if (v39)
  {
    v40 = v39;
    if ([v39 taskType] == 4)
    {

LABEL_34:
      v34 = "\n  Will skip the confirmation.";
      v35 = 0xD000000000000031;
      goto LABEL_27;
    }

    v41 = [v40 taskType];

    if (v41 == 5)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_252C515AC();
  }

  if ((v28 & 1) == 0)
  {
    memcpy(v77, v78, 0x1F8uLL);
    if (sub_252956B94(v77) != 1)
    {
      v68 = 0;
      v42 = v77[47];
      v43 = *(v77[47] + 16);
      memcpy(v76, v78, sizeof(v76));
      sub_2529353AC(v76, v73);
      v44 = (v42 + 32);
      v69 = "resolvedLocation";
      v66 = 0x8000000252E67980;
      v67 = 0x8000000252E679B0;
      v64 = 0x8000000252E67940;
      v65 = 0x8000000252E67960;
      while (2)
      {
        if (v43)
        {
          switch(*v44)
          {
            case 0xC:

              break;
            default:
              v45 = sub_252E37DB4();

              ++v44;
              --v43;
              if ((v45 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_25299F5D4(v78);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v2, qword_27F544E08);
          v35 = 0xD00000000000005ELL;
          v36 = 0x8000000252E97C20;
          v37 = v72 | 0x8000000000000000;
          goto LABEL_28;
        }

        break;
      }

      sub_25299F5D4(v78);
      v14 = v68;
    }
  }

  if (v25)
  {
    memcpy(v77, v78, 0x1F8uLL);
    if (sub_252956B94(v77) != 1)
    {
      v68 = v14;
      v46 = v77[47];
      v47 = *(v77[47] + 16);
      memcpy(v76, v78, sizeof(v76));
      sub_2529353AC(v76, v73);
      v48 = (v46 + 32);
      v69 = 0x8000000252E679D0;
      v66 = 0x8000000252E67960;
      v67 = 0x8000000252E679B0;
      v65 = 0x8000000252E67940;
      while (2)
      {
        if (v47)
        {
          switch(*v48)
          {
            case 8:

              break;
            default:
              v50 = sub_252E37DB4();

              ++v48;
              --v47;
              if ((v50 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_25299F5D4(v78);
          LODWORD(v69) = 0;
          v49 = 0xE400000000000000;
          v68 = 1702195828;
          goto LABEL_57;
        }

        break;
      }

      sub_25299F5D4(v78);
    }

    LODWORD(v69) = 1;
    v49 = 0xE400000000000000;
    v68 = 1702195828;
  }

  else
  {
    LODWORD(v69) = 0;
    v49 = 0xE500000000000000;
    v68 = 0x65736C6166;
  }

LABEL_57:
  (*(v71 + 16))(v70, v4, v2);
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_252E379F4();
  v74 = v77[0];
  v75 = v77[1];
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
  if (v69)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v69)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v51, v52);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E97BA0);
  if (v28)
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (v28)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v53, v54);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E97BD0);
  MEMORY[0x2530AD570](v68, v49);

  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E97BF0);
  memcpy(v77, v78, 0x1F8uLL);
  if (sub_252956B94(v77) == 1)
  {
    v55 = 2;
  }

  else
  {
    v56 = v77[47];
    v57 = *(v77[47] + 16);
    memcpy(v76, v78, sizeof(v76));
    sub_2529353AC(v76, v73);
    v58 = (v56 + 32);
    v67 = 0x8000000252E679B0;
    v68 = 0x8000000252E679D0;
    v65 = 0x8000000252E67940;
    v66 = 0x8000000252E67960;
    while (2)
    {
      v60 = v57;
      if (v57-- != 0)
      {
        switch(*v58)
        {
          case 8:

            break;
          default:
            v59 = sub_252E37DB4();

            ++v58;
            if ((v59 & 1) == 0)
            {
              continue;
            }

            break;
        }
      }

      break;
    }

    v55 = v60 != 0;
    sub_25299F5D4(v78);
  }

  v76[0] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v62 = sub_252E36F94();
  MEMORY[0x2530AD570](v62);

  v63 = v70;
  sub_252CC3D90(v74, v75, 0xD000000000000088, v72 | 0x8000000000000000);

  sub_25299F5D4(v78);
  (*(v71 + 8))(v63, v2);
  return v69;
}

uint64_t sub_252D53B88(uint64_t a1)
{
  v1 = sub_252B680FC(a1);
  swift_beginAccess();
  v2 = *(v1 + 16);

  v4 = 0;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = 504 * v4 + 416;
  while (v5 != v4)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    v8 = *(v2 + v7);
    v7 += 504;
    ++v4;
    if (v8 != 22)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F9538(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_2529F9538((v9 > 1), v10 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + v10 + 32) = v8;
      goto LABEL_2;
    }
  }

  if (sub_2529A7E28(6, v6))
  {
LABEL_12:

    return 1;
  }

  v11 = sub_2529A7E28(5, v6);

  if (v11)
  {
    return 1;
  }

  v13 = sub_252B680FC(v12);
  swift_beginAccess();
  v14 = *(v13 + 16);

  v15 = 0;
  v16 = *(v14 + 16);
  v17 = MEMORY[0x277D84F90];
LABEL_16:
  v18 = 504 * v15 + 56;
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      goto LABEL_38;
    }

    v19 = *(v14 + v18);
    v18 += 504;
    ++v15;
    if (v19 != 2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F9524(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_2529F9524((v20 > 1), v21 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 16) = v21 + 1;
      *(v17 + v21 + 32) = v19 & 1;
      goto LABEL_16;
    }
  }

  v22 = *(v17 + 16);
  v23 = (v17 + 32);
  v24 = (v17 + 32);
  while (v22)
  {
    if ((*v24 & 1) == 0)
    {
LABEL_35:

      goto LABEL_12;
    }

    v25 = sub_252E37DB4();

    ++v24;
    --v22;
    if (v25)
    {
      goto LABEL_12;
    }
  }

  v26 = *(v17 + 16);
  while (v26)
  {
    if (*v23 == 1)
    {
      goto LABEL_35;
    }

    v27 = sub_252E37DB4();

    ++v23;
    --v26;
    if (v27)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_252D53EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_252BAC3A4();
  if (*(v6 + 2) && (v7 = *(v6 + 4), , v8 = sub_252BAC3B8(), *(v8 + 2)))
  {
    v9 = *(v8 + 4);

    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C58);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E97E60);
    v11 = a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
    v12 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v13 = *(v11 + 8);
    MEMORY[0x2530AD570](v12, v13);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    sub_252E37374();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E97E90);
    MEMORY[0x2530AD570](v12, v13);
    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    sub_252E37374();
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

    if (v7 <= a3)
    {
      if (v9 >= a3)
      {
        v16 = 0.0;
        v15 = 1;
      }

      else
      {
        v15 = 0;
        v16 = v9;
      }
    }

    else
    {
      v15 = 0;
      v16 = v7;
    }

    v18 = (v7 > a3) | ((v9 < a3) << 8);
    v17 = 1;
  }

  else
  {

    v16 = 0.0;
    v15 = 0;
    v17 = 0;
    v18 = 2;
  }

  *a2 = v18;
  *(a2 + 8) = v16;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v15;
  *(a2 + 40) = v17;
  return result;
}

id sub_252D5414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  v6 = *(sub_252DF8A60(a1) + 2);

  if (v6)
  {
    v7 = COERCE_DOUBLE(sub_252987D34(a1));
    if (a3 == 2)
    {
      if ((v8 & 1) == 0)
      {
        v9 = round((v7 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
        a3 = 2;
LABEL_7:
        v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v11 = sub_252E36F04();
        v12 = [v10 initWithIdentifier:0 displayString:v11];

        v13 = v12;
        [v13 setDoubleValue_];
        [v13 setUnit_];
        [v13 setType_];

        v14 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v15 = sub_252E36F04();
        v16 = [v14 initWithIdentifier:0 displayString:v15];

        v17 = v16;
        [v17 setTaskType_];
        [v17 setAttribute_];
        [v17 setValue_];

        [v5 setUserTask_];
        type metadata accessor for HomeFilter();
        v18 = sub_252E37254();
        [v5 setFilters_];
      }
    }

    else if ((v8 & 1) == 0)
    {
      v9 = v7;
      goto LABEL_7;
    }
  }

  return v5;
}

id sub_252D54368(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  v6 = a1[2];
  if (v6)
  {
    v7 = a1 + 4;
    v8 = MEMORY[0x277D84F90];
    v9 = a1[2];
    do
    {
      v10 = *v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F7D44(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_2529F7D44((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      *&v8[8 * v12 + 32] = v10;
      v7 += 2;
      --v9;
    }

    while (v9);
    v13 = a1 + 5;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v15 = *v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_2529F7D44(0, *(v14 + 2) + 1, 1, v14);
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2529F7D44((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v17 + 1;
      *&v14[8 * v17 + 32] = v15;
      v13 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
    v8 = MEMORY[0x277D84F90];
  }

  v18 = sub_252987D34(v8);
  v20 = v19;

  if (a3 == 2)
  {
    if ((v20 & 1) == 0)
    {
      v21 = sub_252987D34(v14);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        *&v24.f64[0] = v21;
        *&v24.f64[1] = v18;
        __asm { FMOV            V1.2D, #9.0 }

        v30 = vmulq_f64(v24, _Q1);
        __asm { FMOV            V1.2D, #5.0 }

        v32 = vaddq_f64(vdivq_f64(v30, _Q1), vdupq_n_s64(0x4040000000000000uLL));
        v33 = vdupq_n_s64(0x4059000000000000uLL);
        v34 = vdivq_f64(vrndaq_f64(vmulq_f64(v32, v33)), v33);
LABEL_24:
        v55 = v34;
        v38 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
        v39 = sub_252E36F04();
        v40 = [v38 initWithIdentifier:0 displayString:v39];

        v41 = v40;
        [v41 setLowerValue_];
        [v41 setUpperValue_];

        v42 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v43 = sub_252E36F04();
        v44 = [v42 initWithIdentifier:0 displayString:v43];

        v45 = v44;
        [v45 setType_];
        v46 = v41;
        [v45 setRangeValue_];

        v47 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v48 = sub_252E36F04();
        v49 = [v47 initWithIdentifier:0 displayString:v48];

        v50 = v49;
        [v50 setTaskType_];
        [v50 setAttribute_];
        [v50 setValue_];

        [v5 setUserTask_];
        v51 = [v5 userTask];
        v52 = [v51 value];

        [v52 setUnit_];
        type metadata accessor for HomeFilter();
        v53 = sub_252E37254();
        [v5 setFilters_];

        return v5;
      }

      return v5;
    }

LABEL_21:

    return v5;
  }

  if (v20)
  {
    goto LABEL_21;
  }

  v35 = sub_252987D34(v14);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    *&v34.f64[0] = v35;
    *&v34.f64[1] = v18;
    goto LABEL_24;
  }

  return v5;
}

uint64_t sub_252D547C8(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 288), &v26);

  v3 = v28;
  v4 = v29;
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v26);
  if (v5)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D30);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000047, 0x8000000252E97EE0);
    v7 = a1;
    v8 = [v7 description];
    v9 = sub_252E36F34();
    v11 = v10;

    MEMORY[0x2530AD570](v9, v11);

    sub_252CC3D90(v26, v27, 0xD000000000000088, 0x8000000252E979C0);

    type metadata accessor for SiriRemembersProvider();
    inited = swift_initStackObject();
    strcpy((inited + 16), "HomeAutomation");
    *(inited + 31) = -18;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = 0x8000000252E73EE0;
    *(inited + 48) = 0xD000000000000011;
    *(inited + 56) = 0x8000000252E73F00;
    v13 = sub_252E14D14(v7);
    if (v13)
    {
      v14 = v13;
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_252E379F4();

      v26 = 0xD000000000000020;
      v27 = 0x8000000252E7C000;
      v15 = [v14 description];
      v16 = sub_252E36F34();
      v18 = v17;

      MEMORY[0x2530AD570](v16, v18);

      sub_252CC3D90(v26, v27, 0xD000000000000088, 0x8000000252E979C0);

      *(sub_252B680FC(v19) + 88) = 1;

      v21 = sub_252B680FC(v20);

      swift_setDeallocating();

      v22 = *(v21 + 96);
      *(v21 + 96) = v7;
      v23 = v7;

      return 1;
    }

    swift_setDeallocating();
  }

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D30);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E97EC0, 0xD000000000000088, 0x8000000252E979C0);
  return 0;
}

uint64_t sub_252D54B70(id *a1)
{
  if (qword_27F53F490 != -1)
  {
    goto LABEL_101;
  }

  while (1)
  {
    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544C58);
    sub_252CC3D90(0xD000000000000035, 0x8000000252E97D00, 0xD000000000000088, 0x8000000252E979C0);
    if (sub_252D53B88(v3))
    {
      sub_252CC3D90(0xD00000000000004FLL, 0x8000000252E97E10, 0xD000000000000088, 0x8000000252E979C0);
      return 0;
    }

    v4 = *a1;
    v5 = [*a1 userTask];
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = v5;
    v7 = [v4 filters];
    if (!v7)
    {

LABEL_9:
      v13 = sub_252E36AC4();
      v14 = sub_252E374D4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_252917000, v13, v14, "Failed to retrieve list of targeted accessories from intent filters.", v15, 2u);
        MEMORY[0x2530AED00](v15, -1, -1);
      }

      return 0;
    }

    v8 = v7;
    v119 = v4;
    type metadata accessor for HomeFilter();
    v9 = sub_252E37264();

    v10 = type metadata accessor for HomeStore(0);
    v11 = static HomeStore.shared.getter(v10);
    a1 = HomeStore.services(matching:supporting:)(v9, 0);
    LOBYTE(v8) = v12;

    if (v8)
    {
      sub_252929F10(a1, 1);

      goto LABEL_9;
    }

    v116 = v9;
    v125 = MEMORY[0x277D84F90];
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = a1 >> 62 ? sub_252E378C4() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v121 = v6;
    if (!v18)
    {
      break;
    }

    v19 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2530ADF00](v19, a1);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_99;
      }

LABEL_22:
      v22 = v17;
      v23 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v24 = [*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v25 = sub_252E36F34();
      v27 = v26;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v28 = off_27F546230;
      if (*(off_27F546230 + 2) && (v29 = sub_252A44A10(v25, v27), (v30 & 1) != 0))
      {
        v31 = *(v28[7] + 8 * v29);

        if (v31 == 3)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }

      v32 = [*(v20 + v23) serviceType];
      v33 = sub_252E36F34();
      v35 = v34;

      if (!v28[2] || (v36 = sub_252A44A10(v33, v35), (v37 & 1) == 0))
      {

LABEL_34:

        goto LABEL_18;
      }

      v38 = *(v28[7] + 8 * v36);

      if (v38 != 29)
      {
        goto LABEL_34;
      }

LABEL_17:
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_18:
      ++v19;
      v17 = v22;
      if (v21 == v18)
      {
        v39 = v125;
        v6 = v121;
        goto LABEL_40;
      }
    }

    if (v19 >= *(v17 + 16))
    {
      goto LABEL_100;
    }

    v20 = a1[v19 + 4];

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_22;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
  }

  v39 = MEMORY[0x277D84F90];
LABEL_40:
  sub_252929F10(a1, 0);
  if ([v6 attribute] != 6)
  {

    v81 = sub_252E36AC4();
    v82 = sub_252E374C4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      v84 = "UserTask attribute is not temperature. Skipping TargetTemperatureCondition confirmation.";
LABEL_97:
      _os_log_impl(&dword_252917000, v81, v82, v84, v83, 2u);
      MEMORY[0x2530AED00](v83, -1, -1);
    }

LABEL_98:

    return 0;
  }

  v40 = [v6 value];
  if (!v40)
  {

    v81 = sub_252E36AC4();
    v82 = sub_252E374D4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      v84 = "Failed to retrieve the target temperature.";
      goto LABEL_97;
    }

    goto LABEL_98;
  }

  v41 = v40;
  [v40 doubleValue];
  v43 = v42;

  v125 = 0;
  v126 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570]();
  sub_252E37374();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

  result = sub_252C6E240(v119);
  v114 = result;
  if (result == 2)
  {
    v43 = round((v43 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
  {
    result = sub_252E378C4();
    v44 = result;
    if (!result)
    {
      goto LABEL_104;
    }

LABEL_47:
    if (v44 < 1)
    {
      __break(1u);
      return result;
    }

    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    __asm { FMOV            V0.2D, #5.0 }

    v112 = _Q0;
    v113 = vdupq_n_s64(0xC040000000000000);
    __asm { FMOV            V1.2D, #9.0 }

    v110 = vdupq_n_s64(0x4059000000000000uLL);
    v111 = _Q1;
    v118 = v44;
    v120 = MEMORY[0x277D84F90];
    v117 = MEMORY[0x277D84F90];
    v53 = &off_279711000;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x2530ADF00](v45, v39);
      }

      else
      {
        v54 = *(v39 + 8 * v45 + 32);
      }

      v55 = [v6 v53[206]];
      if (v55)
      {
        v56 = v55;
        if ([v55 type] == 2)
        {
          sub_252D53EA8(v54, &v125, v43);
          v57 = v125;
          if (v125 != 2)
          {
            v123 = BYTE1(v125);
            v61 = v128;
            v62 = v129;
            v63 = v130;
            if ((v127 & 1) == 0)
            {
              v64 = v126;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v117 = sub_2529F7D44(0, *(v117 + 2) + 1, 1, v117);
              }

              v65 = v117;
              v67 = *(v117 + 2);
              v66 = *(v117 + 3);
              if (v67 >= v66 >> 1)
              {
                v65 = sub_2529F7D44((v66 > 1), v67 + 1, 1, v117);
              }

              *(v65 + 2) = v67 + 1;
              v117 = v65;
              *&v65[8 * v67 + 32] = v64;
              v53 = &off_279711000;
            }

            if (v63)
            {
              v68 = v120;
              goto LABEL_85;
            }

LABEL_80:
            v68 = v120;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_2529F7E5C(0, *(v120 + 2) + 1, 1, v120);
            }

            v77 = *(v68 + 2);
            v76 = *(v68 + 3);
            if (v77 >= v76 >> 1)
            {
              v68 = sub_2529F7E5C((v76 > 1), v77 + 1, 1, v68);
            }

            *(v68 + 2) = v77 + 1;
            v78 = &v68[16 * v77];
            *(v78 + 4) = v61;
            *(v78 + 5) = v62;
            v53 = &off_279711000;
LABEL_85:
            v120 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_2529F9638(0, *(v46 + 2) + 1, 1, v46);
            }

            v80 = *(v46 + 2);
            v79 = *(v46 + 3);
            if (v80 >= v79 >> 1)
            {
              v46 = sub_2529F9638((v79 > 1), v80 + 1, 1, v46);
            }

            *(v46 + 2) = v80 + 1;
            v46[v80 + 32] = (v57 | v123) & 1;
            goto LABEL_92;
          }
        }

        if ([v56 type] == 6)
        {
          sub_252CC3D90(0xD000000000000016, 0x8000000252E76630, 0xD000000000000088, 0x8000000252E979C0);
          v58 = [v56 rangeValue];
          v59 = v58;
          if (v58)
          {
            [v58 lowerValue];
            v122 = v60;
          }

          else
          {
            v122 = 0.0;
          }

          v69 = [v56 rangeValue];
          v70 = v69;
          v71.f64[0] = 0.0;
          v71.f64[1] = v122;
          v124 = v71;
          if (v69)
          {
            [v69 upperValue];
            v115 = v72;

            v73.f64[1] = v124.f64[1];
            v73.f64[0] = v115;
            if (v114 == 2 && v59)
            {
              v124 = vdivq_f64(vrndaq_f64(vmulq_f64(vdivq_f64(vmulq_f64(vaddq_f64(v73, v113), v112), v111), v110)), v110);
            }

            else
            {
              v124 = v73;
            }
          }

          v74 = sub_252BAC3CC();
          if (*(v74 + 2) && (v61 = *(v74 + 4), , v75 = sub_252BAC3E0(), *(v75 + 2)))
          {
            v62 = *(v75 + 4);

            if (v59 && v70)
            {
              v57 = v124.f64[1] < v61;
              v123 = v62 < v124.f64[0];
              goto LABEL_80;
            }
          }

          else
          {
          }

LABEL_92:
          v6 = v121;
          v44 = v118;
          goto LABEL_51;
        }
      }

LABEL_51:
      if (v44 == ++v45)
      {
        goto LABEL_105;
      }
    }
  }

  v44 = *(v39 + 16);
  if (v44)
  {
    goto LABEL_47;
  }

LABEL_104:
  v46 = MEMORY[0x277D84F90];
  v120 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
LABEL_105:

  v85 = *(v46 + 2);
  v86 = (v46 + 32);
  do
  {
    if (!v85)
    {

      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
      MEMORY[0x2530AD570](0x65736C6166, 0xE500000000000000);
      MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E97D70);
      v89 = sub_252E37364();
      MEMORY[0x2530AD570](v89);

      MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E97DB0);
      v90 = MEMORY[0x277D84F90];
      v91 = MEMORY[0x2530AD730](MEMORY[0x277D84F90], MEMORY[0x277D839F8]);
      MEMORY[0x2530AD570](v91);

      MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E97DE0);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
      v93 = MEMORY[0x2530AD730](v90, v92);
      MEMORY[0x2530AD570](v93);

LABEL_116:
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

      return 0;
    }

    v87 = *v86++;
    --v85;
  }

  while (v87 != 1);

  if (*(v117 + 2))
  {
    v88 = sub_252D5414C(v117, v116, v114);
  }

  else if (*(v120 + 2))
  {
    v88 = sub_252D54368(v120, v116, v114);
  }

  else
  {

    v88 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  }

  type metadata accessor for ConfirmationParameters(0);
  v94 = sub_252D547C8(v88);

  if (v94)
  {

    *(sub_252B680FC(v96) + 77) = 0;

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
    MEMORY[0x2530AD570](0x65736C6166, 0xE500000000000000);
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E97D70);
    v97 = sub_252E37364();
    MEMORY[0x2530AD570](v97);

    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E97DB0);
    v98 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x2530AD730](MEMORY[0x277D84F90], MEMORY[0x277D839F8]);
    MEMORY[0x2530AD570](v99);

    MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E97DE0);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
    v101 = MEMORY[0x2530AD730](v98, v100);
    MEMORY[0x2530AD570](v101);

    goto LABEL_116;
  }

  *(sub_252B680FC(v95) + 77) = 1;

  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E97B80);
  MEMORY[0x2530AD570](1702195828, 0xE400000000000000);
  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E97D70);
  v102 = sub_252E37364();
  MEMORY[0x2530AD570](v102);

  MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E97DB0);
  v103 = MEMORY[0x2530AD730](v117, MEMORY[0x277D839F8]);
  v105 = v104;

  MEMORY[0x2530AD570](v103, v105);

  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E97DE0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
  v107 = MEMORY[0x2530AD730](v120, v106);
  v109 = v108;

  MEMORY[0x2530AD570](v107, v109);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);

  return 1;
}

uint64_t sub_252D55AD0()
{
  v0 = sub_252E33D64();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v5 + 16), &v31);

  __swift_project_boxed_opaque_existential_1(&v31, v33);
  v6 = sub_252E338B4();
  v7 = __swift_destroy_boxed_opaque_existential_1(&v31);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  sub_252929E74((v8 + 16), &v31);

  __swift_project_boxed_opaque_existential_1(&v31, v33);
  v29 = sub_252E338E4();
  v9 = __swift_destroy_boxed_opaque_existential_1(&v31);
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 16), &v31);

  __swift_project_boxed_opaque_existential_1(&v31, v33);
  sub_252E33824();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v28 = sub_252E33D74();
  __swift_destroy_boxed_opaque_existential_1(v30);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v31);
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  sub_252929E74((v12 + 16), &v31);

  __swift_project_boxed_opaque_existential_1(&v31, v33);
  sub_252E33D44();
  v27 = sub_252E33864();
  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  v26[1] = __swift_project_value_buffer(v13, qword_27F544C58);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E97AD0);
  if (v6)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v6)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](0x6143736920726F20, 0xEF203A79616C7072);
  v16 = v29;
  if (v29)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v29)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E97B10);
  v19 = v28;
  if (v28)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v28)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v20, v21);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E97B30);
  v22 = v27;
  if (v27)
  {
    v23 = 0x65736C6166;
  }

  else
  {
    v23 = 1702195828;
  }

  if (v27)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v23, v24);

  sub_252CC3D90(v31, v32, 0xD000000000000088, 0x8000000252E979C0);

  return (v6 | v16) & v19 & ~v22 & 1;
}

uint64_t sub_252D55EC0(id *a1)
{
  v1 = [*a1 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    v4 = sub_252DD5A58(v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_252C758E0(v4);

  v6 = sub_252DD6238(v5);

  if (v6)
  {
    v7 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) homeLocationStatus] & 0xFFFFFFFFFFFFFFFDLL;
    v8 = sub_252C4BEB8();
    v9 = 0;
    if ((v8 & 1) != 0 && v7 == 1)
    {
      v9 = sub_252D55AD0();
    }

    v20 = v7;
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544C58);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E97A50);
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v9)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v11, v12);

    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E97A70);
    v13 = sub_252E37D94();
    MEMORY[0x2530AD570](v13);

    MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E97A90);
    if (v8)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v8)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v14, v15);

    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E97AB0);
    if (v20 == 1)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v20 == 1)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v16, v17);

    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E979C0);
  }

  else
  {
    if (qword_27F53F490 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C58);
    sub_252CC4050(0xD000000000000033, 0x8000000252E97980, 0xD000000000000088, 0x8000000252E979C0, 0x6628657572547369, 0xEC000000293A726FLL, 31);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_252D56254(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_252E34014();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D56318, 0, 0);
}

uint64_t sub_252D56318()
{
  *(v0 + 14) = sub_252B4F670();
  v88 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  v1 = sub_252C2FBB4();
  if (v1 >> 62)
  {
    v5 = sub_252E378C4();

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v90 = 0;
    goto LABEL_8;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = sub_252C2FBCC();
  if (v3 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v90 = i != 0;
LABEL_8:
    v6 = sub_252C2FBB4();
    if (v6 >> 62)
    {
LABEL_39:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v87 = v0;
    if (!v7)
    {
      LODWORD(v17) = 0;
      goto LABEL_46;
    }

    v8 = sub_252C2FBB4();
    v9 = v8;
    if (v8 >> 62)
    {
      break;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_44;
    }

LABEL_13:
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = v9 + 32;
    v15 = &off_279711000;
    while (1)
    {
      if (v12)
      {
        v16 = MEMORY[0x2530ADF00](v11, v9);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_41;
        }

        v16 = *(v14 + 8 * v11);
      }

      v17 = v16;
      v18 = __OFADD__(v11++, 1);
      if (v18)
      {
        break;
      }

      v19 = [v16 v15[220]];
      if (!v19)
      {
LABEL_36:

        LODWORD(v17) = 0;
        goto LABEL_45;
      }

      v20 = v19;
      v84 = v17;
      type metadata accessor for HomeUserTaskResponse();
      v21 = sub_252E37264();

      if (v21 >> 62)
      {
        v22 = sub_252E378C4();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      do
      {
        if (v22 == v23)
        {

          v17 = v84;
          v0 = v87;
          goto LABEL_36;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x2530ADF00](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v0 = [v24 taskOutcome];

        ++v23;
      }

      while (v0 != 17);

      v12 = v9 & 0xC000000000000001;
      v0 = v87;
      v14 = v9 + 32;
      v13 = v9 & 0xFFFFFFFFFFFFFF8;
      v15 = &off_279711000;
      if (v11 == v10)
      {
        LODWORD(v17) = 1;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v10 = sub_252E378C4();
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_44:
  LODWORD(v17) = 1;
LABEL_45:

LABEL_46:
  v26 = sub_252C285CC();
  if (v26 >> 62)
  {
    v31 = sub_252E378C4();

    if (!v31)
    {
      goto LABEL_52;
    }

LABEL_48:
    v28 = sub_252C285F0();
    if (v28 >> 62)
    {
LABEL_94:
      v29 = sub_252E378C4();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LOBYTE(v30) = v29 != 0;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
      goto LABEL_48;
    }

LABEL_52:
    LOBYTE(v30) = 0;
  }

  v32 = sub_252C285CC();
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v33)
    {
      goto LABEL_55;
    }

LABEL_87:
    if (v90)
    {
      LOBYTE(v30) = 1;
      if (v17)
      {
        goto LABEL_100;
      }
    }

    else
    {
      LOBYTE(v30) = (v88 ^ 1) & v30;
      if (v17)
      {
        goto LABEL_100;
      }
    }

LABEL_91:
    LOBYTE(v50) = 0;
    goto LABEL_101;
  }

LABEL_86:
  v49 = sub_252E378C4();

  if (!v49)
  {
    goto LABEL_87;
  }

LABEL_55:
  v34 = sub_252C285CC();
  v35 = v34;
  v80 = v30;
  if (!(v34 >> 62))
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_57;
    }

LABEL_96:

    if (v90)
    {
      if (v17)
      {
        LOBYTE(v30) = 1;
        goto LABEL_100;
      }

      LOBYTE(v50) = v88 ^ 1;
      LOBYTE(v30) = 1;
    }

    else
    {
      LOBYTE(v50) = v88 ^ 1;
      LOBYTE(v30) = (v88 ^ 1) & v80;
      if (v17)
      {
        goto LABEL_100;
      }
    }

    goto LABEL_101;
  }

  v36 = sub_252E378C4();
  if (!v36)
  {
    goto LABEL_96;
  }

LABEL_57:
  v30 = 0;
  v37 = v35 & 0xC000000000000001;
  v38 = v35 & 0xFFFFFFFFFFFFFF8;
  v39 = v35 + 32;
  v40 = &off_279711000;
  v82 = v17;
  while (1)
  {
    if (v37)
    {
      v41 = MEMORY[0x2530ADF00](v30, v35);
    }

    else
    {
      if (v30 >= *(v38 + 16))
      {
        goto LABEL_93;
      }

      v41 = *(v39 + 8 * v30);
    }

    v42 = v41;
    v18 = __OFADD__(v30++, 1);
    if (v18)
    {
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v43 = [v41 v40[220]];
    if (!v43)
    {
      break;
    }

    v44 = v43;
    type metadata accessor for HomeUserTaskResponse();
    v17 = sub_252E37264();

    v85 = v42;
    if (v17 >> 62)
    {
      v45 = sub_252E378C4();
    }

    else
    {
      v45 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = 0;
    do
    {
      if (v45 == v46)
      {

        v42 = v85;
        v0 = v87;
        LOBYTE(v17) = v82;
        goto LABEL_79;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x2530ADF00](v46, v17);
      }

      else
      {
        if (v46 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_85;
        }

        v47 = *(v17 + 8 * v46 + 32);
      }

      v48 = v47;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v0 = [v47 taskOutcome];

      ++v46;
    }

    while (v0 != 17);

    v37 = v35 & 0xC000000000000001;
    v0 = v87;
    LODWORD(v17) = v82;
    v39 = v35 + 32;
    v38 = v35 & 0xFFFFFFFFFFFFFF8;
    v40 = &off_279711000;
    if (v30 == v36)
    {
      goto LABEL_96;
    }
  }

LABEL_79:

  if (v90)
  {
    LOBYTE(v30) = 1;
    if (v17)
    {
      goto LABEL_100;
    }

    goto LABEL_91;
  }

  LOBYTE(v30) = (v88 ^ 1) & v80;
  if ((v17 & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_100:
  LOBYTE(v50) = 1;
LABEL_101:
  v51 = (v0 + 32);
  v81 = v0 + 144;
  v0[144] = 0;
  v52 = sub_252C2F554();
  v53 = v52;
  if (v52 >> 62)
  {
    goto LABEL_130;
  }

  result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_103:
  v86 = v30;
  v83 = v50;
  if (!result)
  {
    goto LABEL_134;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x2530ADF00](0, v53);
LABEL_107:
    v56 = v55;
    v79 = v51;

    v57 = type metadata accessor for HomeStore(0);
    v58 = static HomeStore.shared.getter(v57);
    v53 = sub_2529DA828();

    if (v53 >> 62)
    {
      v30 = sub_252E378C4();
      if (v30)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v30 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_109:
        v51 = 0;
        v89 = v56;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x2530ADF00](v51, v53);
            v0 = (v51 + 1);
            if (__OFADD__(v51, 1))
            {
LABEL_125:
              __break(1u);
LABEL_126:

              v56 = v89;
LABEL_127:

              v69 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v70 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              v0 = v87;
              *(v87 + 4) = v69;
              *(v87 + 5) = v70;
              LOBYTE(v70) = sub_252B2FB08();

              v87[144] = v70 & 1;
              v71 = v79;
              goto LABEL_135;
            }
          }

          else
          {
            if (v51 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_130:
              result = sub_252E378C4();
              goto LABEL_103;
            }

            v50 = *(v53 + 8 * v51 + 32);

            v0 = (v51 + 1);
            if (__OFADD__(v51, 1))
            {
              goto LABEL_125;
            }
          }

          v92 = sub_252E32E24();
          v60 = v59;
          v61 = [v56 entity];
          if (v61 && (v62 = v61, v63 = [v61 entityIdentifier], v62, v63))
          {
            v64 = sub_252E36F34();
            v66 = v65;

            if (v92 == v64 && v60 == v66)
            {
              goto LABEL_126;
            }

            v68 = sub_252E37DB4();

            v56 = v89;
            if (v68)
            {
              goto LABEL_127;
            }
          }

          else
          {
          }

          ++v51;
        }

        while (v0 != v30);
      }
    }

    v0 = v87;
    v51 = v79;
LABEL_134:
    v72 = *(v0 + 9);

    *(v0 + 1) = *(v72 + 120);
    *v51 = *(v72 + 120);
    sub_252D57940((v0 + 16), (v0 + 48));
    v71 = v51;
LABEL_135:
    v73 = *(v0 + 10);
    v74 = *(v73 + 48);
    __swift_project_boxed_opaque_existential_1((v73 + 24), v74);
    v75 = swift_task_alloc();
    *(v0 + 15) = v75;
    *(v75 + 16) = v73;
    *(v75 + 24) = v86;
    *(v75 + 25) = v83;
    *(v75 + 32) = v81;
    *(v75 + 40) = v71;
    sub_252AD7CC4();
    v76 = swift_task_alloc();
    *(v0 + 16) = v76;
    *v76 = v0;
    v76[1] = sub_252D56D50;
    v77 = *(v0 + 13);
    v78 = *(v0 + 8);

    return sub_252BDB88C(v78, &unk_252E5DD00, v75, v77, 0, 0, 0, v74);
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v55 = *(v53 + 32);
    goto LABEL_107;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D56D50()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D56F44;
  }

  else
  {

    v5 = sub_252D56ED0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D56ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D56F44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D56FC4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 97) = a3;
  *(v5 + 96) = a2;
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = type metadata accessor for HomeAutomationAsyncSceneFailuresParameters(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D5709C, 0, 0);
}

uint64_t sub_252D5709C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v15 = *(v0 + 32);
  v14 = *(v0 + 97);
  v4 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 64), *(*(v0 + 16) + 88));
  v5 = *v3;
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v8 = 1;
  v7(v2, 1, 1, v6);
  v9 = v1[10];
  v7(v2 + v9, 1, 1, v6);
  v7(v2 + v1[11], 1, 1, v6);
  *(v2 + v1[5]) = 0;
  *(v2 + v1[6]) = 0;
  *(v2 + v1[7]) = v4;
  *(v2 + v1[8]) = v14;
  *(v2 + v1[9]) = v5;
  if (*(v15 + 8))
  {

    sub_252E37024();

    v8 = 0;
  }

  v10 = *(v0 + 40);
  v7(v10, v8, 1, v6);
  sub_252956C98(v10, v2 + v9);
  v11 = sub_252C052D8();
  *(v0 + 64) = v11;
  v16 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_252D572D4;

  return v16(0xD000000000000021, 0x8000000252E95590, v11);
}

uint64_t sub_252D572D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252D574A0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252D57420;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D57420()
{
  sub_252D579B0(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252D574A0()
{
  sub_252D579B0(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_252D57540@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncFailedScenesResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_252D57580(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D56254(a1, a2);
}

uint64_t sub_252D5762C()
{
  v0 = sub_252B4F670();
  v1 = sub_252C2F554();
  if (v1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DD8);
  sub_252E379F4();

  v5 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  if (v5)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v6, v7);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E97F70, 0xD000000000000092, 0x8000000252E97FA0);

  v8 = sub_252C285CC();
  if (v8 >> 62)
  {
    v9 = sub_252E378C4();

    if (v2)
    {
      goto LABEL_13;
    }

LABEL_20:

    if (v9)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_13:
  v10 = sub_252C2FBB4();
  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    return 1;
  }

  else
  {
    return v3 & (v9 != 0);
  }
}

uint64_t sub_252D57880()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25294B7BC;

  return sub_252D56FC4(v2, v3, v4, v6, v5);
}

uint64_t sub_252D57940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252D579B0(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationAsyncSceneFailuresParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D57A20(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_252E378C4();
LABEL_9:
  result = sub_252E37A54();
  *v2 = result;
  return result;
}

uint64_t sub_252D57AFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_252E378C4();
  }

  return sub_252E37A54();
}

char *sub_252D57BF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_252E378C4();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_252D57A20(result, 1);

  return sub_252B7B358(v7, v6, 1, v4);
}

uint64_t sub_252D57D0C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

char *sub_252D57DE4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = v2 + 1;
  v4 = 160;
  while (--v3)
  {
    v5 = *(a1 + v4);
    v4 += 504;
    if (*(v5 + 16))
    {
      v6 = v2 + 1;
      v7 = 72;
      do
      {
        if (!--v6)
        {
          goto LABEL_23;
        }

        v8 = *(a1 + v7);
        v7 += 504;
      }

      while (v8 == 4);
      v9 = qword_27F53F520;

      if (v9 != -1)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v10 = sub_252E36AD4();
        __swift_project_value_buffer(v10, qword_27F544E08);
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        sub_252E379F4();

        __src[0] = 0xD00000000000002BLL;
        __src[1] = 0x8000000252E98040;
        v11 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v11);

        sub_252CC3D90(__src[0], __src[1], 0xD00000000000009CLL, 0x8000000252E98070);

        if (!v2)
        {
          break;
        }

        v13 = 0;
        v14 = 536;
        while (v1[v14 - 464] == 4)
        {
          ++v13;
          v14 += 504;
          if (v2 == v13)
          {
            goto LABEL_12;
          }
        }

        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_45;
        }

        if (v18 == v2)
        {
          goto LABEL_13;
        }

        v2 = 504;
        while (1)
        {
          v19 = *(v1 + 2);
          if (v18 >= v19)
          {
            break;
          }

          if (v1[v14 + 40] == 4)
          {
            if (v18 != v13)
            {
              if (v13 >= v19)
              {
                goto LABEL_39;
              }

              memcpy(__dst, &v1[504 * v13 + 32], sizeof(__dst));
              memcpy(__src, &v1[v14], sizeof(__src));
              sub_2529353AC(__dst, v22);
              sub_2529353AC(__src, v22);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_252D57AC0(v1);
              }

              v20 = &v1[504 * v13];
              memcpy(v21, v20 + 32, sizeof(v21));
              memcpy(v20 + 32, __src, 0x1F8uLL);
              sub_252935408(v21);
              if (v18 >= *(v1 + 2))
              {
                goto LABEL_40;
              }

              memcpy(v22, &v1[v14], sizeof(v22));
              memcpy(&v1[v14], __dst, 0x1F8uLL);
              result = sub_252935408(v22);
              v19 = *(v1 + 2);
            }

            ++v13;
          }

          ++v18;
          v14 += 504;
          if (v18 == v19)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
      }

LABEL_12:
      v13 = v2;
LABEL_13:
      v15 = *(v1 + 2);
      if (v13 > v15)
      {
        __break(1u);
      }

      else if ((v13 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v15, v13 - v15))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __src[0] = v1;
          if (!isUniquelyReferenced_nonNull_native || v13 > *(v1 + 3) >> 1)
          {
            if (v15 <= v13)
            {
              v17 = v13;
            }

            else
            {
              v17 = v15;
            }

            v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v17, 1, v1);
            __src[0] = v1;
          }

          sub_252B7B280(v13, v15, 0);
          return v1;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

LABEL_23:

  return v1;
}

uint64_t sub_252D58140(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v39 = *(a1 + 16);
    v1 = 0;
    v40 = a1 + 32;
    do
    {
      memcpy(__dst, (v40 + 504 * v1++), 0x1F8uLL);
      v2 = __dst[4];
      v3 = *(__dst[4] + 16);
      sub_2529353AC(__dst, __src);
      v4 = (v2 + 32);
      v5 = (v2 + 32);
      while (1)
      {
        if (!v3)
        {
          v8 = *(v2 + 16);
          while (v8)
          {
            v10 = *v4;
            if (v10 > 2 && v10 != 4)
            {
              goto LABEL_21;
            }

            v9 = sub_252E37DB4();

            ++v4;
            --v8;
            if (v9)
            {
              goto LABEL_22;
            }
          }

          v11 = *(__dst[11] + 16);
          v12 = (__dst[11] + 32);
          while (2)
          {
            if (v11)
            {
              switch(*v12)
              {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 0xA:
                case 0xB:
                case 0xC:
                case 0xD:
                case 0xE:
                case 0xF:
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                  v13 = sub_252E37DB4();

                  ++v12;
                  --v11;
                  if ((v13 & 1) == 0)
                  {
                    continue;
                  }

                  goto LABEL_22;
                default:
                  goto LABEL_21;
              }
            }

            goto LABEL_26;
          }
        }

        v7 = *v5;
        if (v7 > 1 && v7 != 3 && v7 != 4)
        {
          break;
        }

        v6 = sub_252E37DB4();

        ++v5;
        --v3;
        if (v6)
        {
          goto LABEL_22;
        }
      }

LABEL_21:

LABEL_22:
      if (!*(__dst[17] + 16) || (memcpy(__src, __dst, sizeof(__src)), sub_252A13A70(), (v14 & 1) == 0) || (memcpy(__src, __dst, sizeof(__src)), (sub_252A13FE0() & 1) != 0) || (memcpy(v43, __dst, sizeof(v43)), (sub_252A13BEC() & 1) != 0))
      {
LABEL_26:
        sub_252935408(__dst);
        continue;
      }

      memcpy(__src, __dst, sizeof(__src));
      v15 = sub_252A143D4();
      sub_252935408(__dst);
      if ((v15 & 1) == 0)
      {
        if (qword_27F53F520 != -1)
        {
          goto LABEL_70;
        }

        while (1)
        {
          v18 = sub_252E36AD4();
          __swift_project_value_buffer(v18, qword_27F544E08);
          __src[0] = 0;
          __src[1] = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E98110);
          v19 = MEMORY[0x2530AD730](a1, &type metadata for HomeAutomationIntent);
          MEMORY[0x2530AD570](v19);

          sub_252CC3D90(__src[0], __src[1], 0xD0000000000000A8, 0x8000000252E98150);

          v20 = 0;
          v16 = MEMORY[0x277D84F90];
LABEL_36:
          while (v20 < v39)
          {
            memcpy(__src, (v40 + 504 * v20), sizeof(__src));
            if (__OFADD__(v20++, 1))
            {
              goto LABEL_69;
            }

            v22 = __src[4];
            v23 = *(__src[4] + 16);
            sub_2529353AC(__src, v43);
            v24 = (v22 + 32);
            v25 = (v22 + 32);
            while (v23)
            {
              v27 = *v25;
              if (v27 > 1 && v27 != 3 && v27 != 4)
              {
LABEL_56:

LABEL_57:
                if (!*(__src[17] + 16))
                {
                  goto LABEL_62;
                }

                memcpy(v43, __src, sizeof(v43));
                sub_252A13A70();
                if ((v34 & 1) == 0)
                {
                  goto LABEL_62;
                }

                memcpy(v43, __src, sizeof(v43));
                if ((sub_252A13FE0() & 1) == 0)
                {
                  memcpy(v41, __src, sizeof(v41));
                  if ((sub_252A13BEC() & 1) == 0)
                  {
                    memcpy(v43, __src, sizeof(v43));
                    if ((sub_252A143D4() & 1) == 0)
                    {
                      goto LABEL_62;
                    }
                  }
                }

                sub_252935408(__src);
                if (v20 == v39)
                {
                  return v16;
                }

                goto LABEL_36;
              }

              v26 = sub_252E37DB4();

              ++v25;
              --v23;
              if (v26)
              {
                goto LABEL_57;
              }
            }

            v28 = *(v22 + 16);
            while (v28)
            {
              v30 = *v24;
              if (v30 > 2 && v30 != 4)
              {
                goto LABEL_56;
              }

              v29 = sub_252E37DB4();

              ++v24;
              --v28;
              if (v29)
              {
                goto LABEL_57;
              }
            }

            v31 = *(__src[11] + 16);
            v32 = (__src[11] + 32);
            while (2)
            {
              if (v31)
              {
                switch(*v32)
                {
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                  case 9:
                  case 0xA:
                  case 0xB:
                  case 0xC:
                  case 0xD:
                  case 0xE:
                  case 0xF:
                  case 0x10:
                  case 0x11:
                  case 0x12:
                  case 0x13:
                  case 0x14:
                    v33 = sub_252E37DB4();

                    ++v32;
                    --v31;
                    if ((v33 & 1) == 0)
                    {
                      continue;
                    }

                    goto LABEL_57;
                  default:
                    goto LABEL_56;
                }
              }

              break;
            }

LABEL_62:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v42 = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2529AA480(0, *(v16 + 16) + 1, 1);
              v16 = v42;
            }

            v37 = *(v16 + 16);
            v36 = *(v16 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_2529AA480((v36 > 1), v37 + 1, 1);
              v16 = v42;
            }

            *(v16 + 16) = v37 + 1;
            memcpy((v16 + 504 * v37 + 32), __src, 0x1F8uLL);
            if (v20 == v39)
            {
              return v16;
            }
          }

          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          swift_once();
        }
      }
    }

    while (v1 != v39);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D58BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_252E34014();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D58CB8, 0, 0);
}

uint64_t sub_252D58CB8()
{
  v65 = v0;
  v1 = *(v0 + 144);
  v2 = MEMORY[0x277D84F90];
  v58 = v1;
  if (!v1)
  {
    goto LABEL_101;
  }

  v3 = sub_252C285F0();
  v4 = v3;
  v64 = v2;
  if (v3 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v63 = v0;
    v0 = MEMORY[0x277D84F90];
    if (i)
    {
      v6 = 0;
LABEL_7:
      while (2)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v7 = *(v4 + 32 + 8 * v6);
        }

        v8 = v7;
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v10 = sub_252DA6828();
        v11 = *(v10 + 2);
        v12 = 32;
        do
        {
          if (!v11)
          {

            if (v6 != i)
            {
              goto LABEL_7;
            }

            goto LABEL_17;
          }

          v13 = *&v10[v12];
          v12 += 8;
          --v11;
        }

        while (v13 != 49);

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v6 != i)
        {
          continue;
        }

        break;
      }

LABEL_17:
      v14 = v64;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v64 = v0;
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *(v14 + 16);
    }

    v15 = 0;
    v0 = MEMORY[0x277D84F90];
    v57 = MEMORY[0x277D84F90];
    while (v4 != v15)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, v14);
      }

      else
      {
        if (v15 >= *(v14 + 16))
        {
          goto LABEL_64;
        }

        v16 = *(v14 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v19 = sub_252DA124C(0);

      ++v15;
      if (v19)
      {
        MEMORY[0x2530AD700]();
        if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v57 = v64;
        v15 = v18;
      }
    }

    v20 = sub_252C285F0();
    v4 = v20;
    v64 = v0;
    v21 = v20 >> 62 ? sub_252E378C4() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = MEMORY[0x277D84F90];
    if (v21)
    {
      v22 = 0;
LABEL_38:
      while (2)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2530ADF00](v22, v4);
        }

        else
        {
          if (v22 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v23 = *(v4 + 32 + 8 * v22);
        }

        v24 = v23;
        v9 = __OFADD__(v22++, 1);
        if (v9)
        {
          goto LABEL_67;
        }

        v25 = sub_252DA6828();
        v26 = *(v25 + 2);
        v27 = 32;
        do
        {
          if (!v26)
          {

            if (v22 != v21)
            {
              goto LABEL_38;
            }

            goto LABEL_48;
          }

          v28 = *&v25[v27];
          v27 += 8;
          --v26;
        }

        while (v28 != 48);

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v22 != v21)
        {
          continue;
        }

        break;
      }

LABEL_48:
      v29 = v64;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v64 = v0;

    v4 = *(v29 + 16);
    if (!v4)
    {
      goto LABEL_75;
    }

LABEL_53:
    v30 = 0;
    v0 = v29 & 0xC000000000000001;
    while (1)
    {
      if (v0)
      {
        v31 = MEMORY[0x2530ADF00](v30, v29);
      }

      else
      {
        if (v30 >= *(v29 + 16))
        {
          goto LABEL_70;
        }

        v31 = *(v29 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      type metadata accessor for MutableHomeEntityResponse();
      swift_allocObject();
      sub_252D6D668(v32);

      MEMORY[0x2530AD700]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v30;
      if (v33 == v4)
      {
        v34 = v64;
        goto LABEL_76;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v4 = sub_252E378C4();
  if (v4)
  {
    goto LABEL_53;
  }

LABEL_75:
  v34 = MEMORY[0x277D84F90];
LABEL_76:

  if (v34 >> 62)
  {
    goto LABEL_114;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_78:
  v0 = v63;
  v56 = v34;

  if (v35)
  {
    v36 = 0;
    v61 = v34 & 0xFFFFFFFFFFFFFF8;
    v62 = v34 & 0xC000000000000001;
    v59 = v35;
    v60 = v34 + 32;
    do
    {
      if (v62)
      {
        v37 = MEMORY[0x2530ADF00](v36, v56);
        v9 = __OFADD__(v36++, 1);
        if (v9)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v36 >= *(v61 + 16))
        {
          goto LABEL_113;
        }

        v37 = *(v60 + 8 * v36);

        v9 = __OFADD__(v36++, 1);
        if (v9)
        {
          goto LABEL_112;
        }
      }

      swift_beginAccess();
      v38 = *(v37 + 24);
      if (v38 >> 62)
      {
        v39 = sub_252E378C4();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v39)
      {
        v40 = 0;
        v34 = v38 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if ((v38 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x2530ADF00](v40, v38);
            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_110;
            }
          }

          else
          {
            if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_111;
            }

            v41 = *(v38 + 8 * v40 + 32);

            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              v35 = sub_252E378C4();
              goto LABEL_78;
            }
          }

          v64 = v41;
          sub_252D5A13C(&v64);

          ++v40;
        }

        while (v42 != v39);
      }

      v0 = v63;
    }

    while (v36 != v59);
  }

  v1 = v56;

  v2 = v57;
LABEL_101:
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v43 = *(v0 + 152);
  v44 = swift_allocObject();
  *(v0 + 208) = v44;
  v44[2] = v43;
  v44[3] = v2;
  v44[4] = v1;

  if (v58)
  {
    v45 = *(v43 + 48);
    v46 = *(v0 + 144);
    v47 = *__swift_project_boxed_opaque_existential_1((v43 + 24), v45);

    v48 = swift_task_alloc();
    *(v0 + 216) = v48;
    *v48 = v0;
    v48[1] = sub_252D5959C;

    return sub_252C10510(0, v47, v2, v1);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 152);
    v51 = sub_252E36AD4();
    __swift_project_value_buffer(v51, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v52 = v50[12];
    v53 = v50[13];
    __swift_project_boxed_opaque_existential_1(v50 + 9, v52);
    sub_252AD7CC4();
    v54 = swift_task_alloc();
    *(v0 + 264) = v54;
    *v54 = v0;
    v54[1] = sub_252D59910;
    v55 = *(v0 + 184);
    v67 = v53;

    return sub_252BDB88C(v0 + 16, &unk_252E5DDE8, v44, v55, 0, 0, 0, v52);
  }
}

uint64_t sub_252D5959C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D59894, 0, 0);
  }

  else
  {
    v5 = v3[18];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[30] = v6;
    *v6 = v4;
    v6[1] = sub_252D59780;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D59780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_252D59BD4;
  }

  else
  {
    v4 = sub_252D59A78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D59894()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D59910()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[21] + 8))(v2[23], v2[20]);
  if (v0)
  {
    v3 = sub_252D5A0C8;
  }

  else
  {
    v3 = sub_252D59FA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D59A78()
{
  v1 = v0[28];
  v0[15] = v1;
  v2 = v0 + 15;
  v3 = v0[31];
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

  v8 = v0[19];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[35] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v11[1] = sub_252D59C5C;
  v12 = v0[22];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D59BD4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D59C5C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v3 = sub_252D59EF8;
  }

  else
  {

    v3 = sub_252D59DAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D59DAC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
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

  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 144);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252D59EF8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D59FA4()
{
  v1 = v0[19];
  v2 = v0[17];
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

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D5A0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D5A13C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v6 = 0;
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3)
    {
      v4 = *(v3 + 56);
      if (v4)
      {
        v5 = *(v3 + 48) == 0x45474E414843 && v4 == 0xE600000000000000;
        if (v5 || (sub_252E37DB4() & 1) != 0)
        {
          v6 = 1;
        }
      }
    }
  }

  v7 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setBoolValue_];
  [v10 setType_];

  v11 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v12 = sub_252E36F04();
  v13 = [v11 initWithIdentifier:0 displayString:v12];

  v14 = v13;
  [v14 setTaskType_];
  [v14 setAttribute_];
  [v14 setValue_];

  type metadata accessor for MutableHomeUserTask();
  swift_allocObject();
  *(v1 + 16) = sub_252D6CA80(v14);
}

uint64_t sub_252D5A308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D5A32C, 0, 0);
}

uint64_t sub_252D5A32C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_2529C5218;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C10510(0, v1, v3, v4);
}

uint64_t sub_252D5A410(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for HomeAutomationNumericEntityResponses();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;

  *(a1 + 16) = v6;
  v7 = MEMORY[0x277D84F90];
  if (a3)
  {
    v15 = a1;
    v16 = MEMORY[0x277D84F90];
    if (a3 >> 62)
    {
LABEL_20:
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    while (v8 != v9)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v9, a3);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v11 = sub_252D6C15C();
      v12 = sub_252DA124C(0);

      ++v9;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v7 = v16;
        v9 = v10;
      }
    }

    a1 = v15;
  }

  type metadata accessor for HomeAutomationBooleanResponses();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v7;

  *(a1 + 8) = v13;
  return result;
}

uint64_t sub_252D5A600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D58BE8(a1, a2, a3);
}

void *sub_252D5A6B4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetFilterStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252D5A718(id a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_252C285F0();
    if (v3 >> 62)
    {
      v12 = sub_252E378C4();

      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v4)
      {
        return 0;
      }
    }
  }

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attribute];

    if (v7 == 49)
    {
      return 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attribute];

    return v11 == 48;
  }

  sub_252C515AC();
  return 0;
}

uint64_t sub_252D5A828()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D5A308(v2, v3, v4);
}

uint64_t sub_252D5A8F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D5AEF4(a1);
}

uint64_t sub_252D5A9A0()
{
  type metadata accessor for ShowCameraOnTVHandleDelegate();

  return swift_allocObject();
}

id sub_252D5A9D0(void *a1)
{
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_4;
    }

LABEL_36:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_4:
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = HomeStore.accessories(matching:supporting:)(v3, 0);
  v8 = v7;

  if (v8)
  {
    sub_252929F10(v6, 1);
    return 0;
  }

  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_8:
    v10 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v10, v6);
        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          sub_252929F10(v6, 0);

          v29 = 1;
          goto LABEL_41;
        }
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_39:
          v9 = sub_252E378C4();
          if (!v9)
          {
            goto LABEL_40;
          }

          goto LABEL_8;
        }

        v11 = *(v6 + 32 + 8 * v10);

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_32;
        }
      }

      v13 = (*v11 + 256);
      v14 = *v13;
      if ((*v13)() == 24)
      {
        sub_252929F10(v6, 0);

        v29 = 1;
        goto LABEL_41;
      }

      v15 = (*(*v11 + 272))();
      if (*(v15 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v16 = sub_252E37F14();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + 8 * v18) != 24)
          {
            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_19:

      v21 = (v14)(v20);
      if (v21 == 38)
      {
        break;
      }

      v22 = MEMORY[0x277D84FA0];
      if (v21 == 41)
      {
        v23 = &unk_2864AB050;
LABEL_23:
        v22 = sub_2529FC004(v23);
      }

      if (*(v22 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v24 = sub_252E37F14();
        v25 = -1 << *(v22 + 32);
        v26 = v24 & ~v25;
        if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (*(*(v22 + 48) + 8 * v26) != 24)
          {
            v26 = (v26 + 1) & v27;
            if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_9:

      if (v10 == v9)
      {
        goto LABEL_40;
      }
    }

    v23 = &unk_2864AB028;
    goto LABEL_23;
  }

LABEL_40:
  sub_252929F10(v6, 0);
  v29 = 0;
LABEL_41:
  v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v28);
  sub_252929E74((v30 + 16), &v37);

  __swift_project_boxed_opaque_existential_1(&v37, v39);
  v31 = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(&v37);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544C70);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E98280);
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v31)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v33, v34);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E982B0);
  if (v29)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v29)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v35, v36);

  sub_252CC3D90(v37, v38, 0xD00000000000007FLL, 0x8000000252E982D0);

  return (v29 & v31);
}

uint64_t sub_252D5AF14()
{
  v1 = [*(v0 + 64) filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_252A41984(v3, &unk_2864AB078);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    if (v4 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_7;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v7 = *(v0 + 64);
      type metadata accessor for HomeFilter();
      v8 = sub_252E37254();
      sub_252929F10(v4, 0);
      [v7 setFilters_];

      sub_2529515FC(1, 10, 0xD00000000000001ALL, 0x8000000252E98350);
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544C70);
      sub_252CC4050(0xD000000000000031, 0x8000000252E98370, 0xD00000000000007FLL, 0x8000000252E982D0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 113);
      v10 = 5;
      goto LABEL_14;
    }
  }

  sub_252929F10(v4, v6 & 1);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252CC4050(0xD00000000000001BLL, 0x8000000252E73210, 0xD00000000000007FLL, 0x8000000252E982D0, 0x6928656C646E6168, 0xEF293A746E65746ELL, 61);
  v10 = 100;
LABEL_14:
  v12 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v13 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v12[v13] = v10;
  [v12 setUserActivity_];
  v14 = *(v0 + 8);

  return v14(v12);
}

id sub_252D5B220()
{
  v1 = v0;
  v2 = 0xD00000000000007ELL;
  v211 = sub_252E36AD4();
  v193 = *(v211 - 8);
  v3 = MEMORY[0x28223BE20](v211);
  v188 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v189 = &v186 - v6;
  MEMORY[0x28223BE20](v5);
  v190 = &v186 - v7;
  v210 = sub_252E32E84();
  v8 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v241 = *v0;
  v242 = v10;
  v11 = v0[3];
  v243 = v0[2];
  v244 = v11;
  v195 = *(v0 + 64);
  v12 = *(v0 + 129);
  v238 = *(v0 + 113);
  v239 = v12;
  v240[0] = *(v0 + 145);
  v13 = *(v0 + 21);
  *(v240 + 15) = *(v0 + 20);
  v14 = *(v0 + 81);
  v235 = *(v0 + 65);
  v236 = v14;
  v237 = *(v0 + 97);
  v234 = v0[11];
  v15 = *(v0 + 24);
  v196 = v13;
  v197 = v15;
  v16 = memcpy(v233, v0 + 200, sizeof(v233));
  v17 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v16);
  v187 = 0xD000000000000015;
  v18 = sub_252AC5368(0xD000000000000015, 0x8000000252E983B0);

  if (v18 != 2 && (v18 & 1) == 0)
  {
LABEL_69:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v211, qword_27F544DA8);
    sub_252CC4050(v2 - 38, 0x8000000252E98680, 0xD00000000000007ELL, 0x8000000252E98410, v2 - 103, 0x8000000252E98620, 25);
    sub_2529515FC(0, 18, v2 - 99, 0x8000000252E82E50);
    return 0;
  }

  v19 = v1[1];
  v218 = *v1;
  v219 = v19;
  v20 = v1[3];
  v220 = v1[2];
  v221 = v20;
  v222 = v195;
  v226 = *(v1 + 113);
  v227 = *(v1 + 129);
  *v228 = *(v1 + 145);
  v21 = *(v1 + 20);
  v223 = *(v1 + 65);
  v224 = *(v1 + 81);
  v225 = *(v1 + 97);
  *&v228[15] = v21;
  v229 = v196;
  v230 = v1[11];
  v231 = v197;
  memcpy(v232, v1 + 200, sizeof(v232));
  v192 = sub_252E09AE4(&v218);
  v22 = type metadata accessor for HomeStore(0);
  v23 = static HomeStore.shared.getter(v22);
  v24 = sub_2529DA2BC();

  v216 = MEMORY[0x277D84F90];
  v191 = v24;
  if (v24 >> 62)
  {
    goto LABEL_279;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (!v25)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v26 = 0;
  v207 = v191 & 0xFFFFFFFFFFFFFF8;
  v208 = v191 & 0xC000000000000001;
  v205 = v191 + 32;
  v206 = (v8 + 8);
  v194 = "Modified user task: ";
  v202 = ". Returning .robotVacuumCleaner";
  v203 = "tity with accessoryID ";
  v200 = "for accessoryID ";
  v201 = "MatterAccessory.swift";
  v198 = "deviceEntity(for:)";
  v199 = "MatterAccessoryManager.swift";
  v204 = v25;
  while (1)
  {
    if (v208)
    {
      v27 = MEMORY[0x2530ADF00](v26, v191);
      v28 = __OFADD__(v26, 1);
      v29 = v26 + 1;
      if (v28)
      {
        goto LABEL_267;
      }
    }

    else
    {
      if (v26 >= *(v207 + 16))
      {
        goto LABEL_268;
      }

      v28 = __OFADD__(v26, 1);
      v29 = v26 + 1;
      if (v28)
      {
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }
    }

    v212 = v27;
    v30 = [*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
    v31 = v209;
    sub_252E32E64();

    *&v215 = sub_252E32E24();
    *(&v215 + 1) = v32;
    v33 = (*v206)(v31, v210);
    v34 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v33);
    v35 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v213 = v34;
    v214 = v29;
    v36 = *&v34[v35];
    v37 = v36 >> 62 ? sub_252E378C4() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v37)
    {
      break;
    }

LABEL_25:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v40 = v211;
    __swift_project_value_buffer(v211, qword_27F544EC8);
    *&v218 = 0;
    *(&v218 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v2 = 0xD00000000000007ELL;
    MEMORY[0x2530AD570](0xD000000000000040, v201 | 0x8000000000000000);
    v41 = v215;
    MEMORY[0x2530AD570](v215, *(&v215 + 1));
    sub_252CC4050(v218, *(&v218 + 1), 0xD00000000000007CLL, v200 | 0x8000000000000000, 0xD000000000000012, v199 | 0x8000000000000000, 375);

    v26 = v214;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v40, qword_27F544CB8);
    *&v218 = 0;
    *(&v218 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, v198 | 0x8000000000000000);
    MEMORY[0x2530AD570](v41, *(&v41 + 1));

    MEMORY[0x2530AD570](0xD00000000000001FLL, v203 | 0x8000000000000000);
    sub_252CC4050(v218, *(&v218 + 1), 0xD000000000000075, v202 | 0x8000000000000000, 1701869940, 0xE400000000000000, 96);
LABEL_40:

LABEL_41:
    sub_252E37A94();
    v8 = *(v216 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_42:
    if (v26 == v204)
    {
      v8 = v216;
LABEL_49:

      if (v196[2])
      {
        v17 = v196[4];
        v45 = v196[5];
        *&v218 = MEMORY[0x277D84F90];
        if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
        {
          v46 = sub_252E378C4();
        }

        else
        {
          v46 = *(v8 + 16);
        }

        if (v46)
        {
          v2 = 0;
          *(&v215 + 1) = v8 & 0xC000000000000001;
          do
          {
            if (*(&v215 + 1))
            {
              v47 = MEMORY[0x2530ADF00](v2, v8);
              v48 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_68;
              }
            }

            else
            {
              if (v2 >= *(v8 + 16))
              {
                goto LABEL_270;
              }

              v47 = *(v8 + 8 * v2 + 32);

              v48 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
LABEL_68:
                __break(1u);
                goto LABEL_69;
              }
            }

            v49 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v17 && *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v45;
            if (v49 || (sub_252E37DB4() & 1) != 0)
            {
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            else
            {
            }

            ++v2;
          }

          while (v48 != v46);
          v51 = v218;
        }

        else
        {
          v51 = MEMORY[0x277D84F90];
        }

        v8 = v51;
        v2 = 0xD00000000000007ELL;
      }

      v52 = v211;
      v53 = MEMORY[0x277D84F90];
      if (v192 != 2)
      {
        *(&v215 + 1) = v8;
        goto LABEL_248;
      }

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
        v52 = v211;
      }

      v54 = __swift_project_value_buffer(v52, qword_27F544CB8);
      v199 = ".\nSetting targetAreas: ";
      v200 = v54;
      sub_252CC3D90(v2 - 67, 0x8000000252E984F0, 0xD00000000000007ELL, 0x8000000252E98410);
      v218 = v241;
      v219 = v242;
      v220 = v243;
      v221 = v244;
      v226 = v238;
      v227 = v239;
      *v228 = v240[0];
      v223 = v235;
      v224 = v236;
      v222 = v195;
      v225 = v237;
      *&v228[15] = *(v240 + 15);
      v229 = v196;
      v230 = v234;
      v231 = v197;
      memcpy(v232, v233, sizeof(v232));
      *(&v215 + 1) = sub_252E0AF28(v8, &v218);

      if (qword_27F53F920 != -1)
      {
        swift_once();
      }

      v55 = sub_252C76E88();
      v56 = v55;
      v57 = v55 + 56;
      v58 = 1 << *(v55 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v2 = v59 & *(v55 + 56);
      v17 = (v58 + 63) >> 6;

      v60 = 0;
      v61 = v197;
      while (v2)
      {
        v62 = v60;
LABEL_89:
        v63 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
        v64 = *(*(v56 + 48) + (v63 | (v62 << 6)));

        v8 = sub_2529A78B0(v64, v61);

        if (v8)
        {

          v65 = 1;
          goto LABEL_95;
        }
      }

      while (1)
      {
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_269;
        }

        if (v62 >= v17)
        {
          break;
        }

        v2 = *(v57 + 8 * v62);
        ++v60;
        if (v2)
        {
          v60 = v62;
          goto LABEL_89;
        }
      }

      if (v195 == 4)
      {
        v65 = 0;
      }

      else
      {
        v65 = sub_252A0CE08(v195, 2u);
      }

LABEL_95:
      v66 = v197;
      v67 = sub_2529A78B0(56, v197);
      v68 = sub_2529A78B0(0, v66);
      v69 = *(v193 + 16);
      v198 = v193 + 16;
      v194 = v69;
      (v69)(v190, v200, v211);
      *&v218 = 0;
      *(&v218 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v210 = 0xD000000000000040;
      MEMORY[0x2530AD570]();
      LODWORD(v215) = v67;
      if (v67)
      {
        v70 = 1702195828;
      }

      else
      {
        v70 = 0x65736C6166;
      }

      v71 = 0xE500000000000000;
      if (v67)
      {
        v72 = 0xE400000000000000;
      }

      else
      {
        v72 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v70, v72);

      MEMORY[0x2530AD570](0x726174732F6E6F0ALL, 0xEB00000000203F74);
      LODWORD(v214) = v68;
      if (v68)
      {
        v73 = 1702195828;
      }

      else
      {
        v73 = 0x65736C6166;
      }

      if (v68)
      {
        v74 = 0xE400000000000000;
      }

      else
      {
        v74 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v73, v74);

      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E98580);
      if (v65)
      {
        v75 = 1702195828;
      }

      else
      {
        v75 = 0x65736C6166;
      }

      if (v65)
      {
        v76 = 0xE400000000000000;
      }

      else
      {
        v76 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v75, v76);

      MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E985A0);
      v53 = *(&v215 + 1);
      if (*(&v215 + 1) >> 62)
      {
        v77 = sub_252E378C4();
      }

      else
      {
        v77 = *((*(&v215 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v78 = MEMORY[0x277D84F90];
      v213 = (v53 >> 62);
      if (!v77)
      {
        v80 = MEMORY[0x277D84F90];
        goto LABEL_126;
      }

      LODWORD(v212) = v65;
      v216 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v77 & ~(v77 >> 63), 0);
      if ((v77 & 0x8000000000000000) == 0)
      {
        v79 = 0;
        v80 = v216;
        v81 = v53 & 0xC000000000000001;
        do
        {
          if (v81)
          {
            MEMORY[0x2530ADF00](v79, *(&v215 + 1));
          }

          else
          {
          }

          v82 = sub_252D69924();
          v84 = v83;

          v216 = v80;
          v86 = *(v80 + 16);
          v85 = *(v80 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_2529AA3A0((v85 > 1), v86 + 1, 1);
            v80 = v216;
          }

          ++v79;
          *(v80 + 16) = v86 + 1;
          v87 = v80 + 16 * v86;
          *(v87 + 32) = v82;
          *(v87 + 40) = v84;
        }

        while (v77 != v79);
        v53 = *(&v215 + 1);
        v65 = v212;
        v78 = MEMORY[0x277D84F90];
LABEL_126:
        v88 = MEMORY[0x2530AD730](v80, MEMORY[0x277D837D0]);
        v90 = v89;

        v2 = &v218;
        MEMORY[0x2530AD570](v88, v90);

        v91 = v190;
        sub_252CC3D90(v218, *(&v218 + 1), 0xD00000000000007ELL, v199 | 0x8000000000000000);

        v8 = *(v193 + 8);
        v92 = v91;
        v93 = v211;
        v193 += 8;
        (v8)(v92, v211);
        if ((v65 | v215 | v214))
        {
          v191 = v8;
          v218 = v241;
          v219 = v242;
          v220 = v243;
          v221 = v244;
          v226 = v238;
          v227 = v239;
          *v228 = v240[0];
          v223 = v235;
          v224 = v236;
          v222 = v195;
          v225 = v237;
          *&v228[15] = *(v240 + 15);
          v229 = v196;
          v230 = v234;
          v231 = v197;
          memcpy(v232, v233, sizeof(v232));
          v53 = sub_252E0CBE8(v53, &v218);
          (v194)(v189, v200, v93);
          v2 = 0xD00000000000007ELL;
          *&v218 = 0xD00000000000001ELL;
          *(&v218 + 1) = 0x8000000252E98660;
          v17 = *(v53 + 16);
          if (v17)
          {
            v94 = 0;
            v95 = MEMORY[0x277D84F90];
            while (v94 < *(v53 + 16))
            {
              v96 = 0xE400000000000000;
              v97 = 1869903201;
              switch(*(v53 + 32 + 8 * v94))
              {
                case 0:
                  v96 = 0xE700000000000000;
                  v97 = 0x6E776F6E6B6E75;
                  break;
                case 1:
                  v96 = 0xE600000000000000;
                  v97 = 0x6D7575636176;
                  break;
                case 2:
                  v96 = 0xE300000000000000;
                  v97 = 7368557;
                  break;
                case 3:
                  v96 = 0xE800000000000000;
                  v97 = 0x6E6F697461636176;
                  break;
                case 4:
                  v97 = 0x61656C4370656564;
                  v96 = 0xE90000000000006ELL;
                  break;
                case 5:
                  break;
                case 6:
                  v96 = 0xE500000000000000;
                  v97 = 0x6B63697571;
                  break;
                case 7:
                  v96 = 0xE500000000000000;
                  v97 = 0x7465697571;
                  break;
                case 8:
                  v96 = 0xE300000000000000;
                  v97 = 7889261;
                  break;
                case 9:
                  v97 = 1701736302;
                  break;
                case 0xALL:
                  v96 = 0xE900000000000079;
                  v97 = 0x6772656E45776F6CLL;
                  break;
                case 0xBLL:
                  v96 = 0xE500000000000000;
                  v97 = 0x746867696ELL;
                  break;
                case 0xCLL:
                  v96 = 0xE300000000000000;
                  v97 = 7954788;
                  break;
                case 0xDLL:
                  v96 = 0xE300000000000000;
                  v97 = 7235949;
                  break;
                case 0xELL:
                  v96 = 0xE500000000000000;
                  v97 = 0x7465736E75;
                  break;
                case 0xFLL:
                  v96 = 0xE800000000000000;
                  v97 = 0x6573696F4E776F6CLL;
                  break;
                default:
                  v216 = *(v53 + 32 + 8 * v94);
                  goto LABEL_286;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v95 = sub_2529F7A80(0, *(v95 + 2) + 1, 1, v95);
              }

              v99 = *(v95 + 2);
              v98 = *(v95 + 3);
              v8 = v99 + 1;
              if (v99 >= v98 >> 1)
              {
                v95 = sub_2529F7A80((v98 > 1), v99 + 1, 1, v95);
              }

              ++v94;
              *(v95 + 2) = v8;
              v100 = &v95[16 * v99];
              *(v100 + 4) = v97;
              *(v100 + 5) = v96;
              v2 = 0xD00000000000007ELL;
              if (v17 == v94)
              {
                goto LABEL_214;
              }
            }

            goto LABEL_274;
          }

          v95 = MEMORY[0x277D84F90];
LABEL_214:
          v133 = MEMORY[0x2530AD730](v95, MEMORY[0x277D837D0]);
          v135 = v134;

          MEMORY[0x2530AD570](v133, v135);

          v136 = v189;
          sub_252CC3D90(v218, *(&v218 + 1), 0xD00000000000007ELL, v199 | 0x8000000000000000);

          (v191)(v136, v211);
          goto LABEL_248;
        }

        v208 = sub_252E0CD80(v197);
        if (!v208)
        {
          v2 = 0xD00000000000007ELL;
          sub_252CC4050(v210, 0x8000000252E985D0, 0xD00000000000007ELL, v199 | 0x8000000000000000, 0xD000000000000017, 0x8000000252E98620, 86);
          v53 = MEMORY[0x277D84F90];
          goto LABEL_248;
        }

        v191 = v8;
        *&v218 = v78;
        v17 = 0xD00000000000007ELL;
        if (v213)
        {
          v101 = sub_252E378C4();
          if (v101)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v101 = *((*(&v215 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v101)
          {
LABEL_155:
            v8 = 0;
            v204 = *(&v215 + 1) & 0xFFFFFFFFFFFFFF8;
            v205 = *(&v215 + 1) & 0xC000000000000001;
            v202 = v101;
            v203 = *(&v215 + 1) + 32;
            v206 = (v208 + 32);
            while (1)
            {
              if (v205)
              {
                v102 = MEMORY[0x2530ADF00](v8, *(&v215 + 1));
                v28 = __OFADD__(v8++, 1);
                if (v28)
                {
                  goto LABEL_276;
                }
              }

              else
              {
                if (v8 >= *(v204 + 16))
                {
                  goto LABEL_277;
                }

                v102 = *(v203 + 8 * v8);

                v28 = __OFADD__(v8++, 1);
                if (v28)
                {
                  goto LABEL_276;
                }
              }

              if (qword_27F53F320 != -1)
              {
                swift_once();
              }

              v209 = v102;
              v210 = v8;
              sub_252E37604();
              if (qword_27F542D48)
              {
                v103 = qword_27F542D48;
              }

              else
              {
                v104 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
                v105 = qword_27F542D48;
                qword_27F542D48 = v104;
                v103 = v104;
              }

              sub_252E37614();
              v106 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
              swift_beginAccess();
              v107 = *&v103[v106];
              if (v107 >> 62)
              {
                v113 = sub_252E378C4();

                if (!v113)
                {
LABEL_177:
                  v112 = MEMORY[0x277D84F98];
                  v8 = v210;
                  goto LABEL_178;
                }
              }

              else
              {
                v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (!v108)
                {
                  goto LABEL_177;
                }
              }

              sub_252E37604();
              if (qword_27F542D48)
              {
                v109 = qword_27F542D48;
              }

              else
              {
                v110 = [objc_allocWithZone(type metadata accessor for MatterAccessoryManager()) init];
                v111 = qword_27F542D48;
                qword_27F542D48 = v110;
                v109 = v110;
              }

              sub_252E37614();
              v112 = sub_252AC0884(v209);

              v8 = v210;
              if (!v112)
              {
                v112 = sub_252CC479C(MEMORY[0x277D84F90]);
              }

LABEL_178:
              if (*(v112 + 16) && (v114 = sub_252A488EC(), (v115 & 1) != 0))
              {
                v8 = *(*(v112 + 56) + 8 * v114);

                v201 = v8;
                if (v8 >> 62)
                {
                  v116 = sub_252E378C4();
                  if (v116)
                  {
LABEL_182:
                    v117 = 0;
                    v213 = (v201 & 0xFFFFFFFFFFFFFF8);
                    v214 = v201 & 0xC000000000000001;
                    v212 = (v201 + 32);
                    v207 = v116;
                    while (1)
                    {
LABEL_184:
                      if (v214)
                      {
                        v118 = MEMORY[0x2530ADF00](v117, v201);
                      }

                      else
                      {
                        if (v117 >= *(v213 + 2))
                        {
                          goto LABEL_273;
                        }

                        v118 = *&v212[8 * v117];
                      }

                      v8 = v118;
                      v28 = __OFADD__(v117++, 1);
                      if (v28)
                      {
                        goto LABEL_272;
                      }

                      v119 = [v118 cleaningJob];
                      if (v119)
                      {
                        break;
                      }

                      if (v117 == v116)
                      {
                        goto LABEL_212;
                      }
                    }

                    v120 = v119;
                    *&v215 = v8;
                    v2 = *(v208 + 16);
                    if (v2)
                    {
                      v121 = v206;
                      v122 = MEMORY[0x277D84F90];
                      do
                      {
                        v126 = *v121++;
                        v125 = v126;
                        if (v126 != 14)
                        {
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v217 = v122;
                          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                          {
                            sub_2529AA460(0, *(v122 + 16) + 1, 1);
                            v122 = v217;
                          }

                          v124 = *(v122 + 16);
                          v123 = *(v122 + 24);
                          if (v124 >= v123 >> 1)
                          {
                            sub_2529AA460((v123 > 1), v124 + 1, 1);
                            v122 = v217;
                          }

                          *(v122 + 16) = v124 + 1;
                          *(v122 + 8 * v124 + 32) = v125;
                        }

                        --v2;
                      }

                      while (v2);
                    }

                    else
                    {
                      v122 = MEMORY[0x277D84F90];
                    }

                    v8 = *(v122 + 16);
                    if (!v8)
                    {
LABEL_210:

                      sub_252E37A94();
                      sub_252E37AC4();
                      sub_252E37AD4();
                      sub_252E37AA4();
                      v17 = 0xD00000000000007ELL;
                      v8 = v210;
                      goto LABEL_157;
                    }

                    v17 = 0;
                    while (2)
                    {
                      if (v17 < *(v122 + 16))
                      {
                        v128 = *(v122 + 32 + 8 * v17++);
                        v2 = [v120 cleanModes];
                        v129 = sub_252E37264();

                        v130 = *(v129 + 16);
                        v131 = 32;
                        do
                        {
                          if (!v130)
                          {

                            v17 = 0xD00000000000007ELL;
                            v116 = v207;
                            if (v117 == v207)
                            {
                              goto LABEL_212;
                            }

                            goto LABEL_184;
                          }

                          v132 = *(v129 + v131);
                          v131 += 8;
                          --v130;
                        }

                        while (v132 != v128);

                        if (v17 != v8)
                        {
                          continue;
                        }

                        goto LABEL_210;
                      }

                      break;
                    }

LABEL_271:
                    __break(1u);
LABEL_272:
                    __break(1u);
LABEL_273:
                    __break(1u);
LABEL_274:
                    __break(1u);
LABEL_275:
                    __break(1u);
LABEL_276:
                    __break(1u);
LABEL_277:
                    __break(1u);
LABEL_278:
                    __break(1u);
LABEL_279:
                    v25 = sub_252E378C4();
                    goto LABEL_5;
                  }
                }

                else
                {
                  v116 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v116)
                  {
                    goto LABEL_182;
                  }
                }

LABEL_212:

                v8 = v210;
              }

              else
              {
              }

LABEL_157:
              if (v8 == v202)
              {
                goto LABEL_218;
              }
            }
          }
        }

        v137 = MEMORY[0x277D84F90];
        goto LABEL_221;
      }

      __break(1u);
      goto LABEL_283;
    }
  }

  v8 = 0;
  while ((v36 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x2530ADF00](v8, v36);
    v39 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_216;
    }

LABEL_19:

    sub_252E36744();

    if (*(&v218 + 1))
    {
      if (v218 == v215)
      {

LABEL_31:

        v42 = sub_252BF8258();
        v2 = 0xD00000000000007ELL;
        v26 = v214;
        if (!v42)
        {
          goto LABEL_37;
        }

        if (!*(v42 + 2))
        {

LABEL_37:
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v211, qword_27F544CB8);
          *&v218 = 0;
          *(&v218 + 1) = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000036, v194 | 0x8000000000000000);
          MEMORY[0x2530AD570](v215, *(&v215 + 1));

          MEMORY[0x2530AD570](0xD00000000000001FLL, v203 | 0x8000000000000000);
          sub_252CC4050(v218, *(&v218 + 1), 0xD000000000000075, v202 | 0x8000000000000000, 1701869940, 0xE400000000000000, 102);

          goto LABEL_40;
        }

        v43 = v42;

        if (!*(v43 + 2))
        {
          goto LABEL_278;
        }

        v44 = *(v43 + 4);

        if (v44 != 46)
        {

          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v38 = sub_252E37DB4();

      if (v38)
      {

        goto LABEL_31;
      }
    }

    ++v8;
    if (v39 == v37)
    {
      goto LABEL_25;
    }
  }

  if (v8 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_217;
  }

  v17 = *(v36 + 8 * v8 + 32);

  v39 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_19;
  }

LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  v137 = v218;
LABEL_221:

  v218 = v241;
  v219 = v242;
  v220 = v243;
  v221 = v244;
  v226 = v238;
  v227 = v239;
  *v228 = v240[0];
  v223 = v235;
  v224 = v236;
  v222 = v195;
  v225 = v237;
  *&v228[15] = *(v240 + 15);
  v229 = v196;
  v230 = v234;
  v231 = v197;
  memcpy(v232, v233, sizeof(v232));
  *(&v215 + 1) = v137;
  v53 = sub_252E0CFA4(v137, v208, &v218);

  (v194)(v188, v200, v211);
  *&v218 = v17 - 96;
  *(&v218 + 1) = 0x8000000252E98640;
  v138 = *(v53 + 16);
  if (v138)
  {
    v2 = 0;
    v139 = MEMORY[0x277D84F90];
    while (2)
    {
      if (v2 < *(v53 + 16))
      {
        v140 = 0xE400000000000000;
        v141 = 1869903201;
        switch(*(v53 + 32 + 8 * v2))
        {
          case 0:
            v140 = 0xE700000000000000;
            v141 = 0x6E776F6E6B6E75;
            goto LABEL_240;
          case 1:
            v140 = 0xE600000000000000;
            v141 = 0x6D7575636176;
            goto LABEL_240;
          case 2:
            v140 = 0xE300000000000000;
            v141 = 7368557;
            goto LABEL_240;
          case 3:
            v140 = 0xE800000000000000;
            v141 = 0x6E6F697461636176;
            goto LABEL_240;
          case 4:
            v141 = 0x61656C4370656564;
            v140 = 0xE90000000000006ELL;
            goto LABEL_240;
          case 5:
            goto LABEL_240;
          case 6:
            v140 = 0xE500000000000000;
            v141 = 0x6B63697571;
            goto LABEL_240;
          case 7:
            v140 = 0xE500000000000000;
            v141 = 0x7465697571;
            goto LABEL_240;
          case 8:
            v140 = 0xE300000000000000;
            v141 = 7889261;
            goto LABEL_240;
          case 9:
            v141 = 1701736302;
            goto LABEL_240;
          case 0xALL:
            v140 = 0xE900000000000079;
            v141 = 0x6772656E45776F6CLL;
            goto LABEL_240;
          case 0xBLL:
            v140 = 0xE500000000000000;
            v141 = 0x746867696ELL;
            goto LABEL_240;
          case 0xCLL:
            v140 = 0xE300000000000000;
            v141 = 7954788;
            goto LABEL_240;
          case 0xDLL:
            v140 = 0xE300000000000000;
            v141 = 7235949;
            goto LABEL_240;
          case 0xELL:
            v140 = 0xE500000000000000;
            v141 = 0x7465736E75;
            goto LABEL_240;
          case 0xFLL:
            v140 = 0xE800000000000000;
            v141 = 0x6573696F4E776F6CLL;
LABEL_240:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v139 = sub_2529F7A80(0, *(v139 + 2) + 1, 1, v139);
            }

            v8 = *(v139 + 2);
            v142 = *(v139 + 3);
            v17 = v8 + 1;
            if (v8 >= v142 >> 1)
            {
              v139 = sub_2529F7A80((v142 > 1), v8 + 1, 1, v139);
            }

            ++v2;
            *(v139 + 2) = v17;
            v143 = &v139[16 * v8];
            *(v143 + 4) = v141;
            *(v143 + 5) = v140;
            if (v138 == v2)
            {
              goto LABEL_247;
            }

            continue;
          default:
            v217 = *(v53 + 32 + 8 * v2);
LABEL_286:
            result = sub_252E37DF4();
            __break(1u);
            return result;
        }
      }

      goto LABEL_275;
    }
  }

  v139 = MEMORY[0x277D84F90];
LABEL_247:
  v144 = MEMORY[0x2530AD730](v139, MEMORY[0x277D837D0]);
  v146 = v145;

  MEMORY[0x2530AD570](v144, v146);

  v147 = v188;
  sub_252CC3D90(v218, *(&v218 + 1), 0xD00000000000007ELL, v199 | 0x8000000000000000);

  (v191)(v147, v211);
  v2 = 0xD00000000000007ELL;
LABEL_248:
  v218 = v241;
  v219 = v242;
  v220 = v243;
  v221 = v244;
  v226 = v238;
  v227 = v239;
  *v228 = v240[0];
  v223 = v235;
  v224 = v236;
  v148 = v195;
  v222 = v195;
  v225 = v237;
  v150 = v196;
  v149 = v197;
  *&v228[15] = *(v240 + 15);
  v229 = v196;
  v230 = v234;
  v231 = v197;
  memcpy(v232, v233, sizeof(v232));
  v151 = sub_252E09BA8(&v218);
  v218 = v241;
  v219 = v242;
  v220 = v243;
  v221 = v244;
  v226 = v238;
  v227 = v239;
  *v228 = v240[0];
  v223 = v235;
  v224 = v236;
  v222 = v148;
  v225 = v237;
  *&v228[15] = *(v240 + 15);
  v229 = v150;
  v230 = v234;
  v231 = v149;
  memcpy(v232, v233, sizeof(v232));
  v71 = sub_252E09F40(&v218);
  if (!*(v151 + 2))
  {

    if (!*(v71 + 2))
    {

      v76 = 0;
      goto LABEL_256;
    }

    v77 = sub_252E10290(*(&v215 + 1), v71);

    v158 = qword_27F53F4B0;
    v76 = v77;
    if (v158 == -1)
    {
LABEL_254:
      __swift_project_value_buffer(v211, qword_27F544CB8);
      v159 = v187;
      *&v218 = v187;
      *(&v218 + 1) = 0x8000000252E984B0;
      v160 = MEMORY[0x2530AD730](v71, MEMORY[0x277D837D0]);
      v162 = v161;

      MEMORY[0x2530AD570](v160, v162);

      MEMORY[0x2530AD570](v159, 0x8000000252E984D0);
      v217 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545A20, &unk_252E5DE50);
      v163 = sub_252E36F94();
      MEMORY[0x2530AD570](v163);

      sub_252CC3D90(v218, *(&v218 + 1), 0xD00000000000007ELL, 0x8000000252E98410);

      goto LABEL_256;
    }

LABEL_283:
    swift_once();
    goto LABEL_254;
  }

  v218 = v241;
  v219 = v242;
  v220 = v243;
  v221 = v244;
  v226 = v238;
  v227 = v239;
  *v228 = v240[0];
  v223 = v235;
  v224 = v236;
  v222 = v148;
  v225 = v237;
  *&v228[15] = *(v240 + 15);
  v229 = v150;
  v230 = v234;
  v231 = v149;
  memcpy(v232, v233, sizeof(v232));
  v152 = sub_252E0E100(*(&v215 + 1), v151, v71, &v218);

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v211, qword_27F544CB8);
  *&v218 = v2 - 104;
  *(&v218 + 1) = 0x8000000252E983D0;
  v153 = MEMORY[0x2530AD730](v151, MEMORY[0x277D837D0]);
  v155 = v154;

  MEMORY[0x2530AD570](v153, v155);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E983F0);
  v156 = type metadata accessor for HomeAttributeTargetArea();
  v157 = MEMORY[0x2530AD730](v152, v156);
  MEMORY[0x2530AD570](v157);

  sub_252CC3D90(v218, *(&v218 + 1), 0xD00000000000007ELL, 0x8000000252E98410);

  v76 = 0;
LABEL_256:
  v164 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
  v165 = v76;
  v166 = sub_252E36F04();
  v167 = &off_279711000;
  v168 = [v164 initWithIdentifier:0 displayString:v166];

  v169 = v168;
  [v169 setRunState_];
  v170 = *(v53 + 16);
  if (v170)
  {
    *(&v215 + 1) = v165;
    *&v218 = MEMORY[0x277D84F90];
    sub_2529AA3C0(0, v170, 0);
    v171 = v218;
    v172 = *(v218 + 16);
    v173 = 32;
    do
    {
      v174 = *(v53 + v173);
      *&v218 = v171;
      v175 = *(v171 + 24);
      if (v172 >= v175 >> 1)
      {
        sub_2529AA3C0((v175 > 1), v172 + 1, 1);
        v171 = v218;
      }

      *(v171 + 16) = v172 + 1;
      *(v171 + 8 * v172 + 32) = v174;
      v173 += 8;
      ++v172;
      --v170;
    }

    while (v170);

    v165 = *(&v215 + 1);
    v167 = &off_279711000;
  }

  else
  {
  }

  v176 = sub_252E37254();

  [v169 setCleanModes_];

  type metadata accessor for HomeAttributeTargetArea();
  v177 = sub_252E37254();

  [v169 setTargetAreas_];

  [v169 setTargetMap_];
  v178 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v179 = sub_252E36F04();
  v180 = [v178 v167[226]];

  v50 = v180;
  [v50 setType_];
  [v50 setCleaningJob_];

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v211, qword_27F544CB8);
  *&v218 = 0xD00000000000001FLL;
  *(&v218 + 1) = 0x8000000252E98490;
  v181 = [v50 description];
  v182 = sub_252E36F34();
  v184 = v183;

  MEMORY[0x2530AD570](v182, v184);

  sub_252CC3D90(v218, *(&v218 + 1), 0xD00000000000007ELL, 0x8000000252E98410);

  return v50;
}

uint64_t sub_252D5D644(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 == 2)
    {
      return 1;
    }
  }

  result = [a1 userTask];
  if (result)
  {
    v6 = result;
    v7 = [result taskType];

    return v7 == 3;
  }

  return result;
}

id sub_252D5D6E8(void *a1, const void *a2)
{
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252D5DAD8(a1, a2);
  v9 = [a1 userTask];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v11 = sub_252D6CA80(v10);
    type metadata accessor for MutableAttributeValue();
    swift_allocObject();

    v12 = sub_252D6CC80(v8);
    swift_beginAccess();
    v11[4] = v12;
  }

  else
  {
    v11 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27F544DA8);
  (*(v5 + 16))(v7, v13, v4);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_252E379F4();
  v28 = v25;
  v29 = v26;
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E988D0);
  if (v11)
  {
    swift_beginAccess();
  }

  else
  {
    v14 = 0;
  }

  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v15 = sub_252E36F94();
  MEMORY[0x2530AD570](v15);

  sub_252CC3D90(v28, v29, 0xD000000000000094, 0x8000000252E987C0);

  (*(v5 + 8))(v7, v4);
  if (v11)
  {

    v16 = sub_252D6CB58();
  }

  else
  {
    v16 = 0;
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

  v20 = [a1 time];
  v21 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v21 setUserTask_];
  if (v19)
  {
    type metadata accessor for HomeFilter();
    v22 = sub_252E37254();
  }

  else
  {
    v22 = 0;
  }

  [v21 setFilters_];

  [v21 setTime_];

  return v21;
}

id sub_252D5DAD8(void *a1, const void *a2)
{
  v3 = v2;
  v6 = [a1 userTask];
  if (!v6)
  {
    sub_252C515AC();
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v6 attribute];

  if (v8 != 6)
  {
LABEL_13:
    memcpy(__dst, a2, sizeof(__dst));
    if (sub_252956B94(__dst) == 1 || BYTE1(__dst[3]) == 3)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544DA8);
      sub_252CC3D90(0xD000000000000041, 0x8000000252E98770, 0xD000000000000094, 0x8000000252E987C0);
    }

    else
    {
      if (!BYTE1(__dst[3]))
      {
        v9 = 0;
        v12 = v3[3];
        goto LABEL_26;
      }

      if (BYTE1(__dst[3]) != 1)
      {
        v9 = 0;
        v12 = v3[4];
        goto LABEL_26;
      }
    }

    v9 = 0;
    v12 = v3[2];
    goto LABEL_26;
  }

  v9 = sub_252C6E240(a1);
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_252956B94(__dst) == 1 || BYTE1(__dst[3]) == 3)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E98880, 0xD000000000000094, 0x8000000252E987C0);
    v12 = 1.0;
  }

  else
  {
    v10 = 3.0;
    v11 = 5.0;
    if (v9 != 2)
    {
      v11 = 3.0;
      v10 = 2.0;
    }

    if (BYTE1(__dst[3]) != 1)
    {
      v10 = 1.0;
    }

    if (BYTE1(__dst[3]))
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }
  }

LABEL_26:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544DA8);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E98860;
  v16 = sub_252E37364();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](0x6E75206874697720, 0xEB00000000207469);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000094, 0x8000000252E987C0);

  v18 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:{v19, v9}];

  v21 = v20;
  [v21 setDoubleValue_];
  [v21 setUnit_];
  [v21 setType_];

  return v21;
}

uint64_t sub_252D5DEE4(void *a1)
{
  if (sub_252CCFCB8())
  {
    return 0;
  }

  return sub_252D5D644(a1);
}

double sub_252D5DF58@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultDeltaValueHandler();
  v2 = swift_allocObject();
  result = 25.0;
  *(v2 + 16) = xmmword_252E5DE60;
  *(v2 + 32) = 0x4024000000000000;
  *a1 = v2;
  return result;
}

uint64_t sub_252D5DFA0()
{
  result = sub_2529FF448(&unk_2864A9AF0);
  qword_27F545A28 = result;
  return result;
}

uint64_t sub_252D5DFC8()
{
  v0 = sub_252C76454(&unk_2864A9B50);
  if (qword_27F53F700 != -1)
  {
    swift_once();
  }

  result = sub_2529F26F8(v1, v0);
  qword_27F545A30 = result;
  return result;
}

uint64_t sub_252D5E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[266] = v3;
  v4[265] = a3;
  v4[264] = a2;
  v4[263] = a1;
  v5 = sub_252E34014();
  v4[267] = v5;
  v4[268] = *(v5 - 8);
  v4[269] = swift_task_alloc();
  v4[270] = swift_task_alloc();
  v4[271] = swift_task_alloc();
  v4[272] = swift_task_alloc();
  v4[273] = swift_task_alloc();
  v4[274] = swift_task_alloc();
  v4[275] = swift_task_alloc();
  v4[276] = swift_task_alloc();
  v4[277] = swift_task_alloc();
  v4[278] = swift_task_alloc();
  v4[279] = swift_task_alloc();
  v4[280] = swift_task_alloc();
  v4[281] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D5E19C, 0, 0);
}

uint64_t sub_252D5E19C()
{
  v152 = v0;
  v1 = [*(v0 + 2112) userTask];
  *(v0 + 2256) = v1;
  if (!v1)
  {
    if (qword_27F53F4D0 != -1)
    {
LABEL_151:
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D18);
    sub_252CC4050(0xD000000000000027, 0x8000000252E98960, 0xD00000000000009BLL, 0x8000000252E98990, 0xD00000000000001FLL, 0x8000000252E84990, 44);
    sub_2529318DC();
    swift_allocError();
    *v13 = 8;
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v148 = v0;
  v145 = *(v0 + 2120);
  if (!v145)
  {
    goto LABEL_65;
  }

  v4 = sub_252C285F0();
  v5 = v4;
  __dst[0] = v3;
  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v7 = MEMORY[0x277D84F90];
    v146 = v2;
    if (i)
    {
      v8 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_252DA55BC([v2 attribute]);

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v2 = v146;
        }

        sub_252E372D4();
        ++v8;
        if (v11 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_20:

    v16 = sub_252C285F0();
    v17 = v16;
    __dst[0] = v7;
    if (v16 >> 62)
    {
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x277D84F90];
    if (v5)
    {
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2530ADF00](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        sub_252DA55BC([v2 attribute]);

        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v2 = v146;
        }

        sub_252E372D4();
        ++v19;
        if (v22 == v5)
        {
          v5 = __dst[0];
          goto LABEL_34;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_34:

    __dst[0] = v18;
    if (!(v5 >> 62))
    {
      v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        break;
      }

      goto LABEL_36;
    }

    v23 = sub_252E378C4();
    if (!v23)
    {
      break;
    }

LABEL_36:
    v24 = 0;
    v25 = *(v148 + 2128);
    v3 = MEMORY[0x277D84F90];
LABEL_37:
    v144 = v3;
    v26 = v24;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x2530ADF00](v26, v5);
      }

      else
      {
        if (v26 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v27 = *(v5 + 8 * v26 + 32);
      }

      v28 = v27;
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      sub_252DA49A4();
      v30 = v29;
      memcpy((v148 + 1024), (v25 + 112), 0x1F8uLL);
      if (sub_252956B94((v148 + 1024)) == 1 || (v31 = *(v148 + 1224), !*(v31 + 16)))
      {
        v32 = 4;
      }

      else
      {
        v32 = *(v31 + 32);
      }

      sub_252C3AC5C(v32);
      v34 = v33;

      v35 = sub_252DA124C(0);
      if (v35)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = __dst[0];
        v2 = v146;
        if (v24 != v23)
        {
          goto LABEL_37;
        }

        goto LABEL_64;
      }

      ++v26;
      v2 = v146;
      if (v24 == v23)
      {
        v3 = v144;
        goto LABEL_64;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_64:

  v0 = v148;
LABEL_65:
  *(v0 + 2264) = v3;
  v36 = *(v0 + 2128);
  v37 = *(v0 + 2112);
  memcpy((v0 + 16), (v36 + 112), 0x1F8uLL);
  memcpy(__dst, (v36 + 112), 0x1F8uLL);
  v38 = v37;
  sub_2529D291C(v0 + 16, v0 + 520);
  v39 = sub_252953488(v37, __dst, 0);
  *(v0 + 2272) = v39;

  v40 = [v2 attribute];
  if (v40 <= 27)
  {
    v41 = v145;
    if (v40 == 6)
    {
      v67 = *(v0 + 2128);
      v68 = swift_allocObject();
      *(v0 + 2280) = v68;
      v68[2] = v67;
      v68[3] = v3;
      v68[4] = v39;

      if (!v145)
      {

        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v105 = *(v0 + 2128);
        v106 = sub_252E36AD4();
        __swift_project_value_buffer(v106, qword_27F544D18);
        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v107 = v105[12];
        v108 = v105[13];
        __swift_project_boxed_opaque_existential_1(v105 + 9, v107);
        sub_252AD7CC4();
        v109 = swift_task_alloc();
        *(v0 + 2336) = v109;
        *v109 = v0;
        v109[1] = sub_252D5FD38;
        v98 = *(v0 + 2248);
        v154 = v108;
        v99 = &unk_252E5DFB8;
        v100 = v0 + 1968;
        goto LABEL_170;
      }

      v69 = *(v67 + 48);
      v70 = *(v0 + 2120);
      v71 = *__swift_project_boxed_opaque_existential_1((v67 + 24), v69);
      v150 = sub_252C10E14;

      v72 = swift_task_alloc();
      *(v0 + 2288) = v72;
      *v72 = v0;
      v73 = sub_252D5F8F8;
      goto LABEL_101;
    }

    if (v40 != 7)
    {
LABEL_99:
      v74 = *(v0 + 2128);
      v68 = swift_allocObject();
      *(v0 + 2848) = v68;
      v68[2] = v74;
      v68[3] = v3;
      v68[4] = v39;

      if (!v41)
      {

        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v116 = *(v0 + 2128);
        v117 = sub_252E36AD4();
        __swift_project_value_buffer(v117, qword_27F544D18);
        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v107 = v116[12];
        v118 = v116[13];
        __swift_project_boxed_opaque_existential_1(v116 + 9, v107);
        sub_252AD7CC4();
        v119 = swift_task_alloc();
        *(v0 + 2904) = v119;
        *v119 = v0;
        v119[1] = sub_252D65974;
        v98 = *(v0 + 2160);
        v154 = v118;
        v99 = &unk_252E5DF38;
        v100 = v0 + 1528;
        goto LABEL_170;
      }

      v75 = *(v74 + 48);
      v76 = *(v0 + 2120);
      v71 = *__swift_project_boxed_opaque_existential_1((v74 + 24), v75);
      v150 = sub_252C11770;

      v72 = swift_task_alloc();
      *(v0 + 2856) = v72;
      *v72 = v0;
      v73 = sub_252D65534;
LABEL_101:
      v72[1] = v73;
      v77 = v71;
      v78 = v3;
      v79 = v39;
      v80 = v150;
      goto LABEL_164;
    }

    v51 = *(v0 + 2128);
    v52 = swift_allocObject();
    *(v0 + 2472) = v52;
    *(v52 + 16) = v51;
    *(v52 + 24) = v3;

    if (v145)
    {
      v53 = *(v51 + 48);
      v54 = *(v0 + 2120);
      v55 = *__swift_project_boxed_opaque_existential_1((v51 + 24), v53);
      v149 = sub_252C113F8;

      v56 = swift_task_alloc();
      *(v0 + 2480) = v56;
      *v56 = v0;
      v57 = sub_252D61938;
      goto LABEL_93;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v110 = *(v0 + 2128);
    v111 = sub_252E36AD4();
    __swift_project_value_buffer(v111, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v95 = v110[12];
    v112 = v110[13];
    __swift_project_boxed_opaque_existential_1(v110 + 9, v95);
    sub_252AD7CC4();
    v113 = swift_task_alloc();
    *(v0 + 2528) = v113;
    *v113 = v0;
    v113[1] = sub_252D61D48;
    v98 = *(v0 + 2216);
    v154 = v112;
    v99 = &unk_252E5DF88;
    v100 = v0 + 1808;
    goto LABEL_129;
  }

  v41 = v145;
  if (v40 == 28)
  {
    v58 = *(v0 + 2128);
    v52 = swift_allocObject();
    *(v0 + 2568) = v52;
    *(v52 + 16) = v58;
    *(v52 + 24) = v3;

    if (v145)
    {
      v59 = *(v58 + 48);
      v60 = *(v0 + 2120);
      v55 = *__swift_project_boxed_opaque_existential_1((v58 + 24), v59);
      v149 = sub_252C115B4;

      v56 = swift_task_alloc();
      *(v0 + 2576) = v56;
      *v56 = v0;
      v57 = sub_252D62940;
      goto LABEL_93;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v93 = *(v0 + 2128);
    v94 = sub_252E36AD4();
    __swift_project_value_buffer(v94, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v95 = v93[12];
    v96 = v93[13];
    __swift_project_boxed_opaque_existential_1(v93 + 9, v95);
    sub_252AD7CC4();
    v97 = swift_task_alloc();
    *(v0 + 2624) = v97;
    *v97 = v0;
    v97[1] = sub_252D62D50;
    v98 = *(v0 + 2200);
    v154 = v96;
    v99 = &unk_252E5DF70;
    v100 = v0 + 1728;
LABEL_129:
    v114 = v52;
    v115 = v95;
LABEL_171:

    return sub_252BDB88C(v100, v99, v114, v98, 0, 0, 0, v115);
  }

  if (v40 == 42)
  {
    v61 = *(v0 + 2128);
    v52 = swift_allocObject();
    *(v0 + 2376) = v52;
    *(v52 + 16) = v61;
    *(v52 + 24) = v3;

    if (v145)
    {
      v62 = *(v61 + 48);
      v63 = *(v0 + 2120);
      v55 = *__swift_project_boxed_opaque_existential_1((v61 + 24), v62);
      v149 = sub_252C11240;

      v56 = swift_task_alloc();
      *(v0 + 2384) = v56;
      *v56 = v0;
      v57 = sub_252D60930;
LABEL_93:
      v56[1] = v57;
      v64 = v55;
      v65 = v3;
      v66 = v149;
LABEL_94:

      return v66(0, v64, v65);
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v101 = *(v0 + 2128);
    v102 = sub_252E36AD4();
    __swift_project_value_buffer(v102, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v95 = v101[12];
    v103 = v101[13];
    __swift_project_boxed_opaque_existential_1(v101 + 9, v95);
    sub_252AD7CC4();
    v104 = swift_task_alloc();
    *(v0 + 2432) = v104;
    *v104 = v0;
    v104[1] = sub_252D60D40;
    v98 = *(v0 + 2232);
    v154 = v103;
    v99 = &unk_252E5DFA0;
    v100 = v0 + 1888;
    goto LABEL_129;
  }

  if (v40 != 55)
  {
    goto LABEL_99;
  }

  v42 = MEMORY[0x277D84F90];
  if (v145)
  {
    v147 = *(v148 + 2120);
    v43 = sub_252C285F0();
    v44 = v43;
    __dst[0] = v42;
    v0 = v43 & 0xFFFFFFFFFFFFFF8;
    if (v43 >> 62)
    {
      v45 = sub_252E378C4();
    }

    else
    {
      v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = 0;
LABEL_73:
    *(v148 + 2664) = v42;
    while (v45 != v46)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x2530ADF00](v46, v44);
      }

      else
      {
        if (v46 >= *(v0 + 16))
        {
          goto LABEL_150;
        }

        v47 = *(v44 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v50 = sub_252DA124C(0);

      ++v46;
      if (v50)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v42 = __dst[0];
        v46 = v49;
        goto LABEL_73;
      }
    }

    v81 = [v147 entityResponses];
    if (!v81)
    {
      goto LABEL_134;
    }

    v82 = v81;
    type metadata accessor for HomeEntityResponse();
    v83 = sub_252E37264();

    if (v83 >> 62)
    {
      goto LABEL_157;
    }

    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
      goto LABEL_105;
    }

LABEL_133:
    while (1)
    {

LABEL_134:
      v120 = [v147 entityResponses];
      if (!v120)
      {
        break;
      }

      v121 = v120;
      type metadata accessor for HomeEntityResponse();
      v83 = sub_252E37264();

      if (v83 >> 62)
      {
        v122 = sub_252E378C4();
        if (!v122)
        {
LABEL_160:

          break;
        }
      }

      else
      {
        v122 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v122)
        {
          goto LABEL_160;
        }
      }

      v123 = 0;
      while (1)
      {
        if ((v83 & 0xC000000000000001) != 0)
        {
          v124 = MEMORY[0x2530ADF00](v123, v83);
        }

        else
        {
          if (v123 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_156;
          }

          v124 = *(v83 + 32 + 8 * v123);
        }

        v125 = v124;
        v88 = __OFADD__(v123++, 1);
        if (v88)
        {
          break;
        }

        v126 = sub_252DA6828();
        v127 = *(v126 + 2);
        v128 = 32;
        while (v127)
        {
          v129 = *&v126[v128];
          v128 += 8;
          --v127;
          if (v129 == 28)
          {
            v130 = *(v148 + 2128);

            v131 = *(v130 + 48);

            v132 = v147;
            v133 = *__swift_project_boxed_opaque_existential_1((v130 + 24), v131);

            v134 = swift_task_alloc();
            *(v148 + 2672) = v134;
            *v134 = v148;
            v134[1] = sub_252D63948;
            v64 = v133;
            v65 = v42;
            v66 = sub_252C115B4;
            goto LABEL_94;
          }
        }

        if (v123 == v122)
        {
          goto LABEL_160;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        v84 = sub_252E378C4();
        if (!v84)
        {
          break;
        }

LABEL_105:
        v85 = 0;
        while (1)
        {
          if ((v83 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x2530ADF00](v85, v83);
          }

          else
          {
            if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_154;
            }

            v86 = *(v83 + 32 + 8 * v85);
          }

          v87 = v86;
          v88 = __OFADD__(v85++, 1);
          if (v88)
          {
            break;
          }

          v89 = sub_252DA6828();
          v90 = *(v89 + 2);
          v91 = 32;
          while (v90)
          {
            v92 = *&v89[v91];
            v91 += 8;
            --v90;
            if (v92 == 28)
            {

              goto LABEL_133;
            }
          }

          if (v85 == v84)
          {
            goto LABEL_133;
          }
        }

        __break(1u);
LABEL_154:
        __break(1u);
      }
    }

    v41 = v145;
  }

  *(v148 + 2744) = v42;
  v135 = *(v148 + 2128);
  v68 = swift_allocObject();
  *(v148 + 2752) = v68;
  v68[2] = v135;
  v68[3] = v42;
  v68[4] = v39;

  if (!v41)
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v140 = *(v148 + 2128);
    v141 = sub_252E36AD4();
    __swift_project_value_buffer(v141, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v107 = v140[12];
    v142 = v140[13];
    __swift_project_boxed_opaque_existential_1(v140 + 9, v107);
    sub_252AD7CC4();
    v143 = swift_task_alloc();
    *(v148 + 2808) = v143;
    *v143 = v148;
    v143[1] = sub_252D6493C;
    v98 = *(v148 + 2176);
    v154 = v142;
    v99 = &unk_252E5DF50;
    v100 = v148 + 1608;
LABEL_170:
    v114 = v68;
    v115 = v107;
    goto LABEL_171;
  }

  v136 = *(v135 + 48);
  v137 = *(v148 + 2120);
  v138 = *__swift_project_boxed_opaque_existential_1((v135 + 24), v136);

  v139 = swift_task_alloc();
  *(v148 + 2760) = v139;
  *v139 = v148;
  v139[1] = sub_252D644FC;
  v77 = v138;
  v78 = v42;
  v79 = v39;
  v80 = sub_252C11770;
LABEL_164:

  return v80(0, v77, v78, v79);
}

uint64_t sub_252D5F8F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[287] = a1;
  v3[288] = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D5FBF0, 0, 0);
  }

  else
  {
    v5 = v3[265];

    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[289] = v6;
    *v6 = v4;
    v6[1] = sub_252D5FAD8;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D5FAD8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2320) = a1;
  *(v3 + 2328) = v1;

  if (v1)
  {
    v4 = sub_252D5FFFC;
  }

  else
  {
    v4 = sub_252D5FEA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D5FBF0()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D5FD38()
{
  v2 = *v1;
  *(*v1 + 2344) = v0;

  (*(v2[268] + 8))(v2[281], v2[267]);
  if (v0)
  {
    v3 = sub_252D607F0;
  }

  else
  {
    v3 = sub_252D60614;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D5FEA0()
{
  v1 = v0 + 262;
  v2 = v0[290];
  v3 = v0[287];
  v0[262] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[294] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[295] = v11;
  *v11 = v0;
  v11[1] = sub_252D60150;
  v12 = v0[280];

  return sub_252BDB88C((v0 + 251), &unk_252E5DFC0, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D5FFFC()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D60150()
{
  v2 = *v1;
  *(*v1 + 2368) = v0;

  (*(v2[268] + 8))(v2[280], v2[267]);
  if (v0)
  {
    v3 = sub_252D604A4;
  }

  else
  {

    v3 = sub_252D602A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D602A8()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2320);
  v9 = *(v0 + 2296);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 2008, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2008));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D604A4()
{
  v1 = *(v0 + 2320);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D60614()
{
  v1 = v0[266];
  v2 = v0[264];
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

  (*(v4 + 112))(v7, v0 + 246, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 246);

  v8 = v0[282];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D607F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D60930(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[299] = a1;
  v3[300] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D60BF8, 0, 0);
  }

  else
  {
    v5 = v3[265];
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[301] = v6;
    *v6 = v4;
    v6[1] = sub_252D60AE0;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D60AE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2416) = a1;
  *(v3 + 2424) = v1;

  if (v1)
  {
    v4 = sub_252D61004;
  }

  else
  {
    v4 = sub_252D60EA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D60BF8()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D60D40()
{
  v2 = *v1;
  *(*v1 + 2440) = v0;

  (*(v2[268] + 8))(v2[279], v2[267]);
  if (v0)
  {
    v3 = sub_252D617F8;
  }

  else
  {
    v3 = sub_252D6161C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D60EA8()
{
  v1 = v0 + 261;
  v2 = v0[302];
  v3 = v0[299];
  v0[261] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[306] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[307] = v11;
  *v11 = v0;
  v11[1] = sub_252D61158;
  v12 = v0[278];

  return sub_252BDB88C((v0 + 241), &unk_252E5DFA8, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D61004()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D61158()
{
  v2 = *v1;
  *(*v1 + 2464) = v0;

  (*(v2[268] + 8))(v2[278], v2[267]);
  if (v0)
  {
    v3 = sub_252D614AC;
  }

  else
  {

    v3 = sub_252D612B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D612B0()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2416);
  v9 = *(v0 + 2392);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 1928, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1928));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D614AC()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D6161C()
{
  v1 = v0[266];
  v2 = v0[264];
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

  (*(v4 + 112))(v7, v0 + 236, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 236);

  v8 = v0[282];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D617F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D61938(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[311] = a1;
  v3[312] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D61C00, 0, 0);
  }

  else
  {
    v5 = v3[265];
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[313] = v6;
    *v6 = v4;
    v6[1] = sub_252D61AE8;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D61AE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2512) = a1;
  *(v3 + 2520) = v1;

  if (v1)
  {
    v4 = sub_252D6200C;
  }

  else
  {
    v4 = sub_252D61EB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D61C00()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D61D48()
{
  v2 = *v1;
  *(*v1 + 2536) = v0;

  (*(v2[268] + 8))(v2[277], v2[267]);
  if (v0)
  {
    v3 = sub_252D62800;
  }

  else
  {
    v3 = sub_252D62624;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D61EB0()
{
  v1 = v0 + 260;
  v2 = v0[314];
  v3 = v0[311];
  v0[260] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[318] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[319] = v11;
  *v11 = v0;
  v11[1] = sub_252D62160;
  v12 = v0[276];

  return sub_252BDB88C((v0 + 231), &unk_252E5DF90, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D6200C()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D62160()
{
  v2 = *v1;
  *(*v1 + 2560) = v0;

  (*(v2[268] + 8))(v2[276], v2[267]);
  if (v0)
  {
    v3 = sub_252D624B4;
  }

  else
  {

    v3 = sub_252D622B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D622B8()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2512);
  v9 = *(v0 + 2488);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 1848, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1848));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D624B4()
{
  v1 = *(v0 + 2512);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D62624()
{
  v1 = v0[266];
  v2 = v0[264];
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

  (*(v4 + 112))(v7, v0 + 226, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 226);

  v8 = v0[282];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D62800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D62940(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[323] = a1;
  v3[324] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D62C08, 0, 0);
  }

  else
  {
    v5 = v3[265];
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[325] = v6;
    *v6 = v4;
    v6[1] = sub_252D62AF0;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D62AF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2608) = a1;
  *(v3 + 2616) = v1;

  if (v1)
  {
    v4 = sub_252D63014;
  }

  else
  {
    v4 = sub_252D62EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D62C08()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D62D50()
{
  v2 = *v1;
  *(*v1 + 2632) = v0;

  (*(v2[268] + 8))(v2[275], v2[267]);
  if (v0)
  {
    v3 = sub_252D63808;
  }

  else
  {
    v3 = sub_252D6362C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D62EB8()
{
  v1 = v0 + 259;
  v2 = v0[326];
  v3 = v0[323];
  v0[259] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[330] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[331] = v11;
  *v11 = v0;
  v11[1] = sub_252D63168;
  v12 = v0[274];

  return sub_252BDB88C((v0 + 221), &unk_252E5DF78, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D63014()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D63168()
{
  v2 = *v1;
  *(*v1 + 2656) = v0;

  (*(v2[268] + 8))(v2[274], v2[267]);
  if (v0)
  {
    v3 = sub_252D634BC;
  }

  else
  {

    v3 = sub_252D632C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D632C0()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2608);
  v9 = *(v0 + 2584);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 1768, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1768));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D634BC()
{
  v1 = *(v0 + 2608);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D6362C()
{
  v1 = v0[266];
  v2 = v0[264];
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

  (*(v4 + 112))(v7, v0 + 216, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  v8 = v0[282];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D63808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D63948(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[335] = a1;
  v3[336] = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D63C10, 0, 0);
  }

  else
  {
    v5 = v3[265];
    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[337] = v6;
    *v6 = v4;
    v6[1] = sub_252D63AF8;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D63AF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2704) = a1;
  *(v3 + 2712) = v1;

  if (v1)
  {
    v4 = sub_252D63EC0;
  }

  else
  {
    v4 = sub_252D63D64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D63C10()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D63D64()
{
  v1 = v0 + 258;
  v2 = v0[338];
  v3 = v0[335];
  v0[258] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[340] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[341] = v11;
  *v11 = v0;
  v11[1] = sub_252D64020;
  v12 = v0[273];

  return sub_252BDB88C((v0 + 211), &unk_252E5DF60, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D63EC0()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D64020()
{
  v2 = *v1;
  *(*v1 + 2736) = v0;

  (*(v2[268] + 8))(v2[273], v2[267]);
  if (v0)
  {
    v3 = sub_252D64380;
  }

  else
  {

    v3 = sub_252D64178;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D64178()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2704);
  v9 = *(v0 + 2680);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 1688, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1688));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D64380()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D644FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[346] = a1;
  v3[347] = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D647F4, 0, 0);
  }

  else
  {
    v5 = v3[265];

    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[348] = v6;
    *v6 = v4;
    v6[1] = sub_252D646DC;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D646DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2792) = a1;
  *(v3 + 2800) = v1;

  if (v1)
  {
    v4 = sub_252D64C00;
  }

  else
  {
    v4 = sub_252D64AA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D647F4()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D6493C()
{
  v2 = *v1;
  *(*v1 + 2816) = v0;

  (*(v2[268] + 8))(v2[272], v2[267]);
  if (v0)
  {
    v3 = sub_252D653F4;
  }

  else
  {
    v3 = sub_252D65218;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D64AA4()
{
  v1 = v0 + 257;
  v2 = v0[349];
  v3 = v0[346];
  v0[257] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[353] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[354] = v11;
  *v11 = v0;
  v11[1] = sub_252D64D54;
  v12 = v0[271];

  return sub_252BDB88C((v0 + 206), &unk_252E5DF58, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D64C00()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D64D54()
{
  v2 = *v1;
  *(*v1 + 2840) = v0;

  (*(v2[268] + 8))(v2[271], v2[267]);
  if (v0)
  {
    v3 = sub_252D650A8;
  }

  else
  {

    v3 = sub_252D64EAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D64EAC()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2792);
  v9 = *(v0 + 2768);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 1648, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1648));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D650A8()
{
  v1 = *(v0 + 2792);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D65218()
{
  v1 = v0[266];
  v2 = v0[264];
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

  (*(v4 + 112))(v7, v0 + 201, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 201);

  v8 = v0[282];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D653F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D65534(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[358] = a1;
  v3[359] = v1;

  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D6582C, 0, 0);
  }

  else
  {
    v5 = v3[265];

    swift_bridgeObjectRelease_n();
    v6 = swift_task_alloc();
    v3[360] = v6;
    *v6 = v4;
    v6[1] = sub_252D65714;

    return sub_252E174F4(v5);
  }
}

uint64_t sub_252D65714(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2888) = a1;
  *(v3 + 2896) = v1;

  if (v1)
  {
    v4 = sub_252D65C38;
  }

  else
  {
    v4 = sub_252D65ADC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D6582C()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D65974()
{
  v2 = *v1;
  *(*v1 + 2912) = v0;

  (*(v2[268] + 8))(v2[270], v2[267]);
  if (v0)
  {
    v3 = sub_252D6642C;
  }

  else
  {
    v3 = sub_252D66250;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D65ADC()
{
  v1 = v0 + 256;
  v2 = v0[361];
  v3 = v0[358];
  v0[256] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[266];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[365] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[366] = v11;
  *v11 = v0;
  v11[1] = sub_252D65D8C;
  v12 = v0[269];

  return sub_252BDB88C((v0 + 196), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D65C38()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D65D8C()
{
  v2 = *v1;
  *(*v1 + 2936) = v0;

  (*(v2[268] + 8))(v2[269], v2[267]);
  if (v0)
  {
    v3 = sub_252D660E0;
  }

  else
  {

    v3 = sub_252D65EE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252D65EE4()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
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

  v8 = *(v0 + 2888);
  v9 = *(v0 + 2864);
  v10 = *(v0 + 2120);
  (*(v4 + 112))(v7, v0 + 1568, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1568));

  v11 = *(v0 + 2256);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D660E0()
{
  v1 = *(v0 + 2888);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D66250()
{
  v1 = v0[266];
  v2 = v0[264];
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

  (*(v4 + 112))(v7, v0 + 191, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 191);

  v8 = v0[282];

  v9 = v0[1];

  return v9();
}

uint64_t sub_252D6642C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D6656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D66590, 0, 0);
}

uint64_t sub_252D66590()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252D671B4;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C10E14(0, v1, v3, v4);
}

uint64_t sub_252D66674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D66694, 0, 0);
}

uint64_t sub_252D66694()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25299F248;
  v3 = v0[3];

  return sub_252C11240(0, v1, v3);
}

uint64_t sub_252D66768(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D66788, 0, 0);
}

uint64_t sub_252D66788()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2529CC350;
  v3 = v0[3];

  return sub_252C113F8(0, v1, v3);
}

uint64_t sub_252D6685C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D6687C, 0, 0);
}

uint64_t sub_252D6687C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2529CC350;
  v3 = v0[3];

  return sub_252C115B4(0, v1, v3);
}

uint64_t sub_252D66950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D66974, 0, 0);
}

uint64_t sub_252D66974()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252BCD050;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C11770(0, v1, v3, v4);
}

uint64_t sub_252D66A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D66A7C, 0, 0);
}

uint64_t sub_252D66A7C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_252D671B4;
  v3 = v0[3];
  v4 = v0[4];

  return sub_252C11770(0, v1, v3, v4);
}

uint64_t sub_252D66B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D5E040(a1, a2, a3);
}

void *sub_252D66C3C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetSensorMeasurementResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D66CA0(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {

LABEL_8:
        if (qword_27F53F708 != -1)
        {
          swift_once();
        }

        [v3 attribute];
        v6 = sub_252DB4F4C();
        goto LABEL_12;
      }

      v7 = [v5 taskType];

      if (v7 == 5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v6 = 0;
LABEL_12:

    return v6 & 1;
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t sub_252D66DAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D66A58(v2, v3, v4);
}

uint64_t sub_252D66E54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D66950(v2, v3, v4);
}

uint64_t sub_252D66EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D6685C(v2, v3);
}

uint64_t sub_252D66F94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D66768(v2, v3);
}

uint64_t sub_252D6702C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D66674(v2, v3);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252D6710C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D6656C(v2, v3, v4);
}

uint64_t type metadata accessor for ZoneEntity(uint64_t a1)
{
  result = qword_27F545A58;
  if (!qword_27F545A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D67254(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F545A48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F545A50;
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252D673D4()
{
}

uint64_t sub_252D67414()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t sub_252D67490()
{
  v0 = *aComAppleHome_4;

  return v0;
}

uint64_t sub_252D674E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E5E0B4);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252D67544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aEu, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252D67598(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E5E0B4);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252D67798(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ZoneEntity(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_252D677E0(void *a1)
{
  v3 = [a1 matterNodeID];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 unsignedLongLongValue];

    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v5;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CB8);
  sub_252E379F4();

  v7 = [a1 name];
  v8 = sub_252E36F34();
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
  sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

LABEL_8:

  return sub_252D4CE7C(a1);
}

void *sub_252D67A04(void *a1)
{
  v3 = sub_252E32E84();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = a1[3];
  v50 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v50;
  }

  else
  {
    v12 = v7;
    LOBYTE(v51[0]) = 0;
    sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
    sub_252E37C64();
    v15 = v3;
    LOBYTE(v52) = 1;
    sub_252950A60();
    sub_252E37C64();
    v16 = v50;
    v17 = v5;
    v18 = v51[0];
    LOBYTE(v51[0]) = 2;
    v46 = sub_252E37C04();
    v47 = v18;
    v48 = v19;
    LOBYTE(v51[0]) = 3;
    v20 = sub_252E37BA4();
    v41 = v12;
    v44 = v9;
    v45 = v15;
    v21 = v20;
    v23 = v22;
    v24 = type metadata accessor for HomeStore(0);
    v25 = static HomeStore.shared.getter(v24);
    v26 = sub_2529D9D50();

    MEMORY[0x28223BE20](v27);
    v28 = v46;
    *(&v40 - 6) = v17;
    *(&v40 - 5) = v28;
    v29 = v47;
    *(&v40 - 4) = v48;
    *(&v40 - 3) = v21;
    v42 = v21;
    v43 = v23;
    *(&v40 - 2) = v23;
    *(&v40 - 1) = v29;
    v30 = sub_2529A3DE8(sub_252CDD62C, (&v40 - 8), v26);

    if (v30)
    {
      type metadata accessor for MatterAccessory(0);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = v31;

        v33 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);

        *(v54 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v33;
        sub_252929E74(v16, v51);
        v11 = sub_252D4D438(v51);
        (*(v12 + 8))(v44, v6);

        v39 = *(v49 + 8);

        v39(v17, v45);
        __swift_destroy_boxed_opaque_existential_1(v16);

        return v11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    v35 = __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252CC4050(0xD000000000000026, 0x8000000252E97840, 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);
    strcpy(v51, "identifier: ");
    BYTE5(v51[1]) = 0;
    HIWORD(v51[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v40 = v17;
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    sub_252CC4050(v51[0], v51[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v51[0] = 0x203A656D616ELL;
    v51[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v46, v48);

    sub_252CC4050(v51[0], v51[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    sub_252E379F4();

    v51[0] = 0xD000000000000015;
    v51[1] = 0x8000000252E6AA20;
    v52 = v42;
    v53 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v51[0], v51[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    strcpy(v51, "entityType: ");
    BYTE5(v51[1]) = 0;
    HIWORD(v51[1]) = -5120;
    v52 = v47;
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v11 = v35;
    sub_252CC4050(v51[0], v51[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v41 + 8))(v44, v6);
    (*(v49 + 8))(v40, v45);
    v13 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  type metadata accessor for MatterAccessory(0);
  swift_deallocPartialClassInstance();
  return v11;
}

void *sub_252D68274(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4 >> 62)
  {
    v10 = sub_252E378C4();

    if (!v10)
    {
      return sub_252CC479C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v5)
    {
      return sub_252CC479C(MEMORY[0x277D84F90]);
    }
  }

  v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v6);
  v8 = sub_252AC0884(v1);

  if (v8)
  {
    return v8;
  }

  return sub_252CC479C(MEMORY[0x277D84F90]);
}

uint64_t sub_252D68360(uint64_t (*a1)(uint64_t))
{
  v3 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (v5 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v7);
    v10 = a1(v1);

    if (v10)
    {
      return v10;
    }
  }

  return v8;
}

uint64_t sub_252D6841C()
{
  v1 = sub_252E32E84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v24 = sub_252E32E24();
  v25 = v6;
  v7 = (*(v2 + 8))(v4, v1);
  v8 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v7);
  v9 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v23 = v8;
  v10 = *&v8[v9];
  if (v10 >> 62)
  {
LABEL_33:
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
LABEL_17:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544EC8);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    v17 = v24;
    v16 = v25;
    MEMORY[0x2530AD570](v24, v25);
    sub_252CC4050(v26, v27, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v15, qword_27F544CB8);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E6B930);
    MEMORY[0x2530AD570](v17, v16);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
    sub_252CC4050(v26, v27, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 96);
    goto LABEL_31;
  }

  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v12, v10);
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_16;
      }
    }

    sub_252E36744();

    if (v27)
    {
      if (v26 == v24 && v27 == v25)
      {

        goto LABEL_23;
      }

      v13 = sub_252E37DB4();

      if (v13)
      {
        break;
      }
    }

    ++v12;
    if (v14 == v11)
    {
      goto LABEL_17;
    }
  }

LABEL_23:

  v18 = sub_252BF8258();
  if (!v18)
  {
LABEL_28:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544CB8);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E6B760);
    MEMORY[0x2530AD570](v24, v25);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
    sub_252CC4050(v26, v27, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 102);

LABEL_31:

    return 46;
  }

  if (!*(v18 + 2))
  {

    goto LABEL_28;
  }

  v19 = v18;

  if (*(v19 + 2))
  {
    v21 = *(v19 + 4);

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252D68998()
{
  if ((sub_252D6841C() & 0xFFFFFFFFFFFFFFFELL) != 0x2E)
  {
    return MEMORY[0x277D84FA0];
  }

  return sub_2529FC004(&unk_2864A0E50);
}

uint64_t sub_252D689E4(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(MEMORY[0x277D84F90]);
    v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v9 = *&v7[v8];
    if (v9 >> 62)
    {
      v15 = sub_252E378C4();

      if (!v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v11);
    v13 = sub_252AC0884(v1);

    if (v13)
    {
      v14 = v13;
LABEL_11:
      sub_25297B69C(v14);
      return v16;
    }

LABEL_10:
    v14 = sub_252CC479C(MEMORY[0x277D84F90]);
    goto LABEL_11;
  }

  return result;
}