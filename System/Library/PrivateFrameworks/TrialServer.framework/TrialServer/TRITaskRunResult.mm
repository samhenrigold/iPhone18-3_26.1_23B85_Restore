@interface TRITaskRunResult
+ (id)resultWithRunStatus:(int)status reportResultToServer:(BOOL)server nextTasks:(id)tasks earliestRetryDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResult:(id)result;
- (TRITaskRunResult)initWithRunStatus:(int)status reportResultToServer:(BOOL)server nextTasks:(id)tasks earliestRetryDate:(id)date;
- (id)copyWithReplacementEarliestRetryDate:(id)date;
- (id)copyWithReplacementNextTasks:(id)tasks;
- (id)copyWithReplacementReportResultToServer:(BOOL)server;
- (id)copyWithReplacementRunStatus:(int)status;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRITaskRunResult

- (TRITaskRunResult)initWithRunStatus:(int)status reportResultToServer:(BOOL)server nextTasks:(id)tasks earliestRetryDate:(id)date
{
  tasksCopy = tasks;
  dateCopy = date;
  if (!tasksCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"nextTasks != nil"}];
  }

  v18.receiver = self;
  v18.super_class = TRITaskRunResult;
  v14 = [(TRITaskRunResult *)&v18 init];
  v15 = v14;
  if (v14)
  {
    v14->_runStatus = status;
    v14->_reportResultToServer = server;
    objc_storeStrong(&v14->_nextTasks, tasks);
    objc_storeStrong(&v15->_earliestRetryDate, date);
  }

  return v15;
}

+ (id)resultWithRunStatus:(int)status reportResultToServer:(BOOL)server nextTasks:(id)tasks earliestRetryDate:(id)date
{
  serverCopy = server;
  v8 = *&status;
  dateCopy = date;
  tasksCopy = tasks;
  v12 = [[self alloc] initWithRunStatus:v8 reportResultToServer:serverCopy nextTasks:tasksCopy earliestRetryDate:dateCopy];

  return v12;
}

- (id)copyWithReplacementRunStatus:(int)status
{
  v3 = *&status;
  v5 = objc_alloc(objc_opt_class());
  reportResultToServer = self->_reportResultToServer;
  nextTasks = self->_nextTasks;
  earliestRetryDate = self->_earliestRetryDate;

  return [v5 initWithRunStatus:v3 reportResultToServer:reportResultToServer nextTasks:nextTasks earliestRetryDate:earliestRetryDate];
}

- (id)copyWithReplacementReportResultToServer:(BOOL)server
{
  serverCopy = server;
  v5 = objc_alloc(objc_opt_class());
  runStatus = self->_runStatus;
  nextTasks = self->_nextTasks;
  earliestRetryDate = self->_earliestRetryDate;

  return [v5 initWithRunStatus:runStatus reportResultToServer:serverCopy nextTasks:nextTasks earliestRetryDate:earliestRetryDate];
}

- (id)copyWithReplacementNextTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = [objc_alloc(objc_opt_class()) initWithRunStatus:self->_runStatus reportResultToServer:self->_reportResultToServer nextTasks:tasksCopy earliestRetryDate:self->_earliestRetryDate];

  return v5;
}

- (id)copyWithReplacementEarliestRetryDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithRunStatus:self->_runStatus reportResultToServer:self->_reportResultToServer nextTasks:self->_nextTasks earliestRetryDate:dateCopy];

  return v5;
}

- (BOOL)isEqualToResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy && (runStatus = self->_runStatus, runStatus == [resultCopy runStatus]) && (reportResultToServer = self->_reportResultToServer, reportResultToServer == objc_msgSend(v5, "reportResultToServer")) && (v8 = self->_nextTasks == 0, objc_msgSend(v5, "nextTasks"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 != 0, v9, v8 != v10) && ((nextTasks = self->_nextTasks) == 0 || (objc_msgSend(v5, "nextTasks"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[NSArray isEqual:](nextTasks, "isEqual:", v12), v12, v13)) && (v14 = self->_earliestRetryDate == 0, objc_msgSend(v5, "earliestRetryDate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 != 0, v15, v14 != v16))
  {
    earliestRetryDate = self->_earliestRetryDate;
    if (earliestRetryDate)
    {
      earliestRetryDate = [v5 earliestRetryDate];
      v19 = [(NSDate *)earliestRetryDate isEqual:earliestRetryDate];
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskRunResult *)self isEqualToResult:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->_reportResultToServer - self->_runStatus + 32 * self->_runStatus;
  v4 = [(NSArray *)self->_nextTasks hash]- v3 + 32 * v3;
  return [(NSDate *)self->_earliestRetryDate hash]- v4 + 32 * v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_runStatus];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportResultToServer];
  v6 = [v3 initWithFormat:@"<TRITaskRunResult | runStatus:%@ reportResultToServer:%@ nextTasks:%@ earliestRetryDate:%@>", v4, v5, self->_nextTasks, self->_earliestRetryDate];

  return v6;
}

@end