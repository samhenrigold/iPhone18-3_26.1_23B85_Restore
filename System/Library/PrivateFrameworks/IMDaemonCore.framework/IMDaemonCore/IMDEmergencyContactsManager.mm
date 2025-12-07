@interface IMDEmergencyContactsManager
+ (id)sharedManager;
- (NSArray)emergencyContactHandles;
@end

@implementation IMDEmergencyContactsManager

- (NSArray)emergencyContactHandles
{
  selfCopy = self;
  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  sub_22B7DAF38();

  v3 = sub_22B7DB8F8();
  v13, v4, v5, v6, v7, v8, v9, v10, v12, v13;

  return v3;
}

+ (id)sharedManager
{
  if (qword_28141F0E0 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F0E8;

  return v3;
}

@end