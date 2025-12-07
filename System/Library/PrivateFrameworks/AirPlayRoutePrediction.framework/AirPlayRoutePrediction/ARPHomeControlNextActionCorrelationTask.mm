@interface ARPHomeControlNextActionCorrelationTask
- (ARPHomeControlNextActionCorrelationTask)initWithCorrelationsFile:(id)file;
- (void)execute;
@end

@implementation ARPHomeControlNextActionCorrelationTask

- (ARPHomeControlNextActionCorrelationTask)initWithCorrelationsFile:(id)file
{
  fileCopy = file;
  v13.receiver = self;
  v13.super_class = ARPHomeControlNextActionCorrelationTask;
  v5 = [(ARPHomeControlNextActionCorrelationTask *)&v13 init];
  if (v5)
  {
    v6 = [fileCopy copy];
    file = v5->_file;
    v5->_file = v6;

    v8 = objc_alloc_init(ARPHomeControlCorrelationUtilities);
    utilities = v5->_utilities;
    v5->_utilities = v8;

    v10 = +[ARPHomeControlSuggester suggester];
    suggester = v5->_suggester;
    v5->_suggester = v10;
  }

  return v5;
}

- (void)execute
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_23EB15000, a2, OS_LOG_TYPE_ERROR, "Error reading persisted nextAction home controls archive file: %@", &v2, 0xCu);
}

@end