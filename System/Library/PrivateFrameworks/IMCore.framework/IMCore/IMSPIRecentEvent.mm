@interface IMSPIRecentEvent
- (IMSPIRecentEvent)initWithHandle:(id)handle date:(id)date;
- (IMSPIRecentEvent)initWithLabelID:(id)d date:(id)date;
- (id)description;
@end

@implementation IMSPIRecentEvent

- (IMSPIRecentEvent)initWithHandle:(id)handle date:(id)date
{
  handleCopy = handle;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = IMSPIRecentEvent;
  v8 = [(IMSPIRecentEvent *)&v12 init];
  if (v8)
  {
    v9 = [handleCopy copy];
    handle = v8->_handle;
    v8->_handle = v9;

    objc_storeStrong(&v8->_date, date);
  }

  return v8;
}

- (IMSPIRecentEvent)initWithLabelID:(id)d date:(id)date
{
  dCopy = d;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = IMSPIRecentEvent;
  v8 = [(IMSPIRecentEvent *)&v12 init];
  if (v8)
  {
    v9 = [dCopy copy];
    labelID = v8->_labelID;
    v8->_labelID = v9;

    objc_storeStrong(&v8->_date, date);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  handle = [(IMSPIRecentEvent *)self handle];
  labelID = [(IMSPIRecentEvent *)self labelID];
  date = [(IMSPIRecentEvent *)self date];
  v7 = [v3 stringWithFormat:@"IMSPIRecentEvent: %p [Handle: %@  LabelID: %@ Date: %@]", self, handle, labelID, date];

  return v7;
}

@end