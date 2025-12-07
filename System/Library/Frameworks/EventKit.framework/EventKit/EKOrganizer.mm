@interface EKOrganizer
+ (id)organizerWithName:(id)name emailAddress:(id)address phoneNumber:(id)number address:(id)a6 isCurrentUser:(BOOL)user;
- (BOOL)isCurrentUser;
- (EKOrganizer)initWithName:(id)name emailAddress:(id)address phoneNumber:(id)number address:(id)a6 isCurrentUser:(BOOL)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)scheduleAgent;
- (void)setCurrentUser:(BOOL)user;
- (void)setScheduleAgent:(int64_t)agent;
@end

@implementation EKOrganizer

+ (id)organizerWithName:(id)name emailAddress:(id)address phoneNumber:(id)number address:(id)a6 isCurrentUser:(BOOL)user
{
  userCopy = user;
  v12 = a6;
  numberCopy = number;
  addressCopy = address;
  nameCopy = name;
  v16 = [[self alloc] initWithName:nameCopy emailAddress:addressCopy phoneNumber:numberCopy address:v12 isCurrentUser:userCopy];

  return v16;
}

- (EKOrganizer)initWithName:(id)name emailAddress:(id)address phoneNumber:(id)number address:(id)a6 isCurrentUser:(BOOL)user
{
  userCopy = user;
  v8 = [(EKParticipant *)self initWithName:name emailAddress:address phoneNumber:number url:a6];
  v9 = v8;
  if (v8)
  {
    [(EKOrganizer *)v8 setCurrentUser:userCopy];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v11.receiver = self;
    v11.super_class = EKOrganizer;
    return [(EKObject *)&v11 copyWithZone:zone];
  }

  else
  {
    name = [(EKParticipant *)self name];
    emailAddress = [(EKParticipant *)self emailAddress];
    phoneNumber = [(EKParticipant *)self phoneNumber];
    v9 = [(EKParticipant *)self URL];
    v5 = [EKOrganizer organizerWithName:name emailAddress:emailAddress phoneNumber:phoneNumber address:v9 isCurrentUser:[(EKOrganizer *)self isCurrentUser]];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(EKParticipant *)self UUID];
  name = [(EKParticipant *)self name];
  emailAddress = [(EKParticipant *)self emailAddress];
  phoneNumber = [(EKParticipant *)self phoneNumber];
  v9 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ name = %@; email = %@; phone = %@; isSelf = %d}", v4, self, uUID, name, emailAddress, phoneNumber, -[EKOrganizer isCurrentUser](self, "isCurrentUser")];;

  return v9;
}

- (BOOL)isCurrentUser
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B28]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setCurrentUser:(BOOL)user
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:user];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992B28]];
}

- (int64_t)scheduleAgent
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B30]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setScheduleAgent:(int64_t)agent
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:agent];
  [(EKObject *)self setSingleChangedValue:v4 forKey:*MEMORY[0x1E6992B30]];
}

@end