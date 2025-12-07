@interface DTTapStatusMemo
- (DTTapStatusMemo)initWithStatus:(unsigned int)status notice:(id)notice;
- (DTTapStatusMemo)initWithStatus:(unsigned int)status notice:(id)notice info:(id)info;
- (DTTapStatusMemo)initWithStatus:(unsigned int)status notice:(id)notice info:(id)info timestamp:(unint64_t)timestamp;
@end

@implementation DTTapStatusMemo

- (DTTapStatusMemo)initWithStatus:(unsigned int)status notice:(id)notice
{
  v4 = *&status;
  noticeCopy = notice;
  v7 = [(DTTapStatusMemo *)self initWithStatus:v4 notice:noticeCopy info:0 timestamp:mach_absolute_time()];

  return v7;
}

- (DTTapStatusMemo)initWithStatus:(unsigned int)status notice:(id)notice info:(id)info
{
  v6 = *&status;
  infoCopy = info;
  noticeCopy = notice;
  v10 = [(DTTapStatusMemo *)self initWithStatus:v6 notice:noticeCopy info:infoCopy timestamp:mach_absolute_time()];

  return v10;
}

- (DTTapStatusMemo)initWithStatus:(unsigned int)status notice:(id)notice info:(id)info timestamp:(unint64_t)timestamp
{
  noticeCopy = notice;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = DTTapStatusMemo;
  v13 = [(DTTapStatusMemo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    *(v13 + 3) = status;
    objc_storeStrong(v13 + 3, notice);
    objc_storeStrong(&v14->_notice, info);
    *&v14->_status = timestamp;
  }

  return v14;
}

@end