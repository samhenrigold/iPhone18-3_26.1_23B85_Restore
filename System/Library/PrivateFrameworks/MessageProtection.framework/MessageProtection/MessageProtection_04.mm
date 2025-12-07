uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_KyberSecurityLevel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraPB_KyberSecurityLevel(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_PrivateKeyBackingStore(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraPB_KyberSecurityLevel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 2:
        closure #2 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 1:
        type metadata accessor for TetraPB_KyberPrivateKey(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #2 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TetraPB_KyberPrivateKey(0);
  lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t closure #3 in TetraPB_KyberPrivateKey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TetraPB_KyberPrivateKey(0);
  lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

void TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_KyberPrivateKey);
  if (!v4)
  {
    closure #2 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3, a1, a2, a3);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #2 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TetraPB_KyberPrivateKey(0);
  if ((*(a1 + *(result + 24) + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TetraPB_KyberPrivateKey(0);
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance TetraPB_KyberPrivateKey@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_22B48D7D0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_KyberPrivateKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey, type metadata accessor for TetraPB_KyberPrivateKey, &protocol conformance descriptor for TetraPB_KyberPrivateKey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_KyberPrivateKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey, type metadata accessor for TetraPB_KyberPrivateKey, &protocol conformance descriptor for TetraPB_KyberPrivateKey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_KyberPrivateKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey, type metadata accessor for TetraPB_KyberPrivateKey, &protocol conformance descriptor for TetraPB_KyberPrivateKey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

void closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a1 + *(a5(0) + 20);
  v6 = *(v5 + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v5 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v7, v6);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraPublicPrekey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey, &protocol conformance descriptor for TetraPB_TetraPublicPrekey);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraPublicPrekey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey, &protocol conformance descriptor for TetraPB_TetraPublicPrekey);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraPublicPrekey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey, &protocol conformance descriptor for TetraPB_TetraPublicPrekey);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_TetraPublicPrekey.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

void closure #2 in TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a1 + *(a5(0) + 24);
  v6 = *(v5 + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v5 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v7, v6);
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraInitiationMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInitiationMessage and conformance TetraPB_TetraInitiationMessage, type metadata accessor for TetraPB_TetraInitiationMessage, &protocol conformance descriptor for TetraPB_TetraInitiationMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraInitiationMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInitiationMessage and conformance TetraPB_TetraInitiationMessage, type metadata accessor for TetraPB_TetraInitiationMessage, &protocol conformance descriptor for TetraPB_TetraInitiationMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraInitiationMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInitiationMessage and conformance TetraPB_TetraInitiationMessage, type metadata accessor for TetraPB_TetraInitiationMessage, &protocol conformance descriptor for TetraPB_TetraInitiationMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_TetraMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 7)
      {
        if (result == 6)
        {
          goto LABEL_2;
        }

        goto LABEL_17;
      }

      if (result == 8 || result == 9)
      {
LABEL_2:
        type metadata accessor for TetraPB_TetraMessage(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (result > 2)
      {
        goto LABEL_2;
      }

      if (result == 1)
      {
LABEL_17:
        type metadata accessor for TetraPB_TetraMessage(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }
  }
}

void TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_TetraMessage);
    closure #3 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_TetraMessage);
    closure #4 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #5 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #6 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #7 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #8 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #9 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #10 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #1 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

void closure #4 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for TetraPB_TetraMessage(0) + 32);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

void closure #5 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for TetraPB_TetraMessage(0) + 36);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

void closure #6 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for TetraPB_TetraMessage(0) + 40);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

uint64_t closure #7 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

void closure #8 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for TetraPB_TetraMessage(0) + 48);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

void closure #9 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for TetraPB_TetraMessage(0) + 52);
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(*v4, *(v4 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

uint64_t closure #10 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TetraPB_TetraMessage(0);
  if ((*(a1 + *(result + 56) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

double protocol witness for Message.init() in conformance TetraPB_TetraMessage@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_22B48D7D0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_22B48D7D0;
  *(a2 + v7) = xmmword_22B48D7D0;
  v8 = a1[10];
  *(a2 + a1[9]) = xmmword_22B48D7D0;
  *(a2 + v8) = xmmword_22B48D7D0;
  v9 = a1[12];
  v10 = a2 + a1[11];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a2 + v9) = xmmword_22B48D7D0;
  v11 = a1[14];
  *(a2 + a1[13]) = xmmword_22B48D7D0;
  v12 = a2 + v11;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage, &protocol conformance descriptor for TetraPB_TetraMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage, &protocol conformance descriptor for TetraPB_TetraMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraMessage and conformance TetraPB_TetraMessage, type metadata accessor for TetraPB_TetraMessage, &protocol conformance descriptor for TetraPB_TetraMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

void TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v5, a1, a2, a3, a4);
  if (!v6)
  {
    closure #2 in TetraPB_TetraPublicPrekey.traverse<A>(visitor:)(v5, a1, a2, a3, a5);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_TetraInnerMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage, type metadata accessor for TetraPB_TetraInnerMessage, &protocol conformance descriptor for TetraPB_TetraInnerMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_TetraInnerMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage, type metadata accessor for TetraPB_TetraInnerMessage, &protocol conformance descriptor for TetraPB_TetraInnerMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_TetraInnerMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage, type metadata accessor for TetraPB_TetraInnerMessage, &protocol conformance descriptor for TetraPB_TetraInnerMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t TetraPB_PaddyKeyDistributionMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 1:
LABEL_8:
        type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
    }
  }
}

void TetraPB_PaddyKeyDistributionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  closure #1 in TetraPB_KyberPrivateKey.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);
  if (!v4)
  {
    closure #2 in TetraPB_PaddyKeyDistributionMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in TetraPB_TetraMessage.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for TetraPB_PaddyKeyDistributionMessage);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

uint64_t closure #2 in TetraPB_PaddyKeyDistributionMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

void closure #3 in TetraPB_TetraMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a1 + *(a5(0) + 28);
  v6 = *(v5 + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v5 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v7, v6);
  }
}

double protocol witness for Message.init() in conformance TetraPB_PaddyKeyDistributionMessage@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_22B48D7D0;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + a1[7]) = xmmword_22B48D7D0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance TetraPB_PaddyKeyDistributionMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage, type metadata accessor for TetraPB_PaddyKeyDistributionMessage, &protocol conformance descriptor for TetraPB_PaddyKeyDistributionMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraPB_PaddyKeyDistributionMessage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage, type metadata accessor for TetraPB_PaddyKeyDistributionMessage, &protocol conformance descriptor for TetraPB_PaddyKeyDistributionMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraPB_PaddyKeyDistributionMessage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage, type metadata accessor for TetraPB_PaddyKeyDistributionMessage, &protocol conformance descriptor for TetraPB_PaddyKeyDistributionMessage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore()
{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore;
  if (!lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_PrivateKeyBackingStore and conformance TetraPB_PrivateKeyBackingStore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel()
{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberSecurityLevel and conformance TetraPB_KyberSecurityLevel);
  }

  return result;
}

uint64_t specialized static TetraPB_KyberPrivateKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraPB_KyberPrivateKey(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    outlined consume of Data?(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v12 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  if (v15)
  {
    if ((*(v16 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v16 + 9))
    {
      return 0;
    }

    v21 = *v14;
    v22 = *(v14 + 8);
    v23 = *v16;
    v24 = *(v16 + 8);
    v25 = v21 != 0;
    if ((v22 & 1) == 0)
    {
      v25 = v21;
    }

    if (v24)
    {
      if (v23)
      {
        if (v25 != 1)
        {
          return 0;
        }
      }

      else if (v25)
      {
        return 0;
      }
    }

    else if (v25 != v23)
    {
      return 0;
    }
  }

  v17 = v4[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 9);
  v20 = (a2 + v17);
  if ((v19 & 1) == 0)
  {
    if ((*(v20 + 9) & 1) == 0)
    {
      v26 = *v18;
      v27 = *(v18 + 8);
      v28 = *v20;
      v29 = *(v20 + 8);
      v30 = v26 != 0;
      if ((v27 & 1) == 0)
      {
        v30 = v26;
      }

      if (v29)
      {
        if (v28)
        {
          if (v30 == 1)
          {
            goto LABEL_12;
          }
        }

        else if (!v30)
        {
          goto LABEL_12;
        }
      }

      else if (v30 == v28)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if ((*(v20 + 9) & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static TetraPB_TetraMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraPB_TetraMessage(0);
  v5 = v4;
  v6 = *(v4 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v4 + 24);
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v17 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if (!v17)
    {
      return 0;
    }
  }

  v18 = v5[7];
  v13 = *(a1 + v18);
  v12 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v16 = *v19;
  v15 = v19[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v20 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if (!v20)
    {
      return 0;
    }
  }

  v21 = v5[8];
  v13 = *(a1 + v21);
  v12 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v16 = *v22;
  v15 = v22[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v23 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if (!v23)
    {
      return 0;
    }
  }

  v24 = v5[9];
  v13 = *(a1 + v24);
  v12 = *(a1 + v24 + 8);
  v25 = (a2 + v24);
  v16 = *v25;
  v15 = v25[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v26 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if (!v26)
    {
      return 0;
    }
  }

  v27 = v5[10];
  v13 = *(a1 + v27);
  v12 = *(a1 + v27 + 8);
  v28 = (a2 + v27);
  v16 = *v28;
  v15 = v28[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v30 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if (!v30)
    {
      return 0;
    }
  }

  v31 = v5[11];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = v5[12];
  v13 = *(a1 + v36);
  v12 = *(a1 + v36 + 8);
  v37 = (a2 + v36);
  v16 = *v37;
  v15 = v37[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_31;
    }

    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    v38 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
    outlined consume of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    if (!v38)
    {
      return 0;
    }
  }

  v39 = v5[13];
  v13 = *(a1 + v39);
  v12 = *(a1 + v39 + 8);
  v40 = (a2 + v39);
  v16 = *v40;
  v15 = v40[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      outlined copy of Data?(v13, v12);
      outlined copy of Data?(v16, v15);
      outlined consume of Data?(v13, v12);
      goto LABEL_50;
    }

LABEL_31:
    outlined copy of Data?(v13, v12);
    outlined copy of Data?(v16, v15);
    outlined consume of Data?(v13, v12);
    outlined consume of Data?(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_31;
  }

  outlined copy of Data?(v13, v12);
  outlined copy of Data?(v16, v15);
  v41 = specialized static Data.== infix(_:_:)(v13, v12, v16, v15);
  outlined consume of Data?(v16, v15);
  outlined consume of Data?(v13, v12);
  if (!v41)
  {
    return 0;
  }

LABEL_50:
  v42 = v5[14];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 4);
  if (v44)
  {
    if (v46)
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (*v43 != *v45)
  {
    LOBYTE(v46) = 1;
  }

  if (v46)
  {
    return 0;
  }

LABEL_56:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static TetraPB_TetraInnerMessage.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      outlined copy of Data?(v8, v7);
      outlined copy of Data?(v11, v10);
      outlined consume of Data?(v8, v7);
      goto LABEL_7;
    }

LABEL_5:
    outlined copy of Data?(v8, v7);
    outlined copy of Data?(v11, v10);
    outlined consume of Data?(v8, v7);
    v12 = v11;
    v13 = v10;
LABEL_12:
    outlined consume of Data?(v12, v13);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v8, v7);
  outlined copy of Data?(v11, v10);
  v14 = specialized static Data.== infix(_:_:)(v8, v7, v11, v10);
  outlined consume of Data?(v11, v10);
  outlined consume of Data?(v8, v7);
  if (!v14)
  {
    return 0;
  }

LABEL_7:
  v15 = *(v5 + 24);
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 != 15)
  {
    if (v19 >> 60 == 15)
    {
      goto LABEL_11;
    }

    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v20, v19);
    v22 = specialized static Data.== infix(_:_:)(v17, v16, v20, v19);
    outlined consume of Data?(v20, v19);
    outlined consume of Data?(v17, v16);
    if (v22)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v19 >> 60 != 15)
  {
LABEL_11:
    outlined copy of Data?(v17, v16);
    outlined copy of Data?(v20, v19);
    outlined consume of Data?(v17, v16);
    v12 = v20;
    v13 = v19;
    goto LABEL_12;
  }

  outlined copy of Data?(v17, v16);
  outlined copy of Data?(v20, v19);
  outlined consume of Data?(v17, v16);
LABEL_15:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static TetraPB_PaddyKeyDistributionMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraPB_PaddyKeyDistributionMessage(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      outlined copy of Data?(v7, v6);
      outlined copy of Data?(v10, v9);
      outlined consume of Data?(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    outlined copy of Data?(v7, v6);
    outlined copy of Data?(v10, v9);
    outlined consume of Data?(v7, v6);
    v11 = v10;
    v12 = v9;
LABEL_6:
    outlined consume of Data?(v11, v12);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  outlined copy of Data?(v7, v6);
  outlined copy of Data?(v10, v9);
  v14 = specialized static Data.== infix(_:_:)(v7, v6, v10, v9);
  outlined consume of Data?(v10, v9);
  outlined consume of Data?(v7, v6);
  if (!v14)
  {
    return 0;
  }

LABEL_8:
  v15 = v4[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[7];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_19;
    }

    outlined copy of Data?(v22, v21);
    outlined copy of Data?(v25, v24);
    v26 = specialized static Data.== infix(_:_:)(v22, v21, v25, v24);
    outlined consume of Data?(v25, v24);
    outlined consume of Data?(v22, v21);
    if (v26)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
LABEL_19:
    outlined copy of Data?(v22, v21);
    outlined copy of Data?(v25, v24);
    outlined consume of Data?(v22, v21);
    v11 = v25;
    v12 = v24;
    goto LABEL_6;
  }

  outlined copy of Data?(v22, v21);
  outlined copy of Data?(v25, v24);
  outlined consume of Data?(v22, v21);
LABEL_21:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type TetraPB_PaddyKeyDistributionMessage and conformance TetraPB_PaddyKeyDistributionMessage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for TetraPB_KyberPrivateKey(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for TetraPB_KyberSecurityLevel?, &type metadata for TetraPB_KyberSecurityLevel);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Data?(319, &lazy cache variable for type metadata for TetraPB_PrivateKeyBackingStore?, &type metadata for TetraPB_PrivateKeyBackingStore);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for TetraPB_TetraMessage(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for TetraPB_PaddyKeyDistributionMessage(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t lazy protocol witness table accessor for type [TetraPB_PrivateKeyBackingStore] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t one-time initialization function for paddySenderKeyIDPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001ELL, 0x800000022B496040);
  *&paddySenderKeyIDPrefix = result;
  *(&paddySenderKeyIDPrefix + 1) = v1;
  return result;
}

uint64_t one-time initialization function for paddyRatchetMsgKeyPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000002ELL, 0x800000022B496010);
  paddyRatchetMsgKeyPrefix = result;
  unk_27D8C2000 = v1;
  return result;
}

uint64_t one-time initialization function for paddyRatchetSenderKeyPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000002DLL, 0x800000022B495FE0);
  paddyRatchetSenderKeyPrefix = result;
  unk_27D8C2010 = v1;
  return result;
}

uint64_t protocol witness for SymmetricRatchetStep.ratchet(_:) in conformance PaddyHKDFRatchet(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a2;
  v85 = *MEMORY[0x277D85DE8];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v8 = MEMORY[0x28223BE20](v79);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v74 = v67 - v15;
  MEMORY[0x28223BE20](v14);
  v78 = v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v67 - v21;
  v23 = *v4;
  v76 = v4[1];
  v77 = v23;
  v24 = type metadata accessor for SymmetricKey();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v22, a3, v24);
  *&v22[*(v17 + 48)] = a4;
  v75 = a4;
  if (a4 == -1)
  {
    __break(1u);
  }

  else
  {
    v72 = v13;
    outlined init with copy of (key: SymmetricKey, index: UInt64)(v22, v20);
    v17 = *&v20[*(v17 + 48)];
    (*(v25 + 8))(v20, v24);
    if (one-time initialization token for paddyRatchetMsgKeyPrefix == -1)
    {
      if (!HIDWORD(v17))
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  swift_once();
  if (!HIDWORD(v17))
  {
LABEL_4:
    v68 = v25;
    v69 = v10;
    v70 = a1;
    v27 = paddyRatchetMsgKeyPrefix;
    v26 = unk_27D8C2000;
    *&__src = v17;
    v28 = specialized Data.InlineData.init(_:)(&__src, &__src + 4);
    *&v83 = v27;
    *(&v83 + 1) = v26;
    v29 = MEMORY[0x277CC9318];
    v30 = MEMORY[0x277CC9300];
    v81 = MEMORY[0x277CC9318];
    v82 = MEMORY[0x277CC9300];
    *&__src = v28;
    *(&__src + 1) = v31 & 0xFFFFFFFFFFFFFFLL;
    v32 = __swift_project_boxed_opaque_existential_1(&__src, MEMORY[0x277CC9318]);
    v71 = v17;
    v33 = *v32;
    v34 = v32[1];
    outlined copy of Data._Representation(v27, v26);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v33, v34, &v83);
    __swift_destroy_boxed_opaque_existential_1(&__src);
    v35 = v83;
    v84 = v83;
    v81 = v29;
    v82 = v30;
    v36 = v76;
    v37 = v77;
    *&__src = v77;
    *(&__src + 1) = v76;
    v38 = __swift_project_boxed_opaque_existential_1(&__src, v29);
    v39 = *v38;
    v40 = v38[1];
    outlined copy of Data._Representation(v37, v36);
    outlined copy of Data._Representation(v37, v36);
    outlined copy of Data._Representation(v35, *(&v35 + 1));
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v39, v40, &v84);
    v67[2] = 0;
    outlined consume of Data._Representation(v35, *(&v35 + 1));
    __swift_destroy_boxed_opaque_existential_1(&__src);
    v10 = *(&v84 + 1);
    a1 = v84;
    v41 = *(v79 + 48);
    __src = v84;
    outlined copy of Data._Representation(v84, *(&v84 + 1));
    a4 = type metadata accessor for SHA256();
    v42 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v43 = _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    v67[1] = lazy protocol witness table accessor for type Data and conformance Data();
    v44 = v78;
    v67[4] = v42;
    v67[3] = v43;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(__src, *(&__src + 1));
    *(v44 + v41) = v71;
    if (one-time initialization token for paddyRatchetSenderKeyPrefix == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  if (v75 > 0xFFFFFFFE)
  {
    __break(1u);
  }

  v71 = a4;
  v45 = v75 + 1;
  v46 = paddyRatchetSenderKeyPrefix;
  v47 = unk_27D8C2010;
  *&__src = v75 + 1;
  v48 = specialized Data.InlineData.init(_:)(&__src, &__src + 4);
  *&v83 = v46;
  *(&v83 + 1) = v47;
  v49 = MEMORY[0x277CC9318];
  v81 = MEMORY[0x277CC9318];
  v75 = a1;
  v50 = MEMORY[0x277CC9300];
  v82 = MEMORY[0x277CC9300];
  *&__src = v48;
  *(&__src + 1) = v51 & 0xFFFFFFFFFFFFFFLL;
  v52 = __swift_project_boxed_opaque_existential_1(&__src, MEMORY[0x277CC9318]);
  v67[0] = v10;
  v53 = *v52;
  v54 = v52[1];
  outlined copy of Data._Representation(v46, v47);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v53, v54, &v83);
  __swift_destroy_boxed_opaque_existential_1(&__src);
  v55 = v83;
  v84 = v83;
  v81 = v49;
  v82 = v50;
  *&__src = v77;
  *(&__src + 1) = v76;
  v56 = __swift_project_boxed_opaque_existential_1(&__src, v49);
  v57 = *v56;
  v58 = v56[1];
  outlined copy of Data._Representation(v55, *(&v55 + 1));
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v57, v58, &v84);
  outlined consume of Data._Representation(v55, *(&v55 + 1));
  __swift_destroy_boxed_opaque_existential_1(&__src);
  v59 = v79;
  v60 = *(v79 + 48);
  __src = v84;
  v61 = v74;
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data._Representation(v75, v67[0]);
  outlined destroy of (key: SymmetricKey, index: UInt64)(v22);
  outlined consume of Data?(__src, *(&__src + 1));
  *(v61 + v60) = v45;
  v62 = v72;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v78, v72, &_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v63 = *(v62 + *(v59 + 48));
  v64 = *(v68 + 32);
  v64(v70, v62, v24);
  v65 = v69;
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v61, v69, &_s9CryptoKit12SymmetricKeyV_s6UInt64VtMd, _s9CryptoKit12SymmetricKeyV_s6UInt64VtMR);
  v64(v73, v65, v24);
  return v63;
}

