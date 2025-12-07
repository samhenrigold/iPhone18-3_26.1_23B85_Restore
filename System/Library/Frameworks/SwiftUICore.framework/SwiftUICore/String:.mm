@interface String:
- (uint64_t)AccessibilityCustomAttributes.Value;
- (uint64_t)Any;
- (uint64_t)CGFloat;
- (void)AccessibilityCustomAttributes.Value;
- (void)Any;
- (void)CGFloat;
- (void)Double;
- (void)String;
@end

@implementation String:

- (uint64_t)AccessibilityCustomAttributes.Value
{
  if (a3)
  {
  }

  return v3;
}

- (uint64_t)CGFloat
{
  type metadata accessor for (String, [String : CGFloat])(0);
  (*(*(v2 - 8) + 8))(self, v2);
  return self;
}

- (void)CGFloat
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

- (void)Any
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [String : Any]>)
  {
    type metadata accessor for CFStringRef(255);
    type metadata accessor for [String : Any]();
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [String : Any]>);
    }
  }
}

- (void)Double
{
  if (!lazy cache variable for type metadata for JSONCodable<[String : Double]>)
  {
    type metadata accessor for [Int : CGFloat](255, &lazy cache variable for type metadata for [String : Double], MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
    v5 = type metadata accessor for JSONCodable(self, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for JSONCodable<[String : Double]>);
    }
  }
}

- (void)AccessibilityCustomAttributes.Value
{
  if (!*a2)
  {
    v6 = type metadata accessor for AccessibilityCustomAttributes.Value(255);
    v7 = a3(self, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

- (uint64_t)Any
{
  type metadata accessor for (CFStringRef, [String : Any])(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(self, v6);
  return self;
}

- (void)String
{
  if (!lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B])
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for [String : String]();
    v4[0] = MEMORY[0x1E69E6160];
    v4[1] = MEMORY[0x1E69E6160];
    swift_getWitnessTable(MEMORY[0x1E69E5E38], v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  }
}

@end