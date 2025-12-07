@interface TRITaskRecord
+ (id)taskRecordWithTaskId:(id)id task:(id)task startDate:(id)date dependencies:(id)dependencies capabilities:(unint64_t)capabilities tags:(id)tags;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTaskRecord:(id)record;
- (TRITaskRecord)initWithCoder:(id)coder;
- (TRITaskRecord)initWithTaskId:(id)id task:(id)task startDate:(id)date dependencies:(id)dependencies capabilities:(unint64_t)capabilities tags:(id)tags;
- (id)copyWithReplacementCapabilities:(unint64_t)capabilities;
- (id)copyWithReplacementDependencies:(id)dependencies;
- (id)copyWithReplacementStartDate:(id)date;
- (id)copyWithReplacementTags:(id)tags;
- (id)copyWithReplacementTask:(id)task;
- (id)copyWithReplacementTaskId:(id)id;
- (id)description;
- (unint64_t)hash;
- (void)defaultEncodeWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRITaskRecord

- (TRITaskRecord)initWithTaskId:(id)id task:(id)task startDate:(id)date dependencies:(id)dependencies capabilities:(unint64_t)capabilities tags:(id)tags
{
  idCopy = id;
  taskCopy = task;
  dateCopy = date;
  dependenciesCopy = dependencies;
  tagsCopy = tags;
  if (idCopy)
  {
    if (taskCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:333 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];

    if (taskCopy)
    {
LABEL_3:
      if (dependenciesCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"dependencies != nil"}];

      if (tagsCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"task != nil"}];

  if (!dependenciesCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (tagsCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"tags != nil"}];

LABEL_5:
  v28.receiver = self;
  v28.super_class = TRITaskRecord;
  v18 = [(TRITaskRecord *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_taskId, id);
    objc_storeStrong(&v19->_task, task);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_dependencies, dependencies);
    v19->_capabilities = capabilities;
    objc_storeStrong(&v19->_tags, tags);
  }

  return v19;
}

+ (id)taskRecordWithTaskId:(id)id task:(id)task startDate:(id)date dependencies:(id)dependencies capabilities:(unint64_t)capabilities tags:(id)tags
{
  tagsCopy = tags;
  dependenciesCopy = dependencies;
  dateCopy = date;
  taskCopy = task;
  idCopy = id;
  v19 = [[self alloc] initWithTaskId:idCopy task:taskCopy startDate:dateCopy dependencies:dependenciesCopy capabilities:capabilities tags:tagsCopy];

  return v19;
}

- (id)copyWithReplacementTaskId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:idCopy task:self->_task startDate:self->_startDate dependencies:self->_dependencies capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementTask:(id)task
{
  taskCopy = task;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:taskCopy startDate:self->_startDate dependencies:self->_dependencies capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementStartDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:self->_task startDate:dateCopy dependencies:self->_dependencies capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:self->_task startDate:self->_startDate dependencies:dependenciesCopy capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementCapabilities:(unint64_t)capabilities
{
  v5 = objc_alloc(objc_opt_class());
  taskId = self->_taskId;
  task = self->_task;
  startDate = self->_startDate;
  dependencies = self->_dependencies;
  tags = self->_tags;

  return [v5 initWithTaskId:taskId task:task startDate:startDate dependencies:dependencies capabilities:capabilities tags:tags];
}

- (id)copyWithReplacementTags:(id)tags
{
  tagsCopy = tags;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:self->_task startDate:self->_startDate dependencies:self->_dependencies capabilities:self->_capabilities tags:tagsCopy];

  return v5;
}

