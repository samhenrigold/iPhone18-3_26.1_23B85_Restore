uint64_t getEnumTag for PairingUIState(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = v1 - 2;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for PairingUIState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingUIState.Displayed(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairingUIState.Displayed(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of PairingUIManager.showDetectionIfNeeded(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingUIManager.interruptPairing()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of AccessoryScanner.stopAndReturnResult()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

Swift::Int PairingBeaconStoreError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PairingBeaconStoreError and conformance PairingBeaconStoreError()
{
  result = lazy protocol witness table cache variable for type PairingBeaconStoreError and conformance PairingBeaconStoreError;
  if (!lazy protocol witness table cache variable for type PairingBeaconStoreError and conformance PairingBeaconStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingBeaconStoreError and conformance PairingBeaconStoreError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairingBeaconStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingBeaconStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of PairingBeaconStore.generateBeaconRecord(pairingKeys:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingBeaconStore.saveBeaconRecord(_:pairingConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingBeaconStore.generateBeaconGroupAndRecord(pairingKeys:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingValidator.ack(_:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingBeaconStore.generateStandaloneBeaconRecord(pairingKeys:accessory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PairingBeaconStore.undoBeaconRecordSaving(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

unint64_t PairingCoordinatorState.description.getter()
{
  result = 0x656C64692ELL;
  switch(*v0)
  {
    case 0:
      return result;
    case 1:
      result = 0x726567676972742ELL;
      break;
    case 2:
      result = 0x726143786F72702ELL;
      break;
    case 3:
      result = 0x696150726573752ELL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x7461646174656D2ELL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xALL:
      result = 0xD000000000000017;
      break;
    case 0xBLL:
      result = 0xD000000000000018;
      break;
    case 0xCLL:
      result = 0x676E69726961702ELL;
      break;
    case 0xDLL:
      result = 0xD000000000000013;
      break;
    case 0xELL:
      result = 0xD000000000000015;
      break;
    case 0xFLL:
      result = 0x75727265746E692ELL;
      break;
    case 0x10:
      result = 0x656873696E69662ELL;
      break;
    default:
      MEMORY[0x24C236810](0x2864656C6961662ELL, 0xE800000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C236810](41, 0xE100000000000000);
      result = 0;
      break;
  }

  return result;
}

uint64_t specialized static PairingCoordinatorState.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 4uLL:
      if (v3 != 4)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 5uLL:
      if (v3 == 5)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    case 6uLL:
      if (v3 != 6)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 7uLL:
      if (v3 != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 8uLL:
      if (v3 != 8)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 9uLL:
      if (v3 != 9)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xAuLL:
      if (v3 != 10)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xBuLL:
      if (v3 != 11)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xCuLL:
      if (v3 != 12)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xDuLL:
      if (v3 != 13)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xEuLL:
      if (v3 != 14)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0xFuLL:
      if (v3 != 15)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    case 0x10uLL:
      if (v3 != 16)
      {
        goto LABEL_33;
      }

LABEL_31:
      outlined copy of PairingCoordinatorState(*a2);
      outlined consume of PairingCoordinatorState(v2);
      outlined consume of PairingCoordinatorState(v3);
      v8 = 1;
      break;
    default:
      if (v3 < 0x11)
      {
LABEL_33:
        outlined copy of PairingCoordinatorState(*a2);
        outlined copy of PairingCoordinatorState(v2);
        outlined consume of PairingCoordinatorState(v2);
        outlined consume of PairingCoordinatorState(v3);
        v8 = 0;
      }

      else
      {
        swift_getErrorValue();
        outlined copy of PairingCoordinatorState(v3);
        outlined copy of PairingCoordinatorState(v2);
        outlined copy of PairingCoordinatorState(v3);
        outlined copy of PairingCoordinatorState(v2);
        v4 = Error.localizedDescription.getter();
        v6 = v5;
        swift_getErrorValue();
        if (v4 == Error.localizedDescription.getter() && v6 == v7)
        {
          v8 = 1;
        }

        else
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        outlined consume of PairingCoordinatorState(v3);
        outlined consume of PairingCoordinatorState(v2);
        outlined consume of PairingCoordinatorState(v2);
        outlined consume of PairingCoordinatorState(v3);
      }

      break;
  }

  return v8 & 1;
}

uint64_t get_enum_tag_for_layout_string_13FindMyPairing0C16CoordinatorStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PairingCoordinatorState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEE && *(a1 + 8))
  {
    return (*a1 + 2147483631);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 16;
  if (v4 >= 0x12)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingCoordinatorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483631;
    if (a3 >= 0x7FFFFFEF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 16;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PairingCoordinatorState(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t key path setter for PairingCoordinatorStateManager.unsupportedTransitions : PairingCoordinatorStateManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t PairingCoordinatorStateManager.unsupportedTransitions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t key path setter for PairingCoordinatorStateManager.stateHistory : PairingCoordinatorStateManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

unint64_t key path setter for PairingCoordinatorStateManager.state : PairingCoordinatorStateManager(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
  outlined copy of PairingCoordinatorState(v2);
  return outlined consume of PairingCoordinatorState(v4);
}

unint64_t PairingCoordinatorStateManager.state.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *a1 = v3;
  return outlined copy of PairingCoordinatorState(v3);
}

uint64_t PairingCoordinatorStateManager.canHandleAccessoryConfiguration.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v11 = 10;
  v10 = &v11;

  v2 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v1);

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 120);
    v11 = 14;
    MEMORY[0x28223BE20](v3);
    v8[2] = &v11;

    v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, v5);

    v4 = v6 ^ 1;
  }

  return v4 & 1;
}

uint64_t PairingCoordinatorStateManager.canInterruptFlow.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v14 = 13;
  v13 = &v14;

  v2 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v12, v1);

  if (v2)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v4 + 16);
    v6 = 32;
    while (v5)
    {
      v7 = *(v4 + v6);
      v6 += 8;
      --v5;
      if (v7 >= 0x11)
      {
        goto LABEL_5;
      }
    }

    v14 = 15;
    MEMORY[0x28223BE20](v3);
    v11[2] = &v14;

    v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v11, v4);

    v8 = v9 ^ 1;
  }

  return v8 & 1;
}

BOOL PairingCoordinatorStateManager.canTriggerFlow.getter(uint64_t a1, uint64_t (*a2)(unint64_t *))
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v8 = a1;
  v7[2] = &v8;

  LOBYTE(a2) = specialized Sequence.contains(where:)(a2, v7, v5);

  return (a2 & 1) == 0;
}

BOOL PairingCoordinatorStateManager.flowInterrupted.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  if (v1 == 15)
  {
    v2 = 15;
  }

  else
  {
    outlined copy of PairingCoordinatorState(*(v0 + 128));
    outlined copy of PairingCoordinatorState(v1);
    v2 = v1;
  }

  outlined consume of PairingCoordinatorState(v2);
  outlined consume of PairingCoordinatorState(0xFuLL);
  outlined consume of PairingCoordinatorState(v2);
  return v1 == 15;
}

BOOL PairingCoordinatorStateManager.canSetupTimeout.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (v4 >= 0x11)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v6 = *(v0 + 128);
  v5 = v6 != 15;
  if (v6 != 15)
  {
    outlined copy of PairingCoordinatorState(v6);
    outlined copy of PairingCoordinatorState(v6);
  }

  outlined consume of PairingCoordinatorState(v6);
  outlined consume of PairingCoordinatorState(0xFuLL);
  outlined consume of PairingCoordinatorState(v6);
  return v5;
}

