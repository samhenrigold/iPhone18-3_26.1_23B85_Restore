@interface _AppExtensionCalendarChooserHostView.HostCoordinator
- (_TtCV10EventKitUI36_AppExtensionCalendarChooserHostView15HostCoordinator)init;
- (void)calendarSelectionChanged:(id)changed allSelected:(BOOL)selected;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style;
@end

@implementation _AppExtensionCalendarChooserHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1D35D8F58(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x90);
  selfCopy = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & selfCopy->super.isa) + 0x98))(0);
}

- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style
{
  v7 = sub_1D35DF384();
  v9 = v8;
  v10 = sub_1D35DF384();
  v12 = v11;
  selfCopy = self;
  sub_1D35D9B48(v7, v9, v10, v12, style);

  v9, v14, v15, v16, v17, v18, v19, v20;

  v12, v21, v22, v23, v24, v25, v26, v27;
}

- (void)calendarSelectionChanged:(id)changed allSelected:(BOOL)selected
{
  sub_1D35A52E0(0, &qword_1EC76B210, off_1E843D370);
  v6 = sub_1D35DF3E4();
  selfCopy = self;
  sub_1D35D9F44(v6, selected);

  v6, v8, v9, v10, v11, v12, v13, v14;
}

- (_TtCV10EventKitUI36_AppExtensionCalendarChooserHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end