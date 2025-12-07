@interface HMIPersonManager
- (HMIPersonManager)initWithUUID:(id)d homeUUID:(id)iD;
- (HMIPersonManagerDataSource)dataSource;
- (void)handleDataChanged;
- (void)handleRemovedFaceCropWithUUID:(id)d;
- (void)handleRemovedFaceprintWithUUID:(id)d;
- (void)handleRemovedPersonWithUUID:(id)d;
- (void)handleUpdatedFaceprint:(id)faceprint;
- (void)handleUpdatedPerson:(id)person;
- (void)handleUpdatedPersonFaceCrop:(id)crop;
- (void)handleUpdatedUnassociatedFaceCrop:(id)crop;
@end

@implementation HMIPersonManager

- (HMIPersonManager)initWithUUID:(id)d homeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMIPersonManager;
  v8 = [(HMIPersonManager *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    UUID = v8->_UUID;
    v8->_UUID = v9;

    v11 = [iDCopy copy];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v11;
  }

  return v8;
}

- (void)handleDataChanged
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(a2);
  v5 = [v3 stringWithFormat:v4];
  v6 = [v2 exceptionWithName:? reason:? userInfo:?];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)handleUpdatedPerson:(id)person
{
  personCopy = person;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)crop
{
  cropCopy = crop;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)handleUpdatedPersonFaceCrop:(id)crop
{
  cropCopy = crop;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)handleUpdatedFaceprint:(id)faceprint
{
  faceprintCopy = faceprint;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)handleRemovedPersonWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)handleRemovedFaceCropWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (void)handleRemovedFaceprintWithUUID:(id)d
{
  dCopy = d;
  v5 = MEMORY[0x277CBEAD8];
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:v7];
  v9 = [v5 exceptionWithName:? reason:? userInfo:?];
  v10 = v9;

  objc_exception_throw(v9);
}

- (HMIPersonManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end