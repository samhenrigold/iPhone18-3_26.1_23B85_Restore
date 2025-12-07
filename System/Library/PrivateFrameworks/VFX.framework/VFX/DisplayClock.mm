@interface DisplayClock
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
@end

@implementation DisplayClock

- (void)_applicationDidEnterBackground:(id)background
{
  v4 = sub_1AFDFBD08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFBCF8();
  v8 = *self->displayLink;

  if (v8)
  {
    isPaused = [v8 isPaused];
    v10 = *self->displayLink;
  }

  else
  {
    v10 = 0;
    isPaused = 1;
  }

  self->_pausedOnBackgrounding[0] = isPaused;
  [v10 setPaused_];

  (*(v5 + 8))(v7, v4);
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  v4 = sub_1AFDFBD08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFBCF8();
  if ((self->_pausedOnBackgrounding[0] & 1) == 0)
  {
    v8 = *self->displayLink;
    if (v8)
    {

      if (![v8 isPaused])
      {
LABEL_7:

        goto LABEL_8;
      }

      v9 = *self->displayLink;
    }

    else
    {

      v9 = 0;
    }

    [v9 setPaused_];
    goto LABEL_7;
  }

LABEL_8:
  (*(v5 + 8))(v7, v4);
}

@end