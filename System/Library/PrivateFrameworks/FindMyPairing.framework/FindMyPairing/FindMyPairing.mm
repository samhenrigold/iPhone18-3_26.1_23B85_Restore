uint64_t sub_24AF49250()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AF49288()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  v6 = type metadata accessor for PairingContext(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddress10Foundation4DataVSg12pairingTokenSb11forceRepairtMd, &_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddress10Foundation4DataVSg12pairingTokenSb11forceRepairtMR);
      v11 = *(v10 + 48);
      v12 = type metadata accessor for MACAddress();
      (*(*(v12 - 8) + 8))(v5 + v11, v12);
      v13 = (v5 + *(v10 + 64));
      v14 = v13[1];
      if (v14 >> 60 != 15)
      {
        outlined consume of Data._Representation(*v13, v14);
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddresstMd, &_s13FindMyPairing13AccessoryType_p_0aB4Base10MACAddressV11mainAddresstMR) + 48);
      v9 = type metadata accessor for MACAddress();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
    }

    else if (!EnumCaseMultiPayload && *(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AF494AC()
{

  if (*(v0 + 64))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_24AF49500()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AF495C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24AF496CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24AF497E0()
{
  v1 = (type metadata accessor for AccessoryDependencies(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  swift_unknownObjectRelease();
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  if (*(v0 + v4 + 40))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 41, v2 | 7);
}

uint64_t sub_24AF49948()
{
  MEMORY[0x24C2370D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF49980()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF499C0()
{
  v1 = *(type metadata accessor for DependenciesIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  if (*(v0 + 32) >= 0x11uLL)
  {
    MEMORY[0x24C236EB0]();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AF49ADC()
{
  MEMORY[0x24C2370D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AF49B14()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AF49B54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AF49B94()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24AF49BCC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AF49C28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AF49CEC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24AF49D3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF49D74()
{
  MEMORY[0x24C2370D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AF49DAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AF49DF4()
{
  v1 = *(type metadata accessor for PairingExecutorState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    MEMORY[0x24C236EB0](*v9);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else if (EnumCaseMultiPayload == 1 && v9[1] >= 9uLL)
  {
  }

  v11 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v11 + v8, v2 | v7 | 7);
}

uint64_t sub_24AF49FC4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AF4A014()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AF4A054()
{

  MEMORY[0x24C236EB0](*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AF4A094()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_24AF4A16C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t _s13FindMyPairing0C16CoordinatorStateOIegHn_SgWOe_0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AF4A1F4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24AF4A3AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_24AF4A3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

unint64_t sub_24AF4A44C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = v4;
  return outlined copy of PairingCoordinatorState(v4);
}

uint64_t sub_24AF4A49C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24AF4A5CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24AF4A714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AF4A780(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24AF4A808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_24AF4A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t outlined init with take of Accessory(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Int PairingServiceProxyError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingServiceProxyError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingServiceProxyError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PairingServiceProxyError and conformance PairingServiceProxyError()
{
  result = lazy protocol witness table cache variable for type PairingServiceProxyError and conformance PairingServiceProxyError;
  if (!lazy protocol witness table cache variable for type PairingServiceProxyError and conformance PairingServiceProxyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingServiceProxyError and conformance PairingServiceProxyError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingServiceProxyError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairingServiceProxyError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of PairingServiceProxy._coordinator(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingServiceProxy._coordinator(for:context:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingServiceProxy._coordinator(for:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t PairingValidatorError.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0xD000000000000018;
    if (v1 != 1)
    {
      v2 = 0xD000000000000019;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    _StringGuts.grow(_:)(24);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C236810](v4);

    return 0xD000000000000016;
  }
}

Swift::Int PairingPolicyVerifierError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingPolicyVerifierError()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PairingPolicyVerifierError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

uint64_t PairingPolicyVerifier.verifyIfPairingEligibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[11] = AssociatedTypeWitness;
  v6 = type metadata accessor for Optional();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(AssociatedTypeWitness - 8);
  v4[16] = swift_task_alloc();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](PairingPolicyVerifier.verifyIfPairingEligibility(_:), v8, v7);
}

uint64_t PairingPolicyVerifier.verifyIfPairingEligibility(_:)()
{
  v1 = v0[15];
  outlined init with copy of PairingEligibilityInfo(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C15EligibilityInfo_pMd, &_s13FindMyPairing0C15EligibilityInfo_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[11];
    v18 = v0[9];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    v17 = (*(v18 + 32) + **(v18 + 32));
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
    v9 = v0[16];
    v10 = v0[9];
    v11 = v0[8];

    return v17(v9, v11, v10);
  }

  else
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    v3(v13, 1, 1, v0[11]);
    (*(v14 + 8))(v13, v15);
    lazy protocol witness table accessor for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError();
    swift_allocError();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
  }

  else
  {
    v5 = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[15] + 8))(v0[16], v0[11]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[15] + 8))(v0[16], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t outlined init with copy of PairingEligibilityInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t lazy protocol witness table accessor for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError()
{
  result = lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError;
  if (!lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError;
  if (!lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPolicyVerifierError and conformance PairingPolicyVerifierError);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PairingValidatorError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingValidatorError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for PairingValidatorError(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PairingValidatorError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t dispatch thunk of PairingValidator.validateRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingValidator.ack(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for PairingPolicyVerifierError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PairingPolicyVerifierError(_WORD *result, int a2, int a3)
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

uint64_t dispatch thunk of PairingPolicyVerifier.verifyIfPairingEligibility(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

uint64_t one-time initialization function for pairingService()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.pairingService);
  __swift_project_value_buffer(v0, static Logger.pairingService);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.pairingService.unsafeMutableAddressor()
{
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.pairingService);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.pairingService.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.pairingService);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PairingConfiguration.identifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PairingConfiguration(v1, v25);
  if (v26)
  {
    v7 = *&v25[0];
    v8 = *(*&v25[0] + 16);
    if (v8)
    {
      v20 = a1;
      v24 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = v24;
      v19 = v7;
      v10 = v7 + 32;
      do
      {
        outlined init with copy of PairingEligibilityInfo(v10, v21);
        v12 = v22;
        v11 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (*(v11 + 8))(v12, v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v24 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v9 = v24;
        }

        *(v9 + 16) = v14 + 1;
        (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v6, v3);
        v10 += 40;
        --v8;
      }

      while (v8);

      a1 = v20;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v9);

    *a1 = v18;
    type metadata accessor for DependenciesIdentifier(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined init with take of Accessory(v25, v21);
    v15 = v22;
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v16 + 8))(v15, v16);
    type metadata accessor for DependenciesIdentifier(0);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }
}

uint64_t PairingConfiguration.dependenciesIdentifier.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PairingConfiguration(v0, v21);
  if (v22)
  {
    v5 = *&v21[0];
    v6 = *(*&v21[0] + 16);
    if (v6)
    {
      v20 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v20;
      v16[1] = v5;
      v8 = v5 + 32;
      do
      {
        outlined init with copy of PairingEligibilityInfo(v8, v17);
        v9 = v18;
        v10 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v10 + 8))(v9, v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        v20 = v7;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v7 = v20;
        }

        *(v7 + 16) = v12 + 1;
        (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v4, v1);
        v8 += 40;
        --v6;
      }

      while (v6);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    outlined init with take of Accessory(v21, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24AFB0430;
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v14 + 8))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return v7;
}

uint64_t DependenciesIdentifier.singleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DependenciesIdentifier(v2, v6, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v6, type metadata accessor for DependenciesIdentifier);
    v7 = type metadata accessor for UUID();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, v6, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

char *DependenciesIdentifier.multiIdentifier.getter()
{
  v1 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DependenciesIdentifier(v0, v3, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *v3;
    v5 = *(*v3 + 16);
    if (v5)
    {
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(v5, 0);
      v7 = *(type metadata accessor for UUID() - 8);
      v8 = specialized Sequence._copySequenceContents(initializing:)(&v11, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v4);
      result = outlined consume of Set<UUID>.Iterator._Variant(v11);
      if (v8 == v5)
      {
        return v6;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v3, type metadata accessor for DependenciesIdentifier);
    return 0;
  }

  return result;
}

char *DependenciesIdentifier.rawValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DependenciesIdentifier(v1, v8, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  v9 = *v8;
  v2 = *(*v8 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v8 + 16), 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v14, &v8[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v9);
  outlined consume of Set<UUID>.Iterator._Variant(v14);
  if (v5 != v2)
  {
    __break(1u);
LABEL_5:
    v10 = *(v3 + 32);
    v10(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_24AFB0430;
    v10(&v8[v11], v5, v2);
  }

  return v8;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DependenciesIdentifier.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DependenciesIdentifier(v2, v10, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(a1, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v5 + 8))(v7, v4);
  }
}

Swift::Int DependenciesIdentifier.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of DependenciesIdentifier(v1, v8, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(v12, v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DependenciesIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of DependenciesIdentifier(v3, v10, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(v14, v11);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }

  return Hasher._finalize()();
}

uint64_t ObservationStreams.pairingStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ObservationStreams.analyticsStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ObservationStreams(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ObservationStreams.init(pairingStream:analyticsStream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for ObservationStreams(0) + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t PairingService.pairingDependencies.getter()
{
  *(v1 + 24) = v0;
  return MEMORY[0x2822009F8](PairingService.pairingDependencies.getter, v0, 0);
}

{
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  swift_weakInit();
  v5 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy13FindMyPairing22DependenciesIdentifierOAA09AccessoryD0VGSgMd, &_sSDy13FindMyPairing22DependenciesIdentifierOAA09AccessoryD0VGSgMR);
  *v2 = v0;
  v2[1] = PairingService.pairingDependencies.getter;

  return v5(v0 + 16, &async function pointer to partial apply for closure #1 in PairingService.pairingDependencies.getter, v1, v3);
}

{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = PairingService.pairingDependencies.getter;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = PairingService.pairingDependencies.getter;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n = *(v0 + 16);
  if (!MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n)
  {
    MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13FindMyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 8);

  return v2(MyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingService.pairingDependencies.getter(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingService.pairingDependencies.getter, 0, 0);
}

uint64_t closure #1 in PairingService.pairingDependencies.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingService.pairingDependencies.getter, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 0;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 88) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.pairingDependencies.getter, 0, 0);
}

{
  **(v0 + 64) = *(v0 + 88);
  return (*(v0 + 8))();
}

void *PairingService.__allocating_init(proxy:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMd, &_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v9 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  UUID.init()();
  v10 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v11 = MEMORY[0x277D84F98];
  v8[14] = v10;
  v8[15] = v11;
  v8[16] = a1;
  v8[17] = a2;
  return v8;
}

void *PairingService.init(proxy:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMd, &_s10FindMyBase13WorkItemQueueC14WarningOptionsVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v9 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  UUID.init()();
  v10 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v11 = MEMORY[0x277D84F98];
  v2[14] = v10;
  v2[15] = v11;
  v2[16] = a1;
  v2[17] = a2;
  return v2;
}

uint64_t PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[26] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtGMR);
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR) - 8);
  v4[33] = v7;
  v4[34] = *(v7 + 64);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.pairAccessories(_:context:), v3, 0);
}

uint64_t PairingService.pairAccessories(_:context:)()
{
  v1 = v0[25];
  type metadata accessor for WorkItemQueue();
  v0[36] = *(v1 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[34];
    v5 = v0[35];
    v7 = v0[33];
    v15 = v0[26];
    v8 = v0[23];
    v9 = v0[24];
    v10 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of PairingContext?(v9, v5, &_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = swift_allocObject();
    v0[37] = v12;
    *(v12 + 16) = v10;
    *(v12 + 24) = v8;
    outlined init with take of PairingContext?(v5, v12 + v11, &_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR);
    *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v16 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);

    v13 = swift_task_alloc();
    v0[38] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C11Coordinator_p_AA0C13ConfigurationOtMd, &_s13FindMyPairing0C11Coordinator_p_AA0C13ConfigurationOtMR);
    *v13 = v0;
    v13[1] = PairingService.pairAccessories(_:context:);

    return v16(v0 + 2, &async function pointer to partial apply for closure #1 in PairingService.pairAccessories(_:context:), v12, v14);
  }
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = PairingService.pairAccessories(_:context:);
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = PairingService.pairAccessories(_:context:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 24);
  *(v0 + 320) = *(v0 + 16);
  *(v0 + 328) = v1;
  v2 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 32);
  *(v0 + 96) = v2;
  *(v0 + 105) = *(v0 + 57);
  ObjectType = swift_getObjectType();
  *(v0 + 336) = ObjectType;
  v7 = (*(v1 + 136) + **(v1 + 136));
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = PairingService.pairAccessories(_:context:);
  v5 = *(v0 + 256);

  return v7(v5, ObjectType, v1);
}

{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {
    v3 = v2[25];

    return MEMORY[0x2822009F8](PairingService.pairAccessories(_:context:), v3, 0);
  }

  else
  {
    v9 = (*(v2[41] + 144) + **(v2[41] + 144));
    v4 = swift_task_alloc();
    v2[45] = v4;
    *v4 = v2;
    v4[1] = PairingService.pairAccessories(_:context:);
    v6 = v2[41];
    v5 = v2[42];
    v7 = v2[29];

    return v9(v7, v5, v6);
  }
}

{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = PairingService.pairAccessories(_:context:);
  }

  else
  {
    v4 = PairingService.pairAccessories(_:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v12 = *(v0 + 240);
  v4 = *(v0 + 224);
  v13 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of PairingConfiguration(v0 + 80, v0 + 128);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(v0 + 144);
  *(v7 + 24) = *(v0 + 128);
  *(v7 + 40) = v8;
  *(v7 + 49) = *(v0 + 153);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  swift_unknownObjectRelease();
  outlined destroy of PairingConfiguration(v0 + 80);

  (*(v2 + 32))(v5, v1, v12);
  v9 = type metadata accessor for ObservationStreams(0);
  (*(v4 + 32))(v5 + *(v9 + 20), v3, v13);

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  outlined destroy of PairingConfiguration(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  outlined destroy of PairingConfiguration((v0 + 10));

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](closure #1 in PairingService.pairAccessories(_:context:), 0, 0);
}

uint64_t closure #1 in PairingService.pairAccessories(_:context:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = closure #1 in PairingService.pairAccessories(_:context:);
    v3 = v0[13];

    return PairingService._configuration(for:)((v0 + 2), v3);
  }

  else
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingService.pairAccessories(_:context:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    *v3 = v2;
    v3[1] = closure #1 in PairingService.pairAccessories(_:context:);
    v4 = v2[14];

    return PairingService._coordinator(for:context:)((v2 + 2), v4);
  }
}

{
  v1 = *(v0 + 88);
  v6 = *(v0 + 160);

  *v1 = vextq_s8(v6, v6, 8uLL);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 41) = *(v0 + 41);
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  outlined destroy of PairingConfiguration(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 152) = v2;

  if (v2)
  {
    v7 = closure #1 in PairingService.pairAccessories(_:context:);
  }

  else
  {
    *(v6 + 160) = a2;
    *(v6 + 168) = a1;
    v7 = closure #1 in PairingService.pairAccessories(_:context:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t PairingService._configuration(for:)(uint64_t a1, uint64_t a2)
{
  v3[39] = a2;
  v3[40] = v2;
  v3[38] = a1;
  v4 = type metadata accessor for AccessoryDependencies(0);
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[45] = v5;
  v3[46] = *(v5 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v6 = type metadata accessor for DependenciesIdentifier(0);
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v2, 0);
}

uint64_t PairingService._configuration(for:)()
{
  v103 = v0;
  type metadata accessor for WorkItemQueue();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    v35 = 2;
LABEL_36:
    *v34 = v35;
    swift_willThrow();
    goto LABEL_62;
  }

  v97 = *(v0 + 408);
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  swift_beginAccess();
  v91 = v2;
  v92 = v1;
  v3 = *(v2 + 120);
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v100 = v3;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v99 = v0;
  while (v7)
  {
LABEL_11:
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    outlined init with copy of DependenciesIdentifier(*(v100 + 48) + *(v97 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v12, type metadata accessor for DependenciesIdentifier);
    outlined init with copy of DependenciesIdentifier(v12, v13, type metadata accessor for DependenciesIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 432);
    if (EnumCaseMultiPayload != 1)
    {
      v23 = *(v0 + 392);
      v24 = *(v0 + 360);
      v25 = *(v92 + 32);
      v25(v23, v15, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v26 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24AFB0430;
      v25(v19 + v26, v23, v24);
LABEL_21:
      v0 = v99;
      goto LABEL_22;
    }

    v16 = *v15;
    v17 = *(*v15 + 16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v18 = *(v92 + 72);
      v0 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v19 = swift_allocObject();
      v20 = _swift_stdlib_malloc_size(v19);
      if (!v18)
      {
        goto LABEL_81;
      }

      if (v20 - v0 == 0x8000000000000000 && v18 == -1)
      {
        goto LABEL_83;
      }

      *(v19 + 16) = v17;
      *(v19 + 24) = 2 * ((v20 - v0) / v18);
      v22 = specialized Sequence._copySequenceContents(initializing:)(&v102, (v19 + v0), v17, v16);
      outlined consume of Set<UUID>.Iterator._Variant(v102);
      if (v22 != v17)
      {
        goto LABEL_82;
      }

      goto LABEL_21;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_22:
    outlined destroy of DependenciesIdentifier(*(v0 + 440), type metadata accessor for DependenciesIdentifier);
    v27 = *(v19 + 16);
    v0 = v10[2];
    v28 = v0 + v27;
    if (__OFADD__(v0, v27))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
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
      swift_once();
LABEL_66:
      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.pairingService);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_24AF48000, v77, v78, "Multiple detections for ongoing pairing, can't proceed, the result is uncertain.", v79, 2u);
        MEMORY[0x24C237030](v79, -1, -1);
      }

      lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
      swift_allocError();
      v35 = 4;
      goto LABEL_36;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v28 > v10[3] >> 1)
    {
      if (v0 <= v28)
      {
        v30 = v0 + v27;
      }

      else
      {
        v30 = v0;
      }

      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v10, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
    }

    v0 = v99;
    v7 &= v7 - 1;
    if (*(v19 + 16))
    {
      if ((v10[3] >> 1) - v10[2] < v27)
      {
        goto LABEL_79;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v31 = v10[2];
        v32 = __OFADD__(v31, v27);
        v33 = v31 + v27;
        if (v32)
        {
          goto LABEL_80;
        }

        v10[2] = v33;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_78;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  v36 = *(v0 + 312);

  v37 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v10);

  v94 = *(v36 + 16);
  if (v94)
  {
    v38 = 0;
    v39 = *(v0 + 368);
    v93 = *(v0 + 312) + 32;
    v101 = v37 + 56;
    v98 = (v39 + 16);
    v40 = (v39 + 8);
    v41 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of PairingEligibilityInfo(v93 + 40 * v38, v0 + 160);
      v43 = *(v0 + 184);
      v44 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v43);
      (*(v44 + 8))(v43, v44);
      v95 = v38;
      v96 = v41;
      if (*(v37 + 16) && (lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v45 = dispatch thunk of Hashable._rawHashValue(seed:)(), v46 = -1 << *(v37 + 32), v47 = v45 & ~v46, ((*(v101 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) != 0))
      {
        v48 = ~v46;
        v49 = *(v92 + 72);
        v50 = *v98;
        while (1)
        {
          v51 = *(v0 + 392);
          v52 = *(v0 + 360);
          v50(v51, *(v37 + 48) + v47 * v49, v52);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v53 = dispatch thunk of static Equatable.== infix(_:_:)();
          v54 = *v40;
          (*v40)(v51, v52);
          if (v53)
          {
            break;
          }

          v47 = (v47 + 1) & v48;
          v0 = v99;
          if (((*(v101 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v54(v99[48], v99[45]);
        v0 = v99;
        __swift_destroy_boxed_opaque_existential_1Tm(v99 + 20);
        v42 = v95;
        v41 = v96;
      }

      else
      {
LABEL_46:
        (*v40)(*(v0 + 384), *(v0 + 360));
        outlined init with take of Accessory((v0 + 160), v0 + 200);
        v41 = v96;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v102 = v96;
        if ((v55 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 16) + 1, 1);
          v41 = v102;
        }

        v57 = *(v41 + 16);
        v56 = *(v41 + 24);
        v42 = v95;
        if (v57 >= v56 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
          v41 = v102;
        }

        *(v41 + 16) = v57 + 1;
        outlined init with take of Accessory((v0 + 200), v41 + 40 * v57 + 32);
      }

      v38 = v42 + 1;
    }

    while (v38 != v94);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v58 = *(v41 + 16);
  if (v58)
  {
    if (v58 == 1)
    {
      v59 = *(v0 + 304);
      outlined init with copy of PairingEligibilityInfo(v41 + 32, v0 + 240);

      outlined init with take of Accessory((v0 + 240), v59);
      *(v59 + 40) = 0;
    }

    else
    {
      v74 = *(v0 + 304);
      *v74 = v41;
      *(v74 + 40) = 1;
    }

    goto LABEL_62;
  }

  if (v94 != 1)
  {

    if (one-time initialization token for pairingService != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_66;
  }

  v60 = *(v0 + 424);
  outlined init with copy of PairingEligibilityInfo(*(v0 + 312) + 32, v0 + 16);
  *(v0 + 56) = 0;
  PairingConfiguration.identifier.getter(v60);
  v61 = *(v91 + 120);
  if (!*(v61 + 16))
  {
    goto LABEL_70;
  }

  v62 = *(v0 + 424);

  v63 = specialized __RawDictionaryStorage.find<A>(_:)(v62);
  if ((v64 & 1) == 0)
  {

LABEL_70:
    outlined destroy of DependenciesIdentifier(*(v0 + 424), type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.pairingService);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v102 = v84;
      *v83 = 136446210;

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v85 = Set.description.getter();
      v87 = v86;

      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v102);

      *(v83 + 4) = v88;
      _os_log_impl(&dword_24AF48000, v81, v82, "Can't find pairing dependencies for %{public}s, the result is uncertain.", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x24C237030](v84, -1, -1);
      MEMORY[0x24C237030](v83, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v89 = 4;
    swift_willThrow();
    outlined destroy of PairingConfiguration(v0 + 16);
LABEL_62:

    v75 = *(v0 + 8);

    return v75();
  }

  v65 = v63;
  v66 = *(v0 + 424);
  v68 = *(v0 + 344);
  v67 = *(v0 + 352);
  v69 = *(v0 + 336);

  outlined init with copy of DependenciesIdentifier(*(v61 + 56) + *(v69 + 72) * v65, v68, type metadata accessor for AccessoryDependencies);
  outlined destroy of DependenciesIdentifier(v66, type metadata accessor for DependenciesIdentifier);

  outlined init with take of AccessoryDependencies(v68, v67, type metadata accessor for AccessoryDependencies);
  Date.timeIntervalSinceNow.getter();
  *(v0 + 448) = static Duration.seconds(_:)();
  *(v0 + 456) = v70;
  *(v0 + 464) = *v67;
  v71 = v67[1];
  *(v0 + 472) = v71;
  *(v0 + 480) = swift_getObjectType();
  *(v0 + 57) = 4;
  *(v0 + 488) = *(v71 + 168);
  *(v0 + 496) = (v71 + 168) & 0xFFFFFFFFFFFFLL | 0x1CA6000000000000;
  v73 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 504) = v73;
  *(v0 + 512) = v72;

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v73, v72);
}

{
  v1 = *(v0 + 320);
  *(v0 + 520) = (*(v0 + 488))(v0 + 57, *(v0 + 480), *(v0 + 472));
  *(v0 + 528) = v2;
  *(v0 + 59) = v3;

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v1, 0);
}

{
  if (*(v0 + 59))
  {
    v1 = static Duration.seconds(_:)();
  }

  else
  {
    v2 = *(v0 + 528);
    v1 = *(v0 + 520);
  }

  *(v0 + 544) = v2;
  *(v0 + 536) = v1;
  *(v0 + 58) = 0;
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v3, v4);
}

{
  v1 = *(v0 + 320);
  *(v0 + 552) = (*(v0 + 488))(v0 + 58, *(v0 + 480), *(v0 + 472));
  *(v0 + 560) = v2;
  *(v0 + 60) = v3;

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v1, 0);
}

{
  v30 = v0;
  if (*(v0 + 60))
  {
    static Duration.seconds(_:)();
  }

  static Duration.+ infix(_:_:)();
  static Duration.+ infix(_:_:)();
  if (static Duration.< infix(_:_:)())
  {
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.pairingService);
    outlined init with copy of PairingConfiguration(v0 + 16, v0 + 112);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v29[0] = v5;
      *v4 = 136446466;
      PairingConfiguration.dependenciesIdentifier.getter();
      v6 = MEMORY[0x24C236860]();
      v8 = v7;

      outlined destroy of PairingConfiguration(v0 + 112);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v29);

      *(v4 + 4) = v9;
      *(v4 + 12) = 2082;
      v10 = Duration.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v29);

      *(v4 + 14) = v12;
      _os_log_impl(&dword_24AF48000, v2, v3, "Cleanup pairing for %{public}s, because it's stuck for %{public}s.", v4, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    else
    {

      outlined destroy of PairingConfiguration(v0 + 112);
    }

    v22 = swift_task_alloc();
    *(v0 + 568) = v22;
    *v22 = v0;
    v22[1] = PairingService._configuration(for:);
    v23 = *(v0 + 472);
    v24 = *(v0 + 480);

    return PairingCoordinator.forceStopPairing()(v24, v23);
  }

  else
  {
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pairingService);
    outlined init with copy of PairingConfiguration(v0 + 16, v0 + 64);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29[0] = v17;
      *v16 = 136446210;
      PairingConfiguration.dependenciesIdentifier.getter();
      v18 = MEMORY[0x24C236860]();
      v20 = v19;

      outlined destroy of PairingConfiguration(v0 + 64);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v29);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_24AF48000, v14, v15, "Pairing for %{public}s already started!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x24C237030](v17, -1, -1);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    else
    {

      outlined destroy of PairingConfiguration(v0 + 64);
    }

    v26 = *(v0 + 352);
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    outlined destroy of PairingConfiguration(v0 + 16);
    outlined destroy of DependenciesIdentifier(v26, type metadata accessor for AccessoryDependencies);

    v28 = *(v0 + 8);

    return v28();
  }
}

{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = PairingService._configuration(for:);
  }

  else
  {
    v4 = PairingService._configuration(for:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  PairingConfiguration.identifier.getter(*(v0 + 416));
  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  v1[1] = PairingService._configuration(for:);
  v2 = *(v0 + 416);

  return PairingService._removeCoordinator(for:)(v2);
}

{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 320);

  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for DependenciesIdentifier);

  return MEMORY[0x2822009F8](PairingService._configuration(for:), v2, 0);
}

{
  v1 = *(v0 + 304);
  outlined destroy of DependenciesIdentifier(*(v0 + 352), type metadata accessor for AccessoryDependencies);
  v2 = *(v0 + 41);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v3;
  *(v1 + 25) = v2;

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *(v0 + 352);
  outlined destroy of PairingConfiguration(v0 + 16);
  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for AccessoryDependencies);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PairingService._coordinator(for:context:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  v3[14] = swift_task_alloc();
  type metadata accessor for DependenciesIdentifier(0);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for AccessoryDependencies(0);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService._coordinator(for:context:), v2, 0);
}

{
  v4 = *v3;
  v4[23] = a1;
  v4[24] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[13];

    return MEMORY[0x2822009F8](PairingService._coordinator(for:context:), v7, 0);
  }
}

uint64_t PairingService._coordinator(for:context:)()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[13] + 136);
    ObjectType = swift_getObjectType();
    v9 = (*(v1 + 16) + **(v1 + 16));
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = PairingService._coordinator(for:context:);
    v5 = v0[11];
    v4 = v0[12];

    return v9(v5, v4, ObjectType, v1);
  }

  else
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

{
  v7 = v0[24];
  ObjectType = swift_getObjectType();
  (*(v7 + 160))();
  v6 = (*(v7 + 136) + **(v7 + 136));
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = PairingService._coordinator(for:context:);
  v3 = v0[24];
  v4 = v0[21];

  return v6(v4, ObjectType, v3);
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = PairingService._coordinator(for:context:);
  }

  else
  {
    v4 = PairingService._coordinator(for:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v32 = *(v0 + 184);
  (*(*(v0 + 160) + 16))(&v1[*(v2 + 20)], *(v0 + 168), *(v0 + 152));
  *v1 = v32;
  swift_unknownObjectRetain();
  Date.init()();
  PairingConfiguration.identifier.getter(v4);
  outlined init with copy of DependenciesIdentifier(v1, v5, type metadata accessor for AccessoryDependencies);
  (*(v3 + 56))(v5, 0, 1, v2);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v4);
  swift_endAccess();
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 88);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pairingService);
  outlined init with copy of PairingConfiguration(v7, v0 + 16);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v29 = v6;
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 136446466;
    v33 = v12;
    v18 = PairingConfiguration.dependenciesIdentifier.getter();
    v19 = type metadata accessor for UUID();
    v30 = v15;
    v31 = v14;
    v20 = MEMORY[0x24C236860](v18, v19);
    v22 = v21;

    outlined destroy of PairingConfiguration(v0 + 16);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2050;
    v24 = *(*(v29 + 120) + 16);

    *(v16 + 14) = v24;

    _os_log_impl(&dword_24AF48000, v9, v10, "New coordinator added for %{public}s, coordinators count = %{public}ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x24C237030](v17, -1, -1);
    MEMORY[0x24C237030](v16, -1, -1);

    outlined destroy of DependenciesIdentifier(v30, type metadata accessor for AccessoryDependencies);
    (*(v13 + 8))(v33, v31);
  }

  else
  {

    outlined destroy of PairingConfiguration(v0 + 16);
    outlined destroy of DependenciesIdentifier(v15, type metadata accessor for AccessoryDependencies);
    (*(v13 + 8))(v12, v14);
  }

  v25 = *(v0 + 8);
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);

  return v25(v26, v27);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[22] = swift_task_alloc();
  type metadata accessor for DependenciesIdentifier(0);
  v2[23] = swift_task_alloc();
  v3 = *(type metadata accessor for AccessoryDependencies(0) - 8);
  v2[24] = v3;
  v2[25] = *(v3 + 64);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

uint64_t closure #2 in PairingService.pairAccessories(_:context:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (Strong)
  {
    v2 = Strong;
    PairingConfiguration.identifier.getter(*(v0 + 184));

    return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 232);
  swift_beginAccess();
  *(v0 + 240) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

{
  v36 = v0;
  if (*(*(v0 + 240) + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 184)), (v2 & 1) != 0))
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 208);
    v5 = *(v0 + 216);
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);
    v33 = *(v0 + 168);
    v34 = *(v0 + 200);
    outlined init with copy of DependenciesIdentifier(*(*(v0 + 240) + 56) + *(v6 + 72) * v1, v5, type metadata accessor for AccessoryDependencies);
    outlined destroy of DependenciesIdentifier(v8, type metadata accessor for DependenciesIdentifier);

    outlined init with take of AccessoryDependencies(v5, v3, type metadata accessor for AccessoryDependencies);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of DependenciesIdentifier(v3, v4, type metadata accessor for AccessoryDependencies);
    outlined init with copy of PairingConfiguration(v33, v0 + 64);
    v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    outlined init with take of AccessoryDependencies(v4, v12 + v11, type metadata accessor for AccessoryDependencies);
    v13 = (v12 + ((v34 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    v14 = *(v0 + 80);
    *v13 = *(v0 + 64);
    v13[1] = v14;
    *(v13 + 25) = *(v0 + 89);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #2 in PairingService.pairAccessories(_:context:), v12);

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sScPSgMd, &_sScPSgMR);
    v15 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = closure #2 in PairingService.pairAccessories(_:context:);

    return PairingCoordinator.triggerPairingFlow()(ObjectType, v15);
  }

  else
  {
    v19 = *(v0 + 184);

    outlined destroy of DependenciesIdentifier(v19, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 168);
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pairingService);
    outlined init with copy of PairingConfiguration(v20, v0 + 16);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136446210;
      v26 = PairingConfiguration.dependenciesIdentifier.getter();
      v27 = type metadata accessor for UUID();
      v28 = MEMORY[0x24C236860](v26, v27);
      v30 = v29;

      outlined destroy of PairingConfiguration(v0 + 16);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v35);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_24AF48000, v22, v23, "No dependencies for %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x24C237030](v25, -1, -1);
      MEMORY[0x24C237030](v24, -1, -1);
    }

    else
    {

      outlined destroy of PairingConfiguration(v0 + 16);
    }

    v32 = *(v0 + 8);

    return v32();
  }
}

