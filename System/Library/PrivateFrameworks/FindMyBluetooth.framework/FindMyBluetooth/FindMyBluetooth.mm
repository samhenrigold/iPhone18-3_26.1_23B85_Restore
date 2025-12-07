void *sub_24AC19688@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24AC196C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24AC19714@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_24AC1975C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_24AC197AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AC19818(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AC198C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  return sub_24AC2B5DC(v3 + v4, a2, &qword_27EF9E048, &qword_24ACD5910);
}

uint64_t sub_24AC19934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24AC1999C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24AC199F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_24AC19A58()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_24AC46698(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC19AF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC19B34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AC19B7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC19BC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for Peripheral.Options(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = v5 + *(v6 + 20);
    v8 = type metadata accessor for PeripheralPairingInfo(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v9 = sub_24ACD0090();
      (*(*(v9 - 8) + 8))(v7, v9);
      sub_24AC46698(*(v7 + *(v8 + 20)), *(v7 + *(v8 + 20) + 8));
    }

    v10 = *(v6 + 24);
    v11 = sub_24ACD0460();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AC19E08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC19EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AC19F20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24AC19F84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockSerialNumber);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24AC1A034()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC1A0D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AC1A130()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC1A194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_24AC1A364(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AC1A530()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AC1A568()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC1A5BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1A5F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AC1A640()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC1A698()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AC1A77C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = sub_24ACD0090();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (((((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + v8, v11 | 7);
}

uint64_t sub_24AC1A960()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1A9F4()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC1AAB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AC1AC1C()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC1AD00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1AD38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_24AC1AD80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_24AC1ADC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AC1AE1C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_isNotifying;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24AC1AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E170, &qword_24ACD61D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24AC1AF84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E170, &qword_24ACD61D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E810, &qword_24ACD61D8);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_24AC1B09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24ACD0090();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24AC1B1C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E898, &qword_24ACD66C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24ACD0090();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24AC1B2E4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24AC1B338()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AC1B370()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC1B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ACD0090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AC1B478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ACD0090();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24AC1B55C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1B594()
{

  sub_24ACBCED4(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24AC1B5DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AC1B620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ACD0090();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AC1B6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ACD0090();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_24AC1B7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AC1B82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24AC1B8BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AC1B8F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AC1B94C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_24AC1B9A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AC1B9E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24AC1BACC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EEA8, &qword_24ACD90F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AC1BC3C()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AC1BD00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24AC1BE64()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

_OWORD *sub_24AC1BFB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24AC1BFC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_24AC1C028(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24AC1C058@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24AC1C084@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _s10PropertiesVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10PropertiesVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t Characteristic.Properties.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24AC1CF00(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24AC1CF00((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x616364616F72622ELL;
  *(v5 + 5) = 0xEA00000000007473;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24AC1CF00((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x646165722ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_24AC1CF00((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD000000000000015;
    *(v11 + 5) = 0x800000024ACD9210;
    if ((v1 & 8) == 0)
    {
LABEL_14:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_24AC1CF00((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x65746972772ELL;
  *(v14 + 5) = 0xE600000000000000;
  if ((v1 & 0x10) == 0)
  {
LABEL_15:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_31:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_24AC1CF00((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x796669746F6E2ELL;
  *(v17 + 5) = 0xE700000000000000;
  if ((v1 & 0x20) == 0)
  {
LABEL_16:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_24AC1CF00((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x74616369646E692ELL;
  *(v20 + 5) = 0xE900000000000065;
  if ((v1 & 0x40) == 0)
  {
LABEL_17:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_24AC1CF00((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD00000000000001ALL;
  *(v23 + 5) = 0x800000024ACD91F0;
  if ((v1 & 0x80) == 0)
  {
LABEL_18:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_24AC1CF00((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000013;
  *(v26 + 5) = 0x800000024ACD91D0;
  if ((v1 & 0x100) == 0)
  {
LABEL_19:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_24AC1CF00((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000019;
  *(v29 + 5) = 0x800000024ACD91B0;
  if ((v1 & 0x200) != 0)
  {
LABEL_56:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24AC1CF00(0, *(v2 + 2) + 1, 1, v2);
    }

    v31 = *(v2 + 2);
    v30 = *(v2 + 3);
    if (v31 >= v30 >> 1)
    {
      v2 = sub_24AC1CF00((v30 > 1), v31 + 1, 1, v2);
    }

    *(v2 + 2) = v31 + 1;
    v32 = &v2[16 * v31];
    *(v32 + 4) = 0xD00000000000001BLL;
    *(v32 + 5) = 0x800000024ACD9190;
  }

LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DC88, &qword_24ACD33A0);
  sub_24AC1C880();
  v33 = sub_24ACD0540();
  v35 = v34;

  MEMORY[0x24C22CD50](v33, v35);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return 91;
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

unint64_t sub_24AC1C880()
{
  result = qword_2814AD030;
  if (!qword_2814AD030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9DC88, &qword_24ACD33A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AD030);
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

uint64_t sub_24AC1C938(uint64_t a1, id *a2)
{
  result = sub_24ACD0570();
  *a2 = 0;
  return result;
}

uint64_t sub_24AC1C9B0(uint64_t a1, id *a2)
{
  v3 = sub_24ACD0580();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24AC1CA30@<X0>(uint64_t *a1@<X8>)
{
  sub_24ACD0590();
  v2 = sub_24ACD0560();

  *a1 = v2;
  return result;
}

uint64_t sub_24AC1CA74()
{
  v0 = sub_24ACD0590();
  v1 = MEMORY[0x24C22CD80](v0);

  return v1;
}

uint64_t sub_24AC1CAB0(uint64_t a1)
{
  sub_24ACD0590();
  sub_24ACD05E0();
}

uint64_t sub_24AC1CB04(uint64_t a1)
{
  sub_24ACD0590();
  sub_24ACD0D10();
  sub_24ACD05E0();
  v1 = sub_24ACD0D50();

  return v1;
}

uint64_t sub_24AC1CB84(void *a1, uint64_t *a2)
{
  v2 = sub_24ACD0590();
  v4 = v3;
  if (v2 == sub_24ACD0590() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24ACD0C40();
  }

  return v7 & 1;
}

_DWORD *sub_24AC1CC0C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_24AC1CC60(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_24AC1CC90@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_24AC1CCBC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_24AC1CD7C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24ACD0560();

  *a2 = v3;
  return result;
}

uint64_t sub_24AC1CDC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24ACD0590();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AC1CDF0(uint64_t a1)
{
  v2 = sub_24AC1D244(&qword_2814ACFC0, type metadata accessor for CBConnectionEventMatchingOption, &unk_24ACD369C);
  v3 = sub_24AC1D244(&qword_27EF9DCD8, type metadata accessor for CBConnectionEventMatchingOption, &unk_24ACD3644);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AC1CEC0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_24ACBE270(a1);

  *a2 = v3;
  return result;
}

char *sub_24AC1CF00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF8, &qword_24ACD37E0);
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

unint64_t sub_24AC1D010()
{
  result = qword_27EF9DC98;
  if (!qword_27EF9DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DC98);
  }

  return result;
}

unint64_t sub_24AC1D068()
{
  result = qword_27EF9DCA0;
  if (!qword_27EF9DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DCA0);
  }

  return result;
}

unint64_t sub_24AC1D0C0()
{
  result = qword_27EF9DCA8;
  if (!qword_27EF9DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DCA8);
  }

  return result;
}

unint64_t sub_24AC1D118()
{
  result = qword_27EF9DCB0;
  if (!qword_27EF9DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DCB0);
  }

  return result;
}

uint64_t sub_24AC1D244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24AC1D31C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DCE0, &unk_24ACD4600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF9E180, &qword_24ACD3790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AC1D468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDF0, &qword_24ACD8480);
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

void *sub_24AC1D580(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_24AC1D768(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD58, &qword_24ACD37A0);
  v10 = *(type metadata accessor for Device(0) - 8);
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
  v15 = *(type metadata accessor for Device(0) - 8);
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

char *sub_24AC1D940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DCF0, &qword_24ACD3798);
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

void sub_24AC1DA88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24AC1DC0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t sub_24AC1DCA4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_24AC1DD40@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 120);
  return result;
}

uint64_t sub_24AC1DD84(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 120) = v2;
  return result;
}

uint64_t MockCBDiscovery.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MockCBDiscovery.__allocating_init()()
{
  swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1DF38;

  return MockCBDiscovery.init()();
}

uint64_t sub_24AC1DF38(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t MockCBDiscovery.init()()
{
  *(v1 + 16) = v0;
  sub_24ACD0420();
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1E0C4, 0, 0);
}

uint64_t sub_24AC1E0C4()
{
  v1 = *(v0 + 16);
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F90];
  *(v1 + 120) = 1;
  sub_24ACD0410();
  type metadata accessor for CBDiscovery(0);
  sub_24ACD0000();
  v2 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask) = 0;

  v5 = *(v0 + 8);
  v6 = *(v0 + 16);

  return v5(v6);
}

uint64_t static MockCBDiscovery.devices(with:)(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC1E290;

  return sub_24AC2043C();
}

uint64_t sub_24AC1E290(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_24AC1E390(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder);
  v4 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder);
  v5 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_24AC1BFC8(v4, v5);
}

uint64_t sub_24AC1E3E0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEC8, &unk_24ACD6B20);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1E4E4, v1, 0);
}

uint64_t sub_24AC1E4E4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  LODWORD(v3) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_24AC212F4(v1, &unk_27EF9E900, &qword_24ACD3A28);
  v5 = v0[9];
  if (v3 == 1)
  {
    v6 = v0[7];
    v7 = v0[8];
    type metadata accessor for DeviceChange(0);
    (*(v7 + 104))(v5, *MEMORY[0x277D858A0], v6);
    sub_24ACD08D0();
  }

  else
  {
    sub_24AC207C0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC1E6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v9, a2 + v12);
  swift_endAccess();

  sub_24ACD0880();
  v13 = sub_24ACD07C0();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = sub_24AC208EC(&qword_27EF9DED8, &protocol conformance descriptor for MockCBDiscovery);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = v14;
  v15[4] = a2;
  swift_retain_n();
  *(a2 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask) = sub_24AC7F080(0, 0, v6, &unk_24ACD3BD8, v15);
}

uint64_t sub_24AC1E938(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24ACD07C0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24AC7EA6C(0, 0, v5, &unk_24ACD3C08, v7);
}

uint64_t sub_24AC1EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1EAE4, a4, 0);
}

uint64_t sub_24AC1EAE4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC21108(v2, v1 + v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask;
  if (*(v1 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
    sub_24ACD0830();
  }

  *(v1 + v5) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC1EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF08, &qword_24ACD3BE0);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for DeviceChange(0);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF10, &qword_24ACD3BE8);
  v4[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF18, &qword_24ACD3BF0);
  v4[24] = v8;
  v4[25] = *(v8 - 8);
  v4[26] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF20, &qword_24ACD3BF8);
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1EF00, a4, 0);
}

void sub_24AC1EF00()
{
  v1 = v0[11] + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder;
  v2 = *v1;
  v0[30] = *v1;
  if (v2)
  {
    v0[31] = *(v1 + 8);

    v5 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[32] = v3;
    *v3 = v0;
    v3[1] = sub_24AC1F024;
    v4 = v0[26];

    v5(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC1F024()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  *(*v1 + 264) = v0;

  sub_24AC1BFC8(v4, v3);
  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_24AC1F7B4;
  }

  else
  {
    v6 = sub_24AC1F18C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC1F18C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  sub_24ACD0800();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24AC208EC(&qword_27EF9DED8, &protocol conformance descriptor for MockCBDiscovery);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  v0[34] = v4;
  v0[35] = v5;
  swift_beginAccess();
  v6 = v0[34];
  v7 = v0[11];
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_24AC1F2B8;
  v9 = v0[27];
  v10 = v0[23];

  return MEMORY[0x2822005A8](v10, v7, v6, v9, v0 + 9);
}

uint64_t sub_24AC1F2B8()
{
  v2 = *v1;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_24AC1F984;
  }

  else
  {
    v4 = sub_24AC1F3CC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC1F3CC()
{
  v1 = v0[23];
  v2 = (*(v0[17] + 48))(v1, 1, v0[16]);
  v3 = v0[35];
  if (v2 == 1)
  {
    v4 = v0[22];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[11];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_24AC20748(v7 + v3, v4);
    v8 = (*(v6 + 48))(v4, 1, v5);
    v9 = v0[22];
    if (v8)
    {
      sub_24AC212F4(v0[22], &unk_27EF9E900, &qword_24ACD3A28);
    }

    else
    {
      v19 = v0[13];
      v18 = v0[14];
      v20 = v0[12];
      (*(v19 + 16))(v18, v0[22], v20);
      sub_24AC212F4(v9, &unk_27EF9E900, &qword_24ACD3A28);
      v0[10] = 0;
      sub_24ACD08A0();
      (*(v19 + 8))(v18, v20);
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v10 = v0[21];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];
    sub_24AC21234(v1, v0[19]);
    sub_24AC20748(v13 + v3, v10);
    v14 = (*(v12 + 48))(v10, 1, v11);
    v15 = v0[21];
    v16 = v0[19];
    if (v14)
    {
      sub_24AC21298(v0[19]);
      sub_24AC212F4(v15, &unk_27EF9E900, &qword_24ACD3A28);
      v17 = 1;
    }

    else
    {
      v23 = v0[18];
      v24 = v0[14];
      v25 = v0[12];
      v26 = v0[13];
      (*(v26 + 16))(v24, v0[21], v25);
      sub_24AC212F4(v15, &unk_27EF9E900, &qword_24ACD3A28);
      sub_24AC21354(v16, v23);
      sub_24ACD0890();
      (*(v26 + 8))(v24, v25);
      sub_24AC21298(v16);
      v17 = 0;
    }

    v27 = v0[15];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF28, &unk_24ACD7CF0);
    (*(*(v28 - 8) + 56))(v27, v17, 1, v28);
    sub_24AC212F4(v27, &qword_27EF9DF08, &qword_24ACD3BE0);
    v29 = v0[34];
    v30 = v0[11];
    v31 = swift_task_alloc();
    v0[36] = v31;
    *v31 = v0;
    v31[1] = sub_24AC1F2B8;
    v32 = v0[27];
    v33 = v0[23];

    return MEMORY[0x2822005A8](v33, v30, v29, v32, v0 + 9);
  }
}

uint64_t sub_24AC1F7B4()
{
  v1 = v0[33];
  v2 = v0[20];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v5 + v6, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = v0[20];

    sub_24AC212F4(v7, &unk_27EF9E900, &qword_24ACD3A28);
  }

  else
  {
    v8 = v0[20];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v10 + 16))(v9, v8, v11);
    sub_24AC212F4(v8, &unk_27EF9E900, &qword_24ACD3A28);
    v0[8] = v1;
    sub_24ACD08A0();
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AC1F984()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[9];
  v2 = v0[20];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v5 + v6, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v7 = v0[20];

    sub_24AC212F4(v7, &unk_27EF9E900, &qword_24ACD3A28);
  }

  else
  {
    v8 = v0[20];
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v10 + 16))(v9, v8, v11);
    sub_24AC212F4(v8, &unk_27EF9E900, &qword_24ACD3A28);
    v0[8] = v1;
    sub_24ACD08A0();
    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AC1FB6C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEC8, &unk_24ACD6B20);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC1FC70, v1, 0);
}

uint64_t sub_24AC1FC70()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation;
  swift_beginAccess();
  sub_24AC20748(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEB0, &qword_24ACD6B10);
  LODWORD(v3) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_24AC212F4(v1, &unk_27EF9E900, &qword_24ACD3A28);
  v5 = v0[9];
  if (v3 == 1)
  {
    v6 = v0[7];
    v7 = v0[8];
    type metadata accessor for DeviceChange(0);
    (*(v7 + 104))(v5, *MEMORY[0x277D858A0], v6);
    sub_24ACD08D0();
  }

  else
  {
    sub_24AC207C0();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC1FE60(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_24AC1FE88, v1, 0);
}

uint64_t sub_24AC1FE88()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  swift_beginAccess();
  *(v2 + 120) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MockCBDiscovery.deinit()
{

  v1 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockCBDiscovery.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AC212F4(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_scanContinuation, &unk_27EF9E900, &qword_24ACD3A28);
  sub_24AC1BFC8(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_mockScanResponder + 8));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC2009C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC214BC;

  return sub_24AC2043C();
}

uint64_t sub_24AC20144(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC1E3E0(a1);
}

uint64_t sub_24AC201DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24AC1FB6C(a1);
}

uint64_t sub_24AC20274()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24AC20368(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_24AC214B8, v1, 0);
}

uint64_t sub_24AC20390@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth15MockCBDiscovery_id;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24AC2043C()
{
  v1 = sub_24ACD0360();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_24ACD0420();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC20524, 0, 0);
}

uint64_t sub_24AC20524()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DD58, &qword_24ACD37A0);
  v4 = type metadata accessor for Device(0);
  v5 = (*(*(v4 - 1) + 80) + 32) & ~*(*(v4 - 1) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24ACD39E0;
  v7 = v6 + v5;
  sub_24ACD0410();
  sub_24ACD0000();
  sub_24ACD0020();
  sub_24ACD0340();
  sub_24ACD0320();
  v9 = v8;
  (*(v3 + 8))(v1, v2);
  v10 = (v7 + v4[6]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 8;
  *(v7 + v4[7]) = 256;
  v11 = (v7 + v4[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v7 + v4[9]);
  *v12 = 0;
  v12[1] = 0;
  *(v7 + v4[10]) = 0;
  *(v7 + v4[11]) = v9;
  *(v7 + v4[12]) = 4;
  v13 = (v7 + v4[14]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + v4[15]);
  *v14 = 0;
  v14[1] = 0;
  *(v7 + v4[17]) = 0;
  *(v7 + v4[18]) = 0;
  *(v7 + v4[16]) = xmmword_24ACD39F0;
  *(v7 + v4[13]) = 0;

  v15 = v0[1];

  return v15(v6);
}

uint64_t sub_24AC20748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AC207C0()
{
  result = qword_27EF9E920;
  if (!qword_27EF9E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E920);
  }

  return result;
}

uint64_t sub_24AC20814(void *a1)
{
  a1[1] = sub_24AC208EC(&qword_27EF9EBE0, &protocol conformance descriptor for MockCBDiscovery);
  a1[2] = sub_24AC208EC(&qword_27EF9DED0, &protocol conformance descriptor for MockCBDiscovery);
  result = sub_24AC208EC(&qword_27EF9DED8, &protocol conformance descriptor for MockCBDiscovery);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for MockCBDiscovery(uint64_t a1)
{
  result = qword_27EF9DEE8;
  if (!qword_27EF9DEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC208EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MockCBDiscovery(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AC20934()
{
  result = qword_27EF9DEE0;
  if (!qword_27EF9DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9DEA0, &qword_24ACD6AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DEE0);
  }

  return result;
}

void sub_24AC209A0(uint64_t a1)
{
  sub_24AC2104C(319);
  if (v1 <= 0x3F)
  {
    sub_24AC210A4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MockCBDiscovery.__allocating_init()()
{
  v4 = (*(v0 + 256) + **(v0 + 256));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AC1DF38;

  return v4();
}

uint64_t dispatch thunk of MockCBDiscovery.scan(config:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 272) + **(*v2 + 272));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC214AC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MockCBDiscovery.registerProximityPairingBuffer(rssiThreshold:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AC20274;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MockCBDiscovery.setScanRate(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 288) + **(*v1 + 288));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC20274;

  return v6(a1);
}

void sub_24AC2104C(uint64_t a1)
{
  if (!qword_27EF9DEF8)
  {
    type metadata accessor for CBDiscovery(255);
    v1 = sub_24ACCFFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF9DEF8);
    }
  }
}

void sub_24AC210A4(uint64_t a1)
{
  if (!qword_2814ACFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9DEB0, &qword_24ACD6B10);
    v1 = sub_24ACD0970();
    if (!v2)
    {
      atomic_store(v1, &qword_2814ACFF0);
    }
  }
}

uint64_t sub_24AC21108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E900, &qword_24ACD3A28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC21180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC1EC38(a1, v4, v5, v6);
}

uint64_t sub_24AC21234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC21298(uint64_t a1)
{
  v2 = type metadata accessor for DeviceChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AC212F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AC21354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AC213F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC1EA44(a1, v4, v5, v6);
}

uint64_t ScanRate.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E752ELL;
    v7 = 0x69646F697265702ELL;
    if (v1 != 2)
    {
      v7 = 0x6F72676B6361622ELL;
    }

    if (*v0)
    {
      v6 = 0x746C75616665642ELL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6D756964656D2ELL;
    v3 = 0x686769682ELL;
    if (v1 != 7)
    {
      v3 = 2019650862;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 2003790894;
    if (v1 != 4)
    {
      v4 = 0x4C6D756964656D2ELL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

FindMyBluetooth::ScanRate_optional __swiftcall ScanRate.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue <= 29)
  {
    if (rawValue > 9)
    {
      if (rawValue == 10)
      {
        *v1 = 2;
        return rawValue;
      }

      if (rawValue == 20)
      {
        *v1 = 3;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == -1)
      {
        *v1 = 0;
        return rawValue;
      }

      if (!rawValue)
      {
        *v1 = 1;
        return rawValue;
      }
    }

LABEL_22:
    *v1 = 9;
    return rawValue;
  }

  if (rawValue <= 39)
  {
    if (rawValue == 30)
    {
      *v1 = 4;
      return rawValue;
    }

    if (rawValue == 35)
    {
      *v1 = 5;
      return rawValue;
    }

    goto LABEL_22;
  }

  if (rawValue == 40)
  {
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == 50)
  {
    *v1 = 7;
    return rawValue;
  }

  if (rawValue != 60)
  {
    goto LABEL_22;
  }

  *v1 = 8;
  return rawValue;
}

unint64_t sub_24AC216E4()
{
  result = qword_27EF9DF30;
  if (!qword_27EF9DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DF30);
  }

  return result;
}

uint64_t sub_24AC21738()
{
  sub_24ACD0D10();
  sub_24ACD0D40();
  return sub_24ACD0D50();
}

uint64_t sub_24AC217C0(uint64_t a1)
{
  sub_24ACD0D10();
  sub_24ACD0D40();
  return sub_24ACD0D50();
}

uint64_t getEnumTagSinglePayload for ScanRate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanRate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AC21A40()
{
  result = qword_27EF9DF38;
  if (!qword_27EF9DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DF38);
  }

  return result;
}

uint64_t ServiceUUID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ACD0420();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ServiceUUID.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24ACD0420();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ServiceUUID.init(stringLiteral:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24ACD03B0();
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v8 + 32))(a3, v6, v7);
  }

  return result;
}

