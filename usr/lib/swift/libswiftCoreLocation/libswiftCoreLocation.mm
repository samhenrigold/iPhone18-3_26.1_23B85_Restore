void *protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C5334438()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5334470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C5334594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C53346B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C533477C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5334840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C53348AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C53349F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5334A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5334AFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C5334BA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5334BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5334CC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C5334D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5334D94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C5334E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5334E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
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

uint64_t sub_1C5334F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
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

uint64_t sub_1C533501C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C53350C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5335100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C533524C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C5335390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5335408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C5335484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t CLBeaconIdentityConstraint.major.getter(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedShortValue];
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 16);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t result, int a2, int a3)
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

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CLClientDiagnosticMask(void *a1, uint64_t *a2)
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

void *protocol witness for SetAlgebra.remove(_:) in conformance CLClientDiagnosticMask@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance CLClientDiagnosticMask@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t protocol witness for _ObjectiveCBridgeableError.init(_bridgedNSError:) in conformance related decl e for CLError(void *a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance related decl e for CLError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance related decl e for CLError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CLClientDiagnosticMask@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t protocol witness for Error._getEmbeddedNSError() in conformance related decl e for CLError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance related decl e for CLError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError(&lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError, type metadata accessor for related decl 'e' for CLError, &protocol conformance descriptor for related decl 'e' for CLError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t lazy protocol witness table accessor for type related decl e for CLError and conformance related decl e for CLError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for CLClientDiagnosticMask(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
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

void *objcConditionToSwifty(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 altitude];
      v11 = v10;
      outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);
      v12 = lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition();
      *a2 = v11;
      *(a2 + 24) = &type metadata for CLMonitor.MinimumAltitudeCondition;
      *(a2 + 32) = v12;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = a1;
      v16 = [v14 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = [v14 major];
      v18 = v17;
      if (v17)
      {
        HIDWORD(v37) = [v17 unsignedShortValue];
      }

      else
      {
        HIDWORD(v37) = 0;
      }

      v19 = [v14 minor];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 unsignedShortValue];

        outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);
      }

      else
      {
        outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);

        v21 = 0;
      }

      v22 = v20 == 0;
      v23 = v18 == 0;
      v24 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
      *(&v39 + 1) = v24;
      v40 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition and conformance CLMonitor.BeaconIdentityCondition, type metadata accessor for CLMonitor.BeaconIdentityCondition, &protocol conformance descriptor for CLMonitor.BeaconIdentityCondition);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
      (*(v5 + 32))(boxed_opaque_existential_1, v8, v4);
      v26 = boxed_opaque_existential_1 + *(v24 + 20);
      *v26 = WORD2(v37);
      v26[2] = v23;
      v27 = boxed_opaque_existential_1 + *(v24 + 24);
      *v27 = v21;
      v27[2] = v22;
      *(a2 + 32) = v40;
      v28 = v39;
      *a2 = v38;
      *(a2 + 16) = v28;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v29 = result;
      v30 = a1;
      [v29 center];
      v32 = v31;
      v34 = v33;
      [v29 radius];
      v36 = v35;

      outlined destroy of CLMonitor.Event?(a2, &_s12CoreLocation11CLCondition_pSgMd, &_s12CoreLocation11CLCondition_pSgMR);
      result = lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition();
      *a2 = v32;
      *(a2 + 8) = v34;
      *(a2 + 16) = v36;
      *(a2 + 24) = &type metadata for CLMonitor.CircularGeographicCondition;
      *(a2 + 32) = result;
    }
  }

  return result;
}

CoreLocation::CLMonitor::CircularGeographicCondition __swiftcall CLMonitor.CircularGeographicCondition.init(center:radius:)(__C::CLLocationCoordinate2D center, Swift::Double radius)
{
  *v2 = center.latitude;
  v2[1] = center.longitude;
  v2[2] = radius;
  result.center.longitude = center.longitude;
  result.center.latitude = center.latitude;
  result.radius = radius;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CLMonitor.Options@<X0>(uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
  return result;
}

uint64_t CLMonitor.identifiers.getter()
{
  v1 = [*(v0 + 120) _getMonitoredIdentifiers];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t outlined init with copy of CLMonitor.Events(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLMonitor.Events(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CLCondition(uint64_t a1, uint64_t a2)
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

uint64_t CLMonitor.Event.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CLMonitor.Event.date.getter()
{
  v1 = [*v0 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t CLMonitor.Events.Iterator.next()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x1EEE6DFA0](CLMonitor.Events.Iterator.next(), 0, 0);
}

uint64_t CLMonitor.Events.Iterator.next()()
{
  v1 = *(v0 + 120);
  v2 = type metadata accessor for CLMonitor.Events.Iterator(0);
  v3 = *(v2 + 20);
  *(v0 + 144) = v3;
  outlined init with copy of CLCondition?(v1 + v3, v0 + 64, &_s12CoreLocation9CLMonitorC5EventVSgMd, &_s12CoreLocation9CLMonitorC5EventVSgMR);
  if (*(v0 + 64))
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    *(v0 + 48) = *(v0 + 96);
    v11 = (*(v4 + *(v2 + 24)) + **(v4 + *(v2 + 24)));
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = CLMonitor.Events.Iterator.next();

    return v11(v0 + 16);
  }

  else
  {
    outlined destroy of CLMonitor.Event?(v0 + 64, &_s12CoreLocation9CLMonitorC5EventVSgMd, &_s12CoreLocation9CLMonitorC5EventVSgMR);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
    *v8 = v0;
    v8[1] = CLMonitor.Events.Iterator.next();
    v10 = *(v0 + 112);

    return MEMORY[0x1EEE6D9D0](v10, v9);
  }
}

{

  return MEMORY[0x1EEE6DFA0](CLMonitor.Events.Iterator.next(), 0, 0);
}

{
  outlined destroy of CLMonitor.Event(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMd, &_sScS8IteratorVy12CoreLocation9CLMonitorC5EventV_GMR);
  *v1 = v0;
  v1[1] = CLMonitor.Events.Iterator.next();
  v3 = *(v0 + 112);

  return MEMORY[0x1EEE6D9D0](v3, v2);
}

{

  return MEMORY[0x1EEE6DFA0](CLMonitor.Events.Iterator.next(), 0, 0);
}

{
  outlined assign with copy of CLMonitor.Event?(*(v0 + 112), *(v0 + 120) + *(v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined assign with copy of CLMonitor.Event?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation9CLMonitorC5EventVSgMd, &_s12CoreLocation9CLMonitorC5EventVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator;

  return CLMonitor.Events.Iterator.next()(a1);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return CLMonitor.Events.Iterator.next()(a1);
}

uint64_t _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t CLMonitor.Events.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = (v1 + *(type metadata accessor for CLMonitor.Events(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = type metadata accessor for CLMonitor.Events.Iterator(0);
  v7 = (a1 + *(v6 + 20));
  v7[1] = 0u;
  v7[2] = 0u;
  *v7 = 0u;
  v8 = (a1 + *(v6 + 24));
  *v8 = v5;
  v8[1] = v4;
}

uint64_t CLMonitor.Events.init(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation9CLMonitorC5EventV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation9CLMonitorC5EventV__GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = swift_allocBox();
  v15 = v14;
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  v26 = v15;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8650], v9);
  AsyncStream.init(_:bufferingPolicy:_:)();
  outlined init with copy of CLCondition?(v15, v8, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  result = (*(v17 + 48))(v8, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = type metadata accessor for CLMonitor.Events(0);
    (*(v17 + 32))(a4 + v19[5], v8, v16);
    *(a4 + v19[6]) = a1;
    v20 = (a4 + v19[7]);
    v21 = v25;
    *v20 = v24;
    v20[1] = v21;
    aBlock[4] = partial apply for closure #2 in CLMonitor.Events.init(_:_:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLMonitor, @guaranteed CLMonitoringEvent) -> ();
    aBlock[3] = &block_descriptor_82;
    v22 = _Block_copy(aBlock);
    v23 = a1;

    [v23 setEventHandler_];

    _Block_release(v22);
  }

  return result;
}

uint64_t closure #1 in CLMonitor.Events.init(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of CLMonitor.Event?(a2, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t closure #2 in CLMonitor.Events.init(_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation9CLMonitorC5EventV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation9CLMonitorC5EventV__GMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = swift_projectBox();
  v12 = [a2 refinement];
  objcConditionToSwifty(_:)(v12, &v40);

  v39 = a2;
  v13 = one-time initialization token for logger;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v7;
    v20 = v19;
    v35 = swift_slowAlloc();
    v36 = v8;
    v38[0] = v35;
    *v20 = 136315138;
    v21 = v16;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v6;
    v25 = v10;
    v26 = v11;
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v28, v38);
    v11 = v26;
    v10 = v25;
    v6 = v24;

    *(v20 + 4) = v29;
    _os_log_impl(&dword_1C5333000, v17, v18, "#MonitorActor received event: %s", v20, 0xCu);
    v30 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v8 = v36;
    MEMORY[0x1C6945100](v30, -1, -1);
    v31 = v20;
    v7 = v37;
    MEMORY[0x1C6945100](v31, -1, -1);
  }

  swift_beginAccess();
  outlined init with copy of CLCondition?(v11, v6, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMd, &_sScS12ContinuationVy12CoreLocation9CLMonitorC5EventV_GSgMR);
  v33 = *(v32 - 8);
  result = (*(v33 + 48))(v6, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of CLMonitor.Event(&v39, v38);
    AsyncStream.Continuation.yield(_:)();
    (*(v8 + 8))(v10, v7);
    outlined destroy of CLMonitor.Event(&v39);
    return (*(v33 + 8))(v6, v32);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CLMonitor, @guaranteed CLMonitoringEvent) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

double protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLMonitor.Events@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation9CLMonitorC5EventVGMd, &_sScSy12CoreLocation9CLMonitorC5EventVGMR);
  AsyncStream.makeAsyncIterator()();
  v5 = (v2 + *(a1 + 28));
  v7 = *v5;
  v6 = v5[1];

  outlined destroy of CLMonitor.Events(v2);
  v8 = type metadata accessor for CLMonitor.Events.Iterator(0);
  v9 = (a2 + *(v8 + 20));
  result = 0.0;
  v9[1] = 0u;
  v9[2] = 0u;
  *v9 = 0u;
  v11 = (a2 + *(v8 + 24));
  *v11 = v7;
  v11[1] = v6;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64757469676E6F6CLL;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x737569646172;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656475746974616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x64757469676E6F6CLL;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x737569646172;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656475746974616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x64757469676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x737569646172;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656475746974616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  v1 = 0x64757469676E6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x737569646172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.CircularGeographicCondition.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLMonitor.CircularGeographicCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLMonitor.CircularGeographicCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v17[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v17[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v16 = CLLocationCoordinate2DMake(v10, v12);
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys);
  }

  return result;
}

uint64_t CLMonitor.CircularGeographicCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC27CircularGeographicConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition.CodingKeys and conformance CLMonitor.CircularGeographicCondition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

id protocol witness for ConditionAdapter.to() in conformance CLMonitor.CircularGeographicCondition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(MEMORY[0x1E695FBA8]);

  return [v4 initWithCenter:v1 radius:{v2, v3}];
}

uint64_t CLMonitor.add(_:identifier:assuming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v42 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v4 + 112);
  if (!*(v16 + 16))
  {
LABEL_5:
    v45 = a2;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    outlined destroy of CLMonitor.Event?(&v53, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
    v43 = a1;
    outlined init with copy of CLCondition(a1, v51);
    Date.init()();
    outlined init with copy of CLCondition(v51, v50 + 8);
    *&v49 = 0;
    outlined init with copy of CLCondition(v51, &v48);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation11CLCondition_pMd, &_s12CoreLocation11CLCondition_pMR);
    v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMR);
    v42[2] = v22;
    if (swift_dynamicCast())
    {
      outlined init with take of ConditionAdapter(v46, &v53);
      v23 = *(&v54 + 1);
      v24 = v55;
      __swift_project_boxed_opaque_existential_1Tm(&v53, *(&v54 + 1));
      v25 = (*(v24 + 32))(v23, v24);
      (*(v13 + 16))(v11, v15, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      v42[0] = a3;
      v26 = MEMORY[0x1C6944850](v45, a3);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        isa = 0;
      }

      else
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v13 + 8))(v11, v12);
      }

      v28 = objc_allocWithZone(MEMORY[0x1E695FC10]);
      v29 = [v28 initWithIdentifier:v26 refinement:v25 state:v44 date:isa diagnostics:0];

      __swift_destroy_boxed_opaque_existential_1Tm(&v53);
      result = outlined init with copy of CLCondition(v51, &v53);
      if (v29)
      {
        (*(v13 + 8))(v15, v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        v31 = v53;
        v32 = v54;
        *&v50[0] = v55;
        *(&v49 + 1) = v29;
        v57 = v50[1];
        v58 = v50[2];
        v53 = v49;
        v54 = v31;
        v55 = v32;
        v56 = v50[0];
        swift_beginAccess();
        v33 = v42[0];

        v34 = v45;
        specialized Dictionary.subscript.setter(&v53, v45, v33);
        swift_endAccess();
        outlined init with copy of CLCondition(v43, &v49);
        if (swift_dynamicCast())
        {
          outlined init with take of ConditionAdapter(v51, &v53);
          v35 = *(v5 + 120);
          v36 = *(&v54 + 1);
          v37 = v55;
          __swift_project_boxed_opaque_existential_1Tm(&v53, *(&v54 + 1));
          v38 = *(v37 + 32);
          v39 = v35;
          v40 = v38(v36, v37);
          v41 = MEMORY[0x1C6944850](v34, v33);
          [v39 _addConditionForMonitoring_identifier_options_assumedState_];

          return __swift_destroy_boxed_opaque_existential_1Tm(&v53);
        }

        v52 = 0;
        memset(v51, 0, sizeof(v51));
        v19 = &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMd;
        v20 = &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMR;
        v21 = v51;
        return outlined destroy of CLMonitor.Event?(v21, v19, v20);
      }
    }

    else
    {
      v47 = 0;
      memset(v46, 0, sizeof(v46));
      outlined destroy of CLMonitor.Event?(v46, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMR);
      result = outlined init with copy of CLCondition(v51, &v53);
    }

    __break(1u);
    return result;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v18 & 1) == 0)
  {

    goto LABEL_5;
  }

  outlined init with copy of CLMonitor.Record(*(v16 + 56) + 96 * v17, &v53);

  v19 = &_s12CoreLocation9CLMonitorC6RecordVSgMd;
  v20 = &_s12CoreLocation9CLMonitorC6RecordVSgMR;
  v21 = &v53;
  return outlined destroy of CLMonitor.Event?(v21, v19, v20);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v6;
    v7 = *(a1 + 80);
    v12[4] = *(a1 + 64);
    v12[5] = v7;
    v8 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    outlined destroy of CLMonitor.Event?(a1, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v12);

    return outlined destroy of CLMonitor.Event?(v12, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
  }

  return result;
}

