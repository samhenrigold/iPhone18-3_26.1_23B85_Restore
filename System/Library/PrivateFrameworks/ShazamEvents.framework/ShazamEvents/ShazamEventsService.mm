@interface ShazamEventsService
+ (id)machServiceName;
- (SHServiceDelegate)serviceDelegate;
- (_TtC12ShazamEvents19ShazamEventsService)init;
- (void)eventWithIdentifier:(id)identifier requestTypes:(id)types completionHandler:(id)handler;
- (void)partialEventsWithGeoRequests:(id)requests requestTypes:(id)types completionHandler:(id)handler;
- (void)serviceVersionWithCompletionHandler:(id)handler;
- (void)setServiceDelegate:(id)delegate;
- (void)shutdownService;
@end

@implementation ShazamEventsService

- (SHServiceDelegate)serviceDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setServiceDelegate:(id)delegate
{
  *(&self->super.isa + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

+ (id)machServiceName
{
  v2 = sub_1E10AE04C();

  return v2;
}

- (void)eventWithIdentifier:(id)identifier requestTypes:(id)types completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1E10AE05C();
  v9 = v8;
  sub_1E10ADCFC();
  sub_1E108D780(&qword_1EE17FF60, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v10 = sub_1E10ADFDC();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = v10;
  v12[5] = sub_1E108D46C;
  v12[6] = v11;
  selfCopy = self;

  sub_1E0FE5278(&unk_1E10BA768, v12);
}

- (void)serviceVersionWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E108D858;
  *(v6 + 24) = v5;
  selfCopy = self;

  sub_1E0FE5278(&unk_1E10BA748, v6);
}

- (void)partialEventsWithGeoRequests:(id)requests requestTypes:(id)types completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  type metadata accessor for GeoXPCRequestContainer(0);
  v7 = sub_1E10AE19C();
  sub_1E10ADCFC();
  sub_1E108D780(&qword_1EE17FF60, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v8 = sub_1E10ADFDC();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = sub_1E108D858;
  v10[5] = v9;
  selfCopy = self;

  sub_1E0FE5278(&unk_1E10BA740, v10);
}

- (void)shutdownService
{
  selfCopy = self;
  ShazamEventsService.shutdownService()();
}

- (_TtC12ShazamEvents19ShazamEventsService)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_serviceCoordinator;
  type metadata accessor for ServiceCoordinator();
  v5 = swift_allocObject();
  v6 = sub_1E1017018(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B1A0, &unk_1E10BA700);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *(v5 + 2) = v7;
  *(&self->super.isa + v4) = v5;
  *(&self->super.isa + OBJC_IVAR____TtC12ShazamEvents19ShazamEventsService_underlyingServiceDelegate) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(ShazamEventsService *)&v9 init];
}

@end