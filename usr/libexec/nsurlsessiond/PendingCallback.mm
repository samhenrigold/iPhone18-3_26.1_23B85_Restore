@interface PendingCallback
- (PendingCallback)initWithCallbackType:(int)type taskIdentifier:(unint64_t)identifier args:(id)args;
- (PendingCallback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PendingCallback

- (PendingCallback)initWithCoder:(id)coder
{
  coderCopy = coder;
  -[PendingCallback setType:](self, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  -[PendingCallback setTaskIdentifier:](self, "setTaskIdentifier:", [coderCopy decodeIntegerForKey:@"taskIdentifier"]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"args"];
  [(PendingCallback *)self setArgs:v5];

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PendingCallback type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[PendingCallback taskIdentifier](self forKey:{"taskIdentifier"), @"taskIdentifier"}];
  args = [(PendingCallback *)self args];
  [coderCopy encodeObject:args forKey:@"args"];
}

- (PendingCallback)initWithCallbackType:(int)type taskIdentifier:(unint64_t)identifier args:(id)args
{
  v6 = *&type;
  argsCopy = args;
  v12.receiver = self;
  v12.super_class = PendingCallback;
  v9 = [(PendingCallback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(PendingCallback *)v9 setType:v6];
    [(PendingCallback *)v10 setTaskIdentifier:identifier];
    [(PendingCallback *)v10 setArgs:argsCopy];
  }

  return v10;
}

@end