uint64_t ServiceUUID.hash(into:)(uint64_t a1)
{
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_24ACD0530();
}

uint64_t ServiceUUID.hashValue.getter()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24AC21D94()
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24AC21E1C(uint64_t a1)
{
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_24ACD0530();
}

uint64_t sub_24AC21EA0(uint64_t a1)
{
  sub_24ACD0D10();
  sub_24ACD0420();
  sub_24AC221E0(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24ACD0530();
  return sub_24ACD0D50();
}

uint64_t sub_24AC21F28@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_24ACD03B0();
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v7 + 32))(a2, v5, v6);
  }

  return result;
}

uint64_t ServiceUUID.description.getter()
{
  strcpy(v2, "ServiceUUID(");
  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v2[0];
}

uint64_t type metadata accessor for ServiceUUID(uint64_t a1)
{
  result = qword_27EF9DF58;
  if (!qword_27EF9DF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC221E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AC22240()
{
  strcpy(v2, "ServiceUUID(");
  v0 = sub_24ACD03C0();
  MEMORY[0x24C22CD50](v0);

  MEMORY[0x24C22CD50](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_24AC222D8(uint64_t a1)
{
  result = sub_24ACD0420();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AC22370()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9DF68);
  v1 = __swift_project_value_buffer(v0, qword_27EF9DF68);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Service.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC224E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for PeerPath(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2281C, 0, 0);
}

uint64_t sub_24AC2281C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v80 = v0[22];
  v62 = v0[19];
  v63 = v0[18];
  v64 = v0[21];
  v73 = v0[17];
  v75 = v0[16];
  v67 = v0[15];
  v69 = v0[14];
  v77 = v0[13];
  v71 = v0[11];
  v65 = v0[10];
  v60 = v0[9];
  v58 = v0[12];
  v59 = v0[6];
  v61 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  swift_defaultActor_initialize();
  swift_weakInit();
  v8 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics) = MEMORY[0x277D84F98];
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_autoDiscoverCount) = 0;
  v10 = *(v6 + 16);
  v0[28] = v10;
  v57 = v10;
  v11 = [v57 UUID];
  CBUUID.uuidValue.getter(v4);

  type metadata accessor for Service(0);
  sub_24ACD0000();
  v12 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v55 = *(v3 + 32);
  v55(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v1, v2);
  swift_weakAssign();
  *(v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject) = v57;
  v13 = *(v75 + 16);
  v13(v73, v7 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v67);
  v56 = *(v77 + 16);
  v56(v69, v7 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v58);
  (*(v3 + 16))(v71, v5 + v12, v2);
  (*(v3 + 56))(v71, 0, 1, v2);
  (*(v59 + 56))(v60, 1, 1, v61);
  v13(v62, v73, v67);
  v56(v62 + v63[5], v69, v58);
  sub_24AC2B5DC(v71, v62 + v63[6], &qword_27EF9DFE0, &qword_24ACD4098);
  sub_24AC2B5DC(v60, v62 + v63[7], &unk_27EF9E110, &unk_24ACD4540);
  v14 = v57;
  sub_24ACCFFE0();
  sub_24AC2B420(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = sub_24ACD0C20();
  v17 = v16;
  v18 = *(v80 + 8);
  v18(v4, v64);
  MEMORY[0x24C22CD50](47, 0xE100000000000000);
  sub_24ACCFFE0();
  v19 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v19);

  v18(v4, v64);
  v81 = v15;
  v82 = v17;
  sub_24AC2B5DC(v71, v65, &qword_27EF9DFE0, &qword_24ACD4098);
  if ((*(v3 + 48))(v65, 1, v2) == 1)
  {
    sub_24AC212F4(v0[10], &qword_27EF9DFE0, &qword_24ACD4098);
  }

  else
  {
    v21 = v0[25];
    v20 = v0[26];
    v23 = v0[23];
    v22 = v0[24];
    v78 = v18;
    v24 = v0[21];
    v55(v20, v0[10], v22);
    sub_24ACCFFE0();
    v25 = shortCBUUIDDescription(uuid:)(v23);
    v27 = v26;
    v28 = v24;
    v18 = v78;
    v78(v23, v28);
    MEMORY[0x24C22CD50](v25, v27);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v21 + 8))(v20, v22);
  }

  v29 = v0[8];
  v30 = v0[5];
  v31 = v0[6];
  sub_24AC2B5DC(v0[9], v29, &unk_27EF9E110, &unk_24ACD4540);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[11];
    v39 = v0[8];
    sub_24AC212F4(v0[9], &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v38, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
    sub_24AC212F4(v39, &unk_27EF9E110, &unk_24ACD4540);
  }

  else
  {
    v40 = v0[23];
    v66 = v0[21];
    v41 = v0[16];
    v76 = v0[15];
    v79 = v0[17];
    v42 = v0[13];
    v72 = v0[12];
    v74 = v0[14];
    v68 = v0[9];
    v70 = v0[11];
    v43 = v0[6];
    v44 = v0[7];
    v45 = v0[5];
    (*(v43 + 32))(v44, v0[8], v45);
    sub_24ACCFFE0();
    v46 = shortCBUUIDDescription(uuid:)(v40);
    v47 = v18;
    v49 = v48;
    v47(v40, v66);
    MEMORY[0x24C22CD50](v46, v49);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v43 + 8))(v44, v45);
    sub_24AC212F4(v68, &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v70, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v42 + 8))(v74, v72);
    (*(v41 + 8))(v79, v76);
  }

  v50 = v0[19];
  v51 = v0[20];
  v52 = v0[4];
  v53 = (v50 + *(v0[18] + 32));
  *v53 = v81;
  v53[1] = v82;
  sub_24AC2B644(v50, v51);
  sub_24AC2B644(v51, v52 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath);

  return MEMORY[0x2822009F8](sub_24AC22FF0, v52, 0);
}

