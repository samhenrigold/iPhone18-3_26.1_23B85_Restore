@interface CPSimulatedDataCryptor
- (CPSimulatedDataCryptor)init;
- (CPSimulatedDataCryptor)initWithCoder:(id)coder;
- (NSArray)decryptionKeyIDSet;
- (NSUUID)encryptionKeyID;
- (id)decryptData:(id)data keyID:(id)d seqNum:(unint64_t)num error:(id *)error;
- (id)encryptData:(id)data seqNum:(unint64_t)num error:(id *)error;
- (void)setDecryptionKeyIDSet:(id)set;
- (void)setEncryptionKeyID:(id)d;
@end

@implementation CPSimulatedDataCryptor

- (NSUUID)encryptionKeyID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setEncryptionKeyID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR___CPSimulatedDataCryptor_encryptionKeyID;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (NSArray)decryptionKeyIDSet
{
  swift_beginAccess();
  type metadata accessor for UUID();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setDecryptionKeyIDSet:(id)set
{
  type metadata accessor for UUID();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (id)encryptData:(id)data seqNum:(unint64_t)num error:(id *)error
{
  if (data)
  {
    dataCopy = data;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v6, v8);

    return v9.super.isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (id)decryptData:(id)data keyID:(id)d seqNum:(unint64_t)num error:(id *)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  if (data)
  {
    dCopy = d;
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (d)
    {
LABEL_3:
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
      goto LABEL_6;
    }
  }

  else
  {
    dCopy2 = d;
    v14 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v18 = type metadata accessor for UUID();
  result = (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
LABEL_6:
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    outlined destroy of UUID?(v10);
    v19.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(data, v14);

    return v19.super.isa;
  }

  return result;
}

- (CPSimulatedDataCryptor)init
{
  UUID.init()();
  v3 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  type metadata accessor for UUID();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *(self + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SimulatedDataCryptor(0);
  return [(CPSimulatedDataCryptor *)&v6 init];
}

- (CPSimulatedDataCryptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  UUID.init()();
  v5 = OBJC_IVAR___CPSimulatedDataCryptor_decryptionKeyIDSet;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  type metadata accessor for UUID();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AEE07B20;
  UUID.init()();
  *(self + v5) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SimulatedDataCryptor(0);
  v7 = [(CPSimulatedDataCryptor *)&v9 init];

  return v7;
}

@end