{

  return MEMORY[0x2822009F8](closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

{
  v1 = *(v0 + 224);

  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for AccessoryDependencies);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #2 in PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for DependenciesIdentifier(0);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

uint64_t closure #1 in closure #2 in PairingService.pairAccessories(_:context:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    PairingConfiguration.identifier.getter(*(v0 + 64));
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #2 in PairingService.pairAccessories(_:context:);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);

    return PairingService.monitor(streamFrom:for:)(v4, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *(*v1 + 64);
  *(*v1 + 88) = v0;

  outlined destroy of DependenciesIdentifier(v2, type metadata accessor for DependenciesIdentifier);
  if (v0)
  {
    v3 = closure #1 in closure #2 in PairingService.pairAccessories(_:context:);
  }

  else
  {
    v3 = closure #1 in closure #2 in PairingService.pairAccessories(_:context:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  if (one-time initialization token for pairingService != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pairingService);
  MEMORY[0x24C236EC0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v3, v4, "Pairing monitoring failed: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);
  }

  v9 = v0[9];
  v10 = v0[6];

  v0[12] = *v10;
  v0[13] = v10[1];

  return MEMORY[0x2822009F8](closure #1 in closure #2 in PairingService.pairAccessories(_:context:), v9, 0);
}

{
  PairingService.removeCoordinator(_:)(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x2822009F8](closure #1 in closure #2 in PairingService.pairAccessories(_:context:), 0, 0);
}

{
  v1 = *(v0 + 88);

  MEMORY[0x24C236EB0](v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PairingService.monitor(streamFrom:for:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(type metadata accessor for DependenciesIdentifier(0) - 8);
  v3[7] = v4;
  v3[8] = *(v4 + 64);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F16CoordinatorStateOt_GMd, &_sScS8IteratorVy10FindMyBase11TransactionC_0bC7Pairing0F16CoordinatorStateOt_GMR);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.monitor(streamFrom:for:), v2, 0);
}

uint64_t PairingService.monitor(streamFrom:for:)()
{
  v1 = v0[6];
  type metadata accessor for WorkItemQueue();
  v0[13] = *(v1 + 112);
  if (static WorkItemQueue.called(on:)())
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[5];
    type metadata accessor for TimeTracker();
    v0[14] = TimeTracker.__allocating_init()();
    specialized PairingService.logNoPairingDependenciesError(for:)(v5, MEMORY[0x277D85B58], "PairingService: start monitoring pairing for accessory %{private,mask.hash}s.", "PairingService: start monitoring pairing multi-pairing identifier set of %ld accessories.", "PairingService: start monitoring pairing for %s.", v11);
    type metadata accessor for AccessoryDependencies(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
    AsyncStream.makeAsyncIterator()();
    v7 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PairingService and conformance PairingService, v6, type metadata accessor for PairingService, &protocol conformance descriptor for PairingService);
    v0[15] = v7;
    v8 = v0[6];
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = PairingService.monitor(streamFrom:for:);
    v10 = v0[10];

    return MEMORY[0x2822003E8](v0 + 2, v8, v7, v10);
  }
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](PairingService.monitor(streamFrom:for:), v1, 0);
}

{
  v1 = v0[14];
  v2 = v0[5];
  if (v0[2])
  {
    v3 = v0[3];
    v4 = v0[9];
    v5 = v0[7];

    v6 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of DependenciesIdentifier(v2, v4, type metadata accessor for DependenciesIdentifier);
    v7 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = v1;
    v8[4] = v3;
    outlined init with take of AccessoryDependencies(v4, v8 + v7, type metadata accessor for DependenciesIdentifier);

    outlined copy of PairingCoordinatorState(v3);
    dispatch thunk of WorkItemQueue.enqueue(_:)();
    outlined consume of PairingCoordinatorState(v3);

    v9 = v0[15];
    v10 = v0[6];
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = PairingService.monitor(streamFrom:for:);
    v12 = v0[10];

    return MEMORY[0x2822003E8](v0 + 2, v10, v9, v12);
  }

  else
  {
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    specialized PairingService.logNoPairingDependenciesError(for:)(v2, MEMORY[0x277D85B58], "PairingService: finished monitoring pairing for %{private,mask.hash}s.", "PairingService: finished monitoring pairing for multi-pairing identifier set of %ld accessories.", "PairingService: finished monitoring pairing for %s.", v16);
    PairingService.removeCoordinator(_:)(*v13, v13[1]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t PairingService.removeCoordinator(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    v3 = swift_allocError();
    *v4 = 2;
    swift_willThrow();
    MEMORY[0x24C236EC0](v3);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pairingService);
    MEMORY[0x24C236EC0](v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      MEMORY[0x24C236EC0](v3);
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_24AF48000, v6, v7, "Failure on removing coordinator: %{public}@", v8, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v9, -1, -1);
      MEMORY[0x24C237030](v8, -1, -1);
      MEMORY[0x24C236EB0](v3);
    }

    else
    {

      MEMORY[0x24C236EB0](v3);
    }

    JUMPOUT(0x24C236EB0);
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

void *PairingService.deinit()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PairingService.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for PairingServiceType.pairAccessories(_:context:) in conformance PairingService(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingService.pairAccessories(_:context:)(a1, a2, a3);
}

uint64_t PairingService._removeCoordinator(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService._removeCoordinator(for:), v1, 0);
}

uint64_t PairingService._removeCoordinator(for:)()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = v0[9];
    swift_beginAccess();
    v2 = *(v1 + 120);
    if (*(v2 + 16))
    {
      v3 = v0[8];

      v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
      if (v5)
      {
        v6 = v4;
        v7 = v0[10];
        v8 = v0[11];
        v9 = v0[8];
        v10 = *(v2 + 56);
        v11 = type metadata accessor for AccessoryDependencies(0);
        v12 = *(v11 - 8);
        outlined init with copy of DependenciesIdentifier(v10 + *(v12 + 72) * v6, v8, type metadata accessor for AccessoryDependencies);

        (*(v12 + 56))(v8, 0, 1, v11);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
        swift_beginAccess();
        specialized Dictionary.removeValue(forKey:)(v9, v7);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
        swift_endAccess();
        PairingService.logSuccessfulDependenciesDeletion(for:)(v9);
        goto LABEL_13;
      }
    }

    v21 = v0[11];
    v22 = v0[8];
    v23 = type metadata accessor for AccessoryDependencies(0);
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v21, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
    specialized PairingService.logNoPairingDependenciesError(for:)(v22, MEMORY[0x277D85B48], "No pairing dependencies to delete for %{private,mask.hash}s", "No pairing dependencies to delete for multi-pairing identifier set of %ld accessories.", "No pairing dependencies to delete for %s.", v26);
  }

  else
  {
    lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error();
    v13 = swift_allocError();
    *v14 = 2;
    swift_willThrow();
    MEMORY[0x24C236EC0](v13);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pairingService);
    MEMORY[0x24C236EC0](v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v13);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      MEMORY[0x24C236EC0](v13);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_24AF48000, v16, v17, "Dependencies deletion failed: %{public}@", v18, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v19, -1, -1);
      MEMORY[0x24C237030](v18, -1, -1);
      MEMORY[0x24C236EB0](v13);
    }

    else
    {

      MEMORY[0x24C236EB0](v13);
    }

    MEMORY[0x24C236EB0](v13);
  }