uint64_t sub_24AC22FF0()
{
  v16 = v0;
  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v1 = sub_24ACD0490();
  __swift_project_value_buffer(v1, qword_27EF9DF68);

  v2 = sub_24ACD0470();
  v3 = sub_24ACD0900();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;

    v8 = sub_24AC284E4();
    v10 = v9;

    v11 = sub_24AC29E20(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_24AC18000, v2, v3, "%s init", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];
  v13 = v0[4];

  return v12(v13);
}

uint64_t Service.deinit()
{
  v1 = v0;
  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9DF68);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_24AC284E4();
    v9 = sub_24AC29E20(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v3, v4, "%s deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_24AC234B4(v1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath);
  swift_weakDestroy();
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation, &qword_27EF9E4F0, &unk_24ACD4130);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AC234B4(uint64_t a1)
{
  v2 = type metadata accessor for PeerPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Service.__deallocating_deinit()
{
  Service.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC2353C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC23600, v1, 0);
}

uint64_t sub_24AC23600()
{
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[9];
    v4 = v0[7];
    v5 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
    LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
    sub_24AC212F4(v3, &qword_27EF9E4F0, &unk_24ACD4130);
    if (v4 == 1)
    {

      return MEMORY[0x2822009F8](sub_24AC23874, v2, 0);
    }

    type metadata accessor for CentralManager.Error(0);
    sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AC23874()
{
  v1 = [*(*(v0 + 80) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state];
  v2 = *(v0 + 56);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v3 = sub_24AC2BA04;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v3 = sub_24AC23A48;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = sub_24AC23958;
        goto LABEL_11;
      }

LABEL_8:
      v3 = sub_24AC2BA04;
      goto LABEL_11;
    }

    v3 = sub_24AC2BA04;
  }

LABEL_11:

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_24AC23958()
{
  type metadata accessor for CentralManager.Error(0);
  sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC23A48()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v0[11] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v7 = sub_24AC2B420(&qword_27EF9DF80, type metadata accessor for Service, &protocol conformance descriptor for Service);
  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF88, &qword_24ACD3F50);
  *v8 = v0;
  v8[1] = sub_24AC23BB4;

  return MEMORY[0x282200830](v0 + 5, &unk_24ACD3F48, v5, sub_24AC2A360, v6, v2, v7, v9);
}

uint64_t sub_24AC23BB4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_24AC23D58;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24AC23CE4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC23CE4()
{

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AC23D58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC23DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = type metadata accessor for PeerPath(0);
  v4[22] = swift_task_alloc();
  v6 = sub_24ACD0420();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC23FA4, a2, 0);
}

uint64_t sub_24AC23FA4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_24AC2B420(&qword_27EF9DF80, type metadata accessor for Service, &protocol conformance descriptor for Service);
  v5 = swift_task_alloc();
  v0[38] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_24AC240E0;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v4, 0xD000000000000024, 0x800000024ACD9380, sub_24AC2B7B0, v5, v7);
}

uint64_t sub_24AC240E0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_24AC26694;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_24AC24208;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC24208()
{
  v187 = v0;
  v1 = [*(v0[18] + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject) characteristics];
  v2 = &qword_2814AD000;
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = v1;
    v5 = v0[28];
    v7 = v0[18];
    v6 = v0[19];
    sub_24AC2B8F8(0, &qword_27EF9DFF0, 0x277CBE000);
    v8 = sub_24ACD0700();
    v0[41] = v8;

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }

    v0[42] = sub_24AC653A0(v9);

    v10 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
    v0[43] = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
    swift_beginAccess();
    v11 = *(v7 + v10);
    v12 = v3;
    v13 = -1;
    v14 = -1 << *(v11 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v11 + 64);
    v16 = (63 - v14) >> 6;
    v17 = (v5 + 16);
    v181 = (v5 + 32);
    swift_bridgeObjectRetain_n();
    v18 = 0;
    if (!v15)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        if (*(*(v11 + 56) + ((v18 << 9) | (8 * v19))))
        {
          break;
        }

        if (!v15)
        {
          goto LABEL_10;
        }
      }

      v175 = v0[36];
      v176 = v0[37];
      v21 = v17;
      v22 = v0[27];
      v179 = v21;
      (*v21)();
      v23 = v176;
      v177 = *v181;
      (*v181)(v23, v175, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24AC1D2D4(0, v12[2] + 1, 1, v12);
      }

      v25 = v12[2];
      v24 = v12[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v29 = sub_24AC1D2D4((v24 > 1), v25 + 1, 1, v12);
        v26 = v25 + 1;
        v12 = v29;
      }

      v27 = v0[37];
      v28 = v0[27];
      v12[2] = v26;
      v177(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v27, v28);
      v17 = v179;
    }

    while (v15);
    while (1)
    {
LABEL_10:
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

      if (v20 >= v16)
      {
        break;
      }

      v15 = *(v11 + 64 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_8;
      }
    }

    v0[44] = sub_24AC653A0(v12);

    if (v8 >> 62)
    {
      goto LABEL_113;
    }

    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    if (qword_27EF9DC30 != -1)
    {
LABEL_115:
      swift_once();
    }

    v60 = sub_24ACD0490();
    __swift_project_value_buffer(v60, qword_27EF9DF68);

    v61 = sub_24ACD0470();
    v62 = sub_24ACD0910();

    if (os_log_type_enabled(v61, v62))
    {
      v64 = v0[21];
      v63 = v0[22];
      v65 = v0[18];
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v186 = v67;
      *v66 = 136446210;
      sub_24AC2A3DC(v65 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v63);
      v68 = (v63 + *(v64 + 32));
      v69 = *v68;
      v70 = v68[1];

      sub_24AC234B4(v63);
      v71 = v69;
      v2 = 0x2814AD000;
      v72 = sub_24AC29E20(v71, v70, &v186);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_24AC18000, v61, v62, "%{public}s: CBService.characteristics was unexpectedly nil!", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x24C22DC60](v67, -1, -1);
      MEMORY[0x24C22DC60](v66, -1, -1);
    }

LABEL_88:
    v153 = v0[18];
    v154 = *(v2 + 616);
    swift_beginAccess();
    v155 = *(v153 + v154);
    v156 = *(v155 + 64);
    v186 = v3;
    v157 = -1;
    v158 = -1 << *(v155 + 32);
    if (-v158 < 64)
    {
      v157 = ~(-1 << -v158);
    }

    v159 = v157 & v156;
    v160 = (63 - v158) >> 6;
    swift_bridgeObjectRetain_n();
    v161 = 0;
    if (!v159)
    {
      goto LABEL_93;
    }

    do
    {
LABEL_91:
      while (1)
      {
        v162 = __clz(__rbit64(v159));
        v159 &= v159 - 1;
        if (*(*(v155 + 56) + ((v161 << 9) | (8 * v162))))
        {
          break;
        }

        if (!v159)
        {
          goto LABEL_93;
        }
      }

      MEMORY[0x24C22CE30](v164);
      if (*((v186 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v186 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v3 = v186;
    }

    while (v159);
LABEL_93:
    while (1)
    {
      v163 = v161 + 1;
      if (__OFADD__(v161, 1))
      {
        break;
      }

      if (v163 >= v160)
      {
        v165 = v0[17];

        *v165 = v3;

        v166 = v0[1];

        return v166();
      }

      v159 = *(v155 + 64 + 8 * v163);
      ++v161;
      if (v159)
      {
        v161 = v163;
        goto LABEL_91;
      }
    }

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
    result = sub_24ACD0B30();
  }

  v0[45] = result;
  if (!result)
  {
LABEL_44:

    v77 = v0[43];
    v78 = v0[18];

    v79 = *(v78 + v77);
    v80 = -1;
    v81 = -1 << *(v79 + 32);
    if (-v81 < 64)
    {
      v80 = ~(-1 << -v81);
    }

    v82 = v80 & *(v79 + 64);
    v83 = (63 - v81) >> 6;
    swift_bridgeObjectRetain_n();
    v84 = 0;
    v85 = MEMORY[0x277D84F90];
    if (!v82)
    {
      goto LABEL_49;
    }

    do
    {
LABEL_47:
      while (1)
      {
        v86 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v87 = *(*(v79 + 56) + ((v84 << 9) | (8 * v86)));
        if (v87)
        {
          break;
        }

        if (!v82)
        {
          goto LABEL_49;
        }
      }

      v89 = v0[32];
      v183 = v0[33];
      v91 = v0[27];
      v90 = v0[28];
      (*(v90 + 16))(v89, v87 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id, v91);
      v92 = v183;
      v184 = *(v90 + 32);
      v184(v92, v89, v91);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_24AC1D2D4(0, v85[2] + 1, 1, v85);
      }

      v94 = v85[2];
      v93 = v85[3];
      if (v94 >= v93 >> 1)
      {
        v85 = sub_24AC1D2D4((v93 > 1), v94 + 1, 1, v85);
      }

      v95 = v0[33];
      v96 = v0[27];
      v97 = v0[28];
      v85[2] = v94 + 1;
      v184(v85 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v94, v95, v96);
    }

    while (v82);
    while (1)
    {
LABEL_49:
      v88 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_109;
      }

      if (v88 >= v83)
      {
        break;
      }

      v82 = *(v79 + 64 + 8 * v88);
      ++v84;
      if (v82)
      {
        v84 = v88;
        goto LABEL_47;
      }
    }

    v98 = v0[42];

    v99 = sub_24AC653A0(v85);

    if (*(v99 + 16) <= *(v98 + 16) >> 3)
    {
      v186 = v0[42];
      sub_24AC5A620(v99);

      v178 = v186;
    }

    else
    {
      v178 = sub_24AC5AA68(v99, v0[42]);
    }

    v3 = 0;
    v100 = v178 + 56;
    v101 = -1;
    v102 = -1 << *(v178 + 32);
    if (-v102 < 64)
    {
      v101 = ~(-1 << -v102);
    }

    v2 = v101 & *(v178 + 56);
    v168 = v0[18];
    v169 = v0[21];
    v167 = OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
    v103 = (63 - v102) >> 6;
    v180 = (v0[28] + 8);
    v173 = v103;
    while (1)
    {
      if (!v2)
      {
        while (1)
        {
          v108 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_110;
          }

          if (v108 >= v103)
          {

            v3 = MEMORY[0x277D84F90];
            v2 = &qword_2814AD000;
            goto LABEL_88;
          }

          v2 = *(v100 + 8 * v108);
          ++v3;
          if (v2)
          {
            v3 = v108;
            break;
          }
        }
      }

      v110 = v0[30];
      v109 = v0[31];
      v112 = v0[27];
      v111 = v0[28];
      v174 = *(v111 + 72);
      v185 = *(v111 + 16);
      v185(v109, *(v178 + 48) + v174 * (__clz(__rbit64(v2)) | (v3 << 6)), v112);
      (*(v111 + 32))(v110, v109, v112);
      if (qword_27EF9DC30 != -1)
      {
        swift_once();
      }

      v114 = v0[29];
      v113 = v0[30];
      v115 = v0[27];
      v116 = sub_24ACD0490();
      __swift_project_value_buffer(v116, qword_27EF9DF68);
      v185(v114, v113, v115);

      v117 = sub_24ACD0470();
      v118 = sub_24ACD0930();

      v119 = os_log_type_enabled(v117, v118);
      v120 = v0[29];
      v121 = v0[27];
      if (v119)
      {
        v122 = v0[22];
        v171 = v118;
        v123 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v186 = v172;
        *v123 = 136446466;
        sub_24AC2A3DC(v168 + v167, v122);
        v124 = (v122 + *(v169 + 32));
        log = v117;
        v126 = *v124;
        v125 = v124[1];

        sub_24AC234B4(v122);
        v127 = sub_24AC29E20(v126, v125, &v186);

        *(v123 + 4) = v127;
        *(v123 + 12) = 2082;
        sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C8]);
        v128 = sub_24ACD0C20();
        v130 = v129;
        v131 = *v180;
        (*v180)(v120, v121);
        v132 = sub_24AC29E20(v128, v130, &v186);

        *(v123 + 14) = v132;
        _os_log_impl(&dword_24AC18000, log, v171, "%{public}s: No characteristics discovered for %{public}s", v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v172, -1, -1);
        MEMORY[0x24C22DC60](v123, -1, -1);
      }

      else
      {

        v131 = *v180;
        (*v180)(v120, v121);
      }

      v133 = v0[43];
      v134 = v0[30];
      v135 = v0[18];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = *(v135 + v133);
      v186 = v137;
      v138 = sub_24AC2ACEC(v134, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
      v140 = v137[2];
      v141 = (v139 & 1) == 0;
      v142 = __OFADD__(v140, v141);
      v143 = v140 + v141;
      if (v142)
      {
        goto LABEL_111;
      }

      v144 = v139;
      if (v137[3] < v143)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_82;
      }

      v152 = v138;
      sub_24AC5E3CC();
      v138 = v152;
      v137 = v186;
      if (v144)
      {
LABEL_65:
        v104 = v137[7];
        v105 = *(v104 + 8 * v138);
        *(v104 + 8 * v138) = 0;
        goto LABEL_66;
      }

LABEL_83:
      v147 = v0[30];
      v148 = v0[27];
      v137[(v138 >> 6) + 8] |= 1 << v138;
      v149 = v138;
      v185(v137[6] + v138 * v174, v147, v148);
      *(v137[7] + 8 * v149) = 0;
      v150 = v137[2];
      v142 = __OFADD__(v150, 1);
      v151 = v150 + 1;
      if (v142)
      {
        __break(1u);
        goto LABEL_115;
      }

      v137[2] = v151;
      v105 = 1;
