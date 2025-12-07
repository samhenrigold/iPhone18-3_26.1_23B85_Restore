uint64_t sub_1B262960C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  result = type metadata accessor for SymmetricKey();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[16] + 8) = a2;
    return result;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[18];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[21];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1B262988C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 8);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[16];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B2629A28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[16];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B2629BB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[8] + 8);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[15];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B2629D54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B2629EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
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

uint64_t sub_1B262A00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
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

uint64_t sub_1B262A12C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[7] + 8);
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

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B262A2C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ServerSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B262A924(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1B262A938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B262A9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B262AA14(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1B262ABA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B262AD34(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1B262AF18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary13SessionTicketVSgMd, &_s15SwiftTLSLibrary13SessionTicketVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B262B0FC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1B262B280(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B262B40C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_1B262B59C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMd, &_s15SwiftTLSLibrary14HandshakeStateO019EncryptedExtensionsD0V11SessionDataOSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEClientStateVSgMd, &_s15SwiftTLSLibrary15PAKEClientStateVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B262B72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B262B85C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B262B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B262BABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PeerCertificateBundle(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B262BBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B262BD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleVSgMd, &_s15SwiftTLSLibrary21PeerCertificateBundleVSgMR);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMd, &_s15SwiftTLSLibrary23ClientSessionKeyManagerVy9CryptoKit6SHA384VGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B262BE64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for SPAKE2.Verifier();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1B262BFA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = type metadata accessor for SPAKE2.Verifier();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1B262C0D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TLSHandshakeStateMachine(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for TLSRecordProtector(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[6];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[9]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[7];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B262C244(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TLSRecordProtector(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B262C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for HandshakeStateMachine(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B262C44C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for HandshakeStateMachine(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B262C554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Curve25519.KeyAgreement.PrivateKey();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for MLKEM768.PrivateKey();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B262C674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Curve25519.KeyAgreement.PrivateKey();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MLKEM768.PrivateKey();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B262C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B262C854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void nwswifttls_update_encryption_level(void *a1, int a2, char a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = v5[24];
    if (v7)
    {
      if (v6[25])
      {
        v8 = _Block_copy(v7);
        v9 = v6[25];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __nwswifttls_update_encryption_level_block_invoke;
        v10[3] = &unk_1E7B2E3D0;
        v10[4] = v8;
        v11 = a2;
        v12 = a3;
        dispatch_async(v9, v10);
      }
    }
  }
}

uint64_t nwswifttls_get_encryption_key_label(uint64_t a1, int a2, const char **a3)
{
  result = 0;
  if (a1)
  {
    if (a3)
    {
      v12 = 0;
      result = nwswifttls_get_encryption_level(a1, &v12);
      if (result)
      {
        v7 = "SERVER_TRAFFIC_SECRET_0";
        if (a2)
        {
          v7 = "CLIENT_TRAFFIC_SECRET_0";
        }

        v8 = "SERVER_HANDSHAKE_TRAFFIC_SECRET";
        if (a2)
        {
          v8 = "CLIENT_HANDSHAKE_TRAFFIC_SECRET";
        }

        v9 = "SERVER_UNDEFINED_SECRET";
        if (a2)
        {
          v9 = "CLIENT_UNDEFINED_SECRET";
        }

        v10 = "SERVER_EARLY_TRAFFIC_SECRET";
        if (a2)
        {
          v10 = "CLIENT_EARLY_TRAFFIC_SECRET";
        }

        if (v12 == 1)
        {
          v9 = v10;
        }

        if (v12 != 2)
        {
          v8 = v9;
        }

        if (v12 == 3)
        {
          v11 = v7;
        }

        else
        {
          v11 = v8;
        }

        *a3 = v11;
      }
    }
  }

  return result;
}

void ssl_log_secret(const char *a1, void *a2, void *a3)
{
  v23[15] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && a1 && v6)
  {
    v8 = [v5 length];
    v9 = [v5 bytes];
    v10 = v7;
    v11 = [v10 length];
    v12 = [v10 bytes];
    v23[0] = @"%c";
    v23[1] = a1;
    v23[2] = strlen(a1);
    v23[3] = @"%c";
    v23[4] = " ";
    v23[5] = 1;
    v23[6] = @"%02x";
    v23[7] = v9;
    v23[8] = v8;
    v23[9] = @"%c";
    v23[10] = " ";
    v23[11] = 1;
    v23[12] = @"%02x";
    v23[13] = v12;
    v23[14] = v11;
    v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = 0; i != 5; ++i)
    {
      v15 = &v23[3 * i];
      v16 = *v15;
      v17 = v15[2];
      if (v17)
      {
        v18 = v15[1];
        do
        {
          v19 = *v18++;
          [v13 appendFormat:v16, v19];
          --v17;
        }

        while (v17);
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_1B25F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    for (j = 12; j != -3; j -= 3)
    {
    }
  }
}

void sub_1B262CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  for (i = 96; i != -24; i -= 24)
  {
  }

  _Unwind_Resume(a1);
}

sec_trust_t nwswifttls_copy_copy_authenticator_trust(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v33 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    v10 = a1;
    if (v10[38])
    {
      v5 = 0;
LABEL_25:

      return v5;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
    v12 = 0;
    if (a4 && a5)
    {
      v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:a5];
    }

    v13 = [v10[37] validateAuthenticatorWithAuthenticator:v11 context:v12 keyParser:&__block_literal_global_0];
    if (![v13 count])
    {
      goto LABEL_22;
    }

    v26 = v11;
    v14 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = SecCertificateCreateWithData(v14, *(*(&v28 + 1) + 8 * i));
          if (v21)
          {
            v22 = v21;
            CFArrayAppendValue(Mutable, v21);
            CFRelease(v22);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    SSLWithKeyUsage = SecPolicyCreateSSLWithKeyUsage();
    if (!SSLWithKeyUsage)
    {
      CFRelease(Mutable);
      v5 = 0;
      v11 = v26;
      goto LABEL_24;
    }

    v24 = SSLWithKeyUsage;
    trust = 0;
    SecTrustCreateWithCertificates(Mutable, SSLWithKeyUsage, &trust);
    CFRelease(v24);
    CFRelease(Mutable);
    v11 = v26;
    if (trust)
    {
      v5 = sec_trust_create(trust);
      CFRelease(trust);
    }

    else
    {
LABEL_22:
      v5 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  return v5;
}

SecKeyRef __nwswifttls_copy_copy_authenticator_trust_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (v3 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v2)) != 0)
  {
    v4 = v3;
    v5 = SecCertificateCopyKey(v3);
    CFRelease(v4);
    if (v5)
    {
      SecKeyCopyPublicBytes();
      CFRelease(v5);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__int128 *nwswifttls_identifier()
{
  if (nwswifttls_identifier_onceToken != -1)
  {
    nwswifttls_identifier_cold_1();
  }

  return &g_nwswifttls_identifier;
}

uint64_t nwswifttls_remove_input_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = *(a1 + 40);
    if (v6 && (*(a2 + 32) = 0, *(v3 + 48) == a2))
    {
      v7 = 0;
      *(v3 + 48) = 0;
      v8 = MEMORY[0x1E69E9820];
      do
      {
        nw_frame_array_foreach();
        v7 += 8;
      }

      while (v7 != 32);
      v14 = *(v3 + 32);
      if (v14)
      {
        v15 = *(v14 + 24);
        if (v15)
        {
          v16 = *(v15 + 8);
          if (v16)
          {
            v16(v14, v3, a3, v9, v10, v11, v12, v13, v8, 3221225472);
          }
        }
      }

      if (a3)
      {
        v17 = *(v3 + 40);
        *(v3 + 40) = 0;
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void nwswifttls_deallocate_metadata(void *a1, uint64_t a2)
{
  v17 = a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      free(v3);
      *(a2 + 40) = 0;
    }

    v4 = *(a2 + 176);
    if (v4)
    {
      free(v4);
      *(a2 + 176) = 0;
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      free(v5);
      *(a2 + 48) = 0;
    }

    v6 = *(a2 + 56);
    if (v6)
    {
      free(v6);
      *(a2 + 56) = 0;
    }

    v7 = *(a2 + 384);
    if (v7)
    {
      CFSetApplyFunction(v7, nw_protocol_nwswifttls_returned_raw_string_pointer_deallocate, 0);
      CFRelease(*(a2 + 384));
    }

    v8 = *(a2 + 88);
    *(a2 + 88) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 136);
    *(a2 + 136) = 0;

    v12 = *(a2 + 144);
    *(a2 + 144) = 0;

    v13 = *(a2 + 152);
    *(a2 + 152) = 0;

    v14 = *(a2 + 160);
    *(a2 + 160) = 0;

    v15 = *(a2 + 168);
    *(a2 + 168) = 0;

    v16 = *(a2 + 80);
    *(a2 + 80) = 0;
  }

  free(a2);
}

void nwswifttls_send_error(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    if (*(v3 + 286) == 1 && (v3[36] & 1) == 0)
    {
      v4 = v3[7];
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 56);
          if (v6)
          {
            *(v3 + 288) = 1;
            v7 = v3;
            v6(v4, v3 + 1, a2);
            (*(*(v4 + 24) + 48))(v4, v7 + 1);
            v3 = v7;
          }
        }
      }
    }
  }
}

uint64_t nwswifttls_send_alert(void *a1, unsigned int a2)
{
  v3 = a1;
  if (v3)
  {
    if (a2 <= 3)
    {
      v4 = v3[a2 + 11];
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v6 = *(v5 + 56);
          if (v6)
          {
            v6();
          }
        }
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __nwswifttls_finalize_output_frame_arrays_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void __nwswifttls_connected_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 80);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __nwswifttls_connected_block_invoke_2;
  v13[3] = &unk_1E7B2E518;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v7;
  v15 = v5;
  v16 = v9;
  v17 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  dispatch_sync(v8, v13);
}

void nw_protocol_nwswifttls_returned_raw_string_pointer_deallocate(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

__int128 *nwswifttlsrecord_identifier()
{
  if (nwswifttlsrecord_identifier_onceToken != -1)
  {
    __nwswifttlsrecord_copy_definition_block_invoke_cold_1();
  }

  return &g_nwswifttlsrecord_identifier;
}

char *nwswifttlsrecord_copy_options(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 0x1B0uLL, 0x10F0040BA95764DuLL);
    v5 = v4;
    if (v4)
    {
      nwswifttls_copy_options_contents(v4, a2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void nwswifttlsrecord_deallocate_options(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    free(*(a2 + 8));
    free(*(a2 + 16));
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;

    v4 = *(a2 + 232);
    *(a2 + 232) = 0;

    v5 = *(a2 + 48);
    *(a2 + 48) = 0;

    v6 = *(a2 + 56);
    *(a2 + 56) = 0;

    v7 = *(a2 + 88);
    *(a2 + 88) = 0;

    v8 = *(a2 + 96);
    *(a2 + 96) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 120);
    *(a2 + 120) = 0;

    v12 = *(a2 + 128);
    *(a2 + 128) = 0;

    v13 = *(a2 + 176);
    *(a2 + 176) = 0;

    v14 = *(a2 + 184);
    *(a2 + 184) = 0;

    v15 = *(a2 + 72);
    *(a2 + 72) = 0;

    v16 = *(a2 + 192);
    *(a2 + 192) = 0;

    v17 = *(a2 + 136);
    *(a2 + 136) = 0;

    v18 = *(a2 + 144);
    *(a2 + 144) = 0;

    v19 = *(a2 + 152);
    *(a2 + 152) = 0;

    v20 = *(a2 + 160);
    *(a2 + 160) = 0;

    v21 = *(a2 + 168);
    *(a2 + 168) = 0;

    v22 = *(a2 + 176);
    *(a2 + 176) = 0;

    v23 = *(a2 + 184);
    *(a2 + 184) = 0;

    v24 = *(a2 + 336);
    *(a2 + 336) = 0;

    v25 = *(a2 + 264);
    *(a2 + 264) = 0;

    v26 = *(a2 + 256);
    *(a2 + 256) = 0;

    v27 = *(a2 + 80);
    *(a2 + 80) = 0;

    free(*(a2 + 344));
    *(a2 + 360) = 0;
    v28 = *(a2 + 280);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 280) = 0;
    }

    v29 = *(a2 + 384);
    if (v29)
    {
      CFRelease(v29);
    }

    *(a2 + 384) = 0;
    v30 = *(a2 + 392);
    if (v30)
    {
      CFRelease(v30);
    }

    v31 = *(a2 + 400);
    *(a2 + 392) = 0;
    *(a2 + 400) = 0;
  }

  cc_clear();

  free(a2);
}

void nwswifttlsrecord_deallocate_metadata(void *a1, uint64_t a2)
{
  v17 = a1;
  if (a2)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      free(v3);
      *(a2 + 40) = 0;
    }

    v4 = *(a2 + 176);
    if (v4)
    {
      free(v4);
      *(a2 + 176) = 0;
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      free(v5);
      *(a2 + 48) = 0;
    }

    v6 = *(a2 + 56);
    if (v6)
    {
      free(v6);
      *(a2 + 56) = 0;
    }

    v7 = *(a2 + 384);
    if (v7)
    {
      CFSetApplyFunction(v7, nw_protocol_nwswifttlsrecord_returned_raw_string_pointer_deallocate, 0);
      CFRelease(*(a2 + 384));
    }

    v8 = *(a2 + 88);
    *(a2 + 88) = 0;

    v9 = *(a2 + 104);
    *(a2 + 104) = 0;

    v10 = *(a2 + 112);
    *(a2 + 112) = 0;

    v11 = *(a2 + 136);
    *(a2 + 136) = 0;

    v12 = *(a2 + 144);
    *(a2 + 144) = 0;

    v13 = *(a2 + 152);
    *(a2 + 152) = 0;

    v14 = *(a2 + 160);
    *(a2 + 160) = 0;

    v15 = *(a2 + 168);
    *(a2 + 168) = 0;

    v16 = *(a2 + 80);
    *(a2 + 80) = 0;
  }

  free(a2);
}

void nwswifttlsrecord_disconnect(uint64_t result)
{
  if (result)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
      {
        nwswifttlsrecord_disconnect_cold_1();
      }

      if (*(v3 + 252) != 3)
      {
        if ([*(v3 + 104) alertSentOrReceived])
        {
          nwswifttlsrecord_write_bytes(result);
        }

        else
        {
          [*(v3 + 104) sendCloseNotify];
          nwswifttlsrecord_write_bytes(result);
          v4 = [*(v3 + 104) getErrorCode];
          if (v4)
          {
            nwswifttlsrecord_send_error(result, v4);
          }
        }

        *(v3 + 252) = 3;
        nw_protocol_get_output_handler();
        nw_protocol_disconnect_quiet();
      }
    }
  }
}

uint64_t nwswifttlsrecord_write_bytes(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = nw_protocol_downcast();
  if (!v1)
  {
    return v1;
  }

  nw_protocol_get_output_handler();
  v34[0] = 0;
  v34[1] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = v34;
  if ((nw_protocol_get_output_frames_is_valid() & 1) == 0)
  {
    if (g_nwswifttls_log)
    {
      v14 = g_nwswifttls_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        name = nw_protocol_get_name();
        nwswifttlsrecord_write_bytes_cold_1(v1, name, buf, v14);
      }
    }

    goto LABEL_30;
  }

  if ((nw_protocol_finalize_output_frames_is_valid() & 1) == 0)
  {
    nwswifttlsrecord_write_bytes_cold_2(v1, buf);
LABEL_38:
    v1 = buf[0];
    goto LABEL_31;
  }

  if (![*(v1 + 104) getOutgoingBytesCount])
  {
LABEL_23:
    v1 = 1;
    goto LABEL_31;
  }

  *&v2 = 136447234;
  v16 = v2;
  while (1)
  {
    nw_frame_array_init();
    if (!nw_protocol_get_output_frames())
    {
      break;
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = nw_frame_array_unclaimed_length();
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v3 = [*(v1 + 104) getOutputWithNumBytes:*(v30 + 6)];
    nw_frame_array_foreach();
    if ((nw_frame_array_is_empty() & 1) == 0)
    {
      nw_protocol_finalize_output_frames();
      if (*(v1 + 252) == 2)
      {
        if (datapath_logging_enabled != 1)
        {
          goto LABEL_15;
        }

        v4 = g_nwswifttls_log;
        if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        v5 = *(v26 + 6);
        *buf = v16;
        v36 = "nwswifttlsrecord_write_bytes";
        v37 = 1024;
        v38 = 621;
        v39 = 2082;
        v40 = v1 + 269;
        v41 = 2048;
        v42 = v1;
        v43 = 1024;
        v44 = v5;
        v6 = v4;
      }

      else
      {
        v7 = g_nwswifttls_log;
        if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_15;
        }

        v12 = *(v26 + 6);
        *buf = v16;
        v36 = "nwswifttlsrecord_write_bytes";
        v37 = 1024;
        v38 = 623;
        v39 = 2082;
        v40 = v1 + 269;
        v41 = 2048;
        v42 = v1;
        v43 = 1024;
        v44 = v12;
        v6 = v7;
      }

      _os_log_debug_impl(&dword_1B25F5000, v6, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] total bytes written: %u", buf, 0x2Cu);
    }

LABEL_15:
    if (*(v22 + 6))
    {
      v8 = g_nwswifttls_log;
      if (g_nwswifttls_log)
      {
        if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
        {
          v10 = *(v22 + 6);
          v11 = *(v18 + 6);
          *buf = 136447490;
          v36 = "nwswifttlsrecord_write_bytes";
          v37 = 1024;
          v38 = 628;
          v39 = 2082;
          v40 = v1 + 269;
          v41 = 2048;
          v42 = v1;
          v43 = 1024;
          v44 = v10;
          v45 = 1024;
          v46 = v11;
          _os_log_error_impl(&dword_1B25F5000, v8, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] failed to use %u frames with length %u", buf, 0x32u);
        }
      }
    }

    v9 = [*(v1 + 104) getOutgoingBytesCount];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (*(v1 + 252) == 2)
  {
    if (datapath_logging_enabled == 1)
    {
      nwswifttlsrecord_write_bytes_cold_4(v1 + 269, v1, buf);
      goto LABEL_38;
    }
  }

  else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    nwswifttlsrecord_write_bytes_cold_3();
  }

LABEL_30:
  v1 = 0;
LABEL_31:
  _Block_object_dispose(v33, 8);
  return v1;
}

uint64_t nwswifttlsrecord_send_error(uint64_t a1, uint64_t a2)
{
  result = nw_protocol_downcast();
  if (result)
  {
    v5 = result;
    if ((*(result + 268) & 1) == 0)
    {
      input_handler = nw_protocol_get_input_handler();
      result = nw_protocol_error_is_valid();
      if (result)
      {
        *(v5 + 268) = 1;

        return MEMORY[0x1EEDD4390](input_handler, a1, a2);
      }
    }
  }

  return result;
}

BOOL nwswifttlsrecord_add_input_handler(_BOOL8 result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = nw_protocol_downcast();
    result = 0;
    if (a2)
    {
      if (v3)
      {
        if (g_nwswifttls_log)
        {
          if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
          {
            nwswifttlsrecord_add_input_handler_cold_1();
          }
        }

        if (nw_protocol_get_input_handler())
        {
          v4 = g_nwswifttls_log;
          if (g_nwswifttls_log)
          {
            result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            *v12 = 136446978;
            *&v12[4] = "nwswifttlsrecord_add_input_handler";
            *&v12[12] = 1024;
            *&v12[14] = 832;
            v13 = 2082;
            v14 = v3 + 269;
            v15 = 2048;
            v16 = v3;
            _os_log_impl(&dword_1B25F5000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] input handler already set", v12, 0x26u);
          }
        }

        else
        {
          v5 = nw_protocol_get_parameters_quiet();
          v6 = *(v3 + 32);
          *(v3 + 32) = v5;

          if (*(v3 + 32))
          {
            v7 = nw_parameters_copy_protocol_options_legacy();
            v8 = *(v3 + 16);
            *(v3 + 16) = v7;

            if (*(v3 + 16))
            {
              nw_protocol_options_get_log_id_str();
              v9 = nwswifttlsrecord_copy_definition();
              v10 = MEMORY[0x1B274E490]();
              v11 = *(v3 + 24);
              *(v3 + 24) = v10;

              *v12 = 0;
              *&v12[8] = 0;
              nw_protocol_get_flow_id();
              nw_protocol_set_flow_id();
              *(v3 + 260) = 0;
              nw_protocol_set_output_handler();
              nw_protocol_set_input_handler();
              return 1;
            }

            if (g_nwswifttls_log)
            {
              result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return result;
              }

              nwswifttlsrecord_add_input_handler_cold_2();
            }
          }

          else if (g_nwswifttls_log)
          {
            result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG);
            if (!result)
            {
              return result;
            }

            nwswifttlsrecord_add_input_handler_cold_3();
          }
        }

        return 0;
      }
    }
  }

  return result;
}