uint64_t closure #1 in deriveSenderKeyID(key:info:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t PaddyOutgoingSymmetricRatchet.init(conversationDST:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v35 = a3;
  v4 = type metadata accessor for SymmetricRatchet(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  static SymmetricKeySize.bits256.getter();
  v20 = a1;
  v21 = v40;
  SymmetricKey.init(size:)();
  (*(v12 + 16))(v17, v19, v11);
  v38 = &type metadata for PaddyHKDFRatchet;
  v39 = &protocol witness table for PaddyHKDFRatchet;
  *&v37 = v20;
  *(&v37 + 1) = v21;
  *&v7[*(v4 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v20, v21);
  if (SymmetricKey.bitCount.getter() >= 256)
  {
    v34 = v20;
    outlined init with take of ContiguousBytes(&v37, &v7[*(v4 + 24)]);
    (*(v12 + 32))(v7, v17, v11);
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = 0;
    outlined init with take of SymmetricRatchet(v7, v9);
    v27 = v35;
    outlined init with take of SymmetricRatchet(v9, v35);
    if (one-time initialization token for paddySenderKeyIDPrefix != -1)
    {
      swift_once();
    }

    v37 = paddySenderKeyIDPrefix;
    outlined copy of Data._Representation(paddySenderKeyIDPrefix, *(&paddySenderKeyIDPrefix + 1));
    type metadata accessor for SHA256();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v28 = v36;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v37, *(&v37 + 1));
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v29 = *(v12 + 8);
    v29(v28, v11);
    v29(v19, v11);
    v30 = v37;
    result = type metadata accessor for PaddyOutgoingSymmetricRatchet(0);
    *(v27 + *(result + 20)) = v30;
    v31 = (v27 + *(result + 24));
    v32 = v40;
    *v31 = v34;
    v31[1] = v32;
  }

  else
  {
    v22 = v20;
    v23 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CC51D0], v23);
    swift_willThrow();
    outlined consume of Data._Representation(v22, v21);
    v25 = *(v12 + 8);
    v25(v17, v11);
    v25(v19, v11);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  return result;
}

uint64_t outlined init with take of SymmetricRatchet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymmetricRatchet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PaddyOutgoingSymmetricRatchet.exportSenderKey()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  outlined init with copy of (key: SymmetricKey, index: UInt64)(v1, &v10 - v5);
  v7 = *&v6[*(v4 + 56)];
  v8 = type metadata accessor for SymmetricKey();
  (*(*(v8 - 8) + 32))(a1, v6, v8);
  return v7;
}