LABEL_66:
      v2 &= v2 - 1;
      v106 = v0[30];
      v107 = v0[27];
      *(v0[18] + v0[43]) = v137;
      sub_24AC2B7BC(v105);
      swift_endAccess();
      v131(v106, v107);
      v103 = v173;
      v100 = v178 + 56;
    }

    v145 = v0[30];
    sub_24AC5BF38(v143, isUniquelyReferenced_nonNull_native);
    v137 = v186;
    v138 = sub_24AC2ACEC(v145, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
    if ((v144 & 1) != (v146 & 1))
    {

      return sub_24ACD0C80();
    }

LABEL_82:
    if (v144)
    {
      goto LABEL_65;
    }

    goto LABEL_83;
  }

  v31 = 0;
  v0[46] = OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
  v32 = 0x278FFC000uLL;
  while (1)
  {
    v33 = v0[41];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C22D1B0](v31);
    }

    else
    {
      if (v31 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v34 = *(v33 + 8 * v31 + 32);
    }

    v0[47] = v34;
    v0[48] = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_112;
    }

    v35 = v0[44];
    v37 = v0[25];
    v36 = v0[26];
    v38 = v0[23];
    v39 = v0[24];
    v182 = v34;
    v40 = [v34 *(v32 + 3992)];
    CBUUID.uuidValue.getter(v36);

    (*(v39 + 16))(v37, v36, v38);
    type metadata accessor for Characteristic(0);
    sub_24ACD0000();
    if (!*(v35 + 16))
    {
      break;
    }

    v41 = v0[44];
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
    v42 = sub_24ACD0520();
    v43 = -1 << *(v41 + 32);
    v44 = v42 & ~v43;
    if (((*(v41 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v44) & 1) == 0)
    {
      break;
    }

    v45 = ~v43;
    v46 = v0[28];
    v47 = *(v46 + 72);
    v48 = *(v46 + 16);
    v49 = v0[44];
    while (1)
    {
      v50 = v0[34];
      v52 = v0[27];
      v51 = v0[28];
      v48(v50, *(v49 + 48) + v44 * v47, v52);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
      v53 = sub_24ACD0550();
      v54 = *(v51 + 8);
      v54(v50, v52);
      if (v53)
      {
        break;
      }

      v49 = v0[44];
      v44 = (v44 + 1) & v45;
      if (((*(v49 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v44) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v55 = v0[35];
    v57 = v0[26];
    v56 = v0[27];
    v59 = v0[23];
    v58 = v0[24];

    v54(v55, v56);
    result = (*(v58 + 8))(v57, v59);
    v31 = v0[48];
    v32 = 0x278FFC000;
    if (v31 == v0[45])
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v182;
  swift_allocObject();

  v74 = v182;
  v75 = swift_task_alloc();
  v0[50] = v75;
  *v75 = v0;
  v75[1] = sub_24AC25314;
  v76 = v0[18];

  return sub_24AC49DF4(v76, inited);
}

uint64_t sub_24AC25314(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v4 = v3[18];

    v5 = sub_24AC2654C;
    v6 = v4;
  }

  else
  {
    v6 = v3[18];
    v5 = sub_24AC25478;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_24AC25478()
{
  v1 = v0[51];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[18];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_24AC633C0(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v2) = v7;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC25550, v1, 0);
}

uint64_t sub_24AC25550()
{
  v1 = v0[18];
  v0[53] = sub_24ACA2CB0();
  v0[54] = v2;

  return MEMORY[0x2822009F8](sub_24AC255C0, v1, 0);
}

id sub_24AC255C0()
{
  v172 = v0;
  if (qword_27EF9DC30 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v160 = sub_24ACD0490();
    __swift_project_value_buffer(v160, qword_27EF9DF68);

    v1 = sub_24ACD0470();
    v2 = sub_24ACD0930();

    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[54];
    if (v3)
    {
      log = v0[53];
      v149 = v0[46];
      v154 = v0[28];
      v156 = v0[47];
      v157 = v0[27];
      v159 = v0[35];
      v161 = v0[24];
      v163 = v0[23];
      v165 = v0[26];
      v6 = v0[21];
      v5 = v0[22];
      v7 = v0[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v171 = v9;
      *v8 = 136446466;
      sub_24AC2A3DC(v7 + v149, v5);
      v10 = (v5 + *(v6 + 32));
      v11 = *v10;
      v12 = v10[1];

      sub_24AC234B4(v5);
      v13 = sub_24AC29E20(v11, v12, &v171);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2082;
      v14 = sub_24AC29E20(log, v4, &v171);

      *(v8 + 14) = v14;
      _os_log_impl(&dword_24AC18000, v1, v2, "%{public}s: Discovered characteristic: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v9, -1, -1);
      MEMORY[0x24C22DC60](v8, -1, -1);

      (*(v154 + 8))(v159, v157);
      result = (*(v161 + 8))(v165, v163);
    }

    else
    {
      v16 = v0[47];
      v17 = v0[35];
      v18 = v0[27];
      v19 = v0[28];
      v166 = v0[26];
      v21 = v0[23];
      v20 = v0[24];

      (*(v19 + 8))(v17, v18);
      result = (*(v20 + 8))(v166, v21);
    }

    v22 = v0[48];
    if (v22 != v0[45])
    {
      break;
    }

LABEL_6:

    v23 = v0[43];
    v24 = v0[18];

    v25 = *(v24 + v23);
    v26 = -1;
    v27 = -1 << *(v25 + 32);
    if (-v27 < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v25 + 64);
    v29 = (63 - v27) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v145 = MEMORY[0x277D84F90];
    if (!v28)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = *(*(v25 + 56) + ((v30 << 9) | (8 * v32)));
        if (v33)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_11;
        }
      }

      v35 = v0[32];
      v167 = v0[33];
      v37 = v0[27];
      v36 = v0[28];
      (*(v36 + 16))(v35, v33 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id, v37);
      v38 = v167;
      v168 = *(v36 + 32);
      v168(v38, v35, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_24AC1D2D4(0, v31[2] + 1, 1, v31);
      }

      v40 = v31[2];
      v39 = v31[3];
      if (v40 >= v39 >> 1)
      {
        v31 = sub_24AC1D2D4((v39 > 1), v40 + 1, 1, v31);
      }

      v41 = v0[33];
      v42 = v0[27];
      v43 = v0[28];
      v31[2] = v40 + 1;
      v168(v31 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40, v41, v42);
    }

    while (v28);
LABEL_11:
    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v34 >= v29)
      {
        v44 = v0[42];

        v45 = sub_24AC653A0(v31);

        if (*(v45 + 16) <= *(v44 + 16) >> 3)
        {
          v171 = v0[42];
          sub_24AC5A620(v45);

          v162 = v171;
        }

        else
        {
          v162 = sub_24AC5AA68(v45, v0[42]);
        }

        v77 = 0;
        v78 = v162 + 56;
        v79 = -1;
        v80 = -1 << *(v162 + 32);
        if (-v80 < 64)
        {
          v79 = ~(-1 << -v80);
        }

        v81 = v79 & *(v162 + 56);
        v147 = v0[18];
        v148 = v0[21];
        v146 = OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
        v82 = (63 - v80) >> 6;
        v164 = (v0[28] + 8);
        v155 = v82;
        while (2)
        {
          if (!v81)
          {
            while (1)
            {
              v87 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                goto LABEL_86;
              }

              if (v87 >= v82)
              {

                v131 = v0[18];
                v132 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
                swift_beginAccess();
                v133 = *(v131 + v132);
                v134 = *(v133 + 64);
                v171 = MEMORY[0x277D84F90];
                v135 = -1;
                v136 = -1 << *(v133 + 32);
                if (-v136 < 64)
                {
                  v135 = ~(-1 << -v136);
                }

                v137 = v135 & v134;
                v138 = (63 - v136) >> 6;
                swift_bridgeObjectRetain_n();
                v139 = 0;
                if (!v137)
                {
                  goto LABEL_71;
                }

                do
                {
LABEL_69:
                  while (1)
                  {
                    v140 = __clz(__rbit64(v137));
                    v137 &= v137 - 1;
                    if (*(*(v133 + 56) + ((v139 << 9) | (8 * v140))))
                    {
                      break;
                    }

                    if (!v137)
                    {
                      goto LABEL_71;
                    }
                  }

                  MEMORY[0x24C22CE30](v142);
                  if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_24ACD0720();
                  }

                  sub_24ACD0730();
                  v145 = v171;
                }

                while (v137);
LABEL_71:
                while (1)
                {
                  v141 = v139 + 1;
                  if (__OFADD__(v139, 1))
                  {
                    goto LABEL_87;
                  }

                  if (v141 >= v138)
                  {
                    v143 = v0[17];

                    *v143 = v145;

                    v144 = v0[1];

                    return v144();
                  }

                  v137 = *(v133 + 64 + 8 * v141);
                  ++v139;
                  if (v137)
                  {
                    v139 = v141;
                    goto LABEL_69;
                  }
                }
              }

              v81 = *(v78 + 8 * v87);
              ++v77;
              if (v81)
              {
                v77 = v87;
                break;
              }
            }
          }

          v88 = v0[30];
          v89 = v0[31];
          v91 = v0[27];
          v90 = v0[28];
          v158 = *(v90 + 72);
          v170 = *(v90 + 16);
          v170(v89, *(v162 + 48) + v158 * (__clz(__rbit64(v81)) | (v77 << 6)), v91);
          (*(v90 + 32))(v88, v89, v91);
          if (qword_27EF9DC30 != -1)
          {
            swift_once();
          }

          v92 = v0[29];
          v93 = v0[30];
          v94 = v0[27];
          __swift_project_value_buffer(v160, qword_27EF9DF68);
          v170(v92, v93, v94);

          v95 = sub_24ACD0470();
          v96 = sub_24ACD0930();

          v97 = os_log_type_enabled(v95, v96);
          v98 = v0[29];
          v99 = v0[27];
          if (v97)
          {
            v100 = v0[22];
            loga = v95;
            v101 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            v171 = v153;
            *v101 = 136446466;
            sub_24AC2A3DC(v147 + v146, v100);
            v102 = (v100 + *(v148 + 32));
            v150 = v96;
            v104 = *v102;
            v103 = v102[1];

            sub_24AC234B4(v100);
            v105 = sub_24AC29E20(v104, v103, &v171);

            *(v101 + 4) = v105;
            *(v101 + 12) = 2082;
            sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C8]);
            v106 = sub_24ACD0C20();
            v108 = v107;
            v109 = *v164;
            (*v164)(v98, v99);
            v110 = sub_24AC29E20(v106, v108, &v171);

            *(v101 + 14) = v110;
            _os_log_impl(&dword_24AC18000, loga, v150, "%{public}s: No characteristics discovered for %{public}s", v101, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C22DC60](v153, -1, -1);
            MEMORY[0x24C22DC60](v101, -1, -1);
          }

          else
          {

            v109 = *v164;
            (*v164)(v98, v99);
          }

          v111 = v0[43];
          v112 = v0[30];
          v113 = v0[18];
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115 = *(v113 + v111);
          v171 = v115;
          v116 = sub_24AC2ACEC(v112, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
          v118 = v115[2];
          v119 = (v117 & 1) == 0;
          v120 = __OFADD__(v118, v119);
          v121 = v118 + v119;
          if (v120)
          {
            goto LABEL_88;
          }

          v122 = v117;
          if (v115[3] >= v121)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_61;
            }

            v130 = v116;
            sub_24AC5E3CC();
            v116 = v130;
            v115 = v171;
            if (v122)
            {
              goto LABEL_44;
            }

LABEL_62:
            v125 = v0[30];
            v126 = v0[27];
            v115[(v116 >> 6) + 8] |= 1 << v116;
            v127 = v116;
            result = (v170)(v115[6] + v116 * v158, v125, v126);
            *(v115[7] + 8 * v127) = 0;
            v128 = v115[2];
            v120 = __OFADD__(v128, 1);
            v129 = v128 + 1;
            if (v120)
            {
              __break(1u);
              goto LABEL_91;
            }

            v115[2] = v129;
            v84 = 1;
          }

          else
          {
            v123 = v0[30];
            sub_24AC5BF38(v121, isUniquelyReferenced_nonNull_native);
            v115 = v171;
            v116 = sub_24AC2ACEC(v123, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
            if ((v122 & 1) != (v124 & 1))
            {

              return sub_24ACD0C80();
            }

LABEL_61:
            if ((v122 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_44:
            v83 = v115[7];
            v84 = *(v83 + 8 * v116);
            *(v83 + 8 * v116) = 0;
          }

          v81 &= v81 - 1;
          v85 = v0[30];
          v86 = v0[27];
          *(v0[18] + v0[43]) = v115;
          sub_24AC2B7BC(v84);
          swift_endAccess();
          v109(v85, v86);
          v82 = v155;
          v78 = v162 + 56;
          continue;
        }
      }

      v28 = *(v25 + 64 + 8 * v34);
      ++v30;
      if (v28)
      {
        v30 = v34;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v46 = 0x278FFC000uLL;
  while (1)
  {
    v47 = v0[41];
    if ((v47 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C22D1B0](v22);
    }

    else
    {
      if (v22 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      result = *(v47 + 8 * v22 + 32);
    }

    v0[47] = result;
    v0[48] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    v48 = v0[44];
    v50 = v0[25];
    v49 = v0[26];
    v51 = v0[23];
    v52 = v0[24];
    v169 = result;
    v53 = [result *(v46 + 3992)];
    CBUUID.uuidValue.getter(v49);

    (*(v52 + 16))(v50, v49, v51);
    type metadata accessor for Characteristic(0);
    sub_24ACD0000();
    if (!*(v48 + 16))
    {
      break;
    }

    v54 = v0[44];
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
    v55 = sub_24ACD0520();
    v56 = -1 << *(v54 + 32);
    v57 = v55 & ~v56;
    if (((*(v54 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
    {
      break;
    }

    v58 = ~v56;
    v59 = v0[28];
    v60 = *(v59 + 72);
    v61 = *(v59 + 16);
    v62 = v0[44];
    while (1)
    {
      v63 = v0[34];
      v64 = v0[27];
      v65 = v0[28];
      v61(v63, *(v62 + 48) + v57 * v60, v64);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C0]);
      v66 = sub_24ACD0550();
      v67 = *(v65 + 8);
      v67(v63, v64);
      if (v66)
      {
        break;
      }

      v62 = v0[44];
      v57 = (v57 + 1) & v58;
      if (((*(v62 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v57) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v68 = v0[35];
    v70 = v0[26];
    v69 = v0[27];
    v71 = v0[23];
    v72 = v0[24];

    v67(v68, v69);
    result = (*(v72 + 8))(v70, v71);
    v22 = v0[48];
    v46 = 0x278FFC000;
    if (v22 == v0[45])
    {
      goto LABEL_6;
    }
  }

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v169;
  swift_allocObject();

  v74 = v169;
  v75 = swift_task_alloc();
  v0[50] = v75;
  *v75 = v0;
  v75[1] = sub_24AC25314;
  v76 = v0[18];

  return sub_24AC49DF4(v76, inited);
}

uint64_t sub_24AC2654C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  (*(v3 + 8))(v1, v2);
  (*(v6 + 8))(v4, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AC26694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC2679C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v13, a2 + v16);
  swift_endAccess();
  v17 = sub_24ACD07C0();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_24AC2B420(&qword_27EF9DF80, type metadata accessor for Service, &protocol conformance descriptor for Service);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v18;
  v19[4] = a3;
  v19[5] = a2;
  v19[6] = a4;

  swift_retain_n();
  sub_24AC7EA6C(0, 0, v10, &unk_24ACD40C0, v19);
}

uint64_t sub_24AC26A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for PeerPath(0);
  v5[6] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC26B68, a5, 0);
}

uint64_t sub_24AC26B68()
{
  v45 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = v0[11];
      v5 = v0[8];
      v44 = MEMORY[0x277D84F90];
      sub_24ACD0AB0();
      v6 = objc_opt_self();
      v7 = *(v4 + 16);
      v4 += 16;
      v40 = v7;
      v41 = v6;
      v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v38 = (v5 + 8);
      v39 = *(v4 + 56);
      v9 = (v4 - 8);
      do
      {
        v10 = v0[12];
        v12 = v0[9];
        v11 = v0[10];
        v13 = v0[7];
        v40(v10, v8, v11);
        sub_24ACCFFE0();
        v14 = sub_24ACD03D0();
        v15 = [v41 UUIDWithNSUUID_];

        (*v38)(v12, v13);
        (*v9)(v10, v11);
        sub_24ACD0A90();
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v8 += v39;
        --v2;
      }

      while (v2);
      v3 = v44;
    }
  }

  else
  {
    v3 = 0;
  }

  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v16 = sub_24ACD0490();
  __swift_project_value_buffer(v16, qword_27EF9DF68);

  v17 = sub_24ACD0470();
  v18 = sub_24ACD08F0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[4];
    v42 = v0[3];
    v22 = swift_slowAlloc();
    v43 = v3;
    v44 = swift_slowAlloc();
    v23 = v44;
    *v22 = 136446466;
    sub_24AC2A3DC(v21 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v20);
    v24 = (v20 + *(v19 + 32));
    v25 = *v24;
    v26 = v24[1];

    sub_24AC234B4(v20);
    v27 = sub_24AC29E20(v25, v26, &v44);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v0[2] = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E000, &qword_24ACD40C8);
    v28 = sub_24ACD05A0();
    v30 = sub_24AC29E20(v28, v29, &v44);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_24AC18000, v17, v18, "%{public}s: Calling discoverCharacteristics: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    v31 = v23;
    v3 = v43;
    MEMORY[0x24C22DC60](v31, -1, -1);
    MEMORY[0x24C22DC60](v22, -1, -1);
  }

  v32 = *(v0[4] + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject);
  v33 = [v32 peripheral];
  if (v33)
  {
    v34 = v33;
    if (v3)
    {
      sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      v35 = sub_24ACD06F0();
    }

    else
    {
      v35 = 0;
    }

    [v34 discoverCharacteristics:v35 forService:v32];
  }

  else
  {
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_24AC26FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for PeerPath(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v10 = sub_24ACD0490();
  __swift_project_value_buffer(v10, qword_27EF9DF68);

  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    sub_24AC2A3DC(a1 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v9);
    v15 = &v9[*(v7 + 32)];
    v16 = *v15;
    v17 = v15[1];

    sub_24AC234B4(v9);
    v18 = sub_24AC29E20(v16, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s cancelling characteristic discovery.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C22DC60](v14, -1, -1);
    MEMORY[0x24C22DC60](v13, -1, -1);
  }

  sub_24ACD07A0();
  v19 = sub_24ACD07C0();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;

  sub_24AC7F080(0, 0, v6, &unk_24ACD40A8, v20);
}

uint64_t sub_24AC27290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC27330, a4, 0);
}

uint64_t sub_24AC27330()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v1, v2 + v4);
  swift_endAccess();
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_24AC27460;

  return sub_24AC318F0((v0 + 40));
}