uint64_t PairingCoordinatorStateManager.canPrePair.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v6 = MEMORY[0x277D84F90];
    while (2)
    {
      v7 = v4;
LABEL_6:
      if (v7 < *(v1 + 16))
      {
        v9 = *(v5 + 8 * v7);
        switch(v9)
        {
          case 0uLL:
            outlined consume of PairingCoordinatorState(0);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 0;
            goto LABEL_5;
          case 1uLL:
            outlined consume of PairingCoordinatorState(1uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 1;
            goto LABEL_5;
          case 2uLL:
            outlined consume of PairingCoordinatorState(2uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 2;
            goto LABEL_5;
          case 3uLL:
            outlined consume of PairingCoordinatorState(3uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 3;
            goto LABEL_5;
          case 4uLL:
            outlined consume of PairingCoordinatorState(4uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 4;
            goto LABEL_5;
          case 5uLL:
            goto LABEL_25;
          case 6uLL:
            v10 = 5;
            goto LABEL_24;
          case 7uLL:
            outlined consume of PairingCoordinatorState(7uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 7;
            goto LABEL_5;
          case 8uLL:
            outlined consume of PairingCoordinatorState(8uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 8;
            goto LABEL_5;
          case 9uLL:
            outlined consume of PairingCoordinatorState(9uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 9;
            goto LABEL_5;
          case 0xAuLL:
            outlined consume of PairingCoordinatorState(0xAuLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 10;
            goto LABEL_5;
          case 0xBuLL:
            outlined consume of PairingCoordinatorState(0xBuLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 11;
            goto LABEL_5;
          case 0xCuLL:
            outlined consume of PairingCoordinatorState(0xCuLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 12;
            goto LABEL_5;
          case 0xDuLL:
            outlined consume of PairingCoordinatorState(0xDuLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 13;
            goto LABEL_5;
          case 0xEuLL:
            outlined consume of PairingCoordinatorState(0xEuLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v10 = 6;
LABEL_24:
            outlined consume of PairingCoordinatorState(v9);
            outlined consume of PairingCoordinatorState(v10);
LABEL_25:
            outlined consume of PairingCoordinatorState(v9);
            outlined consume of PairingCoordinatorState(v9);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
            }

            v12 = *(v6 + 16);
            v11 = *(v6 + 24);
            v13 = v12 + 1;
            if (v12 >= v11 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
              v13 = v12 + 1;
            }

            v4 = v7 + 1;
            *(v6 + 16) = v13;
            *(v6 + 8 * v12 + 32) = v9;
            if (v2 - 1 == v7)
            {
              goto LABEL_32;
            }

            continue;
          case 0xFuLL:
            outlined consume of PairingCoordinatorState(0xFuLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 15;
            goto LABEL_5;
          case 0x10uLL:
            outlined consume of PairingCoordinatorState(0x10uLL);
            outlined consume of PairingCoordinatorState(5uLL);
            v8 = 16;
            goto LABEL_5;
          default:
            MEMORY[0x24C236EC0](*(v5 + 8 * v7));
            MEMORY[0x24C236EC0](v9);
            outlined consume of PairingCoordinatorState(v9);
            outlined consume of PairingCoordinatorState(5uLL);
            MEMORY[0x24C236EC0](v9);
            v8 = v9;
LABEL_5:
            ++v7;
            outlined consume of PairingCoordinatorState(v8);
            outlined consume of PairingCoordinatorState(6uLL);
            outlined consume of PairingCoordinatorState(v9);
            result = outlined consume of PairingCoordinatorState(0xEuLL);
            if (v2 != v7)
            {
              goto LABEL_6;
            }

            goto LABEL_32;
        }
      }

      break;
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_32:

    v14 = *(v6 + 16);

    if (v14)
    {
      return 0;
    }

    else
    {
      v15 = *(v0 + 120);
      v16 = *(v15 + 16);
      v17 = (v15 + 32);
      do
      {
        result = v16 == 0;
        if (!v16)
        {
          break;
        }

        v18 = *v17++;
        --v16;
      }

      while (v18 < 0x11);
    }
  }

  return result;
}

uint64_t PairingCoordinatorStateManager.canFinishPairing.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v11 = 11;
  v10 = &v11;

  v2 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v1);

  if (v2)
  {
    v4 = *(v0 + 120);
    v11 = 14;
    MEMORY[0x28223BE20](v3);
    v8[2] = &v11;

    v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, v4);

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PairingCoordinatorStateManager.userTappedPair.getter(uint64_t a1, uint64_t (*a2)(unint64_t *))
{
  swift_beginAccess();
  v5 = *(v2 + 120);
  v8 = a1;
  v7[2] = &v8;

  LOBYTE(a2) = specialized Sequence.contains(where:)(a2, v7, v5);

  return a2 & 1;
}

BOOL PairingCoordinatorStateManager.flowFinishedWithError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 < 0x11);
  return v4 != 0;
}

uint64_t PairingCoordinatorStateManager.flowFinishedWithTimeout.getter()
{
  v1 = type metadata accessor for TimeoutError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v5 = *(v0 + 120);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  do
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *v7++;
    v8 = v9;
    --v6;
  }

  while (v9 < 0x11);
  v12 = v8;
  outlined copy of PairingCoordinatorState(v8);
  MEMORY[0x24C236EC0](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    outlined consume of PairingCoordinatorState(v8);
    (*(v2 + 8))(v4, v1);
    return 1;
  }

  else
  {
    v12 = v8;
    LODWORD(result) = swift_dynamicCast();
    if (v11[15] == 6)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }
}

BOOL PairingCoordinatorStateManager.canTimeout.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v9 = 14;
  v8[2] = &v9;

  v2 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, v1);

  if (v2)
  {
    return 0;
  }

  v4 = *(v0 + 120);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  do
  {
    result = v5 == 0;
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    --v5;
  }

  while (v7 < 0x11);
  return result;
}

uint64_t PairingCoordinatorStateManager.notifyStateUpdated(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  return outlined consume of (@escaping @callee_guaranteed @async (@in_guaranteed PairingCoordinatorState) -> ())?(v3, v4);
}

void *PairingCoordinatorStateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = MEMORY[0x277D84F90];
  v0[15] = v1;
  v0[17] = 0;
  v0[18] = 0;
  v0[16] = 0;
  return v0;
}

void *PairingCoordinatorStateManager.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = MEMORY[0x277D84F90];
  v0[15] = v1;
  v0[17] = 0;
  v0[18] = 0;
  v0[16] = 0;
  return v0;
}

uint64_t PairingCoordinatorStateManager.setNextState(_:input:)(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return specialized PairingCoordinatorStateManager.setNextState(_:input:)(a1);
}

unint64_t PairingCoordinatorStateManager.pairingError()()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  while (v2)
  {
    v5 = *v3++;
    v4 = v5;
    --v2;
    if (v5 >= 0x11)
    {
      MEMORY[0x24C236EC0](v4);
      return v4;
    }
  }

  return 0;
}

void *PairingCoordinatorStateManager.deinit()
{

  outlined consume of PairingCoordinatorState(*(v0 + 128));
  outlined consume of (@escaping @callee_guaranteed @async (@in_guaranteed PairingCoordinatorState) -> ())?(*(v0 + 136), *(v0 + 144));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PairingCoordinatorStateManager.__deallocating_deinit()
{

  outlined consume of PairingCoordinatorState(*(v0 + 128));
  outlined consume of (@escaping @callee_guaranteed @async (@in_guaranteed PairingCoordinatorState) -> ())?(*(v0 + 136), *(v0 + 144));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for StateManager.setNextState(_:input:) in conformance PairingCoordinatorStateManager(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of PairingValidator.ack(_:);

  return specialized PairingCoordinatorStateManager.setNextState(_:input:)(a1);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      outlined copy of PairingCoordinatorState(v9);
      v10 = a1(&v12);
      outlined consume of PairingCoordinatorState(v12);
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static PairingCoordinatorState.== infix(_:_:)(&v5, &v4) & 1;
}

uint64_t specialized PairingCoordinatorStateManager.setNextState(_:input:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  return MEMORY[0x2822009F8](specialized PairingCoordinatorStateManager.setNextState(_:input:), v1, 0);
}

uint64_t specialized PairingCoordinatorStateManager.setNextState(_:input:)()
{
  v65 = v0;
  v2 = v0[12];
  v1 = v0[13];
  swift_beginAccess();
  v64 = *(v2 + 128);
  v62 = v1;
  outlined copy of PairingCoordinatorState(v64);
  LOBYTE(v1) = specialized static PairingCoordinatorState.== infix(_:_:)(&v64, &v62);
  outlined consume of PairingCoordinatorState(v64);
  if (v1)
  {
    goto LABEL_155;
  }

  v3 = *(v2 + 128);
  v4 = v0[13];
  switch(v3)
  {
    case 0uLL:
      if (v4 == 15)
      {
        v7 = 0;
        goto LABEL_99;
      }

      if (v4 != 1)
      {
        goto LABEL_146;
      }

      outlined consume of PairingCoordinatorState(0);
      v5 = 1;
      goto LABEL_182;
    case 1uLL:
      if (v4 > 0x10)
      {
        goto LABEL_125;
      }

      if (((1 << v4) & 0x17EF8) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 8)
      {
        v46 = 1;
        goto LABEL_195;
      }

      if (v4 == 15)
      {
        v7 = 1;
        goto LABEL_99;
      }

LABEL_125:
      if (v4 < 2)
      {
        goto LABEL_146;
      }

      if (v4 != 2)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 1;
        goto LABEL_203;
      }

      outlined consume of PairingCoordinatorState(1uLL);
      v4 = 2;
      v5 = 2;
      goto LABEL_182;
    case 2uLL:
      if (v4 > 0x10)
      {
        goto LABEL_100;
      }

      if (((1 << v4) & 0x17FD0) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 5)
      {
        v13 = 2;
        goto LABEL_193;
      }

      if (v4 == 15)
      {
        v7 = 2;
        goto LABEL_99;
      }

LABEL_100:
      if (v4 < 3)
      {
        goto LABEL_146;
      }

      if (v4 != 3)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 2;
        goto LABEL_203;
      }

      v14 = 2;
      goto LABEL_120;
    case 3uLL:
      if (v4 > 7)
      {
        if (v4 > 13)
        {
          switch(v4)
          {
            case 14:
              v11 = 3;
              goto LABEL_181;
            case 15:
              v7 = 3;
              goto LABEL_99;
            case 16:
              goto LABEL_146;
          }
        }

        else
        {
          if ((v4 - 10) < 4)
          {
            goto LABEL_146;
          }

          if (v4 == 8)
          {
            v46 = 3;
            goto LABEL_195;
          }

          if (v4 == 9)
          {
            v10 = 3;
            goto LABEL_201;
          }
        }

        goto LABEL_202;
      }

      if (v4 <= 3)
      {
        if (v4 < 4)
        {
          goto LABEL_146;
        }

LABEL_202:
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 3;
        goto LABEL_203;
      }

      if (v4 > 5)
      {
        if (v4 != 6)
        {
          v43 = 3;
          goto LABEL_199;
        }

        v45 = 3;
LABEL_197:
        outlined consume of PairingCoordinatorState(v45);
        v5 = 6;
      }

      else
      {
        if (v4 != 4)
        {
          v13 = 3;
          goto LABEL_193;
        }

        outlined consume of PairingCoordinatorState(3uLL);
        v5 = 4;
      }

      goto LABEL_182;
    case 4uLL:
      if (v4 > 0x10)
      {
        goto LABEL_91;
      }

      if (((1 << v4) & 0x17BC0) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 10)
      {
        v8 = 4;
        goto LABEL_171;
      }

      if (v4 == 15)
      {
        v7 = 4;
        goto LABEL_99;
      }

LABEL_91:
      if (v4 < 5)
      {
        goto LABEL_146;
      }

      if (v4 != 5)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 4;
        goto LABEL_203;
      }

      outlined consume of PairingCoordinatorState(4uLL);
      v4 = 5;
      v5 = 5;
      goto LABEL_182;
    case 5uLL:
      if (v4 > 0x10)
      {
        goto LABEL_108;
      }

      if (((1 << v4) & 0x17FB0) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 6)
      {
        v45 = 5;
        goto LABEL_197;
      }

      if (v4 == 15)
      {
        v7 = 5;
        goto LABEL_99;
      }

LABEL_108:
      if (v4 < 3)
      {
        goto LABEL_146;
      }

      if (v4 != 3)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 5;
        goto LABEL_203;
      }

      v14 = 5;
      goto LABEL_120;
    case 6uLL:
      if (v4 > 0x10)
      {
        goto LABEL_112;
      }

      if (((1 << v4) & 0x17F70) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 7)
      {
        v43 = 6;
LABEL_199:
        outlined consume of PairingCoordinatorState(v43);
        v5 = 7;
        goto LABEL_182;
      }

      if (v4 == 15)
      {
        v7 = 6;
        goto LABEL_99;
      }

LABEL_112:
      if (v4 < 3)
      {
        goto LABEL_146;
      }

      if (v4 != 3)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 6;
        goto LABEL_203;
      }

      v14 = 6;
      goto LABEL_120;
    case 7uLL:
      if (v4 > 0x10)
      {
        goto LABEL_104;
      }

      if (((1 << v4) & 0x17EF0) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 8)
      {
        v46 = 7;
LABEL_195:
        outlined consume of PairingCoordinatorState(v46);
        v5 = 8;
        goto LABEL_182;
      }

      if (v4 == 15)
      {
        v7 = 7;
        goto LABEL_99;
      }

LABEL_104:
      if (v4 < 3)
      {
        goto LABEL_146;
      }

      if (v4 != 3)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 7;
        goto LABEL_203;
      }

      v14 = 7;
      goto LABEL_120;
    case 8uLL:
      if (v4 > 0x10)
      {
        goto LABEL_116;
      }

      if (((1 << v4) & 0x17DF0) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 9)
      {
        v10 = 8;
LABEL_201:
        outlined consume of PairingCoordinatorState(v10);
        v5 = 9;
        goto LABEL_182;
      }

      if (v4 == 15)
      {
        v7 = 8;
        goto LABEL_99;
      }

LABEL_116:
      if (v4 < 3)
      {
        goto LABEL_146;
      }

      if (v4 != 3)
      {
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 8;
        goto LABEL_203;
      }

      v14 = 8;
LABEL_120:
      outlined consume of PairingCoordinatorState(v14);
      v4 = 3;
      goto LABEL_121;
    case 9uLL:
      if (v4 <= 10)
      {
        if (v4 < 0xA)
        {
          goto LABEL_146;
        }

        if (v4 == 10)
        {
          v8 = 9;
          goto LABEL_171;
        }

LABEL_143:
        MEMORY[0x24C236EC0](v0[13]);
        v47 = 9;
        goto LABEL_203;
      }

      if (v4 <= 14)
      {
        if ((v4 - 12) < 3)
        {
          goto LABEL_146;
        }

        if (v4 == 11)
        {
          v12 = 9;
          goto LABEL_179;
        }

        goto LABEL_143;
      }

      if (v4 != 15)
      {
        if (v4 == 16)
        {
          goto LABEL_146;
        }

        goto LABEL_143;
      }

      v7 = 9;
      goto LABEL_99;
    case 0xAuLL:
      if (v4 <= 5)
      {
        if (v4 < 5)
        {
          goto LABEL_146;
        }

        if (v4 != 5)
        {
LABEL_136:
          MEMORY[0x24C236EC0](v0[13]);
          v47 = 10;
          goto LABEL_203;
        }

        v13 = 10;
LABEL_193:
        outlined consume of PairingCoordinatorState(v13);
        v5 = 5;
        goto LABEL_182;
      }

      if (v4 < 11)
      {
        goto LABEL_146;
      }

      if (v4 <= 13)
      {
        if (v4 == 11)
        {
          v12 = 10;
LABEL_179:
          outlined consume of PairingCoordinatorState(v12);
          v5 = 11;
        }

        else
        {
          if (v4 != 12)
          {
            goto LABEL_146;
          }

          v48 = 10;
LABEL_176:
          outlined consume of PairingCoordinatorState(v48);
          v5 = 12;
        }

        goto LABEL_182;
      }

      if (v4 == 14)
      {
        v11 = 10;
LABEL_181:
        outlined consume of PairingCoordinatorState(v11);
        v5 = 14;
        goto LABEL_182;
      }

      if (v4 != 15)
      {
        if (v4 == 16)
        {
          goto LABEL_146;
        }

        goto LABEL_136;
      }

      v7 = 10;
      goto LABEL_99;
    case 0xBuLL:
      if (v4 < 0xA)
      {
        goto LABEL_146;
      }

      if (v4 > 0x10)
      {
        goto LABEL_160;
      }

      if (((1 << v4) & 0x16800) != 0)
      {
        goto LABEL_146;
      }

      if (v4 == 12)
      {
        v48 = 11;
        goto LABEL_176;
      }

      if (v4 == 15)
      {
        v7 = 11;
        goto LABEL_99;
      }

LABEL_160:
      if (v4 == 10)
      {
        v8 = 11;
        goto LABEL_171;
      }

      MEMORY[0x24C236EC0](v0[13]);
      v47 = 11;
