@interface REMCustomSmartListFilterDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMCustomSmartListFilterDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  REMCustomSmartListFilterDescriptor.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = REMCustomSmartListFilterDescriptor.isEqual(_:)(v9, v5);

  sub_230061918(v9, &qword_27DB14810, &qword_230316820);
  return v7 & 1;
}

- (NSString)description
{
  selfCopy = self;
  REMCustomSmartListFilterDescriptor.description.getter(selfCopy, v3);

  v4 = sub_23030F8B8();

  return v4;
}

@end