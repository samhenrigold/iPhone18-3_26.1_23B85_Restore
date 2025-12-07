@interface DYEAGLOverridingFunctionPlayer
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)performNewFrameActions;
- (void)performPostDispatchFrameBoundaryActions;
- (void)setEngine:(id)engine;
@end

@implementation DYEAGLOverridingFunctionPlayer

- (void)setEngine:(id)engine
{
  engineCopy = engine;
  v7.receiver = self;
  v7.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v7 setEngine:engineCopy];
  experimentResultsGenerator = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] experimentResultsGenerator];
  experimentResultsGenerator = self->_experimentResultsGenerator;
  self->_experimentResultsGenerator = experimentResultsGenerator;
}

- (void)executeGraphicsFunction
{
  v3.receiver = self;
  v3.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v3 executeGraphicsFunction];
  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onGraphicsFunctionEnd];
}

- (void)executePlatformFunction
{
  if (**&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function] == -12271)
  {
    DYHarvestRenderbuffer();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = DYEAGLOverridingFunctionPlayer;
    [(DYEAGLFunctionPlayer *)&v3 executePlatformFunction];
  }

  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onPlatformFunctionEnd];
}

- (void)performNewFrameActions
{
  v3.receiver = self;
  v3.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v3 performNewFrameActions];
  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onFrameStart];
}

- (void)performPostDispatchFrameBoundaryActions
{
  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onFrameEnd];
  v3.receiver = self;
  v3.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v3 performPostDispatchFrameBoundaryActions];
}

@end