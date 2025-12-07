@interface NEKCalendarWrapper
- (NEKCalendarWrapper)initWithChangeType:(int)type calendarRef:(id)ref useAttributes:(BOOL)attributes;
- (NEKCalendarWrapper)initWithChangeType:(int)type list:(id)list useAttributes:(BOOL)attributes;
- (NEKCalendarWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType sourceIdentifier:(id)identifier attributes:(id)attributes calendarIdentifier:(id)calendarIdentifier;
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKCalendarWrapper

- (NEKCalendarWrapper)initWithStoreType:(int64_t)type nekChangeType:(int)changeType sourceIdentifier:(id)identifier attributes:(id)attributes calendarIdentifier:(id)calendarIdentifier
{
  v10 = *&changeType;
  identifierCopy = identifier;
  attributesCopy = attributes;
  calendarIdentifierCopy = calendarIdentifier;
  v19.receiver = self;
  v19.super_class = NEKCalendarWrapper;
  v16 = [(NEKWrapper *)&v19 initWithStoreType:type nekChangeType:v10];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_storeIdentifier, identifier);
    objc_storeStrong(&v17->_attributes, attributes);
    objc_storeStrong(&v17->_calendarIdentifier, calendarIdentifier);
  }

  return v17;
}

- (id)objectIdentifier
{
  calendarIdentifier = [(NEKCalendarWrapper *)self calendarIdentifier];
  v3 = calendarIdentifier;
  if (calendarIdentifier)
  {
    v4 = calendarIdentifier;
  }

  else
  {
    v4 = +[NSUUID eks_garbageUUID];
  }

  v5 = v4;

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  storeIdentifier = self->_storeIdentifier;
  objectIdentifier = [(NEKCalendarWrapper *)self objectIdentifier];
  v7 = [NSString stringWithFormat:@"<%@ %p, source = %@, calendarIdentifier = %@>", v4, self, storeIdentifier, objectIdentifier];

  return v7;
}

- (NEKCalendarWrapper)initWithChangeType:(int)type list:(id)list useAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v6 = *&type;
  listCopy = list;
  if (attributesCopy)
  {
    v9 = [[NEKCalendarAttributes alloc] initWithList:listCopy];
  }

  else
  {
    v9 = 0;
  }

  account = [listCopy account];
  if (account)
  {
    v11 = [[NEKSourceID alloc] initWithAccount:account];
  }

  else
  {
    v11 = 0;
  }

  objectID = [listCopy objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];
  v15 = [uUIDString copy];

  v16 = [(NEKCalendarWrapper *)self initWithStoreType:1 nekChangeType:v6 sourceIdentifier:v11 attributes:v9 calendarIdentifier:v15];
  return v16;
}

- (NEKCalendarWrapper)initWithChangeType:(int)type calendarRef:(id)ref useAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v6 = *&type;
  refCopy = ref;
  if (attributesCopy)
  {
    v9 = [[NEKCalendarAttributes alloc] initWithCalendar:refCopy];
  }

  else
  {
    v9 = 0;
  }

  source = [refCopy source];
  if (source)
  {
    v11 = [[NEKSourceID alloc] initWithSource:source];
  }

  else
  {
    v11 = 0;
  }

  calendarIdentifier = [refCopy calendarIdentifier];
  v13 = [calendarIdentifier copy];

  v14 = [(NEKCalendarWrapper *)self initWithStoreType:0 nekChangeType:v6 sourceIdentifier:v11 attributes:v9 calendarIdentifier:v13];
  return v14;
}

@end