LABEL_13:

  v24 = v0[1];

  return v24();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for AccessoryDependencies(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(a1, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
    specialized Dictionary.removeValue(forKey:)(a2, v7);
    outlined destroy of DependenciesIdentifier(a2, type metadata accessor for DependenciesIdentifier);
    return outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  }

  else
  {
    outlined init with take of AccessoryDependencies(a1, v10, type metadata accessor for AccessoryDependencies);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    result = outlined destroy of DependenciesIdentifier(a2, type metadata accessor for DependenciesIdentifier);
    *v2 = v15;
  }

  return result;
}

uint64_t closure #1 in PairingService.monitor(streamFrom:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *(type metadata accessor for AccessoryDependencies(0) - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

uint64_t closure #1 in PairingService.monitor(streamFrom:for:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    type metadata accessor for TimeTracker();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type TimeTracker and conformance TimeTracker, 255, MEMORY[0x277D088F0], MEMORY[0x277D088F8]);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[20] = v3;
    v0[21] = v2;

    return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

{
  v0[8] = dispatch thunk of TimeTracker.lastCheckpointName.getter();
  v0[9] = v1;
  v0[22] = v1;

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v5 = v0[14];
  outlined copy of PairingCoordinatorState(v5);
  v0[23] = PairingCoordinatorState.description.getter();
  v0[24] = v1;
  outlined consume of PairingCoordinatorState(v5);
  v2 = v0[20];
  v3 = v0[21];

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v2, v3);
}

