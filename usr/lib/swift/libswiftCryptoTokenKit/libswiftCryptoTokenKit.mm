uint64_t sub_299A66AF8()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

void TKSmartCard.send(ins:p1:p2:data:le:reply:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  if (a5 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = a9;
    if ((a7 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  isa = 0;
  v17 = a9;
  if (a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
LABEL_6:
  v20[4] = a8;
  v20[5] = v17;
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @unowned UInt16, @guaranteed Error?) -> ();
  v20[3] = &block_descriptor;
  v19 = _Block_copy(v20);

  [v9 sendIns:a1 p1:a2 p2:a3 data:isa le:v18 reply:v19];

  _Block_release(v19);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @unowned UInt16, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  outlined consume of Data?(v6, v10);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TKSmartCard.send(ins:p1:p2:data:le:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (a5 >> 60 == 15)
  {
    isa = 0;
    if ((a7 & 1) == 0)
    {
LABEL_3:
      v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if ((a7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v19 = 0;
  v15 = [v7 sendIns:a1 p1:a2 p2:a3 data:isa le:v14 sw:&v20 error:&v19];

  v16 = v19;
  if (v15)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v20;
  }

  else
  {
    v18 = v16;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t TKSmartCard.withSession<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v5 = v4;
  aBlock[6] = *MEMORY[0x29EDCA608];
  v9 = type metadata accessor for Optional();
  v23 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8]();
  v11 = &v22 - v10;
  v12 = swift_allocBox();
  v14 = v13;
  v15 = *(a3 - 8);
  (*(v15 + 56))(v13, 1, 1, a3);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = v12;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = partial apply for closure #1 in TKSmartCard.withSession<A>(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v5) = [v5 inSessionWithError:aBlock executeBlock:v17];
  _Block_release(v17);
  v18 = aBlock[0];
  if (v5)
  {
    swift_beginAccess();
    (*(v23 + 16))(v11, v14, v9);
    result = (*(v15 + 48))(v11, 1, a3);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v15 + 32))(v22, v11, a3);
      v20 = v18;
    }
  }

  else
  {
    v21 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in TKSmartCard.withSession<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8]();
  v10 = &v13 - v9;
  v11 = swift_projectBox();
  a3();
  (*(*(a5 - 8) + 56))(v10, 0, 1, a5);
  swift_beginAccess();
  (*(v8 + 40))(v11, v10, v7);
  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
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

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
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