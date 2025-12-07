@interface _CLUnSupportedService
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
@end

@implementation _CLUnSupportedService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  blockedCopy = blocked;
  v8 = index + 1;
  if (v8 < objc_msgSend_count(blockedCopy, v5, v6))
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(blockedCopy, v7, v8);
    objc_msgSend_becameFatallyBlocked_index_(v9, v10, blockedCopy, v8);
  }
}

+ (id)getSilo
{
  if (qword_1ECE5D918 != -1)
  {
    dispatch_once(&qword_1ECE5D918, &unk_1F5AC6AC8);
  }

  return 0;
}

@end