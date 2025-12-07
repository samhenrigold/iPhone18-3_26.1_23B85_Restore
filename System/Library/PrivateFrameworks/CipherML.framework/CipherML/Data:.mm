@interface Data:
- (unint64_t)SecretKey;
- (void)SecretKey;
@end

@implementation Data:

- (unint64_t)SecretKey
{
  result = lazy protocol witness table cache variable for type [Data : SecretKey] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [Data : SecretKey] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy10Foundation4DataV8CipherML9SecretKeyVGMd, &_sSDy10Foundation4DataV8CipherML9SecretKeyVGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type SecretKey and conformance SecretKey, type metadata accessor for SecretKey, &protocol conformance descriptor for SecretKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data : SecretKey] and conformance <> [A : B]);
  }

  return result;
}

- (void)SecretKey
{
  if (!lazy cache variable for type metadata for [Data : SecretKey])
  {
    type metadata accessor for SecretKey(255);
    lazy protocol witness table accessor for type Data and conformance Data();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Data : SecretKey]);
    }
  }
}

@end