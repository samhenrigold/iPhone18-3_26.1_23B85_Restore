@interface GEOPDFlyover
- (GEOPDFlyover)init;
- (void)clearCameraPaths;
- (void)clearLabelFrames;
- (void)dealloc;
@end

@implementation GEOPDFlyover

- (GEOPDFlyover)init
{
  v6.receiver = self;
  v6.super_class = GEOPDFlyover;
  v2 = [(GEOPDFlyover *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)dealloc
{
  [(GEOPDFlyover *)self clearCameraPaths];
  [(GEOPDFlyover *)self clearLabelFrames];
  v3.receiver = self;
  v3.super_class = GEOPDFlyover;
  [(GEOPDFlyover *)&v3 dealloc];
}

- (void)clearCameraPaths
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 2u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x20u;
  self->_cameraPathsSpace = 0;
  self->_cameraPathsCount = 0;
  free(self->_cameraPaths);
  self->_cameraPaths = 0;
}

- (void)clearLabelFrames
{
  os_unfair_lock_lock_with_options();
  *&self->_flags |= 4u;
  os_unfair_lock_unlock(&self->_readerLock);
  *&self->_flags |= 0x20u;
  self->_labelFramesSpace = 0;
  self->_labelFramesCount = 0;
  free(self->_labelFrames);
  self->_labelFrames = 0;
}

@end