uint64_t PaddyOutgoingSymmetricRatchet.seal(message:authenticatedData:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = a4;
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v6 = type metadata accessor for SymmetricKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - v15;
  v17 = *(v4 + *(v14 + 48));
  if (v17 == -1)
  {
LABEL_6:
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v17, 1, v9);
  if (!v5)
  {
    v18 = *(v10 + 48);
    (*(v7 + 32))(v16, v9, v6);
    *&v16[v18] = v17;
    v19 = static PaddySymmetricLayer.seal(_:authenticatedData:using:)(v23, v24, v25, v26, v16);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v16, v13, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    if (!HIDWORD(*&v13[*(v10 + 48)]))
    {
      (*(v7 + 8))(v13, v6);
      return v19;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PaddyIncomingSymmetricRatchet.init(senderKey:conversationDST:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SymmetricRatchet(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  (*(v8 + 16))(v12, a1, v7);
  v32 = &type metadata for PaddyHKDFRatchet;
  v33 = &protocol witness table for PaddyHKDFRatchet;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v16[*(v13 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(a2, a3);
  if (SymmetricKey.bitCount.getter() >= 256)
  {
    v29 = a3;
    outlined init with take of ContiguousBytes(&v31, &v16[*(v13 + 24)]);
    (*(v8 + 32))(v16, v12, v7);
    *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = 0;
    outlined init with take of SymmetricRatchet(v16, v18);
    outlined init with take of SymmetricRatchet(v18, v34);
    if (one-time initialization token for paddySenderKeyIDPrefix != -1)
    {
      swift_once();
    }

    v31 = paddySenderKeyIDPrefix;
    outlined copy of Data._Representation(paddySenderKeyIDPrefix, *(&paddySenderKeyIDPrefix + 1));
    type metadata accessor for SHA256();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v23 = v30;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v31, *(&v31 + 1));
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v24 = *(v8 + 8);
    v24(a1, v7);
    v24(v23, v7);
    v25 = v31;
    result = type metadata accessor for PaddyIncomingSymmetricRatchet(0);
    v26 = v34;
    *(v34 + *(result + 20)) = v25;
    v27 = (v26 + *(result + 24));
    v28 = v29;
    *v27 = a2;
    v27[1] = v28;
  }

  else
  {
    v19 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CC51D0], v19);
    swift_willThrow();
    outlined consume of Data._Representation(a2, a3);
    v21 = *(v8 + 8);
    v21(a1, v7);
    v21(v12, v7);
    return __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  return result;
}

uint64_t PaddyIncomingSymmetricRatchet.init(senderKey:index:senderKeyID:conversationDST:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v32 = a3;
  v36 = a4;
  v30 = a2;
  v31 = a7;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for SymmetricRatchet(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v29[-v18];
  (*(v11 + 16))(v13, a1, v10);
  v34 = &type metadata for PaddyHKDFRatchet;
  v35 = &protocol witness table for PaddyHKDFRatchet;
  *&v33 = a5;
  *(&v33 + 1) = a6;
  *&v17[*(v14 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(a5, a6);
  if (SymmetricKey.bitCount.getter() >= 256)
  {
    (*(v11 + 8))(a1, v10);
    outlined init with take of ContiguousBytes(&v33, &v17[*(v14 + 24)]);
    v24 = v30;
    (*(v11 + 32))(v17, v13, v10);
    *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = v24;
    outlined init with take of SymmetricRatchet(v17, v19);
    v25 = v31;
    outlined init with take of SymmetricRatchet(v19, v31);
    result = type metadata accessor for PaddyIncomingSymmetricRatchet(0);
    v26 = (v25 + *(result + 24));
    *v26 = a5;
    v26[1] = a6;
    v27 = (v25 + *(result + 20));
    v28 = v36;
    *v27 = v32;
    v27[1] = v28;
  }

  else
  {
    v20 = type metadata accessor for CryptoKitError();
    _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277CC51D0], v20);
    swift_willThrow();
    outlined consume of Data._Representation(v32, v36);
    outlined consume of Data._Representation(a5, a6);
    v22 = *(v11 + 8);
    v22(a1, v10);
    v22(v13, v10);
    return __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  return result;
}

void PaddyOutgoingSymmetricRatchet.init(data:conversationDST:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v55 = a6;
  v11 = type metadata accessor for SymmetricRatchet(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for MPPB_LiteRatchet(0);
  MEMORY[0x28223BE20](v15);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet, &protocol conformance descriptor for MPPB_LiteRatchet);
  Message.init(serializedData:extensions:partial:options:)();
  if (v6)
  {
    outlined consume of Data._Representation(a3, a4);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v48 = v13;
    v49 = a2;
    v18 = &v17[v15[7]];
    v19 = v18[1];
    if (v19 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *v18;
    }

    if (v19 >> 60 == 15)
    {
      v21 = 0xC000000000000000;
    }

    else
    {
      v21 = v18[1];
    }

    outlined copy of Data?(*v18, v19);
    *&v50 = a3;
    *(&v50 + 1) = a4;
    v22 = specialized static Data.== infix(_:_:)(a3, a4, v20, v21);
    outlined consume of Data._Representation(v20, v21);
    if (v22)
    {
      v23 = &v17[v15[6]];
      v24 = *v23;
      v25 = v23[1];
      v46 = v25;
      v47 = v24;
      if (v25 >> 60 == 15)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      if (v25 >> 60 == 15)
      {
        v27 = 0xC000000000000000;
      }

      else
      {
        v27 = v25;
      }

      v28 = v51(0);
      v29 = v55;
      v30 = (v55 + *(v28 + 20));
      *v30 = v26;
      v30[1] = v27;
      v44[3] = v30;
      v31 = v18[1];
      if (v31 >> 60 == 15)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v18;
      }

      v33 = *v18;
      if (v31 >> 60 == 15)
      {
        v34 = 0xC000000000000000;
      }

      else
      {
        v34 = v31;
      }

      v35 = (v29 + *(v28 + 24));
      v44[1] = v34;
      v44[2] = v32;
      *v35 = v32;
      v35[1] = v34;
      v36 = &v17[v15[5]];
      v37 = *v36;
      v38 = v36[1];
      if (v38 >> 60 == 15)
      {
        v39 = 0;
      }

      else
      {
        v39 = *v36;
      }

      if (v38 >> 60 == 15)
      {
        v40 = 0xC000000000000000;
      }

      else
      {
        v40 = v36[1];
      }

      v45 = v40;
      *(&v53 + 1) = &type metadata for PaddyHKDFRatchet;
      v54 = &protocol witness table for PaddyHKDFRatchet;
      v41 = v50;
      v51 = v39;
      v52 = v50;
      outlined copy of Data?(v47, v46);
      outlined copy of Data?(v33, v31);
      outlined copy of Data?(v37, v38);
      outlined copy of Data._Representation(v41, *(&v41 + 1));
      v42 = v48;
      SymmetricRatchet.init(data:step:)(v51, v45, &v52, v48);
      outlined destroy of MPPB_LiteRatchet(v17);
      outlined consume of Data._Representation(v41, *(&v41 + 1));
      outlined consume of Data._Representation(a1, v49);
      outlined init with take of SymmetricRatchet(v42, v55);
    }

    else
    {
      lazy protocol witness table accessor for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors();
      swift_allocError();
      *v43 = 1;
      swift_willThrow();
      outlined consume of Data._Representation(v50, *(&v50 + 1));
      outlined consume of Data._Representation(a1, v49);
      outlined destroy of MPPB_LiteRatchet(v17);
    }
  }
}

uint64_t PaddyOutgoingSymmetricRatchet.serializedData()(uint64_t (*a1)(void), uint64_t a2)
{
  v26 = a2;
  v4 = type metadata accessor for MPPB_LiteRatchet(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v7 = &v6[v4[5]];
  *v7 = xmmword_22B48D7D0;
  v8 = &v6[v4[6]];
  *v8 = xmmword_22B48D7D0;
  v9 = &v6[v4[7]];
  *v9 = xmmword_22B48D7D0;
  v10 = SymmetricRatchet.serializedData()();
  v12 = v11;
  outlined consume of Data?(*v7, *(v7 + 1));
  *v7 = v10;
  *(v7 + 1) = v12;
  v13 = a1(0);
  v14 = (v2 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = *v8;
  v18 = *(v8 + 1);
  outlined copy of Data._Representation(*v14, v16);
  outlined consume of Data?(v17, v18);
  *v8 = v15;
  *(v8 + 1) = v16;
  v19 = (v2 + *(v13 + 24));
  v20 = *v19;
  v21 = v19[1];
  v22 = *v9;
  v23 = *(v9 + 1);
  outlined copy of Data._Representation(*v19, v21);
  outlined consume of Data?(v22, v23);
  *v9 = v20;
  *(v9 + 1) = v21;
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_1(&lazy protocol witness table cache variable for type MPPB_LiteRatchet and conformance MPPB_LiteRatchet, type metadata accessor for MPPB_LiteRatchet, &protocol conformance descriptor for MPPB_LiteRatchet);
  v24 = Message.serializedData(partial:)();
  outlined destroy of MPPB_LiteRatchet(v6);
  return v24;
}

unint64_t PaddyIncomingSymmetricRatchet.open(_:authenticatedData:index:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v17 = a4;
  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(a5, 1, v14);
  if (!v6)
  {
    v5 = static PaddySymmetricLayer.open(_:authenticatedData:using:)(a1, a2, a3, v17, v14);
    (*(v12 + 8))(v14, v11);
  }

  return v5;
}

uint64_t PaddyOutgoingSymmetricRatchet.ratchetSenderKeyID()(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

unint64_t lazy protocol witness table accessor for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors()
{
  result = lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LiteSymmetricRatchetErrors and conformance LiteSymmetricRatchetErrors);
  }

  return result;
}

uint64_t outlined destroy of MPPB_LiteRatchet(uint64_t a1)
{
  v2 = type metadata accessor for MPPB_LiteRatchet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymmetricRatchet(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SymmetricRatchet(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata completion function for PaddyOutgoingSymmetricRatchet(uint64_t a1)
{
  result = type metadata accessor for SymmetricRatchet(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PaddyHKDFRatchet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PaddyHKDFRatchet(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t one-time initialization function for tetraDHRatchetStepKDFString()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001DLL, 0x800000022B4960C0);
  *&tetraDHRatchetStepKDFString = result;
  *(&tetraDHRatchetStepKDFString + 1) = v1;
  return result;
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStepKDFStringBase()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001CLL, 0x800000022B496080);
  tetraSymmetricKeyRatchetStepKDFStringBase = result;
  *algn_280F9FDE8 = v1;
  return result;
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStepChainKeyDerivationLabel()
{
  if (one-time initialization token for tetraSymmetricKeyRatchetStepKDFStringBase != -1)
  {
    swift_once();
  }

  v0 = tetraSymmetricKeyRatchetStepKDFStringBase;
  v1 = *algn_280F9FDE8;
  outlined copy of Data._Representation(tetraSymmetricKeyRatchetStepKDFStringBase, *algn_280F9FDE8);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000012, 0x800000022B4960A0);
  v4 = v3;
  tetraSymmetricKeyRatchetStepChainKeyDerivationLabel = v0;
  *algn_280F9FF38 = v1;
  v9[3] = MEMORY[0x277CC9318];
  v9[4] = MEMORY[0x277CC9300];
  v9[0] = v2;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(v0, v1);
  outlined copy of Data._Representation(v2, v4);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v6, v7, &tetraSymmetricKeyRatchetStepChainKeyDerivationLabel);
  outlined consume of Data._Representation(v2, v4);
  outlined consume of Data._Representation(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t one-time initialization function for tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel()
{
  if (one-time initialization token for tetraSymmetricKeyRatchetStepKDFStringBase != -1)
  {
    swift_once();
  }

  v0 = tetraSymmetricKeyRatchetStepKDFStringBase;
  v1 = *algn_280F9FDE8;
  outlined copy of Data._Representation(tetraSymmetricKeyRatchetStepKDFStringBase, *algn_280F9FDE8);
  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD000000000000014, 0x800000022B496060);
  v4 = v3;
  tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel = v0;
  *algn_280F9FF48 = v1;
  v9[3] = MEMORY[0x277CC9318];
  v9[4] = MEMORY[0x277CC9300];
  v9[0] = v2;
  v9[1] = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v9, MEMORY[0x277CC9318]);
  v6 = *v5;
  v7 = v5[1];
  outlined copy of Data._Representation(v0, v1);
  outlined copy of Data._Representation(v2, v4);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v6, v7, &tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel);
  outlined consume of Data._Representation(v2, v4);
  outlined consume of Data._Representation(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void one-time initialization function for tetraSymmetricKeyRatchetStep()
{
  if (one-time initialization token for tetraSymmetricKeyRatchetStepChainKeyDerivationLabel != -1)
  {
    swift_once();
  }

  v0 = tetraSymmetricKeyRatchetStepChainKeyDerivationLabel;
  v1 = *algn_280F9FF38;
  outlined copy of Data._Representation(tetraSymmetricKeyRatchetStepChainKeyDerivationLabel, *algn_280F9FF38);
  if (one-time initialization token for tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel != -1)
  {
    swift_once();
  }

  v2 = tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel;
  v3 = *algn_280F9FF48;
  tetraSymmetricKeyRatchetStep = v0;
  *algn_280F9FDF8 = v1;
  qword_280F9FE00 = tetraSymmetricKeyRatchetStepMessageKeyDerivationLabel;
  unk_280F9FE08 = *algn_280F9FF48;
  qword_280F9FE10 = 32;
  byte_280F9FE18 = 0;

  outlined copy of Data._Representation(v2, v3);
}

id TetraVersions.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TetraVersions();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *Kyber1024ObjCPrivateKey.init(protoBufData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v27 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for TetraPB_KyberPrivateKey(0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey();
  Message.init(serializedData:extensions:partial:options:)();
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_8:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v11 = &v10[v8[5]];
  v12 = *(v11 + 1);
  if (v12 >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraKeyStorageError and conformance TetraKeyStorageError();
    swift_allocError();
    *v13 = 0;
LABEL_7:
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v10, type metadata accessor for TetraPB_KyberPrivateKey);
    goto LABEL_8;
  }

  v14 = &v10[v8[6]];
  if (v14[9])
  {
LABEL_6:
    lazy protocol witness table accessor for type TetraKeyStorageError and conformance TetraKeyStorageError();
    swift_allocError();
    *v15 = 1;
    goto LABEL_7;
  }

  v17 = *v14;
  if (v14[8])
  {
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  else if (v17 != 1)
  {
    goto LABEL_6;
  }

  v18 = &v10[v8[7]];
  if (v18[9])
  {
    goto LABEL_15;
  }

  v22 = *v18;
  if (v18[8])
  {
    if (!v22)
    {
      goto LABEL_15;
    }
  }

  else if (v22 != 1)
  {
LABEL_15:
    v19 = *v11;
    outlined copy of Data?(*v11, *(v11 + 1));
    v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v19, v12);
    *&v25[0] = 0;
    v21 = [v2 initWithApKeyBytes:v20.super.isa error:v25];
    goto LABEL_21;
  }

  v23 = *v11;
  outlined copy of Data?(*v11, *(v11 + 1));
  v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v23, v12);
  *&v25[0] = 0;
  v21 = [v2 initWithSepKeyBytes:v20.super.isa error:v25];
LABEL_21:
  v4 = v21;

  if (v4)
  {
    v24 = *&v25[0];
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v10, type metadata accessor for TetraPB_KyberPrivateKey);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    v4 = *&v25[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v10, type metadata accessor for TetraPB_KyberPrivateKey);
  }

  return v4;
}

uint64_t Kyber1024ObjCPrivateKey.protobufData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Kyber1024.PrivateKey();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TetraPB_KyberPrivateKey(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v15 = &v14[v12[5]];
  *v15 = xmmword_22B48D7D0;
  v16 = &v14[v12[6]];
  *v16 = 0;
  *(v16 + 4) = 256;
  v36 = v12;
  v17 = &v14[v12[7]];
  *v17 = 0;
  *(v17 + 4) = 256;
  v18 = v0 + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey;
  outlined init with copy of TetraSessionStates?(v18, v7, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v35 = *(v9 + 48);
  v19 = v35(v7, 1, v8);
  v34 = v18;
  if (v19 == 1)
  {
    v20 = v8;
    outlined destroy of Kyber1024.PrivateKey?(v7);
    v21 = type metadata accessor for TetraKEM1024Key(0);
    v22 = v33;
    outlined init with copy of TetraSessionStates?(v18 + *(v21 + 20), v33, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    v23 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v24 = (v22 + *(v23 + 20));
    v25 = *v24;
    v26 = v24[1];
    outlined copy of Data._Representation(*v24, v26);
    outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v22, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    v27 = v20;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v27 = v8;
    v25 = Kyber1024.PrivateKey.dataRepresentation.getter();
    v26 = v28;
    (*(v9 + 8))(v11, v27);
  }

  outlined consume of Data?(*v15, *(v15 + 1));
  *v15 = v25;
  *(v15 + 1) = v26;
  *v16 = 1;
  *(v16 + 4) = 1;
  v29 = v37;
  outlined init with copy of TetraSessionStates?(v34, v37, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  v30 = v35(v29, 1, v27);
  outlined destroy of Kyber1024.PrivateKey?(v29);
  *v17 = v30 == 1;
  *(v17 + 4) = 1;
  lazy protocol witness table accessor for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey();
  v31 = Message.serializedData(partial:)();
  outlined destroy of SecureEnclave.Kyber1024.PrivateKey(v14, type metadata accessor for TetraPB_KyberPrivateKey);
  return v31;
}

uint64_t outlined destroy of Kyber1024.PrivateKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey()
{
  result = lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey;
  if (!lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey)
  {
    type metadata accessor for TetraPB_KyberPrivateKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPB_KyberPrivateKey and conformance TetraPB_KyberPrivateKey);
  }

  return result;
}

uint64_t outlined destroy of SecureEnclave.Kyber1024.PrivateKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraKeyStorageError and conformance TetraKeyStorageError()
{
  result = lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError;
  if (!lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError;
  if (!lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKeyStorageError and conformance TetraKeyStorageError);
  }

  return result;
}

uint64_t type metadata accessor for TetraSessionStates(uint64_t a1)
{
  result = type metadata singleton initialization cache for TetraSessionStates;
  if (!type metadata singleton initialization cache for TetraSessionStates)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TetraSessionStates(uint64_t a1)
{
  type metadata accessor for TetraSessionState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [TetraSessionState](319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Bool?()
{
  if (!lazy cache variable for type metadata for Bool?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Bool?);
    }
  }
}

void type metadata accessor for [TetraSessionState](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [TetraSessionState])
  {
    type metadata accessor for TetraSessionState(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TetraSessionState]);
    }
  }
}

unint64_t TetraSessionStates.discardMessageKeyOnSessionStates(ephemeralECDHPublicKey:messageIndex:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v68 = type metadata accessor for TetraSessionState(0);
  v8 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  if (TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:)(a1, a2))
  {
    v18 = static os_log_type_t.info.getter();
    v19 = v18;
    result = MessageProtectionLog(v18);
    if (result)
    {
      v21 = result;
      (*(v12 + 16))(v17, a1, v11);
      if (!os_log_type_enabled(v21, v19))
      {

        (*(v12 + 8))(v17, v11);
        return 1;
      }

      v66 = v12;
      v67 = v11;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v70[0] = v23;
      *v22 = 136315394;
      result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
      if (v24 >> 60 != 15)
      {
        v25 = result;
        v26 = v24;
        v27 = Data.base64EncodedString(options:)(0);
        outlined consume of Data?(v25, v26);
        (*(v66 + 8))(v17, v67);
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27._countAndFlagsBits, v27._object, v70);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2048;
        *(v22 + 14) = a2;
        _os_log_impl(&dword_22B404000, v21, v19, "Discarded MessageKey associated with {publicKey:%s, index:%llu} on default session.", v22, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x231892DF0](v23, -1, -1);
        MEMORY[0x231892DF0](v22, -1, -1);

        return 1;
      }

      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  v63 = v7;
  v64 = v15;
  v66 = v12;
  v67 = v11;
  v65 = a2;
  v29 = *(v2 + *(type metadata accessor for TetraSessionStates(0) + 24));
  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_23:
    v60 = static os_log_type_t.error.getter();
    result = MessageProtectionLog(v60);
    if (result)
    {
      v61 = result;
      os_log(_:dso:log:_:_:)(v60, &dword_22B404000, result, "Failed to find corresponding MessageKey to discard on all sessions.", 67, 2, MEMORY[0x277D84F90]);

      return 0;
    }

    goto LABEL_34;
  }

  v31 = 0;
  while (1)
  {
    if (v31 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    outlined init with copy of TetraSessionStates(v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31, v10, type metadata accessor for TetraSessionState);
    v32 = &v10[*(v68 + 20)];
    v33 = type metadata accessor for TetraRatchetState(0);
    v34 = *&v32[*(v33 + 20)];
    MEMORY[0x28223BE20](v33);
    *(&v62 - 2) = a1;

    result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TetraSessionState.discardMessageKeyOnSessionState(ephemeralECDHPublicKey:messageIndex:), &v62 - 4, v34);
    if (result >> 62)
    {
      break;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_11:
    ++v31;

    outlined destroy of TetraSessionState(v10, type metadata accessor for TetraSessionState);
    if (v30 == v31)
    {
      goto LABEL_23;
    }
  }

  v35 = result & 0xFFFFFFFFFFFFFF8;
  if ((result & 0x8000000000000000) != 0)
  {
    v35 = result;
  }

  v36 = result;
  v37 = MEMORY[0x231891D10](v35);
  result = v36;
  if (!v37)
  {
    goto LABEL_11;
  }

LABEL_16:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_31:
    MEMORY[0x231891C80](0);
    v38 = v65;
    v39 = v66;
    v40 = v67;
    v41 = v64;
    goto LABEL_19;
  }

  v38 = v65;
  v39 = v66;
  v40 = v67;
  v41 = v64;
  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_19:

  swift_beginAccess();
  type metadata accessor for SymmetricRatchet(0);
  v42 = v63;
  specialized Dictionary.removeValue(forKey:)(v38, v63);
  outlined destroy of TetraSessionStates?(v42, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  swift_endAccess();

  v43 = static os_log_type_t.info.getter();
  v44 = v43;
  result = MessageProtectionLog(v43);
  if (!result)
  {
    goto LABEL_36;
  }

  v45 = result;
  (*(v39 + 16))(v41, a1, v40);
  if (os_log_type_enabled(v45, v44))
  {
    LODWORD(v67) = v44;
    v46 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69 = v66;
    *v46 = 136315650;
    result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
    if (v47 >> 60 == 15)
    {
      goto LABEL_37;
    }

    v48 = result;
    v49 = v47;
    v50 = Data.base64EncodedString(options:)(0);
    outlined consume of Data?(v48, v49);
    (*(v39 + 8))(v41, v40);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50._countAndFlagsBits, v50._object, &v69);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v65;
    *(v46 + 22) = 2080;
    swift_beginAccess();
    v52 = &v10[*(v68 + 32)];
    v53 = *v52;
    v54 = v52[1];
    outlined copy of Data._Representation(*v52, v54);
    v55 = Data.description.getter();
    v57 = v56;
    outlined consume of Data._Representation(v53, v54);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v69);

    *(v46 + 24) = v58;
    _os_log_impl(&dword_22B404000, v45, v67, "Discarded MessageKey associated with {publicKey:%s, index:%llu} on previous session (%s).", v46, 0x20u);
    v59 = v66;
    swift_arrayDestroy();
    MEMORY[0x231892DF0](v59, -1, -1);
    MEMORY[0x231892DF0](v46, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v41, v40);
  }

  outlined destroy of TetraSessionState(v10, type metadata accessor for TetraSessionState);
  return 1;
}

NSObject *TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
  v7 = *(type metadata accessor for TetraSessionState(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22B48D7C0;
  outlined init with copy of TetraSessionStates(v3, v9 + v8, type metadata accessor for TetraSessionState);
  type metadata accessor for TetraSessionStates(0);
  v20[7] = v9;

  specialized Array.append<A>(contentsOf:)(v10);
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a1;
  v11 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:), v20, v9);
  v12 = *(v11 + 16);
  if (v12 <= 1)
  {

    return (v12 == 1);
  }

  else
  {
    v13 = v11;
    v14 = static os_log_type_t.fault.getter();
    v15 = v14;
    result = MessageProtectionLog(v14);
    if (result)
    {
      v17 = result;
      if (os_log_type_enabled(result, v15))
      {

        v18 = swift_slowAlloc();
        *v18 = 134217984;
        v19 = *(v13 + 16);

        *(v18 + 4) = v19;

        _os_log_impl(&dword_22B404000, v17, v15, "Unexpectedly found %ld colliding prekey hashes", v18, 0xCu);
        MEMORY[0x231892DF0](v18, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unsigned int *TetraSessionStates.openMessage(_:prekeysHash:sessionDST:theirTetraVersion:didRatchet:)(uint64_t a1, void *a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, unsigned int a6, _BYTE *a7)
{
  v9 = v8;
  v10 = v7;
  v109 = a4;
  v110 = a5;
  v108 = a1;
  v114[3] = *MEMORY[0x277D85DE8];
  v15 = type metadata accessor for TetraSessionState(0);
  v106 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v94 - v18);
  v104 = v17;
  v98 = v20;
  if (a3 >> 60 != 15)
  {
    v49 = (v10 + *(v15 + 32));
    v102 = a2;
    v103 = a3;
    v50 = *v49;
    v51 = v49[1];
    outlined copy of Data?(v102, v103);
    v52 = v50;
    v53 = v51;
    v54 = v102;
    v55 = v103;
    if (specialized static Data.== infix(_:_:)(v52, v53, v102, v103))
    {
      if (a6 >= 0xF)
      {
        v56 = 15;
      }

      else
      {
        v56 = a6;
      }

      *v10 = v56;
      *(v10 + *(v15 + 36)) = 1;
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v108, v109, v110, a7);
      v10 = v57;
      outlined consume of Data?(v54, v55);
      return v10;
    }

    v58 = *(v10 + *(type metadata accessor for TetraSessionStates(0) + 24));
    v107 = *(v58 + 16);
    if (!v107)
    {
      outlined consume of Data?(v54, v55);
      goto LABEL_2;
    }

    HIDWORD(v94) = a6;
    v59 = 0;
    v21 = v106;
    v112 = v58 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    if (v54)
    {
      v60 = 0;
    }

    else
    {
      v60 = v55 == 0xC000000000000000;
    }

    v61 = !v60;
    LODWORD(v101) = v61;
    v62 = __OFSUB__(HIDWORD(v54), v54);
    v97 = v62;
    v96 = HIDWORD(v54) - v54;
    *&v100 = BYTE6(v55);
    v99 = v10;
    v95 = a7;
    v105 = v58;
    v111 = v55 >> 62;
    while (1)
    {
      if (v59 >= *(v58 + 16))
      {
        goto LABEL_98;
      }

      outlined init with copy of TetraSessionStates(v112 + *(v21 + 72) * v59, v19, type metadata accessor for TetraSessionState);
      v63 = (v19 + *(v104 + 32));
      v64 = *v63;
      v65 = v63[1];
      v66 = v65 >> 62;
      if (v65 >> 62 == 3)
      {
        break;
      }

      v68 = v111;
      if (v66 > 1)
      {
        if (v66 != 2)
        {
          goto LABEL_56;
        }

        v73 = *(v64 + 16);
        v72 = *(v64 + 24);
        v74 = __OFSUB__(v72, v73);
        v71 = v72 - v73;
        if (v74)
        {
          goto LABEL_102;
        }

        if (v111 <= 1)
        {
          goto LABEL_53;
        }
      }

      else if (v66)
      {
        LODWORD(v71) = HIDWORD(v64) - v64;
        if (__OFSUB__(HIDWORD(v64), v64))
        {
          goto LABEL_101;
        }

        v71 = v71;
        if (v111 <= 1)
        {
LABEL_53:
          v75 = v100;
          if (v68)
          {
            v75 = v96;
            if (v97)
            {
              goto LABEL_100;
            }
          }

          goto LABEL_59;
        }
      }

      else
      {
        v71 = BYTE6(v65);
        if (v111 <= 1)
        {
          goto LABEL_53;
        }
      }

LABEL_57:
      if (v68 != 2)
      {
        if (!v71)
        {
          goto LABEL_82;
        }

        goto LABEL_32;
      }

      v77 = *(v54 + 16);
      v76 = *(v54 + 24);
      v74 = __OFSUB__(v76, v77);
      v75 = v76 - v77;
      if (v74)
      {
        goto LABEL_99;
      }

LABEL_59:
      if (v71 == v75)
      {
        if (v71 < 1)
        {
          goto LABEL_82;
        }

        if (v66 > 1)
        {
          if (v66 != 2)
          {
            memset(v114, 0, 14);
LABEL_81:
            closure #1 in static Data.== infix(_:_:)(v114, v54, v55, &v113);
            if (v113)
            {
              goto LABEL_82;
            }

            goto LABEL_32;
          }

          v79 = *(v64 + 16);
          v78 = *(v64 + 24);
          v80 = __DataStorage._bytes.getter();
          if (v80)
          {
            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v79, v81))
            {
              goto LABEL_105;
            }

            v80 += v79 - v81;
          }

          if (__OFSUB__(v78, v79))
          {
            goto LABEL_104;
          }

          MEMORY[0x231890D50]();
          v82 = v80;
          v54 = v102;
          v55 = v103;
          closure #1 in static Data.== infix(_:_:)(v82, v102, v103, v114);
          v83 = v114[0];
          v10 = v99;
        }

        else
        {
          if (!v66)
          {
            v114[0] = v64;
            LOWORD(v114[1]) = v65;
            BYTE2(v114[1]) = BYTE2(v65);
            BYTE3(v114[1]) = BYTE3(v65);
            BYTE4(v114[1]) = BYTE4(v65);
            BYTE5(v114[1]) = BYTE5(v65);
            goto LABEL_81;
          }

          v84 = v10;
          v85 = v64;
          if (v64 >> 32 < v64)
          {
            goto LABEL_103;
          }

          v86 = __DataStorage._bytes.getter();
          if (v86)
          {
            v87 = __DataStorage._offset.getter();
            if (__OFSUB__(v85, v87))
            {
              goto LABEL_106;
            }

            v86 += v85 - v87;
          }

          v10 = v84;
          MEMORY[0x231890D50]();
          v88 = v86;
          v54 = v102;
          v55 = v103;
          closure #1 in static Data.== infix(_:_:)(v88, v102, v103, v114);
          v83 = v114[0];
          a7 = v95;
        }

        v21 = v106;
        if (v83)
        {
          goto LABEL_82;
        }
      }

LABEL_32:
      ++v59;
      outlined destroy of TetraSessionState(v19, type metadata accessor for TetraSessionState);
      v58 = v105;
      if (v107 == v59)
      {
        outlined consume of Data?(v54, v55);
        a6 = HIDWORD(v94);
        goto LABEL_3;
      }
    }

    if (v64)
    {
      v67 = 0;
    }

    else
    {
      v67 = v65 == 0xC000000000000000;
    }

    v68 = v111;
    v70 = !v67 || v111 < 3;
    if (((v70 | v101) & 1) == 0)
    {
LABEL_82:
      if (HIDWORD(v94) >= 0xF)
      {
        v89 = 15;
      }

      else
      {
        v89 = HIDWORD(v94);
      }

      *v19 = v89;
      *(v19 + *(v104 + 36)) = 1;
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v108, v109, v110, a7);
      if (v8)
      {
        outlined consume of Data?(v102, v103);
        outlined destroy of TetraSessionState(v19, type metadata accessor for TetraSessionState);
      }

      else
      {
        v10 = v90;
        TetraSessionStates.makeDefault(_:)(v19);
        outlined consume of Data?(v102, v103);
LABEL_91:
        outlined destroy of TetraSessionState(v19, type metadata accessor for TetraSessionState);
      }

      return v10;
    }

LABEL_56:
    v71 = 0;
    if (v68 <= 1)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

LABEL_2:
  v21 = v106;
LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B48D7C0;
  outlined init with copy of TetraSessionStates(v10, v24 + v23, type metadata accessor for TetraSessionState);
  type metadata accessor for TetraSessionStates(0);
  v99 = v10;
  v114[0] = v24;

  specialized Array.append<A>(contentsOf:)(v25);
  v27 = v114[0];
  v28 = *(v114[0] + 16);
  if (a6 >= 0xF)
  {
    v29 = 15;
  }

  else
  {
    v29 = a6;
  }

  LODWORD(v107) = v29;
  v106 = v28;
  if (v28)
  {
    v30 = 0;
    v31 = v114[0] + v23;
    *&v26 = 136315394;
    v100 = v26;
    v32 = v104;
    v33 = v98;
    v101 = v22;
    v105 = v114[0];
    while (v30 < *(v27 + 16))
    {
      v111 = v31;
      v112 = v30;
      outlined init with copy of TetraSessionStates(v31, v33, type metadata accessor for TetraSessionState);
      swift_beginAccess();
      *v33 = v107;
      *(v33 + *(v32 + 36)) = 1;
      specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v108, v109, v110, a7);
      if (!v9)
      {
        v10 = v34;
        swift_endAccess();

        TetraSessionStates.makeDefault(_:)(v33);
        v19 = v33;
        goto LABEL_91;
      }

      swift_endAccess();
      v35 = static os_log_type_t.error.getter();
      v36 = MessageProtectionLog(v35);
      if (!v36)
      {
        goto LABEL_107;
      }

      v37 = v36;
      if (os_log_type_enabled(v36, v35))
      {
        v38 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v114[0] = v103;
        *v38 = v100;
        v39 = (v33 + *(v32 + 32));
        v102 = v9;
        v41 = *v39;
        v40 = v39[1];
        outlined copy of Data._Representation(*v39, v40);
        v42 = Data.base64EncodedString(options:)(0);
        outlined consume of Data._Representation(v41, v40);
        v22 = v101;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42._countAndFlagsBits, v42._object, v114);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        v44 = v102;
        swift_getErrorValue();
        v45 = Error.localizedDescription.getter();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v114);
        v32 = v104;

        *(v38 + 14) = v47;
        _os_log_impl(&dword_22B404000, v37, v35, "Failed to decrypt with session: %s. Decryption error: %s", v38, 0x16u);
        v48 = v103;
        swift_arrayDestroy();
        MEMORY[0x231892DF0](v48, -1, -1);
        MEMORY[0x231892DF0](v38, -1, -1);
      }

      else
      {
      }

      outlined destroy of TetraSessionState(v33, type metadata accessor for TetraSessionState);
      v9 = 0;
      v10 = 0;
      v30 = v112 + 1;
      v31 = v111 + v22;
      v27 = v105;
      if (v106 == v112 + 1)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v10 = v8;
  v32 = v104;
LABEL_88:

  v91 = v99;
  *v99 = v107;
  *(v91 + *(v32 + 36)) = 1;
  specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v108, v109, v110, a7);
  if (!v10)
  {
    return v92;
  }

  return v10;
}

void TetraSessionStates.makeDefault(_:)(_DWORD *a1)
{
  v2 = v1;
  if (specialized static TetraSessionState.== infix(_:_:)(v1, a1))
  {
    outlined assign with copy of TetraSessionState(a1, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMd, &_ss23_ContiguousArrayStorageCy17MessageProtection17TetraSessionStateVGMR);
    v4 = *(type metadata accessor for TetraSessionState(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22B48D7C0;
    outlined init with copy of TetraSessionStates(v2, v6 + v5, type metadata accessor for TetraSessionState);
    v7 = *(type metadata accessor for TetraSessionStates(0) + 24);
    v8 = *(v2 + v7);
    v19[5] = v6;
    specialized Array.append<A>(contentsOf:)(v8);
    *(v2 + v7) = v6;
    v9 = outlined assign with copy of TetraSessionState(a1, v2);
    MEMORY[0x28223BE20](v9);
    v19[2] = a1;
    v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(_s17MessageProtection18TetraSessionStatesV11makeDefaultyyAA0cD5StateVFSbAFXEfU_TA_0, v19);
    v11 = *(*(v2 + v7) + 16);
    if (v11 < v10)
    {
      __break(1u);
      goto LABEL_12;
    }

    specialized Array.replaceSubrange<A>(_:with:)(v10, v11);
  }

  v12 = *(*(v2 + *(type metadata accessor for TetraSessionStates(0) + 24)) + 16);
  if (v12 < 3)
  {
    return;
  }

  v13 = v12 - 2;
  specialized RangeReplaceableCollection<>.removeLast(_:)(v12 - 2);
  v14 = static os_log_type_t.error.getter();
  v15 = v14;
  v16 = MessageProtectionLog(v14);
  if (!v16)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v17 = v16;
  if (os_log_type_enabled(v16, v15))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v13;
    _os_log_impl(&dword_22B404000, v17, v15, "Removed %ld Tetra sessions.", v18, 0xCu);
    MEMORY[0x231892DF0](v18, -1, -1);
  }
}

Swift::Bool __swiftcall TetraSessionStates.hasSessionWithCompatibleVersion()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection17TetraSessionStateVSgMd, &_s17MessageProtection17TetraSessionStateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v44 - v2;
  v4 = type metadata accessor for TetraSessionState(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v44 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = (&v44 - v15);
  v17 = *v0 - 13;
  v18 = type metadata accessor for TetraSessionStates(0);
  v19 = *(v0 + *(v18 + 24));
  v46 = *(v18 + 24);
  v47 = v0;
  if (v17 > 0x12)
  {
    v44 = v4;
    v45 = v3;
    v29 = *(v19 + 16);
    if (v29)
    {
      v30 = 0;
      v31 = MEMORY[0x277D84F90];
      v48 = v8;
      while (v30 < *(v19 + 16))
      {
        v32 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v33 = *(v5 + 72);
        outlined init with copy of TetraSessionStates(v19 + v32 + v33 * v30, v11, type metadata accessor for TetraSessionState);
        if ((*v11 - 13) > 0x12)
        {
          LOBYTE(v18) = outlined destroy of TetraSessionState(v11, type metadata accessor for TetraSessionState);
        }

        else
        {
          outlined init with take of TetraSessionState(v11, v8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
            v31 = v49;
          }

          v36 = *(v31 + 16);
          v35 = *(v31 + 24);
          if (v36 >= v35 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
            v31 = v49;
          }

          *(v31 + 16) = v36 + 1;
          v37 = v31 + v32 + v36 * v33;
          v8 = v48;
          LOBYTE(v18) = outlined init with take of TetraSessionState(v48, v37);
        }

        if (v29 == ++v30)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_34;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_27:

    v39 = v47;
    *(v47 + v46) = v31;
    if (*(v31 + 16))
    {
      v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      LOBYTE(v18) = outlined assign with copy of TetraSessionState(v31 + v40, v39);
      if (!*(v31 + 16))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v41 = v31 + v40;
      v42 = v45;
      outlined init with copy of TetraSessionStates(v41, v45, type metadata accessor for TetraSessionState);
      (*(v5 + 56))(v42, 0, 1, v44);
      LOBYTE(v18) = outlined destroy of TetraSessionStates?(v42, &_s17MessageProtection17TetraSessionStateVSgMd, &_s17MessageProtection17TetraSessionStateVSgMR);
      if (!*(v31 + 16))
      {
LABEL_36:
        __break(1u);
        return v18;
      }

      v38 = 1;
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      v48 = v14;
      while (v21 < *(v19 + 16))
      {
        v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v24 = *(v5 + 72);
        outlined init with copy of TetraSessionStates(v19 + v23 + v24 * v21, v16, type metadata accessor for TetraSessionState);
        if ((*v16 - 13) > 0x12)
        {
          LOBYTE(v18) = outlined destroy of TetraSessionState(v16, type metadata accessor for TetraSessionState);
        }

        else
        {
          outlined init with take of TetraSessionState(v16, v14);
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v49 = v22;
          if ((v25 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
            v22 = v49;
          }

          v27 = *(v22 + 16);
          v26 = *(v22 + 24);
          if (v27 >= v26 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
            v22 = v49;
          }

          *(v22 + 16) = v27 + 1;
          v28 = v22 + v23 + v27 * v24;
          v14 = v48;
          LOBYTE(v18) = outlined init with take of TetraSessionState(v48, v28);
        }

        if (v20 == ++v21)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_25:

    *(v47 + v46) = v22;
    v38 = 1;
  }

  LOBYTE(v18) = v38;
  return v18;
}

BOOL closure #1 in TetraSessionStates.hasSessionForEphemeralAndPrekeyHash(_:prekeyHash:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v30 = a4;
  v7 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for TetraSessionState(0);
  if (!specialized static Data.== infix(_:_:)(*(a1 + *(v16 + 32)), *(a1 + *(v16 + 32) + 8), a2, a3))
  {
    return 0;
  }

  v17 = *(v13 + 48);
  outlined init with copy of P256.KeyAgreement.PublicKey?(a1 + *(v16 + 28), v15);
  outlined init with copy of P256.KeyAgreement.PublicKey?(v30, &v15[v17]);
  v18 = *(v8 + 48);
  if (v18(v15, 1, v7) != 1)
  {
    outlined init with copy of P256.KeyAgreement.PublicKey?(v15, v12);
    if (v18(&v15[v17], 1, v7) != 1)
    {
      v20 = (*(v8 + 32))(v29, &v15[v17], v7);
      v21 = MEMORY[0x231891580](v20);
      v23 = v22;
      v24 = MEMORY[0x231891580]();
      v26 = v25;
      v19 = specialized static Data.== infix(_:_:)(v21, v23, v24, v25);
      outlined consume of Data._Representation(v24, v26);
      outlined consume of Data._Representation(v21, v23);
      v27 = *(v8 + 8);
      v27(v29, v7);
      v27(v12, v7);
      outlined destroy of TetraSessionStates?(v15, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
      return v19;
    }

    (*(v8 + 8))(v12, v7);
    goto LABEL_8;
  }

  if (v18(&v15[v17], 1, v7) != 1)
  {
LABEL_8:
    outlined destroy of TetraSessionStates?(v15, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMd, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSg_AHtMR);
    return 0;
  }

  outlined destroy of TetraSessionStates?(v15, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  return 1;
}

Swift::Void __swiftcall TetraSessionStates.cleanupPreviousSessionStates()()
{
  v1 = *(*(v0 + *(type metadata accessor for TetraSessionStates(0) + 24)) + 16);
  if (v1 >= 3)
  {
    v2 = v1 - 2;
    specialized RangeReplaceableCollection<>.removeLast(_:)(v1 - 2);
    v3 = static os_log_type_t.error.getter();
    v4 = v3;
    v5 = MessageProtectionLog(v3);
    if (v5)
    {
      log = v5;
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = v2;
        _os_log_impl(&dword_22B404000, log, v4, "Removed %ld Tetra sessions.", v6, 0xCu);
        MEMORY[0x231892DF0](v6, -1, -1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t TetraSessionStates.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for TetraSessionState(0);
  lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(&lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState, &protocol conformance descriptor for TetraSessionState);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for TetraSessionStates(0);
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection17TetraSessionStateVGMd, &_sSay17MessageProtection17TetraSessionStateVGMR);
    lazy protocol witness table accessor for type [TetraSessionState] and conformance <A> [A](&lazy protocol witness table cache variable for type [TetraSessionState] and conformance <A> [A], &lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState, &protocol conformance descriptor for TetraSessionState, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TetraSessionStates.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for TetraSessionState(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection18TetraSessionStatesV10CodingKeys33_5C9D1E57A2C4DA1AB0D78AFE80DFAD8DLLOGMR);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TetraSessionStates(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v24 = 0;
  lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(&lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState, &protocol conformance descriptor for TetraSessionState);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of TetraSessionState(v20, v13);
  v23 = 1;
  *(v13 + *(v9 + 20)) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17MessageProtection17TetraSessionStateVGMd, &_sSay17MessageProtection17TetraSessionStateVGMR);
  v22 = 2;
  lazy protocol witness table accessor for type [TetraSessionState] and conformance <A> [A](&lazy protocol witness table cache variable for type [TetraSessionState] and conformance <A> [A], &lazy protocol witness table cache variable for type TetraSessionState and conformance TetraSessionState, &protocol conformance descriptor for TetraSessionState, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v21;
  outlined init with copy of TetraSessionStates(v13, v17, type metadata accessor for TetraSessionStates);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TetraSessionState(v13, type metadata accessor for TetraSessionStates);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraSessionStates.CodingKeys()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746C7561666564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraSessionStates.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TetraSessionStates.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraSessionStates.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraSessionStates.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSessionStates.CodingKeys and conformance TetraSessionStates.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of TetraSessionState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraSessionState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TetraSessionState(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TetraSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TetraSessionState] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17MessageProtection17TetraSessionStateVGMd, &_sSay17MessageProtection17TetraSessionStateVGMR);
    lazy protocol witness table accessor for type TetraSessionState and conformance TetraSessionState(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TetraSessionStates(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized TetraSessionStates.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746C7561666564 && a2 == 0xEE006E6F69737365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022B4961D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022B4961F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id HKDF.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKDF.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKDF();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HKDF.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HKDF();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static HKDF.deriveKeyWith(_:salt:outputSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SymmetricKey();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v11;
  SymmetricKey.init<A>(data:)();
  v15 = a2;
  type metadata accessor for SHA256();
  type metadata accessor for NSData();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_2(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_2(&lazy protocol witness table cache variable for type NSData and conformance NSData, type metadata accessor for NSData, MEMORY[0x277CC9DD0]);
  static HKDF.deriveKey<A>(inputKeyMaterial:salt:outputByteCount:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v12(v10, v4);
  return v15;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id TetraErrorHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraErrorHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraErrorHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TetraErrorHelpers.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TetraErrorHelpers();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static TetraErrorHelpers.fRStringFrom(error:)(uint64_t a1)
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x2318919B0](45, 0xE100000000000000);
  [v1 code];
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2318919B0](v4);

  return v3;
}

uint64_t specialized static TetraErrorHelpers.shouldMarkForStateReset(string:)(void *a1)
{
  lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 domain];

  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x231891960](v6);
  }

  lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
  v7 = swift_allocError();
  *v8 = 3;
  v9 = _convertErrorToNSError(_:)();
  v10 = [v9 domain];

  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x231891960](v11);
  }

  v12 = [a1 containsString_];
  if (v12)
  {

    return 1;
  }

  v13 = [a1 containsString_];

  if (v13)
  {
    return 1;
  }

  lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
  v14 = swift_allocError();
  *v15 = 4;
  v16 = specialized static TetraErrorHelpers.fRStringFrom(error:)(v14);
  v18 = v17;

  lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
  v19 = swift_allocError();
  *v20 = 0;
  v21 = specialized static TetraErrorHelpers.fRStringFrom(error:)(v19);
  v23 = v22;

  v24 = swift_allocError();
  *v25 = 1;
  v26 = specialized static TetraErrorHelpers.fRStringFrom(error:)(v24);
  v28 = v27;

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v29;
  if (v16 == v30 && v18 == v29)
  {

LABEL_12:

    goto LABEL_13;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_12;
  }

  if (v21 == v30 && v23 == v31)
  {

    goto LABEL_14;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) != 0 || v26 == v30 && v28 == v31)
  {
LABEL_13:

LABEL_14:

    return 1;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v35 & 1;
}

uint64_t getEnumTagSinglePayload for TetraGeneralError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetraGeneralError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TetraQueryLookupError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TetraQueryLookupError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TetraQueryLookupError(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for TetraQueryLookupError(void *result, int a2)
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

unint64_t lazy protocol witness table accessor for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors()
{
  result = lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors;
  if (!lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors);
  }

  return result;
}

void specialized static TetraAPI.openNoRatchet(tetraOuterMessage:sessionDST:guid:authenticatedData:ourPrekeys:theirIdentity:tetraVersion:signedBy:decryptionBlock:)(uint64_t a1, uint64_t (*a2)(void), Class isa, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, id a9, void (*a10)(void, void, void, void, void, void), uint64_t a11)
{
  v158 = a8;
  v168 = a7;
  v169 = a1;
  v170 = a6;
  v174[2] = *MEMORY[0x277D85DE8];
  v15 = type metadata accessor for TetraRatchetState(0);
  MEMORY[0x28223BE20](v15 - 8);
  v163 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v166 = &v147 - v18;
  v165 = type metadata accessor for P256.Signing.PublicKey();
  v162 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v167 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TetraSessionState(0);
  v20 = MEMORY[0x28223BE20](v161);
  v164 = (&v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v23 = &v147 - v22;
  v159 = a2;
  v24 = a2(0);
  v26 = v25;
  v27.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v24, v26);
  v28 = static os_log_type_t.info.getter();
  v29 = v28;
  v30 = MessageProtectionLog(v28);
  if (!v30)
  {
    goto LABEL_66;
  }

  v31 = v30;
  v33 = a10;
  v32 = a11;
  v34 = os_log_type_enabled(v30, v29);
  v160 = v23;
  v156 = a5;
  v155 = a4;
  v157 = isa;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v174[0] = v36;
    *v35 = 136315138;
    v37 = [(objc_class *)v27.super.isa base64EncodedStringWithOptions:0];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v27.super.isa;
    v41 = v40;

    v42 = v38;
    v33 = a10;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v174);
    v27.super.isa = v39;

    *(v35 + 4) = v43;
    _os_log_impl(&dword_22B404000, v31, v29, "Decrypting TetraNoRatchet for conversationID: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x231892DF0](v36, -1, -1);
    MEMORY[0x231892DF0](v35, -1, -1);
  }

  v44 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  v45 = v170;
  v46 = (v169 + *(v44 + 40));
  v47 = v46[1];
  if (v47 >> 60 == 15)
  {
    lazy protocol witness table accessor for type TetraAKE and conformance TetraAKE();
    v48 = swift_allocError();
    *v49 = 0;
    swift_willThrow();
  }

  else
  {
    v50 = *v46;
    v150 = v44;
    v51 = *(v169 + *(v44 + 52));
    v174[0] = MEMORY[0x277D84F90];
    if (v170 >> 62)
    {
      if (v170 < 0)
      {
        v137 = v170;
      }

      else
      {
        v137 = v170 & 0xFFFFFFFFFFFFFF8;
      }

      v52 = MEMORY[0x231891D10](v137);
    }

    else
    {
      v52 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    outlined copy of Data._Representation(v50, v47);
    if (v52)
    {
      LODWORD(v151) = v51;
      v154 = v27.super.isa;
      v152 = a11;
      v153 = v33;
      v57 = 0;
      v171 = (v45 & 0xFFFFFFFFFFFFFF8);
      v172 = v45 & 0xC000000000000001;
      do
      {
        if (v172)
        {
          v53 = MEMORY[0x231891C80](v57, v45);
        }

        else
        {
          if (v57 >= v171[2])
          {
            goto LABEL_38;
          }

          v53 = *(v45 + 8 * v57 + 32);
        }

        v58 = v53;
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v60 = [v53 tetraRegistration];
        if (v60)
        {
          v61 = v60;
          v62 = v52;
          v63 = TetraRegistration.computeKeysHash()();
          v65 = v64;
          v66 = v50;
          v67 = v50;
          v68 = v47;
          v69 = specialized static Data.== infix(_:_:)(v63, v64, v67, v47);
          outlined consume of Data._Representation(v63, v65);

          if (v69)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v53 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v47 = v68;
          v50 = v66;
          v45 = v170;
          v52 = v62;
        }

        else
        {
        }

        ++v57;
      }

      while (v59 != v52);
      v70 = v174[0];
      v33 = v153;
      v32 = v152;
      v27.super.isa = v154;
      v51 = v151;
      if ((v174[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_53:
      if (MEMORY[0x231891D10](v70))
      {
        if (MEMORY[0x231891D10](v70) != 1)
        {
LABEL_55:

          lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
          v48 = swift_allocError();
          v139 = 5;
          goto LABEL_57;
        }

LABEL_28:
        v149 = v50;
        if ((v70 & 0xC000000000000001) == 0)
        {
          if (*(v70 + 2))
          {
            v72 = *(v70 + 4);
            goto LABEL_31;
          }

          __break(1u);
LABEL_66:
          __break(1u);
        }

        v72 = MEMORY[0x231891C80](0, v70);
LABEL_31:
        v73 = v72;
        v74 = [objc_opt_self() sharedManager];
        v174[0] = 0;
        v75 = [v74 validateIncomingCounter:v51 prekey:v73 publicIdentity:v168 error:v174];
        v76 = v73;
        v77 = v174[0];
        v78 = swift_allocObject();
        *(v78 + 16) = v75;
        if (v77)
        {
          v79 = v77;

          swift_willThrow();
          v80 = v79;
          v81 = v76;
          v48 = v80;

          outlined consume of Data?(v149, v47);

          goto LABEL_59;
        }

        v170 = v74;
        v171 = v76;
        v172 = v78;
        v82 = [a9 compactRepresentation];
        v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v174[0] = v83;
        v174[1] = v85;
        P256.Signing.PublicKey.init<A>(compactRepresentation:)();
        v154 = v27.super.isa;
        v152 = v32;
        v153 = v33;
        v86 = *(v150 + 28);
        v87 = type metadata accessor for P256.KeyAgreement.PublicKey();
        v88 = *(v87 - 8);
        v89 = v166;
        (*(v88 + 16))(v166, v169 + v86, v87);
        v90 = *(v88 + 56);
        v90(v89, 0, 1, v87);
        v91 = v47;
        v92 = v161;
        v93 = v164;
        v168 = *(v161 + 28);
        v90(v164 + v168, 1, 1, v87);
        v94 = (v93 + v92[8]);
        v95 = v149;
        *v94 = v149;
        v94[1] = v91;
        v151 = v94;
        v96 = v162;
        v97 = *(v162 + 16);
        v150 = v92[6];
        v97(v93 + v150, v167, v165);
        *(v93 + v92[9]) = 1;
        outlined copy of Data?(v95, v91);
        v98 = v171;
        v99 = v163;
        TetraRatchetState.init(asReceiverWithFullPrekey:)(v98, v163);
        v148 = v98;
        v171 = v91;
        (*(v96 + 8))(v167, v165);
        outlined init with take of TetraRatchetState(v99, v93 + v92[5], type metadata accessor for TetraRatchetState);
        if (v158 >= 0xF)
        {
          v100 = 15;
        }

        else
        {
          v100 = v158;
        }

        *v93 = v100;
        outlined assign with take of P256.KeyAgreement.PublicKey?(v166, v93 + v168, &_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
        v101 = v93;
        v102 = v160;
        outlined init with take of TetraRatchetState(v101, v160, type metadata accessor for TetraSessionState);
        v173[0] = 0;
        *v102 = v100;
        *(v102 + v92[9]) = 1;
        specialized TetraRatchetState.openMessage<A>(_:sessionDST:didRatchet:)(v169, v159, v157, v173);
LABEL_39:
        v103 = v53;
        v104 = v54;
        v105 = v56;
        v169 = v55;
        v106 = static os_log_type_t.info.getter();
        v107 = v106;
        v108 = MessageProtectionLog(v106);
        v109 = v153;
        v110 = v154;
        if (v108)
        {
          v111 = v108;
          if (os_log_type_enabled(v108, v107))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v174[0] = v113;
            *v112 = 136315138;
            *(v112 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, v174);
            _os_log_impl(&dword_22B404000, v111, v107, "Successfully decrypted scheduled send with %s", v112, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v113);
            MEMORY[0x231892DF0](v113, -1, -1);
            MEMORY[0x231892DF0](v112, -1, -1);
          }

          v114 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          if (v105 >> 60 != 15)
          {
            v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v116;
            v168 = v103;
            v118 = v109;
            v119 = v110;
            v120 = v104;
            v121 = v169;
            outlined copy of Data._Representation(v169, v105);
            outlined copy of Data._Representation(v121, v105);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v174[0] = v114;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121, v105, v115, v117, isUniquelyReferenced_nonNull_native);
            v123 = v121;
            v104 = v120;
            v110 = v119;
            v109 = v118;
            v103 = v168;
            outlined consume of Data?(v123, v105);

            v114 = v174[0];
          }

          v124 = v172;

          outlined copy of Data._Representation(v103, v104);
          v125 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v114);

          v109(v103, v104, v125, 0, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool), v124);

          outlined consume of Data._Representation(v103, v104);

          v126 = static os_log_type_t.info.getter();
          v127 = v126;
          v128 = MessageProtectionLog(v126);
          if (v128)
          {
            v129 = v128;

            if (os_log_type_enabled(v129, v127))
            {
              v130 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              v174[0] = v131;
              *v130 = 136315138;
              v132 = [(objc_class *)v110 base64EncodedStringWithOptions:0];
              v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v135 = v134;

              v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, v174);

              *(v130 + 4) = v136;
              _os_log_impl(&dword_22B404000, v129, v127, "Finished decrypting TetraNoRatchet for conversationID: %s", v130, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v131);
              MEMORY[0x231892DF0](v131, -1, -1);
              MEMORY[0x231892DF0](v130, -1, -1);

              outlined consume of Data._Representation(v103, v104);
              outlined consume of Data?(v169, v105);

              outlined consume of Data?(v149, v171);
            }

            else
            {

              outlined consume of Data?(v149, v171);

              outlined consume of Data._Representation(v103, v104);
              outlined consume of Data?(v169, v105);
            }

            _s17MessageProtection17TetraSessionStateVWOhTm_0(v160, type metadata accessor for TetraSessionState);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v70 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

LABEL_25:
      if ((v70 & 0x4000000000000000) != 0)
      {
        goto LABEL_53;
      }

      v71 = *(v70 + 2);
      if (v71)
      {
        if (v71 != 1)
        {
          goto LABEL_55;
        }

        goto LABEL_28;
      }
    }

    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v48 = swift_allocError();
    v139 = 4;
LABEL_57:
    *v138 = v139;
    swift_willThrow();
    outlined consume of Data?(v50, v47);
  }

LABEL_59:
  v174[0] = v48;
  v140 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && v173[0] == 6)
  {

    v141 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v142 = MEMORY[0x231891960](0xD00000000000001BLL, 0x800000022B494BB0);
    v143 = [v141 initWithDomain:v142 code:5 userInfo:0];

    v144 = v143;
    v33(0, 0xF000000000000000, 0, v143, 0, 0);

    v145 = v174[0];
  }

  else
  {

    v146 = v48;
    v33(0, 0xF000000000000000, 0, v48, 0, 0);

    v145 = v48;
  }
}

NSObject *specialized static TetraAPI.sealNoRatchet(message:authenticatedData:sendingURI:sendingPushToken:receivingURI:receivingPushToken:encryptedAttributes:receiverIdentity:senderIdentity:)(NSObject *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t (*a8)(uint64_t), unint64_t a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v218 = a6;
  v221 = a8;
  v219 = a7;
  v208 = a4;
  v207 = a3;
  v222 = a1;
  v223 = a2;
  v229 = *MEMORY[0x277D85DE8];
  v14 = type metadata accessor for TetraNoRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v14);
  v16 = v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for TetraKEM768Key(0);
  v204 = *(v205 - 1);
  MEMORY[0x28223BE20](v205);
  v201 = v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v213 = v181 - v22;
  v23 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v210 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v212 = v181 - v27;
  v206 = type metadata accessor for TetraRatchetOuterMessage(0);
  MEMORY[0x28223BE20](v206);
  v29 = v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for TetraSessionState(0);
  MEMORY[0x28223BE20](v214);
  v31 = v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = a13;
  v32 = [a13 deviceSigningKey];
  if (!v32)
  {
    __break(1u);
    goto LABEL_38;
  }

  v33 = v32;
  v199 = v26;
  v211 = v23;
  v200 = v21;
  v197 = v14;
  v198 = v16;
  v203 = v29;
  v220 = v31;
  v34 = [v32 tetraWrapped];

  v35 = [a12 tetraRegistration];
  if (!v35)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  v36 = v35;
  v215 = v34;
  v37 = [v34 publicKey];
  v38 = [v37 compactRepresentation];

  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v216 = v36;
  v42 = [*&v36[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] compactRepresentation];
  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  specialized static TetraAPI.conversationInfo(sendingURI:sendingPushToken:senderPublicKeyCompactRepresentation:receivingURI:receivingPushToken:receivingPublicKeyCompactRepresentation:)(a5, v218, v219, v39, v41, v221, a9, a10, v43, v45);
  v47 = v46;
  v49 = v48;
  outlined consume of Data._Representation(v43, v45);
  outlined consume of Data._Representation(v39, v41);

  v50 = v47(1);
  v52 = v51;

  v53.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v50, v52);
  v54 = static os_log_type_t.info.getter();
  v55 = v54;
  v56 = MessageProtectionLog(v54);
  if (!v56)
  {
    goto LABEL_39;
  }

  v57 = v56;
  v58 = os_log_type_enabled(v56, v55);
  v221 = v47;
  v202 = a12;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v219 = v49;
    v60 = v59;
    v61 = swift_slowAlloc();
    v225[0] = v61;
    *v60 = 136315138;
    v62 = [(objc_class *)v53.super.isa base64EncodedStringWithOptions:0];
    isa = v53.super.isa;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = v64;
    v53.super.isa = isa;
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, v225);

    *(v60 + 4) = v68;
    _os_log_impl(&dword_22B404000, v57, v55, "Encrypting TetraNoRatchet for conversationID: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x231892DF0](v61, -1, -1);
    v69 = v60;
    v49 = v219;
    MEMORY[0x231892DF0](v69, -1, -1);
  }

  v70 = v220;
  v71 = v223;
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a11 + 16))
  {
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v73);
    v76 = v75;

    if (v76)
    {
      v77 = (*(a11 + 56) + 16 * v74);
      v79 = *v77;
      v78 = v77[1];
      outlined copy of Data._Representation(*v77, v78);
      goto LABEL_11;
    }
  }

  else
  {
  }

  v79 = 0;
  v78 = 0xF000000000000000;
LABEL_11:

  v80 = v222;
  outlined copy of Data._Representation(v222, v71);
  v81 = v216;
  v82 = v217;
  TetraSessionState.init(remoteTetraRegistration:sessionDST:)(v81, v221, v49, v70);
  if (v82)
  {

    outlined consume of Data._Representation(v80, v71);
    outlined consume of Data?(v79, v78);

    return v80;
  }

  v218 = 0;

  v83 = TetraRegistration.computeKeysHash()();
  v85 = *&v81[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion];
  if (v85 >= 0xF)
  {
    v85 = 15;
  }

  v191 = v85;
  *v70 = v85;
  v86 = v214;
  v87 = v70[*(v214 + 36)];
  v195 = v53.super.isa;
  v216 = v81;
  v196 = v78;
  v193 = v84;
  v192 = v83;
  v80 = v79;
  if (v87)
  {
    v217 = 0;
    v194 = 0xF000000000000000;
  }

  else
  {
    v88 = v83;
    v89 = v84;
    outlined copy of Data._Representation(v83, v84);
    v86 = v214;
    v217 = v88;
    v194 = v89;
  }

  v90 = v222;
  v91 = &v70[*(v86 + 20)];
  v92 = type metadata accessor for TetraRatchetState(0);
  v93 = &v91[*(v92 + 24)];

  v94 = v223;
  v95 = v196;
  v219 = v49;
  v96 = v218;
  TetraOutgoingSymmetricRatchet.sealMessage(_:)(v90, v223, v80, v196, v225);
  if (v96)
  {
    outlined consume of Data?(v217, v194);

    outlined consume of Data._Representation(v192, v193);
    outlined consume of Data._Representation(v90, v94);
    outlined consume of Data?(v80, v95);

    _s17MessageProtection17TetraSessionStateVWOhTm_0(v70, type metadata accessor for TetraSessionState);

    return v80;
  }

  v97 = v93;
  v187 = v80;
  v218 = 0;
  v98 = v225[0];
  v99 = v225[1];
  v100 = *(v92 + 28);
  v101 = *&v91[v100];
  if (v101 < 0x28)
  {
    *&v91[v100] = v101 + 1;
  }

  LODWORD(v214) = v226;
  v190 = v227;
  v189 = v228;
  outlined copy of Data._Representation(v98, v99);
  TetraECDHKey.publicKey.getter();
  v102 = type metadata accessor for TetraOutgoingKeyContent(0);
  v103 = *(v102 + 20);
  v104 = (*(v204 + 48))(&v93[v103], 1, v205);
  v105 = 1;
  v106 = v203;
  if (!v104)
  {
    v107 = v201;
    outlined init with copy of TetraKEM768Key(&v93[v103], v201);
    TetraKEM768Key.publicKey.getter(v213);
    _s17MessageProtection17TetraSessionStateVWOhTm_0(v107, type metadata accessor for TetraKEM768Key);
    v105 = 0;
  }

  v108 = type metadata accessor for Kyber768.PublicKey();
  v109 = *(v108 - 8);
  v110 = *(v109 + 56);
  v111 = v109 + 56;
  v110(v213, v105, 1, v108);
  v112 = &v97[*(v102 + 28)];
  v113 = v112[1];
  v201 = *v112;
  v188 = v113;
  outlined copy of Data?(v201, v113);
  v205 = v221(1);
  v204 = v114;
  outlined consume of Data._Representation(v192, v193);
  outlined consume of Data._Representation(v98, v99);
  v115 = v206;
  v116 = v98;
  v117 = v206[8];
  v186 = v108;
  v185 = v110;
  v192 = v111;
  v110(v106 + v117, 1, 1, v108);
  v118 = (v106 + v115[9]);
  *v118 = xmmword_22B48D7D0;
  v119 = v106 + v115[10];
  v182 = xmmword_22B48D7D0;
  *v119 = xmmword_22B48D7D0;
  v120 = v115[12];
  v193 = (v106 + v115[13]);
  *(v106 + 8) = v116;
  *(v106 + 16) = v99;
  v121 = (v106 + v120);
  v122 = v207;
  v123 = v208;
  v184 = (v106 + v120);
  *v121 = v207;
  v121[1] = v123;
  *(v106 + 24) = v214;
  v124 = *(v210 + 32);
  v183 = v115[7];
  v125 = v212;
  v212 = v124;
  v181[1] = v210 + 32;
  (v124)(v106 + v183, v125, v211);
  outlined copy of Data._Representation(v122, v123);
  outlined assign with take of P256.KeyAgreement.PublicKey?(v213, v106 + v117, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
  outlined consume of Data?(*v118, v118[1]);
  v126 = v188;
  *v118 = v201;
  v118[1] = v126;
  outlined consume of Data?(*v119, *(v119 + 8));

  v127 = v194;
  *v119 = v217;
  *(v119 + 8) = v127;
  v128 = (v106 + v115[11]);
  v129 = v189;
  *v128 = v190;
  v128[1] = v129;
  *v106 = v191;
  v130 = (v106 + v115[14]);
  v131 = v204;
  *v130 = v205;
  v130[1] = v131;
  v132 = v193;
  *v193 = 0;
  *(v132 + 4) = 1;
  v224 = 0;
  v133 = [objc_opt_self() sharedManager];
  v225[0] = 0;
  v134 = [v133 counterForDestinationWithIdentityKey:v202 sendingIdentity:v209 error:v225 success:&v224];
  v135 = v225[0];
  if (v225[0])
  {
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    swift_allocError();
    *v136 = 7;
    swift_willThrow();
    v80 = v135;

    outlined consume of Data._Representation(v222, v223);
    outlined consume of Data?(v187, v196);

    _s17MessageProtection17TetraSessionStateVWOhTm_0(v106, type metadata accessor for TetraRatchetOuterMessage);
    _s17MessageProtection17TetraSessionStateVWOhTm_0(v220, type metadata accessor for TetraSessionState);

    return v80;
  }

  v217 = v118;
  v137 = v185;
  v138 = v186;
  v139 = v195;
  if ((v224 & 1) == 0)
  {
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    v80 = swift_allocError();
    *v178 = 7;
    swift_willThrow();

    outlined consume of Data._Representation(v222, v223);
    outlined consume of Data?(v187, v196);

    _s17MessageProtection17TetraSessionStateVWOhTm_0(v106, type metadata accessor for TetraRatchetOuterMessage);
    _s17MessageProtection17TetraSessionStateVWOhTm_0(v220, type metadata accessor for TetraSessionState);

    return v80;
  }

  v205 = v133;
  LODWORD(v208) = v134;
  v140 = *(v106 + 8);
  v209 = *(v106 + 16);
  v206 = *v184;
  v207 = v184[1];
  (*(v210 + 16))(v199, v106 + v183, v211);
  v141 = *v119;
  v213 = *(v119 + 8);
  result = v137(v200, 1, 1, v138);
  v210 = v217[1];
  if (v210 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v202 = *v217;
    v143 = v202;
    v144 = *v128;
    v145 = v128[1];
    v217 = v145;

    v194 = v140;
    outlined copy of Data._Representation(v140, v209);
    v146 = v206;
    v147 = v207;
    outlined copy of Data._Representation(v206, v207);
    outlined copy of Data?(v141, v213);
    outlined copy of Data?(v143, v210);
    outlined copy of Data._Representation(v144, v145);
    v201 = v141;
    v221 = v221(1);
    v204 = v148;

    v149 = v197;
    v150 = v197[8];
    v151 = v198;
    v185(&v198[v150], 1, 1, v186);
    v152 = v151 + v149[9];
    v153 = v182;
    *v152 = v182;
    v154 = v151 + v149[10];
    *v154 = v153;
    v155 = v209;
    *(v151 + 8) = v194;
    *(v151 + 16) = v155;
    v156 = (v151 + v149[12]);
    *v156 = v146;
    v156[1] = v147;
    *(v151 + 24) = v214;
    (v212)(v151 + v149[7], v199, v211);
    outlined assign with take of P256.KeyAgreement.PublicKey?(v200, v151 + v150, &_s9CryptoKit8Kyber768O9PublicKeyVSgMd, &_s9CryptoKit8Kyber768O9PublicKeyVSgMR);
    outlined consume of Data?(*v152, *(v152 + 8));
    v157 = v210;
    *v152 = v202;
    *(v152 + 8) = v157;
    outlined consume of Data?(*v154, *(v154 + 8));
    v158 = v213;
    *v154 = v201;
    *(v154 + 8) = v158;
    v159 = (v151 + v149[11]);
    v160 = v217;
    *v159 = v144;
    v159[1] = v160;
    *v151 = v191;
    v161 = (v151 + v149[14]);
    v162 = v204;
    *v161 = v221;
    v161[1] = v162;
    *(v151 + v149[13]) = v208;
    v163 = static os_log_type_t.info.getter();
    v164 = v163;
    result = MessageProtectionLog(v163);
    if (result)
    {
      v80 = result;
      if (os_log_type_enabled(result, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v225[0] = v166;
        *v165 = 136315138;
        v167 = [(objc_class *)v195 base64EncodedStringWithOptions:0];
        v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v169;

        v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v225);

        *(v165 + 4) = v171;
        v151 = v198;
        _os_log_impl(&dword_22B404000, v80, v164, "Finished Encrypting TetraNoRatchet for conversationID: %s", v165, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v166);
        MEMORY[0x231892DF0](v166, -1, -1);
        MEMORY[0x231892DF0](v165, -1, -1);
      }

      v172 = v220;
      v173 = v223;
      v174 = v215;
      v175 = v218;
      v176 = TetraNoRatchetOuterMessage.serializedData(signedBy:)(v215);
      v218 = v175;
      if (v175)
      {

        outlined consume of Data._Representation(v222, v173);
        outlined consume of Data?(v187, v196);
      }

      else
      {
        v179 = v176;
        v180 = v177;
        v80 = Data._bridgeToObjectiveC()().super.isa;

        outlined consume of Data._Representation(v222, v173);
        outlined consume of Data?(v187, v196);

        outlined consume of Data._Representation(v179, v180);
      }

      _s17MessageProtection17TetraSessionStateVWOhTm_0(v151, type metadata accessor for TetraNoRatchetOuterMessage);
      _s17MessageProtection17TetraSessionStateVWOhTm_0(v106, type metadata accessor for TetraRatchetOuterMessage);
      _s17MessageProtection17TetraSessionStateVWOhTm_0(v172, type metadata accessor for TetraSessionState);

      return v80;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of TetraKEM768Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraKEM768Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s17MessageProtection17TetraSessionStateVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of P256.KeyAgreement.PublicKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMd, _s9CryptoKit4P256O12KeyAgreementO06PublicD0VSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of TetraRatchetState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static TetraPBPadding.padMessage(_:)()
{
  type metadata accessor for TetraPB_TetraInnerMessage(0);
  lazy protocol witness table accessor for type TetraPB_TetraInnerMessage and conformance TetraPB_TetraInnerMessage();
  v1 = Message.serializedData(partial:)();
  if (v0)
  {
    goto LABEL_38;
  }

  v3 = v1;
  v4 = v2;
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v2);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v5 != 2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v1), v1))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v6 = HIDWORD(v1) - v1;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (HIDWORD(v6))
  {
    lazy protocol witness table accessor for type TetraPBErrors and conformance TetraPBErrors();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v3, v4);
    return v3;
  }

LABEL_15:
  v9 = static Padme.paddedMessageByteCount(_:)();
  if (v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v6 == v9)
  {
    return v3;
  }

  v11 = v9 >= v6;
  v12 = v9 - v6;
  v13 = !v11;
  if (!v11)
  {
    goto LABEL_32;
  }

  if (v12 > 1)
  {
LABEL_27:
    if (v13)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    static TetraPBPadding.paddingBytesToAdd(for:)(v12);
    v17 = v16;
    v19 = v18;
    v25[0] = v3;
    v25[1] = v4;
    v24[3] = MEMORY[0x277CC9318];
    v24[4] = MEMORY[0x277CC9300];
    v24[0] = v16;
    v24[1] = v18;
    v20 = __swift_project_boxed_opaque_existential_1(v24, MEMORY[0x277CC9318]);
    v21 = *v20;
    v22 = v20[1];
    outlined copy of Data._Representation(v3, v4);
    outlined copy of Data._Representation(v17, v19);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v21, v22, v25);
    outlined consume of Data._Representation(v17, v19);
    outlined consume of Data._Representation(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v25[0];
  }

  v14 = static Padme.paddedMessageByteCount(_:)();
  if ((v15 & 1) == 0)
  {
    v11 = v14 >= v6;
    v12 = v14 - v6;
    v13 = !v11;
    goto LABEL_27;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void static TetraPBPadding.paddingBytesToAdd(for:)(unint64_t a1)
{
  if (a1 < 2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 > 0x100000000)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >= 0x10000001)
  {
    v4 = 5;
  }

  if (a1 > 0x200000)
  {
    v3 = v4;
  }

  if (a1 > 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x81)
  {
    v5 = v2;
  }

  else
  {
    v5 = 1;
  }

  v16 = specialized Data.init(count:)(v5);
  v17 = v6;
  v7 = ~v5;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v16, v7 + a1);
  v14 = specialized Data.init(count:)(v7 + a1);
  v15 = v8;
  if (specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v14, v7 + a1))
  {
    goto LABEL_17;
  }

  v9 = v14;
  v10 = v15;
  v14 = &outlined read-only object #0 of static TetraPBPadding.paddingBytesToAdd(for:);
  v11 = v16;
  v12 = v17;
  outlined copy of Data._Representation(v16, v17);
  specialized Array.append<A>(contentsOf:)(v11, v12);
  outlined copy of Data._Representation(v9, v10);
  specialized Array.append<A>(contentsOf:)(v9, v10);
  if (v14[2] == a1)
  {

    _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v13);

    outlined consume of Data._Representation(v9, v10);
    outlined consume of Data._Representation(v11, v12);

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (!result)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v3 = HIDWORD(a3);
  if (!HIDWORD(a3))
  {
    do
    {
      if (a3 <= 0x7F && ~result + a2 == v3)
      {
        *(result + v3) = a3;
        return result;
      }

      *(result + v3) = a3 | 0x80;
      LODWORD(a3) = a3 >> 7;
      ++v3;
    }

    while (!__OFADD__(v3, 1));
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type TetraPBErrors and conformance TetraPBErrors()
{
  result = lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors;
  if (!lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors;
  if (!lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraPBErrors and conformance TetraPBErrors);
  }

  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22B48D660;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v21, a2);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(&v21, &v21 + BYTE6(v4), a2);
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(&v21, &v21, a2);
    return;
  }

  outlined consume of Data._Representation(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = *(&v21 + 1);
  v10 = *(v21 + 16);
  v11 = *(v21 + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = MEMORY[0x231890D50]();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(v13 + v15, v13 + v15 + v19, a2);
  *a1 = v21;
  a1[1] = v9 | 0x8000000000000000;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, unint64_t a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = MEMORY[0x231890D50]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  closure #1 in static TetraPBPadding.paddingBytesToAdd(for:)(v7 + v9, v7 + v9 + v12, a2);
}

uint64_t static PaddySymmetricLayer.seal(_:authenticatedData:using:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v41 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)(&v39 - v20, &v39 + *(v16 + 56) - v20, a5);
  v42 = a1;
  v43 = a2;
  outlined init with copy of (key: SymmetricKey, nonce: AES.GCM.Nonce)(v21, v19);
  v22 = *(v16 + 56);
  v23 = type metadata accessor for AES.GCM.Nonce();
  v24 = *(v23 - 8);
  (*(v24 + 32))(v11, &v19[v22], v23);
  (*(v24 + 56))(v11, 0, 1, v23);
  v46 = a3;
  v47 = v41;
  lazy protocol witness table accessor for type Data and conformance Data();
  v25 = MEMORY[0x277CC9318];
  v26 = v48;
  static AES.GCM.seal<A, B>(_:using:nonce:authenticating:)();
  outlined destroy of TetraSessionStates?(v11, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  if (v26)
  {
    outlined destroy of TetraSessionStates?(v21, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
    v27 = type metadata accessor for SymmetricKey();
    return (*(*(v27 - 8) + 8))(v19, v27);
  }

  else
  {
    v29 = type metadata accessor for SymmetricKey();
    (*(*(v29 - 8) + 8))(v19, v29);
    v30 = AES.GCM.SealedBox.ciphertext.getter();
    v32 = v31;
    v33 = AES.GCM.SealedBox.tag.getter();
    v35 = v34;
    v46 = v30;
    v47 = v32;
    v44 = v25;
    v45 = MEMORY[0x277CC9300];
    v42 = v33;
    v43 = v34;
    v36 = __swift_project_boxed_opaque_existential_1(&v42, v25);
    v37 = *v36;
    v38 = v36[1];
    outlined copy of Data._Representation(v30, v32);
    outlined copy of Data._Representation(v33, v35);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v37, v38, &v46);
    outlined consume of Data._Representation(v33, v35);
    outlined consume of Data._Representation(v30, v32);
    (*(v39 + 8))(v14, v40);
    outlined destroy of TetraSessionStates?(v21, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    return v46;
  }
}

unint64_t static PaddySymmetricLayer.open(_:authenticatedData:using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v31 = a3;
  *(&v31 + 1) = a4;
  v36 = type metadata accessor for AES.GCM.SealedBox();
  v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v18 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v18)
    {
      v19 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v18 != 2)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = __OFSUB__(v20, v21);
  v19 = v20 - v21;
  if (v22)
  {
    __break(1u);
LABEL_8:
    LODWORD(v19) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v19 = v19;
  }

LABEL_10:
  if (v19 < 17)
  {
    goto LABEL_27;
  }

  static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)(&v30 - v16, &v17[*(v11 + 48)], a5);
  result = outlined init with copy of (key: SymmetricKey, nonce: AES.GCM.Nonce)(v17, v14);
  if (v18 == 2)
  {
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v22 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v22)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v23 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v18 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v23) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v23;
LABEL_19:
  v26 = v23 - 16;
  if (__OFSUB__(v23, 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  outlined copy of Data._Representation(a1, a2);
  specialized Collection.prefix(_:)(v26, a1, a2, &v35);
  v34[1] = v35;
  outlined copy of Data._Representation(a1, a2);
  specialized BidirectionalCollection.suffix(_:)(16, a1, a2, v34);
  v33 = v34[0];
  v27 = lazy protocol witness table accessor for type Data and conformance Data();
  AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
  if (v5)
  {
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
    v28 = type metadata accessor for SymmetricKey();
    (*(*(v28 - 8) + 8))(v14, v28);
  }

  else
  {
    v29 = type metadata accessor for SymmetricKey();
    (*(*(v29 - 8) + 8))(v14, v29);
    v35 = v31;
    v27 = static AES.GCM.open<A>(_:using:authenticating:)();
    (*(v32 + 8))(v10, v36);
    outlined destroy of TetraSessionStates?(v17, &_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  }

  return v27;
}

uint64_t one-time initialization function for paddyKDFStringPrefix()
{
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0xD00000000000001ALL, 0x800000022B496320);
  paddyKDFStringPrefix = result;
  qword_27D8C2020 = v1;
  return result;
}

uint64_t one-time initialization function for paddySymmetricAESKeyDST(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  if (one-time initialization token for paddyKDFStringPrefix != -1)
  {
    swift_once();
  }

  v7 = paddyKDFStringPrefix;
  v8 = qword_27D8C2020;
  outlined copy of Data._Representation(paddyKDFStringPrefix, qword_27D8C2020);
  v9 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(0x2D4D43472D534541, a2);
  v11 = v10;
  *a3 = v7;
  *a4 = v8;
  v16[3] = MEMORY[0x277CC9318];
  v16[4] = MEMORY[0x277CC9300];
  v16[0] = v9;
  v16[1] = v10;
  v12 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x277CC9318]);
  v13 = *v12;
  v14 = v12[1];
  outlined copy of Data._Representation(v7, v8);
  outlined copy of Data._Representation(v9, v11);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, v14, a3);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SymmetricKey.bitCount.getter() == 256)
  {
    if (one-time initialization token for paddySymmetricAESKeyDST == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = paddySymmetricAESKeyDST;
  v10 = qword_27D8C2030;
  outlined copy of Data._Representation(paddySymmetricAESKeyDST, qword_27D8C2030);
  type metadata accessor for SHA256();
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_3(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_3(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
  lazy protocol witness table accessor for type Data and conformance Data();
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data?(v9, v10);
  if (one-time initialization token for paddySymmetricAESNonceDST != -1)
  {
    swift_once();
  }

  v9 = paddySymmetricAESNonceDST;
  v10 = qword_27D8C2040;
  outlined copy of Data._Representation(paddySymmetricAESNonceDST, qword_27D8C2040);
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
  outlined consume of Data?(v9, v10);
  type metadata accessor for AES.GCM.Nonce();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t outlined init with copy of (key: SymmetricKey, nonce: AES.GCM.Nonce)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMd, _s9CryptoKit12SymmetricKeyV3key_AA3AESO3GCMO5NonceV5noncetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9CryptoKit6SHA256VAcA12HashFunctionAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in static PaddySymmetricLayer.deriveSymmetricKeyingFromMessageKey(_:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  result = AES.GCM.Nonce.init<A>(data:)();
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer);
  }

  return result;
}

uint64_t I2OSP(value:outputByteCount:)(unint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0 || (v4 = a2 - 1, a2 < 1))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v5 = a1;
  if (a1 <= 1)
  {
    v5 = 1;
  }

  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    goto LABEL_69;
  }

  v8 = ceil(log2(v7) * 0.125);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = v8;
  if (v8 > a2)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v37 = specialized Data.init(count:)(a2);
  v38 = v10;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v37, 0);
  v11 = a2 - v9;
  if (__OFSUB__(a2, v9))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v11 >= a2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  v13 = v37;
  v12 = v38;
  v14 = v9 - 1;
  v35 = v4;
  while (1)
  {
    v15 = v4 - v11;
    if (__OFSUB__(v4, v11))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_57;
    }

    v16 = 8 * v15;
    if ((v16 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    if (v16 < 0)
    {
      if (v16 == -64)
      {
        goto LABEL_17;
      }

      v17 = a1 << (-v16 & 0x38);
    }

    else
    {
      if (v16 == 64)
      {
        goto LABEL_17;
      }

      v17 = a1 >> (v16 & 0x38);
    }

LABEL_21:
    v18 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      break;
    }

    if (v18)
    {
      if (v11 >= v13 >> 32 || v11 < v13)
      {
        goto LABEL_61;
      }

      v22 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
        {
          goto LABEL_66;
        }

        type metadata accessor for __DataStorage();
        swift_allocObject();
        v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v22 = v23;
        v4 = v35;
      }

      __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
      v24 = __DataStorage._bytes.getter();
      if (!v24)
      {
        goto LABEL_77;
      }

      v25 = v24;
      v26 = __DataStorage._offset.getter();
      if (__OFSUB__(v11, v26))
      {
        goto LABEL_63;
      }

      *(v25 + v11 - v26) = v17;
      v12 = v22 | 0x4000000000000000;
      if (!v14)
      {
        return v13;
      }
    }

    else
    {
      v37 = v13;
      LOWORD(v38) = v12;
      BYTE2(v38) = BYTE2(v12);
      BYTE3(v38) = BYTE3(v12);
      BYTE4(v38) = BYTE4(v12);
      BYTE5(v38) = BYTE5(v12);
      BYTE6(v38) = BYTE6(v12);
      if (v11 >= BYTE6(v12))
      {
        goto LABEL_59;
      }

      *(&v37 + v11) = v17;
      v13 = v37;
      v2 = v2 & 0xF00000000000000 | v38 | ((WORD2(v38) | (BYTE6(v38) << 16)) << 32);
      v12 = v2;
      if (!v14)
      {
        return v13;
      }
    }

LABEL_13:
    --v14;
    v6 = __OFADD__(v11++, 1);
    if (v6)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
    goto LABEL_76;
  }

  if (v11 < *(v13 + 16))
  {
    goto LABEL_60;
  }

  if (v11 >= *(v13 + 24))
  {
    goto LABEL_62;
  }

  v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (__DataStorage._bytes.getter())
    {
      if (__OFSUB__(v20, __DataStorage._offset.getter()))
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v21, v20))
      {
        goto LABEL_65;
      }
    }

    else if (__OFSUB__(v21, v20))
    {
      goto LABEL_65;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v27 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v19 = v27;
    v4 = v35;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = *(v13 + 16);
    v29 = *(v13 + 24);
    type metadata accessor for Data.RangeReference();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    v4 = v35;

    v13 = v30;
  }

  __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
  v31 = __DataStorage._bytes.getter();
  if (!v31)
  {
    goto LABEL_78;
  }

  v32 = v31;
  v33 = __DataStorage._offset.getter();
  if (__OFSUB__(v11, v33))
  {
    goto LABEL_64;
  }

  *(v32 + v11 - v33) = v17;
  v12 = v19 | 0x8000000000000000;
  if (v14)
  {
    goto LABEL_13;
  }

  return v13;
}

