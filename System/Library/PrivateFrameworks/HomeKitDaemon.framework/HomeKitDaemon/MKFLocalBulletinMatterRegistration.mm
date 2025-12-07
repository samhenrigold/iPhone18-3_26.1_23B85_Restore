@interface MKFLocalBulletinMatterRegistration
+ (id)fetchAllMatterRegistrationsForEndpointID:(id)d accessoryModelID:(id)iD managedObjectContext:(id)context;
+ (id)fetchMatterRegistrationForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID eventID:(id)eventID accessoryModelID:(id)modelID managedObjectContext:(id)context;
@end

@implementation MKFLocalBulletinMatterRegistration

+ (id)fetchAllMatterRegistrationsForEndpointID:(id)d accessoryModelID:(id)iD managedObjectContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!iDCopy)
  {
    goto LABEL_12;
  }

  v11 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v12 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@)", @"endpointID", dCopy, @"accessoryModelID", iDCopy];
  [v12 setPredicate:iDCopy];

  v22 = 0;
  v14 = [v11 executeFetchRequest:v12 error:&v22];
  v15 = v22;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v24 = v20;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = iDCopy;
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registration for endpointID: %@ accessoryModelID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
  }

  return v14;
}

+ (id)fetchMatterRegistrationForEndpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID eventID:(id)eventID accessoryModelID:(id)modelID managedObjectContext:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  eventIDCopy = eventID;
  modelIDCopy = modelID;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!iDCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!(attributeIDCopy | eventIDCopy))
  {
    goto LABEL_16;
  }

  if (!modelIDCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v20 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v21 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  modelIDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@) && (%K == %@) && (%K == %@)", @"endpointID", dCopy, @"clusterID", iDCopy, @"attributeID", attributeIDCopy, @"eventID", eventIDCopy, @"accessoryModelID", modelIDCopy];
  [v21 setPredicate:modelIDCopy];

  v31 = 0;
  v23 = [v20 executeFetchRequest:v21 error:&v31];
  v24 = v31;
  if (v23)
  {
    firstObject = [v23 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138544898;
      v33 = v28;
      v34 = 2112;
      v35 = dCopy;
      v36 = 2112;
      v37 = iDCopy;
      v38 = 2112;
      v39 = attributeIDCopy;
      v40 = 2112;
      v41 = eventIDCopy;
      v42 = 2112;
      v43 = modelIDCopy;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registration for endpointID: %@ clusterID: %@ attributeID: %@ eventID: %@ accessoryModelID: %@ error: %@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(context);
    firstObject = 0;
  }

  return firstObject;
}

@end