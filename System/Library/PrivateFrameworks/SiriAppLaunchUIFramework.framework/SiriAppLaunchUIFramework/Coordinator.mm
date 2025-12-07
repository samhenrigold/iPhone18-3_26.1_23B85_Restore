@interface Coordinator
- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)lockupViewEngagedForAppIdentifier:(id)identifier;
- (void)lockupViewForAppIdentifier:(id)identifier didChangeState:(id)state;
- (void)lockupViewForAppIdentifier:(id)identifier didFailRequestWithError:(id)error;
@end

@implementation Coordinator

- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2661C1E54(controller);
}

- (void)lockupViewForAppIdentifier:(id)identifier didFailRequestWithError:(id)error
{
  if (identifier)
  {
    v6 = sub_2661CA090();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  errorCopy = error;
  selfCopy = self;
  sub_2661C1F80(v6, v8);
}

- (void)lockupViewEngagedForAppIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_2661CA090();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2661C22A8(v4, v6);
}

- (void)lockupViewForAppIdentifier:(id)identifier didChangeState:(id)state
{
  if (identifier)
  {
    v6 = sub_2661CA090();
    v8 = v7;
    if (!state)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v8 = 0;
  if (state)
  {
LABEL_3:
    sub_2661CA090();
  }

LABEL_5:
  selfCopy = self;
  sub_2661C258C(v6, v8);
}

@end