LABEL_203:
      outlined consume of PairingCoordinatorState(v47);
      outlined consume of PairingCoordinatorState(v4);
      v60 = *(v2 + 128);
      *(v2 + 128) = v4;
      MEMORY[0x24C236EC0](v4);
      v44 = v60;
      goto LABEL_183;
    case 0xCuLL:
      if (v4 < 0xD)
      {
        goto LABEL_146;
      }

      if (v4 > 14)
      {
        if (v4 != 15)
        {
          if (v4 == 16)
          {
            goto LABEL_146;
          }

          goto LABEL_163;
        }

        v7 = 12;
LABEL_99:
        outlined consume of PairingCoordinatorState(v7);
        v5 = 15;
      }

      else
      {
        if (v4 != 13)
        {
          if (v4 == 14)
          {
            goto LABEL_146;
          }

LABEL_163:
          MEMORY[0x24C236EC0](v0[13]);
          outlined consume of PairingCoordinatorState(0xCuLL);
          outlined consume of PairingCoordinatorState(v4);
          v44 = *(v2 + 128);
          *(v2 + 128) = 13;
          goto LABEL_183;
        }

        outlined consume of PairingCoordinatorState(0xCuLL);
        v5 = 13;
      }

      goto LABEL_182;
    case 0xDuLL:
      if (v4 != 14)
      {
        goto LABEL_146;
      }

      v11 = 13;
      goto LABEL_181;
    case 0xEuLL:
      if (v4 != 16)
      {
        goto LABEL_146;
      }

      v6 = 14;
      goto LABEL_57;
    case 0xFuLL:
      if (v4 != 2)
      {
        goto LABEL_146;
      }

      v9 = 15;
      goto LABEL_140;
    case 0x10uLL:
      outlined copy of PairingCoordinatorState(v0[13]);
      outlined consume of PairingCoordinatorState(0x10uLL);
      outlined consume of PairingCoordinatorState(v4);
      goto LABEL_155;
    default:
      if (v4 <= 9)
      {
        if (v4 == 2)
        {
          MEMORY[0x24C236EC0](*(v2 + 128));
          v9 = v3;
LABEL_140:
          outlined consume of PairingCoordinatorState(v9);
          v5 = 2;
          goto LABEL_182;
        }

        if (v4 == 3)
        {
          MEMORY[0x24C236EC0](*(v2 + 128));
          outlined consume of PairingCoordinatorState(v3);
LABEL_121:
          v5 = 3;
          goto LABEL_182;
        }

LABEL_146:
        outlined copy of PairingCoordinatorState(v0[13]);
        outlined copy of PairingCoordinatorState(v3);
        outlined consume of PairingCoordinatorState(v3);
        outlined consume of PairingCoordinatorState(v4);
        if (one-time initialization token for pairingCoordinator != -1)
        {
          swift_once();
        }

        v15 = v0[13];
        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.pairingCoordinator);
        outlined copy of PairingCoordinatorState(v15);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        outlined consume of PairingCoordinatorState(v15);
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v0[13];
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v64 = v21;
          *v20 = 136446466;
          v62 = *(v2 + 128);
          outlined copy of PairingCoordinatorState(v62);
          v22 = PairingCoordinatorState.description.getter();
          v24 = v23;
          outlined consume of PairingCoordinatorState(v62);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v64);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2082;
          v62 = v19;
          outlined copy of PairingCoordinatorState(v19);
          v26 = PairingCoordinatorState.description.getter();
          v28 = v27;
          outlined consume of PairingCoordinatorState(v62);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v64);

          *(v20 + 14) = v29;
          _os_log_impl(&dword_24AF48000, v17, v18, "Unsupported state transition: %{public}s -> %{public}s.", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C237030](v21, -1, -1);
          MEMORY[0x24C237030](v20, -1, -1);
        }

        v31 = v0[12];
        v30 = v0[13];
        v64 = *(v2 + 128);
        v62 = PairingCoordinatorState.description.getter();
        v63 = v32;
        MEMORY[0x24C236810](540945696, 0xE400000000000000);
        v64 = v30;
        v33 = PairingCoordinatorState.description.getter();
        MEMORY[0x24C236810](v33);

        MEMORY[0x24C236810](46, 0xE100000000000000);
        v34 = v62;
        v35 = v63;
        swift_beginAccess();
        v36 = *(v31 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + 112) = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
          *(v31 + 112) = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
        }

        *(v36 + 2) = v39 + 1;
        v40 = &v36[16 * v39];
        *(v40 + 4) = v34;
        *(v40 + 5) = v35;
        *(v31 + 112) = v36;
        swift_endAccess();
        goto LABEL_155;
      }

      if (v4 == 10)
      {
        MEMORY[0x24C236EC0](*(v2 + 128));
        v8 = v3;
LABEL_171:
        outlined consume of PairingCoordinatorState(v8);
        v5 = 10;
        goto LABEL_182;
      }

      if (v4 == 14)
      {
        MEMORY[0x24C236EC0](*(v2 + 128));
        v11 = v3;
        goto LABEL_181;
      }

      if (v4 != 16)
      {
        goto LABEL_146;
      }

      MEMORY[0x24C236EC0](*(v2 + 128));
      v6 = v3;
LABEL_57:
      outlined consume of PairingCoordinatorState(v6);
      v5 = 16;
LABEL_182:
      outlined consume of PairingCoordinatorState(v5);
      v44 = *(v2 + 128);
      *(v2 + 128) = v4;
LABEL_183:
      v49 = v0[12];
      outlined consume of PairingCoordinatorState(v44);
      v50 = *(v2 + 128);
      swift_beginAccess();
      v51 = *(v49 + 120);
      outlined copy of PairingCoordinatorState(v50);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 120) = v51;
      if ((v52 & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
        *(v49 + 120) = v51;
      }

      v54 = *(v51 + 2);
      v53 = *(v51 + 3);
      if (v54 >= v53 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51);
      }

      v55 = v0[12];
      *(v51 + 2) = v54 + 1;
      *&v51[8 * v54 + 32] = v50;
      *(v49 + 120) = v51;
      swift_endAccess();
      v56 = *(v55 + 136);
      v0[14] = v56;
      if (v56)
      {
        v57 = *(v0[12] + 144);
        v0[15] = v57;
        v58 = *(v2 + 128);
        v0[11] = v58;
        outlined copy of (@escaping @callee_guaranteed @async (@in_guaranteed PairingCoordinatorState) -> ())?(v56, v57);
        outlined copy of PairingCoordinatorState(v58);
        v61 = (v56 + *v56);
        v59 = swift_task_alloc();
        v0[16] = v59;
        *v59 = v0;
        v59[1] = specialized PairingCoordinatorStateManager.setNextState(_:input:);

        return v61(v0 + 11);
      }

LABEL_155:
      v41 = v0[1];

      return v41();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v6 = *v0;

  outlined consume of (@escaping @callee_guaranteed @async (@in_guaranteed PairingCoordinatorState) -> ())?(v3, v2);
  outlined consume of PairingCoordinatorState(*(v1 + 88));
  v4 = *(v6 + 8);

  return v4();
}

unint64_t instantiation function for generic protocol witness table for PairingCoordinatorStateManager(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type PairingCoordinatorStateManager and conformance PairingCoordinatorStateManager(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PairingCoordinatorStateManager and conformance PairingCoordinatorStateManager(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type PairingCoordinatorStateManager and conformance PairingCoordinatorStateManager;
  if (!lazy protocol witness table cache variable for type PairingCoordinatorStateManager and conformance PairingCoordinatorStateManager)
  {
    type metadata accessor for PairingCoordinatorStateManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingCoordinatorStateManager and conformance PairingCoordinatorStateManager);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for StateManagerError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StateManagerError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of StateManager.setNextState(_:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of PairingValidator.ack(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PairingCoordinatorStateManager.setNextState(_:input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 392) + **(*v3 + 392));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v10(a1, a2, a3);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @async (@in_guaranteed PairingCoordinatorState) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for PairingContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for PairingContext;
  if (!type metadata singleton initialization cache for PairingContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PairingContext(uint64_t a1)
{
  type metadata accessor for AccessoryType?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (AccessoryType, mainAddress: MACAddress)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (AccessoryType, mainAddress: MACAddress, pairingToken: Data?, forceRepair: Bool)(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AccessoryType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessoryType?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13FindMyPairing13AccessoryType_pMd, &_s13FindMyPairing13AccessoryType_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AccessoryType?);
    }
  }
}

void type metadata accessor for (AccessoryType, mainAddress: MACAddress)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AccessoryType, mainAddress: MACAddress))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13FindMyPairing13AccessoryType_pMd, &_s13FindMyPairing13AccessoryType_pMR);
    type metadata accessor for MACAddress();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessoryType, mainAddress: MACAddress));
    }
  }
}

void type metadata accessor for (AccessoryType, mainAddress: MACAddress, pairingToken: Data?, forceRepair: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AccessoryType, mainAddress: MACAddress, pairingToken: Data?, forceRepair: Bool))
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13FindMyPairing13AccessoryType_pMd, &_s13FindMyPairing13AccessoryType_pMR);
    type metadata accessor for MACAddress();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (AccessoryType, mainAddress: MACAddress, pairingToken: Data?, forceRepair: Bool));
    }
  }
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.default);
  __swift_project_value_buffer(v0, static Logger.default);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.default.unsafeMutableAddressor()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.default);
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.default);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AccessoryDependencies.init(coordinator:stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for AccessoryDependencies(0) + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
  return Date.init()();
}

uint64_t type metadata accessor for AccessoryDependencies(uint64_t a1)
{
  result = type metadata singleton initialization cache for AccessoryDependencies;
  if (!type metadata singleton initialization cache for AccessoryDependencies)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessoryDependencies.stream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryDependencies(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMd, &_sScSy10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AccessoryDependencies.pairingStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryDependencies(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void type metadata completion function for AccessoryDependencies(uint64_t a1)
{
  type metadata accessor for PairingCoordinator();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for PairingCoordinator()
{
  result = lazy cache variable for type metadata for PairingCoordinator;
  if (!lazy cache variable for type metadata for PairingCoordinator)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PairingCoordinator);
  }

  return result;
}

void type metadata accessor for AsyncStream<(Transaction, PairingCoordinatorState)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<(Transaction, PairingCoordinatorState)>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtMd, &_s10FindMyBase11TransactionC_0aB7Pairing0E16CoordinatorStateOtMR);
    v1 = type metadata accessor for AsyncStream();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<(Transaction, PairingCoordinatorState)>);
    }
  }
}

uint64_t PairingExecutor._pair(peripheral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v6 = type metadata accessor for CancellationError();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for PairingExecutorState(0);
  v4[21] = swift_task_alloc();
  v4[22] = *(a3 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v8;
  v4[24] = v7;

  return MEMORY[0x2822009F8](PairingExecutor._pair(peripheral:), v8, v7);
}

uint64_t PairingExecutor._pair(peripheral:)()
{
  v36 = v0;
  if (PairingExecutor._canContinue.getter(v0[14], v0[15]))
  {
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v1 = v0[13];
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pairingExecutor);
    outlined init with copy of PairingEligibilityInfo(v1, (v0 + 2));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35 = v6;
      *v5 = 136315138;
      outlined init with copy of PairingEligibilityInfo((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
      v7 = String.init<A>(describing:)();
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v35);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_24AF48000, v3, v4, "Start pairing loop for: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x24C237030](v6, -1, -1);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    }

    v23 = v0[21];
    v22 = v0[22];
    v34 = v0[15];
    v24 = v0[14];
    *v23 = xmmword_24AFB0D40;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    swift_storeEnumTagMultiPayload();
    v25 = *(v22 + 80);
    v0[25] = v25;
    v0[26] = (v22 + 80) & 0xFFFFFFFFFFFFLL | 0x1CDD000000000000;
    v25(v23, v24, v22);
    outlined destroy of PairingExecutorState(v23, type metadata accessor for PairingExecutorState);
    v33 = (*(v34 + 136) + **(v34 + 136));
    v26 = swift_task_alloc();
    v0[27] = v26;
    *v26 = v0;
    v26[1] = PairingExecutor._pair(peripheral:);
    v27 = v0[15];
    v29 = v0[13];
    v28 = v0[14];

    return v33(v29, v28, v27);
  }

  else
  {
    lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
    v11 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v0[29] = v11;
    v0[12] = v11;
    MEMORY[0x24C236EC0](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      MEMORY[0x24C236EB0](v11);
      if (one-time initialization token for pairingExecutor != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.pairingExecutor);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_24AF48000, v14, v15, "Pairing cancelled", v16, 2u);
        MEMORY[0x24C237030](v16, -1, -1);
      }

      v18 = v0[18];
      v17 = v0[19];
      v19 = v0[17];

      (*(v18 + 8))(v17, v19);
      MEMORY[0x24C236EB0](v0[12]);

      v20 = v0[1];

      return v20();
    }

    else
    {
      MEMORY[0x24C236EB0](v0[12]);
      v30 = swift_task_alloc();
      v0[30] = v30;
      *v30 = v0;
      v30[1] = PairingExecutor._pair(peripheral:);
      v31 = v0[15];
      v32 = v0[14];

      return PairingExecutor._handleFailure(error:)(v11, v32, v31);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = PairingExecutor._pair(peripheral:);
  }

  else
  {
    v5 = PairingExecutor._pair(peripheral:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  if (PairingExecutor._canContinue.getter(v0[14], v0[15]))
  {
    v1 = v0[25];
    v3 = v0[21];
    v2 = v0[22];
    v4 = v0[14];
    swift_storeEnumTagMultiPayload();
    v1(v3, v4, v2);
    outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
LABEL_9:

    v14 = v0[1];

    return v14();
  }

  lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();
  v0[29] = v5;
  v0[12] = v5;
  MEMORY[0x24C236EC0](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v5);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pairingExecutor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AF48000, v8, v9, "Pairing cancelled", v10, 2u);
      MEMORY[0x24C237030](v10, -1, -1);
    }

    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];

    (*(v12 + 8))(v11, v13);
    MEMORY[0x24C236EB0](v0[12]);
    goto LABEL_9;
  }

  MEMORY[0x24C236EB0](v0[12]);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = PairingExecutor._pair(peripheral:);
  v17 = v0[15];
  v18 = v0[14];

  return PairingExecutor._handleFailure(error:)(v5, v18, v17);
}