Swift::Void __swiftcall CLMonitor.remove(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(countAndFlagsBits, object, v6);
  outlined destroy of CLMonitor.Event?(v6, &_s12CoreLocation9CLMonitorC6RecordVSgMd, &_s12CoreLocation9CLMonitorC6RecordVSgMR);
  swift_endAccess();
  v4 = *(v1 + 120);
  v5 = MEMORY[0x1C6944850](countAndFlagsBits, object);
  [v4 _removeConditionFromMonitoringWithIdentifier_];
}

double CLMonitor.record(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v9)
    {
      outlined init with copy of CLMonitor.Record(*(v7 + 56) + 96 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void CLMonitor.update(_:_:)(uint64_t a1, unint64_t a2, id *a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v3 + 112);
  if (*(v11 + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v13)
    {
      outlined init with copy of CLMonitor.Record(*(v11 + 56) + 96 * v12, &v24);

      v27[2] = v25[1];
      v28[0] = v26[0];
      v28[1] = v26[1];
      v28[2] = v26[2];
      v27[0] = v24;
      v27[1] = v25[0];
      outlined init with copy of CLCondition(v28 + 8, v23);
      v14 = *a3;
      [*a3 state];
      v15 = [v14 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      outlined init with copy of CLCondition(v23, v26 + 8);
      *&v24 = 0;
      outlined init with copy of CLCondition(v23, v25);
      v16 = *(v8 + 8);
      v17 = v14;
      v16(v10, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      *(&v24 + 1) = v17;
      swift_beginAccess();

      specialized Dictionary.subscript.setter(&v24, a1, a2);
      swift_endAccess();
      outlined destroy of CLMonitor.Record(v27);
      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v27[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    _os_log_impl(&dword_1C5333000, v19, v20, "#MonitorActor update on record that doesn't exist for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1C6945100](v22, -1, -1);
    MEMORY[0x1C6945100](v21, -1, -1);
  }
}

uint64_t CLMonitor.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = CLMonitor.__allocating_init(_:);

  return CLMonitor.init(_:)(a1, a2);
}

uint64_t CLMonitor.__allocating_init(_:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t CLMonitor.init(_:)(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3[77] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[78] = v4;
  v3[79] = *(v4 - 8);
  v3[80] = swift_task_alloc();
  type metadata accessor for CLMonitor.Events(0);
  v3[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CLMonitor.init(_:), 0, 0);
}

uint64_t CLMonitor.init(_:)()
{
  v1 = v0[81];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  swift_defaultActor_initialize();
  *(v2 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreLocation9CLMonitorC6RecordVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = objc_opt_self();
  v6 = MEMORY[0x1C6944850](v4, v3);
  v7 = [v5 _configWithMonitorName_];
  v0[82] = v7;

  v8 = swift_allocObject();
  v0[83] = v8;
  swift_weakInit();
  swift_retain_n();
  v9 = v7;
  CLMonitor.Events.init(_:_:)(v9, &async function pointer to partial apply for closure #1 in CLMonitor.init(_:), v8, v1);
  outlined init with take of CLMonitor.Events(v1, v2 + OBJC_IVAR____TtC12CoreLocation9CLMonitor_events);
  v10 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 73;
  v0[3] = CLMonitor.init(_:);
  v11 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9CLMonitorCs5NeverOGMd, &_sSccySo9CLMonitorCs5NeverOGMR);
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLMonitor) -> () with result type CLMonitor;
  v0[37] = &block_descriptor;
  v0[38] = v11;
  [v10 requestMonitorWithConfiguration:v9 completion:v0 + 34];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](CLMonitor.init(_:), 0, 0);
}

{
  v1 = *(v0 + 608);
  *(v1 + 120) = *(v0 + 584);
  return MEMORY[0x1EEE6DFA0](CLMonitor.init(_:), v1, 0);
}

{
  v1 = v0 + 496;
  v2 = *(v0 + 632);
  v3 = [*(*(v0 + 608) + 120) _getMonitoringRecords];
  type metadata accessor for CLMonitoringRecord(0, &lazy cache variable for type metadata for CLMonitoringRecord, 0x1E695FC18);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = 0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v60 = (v2 + 56);
  v61 = (v2 + 16);
  v59 = (v2 + 48);
  v66 = (v2 + 8);
  v67 = v4;
  v64 = v10;
  v65 = v4 + 64;
  v62 = v0 + 496;
  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9)) | (v5 << 6);
    v14 = (*(v67 + 48) + 16 * v13);
    v68 = v14[1];
    v69 = *v14;
    v15 = *(*(v67 + 56) + 8 * v13);

    v16 = v15;
    v17 = [v16 condition];
    objcConditionToSwifty(_:)(v17, v0 + 336);

    if (!*(v0 + 360))
    {
      goto LABEL_38;
    }

    v18 = [v16 lastEvent];
    v19 = [v18 state];

    v20 = [v16 lastEvent];
    v21 = [v20 date];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = [v16 lastEvent];
    outlined init with copy of CLCondition(v0 + 336, v0 + 136);
    *(v0 + 80) = 0;
    if (v22)
    {
      outlined init with copy of CLCondition(v0 + 336, v1);
    }

    else
    {
      v63 = v19;
      outlined init with copy of CLCondition(v0 + 336, v0 + 416);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation11CLCondition_pMd, &_s12CoreLocation11CLCondition_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pMR);
      v1 = v0 + 456;
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_39;
      }

      v23 = *(v0 + 640);
      v24 = *(v0 + 624);
      v25 = *(v0 + 616);
      outlined init with take of ConditionAdapter((v0 + 456), v0 + 376);
      v27 = *(v0 + 400);
      v26 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v27);
      v28 = (*(v26 + 32))(v27, v26);
      (*v61)(v25, v23, v24);
      (*v60)(v25, 0, 1, v24);
      v29 = MEMORY[0x1C6944850](v69, v68);
      if ((*v59)(v25, 1, v24) == 1)
      {
        isa = 0;
      }

      else
      {
        v31 = *(v0 + 624);
        v32 = *(v0 + 616);
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v66)(v32, v31);
      }

      v1 = v0 + 496;
      v22 = [objc_allocWithZone(MEMORY[0x1E695FC10]) initWithIdentifier:v29 refinement:v28 state:v63 date:isa diagnostics:0];

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
      result = outlined init with copy of CLCondition(v0 + 336, v62);
      if (!v22)
      {
        goto LABEL_40;
      }
    }

    v34 = *(v0 + 608);
    (*v66)(*(v0 + 640), *(v0 + 624));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    v35 = *(v1 + 16);
    *(v0 + 96) = *v1;
    *(v0 + 112) = v35;
    *(v0 + 128) = *(v1 + 32);
    *(v0 + 88) = v22;
    v72 = *(v0 + 112);
    v73 = *(v0 + 128);
    v74 = *(v0 + 144);
    v75 = *(v0 + 160);
    v70 = *(v0 + 80);
    v71 = *(v0 + 96);
    swift_beginAccess();
    *(v0 + 208) = v72;
    *(v0 + 224) = v73;
    *(v0 + 240) = v74;
    *(v0 + 256) = v75;
    *(v0 + 176) = v70;
    *(v0 + 192) = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v34 + 112);
    *(v34 + 112) = 0x8000000000000000;
    v38 = v68;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
    v41 = v37[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      *(v1 + 32) = 0;
      *v1 = 0u;
      *(v1 + 16) = 0u;
      outlined destroy of CLMonitor.Event?(v1, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMd, &_s12CoreLocation16ConditionAdapter33_F1B63B709F0317A071010C3036E69BC2LL_pSgMR);
      result = outlined init with copy of CLCondition(v0 + 336, v62);
LABEL_40:
      __break(1u);
      return result;
    }

    v45 = v40;
    if (v37[3] < v44)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
      if ((v45 & 1) != (v46 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_24:
      if (v45)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v55 = v39;
    specialized _NativeDictionary.copy()();
    v39 = v55;
    v38 = v68;
    if (v45)
    {
LABEL_4:
      v11 = v39;

      outlined assign with take of CLMonitor.Record(v0 + 176, v37[7] + 96 * v11);
      goto LABEL_5;
    }

LABEL_25:
    v37[(v39 >> 6) + 8] |= 1 << v39;
    v47 = (v37[6] + 16 * v39);
    *v47 = v69;
    v47[1] = v38;
    v48 = (v37[7] + 96 * v39);
    v50 = *(v0 + 240);
    v49 = *(v0 + 256);
    v51 = *(v0 + 224);
    v48[2] = *(v0 + 208);
    v48[3] = v51;
    v48[4] = v50;
    v48[5] = v49;
    v52 = *(v0 + 192);
    *v48 = *(v0 + 176);
    v48[1] = v52;
    v53 = v37[2];
    v43 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v43)
    {
      goto LABEL_37;
    }

    v37[2] = v54;
LABEL_5:
    v9 &= v9 - 1;
    *(*(v0 + 608) + 112) = v37;
    swift_endAccess();

    v10 = v64;
    v6 = v65;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_11;
    }
  }

  v56 = *(v0 + 656);

  swift_beginAccess();
  swift_weakAssign();

  v57 = *(v0 + 8);
  v58 = *(v0 + 608);

  return v57(v58);
}

uint64_t closure #1 in CLMonitor.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in CLMonitor.init(_:), 0, 0);
}

