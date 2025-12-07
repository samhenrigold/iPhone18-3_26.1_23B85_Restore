@interface WFDiskSanitizer
+ (id)sanitizeValue:(id)value;
+ (id)sanitizedDictionary:(id)dictionary;
@end

@implementation WFDiskSanitizer

+ (id)sanitizedDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = sub_1B1F1A710();
  }

  else
  {
    v3 = 0;
  }

  swift_getObjCClassMetadata();
  static WFDiskSanitizer.sanitizedDictionary(_:)(v3);

  v4 = sub_1B1F1A6F0();

  return v4;
}

+ (id)sanitizeValue:(id)value
{
  if (value)
  {
    swift_unknownObjectRetain();
    sub_1B1F1AED0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_getObjCClassMetadata();
  sub_1B1E0BF2C(v10, v11);
  sub_1B1E0CB70(v10, &qword_1EB783FC8, &unk_1B1F2A690);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1B1F1B500();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end