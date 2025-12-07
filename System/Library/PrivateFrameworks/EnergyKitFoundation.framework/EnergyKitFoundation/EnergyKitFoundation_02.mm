uint64_t EnergySitePayload.accountNumber.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200E1A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.accountNumber.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.accountNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  v4 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

void (*EnergySitePayload.accountNumber.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.accountNumber.getter();
  a1[1] = v2;
  return sub_1D200E3B4;
}

void sub_1D200E3B4(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    EnergySitePayload.accountNumber.setter(v2, v3);
    sub_1D1FE023C(a1);
  }

  else
  {
    EnergySitePayload.accountNumber.setter(*a1, a1[1]);
  }
}

uint64_t EnergySitePayload.address.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200E4CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.address.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.address.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  v4 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

void (*EnergySitePayload.address.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.address.getter();
  a1[1] = v2;
  return sub_1D200E6DC;
}

void sub_1D200E6DC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    EnergySitePayload.address.setter(v2, v3);
    sub_1D1FE023C(a1);
  }

  else
  {
    EnergySitePayload.address.setter(*a1, a1[1]);
  }
}

uint64_t EnergySitePayload.serviceLocationID.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200E7F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.serviceLocationID.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.serviceLocationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  v4 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

void (*EnergySitePayload.serviceLocationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.serviceLocationID.getter();
  a1[1] = v2;
  return sub_1D200EA04;
}

void sub_1D200EA04(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    EnergySitePayload.serviceLocationID.setter(v2, v3);
    sub_1D1FE023C(a1);
  }

  else
  {
    EnergySitePayload.serviceLocationID.setter(*a1, a1[1]);
  }
}

uint64_t EnergySitePayload.alternateSupplier.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200EB1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.alternateSupplier.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.alternateSupplier.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  v4 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

void (*EnergySitePayload.alternateSupplier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.alternateSupplier.getter();
  a1[1] = v2;
  return sub_1D200ED2C;
}

void sub_1D200ED2C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    EnergySitePayload.alternateSupplier.setter(v2, v3);
    sub_1D1FE023C(a1);
  }

  else
  {
    EnergySitePayload.alternateSupplier.setter(*a1, a1[1]);
  }
}

uint64_t EnergySitePayload.accessTokenExpirationDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D200EE34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.accessTokenExpirationDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D200EF40(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.accessTokenExpirationDate.setter(v6);
}

uint64_t EnergySitePayload.accessTokenExpirationDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.accessTokenExpirationDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 58042);
  v5 = __swift_coroFrameAllocStub(v3, 58042);
  a1[2] = v5;
  EnergySitePayload.accessTokenExpirationDate.getter(v5);
  return sub_1D200F1F0;
}

void sub_1D200F1F0(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.accessTokenExpirationDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.accessTokenExpirationDate.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL EnergySitePayload.hasAccessTokenExpirationDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearAccessTokenExpirationDate()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.utilitySupportedCheckDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D200F5F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.utilitySupportedCheckDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D200F700(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.utilitySupportedCheckDate.setter(v6);
}

uint64_t EnergySitePayload.utilitySupportedCheckDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.utilitySupportedCheckDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 63631);
  v5 = __swift_coroFrameAllocStub(v3, 63631);
  a1[2] = v5;
  EnergySitePayload.utilitySupportedCheckDate.getter(v5);
  return sub_1D200F9B0;
}

void sub_1D200F9B0(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.utilitySupportedCheckDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.utilitySupportedCheckDate.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL EnergySitePayload.hasUtilitySupportedCheckDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearUtilitySupportedCheckDate()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.amiLastRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D200FDB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.amiLastRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D200FEC0(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.amiLastRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.amiLastRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.amiLastRefreshDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 62744);
  v5 = __swift_coroFrameAllocStub(v3, 62744);
  a1[2] = v5;
  EnergySitePayload.amiLastRefreshDate.getter(v5);
  return sub_1D2010170;
}

void sub_1D2010170(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.amiLastRefreshDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.amiLastRefreshDate.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL EnergySitePayload.hasAmiLastRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearAmiLastRefreshDate()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.hasExportedEnergy_p.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();

  return v4 & 1;
}

uint64_t sub_1D2010578@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D2028364(v2, &v6 - v7);
  v3 = EnergySitePayload.hasExportedEnergy_p.getter();
  v4 = v9;
  *v8 = v3 & 1;
  return sub_1D2028400(v4);
}

uint64_t EnergySitePayload.hasExportedEnergy_p.setter(char a1)
{
  v2 = (sub_1D200B0E8() + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.hasExportedEnergy_p.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EnergySitePayload.hasExportedEnergy_p.getter() & 1;
  return sub_1D201073C;
}

uint64_t EnergySitePayload.usagePointNextRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2010828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.usagePointNextRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D2010934(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.usagePointNextRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.usagePointNextRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.usagePointNextRefreshDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 11981);
  v5 = __swift_coroFrameAllocStub(v3, 11981);
  a1[2] = v5;
  EnergySitePayload.usagePointNextRefreshDate.getter(v5);
  return sub_1D2010BE4;
}

void sub_1D2010BE4(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.usagePointNextRefreshDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.usagePointNextRefreshDate.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL EnergySitePayload.hasUsagePointNextRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearUsagePointNextRefreshDate()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.usageSummaryNextRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2010FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.usageSummaryNextRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D20110F4(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.usageSummaryNextRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.usageSummaryNextRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.usageSummaryNextRefreshDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 25373);
  v5 = __swift_coroFrameAllocStub(v3, 25373);
  a1[2] = v5;
  EnergySitePayload.usageSummaryNextRefreshDate.getter(v5);
  return sub_1D20113A4;
}

void sub_1D20113A4(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.usageSummaryNextRefreshDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.usageSummaryNextRefreshDate.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL EnergySitePayload.hasUsageSummaryNextRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearUsageSummaryNextRefreshDate()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.intervalBlockNextRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D20117A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.intervalBlockNextRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D20118B4(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.intervalBlockNextRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.intervalBlockNextRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.intervalBlockNextRefreshDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 52423);
  v5 = __swift_coroFrameAllocStub(v3, 52423);
  a1[2] = v5;
  EnergySitePayload.intervalBlockNextRefreshDate.getter(v5);
  return sub_1D2011B64;
}

void sub_1D2011B64(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.intervalBlockNextRefreshDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.intervalBlockNextRefreshDate.setter(v4);
    free(v4);
    free(v5);
  }
}

BOOL EnergySitePayload.hasIntervalBlockNextRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearIntervalBlockNextRefreshDate()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.subscriptionState.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D2011F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.subscriptionState.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.subscriptionState.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  v4 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

void (*EnergySitePayload.subscriptionState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.subscriptionState.getter();
  a1[1] = v2;
  return sub_1D2012188;
}

void sub_1D2012188(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    EnergySitePayload.subscriptionState.setter(v2, v3);
    sub_1D1FE023C(a1);
  }

  else
  {
    EnergySitePayload.subscriptionState.setter(*a1, a1[1]);
  }
}

uint64_t EnergySitePayload.subscriptionCreationDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2012290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.subscriptionCreationDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D201239C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.subscriptionCreationDate.setter(v6);
}

uint64_t EnergySitePayload.subscriptionCreationDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.subscriptionCreationDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 23435);
  v5 = __swift_coroFrameAllocStub(v3, 23435);
  a1[2] = v5;
  EnergySitePayload.subscriptionCreationDate.getter(v5);
  return sub_1D201264C;
}

void sub_1D201264C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.subscriptionCreationDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.subscriptionCreationDate.setter(v4);
    free(v4);
    free(v5);
  }
}

uint64_t EnergySitePayload.subscriptionStartDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D201278C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.subscriptionStartDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D2012898(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.subscriptionStartDate.setter(v6);
}

uint64_t EnergySitePayload.subscriptionStartDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.subscriptionStartDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 15809);
  v5 = __swift_coroFrameAllocStub(v3, 15809);
  a1[2] = v5;
  EnergySitePayload.subscriptionStartDate.getter(v5);
  return sub_1D2012B48;
}

void sub_1D2012B48(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.subscriptionStartDate.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.subscriptionStartDate.setter(v4);
    free(v4);
    free(v5);
  }
}

uint64_t EnergySitePayload.siteTombstone.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2012C88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.siteTombstone.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D2012D94(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.siteTombstone.setter(v6);
}

uint64_t EnergySitePayload.siteTombstone.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.siteTombstone.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3, 24573);
  v5 = __swift_coroFrameAllocStub(v3, 24573);
  a1[2] = v5;
  EnergySitePayload.siteTombstone.getter(v5);
  return sub_1D2013044;
}

void sub_1D2013044(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_1D1FD5F1C(v2, v3);
    EnergySitePayload.siteTombstone.setter(v3);
    sub_1D1FD6044(v2);
    free(v2);
    free(v3);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 8);
    EnergySitePayload.siteTombstone.setter(v4);
    free(v4);
    free(v5);
  }
}

uint64_t EnergySitePayload.siteVersion.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion);
  swift_beginAccess();
  v4 = *v2;
  v5 = *(v2 + 4);
  swift_endAccess();

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1D20131A4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v8 - v10;
  sub_1D2028364(v2, &v8 - v10);
  v3 = EnergySitePayload.siteVersion.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  v13 = v5;
  *v11 = v5;
  *(v4 + 4) = BYTE4(v5) & 1;
  return sub_1D2028400(v6);
}

uint64_t sub_1D2013264(uint64_t a1)
{
  LODWORD(v2) = *a1;
  BYTE4(v2) = *(a1 + 4) & 1;
  return EnergySitePayload.siteVersion.setter(v2);
}

uint64_t EnergySitePayload.siteVersion.setter(uint64_t a1)
{
  v2 = a1;
  v3 = BYTE4(a1);
  v4 = sub_1D200B0E8() + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3 & 1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.siteVersion.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = EnergySitePayload.siteVersion.getter();
  *(a1 + 8) = v2;
  *(a1 + 12) = BYTE4(v2) & 1;
  return sub_1D20133E0;
}

uint64_t sub_1D20133E0(uint64_t a1, char a2)
{
  if (a2)
  {
    LODWORD(v3) = *(a1 + 8);
    BYTE4(v3) = *(a1 + 12) & 1;
    return EnergySitePayload.siteVersion.setter(v3);
  }

  else
  {
    LODWORD(v4) = *(a1 + 8);
    BYTE4(v4) = *(a1 + 12) & 1;
    return EnergySitePayload.siteVersion.setter(v4);
  }
}

uint64_t EnergySitePayload.generationMeters.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D20134F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D2028364(v2, &v6 - v7);
  v3 = EnergySitePayload.generationMeters.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D2028400(v4);
}

uint64_t EnergySitePayload.generationMeters.setter(uint64_t a1)
{
  v3 = sub_1D200B0E8();

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

void (*EnergySitePayload.generationMeters.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnergySitePayload.generationMeters.getter();
  return sub_1D20136E4;
}

void sub_1D20136E4(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    EnergySitePayload.generationMeters.setter(v2);
    sub_1D1FD3C38(a1);
  }

  else
  {
    EnergySitePayload.generationMeters.setter(*a1);
  }
}

uint64_t EnergySitePayload.includeRatePlanInGuidance.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance);
  swift_beginAccess();
  v4 = *v2;
  v5 = *(v2 + 4);
  swift_endAccess();

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1D20137FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v8 - v10;
  sub_1D2028364(v2, &v8 - v10);
  v3 = EnergySitePayload.includeRatePlanInGuidance.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  v13 = v5;
  *v11 = v5;
  *(v4 + 4) = BYTE4(v5) & 1;
  return sub_1D2028400(v6);
}

uint64_t sub_1D20138BC(uint64_t a1)
{
  LODWORD(v2) = *a1;
  BYTE4(v2) = *(a1 + 4) & 1;
  return EnergySitePayload.includeRatePlanInGuidance.setter(v2);
}

uint64_t EnergySitePayload.includeRatePlanInGuidance.setter(uint64_t a1)
{
  v2 = a1;
  v3 = BYTE4(a1);
  v4 = sub_1D200B0E8() + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3 & 1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.includeRatePlanInGuidance.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v2 = EnergySitePayload.includeRatePlanInGuidance.getter();
  *(a1 + 8) = v2;
  *(a1 + 12) = BYTE4(v2) & 1;
  return sub_1D2013A38;
}

uint64_t sub_1D2013A38(uint64_t a1, char a2)
{
  if (a2)
  {
    LODWORD(v3) = *(a1 + 8);
    BYTE4(v3) = *(a1 + 12) & 1;
    return EnergySitePayload.includeRatePlanInGuidance.setter(v3);
  }

  else
  {
    LODWORD(v4) = *(a1 + 8);
    BYTE4(v4) = *(a1 + 12) & 1;
    return EnergySitePayload.includeRatePlanInGuidance.setter(v4);
  }
}

uint64_t EnergySitePayload.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t EnergySitePayload.CurrentRatePlan.ratePlan.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.ratePlan.setter(uint64_t a1)
{

  *v1 = a1;
}

uint64_t EnergySitePayload.CurrentRatePlan.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan(0) + 20);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t EnergySitePayload.CurrentRatePlan.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for EnergySitePayload.CurrentRatePlan(v8);
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.identifier.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.descriptor.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.descriptor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.peaks.getter()
{
  v2 = *(v0 + 32);
  sub_1D1FD0018(v2, *(v0 + 40));
  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.peaks.setter(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D1FD0094(v3, v4);
  return sub_1D1FD0094(a1, a2);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0) + 28);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(v8);
  (*(v10 + 40))(v1 + *(v4 + 28), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

char *EnergySitePayload.CurrentRatePlan.RatePlan.init()@<X0>(char *a1@<X8>)
{
  v15 = a1;
  v16 = 0;
  v13 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0);
  v12 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v11 - v12;
  v16 = &v11 - v12;
  v1 = sub_1D208C51C();
  v2 = v14;
  *v14 = v1;
  *(v2 + 1) = v3;
  v4 = sub_1D208C51C();
  v5 = v14;
  *(v14 + 2) = v4;
  *(v5 + 3) = v6;
  v7 = sub_1D208BD4C();
  v8 = v14;
  *(v14 + 4) = v7;
  *(v8 + 5) = v9;
  sub_1D208C20C();
  return sub_1D2018FF8(v14, v15);
}

uint64_t EnergySitePayload.init()@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = 0;
  v6 = type metadata accessor for EnergySitePayload(0);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v4 - v5;
  v11 = &v4 - v5;
  sub_1D208C20C();
  v8 = *(v6 + 20);
  v9 = *sub_1D2014628();

  v1 = v7;
  v2 = v10;
  *&v7[v8] = v9;
  return sub_1D20190A4(v1, v2);
}

uint64_t sub_1D20145F8()
{
  v1 = *sub_1D2014628();

  return v1;
}

uint64_t *sub_1D2014628()
{
  if (qword_1EE083158 != -1)
  {
    swift_once();
  }

  return &qword_1EE083160;
}

uint64_t sub_1D2014688()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload(0) + 20));

  return v2;
}

uint64_t sub_1D20146CC(uint64_t a1)
{

  *(v1 + *(type metadata accessor for EnergySitePayload(0) + 20)) = a1;
}

uint64_t sub_1D201472C()
{
  result = sub_1D208C64C();
  qword_1EC6C2908 = result;
  qword_1EC6C2910 = v1;
  return result;
}