uint64_t closure #1 in CLMonitor.init(_:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [**(v0 + 40) identifier];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 64) = v4;
    *(v0 + 72) = v6;

    return MEMORY[0x1EEE6DFA0](closure #1 in CLMonitor.init(_:), v2, 0);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C5333000, v8, v9, "#MonitorActor can't update event when self has been dealloc'd", v10, 2u);
      MEMORY[0x1C6945100](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  CLMonitor.update(_:_:)(*(v0 + 64), *(v0 + 72), *(v0 + 40));

  return MEMORY[0x1EEE6DFA0](closure #1 in CLMonitor.init(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLMonitor) -> () with result type CLMonitor(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t CLMonitor.deinit()
{

  outlined destroy of CLMonitor.Events(v0 + OBJC_IVAR____TtC12CoreLocation9CLMonitor_events);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CLMonitor.__deallocating_deinit()
{

  outlined destroy of CLMonitor.Events(v0 + OBJC_IVAR____TtC12CoreLocation9CLMonitor_events);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLMonitor.MinimumAltitudeCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLMonitor.MinimumAltitudeCondition.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC24MinimumAltitudeConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC24MinimumAltitudeConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

id protocol witness for ConditionAdapter.to() in conformance CLMonitor.MinimumAltitudeCondition()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E695FBF8]);

  return [v2 initWithAltitude_];
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F6A616DLL;
  if (v2 != 1)
  {
    v3 = 0x726F6E696DLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1684632949;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x726F6A616DLL;
  if (*a2 != 1)
  {
    v6 = 0x726F6E696DLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1684632949;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x726F6A616DLL;
  if (v2 != 1)
  {
    v4 = 0x726F6E696DLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1684632949;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  v1 = 0x726F6A616DLL;
  if (*v0 != 1)
  {
    v1 = 0x726F6E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CLMonitor.BeaconIdentityCondition.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CLMonitor.BeaconIdentityCondition.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CLMonitor.BeaconIdentityCondition.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v6 = a2 + *(result + 20);
  *v6 = 0;
  *(v6 + 2) = 1;
  v7 = a2 + *(result + 24);
  *v7 = 0;
  *(v7 + 2) = 1;
  return result;
}

uint64_t CLMonitor.BeaconIdentityCondition.init(uuid:major:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v8 = a3 + *(result + 20);
  *v8 = a2;
  *(v8 + 2) = 0;
  v9 = a3 + *(result + 24);
  *v9 = 0;
  *(v9 + 2) = 1;
  return result;
}

uint64_t CLMonitor.BeaconIdentityCondition.init(uuid:major:minor:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v10 = a4 + *(result + 20);
  *v10 = a2;
  *(v10 + 2) = 0;
  v11 = a4 + *(result + 24);
  *v11 = a3;
  *(v11 + 2) = 0;
  return result;
}

uint64_t CLMonitor.BeaconIdentityCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for UUID();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedDecodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v10 = v7;
    v11 = v19;
    v12 = v20;
    v25 = 0;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = 1;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 2;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v10 + 8))(v9, v21);
    (*(v11 + 32))(v12, v6, v4);
    v15 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
    v16 = v12 + *(v15 + 20);
    *v16 = v22;
    *(v16 + 2) = 0;
    v17 = v12 + *(v15 + 24);
    *v17 = v14;
    *(v17 + 2) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CLMonitor.BeaconIdentityCondition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMd, &_ss22KeyedEncodingContainerVy12CoreLocation9CLMonitorC23BeaconIdentityConditionV10CodingKeys33_F1B63B709F0317A071010C3036E69BC2LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
    v10 = (v3 + *(v9 + 20));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 2);
    v19 = v11;
    v20 = v10;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    lazy protocol witness table accessor for type UInt16? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + *(v9 + 24));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 2);
    v16 = v13;
    v17 = v12;
    v15[15] = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

CLBeaconIdentityCondition __swiftcall CLMonitor.BeaconIdentityCondition.to()()
{
  v1 = type metadata accessor for CLMonitor.BeaconIdentityCondition(0);
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695FB98]);
    v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithUUID_];
  }

  else
  {
    v6 = *v2;
    v7 = (v0 + *(v1 + 24));
    if (v7[1])
    {
      v8 = objc_allocWithZone(MEMORY[0x1E695FB98]);
      v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v5 = [v8 initWithUUID:v4.super.isa major:v6];
    }

    else
    {
      v9 = *v7;
      v10 = objc_allocWithZone(MEMORY[0x1E695FB98]);
      v4.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      v5 = [v10 initWithUUID:v4.super.isa major:v6 minor:v9];
    }
  }

  v11.super.super.isa = v5;

  return v11;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t outlined init with take of ConditionAdapter(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6944A10](v9, a1);
      outlined destroy of AnyHashable(v9);
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

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v16;
    }

    v11 = (*(v10 + 56) + 96 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    v13 = v11[5];
    a3[4] = v11[4];
    a3[5] = v13;
    v14 = v11[1];
    *a3 = *v11;
    a3[1] = v14;
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMd, &_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMR);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v25 = v22 | (v8 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(v5 + 56) + 96 * v25);
      if (v42)
      {
        v30 = v29[1];
        v43 = *v29;
        v44 = v30;
        v31 = v29[2];
        v32 = v29[3];
        v33 = v29[5];
        v47 = v29[4];
        v48 = v33;
        v45 = v31;
        v46 = v32;
      }

      else
      {
        outlined init with copy of CLMonitor.Record(v29, &v43);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v27;
      v16[1] = v28;
      v17 = (*(v7 + 56) + 96 * v15);
      v18 = v44;
      *v17 = v43;
      v17[1] = v18;
      v19 = v45;
      v20 = v46;
      v21 = v48;
      v17[4] = v47;
      v17[5] = v21;
      v17[2] = v19;
      v17[3] = v20;
      ++*(v7 + 16);
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v12 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 96 * v3);
        v15 = (v14 + 96 * v6);
        if (v3 != v6 || result >= v15 + 96)
        {
          result = memmove(result, v15, 0x60uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 96 * v11;

    return outlined assign with take of CLMonitor.Record(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 96 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v27 = a1[2];
  v28 = a1[3];
  v29 = a1[5];
  v25[4] = a1[4];
  v25[5] = v29;
  v25[2] = v27;
  v25[3] = v28;
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v31;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMd, &_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
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
        v22 = 96 * v17;
        outlined init with copy of CLMonitor.Record(*(v2 + 56) + 96 * v17, v30);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = v30[1];
        *v24 = v30[0];
        v26 = v30[2];
        v27 = v30[3];
        v28 = v30[5];
        v24[4] = v30[4];
        v24[5] = v28;
        v24[2] = v26;
        v24[3] = v27;
        v24[1] = v25;
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

        v1 = v29;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreLocation9CLMonitorC6RecordVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMd, &_ss18_DictionaryStorageCySS12CoreLocation9CLMonitorC6RecordVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CLCondition?(v4, &v18, &_sSS_12CoreLocation9CLMonitorC6RecordVtMd, _sSS_12CoreLocation9CLMonitorC6RecordVtMR);
      v5 = v18;
      v6 = v19;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 96 * result);
      v11 = v21;
      *v10 = v20;
      v10[1] = v11;
      v12 = v22;
      v13 = v23;
      v14 = v25;
      v10[4] = v24;
      v10[5] = v14;
      v10[2] = v12;
      v10[3] = v13;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 112;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in CLMonitor.init(_:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator;

  return closure #1 in CLMonitor.init(_:)(a1, v1);
}

uint64_t outlined init with take of CLMonitor.Events(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLMonitor.Events(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t outlined destroy of CLMonitor.Events(uint64_t a1)
{
  v2 = type metadata accessor for CLMonitor.Events(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition.CodingKeys and conformance CLMonitor.MinimumAltitudeCondition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition.CodingKeys and conformance CLMonitor.BeaconIdentityCondition.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type UInt16? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UInt16? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt16? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss6UInt16VSgMd, &_ss6UInt16VSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16? and conformance <A> A?);
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

unint64_t lazy protocol witness table accessor for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition()
{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.CircularGeographicCondition and conformance CLMonitor.CircularGeographicCondition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CLMonitor.CircularGeographicCondition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition()
{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition;
  if (!lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.MinimumAltitudeCondition and conformance CLMonitor.MinimumAltitudeCondition);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CLMonitor.BeaconIdentityCondition(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition and conformance CLMonitor.BeaconIdentityCondition, type metadata accessor for CLMonitor.BeaconIdentityCondition, &protocol conformance descriptor for CLMonitor.BeaconIdentityCondition);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CLMonitor.BeaconIdentityCondition and conformance CLMonitor.BeaconIdentityCondition, type metadata accessor for CLMonitor.BeaconIdentityCondition, &protocol conformance descriptor for CLMonitor.BeaconIdentityCondition);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CLMonitor.Events(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CLMonitor(uint64_t a1)
{
  result = type metadata accessor for CLMonitor.Events(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CLMonitor.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 208) + **(v2 + 208));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = CLMonitor.__allocating_init(_:);

  return v8(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_12CoreLocation11CLCondition_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.Record(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for CLMonitor.Record(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.Event(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CLMonitor.Event(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for CLMonitor.Events(uint64_t a1)
{
  type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for AsyncStream<CLMonitor.Event>, &type metadata for CLMonitor.Event, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for AsyncStream<CLMonitor.Event>.Continuation, &type metadata for CLMonitor.Event, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLMonitoringRecord(319, &lazy cache variable for type metadata for CLMonitorConfiguration, 0x1E695FC08);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ()();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for CLMonitoringRecord(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata completion function for CLMonitor.Events.Iterator(uint64_t a1)
{
  type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for AsyncStream<CLMonitor.Event>.Iterator, &type metadata for CLMonitor.Event, MEMORY[0x1E69E8688]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for CLMonitor.Event?, &type metadata for CLMonitor.Event, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.CircularGeographicCondition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CLMonitor.CircularGeographicCondition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition(uint64_t result, int a2, int a3)
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

void type metadata completion function for CLMonitor.BeaconIdentityCondition(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<CLMonitor.Event>(319, &lazy cache variable for type metadata for UInt16?, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<CLMonitor.Event>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CLMonitor.MinimumAltitudeCondition.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CLMonitor.BeaconIdentityCondition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLMonitor.BeaconIdentityCondition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type CLMonitor.Options and conformance CLMonitor.Options()
{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options;
  if (!lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLMonitor.Options and conformance CLMonitor.Options);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs6UInt32VGMd, &_ss18_DictionaryStorageCySSs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

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
      outlined init with copy of CLCondition?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of CLCondition?(v9, v5, &_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t specialized CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CLMonitor.CircularGeographicCondition.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CLMonitor.BeaconIdentityCondition.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of CLMonitor.Event?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of CLCondition?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t type metadata accessor for CLIdentifiableClientConnectionManager()
{
  result = lazy cache variable for type metadata for CLIdentifiableClientConnectionManager;
  if (!lazy cache variable for type metadata for CLIdentifiableClientConnectionManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLIdentifiableClientConnectionManager);
  }

  return result;
}

uint64_t CLIdentifiableConnectionSequence.Iterator.init(iterator:itrConnectionMgr:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AsyncStream.Iterator();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CLIdentifiableConnectionSequence.Iterator(0, a3, v9, v10);
  *(a4 + *(result + 28)) = a2;
  return result;
}

uint64_t CLIdentifiableConnectionSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](CLIdentifiableConnectionSequence.Iterator.next(), 0, 0);
}

uint64_t CLIdentifiableConnectionSequence.Iterator.next()()
{
  [*(v0[4] + *(v0[3] + 28)) resume];
  v1 = swift_task_alloc();
  v0[5] = v1;
  v2 = type metadata accessor for AsyncStream.Iterator();
  *v1 = v0;
  v1[1] = CLIdentifiableConnectionSequence.Iterator.next();
  v3 = v0[2];

  return MEMORY[0x1EEE6D9D0](v3, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator;

  return CLIdentifiableConnectionSequence.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s12CoreLocation32CLIdentifiableConnectionSequenceV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = _s12CoreLocation32CLIdentifiableConnectionSequenceV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t _s12CoreLocation32CLIdentifiableConnectionSequenceV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id CLIdentifiableConnectionSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for AsyncStream.Iterator();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  v12 = *(v2 + *(a1 + 28));
  CLIdentifiableConnectionSequence.Iterator.init(iterator:itrConnectionMgr:)(v8, v12, v5, a2);
  v9 = v12;

  return v9;
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLIdentifiableConnectionSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CLIdentifiableConnectionSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t type metadata completion function for CLIdentifiableConnectionSequence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for CLIdentifiableClientConnectionManager();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v7 = a4(0, *(a3 + 16));
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 28));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  result = a5(0, *(a4 + 16));
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t related decl e for CLError.alternateRegion.getter(uint64_t a1)
{
  type metadata accessor for related decl 'e' for CLError(0);
  lazy protocol witness table accessor for type related decl 'e' for CLError and conformance related decl 'e' for CLError();
  v1 = _BridgedStoredNSError.userInfo.getter();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v1 + 16))
  {

    goto LABEL_7;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v9);

  type metadata accessor for CLRegion();
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type related decl e for CLError and conformance related decl e for CLError()
{
  result = lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError;
  if (!lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError)
  {
    type metadata accessor for related decl 'e' for CLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type related decl 'e' for CLError and conformance related decl 'e' for CLError);
  }

  return result;
}

unint64_t type metadata accessor for CLRegion()
{
  result = lazy cache variable for type metadata for CLRegion;
  if (!lazy cache variable for type metadata for CLRegion)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLRegion);
  }

  return result;
}

uint64_t CLServiceSession.__allocating_init(authorization:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  CLServiceSession.init(authorization:)(a1);
  return v2;
}

void CLServiceSession.init(authorization:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  *(v2 + 40) = 0;
  *(v2 + 44) = 1;
  v4 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = [objc_opt_self() disconnectedSessionRequiringAuthorization_];
  v7 = *(v2 + 16);
  *(v2 + 16) = v6;
  v8 = v6;

  if (v8)
  {
    type metadata accessor for CLServiceSession.Diagnostics(0);
    swift_allocObject();
    v9 = specialized CLServiceSession.Diagnostics.init(_:)(v8);

    *(v2 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CLServiceSession.__allocating_init(authorization:fullAccuracyPurposeKey:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CLServiceSession.init(authorization:fullAccuracyPurposeKey:)(a1, a2, a3);
  return v6;
}

void CLServiceSession.init(authorization:fullAccuracyPurposeKey:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  *(v4 + 40) = 0;
  *(v4 + 44) = 1;
  v8 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = objc_opt_self();
  v11 = MEMORY[0x1C6944850](a2, a3);
  v12 = [v10 disconnectedSessionRequiringAuthorization:v7 fullAccuracyPurposeKey:v11];

  v13 = *(v4 + 16);
  *(v4 + 16) = v12;
  v14 = v12;

  if (v14)
  {

    type metadata accessor for CLServiceSession.Diagnostics(0);
    swift_allocObject();
    v15 = specialized CLServiceSession.Diagnostics.init(_:)(v14);

    *(v4 + 24) = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CLServiceSession.__allocating_init(requirement:)(char *a1)
{
  v2 = *a1;
  swift_allocObject();
  return specialized CLServiceSession.init(requirement:locationManager:)(&v2, 0);
}

uint64_t CLServiceSession.__allocating_init(requirement:locationManager:)(unsigned __int8 *a1, void *a2)
{
  swift_allocObject();
  v4 = specialized CLServiceSession.init(requirement:locationManager:)(a1, a2);

  return v4;
}

uint64_t CLServiceSession.init(requirement:locationManager:)(unsigned __int8 *a1, void *a2)
{
  v3 = specialized CLServiceSession.init(requirement:locationManager:)(a1, a2);

  return v3;
}

void closure #1 in CLServiceSession.init(requirement:locationManager:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&dword_1C5333000, v9, v10, "#CLServiceSession handler : messageName: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1C6945100](v12, -1, -1);
    MEMORY[0x1C6945100](v11, -1, -1);
  }

  v25[0] = 0xD000000000000022;
  v25[1] = 0x80000001C534FA00;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v13, v25);
    outlined destroy of AnyHashable(v24);
    if (swift_dynamicCast())
    {
      v15 = v23;
      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v24);
  }

  v15 = 0;
LABEL_11:
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24[0] = v19;
    *v18 = 136315138;
    v25[0] = v15;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1C5333000, v16, v17, "#CLServiceSession handler: diagnostics: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1C6945100](v19, -1, -1);
    MEMORY[0x1C6945100](v18, -1, -1);
  }

  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = v15;
  }
}

void CLServiceSession.init(locationManager:authorization:)(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0;
  *(v3 + 44) = 1;
  v6 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = [objc_opt_self() sessionWithLocationManager:a1 authorizationRequirement:v5 fullAccuracyPurposeKey:0 queue:0 handler:0];
  v9 = *(v3 + 16);
  *(v3 + 16) = v8;
  v10 = v8;

  if (v10)
  {
    type metadata accessor for CLServiceSession.Diagnostics(0);
    swift_allocObject();
    v11 = specialized CLServiceSession.Diagnostics.init(_:)(v10);

    *(v3 + 24) = v11;
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CLServiceSessionDiagnostic) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall CLServiceSession.invalidate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  [*(v0 + 16) invalidate];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  swift_beginAccess();
  outlined assign with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(v3, v0 + v5);
  swift_endAccess();
}

uint64_t CLServiceSession.deinit()
{

  outlined destroy of CLMonitor.Event?(v0 + OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  return v0;
}

uint64_t CLServiceSession.__deallocating_deinit()
{

  outlined destroy of CLMonitor.Event?(v0 + OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);

  return swift_deallocClassInstance();
}

void CLLocationManager.serviceSession()(unsigned __int8 a1)
{
  v2 = a1;
  type metadata accessor for CLServiceSession(0);
  swift_allocObject();
  CLServiceSession.init(locationManager:authorization:)(v1, &v2);
}

uint64_t CLServiceSession.Diagnostics.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLServiceSession.Diagnostics.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLServiceSession.Diagnostics.Iterator;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t _s12CoreLocation16CLServiceSessionC11DiagnosticsC8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t CLServiceSession.Diagnostics.makeAsyncIterator()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5333000, v1, v2, "#serviceSession makeAsyncIterator", v3, 2u);
    MEMORY[0x1C6945100](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  return AsyncStream.makeAsyncIterator()();
}

uint64_t closure #1 in CLServiceSession.Diagnostics.init(_:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, _sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19[1] = a2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v19[2] = [v9 diagnosticMask];
    type metadata accessor for CLClientDiagnosticMask(0);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1C5333000, v10, v11, "#serviceSession yielding diagnosticMask: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1C6945100](v14, -1, -1);
    MEMORY[0x1C6945100](v13, -1, -1);
  }

  v20 = [v9 diagnosticMask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

id closure #2 in CLServiceSession.Diagnostics.init(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5333000, v4, v5, "#serviceSession terminating", v6, 2u);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  result = *(a2 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_serviceSession);
  if (result)
  {

    return [result invalidate];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CLServiceSession.Diagnostics.deinit()
{
  v1 = OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CLServiceSession.Diagnostics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLServiceSession.Diagnostics()
{
  CLServiceSession.Diagnostics.makeAsyncIterator()();
}

void CLServiceSession.diagnostics.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C5333000, v7, v8, "#serviceSession creating a Diagnostics AsyncSequence", v9, 2u);
    MEMORY[0x1C6945100](v9, -1, -1);
  }

  if (*(v1 + 16))
  {
    if (*(v1 + 24))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CLServiceSession.Diagnostics(0);
    v10 = swift_allocObject();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
    AsyncStream.init(_:bufferingPolicy:_:)();
    *(v10 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_serviceSession) = 0;
  }
}

uint64_t CLServiceSession._locationIntelligenceDiagnostics.getter@<X0>(uint64_t *a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  swift_beginAccess();
  outlined init with copy of CLCondition?(v1 + v10, v9, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v9, 1, v11);
  outlined destroy of CLMonitor.Event?(v9, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  if (v13 == 1)
  {
    (*(v20 + 104))(v22, *MEMORY[0x1E69E8650], v21);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
    v15 = v23;
    v23[3] = v14;
    v15[4] = lazy protocol witness table accessor for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>(&lazy protocol witness table cache variable for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR, MEMORY[0x1E69E86A0]);
    __swift_allocate_boxed_opaque_existential_1(v15);
    return AsyncStream.init(_:bufferingPolicy:_:)();
  }

  else
  {
    v17 = v23;
    outlined init with copy of CLCondition?(v1 + v10, v7, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
    result = v12(v7, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v17[3] = v11;
      v17[4] = lazy protocol witness table accessor for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>(&lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic> and conformance CLIdentifiableConnectionSequence<A>, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR, &protocol conformance descriptor for CLIdentifiableConnectionSequence<A>);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      return outlined init with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>(v7, boxed_opaque_existential_1);
    }
  }

  return result;
}

Swift::Int CLServiceSession.AuthorizationRequirement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLServiceSession.AuthorizationRequirement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLServiceSession.AuthorizationRequirement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t specialized CLServiceSession.Diagnostics.init(_:)(void *a1)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v1);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v15 = v4;
  v16 = v32;
  (*(v2 + 8))(v15, v1);
  v34 = v12;
  v35 = v11;
  v17 = v11;
  v18 = v5;
  v19 = v31;
  (*(v12 + 16))(v16 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_stream, v14, v17);
  v20 = v33;
  *(v16 + OBJC_IVAR____TtCC12CoreLocation16CLServiceSession11Diagnostics_serviceSession) = v33;
  (*(v19 + 16))(v8, v10, v18);
  v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v22 = swift_allocObject();
  (*(v19 + 32))(v22 + v21, v8, v18);
  aBlock[4] = partial apply for closure #1 in CLServiceSession.Diagnostics.init(_:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLServiceSessionDiagnostic) -> ();
  aBlock[3] = &block_descriptor_51;
  v23 = _Block_copy(aBlock);
  v24 = v20;

  [v24 setHandler_];
  _Block_release(v23);

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C5333000, v26, v27, "#serviceSession successfully created", v28, 2u);
    MEMORY[0x1C6945100](v28, -1, -1);
  }

  AsyncStream.Continuation.onTermination.setter();
  (*(v19 + 8))(v10, v18);
  (*(v34 + 8))(v14, v35);
  return v16;
}

uint64_t specialized CLServiceSession.init(requirement:locationManager:)(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v95 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v90 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
  v109 = *(v9 - 8);
  v110 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v97 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMd, &_sScSy12CoreLocation16CLServiceSessionC10DiagnosticVGMR);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v98 = &v90 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v103 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v90 - v26;
  v28 = *a1;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0;
  *(v3 + 44) = 1;
  v29 = *(v17 + 56);
  v101 = OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence;
  v106 = v16;
  v100 = v17 + 56;
  v99 = v29;
  v29(v3 + OBJC_IVAR____TtC12CoreLocation16CLServiceSession__connectionSequence, 1, 1, v16);
  if (!(v28 >> 6))
  {
    if (v28)
    {
      if (v28 != 1)
      {
        *(v3 + 32) = 2;
        *(v3 + 36) = 0;
        v31 = 1;
        goto LABEL_12;
      }

      v31 = 1;
      *(v3 + 32) = 1;
    }

    else
    {
      v31 = 0;
      *(v3 + 32) = 1;
    }

    *(v3 + 36) = 0;
    goto LABEL_12;
  }

  if (v28 >> 6 == 1)
  {
    v30 = 3;
  }

  else
  {
    v30 = 4;
  }

  *(v3 + 32) = v30;
  *(v3 + 36) = 0;
  v31 = v28 & 1;
LABEL_12:
  v102 = v27;
  v104 = v17;
  *(v3 + 40) = v31;
  *(v3 + 44) = 0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  __swift_project_value_buffer(v94, logger);
  swift_retain_n();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v107 = v14;
  if (!v34)
  {

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s6UInt32VtGMd, &_ss23_ContiguousArrayStorageCySS_s6UInt32VtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C534EE00;
    *(inited + 32) = 0x546E6F6973736553;
    *(inited + 40) = 0xEB00000000657079;
    if (*(v3 + 36))
    {
      __break(1u);
    }

    else
    {
      *(inited + 48) = *(v3 + 32);
      *(inited + 56) = 0x4D6E6F6973736553;
      *(inited + 64) = 0xEB0000000065646FLL;
      if ((*(v3 + 44) & 1) == 0)
      {
        *(inited + 72) = *(v3 + 40);
        v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_s6UInt32VtMd, &_sSS_s6UInt32VtMR);
        swift_arrayDestroy();
        v93 = "ssion11Diagnostics";
        v92 = v49;
        v50 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v49);
        (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
        v51 = v95;
        v52 = v108;
        v53 = v111;
        static AsyncStream.makeStream(of:bufferingPolicy:)();
        (*(v6 + 8))(v8, v5);
        v54 = *(v14 + 16);
        v55 = v105;
        v95 = v13;
        v54(v105, v52, v13);
        specialized _dictionaryUpCast<A, B, C, D>(_:)(v50);

        v56 = v109;
        v57 = v110;
        v58 = v97;
        (*(v109 + 16))(v97, v53, v110);
        v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
        v60 = (v96 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        (*(v56 + 32))(v61 + v59, v58, v57);
        v62 = (v61 + v60);
        *v62 = closure #1 in CLServiceSession.init(requirement:locationManager:);
        v62[1] = 0;
        v63 = objc_allocWithZone(MEMORY[0x1E695FBD8]);
        v64 = v51;
        v65 = MEMORY[0x1C6944850](0xD000000000000023, v93 | 0x8000000000000000);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        aBlock[4] = partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:);
        aBlock[5] = v61;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed [AnyHashable : Any]) -> ();
        aBlock[3] = &block_descriptor_0;
        v67 = _Block_copy(aBlock);
        v68 = [v63 initWithStartMessageName:v65 startMessagePayload:isa locationManager:v64 responseHandler:v67];

        v69 = v55;
        _Block_release(v67);

        v70 = v106;
        *(v55 + *(v106 + 28)) = v68;
        v71 = swift_allocObject();
        *(v71 + 16) = 0;
        *(v71 + 24) = v68;
        v72 = v68;
        AsyncStream.Continuation.onTermination.setter();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v94, logger);
        v73 = v98;
        outlined init with copy of CLCondition?(v55, v98, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          aBlock[0] = v77;
          *v76 = 136315138;
          v97 = v64;
          outlined init with copy of CLCondition?(v73, v91, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
          v78 = String.init<A>(describing:)();
          v79 = v73;
          v80 = v78;
          v82 = v81;
          outlined destroy of CLMonitor.Event?(v79, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, aBlock);
          v70 = v106;

          *(v76 + 4) = v83;
          _os_log_impl(&dword_1C5333000, v74, v75, "#ConnectionSequnece created. self: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x1C6945100](v77, -1, -1);
          v84 = v76;
          v69 = v105;
          MEMORY[0x1C6945100](v84, -1, -1);
        }

        else
        {

          outlined destroy of CLMonitor.Event?(v73, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
        }

        (*(v109 + 8))(v111, v110);
        (*(v107 + 8))(v108, v95);
        v85 = v104;
        v86 = v103;
        v87 = v102;
        v88 = v101;
        v89 = v99;
        outlined init with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>(v69, v102);
        v89(v87, 0, 1, v70);
        swift_beginAccess();
        outlined assign with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(v87, v3 + v88);
        swift_endAccess();
        outlined init with copy of CLCondition?(v3 + v88, v86, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
        if ((*(v85 + 48))(v86, 1, v70) != 1)
        {

          [*(v86 + *(v70 + 28)) resume];
          outlined destroy of CLMonitor.Event?(v86, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
          return v3;
        }

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v93 = v5;
  v35 = v13;
  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  aBlock[0] = v37;
  *v36 = 136315394;
  v38 = *(v3 + 32);
  v39 = *(v3 + 36);

  if (v39)
  {
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  v112 = v38;
  type metadata accessor for CLServiceSessionType(0);
  v40 = String.init<A>(describing:)();
  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, aBlock);

  *(v36 + 4) = v42;
  *(v36 + 12) = 2080;
  v43 = *(v3 + 40);
  LOBYTE(v42) = *(v3 + 44);

  if ((v42 & 1) == 0)
  {
    v112 = v43;
    type metadata accessor for CLServiceSessionMode(0);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, aBlock);

    *(v36 + 14) = v47;
    _os_log_impl(&dword_1C5333000, v32, v33, "#CLServiceSession init SessionType: %s, SessionMode: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v37, -1, -1);
    MEMORY[0x1C6945100](v36, -1, -1);

    v13 = v35;
    v14 = v107;
    v5 = v93;
    goto LABEL_19;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AsyncStream<CLServiceSession.Diagnostic> and conformance AsyncStream<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with take of CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator;
  if (!lazy protocol witness table cache variable for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator)
  {
    type metadata accessor for CLServiceSession.Diagnostics.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.Diagnostics.Iterator and conformance CLServiceSession.Diagnostics.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement;
  if (!lazy protocol witness table cache variable for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.AuthorizationRequirement and conformance CLServiceSession.AuthorizationRequirement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement;
  if (!lazy protocol witness table cache variable for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.LearnedRoutesRequirement and conformance CLServiceSession.LearnedRoutesRequirement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement()
{
  result = lazy protocol witness table cache variable for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement;
  if (!lazy protocol witness table cache variable for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLServiceSession.VisitHistoryRequirement and conformance CLServiceSession.VisitHistoryRequirement);
  }

  return result;
}

void type metadata completion function for CLServiceSession(uint64_t a1)
{
  type metadata accessor for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA16CLServiceSessionC10DiagnosticVGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CLIdentifiableConnectionSequence<CLServiceSession.Diagnostic>?);
    }
  }
}

void type metadata completion function for CLServiceSession.Diagnostics(uint64_t a1)
{
  type metadata accessor for AsyncStream<CLServiceSession.Diagnostic>(319, &lazy cache variable for type metadata for AsyncStream<CLServiceSession.Diagnostic>, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLServiceSession.Diagnostics.Iterator(uint64_t a1)
{
  type metadata accessor for AsyncStream<CLServiceSession.Diagnostic>(319, &lazy cache variable for type metadata for AsyncStream<CLServiceSession.Diagnostic>.Iterator, MEMORY[0x1E69E8688]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncStream<CLServiceSession.Diagnostic>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CLServiceSession.Diagnostic);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CLServiceSession.Requirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CLServiceSession.Requirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLServiceSession.LearnedRoutesRequirement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLServiceSession.LearnedRoutesRequirement(uint64_t result, unsigned int a2, unsigned int a3)
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

void partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(NSObject *a1, unint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(a1, a2, a3, v3 + v8, v10, v11);
}

{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(a1, a2, a3, v3 + v8, v10, v11);
}

{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in CLServiceSession.Diagnostics.init(_:)(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in CLServiceSession.Diagnostics.init(_:)(a1, v4);
}

void one-time initialization function for CLLocationCoordinate2DInNSValueObjCType()
{
  v0 = Selector.init(_:)();
  type metadata accessor for NSValue();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata methodForSelector_];
  if (v2)
  {
    v3 = v2(ObjCClassFromMetadata, v0, 0.0, 0.0);
    v4 = [v3 objCType];
    v5 = v3;
  }

  else
  {
    type metadata accessor for CLLocationCoordinate2D(0);
    v4 = "{CLLocationCoordinate2D=dd}";
  }

  CLLocationCoordinate2DInNSValueObjCType = v4;
}

NSValue __swiftcall CLLocationCoordinate2D._bridgeToObjectiveC()()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = v0;
  v4 = v1;
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    swift_once();
  }

  return [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:&v3 objCType:CLLocationCoordinate2DInNSValueObjCType];
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CLLocationCoordinate2D()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    swift_once();
  }

  return [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:&v2 objCType:CLLocationCoordinate2DInNSValueObjCType];
}

double specialized static CLLocationCoordinate2D._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a1 objCType];
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  if (strcmp(v4, CLLocationCoordinate2DInNSValueObjCType))
  {
    __break(1u);
  }

  v7[0] = 0.0;
  v7[1] = 0.0;
  [a1 getValue_];
  result = v7[0];
  *a2 = *v7;
  *(a2 + 16) = 0;
  return result;
}

BOOL specialized static CLLocationCoordinate2D._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 objCType];
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = strcmp(v4, CLLocationCoordinate2DInNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    v9 = 0uLL;
    [a1 getValue_];
    v6 = v9;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v5 != 0;
  return result;
}

double specialized static CLLocationCoordinate2D._unconditionallyBridgeFromObjectiveC(_:)(void *a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  v2 = [a1 objCType];
  if (one-time initialization token for CLLocationCoordinate2DInNSValueObjCType != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  if (strcmp(v2, CLLocationCoordinate2DInNSValueObjCType))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5[0] = 0;
  v5[1] = 0;
  [a1 getValue_];
  return *v5;
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

uint64_t _CLUpdaterAdapter.__deallocating_deinit()
{
  [*(v0 + 16) pause];

  return swift_deallocClassInstance();
}

void thunk for @escaping @callee_guaranteed (@guaranteed CLUpdate?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id CLLocationUpdate.location.getter()
{
  v1 = [*v0 location];

  return v1;
}

Swift::Int CLLocationUpdate.LiveConfiguration.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C6944B50](v1);
  return Hasher._finalize()();
}

void CLLocationUpdate.Updates.init(_:configuration:)(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (a1)
  {
    v6 = [a1 liveUpdaterWithConfiguration:v5 queue:0 handler:0];
  }

  else
  {
    v6 = [objc_opt_self() _liveUpdaterWithConfiguration_queue_handler_];
  }

  v7 = v6;
  v8 = one-time initialization token for logger;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1C5333000, v11, v12, "#LocationUpdates Creating liveUpdates %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1C6945100](v14, -1, -1);
    MEMORY[0x1C6945100](v13, -1, -1);
  }

  if (v9)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(v9, 0, a3);
  }

  else
  {
    __break(1u);
  }
}

void static CLLocationUpdate.historicalUpdates(interestInterval:maxSampleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DateInterval();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  CLLocationUpdate.Updates.init(_:interestInterval:maxSampleCount:)(0, v10, a2, a3 & 1, a4);
}

void CLLocationUpdate.Updates.init(_:interestInterval:maxSampleCount:)(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a5;
  v45 = a4;
  v44 = a3;
  if (a1)
  {
    v14 = a1;
    v15.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      v16 = 0x7FFFFFFFLL;
    }

    else
    {
      v16 = a3;
    }

    if (v16 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v16 <= 0x7FFFFFFF)
    {
      isa = v15.super.isa;
      v18 = v10;
      v19 = [v14 historicalUpdaterWithDateInterval:v15.super.isa sampleCount:? queue:? handler:?];

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_23;
  }

  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v20 = 0x7FFFFFFFLL;
  }

  else
  {
    v20 = a3;
  }

  v21 = objc_opt_self();
  if (v20 < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v10;
  v19 = [v21 _historicalUpdaterWithDateInterval_sampleCount_queue_handler_];
LABEL_14:

  v22 = one-time initialization token for logger;
  v23 = v19;
  if (v22 != -1)
  {
    swift_once();
  }

  v46 = a1;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, logger);
  v25 = v18;
  (*(v11 + 16))(v13, a2, v18);
  v26 = Logger.logObject.getter();
  v27 = v11;
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v43 = a2;
    v30 = v29;
    v42 = swift_slowAlloc();
    v50 = v42;
    *v30 = 136315394;
    lazy protocol witness table accessor for type CLLocationUpdate.Updates.Iterator and conformance CLLocationUpdate.Updates.Iterator(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v27 + 8);
    v34(v13, v25);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v50);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v48 = v44;
    v49 = v45 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v50);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_1C5333000, v26, v28, "#LocationUpdates Creating historicalUpdates with interestInterval: %s, maxSampleCount: %s", v30, 0x16u);
    v39 = v42;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v39, -1, -1);
    v40 = v30;
    a2 = v43;
    MEMORY[0x1C6945100](v40, -1, -1);
  }

  else
  {

    v34 = *(v27 + 8);
    v34(v13, v25);
  }

  if (v23)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(v23, 1, v47);

    v34(a2, v25);
    return;
  }

LABEL_25:
  __break(1u);
}

void static CLLocationUpdate.historicalUpdates(center:radius:interestInterval:maxSampleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v53 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  outlined init with copy of DateInterval?(a1, &v49 - v23);
  outlined init with copy of DateInterval?(v24, v22);
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  isa = 0;
  if ((*(v26 + 48))(v22, 1, v25) != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v26 + 8))(v22, v25);
  }

  if (a3)
  {
    v28 = 0x7FFFFFFFLL;
  }

  else
  {
    v28 = a2;
  }

  v29 = objc_opt_self();
  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v28 <= 0x7FFFFFFF)
  {
    v52 = v14;
    v30 = [v29 _historicalUpdaterWithCenter_radius_dateInterval_sampleCount_queue_handler_];

    v31 = one-time initialization token for logger;
    v14 = v30;
    if (v31 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, logger);
  outlined init with copy of DateInterval?(v24, v19);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v49 = a2;
    v36 = v35;
    v50 = swift_slowAlloc();
    v56 = v50;
    *v36 = 136315906;
    v54 = a5;
    v55 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v56);
    v51 = a4;
    v40 = v39;

    *(v36 + 4) = v40;
    *(v36 + 12) = 2048;
    *(v36 + 14) = a7;
    *(v36 + 22) = 2080;
    outlined init with copy of DateInterval?(v19, v53);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    outlined destroy of DateInterval?(v19);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v56);

    *(v36 + 24) = v44;
    *(v36 + 32) = 2080;
    v54 = *&v49;
    LOBYTE(v55) = a3 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v56);

    *(v36 + 34) = v47;
    a4 = v51;
    _os_log_impl(&dword_1C5333000, v33, v34, "#LocationUpdates Creating historicalUpdates with center: %s,  with radius: %f, interestInterval: %s, sampleCount: %s", v36, 0x2Au);
    v48 = v50;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v48, -1, -1);
    MEMORY[0x1C6945100](v36, -1, -1);
  }

  else
  {

    outlined destroy of DateInterval?(v19);
  }

  if (v14)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(v14, 1, a4);

    outlined destroy of DateInterval?(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CLLocationUpdate.Updates.Iterator.next()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](CLLocationUpdate.Updates.Iterator.next(), 0, 0);
}