uint64_t TetraMessageSignerFormatter.signedData()()
{
  v1 = *(v0 + OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC17MessageProtection27TetraMessageSignerFormatter__signedData + 8));
  return v1;
}

id TetraMessageSignerFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraMessageSignerFormatter.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TetraMessageSignerFormatter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_22B48D660;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__b, v2);
      v7 = __b;
      v8 = v22 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      LOWORD(v22) = v4;
      BYTE2(v22) = BYTE2(v4);
      BYTE3(v22) = BYTE3(v4);
      BYTE4(v22) = BYTE4(v4);
      BYTE5(v22) = BYTE5(v4);
      BYTE6(v22) = BYTE6(v4);
      memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
    }

    *result = v7;
    result[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  outlined consume of Data._Representation(v5, v4);
  __b = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_22B48D660;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v9 = v22;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  v12 = __DataStorage._bytes.getter();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = __DataStorage._offset.getter();
  v15 = v10 - v14;
  if (__OFSUB__(v10, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v16 = __OFSUB__(v11, v10);
  v17 = v11 - v10;
  if (v16)
  {
    goto LABEL_16;
  }

  v18 = MEMORY[0x231890D50]();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  memset((v13 + v15), v2, v19);
  *result = __b;
  result[1] = v9 | 0x8000000000000000;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = MEMORY[0x231890D50]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void type metadata completion function for TetraKEM1024Key(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  type metadata accessor for Kyber1024.PrivateKey?(319, a4, a5);
  if (v9 <= 0x3F)
  {
    type metadata accessor for Kyber1024.PrivateKey?(319, a6, a7);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Kyber1024.PrivateKey?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TetraKEM1024Key.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TetraKEM1024Key(0);
  outlined init with copy of TetraSessionStates?(v1 + *(v13 + 20), v8, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TetraSessionStates?(v8, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v1, v5, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    v14 = type metadata accessor for Kyber1024.PrivateKey();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v5, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber1024.PrivateKey.publicKey.getter();
      return (*(v15 + 8))(v5, v14);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v8, v12, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    v17 = type metadata accessor for Kyber1024.PublicKey();
    (*(*(v17 - 8) + 16))(a1, v12, v17);
    return outlined destroy of TetraKEM1024Key(v12, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM1024Key.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-1] - v7;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  if (static MPStaticProperties.SEPisAvailable == 1 && (v16[3] = &type metadata for MessageProtectionFeatureFlags, v16[4] = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags(), LOBYTE(v16[0]) = 1, v9 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_1(v16), (v9 & 1) != 0))
  {
    result = SecureEnclave.Kyber1024.PrivateKey.init()(v8);
    if (v1)
    {
      return result;
    }

    v11 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v12 = type metadata accessor for TetraKEM1024Key(0);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v8, a1 + *(v12 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    v13 = type metadata accessor for Kyber1024.PrivateKey();
  }

  else
  {
    result = static Kyber1024.PrivateKey.generate()();
    if (v1)
    {
      return result;
    }

    v14 = type metadata accessor for Kyber1024.PrivateKey();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v5, a1, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    a1 += *(type metadata accessor for TetraKEM1024Key(0) + 20);
    v13 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  }

  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t TetraKEM1024Key.decapsulate(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v21[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TetraKEM1024Key(0);
  outlined init with copy of TetraSessionStates?(v3 + *(v14 + 20), v9, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TetraSessionStates?(v9, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v3, v6, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
    v15 = type metadata accessor for Kyber1024.PrivateKey();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v6, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber1024.PrivateKey.decapsulate(_:)();
      return (*(v16 + 8))(v6, v15);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v9, v13, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
    v18 = v21[5];
    v19 = closure #1 in SecureEnclave.Kyber1024.PrivateKey.decapsulate(_:)(*&v13[*(v10 + 24)]);
    if (!v18)
    {
      v21[2] = v19;
      v21[3] = v20;
      SymmetricKey.init<A>(data:)();
    }

    return outlined destroy of TetraKEM1024Key(v13, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM768Key.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-1] - v7;
  if (one-time initialization token for SEPisAvailable != -1)
  {
    swift_once();
  }

  if (static MPStaticProperties.SEPisAvailable == 1 && (v16[3] = &type metadata for MessageProtectionFeatureFlags, v16[4] = lazy protocol witness table accessor for type MessageProtectionFeatureFlags and conformance MessageProtectionFeatureFlags(), LOBYTE(v16[0]) = 2, v9 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_1(v16), (v9 & 1) != 0))
  {
    result = SecureEnclave.Kyber768.PrivateKey.init()(v8);
    if (v1)
    {
      return result;
    }

    v11 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v12 = type metadata accessor for TetraKEM768Key(0);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v8, a1 + *(v12 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
    v13 = type metadata accessor for Kyber768.PrivateKey();
  }

  else
  {
    result = static Kyber768.PrivateKey.generate()();
    if (v1)
    {
      return result;
    }

    v14 = type metadata accessor for Kyber768.PrivateKey();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v5, a1, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    a1 += *(type metadata accessor for TetraKEM768Key(0) + 20);
    v13 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  }

  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t TetraKEM768Key.decapsulate(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a3;
  v21[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TetraKEM768Key(0);
  outlined init with copy of TetraSessionStates?(v3 + *(v14 + 20), v9, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TetraSessionStates?(v9, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v3, v6, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    v15 = type metadata accessor for Kyber768.PrivateKey();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v6, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber768.PrivateKey.decapsulate(_:)();
      return (*(v16 + 8))(v6, v15);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v9, v13, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
    v18 = v21[5];
    v19 = closure #1 in SecureEnclave.Kyber1024.PrivateKey.decapsulate(_:)(*&v13[*(v10 + 24)]);
    if (!v18)
    {
      v21[2] = v19;
      v21[3] = v20;
      SymmetricKey.init<A>(data:)();
    }

    return outlined destroy of TetraKEM1024Key(v13, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM768Key.publicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TetraKEM768Key(0);
  outlined init with copy of TetraSessionStates?(v1 + *(v13 + 20), v8, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of TetraSessionStates?(v8, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
    outlined init with copy of TetraSessionStates?(v1, v5, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
    v14 = type metadata accessor for Kyber768.PrivateKey();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v5, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      Kyber768.PrivateKey.publicKey.getter();
      return (*(v15 + 8))(v5, v14);
    }
  }

  else
  {
    _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(v8, v12, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
    v17 = type metadata accessor for Kyber768.PublicKey();
    (*(*(v17 - 8) + 16))(a1, v12, v17);
    return outlined destroy of TetraKEM1024Key(v12, type metadata accessor for SecureEnclave.Kyber768.PrivateKey);
  }

  return result;
}

uint64_t TetraKEM768Key.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Kyber768.PrivateKey();
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber768.PrivateKey and conformance Kyber768.PrivateKey, MEMORY[0x277CC55C0], &protocol conformance descriptor for Kyber768.PrivateKey);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for TetraKEM768Key(0);
    v8[14] = 1;
    type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
    lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey and conformance SecureEnclave.Kyber768.PrivateKey, type metadata accessor for SecureEnclave.Kyber768.PrivateKey, &protocol conformance descriptor for SecureEnclave.Kyber768.PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TetraKEM768Key.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection14TetraKEM768KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TetraKEM768Key(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v22;
  v15 = v13;
  type metadata accessor for Kyber768.PrivateKey();
  v26 = 0;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber768.PrivateKey and conformance Kyber768.PrivateKey, MEMORY[0x277CC55C0], &protocol conformance descriptor for Kyber768.PrivateKey);
  v16 = v23;
  v17 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v16, v15, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit8Kyber768O10PrivateKeyVSgMR);
  type metadata accessor for SecureEnclave.Kyber768.PrivateKey(0);
  v25 = 1;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber768.PrivateKey and conformance SecureEnclave.Kyber768.PrivateKey, type metadata accessor for SecureEnclave.Kyber768.PrivateKey, &protocol conformance descriptor for SecureEnclave.Kyber768.PrivateKey);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v10, v17);
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v6, v15 + *(v20 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMd, &_s9CryptoKit13SecureEnclaveO17MessageProtectionE8Kyber768O10PrivateKeyVSgMR);
  outlined init with copy of TetraKEM1024Key(v15, v21, type metadata accessor for TetraKEM768Key);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TetraKEM1024Key(v15, type metadata accessor for TetraKEM768Key);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraKEM768Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraKEM768Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraKEM1024Key.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Kyber1024.PrivateKey();
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey, MEMORY[0x277CC55D8], &protocol conformance descriptor for Kyber1024.PrivateKey);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for TetraKEM1024Key(0);
    v8[14] = 1;
    type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
    lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey and conformance SecureEnclave.Kyber1024.PrivateKey, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey, &protocol conformance descriptor for SecureEnclave.Kyber1024.PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TetraKEM1024Key.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection15TetraKEM1024KeyV10CodingKeys33_6CD2BE6C89949B86DF096C68B9C0296ELLOGMR);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TetraKEM1024Key(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v22;
  v15 = v13;
  type metadata accessor for Kyber1024.PrivateKey();
  v26 = 0;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey, MEMORY[0x277CC55D8], &protocol conformance descriptor for Kyber1024.PrivateKey);
  v16 = v23;
  v17 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v16, v15, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMd, &_s9CryptoKit9Kyber1024O10PrivateKeyVSgMR);
  type metadata accessor for SecureEnclave.Kyber1024.PrivateKey(0);
  v25 = 1;
  lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(&lazy protocol witness table cache variable for type SecureEnclave.Kyber1024.PrivateKey and conformance SecureEnclave.Kyber1024.PrivateKey, type metadata accessor for SecureEnclave.Kyber1024.PrivateKey, &protocol conformance descriptor for SecureEnclave.Kyber1024.PrivateKey);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v14 + 8))(v10, v17);
  outlined init with take of (tokenObject: TKClientTokenObject, dataRepresentation: Data, publicKey: Kyber768.PublicKey)(v6, v15 + *(v20 + 20), &_s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMd, _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVSgMR);
  outlined init with copy of TetraKEM1024Key(v15, v21, type metadata accessor for TetraKEM1024Key);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of TetraKEM1024Key(v15, type metadata accessor for TetraKEM1024Key);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraKEM768Key.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B7061 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B706573 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraKEM1024Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraKEM1024Key.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM1024Key.CodingKeys and conformance TetraKEM1024Key.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraKEM768Key.CodingKeys and conformance TetraKEM768Key.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of TetraKEM1024Key(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TetraKEM1024Key(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Kyber1024.PrivateKey and conformance Kyber1024.PrivateKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s9CryptoKit13SecureEnclaveO17MessageProtectionE9Kyber1024O10PrivateKeyVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *TetraRegistration.init(tetraRegistrationData:ecdhPublicKey:version:timestamp:signedBy:isEncrypting:)(void *a1, void *a2, int a3, char *a4, int a5, double a6)
{
  v69 = a2;
  v70 = a4;
  v63 = a5;
  v64 = a3;
  v8 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Kyber1024.PublicKey();
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = type metadata accessor for TetraPB_TetraPublicPrekey(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey, &protocol conformance descriptor for TetraPB_TetraPublicPrekey);
  v17 = v68;
  Message.init(serializedData:extensions:partial:options:)();
  if (v17)
  {

LABEL_18:
    type metadata accessor for TetraRegistration(0);
    swift_deallocPartialClassInstance();
    return v16;
  }

  v61 = v8;
  v62 = v10;
  v68 = a1;
  v18 = v71;
  *&v71[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_timestamp] = a6;
  v19 = &v16[*(v14 + 20)];
  v20 = v19[1];
  if (v20 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = *v19;
  }

  if (v20 >> 60 == 15)
  {
    v22 = 0xC000000000000000;
  }

  else
  {
    v22 = v19[1];
  }

  outlined copy of Data?(*v19, v20);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v21, v22);
  v24 = type metadata accessor for Kyber1024ObjCPublicKey(0);
  v25 = objc_allocWithZone(v24);
  v26 = isa;
  *&v74 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v26);
  *(&v74 + 1) = v27;
  v28 = v67;
  Kyber1024.PublicKey.init<A>(dataRepresentation:)();
  (*(v66 + 32))(v25 + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v28, v11);
  v73.receiver = v25;
  v73.super_class = v24;
  v29 = objc_msgSendSuper2(&v73, sel_init);

  v30 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey;
  *&v18[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey] = v29;
  v31 = &v16[*(v14 + 24)];
  v32 = *v31;
  v33 = v31[1];
  if (v33 >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v34 = *v31;
  }

  v35 = 0xC000000000000000;
  if (v33 >> 60 != 15)
  {
    v35 = v33;
  }

  v36 = &v18[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature];
  *v36 = v34;
  *(v36 + 1) = v35;
  outlined copy of Data?(v32, v33);
  v37 = v69;
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *&v74 = v38;
  *(&v74 + 1) = v40;
  v41 = v62;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  v69 = v16;
  v67 = 0;
  v42 = OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey;
  v43 = v65;
  v44 = v71;
  v45 = v41;
  v46 = v61;
  (*(v65 + 32))(&v71[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey], v45, v61);
  v16 = v70;
  if ((v64 - 13) > 0x12)
  {
    lazy protocol witness table accessor for type TetraGeneralError and conformance TetraGeneralError();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

    outlined destroy of TetraPB_TetraPublicPrekey(v69);
    (*(v43 + 8))(&v44[v42], v46);

    outlined consume of Data._Representation(*v36, *(v36 + 1));
    goto LABEL_18;
  }

  *&v44[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion] = v64;
  *&v44[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] = v16;
  v47 = type metadata accessor for TetraRegistration(0);
  v72.receiver = v44;
  v72.super_class = v47;
  v48 = v16;
  v16 = objc_msgSendSuper2(&v72, sel_init);
  v49 = *&v16[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature];
  v50 = *&v16[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8];
  outlined copy of Data._Representation(v49, v50);
  v51 = specialized TetraRegistration.isValidSignature(_:signedBy:isEncrypting:)(v48, v63 & 1);
  outlined consume of Data._Representation(v49, v50);
  if (v51)
  {
    outlined destroy of TetraPB_TetraPublicPrekey(v69);
  }

  else
  {
    v54 = v68;
    if (one-time initialization token for TetraLogger != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, TetraLogger);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_22B404000, v56, v57, "The signature of the registration payload could not be verified.", v58, 2u);
      v59 = v58;
      v54 = v68;
      MEMORY[0x231892DF0](v59, -1, -1);
    }

    lazy protocol witness table accessor for type TetraQueryLookupError and conformance TetraQueryLookupError();
    swift_allocError();
    *v60 = 0;
    swift_willThrow();

    outlined destroy of TetraPB_TetraPublicPrekey(v69);
  }

  return v16;
}

uint64_t TetraRegistration.computeKeysHash()()
{
  v1 = v0;
  v2 = type metadata accessor for SHA384();
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMd, &_ss14PrefixSequenceVy9CryptoKit12SHA384DigestVGMR) - 8;
  MEMORY[0x28223BE20](v40);
  v39 = &v38 - v5;
  v6 = type metadata accessor for Kyber1024.PublicKey();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x231891580](v8);
  v13 = v12;
  (*(v7 + 16))(v10, *(v0 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey) + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v6);
  v14 = Kyber1024.PublicKey.dataRepresentation.getter();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v14, v16);
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v46 = v11;
  v47 = v13;
  v21 = MEMORY[0x277CC9318];
  v44 = MEMORY[0x277CC9318];
  v45 = MEMORY[0x277CC9300];
  v42 = v18;
  v43 = v20;
  v22 = __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x277CC9318]);
  v23 = *v22;
  v24 = v22[1];
  outlined copy of Data._Representation(v11, v13);
  outlined copy of Data._Representation(v18, v20);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v23, v24, &v46);
  outlined consume of Data._Representation(v18, v20);
  outlined consume of Data._Representation(v11, v13);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v25 = v46;
  v26 = v47;
  v27 = v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature;
  v28 = *(v1 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v29 = *(v27 + 8);
  v48 = v46;
  v49 = v47;
  v44 = v21;
  v45 = MEMORY[0x277CC9300];
  v42 = v28;
  v43 = v29;
  v30 = __swift_project_boxed_opaque_existential_1(&v42, v21);
  v31 = *v30;
  v32 = v30[1];
  outlined copy of Data._Representation(v25, v26);
  outlined copy of Data._Representation(v28, v29);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v31, v32, &v48);
  outlined consume of Data._Representation(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v33 = v48;
  v34 = v49;
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v33, v34);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v33, v34, v4);
  outlined consume of Data._Representation(v33, v34);
  v35 = v39;
  dispatch thunk of HashFunction.finalize()();
  (*(v41 + 8))(v4, v2);
  *(v35 + *(v40 + 44)) = 16;
  v36 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs14PrefixSequenceVy9CryptoKit12SHA384DigestVG_Tt0g5(v35);
  outlined consume of Data._Representation(v33, v34);
  return v36;
}

uint64_t TetraRegistration.registrationData.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Kyber1024.PublicKey();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TetraPB_TetraPublicPrekey(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UnknownStorage.init()();
  v11 = &v10[*(v8 + 20)];
  *v11 = xmmword_22B48D7D0;
  v12 = &v10[*(v8 + 24)];
  *v12 = xmmword_22B48D7D0;
  (*(v5 + 16))(v7, *(v3 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey) + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v4);
  v13 = Kyber1024.PublicKey.dataRepresentation.getter();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  outlined consume of Data?(*v11, *(v11 + 1));
  *v11 = v17;
  *(v11 + 1) = v19;
  v20 = *(v3 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v21 = *(v3 + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8);
  v22 = *v12;
  v23 = *(v12 + 1);
  outlined copy of Data._Representation(v20, v21);
  outlined consume of Data?(v22, v23);
  *v12 = v20;
  *(v12 + 1) = v21;
  lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(&lazy protocol witness table cache variable for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey, type metadata accessor for TetraPB_TetraPublicPrekey, &protocol conformance descriptor for TetraPB_TetraPublicPrekey);
  v24 = Message.serializedData(partial:)();
  outlined destroy of TetraPB_TetraPublicPrekey(v10);
  return v24;
}

uint64_t outlined destroy of TetraPB_TetraPublicPrekey(uint64_t a1)
{
  v2 = type metadata accessor for TetraPB_TetraPublicPrekey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TetraRegistration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TetraRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraRegistration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TetraRegistration(uint64_t a1)
{
  result = type metadata singleton initialization cache for TetraRegistration;
  if (!type metadata singleton initialization cache for TetraRegistration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TetraRegistration(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for P256.KeyAgreement.PublicKey();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized TetraRegistration.isValidSignature(_:signedBy:isEncrypting:)(void *a1, char a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(NGMTetraRegistrationSignatureFormatter) initWithTetraRegistration_];
  isa = Data._bridgeToObjectiveC()().super.isa;
  LODWORD(a1) = [a1 verifyTetraRegistrationSignature:isa formatter:v6];

  if (!a1)
  {
    if (one-time initialization token for TetraLogger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, TetraLogger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Tetra signature is incorrect.";
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
    if (([v6 isStillValidToDecrypt] & 1) == 0)
    {
      if (one-time initialization token for TetraLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, TetraLogger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_13;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Tetra registration is too old to decrypt key exchange messages with.";
      goto LABEL_12;
    }

LABEL_15:
    v14 = 1;
    goto LABEL_16;
  }

  if ([v6 isStillValidToEncrypt])
  {
    goto LABEL_15;
  }

  if (one-time initialization token for TetraLogger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, TetraLogger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_13;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = "Tetra registration is too old to encrypt to.";
LABEL_12:
  _os_log_impl(&dword_22B404000, v9, v10, v12, v11, 2u);
  MEMORY[0x231892DF0](v11, -1, -1);
LABEL_13:

  v14 = 0;
LABEL_16:

  return v14;
}

id specialized TetraRegistration.init(kyberPublicKey:ecdhPublicKey:timestamp:version:signedBy:)(void *a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  v35[0] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35[1] = v16;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  (*(v12 + 32))(&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_ecdhPublicKey], v14, v11);
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_kyberPublicKey] = a1;
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_timestamp] = a5;
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_tetraVersion] = a3;
  v17 = a1;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = objc_allocWithZone(NGMTetraRegistrationSignatureFormatter);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23 = [v21 initWithKyberPublicKey:v17 ecdhPublicKey:isa timestamp:a3 tetraVersion:a5];

  outlined consume of Data._Representation(v18, v20);
  v24 = [a4 publicKey];
  *&v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signingPublicKey] = v24;
  v35[0] = 0;
  v25 = [a4 signDataWithRegistrationFormatter:v23 error:v35];
  v26 = v35[0];
  if (v25)
  {
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = &v5[OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature];
    *v30 = v27;
    v30[1] = v29;
    v31 = type metadata accessor for TetraRegistration(0);
    v34.receiver = v5;
    v34.super_class = v31;
    return objc_msgSendSuper2(&v34, sel_init);
  }

  else
  {
    v33 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TetraQueryLookupError and conformance TetraQueryLookupError()
{
  result = lazy protocol witness table cache variable for type TetraQueryLookupError and conformance TetraQueryLookupError;
  if (!lazy protocol witness table cache variable for type TetraQueryLookupError and conformance TetraQueryLookupError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraQueryLookupError and conformance TetraQueryLookupError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TetraPB_TetraPublicPrekey and conformance TetraPB_TetraPublicPrekey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for TetraIncomingSymmetricRatchet(uint64_t a1)
{
  result = type metadata accessor for SymmetricRatchet(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for TetraOutgoingSymmetricRatchet(uint64_t a1)
{
  type metadata accessor for TetraOutgoingKeyContent(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SymmetricRatchet?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SymmetricRatchet?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SymmetricRatchet?)
  {
    type metadata accessor for SymmetricRatchet(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SymmetricRatchet?);
    }
  }
}

uint64_t TetraOutgoingSymmetricRatchet.init(symmetricRatchetHead:outgoingPublicKeys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v5 = type metadata accessor for SymmetricRatchet(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  v20 = *(type metadata accessor for TetraOutgoingSymmetricRatchet(0) + 20);
  v22 = *(v6 + 56);
  v21 = v6 + 56;
  v43 = v22;
  v44 = v20;
  v47 = v5;
  v23 = v5;
  v24 = v48;
  v22(a3 + v20, 1, 1, v23);
  outlined init with copy of TetraSessionStates?(v24, v12, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TetraSessionStates?(v24, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    outlined destroy of TetraSessionStates?(v12, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    return outlined init with take of SymmetricRatchet(a2, a3, type metadata accessor for TetraOutgoingKeyContent);
  }

  v40 = v21;
  v41 = a3;
  v42 = a2;
  v38[0] = *(v14 + 32);
  v38[1] = v14 + 32;
  (v38[0])(v19, v12, v13);
  v39 = v14;
  (*(v14 + 16))(v17, v19, v13);
  if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
  {
    swift_once();
  }

  v25 = tetraSymmetricKeyRatchetStep;
  v26 = *algn_280F9FDF8;
  v28 = qword_280F9FE00;
  v27 = unk_280F9FE08;
  v29 = qword_280F9FE10;
  v30 = byte_280F9FE18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
  v51 = &protocol witness table for HKDFRatchet<A>;
  v31 = swift_allocObject();
  *&v49 = v31;
  *(v31 + 16) = v25;
  *(v31 + 24) = v26;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  *(v31 + 48) = v29;
  *(v31 + 56) = v30;
  v33 = v46;
  v32 = v47;
  *&v46[*(v47 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v25, v26);
  outlined copy of Data._Representation(v28, v27);
  if (SymmetricKey.bitCount.getter() > 255)
  {
    outlined destroy of TetraSessionStates?(v48, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    (*(v39 + 8))(v19, v13);
    outlined init with take of ContiguousBytes(&v49, v33 + *(v32 + 24));
    (v38[0])(v33, v17, v13);
    *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)) = 0;
    v34 = v45;
    outlined init with take of SymmetricRatchet(v33, v45, type metadata accessor for SymmetricRatchet);
    v43(v34, 0, 1, v32);
    a3 = v41;
    outlined assign with take of SymmetricRatchet?(v34, v41 + v44);
    a2 = v42;
    return outlined init with take of SymmetricRatchet(a2, a3, type metadata accessor for TetraOutgoingKeyContent);
  }

  v36 = type metadata accessor for CryptoKitError();
  lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277CC51D0], v36);
  swift_willThrow();
  (*(v39 + 8))(v17, v13);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t TetraIncomingSymmetricRatchet.init(symmetricRatchetHead:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricRatchet(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v25 = &v25 - v11;
  v26 = a1;
  v12 = *(v4 + 16);
  v28 = v3;
  v12(v6, a1, v3);
  if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
  {
    swift_once();
  }

  v13 = tetraSymmetricKeyRatchetStep;
  v14 = *algn_280F9FDF8;
  v16 = qword_280F9FE00;
  v15 = unk_280F9FE08;
  v17 = qword_280F9FE10;
  v18 = byte_280F9FE18;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
  v31 = &protocol witness table for HKDFRatchet<A>;
  v19 = swift_allocObject();
  *&v29 = v19;
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  *(v19 + 32) = v16;
  *(v19 + 40) = v15;
  *(v19 + 48) = v17;
  *(v19 + 56) = v18;
  *&v10[*(v7 + 20)] = MEMORY[0x277D84F98];
  outlined copy of Data._Representation(v13, v14);
  outlined copy of Data._Representation(v16, v15);
  if (SymmetricKey.bitCount.getter() <= 255)
  {
    v23 = type metadata accessor for CryptoKitError();
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CC51D0], v23);
    swift_willThrow();
    (*(v4 + 8))(v6, v28);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v28;
    (*(v4 + 8))(v26, v28);
    outlined init with take of ContiguousBytes(&v29, &v10[*(v7 + 24)]);
    (*(v4 + 32))(v10, v6, v20);
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48)] = 0;
    v21 = v25;
    outlined init with take of SymmetricRatchet(v10, v25, type metadata accessor for SymmetricRatchet);
    return outlined init with take of SymmetricRatchet(v21, v27, type metadata accessor for SymmetricRatchet);
  }

  return result;
}

NSObject *TetraIncomingSymmetricRatchet.openMessage(_:messageIndex:messageKeyIndicator:discardMessageKey:)(void *a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, int a6)
{
  v8 = v7;
  LODWORD(v49) = a6;
  v45 = a4;
  v46 = a5;
  v42 = a1;
  v43 = a2;
  v10 = type metadata accessor for SymmetricKey();
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v40 - v14;
  v15 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR) + 48));
  v16 = static os_log_type_t.info.getter();
  result = MessageProtectionLog(v16);
  if (result)
  {
    v18 = result;
    if (os_log_type_enabled(result, v16))
    {
      v19 = swift_slowAlloc();
      v41 = v7;
      v20 = v19;
      *v19 = 134218752;
      *(v19 + 4) = v15;
      *(v19 + 12) = 1024;
      *(v19 + 14) = a3;
      *(v19 + 18) = 2048;
      *(v19 + 20) = a3 - v15;
      *(v19 + 28) = 1024;
      *(v19 + 30) = a3 < v15;
      _os_log_impl(&dword_22B404000, v18, v16, "Tetra ratchet with current index %llu and incoming %u for delta of: %llu, and overflow %{BOOL}d ", v19, 0x22u);
      v21 = v20;
      v8 = v41;
      MEMORY[0x231892DF0](v21, -1, -1);
    }

    v22 = v52;
    SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(a3, v49 & 1, v52);
    if (v8)
    {
      return v16;
    }

    v50 = 0xD00000000000001ALL;
    v51 = 0x800000022B4956C0;
    MEMORY[0x2318919B0](0xD000000000000013, 0x800000022B496650);
    v50 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v50, v51);
    v51 = v23;
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    lazy protocol witness table accessor for type Data and conformance Data();
    v24 = v44;
    v25 = v47;
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v50, v51);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v27 = v48 + 8;
    v26 = *(v48 + 8);
    v26(v24, v25);
    v28 = v50;
    v49 = v51;
    if (specialized static Data.== infix(_:_:)(v50, v51, v45, v46))
    {
      v16 = specialized static TetraMessageEncoding.openMessage(_:messageKey:)(v42, v43, v22);
      v26(v22, v25);
      outlined consume of Data._Representation(v28, v49);
      return v16;
    }

    v29 = static os_log_type_t.error.getter();
    result = MessageProtectionLog(v29);
    if (result)
    {
      v30 = result;
      if (os_log_type_enabled(result, v29))
      {
        v31 = swift_slowAlloc();
        v48 = v27;
        v44 = v26;
        v32 = v31;
        v33 = swift_slowAlloc();
        v50 = v33;
        *v32 = 136315394;
        v34 = Data.base64EncodedString(options:)(0);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34._countAndFlagsBits, v34._object, &v50);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        v36 = Data.base64EncodedString(options:)(0);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36._countAndFlagsBits, v36._object, &v50);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_22B404000, v30, v29, "Mismatch in ratchet state, attempting to decrypt with message key with indicator: %s instead of %s.", v32, 0x16u);
        swift_arrayDestroy();
        v38 = v33;
        v25 = v47;
        MEMORY[0x231892DF0](v38, -1, -1);
        v26 = v44;
        MEMORY[0x231892DF0](v32, -1, -1);
      }

      lazy protocol witness table accessor for type TetraRatchetingErrors and conformance TetraRatchetingErrors();
      v16 = swift_allocError();
      *v39 = 3;
      swift_willThrow();
      outlined consume of Data._Representation(v28, v49);
      v26(v22, v25);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TetraOutgoingSymmetricRatchet.sealMessage(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  v34 = a5;
  v7 = type metadata accessor for SymmetricKey();
  v41 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = v5 + *(type metadata accessor for TetraOutgoingSymmetricRatchet(0) + 20);
  v20 = type metadata accessor for SymmetricRatchet(0);
  result = (*(*(v20 - 8) + 48))(v19, 1, v20);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v22 = *(v19 + *(v13 + 48));
  if (v22 == -1)
  {
    lazy protocol witness table accessor for type SymmetricRatchetErrors and conformance SymmetricRatchetErrors();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }

  result = SymmetricRatchet.messageKey(forIndex:discardMessageKey:)(v22, 1, v12);
  if (!v6)
  {
    v23 = *(v13 + 48);
    (*(v41 + 32))(v18, v12, v7);
    *&v18[v23] = v22;
    if (HIDWORD(v22))
    {
      lazy protocol witness table accessor for type TetraSymmetricRatchetErrors and conformance TetraSymmetricRatchetErrors();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of TetraSessionStates?(v18, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMd, &_s9CryptoKit12SymmetricKeyV3key_s6UInt64V5indextMR);
    }

    v37 = specialized static TetraMessageEncoding.sealMessage(_:messageKey:)(v35, v36, v37, v38, v18);
    v38 = v25;
    v39 = 0xD00000000000001ALL;
    v40 = 0x800000022B4956C0;
    MEMORY[0x2318919B0](0xD000000000000013, 0x800000022B496650);
    v39 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v39, v40);
    v40 = v26;
    type metadata accessor for SHA384();
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SHA384 and conformance SHA384, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
    lazy protocol witness table accessor for type Data and conformance Data();
    static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
    outlined consume of Data?(v39, v40);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v27 = *(v41 + 8);
    v27(v10, v7);
    v28 = v39;
    v29 = v40;
    result = outlined init with take of (key: SymmetricKey, index: UInt64)(v18, v16);
    v30 = *&v16[*(v13 + 48)];
    if (!HIDWORD(v30))
    {
      result = (v27)(v16, v7);
      v31 = v38;
      v32 = v34;
      *v34 = v37;
      v32[1] = v31;
      *(v32 + 4) = v30;
      v32[3] = v28;
      v32[4] = v29;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t TetraOutgoingSymmetricRatchet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = type metadata accessor for TetraOutgoingKeyContent(0);
  MEMORY[0x28223BE20](v53);
  v54 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMR);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v46 - v7;
  v9 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 28);
  v14 = type metadata accessor for SymmetricRatchet(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v58 = v13;
  v16(&v12[v13], 1, 1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();
  v18 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v19 = a1;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return outlined destroy of TetraSessionStates?(&v12[v58], &_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  }

  else
  {
    v46[1] = v17;
    v47 = v16;
    v48 = v14;
    v49 = a1;
    v59 = 0;
    v50 = v8;
    v51 = v12;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = *(v20 + 16);
    v22 = (v20 + 32);
    while (1)
    {
      if (!v21)
      {

        v26 = v49;
        v25 = v50;
        v12 = v51;
        v27 = v56;
        v28 = v57;
        v29 = v59;
        goto LABEL_20;
      }

      v24 = *v22 ? 0x800000022B494B40 : 0xEF6675626F746F72;
      if ((*v22 & 1) == 0 && v24 == 0xEF6675626F746F72)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v22;
      --v21;
      if (v23)
      {
        goto LABEL_13;
      }
    }

LABEL_13:
    v26 = v49;
    v30 = v56;

    v61 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    v28 = v57;
    v31 = v50;
    v32 = v59;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v51;
    if (v32)
    {
      (*(v30 + 8))(v31, v28);
LABEL_21:
      v19 = v26;
      goto LABEL_22;
    }

    v59 = 0;
    v33 = v60[1];
    v49 = v60[0];
    if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
    {
      swift_once();
    }

    v34 = tetraSymmetricKeyRatchetStep;
    v35 = *algn_280F9FDF8;
    v36 = qword_280F9FE00;
    v37 = unk_280F9FE08;
    v38 = qword_280F9FE10;
    v39 = byte_280F9FE18;
    v60[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
    v60[4] = &protocol witness table for HKDFRatchet<A>;
    v40 = swift_allocObject();
    v60[0] = v40;
    *(v40 + 16) = v34;
    *(v40 + 24) = v35;
    *(v40 + 32) = v36;
    *(v40 + 40) = v37;
    *(v40 + 48) = v38;
    *(v40 + 56) = v39;
    outlined copy of Data._Representation(v34, v35);
    outlined copy of Data._Representation(v36, v37);
    v41 = v52;
    v42 = v59;
    SymmetricRatchet.init(data:step:)(v49, v33, v60, v52);
    v29 = v42;
    if (v42)
    {
      (*(v56 + 8))(v50, v28);
      v12 = v51;
      goto LABEL_21;
    }

    v47(v41, 0, 1, v48);
    v12 = v51;
    outlined assign with take of SymmetricRatchet?(v41, &v51[v58]);
    v27 = v56;
    v25 = v50;
LABEL_20:
    LOBYTE(v60[0]) = 1;
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent, type metadata accessor for TetraOutgoingKeyContent, &protocol conformance descriptor for TetraOutgoingKeyContent);
    v43 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 8))(v25, v28);
    v44 = v55;
    if (v29)
    {
      goto LABEL_21;
    }

    outlined init with take of SymmetricRatchet(v43, v12, type metadata accessor for TetraOutgoingKeyContent);
    outlined init with copy of TetraOutgoingSymmetricRatchet(v12, v44);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return _s17MessageProtection16SymmetricRatchetVWOhTm_0(v12, type metadata accessor for TetraOutgoingSymmetricRatchet);
  }
}

uint64_t TetraOutgoingSymmetricRatchet.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for SymmetricRatchet(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection29TetraOutgoingSymmetricRatchetV10CodingKeysOGMR);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();
  v12 = v17[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  outlined init with copy of TetraSessionStates?(v12 + *(v13 + 20), v4, &_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of TetraSessionStates?(v4, &_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
LABEL_4:
    LOBYTE(v19) = 1;
    type metadata accessor for TetraOutgoingKeyContent(0);
    lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(&lazy protocol witness table cache variable for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent, type metadata accessor for TetraOutgoingKeyContent, &protocol conformance descriptor for TetraOutgoingKeyContent);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v18 + 8))(v11, v9);
  }

  outlined init with take of SymmetricRatchet(v4, v8, type metadata accessor for SymmetricRatchet);
  v19 = SymmetricRatchet.serializedData()();
  v20 = v14;
  v21 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v15 = v17[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v19, v20);
  _s17MessageProtection16SymmetricRatchetVWOhTm_0(v8, type metadata accessor for SymmetricRatchet);
  if (!v15)
  {
    goto LABEL_4;
  }

  return (*(v18 + 8))(v11, v9);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x506465646F636E65;
  }

  if (v2)
  {
    v4 = 0xEF6675626F746F72;
  }

  else
  {
    v4 = 0x800000022B494B40;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x506465646F636E65;
  }

  if (*a2)
  {
    v6 = 0x800000022B494B40;
  }

  else
  {
    v6 = 0xEF6675626F746F72;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TetraOutgoingSymmetricRatchet.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x800000022B494B40;
  v3 = 0x506465646F636E65;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEF6675626F746F72;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x506465646F636E65;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraOutgoingSymmetricRatchet.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TetraOutgoingSymmetricRatchet.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraOutgoingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TetraIncomingSymmetricRatchet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for SymmetricRatchet(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-v9];
  v11 = type metadata accessor for TetraIncomingSymmetricRatchet(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v29 = v13;
    v30 = v6;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v7;
    v16 = v32[1];
    v28 = v32[0];
    if (one-time initialization token for tetraSymmetricKeyRatchetStep != -1)
    {
      swift_once();
    }

    v18 = tetraSymmetricKeyRatchetStep;
    v17 = *algn_280F9FDF8;
    v20 = qword_280F9FE00;
    v19 = unk_280F9FE08;
    v27 = qword_280F9FE10;
    v26 = byte_280F9FE18;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMd, &_s17MessageProtection11HKDFRatchetVy9CryptoKit6SHA384VGMR);
    v32[4] = &protocol witness table for HKDFRatchet<A>;
    v21 = swift_allocObject();
    v32[0] = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v17;
    *(v21 + 32) = v20;
    *(v21 + 40) = v19;
    *(v21 + 48) = v27;
    *(v21 + 56) = v26;
    outlined copy of Data._Representation(v18, v17);
    outlined copy of Data._Representation(v20, v19);
    v22 = v30;
    SymmetricRatchet.init(data:step:)(v28, v16, v32, v30);
    (*(v8 + 8))(v10, v15);
    v23 = v29;
    outlined init with take of SymmetricRatchet(v22, v29, type metadata accessor for SymmetricRatchet);
    outlined init with take of SymmetricRatchet(v23, v31, type metadata accessor for TetraIncomingSymmetricRatchet);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t TetraIncomingSymmetricRatchet.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17MessageProtection29TetraIncomingSymmetricRatchetV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = SymmetricRatchet.serializedData()();
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TetraIncomingSymmetricRatchet.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TetraIncomingSymmetricRatchet.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TetraIncomingSymmetricRatchet.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TetraIncomingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TetraIncomingSymmetricRatchet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraOutgoingSymmetricRatchet.CodingKeys and conformance TetraOutgoingSymmetricRatchet.CodingKeys);
  }

  return result;
}

