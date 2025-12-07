@interface FASettingsPresetComputedProperty
- (FASettingsPresetComputedProperty)init;
- (FASettingsPresetComputedProperty)initWithConditions:(id)conditions;
- (FASettingsPresetComputedProperty)initWithDictionary:(id)dictionary;
- (NSArray)conditions;
- (NSSet)dependencies;
- (id)computedValueWithValueProvider:(id)provider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FASettingsPresetComputedProperty

- (NSArray)conditions
{
  type metadata accessor for FASettingsPresetPropertyCondition();

  v2 = sub_1B715E310();

  return v2;
}

- (FASettingsPresetComputedProperty)initWithConditions:(id)conditions
{
  type metadata accessor for FASettingsPresetPropertyCondition();
  *(self + OBJC_IVAR___FASettingsPresetComputedProperty_conditions) = sub_1B715E320();
  v5.receiver = self;
  v5.super_class = FASettingsPresetComputedProperty;
  return [(FASettingsPresetComputedProperty *)&v5 init];
}

- (FASettingsPresetComputedProperty)initWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = sub_1B715DFE0();
  }

  else
  {
    v3 = 0;
  }

  return FASettingsPresetComputedProperty.init(dictionary:)(v3);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  FASettingsPresetComputedProperty.encode(with:)(coderCopy);
}

- (id)computedValueWithValueProvider:(id)provider
{
  v4 = _Block_copy(provider);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B711DB3C(selfCopy, v4, &v13);
  _Block_release(v4);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(&v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1B715EB00();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSSet)dependencies
{
  selfCopy = self;
  FASettingsPresetComputedProperty.dependencies.getter();

  v3 = sub_1B715E4B0();

  return v3;
}

- (FASettingsPresetComputedProperty)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end