@interface EKEventViewControllerOOPImpl
- (BOOL)ICSPreview;
- (BOOL)allowsCalendarPreview;
- (BOOL)allowsEditing;
- (BOOL)allowsInviteResponses;
- (BOOL)allowsSubitems;
- (BOOL)calendarPreviewIsInlineDayView;
- (BOOL)hasInProcessNavBar;
- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter;
- (BOOL)isEditingMode;
- (BOOL)isLargeDayView;
- (BOOL)minimalMode;
- (BOOL)noninteractivePlatterMode;
- (BOOL)showsAddToCalendarForICSPreview;
- (BOOL)showsDelegateMessage;
- (BOOL)showsDelegatorMessage;
- (BOOL)showsDeleteForICSPreview;
- (BOOL)showsDetectedConferenceItem;
- (BOOL)showsDoneButton;
- (BOOL)showsOutOfDateMessage;
- (BOOL)showsUpdateCalendarForICSPreview;
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (EKEventViewDelegate)delegate;
- (_TtC10EventKitUI28EKEventViewControllerOOPImpl)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneButtonTapped;
- (void)eventEditViewCompletedWith:(int64_t)with eventID:(id)d waitUntil:(id)until;
- (void)eventEditViewPresented:(BOOL)presented;
- (void)setDelegate:(id)delegate;
- (void)setEvent:(id)event;
- (void)setHasInProcessNavBar:(BOOL)bar;
- (void)setShowsDoneButton:(BOOL)button;
- (void)viewDidLoad;
@end

@implementation EKEventViewControllerOOPImpl

- (BOOL)hasInProcessNavBar
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hasInProcessNavBar;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setHasInProcessNavBar:(BOOL)bar
{
  v5 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hasInProcessNavBar;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = bar;
}

- (_TtC10EventKitUI28EKEventViewControllerOOPImpl)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1D35DF384();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1D35CB1B8(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D35CB450();
}

- (CGSize)preferredContentSize
{
  EKUIContainedControllerIdealWidth();
  EKUIContainedControllerIdealHeight();

  CGSizeMake();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)doneButtonTapped
{
  v3 = self + OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v16[0] = *v3;
  v5 = *(v3 + 3);
  v16[2] = *(v3 + 2);
  v16[3] = v5;
  v17[0] = *(v3 + 4);
  *(v17 + 15) = *(v3 + 79);
  v16[1] = v4;
  if (*(&v16[0] + 1))
  {
    v11 = v16[0];
    v6 = *(v3 + 4);
    v14 = *(v3 + 3);
    *v15 = v6;
    *&v15[15] = *(v3 + 79);
    v7 = *(v3 + 1);
    v13 = *(v3 + 2);
    v12 = v7;
    selfCopy = self;
    v9 = sub_1D35D2934(v16, v10);
    sub_1D35B4DD8(v9);

    sub_1D35D14D8(v16);
  }
}

- (void)eventEditViewCompletedWith:(int64_t)with eventID:(id)d waitUntil:(id)until
{
  v8 = sub_1D35DF384();
  v10 = v9;
  v11 = self + OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v19 = *(v11 + 1);
  v38[0] = *v11;
  v20 = *(v11 + 3);
  v38[2] = *(v11 + 2);
  v38[3] = v20;
  v39[0] = *(v11 + 4);
  *(v39 + 15) = *(v11 + 79);
  v38[1] = v19;
  if (*(&v38[0] + 1))
  {
    v33 = v38[0];
    v21 = *(v11 + 4);
    v36 = *(v11 + 3);
    *v37 = v21;
    *&v37[15] = *(v11 + 79);
    v22 = *(v11 + 1);
    v35 = *(v11 + 2);
    v34 = v22;
    untilCopy = until;
    selfCopy = self;
    sub_1D35D2934(v38, v32);
    sub_1D35B4F58(with, v8, v10, until);

    v10, v25, v26, v27, v28, v29, v30, v31;
    sub_1D35D14D8(v38);
  }

  else
  {
    v10, v12, v13, v14, v15, v16, v17, v18;
  }
}

- (void)eventEditViewPresented:(BOOL)presented
{
  presentedCopy = presented;
  v5 = self + OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v6 = *(v5 + 1);
  v17[0] = *v5;
  v7 = *(v5 + 3);
  v17[2] = *(v5 + 2);
  v17[3] = v7;
  v18[0] = *(v5 + 4);
  *(v18 + 15) = *(v5 + 79);
  v17[1] = v6;
  if (*(&v17[0] + 1))
  {
    v12 = v17[0];
    v8 = *(v5 + 4);
    v15 = *(v5 + 3);
    *v16 = v8;
    *&v16[15] = *(v5 + 79);
    v9 = *(v5 + 1);
    v14 = *(v5 + 2);
    v13 = v9;
    selfCopy = self;
    sub_1D35D2934(v17, v11);
    sub_1D35B507C(presentedCopy);

    sub_1D35D14D8(v17);
  }
}

- (EKEvent)event
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_event;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D35D17B4(event);
}

- (BOOL)allowsEditing
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsEditing;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (EKEventViewDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)allowsCalendarPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsCalendarPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)isEditingMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_isEditingMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDoneButton
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDoneButton;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShowsDoneButton:(BOOL)button
{
  v5 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDoneButton;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = button;
}

- (BOOL)calendarPreviewIsInlineDayView
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_calendarPreviewIsInlineDayView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_inlineDayViewRespectsSelectedCalendarsFilter;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)ICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_ICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)allowsInviteResponses
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsInviteResponses;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsAddToCalendarForICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsAddToCalendarForICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsUpdateCalendarForICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsUpdateCalendarForICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDeleteForICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDeleteForICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)allowsSubitems
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsSubitems;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsOutOfDateMessage
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsOutOfDateMessage;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDelegatorMessage
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDelegatorMessage;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDelegateMessage
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDelegateMessage;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDetectedConferenceItem
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDetectedConferenceItem;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)minimalMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_minimalMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)noninteractivePlatterMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_noninteractivePlatterMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)isLargeDayView
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_isLargeDayView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

@end