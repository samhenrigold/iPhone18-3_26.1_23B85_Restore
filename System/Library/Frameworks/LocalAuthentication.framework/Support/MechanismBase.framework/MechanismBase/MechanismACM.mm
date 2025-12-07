@interface MechanismACM
- (MechanismACM)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller acmContextRecord:(id)record request:(id)request;
- (id)mergeResult:(id)result withUpdateOfIdentityUUID:(id)d;
@end

@implementation MechanismACM

- (MechanismACM)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller acmContextRecord:(id)record request:(id)request
{
  recordCopy = record;
  requestCopy = request;
  cachedExternalizationDelegate = [recordCopy cachedExternalizationDelegate];
  v16.receiver = self;
  v16.super_class = MechanismACM;
  v14 = [(MechanismBase *)&v16 initWithEventIdentifier:identifier remoteViewController:controller cachedExternalizationDelegate:cachedExternalizationDelegate request:requestCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_acmContextRecord, record);
    v14->_acmContext = [recordCopy context];
    v14->_acmFlags = [recordCopy flags];
  }

  return v14;
}

- (id)mergeResult:(id)result withUpdateOfIdentityUUID:(id)d
{
  v59 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dCopy = d;
  updateConstraintOffset = [(MechanismACM *)self updateConstraintOffset];

  if (!updateConstraintOffset)
  {
    v21 = resultCopy;
    goto LABEL_22;
  }

  internalOptions = [(MechanismBase *)self internalOptions];
  v10 = [internalOptions objectForKeyedSubscript:@"ConstraintOp"];

  internalOptions2 = [(MechanismBase *)self internalOptions];
  v12 = [internalOptions2 objectForKeyedSubscript:@"Constraint"];

  internalOptions3 = [(MechanismBase *)self internalOptions];
  v14 = [internalOptions3 objectForKeyedSubscript:@"ConstraintData"];
  v15 = [v14 mutableCopy];

  if (v10 && v12 && v15)
  {
    updateConstraintOffset2 = [(MechanismACM *)self updateConstraintOffset];
    v17 = [updateConstraintOffset2 unsignedIntegerValue] + 16;
    v18 = [v15 length];

    if (v17 <= v18)
    {
      v48[0] = 0;
      v48[1] = 0;
      [dCopy getUUIDBytes:v48];
      updateConstraintOffset3 = [(MechanismACM *)self updateConstraintOffset];
      [v15 replaceBytesInRange:objc_msgSend(updateConstraintOffset3 withBytes:{"unsignedIntegerValue"), 16, v48}];

      v24 = [v12 objectForKeyedSubscript:@"cbio"];
      v25 = [v24 mutableCopy];

      if (v25 && ([v25 objectForKeyedSubscript:@"pbiou"], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
      {
        v27 = [MEMORY[0x277CBEA90] dataWithBytes:v48 length:16];
        [v25 setObject:v27 forKey:@"pbiou"];

        v39 = [v12 mutableCopy];
        [v39 setObject:v25 forKey:@"cbio"];
        request = [(MechanismBase *)self request];
        v29 = [request log];

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          updateConstraintOffset4 = [(MechanismACM *)self updateConstraintOffset];
          *buf = 138544130;
          selfCopy2 = self;
          v51 = 2114;
          v52 = v10;
          v53 = 2114;
          v54 = updateConstraintOffset4;
          v55 = 2114;
          v56 = dCopy;
          _os_log_impl(&dword_238B95000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ has resolved the unbound UUID for operation '%{public}@' at index %{public}@ to %{public}@", buf, 0x2Au);
        }

        v46[0] = @"Result";
        v42 = v10;
        v43 = v39;
        v44 = &unk_284B78A50;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v45 = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v46[1] = @"ConstraintData";
        v47[0] = v32;
        v40 = v10;
        v41 = v15;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v47[1] = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

        v21 = [v34 dictionaryByMergingWith:resultCopy];
      }

      else
      {
        request2 = [(MechanismBase *)self request];
        v36 = [request2 log];

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [MechanismACM mergeResult:v25 withUpdateOfIdentityUUID:v36];
        }

        v21 = resultCopy;
      }

      goto LABEL_21;
    }

    request3 = [(MechanismBase *)self request];
    v20 = [request3 log];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [(MechanismACM *)v15 mergeResult:v20 withUpdateOfIdentityUUID:?];
    }
  }

  else
  {
    request4 = [(MechanismBase *)self request];
    v20 = [request4 log];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      updateConstraintOffset5 = [(MechanismACM *)self updateConstraintOffset];
      *buf = 138544386;
      selfCopy2 = self;
      v51 = 2114;
      v52 = v12;
      v53 = 2114;
      v54 = v15;
      v55 = 2114;
      v56 = v10;
      v57 = 2114;
      v58 = updateConstraintOffset5;
      _os_log_error_impl(&dword_238B95000, v20, OS_LOG_TYPE_ERROR, "%{public}@ is missing constraint: %{public}@, data: %{public}@ or operation: %{public}@ use offset %{public}@", buf, 0x34u);
    }
  }

  v21 = resultCopy;
LABEL_21:

LABEL_22:

  return v21;
}

- (void)mergeResult:(uint64_t)a1 withUpdateOfIdentityUUID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_238B95000, a2, OS_LOG_TYPE_ERROR, "%{public}% is missing unbound identity in cbio: %{public}@", &v2, 0xCu);
}

- (void)mergeResult:(NSObject *)a3 withUpdateOfIdentityUUID:.cold.2(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 length];
  v6 = [a2 updateConstraintOffset];
  v7[0] = 67109378;
  v7[1] = v5;
  v8 = 2114;
  v9 = v6;
  _os_log_fault_impl(&dword_238B95000, a3, OS_LOG_TYPE_FAULT, "Unbound UUID offset out of bounds [0-%u]: %{public}@", v7, 0x12u);
}

@end