uint64_t CLLocationUpdate.Updates.Iterator.next()()
{
  [*(*(*(v0 + 40) + *(type metadata accessor for CLLocationUpdate.Updates.Iterator(0) + 20)) + 16) resume];
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS8IteratorVy12CoreLocation16CLLocationUpdateV_GMR);
  *v1 = v0;
  v1[1] = CLLocationUpdate.Updates.Iterator.next();

  return MEMORY[0x1EEE6D9D0](v0 + 16, v2);
}

{

  return MEMORY[0x1EEE6DFA0](CLLocationUpdate.Updates.Iterator.next(), 0, 0);
}

{
  v15 = v0;
  v1 = *(v0 + 16);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136380675;
    *(v0 + 24) = v1;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation16CLLocationUpdateVSgMd, &_s12CoreLocation16CLLocationUpdateVSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C5333000, v4, v5, "#LocationUpdates Iterator.next value: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6945100](v7, -1, -1);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  **(v0 + 32) = v1;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLLocationUpdate.Updates.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLMonitor.Events.Iterator;

  return CLLocationUpdate.Updates.Iterator.next()(a1);
}

uint64_t _s12CoreLocation16CLLocationUpdateV7UpdatesV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = _s12CoreLocation9CLMonitorC6EventsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return CLLocationUpdate.Updates.Iterator.next()(a1);
}