{
  v1 = v0[22];
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  if (v1)
  {
    v0[25] = v0[8];
    v2 = v0[20];
    v3 = v0[21];
    v4 = closure #1 in PairingService.monitor(streamFrom:for:);
  }

  else
  {
    v2 = v0[19];
    v0[10] = v0[14];
    v4 = closure #1 in PairingService.monitor(streamFrom:for:);
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v2, v3);
}

{
  v1 = v0[19];
  v2 = v0[14];
  v0[26] = dispatch thunk of TimeTracker.duration(since:)();
  v0[27] = v3;
  v0[11] = v2;

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v1, 0);
}

{
  specialized PairingService.logPairingStep(for:previousCheckpoint:pairingState:duration:)(v0[15], v0[25], v0[22], v0 + 11, v0[26], v0[27]);

  v1 = v0[19];
  v0[10] = v0[14];

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v1, 0);
}

{
  specialized PairingService.logCoordinatorState(for:pairingState:)(*(v0 + 120), (v0 + 80));

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v1 = v0[14];
  if (v1 == 13)
  {
    v3 = swift_task_alloc();
    v0[34] = v3;
    *v3 = v0;
    v3[1] = closure #1 in PairingService.monitor(streamFrom:for:);
    v4 = v0[15];
    v5 = v0[13];

    return PairingService.logPairingStatistics(for:timeTracker:)(v4, v5);
  }

  else if (v1 == 4)
  {
    v2 = v0[19];

    return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), v2, 0);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = *(v0 + 152);
  swift_beginAccess();
  *(v0 + 224) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  if (*(v0[28] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[15]), v2 = v0[19], (v3 & 1) != 0))
  {
    v5 = v0[17];
    v4 = v0[18];
    outlined init with copy of DependenciesIdentifier(*(v0[28] + 56) + *(v0[16] + 72) * v1, v5, type metadata accessor for AccessoryDependencies);

    outlined init with take of AccessoryDependencies(v5, v4, type metadata accessor for AccessoryDependencies);
    v6 = *(v2 + 136);
    ObjectType = swift_getObjectType();
    v8 = *v4;
    v0[29] = *v4;
    v9 = v4[1];
    v0[30] = v9;
    v13 = (*(v6 + 24) + **(v6 + 24));
    v10 = swift_task_alloc();
    v0[31] = v10;
    *v10 = v0;
    v10[1] = closure #1 in PairingService.monitor(streamFrom:for:);

    return v13(v8, v9, ObjectType, v6);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = closure #1 in PairingService.monitor(streamFrom:for:);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    *(v2 + 264) = swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v3 = closure #1 in PairingService.monitor(streamFrom:for:);
    v4 = v6;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  PairingCoordinator.startAccessoryPairing()();

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{
  v1 = *(v0 + 144);

  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for AccessoryDependencies);

  v2 = *(v0 + 8);

  return v2();
}

{

  return MEMORY[0x2822009F8](closure #1 in PairingService.monitor(streamFrom:for:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 144);

  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for AccessoryDependencies);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PairingService.logPairingStatistics(for:timeTracker:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for DependenciesIdentifier(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for TimeTracker();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type TimeTracker and conformance TimeTracker, 255, MEMORY[0x277D088F0], MEMORY[0x277D088F8]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v6;
  v3[18] = v5;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v6, v5);
}

uint64_t PairingService.logPairingStatistics(for:timeTracker:)()
{
  v0[19] = dispatch thunk of TimeTracker.duration(from:to:)();
  v0[20] = v1;
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v2, v3);
}

{
  v1 = v0[6];
  v0[21] = dispatch thunk of TimeTracker.topConsumers(with:)();
  v0[22] = v2;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v1, 0);
}

{
  v83 = v0;
  outlined init with copy of DependenciesIdentifier(v0[4], v0[11], type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v0[11], type metadata accessor for DependenciesIdentifier);
    v1 = 1;
  }

  else
  {
    (*(v0[14] + 32))(v0[12], v0[11], v0[13]);
    v1 = 0;
  }

  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  (*(v3 + 56))(v4, v1, 1, v2);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    goto LABEL_9;
  }

  v5 = v0[10];
  v6 = v0[4];
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[12], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(v6, v5, type metadata accessor for DependenciesIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = v0[10];
  if (EnumCaseMultiPayload != 1)
  {
    outlined destroy of DependenciesIdentifier(v8, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v34 = v0[9];
    v35 = v0[4];
    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pairingTime);
    outlined init with copy of DependenciesIdentifier(v35, v34, type metadata accessor for DependenciesIdentifier);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[22];
    if (!v39)
    {
      v57 = v0[9];

      outlined destroy of DependenciesIdentifier(v57, type metadata accessor for DependenciesIdentifier);
      goto LABEL_26;
    }

    v80 = v0[20];
    v76 = v0[21];
    v78 = v0[19];
    v41 = v0[8];
    v42 = v0[9];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v82 = v44;
    *v43 = 136315650;
    outlined init with copy of DependenciesIdentifier(v42, v41, type metadata accessor for DependenciesIdentifier);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    outlined destroy of DependenciesIdentifier(v42, type metadata accessor for DependenciesIdentifier);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v82);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v40, &v82);

    *(v43 + 14) = v49;
    *(v43 + 22) = 2082;
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v82);

    *(v43 + 24) = v50;
    _os_log_impl(&dword_24AF48000, v37, v38, "Coordinator pairing statistics:\n    Accessory: %s,\n    Top time-consuming operations: %{public}s),\n    Overall pairing time: %{public}s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v44, -1, -1);
    v51 = v43;
    goto LABEL_24;
  }

  v9 = *v8;
  v10 = *(*v8 + 16);
  if (!v10)
  {

    v12 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v11 = v0[14];
  v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v8 + 16), 0);
  v13 = specialized Sequence._copySequenceContents(initializing:)(&v82, &v12[(*(v11 + 80) + 32) & ~*(v11 + 80)], v10, v9);
  outlined consume of Set<UUID>.Iterator._Variant(v82);
  if (v13 == v10)
  {
LABEL_20:
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.pairingTime);

    v37 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    v60 = os_log_type_enabled(v37, v59);
    v61 = v0[22];
    if (!v60)
    {

      goto LABEL_26;
    }

    v62 = v0[20];
    v63 = v0[21];
    v81 = v0[19];
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v82 = v65;
    *v64 = 134218498;
    v66 = *(v12 + 2);

    *(v64 + 4) = v66;

    *(v64 + 12) = 2082;
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v61, &v82);

    *(v64 + 14) = v67;
    *(v64 + 22) = 2082;
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v62, &v82);

    *(v64 + 24) = v68;
    _os_log_impl(&dword_24AF48000, v37, v59, "Coordinator pairing statistics:\n    Accessory: multi-pairing identifier set of %ld accessories,\n    Top time-consuming operations: %{public}s),\n    Overall pairing time: %{public}s", v64, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v65, -1, -1);
    v51 = v64;
LABEL_24:
    MEMORY[0x24C237030](v51, -1, -1);

    goto LABEL_26;
  }

  __break(1u);
LABEL_9:
  (*(v0[14] + 32))(v0[16], v0[12], v0[13]);
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v14 = v0[15];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[14];
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pairingTime);
  (*(v17 + 16))(v14, v15, v16);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[22];
  if (v21)
  {
    v72 = v0[21];
    v74 = v0[19];
    v75 = v0[20];
    v79 = v0[16];
    v73 = v20;
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    v26 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v26 = 141558787;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = *(v24 + 8);
    v30(v23, v25);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v82);

    *(v26 + 14) = v31;
    *(v26 + 22) = 2082;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v22, &v82);

    *(v26 + 24) = v32;
    *(v26 + 32) = 2082;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v82);

    *(v26 + 34) = v33;
    _os_log_impl(&dword_24AF48000, v19, v73, "Coordinator pairing statistics:\n    Accessory: %{private,mask.hash}s,\n    Top time-consuming operations: %{public}s),\n    Overall pairing time: %{public}s", v26, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v77, -1, -1);
    MEMORY[0x24C237030](v26, -1, -1);

    v30(v79, v25);
  }

  else
  {
    v53 = v0[15];
    v52 = v0[16];
    v54 = v0[13];
    v55 = v0[14];

    v56 = *(v55 + 8);
    v56(v53, v54);
    v56(v52, v54);
  }

LABEL_26:
  v69 = v0[17];
  v70 = v0[18];

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v69, v70);
}

{
  v0[23] = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v0[24] = v1;
  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v2, v3);
}

{
  v1 = v0[6];
  v0[25] = dispatch thunk of TimeTracker.prevCheckpoint(for:)();
  v0[26] = v2;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v1, 0);
}

{
  v16 = v0;
  v1 = v0[26];
  if (v1)
  {
    v2 = v1 == 0x800000024AFAF6C0 && v0[25] == 0xD000000000000018;
    if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v3 = v0[17];
      v4 = v0[18];

      return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v3, v4);
    }
  }

  static Duration.zero.getter();
  static Duration.- infix(_:_:)();
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.pairingTime);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = Duration.formattedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AF48000, v6, v7, "Pairing performance: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C237030](v9, -1, -1);
    MEMORY[0x24C237030](v8, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[6];
  v0[2] = dispatch thunk of TimeTracker.rawDuration(from:to:)();
  v0[3] = v2;

  return MEMORY[0x2822009F8](PairingService.logPairingStatistics(for:timeTracker:), v1, 0);
}

