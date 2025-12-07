@interface SUInstallationConstraintMonitorBase
- (SUDownload)download;
- (SUInstallOptions)installOptions;
- (SUInstallationConstraintMonitorDelegate)delegate;
- (id)initOnQueue:(id)queue withDownload:(id)download andInstallOptions:(id)options;
- (id)initOnQueue:(id)queue withRepresentedInstallationConstraints:(unint64_t)constraints andDownload:(id)download andInstallOptions:(id)options;
- (unint64_t)unsatisfiedConstraints;
- (unint64_t)unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)constraints;
- (void)setDelegate:(id)delegate;
@end

@implementation SUInstallationConstraintMonitorBase

- (id)initOnQueue:(id)queue withDownload:(id)download andInstallOptions:(id)options
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUInstallationConstraintMonitorBase.m" lineNumber:31 description:@"Please use the subclass version: -initOnQueue:withRepresentedInstallationConstraints:andDownload:andInstallOptions"];

  return 0;
}

- (id)initOnQueue:(id)queue withRepresentedInstallationConstraints:(unint64_t)constraints andDownload:(id)download andInstallOptions:(id)options
{
  queueCopy = queue;
  downloadCopy = download;
  optionsCopy = options;
  BSDispatchQueueAssert();
  v17.receiver = self;
  v17.super_class = SUInstallationConstraintMonitorBase;
  v14 = [(SUInstallationConstraintMonitorBase *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_download, download);
    v15->_representedConstraints = constraints;
    objc_storeStrong(&v15->_installOptions, options);
    objc_storeStrong(&v15->_queue, queue);
  }

  return v15;
}

- (SUDownload)download
{
  BSDispatchQueueAssert();
  download = self->_download;

  return download;
}

- (SUInstallOptions)installOptions
{
  BSDispatchQueueAssert();
  installOptions = self->_installOptions;

  return installOptions;
}

- (unint64_t)unsatisfiedConstraints
{
  BSDispatchQueueAssert();

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

- (SUInstallationConstraintMonitorDelegate)delegate
{
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_queue_delegate, obj);
    v5 = obj;
  }
}

- (unint64_t)unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)constraints
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SUInstallationConstraintMonitorBase.m" lineNumber:100 description:@"Not Implemented"];

  return 0;
}

@end