BOOL nwswifttlsrecord_replace_input_handler(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = nw_protocol_downcast();
    result = 0;
    if (a3)
    {
      if (a2 && v5)
      {
        if (g_nwswifttls_log)
        {
          if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
          {
            nwswifttlsrecord_replace_input_handler_cold_1();
          }
        }

        if (nw_protocol_get_input_handler() == a2)
        {
          nw_protocol_set_input_handler();
          nw_protocol_set_output_handler();
          *(v5 + 260) = 0;
          return 1;
        }

        else
        {
          v6 = g_nwswifttls_log;
          if (g_nwswifttls_log)
          {
            result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }

            v7 = v6;
            v8 = 136447490;
            v9 = "nwswifttlsrecord_replace_input_handler";
            v10 = 1024;
            v11 = 875;
            v12 = 2082;
            v13 = v5 + 269;
            v14 = 2048;
            v15 = v5;
            v16 = 2048;
            input_handler = nw_protocol_get_input_handler();
            v18 = 2048;
            v19 = a2;
            _os_log_error_impl(&dword_1B25F5000, v7, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] old input handler does not match (%p != %p)", &v8, 0x3Au);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_remove_input_handler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = a3;
    result = nw_protocol_downcast();
    if (result)
    {
      v5 = result;
      nw_protocol_set_output_handler();
      if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
      {
        nwswifttlsrecord_remove_input_handler_cold_1();
      }

      if (nw_protocol_get_input_handler() == a2)
      {
        nw_protocol_set_input_handler();
        if ((nw_frame_array_is_empty() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
        {
          nwswifttlsrecord_remove_input_handler_cold_2();
        }

        if ((nw_frame_array_is_empty() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
        {
          nwswifttlsrecord_remove_input_handler_cold_3();
        }

        if ((nw_frame_array_is_empty() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
        {
          nwswifttlsrecord_remove_input_handler_cold_4();
        }

        nw_protocol_get_output_handler();
        nw_protocol_remove_input_handler_quiet();
        if (v3)
        {
          v6 = *(v5 + 8);
          *(v5 + 8) = 0;

          nw_protocol_destroy();
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void nwswifttlsrecord_connected(id *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      nw_protocol_get_input_handler();
      v6 = nw_protocol_get_parameters();
      v7 = nw_parameters_copy_protocol_options_legacy();
      nw_protocol_options_get_log_id_str();
      v8 = g_nwswifttls_log;
      if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136446978;
        v16 = "nwswifttlsrecord_connected";
        v17 = 1024;
        v18 = 936;
        v19 = 2082;
        v20 = v5 + 269;
        v21 = 2048;
        v22 = v5;
        _os_log_impl(&dword_1B25F5000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] nwswifttlsrecord_connected invoked", &v15, 0x26u);
      }

      v9 = nwswifttlsrecord_copy_definition();
      v10 = MEMORY[0x1B274E490]();
      v11 = *(v5 + 24);
      *(v5 + 24) = v10;

      nw_protocol_get_input_handler();
      if (nw_protocol_connected_is_valid())
      {
        if (*(v5 + 252) == 3)
        {
          if (g_nwswifttls_log)
          {
            if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
            {
              nwswifttlsrecord_connected_cold_3();
            }
          }
        }

        else
        {
          nw_protocol_get_input_handler();
          nw_protocol_connected();
          if (nw_protocol_get_output_handler() == a2)
          {
            v12 = *(v5 + 252);
            if (v12 == 1)
            {
              v14 = g_nwswifttls_log;
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_INFO))
              {
                v15 = 136446978;
                v16 = "nwswifttlsrecord_connected";
                v17 = 1024;
                v18 = 966;
                v19 = 2082;
                v20 = v5 + 269;
                v21 = 2048;
                v22 = v5;
                _os_log_impl(&dword_1B25F5000, v14, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Already started the negotiation. Skipping.", &v15, 0x26u);
              }
            }

            else if (v12 == 2)
            {
              v13 = g_nwswifttls_log;
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_INFO))
              {
                v15 = 136446978;
                v16 = "nwswifttlsrecord_connected";
                v17 = 1024;
                v18 = 959;
                v19 = 2082;
                v20 = v5 + 269;
                v21 = 2048;
                v22 = v5;
                _os_log_impl(&dword_1B25F5000, v13, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Already connected, reporting.", &v15, 0x26u);
              }

              nw_protocol_get_input_handler();
              nw_protocol_connected();
            }

            else
            {
              *(v5 + 252) = 1;
              *(v5 + 128) = nwswifttls_helper_get_current_time_ms();
              *(v5 + 124) = nwswifttls_get_transport_protocol(v6);
              *(v5 + 267) = nw_parameters_get_server_mode();
              if (nwswifttlsrecord_configure_with_sec_protocol_options(a1))
              {
                if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
                {
                  nwswifttlsrecord_connected_cold_2();
                }

                nw_protocol_nwswifttlsrecord_begin_connection(a1);
              }
            }
          }
        }
      }

      else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
      {
        nwswifttlsrecord_connected_cold_1();
      }
    }
  }
}

id *nwswifttlsrecord_input_available(id *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = nw_protocol_downcast();
    if (a2)
    {
      v4 = result;
      if (result)
      {
        result = nw_protocol_get_input_handler();
        if (result)
        {
          if (*(v4 + 252) == 2)
          {
            if (datapath_logging_enabled == 1)
            {
              nwswifttlsrecord_input_available_cold_2();
            }
          }

          else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
          {
            nwswifttlsrecord_input_available_cold_1();
          }

          return nwswifttlsrecord_read(v3);
        }
      }
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_output_available(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = nw_protocol_downcast();
    if (result)
    {
      v2 = result;
      result = nw_protocol_get_output_handler();
      if (result)
      {
        if (*(v2 + 252) == 2)
        {
          if (datapath_logging_enabled == 1)
          {
            nwswifttlsrecord_output_available_cold_2();
          }
        }

        else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
        {
          nwswifttlsrecord_output_available_cold_1();
        }

        result = nwswifttlsrecord_write_bytes(v1);
        if (result && *(v2 + 252) == 2)
        {
          if (datapath_logging_enabled == 1)
          {
            nwswifttlsrecord_output_available_cold_3();
          }

          nw_protocol_get_input_handler();
          return nw_protocol_output_available();
        }
      }
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_get_input_frames(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a4;
  v9 = a3;
  v12 = nw_protocol_downcast();
  v13 = 0;
  if (!a6)
  {
    return v13;
  }

  if (!a5)
  {
    return v13;
  }

  if (!v8)
  {
    return v13;
  }

  if (!a2)
  {
    return v13;
  }

  v14 = v12;
  if (!v12)
  {
    return v13;
  }

  if (*(v12 + 252) != 2)
  {
    return 0;
  }

  if (datapath_logging_enabled == 1)
  {
    nwswifttlsrecord_get_input_frames_cold_1();
  }

  if (![*(v14 + 104) getAvailableApplicationDataLength])
  {
    nwswifttlsrecord_read(a1);
  }

  *(v14 + 261) = 0;
  if (*(v14 + 262) == 1)
  {
    *(v14 + 262) = 0;
    v15 = nw_parameters_copy_context();
    v25 = v14;
    v16 = v25;
    nw_queue_context_async();
  }

  v17 = [*(v14 + 104) getAvailableApplicationDataLength];
  if (v17 <= v9)
  {
    return 0;
  }

  if (v17 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  v19 = malloc_type_malloc(v18, 0x100004077774924uLL);
  if (!v19)
  {
    if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      nwswifttlsrecord_get_input_frames_cold_3();
    }

    return 0;
  }

  v20 = v19;
  v21 = nw_frame_create();
  if (v21)
  {
    nw_frame_set_buffer_used_malloc();
    v22 = [*(v14 + 104) getAvailableApplicationDataWithNumBytes:v18];
    [v22 getBytes:v20 length:v18];
    v23 = v21;
    if (*(v14 + 24))
    {
      nw_frame_set_metadata();
    }

    nw_frame_array_init();
    nw_frame_array_append();
    v13 = 1;
    nw_frame_array_append();
  }

  else
  {
    if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      nwswifttlsrecord_get_input_frames_cold_2();
    }

    free(v20);
    v13 = 0;
  }

  return v13;
}

uint64_t nwswifttlsrecord_get_output_frames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a4;
  v10 = nw_protocol_downcast();
  v11 = 0;
  if (a6)
  {
    if (a5)
    {
      v12 = v10;
      if (v10)
      {
        if (*(v10 + 252) == 2)
        {
          if ((nwswifttlsrecord_write_bytes(a1) & 1) == 0)
          {
            if (datapath_logging_enabled)
            {
              nwswifttlsrecord_get_output_frames_cold_1(v12, &v18);
              return v18;
            }

            return 0;
          }

          if (datapath_logging_enabled)
          {
            nwswifttlsrecord_get_output_frames_cold_2();
          }

          nw_frame_array_init();
          if (v8 >= 0x4000)
          {
            v13 = 0x4000;
          }

          else
          {
            v13 = v8;
          }

          if (*(v12 + 260) == 1)
          {
            external = nw_frame_create_external();
            if (!external)
            {
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
              {
                nwswifttlsrecord_get_output_frames_cold_5();
              }

              return 0;
            }
          }

          else
          {
            if (v8 && !malloc_type_malloc(v13, 0x100004077774924uLL))
            {
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
              {
                nwswifttlsrecord_get_output_frames_cold_3();
              }

              return 0;
            }

            v16 = nw_frame_create();
            if (!v16)
            {
              if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
              {
                nwswifttlsrecord_get_output_frames_cold_4();
              }

              return 0;
            }

            external = v16;
            nw_frame_set_buffer_used_malloc();
          }

          v17 = external;
          nw_frame_array_append();
          v11 = 1;
          nw_frame_array_append();

          return v11;
        }

        return 0;
      }
    }
  }

  return v11;
}

void nwswifttlsrecord_input_finished(id *result)
{
  if (result)
  {
    v2 = nw_protocol_downcast();
    if (v2)
    {
      v3 = v2;
      if (nw_protocol_get_input_handler())
      {
        if (datapath_logging_enabled == 1)
        {
          nwswifttlsrecord_input_finished_cold_1();
        }

        if (*(v3 + 252) == 2)
        {
          if (*(v3 + 264))
          {
            *(v3 + 263) = 1;
          }

          else
          {
            *(v3 + 262) = 0;
            nwswifttlsrecord_read(result);
            nw_protocol_input_finished_quiet();
          }
        }

        else
        {
          nw_protocol_error_quiet();
          nw_protocol_disconnected_quiet();
        }
      }

      else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
      {
        nwswifttlsrecord_input_finished_cold_2();
      }
    }
  }
}

uint64_t nwswifttlsrecord_finalize_output_frames(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = nw_protocol_downcast();
    if (result)
    {
      nw_frame_array_append_array();
      if (nw_protocol_downcast())
      {
        nw_frame_array_foreach();
      }

      nwswifttlsrecord_write_bytes(v2);
      return 1;
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_copy_info(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = nw_protocol_downcast();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  nw_protocol_get_output_handler();
  nw_protocol_get_output_handler();
  if (nw_protocol_copy_info_is_valid())
  {
    nw_protocol_get_output_handler();
    v6 = nw_protocol_copy_info();
  }

  else
  {
    v6 = 0;
  }

  if (v3 == 254)
  {
    v9 = nw_protocol_copy_swift_tls_record_definition();
    v8 = nw_protocol_establishment_report_create();

    if (!v8)
    {
LABEL_18:

      return v6;
    }

    if (v6)
    {
LABEL_17:
      nw_array_append();
      goto LABEL_18;
    }

LABEL_16:
    v6 = MEMORY[0x1B274DE70]();
    goto LABEL_17;
  }

  if (v3 == 255)
  {
    v7 = *(v5 + 24);
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (!v7)
    {
      v6 = 0;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  return v6;
}

uint64_t nwswifttlsrecord_error(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = a3;
    result = nw_protocol_downcast();
    if (result)
    {
      v4 = result;
      *(result + 256) = v3;
      v24 = 0u;
      memset(v25, 0, sizeof(v25));
      v22 = 0u;
      v23 = 0u;
      *__strerrbuf = 0u;
      v21 = 0u;
      strerror_r(v3, __strerrbuf, 0x64uLL);
      v5 = *(v4 + 252);
      if (v5 < 2)
      {
        v6 = g_nwswifttls_log;
        if (v5 == 1)
        {
          if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          v8 = 136447490;
          v9 = "nwswifttlsrecord_error";
          v10 = 1024;
          v11 = 1307;
          v12 = 2082;
          v13 = v4 + 269;
          v14 = 2048;
          v15 = v4;
          v16 = 1024;
          v17 = v3;
          v18 = 2080;
          v19 = __strerrbuf;
          v7 = "%{public}s(%d) %{public}s[%p] Lower protocol stack error during TLS handshake. [%d: %s]";
        }

        else
        {
          if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          v8 = 136447490;
          v9 = "nwswifttlsrecord_error";
          v10 = 1024;
          v11 = 1309;
          v12 = 2082;
          v13 = v4 + 269;
          v14 = 2048;
          v15 = v4;
          v16 = 1024;
          v17 = v3;
          v18 = 2080;
          v19 = __strerrbuf;
          v7 = "%{public}s(%d) %{public}s[%p] Lower protocol stack error pre TLS handshake. [%d: %s]";
        }
      }

      else
      {
        v6 = g_nwswifttls_log;
        if (!g_nwswifttls_log || !os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_15;
        }

        v8 = 136447490;
        v9 = "nwswifttlsrecord_error";
        v10 = 1024;
        v11 = 1305;
        v12 = 2082;
        v13 = v4 + 269;
        v14 = 2048;
        v15 = v4;
        v16 = 1024;
        v17 = v3;
        v18 = 2080;
        v19 = __strerrbuf;
        v7 = "%{public}s(%d) %{public}s[%p] Lower protocol stack error post TLS handshake. [%d: %s]";
      }

      _os_log_impl(&dword_1B25F5000, v6, OS_LOG_TYPE_DEFAULT, v7, &v8, 0x36u);
LABEL_15:
      nw_protocol_get_input_handler();
      return nw_protocol_error_quiet();
    }
  }

  return result;
}

void *nwswifttlsrecord_reset(void *result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v1 = result;
      nw_frame_array_foreach();
      nw_frame_array_foreach();
      nw_frame_array_foreach();
      nw_frame_array_foreach();
      v2 = v1[14];
      v1[14] = 0;

      v1[15] = 0;
      v3 = v1[18];
      v1[18] = 0;

      v4 = v1[19];
      v1[19] = 0;

      v5 = v1[20];
      v1[20] = 0;

      v6 = v1[21];
      v1[21] = 0;

      v7 = v1[23];
      if (v7)
      {
        CFRelease(v7);
      }

      v1[23] = 0;
      v8 = v1[28];
      v1[28] = 0;

      v9 = v1[29];
      v1[29] = 0;

      v10 = v1[30];
      v1[30] = 0;

      *(v1 + 252) = 0;
      *(v1 + 259) = 0;
      nw_protocol_get_output_handler();
      return nw_protocol_reset_quiet();
    }
  }

  return result;
}

uint64_t nwswifttlsrecord_create(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = nw_protocol_new_objc();

  if (v4)
  {
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    v5 = v4;
    v5[1] = v5;
    v6 = nw_protocol_upcast();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void nw_protocol_nwswifttlsrecord_returned_raw_string_pointer_deallocate(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t __nwswifttlsrecord_write_bytes_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  nw_frame_unclaimed_bytes();
  nw_frame_array_remove();
  nw_frame_finalize();
  ++*(*(*(a1 + 64) + 8) + 24);
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24);

  return 1;
}

void nw_protocol_nwswifttlsrecord_begin_connection(id *a1)
{
  v2 = nw_protocol_downcast();
  if (v2)
  {
    if (*(v2 + 267) == 1)
    {
      v3 = nw_protocol_downcast();
      if (v3)
      {
        v4 = v3;
        v5 = [MEMORY[0x1E696AEC0] stringWithCString:v3 + 269 encoding:1];
        v6 = *(v4 + 232);
        if (v6 && *(v4 + 240))
        {
          v7 = _Block_copy(v6);
          v8 = *(v4 + 240);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __nwswifttlsrecord_begin_server_connection_block_invoke;
          aBlock[3] = &unk_1E7B2E590;
          v47 = v7;
          v48 = v4;
          v46 = v8;
          v9 = v8;
          v10 = v7;
          v11 = _Block_copy(aBlock);
          v12 = [_TtC10nwswifttls17STLSRecordHandler alloc];
          LOBYTE(v42) = *(v4 + 266);
          v13 = [(STLSRecordHandler *)v12 init:*(v4 + 152) serverKey:*(v4 + 184) alpn:*(v4 + 160) EPSKs:*(v4 + 224) epskSelectionBlock:v11 rawEPSKsEnabled:*(v4 + 248) enableEarlyData:v42 logStr:v5];
          v14 = *(v4 + 104);
          *(v4 + 104) = v13;
        }

        else
        {
          v23 = *(v4 + 192);
          v24 = [_TtC10nwswifttls17STLSRecordHandler alloc];
          v25 = *(v4 + 152);
          if (v23)
          {
            v26 = [(STLSRecordHandler *)v24 init:v25 alpn:*(v4 + 160) pakeContext:*(v4 + 192) pakeClientIdentity:*(v4 + 200) pakeServerIdentity:*(v4 + 208) pakePasswordVerifier:*(v4 + 216) logStr:v5];
          }

          else
          {
            LOBYTE(v42) = *(v4 + 266);
            v26 = [(STLSRecordHandler *)v24 init:v25 serverKey:*(v4 + 184) alpn:*(v4 + 160) EPSKs:*(v4 + 224) epskSelectionBlock:0 rawEPSKsEnabled:*(v4 + 248) enableEarlyData:v42 logStr:v5];
          }

          v36 = *(v4 + 104);
          *(v4 + 104) = v26;
        }

        v37 = *(v4 + 224);
        *(v4 + 224) = 0;

        v38 = *(v4 + 232);
        *(v4 + 232) = 0;

        v39 = *(v4 + 240);
        *(v4 + 240) = 0;

        v40 = *(v4 + 160);
        *(v4 + 160) = 0;

        v41 = *(v4 + 184);
        if (v41)
        {
          CFRelease(v41);
        }

        *(v4 + 184) = 0;
        if (*(v4 + 104))
        {
          nwswifttlsrecord_read(a1);
          nwswifttlsrecord_write_bytes(a1);
        }
      }
    }

    else
    {
      v15 = nw_protocol_downcast();
      if (v15)
      {
        v16 = v15;
        v44 = *(v15 + 168);
        v17 = [MEMORY[0x1E696AEC0] stringWithCString:v16 + 269 encoding:1];
        if (*(v16 + 176) || *(v16 + 177))
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v16 + 176)];
          [v18 addObject:v19];

          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v16 + 177)];
          [v18 addObject:v20];
        }

        else
        {
          v18 = 0;
        }

        v21 = *(v16 + 224);
        if (v21)
        {
          v22 = [v21 objectAtIndexedSubscript:0];
        }

        else
        {
          v22 = 0;
        }

        v27 = *(v16 + 192);
        v28 = [_TtC10nwswifttls17STLSRecordHandler alloc];
        if (v27)
        {
          v29 = [(STLSRecordHandler *)v28 init:*(v16 + 152) alpn:*(v16 + 160) sessionState:v44 ticketRequest:v18 pakeContext:*(v16 + 192) pakeClientIdentity:*(v16 + 200) pakeServerIdentity:*(v16 + 208) pakeClientPasswordVerifier:*(v16 + 216) logStr:v17];
        }

        else
        {
          BYTE1(v43) = *(v16 + 266);
          LOBYTE(v43) = *(v16 + 248);
          v29 = [(STLSRecordHandler *)v28 init:*(v16 + 144) serverName:*(v16 + 152) alpn:*(v16 + 160) sessionState:v44 ticketRequest:v18 keyExchangeGroup:*(v16 + 178) externalPreSharedKey:v22 rawEPSKsEnabled:v43 enableEarlyData:v17 logStr:?];
        }

        v30 = *(v16 + 104);
        *(v16 + 104) = v29;

        v31 = *(v16 + 224);
        *(v16 + 224) = 0;

        v32 = *(v16 + 144);
        *(v16 + 144) = 0;

        v33 = *(v16 + 160);
        *(v16 + 160) = 0;

        v34 = *(v16 + 152);
        *(v16 + 152) = 0;

        v35 = *(v16 + 104);
        if (v35)
        {
          [v35 startHandshake];
          nwswifttlsrecord_write_bytes(a1);
        }
      }
    }
  }
}

void __nwswifttlsrecord_begin_server_connection_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 24);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __nwswifttlsrecord_begin_server_connection_block_invoke_2;
  v13[3] = &unk_1E7B2E518;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v5;
  v16 = v9;
  v17 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  dispatch_sync(v8, v13);
}

id *nwswifttlsrecord_read(id *result)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = nw_protocol_downcast();
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (result[33])
  {
    return result;
  }

  *(result + 264) = 1;
  v3 = *(result + 63);
  if (v3 == 1)
  {
    bytes = nwswifttlsrecord_read_bytes(v1, [result[13] getBytesToReadCount]);
    v12 = nw_protocol_downcast();
    if (v12)
    {
      v13 = v12;
      if ((*(v12 + 265) & 1) == 0)
      {
        *(v12 + 265) = 1;
        if ([*(v12 + 104) isHandshakeComplete])
        {
          *(v13 + 252) = 2;
          *(v13 + 136) = nwswifttls_helper_get_current_time_ms();
          v14 = g_nwswifttls_log;
          if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(v13 + 267);
            v15 = *(v13 + 104);
            v16 = v14;
            v24 = [v15 getNegotiatedCiphersuite];
            v17 = [*(v13 + 104) getNegotiatedGroup];
            v18 = [v17 UTF8String];
            v19 = [*(v13 + 104) getPAKEOffered];
            v20 = [*(v13 + 104) getNegotiatedPAKE];
            v21 = [*(v13 + 104) getEPSKOffered];
            v22 = [*(v13 + 104) getNegotiatedEPSK];
            v23 = *(v13 + 248);
            *buf = 136449026;
            *&buf[4] = "nwswifttlsrecord_continue_handshake";
            *&buf[12] = 1024;
            *&buf[14] = 785;
            *&buf[18] = 2082;
            *&buf[20] = v13 + 269;
            *&buf[28] = 2048;
            *&buf[30] = v13;
            *&buf[38] = 1024;
            v27 = v25;
            v28 = 2048;
            v29 = v24;
            v30 = 2080;
            v31 = v18;
            v32 = 1024;
            v33 = v19;
            v34 = 2048;
            v35 = v20;
            v36 = 1024;
            v37 = v21;
            v38 = 1024;
            v39 = v22;
            v40 = 1024;
            v41 = v23;
            _os_log_impl(&dword_1B25F5000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS connected [server(%{BOOL}d) ciphersuite(%ld), group(%s), pake_offered(%{BOOL}d), pake(0x%04lx), epsk_offered(%{BOOL}d), epsk_used(%{BOOL}d), raw_epsk?(%{BOOL}d)]", buf, 0x62u);
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nwswifttlsrecord_continue_handshake_block_invoke;
          *&buf[24] = &__block_descriptor_40_e9_B16__0_v8lu32l8;
          *&buf[32] = v13;
          nw_protocol_metadata_access_handle();
          nw_protocol_get_input_handler();
          nw_protocol_connected();
        }

        else
        {
          nwswifttlsrecord_write_bytes(v1);
        }

        *(v13 + 265) = 0;
      }
    }

    if (bytes >= 1 && ([v2[13] alertSentOrReceived] & 1) == 0)
    {
      *(v2 + 264) = 0;
    }

    nwswifttlsrecord_read(v1);
    goto LABEL_47;
  }

  if (v3 != 2)
  {
    goto LABEL_47;
  }

  nw_protocol_get_input_handler();
  if (*(v2 + 262))
  {
    goto LABEL_38;
  }

  v4 = 0;
  while (1)
  {
    [v2[13] getAvailableApplicationDataLength];
    if ([v2[13] getAvailableApplicationDataLength] > 0x800000)
    {
      break;
    }

    if (nwswifttlsrecord_read_bytes(v1, [v2[13] getBytesToReadCount]) < 1)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_16;
    }

    v5 = [v2[13] getAvailableApplicationDataLength];
    if (v5 > 0x800000)
    {
      if (datapath_logging_enabled == 1)
      {
        v6 = g_nwswifttls_log;
        if (g_nwswifttls_log)
        {
          v7 = v5;
          if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447234;
            *&buf[4] = "nwswifttlsrecord_read";
            *&buf[12] = 1024;
            *&buf[14] = 462;
            *&buf[18] = 2082;
            *&buf[20] = v2 + 269;
            *&buf[28] = 2048;
            *&buf[30] = v2;
            *&buf[38] = 1024;
            v27 = v7;
            _os_log_debug_impl(&dword_1B25F5000, v6, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Passed max input threshold, stopping reading to deliver data (%u bytes)", buf, 0x2Cu);
          }
        }
      }

LABEL_16:
      if (nw_protocol_input_available_is_valid())
      {
        *(v2 + 261) = 1;
        nw_protocol_input_available();
        v8 = [v2[13] getAvailableApplicationDataLength];
        v4 = 0;
        if (*(v2 + 261) == 1 && v8 > 0x8000)
        {
          if (datapath_logging_enabled == 1)
          {
            v9 = g_nwswifttls_log;
            if (g_nwswifttls_log)
            {
              v10 = v8;
              if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136447234;
                *&buf[4] = "nwswifttlsrecord_read";
                *&buf[12] = 1024;
                *&buf[14] = 491;
                *&buf[18] = 2082;
                *&buf[20] = v2 + 269;
                *&buf[28] = 2048;
                *&buf[30] = v2;
                *&buf[38] = 1024;
                v27 = v10;
                _os_log_debug_impl(&dword_1B25F5000, v9, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] input_available unacknowledged, data (%u bytes) over readahead threshold, suspending reads", buf, 0x2Cu);
              }
            }
          }

          v4 = 0;
          *(v2 + 262) = 1;
        }
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_23;
    }

    v4 = 1;
LABEL_23:
    if (*(v2 + 262) == 1)
    {
      goto LABEL_38;
    }
  }

  if (datapath_logging_enabled == 1)
  {
    nwswifttlsrecord_read_cold_1();
  }

  *(v2 + 262) = 1;
LABEL_38:
  if (*(v2 + 263) == 1 && nw_protocol_input_finished_is_valid())
  {
    *(v2 + 263) = 0;
    nw_protocol_input_finished();
  }

LABEL_47:
  *(v2 + 264) = 0;
  result = [v2[13] alertSentOrReceived];
  if (result)
  {
    if (*(v2 + 63) <= 2u)
    {
      nwswifttlsrecord_send_error(v1, [v2[13] getErrorCode]);
      return nw_protocol_disconnect();
    }
  }

  return result;
}

void *nwswifttlsrecord_read_bytes(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = nw_protocol_downcast();
  v5 = 0;
  if (!v2)
  {
    return v5;
  }

  v6 = v4;
  if (!v4)
  {
    return v5;
  }

  if (*(v4 + 252) == 2)
  {
    if (datapath_logging_enabled == 1)
    {
      nwswifttlsrecord_read_bytes_cold_2();
    }
  }

  else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    nwswifttlsrecord_read_bytes_cold_1();
  }

  if (!nw_frame_array_is_empty())
  {
    goto LABEL_13;
  }

  HIDWORD(v17) = 0;
  output_handler = nw_protocol_get_output_handler();
  v8 = v6;
  if (!output_handler)
  {
    goto LABEL_24;
  }

  nw_protocol_upcast();
  v26[0] = 0;
  v26[1] = 0;
  nw_frame_array_init();
  if ((nw_protocol_get_input_frames_is_valid() & 1) == 0)
  {
    v13 = g_nwswifttls_log;
    if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      nwswifttlsrecord_read_bytes_cold_3(v8, v13, output_handler);
    }

LABEL_24:

    goto LABEL_25;
  }

  input_frames = nw_protocol_get_input_frames();
  HIDWORD(v17) = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = v26;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __nwswifttlsrecord_read_frames_block_invoke;
  v21 = &unk_1E7B2E5E0;
  v23 = v25;
  v24 = &v17 + 4;
  v10 = v8;
  v22 = v10;
  nw_frame_array_foreach();

  _Block_object_dispose(v25, 8);
  if (input_frames)
  {
LABEL_13:
    v11 = malloc_type_calloc(v2, 1uLL, 0xAC29C5E4uLL);
    v5 = v11;
    if (v11)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      LODWORD(v21) = 0;
      v15 = MEMORY[0x1E69E9820];
      LODWORD(v17) = v2;
      v16 = v11;
      nw_frame_array_foreach();
      if (*(v6 + 252) == 2)
      {
        if (datapath_logging_enabled == 1)
        {
          nwswifttlsrecord_read_bytes_cold_5();
        }
      }

      else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
      {
        nwswifttlsrecord_read_bytes_cold_4();
      }

      v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:*(v19 + 24) freeWhenDone:{1, v15, 3221225472, __nwswifttlsrecord_read_bytes_block_invoke, &unk_1E7B2E5B8, &v18, v6, v16, a1, v17}];
      [*(v6 + 104) processNetworkDataWithNetworkDataIn:v12];
      v5 = *(v19 + 24);

      _Block_object_dispose(&v18, 8);
    }

    return v5;
  }

LABEL_25:
  if (*(v6 + 252) == 2)
  {
    if (datapath_logging_enabled == 1)
    {
      nwswifttlsrecord_read_bytes_cold_7();
    }
  }

  else if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG))
  {
    nwswifttlsrecord_read_bytes_cold_6();
  }

  return 0;
}

