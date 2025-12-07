@interface TKNFCSlotFactory
- (id)createNFCSlotWithName:(id)name uiMessage:(id)message creatorPID:(int)d appIdentifiers:(id)identifiers error:(id *)error;
- (id)makeNFCSlotParameters;
@end

@implementation TKNFCSlotFactory

- (id)createNFCSlotWithName:(id)name uiMessage:(id)message creatorPID:(int)d appIdentifiers:(id)identifiers error:(id *)error
{
  v9 = *&d;
  messageCopy = message;
  identifiersCopy = identifiers;
  v13 = objc_alloc_init(TKNFCHardwareManager);
  v14 = [[TKNFCReaderManager alloc] initWithAppIdentifiers:identifiersCopy uiMessage:messageCopy nfcHwManager:v13];

  if ([(TKNFCReaderManager *)v14 isNFCSupportedWithError:error])
  {
    v15 = [TKSmartCardSlotEngine alloc];
    makeNFCSlotParameters = [(TKNFCSlotFactory *)self makeNFCSlotParameters];
    v17 = [v15 initWithSlotParameters:makeNFCSlotParameters];

    v18 = [TKNFCSlot alloc];
    v19 = [(TKNFCSlot *)v18 initWithSlotName:TKNFCSlotName uiMessage:messageCopy creatorPID:v9 slotEngine:v17 nfcReaderManager:v14];
    [(TKNFCReaderManager *)v14 setDelegate:v19];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)makeNFCSlotParameters
{
  v2 = [[TKSlotParameters alloc] initWithMaxBlockSize:0xFFFFLL];
  [v2 setSecurePINChangeSupported:0];
  [v2 setSecurePINVerificationSupported:0];

  return v2;
}

@end