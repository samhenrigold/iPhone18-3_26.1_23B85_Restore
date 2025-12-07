@interface MBDriveUploadBatch
- (MBDriveUploadBatch)initWithPaths:(id)paths size:(unint64_t)size last:(BOOL)last;
@end

@implementation MBDriveUploadBatch

- (MBDriveUploadBatch)initWithPaths:(id)paths size:(unint64_t)size last:(BOOL)last
{
  lastCopy = last;
  pathsCopy = paths;
  v12.receiver = self;
  v12.super_class = MBDriveUploadBatch;
  v9 = [(MBDriveUploadBatch *)&v12 init];
  v10 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(dword_100421AA8, 1u, memory_order_relaxed);
    [(MBDriveUploadBatch *)v9 setIndex:?];
    [(MBDriveUploadBatch *)v10 setPaths:pathsCopy];
    [(MBDriveUploadBatch *)v10 setSize:size];
    [(MBDriveUploadBatch *)v10 setLast:lastCopy];
    [(MBDriveUploadBatch *)v10 setMinUploadedFileSize:-1];
  }

  return v10;
}

@end