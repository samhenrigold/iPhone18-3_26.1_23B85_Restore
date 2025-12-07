@interface TSWPEditMenuController
+ (id)p_sharedEditMenuController;
+ (int)menuState;
+ (void)hideEditMenu;
+ (void)showEditMenuAtTargetRect:(CGRect)rect canCenterHUD:(BOOL)d interactiveCanvasController:(id)controller;
- (CGRect)targetRect;
- (TSWPEditMenuController)init;
- (UIView)targetView;
- (void)dealloc;
- (void)p_didAnimateKeyboard;
- (void)p_setMenuVisible:(id)visible;
- (void)setIsBeginningEditing:(BOOL)editing;
@end

@implementation TSWPEditMenuController

+ (id)p_sharedEditMenuController
{
  if (+[TSWPEditMenuController p_sharedEditMenuController]::onceToken != -1)
  {
    +[TSWPEditMenuController p_sharedEditMenuController];
  }

  v3 = +[TSWPEditMenuController p_sharedEditMenuController]::sSharedEditMenuController;

  return v3;
}

uint64_t __52__TSWPEditMenuController_p_sharedEditMenuController__block_invoke()
{
  +[TSWPEditMenuController p_sharedEditMenuController]::sSharedEditMenuController = objc_alloc_init(TSWPEditMenuController);

  return MEMORY[0x2821F96F8]();
}

+ (int)menuState
{
  p_sharedEditMenuController = [self p_sharedEditMenuController];
  v3 = p_sharedEditMenuController[2];

  return v3;
}

+ (void)showEditMenuAtTargetRect:(CGRect)rect canCenterHUD:(BOOL)d interactiveCanvasController:(id)controller
{
  dCopy = d;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  [controllerCopy visibleBoundsRectClippedToWindow];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v48.origin.x = v13;
  v48.origin.y = v15;
  v48.size.width = v17;
  v48.size.height = v19;
  v40 = CGRectIntersection(v39, v48);
  v36 = v40.origin.x;
  v37 = v40.size.height;
  v20 = v40.origin.y;
  v21 = v40.size.width;
  [mEMORY[0x277D75718] setArrowDirection:0];
  v41.origin.x = v36;
  v41.size.height = v37;
  v41.origin.y = v20;
  v41.size.width = v21;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = v13;
  v42.origin.y = v15;
  v42.size.width = v17;
  v42.size.height = v19;
  v23 = CGRectGetMinY(v42);
  v43.origin.x = v13;
  v43.origin.y = v15;
  v43.size.width = v17;
  v43.size.height = v19;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = v36;
  v44.size.height = v37;
  v44.origin.y = v20;
  v44.size.width = v21;
  v25 = CGRectGetMaxY(v44);
  v26 = MinY - v23;
  v27 = MaxY - v25;
  if (MinY - v23 < 55.0 || v27 < 55.0)
  {
    if (v26 >= 55.0 || v27 >= 55.0)
    {
      if (v26 < 55.0)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      [mEMORY[0x277D75718] setArrowDirection:v28];
    }

    else if (dCopy)
    {
      TSDCenterOfRect(v36, v20, v21, v37);
      TSDRectWithOriginAndSize();
      v46 = CGRectInset(v45, -0.5, -0.5);
      v36 = v46.origin.x;
      v37 = v46.size.height;
      v20 = v46.origin.y;
      v21 = v46.size.width;
    }
  }

  v47.origin.x = v36;
  v47.size.height = v37;
  v47.origin.y = v20;
  v47.size.width = v21;
  if (CGRectGetHeight(v47) != 0.0)
  {
    if (v21 == 0.0)
    {
      v21 = 1.0;
    }

    layerHost = [controllerCopy layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    extraMenuItems = [asiOSCVC extraMenuItems];
    [mEMORY[0x277D75718] setMenuItems:extraMenuItems];

    layerHost2 = [controllerCopy layerHost];
    canvasView = [layerHost2 canvasView];

    p_sharedEditMenuController = [self p_sharedEditMenuController];
    [p_sharedEditMenuController setTargetRect:{v36, v20, v21, v37}];
    [p_sharedEditMenuController setTargetView:canvasView];
    [p_sharedEditMenuController p_setMenuVisible:MEMORY[0x277CBEC38]];
  }
}

+ (void)hideEditMenu
{
  p_sharedEditMenuController = [self p_sharedEditMenuController];
  [p_sharedEditMenuController p_setMenuVisible:MEMORY[0x277CBEC28]];
}

- (TSWPEditMenuController)init
{
  v5.receiver = self;
  v5.super_class = TSWPEditMenuController;
  v2 = [(TSWPEditMenuController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_p_willShowMenu_ name:*MEMORY[0x277D76CC0] object:0];
    [defaultCenter addObserver:v2 selector:sel_p_didShowMenu_ name:*MEMORY[0x277D76CB0] object:0];
    [defaultCenter addObserver:v2 selector:sel_p_willHideMenu_ name:*MEMORY[0x277D76CB8] object:0];
    [defaultCenter addObserver:v2 selector:sel_p_didHideMenu_ name:*MEMORY[0x277D76CA8] object:0];
    [TSKKeyboardMonitor addKeyboardObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TSWPEditMenuController;
  [(TSWPEditMenuController *)&v4 dealloc];
}

- (void)p_setMenuVisible:(id)visible
{
  visibleCopy = visible;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_setMenuVisible_ object:0];
  if ((self->_menuState | 2) == 3)
  {
    [(TSWPEditMenuController *)self performSelector:sel_p_setMenuVisible_ withObject:visibleCopy afterDelay:0.1];
    goto LABEL_3;
  }

  if (([visibleCopy BOOLValue] & 1) == 0)
  {
    self->_showMenuOnKeyboard = 0;
    if (!self->_menuState)
    {
      goto LABEL_3;
    }

    mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
    [mEMORY[0x277D75718] hideMenu];
    goto LABEL_12;
  }

  if (self->_menuState != 2)
  {
    targetView = [(TSWPEditMenuController *)self targetView];

    if (targetView)
    {
      mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
      targetView2 = [(TSWPEditMenuController *)self targetView];
      [(TSWPEditMenuController *)self targetRect];
      [mEMORY[0x277D75718] showMenuFromView:targetView2 rect:?];

LABEL_12:
    }
  }

LABEL_3:
}

- (void)p_didAnimateKeyboard
{
  if (self->_showMenuOnKeyboard)
  {
    self->_showMenuOnKeyboard = 0;
    [(TSWPEditMenuController *)self p_setMenuVisible:MEMORY[0x277CBEC38]];
  }
}

- (void)setIsBeginningEditing:(BOOL)editing
{
  editingCopy = editing;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_p_clearIsBeginningEditing object:0];
  self->_isBeginningEditing = editingCopy;
  if (editingCopy)
  {

    [(TSWPEditMenuController *)self performSelector:sel_p_clearIsBeginningEditing withObject:0 afterDelay:0.25];
  }
}

- (CGRect)targetRect
{
  x = self->_targetRect.origin.x;
  y = self->_targetRect.origin.y;
  width = self->_targetRect.size.width;
  height = self->_targetRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end