BOOL __nwswifttlsrecord_read_bytes_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1 + 40;
  v6 = *(*(a1 + 40) + 112);
  if (v6)
  {
    v7 = v6 == v3 || g_nwswifttls_log == 0;
    if (!v7 && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_FAULT))
    {
      __nwswifttlsrecord_read_bytes_block_invoke_cold_1();
    }
  }

  nw_frame_unclaimed_bytes();
  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24);
  if (*(*v5 + 120))
  {
    if ((nw_frame_unclaim() & 1) == 0 && g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
    {
      __nwswifttlsrecord_read_bytes_block_invoke_cold_2();
    }

    v8 = *(*v5 + 112);
    *(*v5 + 112) = 0;

    *(*v5 + 120) = 0;
  }

  nw_frame_array_remove();
  nw_frame_finalize();
  v9 = *(*(*(a1 + 32) + 8) + 24) < *(a1 + 64);

  return v9;
}

uint64_t __nwswifttlsrecord_read_frames_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  **(a1 + 48) += nw_frame_unclaimed_length();
  nw_frame_array_remove();
  nw_frame_array_append();

  return 1;
}

BOOL __nwswifttlsrecord_continue_handshake_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 34) = [*(*(a1 + 32) + 104) getNegotiatedCiphersuite];
    v4 = [*(*(a1 + 32) + 104) getNegotiatedGroup];
    v5 = [v4 UTF8String];

    if (v5)
    {
      v6 = *(a2 + 176);
      if (v6)
      {
        free(v6);
        *(a2 + 176) = 0;
      }

      *(a2 + 176) = strdup(v5);
    }

    *(a2 + 320) = [*(*(a1 + 32) + 104) getNegotiatedPAKE];
    if ([*(*(a1 + 32) + 104) getNegotiatedEPSK])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFD | v7;
    *(a2 + 376) = *(a2 + 376) & 0xFE | [*(*(a1 + 32) + 104) getEPSKOffered];
    *(a2 + 32) = 772;
    if ([*(*(a1 + 32) + 104) getPAKEOffered])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *(a2 + 376) = *(a2 + 376) & 0xFB | v8;
  }

  return a2 != 0;
}

id *__nwswifttlsrecord_get_input_frames_block_invoke(id *result)
{
  v1 = result[4];
  if (*(v1 + 63) != 2)
  {
    if (datapath_logging_enabled == 1)
    {
      __nwswifttlsrecord_get_input_frames_block_invoke_cold_1(result + 4, v1, &v3);
      v1 = v3;
    }

    v1[262] = 0;
    v2 = nw_protocol_upcast();
    return nwswifttlsrecord_read(v2);
  }

  return result;
}

void nwswifttlsrecord_frame_input_finalizer(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (v4 && a3)
  {
    nw_frame_array_remove();
    buffer = nw_frame_get_buffer();
    if (buffer)
    {
      v6 = buffer;
      if (nw_frame_buffer_get_manager())
      {
        nw_mem_buffer_free();
      }

      else
      {
        free(v6);
      }
    }
  }
}

void nwswifttlsrecord_frame_output_finalizer(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (v4 && a3)
  {
    nw_frame_array_remove();
    if (nw_frame_uses_external_data())
    {
      nw_frame_set_external_data();
    }

    else
    {
      buffer = nw_frame_get_buffer();
      if (buffer)
      {
        free(buffer);
      }
    }

    nw_frame_reset();
  }
}

uint64_t __nwswifttlsrecord_write_frames_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_frame_uses_external_data())
  {
    v4 = nw_frame_copy_external_data();
    subrange = dispatch_data_create_subrange(v4, 0, 0);
    [*(*(a1 + 32) + 104) addApplicationData:subrange];
  }

  else
  {
    v6 = nw_frame_unclaimed_bytes();
    nw_frame_will_free_buffer_externally();
    v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v6 length:0 freeWhenDone:1];
    [*(*(a1 + 32) + 104) addApplicationData:v4];
  }

  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nwswifttlsrecord_reset_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t __nwswifttlsrecord_reset_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

void OUTLINED_FUNCTION_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

BOOL OUTLINED_FUNCTION_14()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_17()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG);
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

__darwin_time_t nwswifttls_helper_get_current_time_ms()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return 1000 * v1.tv_sec + v1.tv_usec / 1000;
}

BOOL nwswifttlsrecord_configure_server_name(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    if (a2 && *(a2 + 8))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*(a2 + 8) encoding:4];
      v8 = v6[19];
      v6[19] = v7;
      v9 = 1;
    }

    else
    {
      v8 = v5;
      if (a3 && ((*(*(*(a3 + 48) + 24) + 136))(), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v12 = nw_endpoint_copy_proxy_original_endpoint();
        v13 = v12;
        if (v12)
        {
          v14 = v12;

          v11 = v14;
        }

        v24 = 0;
        endpoint_name = nwswifttls_get_endpoint_name(v11, &v24);
        v16 = v11;
        v17 = nw_endpoint_copy_parent_endpoint();
        v18 = v16;
        if (v17)
        {
          v19 = v17;
          v20 = v16;
          do
          {
            v18 = v19;

            v19 = nw_endpoint_copy_parent_endpoint();
            v20 = v18;
          }

          while (v19);
        }

        if (nw_endpoint_get_type(v18) == (nw_endpoint_type_url|nw_endpoint_type_address))
        {
          if (v24 == 1)
          {
            free(endpoint_name);
          }

          endpoint_name = nwswifttls_get_endpoint_name(v18, &v24);
        }

        v9 = endpoint_name != 0;
        if (endpoint_name)
        {
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:endpoint_name encoding:4];
          v22 = v8[19];
          v8[19] = v21;

          if (v24 == 1)
          {
            free(endpoint_name);
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL nwswifttlsrecord_configure_application_protocols(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (!*(a2 + 48) || (v5 = MEMORY[0x1B274EDF0](), v6 = MEMORY[0x1E69E9E50], v5 != MEMORY[0x1E69E9E50]))
    {
      v4 = 0;
      goto LABEL_23;
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = *(v3 + 20);
    *(v3 + 20) = v7;

    if (!xpc_array_get_count(*(a2 + 48)))
    {
LABEL_22:
      v4 = [*(v3 + 20) count] != 0;
      goto LABEL_23;
    }

    v9 = 0;
    while (1)
    {
      v10 = xpc_array_get_value(*(a2 + 48), v9);
      if (MEMORY[0x1B274EDF0]() == v6)
      {
        uint64 = xpc_array_get_uint64(v10, 1uLL);
        v14 = *(v3 + 31);
        if (v14)
        {
          v15 = uint64 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15 && v14 != uint64)
        {
          goto LABEL_21;
        }

        v11 = v10;
        v12 = 0;
      }

      else
      {
        v11 = *(a2 + 48);
        v12 = v9;
      }

      string = xpc_array_get_string(v11, v12);
      if (string)
      {
        v18 = *(v3 + 20);
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        [v18 addObject:v19];
      }

LABEL_21:

      if (++v9 >= xpc_array_get_count(*(a2 + 48)))
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:

  return v4;
}

const __CFArray *nwswifttlsrecord_configure_server_raw_public_key_certificate(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3)
  {
    if (a2)
    {
      v4 = *(a2 + 280);
      if (v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = v3[18];
        v3[18] = v5;

        if (v3[18])
        {
          if (CFArrayGetCount(v4))
          {
            v7 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
              if (ValueAtIndex)
              {
                [v3[18] addObject:ValueAtIndex];
              }

              ++v7;
            }

            while (v7 < CFArrayGetCount(v4));
          }

          v4 = ([v3[18] count] != 0);
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

  return v4;
}

uint64_t nwswifttlsrecord_configure_pake(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (*(a2 + 56))
    {
      v5 = sec_identity_copy_type();
      v6 = sec_identity_copy_SPAKE2PLUSV1_context();
      v7 = sec_identity_copy_SPAKE2PLUSV1_client_identity();
      v8 = sec_identity_copy_SPAKE2PLUSV1_server_identity();
      v9 = v8;
      v4 = 0;
      if (v5 != 2 || !v6 || !v7 || !v8)
      {
        goto LABEL_22;
      }

      if (*(v3 + 267) == 1)
      {
        v4 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
        v10 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
        v11 = v10;
        if (!v4 || !v10)
        {

          v4 = 0;
          goto LABEL_22;
        }

        v12 = [MEMORY[0x1E695DF88] dataWithData:v4];
        [v12 appendData:v11];
        objc_storeStrong(v3 + 27, v12);
        v13 = g_nwswifttls_log;
        if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136446978;
          v17 = "nwswifttlsrecord_configure_pake";
          v18 = 1024;
          v19 = 391;
          v20 = 2082;
          v21 = v3 + 269;
          v22 = 2048;
          v23 = v3;
          _os_log_impl(&dword_1B25F5000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Configured SPAKE2+ server identity successfully", &v16, 0x26u);
        }
      }

      else
      {
        v4 = sec_identity_copy_SPAKE2PLUSV1_client_password_verifier();
        if (!v4)
        {
LABEL_22:

          goto LABEL_23;
        }

        objc_storeStrong(v3 + 27, v4);
        v14 = g_nwswifttls_log;
        if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136446978;
          v17 = "nwswifttlsrecord_configure_pake";
          v18 = 1024;
          v19 = 399;
          v20 = 2082;
          v21 = v3 + 269;
          v22 = 2048;
          v23 = v3;
          _os_log_impl(&dword_1B25F5000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] Configured SPAKE2+ client identity successfully", &v16, 0x26u);
        }
      }

      objc_storeStrong(v3 + 24, v6);
      objc_storeStrong(v3 + 25, v7);
      objc_storeStrong(v3 + 26, v9);
      v4 = 1;
      goto LABEL_22;
    }

    v4 = 0;
  }

LABEL_23:

  return v4;
}

uint64_t nwswifttls_configure_pake(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    if (*(a2 + 56))
    {
      v5 = sec_identity_copy_type();
      v6 = sec_identity_copy_SPAKE2PLUSV1_context();
      v7 = sec_identity_copy_SPAKE2PLUSV1_client_identity();
      v8 = sec_identity_copy_SPAKE2PLUSV1_server_identity();
      v9 = v8;
      v4 = 0;
      if (v5 != 2 || !v6 || !v7 || !v8)
      {
        goto LABEL_21;
      }

      if (*(v3 + 304) == 1)
      {
        v10 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
        v11 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
        v12 = v11;
        if (v10 && v11)
        {
          v13 = [MEMORY[0x1E695DF88] dataWithData:v10];
          [v13 appendData:v12];
          v14 = *(v3 + 48);
          *(v3 + 48) = v13;

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B25F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Configured SPAKE2+ server identity successfully", buf, 2u);
          }

LABEL_18:
          objc_storeStrong(v3 + 45, v6);
          objc_storeStrong(v3 + 46, v7);
          objc_storeStrong(v3 + 47, v9);
          v4 = 1;
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        v15 = sec_identity_copy_SPAKE2PLUSV1_client_password_verifier();
        if (v15)
        {
          v16 = *(v3 + 48);
          *(v3 + 48) = v15;

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_1B25F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Configured SPAKE2+ client identity successfully", v18, 2u);
          }

          goto LABEL_18;
        }
      }

      v4 = 0;
      goto LABEL_21;
    }

    v4 = 0;
  }

LABEL_22:

  return v4;
}

uint64_t nwswifttlsrecord_configure_with_sec_protocol_options(uint64_t result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      return nw_protocol_options_access_handle();
    }
  }

  return result;
}

BOOL __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (g_nwswifttls_log)
    {
      result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_5();
    }

    return 0;
  }

  v4 = (a1 + 32);
  if ((nwswifttlsrecord_configure_server_raw_public_key_certificate(*(a1 + 32), a2) & 1) == 0)
  {
    v5 = *(*v4 + 18);
    *(*v4 + 18) = 0;
  }

  if (!nwswifttlsrecord_configure_application_protocols(*v4, a2))
  {
    v6 = *(*v4 + 20);
    *(*v4 + 20) = 0;
  }

  if (!nwswifttlsrecord_configure_server_name(*(a1 + 32), a2, *(a1 + 40)))
  {
    v7 = *(*v4 + 19);
    *(*v4 + 19) = 0;
  }

  v8 = *v4;
  if ((*(*v4 + 267) & 1) == 0)
  {
    v8[176] = *(a2 + 304);
    *(*v4 + 177) = *(a2 + 305);
    v8 = *v4;
  }

  *(v8 + 89) = 24;
  if (*(a2 + 334) == 2)
  {
    *(*v4 + 89) = 4588;
  }

  v9 = *(a2 + 232);
  if (v9)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_6;
    applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16lu32l8;
    applier[4] = *v4;
    xpc_array_apply(v9, applier);
  }

  if (*(a2 + 56))
  {
    v10 = sec_identity_copy_type();
    if (v10 == 2)
    {
      if (*(*v4 + 267) == 1 && (*(a2 + 384) || *(a2 + 392)))
      {
        if (g_nwswifttls_log)
        {
          result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_1();
        }

        return 0;
      }

      if ((nwswifttlsrecord_configure_pake(*v4, a2) & 1) == 0)
      {
        v13 = *(*v4 + 24);
        *(*v4 + 24) = 0;

        v14 = *(*v4 + 25);
        *(*v4 + 25) = 0;

        v15 = *(*v4 + 26);
        *(*v4 + 26) = 0;

        v16 = *(*v4 + 27);
        *(*v4 + 27) = 0;

        if (g_nwswifttls_log)
        {
          if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
          {
            __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_2();
          }
        }
      }
    }

    else
    {
      if (v10 != 1)
      {
        if (g_nwswifttls_log)
        {
          result = os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_4();
        }

        return 0;
      }

      if (*(*v4 + 267) == 1)
      {
        v11 = sec_identity_copy_ref(*(a2 + 56));
        *privateKeyRef = 0;
        if (SecIdentityCopyPrivateKey(v11, privateKeyRef))
        {
          if (v11)
          {
            CFRelease(v11);
          }

          if (g_nwswifttls_log)
          {
            if (os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_ERROR))
            {
              __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_cold_3();
            }
          }

          return 0;
        }

        *(*v4 + 23) = *privateKeyRef;
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }
  }

  v17 = a2 + 369;
  if ((*(a2 + 371) & 0x80) != 0 && !*(a2 + 384))
  {
    objc_storeStrong(*v4 + 21, *(a2 + 192));
    *(*v4 + 266) = (*v17 & 0x800000) != 0;
  }

  if (*(a2 + 384))
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = *(*v4 + 28);
    *(*v4 + 28) = v18;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = *(a2 + 384);
    v20 = [obj countByEnumeratingWithState:&v48 objects:v76 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v49;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v49 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v48 + 1) + 8 * i);
          v25 = v4;
          v26 = *(*v4 + 28);
          v27 = [SwiftTLSExternalPreSharedKey alloc];
          v28 = [v24 external_identity];
          v29 = [v24 epsk];
          v30 = [v24 context];
          v31 = [(SecExternalPreSharedKey *)v27 initWithExternalIdentity:v28];
          v32 = v26;
          v4 = v25;
          [v32 addObject:v31];
        }

        v21 = [obj countByEnumeratingWithState:&v48 objects:v76 count:16];
      }

      while (v21);
    }

    v17 = a2 + 369;
    if ((*(a2 + 371) & 0x80) != 0)
    {
      *(*v4 + 266) = 1;
    }
  }

  *(*v4 + 248) = *(a2 + 408) & 1;
  if (*(*v4 + 267) == 1)
  {
    v33 = *(a2 + 392);
    if (v33)
    {
      if (*(a2 + 400))
      {
        v34 = _Block_copy(v33);
        v35 = *(*v4 + 29);
        *(*v4 + 29) = v34;

        objc_storeStrong(*v4 + 30, *(a2 + 400));
        if ((*(v17 + 2) & 0x80) != 0)
        {
          *(*v4 + 266) = 1;
        }
      }
    }
  }

  v36 = g_nwswifttls_log;
  if (g_nwswifttls_log && os_log_type_enabled(g_nwswifttls_log, OS_LOG_TYPE_DEFAULT))
  {
    v37 = *v4;
    if (*v4)
    {
      v38 = v37 + 269;
    }

    else
    {
      v38 = "";
    }

    v39 = v37[267];
    v40 = *(v37 + 89);
    v41 = *(v37 + 21) != 0;
    v42 = *(v37 + 27) != 0;
    v43 = v37[248];
    v44 = *(v37 + 28) != 0;
    v45 = *(v37 + 29) != 0;
    v46 = v37[266];
    *privateKeyRef = 136449026;
    *&privateKeyRef[4] = "nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke";
    v54 = 1024;
    v55 = 749;
    v56 = 2082;
    v57 = v38;
    v58 = 2048;
    v59 = v37;
    v60 = 1024;
    v61 = v39;
    v62 = 1024;
    v63 = v40;
    v64 = 1024;
    v65 = v41;
    v66 = 1024;
    v67 = v42;
    v68 = 1024;
    v69 = v43;
    v70 = 1024;
    v71 = v44;
    v72 = 1024;
    v73 = v45;
    v74 = 1024;
    v75 = v46;
    _os_log_impl(&dword_1B25F5000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS configured [server(%{BOOL}d), fixed_key_exchange_group(%d), session_state(%{BOOL}d), pake(%{BOOL}d), raw_epsks_enabled(%{BOOL}d), external_pre_shared_keys(%{BOOL}d),  external_psk_selection_block(%{BOOL}d), early_data_enabled(%{BOOL}d)]", privateKeyRef, 0x56u);
  }

  return 1;
}

