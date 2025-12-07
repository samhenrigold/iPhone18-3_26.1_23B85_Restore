@interface TPSCallWaitingRequest
+ (id)unarchivedObjectClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRequest:(id)request;
- (TPSCallWaitingRequest)initWithCoder:(id)coder;
- (TPSCallWaitingRequest)initWithSubscriptionContext:(id)context;
- (TPSCallWaitingRequest)initWithSubscriptionContext:(id)context callClass:(int)class;
@end

@implementation TPSCallWaitingRequest

- (TPSCallWaitingRequest)initWithSubscriptionContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TPSCallWaitingRequest;
  return [(TPSCallClassRequest *)&v4 initWithSubscriptionContext:context callClass:1];
}

- (TPSCallWaitingRequest)initWithSubscriptionContext:(id)context callClass:(int)class
{
  [(TPSCallWaitingRequest *)self doesNotRecognizeSelector:a2, *&class];

  return 0;
}

- (TPSCallWaitingRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TPSCallWaitingRequest;
  return [(TPSCallClassRequest *)&v4 initWithCoder:coder];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallWaitingRequest *)self isEqualToRequest:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = TPSCallWaitingRequest;
  return [(TPSCallClassRequest *)&v4 isEqualToRequest:request];
}

+ (id)unarchivedObjectClasses
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___TPSCallWaitingRequest;
  v4 = objc_msgSendSuper2(&v9, sel_unarchivedObjectClasses);
  v5 = [v3 initWithSet:v4];

  v10[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v5 addObjectsFromArray:v6];

  v7 = [v5 copy];

  return v7;
}

@end