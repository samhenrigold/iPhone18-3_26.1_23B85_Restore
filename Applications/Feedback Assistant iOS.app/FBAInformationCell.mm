@interface FBAInformationCell
- (void)awakeFromNib;
- (void)setQuestion:(id)question;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation FBAInformationCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = FBAInformationCell;
  [(FBAInformationCell *)&v2 awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = FBAInformationCell;
  [(FBAInformationCell *)&v4 setSelected:selected animated:animated];
}

- (void)setQuestion:(id)question
{
  questionCopy = question;
  if ([questionCopy answerType] == 6)
  {
    objc_storeStrong(&self->_question, question);
    text = [questionCopy text];
    textLabel = [(FBAInformationCell *)self textLabel];
    [textLabel setText:text];
  }

  else
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100093EAC(questionCopy, v8);
    }
  }
}

@end