uint64_t __nwswifttlsrecord_configure_with_sec_protocol_options_block_invoke_6(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  v5 = value;
  if (value != 4588 && value != 29)
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 32) + 178) = v5;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

uint64_t configureClientStateMachine(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:useRawEPSKs:enableEarlyData:pakeClientConfiguration:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11, __int128 *a12)
{
  v130 = a8;
  v143 = a7;
  v138 = a6;
  v139 = a4;
  v144 = a5;
  v140 = a3;
  v126 = a12;
  v142 = a11;
  v141 = a10;
  v15 = type metadata accessor for SymmetricKey();
  v127 = *(v15 - 8);
  v128 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for EPSK(0);
  v17 = MEMORY[0x1EEE9AC00](v122);
  v124 = (&v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v121 = (&v118 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v118 - v21;
  v22 = type metadata accessor for HandshakeStateMachine(0);
  v146 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v120 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v123 = &v118 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v135 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v118 - v29;
  v129 = type metadata accessor for P256.Signing.PublicKey();
  v137 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for NSFastEnumerationIterator();
  v33 = MEMORY[0x1EEE9AC00](v147);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v118 - v37;
  if (a2)
  {
    v149 = v36;
    v134 = v30;
    v136 = a2;
    if (a1)
    {
      v39 = a2;
      v40 = a1;
    }

    else
    {
      type metadata accessor for NSArray();
      v47 = a2;
      v40 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    }

    v132 = v22;
    v133 = a9;
    v48 = a1;
    v131 = v40;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v161 + 1))
    {
      v49 = v137 + 32;
      v145 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with take of Any(&v160, &v153);
        if (swift_dynamicCast())
        {
          v50 = *v151;
          v153 = *v151;
          outlined copy of Data._Representation(v151[0], v151[1]);
          lazy protocol witness table accessor for type Data and conformance Data();
          P256.Signing.PublicKey.init<A>(derRepresentation:)();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v145[2] + 1, 1, v145);
          }

          v53 = v145[2];
          v52 = v145[3];
          v118 = v53 + 1;
          if (v53 >= v52 >> 1)
          {
            v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v145);
          }

          outlined consume of Data._Representation(v50, *(&v50 + 1));
          v54 = v145;
          v145[2] = v118;
          v55 = v54 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v53;
          v49 = v119;
          (*(v137 + 32))(v55, v32, v129);
        }

        NSFastEnumerationIterator.next()();
      }

      while (*(&v161 + 1));
    }

    else
    {
      v145 = MEMORY[0x1E69E7CC0];
    }

    v56 = *(v149 + 8);
    v149 += 8;
    v56(v38, v147);
    if (v138)
    {
      v57 = v139;
      if (*(v138 + 16) == 2)
      {
        LODWORD(v137) = 0;
        LODWORD(v138) = *(v138 + 32);
        if (!v139)
        {
          goto LABEL_39;
        }

LABEL_27:
        v58 = v57;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (*(&v161 + 1))
        {
          v59 = MEMORY[0x1E69E7CC0];
          do
          {
            while (1)
            {
              outlined init with take of Any(&v160, &v153);
              if (swift_dynamicCast())
              {
                break;
              }

              NSFastEnumerationIterator.next()();
              if (!*(&v161 + 1))
              {
                goto LABEL_41;
              }
            }

            v139 = v58;
            v60 = *v151;
            v61 = swift_isUniquelyReferenced_nonNull_native();
            v129 = *(&v60 + 1);
            if ((v61 & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
            }

            v63 = *(v59 + 2);
            v62 = *(v59 + 3);
            if (v63 >= v62 >> 1)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v59);
            }

            *(v59 + 2) = v63 + 1;
            v64 = &v59[16 * v63];
            v65 = v129;
            *(v64 + 4) = v60;
            *(v64 + 5) = v65;
            NSFastEnumerationIterator.next()();
            v58 = v139;
          }

          while (*(&v161 + 1));
        }

        else
        {
          v59 = MEMORY[0x1E69E7CC0];
        }

LABEL_41:
        v56(v35, v147);

LABEL_42:
        v66 = v136;
        if (v140)
        {
          v67 = v140;
          v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v69;

          v71 = v70 >> 62;
          if ((v70 >> 62) > 1)
          {
            if (v71 == 2)
            {
              v72 = v68[2];
            }

            else
            {
              v72 = 0;
            }
          }

          else if (v71)
          {
            v72 = v68;
          }

          else
          {
            v72 = 0;
          }
        }

        else
        {
          v68 = 0;
          v72 = 0;
          v70 = 0xF000000000000000;
        }

        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;
        if (!*(v59 + 2))
        {

          v59 = 0;
        }

        outlined copy of Data?(v68, v70);
        HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v73, v75, v145, v68, v70, v72, v59, v138 | (v137 << 16), v152, v143 & 0x1FFFF, v142 & 1, v141 & 1);
        if (v144)
        {
          v76 = v144;
          v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;
          outlined init with copy of HandshakeStateMachine.Configuration(v152, &v160);
          v80 = v135;
          _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v77, v79, v152, v150, v135);
          outlined consume of ByteBuffer?(v68, v70);

          outlined destroy of HandshakeStateMachine.Configuration(v152);
          v87 = v80;
          v88 = v134;
LABEL_59:
          outlined init with take of ServerHandshakeStateMachine(v87, v88, type metadata accessor for HandshakeStateMachine);
LABEL_78:
          v115 = v133;
LABEL_79:
          outlined init with take of ServerHandshakeStateMachine(v88, v115, type metadata accessor for HandshakeStateMachine);
          return (*(v146 + 56))(v115, 0, 1, v132);
        }

        v149 = v72;
        if (v130)
        {
          v81 = v130;
          v82 = [v81 external_identity];
          v147 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;

          v85 = 0;
          v86 = v84 >> 62;
          v140 = v68;
          if ((v84 >> 62) > 1)
          {
            if (v86 == 2)
            {
              v85 = *(v147 + 16);
            }
          }

          else if (v86)
          {
            v85 = v147;
          }

          v145 = v85;
          v93 = [v81 epsk];
          v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          *&v160 = v94;
          *(&v160 + 1) = v96;
          SymmetricKey.init<A>(data:)();
          v97 = [v81 context];

          v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;

          v101 = 0;
          v102 = v100 >> 62;
          if ((v100 >> 62) > 1)
          {
            if (v102 == 2)
            {
              v101 = *(v98 + 16);
            }
          }

          else if (v102)
          {
            v101 = v98;
          }

          v103 = v148;
          if (SymmetricKey.bitCount.getter() > 127)
          {
            v104 = v121;
            *v121 = v147;
            *(v104 + 8) = v84;
            *(v104 + 16) = v145;
            v105 = v122;
            (*(v127 + 32))(v104 + *(v122 + 20), v103, v128);
            v106 = (v104 + *(v105 + 24));
            *v106 = v98;
            v106[1] = v100;
            v106[2] = v101;
            v107 = v125;
            outlined init with take of ServerHandshakeStateMachine(v104, v125, type metadata accessor for EPSK);
            v108 = v124;
            outlined init with copy of ServerHandshakeStateMachine.Configuration(v107, v124, type metadata accessor for EPSK);
            outlined init with copy of HandshakeStateMachine.Configuration(v152, &v160);
            v109 = v123;
            _s15SwiftTLSLibrary21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v108, v152, v150, v123);
            v88 = v134;
            outlined destroy of ServerHandshakeStateMachine.Configuration(v107, type metadata accessor for EPSK);
            outlined consume of ByteBuffer?(v140, v70);

            outlined destroy of HandshakeStateMachine.Configuration(v152);
            v87 = v109;
            goto LABEL_59;
          }

          v160 = xmmword_1B26C5EE0;
          LOBYTE(v161) = 2;
          lazy protocol witness table accessor for type TLSError and conformance TLSError();
          swift_willThrowTypedImpl();
          outlined consume of Data._Representation(v98, v100);
          outlined consume of Data._Representation(v147, v84);
          (*(v127 + 8))(v103, v128);
          v66 = v136;
          v110 = v140;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v111 = type metadata accessor for Logger();
          __swift_project_value_buffer(v111, logger);
          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_1B25F5000, v112, v113, "Failed to use provided EPSK", v114, 2u);
            MEMORY[0x1B274ECF0](v114, -1, -1);
          }

          v88 = v134;
          HandshakeStateMachine.init(configuration:)(v152, v134);
          outlined consume of ByteBuffer?(v110, v70);
        }

        else
        {
          v89 = v126;
          v90 = v126[5];
          v157 = v126[4];
          v158 = v90;
          v159[0] = v126[6];
          *(v159 + 9) = *(v126 + 105);
          v91 = v126[1];
          v153 = *v126;
          v154 = v91;
          v92 = v126[3];
          v155 = v126[2];
          v156 = v92;
          if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v153) != 1)
          {
            v164 = v157;
            v165 = v158;
            v166[0] = v159[0];
            *(v166 + 9) = *(v159 + 9);
            v160 = v153;
            v161 = v154;
            v162 = v155;
            v163 = v156;
            outlined init with copy of Any?(v89, v151, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            outlined init with copy of HandshakeStateMachine.Configuration(v152, v151);
            outlined init with copy of Any?(v89, v151, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            v116 = v120;
            _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v160, v152, v150, v120);
            v117 = v89;
            v115 = v133;
            outlined consume of ByteBuffer?(v68, v70);

            outlined destroy of HandshakeStateMachine.Configuration(v152);
            outlined destroy of P256.Signing.PrivateKey?(v117, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

            v88 = v134;
            outlined init with take of ServerHandshakeStateMachine(v116, v134, type metadata accessor for HandshakeStateMachine);
            goto LABEL_79;
          }

          v88 = v134;
          HandshakeStateMachine.init(configuration:)(v152, v134);
          outlined consume of ByteBuffer?(v68, v70);
        }

        goto LABEL_78;
      }

      LODWORD(v138) = 0;
      LODWORD(v137) = 1;
      if (v139)
      {
        goto LABEL_27;
      }
    }

    else
    {
      LODWORD(v138) = 0;
      LODWORD(v137) = 1;
      v57 = v139;
      if (v139)
      {
        goto LABEL_27;
      }
    }

LABEL_39:
    v59 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, logger);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1B25F5000, v42, v43, "Cannot start the handshake with NULL parameters", v44, 2u);
    MEMORY[0x1B274ECF0](v44, -1, -1);
  }

  v45 = *(v146 + 56);

  return v45(a9, 1, 1, v22);
}

uint64_t configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11)
{
  LODWORD(v161) = a8;
  v143 = a7;
  v144 = a6;
  v160 = a5;
  v156 = a1;
  v142 = a9;
  v141 = type metadata accessor for ServerHandshakeStateMachine(0);
  v14 = *(v141 - 8);
  v15 = MEMORY[0x1EEE9AC00](v141);
  v137 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v135 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v139 = &v133 - v19;
  v159 = type metadata accessor for SymmetricKey();
  v149 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v162 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for EPSK(0);
  v153 = *(v154 - 8);
  v21 = MEMORY[0x1EEE9AC00](v154);
  v158 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v152 = (&v133 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v133 - v25;
  v26 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v138 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v133 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v134 = &v133 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v146 = (&v133 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v148 = &v133 - v38;
  v39 = type metadata accessor for NSFastEnumerationIterator();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v14;
  if (a4)
  {
    v151 = a2;
    *&v155 = a3;
    v43 = a4;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (v168)
    {
      v147 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v166, &v165);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!v168)
          {
            goto LABEL_15;
          }
        }

        v150 = v26;
        v45 = v163;
        v44 = v164;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v145 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
        }

        v48 = *(v147 + 2);
        v47 = *(v147 + 3);
        if (v48 >= v47 >> 1)
        {
          v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v147);
        }

        v49 = v147;
        *(v147 + 2) = v48 + 1;
        v50 = &v49[16 * v48];
        v51 = v145;
        *(v50 + 4) = v45;
        *(v50 + 5) = v51;
        NSFastEnumerationIterator.next()();
        v26 = v150;
      }

      while (v168);
    }

    else
    {
      v147 = MEMORY[0x1E69E7CC0];
    }

LABEL_15:
    (*(v40 + 8))(v42, v39);

    a3 = v155;
    a2 = v151;
  }

  else
  {
    v147 = MEMORY[0x1E69E7CC0];
  }

  v52 = type metadata accessor for P256.Signing.PrivateKey();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v54(v148, 1, 1, v52);
  if (a2)
  {
    v55 = a2;
    convertPrivateKey(_:)(v55, v37);
    if ((*(v53 + 48))(v37, 1, v52) == 1)
    {

      outlined destroy of P256.Signing.PrivateKey?(v37, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, logger);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1B25F5000, v57, v58, "unable to convert server private key", v59, 2u);
        MEMORY[0x1B274ECF0](v59, -1, -1);
      }

      outlined destroy of P256.Signing.PrivateKey?(v148, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      v60 = 1;
      v61 = v142;
      v62 = v141;
      goto LABEL_81;
    }

    v63 = v148;
    outlined destroy of P256.Signing.PrivateKey?(v148, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);

    (*(v53 + 32))(v63, v37, v52);
    v54(v63, 0, 1, v52);
  }

  LODWORD(v155) = a11;
  if (!a3)
  {
    v151 = 0;
    v66 = 0xF000000000000000;
    goto LABEL_33;
  }

  v64 = a3;
  a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = v66 >> 62;
  if ((v66 >> 62) > 1)
  {
    if (v67 == 2)
    {
      v68 = a3[2];
      goto LABEL_31;
    }
  }

  else if (v67)
  {
    v68 = a3;
LABEL_31:
    v151 = v68;
    goto LABEL_33;
  }

  v151 = 0;
LABEL_33:
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;
  v72 = v26[5];
  v73 = v146;
  v54(v146 + v72, 1, 1, v52);
  v74 = (v73 + v26[6]);
  *v74 = xmmword_1B26C5EF0;
  v74[2] = 0;
  v75 = v26[7];
  *v73 = v69;
  v73[1] = v71;
  v76 = v147;

  outlined assign with copy of P256.Signing.PrivateKey?(v148, v73 + v72);
  outlined consume of ByteBuffer?(*v74, v74[1]);
  *v74 = a3;
  v74[1] = v66;
  v74[2] = v151;
  *(v73 + v75) = v76;
  *(v73 + v26[8]) = v155 & 1;
  *(v73 + v26[9]) = 0;
  *(v73 + v26[10]) = v161 & 1;
  v77 = v160;
  if (!v160)
  {
    goto LABEL_67;
  }

  if (v160 >> 62)
  {
    if (v160 >= 0)
    {
      v115 = v160 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v115 = v160;
    }

    v78 = MEMORY[0x1B274D9C0](v115);
    if (v78)
    {
      goto LABEL_36;
    }

LABEL_67:
    v80 = MEMORY[0x1E69E7CC0];
    goto LABEL_68;
  }

  v78 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v78)
  {
    goto LABEL_67;
  }

