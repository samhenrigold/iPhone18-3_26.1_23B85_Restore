uint64_t sub_22D0433E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  return sub_22D04F688(v3 + v4, a2, &unk_27D9F67A0, &unk_22D05E720);
}

uint64_t sub_22D043458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D05D9EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22D043518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D05D9EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22D0435E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D043618()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22D043650()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D043690()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D043758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22D0437A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_22D043878()
{
  v0 = sub_22D05DA2C();
  __swift_allocate_value_buffer(v0, qword_27D9F72A0);
  __swift_project_value_buffer(v0, qword_27D9F72A0);
  return sub_22D05DA1C();
}

uint64_t sub_22D0438F8()
{
  v0 = sub_22D05DA2C();
  __swift_allocate_value_buffer(v0, qword_27D9F65C0);
  v1 = __swift_project_value_buffer(v0, qword_27D9F65C0);
  if (qword_27D9F6490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27D9F72A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t firmwareUpdateLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  v3 = __swift_project_value_buffer(v2, qword_27D9F65C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22D043B0C()
{
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](0);
  return sub_22D05DD8C();
}

uint64_t sub_22D043B78(uint64_t a1)
{
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](0);
  return sub_22D05DD8C();
}

uint64_t AccessoryFirmwareUpdateDeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D043C68()
{
  v1 = *v0;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D043CB0(uint64_t a1)
{
  v2 = *v1;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v2);
  return sub_22D05DD8C();
}

int *AccessoryFirmwareUpdateAccessory.init(deviceUuid:deviceType:firmwareVersion:vendorId:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = sub_22D05D9EC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  *(a6 + result[5]) = v11;
  v14 = (a6 + result[6]);
  *v14 = a3;
  v14[1] = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t AccessoryFirmwareUpdateAccessory.hash(into:)(uint64_t a1)
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  MEMORY[0x2318C6EA0](*(v1 + *(updated + 20)));
  sub_22D05DAFC();
  return MEMORY[0x2318C6EA0](*(v1 + *(updated + 28)));
}

uint64_t AccessoryFirmwareUpdateAccessory.hashValue.getter()
{
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  MEMORY[0x2318C6EA0](*(v0 + *(updated + 20)));
  sub_22D05DAFC();
  MEMORY[0x2318C6EA0](*(v0 + *(updated + 28)));
  return sub_22D05DD8C();
}

uint64_t sub_22D043F48(int *a1)
{
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  MEMORY[0x2318C6EA0](*(v1 + a1[5]));
  sub_22D05DAFC();
  MEMORY[0x2318C6EA0](*(v1 + a1[7]));
  return sub_22D05DD8C();
}

uint64_t sub_22D044014(uint64_t a1, int *a2)
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  MEMORY[0x2318C6EA0](*(v2 + a2[5]));
  sub_22D05DAFC();
  return MEMORY[0x2318C6EA0](*(v2 + a2[7]));
}

uint64_t sub_22D0440CC(uint64_t a1, int *a2)
{
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  MEMORY[0x2318C6EA0](*(v2 + a2[5]));
  sub_22D05DAFC();
  MEMORY[0x2318C6EA0](*(v2 + a2[7]));
  return sub_22D05DD8C();
}

void sub_22D044198(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v69 = &v61[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v61[-v11];
  MEMORY[0x28223BE20](v10);
  v64 = &v61[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6698, &qword_22D05EA60);
  MEMORY[0x28223BE20](v13);
  v15 = &v61[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6688, &qword_22D05EA50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v61[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v61[-v20];
  v68 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize;
  v22 = *(v2 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize);

  v71 = a1;
  v23 = sub_22D044B1C(a1, v22);

  if (v23)
  {
    goto LABEL_2;
  }

  v34 = v4;
  v35 = v5;
  v36 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  swift_beginAccess();
  v65 = *(v35 + 16);
  v66 = v35 + 16;
  v65(v21, v71, v34);
  (*(v35 + 56))(v21, 0, 1, v34);
  v37 = *(v13 + 48);
  v63 = v2;
  v38 = v2 + v36;
  v5 = v35;
  sub_22D04F688(v38, v15, &qword_27D9F6688, &qword_22D05EA50);
  sub_22D04F688(v21, &v15[v37], &qword_27D9F6688, &qword_22D05EA50);
  v39 = *(v35 + 48);
  if (v39(v15, 1, v34) == 1)
  {
    sub_22D04F5CC(v21, &qword_27D9F6688, &qword_22D05EA50);
    v4 = v34;
    if (v39(&v15[v37], 1, v34) == 1)
    {
      sub_22D04F5CC(v15, &qword_27D9F6688, &qword_22D05EA50);
LABEL_2:
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v24 = sub_22D05DA2C();
      __swift_project_value_buffer(v24, qword_27D9F65C0);
      v25 = v70;
      (*(v5 + 16))(v70, v71, v4);
      v26 = sub_22D05DA0C();
      v27 = sub_22D05DB3C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v72 = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D061190, &v72);
        *(v28 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v30 = sub_22D05DCCC();
        v32 = v31;
        (*(v5 + 8))(v25, v4);
        v33 = sub_22D04BCD8(v30, v32, &v72);

        *(v28 + 14) = v33;
        _os_log_impl(&dword_22D042000, v26, v27, "AccessoryFirmwareUpdateSerializer %s Device %s already in queue", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v29, -1, -1);
        MEMORY[0x2318C73A0](v28, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v25, v4);
      }

      return;
    }

    goto LABEL_12;
  }

  sub_22D04F688(v15, v19, &qword_27D9F6688, &qword_22D05EA50);
  if (v39(&v15[v37], 1, v34) == 1)
  {
    sub_22D04F5CC(v21, &qword_27D9F6688, &qword_22D05EA50);
    (*(v35 + 8))(v19, v34);
    v4 = v34;
LABEL_12:
    sub_22D04F5CC(v15, &qword_27D9F6698, &qword_22D05EA60);
    v40 = v63;
    goto LABEL_13;
  }

  v58 = v64;
  (*(v35 + 32))(v64, &v15[v37], v34);
  sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v59 = sub_22D05DACC();
  v40 = v63;
  v62 = v59;
  v60 = *(v35 + 8);
  v60(v58, v34);
  sub_22D04F5CC(v21, &qword_27D9F6688, &qword_22D05EA50);
  v60(v19, v34);
  v5 = v35;
  sub_22D04F5CC(v15, &qword_27D9F6688, &qword_22D05EA50);
  v4 = v34;
  if (v62)
  {
    goto LABEL_2;
  }

LABEL_13:
  v41 = v40;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v42 = sub_22D05DA2C();
  __swift_project_value_buffer(v42, qword_27D9F65C0);
  v43 = v67;
  v65(v67, v71, v4);
  v44 = sub_22D05DA0C();
  v45 = sub_22D05DB5C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v72 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D061190, &v72);
    *(v46 + 12) = 2080;
    sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v48 = sub_22D05DCCC();
    v50 = v49;
    (*(v5 + 8))(v43, v4);
    v51 = sub_22D04BCD8(v48, v50, &v72);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_22D042000, v44, v45, "AccessoryFirmwareUpdateSerializer %s Adding device %s to queue", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v47, -1, -1);
    MEMORY[0x2318C73A0](v46, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v43, v4);
  }

  v52 = v69;
  v65(v69, v71, v4);
  v53 = v68;
  v54 = *(v41 + v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + v53) = v54;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v54 = sub_22D04BA7C(0, v54[2] + 1, 1, v54);
    *(v41 + v53) = v54;
  }

  v57 = v54[2];
  v56 = v54[3];
  if (v57 >= v56 >> 1)
  {
    v54 = sub_22D04BA7C((v56 > 1), v57 + 1, 1, v54);
  }

  v54[2] = v57 + 1;
  (*(v5 + 32))(v54 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v57, v52, v4);
  *(v41 + v53) = v54;
  sub_22D045E0C();
}

BOOL sub_22D044B1C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_22D05D9EC();
    ++v2;
    sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_22D05DACC() & 1) == 0);
  return v3 != v4;
}

void sub_22D044C28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - v8;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v10 = sub_22D05DA2C();
  v11 = __swift_project_value_buffer(v10, qword_27D9F65C0);
  v71 = *(v5 + 16);
  v71(v9, a1, v4);
  v12 = sub_22D05DA0C();
  v13 = sub_22D05DB5C();
  v14 = os_log_type_enabled(v12, v13);
  v73 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v70 = v1;
    v16 = v15;
    v69 = swift_slowAlloc();
    v74 = v69;
    *v16 = 136315394;
    *(v16 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v74);
    *(v16 + 12) = 2080;
    sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22D05DCCC();
    v18 = v5;
    v19 = a1;
    v20 = v11;
    v21 = v4;
    v23 = v22;
    v24 = v9;
    v25 = *(v18 + 8);
    v25(v24, v21);
    v26 = sub_22D04BCD8(v17, v23, &v74);
    v4 = v21;
    v11 = v20;
    a1 = v19;

    *(v16 + 14) = v26;
    _os_log_impl(&dword_22D042000, v12, v13, "AccessoryFirmwareUpdateSerializer %s Stop serializing device %s to queue", v16, 0x16u);
    v27 = v69;
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v27, -1, -1);
    v28 = v16;
    v2 = v70;
    MEMORY[0x2318C73A0](v28, -1, -1);
  }

  else
  {

    v29 = v9;
    v25 = *(v5 + 8);
    v25(v29, v4);
  }

  sub_22D045764(a1);
  v30 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize;
  v31 = *&v2[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize];

  v32 = sub_22D044B1C(a1, v31);

  if (v32)
  {
    v33 = v2;
    v73 = v11;
    v34 = sub_22D05DA0C();
    v35 = sub_22D05DB3C();

    v36 = os_log_type_enabled(v34, v35);
    v68 = v4;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = v72;
      *v37 = 136315394;
      *(v37 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v74);
      *(v37 + 12) = 2080;

      v39 = v2;
      v40 = MEMORY[0x2318C6C60](v38, v4);
      v42 = v41;

      v43 = v40;
      v2 = v39;
      v44 = sub_22D04BCD8(v43, v42, &v74);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_22D042000, v34, v35, "AccessoryFirmwareUpdateSerializer %s queue before removing device %s", v37, 0x16u);
      v45 = v72;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v45, -1, -1);
      MEMORY[0x2318C73A0](v37, -1, -1);
    }

    v46 = *&v2[v30];
    MEMORY[0x28223BE20](v47);
    *(&v68 - 2) = a1;

    *&v2[v30] = sub_22D045494(sub_22D04F468, (&v68 - 4), v46);

    v48 = v33;
    v49 = sub_22D05DA0C();
    v50 = sub_22D05DB3C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v74 = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v74);
      *(v51 + 12) = 2080;

      v54 = MEMORY[0x2318C6C60](v53, v68);
      v56 = v55;

      v57 = sub_22D04BCD8(v54, v56, &v74);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_22D042000, v49, v50, "AccessoryFirmwareUpdateSerializer %s queue after removing device %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v52, -1, -1);
      MEMORY[0x2318C73A0](v51, -1, -1);
    }
  }

  else
  {
    v58 = v72;
    v71(v72, a1, v4);
    v59 = sub_22D05DA0C();
    v60 = sub_22D05DB3C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v74 = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v74);
      *(v61 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v63 = sub_22D05DCCC();
      v64 = v4;
      v66 = v65;
      v25(v58, v64);
      v67 = sub_22D04BCD8(v63, v66, &v74);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_22D042000, v59, v60, "AccessoryFirmwareUpdateSerializer %s Device %s currently not in queue", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v62, -1, -1);
      MEMORY[0x2318C73A0](v61, -1, -1);
    }

    else
    {

      v25(v58, v4);
    }
  }
}

BOOL sub_22D045400(uint64_t a1, uint64_t a2)
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_22D05DACC() & 1) == 0;
}

uint64_t sub_22D045494(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_22D05D9EC();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22D04C304(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_22D04C304((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

void sub_22D045764(uint64_t a1)
{
  v3 = sub_22D05D9EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6698, &qword_22D05EA60);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6688, &qword_22D05EA50);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v46 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v48 = *(v4 + 16);
  v49 = a1;
  v47 = v4 + 16;
  v48(&v41 - v17, a1, v3);
  v43 = *(v4 + 56);
  v43(v18, 0, 1, v3);
  v19 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  swift_beginAccess();
  v20 = *(v9 + 56);
  sub_22D04F688(v18, v11, &qword_27D9F6688, &qword_22D05EA50);
  v44 = v19;
  v42 = v1;
  sub_22D04F688(v1 + v19, &v11[v20], &qword_27D9F6688, &qword_22D05EA50);
  v21 = v4;
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) == 1)
  {
    sub_22D04F5CC(v18, &qword_27D9F6688, &qword_22D05EA50);
    if (v22(&v11[v20], 1, v3) == 1)
    {
      sub_22D04F5CC(v11, &qword_27D9F6688, &qword_22D05EA50);
LABEL_13:
      v38 = v45;
      v43(v45, 1, 1, v3);
      v39 = v44;
      v40 = v42;
      swift_beginAccess();
      sub_22D04F564(v38, v40 + v39, &qword_27D9F6688, &qword_22D05EA50);
      swift_endAccess();
      sub_22D045E0C();
      return;
    }

    goto LABEL_6;
  }

  v23 = v46;
  sub_22D04F688(v11, v46, &qword_27D9F6688, &qword_22D05EA50);
  if (v22(&v11[v20], 1, v3) == 1)
  {
    sub_22D04F5CC(v18, &qword_27D9F6688, &qword_22D05EA50);
    (*(v4 + 8))(v23, v3);
LABEL_6:
    sub_22D04F5CC(v11, &qword_27D9F6698, &qword_22D05EA60);
    goto LABEL_7;
  }

  v34 = &v11[v20];
  v35 = v41;
  (*(v4 + 32))(v41, v34, v3);
  sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v36 = sub_22D05DACC();
  v37 = *(v4 + 8);
  v37(v35, v3);
  sub_22D04F5CC(v18, &qword_27D9F6688, &qword_22D05EA50);
  v37(v23, v3);
  sub_22D04F5CC(v11, &qword_27D9F6688, &qword_22D05EA50);
  if (v36)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v24 = sub_22D05DA2C();
  __swift_project_value_buffer(v24, qword_27D9F65C0);
  v25 = v50;
  v48(v50, v49, v3);
  v26 = sub_22D05DA0C();
  v27 = sub_22D05DB5C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_22D04BCD8(0xD000000000000020, 0x800000022D060FA0, v51);
    *(v28 + 12) = 2080;
    sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_22D05DCCC();
    v32 = v31;
    (*(v21 + 8))(v25, v3);
    v33 = sub_22D04BCD8(v30, v32, v51);

    *(v28 + 14) = v33;
    _os_log_impl(&dword_22D042000, v26, v27, "AccessoryFirmwareUpdateSerializer %s No-op, device %s not currently being processed", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v29, -1, -1);
    MEMORY[0x2318C73A0](v28, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v25, v3);
  }
}