{
  v12 = v0;
  static Duration.- infix(_:_:)();
  if (one-time initialization token for pairingTime != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pairingTime);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = Duration.formattedDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24AF48000, v2, v3, "Pairing performance: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x24C237030](v5, -1, -1);
    MEMORY[0x24C237030](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in PairingService.removeCoordinator(_:)(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMR);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierOSgMd, &_s13FindMyPairing22DependenciesIdentifierOSgMR);
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for DependenciesIdentifier(0);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), 0, 0);
}

uint64_t closure #1 in PairingService.removeCoordinator(_:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), 0, 0);
}

{
  v1 = v0[24];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v46 = v0[24];
  v47 = v0[13];
  v45 = v0[21];
  v5 = -1;
  v6 = -1 << *(v46 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v10 = 0;
  for (i = v3; ; v3 = i)
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          v26 = v0[18];
          v27 = v0[13];
          v28 = v0[14];

          (*(v28 + 56))(v26, 1, 1, v27);
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v11);
        ++v10;
        if (v7)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
      return result;
    }

LABEL_11:
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    v15 = __clz(__rbit64(v7)) | (v10 << 6);
    outlined init with copy of DependenciesIdentifier(*(v46 + 48) + *(v45 + 72) * v15, v12, type metadata accessor for DependenciesIdentifier);
    v16 = *(v46 + 56);
    v17 = v16 + *(*(type metadata accessor for AccessoryDependencies(0) - 8) + 72) * v15;
    outlined init with copy of DependenciesIdentifier(v17, v12 + *(v47 + 48), type metadata accessor for AccessoryDependencies);
    outlined init with take of PairingContext?(v12, v13, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
    outlined init with copy of PairingContext?(v13, v14, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
    v18 = *(v47 + 48);
    v19 = *(v14 + v18);
    swift_unknownObjectRetain();
    outlined destroy of DependenciesIdentifier(v14 + v18, type metadata accessor for AccessoryDependencies);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = v0[15];
    swift_unknownObjectRelease();
    if (!Strong)
    {
      outlined destroy of DependenciesIdentifier(v21, type metadata accessor for DependenciesIdentifier);
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
    outlined destroy of DependenciesIdentifier(v21, type metadata accessor for DependenciesIdentifier);
    if (v19 == Strong)
    {
      break;
    }

LABEL_5:
    v7 &= v7 - 1;
    result = outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[16], &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
  }

  v22 = v0[18];
  v23 = v0[16];
  v24 = v0[13];
  v25 = v0[14];

  outlined init with take of PairingContext?(v23, v22, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetMR);
  (*(v25 + 56))(v22, 0, 1, v24);
LABEL_15:
  v29 = v0[18];
  v30 = v0[13];
  v31 = v0[14];

  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v32 = v0[20];
    v33 = v0[21];
    v35 = v0[18];
    v34 = v0[19];

    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v35, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMd, &_s13FindMyPairing22DependenciesIdentifierO3key_AA09AccessoryD0V5valuetSgMR);
    (*(v33 + 56))(v34, 1, 1, v32);
LABEL_19:
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[19], &_s13FindMyPairing22DependenciesIdentifierOSgMd, &_s13FindMyPairing22DependenciesIdentifierOSgMR);

    v41 = v0[1];

    return v41();
  }

  v36 = v0[20];
  v37 = v0[21];
  v39 = v0[18];
  v38 = v0[19];
  v40 = *(v47 + 48);
  outlined init with take of AccessoryDependencies(v39, v38, type metadata accessor for DependenciesIdentifier);
  (*(v37 + 56))(v38, 0, 1, v36);
  outlined destroy of DependenciesIdentifier(v39 + v40, type metadata accessor for AccessoryDependencies);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {

    goto LABEL_19;
  }

  outlined init with take of AccessoryDependencies(v0[19], v0[22], type metadata accessor for DependenciesIdentifier);
  v42 = swift_task_alloc();
  v0[25] = v42;
  *v42 = v0;
  v42[1] = closure #1 in PairingService.removeCoordinator(_:);
  v43 = v0[22];

  return PairingService._removeCoordinator(for:)(v43);
}

{

  return MEMORY[0x2822009F8](closure #1 in PairingService.removeCoordinator(_:), 0, 0);
}

{
  v1 = *(v0 + 176);

  outlined destroy of DependenciesIdentifier(v1, type metadata accessor for DependenciesIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

void PairingService.logSuccessfulDependenciesDeletion(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DependenciesIdentifier(0);
  v3 = MEMORY[0x28223BE20](v2);
  v59 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v57[-v6];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v57[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v57[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v57[-v14];
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v57[-v21];
  outlined init with copy of DependenciesIdentifier(a1, v12, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v12, type metadata accessor for DependenciesIdentifier);
    v23 = 1;
  }

  else
  {
    (*(v17 + 32))(v15, v12, v16);
    v23 = 0;
  }

  (*(v17 + 56))(v15, v23, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v10, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v10;
    v25 = *(*v10 + 16);
    if (v25)
    {
      v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v10 + 16), 0);
      v26 = specialized Sequence._copySequenceContents(initializing:)(&v62, (v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80))), v25, v24);
      outlined consume of Set<UUID>.Iterator._Variant(v62);
      v22 = v60;
      if (v26 != v25)
      {
        __break(1u);
LABEL_9:
        (*(v17 + 32))(v22, v15, v16);
        if (one-time initialization token for pairingService != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.pairingService);
        (*(v17 + 16))(v20, v22, v16);
        v28 = v60;
        swift_retain_n();
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v61 = v59;
          *v31 = 141558531;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v30;
          v33 = v32;
          v35 = v34;
          v36 = *(v17 + 8);
          v36(v20, v16);
          v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v61);

          *(v31 + 14) = v37;
          *(v31 + 22) = 2050;
          swift_beginAccess();
          v38 = *(*(v28 + 15) + 16);

          *(v31 + 24) = v38;

          _os_log_impl(&dword_24AF48000, v29, v58, "Removed dependencies for accessory identifier %{private,mask.hash}s, coordinators count = %{public}ld", v31, 0x20u);
          v39 = v59;
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          MEMORY[0x24C237030](v39, -1, -1);
          MEMORY[0x24C237030](v31, -1, -1);

          v36(v22, v16);
        }

        else
        {

          v51 = *(v17 + 8);
          v51(v20, v16);
          v51(v22, v16);
        }

        return;
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
      v22 = v60;
    }

    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.pairingService);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      v56 = *(v16 + 16);

      *(v55 + 4) = v56;

      *(v55 + 12) = 2050;
      swift_beginAccess();
      *(v55 + 14) = *(*(v22 + 15) + 16);

      _os_log_impl(&dword_24AF48000, v53, v54, "Removed dependencies for multi-pairing identifier set of %ld accessories, coordinators count = %{public}ld", v55, 0x16u);
      MEMORY[0x24C237030](v55, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v10, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pairingService);
    outlined init with copy of DependenciesIdentifier(a1, v7, type metadata accessor for DependenciesIdentifier);
    v41 = v60;
    swift_retain_n();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 136315394;
      outlined init with copy of DependenciesIdentifier(v7, v59, type metadata accessor for DependenciesIdentifier);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      outlined destroy of DependenciesIdentifier(v7, type metadata accessor for DependenciesIdentifier);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v61);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2050;
      swift_beginAccess();
      v50 = *(*(v41 + 15) + 16);

      *(v44 + 14) = v50;

      _os_log_impl(&dword_24AF48000, v42, v43, "Removed dependencies for %s, coordinators count = %{public}ld", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x24C237030](v45, -1, -1);
      MEMORY[0x24C237030](v44, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v7, type metadata accessor for DependenciesIdentifier);
    }
  }
}

uint64_t PairingService.pairingAccessories.getter()
{
  v1[5] = v0;
  v2 = type metadata accessor for UUID();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for DependenciesIdentifier(0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.pairingAccessories.getter, v0, 0);
}

void *PairingService.pairingAccessories.getter()
{
  v47 = v0;
  v42 = v0[10];
  v1 = v0[7];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 120);
  v4 = *(v3 + 64);
  v40 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  v43 = *(v2 + 120);
  v44 = v1;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v45 = v0;
  while (v7)
  {
LABEL_10:
    v14 = v0[11];
    v13 = v0[12];
    outlined init with copy of DependenciesIdentifier(*(v43 + 48) + *(v42 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), v13, type metadata accessor for DependenciesIdentifier);
    v0 = v45;
    outlined init with copy of DependenciesIdentifier(v13, v14, type metadata accessor for DependenciesIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = v45[11];
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v16;
      v18 = *(*v16 + 16);
      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
        v19 = *(v44 + 72);
        v20 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v21 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v21);
        if (!v19)
        {
          goto LABEL_45;
        }

        if ((result - v20) == 0x8000000000000000 && v19 == -1)
        {
          goto LABEL_47;
        }

        v21[2] = v18;
        v21[3] = 2 * ((result - v20) / v19);
        v23 = specialized Sequence._copySequenceContents(initializing:)(&v46, v21 + v20, v18, v17);
        result = outlined consume of Set<UUID>.Iterator._Variant(v46);
        if (v23 != v18)
        {
          goto LABEL_46;
        }

        v0 = v45;
      }

      else
      {

        v21 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v24 = v45[8];
      v25 = v45[6];
      v41 = v11;
      v26 = *(v44 + 32);
      v26(v24, v16, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
      v27 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_24AFB0430;
      v0 = v45;
      v26(v21 + v27, v24, v25);
      v11 = v41;
    }

    result = outlined destroy of DependenciesIdentifier(v0[12], type metadata accessor for DependenciesIdentifier);
    v28 = v21[2];
    v29 = v11[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
LABEL_41:
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
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v30 > v11[3] >> 1)
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v31, 1, v11, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
      v11 = result;
    }

    v7 &= v7 - 1;
    if (v21[2])
    {
      if ((v11[3] >> 1) - v11[2] < v28)
      {
        goto LABEL_43;
      }

      swift_arrayInitWithCopy();

      if (v28)
      {
        v32 = v11[2];
        v33 = __OFADD__(v32, v28);
        v34 = v32 + v28;
        if (v33)
        {
          goto LABEL_44;
        }

        v11[2] = v34;
      }
    }

    else
    {

      if (v28)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v40 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v11);

  v36 = *(v35 + 16);
  if (!v36)
  {
    goto LABEL_36;
  }

  v37 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(v35 + 16), 0);
  v38 = specialized Sequence._copySequenceContents(initializing:)(&v46, &v37[(*(v44 + 80) + 32) & ~*(v44 + 80)], v36, v35);
  outlined consume of Set<UUID>.Iterator._Variant(v46);
  if (v38 != v36)
  {
    __break(1u);
LABEL_36:

    v37 = MEMORY[0x277D84F90];
  }

  v39 = v0[1];

  return v39(v37);
}

uint64_t PairingService.dependencies(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](PairingService.dependencies(for:), v2, 0);
}

uint64_t PairingService.dependencies(for:)()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v12 = (*MEMORY[0x277D08960] + MEMORY[0x277D08960]);
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing21AccessoryDependenciesVSgMd, &_s13FindMyPairing21AccessoryDependenciesVSgMR);
  *v8 = v0;
  v8[1] = PairingService.dependencies(for:);
  v10 = v0[2];

  return v12(v10, &async function pointer to partial apply for closure #1 in PairingService.dependencies(for:), v7, v9);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](PairingService.dependencies(for:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PairingService.dependencies(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = type metadata accessor for DependenciesIdentifier(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in PairingService.dependencies(for:), 0, 0);
}

uint64_t closure #1 in PairingService.dependencies(for:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[12];
    v4 = v0[10];
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 16))(v3, v4, v5);
    swift_storeEnumTagMultiPayload();

    return MEMORY[0x2822009F8](closure #1 in PairingService.dependencies(for:), v2, 0);
  }

  else
  {
    v6 = type metadata accessor for AccessoryDependencies(0);
    (*(*(v6 - 8) + 56))(v0[8], 1, 1, v6);

    v7 = v0[1];

    return v7();
  }
}

{
  v1 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 112) = *(v1 + 120);

  return MEMORY[0x2822009F8](closure #1 in PairingService.dependencies(for:), 0, 0);
}

