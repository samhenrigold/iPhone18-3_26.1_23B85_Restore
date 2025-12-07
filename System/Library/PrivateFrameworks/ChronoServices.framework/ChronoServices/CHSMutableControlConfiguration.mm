@interface CHSMutableControlConfiguration
- (CHSMutableControlConfiguration)init;
- (CHSMutableControlConfiguration)initWithControlItems:(id)items;
- (CHSMutableControlConfiguration)initWithControlItems:(id)items automaticallyOrphaned:(BOOL)orphaned;
- (CHSMutableControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate;
- (CHSMutableControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate automaticallyOrphaned:(BOOL)orphaned;
- (id)copyWithZone:(void *)zone;
- (void)setControlItems:(id)items;
- (void)setReplicationPredicate:(id)predicate;
@end

@implementation CHSMutableControlConfiguration

- (void)setControlItems:(id)items
{
  type metadata accessor for CHSControlConfigurationItem(0);
  *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__controlItems) = sub_195FA0B38();
}

- (void)setReplicationPredicate:(id)predicate
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
  *(&self->super.super.isa + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = predicate;
  predicateCopy = predicate;
}

- (id)copyWithZone:(void *)zone
{
  v4 = objc_allocWithZone(CHSControlConfiguration);

  return [v4 initWithConfiguration_];
}

- (CHSMutableControlConfiguration)initWithControlItems:(id)items
{
  v4.receiver = self;
  v4.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v4 initWithControlItems:items];
}

- (CHSMutableControlConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v3 init];
}

- (CHSMutableControlConfiguration)initWithControlItems:(id)items automaticallyOrphaned:(BOOL)orphaned
{
  v5.receiver = self;
  v5.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v5 initWithControlItems:items automaticallyOrphaned:orphaned];
}

- (CHSMutableControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate
{
  v5.receiver = self;
  v5.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v5 initWithControlItems:items replicationPredicate:predicate];
}

- (CHSMutableControlConfiguration)initWithControlItems:(id)items replicationPredicate:(id)predicate automaticallyOrphaned:(BOOL)orphaned
{
  v6.receiver = self;
  v6.super_class = CHSMutableControlConfiguration;
  return [(CHSControlConfiguration *)&v6 initWithControlItems:items replicationPredicate:predicate automaticallyOrphaned:orphaned];
}

@end