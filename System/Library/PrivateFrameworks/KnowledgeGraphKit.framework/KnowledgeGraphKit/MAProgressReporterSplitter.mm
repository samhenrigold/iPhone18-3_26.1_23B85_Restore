@interface MAProgressReporterSplitter
- (MAProgressReporterSplitter)initWithProgressReporter:(id)reporter;
- (id)childProgressReporterToCheckpoint:(double)checkpoint;
@end

@implementation MAProgressReporterSplitter

- (id)childProgressReporterToCheckpoint:(double)checkpoint
{
  v12 = *MEMORY[0x277D85DE8];
  if (checkpoint > 1.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    checkpointCopy2 = checkpoint;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: newCheckpoint (%f) > 1.0", &v8, 0xCu);
  }

  previousCheckpoint = self->_previousCheckpoint;
  if (previousCheckpoint > checkpoint && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = 134218240;
    checkpointCopy2 = checkpoint;
    v10 = 2048;
    v11 = previousCheckpoint;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: newCheckpoint (%f) < _previousCheckpoint (%f)", &v8, 0x16u);
    previousCheckpoint = self->_previousCheckpoint;
  }

  v6 = [(MAProgressReporter *)self->_progressReporter childProgressReporterFromStart:previousCheckpoint toEnd:checkpoint];
  self->_previousCheckpoint = checkpoint;

  return v6;
}

- (MAProgressReporterSplitter)initWithProgressReporter:(id)reporter
{
  reporterCopy = reporter;
  v9.receiver = self;
  v9.super_class = MAProgressReporterSplitter;
  v6 = [(MAProgressReporterSplitter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progressReporter, reporter);
    v7->_previousCheckpoint = 0.0;
  }

  return v7;
}

@end