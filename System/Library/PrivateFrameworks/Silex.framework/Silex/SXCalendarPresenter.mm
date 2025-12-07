@interface SXCalendarPresenter
- (SXCalendarPresenter)initWithViewControllerPresenting:(id)presenting eventStoreProvider:(id)provider;
- (void)presentCalendarEvent:(id)event;
@end

@implementation SXCalendarPresenter

- (SXCalendarPresenter)initWithViewControllerPresenting:(id)presenting eventStoreProvider:(id)provider
{
  presentingCopy = presenting;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = SXCalendarPresenter;
  v9 = [(SXCalendarPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewControllerPresenting, presenting);
    objc_storeStrong(&v10->_eventStoreProvider, provider);
  }

  return v10;
}

- (void)presentCalendarEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    startDate = [eventCopy startDate];

    if (startDate)
    {
      objc_initWeak(&location, self);
      v7 = dispatch_get_global_queue(25, 0);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__SXCalendarPresenter_presentCalendarEvent___block_invoke;
      v8[3] = &unk_1E84FEF60;
      v8[4] = self;
      objc_copyWeak(&v10, &location);
      v9 = v5;
      dispatch_async(v7, v8);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __44__SXCalendarPresenter_presentCalendarEvent___block_invoke(id *a1)
{
  v2 = [a1[4] eventStoreProvider];
  v3 = [v2 eventStore];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_2;
  v7[3] = &unk_1E84FEF38;
  objc_copyWeak(&v11, a1 + 6);
  v4 = v3;
  v8 = v4;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  [v4 requestWriteOnlyAccessToEventsWithCompletion:v7];

  objc_destroyWeak(&v11);
}

void __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_3;
  block[3] = &unk_1E84FEF10;
  v10 = a2;
  objc_copyWeak(&v9, (a1 + 56));
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __44__SXCalendarPresenter_presentCalendarEvent___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1 && (v3 = objc_loadWeakRetained((a1 + 56)), v3, v3))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = [MEMORY[0x1E6966A08] eventWithEventStore:*(a1 + 32)];
    v5 = [*(a1 + 40) startDate];
    [v4 setStartDate:v5];

    v6 = [*(a1 + 40) endDate];
    [v4 setEndDate:v6];

    v7 = [*(a1 + 40) timeZone];
    [v4 setTimeZone:v7];

    [v4 setAllDay:{objc_msgSend(*(a1 + 40), "allDay")}];
    v8 = [*(a1 + 40) title];
    [v4 setTitle:v8];

    v9 = [*(a1 + 40) URL];
    [v4 setURL:v9];

    v10 = [*(a1 + 40) notes];
    v11 = [v10 text];
    [v4 setNotes:v11];

    v12 = [*(a1 + 40) location];
    [v4 setLocation:v12];

    v13 = objc_alloc_init(MEMORY[0x1E6966B88]);
    [v13 setEventStore:*(a1 + 32)];
    [v13 setEvent:v4];
    [v13 setEditViewDelegate:WeakRetained];
    v14 = [WeakRetained viewControllerPresenting];
    [v14 presentViewController:v13 animated:1];
  }

  else
  {
    v15 = MEMORY[0x1E69DC650];
    v16 = SXBundle(a1);
    v17 = [v16 localizedStringForKey:@"Can’t Access Calendar" value:&stru_1F532F6C0 table:0];
    v18 = SXBundle(v17);
    v19 = [v18 localizedStringForKey:@"SXRequirePermissionToAccessCalendar" value:&stru_1F532F6C0 table:0];
    WeakRetained = [v15 alertControllerWithTitle:v17 message:v19 preferredStyle:1];

    v20 = MEMORY[0x1E69DC648];
    v22 = SXBundle(v21);
    v23 = [v22 localizedStringForKey:@"OK" value:&stru_1F532F6C0 table:0];
    v24 = [v20 actionWithTitle:v23 style:0 handler:0];
    [WeakRetained addAction:v24];

    v4 = [*(a1 + 48) viewControllerPresenting];
    [v4 presentViewController:WeakRetained animated:1];
  }
}

@end