{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](PairingExecutor._pair(peripheral:), v3, v2);
}

{
  MEMORY[0x24C236EB0](*(v0 + 232));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[28];
  v0[12] = v1;
  v0[29] = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pairingExecutor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "Pairing cancelled", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[17];

    (*(v7 + 8))(v6, v8);
    MEMORY[0x24C236EB0](v0[12]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    MEMORY[0x24C236EB0](v0[12]);
    v11 = swift_task_alloc();
    v0[30] = v11;
    *v11 = v0;
    v11[1] = PairingExecutor._pair(peripheral:);
    v12 = v0[15];
    v13 = v0[14];

    return PairingExecutor._handleFailure(error:)(v1, v13, v12);
  }
}

uint64_t PairingExecutorState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PairingExecutorState.RecordCreation(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PairingExecutorState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PairingExecutorState(v1, v10, type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload != 10)
        {
          return 0x75727265746E692ELL;
        }

        return 0xD000000000000013;
      }

      return 0xD000000000000019;
    }

    if (EnumCaseMultiPayload == 6)
    {
      outlined destroy of PairingExecutorState(v10, type metadata accessor for PairingExecutorState);
      return 0x64656C6961662ELL;
    }

    if (EnumCaseMultiPayload == 7)
    {
      return 0x656C64692ELL;
    }

    return 0xD000000000000018;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with take of PairingExecutorState.RecordCreation(v10, v7, type metadata accessor for PairingExecutorState.RecordCreation);
      outlined init with copy of PairingExecutorState(v7, v5, type metadata accessor for PairingExecutorState.RecordCreation);
      v17 = type metadata accessor for UUID();
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      outlined destroy of PairingExecutorState(v7, type metadata accessor for PairingExecutorState.RecordCreation);
      if (v18 == 1)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        outlined destroy of PairingExecutorState(v5, type metadata accessor for PairingExecutorState.RecordCreation);
        return 0xD00000000000001CLL;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        return 0x676E69726961702ELL;
      }

      if (*v10 > 1u)
      {
        if (*v10 == 2)
        {
          return 0xD000000000000011;
        }

        return 0xD000000000000010;
      }

      if (*v10)
      {
        return 0x646E616D6D6F632ELL;
      }

      else
      {
        return 0xD000000000000017;
      }
    }
  }

  if (!EnumCaseMultiPayload)
  {
    if (*v10)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *v10;
    v13 = *(v10 + 1);
    v14 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v13 <= 3)
    {
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          outlined consume of PairingExecutorState.InitiatePairing?(v12, 2uLL, v14, v15);
          return 0xD000000000000010;
        }
      }

      else if (v13)
      {
        if (v13 == 1)
        {
          outlined consume of PairingExecutorState.InitiatePairing?(v12, 1uLL, v14, v15);
          return 0xD000000000000012;
        }

LABEL_69:
        outlined consume of PairingExecutorState.InitiatePairing?(v12, v13, v14, v15);
        return 0x746C757365722ELL;
      }

      outlined consume of PairingExecutorState.InitiatePairing?(v12, v13, v14, v15);
      return 0xD000000000000011;
    }

    if (v13 > 5)
    {
      switch(v13)
      {
        case 6:
          outlined consume of PairingExecutorState.InitiatePairing?(v12, 6uLL, v14, v15);
          return 0xD00000000000001ELL;
        case 7:
          outlined consume of PairingExecutorState.InitiatePairing?(v12, 7uLL, v14, v15);
          return 0xD00000000000001FLL;
        case 8:
          return 0xD000000000000010;
      }

      goto LABEL_69;
    }

    if (v13 != 4)
    {
      outlined consume of PairingExecutorState.InitiatePairing?(v12, 5uLL, v14, v15);
      return 0xD000000000000014;
    }

    outlined consume of PairingExecutorState.InitiatePairing?(v12, 4uLL, v14, v15);
    return 0xD000000000000013;
  }

  v19 = *v10;
  if (v19 <= 3)
  {
    if (*v10 > 1u)
    {
      if (v19 == 2)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return 0xD00000000000001CLL;
      }
    }

    if (*v10)
    {
      return 0xD000000000000019;
    }

    return 0xD000000000000018;
  }

  if (*v10 > 5u)
  {
    if (v19 != 6)
    {
      if (v19 == 7)
      {
        return 0xD00000000000001ALL;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    return 0xD000000000000019;
  }

  if (v19 == 4)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t PairingExecutor._pairingAck()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = type metadata accessor for CancellationError();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PairingExecutorState(0);
  v3[10] = swift_task_alloc();
  v3[11] = *(a2 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v7;
  v3[13] = v6;

  return MEMORY[0x2822009F8](PairingExecutor._pairingAck(), v7, v6);
}

uint64_t PairingExecutor._pairingAck()()
{
  if (PairingExecutor._canContinue.getter(v0[3], v0[4]))
  {
    v2 = v0[10];
    v1 = v0[11];
    v32 = v0[4];
    v3 = v0[3];
    *v2 = 0;
    swift_storeEnumTagMultiPayload();
    v4 = *(v1 + 80);
    v0[14] = v4;
    v0[15] = (v1 + 80) & 0xFFFFFFFFFFFFLL | 0x1CDD000000000000;
    v4(v2, v3, v1);
    outlined destroy of PairingExecutorState(v2, type metadata accessor for PairingExecutorState);
    v31 = (*(v32 + 168) + **(v32 + 168));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = PairingExecutor._pairingAck();
    v6 = v0[4];
    v7 = v0[3];

    return v31(v7, v6);
  }

  else
  {
    lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
    v9 = swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v0[2] = v9;
    MEMORY[0x24C236EC0](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      MEMORY[0x24C236EB0](v9);
      if (one-time initialization token for pairingExecutor != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.pairingExecutor);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_24AF48000, v12, v13, "Complete pairing was canceled", v14, 2u);
        MEMORY[0x24C237030](v14, -1, -1);
      }

      v15 = swift_allocError();
      v0[18] = v15;
      *v16 = 0;
      v17 = swift_task_alloc();
      v0[19] = v17;
      *v17 = v0;
      v17[1] = PairingExecutor._pairingAck();
      v18 = v0[4];
      v19 = v0[3];

      return PairingExecutor._handleFailure(error:)(v15, v19, v18);
    }

    else
    {
      MEMORY[0x24C236EB0](v0[2]);
      if (one-time initialization token for pairingExecutor != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.pairingExecutor);
      MEMORY[0x24C236EC0](v9);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      MEMORY[0x24C236EB0](v9);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        MEMORY[0x24C236EC0](v9);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_24AF48000, v21, v22, "Pairing ack failed: %{public}@. Ignoring failure.", v23, 0xCu);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C237030](v24, -1, -1);
        MEMORY[0x24C237030](v23, -1, -1);
        MEMORY[0x24C236EB0](v9);
      }

      else
      {

        MEMORY[0x24C236EB0](v9);
      }

      v27 = v0[10];
      v26 = v0[11];
      v28 = v0[4];
      v29 = v0[3];
      swift_storeEnumTagMultiPayload();
      (*(v26 + 80))(v27, v29, v26);
      outlined destroy of PairingExecutorState(v27, type metadata accessor for PairingExecutorState);
      (*(v28 + 32))(v29, v28);
      AsyncStreamProvider.finish()();

      v30 = v0[1];

      return v30();
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = PairingExecutor._pairingAck();
  }

  else
  {
    v5 = PairingExecutor._pairingAck();
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[3];
  *v3 = 1;
  swift_storeEnumTagMultiPayload();
  v1(v3, v4, v2);
  outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[4];
  v8 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v5 + 80))(v6, v8, v5);
  outlined destroy of PairingExecutorState(v6, type metadata accessor for PairingExecutorState);
  (*(v7 + 32))(v8, v7);
  AsyncStreamProvider.finish()();

  v9 = v0[1];

  return v9();
}

{
  v1 = *v0;
  v2 = *(*v0 + 144);

  MEMORY[0x24C236EB0](v2);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](PairingExecutor._pairingAck(), v4, v3);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);
  MEMORY[0x24C236EB0](v0[2]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[17];
  v0[2] = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pairingExecutor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "Complete pairing was canceled", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
    v6 = swift_allocError();
    v0[18] = v6;
    *v7 = 0;
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = PairingExecutor._pairingAck();
    v9 = v0[4];
    v10 = v0[3];

    return PairingExecutor._handleFailure(error:)(v6, v10, v9);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[2]);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pairingExecutor);
    MEMORY[0x24C236EC0](v1);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    MEMORY[0x24C236EB0](v1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      MEMORY[0x24C236EC0](v1);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_24AF48000, v13, v14, "Pairing ack failed: %{public}@. Ignoring failure.", v15, 0xCu);
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C237030](v16, -1, -1);
      MEMORY[0x24C237030](v15, -1, -1);
      MEMORY[0x24C236EB0](v1);
    }

    else
    {

      MEMORY[0x24C236EB0](v1);
    }

    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[4];
    v21 = v0[3];
    swift_storeEnumTagMultiPayload();
    (*(v18 + 80))(v19, v21, v18);
    outlined destroy of PairingExecutorState(v19, type metadata accessor for PairingExecutorState);
    (*(v20 + 32))(v21, v20);
    AsyncStreamProvider.finish()();

    v22 = v0[1];

    return v22();
  }
}

BOOL PairingExecutor.initiatePairingFinished.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PairingExecutorState(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(a2 + 8) + 56))(a1);
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  v11 = *(v9 + 16);
  do
  {
    v12 = v10;
    if (v11 == v10)
    {
      break;
    }

    ++v10;
  }

  while ((specialized static PairingExecutorState.== infix(_:_:)(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v8) & 1) == 0);

  outlined destroy of PairingExecutorState(v8, type metadata accessor for PairingExecutorState);
  return v11 != v12;
}

uint64_t PairingExecutor._completePairing(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v6 = type metadata accessor for CancellationError();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for PairingExecutorState(0);
  v4[21] = swift_task_alloc();
  v4[22] = *(a3 + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v9;
  v4[24] = v8;

  return MEMORY[0x2822009F8](PairingExecutor._completePairing(with:), v9, v8);
}

uint64_t PairingExecutor._completePairing(with:)()
{
  v1 = v0[10];
  v2 = v0[9];
  outlined init with copy of PairingConfigurationType?(v0[8], (v0 + 2));
  (*(v1 + 80))(v0 + 2, v2, v1);
  if (PairingExecutor._canContinue.getter(v2, v1))
  {
    v4 = v0[21];
    v3 = v0[22];
    v25 = v0[10];
    v5 = v0[9];
    *v4 = 8;
    swift_storeEnumTagMultiPayload();
    v6 = *(v3 + 80);
    v0[25] = v6;
    v0[26] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0x1CDD000000000000;
    v6(v4, v5, v3);
    outlined destroy of PairingExecutorState(v4, type metadata accessor for PairingExecutorState);
    v24 = (*(v25 + 144) + **(v25 + 144));
    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = PairingExecutor._completePairing(with:);
    v8 = v0[10];
    v9 = v0[9];

    return v24(v9, v8);
  }

  else
  {
    lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
    v11 = swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v0[37] = v11;
    v0[7] = v11;
    MEMORY[0x24C236EC0](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      MEMORY[0x24C236EB0](v11);
      if (one-time initialization token for pairingExecutor != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.pairingExecutor);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_24AF48000, v14, v15, "Complete pairing was canceled", v16, 2u);
        MEMORY[0x24C237030](v16, -1, -1);
      }

      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[12];

      (*(v18 + 8))(v17, v19);
      MEMORY[0x24C236EB0](v0[7]);

      v20 = v0[1];

      return v20();
    }

    else
    {
      MEMORY[0x24C236EB0](v0[7]);
      v21 = swift_task_alloc();
      v0[38] = v21;
      *v21 = v0;
      v21[1] = PairingExecutor._completePairing(with:);
      v22 = v0[10];
      v23 = v0[9];

      return PairingExecutor._handleFailure(error:)(v11, v23, v22);
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = PairingExecutor._completePairing(with:);
  }

  else
  {
    v5 = PairingExecutor._completePairing(with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[16];
  v5 = v0[17];
  v14 = v0[10];
  v6 = v0[9];
  v7 = *(v5 + 56);
  v0[29] = v7;
  v0[30] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 1, v4);
  swift_storeEnumTagMultiPayload();
  v1(v3, v6, v2);
  outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
  v13 = (*(v14 + 152) + **(v14 + 152));
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = PairingExecutor._completePairing(with:);
  v9 = v0[19];
  v10 = v0[10];
  v11 = v0[9];

  return v13(v9, v11, v10);
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = PairingExecutor._completePairing(with:);
  }

  else
  {
    v5 = PairingExecutor._completePairing(with:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v54 = v0;
  if (one-time initialization token for pairingExecutor != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.pairingExecutor);
  v50 = *(v3 + 16);
  v50(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v15 = *(v8 + 8);
    v15(v9, v10);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v53);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_24AF48000, v5, v6, "Created beacon: %{private,mask.hash}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x24C237030](v49, -1, -1);
    MEMORY[0x24C237030](v11, -1, -1);
  }

  else
  {

    v15 = *(v8 + 8);
    v15(v9, v10);
  }

  v0[33] = v15;
  v17 = v0[29];
  v48 = v0[25];
  v18 = v0[21];
  v47 = v0[22];
  v19 = v0[19];
  v20 = v0[15];
  v21 = v0[16];
  v22 = v0[10];
  v46 = v0[9];
  v50(v20, v19, v21);
  v17(v20, 0, 1, v21);
  (*(v22 + 112))(v20, v46);
  v50(v18, v19, v21);
  v17(v18, 0, 1, v21);
  swift_storeEnumTagMultiPayload();
  v48(v18, v46, v47);
  outlined destroy of PairingExecutorState(v18, type metadata accessor for PairingExecutorState);
  if (PairingExecutor._canContinue.getter(v46, v22))
  {
    v23 = v0[25];
    v25 = v0[21];
    v24 = v0[22];
    v52 = v0[10];
    v26 = v0[9];
    *v25 = 3;
    swift_storeEnumTagMultiPayload();
    v23(v25, v26, v24);
    outlined destroy of PairingExecutorState(v25, type metadata accessor for PairingExecutorState);
    v51 = (*(v52 + 160) + **(v52 + 160));
    v27 = swift_task_alloc();
    v0[34] = v27;
    *v27 = v0;
    v27[1] = PairingExecutor._completePairing(with:);
    v28 = v0[10];
    v29 = v0[9];

    return v51(v29, v28);
  }

  else
  {
    v31 = v0[19];
    v32 = v0[16];
    lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
    v33 = swift_allocError();
    *v34 = 0;
    swift_willThrow();
    v15(v31, v32);
    v0[37] = v33;
    v0[7] = v33;
    MEMORY[0x24C236EC0](v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      MEMORY[0x24C236EB0](v33);
      if (one-time initialization token for pairingExecutor != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v45, static Logger.pairingExecutor);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24AF48000, v35, v36, "Complete pairing was canceled", v37, 2u);
        MEMORY[0x24C237030](v37, -1, -1);
      }

      v39 = v0[13];
      v38 = v0[14];
      v40 = v0[12];

      (*(v39 + 8))(v38, v40);
      MEMORY[0x24C236EB0](v0[7]);

      v41 = v0[1];

      return v41();
    }

    else
    {
      MEMORY[0x24C236EB0](v0[7]);
      v42 = swift_task_alloc();
      v0[38] = v42;
      *v42 = v0;
      v42[1] = PairingExecutor._completePairing(with:);
      v43 = v0[10];
      v44 = v0[9];

      return PairingExecutor._handleFailure(error:)(v33, v44, v43);
    }
  }
}