uint64_t outlined assign with take of SymmetricRatchet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17MessageProtection16SymmetricRatchetVSgMd, &_s17MessageProtection16SymmetricRatchetVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SymmetricRatchet(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TetraOutgoingSymmetricRatchet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetraOutgoingSymmetricRatchet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s17MessageProtection16SymmetricRatchetVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys;
  if (!lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TetraIncomingSymmetricRatchet.CodingKeys and conformance TetraIncomingSymmetricRatchet.CodingKeys);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type TetraOutgoingKeyContent and conformance TetraOutgoingKeyContent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id TetraSessionSerialized.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TetraSessionSerialized.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TetraSessionSerialized();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TetraSessionSerialized.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TetraSessionSerialized();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static TetraSessionSerialized.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = MEMORY[0x231891960](0xD000000000000016, 0x800000022B495160);
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TetraSessionSerialized@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TetraSessionSerialized();
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t SecMPSignAndProtectMessage(const __CFData *a1, uint64_t a2, uint64_t a3, CFDataRef theData, CFErrorRef *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v56 = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CBECE8];
  if (!a1 || !a2 || !a3 || !theData)
  {
    goto LABEL_36;
  }

  length = CFDataGetLength(theData);
  v11 = *v10;
  Mutable = CFDataCreateMutable(*v10, 0);
  v13 = CFDataCreateMutable(v11, 0);
  bytes = 2;
  CFDataAppendBytes(v13, &bytes, 1);
  v46 = v7;
  SecMPFIAppendCanonicalPublicHash(v7, v13);
  v49 = v6;
  SecMPPIAppendCanonicalHash(v6, v13);
  v14 = CFDataGetLength(v8);
  BytePtr = CFDataGetBytePtr(v8);
  v16 = CFDataGetLength(Mutable);
  v47 = v8;
  if ((v14 - 0x7FFFFFFF) < 0xFFFFFFFF80000002)
  {
    goto LABEL_42;
  }

  if (!BytePtr || (CFDataIncreaseLength(Mutable, v14 + 16), (MutableBytePtr = CFDataGetMutableBytePtr(Mutable)) == 0))
  {
    v44 = -909;
    goto LABEL_46;
  }

  v18 = &MutableBytePtr[v16];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, &MutableBytePtr[v16]) || !CFDataGetBytePtr(v13) || CFDataGetLength(v13) < 1)
  {
LABEL_42:
    v44 = -50;
LABEL_46:
    CFDataSetLength(Mutable, v16);
    inserted = SecMPCreateError(0, v44, @"Failed to Encrypt message", 0, a5);
    v36 = 0;
    v27 = 0;
    cf = 0;
    goto LABEL_47;
  }

  v19 = SecMPComputeIntegrityTag(v8, v13, v18);
  if (v19)
  {
    v44 = v19;
    goto LABEL_46;
  }

  ccaes_ctr_crypt_mode();
  ccctr_one_shot();
  v20 = SecMPPIEncryptionSpace(v49, 1);
  v21 = CFDataGetLength(Mutable);
  if (v21 < v20)
  {
    v20 = v21;
  }

  v22 = CFDataGetBytePtr(Mutable);
  v23 = *MEMORY[0x277CBED00];
  v24 = CFDataCreateWithBytesNoCopy(v11, v22, v20, *MEMORY[0x277CBED00]);
  v25 = CFDataGetLength(Mutable) - v20;
  v26 = CFDataGetBytePtr(Mutable);
  v27 = CFDataCreateWithBytesNoCopy(v11, &v20[v26], v25, v23);
  CFDataAppendBytes(theData, &bytes, 1);
  v28 = CFDataGetLength(theData);
  CFDataIncreaseLength(theData, 2);
  v29 = CFDataGetLength(theData);
  cf = v24;
  inserted = SecMPPIAppendPKIEncryptedData(v49, v24, theData);
  if (!inserted || (v31 = CFDataGetBytePtr(v27), v32 = CFDataGetLength(v27), CFDataAppendBytes(theData, v31, v32), v33 = CFDataGetMutableBytePtr(theData), v34 = CFDataGetLength(theData) - v29, inserted = insertSize(v34, &v33[v28], a5), inserted))
  {
    v36 = 0;
LABEL_47:
    v9 = 0;
    v7 = v46;
    goto LABEL_17;
  }

  v35 = CFDataGetBytePtr(theData);
  v36 = CFDataCreate(v11, &v35[v29], v34);
  v7 = v46;
  inserted = SecMPFIAppendSignature(v46, v36, theData, a5);
  v9 = inserted;
