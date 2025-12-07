void *one-time initialization function for shared()
{
  type metadata accessor for AudioHardwareSystem();
  swift_allocObject();
  result = AudioHardwareObject.init(id:)(1);
  static AudioHardwareSystem.shared = result;
  return result;
}

uint64_t AudioHardwareSystem.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t static AudioHardwareSystem.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

char *AudioHardwareSystem.devices.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v21 - v6;
  v8 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v2)
  {
    v9 = v8;
    v21[0] = 0;
    v22 = MEMORY[0x29EDCA190];
    v10 = *(v8 + 16);
    if (v10)
    {
      v21[1] = a2(0);
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = swift_allocObject();
        *(v13 + 24) = 0;
        *(v13 + 32) = MEMORY[0x29EDCA190];
        *(v13 + 40) = 0;
        *(v13 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v14 = swift_allocObject();
        v15 = (v14 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
        *v15 = 0;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v15 + v17, *(*(v18 - 8) + 64));
        v19 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v7, v15 + v17);
        *(v13 + 56) = v14;
        *(v13 + 16) = v12;
        MEMORY[0x29EDB0200](v19);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 += 4;
        --v10;
      }

      while (v10);
      v7 = v22;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v7;
}

uint64_t AudioHardwareSystem.defaultInputDevice.getter(uint64_t a1)
{
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0;
  }

  return result;
}

uint64_t AudioHardwareSystem.shouldMixStereoToMono.getter(uint64_t a1)
{
  v3 = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v6 = v3;
    v7 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v6, v7);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AudioHardwareSystem.powerHint.getter()
{
  result = (*(*v0 + 280))(0x676C6F62706F7768, 0, 0, 0xF000000000000000);
  v4 = result;
  if (!v1)
  {
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return result;
}

uint64_t AudioHardwareSystem.setDefaultInputDevice(_:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 16);
  v4 = specialized Data.InlineData.init(_:)(&v8, &v9);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5 & 0xFFFFFFFFFFFFFFLL);
  return outlined consume of Data._Representation(v4, v6 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t AudioHardwareSystem.setShouldMixStereoToMono(_:)(char a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = a1 & 1;
  v4 = specialized Data.InlineData.init(_:)(&v8, &v9);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5 & 0xFFFFFFFFFFFFFFLL);
  return outlined consume of Data._Representation(v4, v6 & 0xFFFFFFFFFFFFFFLL);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setPowerHint(_:)(AudioHardwarePowerHint a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v2 = specialized Data.InlineData.init(_:)(&v5, &v6);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F62706F7768, 0, 0, 0xF000000000000000, v2, v3 & 0xFFFFFFFFFFFFFFLL);
  outlined consume of Data._Representation(v2, v4 & 0xFFFFFFFFFFFFFFLL);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.unload()()
{
  v0 = AudioHardwareUnload();
  if (v0)
  {
    v1 = v0;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = v1;
    swift_willThrow();
  }
}

uint64_t AudioHardwareSystem.makeAggregateDevice(description:)()
{
  v7 = *MEMORY[0x29EDCA608];
  v0.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  outDeviceID = 0;
  v1 = AudioHardwareCreateAggregateDevice(v0.super.isa, &outDeviceID);
  if (v1)
  {
    v2 = v1;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v2;
    swift_willThrow();
  }

  else
  {
    v4 = outDeviceID;
    if (outDeviceID)
    {
      type metadata accessor for AudioHardwareAggregateDevice();
      swift_allocObject();
      v2 = AudioHardwareObject.init(id:)(v4);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t AudioHardwareSystem.destroyAggregateDevice(_:)(uint64_t a1)
{
  result = AudioHardwareDestroyAggregateDevice(*(a1 + 16));
  if (result)
  {
    v2 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v2;
    return swift_willThrow();
  }

  return result;
}

void AudioHardwareSystem.device(forUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v17[1] = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDB01D0](a1, a2);
  v16 = v7;
  v8 = specialized Data.InlineData.init(_:)(&v16, v17);
  v10 = v9;
  v11 = (*(*v4 + 280))(a3, 0, v8, v9 & 0xFFFFFFFFFFFFFFLL);
  if (v5)
  {
    outlined consume of Data._Representation(v8, v10 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v13 = v12;
    v14 = v10 & 0xFFFFFFFFFFFFFFLL;
    v15 = v11;
    outlined consume of Data._Representation(v8, v14);

    v16 = v15;
    v17[0] = v13;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v15, v13);
  }
}

uint64_t AudioHardwareSystem.process(for:)(int a1)
{
  v11[2] = *MEMORY[0x29EDCA608];
  LODWORD(v11[0]) = a1;
  v3 = specialized Data.InlineData.init(_:)(v11, v11 + 4);
  v5 = v4;
  v6 = (*(*v1 + 280))(0x676C6F6269643270, 0, v3, v4 & 0xFFFFFFFFFFFFFFLL);
  if (v2)
  {
    outlined consume of Data._Representation(v3, v5 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v8 = v6;
    v11[0] = v6;
    v11[1] = v7;
    v9 = v7;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v3, v5 & 0xFFFFFFFFFFFFFFLL);
    outlined consume of Data._Representation(v8, v9);
    return 0;
  }

  return v1;
}

uint64_t AudioHardwareSystem.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareSystem.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26AudioObjectPropertyAddressV_ys6UInt32V_SPyADGtcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMd, &_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  LODWORD(v6) = *(a1 + 40);
  v16 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 32), v6);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 12 * result);
    *v10 = v4;
    v10[1] = v5;
    v10[2] = v6;
    *(v3[7] + 16 * result) = v16;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 2;
    v4 = *(v9 - 4);
    v5 = *(v9 - 3);
    v6 = *(v9 - 2);
    v16 = *v9;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 32), v6);
    v9 = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
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

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError()
{
  result = lazy protocol witness table cache variable for type AudioHardwareError and conformance AudioHardwareError;
  if (!lazy protocol witness table cache variable for type AudioHardwareError and conformance AudioHardwareError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioHardwareError and conformance AudioHardwareError);
  }

  return result;
}

uint64_t outlined destroy of [PropertyListenerDelegate](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioStreamRangedDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioStreamRangedDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioObjectPropertyAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioObjectPropertyAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _sSo15AudioValueRangeVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo15AudioValueRangeVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioStreamBasicDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioStreamBasicDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void type metadata accessor for CFStringRef(uint64_t a1, unint64_t *a2, uint64_t a3)
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

AudioObjectPropertyAddress __swiftcall PropertyAddress(_:scope:element:)(Swift::UInt32 _, Swift::UInt32 scope, Swift::UInt32 element)
{
  v3 = _ | (*&scope << 32);
  result.mSelector = v3;
  result.mScope = HIDWORD(v3);
  result.mElement = element;
  return result;
}

uint64_t AudioHardwareError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  return result;
}

