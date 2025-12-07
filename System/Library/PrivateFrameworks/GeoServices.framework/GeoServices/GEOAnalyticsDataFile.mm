@interface GEOAnalyticsDataFile
- (void)close;
- (void)dealloc;
@end

@implementation GEOAnalyticsDataFile

- (void)close
{
  fd = self->_fd;
  if ((fd & 0x80000000) == 0)
  {
    close(fd);
    self->_fd = -1;
  }
}

- (void)dealloc
{
  [(GEOAnalyticsDataFile *)self close];
  v3.receiver = self;
  v3.super_class = GEOAnalyticsDataFile;
  [(GEOAnalyticsDataFile *)&v3 dealloc];
}

@end