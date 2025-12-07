@interface PaymentRequestViewInterfaceFactory
+ (id)interfaceForConfiguration:(id)configuration withDelegate:(id)delegate;
- (_TtC9PassKitUI34PaymentRequestViewInterfaceFactory)init;
@end

@implementation PaymentRequestViewInterfaceFactory

+ (id)interfaceForConfiguration:(id)configuration withDelegate:(id)delegate
{
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  sub_1BE053624();
  swift_unknownObjectRelease();
  swift_getObjCClassMetadata();
  v5 = static PaymentRequestViewInterfaceFactory.interface(forConfiguration:withDelegate:)(configurationCopy, v14);

  __swift_destroy_boxed_opaque_existential_0(v14, v6, v7, v8, v9, v10, v11, v12);

  return v5;
}

- (_TtC9PassKitUI34PaymentRequestViewInterfaceFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentRequestViewInterfaceFactory();
  return [(PaymentRequestViewInterfaceFactory *)&v3 init];
}

@end