LABEL_36:
  if (v78 < 1)
  {
    __break(1u);
    goto LABEL_84;
  }

  v79 = 0;
  v156 = v77 & 0xC000000000000001;
  v150 = (v149 + 4);
  ++v149;
  v80 = MEMORY[0x1E69E7CC0];
  v155 = xmmword_1B26C5EE0;
  v145 = 0x8400102uLL;
  v151 = v78;
  do
  {
    if (v156)
    {
      v81 = MEMORY[0x1B274D8D0](v79, v77);
    }

    else
    {
      v81 = *(v77 + 8 * v79 + 32);
    }

    v82 = v81;
    v83 = [v82 external_identity];
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = 0;
    v88 = v86 >> 62;
    if ((v86 >> 62) > 1)
    {
      if (v88 == 2)
      {
        v87 = *(v84 + 16);
      }
    }

    else if (v88)
    {
      v87 = v84;
    }

    v161 = v87;
    v89 = [v82 epsk];
    v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    *&v166 = v90;
    *(&v166 + 1) = v92;
    SymmetricKey.init<A>(data:)();
    v93 = [v82 context];

    v94 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v97 = 0;
    v98 = v96 >> 62;
    if ((v96 >> 62) > 1)
    {
      if (v98 == 2)
      {
        v97 = *(v94 + 16);
      }
    }

    else if (v98)
    {
      v97 = v94;
    }

    v99 = v162;
    if (SymmetricKey.bitCount.getter() > 127)
    {
      v107 = v80;
      v108 = v152;
      *v152 = v84;
      v108[1] = v86;
      v108[2] = v161;
      v109 = v154;
      (*v150)(v108 + *(v154 + 20), v99, v159);
      v110 = (v108 + *(v109 + 24));
      *v110 = v94;
      v110[1] = v96;
      v110[2] = v97;
      v111 = v108;
      v80 = v107;
      v112 = v157;
      outlined init with take of ServerHandshakeStateMachine(v111, v157, type metadata accessor for EPSK);
      outlined init with copy of ServerHandshakeStateMachine.Configuration(v112, v158, type metadata accessor for EPSK);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
      }

      v77 = v160;
      v78 = v151;
      v114 = v80[2];
      v113 = v80[3];
      if (v114 >= v113 >> 1)
      {
        v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v80);
      }

      outlined destroy of ServerHandshakeStateMachine.Configuration(v157, type metadata accessor for EPSK);
      v80[2] = v114 + 1;
      outlined init with take of ServerHandshakeStateMachine(v158, v80 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v114, type metadata accessor for EPSK);
    }

    else
    {
      v166 = v155;
      v167 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v94, v96);
      outlined consume of Data._Representation(v84, v86);
      (*v149)(v99, v159);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, logger);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v103 = v145;
        swift_allocError();
        *v105 = v155;
        *(v105 + 16) = 2;
        v106 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 4) = v106;
        *v104 = v106;
        _os_log_impl(&dword_1B25F5000, v101, v102, "unable to create EPSK %@", v103, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v104, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v104, -1, -1);
        MEMORY[0x1B274ECF0](v103, -1, -1);
      }

      v77 = v160;
    }

    ++v79;
  }

  while (v78 != v79);
LABEL_68:

  v116 = v144;
  if (v144)
  {
    v73 = swift_allocObject();
    v117 = v143;
    v73[2] = v116;
    v73[3] = v117;
    v66 = partial apply for closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:);
  }

  else
  {
    v66 = 0;
    v73 = 0;
  }

  v76 = v146;
  if (!a10)
  {
    v124 = v136;
    outlined init with copy of ServerHandshakeStateMachine.Configuration(v146, v136, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v144, v143);
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v66, v73);
    v125 = v137;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC(v80, v66, v73, v124, &v169, v137);
    outlined destroy of P256.Signing.PrivateKey?(v148, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v66, v73);
    outlined destroy of ServerHandshakeStateMachine.Configuration(v76, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v130 = v125;
LABEL_80:
    v131 = v139;
    outlined init with take of ServerHandshakeStateMachine(v130, v139, type metadata accessor for ServerHandshakeStateMachine);
    v61 = v142;
    v62 = v141;
    outlined init with take of ServerHandshakeStateMachine(v131, v142, type metadata accessor for ServerHandshakeStateMachine);
    v60 = 0;
LABEL_81:
    v129 = v140;
    return (*(v129 + 56))(v61, v60, 1, v62);
  }

  v118 = v144;
  _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v144, v143);

  if (!(v118 | v77))
  {
    v126 = v134;
    outlined init with copy of ServerHandshakeStateMachine.Configuration(v76, v134, type metadata accessor for ServerHandshakeStateMachine.Configuration);

    v128 = v135;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC(v127, v126, v135);
    outlined destroy of P256.Signing.PrivateKey?(v148, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    outlined destroy of ServerHandshakeStateMachine.Configuration(v76, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v130 = v128;
    goto LABEL_80;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_84:
    swift_once();
  }

  v119 = type metadata accessor for Logger();
  __swift_project_value_buffer(v119, logger);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_1B25F5000, v120, v121, "cannot provide both epsks and pake server configuration", v122, 2u);
    v123 = v122;
    v76 = v146;
    MEMORY[0x1B274ECF0](v123, -1, -1);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v66, v73);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v66, v73);
  }

  v129 = v140;
  outlined destroy of P256.Signing.PrivateKey?(v148, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  outlined destroy of ServerHandshakeStateMachine.Configuration(v76, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v60 = 1;
  v61 = v142;
  v62 = v141;
  return (*(v129 + 56))(v61, v60, 1, v62);
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

uint64_t outlined assign with copy of P256.Signing.PrivateKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of TLSError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t convertPrivateKey(_:)@<X0>(__SecKey *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SecKeyCopyExternalRepresentation(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = SecKeyCopyAttributes(a1);
    if (v6)
    {
      v7 = v6;
      *&v44 = 1701869940;
      *(&v44 + 1) = 0xE400000000000000;
      v8 = [(__CFDictionary *)v6 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      v46[0] = v44;
      v46[1] = v45;
      outlined init with copy of Any?(v46, &v44, &_sypSgMd, &_sypSgMR);
      v20 = *(&v45 + 1);
      if (*(&v45 + 1))
      {
        v21 = __swift_project_boxed_opaque_existential_0(&v44, *(&v45 + 1));
        v22 = *(v20 - 8);
        MEMORY[0x1EEE9AC00](v21);
        v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v24);
        v25 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v22 + 8))(v24, v20);
        __swift_destroy_boxed_opaque_existential_0(&v44);
        v26 = CFGetTypeID(v25);
        if (v26 == CFStringGetTypeID())
        {
          type metadata accessor for CFStringRef();
          swift_unknownObjectRetain();
          v27 = swift_dynamicCastUnknownClassUnconditional();
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
          v28 = static _CFObject.== infix(_:_:)();

          if (v28)
          {
            v29 = v5;
            v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            *&v44 = v30;
            *(&v44 + 1) = v32;
            P256.Signing.PrivateKey.init<A>(x963Representation:)();
            outlined destroy of P256.Signing.PrivateKey?(v46, &_sypSgMd, &_sypSgMR);

            swift_unknownObjectRelease();
            v42 = type metadata accessor for P256.Signing.PrivateKey();
            return (*(*(v42 - 8) + 56))(a2, 0, 1, v42);
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, logger);
          v34 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v34, v40))
          {

            swift_unknownObjectRelease();
            v34 = v7;
            goto LABEL_31;
          }

          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1B25F5000, v34, v40, "key doesn't have kSecAttrKeyTypeECSECPrimeRandom", v41, 2u);
          MEMORY[0x1B274ECF0](v41, -1, -1);

          swift_unknownObjectRelease();
LABEL_30:

LABEL_31:
          outlined destroy of P256.Signing.PrivateKey?(v46, &_sypSgMd, &_sypSgMR);
          v38 = type metadata accessor for P256.Signing.PrivateKey();
          return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
        }

        swift_unknownObjectRelease();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, logger);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B25F5000, v34, v35, "no keytype retrieved", v36, 2u);
        MEMORY[0x1B274ECF0](v36, -1, -1);
        v37 = v7;
      }

      else
      {
        v37 = v34;
        v34 = v7;
      }

      goto LABEL_30;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v14, v15, "SecKeyCopyAttributes returned nil", v16, 2u);
      MEMORY[0x1B274ECF0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B25F5000, v10, v11, "SecKeyCopyExternalRepresentation returned nil", v12, 2u);
      MEMORY[0x1B274ECF0](v12, -1, -1);
    }
  }

  v17 = type metadata accessor for P256.Signing.PrivateKey();
  v18 = *(*(v17 - 8) + 56);

  return v18(a2, 1, 1, v17);
}

{
  v4 = SecKeyCopyExternalRepresentation(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = SecKeyCopyAttributes(a1);
    if (v6)
    {
      v7 = v6;
      *&v44 = 1701869940;
      *(&v44 + 1) = 0xE400000000000000;
      v8 = [(__CFDictionary *)v6 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v8)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
      }

      v46[0] = v44;
      v46[1] = v45;
      outlined init with copy of Any?(v46, &v44, &_sypSgMd, &_sypSgMR);
      v20 = *(&v45 + 1);
      if (*(&v45 + 1))
      {
        v21 = __swift_project_boxed_opaque_existential_0(&v44, *(&v45 + 1));
        v22 = *(v20 - 8);
        MEMORY[0x1EEE9AC00](v21);
        v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v24);
        v25 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v22 + 8))(v24, v20);
        __swift_destroy_boxed_opaque_existential_0(&v44);
        v26 = CFGetTypeID(v25);
        if (v26 == CFStringGetTypeID())
        {
          type metadata accessor for CFStringRef();
          swift_unknownObjectRetain();
          v27 = swift_dynamicCastUnknownClassUnconditional();
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v28 = static _CFObject.== infix(_:_:)();

          if (v28)
          {
            v29 = v5;
            v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            *&v44 = v30;
            *(&v44 + 1) = v32;
            P256.Signing.PrivateKey.init<A>(x963Representation:)();
            outlined destroy of P256.Signing.PrivateKey?(v46, &_sypSgMd, &_sypSgMR);

            swift_unknownObjectRelease();
            v42 = type metadata accessor for P256.Signing.PrivateKey();
            return (*(*(v42 - 8) + 56))(a2, 0, 1, v42);
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, logger);
          v34 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v34, v40))
          {

            swift_unknownObjectRelease();
            v34 = v7;
            goto LABEL_31;
          }

          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1B25F5000, v34, v40, "key doesn't have kSecAttrKeyTypeECSECPrimeRandom", v41, 2u);
          MEMORY[0x1B274ECF0](v41, -1, -1);

          swift_unknownObjectRelease();
LABEL_30:

LABEL_31:
          outlined destroy of P256.Signing.PrivateKey?(v46, &_sypSgMd, &_sypSgMR);
          v38 = type metadata accessor for P256.Signing.PrivateKey();
          return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
        }

        swift_unknownObjectRelease();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, logger);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1B25F5000, v34, v35, "no keytype retrieved", v36, 2u);
        MEMORY[0x1B274ECF0](v36, -1, -1);
        v37 = v7;
      }

      else
      {
        v37 = v34;
        v34 = v7;
      }

      goto LABEL_30;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v14, v15, "SecKeyCopyAttributes returned nil", v16, 2u);
      MEMORY[0x1B274ECF0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B25F5000, v10, v11, "SecKeyCopyExternalRepresentation returned nil", v12, 2u);
      MEMORY[0x1B274ECF0](v12, -1, -1);
    }
  }

  v17 = type metadata accessor for P256.Signing.PrivateKey();
  v18 = *(*(v17 - 8) + 56);

  return v18(a2, 1, 1, v17);
}

uint64_t closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B25F5000, v9, v10, "In handshaker selection callback...", v11, 2u);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = (a1 + 56);
    do
    {
      v30 = v12;
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      if (*v14 >> 60 == 15)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v14 - 1);
      }

      if (*v14 >> 60 == 15)
      {
        v20 = 0xC000000000000000;
      }

      else
      {
        v20 = *v14;
      }

      v21 = objc_allocWithZone(SwiftTLSOfferedEPSK);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v23 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v19, v20);
      [v21 initWithExternalIdentity:isa :v23];

      outlined consume of Data._Representation(v15, v16);
      outlined consume of Data._Representation(v15, v16);
      outlined consume of ByteBuffer?(v17, v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      v12 = v30 - 1;
    }

    while (v30 != 1);
    v13 = v31;
    a4 = v29;
    a2 = v27;
    a3 = v28;
  }

  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v13;

  a4(v25, partial apply for closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:), v24);
}

void closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(id a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SymmetricKey();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EPSK(0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  *&v54 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B25F5000, v20, v21, "In handshaker complete block...", v22, 2u);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    if (!a1)
    {
      (*(v57 + 56))(v18, 1, 1, v58);
      (a2)(0, v18);
      outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
      return;
    }

    a1 = a1;
    v23 = [a1 external_identity];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = 0;
    v28 = v26 >> 62;
    v51 = a3;
    v52 = a2;
    if ((v26 >> 62) > 1)
    {
      if (v28 == 2)
      {
        v27 = *(v24 + 16);
      }
    }

    else if (v28)
    {
      v27 = v24;
    }

    v53 = v24;
    v29 = [a1 epsk];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *&v59 = v30;
    *(&v59 + 1) = v32;
    SymmetricKey.init<A>(data:)();
    v33 = [a1 context];
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = 0;
    v37 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v36 = *(a2 + 16);
      }
    }

    else if (v37)
    {
      v36 = a2;
    }

    if (SymmetricKey.bitCount.getter() <= 127)
    {
      break;
    }

    *v14 = v53;
    *(v14 + 8) = v26;
    *(v14 + 16) = v50;
    v41 = v58;
    (*(v55 + 32))(v14 + *(v58 + 20), v10, v56);
    v42 = (v14 + *(v41 + 24));
    *v42 = a2;
    v42[1] = v35;
    v42[2] = v36;
    outlined init with take of ServerHandshakeStateMachine(v14, v54, type metadata accessor for EPSK);
    a3 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        v49 = a4;
      }

      else
      {
        v49 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v43 = MEMORY[0x1B274D9C0](v49);
    }

    else
    {
      v43 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v10 = (a4 & 0xC000000000000001);
    while (1)
    {
      if (v43 == v14)
      {
        (*(v57 + 56))(v18, 1, 1, v58);
        v52(0, v18);

        outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v47 = v54;
LABEL_32:
        outlined destroy of ServerHandshakeStateMachine.Configuration(v47, type metadata accessor for EPSK);
        return;
      }

      if (!v10)
      {
        break;
      }

      v44 = MEMORY[0x1B274D8D0](v14, a4);
LABEL_25:
      v45 = v44;
      *&v59 = v44;
      a2 = closure #1 in closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(&v59, a1);

      if (a2)
      {
        v48 = v54;
        outlined init with copy of ServerHandshakeStateMachine.Configuration(v54, v18, type metadata accessor for EPSK);
        (*(v57 + 56))(v18, 0, 1, v58);
        v52(v14, v18);

        outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v47 = v48;
        goto LABEL_32;
      }

      if (__OFADD__(v14++, 1))
      {
        goto LABEL_34;
      }
    }

    if (v14 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(a4 + 8 * v14 + 32);
      goto LABEL_25;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v54 = xmmword_1B26C5EE0;
  v59 = xmmword_1B26C5EE0;
  v60 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(a2, v35);
  outlined consume of Data._Representation(v53, v26);
  (*(v55 + 8))(v10, v56);
  v38 = swift_allocError();
  *v39 = v54;
  *(v39 + 16) = 2;
  (*(v57 + 56))(v18, 1, 1, v58);
  v40 = v38;
  v52(0, v18);

  outlined destroy of P256.Signing.PrivateKey?(v18, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
}

BOOL closure #1 in closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 external_identity];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a2 external_identity];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(v8) = specialized static Data.== infix(_:_:)(v5, v7, v9, v11);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v5, v7);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12 = [v3 context];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  v18 = [a2 context];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v16 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      outlined consume of ByteBuffer?(v14, v16);
      return 1;
    }

    goto LABEL_10;
  }

  if (v21 >> 60 == 15)
  {
LABEL_10:
    outlined consume of ByteBuffer?(v14, v16);
    outlined consume of ByteBuffer?(v19, v21);
    return 0;
  }

  outlined copy of Data?(v14, v16);
  outlined copy of Data._Representation(v19, v21);
  v22 = specialized static Data.== infix(_:_:)(v14, v16, v19, v21);
  outlined consume of ByteBuffer?(v19, v21);
  outlined consume of Data._Representation(v19, v21);
  outlined consume of ByteBuffer?(v14, v16);
  outlined consume of ByteBuffer?(v14, v16);
  return v22;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined init with copy of ServerHandshakeStateMachine.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ServerHandshakeStateMachine.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TLSError and conformance TLSError()
{
  result = lazy protocol witness table cache variable for type TLSError and conformance TLSError;
  if (!lazy protocol witness table cache variable for type TLSError and conformance TLSError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TLSError and conformance TLSError);
  }

  return result;
}

void type metadata accessor for CFStringRef()
{
  if (!lazy cache variable for type metadata for CFStringRef)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CFStringRef);
    }
  }
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

unint64_t type metadata accessor for NSArray()
{
  result = lazy cache variable for type metadata for NSArray;
  if (!lazy cache variable for type metadata for NSArray)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSArray);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with take of ServerHandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id STLSRecordHandler.init(_:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:logStr:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v146 = a8;
  v153 = a4;
  v154 = a2;
  v157 = a1;
  v158 = a3;
  v156 = a9;
  ObjectType = swift_getObjectType();
  v143 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = &v127 - v14;
  v129 = type metadata accessor for P256.Signing.PublicKey();
  v136 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for NSFastEnumerationIterator();
  v152 = *(v150 - 8);
  v17 = MEMORY[0x1EEE9AC00](v150);
  v159 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v127 - v19;
  v21 = type metadata accessor for HandshakeStateMachine(0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v128 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v134 = &v127 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v140 = &v127 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v139 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v151 = &v127 - v30;
  *(&v181 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v182 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v31 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v180);
  v149 = a5;
  v32 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v149);
  v34 = v33;
  v148 = a6;
  v35 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v148);
  v37 = v36;
  v147 = a7;
  v38 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v147);
  v40 = v39;
  v146 = v146;
  v42 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v146);
  if (v31)
  {
    v43 = 32150;
  }

  else
  {
    v43 = -1;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC(v43, v32, v34, v35, v37, v38, v40, v42, v177, v41, v169);
  v184 = v177[4];
  v185 = v177[5];
  v186[0] = v178[0];
  *(v186 + 9) = *(v178 + 9);
  v180 = v177[0];
  v181 = v177[1];
  v182 = v177[2];
  v183 = v177[3];
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_();
  v174 = v184;
  v175 = v185;
  v176[0] = v186[0];
  *(v176 + 9) = *(v186 + 9);
  v170 = v180;
  v171 = v181;
  v172 = v182;
  v173 = v183;
  v44 = objc_allocWithZone(ObjectType);
  v45 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  v46 = type metadata accessor for TLSRecordHandler(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v137 = v47 + 56;
  v138 = v48;
  (v48)(&v44[v45], 1, 1, v46);
  v50 = v156;
  v49 = v157;
  v135 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
  *&v44[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = v156;
  if (v49)
  {
    v131 = v46;
    v133 = v45;
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v51 = v50;
    v132 = v49;
    v52 = MEMORY[0x1E69E7CC0];
    v130 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    v144 = v44;
    if (*(&v181 + 1))
    {
      v127 = (v136 + 32);
      v145 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v180, &v161);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v181 + 1))
          {
            goto LABEL_25;
          }
        }

        v53 = *v160;
        v161 = *v160;
        outlined copy of Data._Representation(v160[0], v160[1]);
        lazy protocol witness table accessor for type Data and conformance Data();
        P256.Signing.PublicKey.init<A>(derRepresentation:)();
        v54 = v145;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2] + 1, 1, v54);
        }

        v56 = v54[2];
        v55 = v54[3];
        v145 = v54;
        if (v56 >= v55 >> 1)
        {
          v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v145);
        }

        outlined consume of Data._Representation(v53, *(&v53 + 1));
        v57 = v145;
        v145[2] = v56 + 1;
        (*(v136 + 32))(v57 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v56, v16, v129);
        NSFastEnumerationIterator.next()();
        v44 = v144;
      }

      while (*(&v181 + 1));
    }

    else
    {
      v145 = v52;
    }

LABEL_25:
    v77 = v152 + 8;
    v78 = *(v152 + 8);
    v78(v20, v150);
    if (v153)
    {
      v65 = v154;
      v79 = v158;
      if (*(v153 + 16) == 2)
      {
        LODWORD(v129) = 0;
        LODWORD(v136) = *(v153 + 32);
        if (!v154)
        {
          goto LABEL_42;
        }

LABEL_30:
        v152 = v77;
        v80 = v65;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (*(&v181 + 1))
        {
          v81 = MEMORY[0x1E69E7CC0];
          do
          {
            while (1)
            {
              outlined init with take of Any(&v180, &v161);
              if (swift_dynamicCast())
              {
                break;
              }

              NSFastEnumerationIterator.next()();
              if (!*(&v181 + 1))
              {
                goto LABEL_44;
              }
            }

            v127 = v80;
            v82 = *v160;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
            }

            v84 = *(v81 + 2);
            v83 = *(v81 + 3);
            if (v84 >= v83 >> 1)
            {
              v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v81);
            }

            *(v81 + 2) = v84 + 1;
            *&v81[16 * v84 + 32] = v82;
            NSFastEnumerationIterator.next()();
            v44 = v144;
            v80 = v127;
          }

          while (*(&v181 + 1));
        }

        else
        {
          v81 = MEMORY[0x1E69E7CC0];
        }

LABEL_44:
        v78(v159, v150);

        v65 = v154;
        v79 = v158;
