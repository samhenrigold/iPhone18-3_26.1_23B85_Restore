@interface DDShareAction
- (DDShareAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)viewController;
- (void)performFromView:(id)view;
- (void)prepareViewControllerForActionController:(id)controller;
- (void)viewController;
@end

@implementation DDShareAction

- (DDShareAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v10.receiver = self;
  v10.super_class = DDShareAction;
  v5 = [(DDAction *)&v10 initWithURL:l result:result context:context];
  v6 = v5;
  if (!v5 || v5->super._contact || v5->super._ics || v5->super._url)
  {
LABEL_5:
    v7 = v6;
LABEL_6:

    return v7;
  }

  v9 = v5->super._result;
  if (v9)
  {
    v7 = DDMapURLForResult(v9);

    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return 0;
}

- (id)viewController
{
  v40[1] = *MEMORY[0x277D85DE8];
  viewController = self->super._viewController;
  if (!viewController)
  {
    if (self->super._contact)
    {
      v4 = MEMORY[0x277CBEBC0];
      v5 = NSTemporaryDirectory();
      v6 = [v4 fileURLWithPath:v5 relativeToURL:0];

      v7 = [MEMORY[0x277CBDA78] stringFromContact:self->super._contact style:0];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.vcf", v7];
      v9 = [v6 URLByAppendingPathComponent:v8];

      v10 = MEMORY[0x277CBDAC8];
      v40[0] = self->super._contact;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      v35 = 0;
      v12 = [v10 dataWithContacts:v11 error:&v35];
      v13 = v35;

      if (v13 || (v34 = 0, [v12 writeToURL:v9 options:1 error:&v34], (v13 = v34) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [DDShareAction viewController];
        }

        v14 = 0;
      }

      else
      {
        v39 = v9;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      }
    }

    else if (self->super._ics)
    {
      v15 = MEMORY[0x277CBEBC0];
      v16 = NSTemporaryDirectory();
      v17 = [v15 fileURLWithPath:v16 relativeToURL:0];

      v18 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
      v19 = _eventTitleFromCache(v18);

      if ([v19 length])
      {
        v20 = v19;
      }

      else
      {
        v20 = DDLocalizedString(@"New Event");
      }

      v21 = v20;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.ics", v20];
      v23 = [v17 URLByAppendingPathComponent:v22];

      ics = self->super._ics;
      v33 = 0;
      [(NSString *)ics writeToURL:v23 atomically:1 encoding:4 error:&v33];
      v25 = v33;
      if (v25)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [DDShareAction viewController];
        }

        v14 = 0;
      }

      else
      {
        v38 = v23;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      }
    }

    else
    {
      if (self->super._url)
      {
        url = self->super._url;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&url count:1];
        if (!v14)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v29 = self->super._result;
      if (!v29)
      {
        goto LABEL_24;
      }

      v30 = DDMapURLForResult(v29);
      if (!v30)
      {
        v31 = DDResultCopyExtractedURL();
        if (!v31)
        {
          goto LABEL_24;
        }

        v32 = v31;
        v30 = [MEMORY[0x277CBEBC0] URLWithString:v31];

        if (!v30)
        {
          goto LABEL_24;
        }
      }

      v36 = v30;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    }

    if (!v14)
    {
LABEL_24:
      viewController = self->super._viewController;
      goto LABEL_25;
    }

LABEL_23:
    v26 = [objc_alloc(MEMORY[0x277D546D8]) initWithActivityItems:v14 applicationActivities:0];
    v27 = self->super._viewController;
    self->super._viewController = v26;

    goto LABEL_24;
  }

LABEL_25:

  return viewController;
}

- (void)prepareViewControllerForActionController:(id)controller
{
  v5.receiver = self;
  v5.super_class = DDShareAction;
  controllerCopy = controller;
  [(DDAction *)&v5 prepareViewControllerForActionController:controllerCopy];
  [controllerCopy action:self presentationShouldBeModal:{0, v5.receiver, v5.super_class}];
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  viewController = [(DDShareAction *)self viewController];
  v5 = viewController;
  if (viewController)
  {
    popoverPresentationController = [viewController popoverPresentationController];
    [(DDAction *)self setupPopoverPresentationController:popoverPresentationController view:viewCopy];
    window = [viewCopy window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:v5 animated:1 completion:0];
  }
}

- (void)viewController
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end