LABEL_17:
  v8 = v47;
  if (a5 && *a5)
  {
    v37 = MessageProtectionLog(inserted);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = *a5;
      *buf = 138412546;
      v53 = v13;
      v54 = 2112;
      v55 = v38;
      v39 = "Message Encryption: sender/receiver hash: %@ status: %@";
      v40 = v37;
      v41 = 22;
LABEL_23:
      _os_log_impl(&dword_22B404000, v40, OS_LOG_TYPE_INFO, v39, buf, v41);
    }
  }

  else
  {
    v37 = MessageProtectionLog(inserted);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v13;
      v39 = "Message Encryption: sender/receiver hash: %@ status: success";
      v40 = v37;
      v41 = 12;
      goto LABEL_23;
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  v6 = v49;
  v10 = MEMORY[0x277CBECE8];
  if ((v9 & 1) == 0)
  {
    CFDataSetLength(theData, length);
  }

LABEL_36:
  if (a5)
  {
    if ((v9 & 1) == 0 && !*a5)
    {
      v42 = CFStringCreateWithFormat(*v10, 0, @"Parameter error, all pointers must be valid. sourceMessage = %p, sender = %p, receiver = %p, protected message = %p.", v8, v7, v6, theData);
      SecMPCreateError(0, -7, v42, 0, a5);
      if (v42)
      {
        CFRelease(v42);
      }
    }
  }

  return v9;
}