void sub_22D045E0C()
{
  v1 = v0;
  v2 = sub_22D05D9EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v60[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6688, &qword_22D05EA50);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v64 = &v60[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v60[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v60[-v17];
  v19 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  swift_beginAccess();
  v67 = v19;
  sub_22D04F688(&v0[v19], v18, &qword_27D9F6688, &qword_22D05EA50);
  v68 = v2;
  v69 = v3;
  v20 = *(v3 + 48);
  LODWORD(v2) = v20(v18, 1, v2);
  sub_22D04F5CC(v18, &qword_27D9F6688, &qword_22D05EA50);
  if (v2 != 1)
  {
    v65 = v20;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v36 = sub_22D05DA2C();
    __swift_project_value_buffer(v36, qword_27D9F65C0);
    v37 = v0;
    v38 = sub_22D05DA0C();
    v39 = sub_22D05DB3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v70[0] = v66;
      *v40 = 136315394;
      *(v40 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D060F80, v70);
      *(v40 + 12) = 2080;
      sub_22D04F688(&v0[v67], v12, &qword_27D9F6688, &qword_22D05EA50);
      v41 = v68;
      v42 = v65(v12, 1, v68);

      if (v42 == 1)
      {
        goto LABEL_30;
      }

      v43 = v69;
      (*(v69 + 32))(v6, v12, v41);
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v44 = sub_22D05DCCC();
      v46 = v45;
      (*(v43 + 8))(v6, v41);
      v47 = sub_22D04BCD8(v44, v46, v70);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_22D042000, v38, v39, "AccessoryFirmwareUpdateSerializer %s Already in the middle of processing a device %s; ignoring current call ", v40, 0x16u);
      v48 = v66;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v48, -1, -1);
      MEMORY[0x2318C73A0](v40, -1, -1);
    }

    else
    {
    }

    return;
  }

  v21 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize;
  if (*(*&v0[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize] + 16))
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v22 = sub_22D05DA2C();
    __swift_project_value_buffer(v22, qword_27D9F65C0);
    v23 = v0;
    v24 = sub_22D05DA0C();
    v25 = sub_22D05DB5C();
    v26 = os_log_type_enabled(v24, v25);
    v65 = v20;
    if (!v26)
    {

      v29 = v68;
      goto LABEL_21;
    }

    v27 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v70[0] = v63;
    *v27 = 136315394;
    *(v27 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D060F80, v70);
    *(v27 + 12) = 2080;
    v28 = *&v0[v21];
    if (*(v28 + 16))
    {
      v61 = v25;

      v62 = v23;

      if (*(v28 + 16))
      {
        v29 = v68;
        v30 = v69;
        (*(v69 + 16))(v8, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v68);

        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v31 = sub_22D05DCCC();
        v33 = v32;
        (*(v30 + 8))(v8, v29);
        v34 = sub_22D04BCD8(v31, v33, v70);

        *(v27 + 14) = v34;
        _os_log_impl(&dword_22D042000, v24, v61, "AccessoryFirmwareUpdateSerializer %s Processing next device %s", v27, 0x16u);
        v35 = v63;
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v35, -1, -1);
        MEMORY[0x2318C73A0](v27, -1, -1);

LABEL_21:
        v54 = *&v1[v21];
        if (*(v54 + 16))
        {
          v55 = v69;
          v56 = v66;
          (*(v69 + 16))(v66, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v29);
          sub_22D04E49C(0, 1);
          (*(v55 + 56))(v56, 0, 1, v29);
          v57 = v67;
          swift_beginAccess();
          sub_22D04F564(v56, &v1[v57], &qword_27D9F6688, &qword_22D05EA50);
          swift_endAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          v58 = &v1[v57];
          v59 = v64;
          sub_22D04F688(v58, v64, &qword_27D9F6688, &qword_22D05EA50);
          if (v65(v59, 1, v29) != 1)
          {
            sub_22D04AF84(v59);
            swift_unknownObjectRelease();
            (*(v55 + 8))(v59, v29);
            return;
          }

LABEL_31:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (qword_27D9F6498 != -1)
  {
LABEL_27:
    swift_once();
  }

  v49 = sub_22D05DA2C();
  __swift_project_value_buffer(v49, qword_27D9F65C0);
  v50 = sub_22D05DA0C();
  v51 = sub_22D05DB3C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v70[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D060F80, v70);
    _os_log_impl(&dword_22D042000, v50, v51, "AccessoryFirmwareUpdateSerializer %s No more devices to serialize", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x2318C73A0](v53, -1, -1);
    MEMORY[0x2318C73A0](v52, -1, -1);
  }
}

uint64_t sub_22D0467A0(uint64_t a1, uint64_t *a2)
{
  sub_22D04F688(a1, v6, &unk_27D9F67A0, &unk_22D05E720);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  sub_22D04F564(v6, v3 + v4, &unk_27D9F67A0, &unk_22D05E720);
  return swift_endAccess();
}

uint64_t sub_22D04682C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  return sub_22D04F688(v1 + v3, a1, &unk_27D9F67A0, &unk_22D05E720);
}

uint64_t sub_22D046894(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  sub_22D04F564(a1, v1 + v3, &unk_27D9F67A0, &unk_22D05E720);
  return swift_endAccess();
}

char *AccessoryFirmwareUpdateManager.init(inClient:)(uint64_t a1)
{
  v25 = a1;
  v26 = sub_22D05DB7C();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D05DB6C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22D05DA6C();
  MEMORY[0x28223BE20](v7 - 8);
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue] = 0;
  v8 = &v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_currentBeaconList] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer] = 0;
  updated = type metadata accessor for AccessoryFirmwareUpdateManager();
  v28.receiver = v1;
  v28.super_class = updated;
  v10 = objc_msgSendSuper2(&v28, sel_init);
  v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  v12 = v10;
  sub_22D04E09C(a1, v10 + v11);
  swift_endAccess();
  sub_22D04E10C();
  sub_22D05DA5C();
  v27 = MEMORY[0x277D84F90];
  sub_22D04E158(&qword_281448138, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6608, &qword_22D05E750);
  sub_22D04E1A0();
  sub_22D05DC1C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v26);
  v13 = sub_22D05DB9C();
  v14 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue;
  v15 = *&v12[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue];
  *&v12[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue] = v13;

  v16 = sub_22D04E55C(MEMORY[0x277D84F90]);
  v17 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
  swift_beginAccess();
  *&v12[v17] = v16;

  v18 = *&v12[v14];
  v19 = objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateSerializer(0));
  v20 = v18;
  v21 = sub_22D04E24C(v18, v12, &off_28403BAE0);

  sub_22D04F5CC(v25, &unk_27D9F67A0, &unk_22D05E720);
  v22 = *&v12[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer];
  *&v12[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer] = v21;

  return v12;
}

void sub_22D046D40(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v56 = a1;
  v7 = sub_22D05D9EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v58[3] = &type metadata for AirTag;
  v58[4] = sub_22D04E79C();
  v14 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  if (v14)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v15 = sub_22D05DA2C();
    v16 = __swift_project_value_buffer(v15, qword_27D9F65C0);
    v54 = *(v8 + 16);
    v55 = v8 + 16;
    v54(v13, a2, v7);
    v17 = a3;
    v18 = sub_22D05DA0C();
    v19 = sub_22D05DB5C();

    v51 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v52 = v8;
      v21 = v20;
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v21 = 136315906;
      *(v21 + 4) = sub_22D04BCD8(0xD000000000000045, 0x800000022D060BF0, v58);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v56 & 1;
      *(v21 + 18) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v48 = v18;
      v22 = sub_22D05DCCC();
      v50 = v16;
      v24 = v23;
      v53 = *(v52 + 8);
      v53(v13, v7);
      v25 = sub_22D04BCD8(v22, v24, v58);

      *(v21 + 20) = v25;
      *(v21 + 28) = 2080;
      v57 = a3;
      v26 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6618, &qword_22D05E758);
      v27 = sub_22D05DAEC();
      v29 = sub_22D04BCD8(v27, v28, v58);

      *(v21 + 30) = v29;
      v30 = v48;
      _os_log_impl(&dword_22D042000, v48, v51, "AccessoryFirmwareUpdateManager: %s - isConnected %{BOOL}d, deviceUUID %s with error %s", v21, 0x26u);
      v31 = v49;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v31, -1, -1);
      MEMORY[0x2318C73A0](v21, -1, -1);
    }

    else
    {

      v53 = *(v8 + 8);
      v53(v13, v7);
    }

    v37 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    swift_beginAccess();
    if (*(*(v4 + v37) + 16))
    {

      sub_22D04C4FC(a2);
      if (v38)
      {

        if (v56)
        {
          sub_22D0543DC();
        }

        else
        {
          sub_22D0543FC(a3);
        }

        return;
      }
    }

    v54(v11, a2, v7);
    v39 = sub_22D05DA0C();
    v40 = sub_22D05DB4C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_22D04BCD8(0xD000000000000045, 0x800000022D060BF0, &v57);
      *(v41 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = sub_22D05DCCC();
      v45 = v44;
      v53(v11, v7);
      v46 = sub_22D04BCD8(v43, v45, &v57);

      *(v41 + 14) = v46;
      _os_log_impl(&dword_22D042000, v39, v40, "AccessoryFirmwareUpdateManager: %s - no state machine found for device %s upon connection state change", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v42, -1, -1);
      MEMORY[0x2318C73A0](v41, -1, -1);
    }

    else
    {

      v53(v11, v7);
    }

    return;
  }

  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v32 = sub_22D05DA2C();
  __swift_project_value_buffer(v32, qword_27D9F65C0);
  v33 = sub_22D05DA0C();
  v34 = sub_22D05DB5C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v58[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_22D04BCD8(0xD000000000000045, 0x800000022D060BF0, v58);
    _os_log_impl(&dword_22D042000, v33, v34, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x2318C73A0](v36, -1, -1);
    MEMORY[0x2318C73A0](v35, -1, -1);
  }
}

void sub_22D047424(uint64_t a1, int a2)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v59[-v13];
  v69[3] = &type metadata for AirTag;
  v69[4] = sub_22D04E79C();
  v15 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  if (v15)
  {
    v60 = a2;
    v61 = v2;
    v63 = v9;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v16 = sub_22D05DA2C();
    v17 = __swift_project_value_buffer(v16, qword_27D9F65C0);
    v66 = *(v6 + 16);
    v66(v14, a1, v5);
    v67 = v17;
    v18 = sub_22D05DA0C();
    v19 = sub_22D05DB5C();
    v20 = os_log_type_enabled(v18, v19);
    v64 = v6;
    v62 = a1;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v69[0] = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v69);
      *(v21 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_22D05DCCC();
      v24 = v6;
      v26 = v25;
      v65 = *(v24 + 8);
      v65(v14, v5);
      v27 = sub_22D04BCD8(v23, v26, v69);

      *(v21 + 14) = v27;
      *(v21 + 22) = 1024;
      *(v21 + 24) = v60 & 1;
      _os_log_impl(&dword_22D042000, v18, v19, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s, isMaintained %{BOOL}d", v21, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v22, -1, -1);
      v28 = v21;
      a1 = v62;
      MEMORY[0x2318C73A0](v28, -1, -1);
    }

    else
    {

      v65 = *(v6 + 8);
      v65(v14, v5);
    }

    v66(v12, a1, v5);
    v34 = sub_22D05DA0C();
    v35 = sub_22D05DB3C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v69[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v69);
      *(v36 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v38 = sub_22D05DCCC();
      v40 = v39;
      v65(v12, v5);
      v41 = sub_22D04BCD8(v38, v40, v69);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_22D042000, v34, v35, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s, relax the policy of needing a successful maintenance and instead use maintenance as a timer and kick off firmware update on every maintenance event", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v37, -1, -1);
      v42 = v36;
      a1 = v62;
      MEMORY[0x2318C73A0](v42, -1, -1);
    }

    else
    {

      v65(v12, v5);
    }

    v43 = v61;
    v44 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v45 = swift_beginAccess();
    v46 = *(v43 + v44);
    MEMORY[0x28223BE20](v45);
    *&v59[-16] = a1;

    v47 = sub_22D047C98(sub_22D04F6F0, &v59[-32], v46);

    v48 = v63;
    if (v47)
    {
      v49 = *(v43 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer);
      if (v49)
      {
        v50 = v49;
        sub_22D044198(a1);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v66(v63, a1, v5);
      v51 = sub_22D05DA0C();
      v52 = sub_22D05DB4C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68[0] = v54;
        *v53 = 136315394;
        *(v53 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v68);
        *(v53 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v55 = sub_22D05DCCC();
        v57 = v56;
        v65(v48, v5);
        v58 = sub_22D04BCD8(v55, v57, v68);

        *(v53 + 14) = v58;
        _os_log_impl(&dword_22D042000, v51, v52, "AccessoryFirmwareUpdateManager: %s - failed to update state machine of %s since no record found", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v54, -1, -1);
        MEMORY[0x2318C73A0](v53, -1, -1);
      }

      else
      {

        v65(v48, v5);
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v29 = sub_22D05DA2C();
    __swift_project_value_buffer(v29, qword_27D9F65C0);
    v30 = sub_22D05DA0C();
    v31 = sub_22D05DB5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v69);
      _os_log_impl(&dword_22D042000, v30, v31, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2318C73A0](v33, -1, -1);
      MEMORY[0x2318C73A0](v32, -1, -1);
    }
  }
}

uint64_t sub_22D047C98(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66B8, &qword_22D05EA78);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v27 = v4;
LABEL_10:
    v17 = __clz(__rbit64(v12)) | (v15 << 6);
    v18 = v26;
    v19 = *(v26 + 48);
    v20 = sub_22D05D9EC();
    (*(*(v20 - 8) + 16))(v8, v19 + *(*(v20 - 8) + 72) * v17, v20);
    *&v8[*(v24 + 48)] = *(*(v18 + 56) + 8 * v17);

    v21 = v27;
    v22 = v25(v8);
    v4 = v21;
    result = sub_22D04F5CC(v8, &qword_27D9F66B8, &qword_22D05EA78);
    if (v21)
    {
      goto LABEL_14;
    }

    v12 &= v12 - 1;
    if (v22)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v27 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22D047E8C(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v5 = MEMORY[0x28223BE20](updated);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v44[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-v14];
  v48[3] = &type metadata for AirTag;
  v48[4] = sub_22D04E79C();
  v16 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  if ((v16 & 1) == 0)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v28 = sub_22D05DA2C();
    __swift_project_value_buffer(v28, qword_27D9F65C0);
    v19 = sub_22D05DA0C();
    v29 = sub_22D05DB5C();
    if (!os_log_type_enabled(v19, v29))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48[0] = v30;
    *v21 = 136315138;
    *(v21 + 4) = sub_22D04BCD8(0xD000000000000032, 0x800000022D060C80, v48);
    _os_log_impl(&dword_22D042000, v19, v29, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v27 = v30;
LABEL_13:
    MEMORY[0x2318C73A0](v27, -1, -1);
    MEMORY[0x2318C73A0](v21, -1, -1);
LABEL_14:

    return;
  }

  v17 = updated[5];
  if (*(a1 + v17) && (*(a1 + v17) != 1 || *(a1 + updated[7]) == 76))
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v18 = sub_22D05DA2C();
    __swift_project_value_buffer(v18, qword_27D9F65C0);
    sub_22D04E83C(a1, v7);
    v19 = sub_22D05DA0C();
    v20 = sub_22D05DB5C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_22D04BCD8(0xD000000000000032, 0x800000022D060C80, v48);
      *(v21 + 12) = 2080;
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v23 = sub_22D05DCCC();
      v25 = v24;
      sub_22D04E8A0(v7);
      v26 = sub_22D04BCD8(v23, v25, v48);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_22D042000, v19, v20, "AccessoryFirmwareUpdateManager: %s - this device is not eligible for firmware update, deviceUUID %s", v21, 0x16u);
      swift_arrayDestroy();
      v27 = v22;
      goto LABEL_13;
    }

    sub_22D04E8A0(v7);
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v31 = sub_22D05DA2C();
    __swift_project_value_buffer(v31, qword_27D9F65C0);
    sub_22D04E83C(a1, v15);
    v32 = sub_22D05DA0C();
    v33 = sub_22D05DB5C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = v2;
      v35 = v34;
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v35 = 136315394;
      *(v35 + 4) = sub_22D04BCD8(0xD000000000000032, 0x800000022D060C80, v48);
      *(v35 + 12) = 2080;
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v45 = v33;
      v36 = sub_22D05DCCC();
      v38 = v37;
      sub_22D04E8A0(v15);
      v39 = sub_22D04BCD8(v36, v38, v48);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_22D042000, v32, v45, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s", v35, 0x16u);
      v40 = v46;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v40, -1, -1);
      MEMORY[0x2318C73A0](v35, -1, -1);
    }

    else
    {

      sub_22D04E8A0(v15);
    }

    v41 = (a1 + updated[6]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v48[0]) = *(a1 + v17);
    sub_22D049EB0(a1, v48, v42, v43);
    sub_22D054AC8();

    sub_22D04E83C(a1, v10);
    swift_beginAccess();
    sub_22D04CB5C(v13, v10);
    sub_22D04E8A0(v13);
    swift_endAccess();
  }
}

