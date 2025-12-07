@interface WFPerformQueryDialogResponse
- (NSString)description;
- (WFPerformQueryDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFPerformQueryDialogResponse)initWithCoder:(id)coder;
- (WFPerformQueryDialogResponse)initWithQueryResults:(id)results cancelled:(BOOL)cancelled;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFPerformQueryDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFPerformQueryDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFPerformQueryDialogResponse *)self queryResults:v6.receiver];
  [coderCopy encodeCollection:v5 forKey:@"queryResults"];

  [coderCopy encodeBool:-[WFDialogResponse isCancelled](self forKey:{"isCancelled"), @"cancelled"}];
}

- (WFPerformQueryDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFPerformQueryDialogResponse;
  v5 = [(WFDialogResponse *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"queryResults"];
    queryResults = v5->_queryResults;
    v5->_queryResults = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFPerformQueryDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFPerformQueryDialogResponse *)self queryResults:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"queryResults"];
}

- (WFPerformQueryDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFPerformQueryDialogResponse;
  v5 = [(WFDialogResponse *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"queryResults"];
    queryResults = v5->_queryResults;
    v5->_queryResults = v9;

    v11 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  queryResults = [(WFPerformQueryDialogResponse *)self queryResults];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFDialogResponse isCancelled](self, "isCancelled")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, queryResults: %@, cancelled: %@>", v5, self, queryResults, v7];

  return v8;
}

- (WFPerformQueryDialogResponse)initWithQueryResults:(id)results cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = WFPerformQueryDialogResponse;
  v8 = [(WFDialogResponse *)&v12 initWithCancelled:cancelledCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queryResults, results);
    v10 = v9;
  }

  return v9;
}

@end