id CLLocationUpdate.Updates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C5333000, v5, v6, "#LocationUpdates makeAsyncIterator", v7, 2u);
    MEMORY[0x1C6945100](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLLocationUpdateVGMd, &_sScSy12CoreLocation16CLLocationUpdateVGMR);
  AsyncStream.makeAsyncIterator()();
  v10 = *(v2 + *(type metadata accessor for CLLocationUpdate.Updates(0) + 20));
  type metadata accessor for _CLUpdaterAdapter();
  v8 = swift_allocObject();
  *(v8 + 16) = v10;
  *(a1 + *(type metadata accessor for CLLocationUpdate.Updates.Iterator(0) + 20)) = v8;

  return v10;
}

uint64_t CLLocationUpdate.Updates.init(updater:isHistorical:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v36 = a3;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLLocationUpdateV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation16CLLocationUpdateV__GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation16CLLocationUpdateVGMd, &_sScSy12CoreLocation16CLLocationUpdateVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v17 = v3;
  v18 = v7;
  (*(v4 + 8))(v6, v17);
  v19 = *(v14 + 16);
  v20 = v36;
  v39 = v13;
  v40 = v16;
  v21 = v16;
  v22 = v12;
  v23 = v35;
  v19(v36, v21, v13);
  v24 = type metadata accessor for CLLocationUpdate.Updates(0);
  v25 = v37;
  *(v20 + *(v24 + 20)) = v37;
  (*(v23 + 16))(v10, v22, v7);
  v26 = (*(v23 + 80) + 17) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v38;
  (*(v23 + 32))(v27 + v26, v10, v7);
  aBlock[4] = partial apply for closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLUpdate?) -> ();
  aBlock[3] = &block_descriptor_1;
  v28 = _Block_copy(aBlock);
  v29 = v25;

  [v29 setHandler_];
  _Block_release(v28);

  *(swift_allocObject() + 16) = v29;
  AsyncStream.Continuation.onTermination.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, logger);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1C5333000, v31, v32, "#LocationUpdates successfully created", v33, 2u);
    MEMORY[0x1C6945100](v33, -1, -1);
  }

  (*(v23 + 8))(v22, v18);
  return (*(v14 + 8))(v40, v39);
}

void closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation16CLLocationUpdateV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation16CLLocationUpdateV__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  if (a2)
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
      AsyncStream.Continuation.finish()();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, logger);
      v23 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C5333000, v23, v9, "#LocationUpdates Historical updates has finished iterating. Ending iteration.", v10, 2u);
        MEMORY[0x1C6945100](v10, -1, -1);
      }

      v11 = v23;

      return;
    }
  }

  else if (!a1)
  {
    __break(1u);
    return;
  }

  v25 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v7, v4);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136380675;

    v24 = [v14 location];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CLLocationCSgMd, &_sSo10CLLocationCSgMR);
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1C5333000, v15, v16, "#LocationUpdates yielding an Update: %{private}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1C6945100](v18, -1, -1);
    MEMORY[0x1C6945100](v17, -1, -1);
  }

  else
  {
  }
}

id closure #2 in CLLocationUpdate.Updates.init(updater:isHistorical:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5333000, v4, v5, "#LocationUpdates terminating", v6, 2u);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  return [a2 pause];
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLLocationUpdate.Updates@<X0>(uint64_t a1@<X8>)
{
  CLLocationUpdate.Updates.makeAsyncIterator()(a1);

  return outlined destroy of CLLocationUpdate.Updates(v1);
}

void CLLocationManager.liveUpdates(_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = v2;
  CLLocationUpdate.Updates.init(_:configuration:)(v2, &v5, a2);
}

void CLLocationManager.historicalUpdates(interestInterval:maxSampleCount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for DateInterval();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = v4;
  CLLocationUpdate.Updates.init(_:interestInterval:maxSampleCount:)(v4, v11, a2, a3 & 1, a4);
}

void CLLocationManager.historicalUpdates(center:radius:interestInterval:maxSampleCount:)(uint64_t a1@<X0>, double a2@<X1>, id a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v51);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  outlined init with copy of DateInterval?(a1, &v48 - v22);
  outlined init with copy of DateInterval?(v23, v21);
  v24 = type metadata accessor for DateInterval();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v21, 1, v24);
  v27 = v7;
  isa = 0;
  if (v26 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v25 + 8))(v21, v24);
  }

  if (a3)
  {
    v29 = 0x7FFFFFFFLL;
  }

  else
  {
    v29 = *&v52;
  }

  if (v29 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v29 <= 0x7FFFFFFF)
  {
    v49 = a3;
    v30 = [v27 historicalUpdaterWithDateInterval:isa sampleCount:? queue:? handler:?];

    v31 = one-time initialization token for logger;
    a3 = v30;
    if (v31 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  swift_once();
LABEL_9:
  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, logger);
  outlined init with copy of DateInterval?(v23, v18);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v35 = 136315906;
    v53 = a5;
    v54 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v36 = String.init<A>(describing:)();
    v38 = a4;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v55);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2048;
    *(v35 + 14) = a7;
    *(v35 + 22) = 2080;
    outlined init with copy of DateInterval?(v18, v50);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    outlined destroy of DateInterval?(v18);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v55);
    a4 = v38;

    *(v35 + 24) = v43;
    *(v35 + 32) = 2080;
    v53 = v52;
    LOBYTE(v54) = v49 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v44 = String.init<A>(describing:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v55);

    *(v35 + 34) = v46;
    _os_log_impl(&dword_1C5333000, v33, v34, "#LocationUpdates Creating historicalUpdates with center: %s,  with radius: %f, interestInterval: %s, sampleCount: %s", v35, 0x2Au);
    v47 = v48;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v47, -1, -1);
    MEMORY[0x1C6945100](v35, -1, -1);
  }

  else
  {

    outlined destroy of DateInterval?(v18);
  }

  if (a3)
  {
    CLLocationUpdate.Updates.init(updater:isHistorical:)(a3, 1, a4);

    outlined destroy of DateInterval?(v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  v1 = a1();

  return MEMORY[0x1EEE6BBE8](v1, 0);
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    return MEMORY[0x1E69E7CC0];
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
          return MEMORY[0x1E69E7CC0];
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration()
{
  result = lazy protocol witness table cache variable for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration;
  if (!lazy protocol witness table cache variable for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLLocationUpdate.LiveConfiguration and conformance CLLocationUpdate.LiveConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationUpdate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CLLocationUpdate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationUpdate.LiveConfiguration(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CLLocationUpdate.LiveConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for CLLocationUpdate.Updates(uint64_t a1)
{
  type metadata accessor for AsyncStream<CLLocationUpdate>(319, &lazy cache variable for type metadata for AsyncStream<CLLocationUpdate>, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for CLLocationUpdate.Updates.Iterator(uint64_t a1)
{
  type metadata accessor for AsyncStream<CLLocationUpdate>(319, &lazy cache variable for type metadata for AsyncStream<CLLocationUpdate>.Iterator, MEMORY[0x1E69E8688]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for _CLUpdaterAdapter();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<CLLocationUpdate>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CLLocationUpdate);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of CLLocationUpdate.Updates(uint64_t a1)
{
  v2 = type metadata accessor for CLLocationUpdate.Updates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void partial apply for closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMd, &_sScS12ContinuationVy12CoreLocation16CLLocationUpdateV_GMR);
  v3 = *(v1 + 16);

  closure #1 in CLLocationUpdate.Updates.init(updater:isHistorical:)(a1, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type CLLocationUpdate.Updates.Iterator and conformance CLLocationUpdate.Updates.Iterator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
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
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
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

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        outlined init with take of Any(&v22, v24);
        outlined init with take of Any(v24, v25);
        outlined init with take of Any(v25, &v23);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = outlined init with take of Any(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = outlined init with take of Any(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, &_sSS3key_10Foundation4DateV5valuetMR);
  v5 = MEMORY[0x1EEE9AC00](v46);
  v45 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v38 - v7;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v9 = v50 + 64;
  v10 = 1 << *(v50 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v50 + 64);
  v13 = (v10 + 63) >> 6;
  v43 = v49 + 16;
  v42 = v49 + 32;
  v39 = v8 + 8;

  v15 = 0;
  v41 = v9;
  v40 = v13;
  while (v12)
  {
    v18 = v15;
LABEL_14:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v46;
    v26 = v44;
    v27 = v48;
    (*(v49 + 16))(&v44[*(v46 + 48)], *(v50 + 56) + *(v49 + 72) * v20, v48);
    *v26 = v24;
    v26[1] = v23;
    v28 = v45;
    outlined init with take of (key: String, value: Date)(v26, v45);
    v29 = *(v25 + 48);
    v31 = *v28;
    v30 = v28[1];
    (*(v21 + 32))(v47, v28 + v29, v27);

    swift_dynamicCast();
    outlined init with take of Any(&v51, v53);
    outlined init with take of Any(v53, v54);
    outlined init with take of Any(v54, &v52);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
    v32 = result;
    if (v33)
    {
      v16 = (v8[6] + 16 * result);
      *v16 = v31;
      v16[1] = v30;

      v17 = (v8[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      result = outlined init with take of Any(&v52, v17);
    }

    else
    {
      if (v8[2] >= v8[3])
      {
        goto LABEL_20;
      }

      *(v39 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v34 = (v8[6] + 16 * result);
      *v34 = v31;
      v34[1] = v30;
      result = outlined init with take of Any(&v52, (v8[7] + 32 * result));
      v35 = v8[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_21;
      }

      v8[2] = v37;
    }

    v15 = v18;
    v9 = v41;
    v13 = v40;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v18);
    ++v15;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(NSObject *a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, void, void, void), uint64_t a6)
{
  v32 = a6;
  v33 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMd, _sScS12ContinuationV11YieldResultOy12CoreLocation16CLServiceSessionC10DiagnosticV__GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a5;
    v31 = v10;
    v17 = v16;
    v18 = a3;
    v19 = swift_slowAlloc();
    v34 = v19;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a2, &v34);
    _os_log_impl(&dword_1C5333000, v14, v15, "#ConnectionSequnece handler received message: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v20 = v19;
    a3 = v18;
    MEMORY[0x1C6945100](v20, -1, -1);
    a5 = v30;
    v10 = v31;
    MEMORY[0x1C6945100](v17, -1, -1);
  }

  if (*(a3 + 16))
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = a3;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C5333000, v21, v22, "#ConnectionSequnece passing response to the caller", v24, 2u);
      v25 = v24;
      a3 = v23;
      MEMORY[0x1C6945100](v25, -1, -1);
    }

    a5(&v34, v33, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation16CLServiceSessionC10DiagnosticV_GMR);
    AsyncStream.Continuation.finish()();
    v33 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C5333000, v33, v26, "#ConnectionSequnece nil paylaod terminated the AsyncStream", v27, 2u);
      MEMORY[0x1C6945100](v27, -1, -1);
    }

    v28 = v33;
  }
}

void specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(NSObject *a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(os_log_t, uint64_t, uint64_t), uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation18CLLivePlaceContextV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation18CLLivePlaceContextV__GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CLLivePlaceContext(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v9;
    v35 = v11;
    v21 = v20;
    v22 = a3;
    v23 = swift_slowAlloc();
    v40 = v23;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v40);
    _os_log_impl(&dword_1C5333000, v18, v19, "#ConnectionSequnece handler received message: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v24 = v23;
    a3 = v22;
    MEMORY[0x1C6945100](v24, -1, -1);
    v9 = v34;
    v11 = v35;
    MEMORY[0x1C6945100](v21, -1, -1);
  }

  if (*(a3 + 16))
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = a3;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C5333000, v25, v26, "#ConnectionSequnece passing response to the caller", v28, 2u);
      v29 = v28;
      a3 = v27;
      MEMORY[0x1C6945100](v29, -1, -1);
    }

    v38(v39, a2, a3);
    outlined init with copy of CLHistoricalPlaceContext(v16, v36, type metadata accessor for CLLivePlaceContext);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v11, v8);
    outlined destroy of CLHistoricalPlaceContext(v16, type metadata accessor for CLLivePlaceContext);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
    AsyncStream.Continuation.finish()();
    v39 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C5333000, v39, v30, "#ConnectionSequnece nil paylaod terminated the AsyncStream", v31, 2u);
      MEMORY[0x1C6945100](v31, -1, -1);
    }

    v32 = v39;
  }
}

{
  v37 = a6;
  v38 = a5;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation24CLHistoricalPlaceContextV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation24CLHistoricalPlaceContextV__GMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CLHistoricalPlaceContext(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v9;
    v35 = v11;
    v21 = v20;
    v22 = a3;
    v23 = swift_slowAlloc();
    v40 = v23;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, a2, &v40);
    _os_log_impl(&dword_1C5333000, v18, v19, "#ConnectionSequnece handler received message: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v24 = v23;
    a3 = v22;
    MEMORY[0x1C6945100](v24, -1, -1);
    v9 = v34;
    v11 = v35;
    MEMORY[0x1C6945100](v21, -1, -1);
  }

  if (*(a3 + 16))
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = a3;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C5333000, v25, v26, "#ConnectionSequnece passing response to the caller", v28, 2u);
      v29 = v28;
      a3 = v27;
      MEMORY[0x1C6945100](v29, -1, -1);
    }

    v38(v39, a2, a3);
    outlined init with copy of CLHistoricalPlaceContext(v16, v36, type metadata accessor for CLHistoricalPlaceContext);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v11, v8);
    outlined destroy of CLHistoricalPlaceContext(v16, type metadata accessor for CLHistoricalPlaceContext);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
    AsyncStream.Continuation.finish()();
    v39 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C5333000, v39, v30, "#ConnectionSequnece nil paylaod terminated the AsyncStream", v31, 2u);
      MEMORY[0x1C6945100](v31, -1, -1);
    }

    v32 = v39;
  }
}

void specialized closure #2 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:)(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C5333000, v5, v6, "#ConnectionSequnece natural termination", v7, 2u);
      MEMORY[0x1C6945100](v7, -1, -1);
    }

    [a3 pause];
  }
}

uint64_t CLLivePlaceContext._mapItemIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLLivePlaceContext(0) + 20));

  return v1;
}

uint64_t type metadata accessor for CLLivePlaceContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for CLLivePlaceContext;
  if (!type metadata singleton initialization cache for CLLivePlaceContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CLLivePlaceContext._mapItemHandle.getter()
{
  v1 = v0 + *(type metadata accessor for CLLivePlaceContext(0) + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t CLLivePlaceContext._wellKnownName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLLivePlaceContext(0) + 28));

  return v1;
}

uint64_t CLLivePlaceContext._address.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLLivePlaceContext(0) + 32));

  return v1;
}

