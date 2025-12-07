@interface CloudAssetsAssetStreamHandle
+ (id)makeAssetStreamHandleWithPartition:(id)partition owner:(id)owner accessToken:(id)token requestorID:(id)d signature:(id)signature referenceSignature:(id)referenceSignature size:(int64_t)size assetKey:(id)self0 filenameExtension:(id)self1 applicationID:(id)self2 error:(id *)self3;
- (id)initFrom:(id)from error:(id *)error;
- (id)makeAVAssetExportSessionWith:(id)with options:(id)options presetName:(id)name;
- (id)makeAVPlayerItemWith:(id)with options:(id)options;
- (id)serializedDataAndReturnError:(id *)error;
- (int64_t)size;
@end

@implementation CloudAssetsAssetStreamHandle

+ (id)makeAssetStreamHandleWithPartition:(id)partition owner:(id)owner accessToken:(id)token requestorID:(id)d signature:(id)signature referenceSignature:(id)referenceSignature size:(int64_t)size assetKey:(id)self0 filenameExtension:(id)self1 applicationID:(id)self2 error:(id *)self3
{
  errorCopy = error;
  selfCopy = self;
  sizeCopy = size;
  v15 = type metadata accessor for URL();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &errorCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v18;
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v19;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v20;
  signatureCopy = signature;
  referenceSignatureCopy = referenceSignature;
  keyCopy = key;
  extensionCopy = extension;
  iDCopy = iD;
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  swift_getObjCClassMetadata();
  *&v46 = v33;
  *(&v46 + 1) = v35;
  v51 = v32;
  *&v45 = v30;
  *(&v45 + 1) = v32;
  *(&v44 + 1) = sizeCopy;
  selfCopy = v29;
  *&v44 = v29;
  v39 = v48;
  *(&v43 + 1) = v48;
  sizeCopy = v27;
  *&v43 = v27;
  v40 = v49;
  v41 = sub_18845B578(v17, v54, v59, v53, v60, v52, v50, v49, v43, v44, v45, v46, v36, v38);
  (*(v57 + 8))(v17, v58);

  sub_188423CCC(v30, v51);
  sub_188423CCC(v39, selfCopy);
  sub_188423CCC(v40, sizeCopy);

  return v41;
}

- (id)makeAVPlayerItemWith:(id)with options:(id)options
{
  v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (with)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = 1;
  }

  sub_1883F90F4(v9, v11, 1, v10);
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  v13 = sub_18845BA74();

  sub_18845C260(v9);

  return v13;
}

- (id)makeAVAssetExportSessionWith:(id)with options:(id)options presetName:(id)name
{
  v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  if (with)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = 1;
  }

  sub_1883F90F4(v10, v12, 1, v11);
  if (options)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v14 = sub_18845BBCC();

  sub_18845C260(v10);

  return v14;
}

- (id)initFrom:(id)from error:(id *)error
{
  fromCopy = from;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_18845BD50();
}

- (id)serializedDataAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_18845BF7C();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_188423CCC(v4, v6);

  return v7.super.isa;
}

- (int64_t)size
{
  selfCopy = self;
  v3 = sub_18845C234();

  return v3;
}

@end