{
  v1 = v0[12];
  if (*(v0[14] + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0[12]), v1 = v0[12], (v3 & 1) != 0))
  {
    v4 = v2;
    v5 = v0[8];
    v6 = *(v0[14] + 56);
    v7 = type metadata accessor for AccessoryDependencies(0);
    v8 = *(v7 - 8);
    outlined init with copy of DependenciesIdentifier(v6 + *(v8 + 72) * v4, v5, type metadata accessor for AccessoryDependencies);
    outlined destroy of DependenciesIdentifier(v1, type metadata accessor for DependenciesIdentifier);

    v9 = 0;
  }

  else
  {

    outlined destroy of DependenciesIdentifier(v1, type metadata accessor for DependenciesIdentifier);
    v7 = type metadata accessor for AccessoryDependencies(0);
    v8 = *(v7 - 8);
    v9 = 1;
  }

  (*(v8 + 56))(v0[8], v9, 1, v7);

  v10 = v0[1];

  return v10();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing17StateManagerErrorOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing17StateManagerErrorOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13FindMyPairing16AccessoryDetailsVGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing16AccessoryDetailsVGMR, type metadata accessor for AccessoryDetails);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F13ExecutorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F13ExecutorStateOGMR, type metadata accessor for PairingExecutorState);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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
    *v2 = v7;
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v10 = *(type metadata accessor for UUID() - 8);
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
  v15 = *(type metadata accessor for UUID() - 8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing9Accessory_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing9Accessory_pMd, &_s13FindMyPairing9Accessory_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F16CoordinatorStateOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of DependenciesIdentifier(a1, v8, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x24C236B70](1);
    specialized Set.hash(into:)(v13, v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x24C236B70](0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v10 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for UUID();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
  MEMORY[0x28223BE20](v40);
  v8 = &v31 - v7;
  v9 = type metadata accessor for DependenciesIdentifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v35 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  v39 = v2 + 64;
  if ((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = *(v15 + 72);
    v37 = ~v18;
    v38 = v20;
    v31 = (v5 + 32);
    v21 = (v5 + 8);
    v33 = a1;
    v34 = v2;
    do
    {
      outlined init with copy of DependenciesIdentifier(*(v2 + 48) + v38 * v19, v17, type metadata accessor for DependenciesIdentifier);
      v22 = *(v40 + 48);
      outlined init with copy of DependenciesIdentifier(v17, v8, type metadata accessor for DependenciesIdentifier);
      outlined init with copy of DependenciesIdentifier(a1, &v8[v22], type metadata accessor for DependenciesIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v35;
        outlined init with copy of DependenciesIdentifier(v8, v35, type metadata accessor for DependenciesIdentifier);
        v24 = *v23;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(v24, *&v8[v22]);

          outlined destroy of DependenciesIdentifier(v17, type metadata accessor for DependenciesIdentifier);
          if (v25)
          {
            goto LABEL_15;
          }

LABEL_12:
          outlined destroy of DependenciesIdentifier(v8, type metadata accessor for DependenciesIdentifier);
          a1 = v33;
          v2 = v34;
          goto LABEL_5;
        }

        outlined destroy of DependenciesIdentifier(v17, type metadata accessor for DependenciesIdentifier);
      }

      else
      {
        outlined init with copy of DependenciesIdentifier(v8, v14, type metadata accessor for DependenciesIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v26 = v32;
          v27 = v36;
          (*v31)(v32, &v8[v22], v36);
          v28 = static UUID.== infix(_:_:)();
          v29 = *v21;
          (*v21)(v26, v27);
          outlined destroy of DependenciesIdentifier(v17, type metadata accessor for DependenciesIdentifier);
          v29(v14, v27);
          if (v28)
          {
LABEL_15:
            outlined destroy of DependenciesIdentifier(v8, type metadata accessor for DependenciesIdentifier);
            return v19;
          }

          goto LABEL_12;
        }

        outlined destroy of DependenciesIdentifier(v17, type metadata accessor for DependenciesIdentifier);
        (*v21)(v14, v36);
      }

      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v8, &_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
LABEL_5:
      v19 = (v19 + 1) & v37;
    }

    while (((*(v39 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for DependenciesIdentifier(0);
    outlined destroy of DependenciesIdentifier(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for DependenciesIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for AccessoryDependencies(0);
    v20 = *(v13 - 8);
    outlined init with take of AccessoryDependencies(v12 + *(v20 + 72) * v7, a2, type metadata accessor for AccessoryDependencies);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for AccessoryDependencies(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v51 = type metadata accessor for UUID();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryDependencies(0);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DependenciesIdentifier(0);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v52 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v57 = &v46 - v12;
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMd, &_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMR);
  v56 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v48 = (v5 + 32);
    v47 = (v5 + 8);
    v22 = result + 64;
    v23 = v13;
    v49 = v13;
    v24 = v57;
    while (v20)
    {
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v29 = v26 | (v16 << 6);
      v30 = *(v23 + 48);
      v58 = *(v53 + 72);
      v31 = v30 + v58 * v29;
      if (v56)
      {
        outlined init with take of AccessoryDependencies(v31, v24, type metadata accessor for DependenciesIdentifier);
        v32 = *(v55 + 72);
        outlined init with take of AccessoryDependencies(*(v23 + 56) + v32 * v29, v59, type metadata accessor for AccessoryDependencies);
      }

      else
      {
        outlined init with copy of DependenciesIdentifier(v31, v24, type metadata accessor for DependenciesIdentifier);
        v32 = *(v55 + 72);
        outlined init with copy of DependenciesIdentifier(*(v23 + 56) + v32 * v29, v59, type metadata accessor for AccessoryDependencies);
      }

      Hasher.init(_seed:)();
      v33 = v52;
      outlined init with copy of DependenciesIdentifier(v24, v52, type metadata accessor for DependenciesIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = *v33;
        MEMORY[0x24C236B70](1);
        specialized Set.hash(into:)(v60, v34);
      }

      else
      {
        v35 = v50;
        v36 = v51;
        (*v48)(v50, v33, v51);
        MEMORY[0x24C236B70](0);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        dispatch thunk of Hashable.hash(into:)();
        v37 = v35;
        v23 = v49;
        (*v47)(v37, v36);
      }

      result = Hasher._finalize()();
      v38 = -1 << *(v15 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      v24 = v57;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      outlined init with take of AccessoryDependencies(v24, *(v15 + 48) + v58 * v25, type metadata accessor for DependenciesIdentifier);
      result = outlined init with take of AccessoryDependencies(v59, *(v15 + 56) + v32 * v25, type metadata accessor for AccessoryDependencies);
      ++*(v15 + 16);
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v20 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_38;
    }

    v45 = 1 << *(v23 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v17, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v45;
    }

    *(v49 + 16) = 0;
  }

LABEL_38:
  *v3 = v15;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DependenciesIdentifier(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v45 = (_HashTable.previousHole(before:)() + 1) & ~v15;
    v46 = v17;
    v18 = *(v7 + 72);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v19 = v18;
    v42 = a2;
    v47 = v18;
    do
    {
      v20 = v19 * v16;
      outlined init with copy of DependenciesIdentifier(*(a2 + 48) + v19 * v16, v13, type metadata accessor for DependenciesIdentifier);
      Hasher.init(_seed:)();
      outlined init with copy of DependenciesIdentifier(v13, v10, type metadata accessor for DependenciesIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *v10;
        MEMORY[0x24C236B70](1);
        specialized Set.hash(into:)(v48, v21);
      }

      else
      {
        v22 = v14;
        v23 = v6;
        v24 = v43;
        v25 = v44;
        (*v41)(v43, v10, v44);
        MEMORY[0x24C236B70](0);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        dispatch thunk of Hashable.hash(into:)();
        v26 = v24;
        v6 = v23;
        v14 = v22;
        a2 = v42;
        (*v40)(v26, v25);
      }

      v27 = Hasher._finalize()();
      result = outlined destroy of DependenciesIdentifier(v13, type metadata accessor for DependenciesIdentifier);
      v28 = v46;
      v29 = v27 & v46;
      if (a1 >= v45)
      {
        v19 = v47;
        if (v29 < v45)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v47;
        if (v29 >= v45)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v29)
      {
LABEL_13:
        if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v30 = *(a2 + 56);
        v31 = *(*(type metadata accessor for AccessoryDependencies(0) - 8) + 72);
        v32 = v31 * a1;
        result = v30 + v31 * a1;
        v33 = v31 * v16;
        v34 = v30 + v31 * v16 + v31;
        if (v32 < v33 || result >= v34)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v19 = v47;
        }

        else
        {
          a1 = v16;
          v19 = v47;
          if (v32 != v33)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v28;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DependenciesIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of DependenciesIdentifier(a2, v10, type metadata accessor for DependenciesIdentifier);
      return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for AccessoryDependencies(0) - 8) + 72) * v13;

  return outlined assign with take of AccessoryDependencies(a1, v21);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DependenciesIdentifier(0);
  outlined init with take of AccessoryDependencies(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DependenciesIdentifier);
  v10 = a4[7];
  v11 = type metadata accessor for AccessoryDependencies(0);
  result = outlined init with take of AccessoryDependencies(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for AccessoryDependencies);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDependencies(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DependenciesIdentifier(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMd, &_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMR);
  v8 = *v0;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        outlined init with copy of DependenciesIdentifier(*(v8 + 48) + v24, v7, type metadata accessor for DependenciesIdentifier);
        v25 = *(v29 + 72) * v23;
        outlined init with copy of DependenciesIdentifier(*(v8 + 56) + v25, v4, type metadata accessor for AccessoryDependencies);
        outlined init with take of AccessoryDependencies(v7, *(v10 + 48) + v24, type metadata accessor for DependenciesIdentifier);
        result = outlined init with take of AccessoryDependencies(v4, *(v10 + 56) + v25, type metadata accessor for AccessoryDependencies);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = Hasher._finalize()();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x24C236B70](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized static DependenciesIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for UUID();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DependenciesIdentifier(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = *(v14 + 56);
  outlined init with copy of DependenciesIdentifier(a1, &v24 - v15, type metadata accessor for DependenciesIdentifier);
  outlined init with copy of DependenciesIdentifier(a2, &v16[v17], type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of DependenciesIdentifier(v16, v10, type metadata accessor for DependenciesIdentifier);
    v18 = *v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = _sSh2eeoiySbShyxG_ABtFZ10Foundation4UUIDV_Tt1g5(v18, *&v16[v17]);

LABEL_9:
      outlined destroy of DependenciesIdentifier(v16, type metadata accessor for DependenciesIdentifier);
      return v19 & 1;
    }
  }

  else
  {
    outlined init with copy of DependenciesIdentifier(v16, v12, type metadata accessor for DependenciesIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = &v16[v17];
      v21 = v25;
      (*(v4 + 32))(v6, v20, v25);
      v19 = static UUID.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v6, v21);
      v22(v12, v21);
      goto LABEL_9;
    }

    (*(v4 + 8))(v12, v25);
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v16, &_s13FindMyPairing22DependenciesIdentifierO_ACtMd, &_s13FindMyPairing22DependenciesIdentifierO_ACtMR);
  v19 = 0;
  return v19 & 1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x24C236930](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t type metadata accessor for DependenciesIdentifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in PairingService.pairingDependencies.getter(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.pairingDependencies.getter(a1, v1);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13FindMyPairing22DependenciesIdentifierO_AC09AccessoryF0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMd, &_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMd, &_ss18_DictionaryStorageCy13FindMyPairing22DependenciesIdentifierOAC09AccessoryF0VGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of PairingContext?(v9, v5, &_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMd, &_s13FindMyPairing22DependenciesIdentifierO_AA09AccessoryD0VtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DependenciesIdentifier(0);
      outlined init with take of AccessoryDependencies(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for DependenciesIdentifier);
      v16 = v7[7];
      v17 = type metadata accessor for AccessoryDependencies(0);
      result = outlined init with take of AccessoryDependencies(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for AccessoryDependencies);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t partial apply for closure #1 in PairingService.pairAccessories(_:context:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C7ContextOSgMd, &_s13FindMyPairing0C7ContextOSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.pairAccessories(_:context:)(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #2 in PairingService.pairAccessories(_:context:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #2 in PairingService.pairAccessories(_:context:)(v2, v0 + 24);
}

unint64_t lazy protocol witness table accessor for type PairingService.Error and conformance PairingService.Error()
{
  result = lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error;
  if (!lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error;
  if (!lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingService.Error and conformance PairingService.Error);
  }

  return result;
}

uint64_t partial apply for closure #1 in PairingService.dependencies(for:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.dependencies(for:)(a1, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type BatteryLevel and conformance BatteryLevel()
{
  result = lazy protocol witness table cache variable for type BatteryLevel and conformance BatteryLevel;
  if (!lazy protocol witness table cache variable for type BatteryLevel and conformance BatteryLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BatteryLevel and conformance BatteryLevel);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PairingService(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type PairingService and conformance PairingService, a2, type metadata accessor for PairingService, &protocol conformance descriptor for PairingService);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BatteryLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PairingConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PairingConfiguration(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

void type metadata completion function for DependenciesIdentifier(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set<UUID>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Set<UUID>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<UUID>)
  {
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<UUID>);
    }
  }
}

void type metadata completion function for ObservationStreams(uint64_t a1)
{
  type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(319, &lazy cache variable for type metadata for AsyncStream<(Transaction, PairingCoordinatorState)>, &_s10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(319, &lazy cache variable for type metadata for AsyncStream<(Transaction, AnalyticsEvent)>, &_s10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing14AnalyticsEventOtMR);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

void type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for AsyncStream();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t dispatch thunk of PairingServiceType.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingService.pairingDependencies.getter()
{
  v4 = (*(*v0 + 112) + **(*v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of PairingService.pairingDependencies.getter;

  return v4();
}

uint64_t dispatch thunk of PairingService.pairingDependencies.getter(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PairingService.pairAccessories(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of PairingValidator.ack(_:);

  return v10(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for PairingService.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingService.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined init with copy of DependenciesIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t partial apply for closure #1 in closure #2 in PairingService.pairAccessories(_:context:)(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDependencies(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return closure #1 in closure #2 in PairingService.pairAccessories(_:context:)(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t outlined destroy of DependenciesIdentifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in PairingService.removeCoordinator(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.removeCoordinator(_:)(v2, v3);
}

uint64_t outlined init with take of PairingContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of AccessoryDependencies(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void specialized PairingService.logNoPairingDependenciesError(for:)(uint64_t a1, unsigned __int8 (*a2)(NSObject *), const char *a3, const char *a4, const char *a5, ...)
{
  v58 = a5;
  v59 = a3;
  v56 = a4;
  v60 = a2;
  v6 = type metadata accessor for DependenciesIdentifier(0);
  v7 = MEMORY[0x28223BE20](v6);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v56 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  outlined init with copy of DependenciesIdentifier(a1, v16, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v16, type metadata accessor for DependenciesIdentifier);
    v27 = 1;
  }

  else
  {
    (*(v21 + 32))(v19, v16, v20);
    v27 = 0;
  }

  (*(v21 + 56))(v19, v27, 1, v20);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v14, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v14;
    v29 = *(*v14 + 16);
    if (v29)
    {
      v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v14 + 16), 0);
      v30 = specialized Sequence._copySequenceContents(initializing:)(&v61, &v24[(*(v21 + 80) + 32) & ~*(v21 + 80)], v29, v28);
      outlined consume of Set<UUID>.Iterator._Variant(v61);
      if (v30 != v29)
      {
        __break(1u);
LABEL_9:
        (*(v21 + 32))(v26, v19, v20);
        if (one-time initialization token for pairingService != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.pairingService);
        (*(v21 + 16))(v24, v26, v20);
        v32 = Logger.logObject.getter();
        v33 = v60(v32);
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v61 = v60;
          *v34 = 141558275;
          *(v34 + 4) = 1752392040;
          *(v34 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v35 = dispatch thunk of CustomStringConvertible.description.getter();
          v37 = v36;
          v38 = *(v21 + 8);
          v38(v24, v20);
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v61);

          *(v34 + 14) = v39;
          _os_log_impl(&dword_24AF48000, v32, v33, v59, v34, 0x16u);
          v40 = v60;
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x24C237030](v40, -1, -1);
          MEMORY[0x24C237030](v34, -1, -1);

          v38(v26, v20);
        }

        else
        {

          v50 = *(v21 + 8);
          v50(v24, v20);
          v50(v26, v20);
        }

        return;
      }
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.pairingService);

    v52 = Logger.logObject.getter();
    v53 = (v60)();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      v55 = *(v24 + 2);

      *(v54 + 4) = v55;

      _os_log_impl(&dword_24AF48000, v52, v53, v56, v54, 0xCu);
      MEMORY[0x24C237030](v54, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v14, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.pairingService);
    outlined init with copy of DependenciesIdentifier(a1, v11, type metadata accessor for DependenciesIdentifier);
    v42 = Logger.logObject.getter();
    v43 = v60(v42);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = v45;
      *v44 = 136315138;
      outlined init with copy of DependenciesIdentifier(v11, v57, type metadata accessor for DependenciesIdentifier);
      v46 = String.init<A>(describing:)();
      v48 = v47;
      outlined destroy of DependenciesIdentifier(v11, type metadata accessor for DependenciesIdentifier);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v61);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_24AF48000, v42, v43, v58, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x24C237030](v45, -1, -1);
      MEMORY[0x24C237030](v44, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v11, type metadata accessor for DependenciesIdentifier);
    }
  }
}

uint64_t partial apply for closure #1 in PairingService.monitor(streamFrom:for:)()
{
  v2 = *(type metadata accessor for DependenciesIdentifier(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return closure #1 in PairingService.monitor(streamFrom:for:)(v4, v5, v6, v0 + v3);
}

unint64_t outlined copy of PairingCoordinatorState(unint64_t result)
{
  if (result >= 0x11)
  {
    JUMPOUT(0x24C236EC0);
  }

  return result;
}

unint64_t outlined consume of PairingCoordinatorState(unint64_t result)
{
  if (result >= 0x11)
  {
    JUMPOUT(0x24C236EB0);
  }

  return result;
}

void specialized PairingService.logPairingStep(for:previousCheckpoint:pairingState:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v89 = a3;
  v90 = a6;
  v87 = a2;
  v88 = a5;
  v8 = type metadata accessor for DependenciesIdentifier(0);
  v9 = MEMORY[0x28223BE20](v8);
  v85 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v82[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v82[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v82[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v82[-v19];
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v82[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v82[-v26];
  v28 = *a4;
  outlined init with copy of DependenciesIdentifier(a1, v17, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v17, type metadata accessor for DependenciesIdentifier);
    v29 = 1;
  }

  else
  {
    (*(v22 + 32))(v20, v17, v21);
    v29 = 0;
  }

  (*(v22 + 56))(v20, v29, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v15, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v15;
    v31 = *(*v15 + 16);
    if (v31)
    {
      v20 = v28;
      v32 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(v31, 0);
      v33 = specialized Sequence._copySequenceContents(initializing:)(&v92, &v32[(*(v22 + 80) + 32) & ~*(v22 + 80)], v31, v30);
      outlined consume of Set<UUID>.Iterator._Variant(v92);
      if (v33 != v31)
      {
        __break(1u);
LABEL_9:
        (*(v22 + 32))(v27, v20, v21);
        if (one-time initialization token for pairingTime != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.pairingTime);
        (*(v22 + 16))(v25, v27, v21);
        v35 = v89;

        outlined copy of PairingCoordinatorState(v28);
        v36 = v90;

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        outlined consume of PairingCoordinatorState(v28);

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v92 = v86;
          *v39 = 141559043;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v84 = v37;
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = v38;
          v42 = v41;
          v85 = v27;
          v43 = *(v22 + 8);
          v43(v25, v21);
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v92);

          *(v39 + 14) = v44;
          *(v39 + 22) = 2082;
          *(v39 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v35, &v92);
          *(v39 + 32) = 2082;
          v91 = v28;
          outlined copy of PairingCoordinatorState(v28);
          v45 = PairingCoordinatorState.description.getter();
          v47 = v46;
          outlined consume of PairingCoordinatorState(v91);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v92);

          *(v39 + 34) = v48;
          *(v39 + 42) = 2082;
          *(v39 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v36, &v92);
          v49 = v84;
          _os_log_impl(&dword_24AF48000, v84, v83, "Coordinator for %{private,mask.hash}s: duration for %{public}s->%{public}s: %{public}s.", v39, 0x34u);
          v50 = v86;
          swift_arrayDestroy();
          MEMORY[0x24C237030](v50, -1, -1);
          MEMORY[0x24C237030](v39, -1, -1);

          v43(v85, v21);
        }

        else
        {

          v68 = *(v22 + 8);
          v68(v25, v21);
          v68(v27, v21);
        }

        return;
      }
    }

    else
    {
      v20 = v28;

      v32 = MEMORY[0x277D84F90];
    }

    v69 = v89;
    v70 = v90;
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.pairingTime);

    v72 = v20;
    outlined copy of PairingCoordinatorState(v20);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    outlined consume of PairingCoordinatorState(v72);

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v92 = v76;
      *v75 = 134218754;
      v77 = *(v32 + 2);

      *(v75 + 4) = v77;

      *(v75 + 12) = 2082;
      *(v75 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v69, &v92);
      *(v75 + 22) = 2082;
      v91 = v72;
      outlined copy of PairingCoordinatorState(v72);
      v78 = PairingCoordinatorState.description.getter();
      v80 = v79;
      outlined consume of PairingCoordinatorState(v91);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v92);

      *(v75 + 24) = v81;
      *(v75 + 32) = 2082;
      *(v75 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v70, &v92);
      _os_log_impl(&dword_24AF48000, v73, v74, "Coordinator for multi-pairing identifier set of %ld accessories: duration for %{public}s->%{public}s: %{public}s.", v75, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v76, -1, -1);
      MEMORY[0x24C237030](v75, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v15, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingTime != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.pairingTime);
    v52 = v86;
    outlined init with copy of DependenciesIdentifier(a1, v86, type metadata accessor for DependenciesIdentifier);
    v53 = v89;

    outlined copy of PairingCoordinatorState(v28);
    v54 = v90;

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    outlined consume of PairingCoordinatorState(v28);

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v92 = v84;
      *v57 = 136315906;
      outlined init with copy of DependenciesIdentifier(v52, v85, type metadata accessor for DependenciesIdentifier);
      v58 = String.init<A>(describing:)();
      v59 = v52;
      v61 = v60;
      outlined destroy of DependenciesIdentifier(v59, type metadata accessor for DependenciesIdentifier);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v61, &v92);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2082;
      *(v57 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v53, &v92);
      *(v57 + 22) = 2082;
      v91 = v28;
      outlined copy of PairingCoordinatorState(v28);
      v63 = PairingCoordinatorState.description.getter();
      v65 = v64;
      outlined consume of PairingCoordinatorState(v91);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v92);

      *(v57 + 24) = v66;
      *(v57 + 32) = 2082;
      *(v57 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v54, &v92);
      _os_log_impl(&dword_24AF48000, v55, v56, "Coordinator for %s: duration for %{public}s->%{public}s: %{public}s.", v57, 0x2Au);
      v67 = v84;
      swift_arrayDestroy();
      MEMORY[0x24C237030](v67, -1, -1);
      MEMORY[0x24C237030](v57, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v52, type metadata accessor for DependenciesIdentifier);
    }
  }
}

void specialized PairingService.logCoordinatorState(for:pairingState:)(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for DependenciesIdentifier(0);
  v5 = MEMORY[0x28223BE20](v4);
  v67 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = (&v67 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  v24 = *a2;
  outlined init with copy of DependenciesIdentifier(a1, v13, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of DependenciesIdentifier(v13, type metadata accessor for DependenciesIdentifier);
    v25 = 1;
  }

  else
  {
    (*(v18 + 32))(v16, v13, v17);
    v25 = 0;
  }

  (*(v18 + 56))(v16, v25, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DependenciesIdentifier(a1, v11, type metadata accessor for DependenciesIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v11;
    v27 = *(*v11 + 16);
    if (v27)
    {
      v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(*v11 + 16), 0);
      v21 = specialized Sequence._copySequenceContents(initializing:)(&v70, (v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80))), v27, v26);
      outlined consume of Set<UUID>.Iterator._Variant(v70);
      if (v21 != v27)
      {
        __break(1u);
LABEL_9:
        (*(v18 + 32))(v23, v16, v17);
        if (one-time initialization token for pairingService != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.pairingService);
        (*(v18 + 16))(v21, v23, v17);
        outlined copy of PairingCoordinatorState(v24);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        outlined consume of PairingCoordinatorState(v24);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v70 = v68;
          *v31 = 141558531;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          v67 = v23;
          v35 = *(v18 + 8);
          v35(v21, v17);
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v70);

          *(v31 + 14) = v36;
          *(v31 + 22) = 2082;
          v69 = v24;
          outlined copy of PairingCoordinatorState(v24);
          v37 = PairingCoordinatorState.description.getter();
          v39 = v38;
          outlined consume of PairingCoordinatorState(v69);
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v70);

          *(v31 + 24) = v40;
          _os_log_impl(&dword_24AF48000, v29, v30, "Coordinator for %{private,mask.hash}s, state = %{public}s.", v31, 0x20u);
          v41 = v68;
          swift_arrayDestroy();
          MEMORY[0x24C237030](v41, -1, -1);
          MEMORY[0x24C237030](v31, -1, -1);

          v35(v67, v17);
        }

        else
        {

          v56 = *(v18 + 8);
          v56(v21, v17);
          v56(v23, v17);
        }

        return;
      }
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.pairingService);
    outlined copy of PairingCoordinatorState(v24);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    outlined consume of PairingCoordinatorState(v24);
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      *v60 = 134218242;
      v62 = *(v17 + 16);

      *(v60 + 4) = v62;

      *(v60 + 12) = 2082;
      v69 = v24;
      outlined copy of PairingCoordinatorState(v24);
      v63 = PairingCoordinatorState.description.getter();
      v65 = v64;
      outlined consume of PairingCoordinatorState(v69);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v70);

      *(v60 + 14) = v66;
      _os_log_impl(&dword_24AF48000, v58, v59, "Coordinator for multi-pairing identifier set of %ld accessories, state = %{public}s.", v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x24C237030](v61, -1, -1);
      MEMORY[0x24C237030](v60, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined destroy of DependenciesIdentifier(v11, type metadata accessor for DependenciesIdentifier);
    if (one-time initialization token for pairingService != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.pairingService);
    v43 = v68;
    outlined init with copy of DependenciesIdentifier(a1, v68, type metadata accessor for DependenciesIdentifier);
    outlined copy of PairingCoordinatorState(v24);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    outlined consume of PairingCoordinatorState(v24);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v70 = v47;
      *v46 = 136315394;
      outlined init with copy of DependenciesIdentifier(v43, v67, type metadata accessor for DependenciesIdentifier);
      v48 = String.init<A>(describing:)();
      v50 = v49;
      outlined destroy of DependenciesIdentifier(v43, type metadata accessor for DependenciesIdentifier);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v70);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      v69 = v24;
      outlined copy of PairingCoordinatorState(v24);
      v52 = PairingCoordinatorState.description.getter();
      v54 = v53;
      outlined consume of PairingCoordinatorState(v69);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v70);

      *(v46 + 14) = v55;
      _os_log_impl(&dword_24AF48000, v44, v45, "Coordinator for %s, state = %{public}s.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C237030](v47, -1, -1);
      MEMORY[0x24C237030](v46, -1, -1);
    }

    else
    {

      outlined destroy of DependenciesIdentifier(v43, type metadata accessor for DependenciesIdentifier);
    }
  }
}

