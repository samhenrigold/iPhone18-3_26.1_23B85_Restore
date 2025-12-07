@interface PARSearchReplayRequest
- (PARSearchReplayRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSearchReplayRequest

- (PARSearchReplayRequest)initWithCoder:(id)coder
{
  v15[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PARSearchReplayRequest;
  v5 = [(PARSearchRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replaySearchUrl"];
    replaySearchURL = v5->_replaySearchURL;
    v5->_replaySearchURL = v6;

    v8 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"replayHeaderItems"];
    replayHeaderItems = v5->_replayHeaderItems;
    v5->_replayHeaderItems = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARSearchReplayRequest;
  coderCopy = coder;
  [(PARSearchRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_replaySearchURL forKey:{@"replaySearchUrl", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_replayHeaderItems forKey:@"replayHeaderItems"];
}

@end