void sub_22D0484D8(uint64_t a1)
{
  v65 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6620, &unk_22D05E760);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v53 - v2;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v64 = *(updated - 8);
  v5 = MEMORY[0x28223BE20](updated);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  v10 = sub_22D05D9EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v67[3] = &type metadata for AirTag;
  v67[4] = sub_22D04E79C();
  v17 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  if (v17)
  {
    v56 = updated;
    if (qword_27D9F6498 != -1)
    {
LABEL_26:
      swift_once();
    }

    v18 = sub_22D05DA2C();
    v19 = __swift_project_value_buffer(v18, qword_27D9F65C0);
    v59 = *(v11 + 16);
    v60 = v11 + 16;
    v59(v16, v65, v10);
    v61 = v19;
    v20 = sub_22D05DA0C();
    v21 = sub_22D05DB5C();
    v22 = os_log_type_enabled(v20, v21);
    v58 = v11;
    v62 = v14;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v55 = v3;
      v24 = v11;
      v25 = v23;
      v54 = swift_slowAlloc();
      v67[0] = v54;
      *v25 = 136315394;
      *(v25 + 4) = sub_22D04BCD8(0xD000000000000035, 0x800000022D060CC0, v67);
      *(v25 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22D05DCCC();
      v28 = v27;
      v29 = v24;
      v3 = v55;
      v57 = *(v29 + 8);
      v57(v16, v10);
      v30 = sub_22D04BCD8(v26, v28, v67);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_22D042000, v20, v21, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s", v25, 0x16u);
      v31 = v54;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v31, -1, -1);
      MEMORY[0x2318C73A0](v25, -1, -1);
    }

    else
    {

      v57 = *(v11 + 8);
      v57(v16, v10);
    }

    v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_currentBeaconList;
    v37 = v63;
    swift_beginAccess();
    v16 = *(v37 + v11);
    v38 = 1 << v16[32];
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v14 = v39 & *(v16 + 7);
    v40 = (v38 + 63) >> 6;

    v41 = 0;
    if (v14)
    {
      while (1)
      {
        v42 = v41;
LABEL_18:
        sub_22D04E83C(*(v16 + 6) + *(v64 + 72) * (__clz(__rbit64(v14)) | (v42 << 6)), v9);
        sub_22D04E8FC(v9, v7);
        if (sub_22D05D9DC())
        {
          break;
        }

        v14 &= v14 - 1;
        sub_22D04E8A0(v7);
        v41 = v42;
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      v52 = *(v56 + 24);
      LOBYTE(v66[0]) = v7[*(v56 + 20)];
      sub_22D04A854(0, v7, v66, *&v7[v52], *&v7[v52 + 8]);
      swift_beginAccess();
      sub_22D04D98C(v7, v3);
      sub_22D04F5CC(v3, &qword_27D9F6620, &unk_22D05E760);
      swift_endAccess();

      sub_22D04E8A0(v7);
    }

    else
    {
      while (1)
      {
LABEL_15:
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v42 >= v40)
        {
          break;
        }

        v14 = *&v16[8 * v42 + 56];
        ++v41;
        if (v14)
        {
          goto LABEL_18;
        }
      }

      v43 = v62;
      v59(v62, v65, v10);
      v44 = sub_22D05DA0C();
      v45 = sub_22D05DB4C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66[0] = v47;
        *v46 = 136315394;
        *(v46 + 4) = sub_22D04BCD8(0xD000000000000035, 0x800000022D060CC0, v66);
        *(v46 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v48 = sub_22D05DCCC();
        v50 = v49;
        v57(v43, v10);
        v51 = sub_22D04BCD8(v48, v50, v66);

        *(v46 + 14) = v51;
        _os_log_impl(&dword_22D042000, v44, v45, "AccessoryFirmwareUpdateManager: %s - unable to find device to remove, deviceUUID %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v47, -1, -1);
        MEMORY[0x2318C73A0](v46, -1, -1);
      }

      else
      {

        v57(v43, v10);
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v32 = sub_22D05DA2C();
    __swift_project_value_buffer(v32, qword_27D9F65C0);
    v33 = sub_22D05DA0C();
    v34 = sub_22D05DB5C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v67[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_22D04BCD8(0xD000000000000035, 0x800000022D060CC0, v67);
      _os_log_impl(&dword_22D042000, v33, v34, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2318C73A0](v36, -1, -1);
      MEMORY[0x2318C73A0](v35, -1, -1);
    }
  }
}

void sub_22D048D0C(uint64_t a1, void *a2)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v51[-v10];
  v61[3] = &type metadata for AirTag;
  v61[4] = sub_22D04E79C();
  v12 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  if (v12)
  {
    v59 = v2;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v13 = sub_22D05DA2C();
    __swift_project_value_buffer(v13, qword_27D9F65C0);
    v56 = *(v6 + 16);
    v57 = v6 + 16;
    v56(v11, a1, v5);
    v14 = a2;
    v15 = sub_22D05DA0C();
    v16 = sub_22D05DB5C();
    v17 = os_log_type_enabled(v15, v16);
    v54 = v14;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v58 = v6;
      v19 = v18;
      v53 = swift_slowAlloc();
      v61[0] = v53;
      *v19 = 136315650;
      *(v19 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D060D00, v61);
      *(v19 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v52 = v16;
      v20 = sub_22D05DCCC();
      v21 = a1;
      v22 = v9;
      v24 = v23;
      v55 = *(v58 + 8);
      v55(v11, v5);
      v25 = sub_22D04BCD8(v20, v24, v61);
      v9 = v22;
      a1 = v21;

      *(v19 + 14) = v25;
      *(v19 + 22) = 2048;
      v26 = [v14 length];

      *(v19 + 24) = v26;
      _os_log_impl(&dword_22D042000, v15, v52, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s, uarpMessage length %ld", v19, 0x20u);
      v27 = v53;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v27, -1, -1);
      MEMORY[0x2318C73A0](v19, -1, -1);
    }

    else
    {

      v55 = *(v6 + 8);
      v55(v11, v5);
    }

    v33 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v34 = v59;
    v35 = swift_beginAccess();
    v36 = *(v34 + v33);
    MEMORY[0x28223BE20](v35);
    *&v51[-16] = a1;

    v37 = sub_22D047C98(sub_22D04E960, &v51[-32], v36);

    if (v37)
    {
      if (*(*(v34 + v33) + 16))
      {

        sub_22D04C4FC(a1);
        if (v38)
        {
          swift_retain_n();

          v39 = sub_22D05D96C();
          v41 = v40;
          sub_22D054E30(v39, v40);

          sub_22D04E990(v39, v41);
        }

        else
        {
        }
      }
    }

    else
    {
      v56(v9, a1, v5);
      v42 = sub_22D05DA0C();
      v43 = sub_22D05DB4C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60[0] = v45;
        *v44 = 136315394;
        *(v44 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D060D00, v60);
        *(v44 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = sub_22D05DCCC();
        v47 = v9;
        v49 = v48;
        v55(v47, v5);
        v50 = sub_22D04BCD8(v46, v49, v60);

        *(v44 + 14) = v50;
        _os_log_impl(&dword_22D042000, v42, v43, "AccessoryFirmwareUpdateManager: %s - failed to update state machine of %s since no record found", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v45, -1, -1);
        MEMORY[0x2318C73A0](v44, -1, -1);
      }

      else
      {

        v55(v9, v5);
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v28 = sub_22D05DA2C();
    __swift_project_value_buffer(v28, qword_27D9F65C0);
    v29 = sub_22D05DA0C();
    v30 = sub_22D05DB5C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D060D00, v61);
      _os_log_impl(&dword_22D042000, v29, v30, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2318C73A0](v32, -1, -1);
      MEMORY[0x2318C73A0](v31, -1, -1);
    }
  }
}

void sub_22D049448(uint64_t a1, uint64_t *a2)
{
  v5 = sub_22D05D9EC();
  v82 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v81 = &v71 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = *(a2 + 16);
  v87 = &type metadata for AirTag;
  v88 = sub_22D04E79C();
  v16 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  if (v16)
  {
    v79 = v2;
    v80 = v13;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v76 = v8;
    v17 = sub_22D05DA2C();
    v18 = __swift_project_value_buffer(v17, qword_27D9F65C0);
    v77 = *(v82 + 16);
    v77(v12, a1, v5);
    v19 = v80;
    sub_22D04E9E4(v80, v14, v15);
    v78 = v18;
    v20 = sub_22D05DA0C();
    v21 = sub_22D05DB4C();
    sub_22D04E9FC(v19, v14, v15);
    v22 = os_log_type_enabled(v20, v21);
    v75 = v14;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v74 = a1;
      v24 = v23;
      v25 = swift_slowAlloc();
      v72 = v5;
      v26 = v25;
      v71 = v25;
      v73 = swift_slowAlloc();
      v86[0] = v73;
      *v24 = 136315650;
      *(v24 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v86);
      *(v24 + 12) = 2112;
      sub_22D04EA58();
      swift_allocError();
      *v27 = v19;
      *(v27 + 8) = v14;
      *(v27 + 16) = v15;
      sub_22D04E9E4(v19, v14, v15);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v26 = v28;
      v5 = v72;
      *(v24 + 22) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_22D05DCCC();
      v31 = v30;
      v32 = *(v82 + 8);
      v32(v12, v5);
      v33 = sub_22D04BCD8(v29, v31, v86);
      v34 = v32;

      *(v24 + 24) = v33;
      _os_log_impl(&dword_22D042000, v20, v21, "AccessoryFirmwareUpdateManager: %s - failed with error: error %@ for device %s", v24, 0x20u);
      v35 = v71;
      sub_22D04F5CC(v71, &qword_27D9F6630, &qword_22D05EB60);
      MEMORY[0x2318C73A0](v35, -1, -1);
      v36 = v73;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v36, -1, -1);
      v37 = v24;
      a1 = v74;
      MEMORY[0x2318C73A0](v37, -1, -1);
    }

    else
    {

      v34 = *(v82 + 8);
      v34(v12, v5);
    }

    v43 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v44 = v79;
    v45 = swift_beginAccess();
    v46 = *(v44 + v43);
    MEMORY[0x28223BE20](v45);
    *(&v71 - 2) = a1;

    v47 = sub_22D047C98(sub_22D04F6F0, (&v71 - 4), v46);

    if (v47)
    {
      if (*(*(v44 + v43) + 16))
      {

        sub_22D04C4FC(a1);
        if (v48)
        {

          if (v15 <= 1)
          {
            if (!v15)
            {
              sub_22D04EA58();
              v65 = swift_allocError();
              v66 = v75;
              *v67 = v80;
              *(v67 + 8) = v66;
              *(v67 + 16) = 0;

              sub_22D05441C(v65);

              return;
            }
          }

          else if (v15 == 2 || v15 == 3)
          {
LABEL_34:

            return;
          }

          v68 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
          swift_beginAccess();
          sub_22D04F688(v44 + v68, v86, &unk_27D9F67A0, &unk_22D05E720);
          if (v87)
          {
            sub_22D04F500(v86, v83);
            sub_22D04F5CC(v86, &unk_27D9F67A0, &unk_22D05E720);
            v69 = v84;
            v70 = v85;
            __swift_project_boxed_opaque_existential_1(v83, v84);
            (*(v70 + 24))(a1, v69, v70);
            __swift_destroy_boxed_opaque_existential_1Tm(v83);
          }

          else
          {
            sub_22D04F5CC(v86, &unk_27D9F67A0, &unk_22D05E720);
          }

          sub_22D0543FC(0);
          goto LABEL_34;
        }
      }

      v77(v81, a1, v5);
      v50 = sub_22D05DA0C();
      v51 = sub_22D05DB4C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v86[0] = v53;
        *v52 = 136315394;
        *(v52 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v86);
        *(v52 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v60 = v81;
        v61 = sub_22D05DCCC();
        v63 = v62;
        v34(v60, v5);
        v64 = sub_22D04BCD8(v61, v63, v86);

        *(v52 + 14) = v64;
        v58 = "AccessoryFirmwareUpdateManager: %s - received error for accessory that doesn't have an active statemachine with deviceUUID %s";
        goto LABEL_25;
      }

      v59 = v81;
    }

    else
    {
      v49 = v76;
      v77(v76, a1, v5);
      v50 = sub_22D05DA0C();
      v51 = sub_22D05DB4C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v86[0] = v53;
        *v52 = 136315394;
        *(v52 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v86);
        *(v52 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v54 = sub_22D05DCCC();
        v56 = v55;
        v34(v49, v5);
        v57 = sub_22D04BCD8(v54, v56, v86);

        *(v52 + 14) = v57;
        v58 = "AccessoryFirmwareUpdateManager: %s - received error for accessory that is not monitored with deviceUUID %s";
LABEL_25:
        _os_log_impl(&dword_22D042000, v50, v51, v58, v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v53, -1, -1);
        MEMORY[0x2318C73A0](v52, -1, -1);

        return;
      }

      v59 = v49;
    }

    v34(v59, v5);
    return;
  }

  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v38 = sub_22D05DA2C();
  __swift_project_value_buffer(v38, qword_27D9F65C0);
  v39 = sub_22D05DA0C();
  v40 = sub_22D05DB5C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v86[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v86);
    _os_log_impl(&dword_22D042000, v39, v40, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x2318C73A0](v42, -1, -1);
    MEMORY[0x2318C73A0](v41, -1, -1);
  }
}

