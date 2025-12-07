@interface CHSReplicatedDescriptorsBox
- (CHSReplicatedDescriptorsBox)init;
- (CHSReplicatedDescriptorsBox)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSReplicatedDescriptorsBox

- (void)encodeWithCoder:(id)coder
{
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_224DAEFF8();

  v7 = sub_224DAEDE8();

  [coderCopy encodeObject:v6 forKey:v7];
}

- (CHSReplicatedDescriptorsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_224B6BD00();

  return v4;
}

- (CHSReplicatedDescriptorsBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end