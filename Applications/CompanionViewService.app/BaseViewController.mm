@interface BaseViewController
- (void)configureWithContext:(id)context completion:(id)completion;
@end

@implementation BaseViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  xpcEndpoint = [contextCopy xpcEndpoint];
  sub_1000012F8(self, xpcEndpoint);

  v9 = sub_1000043F8(self, contextCopy);

  presentationContext = self->_presentationContext;
  self->_presentationContext = v9;

  v12 = sub_10000143C(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_presentationContext;
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received presentation context: %@", &v14, 0xCu);
  }

  completionCopy[2](completionCopy);
}

@end