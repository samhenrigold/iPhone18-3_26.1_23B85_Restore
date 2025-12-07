@interface HDSafeCMSwimData
- (HDSafeCMSwimData)initWithSwimData:(id)data;
@end

@implementation HDSafeCMSwimData

- (HDSafeCMSwimData)initWithSwimData:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = HDSafeCMSwimData;
  v5 = [(HDSafeCMSwimData *)&v16 init];
  if (v5)
  {
    startDate = [dataCopy startDate];
    v7 = objc_msgSend_copy(startDate);
    startDate = v5->_startDate;
    v5->_startDate = v7;

    endDate = [dataCopy endDate];
    v10 = objc_msgSend_copy(endDate);
    endDate = v5->_endDate;
    v5->_endDate = v10;

    sourceId = [dataCopy sourceId];
    v13 = objc_msgSend_copy(sourceId);
    sourceId = v5->_sourceId;
    v5->_sourceId = v13;
  }

  return v5;
}

@end