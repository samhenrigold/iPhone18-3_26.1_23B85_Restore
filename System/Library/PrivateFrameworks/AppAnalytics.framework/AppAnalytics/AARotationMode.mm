@interface AARotationMode
- (AARotationMode)init;
- (AARotationMode)initWithMode:(int64_t)mode namespaceName:(id)name startDate:(id)date cachedRotations:(int64_t)rotations resetCount:(int64_t)count lastRotation:(id)rotation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AARotationMode

- (AARotationMode)initWithMode:(int64_t)mode namespaceName:(id)name startDate:(id)date cachedRotations:(int64_t)rotations resetCount:(int64_t)count lastRotation:(id)rotation
{
  rotationsCopy = rotations;
  countCopy = count;
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &rotationsCopy - v11;
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &rotationsCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B6AB8E40();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &rotationsCopy - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E00();
  sub_1B6AB8D80();
  if (rotation)
  {
    sub_1B6AB8D80();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v14 + 56))(v12, v20, 1, v13);
  return BridgedRotationMode.init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(mode, v19, v16, rotationsCopy, countCopy, v12);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BridgedRotationMode.encode(with:)(coderCopy);
}

- (AARotationMode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end