{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {
    v3 = v2[23];
    v4 = v2[24];

    return MEMORY[0x2822009F8](PairingExecutor._completePairing(with:), v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[36] = v5;
    *v5 = v2;
    v5[1] = PairingExecutor._completePairing(with:);
    v6 = v2[10];
    v7 = v2[9];

    return PairingExecutor._cleanUp()(v7, v6);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](PairingExecutor._completePairing(with:), v3, v2);
}

{
  v9 = v0[33];
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[9];
  swift_storeEnumTagMultiPayload();
  v1(v3, v6, v2);
  outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
  v9(v4, v5);

  v7 = v0[1];

  return v7();
}

{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](PairingExecutor._completePairing(with:), v3, v2);
}

{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[28];
  v0[7] = v1;
  v0[37] = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pairingExecutor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "Complete pairing was canceled", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];

    (*(v7 + 8))(v6, v8);
    MEMORY[0x24C236EB0](v0[7]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    MEMORY[0x24C236EB0](v0[7]);
    v11 = swift_task_alloc();
    v0[38] = v11;
    *v11 = v0;
    v11[1] = PairingExecutor._completePairing(with:);
    v12 = v0[10];
    v13 = v0[9];

    return PairingExecutor._handleFailure(error:)(v1, v13, v12);
  }
}

{
  v1 = v0[32];
  v0[7] = v1;
  v0[37] = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pairingExecutor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "Complete pairing was canceled", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];

    (*(v7 + 8))(v6, v8);
    MEMORY[0x24C236EB0](v0[7]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    MEMORY[0x24C236EB0](v0[7]);
    v11 = swift_task_alloc();
    v0[38] = v11;
    *v11 = v0;
    v11[1] = PairingExecutor._completePairing(with:);
    v12 = v0[10];
    v13 = v0[9];

    return PairingExecutor._handleFailure(error:)(v1, v13, v12);
  }
}

{
  (*(v0 + 264))(*(v0 + 152), *(v0 + 128));
  v1 = *(v0 + 280);
  *(v0 + 56) = v1;
  *(v0 + 296) = v1;
  MEMORY[0x24C236EC0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    MEMORY[0x24C236EB0](v1);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.pairingExecutor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24AF48000, v3, v4, "Complete pairing was canceled", v5, 2u);
      MEMORY[0x24C237030](v5, -1, -1);
    }

    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 96);

    (*(v7 + 8))(v6, v8);
    MEMORY[0x24C236EB0](*(v0 + 56));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    MEMORY[0x24C236EB0](*(v0 + 56));
    v11 = swift_task_alloc();
    *(v0 + 304) = v11;
    *v11 = v0;
    v11[1] = PairingExecutor._completePairing(with:);
    v12 = *(v0 + 80);
    v13 = *(v0 + 72);

    return PairingExecutor._handleFailure(error:)(v1, v13, v12);
  }
}

uint64_t PairingExecutor._pairingError()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingExecutorState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(a2 + 8) + 56))(a1);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      outlined init with copy of PairingExecutorState(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, type metadata accessor for PairingExecutorState);
      if (swift_getEnumCaseMultiPayload() == 6)
      {

        return *v7;
      }

      ++v11;
      result = outlined destroy of PairingExecutorState(v7, type metadata accessor for PairingExecutorState);
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t PairingExecutor._interruptPairing()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for PairingExecutorState(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = *(a2 + 8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](PairingExecutor._interruptPairing(), v6, v5);
}

uint64_t PairingExecutor._interruptPairing()()
{
  v1 = PairingExecutor._pairingError()(v0[2], v0[3]);
  v2 = v1;
  if (v1)
  {
    MEMORY[0x24C236EB0](v1);
  }

  v3 = v0[7];
  v4 = v0[6];
  (*(v0[8] + 32))(v0[2]);
  swift_storeEnumTagMultiPayload();
  v5 = specialized static PairingExecutorState.== infix(_:_:)(v3, v4);
  outlined destroy of PairingExecutorState(v4, type metadata accessor for PairingExecutorState);
  outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
  if (v2 || (v5 & 1) != 0)
  {
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.pairingExecutor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v2 == 0;
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      *(v16 + 4) = (v5 & 1) == 0;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v15;
      _os_log_impl(&dword_24AF48000, v13, v14, "Can't interrupt flow! isAlreadyInterrupted = %{BOOL}d, isError = %{BOOL}d.", v16, 0xEu);
      MEMORY[0x24C237030](v16, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
    v6 = swift_allocError();
    v0[9] = v6;
    *v7 = 0;
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = PairingExecutor._interruptPairing();
    v9 = v0[3];
    v10 = v0[2];

    return PairingExecutor._handleFailure(error:)(v6, v10, v9);
  }
}

{
  v1 = *(*v0 + 72);
  v4 = *v0;

  MEMORY[0x24C236EB0](v1);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PairingExecutorState.isPairingNotFailed.getter()
{
  v1 = type metadata accessor for PairingExecutorState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PairingExecutorState(v0, v3, type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 0xB)
    {
      if (((1 << EnumCaseMultiPayload) & 0x7B0) != 0)
      {
        return result;
      }

      if (EnumCaseMultiPayload == 6)
      {
        outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
        return 0;
      }

      if (EnumCaseMultiPayload == 11)
      {
        return 0;
      }
    }

LABEL_11:
    outlined destroy of PairingExecutorState(v3, type metadata accessor for PairingExecutorState);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = EnumCaseMultiPayload == 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t PairingExecutor.stream()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing0F13ExecutorStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing0F13ExecutorStateOGMR);
  type metadata accessor for PairingExecutorState(0);
  *(swift_allocObject() + 16) = xmmword_24AFB0430;
  (*(*(a2 + 8) + 32))(a1);
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t PairingExecutor.setState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PairingExecutorState(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *(a3 + 8);
  (*(v13 + 32))(a2, v13);
  v14 = specialized static PairingExecutorState.== infix(_:_:)(a1, v12);
  result = outlined destroy of PairingExecutorState(v12, type metadata accessor for PairingExecutorState);
  if ((v14 & 1) == 0)
  {
    outlined init with copy of PairingExecutorState(a1, v12, type metadata accessor for PairingExecutorState);
    (*(v13 + 40))(v12, a2, v13);
    outlined init with copy of PairingExecutorState(a1, v10, type metadata accessor for PairingExecutorState);
    v23 = (*(v13 + 72))(v24, a2, v13);
    v17 = v16;
    v18 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
      *v17 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      *v17 = v18;
    }

    v18[2] = v21 + 1;
    outlined init with take of PairingExecutorState.RecordCreation(v10, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, type metadata accessor for PairingExecutorState);
    v23(v24, 0);
    (*(a3 + 32))(a2, a3);
    AsyncStreamProvider.yield(value:transaction:)();
  }

  return result;
}

uint64_t PairingExecutor._canContinue.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingExecutorState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(a2 + 8) + 56))(a1);
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  v10 = *(v8 + 16);
  while (v10 != v9)
  {
    v11 = v9 + 1;
    v12 = specialized static PairingExecutorState.== infix(_:_:)(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v7);
    v9 = v11;
    if (v12)
    {

      outlined destroy of PairingExecutorState(v7, type metadata accessor for PairingExecutorState);
      return 0;
    }
  }

  outlined destroy of PairingExecutorState(v7, type metadata accessor for PairingExecutorState);
  if (PairingExecutor._pairingError()(a1, a2))
  {
    MEMORY[0x24C236EB0]();
    return 0;
  }

  return 1;
}

uint64_t Logger.pairingTime.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t PairingExecutor._handleFailure(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v6 = type metadata accessor for PairingExecutorState(0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = *(a3 + 8);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v8;
  v4[16] = v7;

  return MEMORY[0x2822009F8](PairingExecutor._handleFailure(error:), v8, v7);
}

uint64_t PairingExecutor._handleFailure(error:)()
{
  v34 = v0;
  v1 = v0[11];
  v2 = (*(v0[14] + 56))(v0[7]);
  swift_storeEnumTagMultiPayload();
  v3 = 0;
  v4 = *(v2 + 16);
  while (v4 != v3)
  {
    v5 = v3 + 1;
    v6 = specialized static PairingExecutorState.== infix(_:_:)(v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v3, v0[13]);
    v3 = v5;
    if (v6)
    {
      v7 = v0[13];

      outlined destroy of PairingExecutorState(v7, type metadata accessor for PairingExecutorState);
LABEL_7:
      if (one-time initialization token for pairingExecutor != -1)
      {
        swift_once();
      }

      v11 = v0[6];
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.pairingExecutor);
      MEMORY[0x24C236EC0](v11);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      MEMORY[0x24C236EB0](v11);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[6];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        MEMORY[0x24C236EC0](v15);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&dword_24AF48000, v13, v14, "Already handled error: %{public}@.", v16, 0xCu);
        outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C237030](v17, -1, -1);
        MEMORY[0x24C237030](v16, -1, -1);
      }

      v19 = v0[1];

      return v19();
    }
  }

  v8 = v0[8];
  v9 = v0[7];
  v10 = v0[13];

  outlined destroy of PairingExecutorState(v10, type metadata accessor for PairingExecutorState);
  if (PairingExecutor._pairingError()(v9, v8))
  {
    MEMORY[0x24C236EB0]();
    goto LABEL_7;
  }

  if (one-time initialization token for pairingExecutor != -1)
  {
    swift_once();
  }

  v21 = v0[6];
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.pairingExecutor);
  MEMORY[0x24C236EC0](v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  MEMORY[0x24C236EB0](v21);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[6];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000024AFAFDC0, &v33);
    *(v26 + 12) = 2114;
    MEMORY[0x24C236EC0](v25);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v29;
    *v27 = v29;
    _os_log_impl(&dword_24AF48000, v23, v24, "%s: %{public}@.", v26, 0x16u);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x24C237030](v28, -1, -1);
    MEMORY[0x24C237030](v26, -1, -1);
  }

  v30 = swift_task_alloc();
  v0[17] = v30;
  *v30 = v0;
  v30[1] = PairingExecutor._handleFailure(error:);
  v31 = v0[8];
  v32 = v0[7];

  return PairingExecutor._cleanUp()(v32, v31);
}

{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](PairingExecutor._handleFailure(error:), v3, v2);
}