LABEL_45:
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v132;
        if (!*(v81 + 2))
        {
          v88 = v85;
          v89 = v86;

          v86 = v89;
          v85 = v88;
          v81 = 0;
        }

        HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v85, v86, v145, 0, 0xF000000000000000, 0, v81, v136 | (v129 << 16), v179, 24, 0, 0);
        if (v79)
        {
          v90 = v79;
          v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;
          outlined init with copy of HandshakeStateMachine.Configuration(v179, &v180);
          v94 = v134;
          _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v91, v93, v179, v169, v134);

          outlined destroy of HandshakeStateMachine.Configuration(v179);
          v96 = v94;
        }

        else
        {
          v165 = v174;
          v166 = v175;
          v167[0] = v176[0];
          *(v167 + 9) = *(v176 + 9);
          v161 = v170;
          v162 = v171;
          v163 = v172;
          v164 = v173;
          if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v161) == 1)
          {
            v95 = v140;
            HandshakeStateMachine.init(configuration:)(v179, v140);

LABEL_53:
            v98 = v95;
            v99 = v139;
            outlined init with take of TLSRecordHandler(v98, v139, type metadata accessor for HandshakeStateMachine);
            v100 = v99;
            v101 = v151;
            outlined init with take of TLSRecordHandler(v100, v151, type metadata accessor for HandshakeStateMachine);
            v102 = v101;
            v103 = v141;
            outlined init with copy of TLSRecordHandler(v102, v141, type metadata accessor for HandshakeStateMachine);
            swift_storeEnumTagMultiPayload();
            v104 = v142;
            v105 = TLSRecordHandler.init(stateMachine:)(v103, v142);
            v138(v104, 0, 1, v131, v105);
            v106 = v133;
            swift_beginAccess();
            outlined assign with take of TLSRecordHandler?(v104, &v44[v106]);
            swift_endAccess();
            v107 = v44;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v108 = type metadata accessor for Logger();
            __swift_project_value_buffer(v108, logger);
            v109 = v65;
            v110 = v87;
            outlined init with copy of Any?(&v170, &v161, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            v111 = v79;
            v112 = v110;
            v113 = v109;
            outlined init with copy of Any?(&v170, &v161, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            v114 = v153;

            v115 = v107;
            v116 = Logger.logObject.getter();
            v117 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v116, v117))
            {
              LODWORD(v152) = v65 != 0;
              LODWORD(v159) = v114 != 0;
              v118 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              *v118 = 138414850;
              v120 = *&v107[v135];
              *(v118 + 4) = v120;
              *v119 = v120;
              *(v118 + 12) = 1024;
              *(v118 + 14) = 0;
              *(v118 + 18) = 1024;
              v121 = v120;

              *(v118 + 20) = 1;
              *(v118 + 24) = 1024;

              *(v118 + 26) = v152;
              *(v118 + 30) = 2112;
              *(v118 + 32) = v111;
              v119[1] = v158;
              *(v118 + 40) = 1024;
              v122 = v111;

              *(v118 + 42) = v159;

              *(v118 + 46) = 1573376;
              *(v118 + 50) = 1024;
              *(v118 + 52) = 0;
              *(v118 + 56) = 1024;
              *(v118 + 58) = 0;
              *(v118 + 62) = 1024;
              v123 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v170) == 0;
              outlined destroy of P256.Signing.PrivateKey?(&v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
              *(v118 + 64) = v123;
              outlined destroy of P256.Signing.PrivateKey?(&v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
              *(v118 + 68) = 1024;
              *(v118 + 70) = 0;
              _os_log_impl(&dword_1B25F5000, v116, v117, "%@:client STLSRecordHandler initialized: spkiArray %{BOOL}d, serverName? %{BOOL}d, alpn? %{BOOL}d, sessionState? %@, ticketRequest? %{BOOL}d, keyExchangeGroup: %hu, externalPreSharedKey? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeClientConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v118, 0x4Au);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              swift_arrayDestroy();
              v124 = v119;
              v65 = v154;
              MEMORY[0x1B274ECF0](v124, -1, -1);
              MEMORY[0x1B274ECF0](v118, -1, -1);
            }

            else
            {
              outlined destroy of P256.Signing.PrivateKey?(&v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

              outlined destroy of P256.Signing.PrivateKey?(&v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
            }

            outlined destroy of TLSRecordHandler(v151, type metadata accessor for HandshakeStateMachine);
            v58 = v157;
            v66 = v158;
            v50 = v156;
            v44 = v144;
            goto LABEL_59;
          }

          v184 = v165;
          v185 = v166;
          v186[0] = v167[0];
          *(v186 + 9) = *(v167 + 9);
          v180 = v161;
          v181 = v162;
          v182 = v163;
          v183 = v164;
          outlined init with copy of Any?(&v170, v160, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
          outlined init with copy of HandshakeStateMachine.Configuration(v179, v160);
          outlined init with copy of Any?(&v170, v160, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
          v97 = v128;
          _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v180, v179, v169, v128);

          outlined destroy of HandshakeStateMachine.Configuration(v179);
          outlined destroy of P256.Signing.PrivateKey?(&v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

          v96 = v97;
        }

        v95 = v140;
        outlined init with take of TLSRecordHandler(v96, v140, type metadata accessor for HandshakeStateMachine);
        goto LABEL_53;
      }

      LODWORD(v136) = 0;
      LODWORD(v129) = 1;
      if (v154)
      {
        goto LABEL_30;
      }
    }

    else
    {
      LODWORD(v136) = 0;
      LODWORD(v129) = 1;
      v65 = v154;
      v79 = v158;
      if (v154)
      {
        goto LABEL_30;
      }
    }

LABEL_42:
    v81 = MEMORY[0x1E69E7CC0];
    goto LABEL_45;
  }

  v58 = 0;
  v59 = one-time initialization token for logger;
  v60 = v50;
  if (v59 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, logger);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v154;
  v66 = v158;
  if (v64)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1B25F5000, v62, v63, "Cannot start the handshake with NULL parameters", v67, 2u);
    v68 = v67;
    v50 = v156;
    MEMORY[0x1B274ECF0](v68, -1, -1);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v61, logger);
  v69 = v44;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    v74 = *&v44[v135];
    *(v72 + 4) = v74;
    *v73 = v74;
    v75 = v74;
    _os_log_impl(&dword_1B25F5000, v70, v71, "%@: unable to initialize client handshake state machine", v72, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v76 = v73;
    v50 = v156;
    MEMORY[0x1B274ECF0](v76, -1, -1);
    MEMORY[0x1B274ECF0](v72, -1, -1);
  }

LABEL_59:
  v168.receiver = v44;
  v168.super_class = ObjectType;
  v125 = objc_msgSendSuper2(&v168, sel_init, v127);

  outlined destroy of P256.Signing.PrivateKey?(&v170, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v125;
}

id STLSRecordHandler.init(_:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:logStr:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v153 = a2;
  v154 = a7;
  v152 = a6;
  v155 = a1;
  ObjectType = swift_getObjectType();
  v141 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v140 = &v123 - v12;
  v143 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v13 = MEMORY[0x1EEE9AC00](v143);
  v134 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v136 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v142 = (&v123 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v146 = &v123 - v19;
  *&v147 = type metadata accessor for NSFastEnumerationIterator();
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeStateMachine(0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v135 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v138 = &v123 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v137 = &v123 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v123 - v28;
  *(&v165 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v166 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  LODWORD(v151) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v164);
  v29 = a3;
  v150 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v29);
  v31 = v30;
  v32 = a4;
  v33 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v32);
  v35 = v34;
  v36 = a5;
  v37 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v36);
  v39 = v38;
  v40 = v152;
  v42 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v40);
  if (v151)
  {
    v43 = 32150;
  }

  else
  {
    v43 = -1;
  }

  _s15SwiftTLSLibrary16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC(v43, v150, v31, v33, v35, v37, v39, v42, &v164, v41, 0, v162);
  v45 = v144;
  v46 = v145;
  v47 = v147;
  v133 = v40;
  v150 = v36;
  v151 = v32;
  v152 = v29;
  if (v155)
  {
    v126 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMR);
    v48 = swift_allocObject();
    v132 = v48;
    v49 = v168;
    v50 = v170[0];
    v48[7] = v169;
    v48[8] = v50;
    *(v48 + 138) = *(v170 + 10);
    v51 = v164;
    v52 = v165;
    v48[1] = xmmword_1B26C6030;
    v48[2] = v51;
    v53 = v166;
    v54 = v167;
    v48[3] = v52;
    v48[4] = v53;
    v48[5] = v54;
    v48[6] = v49;
    v55 = objc_allocWithZone(ObjectType);
    v131 = v55;
    v56 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
    v57 = type metadata accessor for TLSRecordHandler(0);
    v58 = *(v57 - 8);
    v59 = *(v58 + 56);
    v129 = v57;
    v130 = v56;
    v127 = v58 + 56;
    v128 = v59;
    (v59)(&v55[v56], 1, 1);
    v61 = v153;
    v60 = v154;
    v125 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
    *&v55[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = v154;
    if (v61)
    {
      v62 = v155;
      outlined init with copy of PAKEServerRecord(&v164, &v160);
      v63 = v60;
      v124 = v61;
      NSArray.makeIterator()();
      NSFastEnumerationIterator.next()();
      v64 = v143;
      v65 = MEMORY[0x1E69E7CC0];
      if (v161)
      {
        v66 = v46;
        v67 = v45;
        do
        {
          while (1)
          {
            outlined init with take of Any(&v160, &v158);
            if (swift_dynamicCast())
            {
              break;
            }

            NSFastEnumerationIterator.next()();
            if (!v161)
            {
              goto LABEL_20;
            }
          }

          v69 = v156;
          v68 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          }

          v70 = v65;
          v72 = *(v65 + 2);
          v71 = *(v65 + 3);
          if (v72 >= v71 >> 1)
          {
            v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v65);
          }

          *(v70 + 2) = v72 + 1;
          v65 = v70;
          v73 = &v70[16 * v72];
          *(v73 + 4) = v69;
          *(v73 + 5) = v68;
          v67 = v45;
          NSFastEnumerationIterator.next()();
          v64 = v143;
          v47 = v147;
        }

        while (v161);
      }

      else
      {
        v66 = v46;
        v67 = v45;
      }

LABEL_20:
      v145 = v65;
      (*(v66 + 1))(v67, v47);
    }

    else
    {
      v74 = v155;
      outlined init with copy of PAKEServerRecord(&v164, &v160);
      v75 = v60;
      v145 = MEMORY[0x1E69E7CC0];
      v64 = v143;
    }

    v76 = type metadata accessor for P256.Signing.PrivateKey();
    v77 = *(*(v76 - 8) + 56);
    v78 = v146;
    v77(v146, 1, 1, v76);
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;
    v82 = v64[5];
    v83 = v142;
    v77(v142 + v82, 1, 1, v76);
    v84 = (v83 + v64[6]);
    v147 = xmmword_1B26C5EF0;
    *v84 = xmmword_1B26C5EF0;
    v84[2] = 0;
    v85 = v64[7];
    *v83 = v79;
    v83[1] = v81;
    v86 = v145;

    outlined assign with copy of P256.Signing.PrivateKey?(v78, v83 + v82);
    outlined consume of ByteBuffer?(*v84, v84[1]);

    *v84 = v147;
    v84[2] = 0;
    *(v83 + v85) = v86;
    *(v83 + v64[8]) = 0;
    *(v83 + v64[9]) = 0;
    *(v83 + v64[10]) = 0;
    v87 = v136;
    outlined init with copy of TLSRecordHandler(v83, v136, type metadata accessor for ServerHandshakeStateMachine.Configuration);

    v89 = v135;
    v90 = v126;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC(v88, v87, v135);
    if (v90)
    {
      outlined consume of TLSError(v162[0], v162[1], v163);
      v91 = v148;
      v92 = v140;
      v93 = v139;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, logger);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = v134;
      if (v97)
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_1B25F5000, v95, v96, "unable to create handshake state machine with pake server configuration", v99, 2u);
        v100 = v99;
        v83 = v142;
        MEMORY[0x1B274ECF0](v100, -1, -1);
      }

      outlined init with copy of TLSRecordHandler(v83, v98, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v101 = v138;
      ServerHandshakeStateMachine.init(configuration:)(v98, v138);
      outlined destroy of P256.Signing.PrivateKey?(v146, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      outlined destroy of TLSRecordHandler(v83, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v102 = v153;
    }

    else
    {
      outlined destroy of P256.Signing.PrivateKey?(v78, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      outlined destroy of TLSRecordHandler(v83, type metadata accessor for ServerHandshakeStateMachine.Configuration);
      v101 = v138;
      outlined init with take of TLSRecordHandler(v89, v138, type metadata accessor for ServerHandshakeStateMachine);
      v102 = v153;
      v91 = v148;
      v92 = v140;
      v93 = v139;
    }

    v103 = v137;
    outlined init with take of TLSRecordHandler(v101, v137, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with take of TLSRecordHandler(v103, v91, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with copy of TLSRecordHandler(v91, v93, type metadata accessor for ServerHandshakeStateMachine);
    swift_storeEnumTagMultiPayload();
    v104 = TLSRecordHandler.init(stateMachine:)(v93, v92);
    v128(v92, 0, 1, v129, v104);
    v105 = v130;
    v106 = v131;
    swift_beginAccess();
    outlined assign with take of TLSRecordHandler?(v92, &v106[v105]);
    swift_endAccess();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    __swift_project_value_buffer(v107, logger);
    v108 = v102;

    v109 = v106;
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v112 = 138414082;
      v114 = *&v106[v125];
      *(v112 + 4) = v114;
      *v113 = v114;
      *(v112 + 12) = 1024;
      *(v112 + 14) = 0;
      *(v112 + 18) = 1024;
      v115 = v114;

      *(v112 + 20) = v102 != 0;
      *(v112 + 24) = 1024;
      *(v112 + 26) = 0;
      *(v112 + 30) = 1024;
      *(v112 + 32) = 0;
      *(v112 + 36) = 1024;
      *(v112 + 38) = 0;
      *(v112 + 42) = 1024;

      *(v112 + 44) = 1;

      *(v112 + 48) = 1024;
      *(v112 + 50) = 0;
      _os_log_impl(&dword_1B25F5000, v110, v111, "%@: server STLSRecordHandler initialized: serverKey? %{BOOL}d, alpn? %{BOOL}d, EPSKs? %{BOOL}d, epskSelectionBlock? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeServerConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v112, 0x36u);
      outlined destroy of P256.Signing.PrivateKey?(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v113, -1, -1);
      MEMORY[0x1B274ECF0](v112, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v116 = v152;
    v118 = v150;
    v117 = v151;
    v119 = v133;
    v120 = v155;

    outlined destroy of TLSRecordHandler(v148, type metadata accessor for ServerHandshakeStateMachine);
    v159.receiver = v109;
    v159.super_class = ObjectType;
    v44 = objc_msgSendSuper2(&v159, sel_init);

    v121 = v44;
    outlined destroy of PAKEServerRecord(&v164);
  }

  else
  {

    outlined destroy of PAKEServerRecord(&v164);
    v44 = 0;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v44;
}

Swift::Void __swiftcall STLSRecordHandler.startHandshake()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_1B25F5000, v3, v4, "%@: starting handshake", v5, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v6, -1, -1);
    MEMORY[0x1B274ECF0](v5, -1, -1);
  }

  v9 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v10 = type metadata accessor for TLSRecordHandler(0);
  if (!(*(*(v10 - 8) + 48))(&v2[v9], 1, v10))
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV14startHandshakeyyAA8TLSErrorOYKF();
  }

  swift_endAccess();
}

void STLSRecordHandler.addApplicationData(_:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);

    v12 = a2 >> 62;
    goto LABEL_16;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138412546;
  v11 = *&v6[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
  *(v9 + 4) = v11;
  *v10 = v11;
  *(v9 + 12) = 2048;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v18 = v11;
      outlined consume of Data._Representation(a1, a2);
      v11 = 0;
      goto LABEL_15;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = v11;
    outlined consume of Data._Representation(a1, a2);
    v11 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v17 = v11;
    outlined consume of Data._Representation(a1, a2);
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v11 = v11;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_12;
  }

  v13 = v11;
  outlined consume of Data._Representation(a1, a2);
  v11 = BYTE6(a2);
LABEL_15:
  *(v9 + 14) = v11;
  outlined consume of Data._Representation(a1, a2);
  _os_log_impl(&dword_1B25F5000, v7, v8, "%@: adding %ld bytes of application data", v9, 0x16u);
  outlined destroy of P256.Signing.PrivateKey?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B274ECF0](v10, -1, -1);
  MEMORY[0x1B274ECF0](v9, -1, -1);

LABEL_16:
  v19 = 0;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v19 = *(a1 + 16);
      goto LABEL_21;
    }
  }

  else if (v12)
  {
    v19 = a1;
LABEL_21:
    outlined copy of Data._Representation(a1, a2);
  }

  v22 = a1;
  v23 = a2;
  v24 = v19;
  v20 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v21 = type metadata accessor for TLSRecordHandler(0);
  if (!(*(*(v21 - 8) + 48))(&v6[v20], 1, v21))
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV18addApplicationDatayyAA10ByteBufferVzAA8TLSErrorOYKF(&v22);
  }

  swift_endAccess();
  outlined consume of Data._Representation(v22, v23);
}

void STLSRecordHandler.processNetworkData(networkDataIn:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v7, v8))
  {
    outlined consume of Data._Representation(a1, a2);
    outlined consume of Data._Representation(a1, a2);

    v12 = a2 >> 62;
    goto LABEL_15;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  *v9 = 138412546;
  v11 = *&v6[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
  *(v9 + 4) = v11;
  *v10 = v11;
  *(v9 + 12) = 2048;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v19 = v11;
      outlined consume of Data._Representation(a1, a2);
      v14 = 0;
      goto LABEL_14;
    }

    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = v11;
    outlined consume of Data._Representation(a1, a2);
    v14 = v16 - v15;
    if (!__OFSUB__(v16, v15))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v12)
  {
    v18 = v11;
    outlined consume of Data._Representation(a1, a2);
    LODWORD(v14) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v14 = v14;
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v13 = v11;
  outlined consume of Data._Representation(a1, a2);
  v14 = BYTE6(a2);
LABEL_14:
  *(v9 + 14) = v14;
  outlined consume of Data._Representation(a1, a2);
  _os_log_impl(&dword_1B25F5000, v7, v8, "%@: processing %ld bytes of network data", v9, 0x16u);
  outlined destroy of P256.Signing.PrivateKey?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x1B274ECF0](v10, -1, -1);
  MEMORY[0x1B274ECF0](v9, -1, -1);

LABEL_15:
  v20 = 0;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v20 = *(a1 + 16);
      goto LABEL_20;
    }
  }

  else if (v12)
  {
    v20 = a1;
LABEL_20:
    outlined copy of Data._Representation(a1, a2);
  }

  v23 = a1;
  v24 = a2;
  v25 = v20;
  v21 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v22 = type metadata accessor for TLSRecordHandler(0);
  if (!(*(*(v22 - 8) + 48))(&v6[v21], 1, v22))
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKF(&v23);
  }

  swift_endAccess();
  outlined consume of Data._Representation(v23, v24);
}

void @objc STLSRecordHandler.addApplicationData(_:)(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  a4(v7, v9);
  outlined consume of Data._Representation(v7, v9);
}

Swift::Bool __swiftcall STLSRecordHandler.alertSentOrReceived()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v8, v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    v9 = 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v3, v7, type metadata accessor for TLSRecordHandler);
    if (v7[*(v4 + 52) + 2] == 1)
    {
      v9 = v7[*(v4 + 56) + 2] ^ 1;
    }

    else
    {
      v9 = 1;
    }

    outlined destroy of TLSRecordHandler(v7, type metadata accessor for TLSRecordHandler);
  }

  return v9 & 1;
}

Swift::Void __swiftcall STLSRecordHandler.sendCloseNotify()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16[-v2];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *&v5[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&dword_1B25F5000, v6, v7, "%@: sending close notify", v8, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v9, -1, -1);
    MEMORY[0x1B274ECF0](v8, -1, -1);
  }

  v12 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v5[v12], v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v13 = type metadata accessor for TLSRecordHandler(0);
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v3, 1, v13);
  outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v15 != 1)
  {
    swift_beginAccess();
    if (v14(&v5[v12], 1, v13) == 1)
    {
      __break(1u);
    }

    else
    {
      TLSRecordHandler.sendCloseNotify()();
      swift_endAccess();
    }
  }
}

Swift::UInt32 __swiftcall STLSRecordHandler.getBytesToReadCount()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v8, v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    LODWORD(v3) = 0;
    return v3;
  }

  outlined init with take of TLSRecordHandler(v3, v7, type metadata accessor for TLSRecordHandler);
  v3 = *&v7[*(v4 + 20) + 24];
  result = outlined destroy of TLSRecordHandler(v7, type metadata accessor for TLSRecordHandler);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t STLSRecordHandler.getAvailableApplicationData(numBytes:)(Swift::Int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-v4];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *&v7[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2048;
    *(v10 + 14) = a1;
    v13 = v12;
    _os_log_impl(&dword_1B25F5000, v8, v9, "%@: getAvailableApplicationData(%ld)", v10, 0x16u);
    outlined destroy of P256.Signing.PrivateKey?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v11, -1, -1);
    MEMORY[0x1B274ECF0](v10, -1, -1);
  }

  v14 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v7[v14], v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v15 = type metadata accessor for TLSRecordHandler(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v5, 1, v15);
  outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v17 == 1)
  {
    return 0;
  }

  swift_beginAccess();
  result = v16(&v7[v14], 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = TLSRecordHandler.getApplicationData(_:)(a1);
    swift_endAccess();
    return v19;
  }

  return result;
}

