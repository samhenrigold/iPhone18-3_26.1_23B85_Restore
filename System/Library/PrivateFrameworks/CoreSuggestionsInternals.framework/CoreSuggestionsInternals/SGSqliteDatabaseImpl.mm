@interface SGSqliteDatabaseImpl
- (BOOL)handleError:(int64_t)error sqliteError:(int)sqliteError forQuery:(id)query onError:(id)onError;
- (SGSqliteDatabaseImpl)initWithFilename:(id)filename flags:(int)flags error:(id *)error sgDb:(id)db;
@end

@implementation SGSqliteDatabaseImpl

- (BOOL)handleError:(int64_t)error sqliteError:(int)sqliteError forQuery:(id)query onError:(id)onError
{
  v7 = *&sqliteError;
  if (error >= 6)
  {
    errorCopy = -1;
  }

  else
  {
    errorCopy = error;
  }

  onErrorCopy = onError;
  queryCopy = query;
  WeakRetained = objc_loadWeakRetained(&self->_sgDb);
  v13 = [WeakRetained handleError:errorCopy sqliteError:v7 forQuery:queryCopy onError:onErrorCopy];

  return v13;
}

- (SGSqliteDatabaseImpl)initWithFilename:(id)filename flags:(int)flags error:(id *)error sgDb:(id)db
{
  v7 = *&flags;
  dbCopy = db;
  v14.receiver = self;
  v14.super_class = SGSqliteDatabaseImpl;
  v11 = [(SGSqliteDatabaseImpl *)&v14 initWithFilename:filename flags:v7 error:error errorHandler:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_sgDb, dbCopy);
  }

  return v12;
}

@end