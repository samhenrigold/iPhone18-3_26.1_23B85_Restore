@interface DYEAGLDebugPlaybackEngine
- (BOOL)shouldPerformPlaybackLoopIteration:(unsigned int)iteration;
- (DYEAGLDebugPlaybackEngine)initWithCaptureStore:(id)store;
- (DYEAGLDebugPlaybackEngineDelegate)delegate;
- (DYEAGLDebugPlaybackEngineDelegate)strongDelegate;
- (id)newFunctionPlayer;
- (void)performPlaybackLoopIterationPostCaptureActions:(unsigned int)actions;
- (void)performPlaybackLoopIterationPreCaptureActions:(unsigned int)actions;
@end

@implementation DYEAGLDebugPlaybackEngine

- (DYEAGLDebugPlaybackEngine)initWithCaptureStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = DYEAGLDebugPlaybackEngine;
  v5 = [(DYEAGLDebugPlaybackEngine *)&v12 initWithCaptureStore:storeCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    disabledFunctions = v5->_disabledFunctions;
    v5->_disabledFunctions = v6;

    LODWORD(v8) = 1.0;
    [(DYEAGLDebugPlaybackEngine *)v5 setWireframeLineWidth:v8];
    LODWORD(v9) = 1.0;
    [(DYEAGLDebugPlaybackEngine *)v5 setTessellationWireframeLineWidth:v9];
    [(DYEAGLDebugPlaybackEngine *)v5 setWireframeLineColor:16711935];
    v5->_enableDrawCallPresent = 1;
    [(DYEAGLDebugPlaybackEngine *)v5 setEnableWireframePresent:1];
    v10 = v5;
  }

  return v5;
}

- (DYEAGLDebugPlaybackEngineDelegate)strongDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)newFunctionPlayer
{
  v3 = [DYEAGLDebugFunctionPlayer alloc];
  captureStore = [(DYEAGLDebugPlaybackEngine *)self captureStore];
  v5 = [(DYEAGLDebugFunctionPlayer *)v3 initWithCaptureStore:captureStore];

  [(DYEAGLFunctionPlayer *)v5 setLayerManager:self];
  return v5;
}

- (void)performPlaybackLoopIterationPreCaptureActions:(unsigned int)actions
{
  v3 = *&actions;
  strongDelegate = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    strongDelegate2 = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
    [strongDelegate2 performPlaybackLoopIterationPreCaptureActions:v3];

    strongDelegate3 = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
    [strongDelegate3 shouldReturn];
  }
}

- (void)performPlaybackLoopIterationPostCaptureActions:(unsigned int)actions
{
  v3 = *&actions;
  strongDelegate = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    strongDelegate2 = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
    [strongDelegate2 performPlaybackLoopIterationPostCaptureActions:v3];

    strongDelegate3 = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
    [strongDelegate3 shouldReturn];
  }
}

- (BOOL)shouldPerformPlaybackLoopIteration:(unsigned int)iteration
{
  v3 = *&iteration;
  strongDelegate = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  strongDelegate2 = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
  v8 = [strongDelegate2 shouldPerformPlaybackLoopIteration:v3];

  strongDelegate3 = [(DYEAGLDebugPlaybackEngine *)self strongDelegate];
  shouldReturn = [strongDelegate3 shouldReturn];

  if ((shouldReturn & 1) == 0)
  {
    return 1;
  }

  return v8;
}

- (DYEAGLDebugPlaybackEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end