{
  *(v0 + 32) = *(v0 + 48);
  MEMORY[0x24C236EC0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && (*(v0 + 25) & 1) == 0)
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 56);
    swift_storeEnumTagMultiPayload();
    (*(v12 + 80))(v13, v14, v12);
    outlined destroy of PairingExecutorState(v13, type metadata accessor for PairingExecutorState);
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = PairingExecutor._handleFailure(error:);
    v16 = *(v0 + 64);
    v17 = *(v0 + 56);

    return PairingExecutor._undoBeaconSavingIfNeeded()(v17, v16);
  }

  else
  {
    *(v0 + 40) = *(v0 + 48);
    MEMORY[0x24C236EC0]();
    if (swift_dynamicCast() && *(v0 + 24) == 1 && *(v0 + 16) > 1uLL)
    {
      v1 = *(v0 + 112);
      v2 = *(v0 + 96);
      v3 = *(v0 + 56);
      lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError();
      v4 = swift_allocError();
      *v5 = 1;
      *v2 = v4;
      swift_storeEnumTagMultiPayload();
      (*(v1 + 80))(v2, v3, v1);
    }

    else
    {
      v6 = *(v0 + 112);
      v2 = *(v0 + 96);
      v8 = *(v0 + 48);
      v7 = *(v0 + 56);
      *v2 = v8;
      swift_storeEnumTagMultiPayload();
      v9 = *(v6 + 80);
      MEMORY[0x24C236EC0](v8);
      v9(v2, v7, v6);
    }

    outlined destroy of PairingExecutorState(v2, type metadata accessor for PairingExecutorState);
    (*(*(v0 + 64) + 32))(*(v0 + 56));
    AsyncStreamProvider.finish()();

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](PairingExecutor._handleFailure(error:), v3, v2);
}

{
  (*(v0[8] + 32))(v0[7]);
  AsyncStreamProvider.finish()();

  v1 = v0[1];

  return v1();
}

uint64_t PairingExecutor._cleanUp()(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[25] = v5;
  v3[26] = v4;

  return MEMORY[0x2822009F8](PairingExecutor._cleanUp(), v5, v4);
}

uint64_t PairingExecutor._cleanUp()()
{
  v23 = v0;
  (*(*(v0 + 184) + 64))(*(v0 + 176));
  if (*(v0 + 80))
  {
    outlined init with take of Accessory((v0 + 56), v0 + 16);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v1, static Logger.pairingExecutor);
    outlined init with copy of PairingEligibilityInfo(v0 + 16, v0 + 96);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v22 = v5;
      *v4 = 136315138;
      outlined init with copy of PairingEligibilityInfo(v0 + 96, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing14PeripheralType_pMd, &_s13FindMyPairing14PeripheralType_pMR);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v22);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_24AF48000, v2, v3, "CleanUp: unpairing %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x24C237030](v5, -1, -1);
      MEMORY[0x24C237030](v4, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    v16 = (*(*(v0 + 184) + 48))(*(v0 + 176));
    v18 = v17;
    *(v0 + 224) = v16;
    ObjectType = swift_getObjectType();
    v21 = (*(v18 + 88) + **(v18 + 88));
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v20[1] = PairingExecutor._cleanUp();

    return v21(v0 + 16, ObjectType, v18);
  }

  else
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0 + 56, &_s13FindMyPairing14PeripheralType_pSgMd, &_s13FindMyPairing14PeripheralType_pSgMR);
    if (one-time initialization token for pairingExecutor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pairingExecutor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24AF48000, v11, v12, "CleanUp error: no peripheral to unpair", v13, 2u);
      MEMORY[0x24C237030](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = PairingExecutor._cleanUp();
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = PairingExecutor._cleanUp();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[30];
  swift_unknownObjectRelease();
  MEMORY[0x24C236EC0](v1);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  MEMORY[0x24C236EB0](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C236EC0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24AF48000, v2, v3, "CleanUp error: %{public}@", v6, 0xCu);
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C237030](v7, -1, -1);
    MEMORY[0x24C237030](v6, -1, -1);

    MEMORY[0x24C236EB0](v5);
  }

  else
  {
    MEMORY[0x24C236EB0](v0[30]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v9 = v0[1];

  return v9();
}

uint64_t PairingExecutor._undoBeaconSavingIfNeeded()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](PairingExecutor._undoBeaconSavingIfNeeded(), v6, v5);
}

uint64_t PairingExecutor._undoBeaconSavingIfNeeded()()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  (*(v0[3] + 104))(v0[2]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v0[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    v7 = v0[2];
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v8 = (*(v6 + 96))(v7, v6);
    v10 = v9;
    v0[11] = v8;
    ObjectType = swift_getObjectType();
    v14 = (*(v10 + 48) + **(v10 + 48));
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = PairingExecutor._undoBeaconSavingIfNeeded();
    v13 = v0[8];

    return v14(v13, ObjectType, v10);
  }
}

{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](PairingExecutor._undoBeaconSavingIfNeeded(), v3, v2);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t one-time initialization function for pairingExecutor(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

unint64_t lazy protocol witness table accessor for type PairingExecutorError and conformance PairingExecutorError()
{
  result = lazy protocol witness table cache variable for type PairingExecutorError and conformance PairingExecutorError;
  if (!lazy protocol witness table cache variable for type PairingExecutorError and conformance PairingExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorError and conformance PairingExecutorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingExecutorError and conformance PairingExecutorError;
  if (!lazy protocol witness table cache variable for type PairingExecutorError and conformance PairingExecutorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorError and conformance PairingExecutorError);
  }

  return result;
}

uint64_t static Logger.pairingExecutor.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t outlined init with copy of PairingExecutorState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PairingExecutorState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized static PairingExecutorState.InitiatePairing.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v23[0] = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  v23[4] = v7;
  v23[5] = v8;
  v23[6] = v9;
  v23[7] = v10;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v8 != 6)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v4 != 7)
        {
LABEL_26:
          if (v8 >= 8)
          {
            if (v3 == v7 && v4 == v8 || (v13 = v7, v14 = v8, v15 = v9, v16 = v10, v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = v15, v10 = v16, v8 = v14, v18 = v17, v7 = v13, (v18 & 1) != 0))
            {
              if (v5 == v9 && v6 == v10)
              {
                outlined copy of PairingExecutorState.InitiatePairing(v7, v8, v5, v6);
                v11 = 1;
              }

              else
              {
                v19 = v7;
                v20 = v8;
                v21 = v9;
                v22 = v10;
                v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
                outlined copy of PairingExecutorState.InitiatePairing(v19, v20, v21, v22);
              }

              goto LABEL_28;
            }
          }

LABEL_27:
          outlined copy of PairingExecutorState.InitiatePairing(v7, v8, v9, v10);
          v11 = 0;
LABEL_28:
          outlined copy of PairingExecutorState.InitiatePairing(v3, v4, v5, v6);
          goto LABEL_29;
        }

        if (v8 != 7)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v4 == 4)
    {
      if (v8 != 4)
      {
        goto LABEL_27;
      }
    }

    else if (v8 != 5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        if (!v8)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      if (v4 == 1)
      {
        if (v8 == 1)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v4 == 2)
    {
      if (v8 != 2)
      {
        goto LABEL_27;
      }
    }

    else if (v8 != 3)
    {
      goto LABEL_27;
    }
  }

LABEL_25:
  v11 = 1;
LABEL_29:
  outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v23, &_s13FindMyPairing0C13ExecutorStateO08InitiateC0O_AEtMd, &_s13FindMyPairing0C13ExecutorStateO08InitiateC0O_AEtMR);
  return v11 & 1;
}

uint64_t specialized static PairingExecutorState.RecordCreation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PairingExecutorState.RecordCreation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C13ExecutorStateO14RecordCreationO_AEtMd, &_s13FindMyPairing0C13ExecutorStateO14RecordCreationO_AEtMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of PairingExecutorState(a1, &v20 - v13, type metadata accessor for PairingExecutorState.RecordCreation);
  outlined init with copy of PairingExecutorState(a2, &v14[v15], type metadata accessor for PairingExecutorState.RecordCreation);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of PairingExecutorState(v14, v10, type metadata accessor for PairingExecutorState.RecordCreation);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = static UUID.== infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      outlined destroy of PairingExecutorState(v14, type metadata accessor for PairingExecutorState.RecordCreation);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v14, &_s13FindMyPairing0C13ExecutorStateO14RecordCreationO_AEtMd, &_s13FindMyPairing0C13ExecutorStateO14RecordCreationO_AEtMR);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of PairingExecutorState(v14, type metadata accessor for PairingExecutorState.RecordCreation);
  v17 = 1;
  return v17 & 1;
}

uint64_t specialized static PairingExecutorState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for PairingExecutorState.RecordCreation(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v56 - v6;
  v7 = type metadata accessor for PairingExecutorState(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v56 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v56 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v56 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C13ExecutorStateO_ACtMd, &_s13FindMyPairing0C13ExecutorStateO_ACtMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v56 + *(v26 + 56) - v27);
  v29 = a1;
  v30 = &v56 - v27;
  outlined init with copy of PairingExecutorState(v29, &v56 - v27, type metadata accessor for PairingExecutorState);
  outlined init with copy of PairingExecutorState(v59, v28, type metadata accessor for PairingExecutorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_57;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() != 10)
        {
          goto LABEL_57;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_57;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_57;
      }

      outlined destroy of PairingExecutorState(v28, type metadata accessor for PairingExecutorState);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_57;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_57;
    }

    outlined destroy of PairingExecutorState(v30, type metadata accessor for PairingExecutorState);
    v42 = 1;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of PairingExecutorState(v30, v22, type metadata accessor for PairingExecutorState);
        v32 = v28;
        v33 = *v22;
        v34 = v22[1];
        v36 = v22[2];
        v35 = v22[3];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v37 = v30;
          v39 = *v32;
          v38 = v32[1];
          v41 = v32[2];
          v40 = v32[3];
          if (v34 == 8)
          {
            if (v38 == 8)
            {
              outlined consume of PairingExecutorState.InitiatePairing?(v33, 8uLL, v36, v35);
              v42 = 1;
LABEL_63:
              outlined destroy of PairingExecutorState(v37, type metadata accessor for PairingExecutorState);
              return v42 & 1;
            }
          }

          else
          {
            v64 = v33;
            v65 = v34;
            v66 = v36;
            v67 = v35;
            if (v38 != 8)
            {
              v60 = v39;
              v61 = v38;
              v62 = v41;
              v63 = v40;
              outlined copy of PairingExecutorState.InitiatePairing?(v33, v34, v36, v35);
              v42 = specialized static PairingExecutorState.InitiatePairing.== infix(_:_:)(&v64, &v60);
              outlined consume of PairingExecutorState.InitiatePairing(v60, v61, v62, v63);
              outlined consume of PairingExecutorState.InitiatePairing(v64, v65, v66, v67);
              outlined consume of PairingExecutorState.InitiatePairing?(v33, v34, v36, v35);
              goto LABEL_63;
            }

            outlined copy of PairingExecutorState.InitiatePairing?(v33, v34, v36, v35);
            outlined consume of PairingExecutorState.InitiatePairing(v33, v34, v36, v35);
          }

          outlined consume of PairingExecutorState.InitiatePairing?(v33, v34, v36, v35);
          outlined consume of PairingExecutorState.InitiatePairing?(v39, v38, v41, v40);
          v42 = 0;
          goto LABEL_63;
        }

        outlined consume of PairingExecutorState.InitiatePairing?(v33, v34, v36, v35);
        goto LABEL_57;
      }

      outlined init with copy of PairingExecutorState(v30, v19, type metadata accessor for PairingExecutorState);
      v52 = *v19;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v53 = *v28;
        v45 = v53 == 8;
        v47 = v53 != 8 && v52 == v53;
        v48 = v52 == 8;
LABEL_44:
        if (v48)
        {
          v42 = v45;
        }

        else
        {
          v42 = v47;
        }

        goto LABEL_52;
      }

      goto LABEL_57;
    }

    outlined init with copy of PairingExecutorState(v30, v24, type metadata accessor for PairingExecutorState);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_57;
    }

    v49 = *v24;
LABEL_51:
    v42 = v49 ^ *v28 ^ 1;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      outlined init with copy of PairingExecutorState(v30, v13, type metadata accessor for PairingExecutorState);
      v43 = *v13;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v44 = *v28;
        v45 = v44 == 3;
        v47 = v44 != 3 && v43 == v44;
        v48 = v43 == 3;
        goto LABEL_44;
      }