uint64_t sub_24AC27460()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AC2759C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24AC2759C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC27600(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for PeerPath(0);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC27758, v1, 0);
}

uint64_t sub_24AC27758()
{
  v50 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  v0[15] = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[5];

    v5 = sub_24AC2ACEC(v4, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {

        v8 = v0[1];

        return v8(v7);
      }
    }

    else
    {
    }
  }

  v10 = v0[6];
  v11 = *(v10 + OBJC_IVAR____TtC15FindMyBluetooth7Service_autoDiscoverCount);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v15 = v0[13];
    v14 = v0[14];
    v16 = v0[12];
    v17 = v0[5];
    v18 = sub_24ACD0490();
    __swift_project_value_buffer(v18, qword_27EF9DF68);
    (*(v15 + 16))(v14, v17, v16);

    v19 = sub_24ACD0470();
    v20 = sub_24ACD0910();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[13];
    v23 = v0[14];
    v24 = v0[12];
    if (v21)
    {
      log = v19;
      v26 = v0[10];
      v25 = v0[11];
      v47 = v20;
      v27 = v0[8];
      v28 = v0[9];
      v29 = v0[6];
      v45 = v0[7];
      v30 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v30 = 136446466;
      sub_24AC2A3DC(v29 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v25);
      v31 = (v25 + *(v26 + 32));
      v33 = *v31;
      v32 = v31[1];

      sub_24AC234B4(v25);
      v34 = sub_24AC29E20(v33, v32, &v49);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      sub_24ACCFFE0();
      sub_24AC2B420(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_24ACD0C20();
      v37 = v36;
      (*(v27 + 8))(v28, v45);
      (*(v22 + 8))(v23, v24);
      v38 = sub_24AC29E20(v35, v37, &v49);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_24AC18000, log, v47, "%{public}s: Inefficient autoDiscovery for %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v46, -1, -1);
      MEMORY[0x24C22DC60](v30, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v23, v24);
    }

    goto LABEL_14;
  }

  *(v10 + OBJC_IVAR____TtC15FindMyBluetooth7Service_autoDiscoverCount) = v13;
  if (v13 >= 2)
  {
    if (qword_27EF9DC30 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_14:
  v39 = v0[12];
  v40 = v0[13];
  v41 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE0, &qword_24ACD37C8);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  v0[16] = v43;
  *(v43 + 16) = xmmword_24ACD39E0;
  (*(v40 + 16))(v43 + v42, v41, v39);
  v44 = swift_task_alloc();
  v0[17] = v44;
  *v44 = v0;
  v44[1] = sub_24AC27C18;

  return sub_24AC2353C(v43);
}

uint64_t sub_24AC27C18(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v4 = *(v3 + 48);
    v5 = sub_24AC280D8;
  }

  else
  {
    v6 = *(v3 + 48);

    v5 = sub_24AC27D60;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC27D60()
{
  v19 = v0;
  v1 = *(v0[6] + v0[15]);
  if (*(v1 + 16))
  {
    v2 = v0[5];

    v3 = sub_24AC2ACEC(v2, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, &qword_27EF9DFE8);
    if (v4)
    {
      v5 = *(*(v1 + 56) + 8 * v3);

      if (v5)
      {

        v6 = v0[1];

        return v6(v5);
      }
    }

    else
    {
    }
  }

  if (qword_27EF9DC30 != -1)
  {
    swift_once();
  }

  v8 = sub_24ACD0490();
  __swift_project_value_buffer(v8, qword_27EF9DF68);

  v9 = sub_24ACD0470();
  v10 = sub_24ACD0910();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF90, &qword_24ACD3F60);
    sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088B8]);
    v13 = sub_24ACD0510();
    v15 = v14;

    v16 = sub_24AC29E20(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24AC18000, v9, v10, "Missing characteristic during auto-discovery: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v11, -1, -1);
  }

  type metadata accessor for CentralManager.Error(0);
  sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC280D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC28170@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth7Service_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC281F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC2353C(a1);
}

uint64_t sub_24AC28288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC27600(a1);
}

uint64_t sub_24AC2831C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC56488();
}

uint64_t sub_24AC283BC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_24AC284E4()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24ACD0A20();

  v16 = 60;
  v17 = 0xE100000000000000;
  v14 = v0;
  v5 = type metadata accessor for Service(0);
  v6 = sub_24AC2B420(&qword_27EF9DFB0, type metadata accessor for Service, &protocol conformance descriptor for Service);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  v14 = 91;
  v15 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v10 = shortCBUUIDDescription(uuid:)(v4);
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C22CD50](v10, v12);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](v14, v15);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v16;
}

uint64_t sub_24AC28798()
{
  v1 = sub_24ACD0420();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_24ACD0A20();

  v16 = 60;
  v17 = 0xE100000000000000;
  v14 = v0;
  v5 = type metadata accessor for MockService(0);
  v6 = sub_24AC2B420(&qword_27EF9DFB8, type metadata accessor for MockService, &protocol conformance descriptor for MockService);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  v14 = 91;
  v15 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v10 = shortCBUUIDDescription(uuid:)(v4);
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x24C22CD50](v10, v12);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](v14, v15);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v16;
}

uint64_t sub_24AC28A50(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for PeerPath(0);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC28B90, v1, 0);
}

uint64_t sub_24AC28B90()
{
  v58 = v0;
  if (qword_27EF9DC30 != -1)
  {
LABEL_31:
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9DF68);

  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[13];
    v56 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v57 = v11;
    *v9 = 136446722;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v7);
    v12 = (v7 + *(v6 + 32));
    v14 = *v12;
    v13 = v12[1];

    sub_24AC234B4(v7);
    v15 = sub_24AC29E20(v14, v13, &v57);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    v16 = sub_24AC284E4();
    v18 = sub_24AC29E20(v16, v17, &v57);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2114;
    v19 = v56;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v20;
    *v10 = v20;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: Invalidated service: %{public}s error %{public}@", v9, 0x20u);
    sub_24AC212F4(v10, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  if ((sub_24ACD0840() & 1) == 0)
  {
    v21 = v0[18];
    v22 = v0[14];
    v23 = v0[15];
    v24 = v0[13];
    v25 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v24 + v25, v21, &qword_27EF9E4F0, &unk_24ACD4130);
    v26 = (*(v23 + 48))(v21, 1, v22);
    v27 = v0[18];
    if (v26)
    {
      sub_24AC212F4(v0[18], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v29 = v0[15];
      v28 = v0[16];
      v30 = v0[14];
      v31 = v0[12];
      (*(v29 + 16))(v28, v0[18], v30);
      sub_24AC212F4(v27, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[11] = v31;
      v32 = v31;
      sub_24ACD0750();
      (*(v29 + 8))(v28, v30);
    }
  }

  v33 = v0[17];
  v34 = v0[13];
  (*(v0[15] + 56))(v33, 1, 1, v0[14]);
  v35 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2AAE0(v33, v34 + v35);
  swift_endAccess();
  v36 = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  v0[21] = OBJC_IVAR____TtC15FindMyBluetooth7Service_characteristics;
  swift_beginAccess();
  v37 = *(v34 + v36);
  v38 = MEMORY[0x277D84F90];
  v39 = *(v37 + 64);
  v57 = MEMORY[0x277D84F90];
  v40 = -1;
  v41 = -1 << *(v37 + 32);
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v42 = v40 & v39;
  v43 = (63 - v41) >> 6;
  swift_bridgeObjectRetain_n();
  v44 = 0;
LABEL_11:
  v0[22] = v38;
  while (v42)
  {
LABEL_12:
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    if (*(*(v37 + 56) + ((v44 << 9) | (8 * v45))))
    {

      MEMORY[0x24C22CE30](v47);
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v38 = v57;
      goto LABEL_11;
    }
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v46 >= v43)
    {
      break;
    }

    v42 = *(v37 + 64 + 8 * v46);
    ++v44;
    if (v42)
    {
      v44 = v46;
      goto LABEL_12;
    }
  }

  if (v38 >> 62)
  {
    result = sub_24ACD0B30();
    v0[23] = result;
    if (result)
    {
LABEL_23:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[24] = 0;
        v49 = v0[22];
        if ((v49 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x24C22D1B0](0);
        }

        else
        {
          v50 = *(v49 + 32);
        }

        v0[25] = v50;
        v51 = swift_task_alloc();
        v0[26] = v51;
        *v51 = v0;
        v51[1] = sub_24AC291CC;
        v52 = v0[12];

        return sub_24AC48538(v52);
      }

      return result;
    }
  }

  else
  {
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[23] = result;
    if (result)
    {
      goto LABEL_23;
    }
  }

  v53 = v0[21];
  v54 = v0[13];

  *(v54 + v53) = MEMORY[0x277D84F98];

  v55 = v0[1];

  return v55();
}

uint64_t sub_24AC291CC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_24AC292DC, v1, 0);
}

uint64_t sub_24AC292DC()
{
  v1 = v0[24];
  v2 = v0[23];

  if (v1 + 1 == v2)
  {
    v3 = v0[21];
    v4 = v0[13];

    *(v4 + v3) = MEMORY[0x277D84F98];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[24] + 1;
    v0[24] = v7;
    v8 = v0[22];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C22D1B0]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[25] = v9;
    v10 = swift_task_alloc();
    v0[26] = v10;
    *v10 = v0;
    v10[1] = sub_24AC291CC;
    v11 = v0[12];

    return sub_24AC48538(v11);
  }
}

uint64_t sub_24AC29454(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 120) = a1;
  *(v3 + 32) = type metadata accessor for PeerPath(0);
  *(v3 + 40) = swift_task_alloc();
  sub_24ACD0420();
  *(v3 + 48) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2958C, v2, 0);
}