unint64_t AudioHardwareError.errorDescription.getter()
{
  v1 = *v0;
  if (*v0 <= 561214577)
  {
    if (v1 > 560492390)
    {
      if (v1 == 561211770)
      {
        v8 = 0xD00000000000004ELL;
      }

      else
      {
        v8 = 0;
      }

      if (v1 == 560947818)
      {
        v9 = 0xD00000000000004CLL;
      }

      else
      {
        v9 = v8;
      }

      if (v1 == 560492391)
      {
        return 0xD000000000000057;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      v6 = 0xD000000000000035;
      if (v1 == 560227702)
      {
        v7 = 0xD00000000000004CLL;
      }

      else
      {
        v7 = 0;
      }

      if (v1 != 560226676)
      {
        v6 = v7;
      }

      if (v1)
      {
        return v6;
      }

      else
      {
        return 0xD000000000000029;
      }
    }
  }

  else if (v1 <= 1937010543)
  {
    switch(v1)
    {
      case 561214578:
        return 0xD00000000000004CLL;
      case 1852797029:
        if (*(v0 + 16))
        {
          v10 = *(v0 + 8);
        }

        else
        {
          v10 = 0xD00000000000002ELL;
        }

        return v10;
      case 1852990585:
        return 0xD00000000000003ALL;
      default:
        return 0;
    }
  }

  else
  {
    if (v1 == 2003332927)
    {
      v2 = 0xD000000000000045;
    }

    else
    {
      v2 = 0;
    }

    if (v1 == 2003329396)
    {
      v3 = 0xD000000000000057;
    }

    else
    {
      v3 = v2;
    }

    v4 = 0xD000000000000038;
    if (v1 != 1970171760)
    {
      v4 = 0;
    }

    if (v1 == 1937010544)
    {
      v4 = 0xD000000000000045;
    }

    if (v1 <= 2003329395)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

CoreAudio_Private::AudioHardwareDirection_optional __swiftcall AudioHardwareDirection.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioHardwareDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioHardwareDirection(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AudioHardwareDirection@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void AudioObjectPropertyAddress.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a3);
}

Swift::Int AudioObjectPropertyAddress.hashValue.getter(unint64_t a1, Swift::UInt32 a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioObjectPropertyAddress()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AudioObjectPropertyAddress()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioObjectPropertyAddress(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioHardwareDirection and conformance AudioHardwareDirection()
{
  result = lazy protocol witness table cache variable for type AudioHardwareDirection and conformance AudioHardwareDirection;
  if (!lazy protocol witness table cache variable for type AudioHardwareDirection and conformance AudioHardwareDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioHardwareDirection and conformance AudioHardwareDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress()
{
  result = lazy protocol witness table cache variable for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress;
  if (!lazy protocol witness table cache variable for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress)
  {
    type metadata accessor for AudioObjectPropertyAddress(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioHardwareError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AudioHardwareError(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioHardwareDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioHardwareDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AudioHardwareStream.isActive.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F6273616374, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t AudioHardwareStream.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 280))(0x676C6F6273646972, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v6, v7);
    *a1 = 0;
  }

  return result;
}

uint64_t AudioHardwareStream.terminalType.getter()
{
  result = (*(*v0 + 280))(0x676C6F627465726DLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return result;
}

uint64_t AudioHardwareStream.startingChannel.getter(uint64_t a1)
{
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0;
  }

  return result;
}

__n128 AudioHardwareStream.virtualFormat.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v3)
  {
    v8 = v5;
    v9 = v6;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v8, v9);
    result = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t AudioHardwareStream.availableVirtualFormats.getter(uint64_t a1)
{
  result = (*(*v2 + 280))(a1, 0, 0, 0xF000000000000000);
  if (v3)
  {
    return v1;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(v5);
LABEL_14:
    v11 = (37 * (v7 >> 3)) >> 8;
    goto LABEL_15;
  }

  LODWORD(v7) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_23;
  }

  v7 = v7;
LABEL_11:
  if (v7 >= -55)
  {
    v11 = v7 / 56;
LABEL_15:
    v12 = v5;
    v13 = result;
    if (v7 < 56)
    {
      v1 = MEMORY[0x29EDCA190];
    }

    else
    {
      type metadata accessor for AudioStreamRangedDescription(0);
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v1 = v14;
      *(v14 + 16) = v11;
      v15 = 32;
      do
      {
        v16 = v14 + v15;
        *(v16 + 48) = 0;
        *(v16 + 16) = 0uLL;
        *(v16 + 32) = 0uLL;
        *v16 = 0uLL;
        v15 += 56;
        --v11;
      }

      while (v11);
    }

    v17 = *(v1 + 16);
    v18[0] = v1 + 32;
    v18[1] = v17;
    closure #1 in AudioHardwareStream.availableVirtualFormats.getter(v18, v13, v12, &v19);
    outlined consume of Data._Representation(v13, v12);
    return v1;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in AudioHardwareStream.availableVirtualFormats.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v8 < 1)
      {
        goto LABEL_23;
      }

      goto LABEL_11;
    }

LABEL_23:
    v15 = 0;
LABEL_27:
    *a4 = v15;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 * 56) >> 64 != (56 * v6) >> 63)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 >= 56 * v6)
  {
    v13 = 56 * v6;
  }

  else
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_29;
  }

  if (v14 < v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 == v14)
  {
    goto LABEL_23;
  }

  if (result)
  {
    v16 = a4;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a4 = v16;
      goto LABEL_27;
    }

    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareStream.setIsActive(_:)(Swift::Bool a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v2 = specialized Data.init(bytes:count:)(&v5, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6273616374, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

uint64_t AudioHardwareStream.setVirtualFormat(_:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  v5 = specialized Data.init(bytes:count:)(v9, 0x28uLL);
  v7 = v6;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v5, v6);
  return outlined consume of Data._Representation(v5, v7);
}

uint64_t AudioHardwareStream.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwareStream.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareStream.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t dispatch thunk of AudioHardwareStream.setVirtualFormat(_:)(uint64_t *a1)
{
  v2 = *(*v1 + 504);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

uint64_t dispatch thunk of AudioHardwareStream.setPhysicalFormat(_:)(uint64_t *a1)
{
  v2 = *(*v1 + 512);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

uint64_t AudioHardwareProcess.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwareProcess.pid.getter()
{
  result = (*(*v0 + 280))(0x676C6F6270706964, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return result;
}

uint64_t AudioHardwareProcess.bundleID.getter()
{
  v3 = (*(*v1 + 280))(0x676C6F6270626964, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v8 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  return v0;
}

char *AudioHardwareProcess.devices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v17 - v2;
  v4 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F6270647623, 0);
  if (!v0)
  {
    v5 = v4;
    v17[0] = 0;
    v18 = MEMORY[0x29EDCA190];
    v6 = *(v4 + 16);
    if (v6)
    {
      v17[1] = type metadata accessor for AudioHardwareDevice();
      v7 = 32;
      do
      {
        v8 = *(v5 + v7);
        v9 = swift_allocObject();
        *(v9 + 24) = 0;
        *(v9 + 32) = MEMORY[0x29EDCA190];
        *(v9 + 40) = 0;
        *(v9 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v10 = swift_allocObject();
        v11 = (v10 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
        *v11 = 0;
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v11 + v13, *(*(v14 - 8) + 64));
        v15 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v3, v11 + v13);
        *(v9 + 56) = v10;
        *(v9 + 16) = v8;
        MEMORY[0x29EDB0200](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 += 4;
        --v6;
      }

      while (v6);
      v3 = v18;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

uint64_t AudioHardwareProcess.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareProcess.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareBox.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwareBox.uid.getter()
{
  v3 = (*(*v1 + 280))(0x676C6F6262756964, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v8 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  return v0;
}

uint64_t AudioHardwareBox.transportType.getter()
{
  result = (*(*v0 + 280))(0x676C6F627472616ELL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return result;
}

char *AudioHardwareBox.devices.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v21 - v6;
  v8 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v2)
  {
    v9 = v8;
    v21[0] = 0;
    v22 = MEMORY[0x29EDCA190];
    v10 = *(v8 + 16);
    if (v10)
    {
      v21[1] = a2(0);
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = swift_allocObject();
        *(v13 + 24) = 0;
        *(v13 + 32) = MEMORY[0x29EDCA190];
        *(v13 + 40) = 0;
        *(v13 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v14 = swift_allocObject();
        v15 = (v14 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
        *v15 = 0;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v15 + v17, *(*(v18 - 8) + 64));
        v19 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v7, v15 + v17);
        *(v13 + 56) = v14;
        *(v13 + 16) = v12;
        MEMORY[0x29EDB0200](v19);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 += 4;
        --v10;
      }

      while (v10);
      v7 = v22;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v7;
}

uint64_t AudioHardwareBox.enable()(int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6262786F6ELL, 0, 0, 0xF000000000000000, v2, v3);
  return outlined consume of Data._Representation(v2, v4);
}

uint64_t AudioHardwareBox.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareBox.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareControl.sliderValue.getter()
{
  result = (*(*v0 + 280))(0x676C6F6273647276, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return result;
}

double AudioHardwareControl.volumeDecibelRange.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F626C636472, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0.0;
  }

  return result;
}

uint64_t AudioHardwareControl.BOOLeanValue.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F626263766CLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    v4 = 0;
  }

  return v4 & 1;
}

float AudioHardwareControl.volumeScalarValue.getter(uint64_t a1)
{
  v3 = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v6 = v3;
    v7 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v6, v7);
    return 0.0;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setSliderValue(_:)(Swift::UInt32 a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v2 = specialized Data.init(bytes:count:)(&v5, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6273647276, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setBooleanValue(_:)(Swift::Bool a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v2 = specialized Data.init(bytes:count:)(&v5, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626263766CLL, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setSelectedItems(_:)(Swift::OpaquePointer a1)
{
  v2 = _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(a1._rawValue + 32, *(a1._rawValue + 2));
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6273636369, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

unint64_t _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(unint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, (v2 + result));
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          __DataStorage.init(bytes:length:)();
          if (v2 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 34;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AudioHardwareControl.setVolumeScalarValue(_:)(uint64_t a1, float a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = a2;
  v4 = specialized Data.init(bytes:count:)(&v8, 4uLL);
  v6 = v5;
  (*(*v2 + 288))(a1, 0, 0, 0xF000000000000000, v4, v5);
  return outlined consume of Data._Representation(v4, v6);
}

uint64_t AudioHardwareControl.convertToDecibels(fromScalar:)(float a1, double a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = 4;
  v10 = a1;
  *&v13 = specialized Data.init(bytes:count:)(&v10, 4uLL);
  *(&v13 + 1) = v4;
  v9 = 0;
  *&inAddress = a2;
  DWORD2(inAddress) = 0;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v13, &v9, v2, &inAddress, &v11);
  v5 = v9;
  if (v9)
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = v5;
    swift_willThrow();
    return outlined consume of Data._Representation(v13, *(&v13 + 1));
  }

  else
  {
    v8 = v13;
    inAddress = v13;
    outlined copy of Data._Representation(v13, *(&v13 + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(inAddress, *(&inAddress + 1));
    return outlined consume of Data._Representation(v8, *(&v8 + 1));
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.selectorItemName(fromID:)(Swift::UInt32 fromID)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = fromID;
  v4 = specialized Data.init(bytes:count:)(&v16, 4uLL);
  v6 = v5;
  v7 = (*(*v1 + 280))(0x676C6F627363696ELL, 0, v4, v5);
  if (v2)
  {
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    v15 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    v17 = v9;
    v18 = v10;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v11;
    outlined consume of Data._Representation(v4, v6);
    outlined consume of Data._Representation(v9, v10);
  }

  v12 = v1;
  v13 = v3;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.selectorItemKind(fromID:)(Swift::UInt32 fromID)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = fromID;
  v3 = specialized Data.init(bytes:count:)(&v11, 4uLL);
  v5 = v4;
  v6 = (*(*v1 + 280))(0x676C6F62636C6B6BLL, 0, v3, v4);
  if (v2)
  {
    return outlined consume of Data._Representation(v3, v5);
  }

  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  lazy protocol witness table accessor for type Data and conformance Data();
  DataProtocol.copyBytes(to:)();
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v9, v10);
  return 0;
}

uint64_t AudioHardwareControl.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwareControl.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareControl.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, OSStatus *a2, uint64_t a3, AudioObjectPropertyAddress *inAddress, UInt32 *a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {

      outlined consume of Data._Representation(v9, v8);
      *&outData = v9;
      WORD4(outData) = v8;
      BYTE10(outData) = BYTE2(v8);
      BYTE11(outData) = BYTE3(v8);
      BYTE12(outData) = BYTE4(v8);
      BYTE13(outData) = BYTE5(v8);
      BYTE14(outData) = BYTE6(v8);
      *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, &outData);
      v11 = outData;
      v12 = DWORD2(outData) | ((WORD6(outData) | (BYTE14(outData) << 16)) << 32);

      *a1 = v11;
      a1[1] = v12;
      return result;
    }

    v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    outlined copy of Data._Representation(v9, v8);
    outlined consume of Data._Representation(v9, v8);
    *a1 = xmmword_29ED28D90;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    v24 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v24 < v9)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
      {
LABEL_23:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v25 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v23 = v25;
    }

    if (v24 >= v9)
    {

      result = __DataStorage._bytes.getter();
      if (result)
      {
        v26 = result;
        v27 = __DataStorage._offset.getter();
        v28 = v9 - v27;
        if (!__OFSUB__(v9, v27))
        {
          MEMORY[0x29EDB00A0]();
          *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, (v26 + v28));

          v22 = v23 | 0x4000000000000000;
          *a1 = v9;
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      goto LABEL_25;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 != 2)
  {
    *(&outData + 7) = 0;
    *&outData = 0;
    *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, &outData);
  }

  outlined consume of Data._Representation(v9, v8);
  *&outData = v9;
  *(&outData + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_29ED28D90;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v15 = outData;
  v16 = *(outData + 16);
  v17 = __DataStorage._bytes.getter();
  if (v17)
  {
    v18 = v17;
    v19 = __DataStorage._offset.getter();
    v20 = __OFSUB__(v16, v19);
    v21 = v16 - v19;
    if (!v20)
    {
      MEMORY[0x29EDB00A0]();
      *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, (v18 + v21));

      v22 = *(&v15 + 1) | 0x8000000000000000;
      *a1 = v15;
LABEL_17:
      a1[1] = v22;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t specialized Data.InlineData.init(_:)(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = specialized Data.InlineData.init(count:)(v5);
  __dst = result;
  v11 = v7;
  v13 = v8;
  v12 = v9;
  if (a1)
  {
    if (a2 != a1)
    {
      memcpy(&__dst, a1, v4);
      return __dst;
    }
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t AudioHardwareDevice.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwareDevice.configurationApplication.getter(uint64_t a1)
{
  v4 = (*(*v2 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v3)
  {
    v6 = v4;
    v7 = v5;
    v9 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v6, v7);
  }

  return v1;
}

char *AudioHardwareDevice.relatedDevices.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v23 - v8;
  v10 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v3)
  {
    v11 = v10;
    v23[0] = 0;
    v24 = MEMORY[0x29EDCA190];
    v12 = *(v10 + 16);
    if (v12)
    {
      v23[1] = a3(a2);
      v13 = 32;
      do
      {
        v14 = *(v11 + v13);
        v15 = swift_allocObject();
        *(v15 + 24) = 0;
        *(v15 + 32) = MEMORY[0x29EDCA190];
        *(v15 + 40) = 0;
        *(v15 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v16 = swift_allocObject();
        v17 = (v16 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
        *v17 = 0;
        v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v17 + v19, *(*(v20 - 8) + 64));
        v21 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v9, v17 + v19);
        *(v15 + 56) = v16;
        *(v15 + 16) = v14;
        MEMORY[0x29EDB0200](v21);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 += 4;
        --v12;
      }

      while (v12);
      v9 = v24;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v9;
}

uint64_t AudioHardwareDevice.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v8);
  v16 = v9;
  v10 = (*(*v1 + 280))(0x676C6F6269636F6ELL, 0, 0, 0xF000000000000000);
  if (v2)
  {
    (*(v5 + 8))(v7, v4);

    v16 = v2;
    MEMORY[0x29EDB06A0](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      MEMORY[0x29EDB0690](v2);

      (*(v5 + 56))(a1, 1, 1, v4);
    }

    return MEMORY[0x29EDB0690](v16);
  }

  else
  {
    v17 = v10;
    v18 = v11;
    v13 = v10;
    v14 = v11;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v13, v14);
    (*(v5 + 8))(v7, v4);

    return (*(v5 + 56))(a1, 0, 1, v4);
  }
}

uint64_t AudioHardwareDevice.hogModePID.getter()
{
  result = (*(*v0 + 280))(0x676C6F626F696E6BLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return result;
}

double AudioHardwareDevice.bufferFrameSizeRange.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F6266737A23, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0.0;
  }

  return result;
}

float AudioHardwareDevice.ioCycleUsage.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F626E637963, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0.0;
  }

  return result;
}

uint64_t AudioHardwareDevice.inputStreamConfiguration.getter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMd, &_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMR);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (v2)
  {
    return v4;
  }

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v16 = *(result + 16);
    v15 = *(result + 24);
    v14 = v15 - v16;
    if (!__OFSUB__(v15, v16))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(v12);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_25;
  }

  v14 = HIDWORD(result) - result;
LABEL_12:
  if (!__OFSUB__(v14, 8))
  {
    v36 = 0;
    if (v14 - 8 < 16)
    {
      outlined consume of Data._Representation(result, v12);
      return MEMORY[0x29EDCA190];
    }

    else
    {
      v17 = result;
      v18 = v12;
      v19 = static AudioBufferList.allocate(maximumBuffers:)();
      v34 = v17;
      v35 = v18;
      v37[0] = v17;
      v37[1] = v18;
      MEMORY[0x29EDB0190](v19);
      lazy protocol witness table accessor for type Data and conformance Data();
      DataProtocol.copyBytes(to:)();
      v33 = v8;
      (*(v8 + 16))(v6, v10, v7);
      v20 = *(v4 + 36);
      lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer();
      v32 = v10;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v4 = MEMORY[0x29EDCA190];
      while (*&v6[v20] != v37[0])
      {
        v21 = dispatch thunk of Collection.subscript.read();
        v23 = *v22;
        v24 = v22[1];
        v21(v37, 0);
        dispatch thunk of Collection.formIndex(after:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        }

        v26 = *(v4 + 16);
        v25 = *(v4 + 24);
        if (v26 >= v25 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v4);
        }

        *(v4 + 16) = v26 + 1;
        v27 = v4 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        dispatch thunk of Collection.endIndex.getter();
      }

      v28 = outlined destroy of [PropertyListenerDelegate](v6, &_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMd, &_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMR);
      v29 = v32;
      v30 = MEMORY[0x29EDB0190](v28);
      free(v30);
      outlined consume of Data._Representation(v34, v35);
      (*(v33 + 8))(v29, v7);
    }

    return v4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

double AudioHardwareDevice.actualSampleRate.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F6261737274, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0.0;
  }

  return result;
}

uint64_t AudioHardwareDevice.clock.getter()
{
  v3 = (*(*v1 + 280))(0x676C6F6261706364, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v12 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    outlined consume of Data._Representation(v5, v6);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v0 = (*(*static AudioHardwareSystem.shared + 648))(v7, v9);

    if (!v0)
    {
      lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
      v0 = swift_allocError();
      *v11 = 1852797029;
      *(v11 + 8) = xmmword_29ED28DE0;
      swift_willThrow();
    }
  }

  return v0;
}

unint64_t AudioHardwareDevice.workgroup.getter()
{
  v2 = os_workgroup_create_with_port(0, 0);
  v9 = v2;
  v3 = (*(*v0 + 280))(0x676C6F626F737767, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = v9;
    if (v9)
    {
      outlined consume of Data._Representation(v5, v6);
      return v0;
    }

    v0 = 0x800000029ED296D0;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *v8 = 1852797029;
    *(v8 + 8) = 0xD000000000000013;
    *(v8 + 16) = 0x800000029ED296D0;
    swift_willThrow();

    outlined consume of Data._Representation(v5, v6);
    v2 = 0;
  }

  return v0;
}

uint64_t AudioHardwareDevice.currentTime.getter@<X0>(_OWORD *a1@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  memset(&v8, 0, sizeof(v8));
  v8.mFlags = 3;
  result = AudioDeviceGetCurrentTime(*(v1 + 16), &v8);
  if (result)
  {
    v4 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = v4;
    return swift_willThrow();
  }

  else
  {
    v6 = *&v8.mRateScalar;
    *a1 = *&v8.mSampleTime;
    a1[1] = v6;
    v7 = *&v8.mSMPTETime.mHours;
    a1[2] = *&v8.mSMPTETime.mSubframes;
    a1[3] = v7;
  }

  return result;
}

uint64_t AudioHardwareDevice.setPreferredInputChannelsForStereo(_:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v8[0] = a1;
  v4 = specialized Data.init(bytes:count:)(v8, 8uLL);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5);
  return outlined consume of Data._Representation(v4, v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setBufferFrameSize(_:)(Swift::Int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 < 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(a1))
  {
    goto LABEL_5;
  }

  v5 = a1;
  v2 = specialized Data.init(bytes:count:)(&v5, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626673697ALL, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setIOCycleUsage(_:)(Swift::Float a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v2 = specialized Data.init(bytes:count:)(&v5, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626E637963, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

void AudioHardwareDevice.setClock(_:)(uint64_t a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = (*(*a1 + 424))();
  if (!v2)
  {
    v4 = MEMORY[0x29EDB01D0](v3);

    v8[0] = v4;
    v5 = specialized Data.init(bytes:count:)(v8, 8uLL);
    v7 = v6;
    (*(*v1 + 288))(0x676C6F6261706364, 0, 0, 0xF000000000000000, v5, v6);
    outlined consume of Data._Representation(v5, v7);
  }
}

uint64_t AudioHardwareDevice.setIsProcessInputMuted(_:)(char a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v8 = a1 & 1;
  v4 = specialized Data.init(bytes:count:)(&v8, 4uLL);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5);
  return outlined consume of Data._Representation(v4, v6);
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.toggleHogMode()()
{
  v8 = *MEMORY[0x29EDCA608];
  *&inAddress.mSelector = 0x676C6F626F696E6BLL;
  inAddress.mElement = 0;
  inData = xmmword_29ED28DF0;
  v1 = AudioObjectSetPropertyData(*(v0 + 16), &inAddress, 0, 0, 4u, &inData);
  if (v1)
  {
    v2 = v1;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v2;
    swift_willThrow();
    return outlined consume of Data._Representation(inData, *(&inData + 1));
  }

  else
  {
    v6 = inData;
    outlined copy of Data._Representation(inData, *(&inData + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v6, *(&v6 + 1));
    outlined consume of Data._Representation(inData, *(&inData + 1));
    return 0;
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.translateTime(_:)(AudioTimeStamp *__return_ptr retstr, AudioTimeStamp *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(&outTime, 0, sizeof(outTime));
  outTime.mFlags = 3;
  v4 = *&a2->mRateScalar;
  *&v11.mSampleTime = *&a2->mSampleTime;
  *&v11.mRateScalar = v4;
  v5 = *&a2->mSMPTETime.mHours;
  *&v11.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&v11.mSMPTETime.mHours = v5;
  v6 = AudioDeviceTranslateTime(*(v2 + 16), &v11, &outTime);
  if (v6)
  {
    v7 = v6;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = v7;
    swift_willThrow();
  }

  else
  {
    v9 = *&outTime.mRateScalar;
    *&retstr->mSampleTime = *&outTime.mSampleTime;
    *&retstr->mRateScalar = v9;
    v10 = *&outTime.mSMPTETime.mHours;
    *&retstr->mSMPTETime.mSubframes = *&outTime.mSMPTETime.mSubframes;
    *&retstr->mSMPTETime.mHours = v10;
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.nearestStartTime(atTime:withFlags:)(AudioTimeStamp *__return_ptr retstr, AudioTimeStamp *atTime, Swift::UInt32 withFlags)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *&atTime->mRateScalar;
  *&v12.mSampleTime = *&atTime->mSampleTime;
  *&v12.mRateScalar = v5;
  v6 = *&atTime->mSMPTETime.mHours;
  *&v12.mSMPTETime.mSubframes = *&atTime->mSMPTETime.mSubframes;
  *&v12.mSMPTETime.mHours = v6;
  NearestStartTime = AudioDeviceGetNearestStartTime(*(v3 + 16), &v12, withFlags);
  if (NearestStartTime)
  {
    v8 = NearestStartTime;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = v8;
    swift_willThrow();
  }

  else
  {
    v10 = *&v12.mRateScalar;
    *&retstr->mSampleTime = *&v12.mSampleTime;
    *&retstr->mRateScalar = v10;
    v11 = *&v12.mSMPTETime.mHours;
    *&retstr->mSMPTETime.mSubframes = *&v12.mSMPTETime.mSubframes;
    *&retstr->mSMPTETime.mHours = v11;
  }
}

uint64_t AudioHardwareDevice.start(at:flags:IOProcID:)@<X0>(UInt32 inFlags@<W1>, AudioDeviceIOProcID inProcID@<X2>, _OWORD *a3@<X0>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = a3[1];
  *&ioRequestedStartTime.mSampleTime = *a3;
  *&ioRequestedStartTime.mRateScalar = v6;
  v7 = a3[3];
  *&ioRequestedStartTime.mSMPTETime.mSubframes = a3[2];
  *&ioRequestedStartTime.mSMPTETime.mHours = v7;
  result = AudioDeviceStartAtTime(*(v4 + 16), inProcID, &ioRequestedStartTime, inFlags);
  if (result)
  {
    v9 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = v9;
    return swift_willThrow();
  }

  else
  {
    v11 = *&ioRequestedStartTime.mRateScalar;
    *a4 = *&ioRequestedStartTime.mSampleTime;
    *(a4 + 16) = v11;
    v12 = *&ioRequestedStartTime.mSMPTETime.mHours;
    *(a4 + 32) = *&ioRequestedStartTime.mSMPTETime.mSubframes;
    *(a4 + 48) = v12;
    *(a4 + 64) = 0;
  }

  return result;
}

uint64_t AudioHardwareDevice.start(IOProcID:)(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  result = a2(*(v2 + 16), a1);
  if (result)
  {
    v4 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t AudioHardwareDevice.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareDevice.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11AudioBufferVGMd, &_ss23_ContiguousArrayStorageCySo11AudioBufferVGMR);
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
    v10 = MEMORY[0x29EDCA190];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    type metadata accessor for UnsafeMutableAudioBufferListPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of AudioHardwareDevice.translateTime(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(*v1 + 800);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v11 = v5;
  v12 = *(a1 + 36);
  v13 = v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v8;
  return v7(v10);
}

uint64_t dispatch thunk of AudioHardwareDevice.nearestStartTime(atTime:withFlags:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(*v1 + 808);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v11 = v5;
  v12 = *(a1 + 36);
  v13 = v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v8;
  return v7(v10);
}

uint64_t dispatch thunk of AudioHardwareDevice.start(at:flags:IOProcID:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(*v1 + 824);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v11 = v5;
  v12 = *(a1 + 36);
  v13 = v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v8;
  return v7(v10);
}

uint64_t AudioHardwarePlugin.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwarePlugin.bundleID.getter()
{
  v3 = (*(*v1 + 280))(0x676C6F6270696964, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v8 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  return v0;
}

char *AudioHardwarePlugin.devices.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v21 - v6;
  v8 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v2)
  {
    v9 = v8;
    v21[0] = 0;
    v22 = MEMORY[0x29EDCA190];
    v10 = *(v8 + 16);
    if (v10)
    {
      v21[1] = a2(0);
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = swift_allocObject();
        *(v13 + 24) = 0;
        *(v13 + 32) = MEMORY[0x29EDCA190];
        *(v13 + 40) = 0;
        *(v13 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v14 = swift_allocObject();
        v15 = (v14 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
        *v15 = 0;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v15 + v17, *(*(v18 - 8) + 64));
        v19 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v7, v15 + v17);
        *(v13 + 56) = v14;
        *(v13 + 16) = v12;
        MEMORY[0x29EDB0200](v19);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 += 4;
        --v10;
      }

      while (v10);
      v7 = v22;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v7;
}

void AudioHardwarePlugin.device(forUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v16[2] = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDB01D0](a1, a2);
  v16[0] = v7;
  v8 = specialized Data.init(bytes:count:)(v16, 8uLL);
  v10 = v9;
  v11 = (*(*v4 + 280))(a3, 0, v8, v9);
  if (v5)
  {
    outlined consume of Data._Representation(v8, v10);
  }

  else
  {
    v13 = v11;
    v14 = v8;
    v15 = v12;
    outlined consume of Data._Representation(v14, v10);

    v16[0] = v13;
    v16[1] = v15;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v13, v15);
  }
}

uint64_t AudioHardwarePlugin.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwarePlugin.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareAggregateDevice.__allocating_init(id:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return AudioHardwareObject.init(id:)(v1);
}

uint64_t AudioHardwareAggregateDevice.subdevices.getter()
{
  v3 = (*(*v0 + 280))(0x676C6F6267727570, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v25 = v3;
    v26 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v5 = MEMORY[0x29EDCA190];
    v32 = MEMORY[0x29EDCA190];
    if (MEMORY[0x29EDCA190] >> 62)
    {
LABEL_24:
      v30 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 < 0)
      {
        v22 = v5;
      }

      else
      {
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v6 = MEMORY[0x29EDB0300](v22);
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v29 = v5 & 0xC000000000000001;
        v2 = MEMORY[0x29EDCA190];
        v27 = v6;
        v28 = v5;
        do
        {
          v24 = v2;
          while (1)
          {
            if (v29)
            {
              v8 = MEMORY[0x29EDB02E0](v7, v5);
            }

            else
            {
              if (v7 >= *(v30 + 16))
              {
                goto LABEL_23;
              }

              v8 = *(v5 + 8 * v7 + 32);
            }

            v9 = v8;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v31 = v7 + 1;
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v10 = static AudioHardwareSystem.shared;
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;
            v14 = *(*v10 + 640);
            v15 = v9;
            v16 = v14(v11, v13);

            if (v16)
            {
              break;
            }

            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = (*(*v10 + 648))(v17, v19);

            if (v20)
            {
              goto LABEL_18;
            }

            ++v7;
            v5 = v28;
            if (v31 == v27)
            {
              v2 = v24;
              goto LABEL_29;
            }
          }

LABEL_18:

          MEMORY[0x29EDB0200](v21);
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v2 = v32;
          v5 = v28;
          ++v7;
        }

        while (v31 != v27);
        goto LABEL_29;
      }
    }

    else
    {
      v30 = MEMORY[0x29EDCA190] & 0xFFFFFFFFFFFFFF8;
      v6 = *((MEMORY[0x29EDCA190] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x29EDCA190];
LABEL_29:

    outlined consume of Data._Representation(v25, v26);
  }

  return v2;
}

uint64_t AudioHardwareAggregateDevice.activeSubdevices.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = v19 - v3;
  v5 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F6261677270, 0);
  if (!v1)
  {
    v6 = v5;
    v19[0] = 0;
    v20 = MEMORY[0x29EDCA190];
    v7 = *(v5 + 16);
    if (v7)
    {
      v19[1] = type metadata accessor for AudioHardwareDevice();
      v8 = 32;
      do
      {
        v9 = *(v6 + v8);
        v10 = swift_allocObject();
        *(v10 + 24) = 0;
        *(v10 + 32) = MEMORY[0x29EDCA190];
        *(v10 + 40) = 0;
        *(v10 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v11 = swift_allocObject();
        v12 = (v11 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
        *v12 = 0;
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v12 + v14, *(*(v15 - 8) + 64));
        v16 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v4, v12 + v14);
        *(v10 + 56) = v11;
        *(v10 + 16) = v9;
        MEMORY[0x29EDB0200](v16);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 += 4;
        --v7;
      }

      while (v7);
      v17 = v20;

      if (!(v17 >> 62))
      {
        goto LABEL_8;
      }
    }

    else
    {

      v17 = MEMORY[0x29EDCA190];
      if (!(MEMORY[0x29EDCA190] >> 62))
      {
LABEL_8:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AudioHardwareClock();
        v0 = v17;
LABEL_9:

        return v0;
      }
    }

    type metadata accessor for AudioHardwareClock();

    v0 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_9;
  }

  return v0;
}

uint64_t AudioHardwareAggregateDevice.clockSource.getter()
{
  v3 = (*(*v0 + 280))(0x676C6F62616D7374, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    v13 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    outlined consume of Data._Representation(v5, v6);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = static AudioHardwareSystem.shared;
    v11 = (*(*static AudioHardwareSystem.shared + 640))(v7, v9);
    v2 = v11;
    if (!v11)
    {
      v2 = (*(*v10 + 648))(v7, v9);
    }
  }

  return v2;
}

unint64_t AudioHardwareAggregateDevice.composition.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F6261636F6DLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x29EDCA190]);
    outlined consume of Data._Representation(v4, v5);
  }

  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareAggregateDevice.setSubdevices(_:)(Swift::OpaquePointer a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = MEMORY[0x29EDCA190];
  if (a1._rawValue >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x29EDB0300](rawValue))
  {
    v4 = 0;
    while ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x29EDB02E0](v4, a1._rawValue);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v7 = (*(*v5 + 424))();
      if (v1)
      {

        return;
      }

      MEMORY[0x29EDB01D0](v7);

      MEMORY[0x29EDB0200](v8);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v4;
      if (v6 == i)
      {
        goto LABEL_22;
      }
    }

    if (v4 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v5 = *(a1._rawValue + v4 + 4);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (a1._rawValue < 0)
    {
      rawValue = a1._rawValue;
    }

    else
    {
      rawValue = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_22:
  type metadata accessor for CFStringRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = isa;
  v11 = specialized Data.init(bytes:count:)(&v15, 8uLL);
  v13 = v12;
  (*(*v14 + 288))(0x676C6F6267727570, 0, 0, 0xF000000000000000, v11, v12);
  outlined consume of Data._Representation(v11, v13);
}

void AudioHardwareAggregateDevice.setClockSource(_:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x29EDCA608];
  type metadata accessor for AudioHardwareClock();
  if (swift_dynamicCastClass())
  {
    v3 = *swift_dynamicCastClassUnconditional();
    v4 = (*(v3 + 424))();
    if (!v2)
    {
      v5 = MEMORY[0x29EDB01D0](v4);

      v10[0] = v5;
      v6 = specialized Data.init(bytes:count:)(v10, 8uLL);
      v8 = v7;
      (*(*v1 + 288))(0x676C6F62616D7374, 0, 0, 0xF000000000000000, v6, v7);
      outlined consume of Data._Representation(v6, v8);
    }
  }

  else
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *v9 = 1852797029;
    *(v9 + 8) = 0xD000000000000053;
    *(v9 + 16) = 0x800000029ED29750;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareAggregateDevice.setComposition(_:)(Swift::OpaquePointer a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6[0] = isa;
  v3 = specialized Data.init(bytes:count:)(v6, 8uLL);
  v5 = v4;
  (*(*v1 + 288))(0x676C6F6261636F6DLL, 0, 0, 0xF000000000000000, v3, v4);
  outlined consume of Data._Representation(v3, v5);
}

uint64_t AudioHardwareAggregateDevice.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareAggregateDevice.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareObject.init(id:)(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v14 - v4;
  *(v1 + 24) = 0;
  v6 = MEMORY[0x29EDCA190];
  *(v1 + 32) = MEMORY[0x29EDCA190];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26AudioObjectPropertyAddressV_ys6UInt32V_SPyADGtcTt0g5Tf4g_n(v6);
  *(v1 + 40) = 0;
  *(v1 + 48) = v7;
  type metadata accessor for ListenerHelper(0);
  v8 = swift_allocObject();
  v9 = (v8 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  *v9 = 0;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  bzero(v9 + v11, *(*(v12 - 8) + 64));
  outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v5, v9 + v11);
  *(v1 + 56) = v8;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t AudioHardwareObject.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareObject.delegates.getter()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 32);

  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

void AudioHardwareObject.delegates.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 32) = a1;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t (*AudioHardwareObject.delegates.modify(void *a1))()
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 24));
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 24));
  *a1 = v3;
  return AudioHardwareObject.delegates.modify;
}

