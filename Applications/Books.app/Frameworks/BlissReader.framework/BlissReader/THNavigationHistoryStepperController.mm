@interface THNavigationHistoryStepperController
- (THNavigationHistoryStepperController)init;
- (void)dealloc;
- (void)jumpToNext:(id)next;
- (void)jumpToPrev:(id)prev;
- (void)teardown;
- (void)updateHistoryNavigation;
@end

@implementation THNavigationHistoryStepperController

- (THNavigationHistoryStepperController)init
{
  v5.receiver = self;
  v5.super_class = THNavigationHistoryStepperController;
  v2 = [(THNavigationHistoryStepperController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:v2 selector:"p_handleNavigationHistoryDidChange:" name:THNavigationHistoryDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  if ([(THNavigationHistoryStepperController *)self bookspotHistoryStack])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  self->_pageIndexFormatter = 0;
  self->_bookspotHistoryStack = 0;
  self->_chrome = 0;
  v3.receiver = self;
  v3.super_class = THNavigationHistoryStepperController;
  [(THNavigationHistoryStepperController *)&v3 dealloc];
}

- (void)teardown
{
  self->_pageIndexFormatter = 0;
  self->_bookspotHistoryStack = 0;
  self->_chrome = 0;
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 removeObserver:self];
}

- (void)jumpToPrev:(id)prev
{
  bookspotHistoryStack = [(THNavigationHistoryStepperController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack gotoPrevBookspot];
}

- (void)jumpToNext:(id)next
{
  bookspotHistoryStack = [(THNavigationHistoryStepperController *)self bookspotHistoryStack];

  [(THBookspotHistoryStack *)bookspotHistoryStack gotoNextBookspot];
}

- (void)updateHistoryNavigation
{
  if (![(THNavigationHistoryStepperController *)self chrome])
  {
    return;
  }

  prevBookspot = [(THBookspotHistoryStack *)[(THNavigationHistoryStepperController *)self bookspotHistoryStack] prevBookspot];
  nextBookspot = [(THBookspotHistoryStack *)[(THNavigationHistoryStepperController *)self bookspotHistoryStack] nextBookspot];
  v6 = nextBookspot;
  if (prevBookspot)
  {
    nextBookspot = [(THBookPresentationPageIndexFormatter *)[(THNavigationHistoryStepperController *)self pageIndexFormatter] pageNumberStringForLocation:prevBookspot];
    v7 = nextBookspot;
    if (v6)
    {
LABEL_4:
      nextBookspot = [(THBookPresentationPageIndexFormatter *)[(THNavigationHistoryStepperController *)self pageIndexFormatter] pageNumberStringForLocation:v6];
      v8 = nextBookspot;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (nextBookspot)
    {
      goto LABEL_4;
    }
  }

  v8 = 0;
LABEL_8:
  if (prevBookspot)
  {
    nextBookspot = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle(nextBookspot v5)], v7);
    v9 = nextBookspot;
    if (v6)
    {
LABEL_10:
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle(nextBookspot v5)], v8);
      goto LABEL_13;
    }
  }

  else
  {
    v9 = &stru_471858;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  v10 = &stru_471858;
LABEL_13:
  [(THNavigationHistoryStepperController *)self chrome];
  v11 = objc_opt_respondsToSelector();
  chrome = [(THNavigationHistoryStepperController *)self chrome];
  if (v11)
  {

    [THNavigationHistoryStepperChrome setPrevButtonTitle:chrome andPrevButtonEnable:"setPrevButtonTitle:andPrevButtonEnable:nextButtonTitle:andNextButtonEnabled:" nextButtonTitle:v9 andNextButtonEnabled:prevBookspot != 0];
  }

  else
  {
    v13 = v6 != 0;
    [(THNavigationHistoryStepperChrome *)chrome setPrevButtonTitle:v9 andEnable:prevBookspot != 0];
    chrome2 = [(THNavigationHistoryStepperController *)self chrome];

    [(THNavigationHistoryStepperChrome *)chrome2 setNextButtonTitle:v10 andEnable:v13];
  }
}

@end