uint64_t sub_22D049EB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a3;
  v69 = a4;
  v8 = sub_22D05D9BC();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D05D9EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v76 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v64 - v14;
  v67 = *a2;
  v16 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
  swift_beginAccess();
  v73 = v16;
  v17 = *(v5 + v16);
  v77[2] = a1;

  v18 = sub_22D047C98(sub_22D04F6F0, v77, v17);

  v74 = v10;
  v75 = v11;
  if (v18)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v19 = sub_22D05DA2C();
    __swift_project_value_buffer(v19, qword_27D9F65C0);
    (*(v11 + 16))(v15, a1, v10);
    v20 = sub_22D05DA0C();
    v21 = sub_22D05DB4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v81[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_22D04BCD8(0xD00000000000004ALL, 0x800000022D0610D0, v81);
      *(v22 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_22D05DCCC();
      v25 = a1;
      v27 = v26;
      (*(v75 + 8))(v15, v74);
      v28 = sub_22D04BCD8(v24, v27, v81);
      a1 = v25;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_22D042000, v20, v21, "AccessoryFirmwareUpdateManager: %s - creating a state machine for an existing device %s", v22, 0x16u);
      swift_arrayDestroy();
      v29 = v23;
      v11 = v75;
      MEMORY[0x2318C73A0](v29, -1, -1);
      MEMORY[0x2318C73A0](v22, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }
  }

  v30 = type metadata accessor for AccessoryUarpDeviceBridge();
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[4] = 0;
  swift_unknownObjectWeakInit();
  v31[5] = 0x302E302E302E30;
  v31[6] = 0xE700000000000000;
  v32 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  result = sub_22D04F688(v5 + v32, v81, &unk_27D9F67A0, &unk_22D05E720);
  if (!v81[3])
  {
    __break(1u);
    goto LABEL_16;
  }

  v66 = v5;
  v34 = *(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue);
  if (!v34)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v64[0] = *(v11 + 16);
  v35 = v76;
  v65 = a1;
  v36 = v74;
  (v64[0])(v76, a1, v74);
  v80[3] = v30;
  v80[4] = &off_28403BC10;
  v80[0] = v31;
  type metadata accessor for AccessoryFirmwareUpdateDeviceStateMachine(0);
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v80, v30);
  v64[1] = v64;
  MEMORY[0x28223BE20](v38);
  v40 = (v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;
  v79[3] = v30;
  v79[4] = &off_28403BC10;
  v79[0] = v42;
  *(v37 + 16) = 0x404E000000000000;
  v43 = (v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_availableFirmwareVersion);
  *v43 = 0;
  v43[1] = 0;
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer) = 0;
  v44 = v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0;
  v45 = v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0;
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateMachineMonitor + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = 0;
  sub_22D04F500(v79, v78);
  swift_beginAccess();
  swift_retain_n();
  v46 = v34;
  sub_22D04F564(v78, v44, &qword_27D9F66B0, &qword_22D05EA70);
  swift_endAccess();
  sub_22D04F500(v81, v78);
  swift_beginAccess();
  sub_22D04F564(v78, v45, &unk_27D9F67A0, &unk_22D05E720);
  swift_endAccess();
  *(v37 + 24) = v46;
  (v64[0])(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v35, v36);
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceType) = v67;
  v47 = (v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
  v48 = v69;
  *v47 = v68;
  v47[1] = v48;
  v49 = (v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_availableFirmwareVersion);
  *v49 = 0;
  v49[1] = 0;
  v50 = v46;

  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState) = 0;
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables) = MEMORY[0x277D84F98];
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_isConnected) = 0;
  v51 = v70;
  sub_22D05D98C();
  sub_22D05D99C();
  v53 = v52;
  (*(v71 + 8))(v51, v72);
  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime) = v53;
  sub_22D05635C();
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v54 = sub_22D05DA2C();
  __swift_project_value_buffer(v54, qword_27D9F65C0);
  v55 = sub_22D05DA0C();
  v56 = sub_22D05DB5C();
  v57 = os_log_type_enabled(v55, v56);
  v58 = v66;
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v78[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_22D04BCD8(0xD000000000000090, 0x800000022D061030, v78);
    _os_log_impl(&dword_22D042000, v55, v56, "AccessoryFirmwareUpdateDeviceStateMachine: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x2318C73A0](v60, -1, -1);
    MEMORY[0x2318C73A0](v59, -1, -1);
  }

  else
  {
  }

  (*(v75 + 8))(v76, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  v61 = v65;
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  v62 = v73;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80[0] = *(v58 + v62);
  *(v58 + v62) = 0x8000000000000000;
  sub_22D05BBE8(v37, v61, isUniquelyReferenced_nonNull_native);
  *(v58 + v62) = v80[0];
  swift_endAccess();

  *(v37 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateMachineMonitor + 8) = &off_28403BAD0;
  swift_unknownObjectWeakAssign();
  return v37;
}

void sub_22D04A854(char a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_22D05D9EC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  if (a1)
  {
    v48[0] = *a3;
    sub_22D049EB0(a2, v48, a4, a5);
    sub_22D054AC8();
  }

  else
  {
    v18 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v19 = swift_beginAccess();
    v20 = *(v5 + v18);
    MEMORY[0x28223BE20](v19);
    *(&v44 - 2) = a2;

    v21 = sub_22D047C98(sub_22D04F6F0, (&v44 - 4), v20);

    if (v21)
    {
      v46 = v5;
      if (*(*(v5 + v18) + 16))
      {

        sub_22D04C4FC(a2);
        if (v22)
        {

          sub_22D054AE8();
        }

        else
        {
        }
      }

      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v32 = sub_22D05DA2C();
      __swift_project_value_buffer(v32, qword_27D9F65C0);
      (*(v12 + 16))(v17, a2, v11);
      v33 = sub_22D05DA0C();
      v34 = sub_22D05DB5C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v47[0] = v45;
        *v35 = 136315394;
        *(v35 + 4) = sub_22D04BCD8(0xD000000000000060, 0x800000022D061120, v47);
        *(v35 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v36 = sub_22D05DCCC();
        v38 = v37;
        (*(v12 + 8))(v17, v11);
        v39 = sub_22D04BCD8(v36, v38, v47);

        *(v35 + 14) = v39;
        _os_log_impl(&dword_22D042000, v33, v34, "AccessoryFirmwareUpdateManager: %s - removing state machine of %s due to an unpairing event", v35, 0x16u);
        v40 = v45;
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v40, -1, -1);
        MEMORY[0x2318C73A0](v35, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v17, v11);
      }

      v41 = v46;
      swift_beginAccess();
      sub_22D04AEBC(a2);
      swift_endAccess();

      v42 = *(v41 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer);
      if (v42)
      {
        v43 = v42;
        sub_22D044C28(a2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v23 = sub_22D05DA2C();
      __swift_project_value_buffer(v23, qword_27D9F65C0);
      (*(v12 + 16))(v15, a2, v11);
      v24 = sub_22D05DA0C();
      v25 = sub_22D05DB5C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v47[0] = v27;
        *v26 = 136315394;
        *(v26 + 4) = sub_22D04BCD8(0xD000000000000060, 0x800000022D061120, v47);
        *(v26 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v28 = sub_22D05DCCC();
        v30 = v29;
        (*(v12 + 8))(v15, v11);
        v31 = sub_22D04BCD8(v28, v30, v47);

        *(v26 + 14) = v31;
        _os_log_impl(&dword_22D042000, v24, v25, "AccessoryFirmwareUpdateManager: %s - failed to remove state machine of %s since no record found", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v27, -1, -1);
        MEMORY[0x2318C73A0](v26, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v15, v11);
      }
    }
  }
}

uint64_t sub_22D04AEBC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22D04C4FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22D05C194();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_22D05D9EC();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_22D05B62C(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_22D04AF84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-v9];
  v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v37 = a1;

  v13 = sub_22D047C98(sub_22D04F6F0, &v36, v12);

  if (v13)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v14 = sub_22D05DA2C();
    __swift_project_value_buffer(v14, qword_27D9F65C0);
    (*(v5 + 16))(v10, a1, v4);
    v15 = sub_22D05DA0C();
    v16 = sub_22D05DB5C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38[0] = v35;
      *v17 = 136315394;
      *(v17 + 4) = sub_22D04BCD8(0xD00000000000002DLL, 0x800000022D060F50, v38);
      *(v17 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = v16;
      v18 = sub_22D05DCCC();
      v20 = v19;
      (*(v5 + 8))(v10, v4);
      v21 = sub_22D04BCD8(v18, v20, v38);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_22D042000, v15, v34, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s", v17, 0x16u);
      v22 = v35;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v22, -1, -1);
      MEMORY[0x2318C73A0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    if (*(*(v2 + v11) + 16))
    {

      sub_22D04C4FC(a1);
      if (v32)
      {
        swift_retain_n();

        sub_22D054738(1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v23 = sub_22D05DA2C();
    __swift_project_value_buffer(v23, qword_27D9F65C0);
    (*(v5 + 16))(v8, a1, v4);
    v24 = sub_22D05DA0C();
    v25 = sub_22D05DB4C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_22D04BCD8(0xD00000000000002DLL, 0x800000022D060F50, v38);
      *(v26 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_22D05DCCC();
      v30 = v29;
      (*(v5 + 8))(v8, v4);
      v31 = sub_22D04BCD8(v28, v30, v38);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_22D042000, v24, v25, "AccessoryFirmwareUpdateManager: %s - failed to process %s because we don't have a record of it", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v27, -1, -1);
      MEMORY[0x2318C73A0](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

void sub_22D04B4FC(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v4 = v3;
  v7 = a3;
  v8 = sub_22D05D9EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v7)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v12 = sub_22D05DA2C();
    __swift_project_value_buffer(v12, qword_27D9F65C0);
    (*(v9 + 16))(v11, a1, v8);
    v13 = sub_22D05DA0C();
    v14 = sub_22D05DB5C();
    if (os_log_type_enabled(v13, v14))
    {
      v33 = v4;
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v15 = 136315906;
      *(v15 + 4) = sub_22D04BCD8(0xD000000000000033, 0x800000022D060F10, &v34);
      *(v15 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_22D05DCCC();
      v18 = v17;
      (*(v9 + 8))(v11, v8);
      v19 = sub_22D04BCD8(v16, v18, &v34);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2080;
      v20 = 0xEA0000000000676ELL;
      v21 = 0x697463656E6E6F63;
      if (a2 != 2)
      {
        v21 = 0x6C62616863616572;
        v20 = 0xE900000000000065;
      }

      v22 = 0xEC00000079627261;
      v23 = 0x654E656369766564;
      if (!a2)
      {
        v23 = 0x6863616552746F6ELL;
        v22 = 0xEC000000656C6261;
      }

      if (a2 <= 1u)
      {
        v24 = v23;
      }

      else
      {
        v24 = v21;
      }

      if (a2 <= 1u)
      {
        v25 = v22;
      }

      else
      {
        v25 = v20;
      }

      v26 = sub_22D04BCD8(v24, v25, &v34);

      *(v15 + 24) = v26;
      *(v15 + 32) = 2080;
      v27 = sub_22D04BCD8(0x6863616552746F6ELL, 0xEC000000656C6261, &v34);

      *(v15 + 34) = v27;
      _os_log_impl(&dword_22D042000, v13, v14, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s - transitioned from %s to %s - completed processing maintenance event", v15, 0x2Au);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v28, -1, -1);
      MEMORY[0x2318C73A0](v15, -1, -1);

      v4 = v33;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v29 = *(v4 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer);
    if (v29)
    {
      v30 = v29;
      sub_22D045764(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

id AccessoryFirmwareUpdateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_22D04B96C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D04BA30(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_22D04BA7C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6690, &qword_22D05EA58);
  v10 = *(sub_22D05D9EC() - 8);
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
  v15 = *(sub_22D05D9EC() - 8);
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

uint64_t sub_22D04BC7C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22D04BCD8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_22D04BCD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22D04BDA4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22D04F62C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_22D04BDA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22D04BEB0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22D05DC7C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_22D04BEB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_22D04BEFC(a1, a2);
  sub_22D04C02C(&unk_28403B958);
  return v3;
}

void *sub_22D04BEFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22D04C118(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22D05DC7C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22D05DB1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22D04C118(v10, 0);
        result = sub_22D05DC5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22D04C02C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22D04C18C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22D04C118(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66C0, &qword_22D05EA80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22D04C18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66C0, &qword_22D05EA80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_22D04C280(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22D04C290(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void *sub_22D04C304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D04C324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D04C324(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6690, &qword_22D05EA58);
  v10 = *(sub_22D05D9EC() - 8);
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
  v15 = *(sub_22D05D9EC() - 8);
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

unint64_t sub_22D04C4FC(uint64_t a1)
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_22D05DAAC();

  return sub_22D04C6E4(a1, v2);
}

unint64_t sub_22D04C594(uint64_t a1)
{
  v1 = a1;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v1);
  v2 = sub_22D05DD8C();

  return sub_22D04C8A4(v1, v2);
}

unint64_t sub_22D04C600(uint64_t a1)
{
  v1 = a1;
  sub_22D05DD5C();
  sub_22D052498(v4, v1);
  v2 = sub_22D05DD8C();

  return sub_22D04C914(v1, v2);
}

unint64_t sub_22D04C66C(uint64_t a1, uint64_t a2)
{
  sub_22D05DD5C();
  sub_22D05DAFC();
  v4 = sub_22D05DD8C();

  return sub_22D04CAA4(a1, a2, v4);
}

unint64_t sub_22D04C6E4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_22D05DACC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_22D04C8A4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22D04C914(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      v8 = v7 >> 5;
      if (v7 >> 5 <= 1)
      {
        if (v8)
        {
          if ((a1 & 0xE0) != 0x20)
          {
            goto LABEL_4;
          }
        }

        else if (a1 > 0x1Fu)
        {
          goto LABEL_4;
        }

        if (((v7 ^ a1) & 1) == 0)
        {
          return result;
        }
      }

      else if (v8 == 2)
      {
        if ((a1 & 0xE0) == 0x40 && ((v7 ^ a1) & 0x1F) == 0)
        {
          return result;
        }
      }

      else if (v8 == 4)
      {
        if (a1 == 128)
        {
          return result;
        }
      }

      else if (*(*(v2 + 48) + result) > 0x63u)
      {
        if (*(*(v2 + 48) + result) > 0x65u)
        {
          if (v7 == 102)
          {
            if (a1 == 102)
            {
              return result;
            }
          }

          else if (a1 == 103)
          {
            return result;
          }
        }

        else if (v7 == 100)
        {
          if (a1 == 100)
          {
            return result;
          }
        }

        else if (a1 == 101)
        {
          return result;
        }
      }

      else if (*(*(v2 + 48) + result) > 0x61u)
      {
        if (v7 == 98)
        {
          if (a1 == 98)
          {
            return result;
          }
        }

        else if (a1 == 99)
        {
          return result;
        }
      }

      else if (v7 == 96)
      {
        if (a1 == 96)
        {
          return result;
        }
      }

      else if (a1 == 97)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22D04CAA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22D05DCDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22D04CB5C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v5 = *(updated - 1);
  v6 = MEMORY[0x28223BE20](updated);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  v11 = updated[5];
  MEMORY[0x2318C6EA0](*(a2 + v11));
  v12 = (a2 + updated[6]);
  v13 = *v12;
  v30 = v12[1];
  v31 = v13;
  sub_22D05DAFC();
  v29 = *(a2 + updated[7]);
  MEMORY[0x2318C6EA0]();
  v14 = sub_22D05DD8C();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_22D04E83C(*(v10 + 48) + v18 * v16, v8);
      if ((sub_22D05D9DC() & 1) != 0 && v8[updated[5]] == *(a2 + v11))
      {
        v19 = &v8[updated[6]];
        v20 = *v19 == v31 && *(v19 + 1) == v30;
        if (v20 || (sub_22D05DCDC()) && *&v8[updated[7]] == v29)
        {
          break;
        }
      }

      sub_22D04E8A0(v8);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_22D04E8A0(v8);
    sub_22D04E8A0(a2);
    sub_22D04E83C(*(v10 + 48) + v18 * v16, v28);
    return 0;
  }

  else
  {
LABEL_13:
    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v26;
    sub_22D04E83C(a2, v26);
    v32 = *v21;
    sub_22D04D194(v23, v16, isUniquelyReferenced_nonNull_native);
    *v21 = v32;
    sub_22D04E8FC(a2, v28);
    return 1;
  }
}

uint64_t sub_22D04CE34(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v34 = *(updated - 8);
  v35 = updated;
  MEMORY[0x28223BE20](updated);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66A8, &qword_22D05EA68);
  result = sub_22D05DC4C();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_22D04E8FC(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_22D05DD5C();
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22D05DABC();
      v22 = v35;
      MEMORY[0x2318C6EA0](v5[*(v35 + 20)]);
      sub_22D05DAFC();
      MEMORY[0x2318C6EA0](*&v5[*(v22 + 28)]);
      result = sub_22D05DD8C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22D04E8FC(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22D04D194(uint64_t a1, unint64_t a2, char a3)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v8 = *(updated - 1);
  MEMORY[0x28223BE20](updated);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v8;
  v31 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_22D04CE34(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22D04D478();
      goto LABEL_20;
    }

    sub_22D04D65C(v11 + 1);
  }

  v13 = *v3;
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  v14 = updated[5];
  MEMORY[0x2318C6EA0](*(a1 + v14));
  v15 = (a1 + updated[6]);
  v16 = v15[1];
  v32 = *v15;
  sub_22D05DAFC();
  v29 = *(a1 + updated[7]);
  MEMORY[0x2318C6EA0]();
  v17 = sub_22D05DD8C();
  v18 = -1 << *(v13 + 32);
  a2 = v17 & ~v18;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v8 + 72);
    do
    {
      sub_22D04E83C(*(v13 + 48) + v20 * a2, v10);
      if ((sub_22D05D9DC() & 1) != 0 && v10[updated[5]] == *(a1 + v14))
      {
        v21 = &v10[updated[6]];
        v22 = *v21 == v32 && *(v21 + 1) == v16;
        if (v22 || (sub_22D05DCDC()) && *&v10[updated[7]] == v29)
        {
          goto LABEL_23;
        }
      }

      sub_22D04E8A0(v10);
      a2 = (a2 + 1) & v19;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_20:
  v23 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22D04E8FC(a1, *(v23 + 48) + *(v30 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_23:
  sub_22D04E8A0(v10);
  result = sub_22D05DCEC();
  __break(1u);
  return result;
}

void *sub_22D04D478()
{
  v1 = v0;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v3 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66A8, &qword_22D05EA68);
  v6 = *v0;
  v7 = sub_22D05DC3C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_22D04E83C(*(v6 + 48) + v21, v5);
        result = sub_22D04E8FC(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_22D04D65C(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v33 = *(updated - 8);
  v34 = updated;
  MEMORY[0x28223BE20](updated);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66A8, &qword_22D05EA68);
  result = sub_22D05DC4C();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_22D04E83C(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_22D05DD5C();
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22D05DABC();
      v22 = v34;
      MEMORY[0x2318C6EA0](v5[*(v34 + 20)]);
      sub_22D05DAFC();
      MEMORY[0x2318C6EA0](*&v5[*(v22 + 28)]);
      result = sub_22D05DD8C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22D04E8FC(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_22D04D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v26 = *(updated - 1);
  MEMORY[0x28223BE20](updated);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v7 = *v2;
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D05DABC();
  v8 = updated[5];
  MEMORY[0x2318C6EA0](*(a1 + v8));
  v9 = (a1 + updated[6]);
  v10 = *v9;
  v28 = v9[1];
  v29 = v10;
  sub_22D05DAFC();
  v27 = *(a1 + updated[7]);
  MEMORY[0x2318C6EA0]();
  v11 = sub_22D05DD8C();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return (*(v26 + 56))(v25, 1, 1, updated);
  }

  v14 = ~v12;
  v15 = *(v26 + 72);
  while (1)
  {
    sub_22D04E83C(*(v7 + 48) + v15 * v13, v6);
    if ((sub_22D05D9DC() & 1) != 0 && v6[updated[5]] == *(a1 + v8))
    {
      v16 = &v6[updated[6]];
      v17 = *v16 == v29 && *(v16 + 1) == v28;
      if (v17 || (sub_22D05DCDC()) && *&v6[updated[7]] == v27)
      {
        break;
      }
    }

    sub_22D04E8A0(v6);
    v13 = (v13 + 1) & v14;
    if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return (*(v26 + 56))(v25, 1, 1, updated);
    }
  }

  sub_22D04E8A0(v6);
  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v19;
  v30 = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22D04D478();
    v21 = v30;
  }

  v22 = v25;
  sub_22D04E8FC(*(v21 + 48) + v15 * v13, v25);
  sub_22D04DC58(v13);
  *v19 = v30;
  return (*(v26 + 56))(v22, 0, 1, updated);
}

uint64_t sub_22D04DC58(unint64_t a1)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v28 = *(updated - 8);
  result = MEMORY[0x28223BE20](updated);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = a1;
    v12 = sub_22D05DC2C();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v13 = (v12 + 1) & v10;
      v14 = *(v28 + 72);
      v15 = v10;
      v29 = v7;
      do
      {
        v16 = v14;
        v17 = v14 * v9;
        sub_22D04E83C(*(v6 + 48) + v14 * v9, v5);
        v18 = v6;
        sub_22D05DD5C();
        sub_22D05D9EC();
        sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v19 = v13;
        v20 = v15;
        sub_22D05DABC();
        v21 = updated;
        MEMORY[0x2318C6EA0](v5[*(updated + 20)]);
        sub_22D05DAFC();
        MEMORY[0x2318C6EA0](*&v5[*(v21 + 28)]);
        v22 = sub_22D05DD8C();
        sub_22D04E8A0(v5);
        v23 = v22 & v20;
        v15 = v20;
        v13 = v19;
        if (v11 >= v19)
        {
          if (v23 < v19)
          {
            v6 = v18;
          }

          else
          {
            v6 = v18;
            if (v11 >= v23)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v6 = v18;
          if (v23 >= v13 || v11 >= v23)
          {
LABEL_13:
            v14 = v16;
            v24 = v16 * v11;
            if (v16 * v11 < v17 || *(v6 + 48) + v16 * v11 >= (*(v6 + 48) + v17 + v16))
            {
              swift_arrayInitWithTakeFrontToBack();
              v11 = v9;
            }

            else
            {
              v11 = v9;
              if (v24 != v17)
              {
                swift_arrayInitWithTakeBackToFront();
                v11 = v9;
              }
            }

            goto LABEL_6;
          }
        }

        v14 = v16;
LABEL_6:
        v9 = (v9 + 1) & v15;
        v7 = v29;
      }

      while (((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v11) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v6 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v27;
    ++*(v6 + 36);
  }

  return result;
}

BOOL _s23AccessoryFirmwareUpdate0abcA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_22D05D9DC() & 1) != 0 && (updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0), *(a1 + updated[5]) == *(a2 + updated[5])) && ((v5 = updated[6], v7 = *(a1 + v5), v6 = *(a1 + v5 + 8), v8 = (a2 + v5), v7 == *v8) ? (v9 = v6 == v8[1]) : (v9 = 0), v9 || (v10 = updated, v11 = sub_22D05DCDC(), updated = v10, (v11)))
  {
    return *(a1 + updated[7]) == *(a2 + updated[7]);
  }

  else
  {
    return 0;
  }
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

uint64_t sub_22D04E09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F67A0, &unk_22D05E720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D04E10C()
{
  result = qword_281448130;
  if (!qword_281448130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281448130);
  }

  return result;
}

uint64_t sub_22D04E158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D04E1A0()
{
  result = qword_281448140;
  if (!qword_281448140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F6608, &qword_22D05E750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281448140);
  }

  return result;
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

id sub_22D04E24C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_queue;
  *&v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_queue] = 0;
  v7 = &v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_client];
  *&v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_client + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  v9 = sub_22D05D9EC();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = *&v3[v6];
  *&v3[v6] = a1;
  v11 = a1;

  *(v7 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for AccessoryFirmwareUpdateSerializer(0);
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t sub_22D04E354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22D05D9EC();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_22D04E49C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22D04BA7C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_22D04E354(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_22D04E55C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66C8, &qword_22D05EA88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F67D0, qword_22D05EA90);
    v7 = sub_22D05DCBC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22D04F688(v9, v5, &qword_27D9F66C8, &qword_22D05EA88);
      result = sub_22D04C4FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22D05D9EC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_22D04E764(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22D04E79C()
{
  result = qword_27D9F6610;
  if (!qword_27D9F6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6610);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_22D04E83C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_22D04E8A0(uint64_t a1)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_22D04E8FC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_22D04E990(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22D04E9E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_22D04E9FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22D04EA58()
{
  result = qword_27D9F6628;
  if (!qword_27D9F6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6628);
  }

  return result;
}

unint64_t sub_22D04EAB0()
{
  result = qword_27D9F6638;
  if (!qword_27D9F6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryFirmwareUpdateDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryFirmwareUpdateDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22D04ECD4(uint64_t a1)
{
  result = sub_22D05D9EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22D04ED78(uint64_t a1)
{
  sub_22D04EE2C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D04EE2C(uint64_t a1)
{
  if (!qword_281448460)
  {
    sub_22D05D9EC();
    v1 = sub_22D05DC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_281448460);
    }
  }
}

uint64_t getEnumTagSinglePayload for AirTag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirTag(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22D04F198()
{
  result = qword_27D9F6670;
  if (!qword_27D9F6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6670);
  }

  return result;
}

unint64_t sub_22D04F1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F67B0, &qword_22D05EA48);
  v3 = sub_22D05DCBC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  result = sub_22D04C600(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v11 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v12 = v3[7] + 24 * result;
    *v12 = v5;
    *(v12 + 1) = v6;
    *(v12 + 8) = v7;
    *(v12 + 16) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    sub_22D04F454(v7, v8);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v11 - 24);
    v5 = *(v11 - 16);
    v6 = *(v11 - 15);
    v7 = *(v11 - 1);
    v8 = *v11;
    result = sub_22D04C600(v4);
    v11 += 4;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22D04F314(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6678, &qword_22D05EA38);
    v3 = sub_22D05DCBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22D04F688(v4, &v13, &qword_27D9F6680, &qword_22D05EA40);
      v5 = v13;
      v6 = v14;
      result = sub_22D04C66C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22D04F444(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_22D04F444(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22D04F454(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22D04F500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D04F564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D04F5CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22D04F62C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D04F688(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D04F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22D05D9EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v14 = sub_22D05DA2C();
  __swift_project_value_buffer(v14, qword_27D9F65C0);
  v15 = *(v11 + 16);
  v37 = a1;
  v15(v13, a1, v10);
  v16 = sub_22D05DA0C();
  v17 = sub_22D05DB5C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v36 = a2;
    v34 = v20;
    v38 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_22D04BCD8(0xD000000000000029, 0x800000022D061400, &v38);
    *(v19 + 12) = 2080;
    sub_22D051CD8();
    v21 = sub_22D05DCCC();
    v22 = a3;
    v24 = v23;
    (*(v11 + 8))(v13, v10);
    v25 = sub_22D04BCD8(v21, v24, &v38);
    a3 = v22;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_22D042000, v16, v17, "#AccessoryUarpDeviceBridge -%s for %s", v19, 0x16u);
    v26 = v34;
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v26, -1, -1);
    v27 = v19;
    a4 = v35;
    MEMORY[0x2318C73A0](v27, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v28 = objc_allocWithZone(MEMORY[0x277D73FD8]);
  v29 = sub_22D05D9CC();
  v30 = [v28 initWithUUID:v29 delegate:v5 delegateQueue:a4 listener:0];

  v31 = *(v5 + 16);
  *(v5 + 16) = v30;

  *(v5 + 32) = a3;
  return swift_unknownObjectWeakAssign();
}

id sub_22D04FB54()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD000000000000011, 0x800000022D0613E0, &v8);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  result = *(v1 + 16);
  if (result)
  {

    return [result deviceAvailable_];
  }

  return result;
}

id sub_22D04FCD4()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD000000000000013, 0x800000022D0613C0, &v9);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  v7 = *(v1 + 16);

  return [v7 deviceUnavailable];
}

id sub_22D04FE34()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD00000000000001ALL, 0x800000022D0613A0, &v8);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  result = *(v1 + 16);
  if (result)
  {

    return [result deviceTransportAvailable_];
  }

  return result;
}

void sub_22D04FFB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v4 = sub_22D05DA2C();
  __swift_project_value_buffer(v4, qword_27D9F65C0);
  v5 = sub_22D05DA0C();
  v6 = sub_22D05DB5C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22D04BCD8(0xD000000000000034, 0x800000022D061360, &v12);
    _os_log_impl(&dword_22D042000, v5, v6, "#AccessoryUarpDeviceBridge -%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v7, -1, -1);
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = v9;
    v11 = sub_22D05D95C();
    [v10 deviceReceiveUarpMessageFromTransport_];
  }
}

id sub_22D050170()
{
  v1 = *(v0 + 16);
  if (!v1 || (v2 = [v1 activeFirmwareVersion]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, sel_versionString), v3, !v4))
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v15 = sub_22D05DA2C();
    __swift_project_value_buffer(v15, qword_27D9F65C0);
    v16 = sub_22D05DA0C();
    v17 = sub_22D05DB4C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22D04BCD8(0xD000000000000017, 0x800000022D061340, &v30);
      _os_log_impl(&dword_22D042000, v16, v17, "#AccessoryUarpDeviceBridge -%s activeFirmwareVersionStr is nil", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2318C73A0](v19, -1, -1);
      MEMORY[0x2318C73A0](v18, -1, -1);
    }

    return 0;
  }

  v5 = sub_22D05DADC();
  v7 = v6;

  v8 = v5 == *(v0 + 40) && v7 == *(v0 + 48);
  if (v8 || (sub_22D05DCDC() & 1) != 0)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v9 = sub_22D05DA2C();
    __swift_project_value_buffer(v9, qword_27D9F65C0);

    v10 = sub_22D05DA0C();
    v11 = sub_22D05DB4C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_22D04BCD8(0xD000000000000017, 0x800000022D061340, &v30);
      *(v12 + 12) = 2080;
      v14 = sub_22D04BCD8(v5, v7, &v30);

      *(v12 + 14) = v14;
      _os_log_impl(&dword_22D042000, v10, v11, "#AccessoryUarpDeviceBridge -%s activeFirmwareVersionStr is invalid - %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v13, -1, -1);
      MEMORY[0x2318C73A0](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v21 = *(v0 + 16);
  v22 = MEMORY[0x277D83B88];
  v23 = MEMORY[0x277D83BF8];
  if (v21)
  {
    result = [*(v0 + 16) activeFirmwareVersion];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;

    v34 = 0;
    v35 = 0xE000000000000000;
    v28 = v22;
    v29 = v23;
    *&v27 = [v24 majorVersion];
    sub_22D051CC0(&v27, &v30);
  }

  else
  {

    v24 = 0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v32 = MEMORY[0x277D837D0];
    v33 = MEMORY[0x277D83838];
    v30 = 7104878;
    v31 = 0xE300000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F6730, qword_22D05EB68);
  sub_22D05DC8C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  MEMORY[0x2318C6C40](46, 0xE100000000000000);
  if (v21)
  {
    v25 = [v24 minorVersion];
    v28 = v22;
    v29 = v23;
    *&v27 = v25;
    sub_22D051CC0(&v27, &v30);
  }

  else
  {
    v32 = MEMORY[0x277D837D0];
    v33 = MEMORY[0x277D83838];
    v30 = 7104878;
    v31 = 0xE300000000000000;
  }

  sub_22D05DC8C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  MEMORY[0x2318C6C40](46, 0xE100000000000000);
  if (v21)
  {
    v26 = [v24 buildVersion];
    v28 = v22;
    v29 = v23;
    *&v27 = v26;
    sub_22D051CC0(&v27, &v30);
  }

  else
  {
    v32 = MEMORY[0x277D837D0];
    v33 = MEMORY[0x277D83838];
    v30 = 7104878;
    v31 = 0xE300000000000000;
  }

  sub_22D05DC8C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);

  return v34;
}

id sub_22D050698()
{
  result = *(v0 + 16);
  if (result)
  {
    result = [result stagedFirmwareVersion];
    if (result)
    {
      v2 = result;
      v3 = [result versionString];

      if (!v3)
      {
        return 0;
      }

      v4 = sub_22D05DADC();
      v6 = v5;

      v7 = v4 == *(v0 + 40) && v6 == *(v0 + 48);
      if (v7 || (sub_22D05DCDC() & 1) != 0)
      {

        return 0;
      }

      v8 = *(v0 + 16);
      v9 = MEMORY[0x277D83B88];
      v10 = MEMORY[0x277D83BF8];
      if (v8)
      {
        result = [*(v0 + 16) stagedFirmwareVersion];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;

        v21 = 0;
        v22 = 0xE000000000000000;
        v15 = v9;
        v16 = v10;
        *&v14 = [v11 majorVersion];
        sub_22D051CC0(&v14, &v17);
      }

      else
      {

        v11 = 0;
        v21 = 0;
        v22 = 0xE000000000000000;
        v19 = MEMORY[0x277D837D0];
        v20 = MEMORY[0x277D83838];
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F6730, qword_22D05EB68);
      sub_22D05DC8C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      MEMORY[0x2318C6C40](46, 0xE100000000000000);
      if (v8)
      {
        v12 = [v11 minorVersion];
        v15 = v9;
        v16 = v10;
        *&v14 = v12;
        sub_22D051CC0(&v14, &v17);
      }

      else
      {
        v19 = MEMORY[0x277D837D0];
        v20 = MEMORY[0x277D83838];
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      sub_22D05DC8C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      MEMORY[0x2318C6C40](46, 0xE100000000000000);
      if (v8)
      {
        v13 = [v11 buildVersion];
        v15 = v9;
        v16 = v10;
        *&v14 = v13;
        sub_22D051CC0(&v14, &v17);
      }

      else
      {
        v19 = MEMORY[0x277D837D0];
        v20 = MEMORY[0x277D83838];
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      sub_22D05DC8C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);

      return v21;
    }
  }

  return result;
}

void sub_22D050954()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0x44796F7274736564, 0xEF29286563697665, &v8);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  v7 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t sub_22D050AB8(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD000000000000021, 0x800000022D061310, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_22D052A28();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22D050CB0(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD00000000000001BLL, 0x800000022D0612F0, &v10);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22D052A48();
    swift_unknownObjectRelease();
  }

  sub_22D0515A4(3);
}

void sub_22D050E94(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D0612D0, &v10);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22D052D40();
    swift_unknownObjectRelease();
  }

  sub_22D0515A4(4);
}

void sub_22D051078(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D0612B0, &v10);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22D052D60();
    swift_unknownObjectRelease();
  }

  sub_22D0515A4(5);
}

uint64_t sub_22D05125C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_22D0512BC(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v6 = sub_22D05DA2C();
  __swift_project_value_buffer(v6, qword_27D9F65C0);
  v7 = a1;
  sub_22D051C04(a2, a3);
  v8 = sub_22D05DA0C();
  v9 = sub_22D05DB5C();

  sub_22D04E990(a2, a3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_22D04BCD8(0xD00000000000002FLL, 0x800000022D061280, &v18);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2080;
    v13 = v7;
    v14 = sub_22D05D94C();
    v16 = sub_22D04BCD8(v14, v15, &v18);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_22D042000, v8, v9, "#AccessoryUarpDeviceBridge -%s for %@ with %s", v10, 0x20u);
    sub_22D051C58(v11);
    MEMORY[0x2318C73A0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v12, -1, -1);
    MEMORY[0x2318C73A0](v10, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_22D052D80(a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22D0515A4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_22D050170();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    oslog = sub_22D050698();
    if (v6)
    {
      v7 = v6;
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v8 = sub_22D05DA2C();
      __swift_project_value_buffer(v8, qword_27D9F65C0);

      v9 = sub_22D05DA0C();
      v10 = sub_22D05DB5C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v35 = v12;
        *v11 = 136315906;
        *(v11 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061240, &v35);
        *(v11 + 12) = 2080;
        v13 = sub_22D04BCD8(v4, v5, &v35);

        *(v11 + 14) = v13;
        *(v11 + 22) = 2080;
        v14 = oslog;
        *(v11 + 24) = sub_22D04BCD8(oslog, v7, &v35);
        *(v11 + 32) = 2080;
        v15 = sub_22D051DBC(v1);
        v17 = sub_22D04BCD8(v15, v16, &v35);

        *(v11 + 34) = v17;
        _os_log_impl(&dword_22D042000, v9, v10, "#AccessoryUarpDeviceBridge -%s - activeFirmwareVersion: %s, stagedFirmwareVersion: %s with completionReason: %s", v11, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v12, -1, -1);
        MEMORY[0x2318C73A0](v11, -1, -1);
      }

      else
      {

        v14 = oslog;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_22D0534A8(v14, v7, 0);
        goto LABEL_25;
      }
    }

    else
    {
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v25 = sub_22D05DA2C();
      __swift_project_value_buffer(v25, qword_27D9F65C0);

      v26 = sub_22D05DA0C();
      v27 = sub_22D05DB5C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v28 = 136315650;
        *(v28 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061240, &v35);
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_22D04BCD8(v4, v5, &v35);
        *(v28 + 22) = 2080;
        v30 = sub_22D051DBC(v1);
        v32 = sub_22D04BCD8(v30, v31, &v35);

        *(v28 + 24) = v32;
        _os_log_impl(&dword_22D042000, v26, v27, "#AccessoryUarpDeviceBridge -%s - only activeFirmwareVersion: %s retrieved -- reporting to delegate with completionReason: %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v29, -1, -1);
        MEMORY[0x2318C73A0](v28, -1, -1);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_22D052DA8(v4, v5);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_22D0534A8(v4, v5, v1);
LABEL_25:

        swift_unknownObjectRelease();
        return;
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v18 = sub_22D05DA2C();
    __swift_project_value_buffer(v18, qword_27D9F65C0);
    osloga = sub_22D05DA0C();
    v19 = sub_22D05DB4C();
    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061240, &v35);
      *(v20 + 12) = 2080;
      v22 = sub_22D051DBC(v1);
      v24 = sub_22D04BCD8(v22, v23, &v35);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_22D042000, osloga, v19, "#AccessoryUarpDeviceBridge -%s - No active firmware version found - exiting with completionReason: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v21, -1, -1);
      MEMORY[0x2318C73A0](v20, -1, -1);
    }
  }
}

uint64_t sub_22D051B98()
{
  sub_22D04F488(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22D051C04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22D051C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6630, &qword_22D05EB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D051CC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22D051CD8()
{
  result = qword_27D9F6760;
  if (!qword_27D9F6760)
  {
    sub_22D05D9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6760);
  }

  return result;
}

uint64_t sub_22D051DBC(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v4 = 0x6F5464656C696166;
    if (a1 != 1)
    {
      v4 = 0x697463656E6E6F63;
    }

    if (a1)
    {
      return v4;
    }

    else
    {
      return 0x73736563637573;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 == 5)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000016;
    if (a1 != 3)
    {
      v2 = 0x656465654E746F6ELL;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22D051EF8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_22D05DC6C();

    v7 = 0xD000000000000014;
    MEMORY[0x2318C6C40](a1, a2);
    return v7;
  }

  if (a3 == 1)
  {
    v7 = 0x6174614470726175;
    v3 = sub_22D05D94C();
    MEMORY[0x2318C6C40](v3);

    return v7;
  }

  return 0x617461446F6ELL;
}

uint64_t sub_22D051FD4()
{
  v1 = *(v0 + 16);
  sub_22D05DD5C();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x2318C6EA0](2);
      sub_22D05D97C();
    }

    else
    {
      MEMORY[0x2318C6EA0](0);
    }
  }

  else
  {
    MEMORY[0x2318C6EA0](1);
    sub_22D05DAFC();
  }

  return sub_22D05DD8C();
}

