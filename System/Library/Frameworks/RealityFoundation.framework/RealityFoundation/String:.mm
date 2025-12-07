@interface String:
- (Class)NSObject;
- (id)String;
- (uint64_t)AnimationResource;
- (uint64_t)Any;
- (uint64_t)AudioResource;
- (uint64_t)String;
- (unint64_t)Any;
- (unint64_t)AudioResource;
- (unint64_t)String;
- (void)String;
@end

@implementation String:

- (uint64_t)String
{
  v3 = *(v2 + 16);
  v5 = a2;
  selfCopy = self;
  return v3(&selfCopy, &v5);
}

- (uint64_t)AudioResource
{
  if (a3)
  {
  }

  return v3;
}

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [String : String]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [String : String]? and conformance <A> A?)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
    v4[0] = lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [String : String]? and conformance <A> A?);
  }

  return result;
}

- (void)String
{
  if (!lazy cache variable for type metadata for [String : String])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : String]);
    }
  }
}

- (uint64_t)AnimationResource
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10RealityKit17AnimationResourceCGSgMd, &_sSDySS10RealityKit17AnimationResourceCGSgMR);
  (*(*(v4 - 8) + 16))(a2, self, v4);
  return a2;
}

- (Class)NSObject
{
  v1 = *(self + 32);

  v3 = v1(v2);

  if (v3)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (unint64_t)Any
{
  result = lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVySSyp_GMd, &_sSD4KeysVySSyp_GMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E5D90], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys);
  }

  return result;
}

- (uint64_t)Any
{
  return sub_1C1372490(self);
}

- (id)String
{
  v28 = a2;
  v29 = a5;
  v27 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(self + 32);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v11;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = a3;
  v22 = v27;
  v23 = v26(v28, v21, v22, v29, v14, v15, v17, v18, v20);

  (*(v12 + 8))(v14, v16);
  if (v23)
  {
    v24 = _convertErrorToNSError(_:)();
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (unint64_t)AudioResource
{
  result = lazy protocol witness table cache variable for type [String : AudioResource].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [String : AudioResource].Keys and conformance [A : B].Keys)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVySS10RealityKit13AudioResourceC_GMd, &_sSD4KeysVySS10RealityKit13AudioResourceC_GMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E5D90], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String : AudioResource].Keys and conformance [A : B].Keys);
  }

  return result;
}

@end