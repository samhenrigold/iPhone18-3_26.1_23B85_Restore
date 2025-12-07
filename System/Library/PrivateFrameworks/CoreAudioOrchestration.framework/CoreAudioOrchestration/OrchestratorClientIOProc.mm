@interface OrchestratorClientIOProc
- (OrchestratorClientIOProc)init;
- (int)destroyHALIOProc;
- (int)startHALIOProc;
- (int)startHALIOProcAtTime:(unint64_t)time;
- (int)stopHALIOProc;
@end

@implementation OrchestratorClientIOProc

- (OrchestratorClientIOProc)init
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = OrchestratorClientIOProc;
  v2 = [(OrchestratorClientIOProc *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mDeviceID = 0;
    v2->mIOProcID = 0;
    IOProcBrain::IOProcBrain(&v6);
    v3->mIOBrain.mClientIOProc = v6.mClientIOProc;
    ADMIO::operator=(&v3->mIOBrain.admIOProc, &v6.admIOProc);
    IOProcBrain::~IOProcBrain(&v6);
  }

  return v3;
}

- (int)destroyHALIOProc
{
  mIOProcID = self->mIOProcID;
  if (mIOProcID)
  {
    return DestroyIOProc(self->mDeviceID, mIOProcID);
  }

  else
  {
    return 1852990585;
  }
}

- (int)startHALIOProc
{
  mIOProcID = self->mIOProcID;
  if (mIOProcID)
  {
    return StartIOProc(self->mDeviceID, mIOProcID);
  }

  else
  {
    return 1852990585;
  }
}

- (int)startHALIOProcAtTime:(unint64_t)time
{
  mIOProcID = self->mIOProcID;
  if (mIOProcID)
  {
    return StartIOProcAtTime(self->mDeviceID, mIOProcID, time);
  }

  else
  {
    return 1852990585;
  }
}

- (int)stopHALIOProc
{
  mIOProcID = self->mIOProcID;
  if (mIOProcID)
  {
    return StopIOProc(self->mDeviceID, mIOProcID);
  }

  else
  {
    return 1852990585;
  }
}

@end