uint64_t sub_22D052074(uint64_t a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x2318C6EA0](2);

      return sub_22D05D97C();
    }

    else
    {
      return MEMORY[0x2318C6EA0](0);
    }
  }

  else
  {
    MEMORY[0x2318C6EA0](1);

    return sub_22D05DAFC();
  }
}

uint64_t sub_22D05212C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22D05DD5C();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x2318C6EA0](2);
      sub_22D05D97C();
    }

    else
    {
      MEMORY[0x2318C6EA0](0);
    }
  }

  else
  {
    MEMORY[0x2318C6EA0](1);
    sub_22D05DAFC();
  }

  return sub_22D05DD8C();
}

uint64_t sub_22D0521C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 == 1)
      {
        return sub_22D05CE4C(v4, v5, v7, v8);
      }

      return 0;
    }

    if (v9 != 2 || (v8 | v7) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    if (v4 != v7 || v5 != v8)
    {
      return sub_22D05DCDC();
    }
  }

  return 1;
}

unint64_t sub_22D052234(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 1)
  {
    if (a1 >> 5)
    {
      return 0xD000000000000014;
    }

    sub_22D05DC6C();
    MEMORY[0x2318C6C40](0xD000000000000017, 0x800000022D0617F0);
LABEL_8:
    sub_22D05DC8C();
    return 0;
  }

  if (v1 == 2)
  {
    sub_22D05DC6C();
    MEMORY[0x2318C6C40](0xD000000000000023, 0x800000022D0616D0);
    goto LABEL_8;
  }

  if (v1 == 4)
  {
    return 0xD000000000000012;
  }

  if (a1 > 0x63u)
  {
    v5 = 0xD000000000000020;
    if (a1 != 102)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD00000000000001ALL;
    if (a1 == 100)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 0x65u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = 0x6172547075746573;
    v4 = 0xD000000000000017;
    if (a1 != 98)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 != 96)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 0x61u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_22D052498(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 5;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x2318C6EA0](9);
      v4 = a2 & 0x1F;
    }

    else if (v3 == 4)
    {
      v4 = 11;
    }

    else if (a2 > 0x63u)
    {
      if (a2 > 0x65u)
      {
        if (a2 == 102)
        {
          v4 = 8;
        }

        else
        {
          v4 = 10;
        }
      }

      else if (a2 == 100)
      {
        v4 = 6;
      }

      else
      {
        v4 = 7;
      }
    }

    else if (a2 > 0x61u)
    {
      if (a2 == 98)
      {
        v4 = 4;
      }

      else
      {
        v4 = 5;
      }
    }

    else if (a2 == 96)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    return MEMORY[0x2318C6EA0](v4);
  }

  if (!(a2 >> 5))
  {
    MEMORY[0x2318C6EA0](0);
    v4 = a2 & 1;
    return MEMORY[0x2318C6EA0](v4);
  }

  MEMORY[0x2318C6EA0](1);
  return sub_22D05DD7C();
}