void AudioHardwareObject.delegates.modify(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 24));

    *(v3 + 32) = v2;
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));

    *(v3 + 32) = v2;

    os_unfair_lock_unlock((v3 + 24));
  }
}

uint64_t AudioHardwareObject.owner.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F6273746476, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    return 0;
  }

  return v0;
}

char *AudioHardwareObject.ownedObjects.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v17 - v2;
  v4 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F626F776E64, 0);
  if (!v0)
  {
    v5 = v4;
    v17[0] = 0;
    v18 = MEMORY[0x29EDCA190];
    v6 = *(v4 + 16);
    if (v6)
    {
      v17[1] = type metadata accessor for AudioHardwareObject();
      v7 = 32;
      do
      {
        v8 = *(v5 + v7);
        v9 = swift_allocObject();
        *(v9 + 24) = 0;
        *(v9 + 32) = MEMORY[0x29EDCA190];
        *(v9 + 40) = 0;
        *(v9 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v10 = swift_allocObject();
        v11 = (v10 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
        *v11 = 0;
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v11 + v13, *(*(v14 - 8) + 64));
        v15 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v3, v11 + v13);
        *(v9 + 56) = v10;
        *(v9 + 16) = v8;
        MEMORY[0x29EDB0200](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 += 4;
        --v6;
      }

      while (v6);
      v3 = v18;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

uint64_t AudioHardwareObject.isIdentifying.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F626964656ELL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    v4 = 0;
  }

  return v4 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.setName(_:)(Swift::String a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB01D0](a1._countAndFlagsBits, a1._object);
  v6[0] = v2;
  v3 = specialized Data.init(bytes:count:)(v6, 8uLL);
  v5 = v4;
  (*(*v1 + 288))(0x676C6F626C6E616DLL, 0, 0, 0xF000000000000000, v3, v4);
  outlined consume of Data._Representation(v3, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.setIsIdentifying(_:)(Swift::Bool a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v2 = specialized Data.init(bytes:count:)(&v5, 4uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626964656ELL, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.setCreatorBundleID(_:)(Swift::String a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 160))(a1._countAndFlagsBits, a1._object);
  if (!v2)
  {
    v4 = MEMORY[0x29EDB01D0](v3);

    v8[0] = v4;
    v5 = specialized Data.init(bytes:count:)(v8, 8uLL);
    v7 = v6;
    (*(*v1 + 288))(0x676C6F626F706C67, 0, 0, 0xF000000000000000, v5, v6);
    outlined consume of Data._Representation(v5, v7);
  }
}

Swift::Bool __swiftcall AudioHardwareObject.hasProperty(address:)(AudioObjectPropertyAddress address)
{
  v4 = *MEMORY[0x29EDCA608];
  inAddress = address;
  return AudioObjectHasProperty(*(v1 + 16), &inAddress) != 0;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.isPropertySettable(address:)(AudioObjectPropertyAddress address)
{
  v9 = *MEMORY[0x29EDCA608];
  outIsSettable = 0;
  inAddress = address;
  IsPropertySettable = AudioObjectIsPropertySettable(*(v1 + 16), &inAddress, &outIsSettable);
  if (IsPropertySettable)
  {
    v3 = IsPropertySettable;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = v3;
    swift_willThrow();
  }

  else
  {
    return outIsSettable != 0;
  }

  return v5;
}

uint64_t AudioHardwareObject.propertyDataSize(address:qualifier:)(uint64_t a1, AudioObjectPropertyElement a2, uint64_t a3, unint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  outDataSize = 0;
  if (a4 >> 60 != 15)
  {
    v7 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v7 != 2)
      {
        LODWORD(v8) = 0;
        goto LABEL_17;
      }

      v10 = *(a3 + 16);
      v9 = *(a3 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v7)
    {
      LODWORD(v8) = BYTE6(a4);
      goto LABEL_17;
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_36;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_13:
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v8))
    {
LABEL_17:
      *&inAddress.mSelector = a1;
      inAddress.mElement = a2;
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          memset(inQualifierData, 0, 14);
LABEL_32:
          PropertyDataSize = AudioObjectGetPropertyDataSize(*(v4 + 16), &inAddress, v8, inQualifierData, &outDataSize);
          if (PropertyDataSize)
          {
            goto LABEL_33;
          }

          return outDataSize;
        }

        v11 = v4;
        v12 = *(a3 + 16);
        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
LABEL_29:
          MEMORY[0x29EDB00A0]();
          PropertyDataSize = AudioObjectGetPropertyDataSize(*(v11 + 16), &inAddress, v8, v13, &outDataSize);
          if (PropertyDataSize)
          {
            goto LABEL_33;
          }

          return outDataSize;
        }

        v4 = a4 & 0x3FFFFFFFFFFFFFFFLL;
        v14 = __DataStorage._offset.getter();
        v15 = v12 - v14;
        if (!__OFSUB__(v12, v14))
        {
LABEL_28:
          v13 += v15;
          goto LABEL_29;
        }

        __break(1u);
      }

      else if (!v7)
      {
        inQualifierData[0] = a3;
        LOWORD(inQualifierData[1]) = a4;
        BYTE2(inQualifierData[1]) = BYTE2(a4);
        BYTE3(inQualifierData[1]) = BYTE3(a4);
        BYTE4(inQualifierData[1]) = BYTE4(a4);
        BYTE5(inQualifierData[1]) = BYTE5(a4);
        goto LABEL_32;
      }

      v16 = a3;
      if (a3 <= a3 >> 32)
      {
        v11 = v4;
        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_29;
        }

        v17 = __DataStorage._offset.getter();
        v15 = v16 - v17;
        if (!__OFSUB__(v16, v17))
        {
          goto LABEL_28;
        }

LABEL_38:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *&inAddress.mSelector = a1;
  inAddress.mElement = a2;
  PropertyDataSize = AudioObjectGetPropertyDataSize(*(v4 + 16), &inAddress, 0, 0, &outDataSize);
  if (!PropertyDataSize)
  {
    return outDataSize;
  }

LABEL_33:
  v19 = PropertyDataSize;
  lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
  swift_allocError();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *v20 = v19;
  return swift_willThrow();
}

unint64_t AudioHardwareObject.propertyData(address:qualifier:)(uint64_t a1, AudioObjectPropertyElement a2, uint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x29EDCA608];
  result = (*(*v4 + 272))();
  if (!v5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      ioDataSize = result;
      v21 = specialized Data.init(count:)(result);
      v22 = v11;
      if (a4 >> 60 == 15)
      {
LABEL_5:
        v12 = 0;
        goto LABEL_17;
      }

      v13 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_5;
        }

        v15 = *(a3 + 16);
        v14 = *(a3 + 24);
        v12 = v14 - v15;
        if (!__OFSUB__(v14, v15))
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v12 = BYTE6(a4);
        goto LABEL_17;
      }

      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_25;
      }

      v12 = HIDWORD(a3) - a3;
