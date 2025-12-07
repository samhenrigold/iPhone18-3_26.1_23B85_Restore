@interface _UIWindowTransformLayer
- (void)addAnimation:(id)animation forKey:(id)key;
@end

@implementation _UIWindowTransformLayer

- (void)addAnimation:(id)animation forKey:(id)key
{
  animationCopy = animation;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isEqualToString_(keyCopy))
  {
    v8 = animationCopy;
    window = self->super._window;
    previousSceneOrientationForCounterRotation = window->_previousSceneOrientationForCounterRotation;
    _toWindowOrientation = [(UIWindow *)window _toWindowOrientation];
    _fromWindowOrientation = [(UIWindow *)self->super._window _fromWindowOrientation];
    if (previousSceneOrientationForCounterRotation)
    {
      v14 = self->super._window;
      v15 = v14->_previousSceneOrientationForCounterRotation;
      _orientationForRootTransform = [(UIWindow *)v14 _orientationForRootTransform];
      v17 = 0.0;
      v18 = 0.0;
      if (_fromWindowOrientation != 1)
      {
        if (_fromWindowOrientation == 3)
        {
          v18 = 1.57079633;
        }

        else if (_fromWindowOrientation == 4)
        {
          v18 = -1.57079633;
        }

        else
        {
          v18 = 3.14159265;
          if (_fromWindowOrientation != 2)
          {
            v18 = 0.0;
          }
        }
      }

      if (v15 != 1)
      {
        if (v15 == 3)
        {
          v17 = 1.57079633;
        }

        else if (v15 == 4)
        {
          v17 = -1.57079633;
        }

        else
        {
          v17 = 3.14159265;
          if (v15 != 2)
          {
            v17 = 0.0;
          }
        }
      }

      v19 = 0.0;
      v20 = 0.0;
      if (_toWindowOrientation != 1)
      {
        if (_toWindowOrientation == 3)
        {
          v20 = 1.57079633;
        }

        else if (_toWindowOrientation == 4)
        {
          v20 = -1.57079633;
        }

        else
        {
          v20 = 3.14159265;
          if (_toWindowOrientation != 2)
          {
            v20 = 0.0;
          }
        }
      }

      v21 = v18 - v17;
      if (_orientationForRootTransform != 1)
      {
        switch(_orientationForRootTransform)
        {
          case 3:
            v19 = 1.57079633;
            break;
          case 4:
            v19 = -1.57079633;
            break;
          case 2:
            v19 = 3.14159265;
            break;
        }
      }

      _UIMakeBasicTransformAnimationUnambiguousWithAngles(v8, 1, 0, v21, v20 - v19);
    }

    else
    {
      _UIMakeBasicTransformAnimationUnambiguousWithOrientations(v8, _fromWindowOrientation, _toWindowOrientation, 0, 0, v13);
    }
  }

  v22.receiver = self;
  v22.super_class = _UIWindowTransformLayer;
  [(_UIWindowTransformLayer *)&v22 addAnimation:animationCopy forKey:keyCopy];
}

@end