uint64_t sub_22D052594()
{
  v1 = *v0;
  sub_22D05DD5C();
  sub_22D052498(v3, v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D0525E4(uint64_t a1)
{
  v2 = *v1;
  sub_22D05DD5C();
  sub_22D052498(v4, v2);
  return sub_22D05DD8C();
}

uint64_t sub_22D0526A4()
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v1 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
  swift_beginAccess();
  sub_22D04F564(&v6, v0 + v1, &qword_27D9F66B0, &qword_22D05EA70);
  swift_endAccess();
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v2 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  swift_beginAccess();
  sub_22D04F564(&v6, v0 + v2, &unk_27D9F67A0, &unk_22D05E720);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer) = 0;
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid;
  v4 = sub_22D05D9EC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  sub_22D04F5CC(v0 + v1, &qword_27D9F66B0, &qword_22D05EA70);
  sub_22D04F5CC(v0 + v2, &unk_27D9F67A0, &unk_22D05E720);
  sub_22D04F488(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateMachineMonitor);

  return v0;
}

uint64_t sub_22D052870()
{
  sub_22D0526A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateDeviceStateMachine(uint64_t a1)
{
  result = qword_281448438;
  if (!qword_281448438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D05291C(uint64_t a1)
{
  result = sub_22D05D9EC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22D052A68(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D05DA4C();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D05DA6C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 24);
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v17 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_22D052DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22D05DA4C();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D05DA6C();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 24);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  aBlock[4] = sub_22D05D184;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = &block_descriptor_116;
  v14 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v19 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_22D0530C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v5 = sub_22D05DA2C();
  __swift_project_value_buffer(v5, qword_27D9F65C0);

  v6 = sub_22D05DA0C();
  v7 = sub_22D05DB5C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D0618F0, v27);
    *(v8 + 12) = 2080;
    v25 = a1;
    if (a2)
    {
      v10 = a1;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = sub_22D04BCD8(v10, v12, v27);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
      v11 = *(Strong + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_22D04BCD8(v15, v11, v27);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_22D042000, v6, v7, "#AccessoryInteraction: %s - activeFirmwareVersion: %s & currentFirmwareVersion: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v9, -1, -1);
    MEMORY[0x2318C73A0](v8, -1, -1);

    a1 = v25;
    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  swift_beginAccess();
  v17 = swift_weakLoadStrong();
  if (v17)
  {
    v19 = *(v17 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    v18 = *(v17 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);

    if (v19 == a1 && v18 == a2)
    {

LABEL_21:
      v21 = sub_22D05DA0C();
      v22 = sub_22D05DB5C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D0618F0, v26);
        _os_log_impl(&dword_22D042000, v21, v22, "#AccessoryInteraction: %s - firmware version has not been updated", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x2318C73A0](v24, -1, -1);
        MEMORY[0x2318C73A0](v23, -1, -1);
      }

      return;
    }

    v20 = sub_22D05DCDC();

    if (v20)
    {
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D0551E4(0x67u, a1, a2, 0);
  }
}

uint64_t sub_22D0534A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D05DA4C();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D05DA6C();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  aBlock[4] = sub_22D05D110;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = &block_descriptor_109;
  v16 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v21 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

void sub_22D0537C8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v5 = sub_22D05D9BC();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v76 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u && a1 <= 4u && a1 != 3)
  {

    v8 = 0.01;
    v13 = 0xE900000000000064;
    v14 = 0x656465654E746F6ELL;
    goto LABEL_32;
  }

  v7 = sub_22D05DCDC();

  if (v7)
  {
    v8 = 0.01;
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime);

    v17 = v76;
    sub_22D05D98C();
    sub_22D05D99C();
    v19 = v18;
    v20 = *(v75 + 8);
    v20(v17, v5);
    if (v16 != v19)
    {
      v26 = v76;
      sub_22D05D9AC();
      sub_22D05D99C();
      v28 = v27;
      v20(v26, v5);
      v8 = v28 - v16;
LABEL_6:
      if (a1 <= 2u)
      {
        if (a1)
        {
          if (a1 != 1)
          {
            v13 = 0xEE0074736F4C6E6FLL;
            v14 = 0x697463656E6E6F63;
            goto LABEL_46;
          }

          v14 = 0x6F5464656C696166;
          v13 = 0xEF7463656E6E6F43;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x73736563637573;
        }
      }

      else
      {
        v9 = 0x800000022D0618B0;
        v10 = 0xD000000000000018;
        if (a1 != 5)
        {
          v9 = 0x800000022D061810;
          v10 = 0xD00000000000001BLL;
        }

        v11 = 0x800000022D0618D0;
        if (a1 != 3)
        {
          v11 = 0xE900000000000064;
        }

        v12 = 0x656465654E746F6ELL;
        if (a1 == 3)
        {
          v12 = 0xD000000000000016;
        }

        if (a1 <= 4u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (a1 <= 4u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }
      }

LABEL_32:
      v29 = sub_22D05DCDC();

      if (v29)
      {
        goto LABEL_47;
      }

      if (a1 != 1)
      {
        v30 = sub_22D05DCDC();

        if ((v30 & 1) == 0)
        {
          if (v8 > 0.0)
          {
LABEL_36:
            v72 = v5;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F67C0, &qword_22D05EF28);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22D05EBD0;
            *(inited + 32) = 0x6D614E746E657665;
            v32 = MEMORY[0x277D837D0];
            *(inited + 40) = 0xE900000000000065;
            *(inited + 48) = 0xD00000000000001DLL;
            *(inited + 56) = 0x800000022D061870;
            *(inited + 72) = v32;
            *(inited + 80) = 0x6E6F697461727564;
            *(inited + 88) = 0xE800000000000000;
            v33 = MEMORY[0x277D839F8];
            *(inited + 96) = v8;
            *(inited + 120) = v33;
            *(inited + 128) = 0x7555656369766564;
            *(inited + 136) = 0xEA00000000006469;
            swift_beginAccess();
            v34 = swift_weakLoadStrong();
            if (!v34)
            {
              __break(1u);
              return;
            }

            v35 = v34;
            v36 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid;
            v37 = sub_22D05D9EC();
            *(inited + 168) = v37;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
            (*(*(v37 - 8) + 16))(boxed_opaque_existential_0, v35 + v36, v37);

            *(inited + 176) = 0x6F69737265566F74;
            *(inited + 184) = 0xE90000000000006ELL;
            v39 = v74;
            *(inited + 192) = v73;
            *(inited + 200) = v39;
            *(inited + 216) = v32;
            *(inited + 224) = 0xD000000000000010;
            *(inited + 264) = v32;
            *(inited + 232) = 0x800000022D061890;
            *(inited + 240) = v14;
            *(inited + 248) = v13;

            v40 = sub_22D04F314(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6680, &qword_22D05EA40);
            swift_arrayDestroy();
            swift_beginAccess();
            v41 = swift_weakLoadStrong();
            if (v41)
            {
              v42 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
              v43 = v41;
              swift_beginAccess();
              sub_22D04F688(v43 + v42, &v81, &unk_27D9F67A0, &unk_22D05E720);

              v5 = v72;
              if (v83)
              {
                sub_22D04F500(&v81, v78);
                sub_22D04F5CC(&v81, &unk_27D9F67A0, &unk_22D05E720);
                v44 = v79;
                v45 = v80;
                __swift_project_boxed_opaque_existential_1(v78, v79);
                (*(v45 + 48))(v40, v44, v45);

                __swift_destroy_boxed_opaque_existential_1Tm(v78);
              }

              else
              {

                sub_22D04F5CC(&v81, &unk_27D9F67A0, &unk_22D05E720);
              }
            }

            else
            {

              v5 = v72;
            }

            swift_beginAccess();
            v46 = swift_weakLoadStrong();
            if (v46)
            {
              v47 = *(v46 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError);
              *(v46 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = 0;
            }

            goto LABEL_57;
          }

LABEL_52:

          if (qword_27D9F6498 != -1)
          {
            swift_once();
          }

          v61 = sub_22D05DA2C();
          __swift_project_value_buffer(v61, qword_27D9F65C0);
          v62 = sub_22D05DA0C();
          v63 = sub_22D05DB4C();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v81 = v65;
            *v64 = 136315138;
            *(v64 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061830, &v81);
            _os_log_impl(&dword_22D042000, v62, v63, "#AccessoryInteraction: %s - invalid firmware update duration calculated", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v65);
            MEMORY[0x2318C73A0](v65, -1, -1);
            MEMORY[0x2318C73A0](v64, -1, -1);
          }

LABEL_57:
          swift_beginAccess();
          v66 = swift_weakLoadStrong();
          if (v66)
          {
            v67 = v66;
            v68 = v76;
            sub_22D05D98C();
            sub_22D05D99C();
            v70 = v69;
            (*(v75 + 8))(v68, v5);
            *(v67 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime) = v70;
          }

          return;
        }

LABEL_47:
        v48 = 0x6E776F6E6B6E55;
        v81 = v14;
        v82 = v13;

        MEMORY[0x2318C6C40](58, 0xE100000000000000);

        v50 = v81;
        v49 = v82;
        swift_beginAccess();
        v51 = swift_weakLoadStrong();
        if (v51 && (v52 = *(v51 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError), v53 = v52, , v52))
        {
          ErrorValue = swift_getErrorValue();
          v71 = &v71;
          v72 = v5;
          v55 = v77;
          v56 = *(v77 - 8);
          MEMORY[0x28223BE20](ErrorValue);
          v58 = &v71 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v56 + 16))(v58);

          v48 = sub_22D05DD0C();
          v60 = v59;
          (*(v56 + 8))(v58, v55);
          v5 = v72;
        }

        else
        {
          v60 = 0xE700000000000000;
        }

        v81 = v50;
        v82 = v49;

        MEMORY[0x2318C6C40](v48, v60);

        v14 = v81;
        v13 = v82;
        if (v8 > 0.0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }

LABEL_46:

      goto LABEL_47;
    }
  }

  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v21 = sub_22D05DA2C();
  __swift_project_value_buffer(v21, qword_27D9F65C0);
  v22 = sub_22D05DA0C();
  v23 = sub_22D05DB4C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v81 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061830, &v81);
    _os_log_impl(&dword_22D042000, v22, v23, "#AccessoryInteraction: %s - firmware update start time has not been set", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x2318C73A0](v25, -1, -1);
    MEMORY[0x2318C73A0](v24, -1, -1);
  }
}