CFDataRef SecMPCopyProtectedMsgHash(const __CFData *a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  if (Length)
  {
    v7 = Length;
    v8 = [*(a2 + 48) encryptionSize];
    v9 = 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v8;
      if (v7 >= v8 + 3)
      {
        v11 = *MEMORY[0x277CBECE8];
        BytePtr = CFDataGetBytePtr(a1);
        v13 = CFDataCreateWithBytesNoCopy(v11, BytePtr + 3, v10, *MEMORY[0x277CBED00]);
        v14 = CFDataGetBytePtr(v13);
        v15 = CFDataGetLength(v13);
        CC_SHA256(v14, v15, md);
        v9 = CFDataCreate(v11, md, 32);
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

  else
  {
    MPLogAndAssignCFError(1, a3, @"SecMPVerifyMessageContents: Missing incoming data.");
    return 0;
  }

  return v9;
}

uint64_t SecMPComputeIntegrityTag(const __CFData *a1, const __CFData *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v8 = CFDataGetLength(a2);
  v9 = CFDataGetBytePtr(a2);
  v10 = ccsha256_di();
  v11 = *v10;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  result = 4294966387;
  if (a3 && BytePtr && Length >= 1)
  {
    OUTLINED_FUNCTION_0();
    cchmac_init();
    OUTLINED_FUNCTION_0();
    cchmac_update();
    if (v9)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_0();
        cchmac_update();
      }
    }

    OUTLINED_FUNCTION_0();
    cchmac_final();
    *(a3 + 11) = *v13;
    *(a3 + 15) = v13[4];
    cc_clear();
    cc_clear();
    return 0;
  }

  return result;
}

