uint64_t ProtoHeartRateDevice.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179E634@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179E698(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearName()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.manufacturer.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179E8A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179E904(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.manufacturer.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.manufacturer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearManufacturer()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.model.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179EB0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179EB70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.model.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.model.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearModel()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.hardwareVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179ED78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179EDDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.hardwareVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.hardwareVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearHardwareVersion()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.firmwareVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179EFE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179F048(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 36));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.firmwareVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.firmwareVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearFirmwareVersion()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.softwareVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179F250@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179F2B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.softwareVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.softwareVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearSoftwareVersion()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.localIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179F4BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 44));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179F520(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 44));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.localIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.localIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2517A385C;
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearLocalIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 44));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.udiDeviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25179F728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ProtoHeartRateDevice(0) + 48));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_25179F78C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 48));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t ProtoHeartRateDevice.udiDeviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ProtoHeartRateDevice(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*ProtoHeartRateDevice.udiDeviceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for ProtoHeartRateDevice(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25179F8D8;
}

void sub_25179F8DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall ProtoHeartRateDevice.clearUdiDeviceIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for ProtoHeartRateDevice(0) + 48));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t ProtoHeartRateDevice.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517B30F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProtoHeartRateDevice.unknownFields.setter(uint64_t a1)
{
  v3 = sub_2517B30F0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *ProtoHeartRateDevice.init()@<X0>(uint64_t a1@<X8>)
{
  sub_2517B30E0();
  result = type metadata accessor for ProtoHeartRateDevice(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + result[10]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + result[11]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + result[12]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

double ProtoHeartRate.confidence.getter()
{
  v1 = v0 + *(type metadata accessor for ProtoHeartRate(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_25179FC04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25179FC3C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for ProtoHeartRate(0);
  v5 = a1 + *(result + 32);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_25179FC88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ProtoHeartRate(0);
  v5 = a2 + *(result + 32);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t ProtoHeartRate.confidence.setter(double a1)
{
  result = type metadata accessor for ProtoHeartRate(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ProtoHeartRate.confidence.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ProtoHeartRate(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_25179FD68;
}

uint64_t sub_25179FD68(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall ProtoHeartRate.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for ProtoHeartRate(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ProtoHeartRate.uuidString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProtoHeartRate.uuidString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ProtoHeartRate.device.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for ProtoHeartRate(0);
  sub_2517A000C(v1 + *(v6 + 36), v5);
  v7 = type metadata accessor for ProtoHeartRateDevice(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_2517A012C(v5, a1);
  }

  sub_2517B30E0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v7[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v7[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v7[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v7[11]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a1 + v7[12]);
  *v16 = 0;
  v16[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2517A00A0(v5);
  }

  return result;
}

uint64_t sub_2517A000C(uint64_t a1, uint64_t a2)
{
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2517A00A0(uint64_t a1)
{
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2517A012C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2517A01B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A06AC(a1, v7);
  v8 = *(type metadata accessor for ProtoHeartRate(0) + 36);
  sub_2517A00A0(a2 + v8);
  sub_2517A012C(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t ProtoHeartRate.device.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoHeartRate(0) + 36);
  sub_2517A00A0(v1 + v3);
  sub_2517A012C(a1, v1 + v3);
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ProtoHeartRate.device.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoHeartRateDevice(0);
  v5[2] = v10;
  v11 = *(v10 - 1);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoHeartRate(0) + 36);
  *(v5 + 12) = v16;
  sub_2517A000C(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_2517B30E0();
    v18 = (v15 + v10[5]);
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + v10[6]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v15 + v10[7]);
    *v20 = 0;
    v20[1] = 0;
    v21 = (v15 + v10[8]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v15 + v10[9]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v15 + v10[10]);
    *v23 = 0;
    v23[1] = 0;
    v24 = (v15 + v10[11]);
    *v24 = 0;
    v24[1] = 0;
    v25 = (v15 + v10[12]);
    *v25 = 0;
    v25[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2517A00A0(v9);
    }
  }

  else
  {
    sub_2517A012C(v9, v15);
  }

  return sub_2517A05A0;
}

void sub_2517A05A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2517A06AC((*a1)[5], v4);
    sub_2517A00A0(v9 + v3);
    sub_2517A012C(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2517A36C0(v5, type metadata accessor for ProtoHeartRateDevice);
  }

  else
  {
    sub_2517A00A0(v9 + v3);
    sub_2517A012C(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2517A06AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ProtoHeartRate.hasDevice.getter()
{
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ProtoHeartRate(0);
  sub_2517A000C(v0 + *(v4 + 36), v3);
  v5 = type metadata accessor for ProtoHeartRateDevice(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_2517A00A0(v3);
  return v6;
}

Swift::Void __swiftcall ProtoHeartRate.clearDevice()()
{
  v1 = *(type metadata accessor for ProtoHeartRate(0) + 36);
  sub_2517A00A0(v0 + v1);
  v2 = type metadata accessor for ProtoHeartRateDevice(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoHeartRate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoHeartRate(0) + 28);
  v4 = sub_2517B30F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoHeartRate.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoHeartRate(0) + 28);
  v4 = sub_2517B30F0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProtoHeartRate.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for ProtoHeartRate(0);
  sub_2517B30E0();
  v3 = &a1[*(v2 + 32)];
  *v3 = 0;
  v3[8] = 1;
  v4 = *(v2 + 36);
  v5 = type metadata accessor for ProtoHeartRateDevice(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_2517A0A90()
{
  v0 = sub_2517B3240();
  __swift_allocate_value_buffer(v0, qword_27F45E9F8);
  __swift_project_value_buffer(v0, qword_27F45E9F8);
  sub_2517A3784(0, &qword_27F45EAD0, sub_2517A37E8, MEMORY[0x277D84560]);
  sub_2517A37E8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2517B3BF0;
  v5 = v24 + v4;
  v6 = v24 + v4 + *(v2 + 56);
  *(v24 + v4) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2517B3220();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "manufacturer";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "model";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "hardwareVersion";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "firmwareVersion";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "softwareVersion";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "localIdentifier";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "udiDeviceIdentifier";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  return sub_2517B3230();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ProtoHeartRateDevice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2517B3140();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
LABEL_12:
          type metadata accessor for ProtoHeartRateDevice(0);
          sub_2517B3170();
        }
      }

      else if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_12;
      }

      result = sub_2517B3140();
    }
  }

  return result;
}

uint64_t ProtoHeartRateDevice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2517A10AC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_2517A1124(v3, a1, a2, a3);
    sub_2517A119C(v3, a1, a2, a3);
    sub_2517A1214(v3, a1, a2, a3);
    sub_2517A128C(v3, a1, a2, a3);
    sub_2517A1304(v3, a1, a2, a3);
    sub_2517A137C(v3, a1, a2, a3);
    sub_2517A13F4(v3, a1, a2, a3);
    return sub_2517B30D0();
  }

  return result;
}

uint64_t sub_2517A10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A1124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A13F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRateDevice(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_2517B3200();
  }

  return result;
}

uint64_t sub_2517A14B8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2517B30E0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = a1[12];
  v15 = (a2 + a1[11]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v14);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_2517A1554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517B30F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2517A15BC(uint64_t a1)
{
  v3 = sub_2517B30F0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2517A1674(uint64_t a1, uint64_t a2)
{
  v4 = sub_2517A2D38(&qword_27F45EAB8, type metadata accessor for ProtoHeartRateDevice, &protocol conformance descriptor for ProtoHeartRateDevice);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2517A1714(uint64_t a1)
{
  v2 = sub_2517A2D38(&qword_27F45EA58, type metadata accessor for ProtoHeartRateDevice, &protocol conformance descriptor for ProtoHeartRateDevice);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2517A1780(uint64_t a1, uint64_t a2)
{
  sub_2517A2D38(&qword_27F45EA58, type metadata accessor for ProtoHeartRateDevice, &protocol conformance descriptor for ProtoHeartRateDevice);

  return sub_2517B31E0();
}

uint64_t sub_2517A181C()
{
  v0 = sub_2517B3240();
  __swift_allocate_value_buffer(v0, qword_27F45EA18);
  __swift_project_value_buffer(v0, qword_27F45EA18);
  sub_2517A3784(0, &qword_27F45EAD0, sub_2517A37E8, MEMORY[0x277D84560]);
  sub_2517A37E8(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2517B3C00;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2517B3220();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "value";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "uuidString";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "device";
  *(v15 + 8) = 6;
  *(v15 + 16) = 2;
  v9();
  return sub_2517B3230();
}

uint64_t sub_2517A1AE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2517B3240();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ProtoHeartRate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2517B3140();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        sub_2517B3160();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          type metadata accessor for ProtoHeartRate(0);
          sub_2517B3150();
          break;
        case 4:
          sub_2517B3180();
          break;
        case 5:
          sub_2517A1C80(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_2517A1C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtoHeartRate(0);
  type metadata accessor for ProtoHeartRateDevice(0);
  sub_2517A2D38(&qword_27F45EA58, type metadata accessor for ProtoHeartRateDevice, &protocol conformance descriptor for ProtoHeartRateDevice);
  return sub_2517B3190();
}

uint64_t ProtoHeartRate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_2517B31F0(), !v4))
  {
    if (!v3[1] || (result = sub_2517B31F0(), !v4))
    {
      result = sub_2517A1E44(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3[3];
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = v3[2] & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {
          sub_2517B3200();
        }

        sub_2517A1EBC(v3, a1, a2, a3);
        type metadata accessor for ProtoHeartRate(0);
        return sub_2517B30D0();
      }
    }
  }

  return result;
}

uint64_t sub_2517A1E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProtoHeartRate(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_2517B31F0();
  }

  return result;
}

uint64_t sub_2517A1EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ProtoHeartRateDevice(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProtoHeartRate(0);
  sub_2517A000C(a1 + *(v12 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2517A00A0(v7);
  }

  sub_2517A012C(v7, v11);
  sub_2517A2D38(&qword_27F45EA58, type metadata accessor for ProtoHeartRateDevice, &protocol conformance descriptor for ProtoHeartRateDevice);
  sub_2517B3210();
  return sub_2517A36C0(v11, type metadata accessor for ProtoHeartRateDevice);
}

uint64_t sub_2517A2110(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_2517B34D0();
  a1(0);
  sub_2517A2D38(a2, a3, a4);
  sub_2517B32C0();
  return sub_2517B34F0();
}

uint64_t sub_2517A2198@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_2517B30E0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = &a2[v4];
  *v6 = 0;
  v6[8] = 1;
  v7 = type metadata accessor for ProtoHeartRateDevice(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v5], 1, 1, v7);
}

uint64_t sub_2517A2254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_2517B30F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2517A22C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_2517B30F0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2517A2394(uint64_t a1, uint64_t a2)
{
  v4 = sub_2517A2D38(&qword_27F45EAB0, type metadata accessor for ProtoHeartRate, &protocol conformance descriptor for ProtoHeartRate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2517A2438@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2517B3240();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2517A24D4(uint64_t a1)
{
  v2 = sub_2517A2D38(&qword_27F45EA70, type metadata accessor for ProtoHeartRate, &protocol conformance descriptor for ProtoHeartRate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2517A2544(uint64_t a1, uint64_t a2)
{
  sub_2517B34D0();
  sub_2517B32C0();
  return sub_2517B34F0();
}

uint64_t sub_2517A259C(uint64_t a1, uint64_t a2)
{
  sub_2517A2D38(&qword_27F45EA70, type metadata accessor for ProtoHeartRate, &protocol conformance descriptor for ProtoHeartRate);

  return sub_2517B31E0();
}

uint64_t sub_2517A261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2517B34D0();
  sub_2517B32C0();
  return sub_2517B34F0();
}

uint64_t _s21HealthHeartRateStream05ProtobC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  sub_2517A362C(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_18;
  }

  v15 = type metadata accessor for ProtoHeartRate(0);
  v16 = *(v15 + 32);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      goto LABEL_18;
    }
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_2517B34A0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = *(v15 + 36);
  v22 = *(v12 + 48);
  sub_2517A000C(a1 + v21, v14);
  sub_2517A000C(a2 + v21, &v14[v22]);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_2517A00A0(v14);
LABEL_21:
      sub_2517B30F0();
      sub_2517A2D38(&qword_27F45EAC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v24 = sub_2517B32D0();
      return v24 & 1;
    }

    goto LABEL_17;
  }

  sub_2517A000C(v14, v10);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    sub_2517A36C0(v10, type metadata accessor for ProtoHeartRateDevice);
LABEL_17:
    sub_2517A36C0(v14, sub_2517A362C);
    goto LABEL_18;
  }

  sub_2517A012C(&v14[v22], v7);
  v26 = _s21HealthHeartRateStream05ProtobC6DeviceV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_2517A36C0(v7, type metadata accessor for ProtoHeartRateDevice);
  sub_2517A36C0(v10, type metadata accessor for ProtoHeartRateDevice);
  sub_2517A00A0(v14);
  if (v26)
  {
    goto LABEL_21;
  }

LABEL_18:
  v24 = 0;
  return v24 & 1;
}

uint64_t _s21HealthHeartRateStream05ProtobC6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2517B34A0();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2517B34A0();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_2517B34A0();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_2517B34A0();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_2517B34A0();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[10];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48)
    {
      return 0;
    }

    if (*v45 != *v47 || v46 != v48)
    {
      v49 = v4;
      v50 = sub_2517B34A0();
      v4 = v49;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v48)
  {
    return 0;
  }

  v51 = v4[11];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = v54[1];
  if (v53)
  {
    if (!v55)
    {
      return 0;
    }

    if (*v52 != *v54 || v53 != v55)
    {
      v56 = v4;
      v57 = sub_2517B34A0();
      v4 = v56;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v55)
  {
    return 0;
  }

  v58 = v4[12];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (v62 && (*v59 == *v61 && v60 == v62 || (sub_2517B34A0() & 1) != 0))
    {
      goto LABEL_63;
    }
  }

  else if (!v62)
  {
LABEL_63:
    sub_2517B30F0();
    sub_2517A2D38(&qword_27F45EAC8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2517B32D0() & 1;
  }

  return 0;
}

uint64_t sub_2517A2D38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2517A2FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2517B30F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2517A30B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2517B30F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2517A3170(uint64_t a1)
{
  sub_2517B30F0();
  if (v1 <= 0x3F)
  {
    sub_2517A35E0(319, &qword_27F45EA90, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2517A3228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2517B30F0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2517A3390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2517B30F0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2517A3784(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void sub_2517A34E4(uint64_t a1)
{
  sub_2517B30F0();
  if (v1 <= 0x3F)
  {
    sub_2517A35E0(319, &qword_27F45EAA8, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_2517A3784(319, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2517A35E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2517B33D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2517A362C(uint64_t a1)
{
  if (!qword_27F45EAC0)
  {
    sub_2517A3784(255, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F45EAC0);
    }
  }
}

uint64_t sub_2517A36C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

void sub_2517A3784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2517A37E8(uint64_t a1)
{
  if (!qword_27F45EAD8)
  {
    sub_2517B3220();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F45EAD8);
    }
  }
}

uint64_t HeartRateDevice.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HeartRateDevice.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HeartRateDevice.manufacturer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t HeartRateDevice.manufacturer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t HeartRateDevice.model.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t HeartRateDevice.model.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t HeartRateDevice.hardwareVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t HeartRateDevice.hardwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t HeartRateDevice.firmwareVersion.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t HeartRateDevice.firmwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t HeartRateDevice.softwareVersion.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t HeartRateDevice.softwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t HeartRateDevice.localIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t HeartRateDevice.localIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t HeartRateDevice.udiDeviceIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t HeartRateDevice.udiDeviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t HeartRate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517B3060();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeartRate.confidence.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HeartRate(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HeartRate.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeartRate(0) + 28);
  v4 = sub_2517B30C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeartRate.device.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeartRate(0) + 32));
  v4 = v3[3];
  v5 = v3[5];
  v20 = v3[4];
  v6 = v20;
  v21 = v5;
  v7 = v3[7];
  v9 = v3[5];
  v22 = v3[6];
  v8 = v22;
  v23 = v7;
  v10 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v19 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  a1[2] = v18;
  a1[3] = v4;
  *a1 = v13;
  a1[1] = v11;
  v14 = v3[7];
  a1[6] = v8;
  a1[7] = v14;
  a1[4] = v6;
  a1[5] = v9;
  return sub_2517A43B8(v17, &v16);
}

uint64_t _s21HealthHeartRateStream0bC6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v103 = a1[12];
  v107 = a1[13];
  v14 = a1[14];
  v106 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v18 = a2[3];
  v17 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v104 = a2[12];
  v26 = a2[13];
  v102 = a2[14];
  v105 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v95 = a2[7];
      v98 = a2[8];
      v79 = a1[11];
      v80 = a2[13];
      v77 = a2[2];
      v78 = a1[2];
      v27 = a1[14];
      v84 = a2[5];
      v86 = a1[4];
      v28 = a1[10];
      v90 = a1[6];
      v92 = a2[6];
      v29 = a2[11];
      v30 = a2[10];
      v88 = a1[5];
      v31 = a1[8];
      v32 = a1[9];
      v82 = a2[4];
      v33 = a2[9];
      v34 = a1[7];
      v35 = sub_2517B34A0();
      v22 = v95;
      v21 = v98;
      v9 = v34;
      v24 = v33;
      v12 = v32;
      v5 = v86;
      v10 = v31;
      v8 = v88;
      v7 = v90;
      v23 = v30;
      v4 = v78;
      v13 = v79;
      v25 = v29;
      v19 = v92;
      v11 = v28;
      v17 = v82;
      v20 = v84;
      v14 = v27;
      v16 = v77;
      v26 = v80;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v6)
  {
    if (!v18)
    {
      return 0;
    }

    if (v4 != v16 || v6 != v18)
    {
      v96 = v22;
      v99 = v21;
      v36 = v14;
      v83 = v17;
      v85 = v20;
      v37 = v11;
      v38 = v13;
      v39 = v25;
      v40 = v23;
      v87 = v5;
      v89 = v8;
      v41 = v10;
      v42 = v12;
      v43 = v24;
      v91 = v7;
      v93 = v19;
      v44 = v9;
      v45 = sub_2517B34A0();
      v9 = v44;
      v19 = v93;
      v22 = v96;
      v21 = v99;
      v24 = v43;
      v12 = v42;
      v20 = v85;
      v5 = v87;
      v10 = v41;
      v8 = v89;
      v7 = v91;
      v23 = v40;
      v25 = v39;
      v13 = v38;
      v11 = v37;
      v17 = v83;
      v14 = v36;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v5 != v17 || v8 != v20)
    {
      v97 = v22;
      v100 = v21;
      v81 = v26;
      v94 = v19;
      v46 = v14;
      v47 = v11;
      v48 = v13;
      v49 = v25;
      v50 = v23;
      v51 = v10;
      v52 = v12;
      v53 = v24;
      v54 = v7;
      v55 = v9;
      v56 = sub_2517B34A0();
      v22 = v97;
      v21 = v100;
      v9 = v55;
      v7 = v54;
      v24 = v53;
      v12 = v52;
      v10 = v51;
      v23 = v50;
      v25 = v49;
      v13 = v48;
      v11 = v47;
      v14 = v46;
      v19 = v94;
      v26 = v81;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v101 = v21;
      v57 = v14;
      v58 = v11;
      v59 = v13;
      v60 = v25;
      v61 = v23;
      v62 = v10;
      v63 = v12;
      v64 = v24;
      v65 = sub_2517B34A0();
      v21 = v101;
      v24 = v64;
      v12 = v63;
      v10 = v62;
      v23 = v61;
      v25 = v60;
      v13 = v59;
      v11 = v58;
      v14 = v57;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v66 = v14;
      v67 = v11;
      v68 = v13;
      v69 = v25;
      v70 = v23;
      v71 = sub_2517B34A0();
      v23 = v70;
      v25 = v69;
      v13 = v68;
      v11 = v67;
      v14 = v66;
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v25)
    {
      v72 = v14;
      v73 = sub_2517B34A0();
      v14 = v72;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (v107)
  {
    if (!v26)
    {
      return 0;
    }

    if (v103 != v104 || v107 != v26)
    {
      v74 = v14;
      v75 = sub_2517B34A0();
      v14 = v74;
      if ((v75 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v106)
  {
    if (v105 && (v14 == v102 && v106 == v105 || (sub_2517B34A0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v105)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for HeartRate(uint64_t a1)
{
  result = qword_27F45EAE0;
  if (!qword_27F45EAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s21HealthHeartRateStream0bC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2517B3030() & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = type metadata accessor for HeartRate(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  v10 = v4;
  if ((sub_2517B3090() & 1) == 0)
  {
LABEL_11:
    v28 = 0;
    return v28 & 1;
  }

  v11 = (a1 + *(v10 + 32));
  v12 = v11[5];
  v13 = v11[3];
  v49 = v11[4];
  v50 = v12;
  v14 = v11[5];
  v15 = v11[7];
  v51 = v11[6];
  v52 = v15;
  v16 = v11[1];
  v46[0] = *v11;
  v46[1] = v16;
  v17 = v11[3];
  v47 = v11[2];
  v48 = v17;
  v42 = v49;
  v43 = v14;
  v18 = v11[7];
  v44 = v51;
  v45 = v18;
  v40 = v47;
  v41 = v13;
  v38 = v46[0];
  v39 = v16;
  v19 = (a2 + *(v10 + 32));
  v20 = v19[5];
  v21 = v19[3];
  v56 = v19[4];
  v57 = v20;
  v22 = v19[5];
  v23 = v19[7];
  v58 = v19[6];
  v59 = v23;
  v24 = v19[1];
  v25 = v19[3];
  v54 = v19[2];
  v55 = v25;
  v26 = v19[1];
  v53[0] = *v19;
  v53[1] = v26;
  v34 = v56;
  v35 = v22;
  v27 = v19[7];
  v36 = v58;
  v37 = v27;
  v30 = v53[0];
  v31 = v24;
  v32 = v54;
  v33 = v21;
  v28 = _s21HealthHeartRateStream0bC6DeviceV2eeoiySbAC_ACtFZ_0(&v38, &v30);
  v60[4] = v34;
  v60[5] = v35;
  v60[6] = v36;
  v60[7] = v37;
  v60[0] = v30;
  v60[1] = v31;
  v60[2] = v32;
  v60[3] = v33;
  sub_2517A43B8(v46, v61);
  sub_2517A43B8(v53, v61);
  sub_2517A4A00(v60);
  v61[4] = v42;
  v61[5] = v43;
  v61[6] = v44;
  v61[7] = v45;
  v61[0] = v38;
  v61[1] = v39;
  v61[2] = v40;
  v61[3] = v41;
  sub_2517A4A00(v61);
  return v28 & 1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2517A45D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t sub_2517A4630(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2517A46C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2517B3060();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2517B30C0();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
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

uint64_t sub_2517A47F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2517B3060();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2517B30C0();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2517A4904(uint64_t a1)
{
  sub_2517B3060();
  if (v1 <= 0x3F)
  {
    sub_2517A49B0();
    if (v2 <= 0x3F)
    {
      sub_2517B30C0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2517A49B0()
{
  if (!qword_27F45EAA8)
  {
    v0 = sub_2517B33D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45EAA8);
    }
  }
}

void sub_2517A4AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2517A4B74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_2517A4A3C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A9378(a1, v10, sub_2517A4A3C);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_2517A9B10(v10, v11 + v12, sub_2517A4A3C);
  return swift_endAccess();
}

uint64_t sub_2517A4C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_2517A9378(v2 + v4, a2, sub_2517A4A3C);
}

uint64_t sub_2517A4CD4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_2517A9B10(a1, v2 + v4, sub_2517A4A3C);
  return swift_endAccess();
}

uint64_t sub_2517A4DA4()
{
  sub_2517A927C(0);
  MEMORY[0x28223BE20](v0 - 8);
  v53 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A4A3C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A4AA4(0, &qword_27F45EC20, type metadata accessor for HeartRate, MEMORY[0x277D85780]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v37 - v7;
  sub_2517A9228(0);
  v55 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A4A70(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HeartRate(0);
  v51 = *MEMORY[0x277D85778];
  v19 = *(v6 + 104);
  v46 = v6 + 104;
  v50 = v19;
  v39 = v5;
  v19(v8);
  v37[0] = v12;
  v47 = v18;
  sub_2517B3350();
  v20 = *(v6 + 8);
  v48 = v6 + 8;
  v49 = v20;
  v20(v8, v5);
  v45 = *(v15 + 32);
  v21 = v52;
  v40 = v14;
  v45(v52, v17, v14);
  v22 = *(v15 + 56);
  v37[1] = v15 + 56;
  v44 = v22;
  v22(v21, 0, 1, v14);
  v43 = *(v10 + 32);
  v23 = v53;
  v24 = v12;
  v25 = v55;
  v43(v53, v24, v55);
  v26 = *(v10 + 56);
  v41 = v10 + 56;
  v42 = v26;
  v26(v23, 0, 1, v25);
  v27 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_unfilteredHRData;
  v28 = v54;
  swift_beginAccess();
  v38 = sub_2517A4A3C;
  sub_2517A9B10(v21, v28 + v27, sub_2517A4A3C);
  swift_endAccess();
  v29 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_unfilteredHRContinuation;
  swift_beginAccess();
  sub_2517A9B10(v23, v28 + v29, sub_2517A927C);
  swift_endAccess();
  v30 = v39;
  v50(v8, v51, v39);
  v31 = v37[0];
  sub_2517B3350();
  v49(v8, v30);
  v32 = v40;
  v45(v21, v17, v40);
  v44(v21, 0, 1, v32);
  v33 = v55;
  v43(v23, v31, v55);
  v42(v23, 0, 1, v33);
  v34 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_filteredHRData;
  swift_beginAccess();
  sub_2517A9B10(v21, v28 + v34, v38);
  swift_endAccess();
  v35 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_filteredHRContinuation;
  swift_beginAccess();
  sub_2517A9B10(v23, v28 + v35, sub_2517A927C);
  return swift_endAccess();
}

uint64_t sub_2517A5328()
{
  v1 = v0;
  sub_2517A4A3C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A9228(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A927C(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_unfilteredHRContinuation;
  swift_beginAccess();
  v34 = v19;
  sub_2517A9378(v1 + v19, v18, sub_2517A927C);
  v20 = *(v7 + 48);
  if (v20(v18, 1, v6))
  {
    sub_2517A9318(v18, sub_2517A927C);
  }

  else
  {
    (*(v7 + 16))(v9, v18, v6);
    sub_2517A9318(v18, sub_2517A927C);
    sub_2517B3370();
    (*(v7 + 8))(v9, v6);
  }

  v21 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_filteredHRContinuation;
  swift_beginAccess();
  v33 = v21;
  sub_2517A9378(v1 + v21, v16, sub_2517A927C);
  if (v20(v16, 1, v6))
  {
    sub_2517A9318(v16, sub_2517A927C);
  }

  else
  {
    (*(v7 + 16))(v9, v16, v6);
    sub_2517A9318(v16, sub_2517A927C);
    sub_2517B3370();
    (*(v7 + 8))(v9, v6);
  }

  v31 = v6;
  sub_2517A4A70(0);
  v23 = v22;
  v32 = *(*(v22 - 8) + 56);
  v32(v4, 1, 1, v22);
  v24 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_unfilteredHRData;
  swift_beginAccess();
  sub_2517A9B10(v4, v1 + v24, sub_2517A4A3C);
  swift_endAccess();
  v25 = *(v7 + 56);
  v25(v13, 1, 1, v6);
  v26 = v34;
  swift_beginAccess();
  sub_2517A9B10(v13, v1 + v26, sub_2517A927C);
  swift_endAccess();
  v32(v4, 1, 1, v23);
  v27 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_filteredHRData;
  swift_beginAccess();
  sub_2517A9B10(v4, v1 + v27, sub_2517A4A3C);
  swift_endAccess();
  v25(v13, 1, 1, v31);
  v28 = v33;
  swift_beginAccess();
  sub_2517A9B10(v13, v1 + v28, sub_2517A927C);
  return swift_endAccess();
}

void sub_2517A5810()
{
  v1 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_isStreaming;
  if (*(v0 + OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_isStreaming))
  {
    if (qword_27F45EA30 != -1)
    {
      swift_once();
    }

    v3 = sub_2517B3270();
    __swift_project_value_buffer(v3, qword_27F45FAB0);
    oslog = sub_2517B3250();
    v4 = sub_2517B3390();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v36[0] = v6;
      *v5 = 136446210;
      v7 = sub_2517B3500();
      v9 = sub_2517A8B20(v7, v8, v36);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_25179D000, oslog, v4, "[%{public}s] Already sent Heart Rate stream request. Ignoring request.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x2530828F0](v6, -1, -1);
      MEMORY[0x2530828F0](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_2517A4DA4();
    v10 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_heartRateRequestor;
    v11 = *(v0 + OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_heartRateRequestor);
    if (v11 || (v12 = [objc_allocWithZone(MEMORY[0x277D13070]) initWithDelegate:v0 onQueue:*(v0 + OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_queue)], v13 = *(v0 + v10), *(v0 + v10) = v12, v13, (v11 = *(v0 + v10)) != 0))
    {
      v36[0] = 0;
      if ([v11 requestStreamingMode:2 withError:v36])
      {
        v14 = v36[0];
      }

      else
      {
        v15 = v36[0];
        v16 = sub_2517B3000();

        swift_willThrow();
        if (qword_27F45EA30 != -1)
        {
          swift_once();
        }

        v17 = sub_2517B3270();
        __swift_project_value_buffer(v17, qword_27F45FAB0);
        MEMORY[0x2530827D0](v16);
        v18 = sub_2517B3250();
        v19 = sub_2517B3380();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          osloga = swift_slowAlloc();
          v36[0] = osloga;
          *v20 = 136446466;
          v22 = sub_2517B3500();
          v24 = sub_2517A8B20(v22, v23, v36);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2112;
          MEMORY[0x2530827D0](v16);
          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v25;
          *v21 = v25;
          _os_log_impl(&dword_25179D000, v18, v19, "[%{public}s] Could not start Heart Rate Stream. Error: %@", v20, 0x16u);
          sub_2517A9318(v21, sub_2517A90FC);
          MEMORY[0x2530828F0](v21, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(osloga);
          MEMORY[0x2530828F0](osloga, -1, -1);
          MEMORY[0x2530828F0](v20, -1, -1);
        }

        sub_2517A5328();
      }
    }

    if (qword_27F45EA30 != -1)
    {
      swift_once();
    }

    v26 = sub_2517B3270();
    __swift_project_value_buffer(v26, qword_27F45FAB0);
    v27 = sub_2517B3250();
    v28 = sub_2517B3390();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136446210;
      v31 = sub_2517B3500();
      v33 = sub_2517A8B20(v31, v32, v36);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_25179D000, v27, v28, "[%{public}s] Request successful to start Heart Rate Stream.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2530828F0](v30, -1, -1);
      MEMORY[0x2530828F0](v29, -1, -1);
    }

    *(v1 + v2) = 1;
  }
}

void sub_2517A5D54()
{
  v1 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_heartRateRequestor);
  if (v2)
  {
    v34[0] = 0;
    v3 = v2;
    v4 = 0x27F45E000uLL;
    if ([v3 requestStreamingMode:0 withError:v34])
    {
      v5 = v34[0];
    }

    else
    {
      v14 = v34[0];
      v15 = sub_2517B3000();

      swift_willThrow();
      if (qword_27F45EA30 != -1)
      {
        swift_once();
      }

      v16 = sub_2517B3270();
      __swift_project_value_buffer(v16, qword_27F45FAB0);
      MEMORY[0x2530827D0](v15);
      v17 = sub_2517B3250();
      v18 = sub_2517B3380();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34[0] = v33;
        *v19 = 136446466;
        v21 = sub_2517B3500();
        v23 = sub_2517A8B20(v21, v22, v34);

        *(v19 + 4) = v23;
        v4 = 0x27F45E000;
        *(v19 + 12) = 2112;
        MEMORY[0x2530827D0](v15);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v24;
        *v20 = v24;
        _os_log_impl(&dword_25179D000, v17, v18, "[%{public}s] Could not stop Heart Rate Stream. Error: %@", v19, 0x16u);
        sub_2517A9318(v20, sub_2517A90FC);
        MEMORY[0x2530828F0](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x2530828F0](v33, -1, -1);
        MEMORY[0x2530828F0](v19, -1, -1);
      }

      else
      {
      }
    }

    if (*(v4 + 2608) != -1)
    {
      swift_once();
    }

    v25 = sub_2517B3270();
    __swift_project_value_buffer(v25, qword_27F45FAB0);
    v26 = sub_2517B3250();
    v27 = sub_2517B3390();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136446210;
      v30 = sub_2517B3500();
      v32 = sub_2517A8B20(v30, v31, v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_25179D000, v26, v27, "[%{public}s] Request successful to stop Heart Rate Stream.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2530828F0](v29, -1, -1);
      MEMORY[0x2530828F0](v28, -1, -1);
    }

    sub_2517A5328();
  }

  else
  {
    if (qword_27F45EA30 != -1)
    {
      swift_once();
    }

    v6 = sub_2517B3270();
    __swift_project_value_buffer(v6, qword_27F45FAB0);
    v7 = sub_2517B3250();
    v8 = sub_2517B3390();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446210;
      v11 = sub_2517B3500();
      v13 = sub_2517A8B20(v11, v12, v34);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25179D000, v7, v8, "[%{public}s] heartRateRequestor is nil. No need to stop the stream.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2530828F0](v10, -1, -1);
      MEMORY[0x2530828F0](v9, -1, -1);
    }

    sub_2517A5328();
  }

  *(v1 + OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_isStreaming) = 0;
}

id HeartRateCoordinatorClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeartRateCoordinatorClient.init()()
{
  v1 = v0;
  v19 = sub_2517B33B0();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2517B33A0();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2517B3290();
  MEMORY[0x28223BE20](v6 - 8);
  *&v0[OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_heartRateRequestor] = 0;
  v18 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_queue;
  sub_2517A9164(0, &qword_27F45EB28, 0x277D85C78);
  sub_2517B3280();
  v21 = MEMORY[0x277D84F90];
  sub_2517A91E0(&qword_27F45EB30, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2517A91AC(0);
  sub_2517A91E0(&qword_27F45EB40, sub_2517A91AC, MEMORY[0x277D83970]);
  sub_2517B33E0();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v19);
  *&v0[v18] = sub_2517B33C0();
  v0[OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_isStreaming] = 0;
  v7 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_unfilteredHRData;
  sub_2517A4A70(0);
  v9 = v8;
  v10 = *(*(v8 - 8) + 56);
  v10(&v1[v7], 1, 1, v8);
  v11 = OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_unfilteredHRContinuation;
  sub_2517A9228(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 56);
  v14(&v1[v11], 1, 1, v12);
  v10(&v1[OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_filteredHRData], 1, 1, v9);
  v14(&v1[OBJC_IVAR____TtC21HealthHeartRateStream26HeartRateCoordinatorClient_filteredHRContinuation], 1, 1, v13);
  v15 = type metadata accessor for HeartRateCoordinatorClient(0);
  v20.receiver = v1;
  v20.super_class = v15;
  return objc_msgSendSuper2(&v20, sel_init);
}

id HeartRateCoordinatorClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateCoordinatorClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2517A6718@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  return sub_2517A9378(v4 + v5, a2, sub_2517A4A3C);
}

void sub_2517A67CC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2517B32F0();
    v48 = v7;
    v49 = v6;
  }

  else
  {
    v48 = 0;
    v49 = 0;
  }

  v8 = [a1 manufacturer];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2517B32F0();
    v46 = v11;
    v47 = v10;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v12 = [a1 model];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2517B32F0();
    v44 = v15;
    v45 = v14;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v16 = [a1 hardwareVersion];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2517B32F0();
    v40 = v19;
    v42 = v18;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v20 = [a1 firmwareVersion];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2517B32F0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = [a1 softwareVersion];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2517B32F0();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [a1 localIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_2517B32F0();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [a1 UDIDeviceIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = sub_2517B32F0();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a2 = v49;
  a2[1] = v48;
  a2[2] = v47;
  a2[3] = v46;
  a2[4] = v45;
  a2[5] = v44;
  a2[6] = v43;
  a2[7] = v41;
  a2[8] = v22;
  a2[9] = v24;
  a2[10] = v27;
  a2[11] = v29;
  a2[12] = v32;
  a2[13] = v34;
  a2[14] = v37;
  a2[15] = v39;
}

double sub_2517A6A04@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2517B3060();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 timestamp];
  sub_2517B3040();

  [a1 heartRate];
  v10 = v9;
  v11 = [a1 confidence];
  v12 = v11;
  if (v11)
  {
    [v11 doubleValue];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v12 == 0;
  v16 = [a1 uuid];
  v17 = type metadata accessor for HeartRate(0);
  sub_2517B30A0();

  v18 = [a1 device];
  sub_2517A67CC(v18, v26);

  (*(v5 + 32))(a2, v7, v4);
  *(a2 + v17[5]) = v10;
  v19 = a2 + v17[6];
  *v19 = v14;
  *(v19 + 8) = v15;
  v20 = (a2 + v17[8]);
  v21 = v30;
  v20[4] = v29;
  v20[5] = v21;
  v22 = v32;
  v20[6] = v31;
  v20[7] = v22;
  v23 = v26[1];
  *v20 = v26[0];
  v20[1] = v23;
  result = *&v27;
  v25 = v28;
  v20[2] = v27;
  v20[3] = v25;
  return result;
}

uint64_t sub_2517A6C9C(void *a1, const char *a2, uint64_t *a3)
{
  v52 = a3;
  v50 = a2;
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_2517A9228(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A927C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A92B0(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeartRate(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v48 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = &v45 - v20;
  if (qword_27F45EA30 != -1)
  {
    swift_once();
  }

  v53 = v13;
  v21 = sub_2517B3270();
  __swift_project_value_buffer(v21, qword_27F45FAB0);
  v22 = a1;
  v23 = sub_2517B3250();
  v24 = sub_2517B3390();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47 = v4;
    v26 = v25;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v26 = 136446466;
    v27 = sub_2517B3500();
    v29 = v10;
    v30 = v8;
    v31 = v7;
    v32 = v16;
    v33 = sub_2517A8B20(v27, v28, v54);

    *(v26 + 4) = v33;
    v16 = v32;
    v7 = v31;
    v8 = v30;
    v10 = v29;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v22;
    v34 = v45;
    *v45 = v22;
    v35 = v22;
    _os_log_impl(&dword_25179D000, v23, v24, v50, v26, 0x16u);
    sub_2517A9318(v34, sub_2517A90FC);
    MEMORY[0x2530828F0](v34, -1, -1);
    v36 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x2530828F0](v36, -1, -1);
    v37 = v26;
    v4 = v47;
    MEMORY[0x2530828F0](v37, -1, -1);
  }

  v38 = v51;
  sub_2517A6A04(v22, v51);
  v39 = *v52;
  swift_beginAccess();
  v40 = v4 + v39;
  v41 = v53;
  sub_2517A9378(v40, v53, sub_2517A927C);
  if ((*(v8 + 48))(v41, 1, v7))
  {
    sub_2517A9318(v38, type metadata accessor for HeartRate);
    sub_2517A9318(v41, sub_2517A927C);
    v42 = 1;
  }

  else
  {
    (*(v8 + 16))(v10, v41, v7);
    sub_2517A9318(v41, sub_2517A927C);
    sub_2517A9378(v38, v48, type metadata accessor for HeartRate);
    sub_2517B3360();
    (*(v8 + 8))(v10, v7);
    sub_2517A9318(v38, type metadata accessor for HeartRate);
    v42 = 0;
  }

  sub_2517A92E4(0);
  (*(*(v43 - 8) + 56))(v16, v42, 1, v43);
  return sub_2517A9318(v16, sub_2517A92B0);
}

uint64_t sub_2517A7320()
{
  v1 = *(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_queue);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2517A9418;
  *(v3 + 24) = v2;
  v6[4] = sub_2517A9420;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2517A7A3C;
  v6[3] = &block_descriptor;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2517A747C(uint64_t a1)
{
  sub_2517A927C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A4A3C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A4AA4(0, &qword_27F45EC20, type metadata accessor for HeartRate, MEMORY[0x277D85780]);
  v7 = v6;
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  sub_2517A9228(0);
  v54 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A4A70(0);
  v55 = v14;
  v51 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = type metadata accessor for HeartRate(0);
    v49 = *MEMORY[0x277D85778];
    v56 = v11;
    v20 = v53;
    v48 = *(v53 + 104);
    v50 = v53 + 104;
    v48(v9);
    v38 = v13;
    v47 = v19;
    sub_2517B3350();
    v42 = v16;
    v53 = *(v20 + 8);
    (v53)(v9, v7);
    v21 = v51;
    v45 = *(v51 + 32);
    v46 = v51 + 32;
    v22 = v16;
    v23 = v54;
    v24 = v55;
    v45(v5, v22, v55);
    v51 = *(v21 + 56);
    (v51)(v5, 0, 1, v24);
    v39 = v7;
    v25 = v56;
    v44 = *(v56 + 32);
    v26 = v52;
    v44(v52, v13, v23);
    v40 = *(v25 + 56);
    v56 = v25 + 56;
    v40(v26, 0, 1, v23);
    v27 = v26;
    v28 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRData;
    swift_beginAccess();
    v43 = sub_2517A4A3C;
    sub_2517A9B10(v5, v18 + v28, sub_2517A4A3C);
    swift_endAccess();
    v29 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRContinuation;
    swift_beginAccess();
    v41 = sub_2517A927C;
    sub_2517A9B10(v27, v18 + v29, sub_2517A927C);
    swift_endAccess();
    v30 = v39;
    (v48)(v9, v49, v39);
    v31 = v42;
    v32 = v38;
    sub_2517B3350();
    (v53)(v9, v30);
    v33 = v31;
    v34 = v55;
    v45(v5, v33, v55);
    (v51)(v5, 0, 1, v34);
    v35 = v54;
    v44(v27, v32, v54);
    v40(v27, 0, 1, v35);
    v36 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRData;
    swift_beginAccess();
    sub_2517A9B10(v5, v18 + v36, v43);
    swift_endAccess();
    v37 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRContinuation;
    swift_beginAccess();
    sub_2517A9B10(v27, v18 + v37, v41);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_2517A7A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_queue);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2517A9460;
  *(v3 + 24) = v2;
  v6[4] = sub_2517A9C38;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2517A7A3C;
  v6[3] = &block_descriptor_13;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2517A7BC0(uint64_t a1)
{
  sub_2517A9228(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517A927C(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  sub_2517A92B0(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = type metadata accessor for HeartRate(0);
  v17 = (v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  sub_2517B3050();
  sub_2517B30B0();
  *&v22[v17[7]] = 0x4054000000000000;
  v23 = &v22[v17[8]];
  *v23 = 0x3FC999999999999ALL;
  v23[8] = 0;
  v24 = &v22[v17[10]];
  *v24 = xmmword_2517B4080;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 7) = 0u;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v46 = v20;
  if (Strong)
  {
    v26 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRContinuation;
    v27 = Strong;
    swift_beginAccess();
    sub_2517A9378(v27 + v26, v10, sub_2517A927C);

    if ((*(v3 + 48))(v10, 1, v2))
    {
      v28 = v3;
      sub_2517A9318(v10, sub_2517A927C);
      v29 = 1;
    }

    else
    {
      v30 = v47;
      (*(v3 + 16))(v47, v10, v2);
      sub_2517A9318(v10, sub_2517A927C);
      sub_2517A9378(v22, v20, type metadata accessor for HeartRate);
      sub_2517B3360();
      v28 = v3;
      (*(v3 + 8))(v30, v2);
      v29 = 0;
    }
  }

  else
  {
    v28 = v3;
    v29 = 1;
  }

  sub_2517A92E4(0);
  v32 = v31;
  v33 = *(*(v31 - 8) + 56);
  v33(v15, v29, 1, v31);
  sub_2517A9318(v15, sub_2517A92B0);
  swift_beginAccess();
  v34 = swift_weakLoadStrong();
  if (v34)
  {
    v35 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRContinuation;
    v36 = v34;
    swift_beginAccess();
    sub_2517A9378(v36 + v35, v8, sub_2517A927C);

    v37 = v28;
    if (!(*(v28 + 48))(v8, 1, v2))
    {
      v42 = *(v28 + 16);
      v43 = v47;
      v42(v47, v8, v2);
      sub_2517A9318(v8, sub_2517A927C);
      sub_2517A9378(v22, v46, type metadata accessor for HeartRate);
      v41 = v48;
      sub_2517B3360();
      (*(v37 + 8))(v43, v2);
      sub_2517A9318(v22, type metadata accessor for HeartRate);
      v40 = 0;
      goto LABEL_12;
    }

    sub_2517A9318(v22, type metadata accessor for HeartRate);
    v38 = sub_2517A927C;
    v39 = v8;
  }

  else
  {
    v38 = type metadata accessor for HeartRate;
    v39 = v22;
  }

  sub_2517A9318(v39, v38);
  v40 = 1;
  v41 = v48;
LABEL_12:
  v33(v41, v40, 1, v32);
  return sub_2517A9318(v41, sub_2517A92B0);
}

uint64_t sub_2517A81A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_queue);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2517A9468;
  *(v3 + 24) = v2;
  v6[4] = sub_2517A9C38;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2517A7A3C;
  v6[3] = &block_descriptor_21;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2517A8304(uint64_t a1)
{
  sub_2517A4A3C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v38[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2517A9228(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2517A927C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRContinuation;
    v20 = Strong;
    swift_beginAccess();
    sub_2517A9378(v20 + v19, v17, sub_2517A927C);

    if ((*(v6 + 48))(v17, 1, v5))
    {
      sub_2517A9318(v17, sub_2517A927C);
    }

    else
    {
      (*(v6 + 16))(v8, v17, v5);
      sub_2517A9318(v17, sub_2517A927C);
      sub_2517B3370();
      (*(v6 + 8))(v8, v5);
    }
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRContinuation;
    v23 = v21;
    swift_beginAccess();
    sub_2517A9378(v23 + v22, v15, sub_2517A927C);

    if ((*(v6 + 48))(v15, 1, v5))
    {
      sub_2517A9318(v15, sub_2517A927C);
    }

    else
    {
      (*(v6 + 16))(v8, v15, v5);
      sub_2517A9318(v15, sub_2517A927C);
      sub_2517B3370();
      (*(v6 + 8))(v8, v5);
    }
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = v24;
    sub_2517A4A70(0);
    (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
    v27 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRData;
    swift_beginAccess();
    sub_2517A9B10(v3, v25 + v27, sub_2517A4A3C);
    swift_endAccess();
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    (*(v6 + 56))(v12, 1, 1, v5);
    v30 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRContinuation;
    swift_beginAccess();
    sub_2517A9B10(v12, v29 + v30, sub_2517A927C);
    swift_endAccess();
  }

  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (v31)
  {
    v32 = v31;
    sub_2517A4A70(0);
    (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
    v34 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRData;
    swift_beginAccess();
    sub_2517A9B10(v3, v32 + v34, sub_2517A4A3C);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v36 = result;
    (*(v6 + 56))(v12, 1, 1, v5);
    v37 = OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRContinuation;
    swift_beginAccess();
    sub_2517A9B10(v12, v36 + v37, sub_2517A927C);
    swift_endAccess();
  }

  return result;
}

uint64_t MockHeartRateCoordinatorClient.deinit()
{
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRData, sub_2517A4A3C);
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRContinuation, sub_2517A927C);
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRData, sub_2517A4A3C);
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRContinuation, sub_2517A927C);

  return v0;
}

uint64_t MockHeartRateCoordinatorClient.__deallocating_deinit()
{
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRData, sub_2517A4A3C);
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_filteredHRContinuation, sub_2517A927C);
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRData, sub_2517A4A3C);
  sub_2517A9318(v0 + OBJC_IVAR____TtC21HealthHeartRateStream30MockHeartRateCoordinatorClient_unfilteredHRContinuation, sub_2517A927C);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2517A8B20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2517A8BEC(v11, 0, 0, 1, a1, a2);
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
    sub_2517A9B78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2517A8BEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2517A8CF8(a5, a6);
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
    result = sub_2517B3430();
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

void *sub_2517A8CF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2517A8D44(a1, a2);
  sub_2517A8E74(&unk_2863AA3C8);
  return v3;
}

void *sub_2517A8D44(uint64_t a1, unint64_t a2)
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

  v6 = sub_2517A8F60(v5, 0);
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

  result = sub_2517B3430();
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
        v10 = sub_2517B3310();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2517A8F60(v10, 0);
        result = sub_2517B3420();
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

uint64_t sub_2517A8E74(uint64_t result)
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

  result = sub_2517A8FC8(result, v11, 1, v3);
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

void *sub_2517A8F60(uint64_t a1, uint64_t a2)
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

  sub_2517A9BD4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2517A8FC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2517A9BD4();
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

void sub_2517A90FC(uint64_t a1)
{
  if (!qword_27F45EB18)
  {
    sub_2517A9164(255, &qword_27F45EB20, 0x277D82BB8);
    v1 = sub_2517B33D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45EB18);
    }
  }
}

uint64_t sub_2517A9164(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2517A91E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2517A9318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2517A9378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2517A93E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_2517A9378(v4 + v5, a3, sub_2517A4A3C);
}

void sub_2517A95A4(uint64_t a1)
{
  sub_2517A4A3C(319);
  if (v1 <= 0x3F)
  {
    sub_2517A927C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2517A98D8(uint64_t a1)
{
  sub_2517A4A3C(319);
  if (v1 <= 0x3F)
  {
    sub_2517A927C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2517A9B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2517A9B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2517A9BD4()
{
  if (!qword_27F45EC28)
  {
    v0 = sub_2517B3490();
    if (!v1)
    {
      atomic_store(v0, &qword_27F45EC28);
    }
  }
}

uint64_t sub_2517A9C48@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_requestHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2517AAACC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2517A9F58(v4, v5);
}

uint64_t sub_2517A9CE8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;

  a6(v6, v7, v8, v9, v10, v11, sub_2517AAAD4, v14);
}

uint64_t sub_2517A9DBC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2517AAA70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_requestHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2517A9F58(v3, v4);
  return sub_2517A9F88(v8, v9);
}

uint64_t sub_2517A9E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t *, void *, uint64_t *, void *))
{
  v17[0] = a1;
  v17[1] = a2;
  v15[1] = a5;
  v16 = a3;
  v14 = a6;
  v15[0] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  *(v11 + 24) = a8;
  v13[0] = sub_2517AAA98;
  v13[1] = v11;

  a9(v17, &v16, v15, &v14, v13);
}

uint64_t sub_2517A9F58(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2517A9F88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2517A9FF8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_registerRequestHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2517AAA00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2517A9F58(v4, v5);
}

uint64_t sub_2517AA098(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2517AA9C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_registerRequestHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2517A9F58(v3, v4);
  return sub_2517A9F88(v8, v9);
}

uint64_t sub_2517AA180(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_2517AA208(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_2517AA498(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_2517B32A0();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_2517B32A0();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_2517B2FF0();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

id MockRapportClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MockRapportClient.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_requestHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21HealthHeartRateStream17MockRapportClient_registerRequestHandler];
  v3 = type metadata accessor for MockRapportClient();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MockRapportClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockRapportClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2517AA980()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2517AA9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

uint64_t sub_2517AAA38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2517AAAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

HealthHeartRateStream::HeartRateStreamUserDefaultsKey_optional __swiftcall HeartRateStreamUserDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2517B3480();

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

  *v2 = v5;
  return result;
}

unint64_t HeartRateStreamUserDefaultsKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_2517AABD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000028;
  }

  if (v2)
  {
    v4 = &unk_2517B47E0;
  }

  else
  {
    v4 = "e.health.HeartRateStream";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000028;
  }

  if (*a2)
  {
    v7 = "e.health.HeartRateStream";
  }

  else
  {
    v7 = &unk_2517B47E0;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2517B34A0();
  }

  return v9 & 1;
}

uint64_t sub_2517AAC80()
{
  sub_2517B34D0();
  sub_2517B3300();

  return sub_2517B34F0();
}

uint64_t sub_2517AAD00(uint64_t a1)
{
  sub_2517B3300();
}

uint64_t sub_2517AAD6C(uint64_t a1)
{
  sub_2517B34D0();
  sub_2517B3300();

  return sub_2517B34F0();
}

uint64_t sub_2517AADE8@<X0>(char *a2@<X8>)
{
  v3 = sub_2517B3480();

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

void sub_2517AAE48(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000028;
  }

  if (*v1)
  {
    v3 = "e.health.HeartRateStream";
  }

  else
  {
    v3 = &unk_2517B47E0;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void static NSUserDefaults.heartRateStreamUserDefaults.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2517B32E0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    __break(1u);
  }
}

id NSUserDefaults.enableRemoteStreaming.getter()
{
  result = os_variant_has_internal_diagnostics();
  if (result)
  {
    v2 = [v0 dictionaryRepresentation];
    v3 = sub_2517B32B0();

    if (*(v3 + 16))
    {
      v4 = v0;
      sub_2517AB054(0xD000000000000015, 0x80000002517B4810);
      v6 = v5;

      if (v6)
      {
        v7 = sub_2517B32E0();
        v8 = [v4 BOOLForKey_];

        return v8;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

unint64_t sub_2517AB054(uint64_t a1, uint64_t a2)
{
  sub_2517B34D0();
  sub_2517B3300();
  v4 = sub_2517B34F0();

  return sub_2517AB3A0(a1, a2, v4);
}

unint64_t sub_2517AB0D0()
{
  result = qword_27F45ECA0;
  if (!qword_27F45ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45ECA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateStreamUserDefaultsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeartRateStreamUserDefaultsKey(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MockHeartRateStreamUserDefaults(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_2517AB35C(uint64_t a1)
{
  v2 = sub_2517B33F0();

  return sub_2517AB458(a1, v2);
}

unint64_t sub_2517AB3A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2517B34A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2517AB458(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2517AB520(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x253082350](v9, a1);
      sub_2517AB57C(v9);
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

uint64_t sub_2517AB5D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 2)
    {
      v4 = 0x80000002517B4850;
    }

    else
    {
      v4 = 0x80000002517B4870;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x65727453706F7473;
    }

    else
    {
      v3 = 0x7274537472617473;
    }

    if (v2)
    {
      v4 = 0xED0000676E696D61;
    }

    else
    {
      v4 = 0xEE00676E696D6165;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000019;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (a2 == 2)
    {
      v6 = 0x80000002517B4850;
    }

    else
    {
      v6 = 0x80000002517B4870;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x65727453706F7473;
    }

    else
    {
      v5 = 0x7274537472617473;
    }

    if (a2)
    {
      v6 = 0xED0000676E696D61;
    }

    else
    {
      v6 = 0xEE00676E696D6165;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_2517B34A0();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t RemoteHeartRateStreamProvider.__allocating_init(rapportClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_allocWithZone(type metadata accessor for HeartRateCoordinatorClient(0)) init];
  return v2;
}

uint64_t RemoteHeartRateStreamProvider.init(rapportClient:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(type metadata accessor for HeartRateCoordinatorClient(0)) init];
  return v1;
}

void sub_2517AB7D4()
{
  v1 = *(v0 + 16);
  v2 = sub_2517B32E0();
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_2517AB9E4;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2517AB9EC;
  v5[3] = &block_descriptor_0;
  v4 = _Block_copy(v5);

  [v1 registerRequestID:v2 options:0 handler:v4];
  _Block_release(v4);
}

uint64_t sub_2517AB8E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2517AB918(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2517ABB10(a1);
  }

  return a3(a1, 0, 0);
}

uint64_t sub_2517AB9EC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 32);
  v7 = sub_2517B32B0();
  if (a3)
  {
    a3 = sub_2517B32B0();
  }

  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v6(v7, a3, sub_2517AA9B8, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2517ABB10(uint64_t a1)
{
  v34[0] = 0x4E74736575716572;
  v34[1] = 0xEB00000000656D61;
  sub_2517B3410();
  if (*(a1 + 16) && (v2 = sub_2517AB35C(v33), (v3 & 1) != 0))
  {
    sub_2517A9B78(*(a1 + 56) + 32 * v2, v34);
    sub_2517AB57C(v33);
    if (swift_dynamicCast())
    {
      v4 = v32;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_2517AB57C(v33);
    v4 = 0;
  }

  v5 = MEMORY[0x277D837D0];
  sub_2517B3410();
  if (!*(a1 + 16) || (v6 = sub_2517AB35C(v33), (v7 & 1) == 0))
  {

    sub_2517AB57C(v33);
LABEL_19:
    v9 = "Dictionary@NSError>24";
    v10 = 0xD00000000000001ALL;
    goto LABEL_20;
  }

  sub_2517A9B78(*(a1 + 56) + 32 * v6, v34);
  sub_2517AB57C(v33);
  if ((swift_dynamicCast() & 1) == 0 || (v8 = sub_2517B34A0(), , (v8 & 1) == 0))
  {

    goto LABEL_19;
  }

  v9 = "h.heartratestream";
  v10 = 0xD000000000000014;
  if (!v4)
  {
    goto LABEL_20;
  }

  v11 = sub_2517B3480();

  if (v11 > 3)
  {
    goto LABEL_20;
  }

  v12 = 0x7274537472617473;
  if (byte_2863AA4E0 > 1u)
  {
    if (byte_2863AA4E0 == 2)
    {
      v13 = 0xD000000000000019;
      v14 = 0x80000002517B4850;
    }

    else
    {
      v13 = 0xD000000000000017;
      v14 = 0x80000002517B4870;
    }
  }

  else
  {
    v13 = 0x7274537472617473;
    v14 = 0xEE00676E696D6165;
    if (byte_2863AA4E0)
    {
      v13 = 0x65727453706F7473;
      v14 = 0xED0000676E696D61;
    }
  }

  v20 = v11;
  v35 = v11;
  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      v12 = 0xD000000000000019;
      v21 = 0x80000002517B4850;
    }

    else
    {
      v12 = 0xD000000000000017;
      v21 = 0x80000002517B4870;
    }
  }

  else
  {
    v21 = 0xEE00676E696D6165;
    if (v20)
    {
      v12 = 0x65727453706F7473;
      v21 = 0xED0000676E696D61;
    }
  }

  if (v13 == v12 && v14 == v21)
  {
    goto LABEL_33;
  }

  v30 = sub_2517B34A0();

  if ((v30 & 1) == 0)
  {
    if (byte_2863AA4E1 > 1u)
    {
      v25 = 0xEE00676E696D6165;
      v23 = 0x7274537472617473;
      if (byte_2863AA4E1 == 2)
      {
        v24 = 0xD000000000000019;
        v26 = 0x80000002517B4850;
      }

      else
      {
        v24 = 0xD000000000000017;
        v26 = 0x80000002517B4870;
      }

      v27 = v35;
    }

    else
    {
      v23 = 0x7274537472617473;
      v24 = 0x7274537472617473;
      v25 = 0xEE00676E696D6165;
      v26 = 0xEE00676E696D6165;
      v27 = v35;
      if (byte_2863AA4E1)
      {
        v24 = 0x65727453706F7473;
        v26 = 0xED0000676E696D61;
      }
    }

    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v23 = 0xD000000000000019;
        v25 = 0x80000002517B4850;
      }

      else
      {
        v23 = 0xD000000000000017;
        v25 = 0x80000002517B4870;
      }
    }

    else if (v27)
    {
      v23 = 0x65727453706F7473;
      v25 = 0xED0000676E696D61;
    }

    if (v24 == v23 && v26 == v25)
    {
LABEL_33:

      goto LABEL_35;
    }

    v31 = sub_2517B34A0();

    if ((v31 & 1) == 0)
    {
LABEL_20:
      sub_2517AC290(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2517B4330;
      *(inited + 32) = sub_2517B32F0();
      *(inited + 72) = v5;
      *(inited + 40) = v16;
      *(inited + 48) = v10;
      *(inited + 56) = v9 | 0x8000000000000000;
      sub_2517AC2F8(inited);
      swift_setDeallocating();
      sub_2517AC430(inited + 32);
      v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v18 = sub_2517B32E0();
      v19 = sub_2517B32A0();

      [v17 initWithDomain:v18 code:1 userInfo:v19];

      swift_willThrow();
      return;
    }
  }

LABEL_35:
  v22 = v35;
  if (v35 <= 1u && !v35)
  {

LABEL_43:
    sub_2517A5810();
    return;
  }

  v28 = sub_2517B34A0();

  if (v28)
  {
    goto LABEL_43;
  }

  if (v22 == 1)
  {

LABEL_50:
    sub_2517A5D54();
    return;
  }

  v29 = sub_2517B34A0();

  if (v29)
  {
    goto LABEL_50;
  }
}

uint64_t RemoteHeartRateStreamProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2517AC290(uint64_t a1)
{
  if (!qword_27F45ECA8)
  {
    sub_2517AC6B0(255, &qword_27F45ECB0, MEMORY[0x277D837D0]);
    v1 = sub_2517B3490();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45ECA8);
    }
  }
}

unint64_t sub_2517AC2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D837D0];
    sub_2517AC724(0, &qword_27F45ECC8, MEMORY[0x277D837D0]);
    v4 = sub_2517B3460();
    v5 = a1 + 32;

    while (1)
    {
      sub_2517AC780(v5, &v14, &qword_27F45ECB0, v3);
      v6 = v14;
      v7 = v15;
      result = sub_2517AB054(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_2517AC714(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 48;
      if (!--v1)
      {

        return v4;
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

uint64_t sub_2517AC430(uint64_t a1)
{
  sub_2517AC6B0(0, &qword_27F45ECB0, MEMORY[0x277D837D0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2517AC56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x277D84030];
    sub_2517AC724(0, &qword_27F45ECB8, MEMORY[0x277D84030]);
    v4 = sub_2517B3460();
    v5 = a1 + 32;

    while (1)
    {
      sub_2517AC780(v5, v14, &qword_27F45ECC0, v3);
      result = sub_2517AB35C(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_2517AC714(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
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

void sub_2517AC6B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_OWORD *sub_2517AC714(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2517AC724(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2517B3470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2517AC780(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_2517AC6B0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2517AC7EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t RemoteHRStreamRequestKey.rawValue.getter()
{
  v1 = 0x4E74736575716572;
  if (*v0 != 1)
  {
    v1 = 0x7461527472616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

HealthHeartRateStream::RemoteHRStreamRequestName_optional __swiftcall RemoteHRStreamRequestName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2517B3480();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RemoteHRStreamRequestName.rawValue.getter()
{
  v1 = 0x7274537472617473;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x65727453706F7473;
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

uint64_t sub_2517AC9BC()
{
  sub_2517B34D0();
  sub_2517B3300();

  return sub_2517B34F0();
}

uint64_t sub_2517ACAA4(uint64_t a1)
{
  sub_2517B3300();
}

uint64_t sub_2517ACB78(uint64_t a1)
{
  sub_2517B34D0();
  sub_2517B3300();

  return sub_2517B34F0();
}

void sub_2517ACC68(unint64_t *a1@<X8>)
{
  v2 = 0xEE00676E696D6165;
  v3 = 0x7274537472617473;
  v4 = 0x80000002517B4850;
  v5 = 0xD000000000000019;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000017;
    v4 = 0x80000002517B4870;
  }

  if (*v1)
  {
    v3 = 0x65727453706F7473;
    v2 = 0xED0000676E696D61;
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

HealthHeartRateStream::RemoteHRStreamRequestKey_optional __swiftcall RemoteHRStreamRequestKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2517B3480();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2517ACD6C()
{
  result = qword_27F45ECD0;
  if (!qword_27F45ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45ECD0);
  }

  return result;
}

uint64_t sub_2517ACDC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E74736575716572;
  v4 = *a1;
  v5 = 0x7461527472616568;
  v6 = 0xED00006174614465;
  if (v4 == 1)
  {
    v5 = 0x4E74736575716572;
    v6 = 0xEB00000000656D61;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000002517B4890;
  }

  if (*a2 != 1)
  {
    v3 = 0x7461527472616568;
    v2 = 0xED00006174614465;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000002517B4890;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2517B34A0();
  }

  return v11 & 1;
}

unint64_t sub_2517ACEDC()
{
  result = qword_27F45ECD8;
  if (!qword_27F45ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45ECD8);
  }

  return result;
}

uint64_t sub_2517ACF30()
{
  sub_2517B34D0();
  sub_2517B3300();

  return sub_2517B34F0();
}

uint64_t sub_2517ACFEC(uint64_t a1)
{
  sub_2517B3300();
}

uint64_t sub_2517AD094(uint64_t a1)
{
  sub_2517B34D0();
  sub_2517B3300();

  return sub_2517B34F0();
}

void sub_2517AD158(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E74736575716572;
  if (v2 != 1)
  {
    v4 = 0x7461527472616568;
    v3 = 0xED00006174614465;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x80000002517B4890;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for RemoteHRStreamRequestName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteHRStreamRequestName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteHRStreamRequestKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteHRStreamRequestKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2517AD480(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_2517B32B0();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_2517B32B0();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_2517AD564(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517B0414;

  return RemoteHeartRateStreamRequestorInterface.requestHeartRateStream()(a1, a2);
}

uint64_t RemoteHeartRateStreamRequestorInterface.requestHeartRateStream()(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517AD734;

  return v7(v2 + 32, a1, a2);
}

uint64_t sub_2517AD734()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2517B041C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2517AD868(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517B0414;

  return RemoteHeartRateStreamRequestorInterface.stopHeartRateStream()(a1, a2);
}

uint64_t RemoteHeartRateStreamRequestorInterface.stopHeartRateStream()(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 1;
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517AD734;

  return v7(v2 + 32, a1, a2);
}

uint64_t RemoteHeartRateStreamRequestor.__allocating_init(rapportClient:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RemoteHeartRateStreamRequestor.sendRequest(_:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_2517ADAA4, 0, 0);
}

uint64_t sub_2517ADAA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2517ADBA8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2517ADBA8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2517ADCDC;
  }

  else
  {

    v2 = sub_2517ADCC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2517ADCDC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2517ADD40(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v27 = a3;
  sub_2517B010C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = sub_2517AC2F8(MEMORY[0x277D84F90]);
  v30 = MEMORY[0x277D837D0];
  *&aBlock = 0xD00000000000001CLL;
  *(&aBlock + 1) = 0x80000002517B4B80;
  sub_2517AC714(&aBlock, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v9;
  sub_2517AF5D4(v34, 0xD000000000000011, 0x80000002517B4890, isUniquelyReferenced_nonNull_native);
  v11 = v33;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0x80000002517B4850;
      v13 = 0xD000000000000019;
    }

    else
    {
      v12 = 0x80000002517B4870;
      v13 = 0xD000000000000017;
    }
  }

  else if (a2)
  {
    v12 = 0xED0000676E696D61;
    v13 = 0x65727453706F7473;
  }

  else
  {
    v12 = 0xEE00676E696D6165;
    v13 = 0x7274537472617473;
  }

  v30 = MEMORY[0x277D837D0];
  *&aBlock = v13;
  *(&aBlock + 1) = v12;
  sub_2517AC714(&aBlock, v34);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v11;
  sub_2517AF5D4(v34, 0x4E74736575716572, 0xEB00000000656D61, v14);
  v15 = v33;
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v27 = v27[2];
  v18 = sub_2517B32E0();
  sub_2517AE3A0(v15);

  v19 = MEMORY[0x277D84030];
  v20 = sub_2517B32A0();

  v21 = *MEMORY[0x277D44220];
  sub_2517B02EC(0, &qword_27F45ECF0, &qword_27F45ECC0, v19);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517B4330;
  *&aBlock = sub_2517B32F0();
  *(&aBlock + 1) = v23;
  v24 = v21;
  sub_2517B3410();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_2517AC56C(inited);
  swift_setDeallocating();
  sub_2517B0344(inited + 32, &qword_27F45ECC0, v19);
  v25 = sub_2517B32A0();

  v31 = sub_2517B0264;
  v32 = v17;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_2517AD480;
  v30 = &block_descriptor_1;
  v26 = _Block_copy(&aBlock);

  [v27 sendRequestID:v18 request:v20 destinationID:v24 options:v25 responseHandler:v26];
  _Block_release(v26);
}

uint64_t sub_2517AE218(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    MEMORY[0x2530827D0](a3, a2);
    if (qword_27F45EA30 != -1)
    {
      swift_once();
    }

    v4 = sub_2517B3270();
    __swift_project_value_buffer(v4, qword_27F45FAB0);
    MEMORY[0x2530827D0](a3);
    v5 = sub_2517B3250();
    v6 = sub_2517B3380();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      MEMORY[0x2530827D0](a3);
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_25179D000, v5, v6, "Failed to send remote HR stream request Error: %@", v7, 0xCu);
      sub_2517B03B8(v8);
      MEMORY[0x2530828F0](v8, -1, -1);
      MEMORY[0x2530828F0](v7, -1, -1);
    }

    sub_2517B010C(0);
    return sub_2517B3320();
  }

  else
  {
    sub_2517B010C(0);
    return sub_2517B3330();
  }
}

uint64_t sub_2517AE3A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2517AC724(0, &qword_27F45ECB8, MEMORY[0x277D84030]);
    v2 = sub_2517B3460();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2517A9B78(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2517AC714(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2517AC714(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2517AC714(v31, v32);
    result = sub_2517B33F0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2517AC714(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t RemoteHeartRateStreamRequestor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2517AE6CC(_BYTE *a1)
{
  *(v2 + 16) = *v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_2517AE6F8, 0, 0);
}

uint64_t sub_2517AE6F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2517AE7FC;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2517AE7FC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2517B0424;
  }

  else
  {

    v2 = sub_2517B0420;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2517AE918(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  *(v3 + 40) = 0;
  v8 = (*(a2 + 8) + **(a2 + 8));
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2517AEA50;

  return v8(v3 + 40, a1, a2);
}

uint64_t sub_2517AEA50()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2517B0418, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2517AEB84(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = *v2;
  *(v3 + 40) = 1;
  v8 = (*(a2 + 8) + **(a2 + 8));
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2517AECC0;

  return v8(v3 + 40, a1, a2);
}

uint64_t sub_2517AECC0()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2517AEDF4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t MockRemoteHeartRateStreamRequestor.sendRequest(_:)(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517AEEB4;

  return sub_2517AF940(a1);
}

uint64_t sub_2517AEEB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2517AEFC0(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517B0414;

  return sub_2517AF940(a1);
}

uint64_t sub_2517AF068()
{
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517AD734;

  return sub_2517AF940((v0 + 32));
}

uint64_t sub_2517AF114()
{
  *(v0 + 32) = 1;
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517AF1C4;

  return sub_2517AF940((v0 + 32));
}

uint64_t sub_2517AF1C4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2517AF2F8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2517AF310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2517AC724(0, &qword_27F45ECC8, MEMORY[0x277D837D0]);
  v33 = v4;
  result = sub_2517B3450();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2517AC714(v24, v34);
      }

      else
      {
        sub_2517A9B78(v24, v34);
      }

      sub_2517B34D0();
      sub_2517B3300();
      result = sub_2517B34F0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2517AC714(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_2517AF5D4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2517AB054(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2517AF790();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2517AF310(v16, a4 & 1);
    v11 = sub_2517AB054(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2517B34C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2517AC714(a1, v22);
  }

  else
  {
    sub_2517AF724(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2517AF724(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2517AC714(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2517AF790()
{
  v1 = v0;
  sub_2517AC724(0, &qword_27F45ECC8, MEMORY[0x277D837D0]);
  v2 = *v0;
  v3 = sub_2517B3440();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2517A9B78(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2517AC714(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2517AF964()
{
  v1 = 0xD000000000000019;
  if (byte_2863AA570 == 2)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (byte_2863AA570 == 2)
  {
    v3 = 0x80000002517B4850;
  }

  else
  {
    v3 = 0x80000002517B4870;
  }

  v4 = 0x65727453706F7473;
  v5 = 0xED0000676E696D61;
  if (!byte_2863AA570)
  {
    v4 = 0x7274537472617473;
    v5 = 0xEE00676E696D6165;
  }

  if (byte_2863AA570 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  if (byte_2863AA570 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (*(v0 + 96) == 2)
  {
    v8 = 0x80000002517B4850;
  }

  else
  {
    v1 = 0xD000000000000017;
    v8 = 0x80000002517B4870;
  }

  v9 = 0x65727453706F7473;
  v10 = 0xED0000676E696D61;
  if (!*(v0 + 96))
  {
    v9 = 0x7274537472617473;
    v10 = 0xEE00676E696D6165;
  }

  if (*(v0 + 96) <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v1;
  }

  if (*(v0 + 96) <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = 0x7274537472617473;
  if (v6 == v11 && v7 == v12)
  {
    goto LABEL_28;
  }

  v14 = sub_2517B34A0();

  if (v14)
  {
    goto LABEL_30;
  }

  if (byte_2863AA571 > 1u)
  {
    if (byte_2863AA571 == 2)
    {
      v13 = 0xD000000000000019;
      v17 = 0x80000002517B4850;
    }

    else
    {
      v13 = 0xD000000000000017;
      v17 = 0x80000002517B4870;
    }
  }

  else
  {
    v17 = 0xEE00676E696D6165;
    if (byte_2863AA571)
    {
      v13 = 0x65727453706F7473;
      v17 = 0xED0000676E696D61;
    }
  }

  v18 = 0xD000000000000019;
  if (*(v0 + 96) == 2)
  {
    v19 = 0x80000002517B4850;
  }

  else
  {
    v18 = 0xD000000000000017;
    v19 = 0x80000002517B4870;
  }

  v20 = 0x65727453706F7473;
  v21 = 0xED0000676E696D61;
  if (!*(v0 + 96))
  {
    v20 = 0x7274537472617473;
    v21 = 0xEE00676E696D6165;
  }

  v22 = *(v0 + 96) <= 1u ? v20 : v18;
  v23 = *(v0 + 96) <= 1u ? v21 : v19;
  if (v13 == v22 && v17 == v23)
  {
LABEL_28:

LABEL_30:
    v15 = *(v0 + 8);
    goto LABEL_31;
  }

  v24 = sub_2517B34A0();

  if (v24)
  {
    goto LABEL_30;
  }

  v25 = MEMORY[0x277D837D0];
  sub_2517B02EC(0, &qword_27F45ECA8, &qword_27F45ECB0, MEMORY[0x277D837D0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517B4330;
  *(inited + 32) = sub_2517B32F0();
  *(inited + 72) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000002517B4C50;
  sub_2517AC2F8(inited);
  swift_setDeallocating();
  sub_2517B0344(inited + 32, &qword_27F45ECB0, v25);
  v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v29 = sub_2517B32E0();
  v30 = sub_2517B32A0();

  [v28 initWithDomain:v29 code:1 userInfo:v30];

  swift_willThrow();
  v15 = *(v0 + 8);
LABEL_31:

  return v15();
}

uint64_t dispatch thunk of RemoteHeartRateStreamRequestorInterface.sendRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2517B0414;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteHeartRateStreamRequestorInterface.requestHeartRateStream()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517B0414;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteHeartRateStreamRequestorInterface.stopHeartRateStream()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2517AEEB4;

  return v7(a1, a2);
}

void sub_2517B010C(uint64_t a1)
{
  if (!qword_27F45ECE0)
  {
    sub_2517B0178();
    v1 = sub_2517B3340();
    if (!v2)
    {
      atomic_store(v1, &qword_27F45ECE0);
    }
  }
}

unint64_t sub_2517B0178()
{
  result = qword_27F45ECE8;
  if (!qword_27F45ECE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F45ECE8);
  }

  return result;
}

uint64_t sub_2517B01DC()
{
  sub_2517B010C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2517B0264(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2517B010C(0);

  return sub_2517AE218(a1, a2, a3);
}

void sub_2517B02EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2517AC6B0(255, a3, a4);
    v5 = sub_2517B3490();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2517B0344(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2517AC6B0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2517B03B8(uint64_t a1)
{
  sub_2517A90FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2517B042C()
{
  v0 = sub_2517B3270();
  __swift_allocate_value_buffer(v0, qword_27F45FAB0);
  __swift_project_value_buffer(v0, qword_27F45FAB0);
  return sub_2517B3260();
}

uint64_t static HeartRateDevice.deviceFromProto(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  v5 = *(a1 + v4[6]);
  v6 = *(a1 + v4[7]);
  v7 = *(a1 + v4[8]);
  v8 = *(a1 + v4[9]);
  v9 = *(a1 + v4[10]);
  v10 = *(a1 + v4[11]);
  v11 = *(a1 + v4[12]);
  *a2 = *(a1 + v4[5]);
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
}

uint64_t HeartRateDevice.protoHeartRateDevice()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for ProtoHeartRateDevice(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v27 = *v1;
  v28 = v7;
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v29 = v1[4];
  v30 = v10;
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v31 = v1[8];
  v32 = v13;
  v15 = v1[13];
  v33 = v1[12];
  v16 = v1[15];
  v34 = v1[14];
  v35 = v14;

  sub_2517B30E0();
  v17 = &v5[v3[7]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v5[v3[8]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v5[v3[9]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v5[v3[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v5[v3[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v5[v3[12]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v5[v3[13]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v5[v3[14]];
  *v24 = 0;
  *(v24 + 1) = 0;
  if (v6)
  {
    *v17 = v27;
    *(v17 + 1) = v6;
  }

  if (v8)
  {
    *v18 = v28;
    *(v18 + 1) = v8;
  }

  v25 = v35;
  if (v9)
  {
    *v19 = v29;
    *(v19 + 1) = v9;
  }

  if (v11)
  {
    *v20 = v30;
    *(v20 + 1) = v11;
  }

  if (v12)
  {
    *v21 = v31;
    *(v21 + 1) = v12;
  }

  if (v25)
  {
    *v22 = v32;
    *(v22 + 1) = v25;
  }

  if (v15)
  {
    *v23 = v33;
    *(v23 + 1) = v15;
  }

  if (v16)
  {
    *v24 = v34;
    *(v24 + 1) = v16;
  }

  sub_2517A012C(v5, v36);
}

uint64_t static HeartRate.heartRateFromProto(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v62 = type metadata accessor for ProtoHeartRate(0);
  MEMORY[0x28223BE20](v62);
  v65 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2517B0F54(0, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v56[-v5];
  v6 = type metadata accessor for ProtoHeartRateDevice(0);
  v63 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2517B3060();
  v64 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2517B0F54(0, &qword_27F45ECF8, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56[-v13];
  v15 = sub_2517B30C0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v56[-v20];
  sub_2517B3070();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2517B1700(v14, &qword_27F45ECF8, MEMORY[0x277CC95F0]);
    if (qword_27F45EA30 != -1)
    {
      swift_once();
    }

    v22 = sub_2517B3270();
    __swift_project_value_buffer(v22, qword_27F45FAB0);
    v23 = v65;
    sub_2517B0FA8(a1, v65);
    v24 = sub_2517B3250();
    v25 = sub_2517B3380();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68[0] = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_2517A8B20(0x7461527472616548, 0xE900000000000065, v68);
      *(v26 + 12) = 2080;
      v28 = *(v23 + 2);
      v29 = *(v23 + 3);

      sub_2517B100C(v23, type metadata accessor for ProtoHeartRate);
      v30 = sub_2517A8B20(v28, v29, v68);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_25179D000, v24, v25, "[%{public}s] Could not construct UUID from proto encoded UUID String %s.", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530828F0](v27, -1, -1);
      MEMORY[0x2530828F0](v26, -1, -1);
    }

    else
    {

      sub_2517B100C(v23, type metadata accessor for ProtoHeartRate);
    }

    v46 = type metadata accessor for HeartRate(0);
    return (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  }

  else
  {
    v65 = v9;
    v59 = *(v16 + 32);
    v59(v21, v14, v15);
    v31 = v11;
    sub_2517B3010();
    v32 = *(a1 + 8);
    v33 = v62;
    v34 = (a1 + *(v62 + 32));
    v58 = *v34;
    v57 = *(v34 + 8);
    v35 = *(v16 + 16);
    v60 = v19;
    v35(v19, v21, v15);
    v36 = v61;
    sub_2517A000C(a1 + *(v33 + 36), v61);
    v37 = *(v63 + 48);
    if (v37(v36, 1, v6) == 1)
    {
      sub_2517B30E0();
      v38 = &v8[v6[5]];
      *v38 = 0;
      v38[1] = 0;
      v39 = &v8[v6[6]];
      *v39 = 0;
      v39[1] = 0;
      v40 = &v8[v6[7]];
      *v40 = 0;
      v40[1] = 0;
      v41 = &v8[v6[8]];
      *v41 = 0;
      v41[1] = 0;
      v42 = &v8[v6[9]];
      *v42 = 0;
      v42[1] = 0;
      v43 = &v8[v6[10]];
      *v43 = 0;
      v43[1] = 0;
      v44 = &v8[v6[11]];
      *v44 = 0;
      v44[1] = 0;
      v45 = &v8[v6[12]];
      *v45 = 0;
      v45[1] = 0;
      if (v37(v36, 1, v6) != 1)
      {
        sub_2517B1700(v36, &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice);
      }
    }

    else
    {
      sub_2517A012C(v36, v8);
    }

    static HeartRateDevice.deviceFromProto(_:)(v8, v67);
    sub_2517B100C(v8, type metadata accessor for ProtoHeartRateDevice);
    (*(v16 + 8))(v21, v15);
    v48 = v66;
    (*(v64 + 32))(v66, v31, v65);
    v49 = type metadata accessor for HeartRate(0);
    *(v48 + v49[5]) = v32;
    v50 = v48 + v49[6];
    *v50 = v58;
    *(v50 + 8) = v57;
    v59((v48 + v49[7]), v60, v15);
    v51 = (v48 + v49[8]);
    v52 = v67[5];
    v51[4] = v67[4];
    v51[5] = v52;
    v53 = v67[7];
    v51[6] = v67[6];
    v51[7] = v53;
    v54 = v67[1];
    *v51 = v67[0];
    v51[1] = v54;
    v55 = v67[3];
    v51[2] = v67[2];
    v51[3] = v55;
    return (*(*(v49 - 1) + 56))(v48, 0, 1, v49);
  }
}

void sub_2517B0F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517B33D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2517B0FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoHeartRate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2517B100C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeartRate.protoHeartRate()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ProtoHeartRateDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProtoHeartRate(0);
  sub_2517B30E0();
  v9 = &a1[*(v8 + 32)];
  *v9 = 0;
  v9[8] = 1;
  v10 = *(v8 + 36);
  v27 = *(v5 + 56);
  v27(&a1[v10], 1, 1, v4);
  v11 = type metadata accessor for HeartRate(0);
  *(a1 + 2) = sub_2517B3080();
  *(a1 + 3) = v12;
  sub_2517B3020();
  *a1 = v13;
  *(a1 + 1) = *(v2 + v11[5]);
  v14 = v2 + v11[6];
  if ((*(v14 + 8) & 1) == 0)
  {
    *v9 = *v14;
    v9[8] = 0;
  }

  v15 = (v2 + v11[8]);
  v16 = v15[5];
  v17 = v15[3];
  v39 = v15[4];
  v40 = v16;
  v18 = v15[5];
  v19 = v15[7];
  v41 = v15[6];
  v42 = v19;
  v20 = v15[1];
  v36[0] = *v15;
  v36[1] = v20;
  v21 = v15[3];
  v23 = *v15;
  v22 = v15[1];
  v37 = v15[2];
  v38 = v21;
  v32 = v39;
  v33 = v18;
  v24 = v15[7];
  v34 = v41;
  v35 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v37;
  v31 = v17;
  sub_2517A43B8(v36, v43);
  HeartRateDevice.protoHeartRateDevice()(v7);
  v43[4] = v32;
  v43[5] = v33;
  v43[6] = v34;
  v43[7] = v35;
  v43[0] = v28;
  v43[1] = v29;
  v43[2] = v30;
  v43[3] = v31;
  sub_2517A4A00(v43);
  sub_2517B1700(&a1[v10], &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice);
  sub_2517A012C(v7, &a1[v10]);
  return (v27)(&a1[v10], 0, 1, v4);
}

uint64_t HeartRate.serializedData()()
{
  v1 = v0;
  v2 = type metadata accessor for ProtoHeartRateDevice(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProtoHeartRate(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2517B30E0();
  v8 = &v7[*(v5 + 32)];
  *v8 = 0;
  v8[8] = 1;
  v9 = *(v5 + 36);
  v10 = *(v3 + 56);
  v32 = v2;
  v30 = v10;
  v10(&v7[v9], 1, 1, v2);
  v11 = type metadata accessor for HeartRate(0);
  *(v7 + 2) = sub_2517B3080();
  *(v7 + 3) = v12;
  sub_2517B3020();
  v13 = v11[6];
  v14 = *(v1 + v11[5]);
  *v7 = v15;
  *(v7 + 1) = v14;
  if ((*(v1 + v13 + 8) & 1) == 0)
  {
    *v8 = *(v1 + v13);
    v8[8] = 0;
  }

  v16 = (v1 + v11[8]);
  v17 = v16[5];
  v18 = v16[3];
  v44 = v16[4];
  v45 = v17;
  v19 = v16[5];
  v20 = v16[7];
  v46 = v16[6];
  v47 = v20;
  v21 = v16[1];
  v41[0] = *v16;
  v41[1] = v21;
  v22 = v16[3];
  v24 = *v16;
  v23 = v16[1];
  v42 = v16[2];
  v43 = v22;
  v37 = v44;
  v38 = v19;
  v25 = v16[7];
  v39 = v46;
  v40 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v42;
  v36 = v18;
  sub_2517A43B8(v41, v48);
  v26 = v31;
  HeartRateDevice.protoHeartRateDevice()(v31);
  v48[4] = v37;
  v48[5] = v38;
  v48[6] = v39;
  v48[7] = v40;
  v48[0] = v33;
  v48[1] = v34;
  v48[2] = v35;
  v48[3] = v36;
  sub_2517A4A00(v48);
  sub_2517B1700(&v7[v9], &qword_27F45EA38, type metadata accessor for ProtoHeartRateDevice);
  sub_2517A012C(v26, &v7[v9]);
  v30(&v7[v9], 0, 1, v32);
  sub_2517B175C();
  v27 = sub_2517B31B0();
  sub_2517B100C(v7, type metadata accessor for ProtoHeartRate);
  return v27;
}

uint64_t static HeartRate.heartRate(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2517B3110();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for ProtoHeartRate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_2517B17B4(a1, a2);
  sub_2517B3100();
  sub_2517B175C();
  result = sub_2517B31C0();
  if (!v3)
  {
    static HeartRate.heartRateFromProto(_:)(v10, a3);
    return sub_2517B100C(v10, type metadata accessor for ProtoHeartRate);
  }

  return result;
}

uint64_t sub_2517B1700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2517B0F54(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2517B175C()
{
  result = qword_27F45EA70;
  if (!qword_27F45EA70)
  {
    type metadata accessor for ProtoHeartRate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45EA70);
  }

  return result;
}

uint64_t sub_2517B17B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2517B1808()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  return (*(v2 + 8))(v1, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2517B18A8()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t HeartRateProvider.__allocating_init(hrcClient:remoteHRStreamRequestor:userDefaults:)(void *a1, void *a2, __int128 *a3)
{
  v4 = v3;
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_2517B2858(v12, v18, a3, v4, v9, v14, v8, v15);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t HeartRateProvider.init(hrcClient:remoteHRStreamRequestor:userDefaults:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  swift_defaultActor_initialize();
  sub_2517B29AC(a1, v3 + 112);
  sub_2517B29AC(a2, v3 + 152);
  sub_2517B29AC(a3, v3 + 192);
  return v3;
}

void HeartRateProvider.__allocating_init()()
{
  v0 = type metadata accessor for HeartRateCoordinatorClient(0);
  v1 = [objc_allocWithZone(v0) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  v3 = type metadata accessor for RemoteHeartRateStreamRequestor();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = sub_2517B32E0();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v16 = sub_2517B29C4();
    v17 = &protocol witness table for NSUserDefaults;
    *&v15 = v7;
    v13 = v0;
    v14 = &protocol witness table for HeartRateCoordinatorClient;
    *&v12 = v1;
    v10 = v3;
    v11 = &protocol witness table for RemoteHeartRateStreamRequestor;
    *&v9 = v4;
    type metadata accessor for HeartRateProvider();
    v8 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_2517B29AC(&v12, v8 + 112);
    sub_2517B29AC(&v9, v8 + 152);
    sub_2517B29AC(&v15, v8 + 192);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2517B1C94()
{
  v1 = v0[2];
  v2 = v1[27];
  v3 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_2517B2D2C;

    return HeartRateProvider.startRemoteStreaming()();
  }

  else
  {
    v6 = v0[2];
    v7 = v6[17];
    v8 = v6[18];
    __swift_project_boxed_opaque_existential_1(v6 + 14, v7);
    (*(v8 + 24))(v7, v8);
    v9 = v0[1];

    return v9();
  }
}

Swift::Bool __swiftcall HeartRateProvider.shouldRequestRemoteStreaming()()
{
  v1 = v0[27];
  v2 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t sub_2517B1E48()
{
  v1 = *(v0 + 16);
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2517B1F70;

  return v6(v2, v3);
}

uint64_t sub_2517B1F70()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_2517B20B4, v6, 0);
  }
}

uint64_t sub_2517B20B4()
{
  if (qword_27F45EA30 != -1)
  {
    swift_once();
  }

  v1 = sub_2517B3270();
  __swift_project_value_buffer(v1, qword_27F45FAB0);
  v2 = sub_2517B3250();
  v3 = sub_2517B3390();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25179D000, v2, v3, "Successfully requested remote HR streaming)", v4, 2u);
    MEMORY[0x2530828F0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2517B21EC()
{
  v1 = v0[2];
  v2 = v1[27];
  v3 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_2517B2328;

    return HeartRateProvider.stopRemoteStreaming()();
  }

  else
  {
    v6 = v0[2];
    v7 = v6[17];
    v8 = v6[18];
    __swift_project_boxed_opaque_existential_1(v6 + 14, v7);
    (*(v8 + 32))(v7, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2517B2328()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2517B243C()
{
  v1 = *(v0 + 16);
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2517B2564;

  return v6(v2, v3);
}

uint64_t sub_2517B2564()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_2517B26A8, v6, 0);
  }
}

uint64_t sub_2517B26A8()
{
  if (qword_27F45EA30 != -1)
  {
    swift_once();
  }

  v1 = sub_2517B3270();
  __swift_project_value_buffer(v1, qword_27F45FAB0);
  v2 = sub_2517B3250();
  v3 = sub_2517B3390();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25179D000, v2, v3, "Successfully requested to stop remote HR streaming)", v4, 2u);
    MEMORY[0x2530828F0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

void *HeartRateProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t HeartRateProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2517B2858(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a5;
  v23 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v19 = a6;
  v20 = a8;
  v15 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a6 - 8) + 32))(v15, a2, a6);
  type metadata accessor for HeartRateProvider();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_2517B29AC(&v21, v16 + 112);
  sub_2517B29AC(&v18, v16 + 152);
  sub_2517B29AC(a3, v16 + 192);
  return v16;
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

uint64_t sub_2517B29AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2517B29C4()
{
  result = qword_27F45ED00;
  if (!qword_27F45ED00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F45ED00);
  }

  return result;
}

uint64_t dispatch thunk of HeartRateProvider.startHeartRateStreaming()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2517B0414;

  return v4();
}

uint64_t dispatch thunk of HeartRateProvider.stopHeartRateStreaming()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2517AEEB4;

  return v4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id static NSError.error(code:description:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_2517AC290(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2517B4330;
  *(inited + 32) = sub_2517B32F0();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_2517AC2F8(inited);
  swift_setDeallocating();
  sub_2517AC430(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v9 = sub_2517B32E0();
  v10 = sub_2517B32A0();

  v11 = [v8 initWithDomain:v9 code:v5 userInfo:v10];

  return v11;
}

HealthHeartRateStream::ErrorCode_optional __swiftcall ErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2517B2EBC()
{
  v1 = *v0;
  sub_2517B34D0();
  MEMORY[0x253082430](v1);
  return sub_2517B34F0();
}

uint64_t sub_2517B2F30(uint64_t a1)
{
  v2 = *v1;
  sub_2517B34D0();
  MEMORY[0x253082430](v2);
  return sub_2517B34F0();
}

unint64_t sub_2517B2F8C()
{
  result = qword_27F45ED08;
  if (!qword_27F45ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F45ED08);
  }

  return result;
}