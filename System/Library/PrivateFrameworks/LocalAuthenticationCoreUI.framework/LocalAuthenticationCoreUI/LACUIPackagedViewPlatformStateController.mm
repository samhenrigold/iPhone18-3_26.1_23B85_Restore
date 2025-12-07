@interface LACUIPackagedViewPlatformStateController
- (BOOL)hasState:(id)state;
- (LACUIPackagedViewPlatformStateController)initWithLayer:(id)layer;
- (LACUIPackagedViewPlatformStateControllerDelegate)delegate;
- (id)state;
- (void)setInitialState;
- (void)setState:(id)state speed:(double)speed;
- (void)stateController:(id)controller didSetStateOfLayer:(id)layer;
- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed;
- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed;
@end

@implementation LACUIPackagedViewPlatformStateController

- (LACUIPackagedViewPlatformStateController)initWithLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = LACUIPackagedViewPlatformStateController;
  v5 = [(LACUIPackagedViewPlatformStateController *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:layerCopy];
    stateController = v5->_stateController;
    v5->_stateController = v6;

    [(CAStateController *)v5->_stateController setDelegate:v5];
  }

  return v5;
}

- (id)state
{
  stateController = self->_stateController;
  layer = [(CAStateController *)stateController layer];
  v4 = [(CAStateController *)stateController stateOfLayer:layer];
  name = [v4 name];

  return name;
}

- (BOOL)hasState:(id)state
{
  stateController = self->_stateController;
  stateCopy = state;
  layer = [(CAStateController *)stateController layer];
  v6 = [layer stateWithName:stateCopy];

  return v6 != 0;
}

- (void)setState:(id)state speed:(double)speed
{
  stateCopy = state;
  if (![(LACUIPackagedViewPlatformStateController *)self hasState:?])
  {
    [LACUIPackagedViewPlatformStateController setState:speed:];
  }

  stateController = self->_stateController;
  layer = [(CAStateController *)stateController layer];
  v8 = [layer stateWithName:stateCopy];
  layer2 = [(CAStateController *)self->_stateController layer];
  *&v10 = speed;
  [(CAStateController *)stateController setState:v8 ofLayer:layer2 transitionSpeed:v10];
}

- (void)setInitialState
{
  stateController = self->_stateController;
  layer = [(CAStateController *)stateController layer];
  [(CAStateController *)stateController setInitialStatesOfLayer:layer];
}

- (void)stateController:(id)controller transitionDidStop:(id)stop completed:(BOOL)completed
{
  completedCopy = completed;
  v24 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  stopCopy = stop;
  if (self->_stateController != controllerCopy)
  {
    [LACUIPackagedViewPlatformStateController stateController:transitionDidStop:completed:];
  }

  v10 = stopCopy;
  v11 = LA_LOG_LACUIPackagedViewPlatformStateController(stopCopy);
  v12 = v11;
  if (completedCopy)
  {
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v13 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v11, v13))
  {
    if (completedCopy)
    {
      v14 = "finish";
    }

    else
    {
      v14 = "skip";
    }

    v15 = _NSStringFromCAStateTransition(v10);
    v18 = 138543874;
    selfCopy = self;
    v20 = 2080;
    v21 = v14;
    v22 = 2114;
    v23 = v15;
    _os_log_impl(&dword_256063000, v12, v13, "%{public}@ did %s %{public}@", &v18, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  toState = [v10 toState];
  [WeakRetained packagedViewPlatformStateController:self didTransitionToState:toState completed:completedCopy];
}

- (void)stateController:(id)controller didSetStateOfLayer:(id)layer
{
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  layerCopy = layer;
  if (self->_stateController != controllerCopy)
  {
    [LACUIPackagedViewPlatformStateController stateController:didSetStateOfLayer:];
  }

  v8 = layerCopy;
  v9 = LA_LOG_LACUIPackagedViewPlatformStateController(layerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [(CAStateController *)self->_stateController stateOfLayer:v8];
    name = [v10 name];
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    v15 = name;
    _os_log_debug_impl(&dword_256063000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ did set layer state to '%{public}@'", &v12, 0x16u);
  }
}

- (void)stateController:(id)controller transitionDidStart:(id)start speed:(float)speed
{
  controllerCopy = controller;
  startCopy = start;
  if (self->_stateController != controllerCopy)
  {
    [LACUIPackagedViewPlatformStateController stateController:transitionDidStart:speed:];
  }

  v9 = startCopy;
  v10 = LA_LOG_LACUIPackagedViewPlatformStateController(startCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LACUIPackagedViewPlatformStateController stateController:v9 transitionDidStart:v10 speed:?];
  }
}

- (LACUIPackagedViewPlatformStateControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stateController:(uint64_t)a1 transitionDidStart:(void *)a2 speed:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = _NSStringFromCAStateTransition(a2);
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_256063000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ will start %{public}@", &v6, 0x16u);
}

@end