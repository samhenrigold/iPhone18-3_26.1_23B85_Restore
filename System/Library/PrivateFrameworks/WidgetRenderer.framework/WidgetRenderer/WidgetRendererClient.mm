@interface WidgetRendererClient
- (_TtC14WidgetRenderer20WidgetRendererClient)init;
- (uint64_t)flushPowerlog;
- (void)clientConfigurationsDidChange:(id)change forHost:(id)host;
- (void)extensionsDidChange:(id)change;
- (void)initializeConnection:(id)connection;
- (void)systemEnvironmentDidChange:(id)change;
@end

@implementation WidgetRendererClient

- (void)initializeConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_1DAD6FB3C(connectionCopy);
}

- (_TtC14WidgetRenderer20WidgetRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clientConfigurationsDidChange:(id)change forHost:(id)host
{
  v6 = sub_1DAED1CEC();
  v8 = v7;
  changeCopy = change;
  selfCopy = self;
  sub_1DAEB6A98(change, v6, v8);
}

- (void)extensionsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1DAEB6FD4(changeCopy);
}

- (void)systemEnvironmentDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v5 = sub_1DAECDC1C();
  v7 = v6;

  sub_1DAEB7AE0(v5, v7);
  sub_1DAD70BB4(v5, v7);
}

- (uint64_t)flushPowerlog
{
  v0 = sub_1DAED09DC();
  v10 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0A3C();
  v3 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v6 = sub_1DAED20EC();
  aBlock[4] = sub_1DAEB67F4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_121;
  v7 = _Block_copy(aBlock);
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v5, v2, v7);
  _Block_release(v7);

  (*(v10 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v9);
}

@end