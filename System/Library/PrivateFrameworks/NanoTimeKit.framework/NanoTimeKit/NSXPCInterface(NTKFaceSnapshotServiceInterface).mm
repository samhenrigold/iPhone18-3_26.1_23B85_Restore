@interface NSXPCInterface(NTKFaceSnapshotServiceInterface)
+ (id)faceSnapshotServiceInterface;
@end

@implementation NSXPCInterface(NTKFaceSnapshotServiceInterface)

+ (id)faceSnapshotServiceInterface
{
  if (faceSnapshotServiceInterface_onceToken != -1)
  {
    +[NSXPCInterface(NTKFaceSnapshotServiceInterface) faceSnapshotServiceInterface];
  }

  v2 = faceSnapshotServiceInterface_interface;

  return v2;
}

@end