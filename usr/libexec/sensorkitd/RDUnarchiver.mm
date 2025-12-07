@interface RDUnarchiver
+ (void)initialize;
- (void)dealloc;
@end

@implementation RDUnarchiver

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_1000719C0 = os_log_create("com.apple.SensorKit", "Unarchiver");
  }
}

- (void)dealloc
{
  if (self->_readValid)
  {
    archive_read_free();
  }

  if (self->_writeValid)
  {
    archive_write_free();
  }

  self->_outputURL = 0;
  v3.receiver = self;
  v3.super_class = RDUnarchiver;
  [(RDUnarchiver *)&v3 dealloc];
}

@end