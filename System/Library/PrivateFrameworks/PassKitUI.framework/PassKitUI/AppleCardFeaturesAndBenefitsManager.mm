@interface AppleCardFeaturesAndBenefitsManager
- (void)accountChanged:(id)changed;
- (void)dealloc;
- (void)scheduledPaymentsChangedForAccountIdentifier:(id)identifier;
@end

@implementation AppleCardFeaturesAndBenefitsManager

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v3 sharedInstance];
  if (sharedInstance)
  {
    v6 = sharedInstance;
    [sharedInstance unregisterObserver_];

    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for AppleCardFeaturesAndBenefitsManager(0);
    [(AppleCardFeaturesAndBenefitsManager *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)accountChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1BD312BC8(changed);
}

- (void)scheduledPaymentsChangedForAccountIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1BD314240(v4, v6);

  v6, v8, v9, v10, v11, v12, v13, v14;
}

@end