LABEL_15:
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v12))
        {
LABEL_17:
          inAddress.mElement = a2;
          v19 = 0;
          *&inAddress.mSelector = a1;
          outlined copy of Data?(a3, a4);

          specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v21, a3, a4, &v19, v4, &inAddress, v12, &ioDataSize);
          v16 = v19;
          if (v19)
          {
            lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
            swift_allocError();
            *(v17 + 8) = 0;
            *(v17 + 16) = 0;
            *v17 = v16;
            swift_willThrow();
            return outlined consume of Data._Representation(v21, v22);
          }

          else
          {
            Data._Representation.count.setter();
            return v21;
          }
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t AudioHardwareObject.setPropertyData(address:qualifier:data:)(uint64_t a1, AudioObjectPropertyElement a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  inQualifierData[2] = *MEMORY[0x29EDCA608];
  v7 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v7)
    {
      LODWORD(v8) = BYTE6(a6);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_13:
    LODWORD(v8) = 0;
    goto LABEL_14;
  }

  v10 = *(a5 + 16);
  v9 = *(a5 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v8 = HIDWORD(a5) - a5;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v8))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  if (a4 >> 60 == 15)
  {
LABEL_15:
    LODWORD(v11) = 0;
    goto LABEL_27;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      LODWORD(v11) = BYTE6(a4);
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v12 != 2)
  {
    goto LABEL_15;
  }

  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  v11 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_23:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_52;
    }

    v11 = HIDWORD(a3) - a3;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (HIDWORD(v11))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_27:
  *&inAddress.mSelector = a1;
  inAddress.mElement = a2;
  inQualifierData[0] = a3;
  inQualifierData[1] = a4;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      memset(inData, 0, 14);
      goto LABEL_41;
    }

    v15 = *(a5 + 16);
    v16 = __DataStorage._bytes.getter();
    if (v16)
    {
      v17 = v16;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v18))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v19 = (v15 - v18 + v17);
      MEMORY[0x29EDB00A0]();
      if (v19)
      {
LABEL_39:
        v25 = *(v6 + 16);
        v26 = v11;
        v27 = v8;
        v28 = v19;
        goto LABEL_42;
      }
    }

    else
    {
      MEMORY[0x29EDB00A0]();
    }

    __break(1u);
    goto LABEL_55;
  }

  if (v7)
  {
    v20 = a5;
    if (a5 <= a5 >> 32)
    {
      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v22 = v21;
        v23 = __DataStorage._offset.getter();
        if (!__OFSUB__(v20, v23))
        {
          v19 = (v20 - v23 + v22);
          result = MEMORY[0x29EDB00A0]();
          if (v19)
          {
            goto LABEL_39;
          }

LABEL_56:
          __break(1u);
          return result;
        }

        goto LABEL_51;
      }

LABEL_55:
      result = MEMORY[0x29EDB00A0]();
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  inData[0] = a5;
  LOWORD(inData[1]) = a6;
  BYTE2(inData[1]) = BYTE2(a6);
  BYTE3(inData[1]) = BYTE3(a6);
  BYTE4(inData[1]) = BYTE4(a6);
  BYTE5(inData[1]) = BYTE5(a6);
LABEL_41:
  v25 = *(v6 + 16);
  v28 = inData;
  v26 = v11;
  v27 = v8;
LABEL_42:
  result = AudioObjectSetPropertyData(v25, &inAddress, v26, inQualifierData, v27, v28);
  v29 = result;
  if (result)
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v29;
    return swift_willThrow();
  }

  return result;
}

