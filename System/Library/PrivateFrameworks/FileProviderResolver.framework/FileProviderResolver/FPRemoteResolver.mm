@interface FPRemoteResolver
+ (BOOL)canResolveURL:(id)l;
- (void)URLForItemID:(id)d reply:(id)reply;
- (void)connectionInfoWithReply:(id)reply;
- (void)itemIDForURL:(id)l allowReadOnlyLocations:(BOOL)locations reply:(id)reply;
@end

@implementation FPRemoteResolver

+ (BOOL)canResolveURL:(id)l
{
  v3 = sub_24ABC92F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABC92D8();
  v7 = _sSo16FPRemoteResolverC012FileProviderB0E10canResolve3urlSb10Foundation3URLV_tFZ_0();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (void)connectionInfoWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_24ABC0A20();
  v9[4] = sub_24ABC14A8;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24ABC0BA8;
  v9[3] = &block_descriptor_23;
  v8 = _Block_copy(v9);

  [v7 connectionInfoWithReply_];

  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)URLForItemID:(id)d reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  dCopy = d;
  selfCopy = self;
  v10 = sub_24ABC0A20();
  v12[4] = sub_24ABC14A0;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24ABC0E38;
  v12[3] = &block_descriptor_17;
  v11 = _Block_copy(v12);

  [v10 URLForItemID:dCopy reply:v11];

  _Block_release(v11);
  swift_unknownObjectRelease();
}

- (void)itemIDForURL:(id)l allowReadOnlyLocations:(BOOL)locations reply:(id)reply
{
  locationsCopy = locations;
  v8 = sub_24ABC92F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(reply);
  sub_24ABC92D8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  v15 = sub_24ABC0A20();
  v16 = sub_24ABC92A8();
  aBlock[4] = sub_24ABC14A0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24ABC1060;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  [v15 itemIDForURL:v16 allowReadOnlyLocations:locationsCopy reply:v17];
  _Block_release(v17);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v11, v8);
}

@end