Swift::Int __swiftcall STLSRecordHandler.getAvailableApplicationDataLength()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v8, v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  result = outlined init with take of TLSRecordHandler(v3, v7, type metadata accessor for TLSRecordHandler);
  v11 = &v7[*(v4 + 44)];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(v12 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = BYTE6(v13);
    v17 = v12 >> 32;
    if (!v15)
    {
      v17 = v16;
    }
  }

  v9 = v17 - v14;
  if (!__OFSUB__(v17, v14))
  {
    outlined destroy of TLSRecordHandler(v7, type metadata accessor for TLSRecordHandler);
    return v9;
  }

  __break(1u);
  return result;
}

void STLSRecordHandler.getOutput()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26[-v2];
  v4 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v0[v4], v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v5 = type metadata accessor for TLSRecordHandler(0);
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v3, 1, v5);
  outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v7 != 1)
  {
    swift_beginAccess();
    if (v6(&v0[v4], 1, v5) != 1)
    {
      v8 = TLSRecordHandler.writeOutput()();
      v10 = v9;
      swift_endAccess();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      outlined copy of Data?(v8, v10);
      outlined copy of Data?(v8, v10);
      v12 = v0;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v13, v14))
      {
        outlined consume of ByteBuffer?(v8, v10);
        outlined consume of ByteBuffer?(v8, v10);
        goto LABEL_11;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      v17 = *&v12[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
      *(v15 + 4) = v17;
      *v16 = v17;
      *(v15 + 12) = 2048;
      if (v10 >> 60 == 15)
      {
        v18 = v17;
LABEL_8:
        v17 = 0;
LABEL_9:
        *(v15 + 14) = v17;
        outlined consume of ByteBuffer?(v8, v10);
        _os_log_impl(&dword_1B25F5000, v13, v14, "%@: getOutput returning %ld", v15, 0x16u);
        outlined destroy of P256.Signing.PrivateKey?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v16, -1, -1);
        MEMORY[0x1B274ECF0](v15, -1, -1);
LABEL_11:

        return;
      }

      v19 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v19 != 2)
        {
          v25 = v17;
          outlined consume of ByteBuffer?(v8, v10);
          goto LABEL_8;
        }

        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        v23 = v17;
        outlined consume of ByteBuffer?(v8, v10);
        v17 = v21 - v22;
        if (!__OFSUB__(v21, v22))
        {
          goto LABEL_9;
        }

        __break(1u);
      }

      else if (!v19)
      {
        v20 = v17;
        outlined consume of ByteBuffer?(v8, v10);
        v17 = BYTE6(v10);
        goto LABEL_9;
      }

      v24 = v17;
      outlined consume of ByteBuffer?(v8, v10);
      LODWORD(v17) = HIDWORD(v8) - v8;
      if (!__OFSUB__(HIDWORD(v8), v8))
      {
        v17 = v17;
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void STLSRecordHandler.getOutput(numBytes:)(Swift::Int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-v5];
  v7 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(&v1[v7], v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v8 = type metadata accessor for TLSRecordHandler(0);
  v9 = *(*(v8 - 8) + 48);
  v10 = v9(v6, 1, v8);
  outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if (v10 != 1)
  {
    swift_beginAccess();
    if (v9(&v2[v7], 1, v8) != 1)
    {
      v11 = TLSRecordHandler.getOutputData(_:)(a1);
      v13 = v12;
      swift_endAccess();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);
      outlined copy of Data?(v11, v13);
      outlined copy of Data?(v11, v13);
      v15 = v2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v16, v17))
      {
        outlined consume of ByteBuffer?(v11, v13);
        outlined consume of ByteBuffer?(v11, v13);
        goto LABEL_11;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412802;
      v20 = *&v15[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
      *(v18 + 4) = v20;
      *v19 = v20;
      *(v18 + 12) = 2048;
      if (v13 >> 60 == 15)
      {
        v21 = v20;
LABEL_8:
        v20 = 0;
LABEL_9:
        *(v18 + 14) = v20;
        outlined consume of ByteBuffer?(v11, v13);
        *(v18 + 22) = 2048;
        *(v18 + 24) = a1;
        _os_log_impl(&dword_1B25F5000, v16, v17, "%@: getOutput returning %ld bytes. %ld requested.", v18, 0x20u);
        outlined destroy of P256.Signing.PrivateKey?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v19, -1, -1);
        MEMORY[0x1B274ECF0](v18, -1, -1);
LABEL_11:

        return;
      }

      v22 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v22 != 2)
        {
          v28 = v20;
          outlined consume of ByteBuffer?(v11, v13);
          goto LABEL_8;
        }

        v25 = *(v11 + 16);
        v24 = *(v11 + 24);
        v26 = v20;
        outlined consume of ByteBuffer?(v11, v13);
        v20 = v24 - v25;
        if (!__OFSUB__(v24, v25))
        {
          goto LABEL_9;
        }

        __break(1u);
      }

      else if (!v22)
      {
        v23 = v20;
        outlined consume of ByteBuffer?(v11, v13);
        v20 = BYTE6(v13);
        goto LABEL_9;
      }

      v27 = v20;
      outlined consume of ByteBuffer?(v11, v13);
      LODWORD(v20) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        v20 = v20;
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Class @objc STLSRecordHandler.getAvailableApplicationData(numBytes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a4(a3);
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of ByteBuffer?(v7, v9);
    v10 = isa;
  }

  return v10;
}

Swift::UInt32 __swiftcall STLSRecordHandler.getOutgoingBytesCount()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v8, v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    LODWORD(v9) = 0;
    return v9;
  }

  result = outlined init with take of TLSRecordHandler(v3, v7, type metadata accessor for TLSRecordHandler);
  v11 = &v7[*(v4 + 48)];
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(v12 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = BYTE6(v13);
    v17 = v12 >> 32;
    if (!v15)
    {
      v17 = v16;
    }
  }

  v9 = v17 - v14;
  if (__OFSUB__(v17, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  result = outlined destroy of TLSRecordHandler(v7, type metadata accessor for TLSRecordHandler);
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!HIDWORD(v9))
  {
    return v9;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Int __swiftcall STLSRecordHandler.getNegotiatedPAKE()()
{
  v1 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TLSRecordHandler(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v15, v10, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v10, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    return 0;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v10, v14, type metadata accessor for TLSRecordHandler);
    outlined init with copy of TLSRecordHandler(v14, v7, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v22;
      outlined init with take of TLSRecordHandler(v7, v22, type metadata accessor for ServerHandshakeStateMachine);
      v18 = ServerHandshakeStateMachine.negotiatedPAKE.getter();
      v19 = type metadata accessor for ServerHandshakeStateMachine;
    }

    else
    {
      v17 = v21;
      outlined init with take of TLSRecordHandler(v7, v21, type metadata accessor for HandshakeStateMachine);
      v18 = HandshakeStateMachine.negotiatedPAKE.getter();
      v19 = type metadata accessor for HandshakeStateMachine;
    }

    outlined destroy of TLSRecordHandler(v17, v19);
    outlined destroy of TLSRecordHandler(v14, type metadata accessor for TLSRecordHandler);
    if ((v18 & 0x10000) != 0)
    {
      return 0;
    }

    else
    {
      return v18;
    }
  }
}

uint64_t STLSRecordHandler.getEPSKOffered()(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  v15 = type metadata accessor for TLSRecordHandler(0);
  if ((*(*(v15 - 8) + 48))(v2 + v14, 1, v15))
  {
    v16 = 0;
  }

  else
  {
    outlined init with copy of TLSRecordHandler(v2 + v14, v13, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = outlined init with take of TLSRecordHandler(v13, v7, type metadata accessor for ServerHandshakeStateMachine);
      v16 = a2(v17);
      v18 = type metadata accessor for ServerHandshakeStateMachine;
      v19 = v7;
    }

    else
    {
      v20 = outlined init with take of TLSRecordHandler(v13, v10, type metadata accessor for HandshakeStateMachine);
      v16 = a1(v20);
      v18 = type metadata accessor for HandshakeStateMachine;
      v19 = v10;
    }

    outlined destroy of TLSRecordHandler(v19, v18);
  }

  return v16 & 1;
}

Swift::Int32 __swiftcall STLSRecordHandler.getErrorCode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79[-v3];
  v5 = type metadata accessor for TLSRecordHandler(0);
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v79[-v10];
  v12 = v1 + OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v12, v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v13 = *(v6 + 48);
  if (v13(v4, 1, v5) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  }

  else
  {
    outlined init with take of TLSRecordHandler(v4, v11, type metadata accessor for TLSRecordHandler);
    v14 = TLSRecordHandler.handshakeComplete.getter();
    outlined destroy of TLSRecordHandler(v11, type metadata accessor for TLSRecordHandler);
    if (v14)
    {
      v15 = 0xE500000000000000;
      v16 = 0x7265746661;
      goto LABEL_9;
    }
  }

  v16 = 0x65726F666562;
  if (!v13(v12, 1, v5))
  {
    outlined init with copy of TLSRecordHandler(v12, v9, type metadata accessor for TLSRecordHandler);
    v17 = TLSRecordHandler.handshakeStarted.getter();
    outlined destroy of TLSRecordHandler(v9, type metadata accessor for TLSRecordHandler);
    if (v17)
    {
      v16 = 0x676E69727564;
    }
  }

  v15 = 0xE600000000000000;
LABEL_9:
  if (v13(v12, 1, v5))
  {
LABEL_10:

    return 0;
  }

  v19 = v12 + v5[16];
  v20 = *(v19 + 16);
  if (v20 == 255)
  {
    v30 = v12 + v5[13];
    if (*(v30 + 2))
    {
      goto LABEL_10;
    }

    v31 = *v30;
    v32 = specialized knownTLSAlert.init(rawValue:)(HIBYTE(*v30));
    if (v32 - 1 >= 0x1A)
    {
      if (!v32)
      {
        goto LABEL_10;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, logger);
      v72 = v1;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        v77 = *&v72[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v75 + 4) = v77;
        *v76 = v77;
        v78 = v77;
        _os_log_impl(&dword_1B25F5000, v73, v74, "%@: TLS error occurred. No alert written. Returning errSSLInternal.", v75, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v76, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v76, -1, -1);
        MEMORY[0x1B274ECF0](v75, -1, -1);
      }

      return -9802;
    }

    else
    {
      v33 = specialized STLSRecordHandler.alertToOSStatusHelper(alert:peerAlert:)(v32, 1);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, logger);
      v35 = v1;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v84[0] = v40;
        *v38 = 138413058;
        v41 = *&v35[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v38 + 4) = v41;
        *v39 = v41;
        *(v38 + 12) = 2080;
        v42 = v41;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v84);

        *(v38 + 14) = v43;
        *(v38 + 22) = 2080;
        v44 = Alert.description.getter(v31);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v84);

        *(v38 + 24) = v46;
        *(v38 + 32) = 1024;
        *(v38 + 34) = v33;
        _os_log_impl(&dword_1B25F5000, v36, v37, "%@: TLS alert received %s handshake: %s. Returning OSStatus %d", v38, 0x26u);
        outlined destroy of P256.Signing.PrivateKey?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v39, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v40, -1, -1);
        MEMORY[0x1B274ECF0](v38, -1, -1);
      }

      else
      {
      }

      return v33;
    }
  }

  else
  {
    v21 = (v12 + v5[14]);
    if (v21[1])
    {

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, logger);
      v23 = v1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = *&v23[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v26 + 4) = v28;
        *v27 = v28;
        v29 = v28;
        _os_log_impl(&dword_1B25F5000, v24, v25, "%@: TLS error occurred. No alert written. Returning errSSLInternal.", v26, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v27, -1, -1);
        MEMORY[0x1B274ECF0](v26, -1, -1);
      }

      return -9810;
    }

    else
    {
      v48 = *v19;
      v47 = *(v19 + 8);
      v49 = *v21;
      v50 = specialized knownTLSAlert.init(rawValue:)(BYTE1(v49));
      v83 = specialized STLSRecordHandler.alertToOSStatusHelper(alert:peerAlert:)(v50, 0);
      outlined copy of TLSError(v48, v47, v20);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, logger);
      outlined copy of TLSError?(v48, v47, v20);
      v52 = v1;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      outlined consume of TLSError?(v48, v47, v20);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v80 = v49;
        v56 = v55;
        v57 = swift_slowAlloc();
        v81 = v57;
        v82 = swift_slowAlloc();
        v86 = v82;
        *v56 = 138413314;
        v58 = *&v52[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString];
        *(v56 + 4) = v58;
        *v57 = v58;
        *(v56 + 12) = 2080;
        v59 = v58;
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v86);

        *(v56 + 14) = v60;
        *(v56 + 22) = 2080;
        v84[0] = v48;
        v84[1] = v47;
        v85 = v20;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        v61 = Error.localizedDescription.getter();
        v63 = v62;
        outlined consume of TLSError?(v48, v47, v20);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v86);

        *(v56 + 24) = v64;
        *(v56 + 32) = 1024;
        v65 = v83;
        *(v56 + 34) = v83;
        *(v56 + 38) = 2080;
        v66 = Alert.description.getter(v80);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v86);

        *(v56 + 40) = v68;
        _os_log_impl(&dword_1B25F5000, v53, v54, "%@: TLS error occurred %s, handshake: %s. Returning OSStatus %d. Sent alert? %s", v56, 0x30u);
        v69 = v81;
        outlined destroy of P256.Signing.PrivateKey?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v69, -1, -1);
        v70 = v82;
        swift_arrayDestroy();
        MEMORY[0x1B274ECF0](v70, -1, -1);
        MEMORY[0x1B274ECF0](v56, -1, -1);

        return v65;
      }

      else
      {

        outlined consume of TLSError?(v48, v47, v20);
        return v83;
      }
    }
  }
}

Swift::String __swiftcall STLSRecordHandler.getNegotiatedGroup()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for TLSRecordHandler(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v8, v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v3, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    outlined init with take of TLSRecordHandler(v3, v7, type metadata accessor for TLSRecordHandler);
    v11 = TLSRecordHandler.getNegotiatedGroup.getter();
    v13 = v12;
    outlined destroy of TLSRecordHandler(v7, type metadata accessor for TLSRecordHandler);
    v10 = v13;
    v9 = v11;
  }

  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

id STLSRecordHandler.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for STLSRecordHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for STLSRecordHandler;
  if (!type metadata singleton initialization cache for STLSRecordHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for STLSRecordHandler(uint64_t a1)
{
  type metadata accessor for TLSRecordHandler?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for TLSRecordHandler?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TLSRecordHandler?)
  {
    type metadata accessor for TLSRecordHandler(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TLSRecordHandler?);
    }
  }
}