uint64_t sub_22D05443C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D05DA4C();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D05DA6C();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError);
  *(v3 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = a1;
  v14 = a1;

  v18 = *(v3 + 24);
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v21 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v12, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v7);
  (*(v10 + 8))(v12, v19);
}

uint64_t sub_22D054738(char a1)
{
  v2 = v1;
  v4 = sub_22D05DA4C();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D05DA6C();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError);
  *(v2 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = 0;

  v15 = *(v2 + 24);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_22D05D104;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = &block_descriptor_102;
  v13 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v18 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v9, v6, v13);
  _Block_release(v13);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_22D054A58(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D0551E4(a2 & 1 | 0x20, 0, 0, 2);
  }

  return result;
}

uint64_t sub_22D054B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16) && (v12 = sub_22D04C594(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    sub_22D04F454(a3, a4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = v14;
    sub_22D05BA98(a2, a3, a4, BYTE1(a2), isUniquelyReferenced_nonNull_native);
    swift_beginAccess();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    sub_22D05B94C(v14, a1, v16);
    *(v5 + v10) = v26[0];
    return swift_endAccess();
  }

  else
  {
    v18 = sub_22D04F1EC(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    sub_22D05B94C(v18, a1, v19);
    *(v5 + v10) = v26[0];
    swift_endAccess();
    v20 = sub_22D052644(v27);
    v22 = sub_22D054D6C(v26, a1);
    if (*v21)
    {
      v23 = v21;
      sub_22D04F454(a3, a4);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v23;
      *v23 = 0x8000000000000000;
      sub_22D05BA98(a2, a3, a4, BYTE1(a2), v24);
      *v23 = v25;
    }

    (v22)(v26, 0);
    return (v20)(v27, 0);
  }
}

uint64_t (*sub_22D054D6C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_22D05C7D4(v4, a2);
  return sub_22D054DE4;
}

void sub_22D054DE4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22D054E58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = sub_22D05DA4C();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D05DA6C();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + 24);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  sub_22D051C04(a1, a2);
  sub_22D05DA5C();
  v24 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

uint64_t sub_22D055164(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D0551E4(v4, a2, a3, 1);
  }

  return result;
}

void sub_22D0551E4(unsigned int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v9 = 0xEC000000656C6261;
  v10 = sub_22D05DA2C();
  __swift_project_value_buffer(v10, qword_27D9F65C0);

  sub_22D05D094(a2, a3, v6);
  v11 = sub_22D05DA0C();
  v12 = sub_22D05DB5C();

  sub_22D05D0B4(a2, a3, v6);
  p_vtable = (_TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer + 24);
  v112 = v6;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v118[0] = v15;
    *v14 = 136316162;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22D05DCCC();
    v18 = sub_22D04BCD8(v16, v17, v118);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, v118);
    *(v14 + 22) = 2080;
    if (*(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState) > 1u)
    {
      if (*(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState) == 2)
      {
        v19 = 0x697463656E6E6F63;
        v9 = 0xEA0000000000676ELL;
      }

      else
      {
        v19 = 0x6C62616863616572;
        v9 = 0xE900000000000065;
      }
    }

    else
    {
      v19 = 0x6863616552746F6ELL;
      if (*(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState))
      {
        v19 = 0x654E656369766564;
        v9 = 0xEC00000079627261;
      }
    }

    v20 = sub_22D04BCD8(v19, v9, v118);

    *(v14 + 24) = v20;
    *(v14 + 32) = 2080;
    v21 = sub_22D052234(a1);
    v23 = sub_22D04BCD8(v21, v22, v118);

    *(v14 + 34) = v23;
    *(v14 + 42) = 2080;
    v24 = sub_22D051EF8(a2, a3, v112);
    v26 = sub_22D04BCD8(v24, v25, v118);

    *(v14 + 44) = v26;
    _os_log_impl(&dword_22D042000, v11, v12, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - currentState: %s - event: %s with eventData: %s", v14, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v15, -1, -1);
    MEMORY[0x2318C73A0](v14, -1, -1);

    v9 = 0xEC000000656C6261;
    p_vtable = _TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer.vtable;
  }

  else
  {
  }

  v27 = p_vtable[149];
  v28 = v27[v5];
  v29 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables;
  swift_beginAccess();
  v30 = *(v5 + v29);
  if (!*(v30 + 16) || (v31 = sub_22D04C594(v28), (v32 & 1) == 0))
  {

    v49 = sub_22D05DA0C();
    v50 = v5;
    v51 = sub_22D05DB4C();

    if (os_log_type_enabled(v49, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v117 = v53;
      *v52 = 136315650;
      sub_22D05D9EC();
      sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = sub_22D05DCCC();
      v56 = sub_22D04BCD8(v54, v55, &v117);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v117);
      *(v52 + 22) = 2080;
      if (v27[v50] > 1u)
      {
        if (v27[v50] == 2)
        {
          v57 = 0x697463656E6E6F63;
          v9 = 0xEA0000000000676ELL;
        }

        else
        {
          v57 = 0x6C62616863616572;
          v9 = 0xE900000000000065;
        }
      }

      else
      {
        v57 = 0x6863616552746F6ELL;
        if (v27[v50])
        {
          v57 = 0x654E656369766564;
          v9 = 0xEC00000079627261;
        }
      }

      v71 = sub_22D04BCD8(v57, v9, &v117);

      *(v52 + 24) = v71;
      v72 = "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - No state transition found for state %s";
      goto LABEL_34;
    }

LABEL_35:

    return;
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  if (*(v33 + 16))
  {
    v34 = sub_22D04C600(a1);
    if (v35)
    {
      v36 = *(v33 + 56) + 24 * v34;
      v37 = *(v36 + 8);
      if (v37)
      {
        v38 = *(v36 + 16);

        v39 = v37(a1, a2, a3, v112);
        if (v39 == 4)
        {

          v40 = sub_22D05DA0C();
          v41 = v5;
          v42 = sub_22D05DB5C();

          if (os_log_type_enabled(v40, v42))
          {
            v113 = v38;
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v117 = v44;
            *v43 = 136315650;
            sub_22D05D9EC();
            sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v45 = sub_22D05DCCC();
            v47 = sub_22D04BCD8(v45, v46, &v117);

            *(v43 + 4) = v47;
            *(v43 + 12) = 2080;
            *(v43 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v117);
            *(v43 + 22) = 2080;
            if (v27[v41] > 1u)
            {
              if (v27[v41] == 2)
              {
                v48 = 0x697463656E6E6F63;
                v9 = 0xEA0000000000676ELL;
              }

              else
              {
                v48 = 0x6C62616863616572;
                v9 = 0xE900000000000065;
              }
            }

            else
            {
              v48 = 0x6863616552746F6ELL;
              if (v27[v41])
              {
                v48 = 0x654E656369766564;
                v9 = 0xEC00000079627261;
              }
            }

            v92 = sub_22D04BCD8(v48, v9, &v117);

            *(v43 + 24) = v92;
            _os_log_impl(&dword_22D042000, v40, v42, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - no state change, staying in: %s", v43, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x2318C73A0](v44, -1, -1);
            MEMORY[0x2318C73A0](v43, -1, -1);
            v89 = v37;
            v90 = v113;
          }

          else
          {
            v89 = v37;
            v90 = v38;
          }

          sub_22D05D0D4(v89, v90);
        }

        else
        {
          v78 = v39;
          if (v27[v5] != v39)
          {

            v79 = sub_22D05DA0C();
            v80 = sub_22D05DB3C();

            if (os_log_type_enabled(v79, v80))
            {
              v111 = v80;
              v114 = v38;
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v117 = v82;
              *v81 = 136315906;
              sub_22D05D9EC();
              sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v83 = sub_22D05DCCC();
              v85 = sub_22D04BCD8(v83, v84, &v117);

              *(v81 + 4) = v85;
              *(v81 + 12) = 2080;
              *(v81 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v117);
              *(v81 + 22) = 2080;
              if (v27[v5] > 1u)
              {
                if (v27[v5] == 2)
                {
                  v86 = 0x697463656E6E6F63;
                  v87 = 0xEA0000000000676ELL;
                }

                else
                {
                  v86 = 0x6C62616863616572;
                  v87 = 0xE900000000000065;
                }
              }

              else
              {
                v86 = 0x6863616552746F6ELL;
                v87 = 0xEC000000656C6261;
                if (v27[v5])
                {
                  v86 = 0x654E656369766564;
                  v87 = 0xEC00000079627261;
                }
              }

              v93 = sub_22D04BCD8(v86, v87, &v117);

              *(v81 + 24) = v93;
              *(v81 + 32) = 2080;
              if (v78 > 1u)
              {
                if (v78 == 2)
                {
                  v94 = 0x697463656E6E6F63;
                  v9 = 0xEA0000000000676ELL;
                }

                else
                {
                  v94 = 0x6C62616863616572;
                  v9 = 0xE900000000000065;
                }
              }

              else
              {
                v94 = 0x6863616552746F6ELL;
                if (v78)
                {
                  v94 = 0x654E656369766564;
                  v9 = 0xEC00000079627261;
                }
              }

              v95 = sub_22D04BCD8(v94, v9, &v117);

              *(v81 + 34) = v95;
              _os_log_impl(&dword_22D042000, v79, v111, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s: state changed from %s to %s", v81, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x2318C73A0](v82, -1, -1);
              MEMORY[0x2318C73A0](v81, -1, -1);

              v38 = v114;
            }

            else
            {
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_22D04B4FC(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v27[v5], v78);
              swift_unknownObjectRelease();
            }
          }

          v27[v5] = v78;

          v96 = sub_22D05DA0C();
          v97 = sub_22D05DB5C();

          if (os_log_type_enabled(v96, v97))
          {
            v115 = v38;
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v117 = v99;
            *v98 = 136315906;
            sub_22D05D9EC();
            sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v100 = sub_22D05DCCC();
            v102 = sub_22D04BCD8(v100, v101, &v117);

            *(v98 + 4) = v102;
            *(v98 + 12) = 2080;
            *(v98 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v117);
            *(v98 + 22) = 2080;
            v103 = sub_22D052234(a1);
            v105 = sub_22D04BCD8(v103, v104, &v117);

            *(v98 + 24) = v105;
            *(v98 + 32) = 2080;
            if (v27[v5] > 1u)
            {
              if (v27[v5] == 2)
              {
                v107 = 0x697463656E6E6F63;
                v106 = 0xEA0000000000676ELL;
              }

              else
              {
                v107 = 0x6C62616863616572;
                v106 = 0xE900000000000065;
              }
            }

            else
            {
              v106 = 0xEC000000656C6261;
              v107 = 0x6863616552746F6ELL;
              if (v27[v5])
              {
                v107 = 0x654E656369766564;
                v106 = 0xEC00000079627261;
              }
            }

            v110 = sub_22D04BCD8(v107, v106, &v117);

            *(v98 + 34) = v110;
            _os_log_impl(&dword_22D042000, v96, v97, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - handled event: %s new state: %s", v98, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x2318C73A0](v99, -1, -1);
            MEMORY[0x2318C73A0](v98, -1, -1);
            v108 = v37;
            v109 = v115;
          }

          else
          {
            v108 = v37;
            v109 = v38;
          }

          sub_22D05D0D4(v108, v109);
        }

        return;
      }

      v49 = sub_22D05DA0C();
      v73 = v5;
      v51 = sub_22D05DB4C();

      if (os_log_type_enabled(v49, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v117 = v53;
        *v52 = 136315650;
        sub_22D05D9EC();
        sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v74 = sub_22D05DCCC();
        v76 = sub_22D04BCD8(v74, v75, &v117);

        *(v52 + 4) = v76;
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v117);
        *(v52 + 22) = 2080;
        if (v27[v73] > 1u)
        {
          if (v27[v73] == 2)
          {
            v77 = 0x697463656E6E6F63;
            v9 = 0xEA0000000000676ELL;
          }

          else
          {
            v77 = 0x6C62616863616572;
            v9 = 0xE900000000000065;
          }
        }

        else
        {
          v77 = 0x6863616552746F6ELL;
          if (v27[v73])
          {
            v77 = 0x654E656369766564;
            v9 = 0xEC00000079627261;
          }
        }

        v91 = sub_22D04BCD8(v77, v9, &v117);

        *(v52 + 24) = v91;
        v72 = "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - no state change because no event handler found, staying in: %s";
LABEL_34:
        _os_log_impl(&dword_22D042000, v49, v51, v72, v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v53, -1, -1);
        MEMORY[0x2318C73A0](v52, -1, -1);
        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

  v58 = sub_22D05DA0C();
  v59 = sub_22D05DB4C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = v5;
    v62 = swift_slowAlloc();
    v117 = v62;
    *v60 = 136315906;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v63 = sub_22D05DCCC();
    v65 = sub_22D04BCD8(v63, v64, &v117);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v117);
    *(v60 + 22) = 2080;
    v66 = sub_22D052234(a1);
    v68 = sub_22D04BCD8(v66, v67, &v117);

    *(v60 + 24) = v68;
    *(v60 + 32) = 2080;
    if (v27[v61] > 1u)
    {
      if (v27[v61] == 2)
      {
        v70 = 0x697463656E6E6F63;
        v69 = 0xEA0000000000676ELL;
      }

      else
      {
        v70 = 0x6C62616863616572;
        v69 = 0xE900000000000065;
      }
    }

    else
    {
      v69 = 0xEC000000656C6261;
      v70 = 0x6863616552746F6ELL;
      if (v27[v61])
      {
        v70 = 0x654E656369766564;
        v69 = 0xEC00000079627261;
      }
    }

    v88 = sub_22D04BCD8(v70, v69, &v117);

    *(v60 + 34) = v88;
    _os_log_impl(&dword_22D042000, v58, v59, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - No state transition found for event %s with state %s", v60, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v62, -1, -1);
    MEMORY[0x2318C73A0](v60, -1, -1);
  }
}

uint64_t sub_22D05635C()
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v0 = sub_22D05DA2C();
  __swift_project_value_buffer(v0, qword_27D9F65C0);

  v1 = sub_22D05DA0C();
  v2 = sub_22D05DB5C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315650;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_22D05DCCC();
    v7 = sub_22D04BCD8(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061630, &v12);
    *(v3 + 22) = 2080;
    v8 = sub_22D05DCCC();
    v10 = sub_22D04BCD8(v8, v9, &v12);

    *(v3 + 24) = v10;
    _os_log_impl(&dword_22D042000, v1, v2, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - defining state transition table for device %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v4, -1, -1);
    MEMORY[0x2318C73A0](v3, -1, -1);
  }

  sub_22D0565A0();
  sub_22D0572A8();
  sub_22D057E78();

  return sub_22D0585D0();
}

uint64_t sub_22D0565A0()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 256, sub_22D05D06C, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 0, sub_22D05D8B4, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 8448, sub_22D05D074, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 0x2000, sub_22D05D8B8, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 24576, sub_22D05D07C, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 25088, sub_22D05D084, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 26368, sub_22D05D08C, v6);
}

uint64_t sub_22D0567EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
  v11 = Strong;
  swift_beginAccess();
  sub_22D04F688(v11 + v10, v17, &qword_27D9F66B0, &qword_22D05EA70);

  if (!v18)
  {
    sub_22D04F5CC(v17, &qword_27D9F66B0, &qword_22D05EA70);
    return 0;
  }

  sub_22D04F500(v17, v16);
  sub_22D04F5CC(v17, &qword_27D9F66B0, &qword_22D05EA70);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 24);

    sub_22D04F84C(v8, v13, &off_28403BE08, v14);

    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22D056A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v11, &qword_27D9F66B0, &qword_22D05EA70);

    if (v12)
    {
      sub_22D04F500(v11, v10);
      sub_22D04F5CC(v11, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_22D04FB54();
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }

    else
    {
      sub_22D04F5CC(v11, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v8 = 60.0;
    }

    else
    {
      v8 = 1.0;
    }

    sub_22D059430(v8);
  }

  return 1;
}

