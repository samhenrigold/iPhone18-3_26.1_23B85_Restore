@interface ATResponseDecoder
+ (id)responseFromJSONData:(id)data;
- (ATResponseDecoder)init;
@end

@implementation ATResponseDecoder

+ (id)responseFromJSONData:(id)data
{
  dataCopy = data;
  v4 = sub_2258E0B40();
  v6 = v5;

  sub_2258D4048(v14);
  sub_2258D44A0(v4, v6);
  v7 = v15;
  if (v15)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8, v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_2258E1060();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (ATResponseDecoder)init
{
  v3.receiver = self;
  v3.super_class = ATResponseDecoder;
  return [(ATResponseDecoder *)&v3 init];
}

@end