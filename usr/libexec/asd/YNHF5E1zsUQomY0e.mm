@interface YNHF5E1zsUQomY0e
+ (int64_t)e5e78c18a4be83e1:(_KUwyEjpVZR65eUyl *)e5e78c18a4be83e1 spData:(const _eipjLVDiD7LNwlPc *)data;
- (YNHF5E1zsUQomY0e)initWithtaDFBApmLBObrNlM:(_KUwyEjpVZR65eUyl *)m itCyNcNHxjurvzrS:(id)s;
- (void)nQ82YhFf5OQDL4Qk:(id)qk UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs TWWnmIjkBlMfHmma:(id)hmma;
@end

@implementation YNHF5E1zsUQomY0e

+ (int64_t)e5e78c18a4be83e1:(_KUwyEjpVZR65eUyl *)e5e78c18a4be83e1 spData:(const _eipjLVDiD7LNwlPc *)data
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  return data->evaluationStartDate - 1000 * v7.tv_sec + e5e78c18a4be83e1->var3 + v7.tv_usec / -1000;
}

- (YNHF5E1zsUQomY0e)initWithtaDFBApmLBObrNlM:(_KUwyEjpVZR65eUyl *)m itCyNcNHxjurvzrS:(id)s
{
  sCopy = s;
  v11.receiver = self;
  v11.super_class = YNHF5E1zsUQomY0e;
  v8 = [(YNHF5E1zsUQomY0e *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_LvlWuLAGTFjI8z1M = m;
    objc_storeStrong(&v8->_fubP36M2a0RaVUtL, s);
  }

  return v9;
}

- (void)nQ82YhFf5OQDL4Qk:(id)qk UtPlzRffoEpw7Ue1:(_eipjLVDiD7LNwlPc *)ue1 SFkZRA5Ek9YzhDRs:(unsigned int)rs TWWnmIjkBlMfHmma:(id)hmma
{
  v7 = *&rs;
  qkCopy = qk;
  hmmaCopy = hmma;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2810000000;
  v26[3] = &unk_1005A5D0D;
  v27 = 0;
  objc_initWeak(&location, qkCopy);
  if (qword_1006D7C48 != -1)
  {
    sub_100593400();
  }

  v12 = [YNHF5E1zsUQomY0e e5e78c18a4be83e1:self->_LvlWuLAGTFjI8z1M spData:ue1];
  if (v12 < 0)
  {
    v17 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:200];
    (*(qkCopy + 2))(qkCopy, v17);
  }

  else
  {
    v13 = dispatch_time(0, 1000000 * v12);
    v14 = qword_1006D7C50;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000078B8;
    block[3] = &unk_10068EF58;
    block[4] = v26;
    objc_copyWeak(&v24, &location);
    dispatch_after(v13, v14, block);
    fubP36M2a0RaVUtL = [(YNHF5E1zsUQomY0e *)self fubP36M2a0RaVUtL];
    LvlWuLAGTFjI8z1M = self->_LvlWuLAGTFjI8z1M;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000794C;
    v20[3] = &unk_10068EF80;
    v22 = v26;
    v21 = qkCopy;
    v18 = *&ue1->profileIDPrefix;
    profileParsedDate = ue1->profileParsedDate;
    [fubP36M2a0RaVUtL PLMCCRRqEw4moT9R:LvlWuLAGTFjI8z1M UtPlzRffoEpw7Ue1:&v18 SFkZRA5Ek9YzhDRs:v7 TWWnmIjkBlMfHmma:hmmaCopy withCompletion:v20];

    [(YNHF5E1zsUQomY0e *)self setFubP36M2a0RaVUtL:0];
    objc_destroyWeak(&v24);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(v26, 8);
}

@end