uint64_t AudioHardwareObject.setPropertyData(address:qualifier:data:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 156) = a2;
  *(v6 + 72) = a1;

  return MEMORY[0x2A1C73D48](AudioHardwareObject.setPropertyData(address:qualifier:data:), 0, 0);
}

uint64_t AudioHardwareObject.setPropertyData(address:qualifier:data:)()
{
  v1 = *(v0 + 96);
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      LODWORD(v5) = BYTE6(v3);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_13:
    LODWORD(v5) = 0;
    goto LABEL_14;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v5 = v9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v5))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v10 = *(v0 + 88);
  if (v10 >> 60 == 15)
  {
LABEL_15:
    LODWORD(v11) = 0;
    goto LABEL_16;
  }

  v20 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_15;
    }

    v30 = *(*(v0 + 80) + 16);
    v31 = *(*(v0 + 80) + 24);
    v11 = v31 - v30;
    if (!__OFSUB__(v31, v30))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v20)
  {
    LODWORD(v11) = BYTE6(v10);
    goto LABEL_16;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 84);
  v8 = __OFSUB__(v33, v32);
  v34 = v33 - v32;
  if (v8)
  {
    goto LABEL_38;
  }

  v11 = v34;
LABEL_32:
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(v11))
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_16:
  v12 = *(v0 + 104);
  v13 = *(v0 + 156);
  *(v0 + 144) = *(v0 + 72);
  *(v0 + 152) = v13;
  v14 = *(v12 + 16);
  *(v0 + 48) = partial apply for closure #1 in AudioHardwareObject.setPropertyData(address:qualifier:data:);
  *(v0 + 56) = v12;
  *(v0 + 16) = MEMORY[0x29EDCA5F8];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
  *(v0 + 40) = &block_descriptor;
  v15 = _Block_copy((v0 + 16));
  swift_retain_n();

  v16 = AudioObjectAddPropertyListenerBlock(v14, (v0 + 144), 0, v15);
  _Block_release(v15);
  if (v16)
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = v16;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v35 = *(v0 + 80);
    v23 = *(v0 + 156);
    v24 = *(v0 + 72);
    v25 = *(v21 + 56);
    v26 = swift_task_alloc();
    *(v0 + 112) = v26;
    *(v26 + 16) = v24;
    *(v26 + 24) = v23;
    *(v26 + 32) = v35;
    *(v26 + 48) = v22;
    *(v26 + 56) = v21;
    *(v26 + 64) = v11;
    *(v26 + 68) = v5;
    v27 = swift_task_alloc();
    *(v0 + 120) = v27;
    v27[2] = v25;
    v27[3] = partial apply for closure #3 in AudioHardwareObject.setPropertyData(address:qualifier:data:);
    v27[4] = v26;
    v28 = swift_task_alloc();
    *(v0 + 128) = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26AudioObjectPropertyAddressVGMd, &_sSaySo26AudioObjectPropertyAddressVGMR);
    *v28 = v0;
    v28[1] = AudioHardwareObject.setPropertyData(address:qualifier:data:);

    return MEMORY[0x2A1C73C80](v0 + 64, 0, 0, 0xD00000000000001FLL, 0x800000029ED29820, partial apply for closure #1 in ListenerHelper.waitForPropertyChange(setCall:), v27, v29);
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = AudioHardwareObject.setPropertyData(address:qualifier:data:);
  }

  else
  {

    v2 = AudioHardwareObject.setPropertyData(address:qualifier:data:);
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

{
  v1 = *(v0 + 64);

  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  while (1)
  {
    if (!--v3)
    {

      lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
      swift_allocError();
      *v13 = 1852797029;
      *(v13 + 8) = 0xD00000000000001FLL;
      *(v13 + 16) = 0x800000029ED29840;
      swift_willThrow();
LABEL_8:

      v14 = *(v0 + 8);
      goto LABEL_9;
    }

    v4 = v2;
    v2 += 3;
    v5 = *(v0 + 72);
    if (*(v4 - 1) == v5)
    {
      v6 = *(v0 + 156);
      if (*v4 == v6)
      {
        break;
      }
    }
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);

  v11 = (*(*v8 + 280))(v5, v6, v10, v9);
  if (v7)
  {
    goto LABEL_8;
  }

  v16 = *(v0 + 96);
  v17 = v11;
  v18 = v12;

  outlined consume of Data._Representation(*v16, *(v16 + 8));
  *v16 = v17;
  *(v16 + 8) = v18;
  v14 = *(v0 + 8);
LABEL_9:

  return v14();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AudioHardwareObject.addListener(forProperties:dispatchQueue:)(uint64_t result, NSObject *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = result;

    for (i = (v5 + 40); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      os_unfair_lock_lock((v4 + 40));
      v11 = *(v4 + 48);

      os_unfair_lock_unlock((v4 + 40));
      if (*(v11 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v8 | (v9 << 32), v10);
        v13 = v12;

        if (v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      inAddress.mSelector = v8;
      inAddress.mScope = v9;
      inAddress.mElement = v10;
      v14 = *(v4 + 16);
      aBlock[4] = partial apply for closure #1 in AudioHardwareObject.addListener(forProperties:dispatchQueue:);
      aBlock[5] = v4;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
      aBlock[3] = &block_descriptor_5;
      v15 = _Block_copy(aBlock);

      v16 = AudioObjectAddPropertyListenerBlock(v14, &inAddress, a2, v15);
      _Block_release(v15);
      if (v16)
      {
        lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
        swift_allocError();
        *(v36 + 8) = 0;
        *(v36 + 16) = 0;
        *v36 = v16;
        swift_willThrow();
      }

      v39 = v3;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #1 in AudioHardwareObject.addListener(forProperties:dispatchQueue:);
      *(v17 + 24) = v4;

      os_unfair_lock_lock((v4 + 40));
      v18 = *(v4 + 48);

      os_unfair_lock_unlock((v4 + 40));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v18;
      v38 = v8;
      v20 = v9;
      v21 = v8 | (v9 << 32);
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v10);
      v24 = *(v18 + 16);
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v28 = v23;
      if (*(v18 + 24) < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v35 = v22;
      specialized _NativeDictionary.copy()();
      v22 = v35;
      v30 = aBlock[0];
      if ((v28 & 1) == 0)
      {
LABEL_17:
        v30[(v22 >> 6) + 8] |= 1 << v22;
        v31 = (v30[6] + 12 * v22);
        *v31 = v38;
        v31[1] = v20;
        v31[2] = v10;
        v32 = (v30[7] + 16 * v22);
        *v32 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
        v32[1] = v17;
        v33 = v30[2];
        v26 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v26)
        {
          goto LABEL_25;
        }

        v30[2] = v34;
        goto LABEL_4;
      }

LABEL_3:
      v7 = (v30[7] + 16 * v22);
      *v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
      v7[1] = v17;

LABEL_4:
      os_unfair_lock_lock((v4 + 40));

      *(v4 + 48) = v30;
      os_unfair_lock_unlock((v4 + 40));
      v3 = v39;
LABEL_5:
      if (!--v3)
      {
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v10);
    if ((v28 & 1) != (v29 & 1))
    {
      type metadata accessor for AudioObjectPropertyAddress(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_16:
    v30 = aBlock[0];
    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t AudioHardwareObject.removeListener(forProperties:dispatchQueue:)(uint64_t result, NSObject *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = (result + 40);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      os_unfair_lock_lock((v4 + 40));
      v9 = *(v4 + 48);

      os_unfair_lock_unlock((v4 + 40));
      if (*(v9 + 16))
      {
        v10 = v7 | (v6 << 32);
        specialized __RawDictionaryStorage.find<A>(_:)(v10, v8);
        v12 = v11;

        if (v12)
        {
          os_unfair_lock_lock((v4 + 40));
          v13 = *(v4 + 48);

          os_unfair_lock_unlock((v4 + 40));
          if (!*(v13 + 16))
          {
            __break(1u);
LABEL_19:
            __break(1u);
          }

          v14 = specialized __RawDictionaryStorage.find<A>(_:)(v7 | (v6 << 32), v8);
          if ((v15 & 1) == 0)
          {
            goto LABEL_19;
          }

          v27 = *(*(v13 + 56) + 16 * v14);

          v16 = swift_allocObject();
          *(v16 + 16) = v27;
          inAddress.mSelector = v7;
          inAddress.mScope = v6;
          inAddress.mElement = v8;
          v17 = *(v4 + 16);
          aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UnsafePointer<AudioObjectPropertyAddress>) -> (@out ());
          aBlock[5] = v16;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
          aBlock[3] = &block_descriptor_11;
          v18 = _Block_copy(aBlock);

          v19 = AudioObjectRemovePropertyListenerBlock(v17, &inAddress, a2, v18);
          _Block_release(v18);
          if (v19)
          {
            lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
            swift_allocError();
            *(v25 + 8) = 0;
            *(v25 + 16) = 0;
            *v25 = v19;
            swift_willThrow();
          }

          os_unfair_lock_lock((v4 + 40));
          v20 = *(v4 + 48);

          os_unfair_lock_unlock((v4 + 40));
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v8);
          if (v22)
          {
            v23 = v21;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v20;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v20 = aBlock[0];
            }

            specialized _NativeDictionary._delete(at:)(v23, v20);
          }

          os_unfair_lock_lock((v4 + 40));

          *(v4 + 48) = v20;
          os_unfair_lock_unlock((v4 + 40));
        }
      }

      else
      {
      }

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t AudioHardwareObject.getUInt32ArrayData(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*v3 + 280))(a1, a2, 0, 0xF000000000000000);
  if (v4)
  {
    return v2;
  }

  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_16;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = __OFSUB__(v10, v11);
    v8 = v10 - v11;
    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(v6);
    v9 = BYTE6(v6) >> 2;
LABEL_16:
    v14 = v6;
    v15 = result;
    if (v8 <= 3)
    {
      v2 = MEMORY[0x29EDCA190];
      v9 = *(MEMORY[0x29EDCA190] + 16);
    }

    else
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = v9;
      bzero((v2 + 32), 4 * v9);
    }

    v16[0] = v2 + 32;
    v16[1] = v9;
    closure #1 in AudioHardwareObject.getUInt32ArrayData(_:)(v16, v15, v14, &v17);
    outlined consume of Data._Representation(v15, v14);
    return v2;
  }

  LODWORD(v8) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_22;
  }

  v8 = v8;
LABEL_11:
  v13 = v8 + 3;
  if (v8 >= 0)
  {
    v13 = v8;
  }

  if (v8 >= -3)
  {
    v9 = v13 >> 2;
    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void key path setter for AudioHardwareObject.delegates : AudioHardwareObject(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 24));

  *(v3 + 32) = v2;

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t AudioHardwareObject.__allocating_init(id:)(int a1)
{
  v2 = swift_allocObject();
  AudioHardwareObject.init(id:)(a1);
  return v2;
}

uint64_t closure #1 in AudioHardwareObject.setPropertyData(address:qualifier:data:)(unsigned int a1, const void *a2)
{
  if (a1)
  {
    v3 = a1;
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo26AudioObjectPropertyAddressV_Tt1g5(a1, 0);
    memcpy(v5 + 4, a2, 4 * (v3 + 2 * a1));
  }

  else
  {
    v5 = MEMORY[0x29EDCA190];
  }

  ListenerHelper.propertiesChanged(properties:)(v5);
}

uint64_t ListenerHelper.propertiesChanged(properties:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v13 - v8;
  v10 = (v1 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
  os_unfair_lock_lock(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v10 + *(v11 + 28), v9);
  os_unfair_lock_unlock(v10);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    return outlined destroy of [PropertyListenerDelegate](v9, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  }

  (*(v4 + 16))(v6, v9, v3);
  outlined destroy of [PropertyListenerDelegate](v9, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  v13[1] = a1;

  CheckedContinuation.resume(returning:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t closure #1 in AudioHardwareObject.addListener(forProperties:dispatchQueue:)(unsigned int a1, const void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  v6 = *(a3 + 32);

  os_unfair_lock_unlock((a3 + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      outlined init with copy of PropertyListenerDelegate(v8, v14);
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      if (a1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMd, &_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMR);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v9[2] = a1;
        v9[3] = 2 * ((v10 - 32) / 12);
        memcpy(v9 + 4, a2, 12 * a1);
      }

      else
      {
        v9 = MEMORY[0x29EDCA190];
      }

      (*(v12 + 8))(v9, v11, v12);

      __swift_destroy_boxed_opaque_existential_1(v14);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

uint64_t closure #1 in AudioHardwareObject.getUInt32ArrayData(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v8 < 1)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
LABEL_26:
    *a4 = v15;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_28;
  }

  if (v14 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a4;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a4 = v16;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t AudioHardwareObject.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t closure #1 in ListenerHelper.waitForPropertyChange(setCall:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v23 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v22 - v12;
  v22 = *(v6 + 16);
  v22(&v22 - v12, a1, v5);
  (*(v6 + 56))(v13, 0, 1, v5);
  v14 = (a2 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
  os_unfair_lock_lock(v14);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
  outlined destroy of [PropertyListenerDelegate](v14 + v15, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v13, v14 + v15);
  os_unfair_lock_unlock(v14);
  v16 = outlined destroy of [PropertyListenerDelegate](v13, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  result = v24(v16);
  if (result)
  {
    v18 = result;
    os_unfair_lock_lock(v14);
    outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v14 + v15, v11);
    os_unfair_lock_unlock(v14);
    if ((*(v6 + 48))(v11, 1, v5))
    {
      return outlined destroy of [PropertyListenerDelegate](v11, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
    }

    else
    {
      v19 = v23;
      v22(v23, v11, v5);
      outlined destroy of [PropertyListenerDelegate](v11, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
      lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
      v20 = swift_allocError();
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      *v21 = v18;
      v25 = v20;
      CheckedContinuation.resume(throwing:)();
      return (*(v6 + 8))(v19, v5);
    }
  }

  return result;
}

uint64_t ListenerHelper.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  outlined destroy of [PropertyListenerDelegate](v1 + *(v2 + 28), &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v3, v4);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo26AudioObjectPropertyAddressV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMd, &_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 1) + (v7 >> 63));
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 12 * result);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      if (v9 == a1 && v10 == HIDWORD(a1) && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMd, &_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 12 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v36 = *(v21 + 16 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 12 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      *(*(v7 + 56) + 16 * v15) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 12 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = v14 + 12 * v3;
        v16 = (v14 + 12 * v6);
        if (v3 != v6 || v15 >= v16 + 12)
        {
          v17 = *v16;
          *(v15 + 8) = *(v16 + 2);
          *v15 = v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMd, &_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = 12 * v17;
        v19 = *(v2 + 48) + 12 * v17;
        v20 = *(v19 + 8);
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v22 = *(*(v2 + 56) + v17);
        *v21 = *v19;
        *(v21 + 8) = v20;
        *(*(v4 + 56) + v17) = v22;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, unint64_t a3, OSStatus *a4, unint64_t a5, AudioObjectPropertyAddress *inAddress, uint64_t inQualifierDataSize, UInt32 *ioDataSize)
{
  v10 = a2;
  v78 = *MEMORY[0x29EDCA608];
  v13 = *a1;
  v12 = a1[1];
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 == 2)
    {
      inAddressa = inAddress;
      inQualifierDataSizea = inQualifierDataSize;
      ioDataSizea = ioDataSize;
      v75 = a4;
      outlined copy of Data?(a2, a3);

      outlined consume of Data._Representation(v13, v12);
      *&outData = v13;
      *(&outData + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v74 = a1;
      *a1 = xmmword_29ED28D90;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v13 = *(&outData + 1);
      v69 = outData;
      v16 = *(outData + 16);
      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        outlined consume of Data?(v10, a3);

        __break(1u);
        goto LABEL_104;
      }

      v18 = v17;
      v19 = __DataStorage._offset.getter();
      v20 = (v16 - v19);
      if (__OFSUB__(v16, v19))
      {
        __break(1u);
        goto LABEL_91;
      }

      MEMORY[0x29EDB00A0]();
      if (a3 >> 60 == 15)
      {
        *v75 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, 0, ioDataSizea, v20 + v18);
LABEL_78:

        outlined consume of Data?(v10, a3);
        goto LABEL_79;
      }

      v31 = a3 >> 62;
      if ((a3 >> 62) <= 1)
      {
        if (v31)
        {
          v61 = v10;
          v10 = v10;
          if (v10 > v61 >> 32)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          v37 = v61;
          v22 = __DataStorage._bytes.getter();
          if (!v22)
          {
            goto LABEL_75;
          }

          v62 = __DataStorage._offset.getter();
          v39 = v10 - v62;
          if (__OFSUB__(v10, v62))
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
          }

          goto LABEL_74;
        }

        inQualifierData[0] = v10;
        LOWORD(inQualifierData[1]) = a3;
        BYTE2(inQualifierData[1]) = BYTE2(a3);
        BYTE3(inQualifierData[1]) = BYTE3(a3);
        BYTE4(inQualifierData[1]) = BYTE4(a3);
        BYTE5(inQualifierData[1]) = BYTE5(a3);
LABEL_77:
        *v75 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, inQualifierData, ioDataSizea, v20 + v18);
        outlined consume of Data?(v10, a3);
        goto LABEL_78;
      }

LABEL_37:
      if (v31 == 2)
      {
        v37 = v10;
        v23 = *(v10 + 16);
        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
LABEL_75:
          MEMORY[0x29EDB00A0]();
          *v75 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, v22, ioDataSizea, v20 + v18);
          outlined consume of Data?(v37, a3);

          outlined consume of Data?(v37, a3);
LABEL_79:
          *v74 = v69;
          v74[1] = v13 | 0x8000000000000000;
        }

        v38 = __DataStorage._offset.getter();
        v39 = v23 - v38;
        if (!__OFSUB__(v23, v38))
        {
LABEL_74:
          v22 += v39;
          goto LABEL_75;
        }

        __break(1u);
        goto LABEL_42;
      }

      memset(inQualifierData, 0, 14);
      goto LABEL_77;
    }

    *(&outData + 7) = 0;
    *&outData = 0;
    if (a3 >> 60 == 15)
    {
      v24 = *(a5 + 16);
      v28 = inQualifierDataSize;
      outlined copy of Data?(a2, a3);
      *a4 = AudioObjectGetPropertyData(v24, inAddress, v28, 0, ioDataSize, &outData);
      goto LABEL_17;
    }

    v30 = a3 >> 62;
    if ((a3 >> 62) <= 1)
    {
      if (v30)
      {
        v75 = a4;
        v57 = a2;
        if (a2 > a2 >> 32)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v18 = inAddress;
        LODWORD(v13) = inQualifierDataSize;
        v20 = ioDataSize;
        v34 = a2;
        v35 = __DataStorage._bytes.getter();
        if (!v35)
        {
          goto LABEL_65;
        }

        v58 = __DataStorage._offset.getter();
        v31 = v57 - v58;
        if (__OFSUB__(v57, v58))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        goto LABEL_64;
      }

      inQualifierData[0] = a2;
      LOWORD(inQualifierData[1]) = a3;
      BYTE2(inQualifierData[1]) = BYTE2(a3);
      BYTE3(inQualifierData[1]) = BYTE3(a3);
      BYTE4(inQualifierData[1]) = BYTE4(a3);
      BYTE5(inQualifierData[1]) = BYTE5(a3);
      *a4 = AudioObjectGetPropertyData(*(a5 + 16), inAddress, inQualifierDataSize, inQualifierData, ioDataSize, &outData);
      goto LABEL_17;
    }

LABEL_32:
    v18 = inAddress;
    v13 = inQualifierDataSize;
    v20 = ioDataSize;
    v75 = a4;
    if (v30 == 2)
    {
      v34 = v10;
      v10 = *(v10 + 16);
      v35 = __DataStorage._bytes.getter();
      if (!v35)
      {
LABEL_65:
        MEMORY[0x29EDB00A0]();
        *v75 = AudioObjectGetPropertyData(*(a5 + 16), v18, v13, v35, v20, &outData);
        outlined consume of Data?(v34, a3);
      }

      v36 = __DataStorage._offset.getter();
      v31 = v10 - v36;
      if (!__OFSUB__(v10, v36))
      {
LABEL_64:
        v35 += v31;
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_37;
    }

    memset(inQualifierData, 0, 14);
    *a4 = AudioObjectGetPropertyData(*(a5 + 16), inAddress, inQualifierDataSize, inQualifierData, ioDataSize, &outData);
LABEL_17:
    outlined consume of Data?(v10, a3);
  }

  inAddressa = inAddress;
  inQualifierDataSizea = inQualifierDataSize;
  ioDataSizea = ioDataSize;
  v74 = a1;
  v75 = a4;
  v70 = a2;
  if (!v14)
  {
    v69 = HIWORD(v12);
    outlined copy of Data?(a2, a3);

    outlined consume of Data._Representation(v13, v12);
    *&outData = v13;
    WORD4(outData) = v12;
    BYTE10(outData) = BYTE2(v12);
    BYTE11(outData) = BYTE3(v12);
    BYTE12(outData) = BYTE4(v12);
    BYTE13(outData) = BYTE5(v12);
    BYTE14(outData) = BYTE6(v12);
    if (a3 >> 60 == 15)
    {
      v13 = v74;
      *v75 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, 0, ioDataSizea, &outData);
      v15 = v70;
LABEL_69:
      v59 = outData;
      v60 = DWORD2(outData) | ((WORD6(outData) | (BYTE14(outData) << 16)) << 32);
      outlined consume of Data?(v15, a3);

      outlined consume of Data?(v15, a3);
      *v13 = v59;
      *(v13 + 8) = v60;
    }

    v29 = a3 >> 62;
    v21 = v75;
    if ((a3 >> 62) <= 1)
    {
      v15 = v70;
      v13 = v74;
      if (!v29)
      {
        inQualifierData[0] = v70;
        LOWORD(inQualifierData[1]) = a3;
        BYTE2(inQualifierData[1]) = BYTE2(a3);
        BYTE3(inQualifierData[1]) = BYTE3(a3);
        BYTE4(inQualifierData[1]) = BYTE4(a3);
        BYTE5(inQualifierData[1]) = BYTE5(a3);
LABEL_67:
        v53 = *(a5 + 16);
        v56 = inQualifierData;
        v54 = inAddressa;
        v55 = inQualifierDataSizea;
        goto LABEL_68;
      }

LABEL_56:
      v51 = v15;
      v15 = v15;
      if (v15 <= v51 >> 32)
      {
        v32 = __DataStorage._bytes.getter();
        if (v32)
        {
          v52 = __DataStorage._offset.getter();
          v30 = v15 - v52;
          if (!__OFSUB__(v15, v52))
          {
LABEL_59:
            v32 += v30;
            goto LABEL_60;
          }

          goto LABEL_99;
        }

LABEL_60:
        v15 = v70;
        MEMORY[0x29EDB00A0]();
        v53 = *(a5 + 16);
        v54 = inAddressa;
        v55 = inQualifierDataSizea;
        v56 = v32;
LABEL_68:
        *v21 = AudioObjectGetPropertyData(v53, v54, v55, v56, ioDataSizea, &outData);
        goto LABEL_69;
      }

      goto LABEL_95;
    }

    v15 = v70;
    v13 = v74;
    if (v29 != 2)
    {
      memset(inQualifierData, 0, 14);
      goto LABEL_67;
    }

    v10 = *(v70 + 16);
    v32 = __DataStorage._bytes.getter();
    if (!v32)
    {
      goto LABEL_60;
    }

    v33 = __DataStorage._offset.getter();
    v30 = v10 - v33;
    if (!__OFSUB__(v10, v33))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_32;
  }

  v21 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  outlined copy of Data?(a2, a3);

  outlined copy of Data._Representation(v13, v12);
  outlined consume of Data._Representation(v13, v12);
  *a1 = xmmword_29ED28D90;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  outlined copy of Data?(v10, a3);

  v22 = v13;
  v23 = v13 >> 32;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_43;
  }

  if (v23 < v13)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
  {
    goto LABEL_94;
  }