uint64_t outlined assign with take of AccessoryDependencies(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDependencies(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PairingContext?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
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

Swift::Int PairingPeripheralProviderError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](a1);
  return Hasher._finalize()();
}

uint64_t PairingPeripheralProvider.getPeripheral(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, a3, a4);
}

{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(AssociatedTypeWitness - 8);
  v5[17] = swift_task_alloc();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v9;
  v5[19] = v8;

  return MEMORY[0x2822009F8](PairingPeripheralProvider.getPeripheral(for:), v9, v8);
}

uint64_t PairingPeripheralProvider.getPeripheral(for:)()
{
  v1 = v0[16];
  outlined init with copy of PairingEligibilityInfo(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing19PeripheralTransport_pMd, &_s13FindMyPairing19PeripheralTransport_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = v0[12];
    v20 = v0[10];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    v19 = (*(v20 + 64) + **(v20 + 64));
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = PairingPeripheralProvider.getPeripheral(for:);
    v9 = v0[17];
    v10 = v0[10];
    v11 = v0[9];
    v12 = v0[7];

    return v19(v12, v9, v11, v10);
  }

  else
  {
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    v3(v14, 1, 1, v0[12]);
    (*(v15 + 8))(v14, v16);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = PairingPeripheralProvider.getPeripheral(for:);
  }

  else
  {
    v5 = PairingPeripheralProvider.getPeripheral(for:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[16] + 8))(v0[17], v0[12]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[16] + 8))(v0[17], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError()
{
  result = lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError;
  if (!lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError;
  if (!lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError);
  }

  return result;
}

uint64_t PairingPeripheralProvider.pair<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, a4, a3, a5);
}

