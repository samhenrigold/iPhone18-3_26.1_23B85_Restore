@interface NotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = NotificationViewController;
  viewDidLoad = [(NotificationViewController *)&v10 viewDidLoad];
  v4 = HAENotificationsLog(viewDidLoad);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "NotificationViewController::viewDidLoad...", v9, 2u);
  }

  v5 = objc_alloc_init(UILabel);
  message = self->_message;
  self->_message = v5;

  v7 = objc_alloc_init(UILabel);
  subtitle = self->_subtitle;
  self->_subtitle = v7;
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = HAENotificationsLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v76 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "NotificationViewController::didReceiveNotification...: %@", buf, 0xCu);
  }

  request = [(UILabel *)notificationCopy request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v9 = [(NotificationViewController *)self isLiveNotification:categoryIdentifier];

  if (v9)
  {
    v11 = HAENLocalizationUtilityGetBundle(v10);
    request3 = [v11 localizedStringForKey:@"MessageLonglookLoud" value:&stru_100004188 table:0];

    request2 = [(UILabel *)notificationCopy request];
    content2 = [request2 content];
    body = [content2 body];
    v16 = [NSString stringWithFormat:@"%@\n\n%@", body, request3];
    [(UILabel *)self->_message setText:v16];
  }

  else
  {
    request3 = [(UILabel *)notificationCopy request];
    request2 = [request3 content];
    content2 = [request2 body];
    [(UILabel *)self->_message setText:content2];
  }

  request4 = [(UILabel *)notificationCopy request];
  content3 = [request4 content];
  title = [content3 title];
  [(UILabel *)self->_subtitle setText:title];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [(UILabel *)self->_subtitle setFont:v20];

  [(UILabel *)self->_subtitle setAdjustsFontForContentSizeCategory:1];
  view = [(NotificationViewController *)self view];
  [view frame];
  v23 = v22 + -20.0;
  subtitle = [(NotificationViewController *)self subtitle];
  [subtitle intrinsicContentSize];
  [(UILabel *)self->_subtitle setFrame:13.0, 0.0, v23, v25];

  [(UILabel *)self->_subtitle sizeToFit];
  v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_message setFont:v26];

  [(UILabel *)self->_message setAdjustsFontForContentSizeCategory:1];
  subtitle2 = [(NotificationViewController *)self subtitle];
  [subtitle2 intrinsicContentSize];
  v29 = v28;
  view2 = [(NotificationViewController *)self view];
  [view2 frame];
  v32 = v31 + -20.0;
  message = [(NotificationViewController *)self message];
  [message intrinsicContentSize];
  [(UILabel *)self->_message setFrame:13.0, v29, v32, v34];

  [(UILabel *)self->_message setTextAlignment:0];
  [(UILabel *)self->_message setNumberOfLines:0];
  LODWORD(v35) = 1148846080;
  [(UILabel *)self->_message setContentHuggingPriority:0 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [(UILabel *)self->_message setContentHuggingPriority:1 forAxis:v36];
  LODWORD(v37) = 1132068864;
  [(UILabel *)self->_message setContentCompressionResistancePriority:0 forAxis:v37];
  LODWORD(v38) = 1132068864;
  [(UILabel *)self->_message setContentCompressionResistancePriority:1 forAxis:v38];
  [(UILabel *)self->_message setPreferredMaxLayoutWidth:200.0];
  [(UILabel *)self->_message setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_message sizeToFit];
  view3 = [(NotificationViewController *)self view];
  [view3 frame];
  v41 = v40;
  subtitle3 = [(NotificationViewController *)self subtitle];
  [subtitle3 frame];
  v44 = v43;
  message2 = [(NotificationViewController *)self message];
  [message2 frame];
  v47 = v44 + v46;
  view4 = [(NotificationViewController *)self view];
  [view4 setFrame:{0.0, 0.0, v41, v47}];

  view5 = [(NotificationViewController *)self view];
  [view5 addSubview:self->_subtitle];

  view6 = [(NotificationViewController *)self view];
  [view6 addSubview:self->_message];

  view7 = [(NotificationViewController *)self view];
  [view7 sizeToFit];

  view8 = [(NotificationViewController *)self view];
  [view8 setNeedsLayout];

  view9 = [(NotificationViewController *)self view];
  [view9 layoutIfNeeded];

  view10 = [(NotificationViewController *)self view];
  [view10 frame];
  v56 = v55;
  view11 = [(NotificationViewController *)self view];
  [view11 frame];
  [(NotificationViewController *)self setPreferredContentSize:v56, v58 + 15.0];

  v60 = HAENotificationsLog(v59);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    subtitle = self->_subtitle;
    *buf = 138412290;
    v76 = subtitle;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v63 = HAENotificationsLog(v62);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    message = self->_message;
    *buf = 138412290;
    v76 = message;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v66 = HAENotificationsLog(v65);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    view12 = [(NotificationViewController *)self view];
    *buf = 138412290;
    v76 = view12;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v69 = HAENotificationsLog(v68);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    view13 = [(NotificationViewController *)self view];
    [view13 bounds];
    v72 = v71;
    view14 = [(NotificationViewController *)self view];
    [view14 bounds];
    *buf = 134218240;
    v76 = v72;
    v77 = 2048;
    v78 = v74;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "bounds (%.2lf,%.2lf)", buf, 0x16u);
  }
}

@end