LABEL_42:
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v40 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

  v21 = v40;
LABEL_43:
  if (v23 < v22)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v42 = result;
    v43 = __DataStorage._offset.getter();
    v44 = __OFSUB__(v22, v43);
    v45 = v22 - v43;
    v46 = v70;
    if (!v44)
    {
      MEMORY[0x29EDB00A0]();
      if (a3 >> 60 == 15)
      {
        *v75 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, 0, ioDataSizea, (v42 + v45));

LABEL_88:

        outlined consume of Data?(v46, a3);
        *v74 = v13;
        v74[1] = v21 | 0x4000000000000000;
      }

      v47 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v47 != 2)
        {
          *(&outData + 6) = 0;
          *&outData = 0;
          goto LABEL_86;
        }

        v15 = *(v70 + 16);
        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v49 = __DataStorage._offset.getter();
          v50 = v15 - v49;
          if (__OFSUB__(v15, v49))
          {
            __break(1u);
            goto LABEL_56;
          }

          goto LABEL_83;
        }
      }

      else
      {
        if (!v47)
        {
          *&outData = v70;
          WORD4(outData) = a3;
          BYTE10(outData) = BYTE2(a3);
          BYTE11(outData) = BYTE3(a3);
          BYTE12(outData) = BYTE4(a3);
          BYTE13(outData) = BYTE5(a3);
LABEL_86:
          v64 = *(a5 + 16);
          p_outData = &outData;
          v65 = (v42 + v45);
          v66 = inAddressa;
          v67 = inQualifierDataSizea;
          goto LABEL_87;
        }

        if (v70 > v70 >> 32)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v63 = __DataStorage._offset.getter();
          v50 = v70 - v63;
          if (__OFSUB__(v70, v63))
          {
            goto LABEL_102;
          }

LABEL_83:
          v48 += v50;
        }
      }

      v46 = v70;
      MEMORY[0x29EDB00A0]();
      v64 = *(a5 + 16);
      v65 = (v42 + v45);
      v66 = inAddressa;
      v67 = inQualifierDataSizea;
      p_outData = v48;