- (BOOL)isEqualToTaskRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (v6 = self->_taskId == 0, [recordCopy taskId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (taskId = self->_taskId) != 0 && (objc_msgSend(v5, "taskId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSNumber isEqual:](taskId, "isEqual:", v10), v10, !v11) || (v12 = self->_task == 0, objc_msgSend(v5, "task"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (task = self->_task) != 0 && (objc_msgSend(v5, "task"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[TRITask isEqual:](task, "isEqual:", v16), v16, !v17) || (v18 = self->_startDate == 0, objc_msgSend(v5, "startDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (startDate = self->_startDate) != 0 && (objc_msgSend(v5, "startDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSDate isEqual:](startDate, "isEqual:", v22), v22, !v23) || (v24 = self->_dependencies == 0, objc_msgSend(v5, "dependencies"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26) || (dependencies = self->_dependencies) != 0 && (objc_msgSend(v5, "dependencies"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[NSArray isEqual:](dependencies, "isEqual:", v28), v28, !v29) || (capabilities = self->_capabilities, capabilities != objc_msgSend(v5, "capabilities")) || (v31 = self->_tags == 0, objc_msgSend(v5, "tags"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 != 0, v32, v31 == v33))
  {
    v36 = 0;
  }

  else
  {
    tags = self->_tags;
    if (tags)
    {
      tags = [v5 tags];
      v36 = [(NSArray *)tags isEqual:tags];
    }

    else
    {
      v36 = 1;
    }
  }

  return v36 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskRecord *)self isEqualToTaskRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_taskId hash];
  v4 = [(TRITask *)self->_task hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_startDate hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_dependencies hash]- v5 + 32 * v5;
  tags = self->_tags;
  v8 = self->_capabilities - v6 + 32 * v6;
  return [(NSArray *)tags hash]- v8 + 32 * v8;
}

- (TRITaskRecord)initWithCoder:(id)coder
{
  v84[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
  v6 = v5;
  if (v5)
  {
    v50 = v5;
    selfCopy = self;
    v67 = objc_alloc(MEMORY[0x277CBEB98]);
    v66 = objc_opt_class();
    v65 = objc_opt_class();
    v64 = objc_opt_class();
    v63 = objc_opt_class();
    v62 = objc_opt_class();
    v61 = objc_opt_class();
    v60 = objc_opt_class();
    v59 = objc_opt_class();
    v58 = objc_opt_class();
    v57 = objc_opt_class();
    v56 = objc_opt_class();
    v55 = objc_opt_class();
    v54 = objc_opt_class();
    v53 = objc_opt_class();
    v52 = objc_opt_class();
    v68 = coderCopy;
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v49 = v7;
    coderCopy = v68;
    v17 = [v67 initWithObjects:{v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v49, v8, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v68 decodeObjectOfClasses:v17 forKey:@"task"];

    if (!v18)
    {
      selfCopy2 = [v68 error];

      if (selfCopy2)
      {
        v18 = 0;
        selfCopy2 = 0;
        v6 = v50;
        self = selfCopy;
LABEL_34:

        goto LABEL_35;
      }

      v81 = *MEMORY[0x277CCA450];
      v82 = @"Retrieved nil serialized value for nonnull TRITaskRecord.task";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v19];
      [v68 failWithError:v21];
      goto LABEL_31;
    }

    v19 = [v68 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    if (v19)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRITaskRecord key startDate (expected %@, decoded %@)", v21, v23, 0];
        v79 = *MEMORY[0x277CCA450];
        v80 = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:3 userInfo:v25];
        [v68 failWithError:v26];
LABEL_24:

LABEL_25:
LABEL_26:
        selfCopy2 = 0;
        v6 = v50;
        self = selfCopy;
        goto LABEL_27;
      }

      goto LABEL_12;
    }

    error = [v68 error];

    if (!error)
    {
LABEL_12:
      v29 = objc_alloc(MEMORY[0x277CBEB98]);
      v30 = objc_opt_class();
      v31 = [v29 initWithObjects:{v30, objc_opt_class(), 0}];
      v21 = [v68 decodeObjectOfClasses:v31 forKey:@"dependencies"];

      if (v21)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = objc_opt_class();
          v23 = NSStringFromClass(v37);
          v38 = objc_opt_class();
          v24 = NSStringFromClass(v38);
          v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRITaskRecord key dependencies (expected %@, decoded %@)", v23, v24, 0];
          v75 = *MEMORY[0x277CCA450];
          v76 = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:3 userInfo:v26];
          [v68 failWithError:v39];
LABEL_23:

          goto LABEL_24;
        }

        v32 = [v68 decodeInt64ForKey:@"capabilities"];
        if (v32)
        {
LABEL_15:
          v33 = objc_alloc(MEMORY[0x277CBEB98]);
          v34 = objc_opt_class();
          v35 = [v33 initWithObjects:{v34, objc_opt_class(), 0}];
          v23 = [v68 decodeObjectOfClasses:v35 forKey:@"tags"];

          if (!v23)
          {
            error2 = [v68 error];

            self = selfCopy;
            if (!error2)
            {
              v71 = *MEMORY[0x277CCA450];
              v72 = @"Retrieved nil serialized value for nonnull TRITaskRecord.tags";
              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
              v45 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v44];
              [v68 failWithError:v45];
            }

            v23 = 0;
            selfCopy2 = 0;
            v6 = v50;
            goto LABEL_27;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = v50;
            self = [(TRITaskRecord *)selfCopy initWithTaskId:v50 task:v18 startDate:v19 dependencies:v21 capabilities:v32 tags:v23];
            selfCopy2 = self;
LABEL_27:

LABEL_32:
            goto LABEL_33;
          }

          v46 = objc_opt_class();
          v24 = NSStringFromClass(v46);
          v47 = objc_opt_class();
          v25 = NSStringFromClass(v47);
          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRITaskRecord key tags (expected %@, decoded %@)", v24, v25, 0];
          v69 = *MEMORY[0x277CCA450];
          v70 = v26;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v48 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:3 userInfo:v39];
          [v68 failWithError:v48];

          goto LABEL_23;
        }

        error3 = [v68 error];

        if (!error3)
        {
          if (([v68 containsValueForKey:@"capabilities"] & 1) == 0)
          {
            v73 = *MEMORY[0x277CCA450];
            v74 = @"Missing serialized value for TRITaskRecord.capabilities";
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:1 userInfo:v23];
            [v68 failWithError:v24];
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      else
      {
        error4 = [v68 error];

        if (!error4)
        {
          v77 = *MEMORY[0x277CCA450];
          v78 = @"Retrieved nil serialized value for nonnull TRITaskRecord.dependencies";
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v40 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v23];
          [v68 failWithError:v40];

          v21 = 0;
          goto LABEL_26;
        }

        v21 = 0;
      }

      selfCopy2 = 0;
LABEL_31:
      v6 = v50;
      self = selfCopy;
      goto LABEL_32;
    }

    v19 = 0;
    selfCopy2 = 0;
    v6 = v50;
    self = selfCopy;
