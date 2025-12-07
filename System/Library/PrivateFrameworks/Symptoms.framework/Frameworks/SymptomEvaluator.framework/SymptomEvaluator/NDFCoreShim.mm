@interface NDFCoreShim
+ (id)idsDeviceIdentifier;
+ (id)sharedInstance;
- (void)clientHasActiveSubscription:(BOOL)subscription forConnection:(id)connection;
- (void)dnsServer:(id)server isResponding:(BOOL)responding;
- (void)listNDFDeviceObjectsWithIdentifier:(id)identifier reply:(id)reply;
- (void)networkRestrictsMulticastTrafficWithReply:(id)reply;
- (void)noteBackhaulIsBroken:(BOOL)broken;
- (void)noteDNSAllOutWithServers:(id)servers;
- (void)noteDNSConfigurationWithServers:(id)servers forWiFi:(BOOL)fi;
- (void)noteDeviceRecordUpdates:(id)updates reply:(id)reply;
- (void)noteIPAddressAcquisitionFailed:(BOOL)failed forInterface:(id)interface;
- (void)noteInterfaceOfInterest:(id)interest isRemoved:(BOOL)removed;
- (void)noteWiFiIsDisassociated:(BOOL)disassociated;
- (void)pingEndpoints:(id)endpoints reply:(id)reply;
- (void)sendMessage:(id)message toEndpoints:(id)endpoints reply:(id)reply;
- (void)triggerSendPayloadToDistributedSymptomsWithInterval:(int64_t)interval leeway:(int64_t)leeway reply:(id)reply;
- (void)updateDeviceWithStateDictionary:(id)dictionary removalKeys:(id)keys;
@end

@implementation NDFCoreShim

+ (id)sharedInstance
{
  if (qword_2814D4360 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDA4010;

  return v3;
}

- (void)noteIPAddressAcquisitionFailed:(BOOL)failed forInterface:(id)interface
{
  failedCopy = failed;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16, v17, v18);
  v20 = v25 - v19;
  if (interface)
  {
    v21 = sub_2327D73C8();
    v23 = v22;
    (*(v8 + 16))(v13, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v7);
    v25[0] = failedCopy;
    v25[1] = v21;
    v25[2] = v23;
    v26 = 2;
    selfCopy = self;
    sub_2327D7438();
    (*(v8 + 8))(v13, v7);
    (*(v15 + 8))(v20, v14);
  }
}

+ (id)idsDeviceIdentifier
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0620, &qword_2328176B8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5);
  v7 = &v14 - v6;
  sub_2327D7248();
  v8 = sub_2327D7238();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2327D7228();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

- (void)updateDeviceWithStateDictionary:(id)dictionary removalKeys:(id)keys
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0528, &qword_2328172A0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16);
  v18 = v22 - v17;
  v19 = sub_2327D73A8();
  v20 = sub_2327D73E8();
  (*(v6 + 16))(v11, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 96), v5);
  v22[0] = v19;
  v22[1] = v20;
  v22[2] = 0;
  v23 = 0;
  selfCopy = self;
  sub_2327D7438();
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
}

- (void)noteDeviceRecordUpdates:(id)updates reply:(id)reply
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0520, &qword_232817298);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0528, &qword_2328172A0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v19 = v24 - v18;
  v20 = _Block_copy(reply);
  v21 = sub_2327D73E8();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v7 + 16))(v12, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_deviceStateProcessor) + 96), v6);
  v24[0] = v21;
  v24[1] = sub_2327CFA0C;
  v24[2] = v22;
  v25 = 1;
  selfCopy = self;
  sub_2327D7438();
  (*(v7 + 8))(v12, v6);
  (*(v14 + 8))(v19, v13);
}

- (void)noteDNSConfigurationWithServers:(id)servers forWiFi:(BOOL)fi
{
  v6 = sub_2327D74A8();
  selfCopy = self;
  sub_2327C83EC(v6, fi);
}

- (void)dnsServer:(id)server isResponding:(BOOL)responding
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0530, &qword_2328172A8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0538, &qword_2328172B0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v19 = v24 - v18;
  v20 = sub_2327D73C8();
  v22 = v21;
  (*(v7 + 16))(v12, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkConfigProcessor) + 96), v6);
  v24[1] = v20;
  v24[2] = v22;
  v25 = responding | 0x40;
  selfCopy = self;
  sub_2327D7438();
  (*(v7 + 8))(v12, v6);
  (*(v14 + 8))(v19, v13);
}