LABEL_57:
      outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v30, &_s13FindMyPairing0C13ExecutorStateO_ACtMd, &_s13FindMyPairing0C13ExecutorStateO_ACtMR);
      v42 = 0;
      return v42 & 1;
    }

    outlined init with copy of PairingExecutorState(v30, v10, type metadata accessor for PairingExecutorState);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_57;
    }

    v49 = *v10;
    goto LABEL_51;
  }

  outlined init with copy of PairingExecutorState(v30, v16, type metadata accessor for PairingExecutorState);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of PairingExecutorState(v16, type metadata accessor for PairingExecutorState.RecordCreation);
    goto LABEL_57;
  }

  v50 = v57;
  outlined init with take of PairingExecutorState.RecordCreation(v16, v57, type metadata accessor for PairingExecutorState.RecordCreation);
  v51 = v58;
  outlined init with take of PairingExecutorState.RecordCreation(v28, v58, type metadata accessor for PairingExecutorState.RecordCreation);
  v42 = specialized static PairingExecutorState.RecordCreation.== infix(_:_:)(v50, v51);
  outlined destroy of PairingExecutorState(v51, type metadata accessor for PairingExecutorState.RecordCreation);
  outlined destroy of PairingExecutorState(v50, type metadata accessor for PairingExecutorState.RecordCreation);
LABEL_52:
  outlined destroy of PairingExecutorState(v30, type metadata accessor for PairingExecutorState);
  return v42 & 1;
}

uint64_t outlined init with copy of PairingConfigurationType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing0C17ConfigurationType_pSgMd, &_s13FindMyPairing0C17ConfigurationType_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined init with take of PairingExecutorState.RecordCreation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PairingExecutorState.CommandState and conformance PairingExecutorState.CommandState()
{
  result = lazy protocol witness table cache variable for type PairingExecutorState.CommandState and conformance PairingExecutorState.CommandState;
  if (!lazy protocol witness table cache variable for type PairingExecutorState.CommandState and conformance PairingExecutorState.CommandState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorState.CommandState and conformance PairingExecutorState.CommandState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PairingExecutorState.PairingLockCheck and conformance PairingExecutorState.PairingLockCheck()
{
  result = lazy protocol witness table cache variable for type PairingExecutorState.PairingLockCheck and conformance PairingExecutorState.PairingLockCheck;
  if (!lazy protocol witness table cache variable for type PairingExecutorState.PairingLockCheck and conformance PairingExecutorState.PairingLockCheck)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorState.PairingLockCheck and conformance PairingExecutorState.PairingLockCheck);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PairingExecutorState.PairingComplete and conformance PairingExecutorState.PairingComplete()
{
  result = lazy protocol witness table cache variable for type PairingExecutorState.PairingComplete and conformance PairingExecutorState.PairingComplete;
  if (!lazy protocol witness table cache variable for type PairingExecutorState.PairingComplete and conformance PairingExecutorState.PairingComplete)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorState.PairingComplete and conformance PairingExecutorState.PairingComplete);
  }

  return result;
}

void type metadata completion function for PairingExecutorState(uint64_t a1)
{
  type metadata accessor for PairingExecutorState.InitiatePairing?(319, &lazy cache variable for type metadata for PairingExecutorState.InitiatePairing?, &type metadata for PairingExecutorState.InitiatePairing);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PairingExecutorState.InitiatePairing?(319, &lazy cache variable for type metadata for PairingExecutorState.PairingLockCheck?, &type metadata for PairingExecutorState.PairingLockCheck);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PairingExecutorState.RecordCreation(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PairingExecutorState.InitiatePairing?(319, &lazy cache variable for type metadata for PairingExecutorState.PairingComplete?, &type metadata for PairingExecutorState.PairingComplete);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Error();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for PairingExecutorState.InitiatePairing?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyPairing0C13ExecutorStateO08InitiateC0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PairingExecutorState.InitiatePairing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 32))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingExecutorState.InitiatePairing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PairingExecutorState.InitiatePairing(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for PairingExecutorState.RecordCreation(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t dispatch thunk of PairingExecutor.initiatePairing(peripheral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingExecutor.pairingLockCheck()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 144) + **(a2 + 144));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of PairingExecutor.createBeaconRecord()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PairingExecutor.pairingComplete()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 160) + **(a2 + 160));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of PairingExecutor.pairingAck()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 168) + **(a2 + 168));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of PairingValidator.ack(_:);

  return v7(a1, a2);
}

void outlined copy of PairingExecutorState.InitiatePairing(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 8)
  {
  }
}

void outlined copy of PairingExecutorState.InitiatePairing?(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 8)
  {
    outlined copy of PairingExecutorState.InitiatePairing(a1, a2, a3, a4);
  }
}

uint64_t PairingLatencyReport.init(overallPairing:initializePairing:pairingLock:finalizePairing:beaconCreation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t AccessoryDetails.executorIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessoryDetails.systemVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryDetails(0) + 20));

  return v1;
}

uint64_t AccessoryDetails.serialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryDetails(0) + 24));

  return v1;
}

uint64_t AccessoryDetails.productID.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryDetails(0) + 28));

  return v1;
}

int *AccessoryDetails.init(executorIdentifier:systemVersion:serialNumber:productID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for AccessoryDetails(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + result[6]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + result[7]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t AnalyticsEvent.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AnalyticsEvent(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnalyticsEvent(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v8 + 32))(v10, v13, v7);
        v31 = 0;
        v32 = 0xE000000000000000;
        _StringGuts.grow(_:)(21);

        v15 = 0x800000024AFAFEA0;
        v16 = 0xD000000000000012;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        (*(v8 + 32))(v10, v13, v7);
        v31 = 0;
        v32 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v15 = 0x800000024AFAFE80;
        v16 = 0xD000000000000015;
      }

      else
      {
        (*(v8 + 32))(v10, v13, v7);
        v31 = 0;
        v32 = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        v15 = 0x800000024AFAFE60;
        v16 = 0xD000000000000016;
      }

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v10, v13, v7);
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v28 = "pairingLockStart(";
      goto LABEL_22;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing16AccessoryDetailsVSg7details_10Foundation4UUIDV10identifiertMd, &_s13FindMyPairing16AccessoryDetailsVSg7details_10Foundation4UUIDV10identifiertMR);
    (*(v8 + 32))(v10, &v13[*(v23 + 48)], v7);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v31 = 0xD000000000000018;
    v32 = 0x800000024AFAFEE0;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C236810](v24);

    MEMORY[0x24C236810](41, 0xE100000000000000);
    v19 = v31;
    (*(v8 + 8))(v10, v7);
    v20 = &_s13FindMyPairing16AccessoryDetailsVSgMd;
    v21 = &_s13FindMyPairing16AccessoryDetailsVSgMR;
    v22 = v13;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      (*(v8 + 32))(v10, v13, v7);
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v15 = 0x800000024AFAFDE0;
      v16 = 0xD000000000000013;
      goto LABEL_23;
    }

    if (EnumCaseMultiPayload != 9)
    {
      return 0x7075727265746E69;
    }

    MEMORY[0x24C236EB0](*v13);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMd, &_ss5Error_p5error_10Foundation4UUIDVSg10identifiertMR);
    outlined init with take of UUID?(&v13[*(v17 + 48)], v6);
    v31 = 0x2864656C696166;
    v32 = 0xE700000000000000;
    outlined init with copy of UUID?(v6, v4);
    v18 = String.init<A>(describing:)();
    MEMORY[0x24C236810](v18);

    MEMORY[0x24C236810](41, 0xE100000000000000);
    v19 = v31;
    v20 = &_s10Foundation4UUIDVSgMd;
    v21 = &_s10Foundation4UUIDVSgMR;
    v22 = v6;
LABEL_15:
    outlined destroy of (DependenciesIdentifier, DependenciesIdentifier)(v22, v20, v21);
    return v19;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      (*(v8 + 32))(v10, v13, v7);
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v15 = 0x800000024AFAFE20;
      v16 = 0xD000000000000010;
LABEL_23:
      v31 = v16;
      v32 = v15;
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x24C236810](v29);

      MEMORY[0x24C236810](41, 0xE100000000000000);
      v19 = v31;
      (*(v8 + 8))(v10, v7);
      return v19;
    }

    (*(v8 + 32))(v10, v13, v7);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v28 = "pairingAckFinish(";
LABEL_22:
    v15 = (v28 - 32) | 0x8000000000000000;
    v16 = 0xD000000000000011;
    goto LABEL_23;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV16beaconIdentifier_AC10identifiertMd, &_s10Foundation4UUIDV16beaconIdentifier_AC10identifiertMR);
  (*(v8 + 32))(v10, &v13[*(v25 + 48)], v7);
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v31 = 0xD000000000000014;
  v32 = 0x800000024AFAFE40;
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C236810](v26);

  MEMORY[0x24C236810](41, 0xE100000000000000);
  v19 = v31;
  v27 = *(v8 + 8);
  v27(v10, v7);
  v27(v13, v7);
  return v19;
}

uint64_t outlined init with copy of AnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for AccessoryDetails(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PairingLatencyReport(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PairingLatencyReport(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void type metadata completion function for AnalyticsEvent(uint64_t a1)
{
  type metadata accessor for (details: AccessoryDetails?, identifier: UUID)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (identifier: UUID)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (beaconIdentifier: UUID, identifier: UUID)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (identifier: UUID, pairingLatencyReport: PairingLatencyReport)(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for (error: Error, identifier: UUID?)(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (details: AccessoryDetails?, identifier: UUID)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (details: AccessoryDetails?, identifier: UUID))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13FindMyPairing16AccessoryDetailsVSgMd, &_s13FindMyPairing16AccessoryDetailsVSgMR);
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (details: AccessoryDetails?, identifier: UUID));
    }
  }
}

void type metadata accessor for (identifier: UUID)()
{
  if (!lazy cache variable for type metadata for (identifier: UUID))
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (identifier: UUID));
    }
  }
}

void type metadata accessor for (beaconIdentifier: UUID, identifier: UUID)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (beaconIdentifier: UUID, identifier: UUID))
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (beaconIdentifier: UUID, identifier: UUID));
    }
  }
}

void type metadata accessor for (identifier: UUID, pairingLatencyReport: PairingLatencyReport)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (identifier: UUID, pairingLatencyReport: PairingLatencyReport))
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (identifier: UUID, pairingLatencyReport: PairingLatencyReport));
    }
  }
}

void type metadata accessor for (error: Error, identifier: UUID?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (error: Error, identifier: UUID?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (error: Error, identifier: UUID?));
    }
  }
}

uint64_t PairingExecutorFactory._pairingExecutors(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](PairingExecutorFactory._pairingExecutors(for:), v8, v7);
}

uint64_t PairingExecutorFactory._pairingExecutors(for:)()
{
  v1 = v0[15];
  outlined init with copy of PairingEligibilityInfo(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing09AccessoryC8InfoType_pMd, &_s13FindMyPairing09AccessoryC8InfoType_pMR);
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
    v8[1] = PairingExecutorFactory._pairingExecutors(for:);
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
    lazy protocol witness table accessor for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError();
    swift_allocError();
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

{
  (*(v0[15] + 8))(v0[16], v0[11]);

  v1 = v0[1];
  v2 = v0[21];

  return v1(v2);
}

uint64_t PairingExecutorFactory._pairingExecutors(for:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[17];
    v6 = v4[18];
    v7 = PairingPolicyVerifier.verifyIfPairingEligibility(_:);
  }

  else
  {
    v4[21] = a1;
    v5 = v4[17];
    v6 = v4[18];
    v7 = PairingExecutorFactory._pairingExecutors(for:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError()
{
  result = lazy protocol witness table cache variable for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError;
  if (!lazy protocol witness table cache variable for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError;
  if (!lazy protocol witness table cache variable for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingExecutorFactoryError and conformance PairingExecutorFactoryError);
  }

  return result;
}

Swift::Int PairingExecutorFactoryError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](0);
  return Hasher._finalize()();
}

uint64_t dispatch thunk of PairingExecutorFactory.pairingExecutors(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingService.pairingDependencies.getter;

  return v9(a1, a2, a3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PairingInfoStore.updateAccessories(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  if (one-time initialization token for pairingCoordinator != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pairingCoordinator);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v18 = v4;
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000024AFAFF90, &v19);
    *(v9 + 12) = 2080;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13FindMyPairing9Accessory_pMd, &_s13FindMyPairing9Accessory_pMR);
    v11 = MEMORY[0x24C236860](a1._rawValue, v10);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_24AF48000, v7, v8, "%{public}s, newValue = %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C237030](v17, -1, -1);
    v14 = v9;
    v4 = v18;
    MEMORY[0x24C237030](v14, -1, -1);
  }

  v15 = *(v3 + 32);

  v15(v16, v4, v3);
}

uint64_t PairingInfoStore.appendAccessoryDetails(executorIdentifier:serialNumber:systemVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a4;
  v41 = a2;
  v12 = type metadata accessor for AccessoryDetails(0);
  v13 = (v12 - 8);
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v39 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v20 = *(a7 + 48);

  v21 = v20(a6, a7);
  v22 = &v18[v13[7]];
  v23 = v41;
  *v22 = v40;
  v22[1] = a5;
  v24 = &v18[v13[8]];
  *v24 = v23;
  *(v24 + 1) = a3;
  v25 = &v18[v13[9]];
  *v25 = v21;
  v25[1] = v26;
  if ((*(a7 + 104))(a6, a7))
  {

    v28 = (*(a7 + 120))(v42, a6, a7);
    if (*v27)
    {
      v29 = v27;
      v30 = v39;
      outlined init with copy of AccessoryDetails(v18, v39);
      v31 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v29 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        *v29 = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
        *v29 = v31;
      }

      v31[2] = v34 + 1;
      outlined init with take of AccessoryDetails(v30, v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v34);
      v28(v42, 0);
    }

    else
    {
      v28(v42, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing16AccessoryDetailsVGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing16AccessoryDetailsVGMR);
    v35 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24AFB0430;
    outlined init with copy of AccessoryDetails(v18, v36 + v35);
    (*(a7 + 112))(v36, a6, a7);
  }

  return outlined destroy of AccessoryDetails(v18);
}