LABEL_33:

    goto LABEL_34;
  }

  selfCopy2 = [coderCopy error];

  if (!selfCopy2)
  {
    v83 = *MEMORY[0x277CCA450];
    v84[0] = @"Retrieved nil serialized value for nonnull TRITaskRecord.taskId";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v18];
    [coderCopy failWithError:v19];
    goto LABEL_33;
  }

  selfCopy2 = 0;
LABEL_35:

  return selfCopy2;
}

- (void)defaultEncodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskId = self->_taskId;
  v10 = coderCopy;
  if (taskId)
  {
    [coderCopy encodeObject:taskId forKey:@"taskId"];
    coderCopy = v10;
  }

  task = self->_task;
  if (task)
  {
    [v10 encodeObject:task forKey:@"task"];
    coderCopy = v10;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    [v10 encodeObject:startDate forKey:@"startDate"];
    coderCopy = v10;
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {
    [v10 encodeObject:dependencies forKey:@"dependencies"];
    coderCopy = v10;
  }

  [coderCopy encodeInt64:self->_capabilities forKey:@"capabilities"];
  tags = self->_tags;
  if (tags)
  {
    [v10 encodeObject:tags forKey:@"tags"];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:581 description:{@"Do not use NSKeyedArchiver to persist instances of TRITaskRecord to disk. If you want to persist this object to disk, create a protobuf schema."}];
  }

  [(TRITaskRecord *)self defaultEncodeWithCoder:coderCopy];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = *&self->_taskId;
  startDate = self->_startDate;
  dependencies = self->_dependencies;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_capabilities];
  v7 = [v3 initWithFormat:@"<TRITaskRecord | taskId:%@ task:%@ startDate:%@ dependencies:%@ capabilities:%@ tags:%@>", v9, startDate, dependencies, v6, self->_tags];

  return v7;
}

@end