LABEL_87:
      *v75 = AudioObjectGetPropertyData(v64, v66, v67, p_outData, ioDataSizea, v65);

      outlined consume of Data?(v46, a3);

      outlined consume of Data?(v46, a3);
      goto LABEL_88;
    }

    goto LABEL_92;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ListenerHelper(uint64_t a1)
{
  result = type metadata singleton initialization cache for ListenerHelper;
  if (!type metadata singleton initialization cache for ListenerHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #3 in AudioHardwareObject.setPropertyData(address:qualifier:data:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 68);
  *&inAddress.mSelector = *(v0 + 16);
  inAddress.mElement = v1;
  inQualifierData = *(v0 + 32);
  v7 = *v2;
  return AudioObjectSetPropertyData(*(v3 + 16), &inAddress, v4, &inQualifierData, v5, &v7);
}

uint64_t sub_29ED2670C()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UnsafePointer<AudioObjectPropertyAddress>) -> (@out ())(int a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

void sub_29ED267B4(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 6);
  v4 = *&v3[8]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 6);
  *a2 = v4;
}

uint64_t dispatch thunk of AudioHardwareObject.setPropertyData(address:qualifier:data:)()
{
  return (*(*v0 + 288))();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of AudioHardwareObject.setPropertyData(address:qualifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 296) + **(*v5 + 296));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of AudioHardwareObject.setPropertyData(address:qualifier:data:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_29ED26FAC()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySay17CoreAudio_Private24PropertyListenerDelegate_pGGMd, &_s15Synchronization5MutexVySay17CoreAudio_Private24PropertyListenerDelegate_pGGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29ED26FDC()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDySo26AudioObjectPropertyAddressVys6UInt32V_SPyAEGtcGGMd, &_s15Synchronization5MutexVySDySo26AudioObjectPropertyAddressVys6UInt32V_SPyAEGtcGGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

void type metadata completion function for ListenerHelper(uint64_t a1)
{
  type metadata accessor for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
    v1 = type metadata accessor for Mutex();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>);
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

uint64_t sub_29ED27150()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PropertyListenerDelegate(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t AudioHardwareClock.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return v0;
}

uint64_t AudioHardwareClock.uid.getter()
{
  v3 = (*(*v1 + 280))(0x676C6F6275696420, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v8 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  return v0;
}

char *AudioHardwareClock.controls.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v17 - v2;
  v4 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F626374726CLL, 0);
  if (!v0)
  {
    v5 = v4;
    v17[0] = 0;
    v18 = MEMORY[0x29EDCA190];
    v6 = *(v4 + 16);
    if (v6)
    {
      v17[1] = type metadata accessor for AudioHardwareControl();
      v7 = 32;
      do
      {
        v8 = *(v5 + v7);
        v9 = swift_allocObject();
        *(v9 + 24) = 0;
        *(v9 + 32) = MEMORY[0x29EDCA190];
        *(v9 + 40) = 0;
        *(v9 + 48) = MEMORY[0x29EDCA198];
        type metadata accessor for ListenerHelper(0);
        v10 = swift_allocObject();
        v11 = (v10 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
        *v11 = 0;
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v11 + v13, *(*(v14 - 8) + 64));
        v15 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v3, v11 + v13);
        *(v9 + 56) = v10;
        *(v9 + 16) = v8;
        MEMORY[0x29EDB0200](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 += 4;
        --v6;
      }

      while (v6);
      v3 = v18;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

double AudioHardwareClock.nominalSampleRate.getter()
{
  v2 = (*(*v0 + 280))(0x676C6F626E737274, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    return 0.0;
  }

  return result;
}

uint64_t AudioHardwareClock.availableNominalSampleRates.getter()
{
  result = (*(*v1 + 280))(0x676C6F626E737223, 0, 0, 0xF000000000000000);
  if (v2)
  {
    return v0;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_16;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v6 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    v7 = BYTE6(v4) >> 4;
LABEL_16:
    v12 = v4;
    v13 = result;
    if (v6 <= 15)
    {
      v0 = MEMORY[0x29EDCA190];
      v7 = *(MEMORY[0x29EDCA190] + 16);
    }

    else
    {
      type metadata accessor for AudioValueRange(0);
      v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v0 + 16) = v7;
      bzero((v0 + 32), 16 * v7);
    }

    v14[0] = v0 + 32;
    v14[1] = v7;
    closure #1 in AudioHardwareClock.availableNominalSampleRates.getter(v14, v13, v12, &v15);
    outlined consume of Data._Representation(v13, v12);
    return v0;
  }

  LODWORD(v6) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_22;
  }

  v6 = v6;
LABEL_11:
  v11 = v6 + 15;
  if (v6 >= 0)
  {
    v11 = v6;
  }

  if (v6 >= -15)
  {
    v7 = v11 >> 4;
    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareClock.setNominalSampleRate(_:)(Swift::Double a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  *v5 = a1;
  v2 = specialized Data.init(bytes:count:)(v5, 8uLL);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626E737274, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

uint64_t closure #1 in AudioHardwareClock.availableNominalSampleRates.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v8 < 1)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
LABEL_26:
    *a4 = v15;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 16 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_28;
  }

  if (v14 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a4;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a4 = v16;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t AudioHardwareClock.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}