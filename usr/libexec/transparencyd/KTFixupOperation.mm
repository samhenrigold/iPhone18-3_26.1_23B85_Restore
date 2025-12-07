@interface KTFixupOperation
- (KTFixupOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation KTFixupOperation

- (KTFixupOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState
{
  dependenicsCopy = dependenics;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = KTFixupOperation;
  v11 = [(KTGroupOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(KTFixupOperation *)v11 setDeps:dependenicsCopy];
    [(KTFixupOperation *)v12 setErrorState:errorStateCopy];
    [(KTFixupOperation *)v12 setIntendedState:stateCopy];
    v13 = v12;
  }

  return v12;
}

- (void)groupStart
{
  intendedState = [(KTFixupOperation *)self intendedState];
  [(KTFixupOperation *)self setNextState:intendedState];

  v4 = objc_alloc_init(NSOperation);
  [(KTFixupOperation *)self setFinishedOp:v4];

  finishedOp = [(KTFixupOperation *)self finishedOp];
  [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  [NSArray arrayWithObjects:v42 count:2];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v30 = *v36;
    *&v8 = 138412290;
    v28 = v8;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        fixupName = [objc_opt_class() fixupName];
        deps = [(KTFixupOperation *)self deps];
        smDataStore = [deps smDataStore];
        v13 = [smDataStore haveDoneFixup:fixupName];

        if (v13)
        {
          if (qword_10038BBB0 != -1)
          {
            sub_100247260();
          }

          v14 = qword_10038BBB8;
          if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_INFO))
          {
            *buf = v28;
            v40 = fixupName;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Already performed fixup %@", buf, 0xCu);
          }
        }

        else
        {
          v15 = objc_alloc(objc_opt_class());
          deps2 = [(KTFixupOperation *)self deps];
          v17 = [v15 initWithDependencies:deps2];

          if (!v17)
          {
            if (qword_10038BBB0 != -1)
            {
              sub_100247238();
            }

            v26 = qword_10038BBB8;
            if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_ERROR))
            {
              *buf = v28;
              v40 = fixupName;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to create fixup operation %@", buf, 0xCu);
            }

            operationQueue3 = obj;
            goto LABEL_33;
          }

          doFixupOperation = [v17 doFixupOperation];
          v19 = doFixupOperation;
          if (doFixupOperation)
          {
            if (v6)
            {
              [doFixupOperation addDependency:v6];
            }

            objc_initWeak(buf, self);
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100015A14;
            v31[3] = &unk_1003174D8;
            objc_copyWeak(&v34, buf);
            v32 = fixupName;
            v20 = v19;
            v33 = v20;
            v21 = [NSBlockOperation blockOperationWithBlock:v31];

            [v21 addDependency:v20];
            operationQueue = [(KTGroupOperation *)self operationQueue];
            [operationQueue addOperation:v20];

            operationQueue2 = [(KTGroupOperation *)self operationQueue];
            [operationQueue2 addOperation:v21];

            objc_destroyWeak(&v34);
            objc_destroyWeak(buf);

            v6 = v21;
          }

          else
          {
            if (qword_10038BBB0 != -1)
            {
              sub_100247210();
            }

            v24 = qword_10038BBB8;
            if (os_log_type_enabled(qword_10038BBB8, OS_LOG_TYPE_INFO))
            {
              *buf = v28;
              v40 = fixupName;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Fixup %@ can't run right now, skipping for now", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (v6)
    {
      finishedOp2 = [(KTFixupOperation *)self finishedOp];
      [finishedOp2 addDependency:v6];
      goto LABEL_31;
    }
  }

  else
  {
    finishedOp2 = obj;
LABEL_31:
  }

  operationQueue3 = [(KTGroupOperation *)self operationQueue];
  fixupName = [(KTFixupOperation *)self finishedOp];
  [operationQueue3 addOperation:fixupName];
LABEL_33:
}

@end