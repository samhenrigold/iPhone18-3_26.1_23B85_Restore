@interface SCROVirtualBrailleDisplay
+ (id)systemDisplay;
- (SCROVirtualBrailleDisplay)initWithMainSize:(int64_t)size;
- (id)_initWithMainSize:(int64_t)size ioElement:(id)element;
- (void)_simulateKeypressWithMask:(unsigned int)mask;
- (void)pressKeyChord:(unint64_t)chord;
- (void)pressPanLeft;
- (void)pressPanRight;
- (void)pressRouterWithIndex:(unint64_t)index withSpace:(BOOL)space;
@end

@implementation SCROVirtualBrailleDisplay

+ (id)systemDisplay
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SCROVirtualBrailleDisplay_systemDisplay__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (systemDisplay_onceToken != -1)
  {
    dispatch_once(&systemDisplay_onceToken, block);
  }

  v2 = systemDisplay__systemDisplay;

  return v2;
}

void __42__SCROVirtualBrailleDisplay_systemDisplay__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[SCROVirtualIOElement systemElement];
  v2 = [v1 _initWithMainSize:1 ioElement:v4];
  v3 = systemDisplay__systemDisplay;
  systemDisplay__systemDisplay = v2;
}

- (SCROVirtualBrailleDisplay)initWithMainSize:(int64_t)size
{
  v5 = objc_opt_new();
  v6 = [(SCROVirtualBrailleDisplay *)self _initWithMainSize:size ioElement:v5];

  return v6;
}

- (id)_initWithMainSize:(int64_t)size ioElement:(id)element
{
  v22 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v7 = elementCopy;
  if (size <= 0)
  {
    v8 = _SCROD_LOG(elementCopy);
    if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      sizeCopy3 = size;
      _os_log_impl(&dword_26490B000, &v8->super, OS_LOG_TYPE_DEFAULT, "Failed to create a virtual display: mainSize is nonpositive (%ld).", buf, 0xCu);
    }

    selfCopy = 0;
  }

  else
  {
    v8 = [[SCROVirtualBrailleDriver alloc] initWithMainSize:size delegate:self];
    v9 = +[SCROBrailleDisplayManager sharedManager];
    v19.receiver = self;
    v19.super_class = SCROVirtualBrailleDisplay;
    v10 = [(SCROBrailleDisplay *)&v19 _initWithDriver:v8 driverIdentifier:@"com.apple.scrod.braille.driver.generic.hid" ioElement:v7 delegate:v9];

    if (v10)
    {
      v11 = objc_opt_new();
      sizeCopy2 = size;
      do
      {
        [v11 appendString:@"⠀"];
        --sizeCopy2;
      }

      while (sizeCopy2);
      v13 = *(v10 + 36);
      *(v10 + 36) = v11;
      v14 = v11;

      *(v10 + 35) = size;
      objc_storeStrong(v10 + 37, v8);

      v16 = _SCROD_LOG(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        sizeCopy3 = size;
        _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "Created a virtual display with main size: %ld", buf, 0xCu);
      }
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)pressPanLeft
{
  [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueuePan:1 down:1];
  virtualDriver = self->_virtualDriver;

  [(SCROVirtualBrailleDriver *)virtualDriver enqueuePan:1 down:0];
}

- (void)pressPanRight
{
  [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueuePan:0 down:1];
  virtualDriver = self->_virtualDriver;

  [(SCROVirtualBrailleDriver *)virtualDriver enqueuePan:0 down:0];
}

