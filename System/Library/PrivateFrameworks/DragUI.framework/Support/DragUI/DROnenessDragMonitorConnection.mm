@interface DROnenessDragMonitorConnection
- (BOOL)_shouldNotifyForSession:(id)session;
@end

@implementation DROnenessDragMonitorConnection

- (BOOL)_shouldNotifyForSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = DROnenessDragMonitorConnection;
  if (![(DRDragMonitorConnection *)&v8 _shouldNotifyForSession:sessionCopy])
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  originatedFromContinuityDisplay = [sessionCopy originatedFromContinuityDisplay];
  if ((originatedFromContinuityDisplay & 1) == 0)
  {
    if (qword_1000634B8 != -1)
    {
      sub_10002F868();
    }

    if (byte_1000634C0 == 1)
    {
      v6 = sub_100005678(originatedFromContinuityDisplay);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

@end