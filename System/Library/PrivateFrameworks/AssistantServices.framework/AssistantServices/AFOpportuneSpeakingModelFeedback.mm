@interface AFOpportuneSpeakingModelFeedback
- (AFOpportuneSpeakingModelFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFOpportuneSpeakingModelFeedback

- (void)encodeWithCoder:(id)coder
{
  lastNegativeFeedback = self->_lastNegativeFeedback;
  coderCopy = coder;
  [coderCopy encodeObject:lastNegativeFeedback forKey:@"_lastNegativeFeedback"];
  [coderCopy encodeObject:self->_negativeFeedbackByContact forKey:@"_negativeFeedbackByContact"];
}

- (AFOpportuneSpeakingModelFeedback)initWithCoder:(id)coder
{
  v15[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AFOpportuneSpeakingModelFeedback;
  v5 = [(AFOpportuneSpeakingModelFeedback *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastNegativeFeedback"];
    lastNegativeFeedback = v5->_lastNegativeFeedback;
    v5->_lastNegativeFeedback = v6;

    v8 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_negativeFeedbackByContact"];
    negativeFeedbackByContact = v5->_negativeFeedbackByContact;
    v5->_negativeFeedbackByContact = v11;
  }

  return v5;
}

@end