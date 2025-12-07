@interface ICModelAvailabilityManager
+ (ICModelAvailabilityManager)sharedInstance;
- (BOOL)supportsCallTranscription;
- (BOOL)supportsGeneralASR;
- (BOOL)supportsOnDeviceSummary;
- (BOOL)supportsPrivateCloudComputeSummary;
- (ICModelAvailabilityManager)init;
- (void)fetchAndCacheAsyncAvailabilities:(id)availabilities;
@end

@implementation ICModelAvailabilityManager

+ (ICModelAvailabilityManager)sharedInstance
{
  if (qword_1EC7D3418 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC7D3428;

  return v3;
}

- (ICModelAvailabilityManager)init
{
  v3 = type metadata accessor for AppleIntelligenceSupportStatus(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ICModelAvailabilityManager_generalASRLock;
  v7 = sub_1D45C4D98();
  (*(*(v7 - 8) + 56))(v5, 3, 3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3438, &qword_1D45CAD70);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D4578A38(v5, v8 + *(*v8 + *MEMORY[0x1E69E6B68] + 16));
  *(&self->super.isa + v6) = v8;
  v10.receiver = self;
  v10.super_class = ICModelAvailabilityManager;
  return [(ICModelAvailabilityManager *)&v10 init];
}

- (void)fetchAndCacheAsyncAvailabilities:(id)availabilities
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450, &qword_1D45CAE70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(availabilities);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1D45C4FC8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D45CAE80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D45CAE90;
  v12[5] = v11;
  selfCopy = self;
  sub_1D45B818C(0, 0, v7, &unk_1D45CAEA0, v12);
}

- (BOOL)supportsCallTranscription
{
  sharedConnection = [objc_opt_self() sharedConnection];
  if (sharedConnection)
  {
    v3 = sharedConnection;
    isNotesTranscriptionAllowed = [sharedConnection isNotesTranscriptionAllowed];

    if (isNotesTranscriptionAllowed)
    {
      LOBYTE(sharedConnection) = TUTranscriptionAvailabilityForUseCase() != 0;
    }

    else
    {
      LOBYTE(sharedConnection) = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return sharedConnection;
}

- (BOOL)supportsPrivateCloudComputeSummary
{
  selfCopy = self;
  v3 = ICModelAvailabilityManager.supportsPrivateCloudComputeSummary.getter();

  return v3 & 1;
}

- (BOOL)supportsOnDeviceSummary
{
  selfCopy = self;
  v3 = ICModelAvailabilityManager.supportsOnDeviceSummary.getter();

  return v3 & 1;
}

- (BOOL)supportsGeneralASR
{
  selfCopy = self;
  v3 = ICModelAvailabilityManager.supportsGeneralASR.getter();

  return v3 & 1;
}

@end