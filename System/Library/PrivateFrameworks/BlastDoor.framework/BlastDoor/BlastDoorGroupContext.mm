@interface BlastDoorGroupContext
- (BlastDoorGroupContext)init;
- (NSString)description;
- (unint64_t)groupParticipantVersion;
- (unint64_t)groupProtocolVersion;
@end

@implementation BlastDoorGroupContext

- (NSString)description
{
  v2 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 72];
  v3 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 40];
  v18 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 56];
  v19 = v2;
  v4 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 72];
  v20 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 88];
  v5 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 8];
  v15[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorGroupContext_groupContext);
  v15[1] = v5;
  v6 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 40];
  v8 = *(&self->super.isa + OBJC_IVAR___BlastDoorGroupContext_groupContext);
  v7 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 8];
  v16 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 24];
  v17 = v6;
  v9 = *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 88];
  v13[5] = v4;
  v13[6] = v9;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v16;
  v21 = self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 104];
  v14 = self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 104];
  v13[3] = v3;
  v13[4] = v18;
  sub_2142F236C(v15, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

- (unint64_t)groupParticipantVersion
{
  if (self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 88])
  {
    return 0;
  }

  else
  {
    return *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 80];
  }
}

- (unint64_t)groupProtocolVersion
{
  if (self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 104])
  {
    return 0;
  }

  else
  {
    return *&self->groupContext[OBJC_IVAR___BlastDoorGroupContext_groupContext + 96];
  }
}

- (BlastDoorGroupContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end