uint64_t DetectedAccessory.underlyingValue.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of DetectedAccessory(v1, &v4);
  if (v5 >= 2)
  {
    return outlined init with take of Accessory(&v4, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return outlined destroy of DetectedAccessory(&v4);
}

Swift::Int PairingInfoStoreError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C236B70](v1);
  return Hasher._finalize()();
}

double PairingInfoStore.accessory.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  v7 = *(v6() + 16);

  if (v7 == 1)
  {
    v8 = (v6)(a1, a2);
    if (*(v8 + 16))
    {
      outlined init with copy of PairingEligibilityInfo(v8 + 32, v11);

      outlined init with take of Accessory(v11, a3);
      return result;
    }
  }

  v10 = *((v6)(a1, a2) + 16);

  if (v10)
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_24AFB2340;
  }

  return result;
}

uint64_t TypedPairingInfoStore.productIDValue.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v11 - v6;
  (*(a2 + 216))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9;
}

uint64_t TypedPairingInfoStore.accessoryPeripheralValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 112))(a1, a2);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TypedPairingInfoStore.accessoryMetadataValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 136))(a1, a2);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TypedPairingInfoStore.accessoryProductInfoValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 160))(a1, a2);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TypedPairingInfoStore.pairingPolicyInformationValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 184);
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return v6(a1, a2);
}

uint64_t TypedPairingInfoStore.accessoryUserConfigurationValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(a2 + 192))(a1, a2);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v8 + 8))(v10, v7);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = AssociatedTypeWitness;
    *(a3 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v11 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TypedPairingInfoStore.updatePeripheral<A>(_:)(void (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v60 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for Optional();
  v7 = *(v54 - 1);
  v8 = MEMORY[0x28223BE20](v54);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v57 = v13;
  v24 = *(v13 + 16);
  v55 = a1;
  v25 = a1;
  v26 = v24;
  v24(v20, v25, a3);
  v27 = v21;
  v28 = swift_dynamicCast();
  v29 = *(v21 + 56);
  if (v28)
  {
    v30 = v26;
    v54 = *(v21 + 56);
    v29(v12, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v23, v12, AssociatedTypeWitness);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pairingCoordinator);
    v32 = v55;
    v33 = v56;
    v55 = v30;
    v30(v56, v32, a3);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = v35;
      v37 = v36;
      v52 = swift_slowAlloc();
      v61 = v52;
      *v37 = 136446466;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x800000024AFAFFB0, &v61);
      *(v37 + 12) = 2080;
      v50 = v34;
      v38 = v23;
      v55(v53, v33, a3);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v57 + 8))(v33, a3);
      v42 = v39;
      v23 = v38;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v61);
      v27 = v21;

      *(v37 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_24AF48000, v50, v51, "%{public}s, newValue = %s.", v37, 0x16u);
      v45 = v52;
      swift_arrayDestroy();
      MEMORY[0x24C237030](v45, -1, -1);
      MEMORY[0x24C237030](v37, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v33, a3);
    }

    v48 = v58;
    (*(v27 + 16))(v58, v23, AssociatedTypeWitness);
    (v54)(v48, 0, 1, AssociatedTypeWitness);
    (*(v60 + 120))(v48, v59);
    return (*(v27 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    v29(v12, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v12, v54);
    lazy protocol witness table accessor for type PairingInfoStoreError and conformance PairingInfoStoreError();
    swift_allocError();
    *v46 = 0;
    return swift_willThrow();
  }
}

uint64_t TypedPairingInfoStore.updateAccessoryMetadata<A>(_:)(void (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v60 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for Optional();
  v7 = *(v54 - 1);
  v8 = MEMORY[0x28223BE20](v54);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v57 = v13;
  v24 = *(v13 + 16);
  v55 = a1;
  v25 = a1;
  v26 = v24;
  v24(v20, v25, a3);
  v27 = v21;
  v28 = swift_dynamicCast();
  v29 = *(v21 + 56);
  if (v28)
  {
    v30 = v26;
    v54 = *(v21 + 56);
    v29(v12, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v23, v12, AssociatedTypeWitness);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pairingCoordinator);
    v32 = v55;
    v33 = v56;
    v55 = v30;
    v30(v56, v32, a3);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = v35;
      v37 = v36;
      v52 = swift_slowAlloc();
      v61 = v52;
      *v37 = 136446466;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000024AFAFFD0, &v61);
      *(v37 + 12) = 2080;
      v50 = v34;
      v38 = v23;
      v55(v53, v33, a3);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v57 + 8))(v33, a3);
      v42 = v39;
      v23 = v38;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v61);
      v27 = v21;

      *(v37 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_24AF48000, v50, v51, "%{public}s, newValue = %s.", v37, 0x16u);
      v45 = v52;
      swift_arrayDestroy();
      MEMORY[0x24C237030](v45, -1, -1);
      MEMORY[0x24C237030](v37, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v33, a3);
    }

    v48 = v58;
    (*(v27 + 16))(v58, v23, AssociatedTypeWitness);
    (v54)(v48, 0, 1, AssociatedTypeWitness);
    (*(v60 + 144))(v48, v59);
    return (*(v27 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    v29(v12, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v12, v54);
    lazy protocol witness table accessor for type PairingInfoStoreError and conformance PairingInfoStoreError();
    swift_allocError();
    *v46 = 0;
    return swift_willThrow();
  }
}

uint64_t TypedPairingInfoStore.updateAccessoryProductInfo<A>(_:)(void (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v60 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for Optional();
  v7 = *(v54 - 1);
  v8 = MEMORY[0x28223BE20](v54);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v57 = v13;
  v24 = *(v13 + 16);
  v55 = a1;
  v25 = a1;
  v26 = v24;
  v24(v20, v25, a3);
  v27 = v21;
  v28 = swift_dynamicCast();
  v29 = *(v21 + 56);
  if (v28)
  {
    v30 = v26;
    v54 = *(v21 + 56);
    v29(v12, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v23, v12, AssociatedTypeWitness);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pairingCoordinator);
    v32 = v55;
    v33 = v56;
    v55 = v30;
    v30(v56, v32, a3);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = v35;
      v37 = v36;
      v52 = swift_slowAlloc();
      v61 = v52;
      *v37 = 136446466;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000024AFAFFF0, &v61);
      *(v37 + 12) = 2080;
      v50 = v34;
      v38 = v23;
      v55(v53, v33, a3);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v57 + 8))(v33, a3);
      v42 = v39;
      v23 = v38;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v61);
      v27 = v21;

      *(v37 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_24AF48000, v50, v51, "%{public}s, newValue = %s.", v37, 0x16u);
      v45 = v52;
      swift_arrayDestroy();
      MEMORY[0x24C237030](v45, -1, -1);
      MEMORY[0x24C237030](v37, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v33, a3);
    }

    v48 = v58;
    (*(v27 + 16))(v58, v23, AssociatedTypeWitness);
    (v54)(v48, 0, 1, AssociatedTypeWitness);
    (*(v60 + 168))(v48, v59);
    return (*(v27 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    v29(v12, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v12, v54);
    lazy protocol witness table accessor for type PairingInfoStoreError and conformance PairingInfoStoreError();
    swift_allocError();
    *v46 = 0;
    return swift_willThrow();
  }
}

uint64_t TypedPairingInfoStore.updateAccessoryUserConfiguration<A>(_:)(void (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v60 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for Optional();
  v7 = *(v54 - 1);
  v8 = MEMORY[0x28223BE20](v54);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v57 = v13;
  v24 = *(v13 + 16);
  v55 = a1;
  v25 = a1;
  v26 = v24;
  v24(v20, v25, a3);
  v27 = v21;
  v28 = swift_dynamicCast();
  v29 = *(v21 + 56);
  if (v28)
  {
    v30 = v26;
    v54 = *(v21 + 56);
    v29(v12, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v23, v12, AssociatedTypeWitness);
    if (one-time initialization token for pairingCoordinator != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pairingCoordinator);
    v32 = v55;
    v33 = v56;
    v55 = v30;
    v30(v56, v32, a3);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v51 = v35;
      v37 = v36;
      v52 = swift_slowAlloc();
      v61 = v52;
      *v37 = 136446466;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000024AFB0010, &v61);
      *(v37 + 12) = 2080;
      v50 = v34;
      v38 = v23;
      v55(v53, v33, a3);
      v39 = String.init<A>(describing:)();
      v41 = v40;
      (*(v57 + 8))(v33, a3);
      v42 = v39;
      v23 = v38;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v61);
      v27 = v21;

      *(v37 + 14) = v43;
      v44 = v50;
      _os_log_impl(&dword_24AF48000, v50, v51, "%{public}s, newValue = %s.", v37, 0x16u);
      v45 = v52;
      swift_arrayDestroy();
      MEMORY[0x24C237030](v45, -1, -1);
      MEMORY[0x24C237030](v37, -1, -1);
    }

    else
    {

      (*(v57 + 8))(v33, a3);
    }

    v48 = v58;
    (*(v27 + 16))(v58, v23, AssociatedTypeWitness);
    (v54)(v48, 0, 1, AssociatedTypeWitness);
    (*(v60 + 200))(v48, v59);
    return (*(v27 + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    v29(v12, 1, 1, AssociatedTypeWitness);
    (*(v7 + 8))(v12, v54);
    lazy protocol witness table accessor for type PairingInfoStoreError and conformance PairingInfoStoreError();
    swift_allocError();
    *v46 = 0;
    return swift_willThrow();
  }
}

uint64_t one-time initialization function for pairingInfoStore()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.pairingInfoStore);
  __swift_project_value_buffer(v0, static Logger.pairingInfoStore);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.pairingInfoStore.unsafeMutableAddressor()
{
  if (one-time initialization token for pairingInfoStore != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.pairingInfoStore);
}

uint64_t static Logger.pairingInfoStore.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for pairingInfoStore != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.pairingInfoStore);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
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
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t outlined init with copy of AccessoryDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AccessoryDetails(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of AccessoryDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PairingInfoStoreError and conformance PairingInfoStoreError()
{
  result = lazy protocol witness table cache variable for type PairingInfoStoreError and conformance PairingInfoStoreError;
  if (!lazy protocol witness table cache variable for type PairingInfoStoreError and conformance PairingInfoStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingInfoStoreError and conformance PairingInfoStoreError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PairingInfoStoreError and conformance PairingInfoStoreError;
  if (!lazy protocol witness table cache variable for type PairingInfoStoreError and conformance PairingInfoStoreError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PairingInfoStoreError and conformance PairingInfoStoreError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyPairing17DetectedAccessoryO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for DetectedAccessory(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetectedAccessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for DetectedAccessory(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of PairingInfoStore.pairingUIInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall UserSessionListener._pairingFinish()()
{
  (*(v0 + 24))();
  AsyncStreamProvider.finish()();
}

uint64_t UserSessionListener.stream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return UserSessionListener.stream()(a1, a2, a3);
}

{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](UserSessionListener.stream(), v6, v5);
}

uint64_t UserSessionListener.stream()()
{
  v9 = v0[4];
  v0[8] = (*(v9 + 24))(v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13FindMyPairing16UserSessionStateOGMd, &_ss23_ContiguousArrayStorageCy13FindMyPairing16UserSessionStateOGMR);
  v1 = *(type metadata accessor for UserSessionState(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  v0[9] = v3;
  *(v3 + 16) = xmmword_24AFB0430;
  v8 = (*(v9 + 16) + **(v9 + 16));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = UserSessionListener.stream();
  v5 = v0[4];
  v6 = v0[3];

  return v8(v3 + v2, v6, v5);
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](UserSessionListener.stream(), v3, v2);
}

{
  AsyncStreamProvider.stream(initialEvents:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for UserSessionState(uint64_t a1)
{
  result = type metadata singleton initialization cache for UserSessionState;
  if (!type metadata singleton initialization cache for UserSessionState)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UserSessionState(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (UUID, PairingConfigurationType)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (UUID, PairingConfigurationType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UUID, PairingConfigurationType))
  {
    type metadata accessor for UUID();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s13FindMyPairing0C17ConfigurationType_pMd, "R\t");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID, PairingConfigurationType));
    }
  }
}

uint64_t dispatch thunk of UserSessionListener.sessionState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingServiceProxy.reevaluateDependencies(for:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of UserSessionListener.stream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of PairingValidator.ack(_:);

  return v9(a1, a2, a3);
}