uint64_t static CLLivePlaceContext.places()@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
  v1 = MEMORY[0x1EEE9AC00](v57);
  v52 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation18CLLivePlaceContextV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation18CLLivePlaceContextV__GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation18CLLivePlaceContextV_GMR);
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v62);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation18CLLivePlaceContextVGMd, &_sScSy12CoreLocation18CLLivePlaceContextVGMR);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v51 - v14;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v56 = v4;
  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51 = v9;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    v63 = type metadata accessor for CLLivePlaceContext(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation18CLLivePlaceContextVmMd, &_s12CoreLocation18CLLivePlaceContextVmMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1C5333000, v15, v16, "#CLLivePlaceContext places invoked self: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v23 = v19;
    v9 = v51;
    MEMORY[0x1C6945100](v23, -1, -1);
    MEMORY[0x1C6945100](v17, -1, -1);
  }

  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for CLLivePlaceContext(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  v25 = v58;
  v26 = v59;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v8, v5);
  v27 = v55;
  (*(v60 + 16))(v55, v25, v61);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v24);

  v28 = v53;
  v29 = v62;
  (*(v9 + 16))(v53, v26, v62);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = swift_allocObject();
  (*(v9 + 32))(v31 + v30, v28, v29);
  v32 = (v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = partial apply for closure #1 in static CLLivePlaceContext.places();
  v32[1] = 0;
  v33 = objc_allocWithZone(MEMORY[0x1E695FBD8]);
  v34 = MEMORY[0x1C6944850](0xD000000000000026, 0x80000001C534FB20);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:);
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed [AnyHashable : Any]) -> ();
  aBlock[3] = &block_descriptor_2;
  v36 = _Block_copy(aBlock);
  v37 = [v33 initWithStartMessageName:v34 startMessagePayload:isa locationManager:0 responseHandler:v36];

  _Block_release(v36);

  *(v27 + *(v57 + 28)) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = 1;
  *(v38 + 24) = v37;
  v39 = v37;
  AsyncStream.Continuation.onTermination.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v54, logger);
  v40 = v56;
  outlined init with copy of CLCondition?(v27, v56, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    outlined init with copy of CLCondition?(v40, v52, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    v45 = v9;
    v46 = String.init<A>(describing:)();
    v48 = v47;
    outlined destroy of CLMonitor.Event?(v40, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, aBlock);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_1C5333000, v41, v42, "#ConnectionSequnece created. self: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1C6945100](v44, -1, -1);
    MEMORY[0x1C6945100](v43, -1, -1);

    (*(v45 + 8))(v59, v62);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v40, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    (*(v9 + 8))(v59, v62);
  }

  return (*(v60 + 8))(v58, v61);
}

uint64_t closure #1 in static CLLivePlaceContext.places()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v133);
  v131 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v126 - v13;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, logger);

  v135 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v134 = v14;
  v132 = a4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v138 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v138);
    *(v20 + 12) = 2080;
    *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v138);
    _os_log_impl(&dword_1C5333000, v17, v18, "#CLLivePlaceContext handler : %s , messageName: %s", v20, 0x16u);
    swift_arrayDestroy();
    v22 = v21;
    v14 = v134;
    MEMORY[0x1C6945100](v22, -1, -1);
    MEMORY[0x1C6945100](v20, -1, -1);
  }

  v136 = 0xD000000000000024;
  v137 = 0x80000001C534FB50;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v24 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v23, &v140);
    outlined destroy of AnyHashable(&v138);
    v25 = type metadata accessor for Date();
    v26 = swift_dynamicCast();
    (*(*(v25 - 8) + 56))(v14, v26 ^ 1u, 1, v25);
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
    v27 = type metadata accessor for Date();
    (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  }

  outlined init with copy of CLCondition?(v14, v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v138 = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v138);
    *(v30 + 12) = 2080;
    outlined init with copy of CLCondition?(v12, v131, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    outlined destroy of CLMonitor.Event?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v138);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_1C5333000, v28, v29, "#CLLivePlaceContext handler: %s , visitDate: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v31, -1, -1);
    MEMORY[0x1C6945100](v30, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v140 = 0xD000000000000020;
  v141 = 0x80000001C534FB80;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v37 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v36, &v140);
    outlined destroy of AnyHashable(&v138);
    v38 = swift_dynamicCast();
    if (v38)
    {
      v39 = v136;
    }

    else
    {
      v39 = 0;
    }

    if (v38)
    {
      v40 = v137;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
    v39 = 0;
    v40 = 0;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v131 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v140 = v45;
    *v44 = 136315394;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v140);
    *(v44 + 12) = 2080;
    v138 = v39;
    v139 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v46 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v140);

    *(v44 + 14) = v48;
    _os_log_impl(&dword_1C5333000, v41, v42, "#CLLivePlaceContext handler: %s , mapItemId: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v45, -1, -1);
    MEMORY[0x1C6945100](v44, -1, -1);
  }

  v140 = 0xD000000000000024;
  v141 = 0x80000001C534FBB0;
  AnyHashable.init<A>(_:)();
  v49 = *(a3 + 16);
  v129 = v39;
  if (v49 && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v51 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v50, &v140);
    outlined destroy of AnyHashable(&v138);
    v52 = swift_dynamicCast();
    if (v52)
    {
      v53 = v136;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = v137;
    }

    else
    {
      v54 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
    v53 = 0;
    v54 = 0xF000000000000000;
  }

  outlined copy of Data?(v53, v54);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  outlined consume of Data?(v53, v54);
  v57 = os_log_type_enabled(v55, v56);
  v130 = v53;
  v128 = v54;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v140 = v59;
    *v58 = 136315394;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v140);
    *(v58 + 12) = 2080;
    v138 = v53;
    v139 = v54;
    outlined copy of Data?(v53, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v60 = String.init<A>(describing:)();
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v140);

    *(v58 + 14) = v62;
    _os_log_impl(&dword_1C5333000, v55, v56, "#CLLivePlaceContext handler: %s , mapItemHandle: %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v59, -1, -1);
    MEMORY[0x1C6945100](v58, -1, -1);
  }

  v140 = 0xD00000000000002BLL;
  v141 = 0x80000001C534FBE0;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v64 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v63, &v140);
    outlined destroy of AnyHashable(&v138);
    v65 = swift_dynamicCast();
    if (v65)
    {
      v66 = v136;
    }

    else
    {
      v66 = 0;
    }

    if (v65)
    {
      v67 = v137;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
    v66 = 0;
    v67 = 0;
  }

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v68, v69);
  v127 = v66;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v140 = v72;
    *v71 = 136315394;
    *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v140);
    *(v71 + 12) = 2080;
    v138 = v66;
    v139 = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v73 = String.init<A>(describing:)();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v140);

    *(v71 + 14) = v75;
    _os_log_impl(&dword_1C5333000, v68, v69, "#CLLivePlaceContext handler: %s , wellKnownName: %s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v72, -1, -1);
    MEMORY[0x1C6945100](v71, -1, -1);
  }

  v140 = 0xD000000000000025;
  v141 = 0x80000001C534FC10;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v76 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v77 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v76, &v140);
    outlined destroy of AnyHashable(&v138);
    v78 = swift_dynamicCast();
    v79 = v136;
    if (!v78)
    {
      v79 = 0;
    }

    v133 = v79;
    if (v78)
    {
      v80 = v137;
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
    v133 = 0;
    v80 = 0;
  }

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v140 = v84;
    *v83 = 136315394;
    *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v140);
    *(v83 + 12) = 2080;
    v138 = v133;
    v139 = v80;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v85 = String.init<A>(describing:)();
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v140);

    *(v83 + 14) = v87;
    _os_log_impl(&dword_1C5333000, v81, v82, "#CLLivePlaceContext handler: %s , address: %s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v84, -1, -1);
    MEMORY[0x1C6945100](v83, -1, -1);
  }

  v140 = 0xD00000000000001FLL;
  v141 = 0x80000001C534FC40;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v88 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v89 & 1) == 0))
  {
    outlined destroy of AnyHashable(&v138);
    goto LABEL_60;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v88, &v140);
  outlined destroy of AnyHashable(&v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_60:
    v90 = 0xC066800000000000;
    goto LABEL_61;
  }

  v90 = v136;
LABEL_61:
  v140 = 0xD000000000000020;
  v141 = 0x80000001C534FC60;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v91 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v92 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v91, &v140);
    outlined destroy of AnyHashable(&v138);
    if (swift_dynamicCast())
    {
      v93 = v136;
      goto LABEL_67;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
  }

  v93 = 0xC066800000000000;
LABEL_67:
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v138 = v97;
    *v96 = 136315650;
    *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001C534F500, &v138);
    *(v96 + 12) = 2080;
    v98 = Double.description.getter();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v138);

    *(v96 + 14) = v100;
    *(v96 + 22) = 2080;
    v101 = Double.description.getter();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v138);

    *(v96 + 24) = v103;
    _os_log_impl(&dword_1C5333000, v94, v95, "#CLLivePlaceContext handler: %s , lat: %s lon: %s", v96, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v97, -1, -1);
    MEMORY[0x1C6945100](v96, -1, -1);
  }

  v140 = 0xD000000000000022;
  v141 = 0x80000001C534FA00;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v104 = specialized __RawDictionaryStorage.find<A>(_:)(&v138), (v105 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v104, &v140);
    outlined destroy of AnyHashable(&v138);
    if (swift_dynamicCast())
    {
      v106 = v136;
      goto LABEL_75;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v138);
  }

  v106 = 0;
LABEL_75:
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v138 = v110;
    *v109 = 136315138;
    v140 = v106;
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &v138);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_1C5333000, v107, v108, "#CLLivePlaceContext handler: diagnosticMask: %s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    MEMORY[0x1C6945100](v110, -1, -1);
    MEMORY[0x1C6945100](v109, -1, -1);
  }

  v115 = v131;
  v114 = v132;
  v116 = v134;
  v117 = v130;
  result = outlined init with copy of CLCondition?(v134, v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v106 < 0)
  {
    __break(1u);
  }

  else
  {
    v119 = type metadata accessor for CLLivePlaceContext(0);
    v120 = (v114 + v119[5]);
    v121 = v128;
    *v120 = v129;
    v120[1] = v115;
    v122 = (v114 + v119[6]);
    *v122 = v117;
    v122[1] = v121;
    v123 = (v114 + v119[7]);
    *v123 = v127;
    v123[1] = v67;
    v124 = (v114 + v119[8]);
    *v124 = v133;
    v124[1] = v80;
    v125 = (v114 + v119[9]);
    *v125 = v90;
    v125[1] = v93;
    *(v114 + v119[10]) = v106;
    return outlined destroy of CLMonitor.Event?(v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void type metadata completion function for CLLivePlaceContext(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CLClientDiagnosticMask(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>()
{
  result = lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>;
  if (!lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA18CLLivePlaceContextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLLivePlaceContext> and conformance CLIdentifiableConnectionSequence<A>);
  }

  return result;
}

uint64_t outlined init with take of (key: String, value: Date)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, &_sSS3key_10Foundation4DateV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CLHistoricalPlaceContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLHistoricalPlaceContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
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

uint64_t CLHistoricalPlaceContext._mapItemIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLHistoricalPlaceContext(0) + 20));

  return v1;
}

uint64_t type metadata accessor for CLHistoricalPlaceContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for CLHistoricalPlaceContext;
  if (!type metadata singleton initialization cache for CLHistoricalPlaceContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CLHistoricalPlaceContext._mapItemHandle.getter()
{
  v1 = v0 + *(type metadata accessor for CLHistoricalPlaceContext(0) + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t CLHistoricalPlaceContext._wellKnownName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLHistoricalPlaceContext(0) + 28));

  return v1;
}

uint64_t CLHistoricalPlaceContext._address.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLHistoricalPlaceContext(0) + 32));

  return v1;
}