uint64_t *sub_1D2014770()
{
  if (qword_1EC6C2900 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C2908;
}

uint64_t static EnergySitePayload.protoMessageName.getter()
{
  v1 = *sub_1D2014770();

  return v1;
}

uint64_t sub_1D201480C()
{
  v95 = sub_1D208C47C();
  __swift_allocate_value_buffer(v95, qword_1EE082D10);
  __swift_project_value_buffer(v95, qword_1EE082D10);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v99 = v0;
  v1 = *(v101 + 48);
  *v0 = 1;
  v97 = v0 + v1;
  *v97 = "siteName";
  *(v97 + 1) = 8;
  v97[16] = 2;
  v96 = *MEMORY[0x1E69AADC8];
  v100 = *(*(sub_1D208C45C() - 8) + 104);
  (v100)(v97, v96);
  v98 = *(*(v101 - 8) + 72);
  v2 = *(v101 + 48);
  *(v99 + v98) = 2;
  v3 = v99 + v98 + v2;
  *v3 = "latitude";
  *(v3 + 1) = 8;
  v3[16] = 2;
  v100();
  v4 = *(v101 + 48);
  v5 = (v99 + 2 * v98);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "longitude";
  *(v6 + 1) = 9;
  v6[16] = 2;
  v100();
  v7 = *(v101 + 48);
  v8 = (v99 + 3 * v98);
  *v8 = 4;
  v9 = v8 + v7;
  *v9 = "utilityID";
  *(v9 + 1) = 9;
  v9[16] = 2;
  v100();
  v10 = *(v101 + 48);
  v11 = (v99 + 4 * v98);
  *v11 = 5;
  v12 = v11 + v10;
  *v12 = "subscriptionID";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v100();
  v13 = *(v101 + 48);
  v14 = (v99 + 5 * v98);
  *v14 = 6;
  v15 = v14 + v13;
  *v15 = "accessToken";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v100();
  v16 = *(v101 + 48);
  v17 = (v99 + 6 * v98);
  *v17 = 7;
  v18 = v17 + v16;
  *v18 = "refreshToken";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v100();
  v19 = *(v101 + 48);
  v20 = (v99 + 7 * v98);
  *v20 = 8;
  v21 = v20 + v19;
  *v21 = "timezone";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v100();
  v22 = *(v101 + 48);
  v23 = &v99[v98];
  *v23 = 9;
  v24 = v23 + v22;
  *v24 = "currentRatePlan";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v100();
  v25 = *(v101 + 48);
  v26 = (v99 + 9 * v98);
  *v26 = 10;
  v27 = v26 + v25;
  *v27 = "usagePointCustomIndex";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v100();
  v28 = *(v101 + 48);
  v29 = (v99 + 10 * v98);
  *v29 = 11;
  v30 = v29 + v28;
  *v30 = "usageSummaryCustomIndex";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v100();
  v31 = *(v101 + 48);
  v32 = (v99 + 11 * v98);
  *v32 = 12;
  v33 = v32 + v31;
  *v33 = "intervalBlockCustomIndex";
  *(v33 + 1) = 24;
  v33[16] = 2;
  v100();
  v34 = *(v101 + 48);
  v35 = (v99 + 12 * v98);
  *v35 = 13;
  v36 = v35 + v34;
  *v36 = "ckFunctionToken";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v100();
  v37 = *(v101 + 48);
  v38 = (v99 + 13 * v98);
  *v38 = 14;
  v39 = v38 + v37;
  *v39 = "accountName";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v100();
  v40 = *(v101 + 48);
  v41 = (v99 + 14 * v98);
  *v41 = 15;
  v42 = v41 + v40;
  *v42 = "accountNumber";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v100();
  v43 = *(v101 + 48);
  v44 = (v99 + 15 * v98);
  *v44 = 16;
  v45 = v44 + v43;
  *v45 = "address";
  *(v45 + 1) = 7;
  v45[16] = 2;
  v100();
  v46 = *(v101 + 48);
  v47 = &v99[2 * v98];
  *v47 = 17;
  v48 = v47 + v46;
  *v48 = "serviceLocationID";
  *(v48 + 1) = 17;
  v48[16] = 2;
  v100();
  v49 = *(v101 + 48);
  v50 = (v99 + 17 * v98);
  *v50 = 18;
  v51 = v50 + v49;
  *v51 = "alternateSupplier";
  *(v51 + 1) = 17;
  v51[16] = 2;
  v100();
  v52 = *(v101 + 48);
  v53 = (v99 + 18 * v98);
  *v53 = 19;
  v54 = v53 + v52;
  *v54 = "accessTokenExpirationDate";
  *(v54 + 1) = 25;
  v54[16] = 2;
  v100();
  v55 = *(v101 + 48);
  v56 = (v99 + 19 * v98);
  *v56 = 20;
  v57 = v56 + v55;
  *v57 = "utilitySupportedCheckDate";
  *(v57 + 1) = 25;
  v57[16] = 2;
  v100();
  v58 = *(v101 + 48);
  v59 = (v99 + 20 * v98);
  *v59 = 21;
  v60 = v59 + v58;
  *v60 = "amiLastRefreshDate";
  *(v60 + 1) = 18;
  v60[16] = 2;
  v100();
  v61 = *(v101 + 48);
  v62 = (v99 + 21 * v98);
  *v62 = 22;
  v63 = v62 + v61;
  *v63 = "hasExportedEnergy";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v100();
  v64 = *(v101 + 48);
  v65 = (v99 + 22 * v98);
  *v65 = 23;
  v66 = v65 + v64;
  *v66 = "usagePointNextRefreshDate";
  *(v66 + 1) = 25;
  v66[16] = 2;
  v100();
  v67 = *(v101 + 48);
  v68 = (v99 + 23 * v98);
  *v68 = 24;
  v69 = v68 + v67;
  *v69 = "usageSummaryNextRefreshDate";
  *(v69 + 1) = 27;
  v69[16] = 2;
  v100();
  v70 = *(v101 + 48);
  v71 = &v99[3 * v98];
  *v71 = 25;
  v72 = v71 + v70;
  *v72 = "intervalBlockNextRefreshDate";
  *(v72 + 1) = 28;
  v72[16] = 2;
  v100();
  v73 = *(v101 + 48);
  v74 = (v99 + 25 * v98);
  *v74 = 26;
  v75 = v74 + v73;
  *v75 = "subscriptionState";
  *(v75 + 1) = 17;
  v75[16] = 2;
  v100();
  v76 = *(v101 + 48);
  v77 = (v99 + 26 * v98);
  *v77 = 27;
  v78 = v77 + v76;
  *v78 = "subscriptionCreationDate";
  *(v78 + 1) = 24;
  v78[16] = 2;
  v100();
  v79 = *(v101 + 48);
  v80 = (v99 + 27 * v98);
  *v80 = 28;
  v81 = v80 + v79;
  *v81 = "subscriptionStartDate";
  *(v81 + 1) = 21;
  v81[16] = 2;
  v100();
  v82 = *(v101 + 48);
  v83 = (v99 + 28 * v98);
  *v83 = 29;
  v84 = v83 + v82;
  *v84 = "siteTombstone";
  *(v84 + 1) = 13;
  v84[16] = 2;
  v100();
  v85 = *(v101 + 48);
  v86 = (v99 + 29 * v98);
  *v86 = 30;
  v87 = v86 + v85;
  *v87 = "siteVersion";
  *(v87 + 1) = 11;
  v87[16] = 2;
  v100();
  v88 = *(v101 + 48);
  v89 = (v99 + 30 * v98);
  *v89 = 31;
  v90 = v89 + v88;
  *v90 = "generationMeters";
  *(v90 + 1) = 16;
  v90[16] = 2;
  v100();
  v91 = *(v101 + 48);
  v92 = (v99 + 31 * v98);
  *v92 = 32;
  v93 = v92 + v91;
  *v93 = "includeRatePlanInGuidance";
  *(v93 + 1) = 25;
  v93[16] = 2;
  v100();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2015764()
{
  if (qword_1EE082D08 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EE082D10);
}

uint64_t static EnergySitePayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2015764();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2015834()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015890(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

double sub_1D201595C()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2;
}

uint64_t sub_1D20159A8(double a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

double sub_1D2015A50()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015A9C(double a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_1D2015B44()
{
  swift_beginAccess();
  v2 = *(v0 + 48);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015BA0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015C6C()
{
  swift_beginAccess();
  v2 = *(v0 + 64);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015CC8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015D94()
{
  swift_beginAccess();
  v2 = *(v0 + 80);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015DF0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015EBC()
{
  swift_beginAccess();
  v2 = *(v0 + 96);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015F18(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015FE4()
{
  swift_beginAccess();
  v2 = *(v0 + 112);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2016040(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  swift_endAccess();
}

uint64_t sub_1D201610C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  swift_beginAccess();
  sub_1D2018864(v3, a1);
  return swift_endAccess();
}

void *sub_1D2016168(void *a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D2018864(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2018C54(v5, v6);
  swift_endAccess();
  return sub_1D2018A44(v8);
}

uint64_t sub_1D201629C()
{
  v2 = v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016308(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D20163F0()
{
  v2 = v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D201645C(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D2016544()
{
  v2 = v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D20165B0(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D2016698()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016704(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D20167E8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016854(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016938()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D20169A4(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016A88()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016AF4(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016BD8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016C44(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016D28()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016D94(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016E78@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2016ED4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017008@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017064(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017198@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20171F4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017328()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1D2017388(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D2017448@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20174A4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20175D8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017634(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017768@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20177C4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20178F8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2017964(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2017A48@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017AA4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017BD8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017C34(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017D68@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017DC4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017EF8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1D2017F74(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D2018054()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D20180B4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1D2018188()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1D2018204(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D20182E4()
{
  type metadata accessor for EnergySitePayload._StorageClass(0);
  result = sub_1D2018318();
  qword_1EE083160 = result;
  return result;
}

uint64_t sub_1D2018354(uint64_t a1)
{
  *(v1 + 2) = sub_1D208C51C();
  *(v1 + 3) = v2;
  *(v1 + 4) = 0xC066800000000000;
  *(v1 + 5) = 0xC066800000000000;
  *(v1 + 6) = sub_1D208C51C();
  *(v1 + 7) = v3;
  *(v1 + 8) = sub_1D208C51C();
  *(v1 + 9) = v4;
  *(v1 + 10) = sub_1D208C51C();
  *(v1 + 11) = v5;
  *(v1 + 12) = sub_1D208C51C();
  *(v1 + 13) = v6;
  *(v1 + 14) = sub_1D208C51C();
  *(v1 + 15) = v7;
  v43 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan;
  v8 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  (*(*(v8 - 8) + 56))(&v1[v43], 1);
  v44 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  v9 = sub_1D208BD4C();
  v10 = &v1[v44];
  *v10 = v9;
  v10[1] = v11;
  v45 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  v12 = sub_1D208BD4C();
  v13 = &v1[v45];
  *v13 = v12;
  v13[1] = v14;
  v46 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  v15 = sub_1D208BD4C();
  v16 = &v1[v46];
  *v16 = v15;
  v16[1] = v17;
  v47 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken;
  v18 = sub_1D208C51C();
  v19 = &v1[v47];
  *v19 = v18;
  v19[1] = v20;
  v48 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName;
  v21 = sub_1D208C51C();
  v22 = &v1[v48];
  *v22 = v21;
  v22[1] = v23;
  v49 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber;
  v24 = sub_1D208C51C();
  v25 = &v1[v49];
  *v25 = v24;
  v25[1] = v26;
  v50 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address;
  v27 = sub_1D208C51C();
  v28 = &v1[v50];
  *v28 = v27;
  v28[1] = v29;
  v51 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID;
  v30 = sub_1D208C51C();
  v31 = &v1[v51];
  *v31 = v30;
  v31[1] = v32;
  v52 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier;
  v33 = sub_1D208C51C();
  v34 = &v1[v52];
  *v34 = v33;
  v34[1] = v35;
  v53 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate;
  v55 = sub_1D208C1EC();
  v56 = *(*(v55 - 8) + 56);
  v56(&v1[v53], 1);
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate], 1, 1, v55);
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate], 1, 1, v55);
  v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p] = 0;
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate], 1, 1, v55);
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate], 1, 1, v55);
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate], 1, 1, v55);
  v54 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState;
  v36 = sub_1D208C51C();
  v37 = &v1[v54];
  *v37 = v36;
  v37[1] = v38;
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate], 1, 1, v55);
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate], 1, 1, v55);
  (v56)(&v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone], 1, 1, v55);
  v39 = &v1[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion];
  *v39 = 3;
  v39[4] = 0;
  v57 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters;
  v40 = sub_1D208CB2C();
  result = v58;
  *(v58 + v57) = v40;
  v42 = v58 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  *v42 = 0;
  *(v42 + 4) = 1;
  return result;
}

void *sub_1D2018864(uint64_t *a1, void *a2)
{
  v10 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
    v7 = a2 + *(v10 + 20);
    v6 = a1 + *(v10 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v7, v6);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  return a2;
}

uint64_t type metadata accessor for EnergySitePayload.CurrentRatePlan(uint64_t a1)
{
  v2 = qword_1EE083360;
  if (!qword_1EE083360)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_1D2018A44(void *a1)
{
  v5 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 20);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2018B0C(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan(0) + 20);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2018BA8(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan(0) + 20);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t *sub_1D2018C54(uint64_t *a1, uint64_t *a2)
{
  v13 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v8 = a2 + *(v13 + 20);
      v7 = a1 + *(v13 + 20);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2018ECC(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;

    v10 = a2 + *(v13 + 20);
    v9 = a1 + *(v13 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

char *sub_1D2018ECC(char *a1)
{

  v3 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan(0) + 20);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(uint64_t a1)
{
  v2 = qword_1EE0833F0;
  if (!qword_1EE0833F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_1D2018FF8(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0) + 28);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1D20190A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for EnergySitePayload(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1D201912C(void *a1)
{
  v292 = a1;
  v359 = 0;
  v358 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v91 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v265 = &v91 - v91;
  v92 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v292);
  v143 = (&v91 - v92);
  v359 = v3;
  v358 = v1;
  v1[2] = sub_1D208C51C();
  v1[3] = v4;
  v1[4] = 0xC066800000000000;
  v1[5] = 0xC066800000000000;
  v1[6] = sub_1D208C51C();
  v1[7] = v5;
  v1[8] = sub_1D208C51C();
  v1[9] = v6;
  v1[10] = sub_1D208C51C();
  v1[11] = v7;
  v1[12] = sub_1D208C51C();
  v1[13] = v8;
  v1[14] = sub_1D208C51C();
  v1[15] = v9;
  v142 = &unk_1EE083000;
  v93 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan;
  v108 = 0;
  v10 = *(*(type metadata accessor for EnergySitePayload.CurrentRatePlan(0) - 8) + 56);
  v289 = 1;
  v10(v1 + v93, 1);
  v148 = &unk_1EE083000;
  v94 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  v11 = sub_1D208BD4C();
  v12 = (v1 + v94);
  *v12 = v11;
  v12[1] = v13;
  v155 = &unk_1EE083000;
  v95 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  v14 = sub_1D208BD4C();
  v15 = (v1 + v95);
  *v15 = v14;
  v15[1] = v16;
  v162 = &unk_1EE083000;
  v96 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  v17 = sub_1D208BD4C();
  v18 = (v1 + v96);
  *v18 = v17;
  v18[1] = v19;
  v169 = &unk_1EE083000;
  v97 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken;
  v20 = sub_1D208C51C();
  v21 = (v1 + v97);
  *v21 = v20;
  v21[1] = v22;
  v176 = &unk_1EE083000;
  v98 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName;
  v23 = sub_1D208C51C();
  v24 = (v1 + v98);
  *v24 = v23;
  v24[1] = v25;
  v183 = &unk_1EE083000;
  v99 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber;
  v26 = sub_1D208C51C();
  v27 = (v1 + v99);
  *v27 = v26;
  v27[1] = v28;
  v190 = &unk_1EE083000;
  v100 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address;
  v29 = sub_1D208C51C();
  v30 = (v1 + v100);
  *v30 = v29;
  v30[1] = v31;
  v197 = &unk_1EE083000;
  v101 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID;
  v32 = sub_1D208C51C();
  v33 = (v1 + v101);
  *v33 = v32;
  v33[1] = v34;
  v204 = &unk_1EE083000;
  v102 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier;
  v35 = sub_1D208C51C();
  v36 = (v1 + v102);
  *v36 = v35;
  v36[1] = v37;
  v211 = &unk_1EE083000;
  v103 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate;
  v105 = sub_1D208C1EC();
  v38 = *(v105 - 8);
  v107 = *(v38 + 56);
  v106 = v38 + 56;
  v107(v1 + v103, v289);
  v216 = &unk_1EE083000;
  (v107)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate, v289, v289, v105);
  v221 = &unk_1EE083000;
  (v107)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate, v289, v289, v105);
  v39 = v105;
  v40 = v107;
  v41 = v289;
  v226 = &unk_1EE083000;
  *(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p) = 0;
  v232 = &unk_1EE083000;
  v40(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate, v41, v41, v39);
  v237 = &unk_1EE083000;
  (v107)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate, v289, v289, v105);
  v242 = &unk_1EE083000;
  (v107)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate, v289, v289, v105);
  v247 = &unk_1EE083000;
  v104 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState;
  v42 = sub_1D208C51C();
  v43 = v105;
  v44 = v107;
  v45 = v289;
  v46 = (v1 + v104);
  *v46 = v42;
  v46[1] = v47;
  v254 = &unk_1EE083000;
  v44(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate, v45, v45, v43);
  v259 = &unk_1EE083000;
  (v107)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate, v289, v289, v105);
  v264 = &unk_1EE083000;
  (v107)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone, v289, v289, v105);
  v270 = &unk_1EE083000;
  v48 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  *v48 = 3;
  v48[4] = 0;
  v277 = &unk_1EE083000;
  v109 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters;
  v49 = sub_1D208CB2C();
  v50 = v289;
  *(v1 + v109) = v49;
  v284 = &unk_1EE082000;
  v51 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  *v51 = 0;
  v51[4] = v50 & 1;
  v110 = &v357;
  v281 = 32;
  v286 = 0;
  swift_beginAccess();
  v111 = v292[2];
  v112 = v292[3];

  swift_endAccess();
  v113 = &v356;
  v285 = 33;
  swift_beginAccess();
  v52 = v112;
  v1[2] = v111;
  v1[3] = v52;

  swift_endAccess();
  v114 = &v355;
  swift_beginAccess();
  v115 = v292[4];
  swift_endAccess();
  v116 = &v354;
  swift_beginAccess();
  v1[4] = v115;
  swift_endAccess();
  v117 = &v353;
  swift_beginAccess();
  v118 = v292[5];
  swift_endAccess();
  v119 = &v352;
  swift_beginAccess();
  v1[5] = v118;
  swift_endAccess();
  v120 = &v351;
  swift_beginAccess();
  v121 = v292[6];
  v122 = v292[7];

  swift_endAccess();
  v123 = &v350;
  swift_beginAccess();
  v53 = v122;
  v1[6] = v121;
  v1[7] = v53;

  swift_endAccess();
  v124 = &v349;
  swift_beginAccess();
  v125 = v292[8];
  v126 = v292[9];

  swift_endAccess();
  v127 = &v348;
  swift_beginAccess();
  v54 = v126;
  v1[8] = v125;
  v1[9] = v54;

  swift_endAccess();
  v128 = &v347;
  swift_beginAccess();
  v129 = v292[10];
  v130 = v292[11];

  swift_endAccess();
  v131 = &v346;
  swift_beginAccess();
  v55 = v130;
  v1[10] = v129;
  v1[11] = v55;

  swift_endAccess();
  v132 = &v345;
  swift_beginAccess();
  v133 = v292[12];
  v134 = v292[13];

  swift_endAccess();
  v135 = &v344;
  swift_beginAccess();
  v56 = v134;
  v1[12] = v133;
  v1[13] = v56;

  swift_endAccess();
  v136 = &v343;
  swift_beginAccess();
  v137 = v292[14];
  v138 = v292[15];

  swift_endAccess();
  v139 = &v342;
  swift_beginAccess();
  v57 = v138;
  v1[14] = v137;
  v1[15] = v57;

  swift_endAccess();
  v140 = (v292 + v142[39]);
  v141 = &v341;
  swift_beginAccess();
  sub_1D2018864(v140, v143);
  swift_endAccess();
  v144 = (v1 + v142[39]);
  v145 = &v340;
  swift_beginAccess();
  sub_1D2018C54(v143, v144);
  swift_endAccess();
  v146 = (v292 + v148[30]);
  v147 = &v339;
  swift_beginAccess();
  v149 = *v146;
  v151 = v146[1];
  sub_1D1FD0018(v149, v151);
  swift_endAccess();
  v150 = (v1 + v148[30]);
  v152 = &v338;
  swift_beginAccess();
  v58 = v150;
  v59 = v151;
  v60 = *v150;
  v61 = v150[1];
  *v150 = v149;
  v58[1] = v59;
  sub_1D1FD0094(v60, v61);
  swift_endAccess();
  v153 = (v292 + v155[29]);
  v154 = &v337;
  swift_beginAccess();
  v156 = *v153;
  v158 = v153[1];
  sub_1D1FD0018(v156, v158);
  swift_endAccess();
  v157 = (v1 + v155[29]);
  v159 = &v336;
  swift_beginAccess();
  v62 = v157;
  v63 = v158;
  v64 = *v157;
  v65 = v157[1];
  *v157 = v156;
  v62[1] = v63;
  sub_1D1FD0094(v64, v65);
  swift_endAccess();
  v160 = (v292 + v162[28]);
  v161 = &v335;
  swift_beginAccess();
  v163 = *v160;
  v165 = v160[1];
  sub_1D1FD0018(v163, v165);
  swift_endAccess();
  v164 = (v1 + v162[28]);
  v166 = &v334;
  swift_beginAccess();
  v66 = v164;
  v67 = v165;
  v68 = *v164;
  v69 = v164[1];
  *v164 = v163;
  v66[1] = v67;
  sub_1D1FD0094(v68, v69);
  swift_endAccess();
  v167 = (v292 + v169[41]);
  v168 = &v333;
  swift_beginAccess();
  v170 = *v167;
  v172 = v167[1];

  swift_endAccess();
  v171 = (v1 + v169[41]);
  v173 = &v332;
  swift_beginAccess();
  v70 = v171;
  v71 = v172;
  *v171 = v170;
  v70[1] = v71;

  swift_endAccess();
  v174 = (v292 + v176[50]);
  v175 = &v331;
  swift_beginAccess();
  v177 = *v174;
  v179 = v174[1];

  swift_endAccess();
  v178 = (v1 + v176[50]);
  v180 = &v330;
  swift_beginAccess();
  v72 = v178;
  v73 = v179;
  *v178 = v177;
  v72[1] = v73;

  swift_endAccess();
  v181 = (v292 + v183[47]);
  v182 = &v329;
  swift_beginAccess();
  v184 = *v181;
  v186 = v181[1];

  swift_endAccess();
  v185 = (v1 + v183[47]);
  v187 = &v328;
  swift_beginAccess();
  v74 = v185;
  v75 = v186;
  *v185 = v184;
  v74[1] = v75;

  swift_endAccess();
  v188 = (v292 + v190[18]);
  v189 = &v327;
  swift_beginAccess();
  v191 = *v188;
  v193 = v188[1];

  swift_endAccess();
  v192 = (v1 + v190[18]);
  v194 = &v326;
  swift_beginAccess();
  v76 = v192;
  v77 = v193;
  *v192 = v191;
  v76[1] = v77;

  swift_endAccess();
  v195 = (v292 + v197[35]);
  v196 = &v325;
  swift_beginAccess();
  v198 = *v195;
  v200 = v195[1];

  swift_endAccess();
  v199 = (v1 + v197[35]);
  v201 = &v324;
  swift_beginAccess();
  v78 = v199;
  v79 = v200;
  *v199 = v198;
  v78[1] = v79;

  swift_endAccess();
  v202 = (v292 + v204[36]);
  v203 = &v323;
  swift_beginAccess();
  v205 = *v202;
  v207 = v202[1];

  swift_endAccess();
  v206 = (v1 + v204[36]);
  v208 = &v322;
  swift_beginAccess();
  v80 = v206;
  v81 = v207;
  *v206 = v205;
  v80[1] = v81;

  swift_endAccess();
  v209 = v292 + v211[25];
  v210 = &v321;
  swift_beginAccess();
  sub_1D1FD5F1C(v209, v265);
  swift_endAccess();
  v212 = v1 + v211[25];
  v213 = &v320;
  swift_beginAccess();
  sub_1D1FD6448(v265, v212);
  swift_endAccess();
  v214 = v292 + v216[22];
  v215 = &v319;
  swift_beginAccess();
  sub_1D1FD5F1C(v214, v265);
  swift_endAccess();
  v217 = v1 + v216[22];
  v218 = &v318;
  swift_beginAccess();
  sub_1D1FD6448(v265, v217);
  swift_endAccess();
  v219 = v292 + v221[33];
  v220 = &v317;
  swift_beginAccess();
  sub_1D1FD5F1C(v219, v265);
  swift_endAccess();
  v222 = v1 + v221[33];
  v223 = &v316;
  swift_beginAccess();
  sub_1D1FD6448(v265, v222);
  swift_endAccess();
  v224 = v292 + v226[52];
  v225 = &v315;
  swift_beginAccess();
  v228 = *v224;
  swift_endAccess();
  v227 = v1 + v226[52];
  v229 = &v314;
  swift_beginAccess();
  *v227 = v228;
  swift_endAccess();
  v230 = v292 + v232[23];
  v231 = &v313;
  swift_beginAccess();
  sub_1D1FD5F1C(v230, v265);
  swift_endAccess();
  v233 = v1 + v232[23];
  v234 = &v312;
  swift_beginAccess();
  sub_1D1FD6448(v265, v233);
  swift_endAccess();
  v235 = v292 + v237[20];
  v236 = &v311;
  swift_beginAccess();
  sub_1D1FD5F1C(v235, v265);
  swift_endAccess();
  v238 = v1 + v237[20];
  v239 = &v310;
  swift_beginAccess();
  sub_1D1FD6448(v265, v238);
  swift_endAccess();
  v240 = v292 + v242[19];
  v241 = &v309;
  swift_beginAccess();
  sub_1D1FD5F1C(v240, v265);
  swift_endAccess();
  v243 = v1 + v242[19];
  v244 = &v308;
  swift_beginAccess();
  sub_1D1FD6448(v265, v243);
  swift_endAccess();
  v245 = (v292 + v247[34]);
  v246 = &v307;
  swift_beginAccess();
  v248 = *v245;
  v250 = v245[1];

  swift_endAccess();
  v249 = (v1 + v247[34]);
  v251 = &v306;
  swift_beginAccess();
  v82 = v249;
  v83 = v250;
  *v249 = v248;
  v82[1] = v83;

  swift_endAccess();
  v252 = v292 + v254[27];
  v253 = &v305;
  swift_beginAccess();
  sub_1D1FD5F1C(v252, v265);
  swift_endAccess();
  v255 = v1 + v254[27];
  v256 = &v304;
  swift_beginAccess();
  sub_1D1FD6448(v265, v255);
  swift_endAccess();
  v257 = v292 + v259[32];
  v258 = &v303;
  swift_beginAccess();
  sub_1D1FD5F1C(v257, v265);
  swift_endAccess();
  v260 = v1 + v259[32];
  v261 = &v302;
  swift_beginAccess();
  sub_1D1FD6448(v265, v260);
  swift_endAccess();
  v262 = v292 + v264[45];
  v263 = &v301;
  swift_beginAccess();
  sub_1D1FD5F1C(v262, v265);
  swift_endAccess();
  v266 = v1 + v264[45];
  v267 = &v300;
  swift_beginAccess();
  sub_1D1FD6448(v265, v266);
  swift_endAccess();
  v268 = v292 + v270[48];
  v269 = &v299;
  swift_beginAccess();
  v271 = *v268;
  v272 = v268[4];
  swift_endAccess();
  v273 = (v1 + v270[48]);
  v274 = &v298;
  swift_beginAccess();
  v84 = v272;
  v85 = v273;
  v86 = v289;
  *v273 = v271;
  *(v85 + 4) = v84 & 1 & v86;
  swift_endAccess();
  v275 = (v292 + v277[37]);
  v276 = &v297;
  swift_beginAccess();
  v279 = *v275;

  swift_endAccess();
  v278 = (v1 + v277[37]);
  v280 = &v296;
  swift_beginAccess();
  *v278 = v279;

  swift_endAccess();
  v282 = v292 + v284[442];
  v283 = &v295;
  swift_beginAccess();
  v287 = *v282;
  v288 = v282[4];
  swift_endAccess();
  v290 = (v1 + v284[442]);
  v291 = &v294;
  swift_beginAccess();
  v87 = v288;
  v88 = v289;
  v89 = v290;
  *v290 = v287;
  *(v89 + 4) = v87 & 1 & v88;
  swift_endAccess();

  return v293;
}

uint64_t sub_1D201A754()
{
  sub_1D1FE023C(v0 + 16);
  sub_1D1FE023C(v0 + 48);
  sub_1D1FE023C(v0 + 64);
  sub_1D1FE023C(v0 + 80);
  sub_1D1FE023C(v0 + 96);
  sub_1D1FE023C(v0 + 112);
  sub_1D2018A44((v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan));
  sub_1D2018FC4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  sub_1D2018FC4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  sub_1D2018FC4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  sub_1D1FD3C38((v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters));
  return v2;
}

uint64_t EnergySitePayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v22 = a1;
  v21 = v3;
  sub_1D200B0E8();

  v7 = *(v6 + *(type metadata accessor for EnergySitePayload(0) + 20));

  v20 = v7;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v13 = sub_1D201B75C;
  v14 = &v15;
  v11 = type metadata accessor for EnergySitePayload._StorageClass(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  sub_1D201D1EC(&v20, sub_1D201D1BC, v12, v11, v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1D201AAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v10 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D201B798(a2, a1, a3);
        break;
      case 2:
        sub_1D201B858(a2, a1, a3);
        break;
      case 3:
        sub_1D201B918(a2, a1, a3);
        break;
      case 4:
        sub_1D201B9D8(a2, a1, a3);
        break;
      case 5:
        sub_1D201BA98(a2, a1, a3);
        break;
      case 6:
        sub_1D201BB58(a2, a1, a3);
        break;
      case 7:
        sub_1D201BC18(a2, a1, a3);
        break;
      case 8:
        sub_1D201BCD8(a2, a1, a3);
        break;
      case 9:
        sub_1D201BD98(a2, a1, a3, a4);
        break;
      case 10:
        sub_1D201BE78(a2, a1, a3, a4);
        break;
      case 11:
        sub_1D201BF40(a2, a1, a3, a4);
        break;
      case 12:
        sub_1D201C008(a2, a1, a3, a4);
        break;
      case 13:
        sub_1D201C0D0(a2, a1, a3);
        break;
      case 14:
        sub_1D201C198(a2, a1, a3);
        break;
      case 15:
        sub_1D201C260(a2, a1, a3);
        break;
      case 16:
        sub_1D201C328(a2, a1, a3);
        break;
      case 17:
        sub_1D201C3F0(a2, a1, a3);
        break;
      case 18:
        sub_1D201C4B8(a2, a1, a3);
        break;
      case 19:
        sub_1D201C580(a2, a1, a3, a4);
        break;
      case 20:
        sub_1D201C660(a2, a1, a3, a4);
        break;
      case 21:
        sub_1D201C740(a2, a1, a3, a4);
        break;
      case 22:
        sub_1D201C820(a2, a1, a3);
        break;
      case 23:
        sub_1D201C8E8(a2, a1, a3, a4);
        break;
      case 24:
        sub_1D201C9C8(a2, a1, a3, a4);
        break;
      case 25:
        sub_1D201CAA8(a2, a1, a3, a4);
        break;
      case 26:
        sub_1D201CB88(a2, a1, a3);
        break;
      case 27:
        sub_1D201CC50(a2, a1, a3, a4);
        break;
      case 28:
        sub_1D201CD30(a2, a1, a3, a4);
        break;
      case 29:
        sub_1D201CE10(a2, a1, a3, a4);
        break;
      case 30:
        sub_1D201CEF0(a2, a1, a3, a4);
        break;
      case 31:
        sub_1D201CFB8(a2, a1, a3, a4);
        break;
      case 32:
        sub_1D201D080(a2, a1, a3, a4);
        break;
    }

    v10 = 0;
  }

  return result;
}

uint64_t sub_1D201B798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201B858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D201B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D201B9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  sub_1D20275F8();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C2BC();
  return swift_endAccess();
}

uint64_t sub_1D201BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C2BC();
  return swift_endAccess();
}

uint64_t sub_1D201C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C2BC();
  return swift_endAccess();
}

uint64_t sub_1D201C0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C29C();
  return swift_endAccess();
}

uint64_t sub_1D201C8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201CC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C31C();
  return swift_endAccess();
}

uint64_t sub_1D201CFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C2EC();
  return swift_endAccess();
}

uint64_t sub_1D201D080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D208C2CC();
  return swift_endAccess();
}

uint64_t sub_1D201D148(void *a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  result = a2(*a1);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1D201D1EC(uint64_t a1, uint64_t (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t EnergySitePayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v21 = a2;
  v22 = a3;
  v24 = sub_1D201F09C;
  v25 = sub_1D201D1BC;
  v41 = 0;
  v40 = 0;
  v42 = a2;
  v19 = 0;
  v13 = sub_1D208C21C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v17 = v11 - v16;
  v41 = v23;
  v40 = v3;
  v5 = type metadata accessor for EnergySitePayload(v4);
  v20 = *(v18 + *(v5 + 20));

  v29 = &v39;
  v39 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v26 = &v31;
  v32 = v24;
  v33 = &v34;
  v27 = type metadata accessor for EnergySitePayload._StorageClass(v19);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v7 = v28;
  sub_1D201D1EC(v29, v25, v26, v27, v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v38);
  v30 = v7;
  if (v7)
  {
    v11[2] = v38;
  }

  else
  {
    v8 = v17;

    (*(v14 + 16))(v8, v18, v13);
    v9 = v30;
    sub_1D208C1FC();
    v11[4] = v9;
    v12 = v9;
    if (v9)
    {
      v11[1] = v12;
    }

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_1D201D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  swift_endAccess();
  v56 = sub_1D208C66C();

  if (v56)
  {
    v50 = v54;
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1D208C41C();
    if (v54)
    {
    }

    v50 = 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 32);
  swift_endAccess();
  if (v49 == 0.0)
  {
    v48 = v50;
  }

  else
  {
    swift_beginAccess();
    swift_endAccess();
    result = sub_1D208C40C();
    if (v50)
    {
      return result;
    }

    v48 = 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 40);
  swift_endAccess();
  if (v47 == 0.0)
  {
    v46 = v48;
  }

  else
  {
    swift_beginAccess();
    swift_endAccess();
    result = sub_1D208C40C();
    if (v48)
    {
      return result;
    }

    v46 = 0;
  }

  swift_beginAccess();

  swift_endAccess();
  v45 = sub_1D208C66C();

  if (v45)
  {
    v44 = v46;
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1D208C41C();
    if (v46)
    {
    }

    v44 = 0;
  }

  swift_beginAccess();

  swift_endAccess();
  v43 = sub_1D208C66C();

  if (v43)
  {
    v42 = v44;
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1D208C41C();
    if (v44)
    {
    }

    v42 = 0;
  }

  swift_beginAccess();

  swift_endAccess();
  v41 = sub_1D208C66C();

  if (v41)
  {
    v40 = v42;
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1D208C41C();
    if (v42)
    {
    }

    v40 = 0;
  }

  swift_beginAccess();

  swift_endAccess();
  v39 = sub_1D208C66C();

  if (v39)
  {
    v38 = v40;
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1D208C41C();
    if (v40)
    {
    }

    v38 = 0;
  }

  swift_beginAccess();

  swift_endAccess();
  v37 = sub_1D208C66C();

  if ((v37 & 1) == 0)
  {
    swift_beginAccess();

    swift_endAccess();
    sub_1D208C41C();
    if (!v38)
    {

      v36 = 0;
      goto LABEL_33;
    }
  }

  v36 = v38;
LABEL_33:
  result = sub_1D201F0D8(a1, a2, a3, a4);
  if (!v36)
  {
    v32 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
    swift_beginAccess();
    v34 = *v32;
    v33 = v32[1];
    sub_1D1FD0018(*v32, v33);
    swift_endAccess();
    sub_1D2027678();
    v35 = sub_1D208C82C();
    sub_1D1FD0094(v34, v33);
    if ((v35 & 1) == 0)
    {
      v29 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
      swift_beginAccess();
      v30 = *v29;
      v31 = v29[1];
      sub_1D1FD0018(*v29, v31);
      swift_endAccess();
      sub_1D208C3DC();
      sub_1D1FD0094(v30, v31);
    }

    v25 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
    swift_beginAccess();
    v27 = *v25;
    v26 = v25[1];
    sub_1D1FD0018(*v25, v26);
    swift_endAccess();
    v28 = sub_1D208C82C();
    sub_1D1FD0094(v27, v26);
    if ((v28 & 1) == 0)
    {
      v22 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      sub_1D1FD0018(*v22, v24);
      swift_endAccess();
      sub_1D208C3DC();
      sub_1D1FD0094(v23, v24);
    }

    v18 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
    swift_beginAccess();
    v20 = *v18;
    v19 = v18[1];
    sub_1D1FD0018(*v18, v19);
    swift_endAccess();
    v21 = sub_1D208C82C();
    sub_1D1FD0094(v20, v19);
    if ((v21 & 1) == 0)
    {
      v15 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
      swift_beginAccess();
      v16 = *v15;
      v17 = v15[1];
      sub_1D1FD0018(*v15, v17);
      swift_endAccess();
      sub_1D208C3DC();
      sub_1D1FD0094(v16, v17);
    }

    swift_beginAccess();

    swift_endAccess();
    v14 = sub_1D208C66C();

    if ((v14 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    swift_beginAccess();

    swift_endAccess();
    v13 = sub_1D208C66C();

    if ((v13 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    swift_beginAccess();

    swift_endAccess();
    v12 = sub_1D208C66C();

    if ((v12 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    swift_beginAccess();

    swift_endAccess();
    v11 = sub_1D208C66C();

    if ((v11 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    swift_beginAccess();

    swift_endAccess();
    v10 = sub_1D208C66C();

    if ((v10 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    swift_beginAccess();

    swift_endAccess();
    v9 = sub_1D208C66C();

    if ((v9 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    sub_1D201F310(a1, a2, a3, a4);
    sub_1D201F5C0(a1, a2, a3, a4);
    sub_1D201F870(a1, a2, a3, a4);
    v7 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
    swift_beginAccess();
    v8 = *v7;
    swift_endAccess();
    if (v8)
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1D208C3BC();
    }

    sub_1D201FB20(a1, a2, a3, a4);
    sub_1D201FDD0(a1, a2, a3, a4);
    sub_1D2020080(a1, a2, a3, a4);
    swift_beginAccess();

    swift_endAccess();
    v6 = sub_1D208C66C();

    if ((v6 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C41C();
    }

    sub_1D2020330(a1, a2, a3, a4);
    sub_1D20205E0(a1, a2, a3, a4);
    sub_1D2020890(a1, a2, a3, a4);
    sub_1D2020B40(a1, a2, a3);
    swift_beginAccess();

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE68, &unk_1D208FB70);
    sub_1D2028750();
    v5 = sub_1D208C82C();

    if ((v5 & 1) == 0)
    {
      swift_beginAccess();

      swift_endAccess();
      sub_1D208C3FC();
    }

    return sub_1D2020C50(a1, a2, a3, a4);
  }

  return result;
}

char *sub_1D201F0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v22 = &v27;
  swift_beginAccess();
  sub_1D2018864(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D2018A44(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2018B0C(v25, v20);
    sub_1D20275F8();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2018ECC(v20);
    }

    else
    {
      sub_1D2018ECC(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D201F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D201F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D201F870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D201FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D201FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2020080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2020330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D20205E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2020890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2020B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  swift_beginAccess();
  v6 = *(v5 + 4);
  result = swift_endAccess();
  if ((v6 & 1) == 0)
  {
    result = sub_1D208C42C();
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D2020C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  swift_beginAccess();
  v7 = *(v6 + 4);
  result = swift_endAccess();
  if ((v7 & 1) == 0)
  {
    result = sub_1D208C3EC();
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

BOOL static EnergySitePayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v34 = a1;
  v26 = 0;
  v45 = 0;
  v44 = 0;
  v25 = 0;
  v41 = 0;
  v27 = sub_1D208C21C();
  v28 = *(v27 - 8);
  v29 = v28;
  v30 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](0);
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v10 - v32;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v10 - v32;
  v45 = v3;
  v44 = v4;
  v36 = type metadata accessor for EnergySitePayload(v5);
  v35 = v36;
  v39 = *(v34 + *(v36 + 20));

  v38 = *(v37 + *(v36 + 20));

  v40 = sub_1D208CB6C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v40 & 1) == 0)
  {
    v17 = v25;
    goto LABEL_7;
  }

  v6 = v25;
  v20 = *(v34 + *(v35 + 20));

  v21 = *(v37 + *(v35 + 20));

  v42[0] = v20;
  v42[1] = v21;
  v22 = &v10;
  MEMORY[0x1EEE9AC00](&v10);
  v23 = &v10 - 4;
  *(&v10 - 2) = sub_1D202117C;
  *(&v10 - 1) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF8, &qword_1D208F4B8);
  sub_1D201D1EC(v42, sub_1D2024ECC, v23, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v8);
  v24 = v6;
  if (!v6)
  {
    sub_1D2024EFC(v42);
    v41 = v43;
    if ((v43 & 1) == 0)
    {
      v18 = 0;
      v19 = v24;
      return v18;
    }

    v17 = v24;
LABEL_7:
    v11 = v17;
    v13 = *(v29 + 16);
    v12 = v29 + 16;
    v13(v33, v34, v27);
    v13(v31, v37, v27);
    sub_1D1FE0414();
    v16 = sub_1D208C59C();
    v15 = *(v29 + 8);
    v14 = v29 + 8;
    v15(v31, v27);
    v15(v33, v27);
    v18 = (v16 & 1) != 0;
    v19 = v11;
    return v18;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1D202117C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v560 = v1;
  v566 = v2;
  v700 = 0;
  v701 = 0;
  v699 = 0;
  v698 = 0;
  v490 = 0;
  v465 = sub_1D208C1EC();
  v466 = *(v465 - 8);
  v467 = v465 - 8;
  v468 = (*(v466 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v465);
  v469 = &v79[-v468];
  v470 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v471 = *(*(v470 - 8) + 64);
  v472 = (v471 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v473 = &v79[-v472];
  v474 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v475 = &v79[-v474];
  v476 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v477 = &v79[-v476];
  v478 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v479 = &v79[-v478];
  v480 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v481 = &v79[-v480];
  v482 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v483 = &v79[-v482];
  v484 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v485 = &v79[-v484];
  v486 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v487 = &v79[-v486];
  v488 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v489 = &v79[-v488];
  v491 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  v492 = (v491 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v490);
  v493 = &v79[-v492];
  v494 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v495 = &v79[-v494];
  v496 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v497 = &v79[-v496];
  v498 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v499 = &v79[-v498];
  v500 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v501 = &v79[-v500];
  v502 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v503 = &v79[-v502];
  v504 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v505 = &v79[-v504];
  v506 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v507 = &v79[-v506];
  v508 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v509 = &v79[-v508];
  v510 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v511 = &v79[-v510];
  v512 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v513 = &v79[-v512];
  v514 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v515 = &v79[-v514];
  v516 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v517 = &v79[-v516];
  v518 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v519 = &v79[-v518];
  v520 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v521 = &v79[-v520];
  v522 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v523 = &v79[-v522];
  v524 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v525 = &v79[-v524];
  v526 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v527 = &v79[-v526];
  v528 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v529 = &v79[-v528];
  v530 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v531 = &v79[-v530];
  v532 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v533 = &v79[-v532];
  v534 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v535 = &v79[-v534];
  v536 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v537 = &v79[-v536];
  v538 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v539 = &v79[-v538];
  v540 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66);
  v541 = &v79[-v540];
  v542 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v543 = &v79[-v542];
  v544 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v545 = &v79[-v544];
  v546 = type metadata accessor for EnergySitePayload.CurrentRatePlan(v71);
  v547 = *(v546 - 8);
  v548 = v546 - 8;
  v549 = (*(v547 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v546);
  v550 = &v79[-v549];
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE60, &qword_1D208FB68);
  v552 = (*(*(v551 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v551);
  v553 = &v79[-v552];
  v554 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v560);
  v555 = &v79[-v554];
  v556 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v557 = &v79[-v556];
  v558 = (v74 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75);
  v559 = &v79[-v558];
  v700 = v76;
  v701 = v77;

  v699 = v560;

  v698 = v566;

  v561 = &v697;
  v564 = 32;
  v565 = 0;
  swift_beginAccess();
  v562 = *(v560 + 16);
  v563 = *(v560 + 24);

  swift_endAccess();
  v571 = &v695;
  v695 = v562;
  v696 = v563;
  v567 = &v694;
  swift_beginAccess();
  v568 = *(v566 + 16);
  v569 = *(v566 + 24);

  swift_endAccess();
  v570 = v693;
  v693[0] = v568;
  v693[1] = v569;
  v572 = MEMORY[0x1D38948D0](v695, v696, v568, v569);
  sub_1D1FE023C(v570);
  sub_1D1FE023C(v571);
  if ((v572 & 1) == 0)
  {
    goto LABEL_162;
  }

  v458 = &v692;
  v459 = 32;
  v460 = 0;
  swift_beginAccess();
  v463 = *(v560 + 32);
  swift_endAccess();
  v461 = &v691;
  swift_beginAccess();
  v462 = *(v566 + 32);
  swift_endAccess();
  if (v463 != v462)
  {
    goto LABEL_162;
  }

  v452 = &v690;
  v453 = 32;
  v454 = 0;
  swift_beginAccess();
  v457 = *(v560 + 40);
  swift_endAccess();
  v455 = &v689;
  swift_beginAccess();
  v456 = *(v566 + 40);
  swift_endAccess();
  if (v457 != v456)
  {
    goto LABEL_162;
  }

  v441 = &v688;
  v444 = 32;
  v445 = 0;
  swift_beginAccess();
  v442 = *(v560 + 48);
  v443 = *(v560 + 56);

  swift_endAccess();
  v450 = &v686;
  v686 = v442;
  v687 = v443;
  v446 = &v685;
  swift_beginAccess();
  v447 = *(v566 + 48);
  v448 = *(v566 + 56);

  swift_endAccess();
  v449 = v684;
  v684[0] = v447;
  v684[1] = v448;
  v451 = MEMORY[0x1D38948D0](v686, v687, v447, v448);
  sub_1D1FE023C(v449);
  sub_1D1FE023C(v450);
  if ((v451 & 1) == 0)
  {
    goto LABEL_162;
  }

  v430 = &v683;
  v433 = 32;
  v434 = 0;
  swift_beginAccess();
  v431 = *(v560 + 64);
  v432 = *(v560 + 72);

  swift_endAccess();
  v439 = &v681;
  v681 = v431;
  v682 = v432;
  v435 = &v680;
  swift_beginAccess();
  v436 = *(v566 + 64);
  v437 = *(v566 + 72);

  swift_endAccess();
  v438 = v679;
  v679[0] = v436;
  v679[1] = v437;
  v440 = MEMORY[0x1D38948D0](v681, v682, v436, v437);
  sub_1D1FE023C(v438);
  sub_1D1FE023C(v439);
  if ((v440 & 1) == 0)
  {
    goto LABEL_162;
  }

  v419 = &v678;
  v422 = 32;
  v423 = 0;
  swift_beginAccess();
  v420 = *(v560 + 80);
  v421 = *(v560 + 88);

  swift_endAccess();
  v428 = &v676;
  v676 = v420;
  v677 = v421;
  v424 = &v675;
  swift_beginAccess();
  v425 = *(v566 + 80);
  v426 = *(v566 + 88);

  swift_endAccess();
  v427 = v674;
  v674[0] = v425;
  v674[1] = v426;
  v429 = MEMORY[0x1D38948D0](v676, v677, v425, v426);
  sub_1D1FE023C(v427);
  sub_1D1FE023C(v428);
  if ((v429 & 1) == 0)
  {
    goto LABEL_162;
  }

  v408 = &v673;
  v411 = 32;
  v412 = 0;
  swift_beginAccess();
  v409 = *(v560 + 96);
  v410 = *(v560 + 104);

  swift_endAccess();
  v417 = &v671;
  v671 = v409;
  v672 = v410;
  v413 = &v670;
  swift_beginAccess();
  v414 = *(v566 + 96);
  v415 = *(v566 + 104);

  swift_endAccess();
  v416 = v669;
  v669[0] = v414;
  v669[1] = v415;
  v418 = MEMORY[0x1D38948D0](v671, v672, v414, v415);
  sub_1D1FE023C(v416);
  sub_1D1FE023C(v417);
  if ((v418 & 1) == 0)
  {
    goto LABEL_162;
  }

  v397 = &v668;
  v400 = 32;
  v401 = 0;
  swift_beginAccess();
  v398 = *(v560 + 112);
  v399 = *(v560 + 120);

  swift_endAccess();
  v406 = &v666;
  v666 = v398;
  v667 = v399;
  v402 = &v665;
  swift_beginAccess();
  v403 = *(v566 + 112);
  v404 = *(v566 + 120);

  swift_endAccess();
  v405 = v664;
  v664[0] = v403;
  v664[1] = v404;
  v407 = MEMORY[0x1D38948D0](v666, v667, v403, v404);
  sub_1D1FE023C(v405);
  sub_1D1FE023C(v406);
  if ((v407 & 1) == 0)
  {
    goto LABEL_162;
  }

  v389 = &unk_1EE083000;
  v387 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v388 = &v663;
  v390 = 32;
  v391 = 0;
  swift_beginAccess();
  sub_1D2018864(v387, v559);
  swift_endAccess();
  v392 = (v566 + v389[39]);
  v393 = &v662;
  swift_beginAccess();
  sub_1D2018864(v392, v557);
  swift_endAccess();
  v394 = v553 + *(v551 + 48);
  sub_1D2018864(v559, v553);
  sub_1D2018864(v557, v394);
  v395 = *(v547 + 48);
  v396 = v547 + 48;
  if (v395(v553, 1, v546) == 1)
  {
    if (v395(v394, 1, v546) != 1)
    {
      goto LABEL_21;
    }

    sub_1D2018A44(v553);
    v386 = 1;
  }

  else
  {
    sub_1D2018864(v553, v555);
    if (v395(v394, 1, v546) == 1)
    {
      sub_1D2018ECC(v555);
LABEL_21:
      sub_1D20285DC(v553);
      v386 = 0;
      goto LABEL_19;
    }

    sub_1D2018B0C(v394, v550);
    v385 = static EnergySitePayload.CurrentRatePlan.== infix(_:_:)(v555, v550);
    sub_1D2018ECC(v550);
    sub_1D2018ECC(v555);
    sub_1D2018A44(v553);
    v386 = v385;
  }

LABEL_19:
  v384 = v386;
  sub_1D2018A44(v557);
  sub_1D2018A44(v559);
  if ((v384 & 1) == 0)
  {
    goto LABEL_162;
  }

  v374 = &unk_1EE083000;
  v370 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  v371 = &v661;
  v375 = 32;
  v376 = 0;
  swift_beginAccess();
  v372 = *v370;
  v373 = v370[1];
  sub_1D1FD0018(v372, v373);
  swift_endAccess();
  v382 = &v659;
  v659 = v372;
  v660 = v373;
  v377 = (v566 + v374[30]);
  v378 = &v658;
  swift_beginAccess();
  v379 = *v377;
  v380 = v377[1];
  sub_1D1FD0018(v379, v380);
  swift_endAccess();
  v381 = v657;
  v657[0] = v379;
  v657[1] = v380;
  v383 = MEMORY[0x1D3893F80](v659, v660, v379, v380);
  sub_1D2018FC4(v381);
  sub_1D2018FC4(v382);
  if ((v383 & 1) == 0)
  {
    goto LABEL_162;
  }

  v360 = &unk_1EE083000;
  v356 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  v357 = &v656;
  v361 = 32;
  v362 = 0;
  swift_beginAccess();
  v358 = *v356;
  v359 = v356[1];
  sub_1D1FD0018(v358, v359);
  swift_endAccess();
  v368 = &v654;
  v654 = v358;
  v655 = v359;
  v363 = (v566 + v360[29]);
  v364 = &v653;
  swift_beginAccess();
  v365 = *v363;
  v366 = v363[1];
  sub_1D1FD0018(v365, v366);
  swift_endAccess();
  v367 = v652;
  v652[0] = v365;
  v652[1] = v366;
  v369 = MEMORY[0x1D3893F80](v654, v655, v365, v366);
  sub_1D2018FC4(v367);
  sub_1D2018FC4(v368);
  if ((v369 & 1) == 0)
  {
    goto LABEL_162;
  }

  v346 = &unk_1EE083000;
  v342 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  v343 = &v651;
  v347 = 32;
  v348 = 0;
  swift_beginAccess();
  v344 = *v342;
  v345 = v342[1];
  sub_1D1FD0018(v344, v345);
  swift_endAccess();
  v354 = &v649;
  v649 = v344;
  v650 = v345;
  v349 = (v566 + v346[28]);
  v350 = &v648;
  swift_beginAccess();
  v351 = *v349;
  v352 = v349[1];
  sub_1D1FD0018(v351, v352);
  swift_endAccess();
  v353 = v647;
  v647[0] = v351;
  v647[1] = v352;
  v355 = MEMORY[0x1D3893F80](v649, v650, v351, v352);
  sub_1D2018FC4(v353);
  sub_1D2018FC4(v354);
  if ((v355 & 1) == 0)
  {
    goto LABEL_162;
  }

  v332 = &unk_1EE083000;
  v328 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  v329 = &v646;
  v333 = 32;
  v334 = 0;
  swift_beginAccess();
  v330 = *v328;
  v331 = v328[1];

  swift_endAccess();
  v340 = &v644;
  v644 = v330;
  v645 = v331;
  v335 = (v566 + v332[41]);
  v336 = &v643;
  swift_beginAccess();
  v337 = *v335;
  v338 = v335[1];

  swift_endAccess();
  v339 = v642;
  v642[0] = v337;
  v642[1] = v338;
  v341 = MEMORY[0x1D38948D0](v644, v645, v337, v338);
  sub_1D1FE023C(v339);
  sub_1D1FE023C(v340);
  if ((v341 & 1) == 0)
  {
    goto LABEL_162;
  }

  v318 = &unk_1EE083000;
  v314 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  v315 = &v641;
  v319 = 32;
  v320 = 0;
  swift_beginAccess();
  v316 = *v314;
  v317 = v314[1];

  swift_endAccess();
  v326 = &v639;
  v639 = v316;
  v640 = v317;
  v321 = (v566 + v318[50]);
  v322 = &v638;
  swift_beginAccess();
  v323 = *v321;
  v324 = v321[1];

  swift_endAccess();
  v325 = v637;
  v637[0] = v323;
  v637[1] = v324;
  v327 = MEMORY[0x1D38948D0](v639, v640, v323, v324);
  sub_1D1FE023C(v325);
  sub_1D1FE023C(v326);
  if ((v327 & 1) == 0)
  {
    goto LABEL_162;
  }

  v304 = &unk_1EE083000;
  v300 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  v301 = &v636;
  v305 = 32;
  v306 = 0;
  swift_beginAccess();
  v302 = *v300;
  v303 = v300[1];

  swift_endAccess();
  v312 = &v634;
  v634 = v302;
  v635 = v303;
  v307 = (v566 + v304[47]);
  v308 = &v633;
  swift_beginAccess();
  v309 = *v307;
  v310 = v307[1];

  swift_endAccess();
  v311 = v632;
  v632[0] = v309;
  v632[1] = v310;
  v313 = MEMORY[0x1D38948D0](v634, v635, v309, v310);
  sub_1D1FE023C(v311);
  sub_1D1FE023C(v312);
  if ((v313 & 1) == 0)
  {
    goto LABEL_162;
  }

  v290 = &unk_1EE083000;
  v286 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  v287 = &v631;
  v291 = 32;
  v292 = 0;
  swift_beginAccess();
  v288 = *v286;
  v289 = v286[1];

  swift_endAccess();
  v298 = &v629;
  v629 = v288;
  v630 = v289;
  v293 = (v566 + v290[18]);
  v294 = &v628;
  swift_beginAccess();
  v295 = *v293;
  v296 = v293[1];

  swift_endAccess();
  v297 = v627;
  v627[0] = v295;
  v627[1] = v296;
  v299 = MEMORY[0x1D38948D0](v629, v630, v295, v296);
  sub_1D1FE023C(v297);
  sub_1D1FE023C(v298);
  if ((v299 & 1) == 0)
  {
    goto LABEL_162;
  }

  v276 = &unk_1EE083000;
  v272 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  v273 = &v626;
  v277 = 32;
  v278 = 0;
  swift_beginAccess();
  v274 = *v272;
  v275 = v272[1];

  swift_endAccess();
  v284 = &v624;
  v624 = v274;
  v625 = v275;
  v279 = (v566 + v276[35]);
  v280 = &v623;
  swift_beginAccess();
  v281 = *v279;
  v282 = v279[1];

  swift_endAccess();
  v283 = v622;
  v622[0] = v281;
  v622[1] = v282;
  v285 = MEMORY[0x1D38948D0](v624, v625, v281, v282);
  sub_1D1FE023C(v283);
  sub_1D1FE023C(v284);
  if ((v285 & 1) == 0)
  {
    goto LABEL_162;
  }

  v262 = &unk_1EE083000;
  v258 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  v259 = &v621;
  v263 = 32;
  v264 = 0;
  swift_beginAccess();
  v260 = *v258;
  v261 = v258[1];

  swift_endAccess();
  v270 = &v619;
  v619 = v260;
  v620 = v261;
  v265 = (v566 + v262[36]);
  v266 = &v618;
  swift_beginAccess();
  v267 = *v265;
  v268 = v265[1];

  swift_endAccess();
  v269 = v617;
  v617[0] = v267;
  v617[1] = v268;
  v271 = MEMORY[0x1D38948D0](v619, v620, v267, v268);
  sub_1D1FE023C(v269);
  sub_1D1FE023C(v270);
  if ((v271 & 1) == 0)
  {
    goto LABEL_162;
  }

  v250 = &unk_1EE083000;
  v248 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v249 = &v616;
  v251 = 32;
  v252 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v248, v545);
  swift_endAccess();
  v253 = (v566 + v250[25]);
  v254 = &v615;
  swift_beginAccess();
  sub_1D1FD5F1C(v253, v543);
  swift_endAccess();
  v255 = &v489[*(v470 + 48)];
  sub_1D1FD5F1C(v545, v489);
  sub_1D1FD5F1C(v543, v255);
  v256 = *(v466 + 48);
  v257 = v466 + 48;
  if (v256(v489, 1, v465) == 1)
  {
    if (v256(v255, 1, v465) == 1)
    {
      sub_1D1FD6044(v489);
      v247 = 1;
      goto LABEL_43;
    }
  }

  else
  {
    sub_1D1FD5F1C(v489, v541);
    if (v256(v255, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v255, v465);
      sub_1D1FE0494();
      v246 = sub_1D208C59C();
      v245 = *(v466 + 8);
      v244 = v466 + 8;
      v245(v469, v465);
      v245(v541, v465);
      sub_1D1FD6044(v489);
      v247 = v246;
      goto LABEL_43;
    }

    (*(v466 + 8))(v541, v465);
  }

  sub_1D1FE0268(v489);
  v247 = 0;
LABEL_43:
  v243 = v247;
  sub_1D1FD6044(v543);
  sub_1D1FD6044(v545);
  if ((v243 & 1) == 0)
  {
    goto LABEL_162;
  }

  v237 = &unk_1EE083000;
  v235 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v236 = &v614;
  v238 = 32;
  v239 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v235, v539);
  swift_endAccess();
  v240 = (v566 + v237[22]);
  v241 = &v613;
  swift_beginAccess();
  sub_1D1FD5F1C(v240, v537);
  swift_endAccess();
  v242 = &v487[*(v470 + 48)];
  sub_1D1FD5F1C(v539, v487);
  sub_1D1FD5F1C(v537, v242);
  if (v256(v487, 1, v465) == 1)
  {
    if (v256(v242, 1, v465) == 1)
    {
      sub_1D1FD6044(v487);
      v234 = 1;
      goto LABEL_54;
    }
  }

  else
  {
    sub_1D1FD5F1C(v487, v535);
    if (v256(v242, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v242, v465);
      sub_1D1FE0494();
      v233 = sub_1D208C59C();
      v232 = *(v466 + 8);
      v231 = v466 + 8;
      v232(v469, v465);
      v232(v535, v465);
      sub_1D1FD6044(v487);
      v234 = v233;
      goto LABEL_54;
    }

    (*(v466 + 8))(v535, v465);
  }

  sub_1D1FE0268(v487);
  v234 = 0;
LABEL_54:
  v230 = v234;
  sub_1D1FD6044(v537);
  sub_1D1FD6044(v539);
  if ((v230 & 1) == 0)
  {
    goto LABEL_162;
  }

  v224 = &unk_1EE083000;
  v222 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v223 = &v612;
  v225 = 32;
  v226 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v222, v533);
  swift_endAccess();
  v227 = (v566 + v224[33]);
  v228 = &v611;
  swift_beginAccess();
  sub_1D1FD5F1C(v227, v531);
  swift_endAccess();
  v229 = &v485[*(v470 + 48)];
  sub_1D1FD5F1C(v533, v485);
  sub_1D1FD5F1C(v531, v229);
  if (v256(v485, 1, v465) == 1)
  {
    if (v256(v229, 1, v465) != 1)
    {
      goto LABEL_67;
    }

    sub_1D1FD6044(v485);
    v221 = 1;
  }

  else
  {
    sub_1D1FD5F1C(v485, v529);
    if (v256(v229, 1, v465) == 1)
    {
      (*(v466 + 8))(v529, v465);
LABEL_67:
      sub_1D1FE0268(v485);
      v221 = 0;
      goto LABEL_65;
    }

    (*(v466 + 32))(v469, v229, v465);
    sub_1D1FE0494();
    v220 = sub_1D208C59C();
    v219 = *(v466 + 8);
    v218 = v466 + 8;
    v219(v469, v465);
    v219(v529, v465);
    sub_1D1FD6044(v485);
    v221 = v220;
  }

LABEL_65:
  v217 = v221;
  sub_1D1FD6044(v531);
  sub_1D1FD6044(v533);
  if ((v217 & 1) == 0)
  {
    goto LABEL_162;
  }

  v210 = &unk_1EE083000;
  v208 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  v209 = &v610;
  v211 = 32;
  v212 = 0;
  swift_beginAccess();
  v215 = *v208;
  swift_endAccess();
  v213 = (v566 + v210[52]);
  v214 = &v609;
  swift_beginAccess();
  v216 = *v213;
  swift_endAccess();
  if ((v215 & 1) != (v216 & 1))
  {
    goto LABEL_162;
  }

  v202 = &unk_1EE083000;
  v200 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v201 = &v608;
  v203 = 32;
  v204 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v200, v527);
  swift_endAccess();
  v205 = (v566 + v202[23]);
  v206 = &v607;
  swift_beginAccess();
  sub_1D1FD5F1C(v205, v525);
  swift_endAccess();
  v207 = &v483[*(v470 + 48)];
  sub_1D1FD5F1C(v527, v483);
  sub_1D1FD5F1C(v525, v207);
  if (v256(v483, 1, v465) == 1)
  {
    if (v256(v207, 1, v465) == 1)
    {
      sub_1D1FD6044(v483);
      v199 = 1;
      goto LABEL_78;
    }
  }

  else
  {
    sub_1D1FD5F1C(v483, v523);
    if (v256(v207, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v207, v465);
      sub_1D1FE0494();
      v198 = sub_1D208C59C();
      v197 = *(v466 + 8);
      v196 = v466 + 8;
      v197(v469, v465);
      v197(v523, v465);
      sub_1D1FD6044(v483);
      v199 = v198;
      goto LABEL_78;
    }

    (*(v466 + 8))(v523, v465);
  }

  sub_1D1FE0268(v483);
  v199 = 0;
LABEL_78:
  v195 = v199;
  sub_1D1FD6044(v525);
  sub_1D1FD6044(v527);
  if ((v195 & 1) == 0)
  {
    goto LABEL_162;
  }

  v189 = &unk_1EE083000;
  v187 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v188 = &v606;
  v190 = 32;
  v191 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v187, v521);
  swift_endAccess();
  v192 = (v566 + v189[20]);
  v193 = &v605;
  swift_beginAccess();
  sub_1D1FD5F1C(v192, v519);
  swift_endAccess();
  v194 = &v481[*(v470 + 48)];
  sub_1D1FD5F1C(v521, v481);
  sub_1D1FD5F1C(v519, v194);
  if (v256(v481, 1, v465) == 1)
  {
    if (v256(v194, 1, v465) == 1)
    {
      sub_1D1FD6044(v481);
      v186 = 1;
      goto LABEL_89;
    }
  }

  else
  {
    sub_1D1FD5F1C(v481, v517);
    if (v256(v194, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v194, v465);
      sub_1D1FE0494();
      v185 = sub_1D208C59C();
      v184 = *(v466 + 8);
      v183 = v466 + 8;
      v184(v469, v465);
      v184(v517, v465);
      sub_1D1FD6044(v481);
      v186 = v185;
      goto LABEL_89;
    }

    (*(v466 + 8))(v517, v465);
  }

  sub_1D1FE0268(v481);
  v186 = 0;
LABEL_89:
  v182 = v186;
  sub_1D1FD6044(v519);
  sub_1D1FD6044(v521);
  if ((v182 & 1) == 0)
  {
    goto LABEL_162;
  }

  v176 = &unk_1EE083000;
  v174 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v175 = &v604;
  v177 = 32;
  v178 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v174, v515);
  swift_endAccess();
  v179 = (v566 + v176[19]);
  v180 = &v603;
  swift_beginAccess();
  sub_1D1FD5F1C(v179, v513);
  swift_endAccess();
  v181 = &v479[*(v470 + 48)];
  sub_1D1FD5F1C(v515, v479);
  sub_1D1FD5F1C(v513, v181);
  if (v256(v479, 1, v465) == 1)
  {
    if (v256(v181, 1, v465) != 1)
    {
      goto LABEL_102;
    }

    sub_1D1FD6044(v479);
    v173 = 1;
  }

  else
  {
    sub_1D1FD5F1C(v479, v511);
    if (v256(v181, 1, v465) == 1)
    {
      (*(v466 + 8))(v511, v465);
LABEL_102:
      sub_1D1FE0268(v479);
      v173 = 0;
      goto LABEL_100;
    }

    (*(v466 + 32))(v469, v181, v465);
    sub_1D1FE0494();
    v172 = sub_1D208C59C();
    v171 = *(v466 + 8);
    v170 = v466 + 8;
    v171(v469, v465);
    v171(v511, v465);
    sub_1D1FD6044(v479);
    v173 = v172;
  }

LABEL_100:
  v169 = v173;
  sub_1D1FD6044(v513);
  sub_1D1FD6044(v515);
  if ((v169 & 1) == 0)
  {
    goto LABEL_162;
  }

  v159 = &unk_1EE083000;
  v155 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  v156 = &v602;
  v160 = 32;
  v161 = 0;
  swift_beginAccess();
  v157 = *v155;
  v158 = v155[1];

  swift_endAccess();
  v167 = &v600;
  v600 = v157;
  v601 = v158;
  v162 = (v566 + v159[34]);
  v163 = &v599;
  swift_beginAccess();
  v164 = *v162;
  v165 = v162[1];

  swift_endAccess();
  v166 = v598;
  v598[0] = v164;
  v598[1] = v165;
  v168 = MEMORY[0x1D38948D0](v600, v601, v164, v165);
  sub_1D1FE023C(v166);
  sub_1D1FE023C(v167);
  if ((v168 & 1) == 0)
  {
    goto LABEL_162;
  }

  v149 = &unk_1EE083000;
  v147 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v148 = &v597;
  v150 = 32;
  v151 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v147, v509);
  swift_endAccess();
  v152 = (v566 + v149[27]);
  v153 = &v596;
  swift_beginAccess();
  sub_1D1FD5F1C(v152, v507);
  swift_endAccess();
  v154 = &v477[*(v470 + 48)];
  sub_1D1FD5F1C(v509, v477);
  sub_1D1FD5F1C(v507, v154);
  if (v256(v477, 1, v465) == 1)
  {
    if (v256(v154, 1, v465) == 1)
    {
      sub_1D1FD6044(v477);
      v146 = 1;
      goto LABEL_112;
    }
  }

  else
  {
    sub_1D1FD5F1C(v477, v505);
    if (v256(v154, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v154, v465);
      sub_1D1FE0494();
      v145 = sub_1D208C59C();
      v144 = *(v466 + 8);
      v143 = v466 + 8;
      v144(v469, v465);
      v144(v505, v465);
      sub_1D1FD6044(v477);
      v146 = v145;
      goto LABEL_112;
    }

    (*(v466 + 8))(v505, v465);
  }

  sub_1D1FE0268(v477);
  v146 = 0;
LABEL_112:
  v142 = v146;
  sub_1D1FD6044(v507);
  sub_1D1FD6044(v509);
  if ((v142 & 1) == 0)
  {
    goto LABEL_162;
  }

  v136 = &unk_1EE083000;
  v134 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v135 = &v595;
  v137 = 32;
  v138 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v134, v503);
  swift_endAccess();
  v139 = (v566 + v136[32]);
  v140 = &v594;
  swift_beginAccess();
  sub_1D1FD5F1C(v139, v501);
  swift_endAccess();
  v141 = &v475[*(v470 + 48)];
  sub_1D1FD5F1C(v503, v475);
  sub_1D1FD5F1C(v501, v141);
  if (v256(v475, 1, v465) == 1)
  {
    if (v256(v141, 1, v465) == 1)
    {
      sub_1D1FD6044(v475);
      v133 = 1;
      goto LABEL_123;
    }
  }

  else
  {
    sub_1D1FD5F1C(v475, v499);
    if (v256(v141, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v141, v465);
      sub_1D1FE0494();
      v132 = sub_1D208C59C();
      v131 = *(v466 + 8);
      v130 = v466 + 8;
      v131(v469, v465);
      v131(v499, v465);
      sub_1D1FD6044(v475);
      v133 = v132;
      goto LABEL_123;
    }

    (*(v466 + 8))(v499, v465);
  }

  sub_1D1FE0268(v475);
  v133 = 0;
LABEL_123:
  v129 = v133;
  sub_1D1FD6044(v501);
  sub_1D1FD6044(v503);
  if ((v129 & 1) == 0)
  {
    goto LABEL_162;
  }

  v123 = &unk_1EE083000;
  v121 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v122 = &v593;
  v124 = 32;
  v125 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v121, v497);
  swift_endAccess();
  v126 = (v566 + v123[45]);
  v127 = &v592;
  swift_beginAccess();
  sub_1D1FD5F1C(v126, v495);
  swift_endAccess();
  v128 = &v473[*(v470 + 48)];
  sub_1D1FD5F1C(v497, v473);
  sub_1D1FD5F1C(v495, v128);
  if (v256(v473, 1, v465) == 1)
  {
    if (v256(v128, 1, v465) == 1)
    {
      sub_1D1FD6044(v473);
      v120 = 1;
      goto LABEL_134;
    }
  }

  else
  {
    sub_1D1FD5F1C(v473, v493);
    if (v256(v128, 1, v465) != 1)
    {
      (*(v466 + 32))(v469, v128, v465);
      sub_1D1FE0494();
      v119 = sub_1D208C59C();
      v118 = *(v466 + 8);
      v117 = v466 + 8;
      v118(v469, v465);
      v118(v493, v465);
      sub_1D1FD6044(v473);
      v120 = v119;
      goto LABEL_134;
    }

    (*(v466 + 8))(v493, v465);
  }

  sub_1D1FE0268(v473);
  v120 = 0;
LABEL_134:
  v116 = v120;
  sub_1D1FD6044(v495);
  sub_1D1FD6044(v497);
  if ((v116 & 1) == 0)
  {
    goto LABEL_162;
  }

  v107 = &unk_1EE083000;
  v105 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion);
  v106 = &v591;
  v108 = 32;
  v109 = 0;
  swift_beginAccess();
  v112 = *v105;
  v113 = *(v105 + 4);
  swift_endAccess();
  v110 = (v566 + v107[48]);
  v111 = &v590;
  swift_beginAccess();
  v114 = *v110;
  v115 = *(v110 + 4);
  swift_endAccess();
  v586[6] = v112;
  v587 = v113 & 1;
  v588 = v114;
  v589 = v115 & 1;
  if (v113)
  {
    if (v589)
    {
      v104 = 1;
      goto LABEL_145;
    }

    goto LABEL_147;
  }

  v573 = v112;
  v574 = v113 & 1;
  if (v589)
  {
LABEL_147:
    v104 = 0;
    goto LABEL_145;
  }

  v104 = v573 == v588;
LABEL_145:
  if (!v104)
  {
    goto LABEL_162;
  }

  v95 = &unk_1EE083000;
  v92 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  v93 = v586;
  v96 = 32;
  v97 = 0;
  swift_beginAccess();
  v94 = *v92;

  swift_endAccess();
  v102 = &v585;
  v585 = v94;
  v98 = (v566 + v95[37]);
  v99 = &v584;
  swift_beginAccess();
  v100 = *v98;

  swift_endAccess();
  v101 = &v583;
  v583 = v100;
  v103 = sub_1D208C7BC();
  sub_1D1FD3C38(v101);
  sub_1D1FD3C38(v102);
  if ((v103 & 1) == 0)
  {
    goto LABEL_162;
  }

  v83 = &unk_1EE082000;
  v81 = (v560 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance);
  v82 = &v582;
  v84 = 32;
  v85 = 0;
  swift_beginAccess();
  v88 = *v81;
  v89 = *(v81 + 4);
  swift_endAccess();
  v86 = (v566 + v83[442]);
  v87 = &v581;
  swift_beginAccess();
  v90 = *v86;
  v91 = *(v86 + 4);
  swift_endAccess();
  v577 = v88;
  v578 = v89 & 1;
  v579 = v90;
  v580 = v91 & 1;
  if ((v89 & 1) == 0)
  {
    v575 = v88;
    v576 = v89 & 1;
    if ((v580 & 1) == 0)
    {
      v80 = v575 == v579;
      goto LABEL_158;
    }

    goto LABEL_160;
  }

  if ((v580 & 1) == 0)
  {
LABEL_160:
    v80 = 0;
    goto LABEL_158;
  }

  v80 = 1;
LABEL_158:
  if (!v80)
  {
LABEL_162:

    v464 = 0;
    return v464 & 1;
  }

  v464 = 1;
  return v464 & 1;
}

uint64_t sub_1D2024E74@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result & 1;
  return result;
}

uint64_t EnergySitePayload.hashValue.getter()
{
  type metadata accessor for EnergySitePayload(0);
  sub_1D2024F7C();
  return sub_1D208C9DC();
}

unint64_t sub_1D2024F7C()
{
  v2 = qword_1EC6BEE00;
  if (!qword_1EC6BEE00)
  {
    type metadata accessor for EnergySitePayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE00);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D202505C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 24295);
  *a1 = v2;
  v2[4] = EnergySitePayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D2025198()
{
  v2 = qword_1EC6BEE08;
  if (!qword_1EC6BEE08)
  {
    type metadata accessor for EnergySitePayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2025260()
{
  v2 = qword_1EE0828F8;
  if (!qword_1EE0828F8)
  {
    type metadata accessor for EnergySitePayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0828F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D202534C()
{
  v0 = sub_1D2014770();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C2920 = v6;
  qword_1EC6C2928 = v7;
  return result;
}

uint64_t *sub_1D20253EC()
{
  if (qword_1EC6C2918 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C2920;
}

uint64_t static EnergySitePayload.CurrentRatePlan.protoMessageName.getter()
{
  v1 = *sub_1D20253EC();

  return v1;
}

uint64_t sub_1D2025488()
{
  v4 = sub_1D208C47C();
  __swift_allocate_value_buffer(v4, qword_1EE082DB8);
  __swift_project_value_buffer(v4, qword_1EE082DB8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v0 = *(v7 + 48);
  *v1 = 1;
  v6 = v1 + v0;
  *v6 = "ratePlan";
  *(v6 + 1) = 8;
  v6[16] = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v2 = sub_1D208C45C();
  (*(*(v2 - 8) + 104))(v6, v5);
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20255A8()
{
  if (qword_1EE082DB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EE082DB8);
}

uint64_t static EnergySitePayload.CurrentRatePlan._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20255A8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t EnergySitePayload.CurrentRatePlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D20257B8(a1, v8, a2, a3);
    }

    v9 = 0;
  }

  return result;
}

uint64_t sub_1D20257B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0);
  sub_1D2025B98();
  return sub_1D208C32C();
}

uint64_t EnergySitePayload.CurrentRatePlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v34 = 0;
  v33 = 0;
  v35 = a2;
  v24 = sub_1D208C21C();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v28 = v10 - v27;
  v34 = v4;
  v33 = v3;
  v30 = *v3;

  v32 = v30;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE10, &qword_1D208F4C0);
  sub_1D2025B10();
  v31 = sub_1D208C82C();

  if (v31)
  {
    v14 = v22;
  }

  else
  {
    v16 = *v21;

    v15 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0);
    sub_1D2025B98();
    v5 = v22;
    sub_1D208C43C();
    v17 = v5;
    v18 = v5;
    if (v5)
    {
      v10[1] = v18;
    }

    v14 = v17;
  }

  v6 = v28;
  v11 = v14;
  v7 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  (*(v25 + 16))(v6, &v21[*(v7 + 20)], v24);
  v8 = v11;
  sub_1D208C1FC();
  v12 = v8;
  v13 = v8;
  if (v8)
  {
    v10[0] = v13;
  }

  return (*(v25 + 8))(v28, v24);
}

unint64_t sub_1D2025B10()
{
  v2 = qword_1EE082208[0];
  if (!qword_1EE082208[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE10, &qword_1D208F4C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EE082208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2025B98()
{
  v2 = qword_1EC6BEE18;
  if (!qword_1EC6BEE18)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE18);
    return WitnessTable;
  }

  return v2;
}

BOOL static EnergySitePayload.CurrentRatePlan.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v14 = a1;
  v23 = a2;
  v35 = 0;
  v34 = 0;
  v24 = 0;
  v15 = sub_1D208C21C();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (v16[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v19 = v8 - v18;
  v20 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v21 = v8 - v20;
  v35 = v4;
  v34 = v5;
  v22 = *v4;

  v30 = &v33;
  v33 = v22;
  v25 = *v23;

  v29 = &v32;
  v32 = v25;
  v28 = v33;
  v26 = v25;
  v27 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(v24);
  sub_1D2027478();
  v31 = sub_1D208C7BC();
  sub_1D1FD3C38(v29);
  sub_1D1FD3C38(v30);
  if (v31)
  {
    v8[0] = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
    v6 = v14 + *(v8[0] + 20);
    v9 = v16[2];
    v8[1] = v16 + 2;
    v9(v21, v6, v15);
    v9(v19, v23 + *(v8[0] + 20), v15);
    sub_1D1FE0414();
    v12 = sub_1D208C59C();
    v11 = v16[1];
    v10 = v16 + 1;
    v11(v19, v15);
    v11(v21, v15);
    return (v12 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t EnergySitePayload.CurrentRatePlan.hashValue.getter()
{
  type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  sub_1D20274F8();
  return sub_1D208C9DC();
}

void (*sub_1D2025F68(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 32942);
  *a1 = v2;
  v2[4] = EnergySitePayload.CurrentRatePlan.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D2026158()
{
  v0 = sub_1D20253EC();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C2938 = v6;
  qword_1EC6C2940 = v7;
  return result;
}

uint64_t *sub_1D20261F8()
{
  if (qword_1EC6C2930 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C2938;
}

uint64_t static EnergySitePayload.CurrentRatePlan.RatePlan.protoMessageName.getter()
{
  v1 = *sub_1D20261F8();

  return v1;
}

uint64_t sub_1D2026294()
{
  v8 = sub_1D208C47C();
  __swift_allocate_value_buffer(v8, qword_1EC6C2950);
  __swift_project_value_buffer(v8, qword_1EC6C2950);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v12 = v0;
  v1 = *(v14 + 48);
  *v0 = 1;
  v10 = v0 + v1;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v13 = *(*(sub_1D208C45C() - 8) + 104);
  (v13)(v10, v9);
  v11 = *(*(v14 - 8) + 72);
  v2 = *(v14 + 48);
  *(v12 + v11) = 2;
  v3 = v12 + v11 + v2;
  *v3 = "descriptor";
  *(v3 + 1) = 10;
  v3[16] = 2;
  v13();
  v4 = *(v14 + 48);
  v5 = (v12 + 2 * v11);
  *v5 = 3;
  v6 = v5 + v4;
  *v6 = "peaks";
  *(v6 + 1) = 5;
  v6[16] = 2;
  v13();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20264D0()
{
  if (qword_1EC6C2948 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C2950);
}

uint64_t static EnergySitePayload.CurrentRatePlan.RatePlan._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20264D0();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v9 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D1FDAE60(a1, v8);
        break;
      case 3:
        sub_1D202679C(a1, v8, a2, a3);
        break;
    }

    v9 = 0;
  }

  return result;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v42 = a2;
  v43 = a3;
  v58 = 0;
  v57 = 0;
  v59 = a2;
  v47 = sub_1D208C21C();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v51 = v12 - v50;
  v58 = v4;
  v57 = v3;
  v52 = *v3;
  v53 = v3[1];

  v54 = sub_1D208C66C();

  if (v54)
  {
    v37 = v45;
  }

  else
  {
    v5 = v45;
    v38 = *v44;
    v39 = *(v44 + 1);

    sub_1D208C41C();
    v40 = v5;
    v41 = v5;
    if (v5)
    {
      v14 = v41;

      v15 = v14;
      return result;
    }

    v37 = v40;
  }

  v33 = v37;
  v34 = *(v44 + 2);
  v35 = *(v44 + 3);

  v36 = sub_1D208C66C();

  if (v36)
  {
    v28 = v33;
  }

  else
  {
    v6 = v33;
    v29 = *(v44 + 2);
    v30 = *(v44 + 3);

    sub_1D208C41C();
    v31 = v6;
    v32 = v6;
    if (v6)
    {
      v13 = v32;

      v15 = v13;
      return result;
    }

    v28 = v31;
  }

  v24 = v28;
  v26 = *(v44 + 4);
  v25 = *(v44 + 5);
  sub_1D1FD0018(v26, v25);
  v55 = v26;
  v56 = v25;
  sub_1D2027678();
  v27 = sub_1D208C82C();
  sub_1D1FD0094(v26, v25);
  if (v27)
  {
    v19 = v24;
  }

  else
  {
    v20 = *(v44 + 4);
    v21 = *(v44 + 5);
    sub_1D1FD0018(v20, v21);
    v7 = v24;
    sub_1D208C3DC();
    v22 = v7;
    v23 = v7;
    if (v7)
    {
      v12[2] = v23;
      return sub_1D1FD0094(v20, v21);
    }

    sub_1D1FD0094(v20, v21);
    v19 = v22;
  }

  v8 = v51;
  v16 = v19;
  v9 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0);
  (*(v48 + 16))(v8, &v44[*(v9 + 28)], v47);
  v10 = v16;
  sub_1D208C1FC();
  v17 = v10;
  v18 = v10;
  if (v10)
  {
    v12[1] = v18;
  }

  return (*(v48 + 8))(v51, v47);
}

BOOL static EnergySitePayload.CurrentRatePlan.RatePlan.== infix(_:_:)(void *a1, char *a2)
{
  v28 = a1;
  v38 = a2;
  v54 = 0;
  v53 = 0;
  v29 = sub_1D208C21C();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (v30[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v33 = v8 - v32;
  v34 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v35 = v8 - v34;
  v54 = v4;
  v53 = v5;
  v36 = *v4;
  v37 = v4[1];

  v42 = &v51;
  v51 = v36;
  v52 = v37;
  v39 = *v38;
  v40 = *(v38 + 1);

  v41 = v50;
  v50[0] = v39;
  v50[1] = v40;
  v43 = MEMORY[0x1D38948D0](v51, v52, v39, v40);
  sub_1D1FE023C(v41);
  sub_1D1FE023C(v42);
  if (v43)
  {
    v20 = v28[2];
    v21 = v28[3];

    v25 = &v48;
    v48 = v20;
    v49 = v21;
    v22 = *(v38 + 2);
    v23 = *(v38 + 3);

    v24 = v47;
    v47[0] = v22;
    v47[1] = v23;
    v26 = MEMORY[0x1D38948D0](v48, v49, v22, v23);
    sub_1D1FE023C(v24);
    sub_1D1FE023C(v25);
    if (v26)
    {
      v13 = v28[4];
      v14 = v28[5];
      sub_1D1FD0018(v13, v14);
      v18 = &v45;
      v45 = v13;
      v46 = v14;
      v15 = *(v38 + 4);
      v16 = *(v38 + 5);
      sub_1D1FD0018(v15, v16);
      v17 = v44;
      v44[0] = v15;
      v44[1] = v16;
      v19 = MEMORY[0x1D3893F80](v45, v46, v15, v16);
      sub_1D2018FC4(v17);
      sub_1D2018FC4(v18);
      if (v19)
      {
        v8[0] = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0);
        v6 = v28 + *(v8[0] + 28);
        v9 = v30[2];
        v8[1] = v30 + 2;
        v9(v35, v6, v29);
        v9(v33, &v38[*(v8[0] + 28)], v29);
        sub_1D1FE0414();
        v12 = sub_1D208C59C();
        v11 = v30[1];
        v10 = v30 + 1;
        v11(v33, v29);
        v11(v35, v29);
        return (v12 & 1) != 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.hashValue.getter()
{
  type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(0);
  sub_1D20276F0();
  return sub_1D208C9DC();
}

void (*sub_1D2027288(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 5835);
  *a1 = v2;
  v2[4] = EnergySitePayload.CurrentRatePlan.RatePlan.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D2027478()
{
  v2 = qword_1EC6BEE20;
  if (!qword_1EC6BEE20)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20274F8()
{
  v2 = qword_1EC6BEE28;
  if (!qword_1EC6BEE28)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027578()
{
  v2 = qword_1EC6BEE30;
  if (!qword_1EC6BEE30)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20275F8()
{
  v2 = qword_1EE082B10;
  if (!qword_1EE082B10)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027678()
{
  v2 = qword_1EE082A28;
  if (!qword_1EE082A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20276F0()
{
  v2 = qword_1EC6BEE38;
  if (!qword_1EC6BEE38)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027770()
{
  v2 = qword_1EC6BEE40;
  if (!qword_1EC6BEE40)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027808()
{
  v2 = qword_1EE0828F0;
  if (!qword_1EE0828F0)
  {
    type metadata accessor for EnergySitePayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0828F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20278D0()
{
  v2 = qword_1EC6BEE48;
  if (!qword_1EC6BEE48)
  {
    type metadata accessor for EnergySitePayload(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027968()
{
  v2 = qword_1EE082B08;
  if (!qword_1EE082B08)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082B08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027A30()
{
  v2 = qword_1EC6BEE50;
  if (!qword_1EC6BEE50)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027AC8()
{
  v2 = qword_1EC6BEE58;
  if (!qword_1EC6BEE58)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2027C08(uint64_t a1)
{
  v4 = sub_1D208C21C();
  if (v1 <= 0x3F)
  {
    v4 = type metadata accessor for EnergySitePayload._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1D2027D24(uint64_t a1)
{
  v4 = sub_1D2027DF0(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1D208C21C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1D2027DF0(uint64_t a1)
{
  v5 = qword_1EE082A70;
  if (!qword_1EE082A70)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan(255);
    v4 = sub_1D208C7AC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EE082A70);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1D2027EDC(uint64_t a1)
{
  v3 = sub_1D208C21C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1D2027FBC(uint64_t a1)
{
  updated = sub_1D2028234(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1D1FE0FAC(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_1D2028234(uint64_t a1)
{
  v5 = qword_1EE082AD8[0];
  if (!qword_1EE082AD8[0])
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan(255);
    v4 = sub_1D208C8FC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, qword_1EE082AD8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1D20282E8()
{
  v2 = qword_1EC6C2FF0[0];
  if (!qword_1EC6C2FF0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C2FF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2028364(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(type metadata accessor for EnergySitePayload(0) + 20);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1D2028400(uint64_t a1)
{
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for EnergySitePayload(0);

  return a1;
}

void *sub_1D202847C(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1D20284B4(const void *a1, void *a2)
{
  v6 = sub_1D208C1EC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1D20285DC(void *a1)
{
  v8 = type metadata accessor for EnergySitePayload.CurrentRatePlan(0);
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {

    v6 = a1 + *(v8 + 20);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE60, &qword_1D208FB68) + 48);
  if (!v9())
  {

    v4 = &v5[*(v8 + 20)];
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

unint64_t sub_1D2028750()
{
  v2 = qword_1EE082200;
  if (!qword_1EE082200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE68, &unk_1D208FB70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082200);
    return WitnessTable;
  }

  return v2;
}

uint64_t static IntervalBlockProcessing.readingsFrom(data:)(uint64_t a1, unint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v14 = sub_1D20292D0;
  v7[32] = sub_1D202982C;
  v7[33] = sub_1D2029A48;
  v7[34] = sub_1D2029A54;
  v7[35] = sub_1D2029A40;
  v7[36] = sub_1D2029A40;
  v7[37] = sub_1D2029BE4;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v18 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE70, &unk_1D208FB80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = v7 - v8;
  v22 = v2;
  v23 = v3;
  v21 = v4;
  sub_1D1FD0018(v2, v3);
  v12 = &v15;
  v16 = v10;
  v17 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEC60, &unk_1D208FB90);
  sub_1D1FEA670(v14, v13, v5, &v19, &v20);
  sub_1D1FD0094(v10, v11);
  return v20;
}

uint64_t sub_1D2029058@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = sub_1D2029C44();
  result = static NSCoding<>.unsecureUnarchived(from:)(a1, a2, v4);
  v13 = result;
  if (v10)
  {
    *a3 = v10;
  }

  else
  {
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE90, &qword_1D208FBF8);
      MEMORY[0x1E69E5928](v13);
      sub_1D2029D30();
      sub_1D208CB7C();
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](v13);
      if (v14)
      {
        v6 = v14;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE90, &qword_1D208FBF8);
      type metadata accessor for IntervalBlockClientPayload.IntervalReading(0);
      sub_1D2029CA8();
      *a4 = sub_1D208C6DC();

      return 0;
    }

    else
    {
      type metadata accessor for IntervalBlockClientPayload.IntervalReading(0);
      result = sub_1D208C52C();
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_1D2029300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v4 = *a1;
  v5 = a1[1];
  v9 = v4;
  v10 = v5;
  sub_1D1FD0018(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEA8, &qword_1D208FC00);
  sub_1D1FEA670(sub_1D2029DB8, v7, v2, &v8, a2);
  return sub_1D1FD0094(v4, v5);
}

uint64_t sub_1D2029418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a4;
  v21 = a1;
  v22 = a2;
  v14 = a3;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v15 = 0;
  v16 = (*(*(sub_1D208C23C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v27 = v10 - v16;
  v5 = type metadata accessor for IntervalBlockClientPayload.IntervalReading(v4);
  v17 = v5;
  v18 = *(v5 - 8);
  v19 = v5 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v10 - v20;
  v38 = v10 - v20;
  v36 = v6;
  v37 = v7;
  sub_1D1FD0018(v6, v7);
  v24 = v35;
  v35[0] = v21;
  v35[1] = v22;
  v25 = v34;
  memset(v34, 0, sizeof(v34));
  v29 = sub_1D2001480();
  v28 = MEMORY[0x1E6969080];
  v30 = MEMORY[0x1E69AA8D0];
  v26 = sub_1D2029718();
  sub_1D2029734(v5, v28);
  v8 = v31;
  result = sub_1D208C37C();
  v32 = v8;
  v33 = v8;
  if (v8)
  {
    *v14 = v33;
  }

  else
  {
    if ((*(v23 + 32) & 0x80000000) != 0)
    {
      v10[0] = *(v23 + 16);
      v10[1] = *(v23 + 24);

      v11 = sub_1D208C66C();

      v12 = v11 ^ 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      *(v23 + 32) = 0;
    }

    sub_1D2006C80(v23, v13);
    (*(v18 + 56))(v13, 0, 1, v17);
    return sub_1D2006FA4(v23);
  }

  return result;
}

uint64_t sub_1D202975C(uint64_t a1)
{
  v3 = sub_1D208C4AC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1D2029898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_1D208C8EC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D20298EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D202994C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1D208C8CC();
    return sub_1D208C8BC();
  }

  return result;
}

uint64_t sub_1D20299B4(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

_BYTE **sub_1D2029A2C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1D2029A60(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v9 = a4(a1, a2, a3);
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1D208C91C();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5928](v9);
  *v5 = v9;
  result = MEMORY[0x1E69E5920](v9);
  *a2 = v5 + 1;
  return result;
}

unint64_t sub_1D2029C44()
{
  v2 = qword_1EC6BEE88;
  if (!qword_1EC6BEE88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BEE88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1D2029CA8()
{
  v2 = qword_1EC6BEE98;
  if (!qword_1EC6BEE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE90, &qword_1D208FBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2029D30()
{
  v2 = qword_1EC6BEEA0;
  if (!qword_1EC6BEEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE90, &qword_1D208FBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t static UUID.from(data:)@<X0>(uint64_t a3@<X8>)
{
  if (MEMORY[0x1D3893FB0]() == 16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB68, &qword_1D208E528);
    return sub_1D208BCEC();
  }

  else
  {
    v4 = sub_1D208BF8C();
    return (*(*(v4 - 8) + 56))(a3, 1);
  }
}

uint64_t sub_1D2029EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v22 = a1;
  v21 = a2;
  v18 = "Fatal error";
  v19 = "UnsafeBufferPointer with negative count";
  v20 = "Swift/UnsafeBufferPointer.swift";
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v23 = sub_1D208BF8C();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v6 - v26;
  v29 = v3;
  v30 = v4;
  if (v3)
  {
    v16 = v22;
    v15 = v22;
    if (v21)
    {
      v12 = v21 - v22;
    }

    else
    {
      __break(1u);
    }

    v11 = v12;
    if (v12 < 0)
    {
      sub_1D208CA4C();
      __break(1u);
    }

    v13 = v15;
    v14 = v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v10 = sub_1D208C5AC();
  if (!v10)
  {
    return (*(v24 + 56))(v17, 1, 1, v23);
  }

  v9 = v10;
  v7 = v10;
  v28 = v10;
  sub_1D202CA64();
  v8 = sub_1D202A1CC(v7);
  sub_1D208BF4C();
  (*(v24 + 32))(v17, v27, v23);
  (*(v24 + 56))(v17, 0, 1, v23);
  return MEMORY[0x1E69E5920](v8);
}

uint64_t UUID.init(string:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v31 = a1;
  v32 = a2;
  v21 = a3;
  v22 = a4;
  v16 = "Fatal error";
  v17 = "Unexpectedly found nil while unwrapping an Optional value";
  v18 = "EnergyKitFoundation/UUID.swift";
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v19 = 0;
  v37 = sub_1D208C5FC();
  v33 = *(v37 - 8);
  v34 = v37 - 8;
  v20 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v12 - v20;
  v23 = sub_1D208BF8C();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v27 = *(v24 + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v12 - v26;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v12 - v29;
  v43 = &v12 - v29;
  v41 = v6;
  v42 = v7;
  v39 = v8;
  v40 = v9;
  sub_1D208C5EC();
  sub_1D1FCD65C();
  v36 = sub_1D208C5DC();
  v38 = v10;
  (*(v33 + 8))(v35, v37);
  if ((v38 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  else
  {
    v13 = v36;
    v14 = v38;
  }

  UUID.init(data:namespace:)(v13, v14, v21, v22, v28);
  (*(v24 + 32))(v30, v28, v23);
  (*(v24 + 16))(v15, v30, v23);

  return (*(v24 + 8))(v30, v23);
}

uint64_t UUID.init(data:namespace:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v26 = a1;
  v25 = a2;
  v36 = a3;
  v37 = a4;
  v20 = "Fatal error";
  v21 = "Unexpectedly found nil while unwrapping an Optional value";
  v22 = "EnergyKitFoundation/UUID.swift";
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v23 = 0;
  v42 = sub_1D208C5FC();
  v38 = *(v42 - 8);
  v39 = v42 - 8;
  v24 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = &v17 - v24;
  v27 = sub_1D208BF8C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v17 - v30;
  v32 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v17 - v32;
  v48 = &v17 - v32;
  v46 = v7;
  v47 = v8;
  v44 = v9;
  v45 = v10;
  v34 = sub_1D208CB2C();
  v35 = v11;
  sub_1D208C5EC();
  sub_1D1FCD65C();
  v41 = sub_1D208C5DC();
  v43 = v12;
  (*(v38 + 8))(v40, v42);
  if ((v43 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  else
  {
    v17 = v41;
    v18 = v43;
  }

  v13 = v35;
  v14 = v18;
  *v35 = v17;
  v13[1] = v14;
  sub_1D1FCECE8();
  UUID.init(data:salts:)(v26, v25, v15, v31);
  (*(v28 + 32))(v33, v31, v27);
  (*(v28 + 16))(v19, v33, v27);

  return (*(v28 + 8))(v33, v27);
}

uint64_t UUID.init(uuid:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v20 = a1;
  v14 = a2;
  v15 = a3;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v22 = sub_1D208BF8C();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  v12 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v11 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v12);
  v21 = &v11 - v13;
  v28 = &v11 - v13;
  v27 = a1;
  v25 = v6;
  v26 = v7;
  v8 = UUID.data.getter();
  UUID.init(data:namespace:)(v8, v9, v14, v15, v16);
  (*(v18 + 32))(v21, v16, v22);
  (*(v18 + 16))(v17, v21, v22);
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t UUID.data.getter()
{
  v11 = v0;
  *&v9 = sub_1D208BF6C();
  *(&v9 + 1) = v1;
  v12 = v9;
  *&v13 = v9;
  *(&v13 + 1) = v1;
  v8 = v13;
  v7 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB0, &qword_1D208FC08);
  sub_1D202C62C(&v8, sub_1D202C600, v6, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], MEMORY[0x1E69E7410], v5);
  return v10;
}

uint64_t UUID.init(uuid:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v19 = a3;
  v23 = a1;
  v22 = a2;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v25 = sub_1D208BF8C();
  v20 = *(v25 - 8);
  v21 = v25 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v9 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v10);
  v16 = &v9 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v11);
  v24 = &v9 - v12;
  v30 = &v9 - v12;
  v29 = a1;
  v28 = v6;
  v15 = UUID.data.getter();
  v13 = v7;
  v18 = *(v20 + 16);
  v17 = v20 + 16;
  v18(v14, v22, v25);
  UUID.init(data:namespace:)(v15, v13, v14, v16);
  (*(v20 + 32))(v24, v16, v25);
  v18(v19, v24, v25);
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v22, v25);
  v27(v23, v25);
  return (v27)(v24, v25);
}

uint64_t UUID.init(data:namespace:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v21 = a1;
  v20 = a2;
  v26 = a3;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v28 = sub_1D208BF8C();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v15 - v15;
  v16 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v15 - v16;
  v34 = &v15 - v16;
  v32 = v7;
  v33 = v8;
  v31 = a3;
  v19 = MEMORY[0x1E6969080];
  v18 = sub_1D208CB2C();
  v17 = v9;
  v10 = UUID.data.getter();
  v11 = v17;
  *v17 = v10;
  v11[1] = v12;
  sub_1D1FCECE8();
  UUID.init(data:salts:)(v21, v20, v13, v22);
  (*(v24 + 32))(v27, v22, v28);
  (*(v24 + 16))(v23, v27, v28);
  v30 = *(v24 + 8);
  v29 = v24 + 8;
  v30(v26, v28);
  return (v30)(v27, v28);
}

uint64_t UUID.init(data:salts:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v68 = a2;
  v67 = a1;
  v47 = a4;
  v51 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84[1] = 0;
  v84[0] = 0;
  v78 = 0;
  v77 = 0;
  v48 = 0;
  v75 = 0;
  v74 = 0;
  v49 = sub_1D208C4CC();
  MEMORY[0x1EEE9AC00](0);
  v50 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D208C4FC();
  v53 = *(v52 - 8);
  v54 = v53;
  v55 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v22 - v57;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v22 - v57;
  v89 = &v22 - v57;
  v60 = sub_1D208BF8C();
  v61 = *(v60 - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v22 - v65;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v22 - v65;
  v88 = &v22 - v65;
  v86 = v7;
  v87 = v8;
  v85 = v9;
  sub_1D1FD0018(v7, v8);
  v84[5] = v67;
  v84[6] = v68;
  v69 = sub_1D2027678();
  if (sub_1D208C82C())
  {
    sub_1D202C754();
    LODWORD(v21) = 0;
    v20 = 74;
    sub_1D208CA3C();
    __break(1u);
  }

  sub_1D1FD0094(v67, v68);

  v84[4] = v59;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE90, &qword_1D208FBF8);
  v44 = v45;
  v46 = sub_1D202C78C();
  if (sub_1D208C82C())
  {
    sub_1D202C754();
    LODWORD(v21) = 0;
    v20 = 75;
    sub_1D208CA3C();
    __break(1u);
  }

  sub_1D208C4EC();
  v84[2] = v67;
  v84[3] = v68;
  v41 = sub_1D202C814();
  v40 = v41;
  v42 = sub_1D202C894();
  sub_1D208C4BC();

  v83 = v59;
  sub_1D208C83C();
  for (i = v48; ; i = v24)
  {
    v37 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB8, &qword_1D208FC10);
    sub_1D208CA1C();
    v38 = v81;
    v39 = v82;
    if (v82 >> 60 == 15)
    {
      break;
    }

    v35 = v38;
    v36 = v39;
    v26 = v39;
    v25 = v38;
    v74 = v38;
    v75 = v39;
    sub_1D1FD0018(v38, v39);
    v72 = v25;
    v73 = v26;
    v14 = sub_1D208C82C();
    if (v14)
    {
      sub_1D202C754();
      LODWORD(v21) = 0;
      v20 = 85;
      sub_1D208CA3C();
      __break(1u);
    }

    v24 = v37;
    sub_1D1FD0094(v25, v26);
    v70 = v25;
    v71 = v26;
    sub_1D208C4BC();
    sub_1D1FD0094(v25, v26);
  }

  sub_1D1FD3C38(v84);
  sub_1D208BF7C();
  v10 = sub_1D208BF6C();
  v11 = v56;
  *&v79 = v10;
  *(&v79 + 1) = v12;
  v80[1] = v79;
  *&v80[0] = v10;
  *(&v80[0] + 1) = v12;
  v27 = *(v62 + 8);
  v28 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v64, v60);
  (*(v54 + 16))(v11, v58, v52);
  sub_1D208C4DC();
  v29 = *(v54 + 8);
  v30 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v56, v52);
  sub_1D202C90C();
  v33 = sub_1D208BD5C();
  v34 = v13;
  v31 = v33;
  v32 = v13;
  v77 = v33;
  v78 = v13;
  sub_1D1FD0018(v33, v13);
  if (MEMORY[0x1D3893FB0](v33, v34) <= 16)
  {
    sub_1D202C754();
    LODWORD(v21) = 0;
    v20 = 92;
    sub_1D208CA3C();
    __break(1u);
  }

  v15 = v37;
  sub_1D1FD0094(v31, v32);
  sub_1D1FD0018(v31, v32);
  v22 = &v22;
  MEMORY[0x1EEE9AC00](&v22);
  v23 = &v22 - 4;
  v20 = v31;
  v21 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB0, &qword_1D208FC08);
  sub_1D202C480(v80, sub_1D202C98C, v23, v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  if (v15)
  {
    result = sub_1D1FD0094(v31, v32);
    __break(1u);
  }

  else
  {
    sub_1D1FD0094(v31, v32);
    BYTE6(v80[0]) = BYTE6(v80[0]) & 0xF | 0x50;
    BYTE8(v80[0]) = BYTE8(v80[0]) & 0x3F | 0x80;
    v76 = v80[0];
    v20 = *(&v80[0] + 1);
    sub_1D208BF5C();
    (*(v62 + 32))(v66, v64, v60);
    sub_1D1FD0094(v31, v32);
    v29(v58, v52);
    (*(v62 + 16))(v47, v66, v60);

    sub_1D1FD0094(v67, v68);
    v27(v66, v60);
    return v22;
  }

  return result;
}

uint64_t UUID.init(string:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v37 = a1;
  v38 = a2;
  v26 = a3;
  v21 = "Fatal error";
  v22 = "Unexpectedly found nil while unwrapping an Optional value";
  v23 = "EnergyKitFoundation/UUID.swift";
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v24 = 0;
  v43 = sub_1D208C5FC();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v25 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v41 = &v11 - v25;
  v27 = sub_1D208BF8C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v33 = *(v28 + 64);
  v30 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v11 - v30;
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v11 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v11 - v35;
  v48 = &v11 - v35;
  v46 = v6;
  v47 = v7;
  v45 = v8;
  sub_1D208C5EC();
  sub_1D1FCD65C();
  v42 = sub_1D208C5DC();
  v44 = v9;
  (*(v39 + 8))(v41, v43);
  if ((v44 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  else
  {
    v18 = v42;
    v19 = v44;
  }

  v12 = v19;
  v13 = v18;
  v15 = *(v28 + 16);
  v14 = v28 + 16;
  v15(v31, v26, v27);
  UUID.init(data:namespace:)(v13, v12, v31, v34);
  (*(v28 + 32))(v36, v34, v27);
  v15(v20, v36, v27);
  v17 = *(v28 + 8);
  v16 = v28 + 8;
  v17(v26, v27);

  return (v17)(v36, v27);
}

uint64_t sub_1D202BDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a1;
  v15 = a2;
  v16 = a3;
  sub_1D1FD0018(a2, a3);
  v13 = a2;
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB0, &qword_1D208FC08);
  sub_1D202BFCC(MEMORY[0x1E69E7508], 16, sub_1D202C9BC, v12, a1, v5, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v4);
  result = sub_1D1FD0094(a2, a3);
  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D202BF00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D1FD0018(a2, a3);
  sub_1D202C9EC();
  sub_1D208C7CC();

  sub_1D208C8DC();
  swift_unknownObjectRelease();
}

char *sub_1D202BFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = a9;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a8;
  v30 = a12;
  v31 = "Fatal error";
  v32 = "Division results in an overflow in remainder operation";
  v33 = "Swift/IntegerTypes.swift";
  v34 = "Division by zero in remainder operation";
  v35 = "self must be a properly aligned pointer for types Pointee and T";
  v36 = "Swift/UnsafePointer.swift";
  v47 = a6;
  v46 = a7;
  v45 = a8;
  v44 = a10;
  v37 = *(a8 - 8);
  v38 = a8 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  result = &v18 - v39;
  v40 = &v18 - v39;
  v41 = *(v14 - 8);
  v42 = v14 - 8;
  v15 = *(v41 + 80) + 1;
  v43 = *(v41 + 80);
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    return result;
  }

  if ((v26 & v43) == 0)
  {
    if (v23 == 1)
    {
      goto LABEL_23;
    }

    v20 = *(*(v27 - 8) + 72);
    v21 = *(v41 + 72);
    if (v21 >= v20)
    {
      if (v20)
      {
        if (v21 != 0x8000000000000000 || v20 != -1)
        {
          v19 = v21 % v20 == 0;
          goto LABEL_18;
        }

        sub_1D208CA2C();
        __break(1u);
      }

      sub_1D208CA2C();
      __break(1u);
    }

    if (v21)
    {
      if (v20 != 0x8000000000000000 || v21 != -1)
      {
        v19 = v20 % v21 == 0;
LABEL_18:
        if (v19)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      sub_1D208CA2C();
      __break(1u);
    }

    sub_1D208CA2C();
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  sub_1D208CA4C();
  __break(1u);
LABEL_23:
  v17 = v29;
  result = (v24)(v26, v40, v12);
  v18 = v17;
  if (v17)
  {
    return (*(v37 + 32))(v30, v40, v28);
  }

  return result;
}

uint64_t sub_1D202C480(uint64_t a1, uint64_t (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t sub_1D202C580@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D208BF6C();
  result = MEMORY[0x1D3893FA0](a1, 16);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D202C62C(uint64_t a1, uint64_t (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

unint64_t sub_1D202C78C()
{
  v2 = qword_1EE0829F8;
  if (!qword_1EE0829F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE90, &qword_1D208FBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0829F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C814()
{
  v2 = qword_1EE082A00;
  if (!qword_1EE082A00)
  {
    sub_1D208C4FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C894()
{
  v2 = qword_1EE082A10;
  if (!qword_1EE082A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C90C()
{
  v2 = qword_1EE082A08;
  if (!qword_1EE082A08)
  {
    sub_1D208C4CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C9EC()
{
  v2 = qword_1EE082A30;
  if (!qword_1EE082A30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202CA64()
{
  v2 = qword_1EC6BEEC0;
  if (!qword_1EC6BEEC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BEEC0);
    return ObjCClassMetadata;
  }

  return v2;
}

EnergyKitFoundation::DatabaseType_optional __swiftcall DatabaseType.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1D208CB2C();
  *v2 = "owned";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "shared";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  *(v2 + 48) = "owned_shared";
  *(v2 + 56) = 12;
  *(v2 + 64) = 2;
  sub_1D1FCECE8();
  v5 = sub_1D208CA5C();

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (v5 != 2)
      {

        *v4 = 3;
        return result;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

void static DatabaseType.allCases.getter()
{
  sub_1D208CB2C();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  sub_1D1FCECE8();
}

unint64_t sub_1D202CF24()
{
  v2 = qword_1EC6BEEC8;
  if (!qword_1EC6BEEC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D202D094@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseType.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1D202D1F0()
{
  v2 = qword_1EC6BEED0;
  if (!qword_1EC6BEED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202D284()
{
  v2 = qword_1EC6BEED8;
  if (!qword_1EC6BEED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEEE0, &qword_1D208FCC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEED8);
    return WitnessTable;
  }

  return v2;
}

id UsageSummaryRecords.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id UsageSummaryRecords.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for UsageSummaryRecords();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id UsageSummaryRecords.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UsageSummaryRecords();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EnergyWindowNotifications.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id EnergyWindowNotifications.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for EnergyWindowNotifications();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id EnergyWindowNotifications.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyWindowNotifications();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntervalBlockPayload.utilityID.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t IntervalBlockPayload.utilityID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t IntervalBlockPayload.subscriptionID.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t IntervalBlockPayload.subscriptionID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t IntervalBlockPayload.usagePointID.getter()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t IntervalBlockPayload.usagePointID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t IntervalBlockPayload.meterID.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t IntervalBlockPayload.meterID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t IntervalBlockPayload.sourceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for IntervalBlockPayload(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 52)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

uint64_t type metadata accessor for IntervalBlockPayload(uint64_t a1)
{
  v2 = qword_1EC6C46B0;
  if (!qword_1EC6C46B0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_1D202DD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for IntervalBlockPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D203BB14(v3, &v5 - v8);
  IntervalBlockPayload.sourceTime.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D203BFB8(v14);
}

uint64_t sub_1D202DE44(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return IntervalBlockPayload.sourceTime.setter(v7);
}

uint64_t IntervalBlockPayload.sourceTime.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for IntervalBlockPayload(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 52)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*IntervalBlockPayload.sourceTime.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 9099);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 9099);
  v8 = __swift_coroFrameAllocStub(v5, 9099);
  v6[4] = v8;
  IntervalBlockPayload.sourceTime.getter(v8);
  return sub_1D202E17C;
}

void sub_1D202E17C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    IntervalBlockPayload.sourceTime.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    IntervalBlockPayload.sourceTime.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL IntervalBlockPayload.hasSourceTime.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD5F1C((v0 + *(v2 + 52)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.clearSourceTime()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for IntervalBlockPayload(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 52)));
}

uint64_t IntervalBlockPayload.start.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for IntervalBlockPayload(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 56)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

char *sub_1D202E654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for IntervalBlockPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D203BB14(v3, &v5 - v8);
  IntervalBlockPayload.start.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D203BFB8(v14);
}

uint64_t sub_1D202E790(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return IntervalBlockPayload.start.setter(v7);
}

uint64_t IntervalBlockPayload.start.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for IntervalBlockPayload(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 56)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*IntervalBlockPayload.start.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 19809);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 19809);
  v8 = __swift_coroFrameAllocStub(v5, 19809);
  v6[4] = v8;
  IntervalBlockPayload.start.getter(v8);
  return sub_1D202EAC8;
}

void sub_1D202EAC8(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    IntervalBlockPayload.start.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    IntervalBlockPayload.start.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL IntervalBlockPayload.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD5F1C((v0 + *(v2 + 56)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.clearStart()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for IntervalBlockPayload(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 56)));
}

uint64_t IntervalBlockPayload.end.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = a1;
  v17 = 0;
  v10 = 0;
  v2 = sub_1D208BF1C();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = &v6 - v9;
  v17 = v1;
  v4 = type metadata accessor for IntervalBlockPayload(v3);
  sub_1D1FD5F1C((v1 + *(v4 + 60)), v11);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = *(v13 + 48);
  v16 = v13 + 48;
  if (v15(v11, 1) != 1)
  {
    return (*(v13 + 32))(v6, v11, v12);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v15)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D1FD6044(v11);
  }

  return result;
}

char *sub_1D202EFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1D208C1EC();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for IntervalBlockPayload(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1D203BB14(v3, &v5 - v8);
  IntervalBlockPayload.end.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1D203BFB8(v14);
}

uint64_t sub_1D202F0DC(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return IntervalBlockPayload.end.setter(v7);
}

uint64_t IntervalBlockPayload.end.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for IntervalBlockPayload(v7);
  sub_1D1FD6448(v8, (v1 + *(v3 + 60)));
  return (*(v9 + 8))(v12, v11);
}

uint64_t (*IntervalBlockPayload.end.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 29616);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 29616);
  v8 = __swift_coroFrameAllocStub(v5, 29616);
  v6[4] = v8;
  IntervalBlockPayload.end.getter(v8);
  return sub_1D202F414;
}

void sub_1D202F414(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    IntervalBlockPayload.end.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    IntervalBlockPayload.end.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

BOOL IntervalBlockPayload.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload(0);
  sub_1D1FD5F1C((v0 + *(v2 + 60)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.clearEnd()()
{
  v7 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v4 - v4;
  v7 = v0;
  v5 = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v6, 1);
  v3 = type metadata accessor for IntervalBlockPayload(v5);
  sub_1D1FD6448(v6, (v0 + *(v3 + 60)));
}

void IntervalBlockPayload.unit.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockPayload.unit.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

void IntervalBlockPayload.commodity.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockPayload.commodity.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

void IntervalBlockPayload.flowDirection.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockPayload.flowDirection.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t type metadata accessor for IntervalBlockPayload.IntervalReading(uint64_t a1)
{
  v2 = qword_1EC6C46C0;
  if (!qword_1EC6C46C0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t IntervalBlockPayload.readings.getter()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t IntervalBlockPayload.readings.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
}

uint64_t IntervalBlockPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlockPayload(0) + 48);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t IntervalBlockPayload.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for IntervalBlockPayload(v8);
  (*(v10 + 40))(v1 + *(v4 + 48), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t IntervalBlockPayload.FlowDirection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.FlowDirection.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        v5 = 1;
        break;
      case 2:
        v4 = 2;
        v5 = 1;
        break;
      case 3:
        v4 = 3;
        v5 = 1;
        break;
      default:
        v4 = a1;
        v5 = 0;
        break;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.FlowDirection.rawValue.getter()
{
  v3 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  switch(v3)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1D202FF04@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.FlowDirection.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D202FF70()
{
  v2 = qword_1EC6BEEE8;
  if (!qword_1EC6BEEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2030024()
{
  v2 = qword_1EC6BEEF0;
  if (!qword_1EC6BEEF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockPayload.Commodity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}