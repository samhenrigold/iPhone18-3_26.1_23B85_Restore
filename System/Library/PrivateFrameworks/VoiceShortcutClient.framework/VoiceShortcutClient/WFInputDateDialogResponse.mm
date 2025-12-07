@interface WFInputDateDialogResponse
- (NSString)description;
- (WFInputDateDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFInputDateDialogResponse)initWithCoder:(id)coder;
- (WFInputDateDialogResponse)initWithInputtedDate:(id)date cancelled:(BOOL)cancelled;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFInputDateDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFInputDateDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFInputDateDialogResponse *)self inputtedDate:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputtedDate"];

  [coderCopy encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFInputDateDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFInputDateDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputtedDate"];
    inputtedDate = v5->_inputtedDate;
    v5->_inputtedDate = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFInputDateDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFInputDateDialogResponse *)self inputtedDate:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputtedDate"];
}

- (WFInputDateDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFInputDateDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputtedDate"];
    inputtedDate = v5->_inputtedDate;
    v5->_inputtedDate = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  inputtedDate = [(WFInputDateDialogResponse *)self inputtedDate];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, inputtedDate: %@, cancelled: %@>", v5, self, inputtedDate, v7];

  return v8;
}

- (WFInputDateDialogResponse)initWithInputtedDate:(id)date cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = WFInputDateDialogResponse;
  v8 = [(WFDialogResponse *)&v12 initWithCancelled:cancelledCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_inputtedDate, date);
    v10 = v9;
  }

  return v9;
}

@end