- (void)noteDNSAllOutWithServers:(id)servers
{
  if (servers)
  {
    v4 = sub_2327D74A8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_2327C8AA4(v4);
}

- (void)noteBackhaulIsBroken:(BOOL)broken
{
  brokenCopy = broken;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16);
  v18 = v20 - v17;
  (*(v6 + 16))(v11, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v5);
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = brokenCopy;
  v21 = 0;
  selfCopy = self;
  sub_2327D7438();
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
}

- (void)noteWiFiIsDisassociated:(BOOL)disassociated
{
  disassociatedCopy = disassociated;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16);
  v18 = v20 - v17;
  (*(v6 + 16))(v11, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v5);
  v20[1] = 0;
  v20[2] = 0;
  v20[0] = disassociatedCopy;
  v21 = 1;
  selfCopy = self;
  sub_2327D7438();
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
}

- (void)noteInterfaceOfInterest:(id)interest isRemoved:(BOOL)removed
{
  removedCopy = removed;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0540, &qword_2328172B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0548, &qword_2328172C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v19 = v24 - v18;
  v20 = sub_2327D73C8();
  v22 = v21;
  (*(v7 + 16))(v12, *(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + *(**(&self->super.isa + OBJC_IVAR___NDFCoreShim_networkStatusProcessor) + 96), v6);
  v24[0] = v20;
  v24[1] = v22;
  v24[2] = removedCopy;
  v25 = 3;
  selfCopy = self;
  sub_2327D7438();
  (*(v7 + 8))(v12, v6);
  (*(v14 + 8))(v19, v13);
}

- (void)listNDFDeviceObjectsWithIdentifier:(id)identifier reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10);
  v12 = &v21 - v11;
  v13 = _Block_copy(reply);
  if (identifier)
  {
    v14 = sub_2327D73C8();
    identifier = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = *(&self->super.isa + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v17)
  {
    v18 = sub_2327D7418();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = v14;
    v19[6] = identifier;
    v19[7] = sub_2327CFF70;
    v19[8] = v16;

    sub_2327C7494(0, 0, v12, &unk_232817608, v19);
  }

  else
  {
    selfCopy = self;
    _Block_copy(v13);

    (*(v13 + 2))(v13, 0);

    _Block_release(v13);
  }
}

- (void)clientHasActiveSubscription:(BOOL)subscription forConnection:(id)connection
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10);
  v12 = &v17 - v11;
  v13 = *(&self->super.isa + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v13)
  {
    v14 = sub_2327D7418();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = subscription;
    *(v15 + 48) = connection;
    connectionCopy = connection;

    sub_2327C7494(0, 0, v12, &unk_2328175F8, v15);
  }
}

- (void)sendMessage:(id)message toEndpoints:(id)endpoints reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = sub_2327D73C8();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05B8, &qword_2328175E0);
  v10 = sub_2327D73E8();
  _Block_copy(v6);
  selfCopy = self;
  sub_2327CF048(v7, v9, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)pingEndpoints:(id)endpoints reply:(id)reply
{
  v5 = _Block_copy(reply);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA05B8, &qword_2328175E0);
  v6 = sub_2327D73E8();
  _Block_copy(v5);
  selfCopy = self;
  sub_2327CF2C0(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)triggerSendPayloadToDistributedSymptomsWithInterval:(int64_t)interval leeway:(int64_t)leeway reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  MEMORY[0x28223BE20](v9 - 8, v10, v11, v12);
  v14 = &v20 - v13;
  v15 = _Block_copy(reply);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = *(&self->super.isa + OBJC_IVAR___NDFCoreShim_ndfController);
  if (v17)
  {
    v18 = sub_2327D7418();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = interval;
    v19[6] = leeway;
    v19[7] = sub_2327CF758;
    v19[8] = v16;

    sub_2327C7494(0, 0, v14, &unk_2328175D0, v19);
  }

  else
  {
    _Block_copy(v15);
    (*(v15 + 2))(v15, 0);

    _Block_release(v15);
  }
}

- (void)networkRestrictsMulticastTrafficWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_2327CF518(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end