uint64_t sub_24AC2958C()
{
  v37 = v0;
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 48);
    v3 = [*(*(v0 + 16) + 16) UUID];
    CBUUID.uuidValue.getter(v2);

    type metadata accessor for Characteristic(0);
    sub_24ACD0000();
    if (qword_27EF9DC30 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = sub_24ACD0490();
    __swift_project_value_buffer(v8, qword_27EF9DF68);
    (*(v7 + 16))(v5, v4, v6);

    v9 = sub_24ACD0470();
    v10 = sub_24ACD0930();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);
    if (v11)
    {
      v35 = v10;
      v15 = *(v0 + 32);
      v16 = *(v0 + 40);
      v17 = *(v0 + 24);
      v33 = *(v0 + 120);
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36[0] = v34;
      *v18 = 136446722;
      sub_24AC2A3DC(v17 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v16);
      v19 = (v16 + *(v15 + 32));
      v21 = *v19;
      v20 = v19[1];

      sub_24AC234B4(v16);
      v22 = sub_24AC29E20(v21, v20, v36);

      *(v18 + 4) = v22;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v33;
      *(v18 + 18) = 2082;
      sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C8]);
      v23 = sub_24ACD0C20();
      v25 = v24;
      v26 = *(v13 + 8);
      v26(v12, v14);
      v27 = sub_24AC29E20(v23, v25, v36);

      *(v18 + 20) = v27;
      _os_log_impl(&dword_24AC18000, v9, v35, "%{public}s: Calling setNotify(%{BOOL}d) for %{public}s", v18, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v34, -1, -1);
      MEMORY[0x24C22DC60](v18, -1, -1);
    }

    else
    {

      v26 = *(v13 + 8);
      v26(v12, v14);
    }

    *(v0 + 96) = v26;
    v30 = swift_task_alloc();
    *(v0 + 104) = v30;
    *v30 = v0;
    v30[1] = sub_24AC299E8;
    v31 = *(v0 + 16);
    v32 = *(v0 + 120);

    return sub_24AC2BDB4(v32, v31);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC2B420(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_24AC299E8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_24AC29BD4;
  }

  else
  {
    v4 = sub_24AC29B14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC29B14()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC29BD4()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Identifier<A>.description.getter()
{
  v0 = sub_24ACD0420();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 91;
  v9[1] = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0, MEMORY[0x277D088C8]);
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v5 = shortCBUUIDDescription(uuid:)(v3);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x24C22CD50](v5, v7);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return v9[0];
}

{
  v0 = sub_24ACD0420();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 91;
  v9[1] = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v4 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v5 = shortCBUUIDDescription(uuid:)(v3);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x24C22CD50](v5, v7);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  return v9[0];
}

unint64_t sub_24AC29E20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AC29EEC(v11, 0, 0, 1, a1, a2);
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
    sub_24AC2B940(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24AC29EEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24AC29FF8(a5, a6);
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
    result = sub_24ACD0A80();
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

void *sub_24AC29FF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AC2A044(a1, a2);
  sub_24AC2A174(byte_285E258D0);
  return v3;
}

void *sub_24AC2A044(uint64_t a1, unint64_t a2)
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

  v6 = sub_24AC7055C(v5, 0);
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

  result = sub_24ACD0A80();
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
        v10 = sub_24ACD0610();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AC7055C(v10, 0);
        result = sub_24ACD0A10();
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

char *sub_24AC2A174(char *result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AC1D468(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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

uint64_t sub_24AC2A2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC20274;

  return sub_24AC23DD8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for Service(uint64_t a1)
{
  result = qword_2814AD248;
  if (!qword_2814AD248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC2A3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC2A488(uint64_t a1)
{
  *(a1 + 8) = sub_24AC2B420(&qword_27EF9DFA8, type metadata accessor for Service, &protocol conformance descriptor for Service);
  result = sub_24AC2B420(&qword_27EF9DFB0, type metadata accessor for Service, &protocol conformance descriptor for Service);
  *(a1 + 16) = result;
  return result;
}

void sub_24AC2A55C(uint64_t a1)
{
  sub_24AC2AA24(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PeerPath(319);
    if (v2 <= 0x3F)
    {
      sub_24AC2AA7C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of Service.discover(characteristicIdentifiers:)(uint64_t a1)
{
  v6 = (*(*v1 + 256) + **(*v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2A800;

  return v6(a1);
}

uint64_t sub_24AC2A800(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of Service.subscript.getter(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AC2BA00;

  return v6(a1);
}

void sub_24AC2AA24(uint64_t a1)
{
  if (!qword_2814AE228)
  {
    type metadata accessor for Service(255);
    v1 = sub_24ACCFFF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814AE228);
    }
  }
}

void sub_24AC2AA7C(uint64_t a1)
{
  if (!qword_2814AD010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF9E070, &qword_24ACD4150);
    v1 = sub_24ACD0970();
    if (!v2)
    {
      atomic_store(v1, &qword_2814AD010);
    }
  }
}

uint64_t sub_24AC2AAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AC2AB50(uint64_t a1, uint64_t a2)
{
  sub_24ACD0D10();
  sub_24ACD05E0();
  v4 = sub_24ACD0D50();

  return sub_24AC2AE7C(a1, a2, v4);
}

unint64_t sub_24AC2ABC8(uint64_t a1)
{
  sub_24ACD0420();
  sub_24AC2B420(&qword_2814AE200, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_24ACD0520();

  return sub_24AC2AF34(a1, v2);
}

unint64_t sub_24AC2AC84(uint64_t a1)
{
  v2 = sub_24ACD09C0();

  return sub_24AC2B2A8(a1, v2);
}

unint64_t sub_24AC2ACEC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_24AC2B6A8(a4, a2, a3, MEMORY[0x277D088B8]);
  v10 = sub_24ACD0520();
  return sub_24AC2B0F4(a1, v10, a2, a3, a5);
}

unint64_t sub_24AC2ADA0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x24C22D460](*(v1 + 40), a1, 1);

  return sub_24AC2B468(v2, v3);
}

unint64_t sub_24AC2ADE8(uint64_t a1)
{
  sub_24ACD0590();
  sub_24ACD0D10();
  sub_24ACD05E0();
  v2 = sub_24ACD0D50();

  return sub_24AC2B4D8(a1, v2);
}

unint64_t sub_24AC2AE7C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24ACD0C40())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AC2AF34(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24ACD0420();
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
      sub_24AC2B420(&unk_2814AE1F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_24ACD0550();
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

unint64_t sub_24AC2B0F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a1;
  v22 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v21 = v5;
  v11 = -1 << *(v5 + 32);
  v12 = a2 & ~v11;
  v20[0] = v5 + 64;
  if ((*(v5 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    do
    {
      v14(v10, *(v21 + 48) + v17 * v12, v7);
      sub_24AC2B6A8(v24, v22, v23, MEMORY[0x277D088C0]);
      v18 = sub_24ACD0550();
      (*(v15 - 8))(v10, v7);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v20[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_24AC2B2A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24AC2B370(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C22D130](v9, a1);
      sub_24AC2B3CC(v9);
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

uint64_t sub_24AC2B420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AC2B468(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_24AC2B4D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24ACD0590();
      v8 = v7;
      if (v6 == sub_24ACD0590() && v8 == v9)
      {
        break;
      }

      v11 = sub_24ACD0C40();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24AC2B5DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AC2B644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC2B6A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AC2B6F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC27290(a1, v4, v5, v7, v6);
}

uint64_t sub_24AC2B7BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_24AC2B830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24AC26A0C(a1, v4, v5, v6, v7);
}

uint64_t sub_24AC2B8F8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24AC2B940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_24AC2BA08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for PeerPath(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2BA9C, v1, 0);
}

uint64_t sub_24AC2BA9C()
{
  v21 = v0;
  v1 = *(v0[3] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    v2 = *(v0[2] + 16);
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = sub_24ACD0490();
    __swift_project_value_buffer(v3, qword_27EF9E010);

    v4 = v2;
    v5 = sub_24ACD0470();
    v6 = sub_24ACD0930();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[4];
      v8 = v0[5];
      v9 = v0[3];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v10 = 136446466;
      sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v8);
      v12 = (v8 + *(v7 + 32));
      v14 = *v12;
      v13 = v12[1];

      sub_24AC47AEC(v8, type metadata accessor for PeerPath);
      v15 = sub_24AC29E20(v14, v13, &v20);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      *(v10 + 14) = v4;
      *v11 = v4;
      v16 = v4;
      _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: calling readValue() for %@", v10, 0x16u);
      sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C22DC60](v19, -1, -1);
      MEMORY[0x24C22DC60](v10, -1, -1);
    }

    [v1 readValueForCharacteristic_];

    v17 = v0[1];
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_24AC2BDB4(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 88) = a1;
  *(v3 + 32) = type metadata accessor for PeerPath(0);
  *(v3 + 40) = swift_task_alloc();
  sub_24ACD0420();
  *(v3 + 48) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2BEEC, v2, 0);
}

uint64_t sub_24AC2BEEC()
{
  v38 = v0;
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    v2 = *(v0 + 48);
    v35 = *(*(v0 + 16) + 16);
    v36 = v1;
    v3 = [v35 UUID];
    CBUUID.uuidValue.getter(v2);

    type metadata accessor for Characteristic(0);
    sub_24ACD0000();
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = sub_24ACD0490();
    __swift_project_value_buffer(v8, qword_27EF9E010);
    (*(v6 + 16))(v5, v4, v7);

    v9 = sub_24ACD0470();
    v10 = sub_24ACD0930();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    if (v11)
    {
      v34 = v10;
      v15 = *(v0 + 32);
      v16 = *(v0 + 40);
      v17 = *(v0 + 24);
      v18 = *(v0 + 88);
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v19 = 136446722;
      sub_24AC2A3DC(v17 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v16);
      v20 = (v16 + *(v15 + 32));
      v21 = *v20;
      v22 = v20[1];

      sub_24AC47AEC(v16, type metadata accessor for PeerPath);
      v23 = sub_24AC29E20(v21, v22, v37);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;
      *(v19 + 14) = v18;
      *(v19 + 18) = 2082;
      sub_24AC2B6A8(&qword_27EF9DFD0, &qword_27EF9DDE8, &unk_24ACD37D0, MEMORY[0x277D088C8]);
      v24 = sub_24ACD0C20();
      v26 = v25;
      v27 = *(v12 + 8);
      v27(v13, v14);
      v28 = sub_24AC29E20(v24, v26, v37);

      *(v19 + 20) = v28;
      _os_log_impl(&dword_24AC18000, v9, v34, "%{public}s: calling setNotifyValue(%{BOOL}d) for %{public}s", v19, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v33, -1, -1);
      MEMORY[0x24C22DC60](v19, -1, -1);
    }

    else
    {

      v27 = *(v12 + 8);
      v27(v13, v14);
    }

    v30 = *(v0 + 80);
    v31 = *(v0 + 56);
    [v36 setNotifyValue:*(v0 + 88) forCharacteristic:v35];
    v27(v30, v31);

    v29 = *(v0 + 8);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t sub_24AC2C34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = type metadata accessor for PeerPath(0);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2C3E8, v4, 0);
}

uint64_t sub_24AC2C3E8()
{
  v40 = v0;
  v1 = *(v0[8] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    v38 = *(v0[6] + 16);
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v2 = v0[5];
    v4 = sub_24ACD0490();
    __swift_project_value_buffer(v4, qword_27EF9E010);

    sub_24AC46630(v3, v2);
    v5 = sub_24ACD0470();
    v6 = sub_24ACD0930();
    sub_24AC46698(v3, v2);

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[9];
      v8 = v0[10];
      v9 = v0[8];
      v37 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39[0] = v11;
      *v10 = 136446978;
      sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v8);
      v12 = (v8 + *(v7 + 32));
      v14 = *v12;
      v13 = v12[1];

      sub_24AC47AEC(v8, type metadata accessor for PeerPath);
      v15 = sub_24AC29E20(v14, v13, v39);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2082;
      v16 = sub_24ACD0260();
      v18 = sub_24AC29E20(v16, v17, v39);

      *(v10 + 14) = v18;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v37;
      *(v10 + 32) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100, MEMORY[0x277D088C8]);
      v19 = sub_24ACD0C20();
      v21 = sub_24AC29E20(v19, v20, v39);

      *(v10 + 34) = v21;
      _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: calling writeValue(%{public}s),  type: %ld for %{public}s)", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v11, -1, -1);
      MEMORY[0x24C22DC60](v10, -1, -1);
    }

    v22 = v0[7];
    v24 = v0[4];
    v23 = v0[5];
    v25 = sub_24ACD02C0();
    [v1 writeValue:v25 forCharacteristic:v38 type:v22];

    sub_24AC46630(v24, v23);
    v26 = sub_24ACD0470();
    v27 = sub_24ACD0900();
    sub_24AC46698(v24, v23);
    if (os_log_type_enabled(v26, v27))
    {
      v29 = v0[4];
      v28 = v0[5];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v0[2] = v29;
      v0[3] = v28;
      sub_24AC467AC();
      v32 = sub_24ACD0180();
      v34 = sub_24AC29E20(v32, v33, v39);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_24AC18000, v26, v27, "data: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x24C22DC60](v31, -1, -1);
      MEMORY[0x24C22DC60](v30, -1, -1);
    }

    v35 = v0[1];
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v35 = v0[1];
  }

  return v35();
}

uint64_t Peripheral.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC2C974(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24AC2B5DC(a1, &v10 - v5, &qword_27EF9E048, &qword_24ACD5910);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC463C4(v6, v7 + v8, &qword_27EF9E048, &qword_24ACD5910);
  return swift_endAccess();
}

uint64_t sub_24AC2CA54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  return sub_24AC2B5DC(v1 + v3, a1, &qword_27EF9E048, &qword_24ACD5910);
}

uint64_t sub_24AC2CABC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC463C4(a1, v1 + v3, &qword_27EF9E048, &qword_24ACD5910);
  return swift_endAccess();
}

uint64_t sub_24AC2CB8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_24AC2CC3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_24AC2CCF4@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state];
  if (result < 4)
  {
    v4 = result + 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24AC2CD38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v5 = sub_24ACD0360();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24AC2CDC4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24ACD0360();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_24AC2CEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24AC2CF64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24AC2D054()
{
  v1 = v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_24AC2D0A0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_24AC2D1D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if ([v1 state] == 2)
  {
    return 1;
  }

  else
  {
    return [v1 isConnectedToSystem];
  }
}

uint64_t sub_24AC2D228(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC2D248, v1, 0);
}

