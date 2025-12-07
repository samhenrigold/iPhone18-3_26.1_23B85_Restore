@interface HMBSQLQueryIterator
- (HMBSQLQueryIterator)initWithStatement:(id)statement initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select error:(id)error;
- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error;
- (id)nextObject;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation HMBSQLQueryIterator

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    nextObject = [(HMBSQLQueryIterator *)self nextObject];
    if (nextObject)
    {
      blockCopy[2](blockCopy, nextObject, &v7);
    }

    objc_autoreleasePoolPop(v5);
  }

  while (nextObject && !v7);
}

- (id)nextObject
{
  v74 = *MEMORY[0x277D85DE8];
  error = [(HMBSQLQueryIterator *)self error];
  v4 = error == 0;

  if (!v4)
  {
    goto LABEL_2;
  }

  *&v5 = 138543874;
  v45 = v5;
  while (1)
  {
    cachedResults = [(HMBSQLQueryIterator *)self cachedResults];
    if (!cachedResults)
    {
      goto LABEL_11;
    }

    cachedResults2 = [(HMBSQLQueryIterator *)self cachedResults];
    if ([cachedResults2 count])
    {

      goto LABEL_33;
    }

    currentSequence = [(HMBSQLQueryIterator *)self currentSequence];
    v11 = currentSequence == 0;

    if (!v11)
    {
LABEL_11:
      selfCopy = self;
      while (1)
      {
        cachedResults3 = [(HMBSQLQueryIterator *)selfCopy cachedResults];
        if (cachedResults3)
        {
          cachedResults4 = [(HMBSQLQueryIterator *)selfCopy cachedResults];
          if ([cachedResults4 count])
          {

LABEL_32:
            break;
          }

          currentSequence2 = [(HMBSQLQueryIterator *)selfCopy currentSequence];
          v16 = currentSequence2 == 0;

          if (v16)
          {
            goto LABEL_32;
          }
        }

        maximumRowsPerQuery = [(HMBSQLQueryIterator *)selfCopy maximumRowsPerQuery];
        v62 = 0;
        v63 = &v62;
        v64 = 0x3032000000;
        v65 = __Block_byref_object_copy_;
        v66 = __Block_byref_object_dispose_;
        v67 = [MEMORY[0x277CBEB18] arrayWithCapacity:maximumRowsPerQuery];
        v58 = 0;
        v59 = &v58;
        v60 = 0x2020000000;
        v61 = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        sequenceBindOffset = [(HMBSQLQueryIterator *)selfCopy sequenceBindOffset];
        statement = [(HMBSQLQueryIterator *)selfCopy statement];
        context = [statement context];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = ____fetchNextBatch_block_invoke;
        v47[3] = &unk_2786E0358;
        v53 = sequenceBindOffset;
        v21 = selfCopy;
        v48 = v21;
        v49 = &v54;
        v50 = &v58;
        v51 = &v62;
        v52 = maximumRowsPerQuery;
        v22 = [context sqlBlockWithActivity:0 block:v47];

        v23 = v63[5];
        if (v23)
        {
          if ((v55[3] & 1) != 0 || [v23 count])
          {
            currentSequence3 = [(HMBSQLQueryIterator *)v21 currentSequence];
            v25 = currentSequence3 == 0;

            if (!v25)
            {
              v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59[3]];
              [(HMBSQLQueryIterator *)v21 setCurrentSequence:v26];
            }

            cachedResults5 = [(HMBSQLQueryIterator *)v21 cachedResults];
            v28 = cachedResults5 == 0;

            if (v28)
            {
              [(HMBSQLQueryIterator *)v21 setCachedResults:v63[5]];
            }

            else
            {
              cachedResults6 = [(HMBSQLQueryIterator *)v21 cachedResults];
              [cachedResults6 addObjectsFromArray:v63[5]];
            }

            v35 = 1;
            goto LABEL_28;
          }

          [(HMBSQLQueryIterator *)v21 setCurrentSequence:0];
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = v21;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = HMFGetLogIdentifier();
            currentSequence4 = [(HMBSQLQueryIterator *)v31 currentSequence];
            *buf = v45;
            v69 = v33;
            v70 = 2112;
            v71 = currentSequence4;
            v72 = 2112;
            v73 = v22;
            _os_log_impl(&dword_22AD27000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch additional items into query enumeration %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v30);
          [(HMBSQLQueryIterator *)v31 setError:v22];
          [(HMBSQLQueryIterator *)v31 setCurrentSequence:0];
          [(HMBSQLQueryIterator *)v31 setCachedResults:0];
        }

        v35 = 0;
LABEL_28:

        _Block_object_dispose(&v54, 8);
        _Block_object_dispose(&v58, 8);
        _Block_object_dispose(&v62, 8);

        if ((v35 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_33:
    cachedResults7 = [(HMBSQLQueryIterator *)self cachedResults];
    if (![cachedResults7 count])
    {

LABEL_42:
      [(HMBSQLQueryIterator *)self setCurrentSequence:0];
      goto LABEL_2;
    }

    error2 = [(HMBSQLQueryIterator *)self error];
    v38 = error2 == 0;

    if (!v38)
    {
      goto LABEL_42;
    }

    cachedResults8 = [(HMBSQLQueryIterator *)self cachedResults];
    hmf_dequeue = [cachedResults8 hmf_dequeue];

    v46 = 0;
    v6 = [(HMBSQLQueryIterator *)self fetchRow:hmf_dequeue error:&v46];
    v41 = v46;
    v42 = v41;
    if (v6)
    {
      break;
    }

    if (![v41 isHMFError] || objc_msgSend(v42, "code") != 2)
    {
      [(HMBSQLQueryIterator *)self setError:v42];
      [(HMBSQLQueryIterator *)self setCurrentSequence:0];

LABEL_2:
      v6 = 0;
      goto LABEL_3;
    }

    error3 = [(HMBSQLQueryIterator *)self error];
    v44 = error3 == 0;

    if (!v44)
    {
      goto LABEL_2;
    }
  }

LABEL_3:

  return v6;
}

- (id)fetchRowFromStatement:(sqlite3_stmt *)statement skip:(BOOL *)skip updatedSequence:(unint64_t *)sequence error:(id *)error
{
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (HMBSQLQueryIterator)initWithStatement:(id)statement initialSequence:(id)sequence maximumRowsPerSelect:(unint64_t)select error:(id)error
{
  statementCopy = statement;
  sequenceCopy = sequence;
  errorCopy = error;
  v20.receiver = self;
  v20.super_class = HMBSQLQueryIterator;
  v14 = [(HMBSQLQueryIterator *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_statement, statement);
    cachedResults = v15->_cachedResults;
    v15->_cachedResults = 0;

    objc_storeStrong(&v15->_currentSequence, sequence);
    v15->_maximumRowsPerQuery = select;
    objc_storeStrong(&v15->_error, error);
    arguments = [statementCopy arguments];
    v18 = [arguments hmf_numberForKey:@"_sequence_offset"];

    v15->_sequenceBindOffset = [v18 intValue];
  }

  return v15;
}

@end