uint64_t static CLHistoricalPlaceContext.places(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
  v5 = MEMORY[0x1EEE9AC00](v104);
  v92 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v87[-v7];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation24CLHistoricalPlaceContextV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation24CLHistoricalPlaceContextV__GMR);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v87[-v8];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMd, &_sScS12ContinuationVy12CoreLocation24CLHistoricalPlaceContextV_GMR);
  v105 = *(v110 - 8);
  v9 = MEMORY[0x1EEE9AC00](v110);
  v100 = &v87[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v87[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation24CLHistoricalPlaceContextVGMd, &_sScSy12CoreLocation24CLHistoricalPlaceContextVGMR);
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v87[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v91 = &v87[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v87[-v20];
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v93 = v17;
  v101 = type metadata accessor for Logger();
  __swift_project_value_buffer(v101, logger);
  v26 = *(v23 + 16);
  v94 = a1;
  v26(v25, a1, v22);
  v95 = a2;
  outlined init with copy of CLCondition?(a2, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v88 = v28;
    v30 = v29;
    v89 = swift_slowAlloc();
    aBlock[0] = v89;
    *v30 = 136315650;
    v111 = type metadata accessor for CLHistoricalPlaceContext(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreLocation24CLHistoricalPlaceContextVmMd, &_s12CoreLocation24CLHistoricalPlaceContextVmMR);
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, aBlock);
    v90 = v26;
    v34 = v33;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date();
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v23 + 8))(v25, v22);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, aBlock);

    *(v30 + 14) = v38;
    *(v30 + 22) = 2080;
    outlined init with copy of CLCondition?(v21, v91, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    outlined destroy of CLMonitor.Event?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, aBlock);
    v26 = v90;

    *(v30 + 24) = v42;
    _os_log_impl(&dword_1C5333000, v27, v88, "#CLHistoricalPlaceContext places invoked self: %s, startDate: %s, endDate: %s", v30, 0x20u);
    v43 = v89;
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v43, -1, -1);
    MEMORY[0x1C6945100](v30, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v23 + 8))(v25, v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DateVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DateVtGMR);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v45 = *(*(v44 - 8) + 72);
  v46 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C534EE00;
  v48 = (v47 + v46);
  v49 = *(v44 + 48);
  *v48 = 0xD000000000000032;
  v48[1] = 0x80000001C534FC90;
  v26(v48 + v49, v94, v22);
  v50 = v48 + v45;
  v51 = *(v44 + 48);
  *v50 = 0xD000000000000030;
  *(v50 + 1) = 0x80000001C534FCD0;
  v52 = v93;
  outlined init with copy of CLCondition?(v95, v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = *(v23 + 48);
  if (v53(v52, 1, v22) == 1)
  {
    Date.init()();
    if (v53(v52, 1, v22) != 1)
    {
      outlined destroy of CLMonitor.Event?(v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v23 + 32))(&v50[v51], v52, v22);
  }

  v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v54);

  type metadata accessor for CLHistoricalPlaceContext(0);
  v56 = v97;
  v57 = v96;
  v58 = v99;
  (*(v97 + 104))(v96, *MEMORY[0x1E69E8650], v99);
  v59 = v106;
  v60 = v107;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v56 + 8))(v57, v58);
  v61 = v102;
  (*(v108 + 16))(v102, v59, v109);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v55);

  v62 = v105;
  v63 = v100;
  v64 = v110;
  (*(v105 + 16))(v100, v60, v110);
  v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v66 = (v98 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v62 + 32))(v67 + v65, v63, v64);
  v68 = (v67 + v66);
  *v68 = partial apply for closure #1 in static CLHistoricalPlaceContext.places(startDate:endDate:);
  v68[1] = 0;
  v69 = objc_allocWithZone(MEMORY[0x1E695FBD8]);
  v70 = MEMORY[0x1C6944850](0xD00000000000002CLL, 0x80000001C534FD10);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for specialized closure #1 in CLIdentifiableConnectionSequence.init(startMsgName:startPayload:locationManager:disconnectWhenIterationStops:responseHandler:);
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String, @guaranteed [AnyHashable : Any]) -> ();
  aBlock[3] = &block_descriptor_3;
  v72 = _Block_copy(aBlock);
  v73 = [v69 initWithStartMessageName:v70 startMessagePayload:isa locationManager:0 responseHandler:v72];

  _Block_release(v72);

  *(v61 + *(v104 + 28)) = v73;
  v74 = swift_allocObject();
  *(v74 + 16) = 1;
  *(v74 + 24) = v73;
  v75 = v73;
  AsyncStream.Continuation.onTermination.setter();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v101, logger);
  v76 = v103;
  outlined init with copy of CLCondition?(v61, v103, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock[0] = v80;
    *v79 = 136315138;
    outlined init with copy of CLCondition?(v76, v92, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
    v81 = String.init<A>(describing:)();
    v82 = v76;
    v84 = v83;
    outlined destroy of CLMonitor.Event?(v82, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v84, aBlock);

    *(v79 + 4) = v85;
    _os_log_impl(&dword_1C5333000, v77, v78, "#ConnectionSequnece created. self: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x1C6945100](v80, -1, -1);
    MEMORY[0x1C6945100](v79, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v76, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
  }

  (*(v62 + 8))(v107, v110);
  return (*(v108 + 8))(v106, v109);
}

uint64_t closure #1 in static CLHistoricalPlaceContext.places(startDate:endDate:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v168 = a4;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v157);
  v156 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v153 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v169 = &v153 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v155);
  v154 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v165 = &v153 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v153 - v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v170 = v18;
  v167 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v173 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v173);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v173);
    _os_log_impl(&dword_1C5333000, v20, v21, "#CLHistoricalPlaceContext handler : %s , messageName: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v24, -1, -1);
    MEMORY[0x1C6945100](v23, -1, -1);
  }

  v175 = 0xD000000000000020;
  v176 = 0x80000001C534FB80;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v26 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v25, &v175);
    outlined destroy of AnyHashable(&v173);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v28 = v171;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = v172;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
    v28 = 0;
    v29 = 0;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v163 = v29;
  v164 = v28;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v175 = v34;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v33 + 12) = 2080;
    v173 = v28;
    v174 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v175);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_1C5333000, v30, v31, "#CLHistoricalPlaceContext handler: %s , mapItemId: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v34, -1, -1);
    MEMORY[0x1C6945100](v33, -1, -1);
  }

  v175 = 0xD000000000000024;
  v176 = 0x80000001C534FBB0;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v39 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v38, &v175);
    outlined destroy of AnyHashable(&v173);
    v40 = swift_dynamicCast();
    if (v40)
    {
      v41 = v171;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = v172;
    }

    else
    {
      v42 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
    v41 = 0;
    v42 = 0xF000000000000000;
  }

  outlined copy of Data?(v41, v42);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  outlined consume of Data?(v41, v42);
  v45 = os_log_type_enabled(v43, v44);
  v162 = v41;
  v166 = v42;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v175 = v47;
    *v46 = 136315394;
    *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v46 + 12) = 2080;
    v173 = v41;
    v174 = v42;
    outlined copy of Data?(v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v48 = String.init<A>(describing:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v175);

    *(v46 + 14) = v50;
    _os_log_impl(&dword_1C5333000, v43, v44, "#CLHistoricalPlaceContext handler: %s , mapItemHandle: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v47, -1, -1);
    MEMORY[0x1C6945100](v46, -1, -1);
  }

  v175 = 0xD00000000000002BLL;
  v176 = 0x80000001C534FBE0;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v52 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v51, &v175);
    outlined destroy of AnyHashable(&v173);
    v53 = swift_dynamicCast();
    if (v53)
    {
      v54 = v171;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v172;
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
    v54 = 0;
    v55 = 0;
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v160 = v55;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v175 = v60;
    *v59 = 136315394;
    *(v59 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v59 + 12) = 2080;
    v173 = v54;
    v174 = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v61 = String.init<A>(describing:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v175);

    *(v59 + 14) = v63;
    _os_log_impl(&dword_1C5333000, v56, v57, "#CLHistoricalPlaceContext handler: %s , wellKnownName: %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v60, -1, -1);
    MEMORY[0x1C6945100](v59, -1, -1);
  }

  v175 = 0xD000000000000025;
  v176 = 0x80000001C534FC10;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v65 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v64, &v175);
    outlined destroy of AnyHashable(&v173);
    v66 = swift_dynamicCast();
    if (v66)
    {
      v67 = v171;
    }

    else
    {
      v67 = 0;
    }

    if (v66)
    {
      v68 = v172;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
    v67 = 0;
    v68 = 0;
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v69, v70);
  v161 = v54;
  v158 = v68;
  if (v71)
  {
    v72 = v68;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v175 = v74;
    *v73 = 136315394;
    *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v175);
    *(v73 + 12) = 2080;
    v173 = v67;
    v174 = v72;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v75 = String.init<A>(describing:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v175);

    *(v73 + 14) = v77;
    _os_log_impl(&dword_1C5333000, v69, v70, "#CLHistoricalPlaceContext handler: %s , address: %s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v74, -1, -1);
    MEMORY[0x1C6945100](v73, -1, -1);
  }

  v175 = 0xD00000000000001FLL;
  v176 = 0x80000001C534FC40;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v78 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v79 & 1) == 0))
  {
    outlined destroy of AnyHashable(&v173);
    goto LABEL_54;
  }

  outlined init with copy of Any(*(a3 + 56) + 32 * v78, &v175);
  outlined destroy of AnyHashable(&v173);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v80 = 0xC066800000000000;
    goto LABEL_55;
  }

  v80 = v171;
LABEL_55:
  v175 = 0xD000000000000020;
  v176 = 0x80000001C534FC60;
  AnyHashable.init<A>(_:)();
  v81 = *(a3 + 16);
  v159 = v67;
  if (v81 && (v82 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v83 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v82, &v175);
    outlined destroy of AnyHashable(&v173);
    if (swift_dynamicCast())
    {
      v84 = v171;
      goto LABEL_61;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
  }

  v84 = 0xC066800000000000;
LABEL_61:
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v173 = v88;
    *v87 = 136315650;
    *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v173);
    *(v87 + 12) = 2080;
    v89 = Double.description.getter();
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v173);

    *(v87 + 14) = v91;
    *(v87 + 22) = 2080;
    v92 = Double.description.getter();
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v173);

    *(v87 + 24) = v94;
    _os_log_impl(&dword_1C5333000, v85, v86, "#CLHistoricalPlaceContext handler: %s , lat: %s lon: %s", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v88, -1, -1);
    MEMORY[0x1C6945100](v87, -1, -1);
  }

  v95 = v170;
  v171 = 0xD000000000000027;
  v172 = 0x80000001C534FD40;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v96 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v97 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v96, &v175);
    outlined destroy of AnyHashable(&v173);
    v98 = type metadata accessor for UUID();
    v99 = swift_dynamicCast();
    (*(*(v98 - 8) + 56))(v95, v99 ^ 1u, 1, v98);
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
    v100 = type metadata accessor for UUID();
    (*(*(v100 - 8) + 56))(v95, 1, 1, v100);
  }

  v101 = v95;
  v102 = v165;
  outlined init with copy of CLCondition?(v101, v165, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v173 = v106;
    *v105 = 136315394;
    *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v173);
    *(v105 + 12) = 2080;
    outlined init with copy of CLCondition?(v102, v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v107 = String.init<A>(describing:)();
    v108 = v102;
    v110 = v109;
    outlined destroy of CLMonitor.Event?(v108, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v110, &v173);

    *(v105 + 14) = v111;
    _os_log_impl(&dword_1C5333000, v103, v104, "#CLHistoricalPlaceContext handler: %s , uuid: %s", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v106, -1, -1);
    MEMORY[0x1C6945100](v105, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v102, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v112 = v169;
  v113 = v167;
  v171 = 0xD00000000000002CLL;
  v172 = 0x80000001C534FD70;
  AnyHashable.init<A>(_:)();
  if (*(a3 + 16) && (v114 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v115 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v114, &v175);
    outlined destroy of AnyHashable(&v173);
    v116 = type metadata accessor for Date();
    v117 = swift_dynamicCast();
    (*(*(v116 - 8) + 56))(v112, v117 ^ 1u, 1, v116);
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
    v118 = type metadata accessor for Date();
    (*(*(v118 - 8) + 56))(v112, 1, 1, v118);
  }

  outlined init with copy of CLCondition?(v112, v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v173 = v122;
    *v121 = 136315394;
    *(v121 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v173);
    *(v121 + 12) = 2080;
    outlined init with copy of CLCondition?(v113, v156, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v123 = String.init<A>(describing:)();
    v124 = v113;
    v125 = v123;
    v127 = v126;
    outlined destroy of CLMonitor.Event?(v124, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v173);

    *(v121 + 14) = v128;
    _os_log_impl(&dword_1C5333000, v119, v120, "#CLHistoricalPlaceContext handler: %s , startDate: %s", v121, 0x16u);
    swift_arrayDestroy();
    v129 = v122;
    v112 = v169;
    MEMORY[0x1C6945100](v129, -1, -1);
    MEMORY[0x1C6945100](v121, -1, -1);
  }

  else
  {

    outlined destroy of CLMonitor.Event?(v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v175 = 0xD000000000000022;
  v176 = 0x80000001C534FA00;
  AnyHashable.init<A>(_:)();
  v130 = v166;
  if (*(a3 + 16) && (v131 = specialized __RawDictionaryStorage.find<A>(_:)(&v173), (v132 & 1) != 0))
  {
    outlined init with copy of Any(*(a3 + 56) + 32 * v131, &v175);
    outlined destroy of AnyHashable(&v173);
    if (swift_dynamicCast())
    {
      v133 = v171;
      goto LABEL_83;
    }
  }

  else
  {
    outlined destroy of AnyHashable(&v173);
  }

  v133 = 0;
LABEL_83:
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v173 = v137;
    *v136 = 136315394;
    *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001C534F600, &v173);
    *(v136 + 12) = 2080;
    v175 = v133;
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, &v173);

    *(v136 + 14) = v140;
    _os_log_impl(&dword_1C5333000, v134, v135, "#CLHistoricalPlaceContext handler: %s , diagnosticMask: %s", v136, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6945100](v137, -1, -1);
    MEMORY[0x1C6945100](v136, -1, -1);
  }

  v141 = v168;
  v142 = v170;
  outlined init with copy of CLCondition?(v112, v168, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v143 = type metadata accessor for CLHistoricalPlaceContext(0);
  result = outlined init with copy of CLCondition?(v142, v141 + v143[10], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v133 < 0)
  {
    __break(1u);
  }

  else
  {
    v145 = (v141 + v143[5]);
    v146 = v163;
    *v145 = v164;
    v145[1] = v146;
    v147 = (v141 + v143[6]);
    *v147 = v162;
    v147[1] = v130;
    v148 = (v141 + v143[7]);
    v149 = v160;
    *v148 = v161;
    v148[1] = v149;
    v150 = (v141 + v143[8]);
    v151 = v158;
    *v150 = v159;
    v150[1] = v151;
    v152 = (v141 + v143[9]);
    *v152 = v80;
    v152[1] = v84;
    *(v141 + v143[11]) = v133;
    outlined destroy of CLMonitor.Event?(v112, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return outlined destroy of CLMonitor.Event?(v142, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return result;
}