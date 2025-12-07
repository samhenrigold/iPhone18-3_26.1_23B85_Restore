@interface _PGPictureInPictureContainerView
- (PGPictureInPictureViewController)vcForDebugging;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation _PGPictureInPictureContainerView

- (void)willMoveToSuperview:(id)superview
{
  v17 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _PGPictureInPictureContainerView;
  superviewCopy = superview;
  [(_PGPictureInPictureContainerView *)&v10 willMoveToSuperview:superviewCopy];
  WeakRetained = objc_loadWeakRetained(&self->_vcForDebugging);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  v7 = [superviewCopy isEqual:viewIfLoaded];

  v9 = PGLogCommon(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[_PGPictureInPictureContainerView willMoveToSuperview:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 1024;
    v16 = v7;
    _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %p newSuperview is VC's view: %{BOOL}u", buf, 0x1Cu);
  }
}

- (void)didMoveToSuperview
{
  v16 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _PGPictureInPictureContainerView;
  [(_PGPictureInPictureContainerView *)&v9 didMoveToSuperview];
  superview = [(_PGPictureInPictureContainerView *)self superview];
  WeakRetained = objc_loadWeakRetained(&self->_vcForDebugging);
  viewIfLoaded = [WeakRetained viewIfLoaded];
  v6 = [superview isEqual:viewIfLoaded];

  v8 = PGLogCommon(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "[_PGPictureInPictureContainerView didMoveToSuperview]";
    v12 = 2048;
    selfCopy = self;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p newSuperview is VC's view: %{BOOL}u", buf, 0x1Cu);
  }
}

- (PGPictureInPictureViewController)vcForDebugging
{
  WeakRetained = objc_loadWeakRetained(&self->_vcForDebugging);

  return WeakRetained;
}

@end