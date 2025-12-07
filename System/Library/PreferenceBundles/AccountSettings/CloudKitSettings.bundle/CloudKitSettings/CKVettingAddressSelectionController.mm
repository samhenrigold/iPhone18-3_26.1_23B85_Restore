@interface CKVettingAddressSelectionController
- (CKVettingAddressSelectionController)init;
- (CKVettingAddressSelectionController)initWithParameters:(id)parameters;
- (CKVettingAddressSelectionController)initWithParticipants:(id)participants sharedItem:(id)item shareURL:(id)l;
- (id)_buttonWithText:(id)text maxWidth:(double)width;
- (id)_labelWithText:(id)text maxWidth:(double)width;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_initiateVettingForParticipantID:(id)d address:(id)address andThen:(id)then;
- (void)_setupBarButtons;
- (void)_setupSectionFooter:(id)footer;
- (void)_setupSectionHeader:(id)header;
- (void)_showInitiateFailureAlert:(id)alert shareTitle:(id)title cell:(id)cell;
- (void)fetchShareMetadata:(id)metadata andThen:(id)then;
- (void)handleCancel;
- (void)handleSelectedCell:(id)cell;
- (void)handleSendEmail;
- (void)setParameters:(id)parameters;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKVettingAddressSelectionController

- (CKVettingAddressSelectionController)init
{
  v7.receiver = self;
  v7.super_class = CKVettingAddressSelectionController;
  v2 = [(CKVettingAddressSelectionController *)&v7 initWithStyle:1];
  v3 = v2;
  if (v2)
  {
    [(CKVettingAddressSelectionController *)v2 setSelectedRowPath:0];
    tableView = [(CKVettingAddressSelectionController *)v3 tableView];
    [tableView setSectionHeaderHeight:0.0];

    tableView2 = [(CKVettingAddressSelectionController *)v3 tableView];
    [tableView2 setSectionFooterHeight:0.0];
  }

  return v3;
}

- (CKVettingAddressSelectionController)initWithParticipants:(id)participants sharedItem:(id)item shareURL:(id)l
{
  participantsCopy = participants;
  itemCopy = item;
  lCopy = l;
  v11 = [(CKVettingAddressSelectionController *)self init];
  v12 = v11;
  if (v11)
  {
    [(CKVettingAddressSelectionController *)v11 setTripples:participantsCopy];
    [(CKVettingAddressSelectionController *)v12 setSharedItem:itemCopy];
    [(CKVettingAddressSelectionController *)v12 setShareURL:lCopy];
  }

  return v12;
}

- (CKVettingAddressSelectionController)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([parametersCopy count] == &dword_0 + 3)
  {
    v5 = [parametersCopy objectAtIndexedSubscript:0];
    v6 = [parametersCopy objectAtIndexedSubscript:1];
    v7 = [parametersCopy objectAtIndexedSubscript:2];
    self = [(CKVettingAddressSelectionController *)self initWithParticipants:v5 sharedItem:v6 shareURL:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([parametersCopy count] != &dword_0 + 3)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CKVettingAddressSelectionController.m" lineNumber:138 description:{@"Expected an array of 3 items, actual array: %@", parametersCopy}];
  }

  v5 = [parametersCopy objectAtIndexedSubscript:0];
  [(CKVettingAddressSelectionController *)self setTripples:v5];

  v6 = [parametersCopy objectAtIndexedSubscript:1];
  [(CKVettingAddressSelectionController *)self setSharedItem:v6];

  v7 = [parametersCopy objectAtIndexedSubscript:2];
  [(CKVettingAddressSelectionController *)self setShareURL:v7];
}