uint64_t sub_24AC2D248()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC2D370, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_24AC2D370()
{
  sub_24AC7FB24(*(v0 + 24), *(v0 + 16));
  *(v0 + 40) = 0;
  v1 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AC2D400, v1, 0);
}

uint64_t sub_24AC2D400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC2D464()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_24AC2D4C8@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) connectedTransport];
  if (result >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24AC2D50C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 393) = a7;
  *(v8 + 144) = a6;
  *(v8 + 152) = v7;
  *(v8 + 392) = a4;
  *(v8 + 128) = a3;
  *(v8 + 136) = a5;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  *(v8 + 240) = v11;
  *(v8 + 248) = *(v11 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = type metadata accessor for PeerPath(0);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v12 = sub_24ACD0360();
  *(v8 + 288) = v12;
  *(v8 + 296) = *(v12 - 8);
  *(v8 + 304) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  *(v8 + 312) = v13;
  *(v8 + 320) = *(v13 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v14 = sub_24ACD0420();
  *(v8 + 344) = v14;
  *(v8 + 352) = *(v14 - 8);
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E128, &unk_24ACD4558);
  *(v8 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2D8E0, 0, 0);
}

uint64_t sub_24AC2D8E0()
{
  v126 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 152);
  v120 = *(v0 + 120);
  swift_defaultActor_initialize();
  v3 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  v4 = sub_24ACD0090();
  v118 = v3;
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData);
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_advertisementData) = 0;
  v6 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_rssi;
  *v6 = 0;
  *(v6 + 8) = 1;
  swift_weakInit();
  v7 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v9 = *(*(v8 - 8) + 56);
  v114 = v7;
  (v9)(v7, 1, 1, v8);
  v10 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  (v9)(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation, 1, 1, v8);
  v112 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  v9();
  v109 = v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  v9();
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services) = MEMORY[0x277D84F98];
  v106 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline) = 0;
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount) = 0;
  v11 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue;
  sub_24ACD0120();
  v12 = sub_24ACD00E0();
  (*(*(v12 - 8) + 56))(v1, 1, 1, v12);
  sub_24ACD0410();
  *(v2 + v11) = sub_24ACD00F0();
  v13 = *(v120 + 16);
  *(v0 + 376) = v13;
  v14 = v13;
  if (![v14 delegate])
  {
    v30 = *(v0 + 360);
    v121 = *(v0 + 352);
    v31 = *(v0 + 336);
    v99 = *(v0 + 344);
    v32 = *(v0 + 320);
    v104 = *(v0 + 328);
    v102 = *(v0 + 312);
    v33 = v5;
    v89 = *(v0 + 304);
    v90 = *(v0 + 296);
    v91 = *(v0 + 288);
    v97 = *(v0 + 272);
    v98 = *(v0 + 264);
    v93 = *(v0 + 256);
    v115 = *(v0 + 248);
    v92 = *(v0 + 240);
    v103 = *(v0 + 232);
    v100 = *(v0 + 224);
    v96 = *(v0 + 216);
    v107 = *(v0 + 192);
    v110 = *(v0 + 184);
    v94 = *(v0 + 168);
    v95 = *(v0 + 160);
    v88 = *(v0 + 393);
    v34 = *(v0 + 152);
    v84 = *(v0 + 392);
    v85 = *(v0 + 136);
    v86 = *(v0 + 144);
    v83 = *(v0 + 128);
    v35 = *(v0 + 112);
    v36 = [v14 identifier];
    sub_24ACD03F0();

    type metadata accessor for Peripheral(0);
    sub_24ACD0000();
    v37 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
    (*(v32 + 32))(v34 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, v31, v102);
    swift_weakAssign();
    *(v34 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) = v14;
    swift_beginAccess();
    v38 = v14;
    sub_24AC46BE8(v83, v118);
    swift_endAccess();
    *(v34 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_isConnectable) = v84;
    swift_beginAccess();
    *v33 = v85;

    swift_beginAccess();
    *v6 = v86;
    *(v6 + 8) = v88 & 1;
    sub_24ACD0350();
    (*(v90 + 32))(v34 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen, v89, v91);
    v39 = *(v115 + 16);
    v39(v93, v35 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id, v92);
    v40 = *(v32 + 16);
    v40(v104, v34 + v37, v102);
    (*(v107 + 56))(v103, 1, 1, v110);
    (*(v94 + 56))(v96, 1, 1, v95);
    v39(v97, v93, v92);
    v40(v97 + v98[5], v104, v102);
    sub_24AC2B5DC(v103, v97 + v98[6], &qword_27EF9DFE0, &qword_24ACD4098);
    sub_24AC2B5DC(v96, v97 + v98[7], &unk_27EF9E110, &unk_24ACD4540);
    sub_24ACCFFE0();
    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v41 = sub_24ACD0C20();
    v43 = v42;
    v44 = *(v121 + 8);
    v44(v30, v99);
    v124 = v41;
    v125 = v43;
    MEMORY[0x24C22CD50](47, 0xE100000000000000);
    sub_24ACCFFE0();
    v45 = sub_24ACD0C20();
    MEMORY[0x24C22CD50](v45);

    v44(v30, v99);
    v122 = v41;
    v123 = v43;
    sub_24AC2B5DC(v103, v100, &qword_27EF9DFE0, &qword_24ACD4098);
    if ((*(v107 + 48))(v100, 1, v110) == 1)
    {
      sub_24AC212F4(*(v0 + 224), &qword_27EF9DFE0, &qword_24ACD4098);
    }

    else
    {
      v48 = *(v0 + 360);
      v49 = v44;
      v50 = *(v0 + 344);
      v52 = *(v0 + 192);
      v51 = *(v0 + 200);
      v53 = *(v0 + 184);
      (*(v52 + 32))(v51, *(v0 + 224), v53);
      v124 = 47;
      v125 = 0xE100000000000000;
      sub_24ACCFFE0();
      v54 = shortCBUUIDDescription(uuid:)(v48);
      v56 = v55;
      v57 = v50;
      v44 = v49;
      v49(v48, v57);
      MEMORY[0x24C22CD50](v54, v56);

      MEMORY[0x24C22CD50](47, 0xE100000000000000);

      (*(v52 + 8))(v51, v53);
    }

    v58 = *(v0 + 208);
    v59 = *(v0 + 160);
    v60 = *(v0 + 168);
    sub_24AC2B5DC(*(v0 + 216), v58, &unk_27EF9E110, &unk_24ACD4540);
    if ((*(v60 + 48))(v58, 1, v59) == 1)
    {
      v62 = *(v0 + 320);
      v61 = *(v0 + 328);
      v63 = *(v0 + 312);
      v65 = *(v0 + 248);
      v64 = *(v0 + 256);
      v67 = *(v0 + 232);
      v66 = *(v0 + 240);
      v68 = *(v0 + 208);
      sub_24AC212F4(*(v0 + 216), &unk_27EF9E110, &unk_24ACD4540);
      sub_24AC212F4(v67, &qword_27EF9DFE0, &qword_24ACD4098);
      (*(v62 + 8))(v61, v63);
      (*(v65 + 8))(v64, v66);
      sub_24AC212F4(v68, &unk_27EF9E110, &unk_24ACD4540);
    }

    else
    {
      v69 = *(v0 + 360);
      v105 = *(v0 + 344);
      v70 = *(v0 + 320);
      v113 = *(v0 + 312);
      v116 = *(v0 + 328);
      v71 = *(v0 + 248);
      v117 = *(v0 + 240);
      v119 = *(v0 + 256);
      v111 = *(v0 + 232);
      v108 = *(v0 + 216);
      v72 = *(v0 + 168);
      v73 = *(v0 + 176);
      v74 = *(v0 + 160);
      (*(v72 + 32))(v73, *(v0 + 208), v74);
      v124 = 47;
      v125 = 0xE100000000000000;
      sub_24ACCFFE0();
      v75 = shortCBUUIDDescription(uuid:)(v69);
      v76 = v44;
      v78 = v77;
      v76(v69, v105);
      MEMORY[0x24C22CD50](v75, v78);

      MEMORY[0x24C22CD50](47, 0xE100000000000000);

      (*(v72 + 8))(v73, v74);
      sub_24AC212F4(v108, &unk_27EF9E110, &unk_24ACD4540);
      sub_24AC212F4(v111, &qword_27EF9DFE0, &qword_24ACD4098);
      (*(v70 + 8))(v116, v113);
      (*(v71 + 8))(v119, v117);
    }

    v79 = *(v0 + 272);
    v80 = *(v0 + 280);
    v81 = *(v0 + 152);
    v82 = (v79 + *(*(v0 + 264) + 32));
    *v82 = v122;
    v82[1] = v123;
    sub_24AC2B644(v79, v80);
    sub_24AC2B644(v80, v81 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath);
    v24 = sub_24AC2E77C;
    v25 = v81;
    v26 = 0;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  swift_unknownObjectRelease();

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v101 = v10;
  v15 = sub_24ACD0490();
  __swift_project_value_buffer(v15, qword_27EF9E010);
  v16 = v14;
  v17 = sub_24ACD0470();
  v18 = sub_24ACD0910();

  if (!os_log_type_enabled(v17, v18))
  {

    goto LABEL_10;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v124 = v21;
  *v19 = 138412546;
  *(v19 + 4) = v16;
  *v20 = v16;
  *(v19 + 12) = 2080;
  v22 = v16;
  v23 = [v22 delegate];

  if (!v23)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  *(v0 + 104) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E130, &qword_24ACD4568);
  v27 = sub_24ACD05A0();
  v29 = sub_24AC29E20(v27, v28, &v124);

  *(v19 + 14) = v29;
  _os_log_impl(&dword_24AC18000, v17, v18, "CBPeripheral %@ already has delegate: %s", v19, 0x16u);
  sub_24AC212F4(v20, &qword_27EF9E6A0, &qword_24ACD5590);
  MEMORY[0x24C22DC60](v20, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v21);
  MEMORY[0x24C22DC60](v21, -1, -1);
  MEMORY[0x24C22DC60](v19, -1, -1);

LABEL_10:
  v87 = *(v0 + 128);
  type metadata accessor for CentralManager.Error(0);
  sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_24AC212F4(v118, &qword_27EF9E048, &qword_24ACD5910);

  swift_weakDestroy();
  sub_24AC212F4(v114, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v101, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v112, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v109, &qword_27EF9E4F0, &unk_24ACD4130);

  type metadata accessor for Peripheral(0);
  swift_defaultActor_destroy();

  sub_24AC212F4(v87, &qword_27EF9E048, &qword_24ACD5910);
  swift_deallocPartialClassInstance();

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_24AC2E77C()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_24AC2E7EC, v1, 0);
}

uint64_t sub_24AC2E7EC()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue);
  *(v0 + 384) = v1;
  sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v2 = v1;
  swift_getObjectType();
  v4 = sub_24ACD0740();

  return MEMORY[0x2822009F8](sub_24AC2E8C4, v4, v3);
}

uint64_t sub_24AC2E8C4()
{
  v29 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 152);
  v3 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  v4 = type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  swift_weakAssign();
  *&v5[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue] = v1;
  *&v5[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue] = v3;
  *(v0 + 88) = v5;
  *(v0 + 96) = v4;
  v6 = v1;

  v7 = objc_msgSendSuper2((v0 + 88), sel_init);

  v8 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline);
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateTrampoline) = v7;
  v9 = v7;

  v10 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  [v10 setDelegate_];

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v11 = sub_24ACD0490();
  __swift_project_value_buffer(v11, qword_27EF9E010);

  v12 = sub_24ACD0470();
  v13 = sub_24ACD0900();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 376);
  if (v14)
  {
    v27 = *(v0 + 128);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;

    v18 = sub_24AC39074();
    v20 = v19;

    v21 = sub_24AC29E20(v18, v20, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24AC18000, v12, v13, "%s init", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C22DC60](v17, -1, -1);
    MEMORY[0x24C22DC60](v16, -1, -1);

    v22 = v27;
  }

  else
  {
    v23 = *(v0 + 128);

    v22 = v23;
  }

  sub_24AC212F4(v22, &qword_27EF9E048, &qword_24ACD5910);

  v24 = *(v0 + 8);
  v25 = *(v0 + 152);

  return v24(v25);
}

uint64_t Peripheral.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  v6 = sub_24ACD07C0();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  swift_retain_n();
  sub_24AC2F138(0, 0, v4, &unk_24ACD4128, v7);

  sub_24AC212F4(v4, &qword_27EF9DF00, &qword_24ACD3BC8);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject;
  [*(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) setDelegate_];
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v9 = sub_24ACD0490();
  __swift_project_value_buffer(v9, qword_27EF9E010);

  v10 = sub_24ACD0470();
  v11 = sub_24ACD0900();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_24AC39074();
    v16 = sub_24AC29E20(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24AC18000, v10, v11, "%s deinit", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C22DC60](v13, -1, -1);
    MEMORY[0x24C22DC60](v12, -1, -1);
  }

  v17 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress, &qword_27EF9E048, &qword_24ACD5910);

  v19 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  v20 = sub_24ACD0360();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  sub_24AC47AEC(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, type metadata accessor for PeerPath);
  swift_weakDestroy();

  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation, &qword_27EF9E4F0, &unk_24ACD4130);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_24AC2F094()
{
  v3 = (*MEMORY[0x277D08958] + MEMORY[0x277D08958]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return v3();
}

uint64_t sub_24AC2F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24AC2B5DC(a3, v25 - v10, &qword_27EF9DF00, &qword_24ACD3BC8);
  v12 = sub_24ACD07C0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AC212F4(v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24ACD0740();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24ACD05C0() + 32;
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

uint64_t Peripheral.__deallocating_deinit()
{
  Peripheral.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC2F424()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC2F4C0, v0, 0);
}

uint64_t sub_24AC2F4C0()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC2F5A4;
  v4 = *(v0 + 24);

  return sub_24AC2F77C((v0 + 48), v4);
}