- (void)pressKeyChord:(unint64_t)chord
{
  if (chord)
  {
    chordCopy = chord;
    if ((chord & 2) != 0)
    {
      [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:1 down:1];
      if ((chordCopy & 4) == 0)
      {
LABEL_4:
        if ((chordCopy & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    else if ((chord & 4) == 0)
    {
      goto LABEL_4;
    }

    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:2 down:1];
    if ((chordCopy & 8) == 0)
    {
LABEL_5:
      if ((chordCopy & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_26:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:3 down:1];
    if ((chordCopy & 0x10) == 0)
    {
LABEL_6:
      if ((chordCopy & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }

LABEL_27:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:4 down:1];
    if ((chordCopy & 0x20) == 0)
    {
LABEL_7:
      if ((chordCopy & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_28:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:5 down:1];
    if ((chordCopy & 0x40) == 0)
    {
LABEL_8:
      if ((chordCopy & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:6 down:1];
    if ((chordCopy & 0x80) == 0)
    {
LABEL_9:
      if ((chordCopy & 0x100) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }

LABEL_30:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:7 down:1];
    if ((chordCopy & 0x100) == 0)
    {
LABEL_10:
      if ((chordCopy & 0x200) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

LABEL_31:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:8 down:1];
    if ((chordCopy & 0x200) == 0)
    {
LABEL_11:
      if ((chordCopy & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }

LABEL_32:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueSpaceWithDown:1];
    if ((chordCopy & 2) == 0)
    {
LABEL_12:
      if ((chordCopy & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_34;
    }

LABEL_33:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:1 down:0];
    if ((chordCopy & 4) == 0)
    {
LABEL_13:
      if ((chordCopy & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }

LABEL_34:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:2 down:0];
    if ((chordCopy & 8) == 0)
    {
LABEL_14:
      if ((chordCopy & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }

LABEL_35:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:3 down:0];
    if ((chordCopy & 0x10) == 0)
    {
LABEL_15:
      if ((chordCopy & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }

LABEL_36:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:4 down:0];
    if ((chordCopy & 0x20) == 0)
    {
LABEL_16:
      if ((chordCopy & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

LABEL_37:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:5 down:0];
    if ((chordCopy & 0x40) == 0)
    {
LABEL_17:
      if ((chordCopy & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_39;
    }

LABEL_38:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:6 down:0];
    if ((chordCopy & 0x80) == 0)
    {
LABEL_18:
      if ((chordCopy & 0x100) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_40;
    }

LABEL_39:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:7 down:0];
    if ((chordCopy & 0x100) == 0)
    {
LABEL_19:
      if ((chordCopy & 0x200) == 0)
      {
        return;
      }

LABEL_41:
      virtualDriver = self->_virtualDriver;

      [(SCROVirtualBrailleDriver *)virtualDriver enqueueSpaceWithDown:0];
      return;
    }

LABEL_40:
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueDot:8 down:0];
    if ((chordCopy & 0x200) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  v5 = self->_virtualDriver;

  [(SCROVirtualBrailleDriver *)v5 enqueueForceTranslate];
}

- (void)pressRouterWithIndex:(unint64_t)index withSpace:(BOOL)space
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_mainSize <= index)
  {
    v8 = _SCROD_LOG(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      mainSize = self->_mainSize;
      v10 = 134218240;
      indexCopy = index;
      v12 = 2048;
      v13 = mainSize;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Virtual display: router index (%ld) out of bound (%ld)", &v10, 0x16u);
    }
  }

  else
  {
    spaceCopy = space;
    if (space)
    {
      [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueSpaceWithDown:1];
    }

    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueRouter:index down:1];
    [(SCROVirtualBrailleDriver *)self->_virtualDriver enqueueRouter:index down:0];
    if (spaceCopy)
    {
      virtualDriver = self->_virtualDriver;

      [(SCROVirtualBrailleDriver *)virtualDriver enqueueSpaceWithDown:0];
    }
  }
}

- (void)_simulateKeypressWithMask:(unsigned int)mask
{
  v3 = *&mask;
  v5 = objc_opt_new();
  [v5 setDisplayToken:{-[SCROVirtualBrailleDisplay token](self, "token")}];
  [v5 setDisplayMode:0];
  [v5 addKeyMask:v3];
  [(SCROBrailleDisplay *)self simulateKeypress:v5];
}

@end