- (void)viewWillAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = CKVettingAddressSelectionController;
  [(CKVettingAddressSelectionController *)&v20 viewWillAppear:appear];
  [(CKVettingAddressSelectionController *)self _setupBarButtons];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  tripples = [(CKVettingAddressSelectionController *)self tripples];
  v5 = [tripples countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (!v5)
  {

LABEL_21:
    v15 = @"PHONES";
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v17;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(tripples);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      v12 = [v11 objectAtIndexedSubscript:1];
      v13 = [v11 objectAtIndexedSubscript:2];
      if ([v12 length])
      {
        ++v8;
      }

      if ([v13 length])
      {
        ++v7;
      }
    }

    v6 = [tripples countByEnumeratingWithState:&v16 objects:v21 count:16];
  }

  while (v6);

  if (v7 <= 0 || v8 <= 0)
  {
    v15 = @"EMAILS";
  }

  else
  {
    v15 = @"MIX";
  }

  if (v8 <= 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  [(CKVettingAddressSelectionController *)self _setupSectionHeader:v15];
  [(CKVettingAddressSelectionController *)self _setupSectionFooter:v15];
}

- (void)handleCancel
{
  navigationController = [(CKVettingAddressSelectionController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)handleSendEmail
{
  selectedRowPath = [(CKVettingAddressSelectionController *)self selectedRowPath];

  if (selectedRowPath)
  {
    tableView = [(CKVettingAddressSelectionController *)self tableView];
    selectedRowPath2 = [(CKVettingAddressSelectionController *)self selectedRowPath];
    v6 = [tableView cellForRowAtIndexPath:selectedRowPath2];

    [(CKVettingAddressSelectionController *)self handleSelectedCell:v6];
  }
}

- (void)handleSelectedCell:(id)cell
{
  cellCopy = cell;
  [cellCopy startSpinner];
  objc_initWeak(&location, self);
  shareURL = [(CKVettingAddressSelectionController *)self shareURL];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9A34;
  v7[3] = &unk_14880;
  objc_copyWeak(&v9, &location);
  v6 = cellCopy;
  v8 = v6;
  [(CKVettingAddressSelectionController *)self fetchShareMetadata:shareURL andThen:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_showInitiateFailureAlert:(id)alert shareTitle:(id)title cell:(id)cell
{
  cellCopy = cell;
  titleCopy = title;
  alertCopy = alert;
  email = [cellCopy email];
  v11 = [email length] != 0;

  address = [cellCopy address];

  v13 = [CKVettingAlerts alertContentForInitiateVettingError:alertCopy shareTitle:titleCopy isEmail:v11 address:address];

  [CKVettingAlerts showFailureAlert:v13 isSourceICS:0];
}

- (void)fetchShareMetadata:(id)metadata andThen:(id)then
{
  metadataCopy = metadata;
  thenCopy = then;
  v8 = [CKFetchShareMetadataOperation alloc];
  v22 = metadataCopy;
  v9 = [NSArray arrayWithObjects:&v22 count:1];
  v10 = [v8 initWithShareURLs:v9];

  configuration = [v10 configuration];
  [configuration setDiscretionaryNetworkBehavior:0];

  configuration2 = [v10 configuration];
  [configuration2 setAutomaticallyRetryNetworkFailures:0];

  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_A258;
  v19[3] = &unk_148A8;
  objc_copyWeak(&v20, &location);
  [v10 setPerShareMetadataBlock:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_A2B4;
  v17[3] = &unk_148D0;
  v13 = thenCopy;
  v18 = v13;
  [v10 setFetchShareMetadataCompletionBlock:v17];
  v14 = [[CKContainerID alloc] initWithContainerIdentifier:@"com.apple.cloudkit" environment:1];
  v15 = [[CKContainer alloc] initWithContainerID:v14];
  [(CKVettingAddressSelectionController *)self setClouddContainer:v15];

  clouddContainer = [(CKVettingAddressSelectionController *)self clouddContainer];
  [clouddContainer addOperation:v10];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_initiateVettingForParticipantID:(id)d address:(id)address andThen:(id)then
{
  dCopy = d;
  addressCopy = address;
  thenCopy = then;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_A540;
  v26[4] = sub_A550;
  v27 = 0;
  v11 = [CKInitiateParticipantVettingOperation alloc];
  shareMetadata = [(CKVettingAddressSelectionController *)self shareMetadata];
  v13 = [v11 initWithShareMetadata:shareMetadata participantID:dCopy address:addressCopy];

  configuration = [v13 configuration];
  [configuration setDiscretionaryNetworkBehavior:0];

  configuration2 = [v13 configuration];
  [configuration2 setAutomaticallyRetryNetworkFailures:0];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_A558;
  v25[3] = &unk_148F8;
  v25[4] = v26;
  [v13 setParticipantVettingInitiatedBlock:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_A568;
  v22[3] = &unk_14920;
  v24 = v26;
  v16 = thenCopy;
  v23 = v16;
  [v13 setParticipantVettingInitiationCompletionBlock:v22];
  v17 = [CKContainer alloc];
  shareMetadata2 = [(CKVettingAddressSelectionController *)self shareMetadata];
  containerID = [shareMetadata2 containerID];
  v20 = [v17 initWithContainerID:containerID];
  [(CKVettingAddressSelectionController *)self setMetadataIndicatedContainer:v20];

  metadataIndicatedContainer = [(CKVettingAddressSelectionController *)self metadataIndicatedContainer];
  [metadataIndicatedContainer addOperation:v13];

  _Block_object_dispose(v26, 8);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedRowPath = [(CKVettingAddressSelectionController *)self selectedRowPath];
  v6 = [selectedRowPath isEqual:pathCopy];

  if ((v6 & 1) == 0)
  {
    selectedRowPath2 = [(CKVettingAddressSelectionController *)self selectedRowPath];

    if (!selectedRowPath2)
    {
      v8 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v8 userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        sendEmailBarButton = [(CKVettingAddressSelectionController *)self sendEmailBarButton];
        navigationController = [(CKVettingAddressSelectionController *)self navigationController];
        topViewController = [navigationController topViewController];
        navigationItem = [topViewController navigationItem];
        [navigationItem setRightBarButtonItem:sendEmailBarButton];
      }

      else
      {
        sendEmailBarButton = [(CKVettingAddressSelectionController *)self sendEmailButton];
        [sendEmailBarButton setEnabled:1];
      }
    }

    tableView = [(CKVettingAddressSelectionController *)self tableView];
    selectedRowPath3 = [(CKVettingAddressSelectionController *)self selectedRowPath];
    v16 = [tableView cellForRowAtIndexPath:selectedRowPath3];

    [v16 deselect];
    tableView2 = [(CKVettingAddressSelectionController *)self tableView];
    v18 = [tableView2 cellForRowAtIndexPath:pathCopy];

    [v18 select];
    [(CKVettingAddressSelectionController *)self setSelectedRowPath:pathCopy];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CKVettingAddressSelectionController *)self tripples:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tripples = [(CKVettingAddressSelectionController *)self tripples];
  v7 = [tripples objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v8 = [v7 objectAtIndexedSubscript:0];

  tripples2 = [(CKVettingAddressSelectionController *)self tripples];
  v10 = [tripples2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  v11 = [v10 objectAtIndexedSubscript:1];

  tripples3 = [(CKVettingAddressSelectionController *)self tripples];
  v13 = [pathCopy row];

  v14 = [tripples3 objectAtIndexedSubscript:v13];
  v15 = [v14 objectAtIndexedSubscript:2];

  v16 = [[CKVettingAddressSelectionTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
  [(CKVettingAddressSelectionTableViewCell *)v16 setSelectionStyle:0];
  [(CKVettingAddressSelectionTableViewCell *)v16 setParticipantID:v8];
  [(CKVettingAddressSelectionTableViewCell *)v16 setEmail:v11];
  [(CKVettingAddressSelectionTableViewCell *)v16 setNumber:v15];
  address = [(CKVettingAddressSelectionTableViewCell *)v16 address];
  textLabel = [(CKVettingAddressSelectionTableViewCell *)v16 textLabel];
  [textLabel setText:address];

  return v16;
}

- (void)_setupBarButtons
{
  v28 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"handleCancel"];
  navigationController = [(CKVettingAddressSelectionController *)self navigationController];
  topViewController = [navigationController topViewController];
  navigationItem = [topViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v28];

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v8 = [UIBarButtonItem alloc];
    v15 = sub_16B8(@"CLOUDKIT_VETTING_FOOTER_SEND_EMAIL", &stru_14980, v9, v10, v11, v12, v13, v14, v27);
    navigationController2 = [v8 initWithTitle:v15 style:2 target:self action:"handleSendEmail"];

    [(CKVettingAddressSelectionController *)self setSendEmailBarButton:navigationController2];
  }

  else
  {
    navigationController2 = [(CKVettingAddressSelectionController *)self navigationController];
    topViewController2 = [navigationController2 topViewController];
    navigationItem2 = [topViewController2 navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }

  v25 = sub_16B8(@"CLOUDKIT_VETTING_TITLE", &stru_14980, v19, v20, v21, v22, v23, v24, v27);
  navigationItem3 = [(CKVettingAddressSelectionController *)self navigationItem];
  [navigationItem3 setTitle:v25];
}

- (id)_labelWithText:(id)text maxWidth:(double)width
{
  textCopy = text;
  v6 = [[UILabel alloc] initWithFrame:{0.0, 0.0, width, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setText:textCopy];

  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];

  return v6;
}

- (id)_buttonWithText:(id)text maxWidth:(double)width
{
  textCopy = text;
  v6 = [UIButton buttonWithType:1];
  [v6 setFrame:{0.0, 0.0, width, 0.0}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTitle:textCopy forState:0];

  return v6;
}

- (void)_setupSectionHeader:(id)header
{
  v4 = [@"CLOUDKIT_VETTING_HEADER_" stringByAppendingString:header];
  sharedItem = [(CKVettingAddressSelectionController *)self sharedItem];
  v12 = sub_16B8(v4, @"%@", v6, v7, v8, v9, v10, v11, sharedItem);

  tableView = [(CKVettingAddressSelectionController *)self tableView];
  [tableView frame];
  v15 = [(CKVettingAddressSelectionController *)self _labelWithText:v12 maxWidth:v14 + -16.0];

  v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v15 setFont:v16];

  v17 = +[UIColor labelColor];
  [v15 setTextColor:v17];

  [v15 frame];
  [v15 sizeThatFits:{v18, v19}];
  v31[0] = @"textHeight";
  v21 = [NSNumber numberWithDouble:v20];
  v31[1] = @"padding";
  v32[0] = v21;
  v32[1] = &off_16380;
  v22 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];

  v23 = [UIView alloc];
  tableView2 = [(CKVettingAddressSelectionController *)self tableView];
  [tableView2 frame];
  v25 = [v23 initWithFrame:{0.0, 0.0}];

  [v25 addSubview:v15];
  v26 = _NSDictionaryOfVariableBindings(@"t", v15, 0);
  v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(padding)-[t]-(padding)-|", 0, v22, v26);
  [v25 addConstraints:v27];

  v28 = [NSLayoutConstraint constraintWithItem:v15 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:0.0];
  [v25 addConstraint:v28];

  v29 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(padding)-[t(textHeight)]-(padding)-|", 0, v22, v26);
  [v25 addConstraints:v29];

  [v25 setNeedsLayout];
  tableView3 = [(CKVettingAddressSelectionController *)self tableView];
  [tableView3 setTableHeaderView:v25];
}

- (void)_setupSectionFooter:(id)footer
{
  footerCopy = footer;
  tableView = [(CKVettingAddressSelectionController *)self tableView];
  [tableView frame];
  v7 = v6 + -16.0;

  v8 = [@"CLOUDKIT_VETTING_FOOTER_TEXT_" stringByAppendingString:footerCopy];

  v15 = sub_16B8(v8, &stru_14980, v9, v10, v11, v12, v13, v14, v59);
  v16 = [(CKVettingAddressSelectionController *)self _labelWithText:v15 maxWidth:v7];

  v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v16 setFont:v17];

  v18 = +[UIColor secondaryLabelColor];
  [v16 setTextColor:v18];

  v25 = sub_16B8(@"CLOUDKIT_VETTING_FOOTER_SEND_EMAIL", &stru_14980, v19, v20, v21, v22, v23, v24, v60);
  v26 = [(CKVettingAddressSelectionController *)self _buttonWithText:v25 maxWidth:v7];

  [v26 addTarget:self action:"handleSendEmail" forControlEvents:64];
  [v26 setEnabled:0];
  [(CKVettingAddressSelectionController *)self setSendEmailButton:v26];
  v27 = +[UIDevice currentDevice];
  v28 = [v27 userInterfaceIdiom] == &dword_0 + 1;
  sendEmailButton = [(CKVettingAddressSelectionController *)self sendEmailButton];
  [sendEmailButton setHidden:v28];

  v62 = v16;
  [v16 frame];
  [v16 sizeThatFits:{v30, v31}];
  v33 = v32;
  [v26 frame];
  [v26 sizeThatFits:{v34, v35}];
  v37 = v36;
  v63[0] = @"textHeight";
  v38 = [NSNumber numberWithDouble:v33];
  v64[0] = v38;
  v63[1] = @"sendEmailHeight";
  v39 = [NSNumber numberWithDouble:v37];
  v64[1] = v39;
  v63[2] = @"sendEmailSpacing";
  v40 = [NSNumber numberWithDouble:v37 + 8.0];
  v63[3] = @"padding";
  v64[2] = v40;
  v64[3] = &off_16380;
  v61 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:4];

  tableView2 = [(CKVettingAddressSelectionController *)self tableView];
  [tableView2 frame];
  v42 = +[UIApplication sharedApplication];
  [v42 statusBarFrame];
  navigationController = [(CKVettingAddressSelectionController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  tableView3 = [(CKVettingAddressSelectionController *)self tableView];
  tableHeaderView = [tableView3 tableHeaderView];
  [tableHeaderView frame];
  tripples = [(CKVettingAddressSelectionController *)self tripples];
  [tripples count];
  tableView4 = [(CKVettingAddressSelectionController *)self tableView];
  [tableView4 contentInset];

  v49 = [UIView alloc];
  tableView5 = [(CKVettingAddressSelectionController *)self tableView];
  [tableView5 frame];
  v51 = [v49 initWithFrame:{0.0, 0.0}];

  [v51 addSubview:v62];
  [v51 addSubview:v26];
  v52 = _NSDictionaryOfVariableBindings(@"text, sendEmail", v62, v26, 0);
  v53 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(padding)-[text]-(padding)-|", 0, v61, v52);
  [v51 addConstraints:v53];

  v54 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(padding)-[sendEmail]-(padding)-|", 0, v61, v52);
  [v51 addConstraints:v54];

  v55 = [NSLayoutConstraint constraintWithItem:v62 attribute:9 relatedBy:0 toItem:v51 attribute:9 multiplier:1.0 constant:0.0];
  [v51 addConstraint:v55];

  v56 = [NSLayoutConstraint constraintWithItem:v26 attribute:9 relatedBy:0 toItem:v51 attribute:9 multiplier:1.0 constant:0.0];
  [v51 addConstraint:v56];

  v57 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(padding)-[text(textHeight)]-(>=padding)-[sendEmail(sendEmailHeight)]-(sendEmailSpacing)-|", 0, v61, v52);
  [v51 addConstraints:v57];

  [v51 setNeedsLayout];
  tableView6 = [(CKVettingAddressSelectionController *)self tableView];
  [tableView6 setTableFooterView:v51];
}

@end