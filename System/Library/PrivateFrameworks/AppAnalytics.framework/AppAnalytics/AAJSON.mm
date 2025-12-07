@interface AAJSON
- (AAJSON)init;
- (AAJSON)initWithData:(id)data;
- (BOOL)exists;
- (NSArray)array;
- (NSDictionary)object;
- (NSNumber)number;
- (NSString)description;
- (NSString)string;
- (id)any;
- (id)objectAtIndexedSubscript:(int64_t)subscript;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)toDataWithOptions:(unint64_t)options :(id *)a4;
@end

@implementation AAJSON

- (AAJSON)initWithData:(id)data
{
  dataCopy = data;
  v4 = sub_1B6AB8C80();
  v6 = v5;

  v7 = sub_1B69E03A4(v4, v6);
  sub_1B6993C94(v4, v6);
  return v7;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1B69D90E4(v4, v6);

  return v8;
}

- (id)objectAtIndexedSubscript:(int64_t)subscript
{
  selfCopy = self;
  v5 = sub_1B69D92A8(subscript);

  return v5;
}

- (BOOL)exists
{
  sub_1B69C1678(self + OBJC_IVAR___AAJSON_value, v4);
  v2 = v4[3] != 0;
  sub_1B6981634(v4);
  return v2;
}

- (id)any
{
  sub_1B69C1678(self + OBJC_IVAR___AAJSON_value, v9);
  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_1B6ABA0E0();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)string
{
  sub_1B69C1678(self + OBJC_IVAR___AAJSON_value, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v2 = sub_1B6AB92B0();

      v3 = v2;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6981634(v5);
  }

  v3 = 0;
LABEL_6:

  return v3;
}

- (NSArray)array
{
  selfCopy = self;
  v3 = sub_1B69D995C();

  if (v3)
  {
    type metadata accessor for JSON();
    v4 = sub_1B6AB9500();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)object
{
  selfCopy = self;
  v3 = sub_1B69D9B74();

  if (v3)
  {
    type metadata accessor for JSON();
    v4 = sub_1B6AB91F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)number
{
  selfCopy = self;
  v3 = sub_1B69D9EFC();

  return v3;
}

- (id)toDataWithOptions:(unint64_t)options :(id *)a4
{
  selfCopy = self;
  v6 = sub_1B69DA064(options);
  v8 = v7;

  v9 = sub_1B6AB8C60();
  sub_1B6993C94(v6, v8);

  return v9;
}

- (AAJSON)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  JSON.description.getter();

  v3 = sub_1B6AB92B0();

  return v3;
}

@end