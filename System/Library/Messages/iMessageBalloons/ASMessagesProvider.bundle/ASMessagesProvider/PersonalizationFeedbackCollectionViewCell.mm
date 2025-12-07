@interface PersonalizationFeedbackCollectionViewCell
- (void)didTapSubmitButton:(id)button;
- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)button;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PersonalizationFeedbackCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_6CDA9C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_6CE9CC(selfCopy);
}

- (void)feedbackButtonSelectedWithFeedbackOptioButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_6CEBF8(buttonCopy);
}

- (void)didTapSubmitButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_6D1FE0();
}

@end