uint64_t SecMPVerifyIntegrityTag(const __CFData *a1, const __CFData *a2, uint64_t a3)
{
  CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a2);
  v8 = CFDataGetBytePtr(a2);
  v9 = ccsha256_di();
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v11 = 4294966387;
  if (a3 && BytePtr)
  {
    OUTLINED_FUNCTION_0_1();
    cchmac_init();
    OUTLINED_FUNCTION_0_1();
    cchmac_update();
    if (v8 && (Length & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0_1();
      cchmac_update();
    }

    OUTLINED_FUNCTION_0_1();
    cchmac_final();
    if (cc_cmp_safe())
    {
      v11 = 4294942003;
    }

    else
    {
      v11 = 0;
    }

    cc_clear();
    cc_clear();
  }

  return v11;
}

uint64_t appendSizeAndData(const __CFData *a1, __CFData *a2, CFErrorRef *a3)
{
  Length = CFDataGetLength(a1);
  if (appendSize(Length, a2, a3))
  {
    return 4294942005;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v8 = CFDataGetLength(a1);
  CFDataAppendBytes(a2, BytePtr, v8);
  return 0;
}

uint64_t readLongLong(unint64_t **a1, unint64_t *a2, void *a3)
{
  result = 4294967246;
  if (a1 && a2 && a3)
  {
    v5 = *a2 - 8;
    if (*a2 >= 8)
    {
      result = 0;
      v6 = *a1 + 1;
      *a3 = bswap64(**a1);
      *a1 = v6;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t SecMPFICreatePrivateAndPublicKeyReadPersistentRef(void *a1, uint64_t *a2, unint64_t *a3, void *a4, CFErrorRef *a5)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v25 = 0;
  if (readSize_0(a2, a3, &v25, a5) || *a3 < v25)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v10 = objc_alloc(MEMORY[0x277CBEA90]);
  v11 = [v10 initWithBytes:*a2 length:v25];
  v12 = v11;
  if (!v11)
  {
LABEL_24:
    v16 = 4294967246;
    goto LABEL_22;
  }

  v13 = *MEMORY[0x277CDC5F0];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v13;
  keys[2] = *MEMORY[0x277CDC568];
  values[0] = *MEMORY[0x277CDC250];
  values[1] = v11;
  values[2] = *MEMORY[0x277CBED28];
  v14 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 0;
  v15 = SecItemCopyMatching(v14, &result);
  if (v15)
  {
    v16 = v15;
    goto LABEL_6;
  }

  v16 = 4294941996;
  if (!result)
  {
LABEL_6:
    v17 = 0;
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v18 = CFGetTypeID(result);
  TypeID = SecKeyGetTypeID();
  v20 = v18 == TypeID;
  if (v18 == TypeID)
  {
    v17 = result;
  }

  else
  {
    v17 = 0;
  }

  if (v20)
  {
    v16 = 0;
  }

  else
  {
    v16 = 4294941996;
  }

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_7:
  CFRelease(v14);
LABEL_8:
  if (v16)
  {
    SecMPCreateError(0, v16, @"Keychain lookup failed", 0, a5);
  }

  else
  {
    *a4 = v17;
    v21 = v25;
    *a2 += v25;
    *a3 -= v21;
    if (readSize_0(a2, a3, &v25, a5) || (v22 = v25, *a3 < v25))
    {
      v16 = 0;
    }

    else
    {
      *a3 -= v25;
      *a2 += v22;
      v23 = v12;
      v16 = 0;
      *a1 = v12;
    }
  }

LABEL_22:

  return v16;
}

void nextMultiple_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_22B404000, log, OS_LOG_TYPE_ERROR, "Message Encryption: nextPowerOfTwo invalid input %llx, %llx", &v3, 0x16u);
}

void SecMPPublicIdentityCreateFromBytes_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Failed to create legacy public key from bytes: %@", &v4, 0xCu);
}

void SecMPFullIdentityCreateFromData_cold_1(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to initialize legacy key: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void SecMPFIAppendSignature_cold_1(void *a1)
{
  v1 = [a1 description];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_2(&dword_22B404000, v2, v3, "Failed to perform legacy signature: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

uint64_t SecProtectStream(__CFReadStream *a1, __CFWriteStream *a2, CFMutableDataRef theData)
{
  CFDataAppendBytes(theData, &kProtectedFileHeader, 1);
  Length = CFDataGetLength(theData);
  CFDataIncreaseLength(theData, 32);
  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, &MutableBytePtr[Length]);
  if (!result)
  {

    return AES256CTRIV0TransformStream(a1, a2, &MutableBytePtr[Length]);
  }

  return result;
}

uint64_t AES256CTRIV0TransformStream(__CFReadStream *a1, __CFWriteStream *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = malloc_type_malloc(0x4000uLL, 0x827650BuLL);
  v7 = ccaes_ctr_crypt_mode();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  (*(v8 + 24))(v8, v17 - v9, 32, a3, &kIVZero);
  v11 = CFReadStreamRead(a1, v6, 0x4000);
  if (v11 < 1)
  {
LABEL_7:
    if (v11)
    {
      v15 = 4294967246;
    }

    else
    {
      v15 = 0;
    }

    if (v6)
    {
LABEL_11:
      free(v6);
    }
  }

  else
  {
LABEL_2:
    (*(v7 + 40))(v10, v11, v6, v6);
    v12 = v6;
    while (1)
    {
      v13 = CFWriteStreamWrite(a2, v12, v11);
      if (v13 < 1)
      {
        break;
      }

      v12 += v13;
      v14 = v11 <= v13;
      v11 -= v13;
      if (v14)
      {
        v11 = CFReadStreamRead(a1, v6, 0x4000);
        if (v11 > 0)
        {
          goto LABEL_2;
        }

        goto LABEL_7;
      }
    }

    v15 = 4294967246;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  return v15;
}

uint64_t SecExposeStream(__CFReadStream *a1, __CFWriteStream *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (CFDataGetLength(theData) < 0x21 || *BytePtr)
  {
    return 4294967246;
  }

  return AES256CTRIV0TransformStream(a1, a2, (BytePtr + 1));
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA60]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDBA0]();
}