id specialized STLSRecordHandler.init(_:serverName:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:rawEPSKsEnabled:enableEarlyData:pakeClientConfiguration:logStr:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, void *a7, int a8, unsigned __int8 a9, __int128 *a10, void *a11)
{
  v12 = v11;
  v81 = a6;
  v82 = a8;
  v88 = a4;
  v89 = a7;
  v84 = a5;
  v85 = a1;
  v86 = a2;
  v87 = a3;
  v83 = a9;
  ObjectType = swift_getObjectType();
  v13 = a10[5];
  v92[4] = a10[4];
  v92[5] = v13;
  v93[0] = a10[6];
  *(v93 + 9) = *(a10 + 105);
  v14 = a10[1];
  v92[0] = *a10;
  v92[1] = v14;
  v15 = a10[3];
  v92[2] = a10[2];
  v92[3] = v15;
  v78 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v77 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v72 - v20;
  v22 = type metadata accessor for HandshakeStateMachine(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  v27 = type metadata accessor for TLSRecordHandler(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v74 = v28 + 56;
  v75 = v26;
  v30 = &v12[v26];
  v31 = v29;
  (v29)(v30, 1, 1, v27);
  v79 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
  *&v12[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = a11;
  v32 = a11;
  configureClientStateMachine(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:externalPreSharedKey:useRawEPSKs:enableEarlyData:pakeClientConfiguration:)(v85, v86, 0, v87, v88, v84, v81 & 0x1FFFF, v89, v21, v82, v83, a10);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {

    outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, logger);
    v34 = v12;
    v35 = v12;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = *&v34[v79];
      *(v38 + 4) = v40;
      *v39 = v40;
      v41 = v40;
      _os_log_impl(&dword_1B25F5000, v36, v37, "%@: unable to initialize client handshake state machine", v38, 0xCu);
      outlined destroy of P256.Signing.PrivateKey?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v39, -1, -1);
      MEMORY[0x1B274ECF0](v38, -1, -1);
    }
  }

  else
  {
    outlined init with take of TLSRecordHandler(v21, v25, type metadata accessor for HandshakeStateMachine);
    v73 = v25;
    v42 = v76;
    outlined init with copy of TLSRecordHandler(v25, v76, type metadata accessor for HandshakeStateMachine);
    swift_storeEnumTagMultiPayload();
    v43 = v77;
    v44 = TLSRecordHandler.init(stateMachine:)(v42, v77);
    v31(v43, 0, 1, v27, v44);
    v45 = v75;
    swift_beginAccess();
    outlined assign with take of TLSRecordHandler?(v43, &v12[v45]);
    swift_endAccess();
    v34 = v12;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, logger);
    v47 = v89;
    v48 = v85;
    v49 = v86;
    v50 = v87;
    outlined init with copy of Any?(a10, v90, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
    v51 = v48;
    v76 = v49;
    v77 = v50;
    v78 = v47;
    outlined init with copy of Any?(a10, v90, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
    v52 = v84;

    v53 = v12;
    v54 = v88;
    v55 = Logger.logObject.getter();
    LODWORD(v49) = static os_log_type_t.default.getter();

    LODWORD(v75) = v49;
    if (os_log_type_enabled(v55, v49))
    {
      v56 = v52;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138414850;
      v59 = *&v34[v79];
      *(v57 + 4) = v59;
      *v58 = v59;
      v79 = v34;
      *(v57 + 12) = 1024;
      v60 = v85 != 0;
      v61 = v59;

      *(v57 + 14) = v60;
      *(v57 + 18) = 1024;
      v62 = v76;

      *(v57 + 20) = v86 != 0;
      *(v57 + 24) = 1024;
      v63 = v77;

      *(v57 + 26) = v87 != 0;
      *(v57 + 30) = 2112;
      *(v57 + 32) = v54;
      v58[1] = v88;
      *(v57 + 40) = 1024;
      v64 = v54;

      *(v57 + 42) = v56 != 0;

      *(v57 + 46) = 512;
      v65 = v81;
      if ((v81 & 0x10000) != 0)
      {
        v65 = 0;
      }

      *(v57 + 48) = v65;
      *(v57 + 50) = 1024;
      v66 = v78;

      *(v57 + 52) = v89 != 0;
      *(v57 + 56) = 1024;
      *(v57 + 58) = v82 & 1;
      *(v57 + 62) = 1024;
      v67 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(v92) == 0;
      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
      *(v57 + 64) = v67;
      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
      *(v57 + 68) = 1024;
      v34 = v79;
      *(v57 + 70) = v83 & 1;
      _os_log_impl(&dword_1B25F5000, v55, v75, "%@:client STLSRecordHandler initialized: spkiArray %{BOOL}d, serverName? %{BOOL}d, alpn? %{BOOL}d, sessionState? %@, ticketRequest? %{BOOL}d, keyExchangeGroup: %hu, externalPreSharedKey? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeClientConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v57, 0x4Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B274ECF0](v58, -1, -1);
      MEMORY[0x1B274ECF0](v57, -1, -1);
    }

    else
    {
      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

      v68 = v76;
      v69 = v77;

      v70 = v78;

      outlined destroy of P256.Signing.PrivateKey?(a10, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

      v55 = v70;
    }

    outlined destroy of TLSRecordHandler(v73, type metadata accessor for HandshakeStateMachine);
  }

  v91.receiver = v34;
  v91.super_class = ObjectType;
  return objc_msgSendSuper2(&v91, sel_init);
}

id specialized STLSRecordHandler.init(_:serverKey:alpn:EPSKs:epskSelectionBlock:rawEPSKsEnabled:pakeServerConfiguration:enableEarlyData:logStr:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v83 = a5;
  v84 = a8;
  v79 = a7;
  v80 = a6;
  v85 = a4;
  v78 = a3;
  v76 = a2;
  ObjectType = swift_getObjectType();
  v74 = type metadata accessor for TLSHandshakeStateMachine(0);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v68[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v68[-v16];
  v18 = type metadata accessor for ServerHandshakeStateMachine(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  v22 = type metadata accessor for TLSRecordHandler(0);
  v23 = *(*(v22 - 8) + 56);
  v71 = v21;
  v23(&v10[v21], 1, 1, v22);
  v82 = v10;
  v75 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
  *&v10[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = a10;
  v24 = a10;
  if (a1)
  {
    v70 = a1;
    v25 = v76;
    v26 = v78;
    configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(v70, v76, 0, v78, v85, v83, v80, v79 & 1, v17, v84, a9 & 1);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {

      outlined destroy of P256.Signing.PrivateKey?(v17, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v28 = v82;
      v29 = v82;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        v34 = *(v75 + v28);
        *(v32 + 4) = v34;
        *v33 = v34;
        v35 = v34;
        _os_log_impl(&dword_1B25F5000, v30, v31, "%@: unable to initialize client handshake state machine", v32, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v33, -1, -1);
        MEMORY[0x1B274ECF0](v32, -1, -1);
      }
    }

    else
    {
      v69 = a9;
      v36 = v85;
      v37 = v77;
      outlined init with take of TLSRecordHandler(v17, v77, type metadata accessor for ServerHandshakeStateMachine);
      v38 = v72;
      outlined init with copy of TLSRecordHandler(v37, v72, type metadata accessor for ServerHandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
      v39 = v73;
      v40 = TLSRecordHandler.init(stateMachine:)(v38, v73);
      (v23)(v39, 0, 1, v22, v40);
      v28 = v82;
      v41 = v71;
      swift_beginAccess();
      outlined assign with take of TLSRecordHandler?(v39, &v28[v41]);
      swift_endAccess();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, logger);
      v43 = v26;
      v44 = v25;
      v45 = v83;
      v46 = v80;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v83, v80);
      v47 = v44;
      v74 = v43;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v45, v46);

      v48 = v28;

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v73 = v49;
        v51 = v70;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138414082;
        v54 = *(v75 + v28);
        *(v52 + 4) = v54;
        v75 = v53;
        *v53 = v54;
        *(v52 + 12) = 1024;
        v55 = v54;

        *(v52 + 14) = v25 != 0;
        *(v52 + 18) = 1024;
        v56 = v74;

        *(v52 + 20) = v78 != 0;
        *(v52 + 24) = 1024;
        if (v36)
        {
          if (v36 >> 62)
          {
            if (v36 >= 0)
            {
              v67 = v36 & 0xFFFFFFFFFFFFFF8;
            }

            else
            {
              v67 = v36;
            }

            v57 = MEMORY[0x1B274D9C0](v67);
          }

          else
          {
            v57 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v58 = v51;

          v59 = v57 != 0;
        }

        else
        {
          v59 = 0;
          v58 = v51;
        }

        *(v52 + 26) = v59;

        *(v52 + 30) = 1024;
        v61 = v83;
        v62 = v83 != 0;
        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v83, v46);
        *(v52 + 32) = v62;
        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v61, v46);
        *(v52 + 36) = 1024;
        *(v52 + 38) = v79 & 1;
        *(v52 + 42) = 1024;
        v63 = v84;

        *(v52 + 44) = v63 != 0;

        *(v52 + 48) = 1024;
        *(v52 + 50) = v69 & 1;
        v64 = v73;
        _os_log_impl(&dword_1B25F5000, v73, v50, "%@: server STLSRecordHandler initialized: serverKey? %{BOOL}d, alpn? %{BOOL}d, EPSKs? %{BOOL}d, epskSelectionBlock? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeServerConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v52, 0x36u);
        v65 = v75;
        outlined destroy of P256.Signing.PrivateKey?(v75, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v65, -1, -1);
        MEMORY[0x1B274ECF0](v52, -1, -1);
      }

      else
      {

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v45, v46);

        v60 = v74;

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v45, v46);
      }

      outlined destroy of TLSRecordHandler(v77, type metadata accessor for ServerHandshakeStateMachine);
    }
  }

  else
  {

    v28 = v82;
  }

  v86.receiver = v28;
  v86.super_class = ObjectType;
  return objc_msgSendSuper2(&v86, sel_init);
}

uint64_t specialized STLSRecordHandler.alertToOSStatusHelper(alert:peerAlert:)(char a1, char a2)
{
  result = 4294957494;
  switch(a1)
  {
    case 1:
      if (a2)
      {
        result = 4294957477;
      }

      else
      {
        result = 4294957440;
      }

      break;
    case 2:
      if (a2)
      {
        result = 4294957476;
      }

      else
      {
        result = 4294957450;
      }

      break;
    case 3:
      if (a2)
      {
        result = 4294957474;
      }

      else
      {
        result = 4294957449;
      }

      break;
    case 4:
      if (a2)
      {
        result = 4294957472;
      }

      else
      {
        result = 4294957438;
      }

      break;
    case 5:
      result = 4294957488;
      break;
    case 6:
      if (a2)
      {
        result = 4294957470;
      }

      else
      {
        result = 4294957488;
      }

      break;
    case 7:
      if (a2)
      {
        result = 4294957469;
      }

      else
      {
        result = 4294957488;
      }

      break;
    case 8:
      if (a2)
      {
        result = 4294957468;
      }

      else
      {
        result = 4294957482;
      }

      break;
    case 9:
      if (a2)
      {
        result = 4294957471;
      }

      else
      {
        result = 4294957488;
      }

      break;
    case 10:
      result = 4294957466;
      break;
    case 11:
      if (a2)
      {
        result = 4294957465;
      }

      else
      {
        result = 4294957483;
      }

      break;
    case 12:
      result = 4294957464;
      break;
    case 13:
      if (a2)
      {
        result = 4294957463;
      }

      else
      {
        result = 4294957437;
      }

      break;
    case 14:
      if (a2)
      {
        result = 4294957462;
      }

      else
      {
        result = 4294957451;
      }

      break;
    case 15:
      result = 4294957460;
      break;
    case 16:
      if (a2)
      {
        result = 4294957459;
      }

      else
      {
        result = 4294957494;
      }

      break;
    case 17:
      if (a2)
      {
        result = 4294957458;
      }

      else
      {
        result = 4294957486;
      }

      break;
    case 18:
      result = 4294957436;
      break;
    case 19:
      result = 4294957457;
      break;
    case 20:
      result = 4294957435;
      break;
    case 21:
    case 22:
    case 23:
      result = 4294957496;
      break;
    case 24:
      result = 4294957432;
      break;
    case 25:
      if (a2)
      {
        result = 4294957467;
      }

      else
      {
        result = 4294957433;
      }

      break;
    case 26:
    case 27:
      return result;
    default:
      result = 4294957491;
      break;
  }

  return result;
}

uint64_t specialized knownTLSAlert.init(rawValue:)(unsigned __int8 a1)
{
  v1 = a1;
  result = 27;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 10:
      result = 1;
      break;
    case 20:
      result = 2;
      break;
    case 22:
      result = 3;
      break;
    case 40:
      result = 4;
      break;
    case 42:
      result = 5;
      break;
    case 43:
      result = 6;
      break;
    case 44:
      result = 7;
      break;
    case 45:
      result = 8;
      break;
    case 46:
      result = 9;
      break;
    case 47:
      result = 10;
      break;
    case 48:
      result = 11;
      break;
    case 49:
      result = 12;
      break;
    case 50:
      result = 13;
      break;
    case 51:
      result = 14;
      break;
    case 70:
      result = 15;
      break;
    case 71:
      result = 16;
      break;
    case 80:
      result = 17;
      break;
    case 86:
      result = 18;
      break;
    case 90:
      result = 19;
      break;
    case 109:
      result = 20;
      break;
    case 110:
      result = 21;
      break;
    case 112:
      result = 22;
      break;
    case 113:
      result = 23;
      break;
    case 115:
      result = 24;
      break;
    case 116:
      result = 25;
      break;
    case 120:
      result = 26;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined copy of TLSError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t outlined copy of TLSError?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of TLSError(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of TLSError?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TLSError(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined init with take of TLSRecordHandler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of TLSRecordHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags;
  if (!lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags;
  if (!lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags);
  }

  return result;
}

uint64_t outlined destroy of TLSRecordHandler(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi0_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 2;
  return result;
}

uint64_t type metadata accessor for SwiftTLSExternalPreSharedKey(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of TLSRecordHandler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned @escaping @callee_unowned @convention(block) (@unowned SecExternalPreSharedKey?) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSOfferedEPSK, &off_1E7B2E038);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ();
  v11[3] = &block_descriptor;
  v8 = _Block_copy(v11);
  v9 = *(a4 + 16);

  v9(a4, isa, v8);
  _Block_release(v8);
}

void thunk for @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9, unsigned __int8 a10)
{
  v11 = v10;
  LODWORD(v215) = a8;
  v227 = a7;
  v226 = a6;
  v237 = a5;
  v233 = a4;
  v230 = a3;
  v231 = a2;
  v232 = a1;
  v228 = a9;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v189 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v201 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v199 = &v189 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v203 = &v189 - v20;
  v21 = type metadata accessor for SymmetricKey();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v238 = &v189 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for EPSK(0);
  v224 = *(v225 - 8);
  v24 = MEMORY[0x1EEE9AC00](v225);
  v235 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v223 = (&v189 - v27);
  MEMORY[0x1EEE9AC00](v26);
  v234 = &v189 - v28;
  v213 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v29 = MEMORY[0x1EEE9AC00](v213);
  v200 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v198 = &v189 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v202 = &v189 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v214 = &v189 - v35;
  v212 = type metadata accessor for NSFastEnumerationIterator();
  *&v211 = *(v212 - 1);
  MEMORY[0x1EEE9AC00](v212);
  v37 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v229 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v189 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v216 = &v189 - v44;
  v45 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  v46 = type metadata accessor for ServerHandshakeStateMachine(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v220 = v45;
  v207 = v46;
  v206 = v48;
  v205 = v47 + 56;
  (v48)(&v11[v45], 1, 1);
  v49 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_partialHandshakeResult;
  v50 = type metadata accessor for PartialHandshakeResult(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 56);
  v222 = v49;
  v210 = v50;
  v209 = v52;
  v208 = v51 + 56;
  (v52)(&v11[v49], 1, 1);
  v53 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  v54 = type metadata accessor for EncryptionLevel(0);
  v55 = *(*(v54 - 8) + 56);
  v219 = v53;
  v55(&v11[v53], 1, 1, v54);
  v218 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  v55(&v11[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel], 1, 1, v54);
  v56 = v232;
  v57 = v11;
  v217 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError;
  *&v11[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError] = 0;
  v58 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_clientAppSecret;
  v204 = v22;
  v59 = *(v22 + 56);
  v236 = v21;
  v60 = v21;
  v61 = v230;
  v59(&v11[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_clientAppSecret], 1, 1, v60);
  if (!v56 || !v61 || !v233)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, logger);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v227;
    v81 = v226;
    if (v79)
    {
      v82 = v61;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1B25F5000, v77, v78, "Cannot start the handshake with NULL parameters", v83, 2u);
      MEMORY[0x1B274ECF0](v83, -1, -1);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v81, v80);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v226, v227);
    }

    goto LABEL_16;
  }

  v191 = v14;
  v62 = type metadata accessor for P256.Signing.PrivateKey();
  v63 = *(v62 - 8);
  v64 = v63;
  v196 = *(v63 + 56);
  v195 = v63 + 56;
  v196(v216, 1, 1, v62);
  v65 = v231;
  if (v231)
  {
    v194 = v56;
    v197 = v61;
    v66 = v233;
    convertPrivateKey(_:)(v65, v43);
    if ((*(v64 + 48))(v43, 1, v62) == 1)
    {

      outlined destroy of P256.Signing.PrivateKey?(v43, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, logger);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v227;
      v72 = v226;
      if (v70)
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1B25F5000, v68, v69, "unable to convert server private key", v73, 2u);
        MEMORY[0x1B274ECF0](v73, -1, -1);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v72, v71);
        v74 = v194;

        v75 = v197;
      }

      else
      {

        v157 = v197;
        v158 = v194;

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v72, v71);
      }

      outlined destroy of P256.Signing.PrivateKey?(v216, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
LABEL_16:
      outlined destroy of P256.Signing.PrivateKey?(&v57[v220], &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v57[v222], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v57[v219], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v57[v218], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);

      outlined destroy of P256.Signing.PrivateKey?(&v57[v58], &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v88 = v62;
    v89 = v216;
    outlined destroy of P256.Signing.PrivateKey?(v216, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    (*(v64 + 32))(v89, v43, v88);
    v90 = v89;
    v62 = v88;
    v196(v90, 0, 1, v88);
  }

  else
  {
    v85 = v56;
    v86 = v61;
    v87 = v233;
  }

  v193 = v57;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  v91 = v214;
  if (v246)
  {
    v197 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v244, &v241);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v246)
        {
          goto LABEL_31;
        }
      }

      v92 = v239;
      v93 = v240;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v197 + 2) + 1, 1, v197);
      }

      v94 = v197;
      v96 = *(v197 + 2);
      v95 = *(v197 + 3);
      if (v96 >= v95 >> 1)
      {
        v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v197);
      }

      *(v94 + 2) = v96 + 1;
      v197 = v94;
      v97 = &v94[16 * v96];
      *(v97 + 4) = v92;
      *(v97 + 5) = v93;
      NSFastEnumerationIterator.next()();
      v91 = v214;
    }

    while (v246);
  }

  else
  {
    v197 = MEMORY[0x1E69E7CC0];
  }

LABEL_31:
  v98 = v62;
  v190 = v58;
  LODWORD(v194) = a10;
  (*(v211 + 8))(v37, v212);
  v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;
  outlined init with copy of Any?(v216, v229, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v101 = v61;
  v102 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;
  v192 = v101;

  v105 = 0;
  v106 = v104 >> 62;
  if ((v104 >> 62) > 1)
  {
    if (v106 == 2)
    {
      v105 = *(v102 + 16);
    }
  }

  else if (v106)
  {
    v105 = v102;
  }

  v107 = v213;
  v108 = *(v213 + 20);
  v196(v91 + v108, 1, 1, v98);
  v109 = (v91 + v107[6]);
  *v109 = xmmword_1B26C5EF0;
  v109[2] = 0;
  v110 = v107[7];
  *v91 = v212;
  v91[1] = v100;
  v111 = v197;

  outlined assign with take of PartialHandshakeResult?(v229, v91 + v108, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  outlined consume of ByteBuffer?(*v109, v109[1]);
  *v109 = v102;
  v109[1] = v104;
  v109[2] = v105;
  *(v91 + v110) = v111;
  *(v91 + v107[8]) = v194 & 1;
  *(v91 + v107[9]) = 1;
  *(v91 + v107[10]) = v215 & 1;
  v112 = v237;
  if (v237)
  {
    v113 = v227;
    v114 = v226;
    if (v237 >> 62)
    {
      if (v237 >= 0)
      {
        v159 = v237 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v159 = v237;
      }

      v115 = MEMORY[0x1B274D9C0](v159);
      if (v115)
      {
LABEL_39:
        if (v115 < 1)
        {
          __break(1u);
          swift_once();
          v162 = type metadata accessor for Logger();
          __swift_project_value_buffer(v162, logger);
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&dword_1B25F5000, v163, v164, "unable to create handshake state machine with epsks", v165, 2u);
            MEMORY[0x1B274ECF0](v165, -1, -1);
          }

          v166 = v200;
          outlined init with copy of ServerHandshakeStateMachine(v91, v200, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          v175 = v201;
          ServerHandshakeStateMachine.init(configuration:)(v166, v201);

          outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v107, v105);
          v178 = v192;

          outlined destroy of P256.Signing.PrivateKey?(v216, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
          v179 = v91;
          goto LABEL_93;
        }

        v229 = v112 & 0xC000000000000001;
        v213 = v204 + 32;
        v212 = (v204 + 8);

        v116 = v112;
        v117 = 0;
        v118 = MEMORY[0x1E69E7CC0];
        v215 = xmmword_1B26C5EE0;
        v211 = 0x8400102uLL;
        v230 = v115;
        do
        {
          if (v229)
          {
            v119 = MEMORY[0x1B274D8D0](v117, v116);
          }

          else
          {
            v119 = *(v116 + 8 * v117 + 32);
          }

          v120 = v119;
          v121 = [v120 external_identity];
          v122 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          v125 = 0;
          v126 = v124 >> 62;
          if ((v124 >> 62) > 1)
          {
            if (v126 == 2)
            {
              v125 = *(v122 + 16);
            }
          }

          else if (v126)
          {
            v125 = v122;
          }

          v127 = [v120 epsk];
          v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v129;

          *&v244 = v128;
          *(&v244 + 1) = v130;
          SymmetricKey.init<A>(data:)();
          v131 = [v120 context];

          v132 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v134 = v133;

          v135 = 0;
          v136 = v134 >> 62;
          if ((v134 >> 62) > 1)
          {
            if (v136 == 2)
            {
              v135 = *(v132 + 16);
            }
          }

          else if (v136)
          {
            v135 = v132;
          }

          v137 = v238;
          if (SymmetricKey.bitCount.getter() > 127)
          {
            v145 = v125;
            v146 = v118;
            v147 = v223;
            *v223 = v122;
            v147[1] = v124;
            v147[2] = v145;
            v148 = v225;
            (*v213)(v147 + *(v225 + 20), v137, v236);
            v149 = (v147 + *(v148 + 24));
            *v149 = v132;
            v149[1] = v134;
            v149[2] = v135;
            v150 = v147;
            v118 = v146;
            v151 = v234;
            outlined init with take of EncryptionLevel(v150, v234, type metadata accessor for EPSK);
            outlined init with copy of ServerHandshakeStateMachine(v151, v235, type metadata accessor for EPSK);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v146[2] + 1, 1, v146);
            }

            v153 = v118[2];
            v152 = v118[3];
            if (v153 >= v152 >> 1)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), v153 + 1, 1, v118);
            }

            outlined destroy of ServerHandshakeStateMachine(v234, type metadata accessor for EPSK);
            v118[2] = v153 + 1;
            outlined init with take of EncryptionLevel(v235, v118 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v153, type metadata accessor for EPSK);
          }

          else
          {
            v244 = v215;
            v245 = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v132, v134);
            outlined consume of Data._Representation(v122, v124);
            (*v212)(v137, v236);
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v138 = type metadata accessor for Logger();
            __swift_project_value_buffer(v138, logger);
            v139 = Logger.logObject.getter();
            v140 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              *v141 = v211;
              swift_allocError();
              *v143 = v215;
              *(v143 + 16) = 2;
              v144 = _swift_stdlib_bridgeErrorToNSError();
              *(v141 + 4) = v144;
              *v142 = v144;
              _os_log_impl(&dword_1B25F5000, v139, v140, "unable to create EPSK %@", v141, 0xCu);
              outlined destroy of P256.Signing.PrivateKey?(v142, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x1B274ECF0](v142, -1, -1);
              MEMORY[0x1B274ECF0](v141, -1, -1);
            }
          }

          v117 = v117 + 1;
          v116 = v237;
        }

        while (v230 != v117);
        v154 = v237;

        v112 = v154;

        v113 = v227;
        v114 = v226;
        v91 = v214;
        if (!v226)
        {
          goto LABEL_77;
        }

LABEL_69:
        v155 = swift_allocObject();
        *(v155 + 16) = v114;
        *(v155 + 24) = v113;
        v156 = partial apply for closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:);
        goto LABEL_78;
      }
    }

    else
    {
      v115 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v115)
      {
        goto LABEL_39;
      }
    }

    v118 = MEMORY[0x1E69E7CC0];
    if (v114)
    {
      goto LABEL_69;
    }
  }

  else
  {

    v118 = MEMORY[0x1E69E7CC0];
    v113 = v227;
    v114 = v226;
    if (v226)
    {
      goto LABEL_69;
    }
  }

LABEL_77:
  v156 = 0;
  v155 = 0;
LABEL_78:
  if (!v228)
  {
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v114, v113);

    v160 = v202;
    outlined init with copy of ServerHandshakeStateMachine(v91, v202, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v156, v155);
    v161 = v203;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC(v118, v156, v155, v160, &v243, v203);
    outlined destroy of P256.Signing.PrivateKey?(v216, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);

    v175 = v161;
    v176 = v192;

    v177 = v156;
    v178 = v176;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v177, v155);
    v179 = v91;
LABEL_93:
    outlined destroy of ServerHandshakeStateMachine(v179, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v206(v175, 0, 1, v207);
    v180 = v193;
    goto LABEL_94;
  }

  _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v114, v113);

  if (v112)
  {

LABEL_87:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v167 = type metadata accessor for Logger();
    __swift_project_value_buffer(v167, logger);
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&dword_1B25F5000, v168, v169, "cannot provide both epsks and pake server configuration", v170, 2u);
      MEMORY[0x1B274ECF0](v170, -1, -1);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v156, v155);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v114, v113);
      v171 = v232;

      v172 = v192;
    }

    else
    {

      v173 = v192;
      v174 = v232;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v156, v155);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v114, v113);
    }

    outlined destroy of P256.Signing.PrivateKey?(v216, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    outlined destroy of ServerHandshakeStateMachine(v91, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v57 = v193;
    v58 = v190;
    goto LABEL_16;
  }

  if (v114)
  {

    goto LABEL_87;
  }

  v187 = v198;
  outlined init with copy of ServerHandshakeStateMachine(v91, v198, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v188 = v199;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC(v228, v187, v199);
  outlined destroy of P256.Signing.PrivateKey?(v216, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);

  v178 = v192;
  outlined destroy of ServerHandshakeStateMachine(v91, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v206(v188, 0, 1, v207);
  v180 = v193;
  v175 = v188;
LABEL_94:
  v181 = v220;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v175, v180 + v181, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  swift_endAccess();
  v182 = ObjectType;
  v183 = v231;
  v184 = v191;
  v209(v191, 1, 1, v210);
  v185 = v222;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v184, v180 + v185, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  v242.receiver = v180;
  v242.super_class = v182;
  v186 = objc_msgSendSuper2(&v242, sel_init);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v114, v113);

  return v186;
}