{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for Optional();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_getAssociatedTypeWitness();
  v6[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[18] = AssociatedTypeWitness;
  v9 = type metadata accessor for Optional();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = *(AssociatedTypeWitness - 8);
  v6[23] = swift_task_alloc();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[24] = v11;
  v6[25] = v10;

  return MEMORY[0x2822009F8](PairingPeripheralProvider.pair<A>(_:), v11, v10);
}

uint64_t PairingPeripheralProvider.pair<A>(_:)()
{
  v1 = v0[22];
  outlined init with copy of PairingEligibilityInfo(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[21];
    v7 = v0[18];
    v20 = v0[11];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    v19 = (*(v20 + 80) + **(v20 + 80));
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = PairingPeripheralProvider.pair<A>(_:);
    v9 = v0[23];
    v10 = v0[17];
    v11 = v0[11];
    v12 = v0[9];

    return v19(v10, v9, v12, v11);
  }

  else
  {
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    v3(v14, 1, 1, v0[18]);
    (*(v15 + 8))(v14, v16);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = PairingPeripheralProvider.pair<A>(_:);
  }

  else
  {
    v5 = PairingPeripheralProvider.pair<A>(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[10];
  v2 = swift_dynamicCast();
  v3 = *(v1 - 8);
  v4 = *(v3 + 56);
  v6 = v0[22];
  v5 = v0[23];
  if (v2)
  {
    v7 = v3;
    v8 = v0[18];
    v9 = v0[15];
    v10 = v0[10];
    v11 = v0[7];
    v4(v9, 0, 1, v10);
    (*(v6 + 8))(v5, v8);
    (*(v7 + 32))(v11, v9, v10);
  }

  else
  {
    v13 = v0[18];
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    v4(v14, 1, 1, v0[10]);
    (*(v15 + 8))(v14, v16);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
    (*(v6 + 8))(v5, v13);
  }

  v12 = v0[1];

  return v12();
}

{
  (*(v0[22] + 8))(v0[23], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t PairingPeripheralProvider.unpair(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return PairingPeripheralProvider.unpair(_:)(a1, a2, a3);
}

{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[11] = AssociatedTypeWitness;
  v6 = type metadata accessor for Optional();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(AssociatedTypeWitness - 8);
  v4[16] = swift_task_alloc();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](PairingPeripheralProvider.unpair(_:), v8, v7);
}

uint64_t PairingPeripheralProvider.unpair(_:)()
{
  v1 = v0[15];
  outlined init with copy of PairingEligibilityInfo(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[11];
    v19 = v0[9];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    v18 = (*(v19 + 96) + **(v19 + 96));
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
    v9 = v0[16];
    v10 = v0[9];
    v11 = v0[8];

    return v18(v9, v11, v10);
  }

  else
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    v3(v13, 1, 1, v0[11]);
    (*(v14 + 8))(v13, v15);
    lazy protocol witness table accessor for type PairingPeripheralProviderError and conformance PairingPeripheralProviderError();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t dispatch thunk of PairingPeripheralProvider.getPeripheral(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingPeripheralProvider.pairAndReturnService(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingPeripheralProvider.unpair(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

Swift::Int AccessoryMetadataProviderError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

uint64_t AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[18] = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = *(AssociatedTypeWitness - 8);
  v6[23] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[24] = v9;
  v10 = type metadata accessor for Optional();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[30] = v12;
  v6[31] = v11;

  return MEMORY[0x2822009F8](AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:), v12, v11);
}

uint64_t AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:)()
{
  v1 = v0[28];
  outlined init with copy of PairingEligibilityInfo(v0[13], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[14];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    outlined init with copy of PairingEligibilityInfo(v9, (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing9Accessory_pMd, &_s13FindMyPairing9Accessory_pMR);
    v10 = swift_dynamicCast();
    v11 = *(v8 + 56);
    v12 = v0[21];
    if (v10)
    {
      v14 = v0[22];
      v13 = v0[23];
      v15 = v0[18];
      v16 = v0[16];
      v17 = v0[12];
      v11(v0[21], 0, 1, v15);
      (*(v14 + 32))(v13, v12, v15);
      v18 = *(v16 + 64);
      v17[3] = swift_getAssociatedTypeWitness();
      v17[4] = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      v37 = (v18 + *v18);
      v20 = swift_task_alloc();
      v0[32] = v20;
      *v20 = v0;
      v20[1] = AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:);
      v21 = v0[29];
      v22 = v0[23];
      v23 = v0[16];
      v24 = v0[15];

      return v37(boxed_opaque_existential_1, v21, v22, v24, v23);
    }

    v31 = v0[28];
    v30 = v0[29];
    v32 = v0[24];
    v33 = v0[19];
    v34 = v0[20];
    v11(v0[21], 1, 1, v0[18]);
    (*(v34 + 8))(v12, v33);
    lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v27 = v0[26];
    v26 = v0[27];
    v28 = v0[25];
    v3(v26, 1, 1, v0[24]);
    (*(v27 + 8))(v26, v28);
    lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
  }

  v36 = v0[1];

  return v36();
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:);
  }

  else
  {
    v5 = AccessoryMetadataProvider._readAccessoryMetadata(peripheral:accessory:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[12];
  (*(v0[22] + 8))(v0[23], v0[18]);
  (*(v2 + 8))(v1, v3);
  __swift_deallocate_boxed_opaque_existential_1(v4);

  v5 = v0[1];

  return v5();
}

unint64_t lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError()
{
  result = lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError;
  if (!lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError;
  if (!lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError);
  }

  return result;
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x24C237030);
  }

  return result;
}

uint64_t AccessoryMetadataProvider._retrieveProductInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(AssociatedTypeWitness - 8);
  v5[17] = swift_task_alloc();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v9;
  v5[19] = v8;

  return MEMORY[0x2822009F8](AccessoryMetadataProvider._retrieveProductInfo(for:), v9, v8);
}

uint64_t AccessoryMetadataProvider._retrieveProductInfo(for:)()
{
  v1 = v0[16];
  outlined init with copy of PairingEligibilityInfo(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing12MetadataType_pMd, &_s13FindMyPairing12MetadataType_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = v0[12];
    v20 = v0[10];
    v3(v6, 0, 1, v7);
    (*(v5 + 32))(v4, v6, v7);
    v19 = (*(v20 + 72) + **(v20 + 72));
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = PairingPeripheralProvider.getPeripheral(for:);
    v9 = v0[17];
    v10 = v0[10];
    v11 = v0[9];
    v12 = v0[7];

    return v19(v12, v9, v11, v10);
  }

  else
  {
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    v3(v14, 1, 1, v0[12]);
    (*(v15 + 8))(v14, v16);
    lazy protocol witness table accessor for type AccessoryMetadataProviderError and conformance AccessoryMetadataProviderError();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t dispatch thunk of AccessoryMetadataProvider.readAccessoryMetadata(peripheral:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessoryMetadataProvider.retrieveProductInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of PairingContext?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

uint64_t PairingCoordinator.triggerPairingFlow()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingCoordinator.triggerPairingFlow(), v5, v4);
}

uint64_t PairingCoordinator.triggerPairingFlow()()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v1 + 72))(v2, v1);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t PairingCoordinator.forceStopPairing()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](PairingCoordinator.forceStopPairing(), v5, v4);
}

uint64_t PairingCoordinator.forceStopPairing()()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = PairingCoordinator.forceStopPairing();

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = PairingCoordinator.forceStopPairing();
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = PairingCoordinator.forceStopPairing();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AccessoryDetails(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of UserSessionState(v12, v10, type metadata accessor for AccessoryDetails);
      v14 = a1(v10);
      if (v3)
      {
        return outlined destroy of UserSessionState(v10, type metadata accessor for AccessoryDetails);
      }

      if (v14)
      {
        break;
      }

      outlined destroy of UserSessionState(v10, type metadata accessor for AccessoryDetails);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    outlined init with take of UserSessionState(v10, v18, type metadata accessor for AccessoryDetails);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

FindMyPairing::PairingOperation_optional __swiftcall PairingOperation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PairingOperation.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t PairingOperation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x506C6C617265766FLL;
  v3 = 0x617461646174656DLL;
  v4 = 0x53676E6972696170;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x506C6C617265766FLL;
    }

    if (v2)
    {
      v4 = 0x800000024AFAF540;
    }

    else
    {
      v4 = 0xEE00676E69726961;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0x617461646174656DLL;
      v5 = 1684104530;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0xD000000000000010;
        v4 = 0x800000024AFAF570;
        goto LABEL_14;
      }

      v3 = 0x53676E6972696170;
      v5 = 1953653108;
    }

    v4 = v5 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0x506C6C617265766FLL;
    }

    if (a2)
    {
      v6 = 0x800000024AFAF540;
    }

    else
    {
      v6 = 0xEE00676E69726961;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v8 = 0x617461646174656DLL;
    v9 = 1684104530;
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0x800000024AFAF570;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v8 = 0x53676E6972696170;
    v9 = 1953653108;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v3 != v8)
  {
LABEL_32:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v4 != v6)
  {
    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PairingOperation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PairingOperation(uint64_t a1)
{
  String.hash(into:)();
}