uint64_t sub_24AC2F5A4()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[5] = v0;

  sub_24AC212F4(v2, &qword_27EF9E068, &qword_24ACD4140);
  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x2822009F8](sub_24AC2F718, v4, 0);
  }

  else
  {

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24AC2F718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC2F77C(_BYTE *a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 56) = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  *(v3 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 184) = *a1;

  return MEMORY[0x2822009F8](sub_24AC2F884, v2, 0);
}

uint64_t sub_24AC2F884()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  *(v0 + 80) = v1;
  if ([v1 state] == 2)
  {
    goto LABEL_15;
  }

  if (*(*(v0 + 48) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_isConnectable) != 1 || (*(v0 + 88) = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_owningCentralManager, Strong = swift_weakLoadStrong(), (*(v0 + 96) = Strong) == 0))
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_15:

    v13 = *(v0 + 8);

    return v13();
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_24AC212F4(v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v4 != 1)
  {
LABEL_14:
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_15;
  }

  v7 = *(v0 + 64);
  sub_24AC2B5DC(*(v0 + 40), v7, &qword_27EF9E068, &qword_24ACD4140);
  v8 = type metadata accessor for Peripheral.Options(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  v10 = *(v0 + 64);
  if (v9 == 1)
  {
    sub_24AC212F4(v10, &qword_27EF9E068, &qword_24ACD4140);
    goto LABEL_10;
  }

  v11 = *v10;
  sub_24AC47AEC(v10, type metadata accessor for Peripheral.Options);
  if ((v11 & 2) == 0)
  {
LABEL_10:
    v12 = swift_weakLoadStrong();
    *(v0 + 104) = v12;
    if (v12)
    {

      return MEMORY[0x2822009F8](sub_24AC2FE24, v12, 0);
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 184);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 40);
  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  *(v19 + 32) = v18;
  *(v19 + 40) = v14;
  *(v19 + 48) = v17;
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  *(v20 + 16) = v16;
  *(v20 + 24) = v17;
  v21 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  *v22 = v0;
  v22[1] = sub_24AC30610;
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v22, &unk_24ACD4160, v19, sub_24AC44CD4, v20, v16, v21, v23);
}

uint64_t sub_24AC2FE24(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 104) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  *(v3 + 112) = v4;
  if (v4)
  {

    a1 = sub_24AC2FEAC;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24AC2FEAC()
{
  v1 = *(v0 + 48);
  *(v0 + 185) = [*(*(v0 + 112) + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) isPeerPaired_];

  return MEMORY[0x2822009F8](sub_24AC2FF40, v1, 0);
}

uint64_t sub_24AC2FF40()
{
  v1 = *(v0 + 185);

  if (v1 == 1)
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_24AC301DC, Strong, 0);
    }

    else
    {
      type metadata accessor for CentralManager.Error(0);
      sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 184);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = v7;
    *(v8 + 40) = v3;
    *(v8 + 48) = v6;
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    v10 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_24AC30610;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200830](v11, &unk_24ACD4160, v8, sub_24AC44CD4, v9, v5, v10, v12);
  }
}

void sub_24AC301DC()
{
  v1 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  v0[16] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_24AC30298;
    v3 = v0[6];

    sub_24AC74064(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC30298()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_24AC30528;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24AC303C0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC303C0()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 184);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
  *(v6 + 48) = v4;
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_24AC30610;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v9, &unk_24ACD4160, v6, sub_24AC44CD4, v7, v3, v8, v10);
}

uint64_t sub_24AC30528()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AC30594, v1, 0);
}

uint64_t sub_24AC30594()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC30610()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_24AC307B4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24AC30740;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC30740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC307B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC3083C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_24AC30864, a2, 0);
}

uint64_t sub_24AC30864()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  *(v5 + 48) = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_24AC309B8;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, v3, v4, 0xD000000000000019, 0x800000024ACD9A90, sub_24AC47908, v5, v9);
}

uint64_t sub_24AC309B8()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_24AC30AF4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AC30AF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC30B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v28 = a4;
  v30 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  v20 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v17, a2 + v20, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v21 = sub_24ACD07C0();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_24AC2B5DC(v28, v11, &qword_27EF9E068, &qword_24ACD4140);
  v22 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v23 = (*(v29 + 80) + 41) & ~*(v29 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = v22;
  *(v25 + 32) = a2;
  *(v25 + 40) = v30;
  sub_24AC4791C(v11, v25 + v23);
  v26 = v32;
  *(v25 + v24) = v31;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v14, &unk_24ACD45E8, v25);
}

uint64_t sub_24AC30EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 136) = a5;
  *(v7 + 56) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  *(v7 + 80) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC30FCC, a4, 0);
}

uint64_t sub_24AC30FCC()
{
  v16 = v0;
  v1 = *(v0 + 64);
  v14 = *(v0 + 136);
  v2 = sub_24AC470AC(&v14, v1);
  *(v0 + 112) = v2;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E010);

  v4 = sub_24ACD0470();
  v5 = sub_24ACD0900();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v0 + 48) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v8 = sub_24ACD05A0();
    v10 = sub_24AC29E20(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24AC18000, v4, v5, "Connecting with options: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_24AC311DC;
  v12 = *(v0 + 56);

  return sub_24AC803C8(v12, v2);
}

uint64_t sub_24AC311DC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_24AC3137C;
  }

  else
  {
    v4 = sub_24AC31308;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC31308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC3137C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);

  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1))
  {
    v6 = *(v0 + 80);

    sub_24AC212F4(v6, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v7 = *(v0 + 128);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    (*(v9 + 16))(v8, v11, v10);
    sub_24AC212F4(v11, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 40) = v7;
    sub_24ACD0750();
    (*(v9 + 8))(v8, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AC31518()
{
  sub_24AC371CC(&OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_24AC315CC;

  return sub_24AC318F0((v0 + 16));
}

uint64_t sub_24AC315CC()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_24AC47C18, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AC31700()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC317A4;

  return sub_24AC318F0((v1 + 16));
}

uint64_t sub_24AC317A4()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_24AC318D8, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24AC318F0(uint64_t *a1)
{
  *(v2 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 96) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_24AC3199C, v1, 0);
}

uint64_t sub_24AC3199C()
{
  if ([*(*(v0 + 40) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state])
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v2 + v3, v1, &qword_27EF9E4F0, &unk_24ACD4130);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
    LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
    sub_24AC212F4(v1, &qword_27EF9E4F0, &unk_24ACD4130);
    if (v2 == 1)
    {
      Strong = swift_weakLoadStrong();
      *(v0 + 64) = Strong;
      if (Strong)
      {
        v6 = Strong;
        v7 = *(v0 + 96);
        v8 = *(v0 + 56);
        v9 = *(v0 + 40);
        v10 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
        v11 = swift_task_alloc();
        *(v0 + 72) = v11;
        *(v11 + 16) = v9;
        *(v11 + 24) = v8;
        *(v11 + 32) = v7;
        *(v11 + 40) = v6;
        v12 = swift_task_alloc();
        *(v0 + 80) = v12;
        *v12 = v0;
        v12[1] = sub_24AC31CAC;
        v13 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v12, v9, v10, 0xD00000000000001ALL, 0x800000024ACD93B0, sub_24AC44D60, v11, v13);
      }
    }

    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_24AC31CAC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_24AC31E40;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24AC31DD4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC31DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC31E40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC31EB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v23 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v14, a2 + v17, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v18 = sub_24ACD07C0();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v19;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = v23 & 1;
  *(v20 + 56) = a5;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v11, &unk_24ACD45C0, v20);
}

uint64_t sub_24AC3214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a7;
  *(v7 + 128) = a6;
  *(v7 + 48) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  *(v7 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  *(v7 + 80) = v9;
  *(v7 + 88) = *(v9 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3225C, a4, 0);
}

uint64_t sub_24AC3225C()
{
  v10 = v0;
  if (*(v0 + 128))
  {
    v1 = 0;
  }

  else
  {
    v9 = *(v0 + 56);
    v2 = sub_24ACA7788();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v4;
      sub_24AC4753C(v3, sub_24AC46D60, 0, isUniquelyReferenced_nonNull_native, &v9);

      v1 = v9;
    }

    else
    {
      v1 = MEMORY[0x277D84F98];
    }
  }

  *(v0 + 104) = v1;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_24AC32384;
  v7 = *(v0 + 48);

  return sub_24AC80820(v7, v1);
}

uint64_t sub_24AC32384()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_24AC32524;
  }

  else
  {
    v4 = sub_24AC324B0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC324B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC32524()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);

  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v2 + 48))(v3, 1, v1))
  {
    v6 = *(v0 + 72);

    sub_24AC212F4(v6, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v7 = *(v0 + 120);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    (*(v9 + 16))(v8, v11, v10);
    sub_24AC212F4(v11, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 40) = v7;
    sub_24ACD0750();
    (*(v9 + 8))(v8, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AC326C0()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC327EC, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2(0);
  }
}

uint64_t sub_24AC327EC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_24AC32874;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24AC32874()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [*(*(v0 + 32) + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) isPeerPaired_];

  return MEMORY[0x2822009F8](sub_24AC32910, v1, 0);
}

uint64_t sub_24AC32910()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t sub_24AC32998()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC32AC0, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

void sub_24AC32AC0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AC32B7C;
    v3 = v0[2];

    sub_24AC730F8(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC32B7C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_24AC32D08;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_24AC32CA4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC32CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC32D08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC32D74, v1, 0);
}

uint64_t sub_24AC32D74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC32DF8()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 24) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC32F20, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

void sub_24AC32F20()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AC32FDC;
    v3 = v0[2];

    sub_24AC74064(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC32FDC()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_24AC33104;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_24AC47C20;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC33104()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC47C10, v1, 0);
}

uint64_t sub_24AC33170(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for PeerPath(0);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v3 = sub_24ACD0090();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC332BC, v1, 0);
}

uint64_t sub_24AC332BC()
{
  v51 = v0;
  if (swift_weakLoadStrong())
  {
    v1 = v0[14];
    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[9];

    v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
    swift_beginAccess();
    sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E048, &qword_24ACD5910);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v6 = v0[14];
      v7 = v0[15];
      v8 = v0[12];
      v9 = v0[8];
      sub_24AC212F4(v0[13], &qword_27EF9E048, &qword_24ACD5910);
      (*(v7 + 16))(v8, v9, v6);
      (*(v7 + 56))(v8, 0, 1, v6);
      swift_beginAccess();
      sub_24AC463C4(v8, v4 + v5, &qword_27EF9E048, &qword_24ACD5910);
      swift_endAccess();
    }

    else
    {
      (*(v0[15] + 32))(v0[18], v0[13], v0[14]);
      if (qword_27EF9DC38 != -1)
      {
        swift_once();
      }

      v11 = v0[17];
      v12 = v0[18];
      v14 = v0[15];
      v13 = v0[16];
      v15 = v0[14];
      v16 = v0[8];
      v17 = sub_24ACD0490();
      __swift_project_value_buffer(v17, qword_27EF9E010);
      v18 = *(v14 + 16);
      v18(v11, v12, v15);
      v18(v13, v16, v15);

      v19 = sub_24ACD0470();
      v20 = sub_24ACD0930();

      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[17];
      v23 = v0[18];
      v24 = v0[15];
      v25 = v0[16];
      v26 = v0[14];
      if (v21)
      {
        log = v19;
        v49 = v0[18];
        v27 = v0[10];
        v28 = v0[11];
        v29 = v0[9];
        v30 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50[0] = v47;
        *v30 = 136447235;
        sub_24AC2A3DC(v29 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v28);
        v31 = (v28 + *(v27 + 32));
        v46 = v20;
        v32 = *v31;
        v33 = v31[1];

        sub_24AC47AEC(v28, type metadata accessor for PeerPath);
        v34 = sub_24AC29E20(v32, v33, v50);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2160;
        *(v30 + 14) = 1752392040;
        *(v30 + 22) = 2081;
        sub_24AC46D0C(&qword_27EF9E080, MEMORY[0x277D088D0], MEMORY[0x277D088E8]);
        v35 = sub_24ACD0C20();
        v37 = v36;
        v38 = *(v24 + 8);
        v38(v22, v26);
        v39 = sub_24AC29E20(v35, v37, v50);

        *(v30 + 24) = v39;
        *(v30 + 32) = 2160;
        *(v30 + 34) = 1752392040;
        *(v30 + 42) = 2081;
        v40 = sub_24ACD0C20();
        v42 = v41;
        v38(v25, v26);
        v43 = sub_24AC29E20(v40, v42, v50);

        *(v30 + 44) = v43;
        _os_log_impl(&dword_24AC18000, log, v46, "%{public}s: Not setting MAC address. Existing: %{private,mask.hash}s new: %{private,mask.hash}s", v30, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v47, -1, -1);
        MEMORY[0x24C22DC60](v30, -1, -1);

        v38(v49, v26);
      }

      else
      {

        v44 = *(v24 + 8);
        v44(v25, v26);
        v44(v22, v26);
        v44(v23, v26);
      }
    }

    v10 = v0[1];
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_24AC338AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC33970, v1, 0);
}

uint64_t sub_24AC33970()
{
  if (swift_weakLoadStrong() && (v1 = v0[7], , [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state] == 2) && (v2 = v0[9], v3 = v0[7], v4 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation, swift_beginAccess(), sub_24AC2B5DC(v3 + v4, v2, &qword_27EF9E4F0, &unk_24ACD4130), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150), LODWORD(v3) = (*(*(v5 - 8) + 48))(v2, 1, v5), sub_24AC212F4(v2, &qword_27EF9E4F0, &unk_24ACD4130), v3 == 1))
  {
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[6];
    v9 = swift_task_alloc();
    v0[10] = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    v11 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral, "ayV7܏");
    v12 = swift_task_alloc();
    v0[12] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E088, &qword_24ACD41B0);
    *v12 = v0;
    v12[1] = sub_24AC33D3C;

    return MEMORY[0x282200830](v0 + 5, &unk_24ACD41A8, v9, sub_24AC44E24, v10, v6, v11, v13);
  }

  else
  {
    type metadata accessor for CentralManager.Error(0);
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error, &protocol conformance descriptor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24AC33D3C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_24AC33ED8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24AC33E6C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC33E6C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AC33ED8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AC33F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = type metadata accessor for PeerPath(0);
  v4[22] = swift_task_alloc();
  v6 = sub_24ACD0420();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC34118, a2, 0);
}