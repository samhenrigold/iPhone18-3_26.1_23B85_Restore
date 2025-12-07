@interface STSExpressEventInfoWithDetail
- (STSExpressEventInfoWithDetail)initWithState:(unsigned int)state detail:(id)detail;
@end

@implementation STSExpressEventInfoWithDetail

- (STSExpressEventInfoWithDetail)initWithState:(unsigned int)state detail:(id)detail
{
  v5 = *&state;
  detailCopy = detail;
  v11.receiver = self;
  v11.super_class = STSExpressEventInfoWithDetail;
  v8 = [(STSExpressEventInfo *)&v11 initWithState:v5];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_detail, detail);
  }

  return v9;
}

@end