uint64_t sub_22D056BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v9 = Strong;
    swift_beginAccess();
    sub_22D04F688(v9 + v8, v12, &qword_27D9F66B0, &qword_22D05EA70);

    if (v13)
    {
      sub_22D04F500(v12, v11);
      sub_22D04F5CC(v12, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      a6();
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      sub_22D04F5CC(v12, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 0;
}

uint64_t sub_22D056CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A2B0();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  v11 = Strong;
  swift_beginAccess();
  sub_22D04F688(v11 + v10, v19, &unk_27D9F67A0, &unk_22D05E720);

  if (!v20)
  {
    sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
    return 2;
  }

  sub_22D04F500(v19, v16);
  sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

    (*(v13 + 8))(v8, v12, v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D056F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  v11 = Strong;
  swift_beginAccess();
  sub_22D04F688(v11 + v10, v19, &unk_27D9F67A0, &unk_22D05E720);

  if (!v20)
  {
    sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
    return 0;
  }

  sub_22D04F500(v19, v16);
  sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

    (*(v13 + 24))(v8, v12, v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D057128(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v9 = Strong;
  if (a4)
  {
  }

  else
  {
    v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v9 + v11, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v13 + 40))(v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v14 = (v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    *v14 = a2;
    v14[1] = a3;
  }

  return 0;
}

uint64_t sub_22D0572A8()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 1, sub_22D05CFEC, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 8449, sub_22D05D01C, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 8193, sub_22D05D024, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 24833, sub_22D05D8BC, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 24577, sub_22D05D054, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 25089, sub_22D05D05C, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 26369, sub_22D05D064, v6);

  v7 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1, 32769, sub_22D05D8BC, v7);
}

uint64_t sub_22D057540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v10, &qword_27D9F66B0, &qword_22D05EA70);

    if (v11)
    {
      sub_22D04F500(v10, v9);
      sub_22D04F5CC(v10, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_22D04FB54();
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_22D04F5CC(v10, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 1;
}

uint64_t sub_22D057634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v9 = Strong;
    swift_beginAccess();
    sub_22D04F688(v9 + v8, v12, &qword_27D9F66B0, &qword_22D05EA70);

    if (v13)
    {
      sub_22D04F500(v12, v11);
      sub_22D04F5CC(v12, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      a6();
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      sub_22D04F5CC(v12, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A0B0();
  }

  return 0;
}

uint64_t sub_22D057768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A2B0();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v11 = Strong;
    swift_beginAccess();
    sub_22D04F688(v11 + v10, v19, &unk_27D9F67A0, &unk_22D05E720);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v17;
      v13 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

      (*(v13 + 8))(v8, v12, v13);
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A0B0();
  }

  return 2;
}

uint64_t sub_22D0579E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v11 = Strong;
    swift_beginAccess();
    sub_22D04F688(v11 + v10, v22, &unk_27D9F67A0, &unk_22D05E720);

    if (v23)
    {
      sub_22D04F500(v22, v19);
      sub_22D04F5CC(v22, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

      (*(v13 + 24))(v8, v12, v13);
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_22D04F5CC(v22, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v17 = v15;
    swift_beginAccess();
    sub_22D04F688(v17 + v16, v22, &qword_27D9F66B0, &qword_22D05EA70);

    if (v23)
    {
      sub_22D04F500(v22, v19);
      sub_22D04F5CC(v22, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v19, v20);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_22D04F5CC(v22, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A0B0();
  }

  return 0;
}

uint64_t sub_22D057CF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v9 = Strong;
  if (a4)
  {
  }

  else
  {
    v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v9 + v11, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v13 + 40))(v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v14 = (v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    *v14 = a2;
    v14[1] = a3;
  }

  return 1;
}

uint64_t sub_22D057E78()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2, 2, sub_22D05D8B4, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2, 24834, sub_22D05CFB4, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2, 25090, sub_22D05CFBC, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2, 25346, sub_22D05D8B8, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2, 25602, sub_22D05CFC4, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2, 26370, sub_22D05CFE4, v5);
}

uint64_t sub_22D058078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v11 = Strong;
    swift_beginAccess();
    sub_22D04F688(v11 + v10, v22, &unk_27D9F67A0, &unk_22D05E720);

    if (v23)
    {
      sub_22D04F500(v22, v19);
      sub_22D04F5CC(v22, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

      (*(v13 + 32))(v8, v12, v13);
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_22D04F5CC(v22, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v17 = v15;
    swift_beginAccess();
    sub_22D04F688(v17 + v16, v22, &qword_27D9F66B0, &qword_22D05EA70);

    if (v23)
    {
      sub_22D04F500(v22, v19);
      sub_22D04F5CC(v22, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v19, v20);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_22D04F5CC(v22, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 0;
}

uint64_t sub_22D05835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v10, &qword_27D9F66B0, &qword_22D05EA70);

    if (v11)
    {
      sub_22D04F500(v10, v9);
      sub_22D04F5CC(v10, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_22D04FE34();
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_22D04F5CC(v10, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 3;
}

uint64_t sub_22D058450(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v9 = Strong;
  if (a4)
  {
  }

  else
  {
    v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v9 + v11, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v13 + 40))(v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v14 = (v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    *v14 = a2;
    v14[1] = a3;
  }

  return 2;
}

uint64_t sub_22D0585D0()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 3, sub_22D05CCD8, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 24835, sub_22D05CD08, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 25347, sub_22D05CD10, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 25603, sub_22D05CD40, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 25859, sub_22D05CD60, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 26115, sub_22D05CD68, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 16387, sub_22D05CD70, v6);

  v7 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 16643, sub_22D05D8B0, v7);

  v8 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 16899, sub_22D05D8B0, v8);

  v9 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 17155, sub_22D05D8B0, v9);

  v10 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 17411, sub_22D05D8B0, v10);

  v11 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3, 26371, sub_22D05CD8C, v11);
}

uint64_t sub_22D058998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v11 = Strong;
    swift_beginAccess();
    sub_22D04F688(v11 + v10, v22, &unk_27D9F67A0, &unk_22D05E720);

    if (v23)
    {
      sub_22D04F500(v22, v19);
      sub_22D04F5CC(v22, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v6 + 16))(v8, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

      (*(v13 + 24))(v8, v12, v13);
      (*(v6 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_22D04F5CC(v22, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v17 = v15;
    swift_beginAccess();
    sub_22D04F688(v17 + v16, v22, &qword_27D9F66B0, &qword_22D05EA70);

    if (v23)
    {
      sub_22D04F500(v22, v19);
      sub_22D04F5CC(v22, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v19, v20);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_22D04F5CC(v22, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 0;
}

uint64_t sub_22D058C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v9 = Strong;
    swift_beginAccess();
    sub_22D04F688(v9 + v8, v15, &qword_27D9F66B0, &qword_22D05EA70);

    if (v16)
    {
      sub_22D04F500(v15, v14);
      sub_22D04F5CC(v15, &qword_27D9F66B0, &qword_22D05EA70);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      sub_22D04F5CC(v15, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v12 = *(v10 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
      v11 = *(v10 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    }

    else
    {
      v12 = 0;
      v11 = 0xE000000000000000;
    }

    sub_22D0534A8(v12, v11, a6);
  }

  return 0;
}

uint64_t sub_22D058E18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v5 = a4;
  v6 = sub_22D05D9EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (v5 != 1)
  {
    return 3;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 3;
  }

  v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  v12 = Strong;
  swift_beginAccess();
  sub_22D04F688(v12 + v11, v21, &unk_27D9F67A0, &unk_22D05E720);

  if (!v22)
  {
    sub_22D04F5CC(v21, &unk_27D9F67A0, &unk_22D05E720);
    return 3;
  }

  sub_22D04F500(v21, v18);
  sub_22D04F5CC(v21, &unk_27D9F67A0, &unk_22D05E720);
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v7 + 16))(v9, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v6);

    v16 = sub_22D05D95C();
    (*(v14 + 16))(v9, v16, v13, v14);

    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return 3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D059064(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4 == 1)
  {
    v16 = v5;
    v17 = v6;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
      v11 = Strong;
      swift_beginAccess();
      sub_22D04F688(v11 + v10, v14, &qword_27D9F66B0, &qword_22D05EA70);

      if (v15)
      {
        sub_22D04F500(v14, v13);
        sub_22D04F5CC(v14, &qword_27D9F66B0, &qword_22D05EA70);
        __swift_project_boxed_opaque_existential_1(v13, v13[3]);
        sub_22D04FFB4(a2, a3);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
      }

      else
      {
        sub_22D04F5CC(v14, &qword_27D9F66B0, &qword_22D05EA70);
      }
    }
  }

  return 3;
}

uint64_t sub_22D059180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v11, &unk_27D9F67A0, &unk_22D05E720);

    if (v12)
    {
      sub_22D04F500(v11, v10);
      sub_22D04F5CC(v11, &unk_27D9F67A0, &unk_22D05E720);
      v8 = v10[4];
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_22D04F314(MEMORY[0x277D84F90]);
      (*(v8 + 48))();

      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }

    else
    {
      sub_22D04F5CC(v11, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  return 3;
}

uint64_t sub_22D0592B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v9 = Strong;
  if (a4)
  {
  }

  else
  {
    v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v9 + v11, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v12 = v16;
      v13 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v13 + 40))(v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v14 = (v9 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    *v14 = a2;
    v14[1] = a3;
  }

  return 3;
}

uint64_t sub_22D059430(double a1)
{
  v2 = sub_22D05DA4C();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22D05DA6C();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D05DA3C();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v8;
  v57 = sub_22D05DA8C();
  v52 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - v12;
  v13 = sub_22D05DBAC();
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v16 = sub_22D05DA2C();
  __swift_project_value_buffer(v16, qword_27D9F65C0);

  v17 = sub_22D05DA0C();
  v18 = sub_22D05DB5C();

  v19 = v1;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315138;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_22D05DCCC();
    v24 = sub_22D04BCD8(v22, v23, aBlock);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22D042000, v17, v18, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - Starting backstop timer", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x2318C73A0](v21, -1, -1);
    MEMORY[0x2318C73A0](v20, -1, -1);
  }

  sub_22D05CC4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6770, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6778, &qword_22D05EF08);
  sub_22D05D778(&qword_27D9F6780, &qword_27D9F6778, &qword_22D05EF08, MEMORY[0x277D83970]);
  sub_22D05DC1C();
  v25 = sub_22D05DBBC();
  (*(v50 + 8))(v15, v13);
  v49 = v19;
  v50 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer;
  *(v19 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer) = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  sub_22D05DA7C();
  v27 = v51;
  sub_22D05DA9C();
  v52 = *(v52 + 8);
  (v52)(v11, v57);
  v29 = v55;
  v28 = v56;
  v30 = *(v55 + 104);
  v31 = v53;
  v30(v53, *MEMORY[0x277D85180], v56);
  v32 = v54;
  *v54 = 0;
  v30(v32, *MEMORY[0x277D85168], v28);
  MEMORY[0x2318C6D30](v27, v31, v32, ObjectType);
  swift_unknownObjectRelease();
  v33 = *(v29 + 8);
  v33(v32, v28);
  v34 = v31;
  v35 = v49;
  v33(v34, v28);
  v36 = v27;
  v37 = v50;
  result = (v52)(v36, v57);
  if (*(v35 + v37))
  {
    swift_getObjectType();
    v39 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_22D05CC98;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D05D8C0;
    aBlock[3] = &block_descriptor;
    v40 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v41 = v43;
    sub_22D05DA5C();
    v42 = v45;
    sub_22D059FC4();
    sub_22D05DBCC();
    _Block_release(v40);
    swift_unknownObjectRelease();
    (*(v47 + 8))(v42, v48);
    (*(v44 + 8))(v41, v46);

    if (*(v35 + v37))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22D05DBEC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_22D059C24(uint64_t a1)
{
  v2 = sub_22D05DA4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D05DA6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 24);
    v15 = v6;
    v14 = v11;

    aBlock[4] = sub_22D05CCB8;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D05D8C0;
    aBlock[3] = &block_descriptor_58;
    v12 = _Block_copy(aBlock);

    sub_22D05DA5C();
    v16 = MEMORY[0x277D84F90];
    sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
    sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
    sub_22D05DC1C();
    v13 = v14;
    MEMORY[0x2318C6CC0](0, v9, v5, v12);
    _Block_release(v12);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_22D059F14(uint64_t a1, unsigned int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D0551E4(a2, 0, 0, 2);
  }

  return result;
}

uint64_t sub_22D059F80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22D059FC4()
{
  sub_22D05DA4C();
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10, MEMORY[0x277D83970]);
  return sub_22D05DC1C();
}

uint64_t sub_22D05A0B0()
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v1 = sub_22D05DA2C();
  __swift_project_value_buffer(v1, qword_27D9F65C0);

  v2 = sub_22D05DA0C();
  v3 = sub_22D05DB5C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_22D05DCCC();
    v8 = sub_22D04BCD8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22D042000, v2, v3, "AccessoryFirmwareUpdateDeviceStateMachine: device %s -  Stopping backstop timer", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318C73A0](v5, -1, -1);
    MEMORY[0x2318C73A0](v4, -1, -1);
  }

  v9 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer;
  if (*(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22D05DBDC();
    swift_unknownObjectRelease();
  }

  *(v0 + v9) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_22D05A2B0()
{
  v1 = v0;
  v2 = sub_22D05D9BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime;
  v7 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime);
  sub_22D05D98C();
  sub_22D05D99C();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v7 != v9)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v11 = sub_22D05DA2C();
    __swift_project_value_buffer(v11, qword_27D9F65C0);

    v12 = sub_22D05DA0C();
    v13 = sub_22D05DB4C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v14 = 136315394;
      v23 = v13;
      sub_22D05D9EC();
      sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_22D05DCCC();
      v17 = sub_22D04BCD8(v15, v16, &v25);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_22D04BCD8(0xD00000000000001FLL, 0x800000022D061600, &v25);
      _os_log_impl(&dword_22D042000, v12, v23, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s firmware update is ongoing, overriding previous firmware update start time", v14, 0x16u);
      v18 = v24;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v18, -1, -1);
      MEMORY[0x2318C73A0](v14, -1, -1);
    }
  }

  sub_22D05D9AC();
  sub_22D05D99C();
  v20 = v19;
  result = (v10)(v5, v2);
  *(v1 + v6) = v20;
  return result;
}

uint64_t get_enum_tag_for_layout_string_23AccessoryFirmwareUpdate0abC5EventOAA0abcD4DataOAA0abC11DeviceStateOSgIegygd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D05A5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22D05A61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryFirmwareUpdateEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1C)
  {
    goto LABEL_17;
  }

  if (a2 + 228 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 228) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 228;
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

      return (*a1 | (v4 << 8)) - 228;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 228;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessoryFirmwareUpdateEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 228 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 228) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1C)
  {
    v4 = 0;
  }

  if (a2 > 0x1B)
  {
    v5 = ((a2 - 28) >> 8) + 1;
    *result = a2 - 28;
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
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}