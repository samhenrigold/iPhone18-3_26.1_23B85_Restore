@interface ATXToolKitActionStreamEvent
- (ATXToolKitActionStreamEvent)init;
- (ATXToolKitActionStreamEvent)initWithEncodedTool:(id)tool toolID:(id)d bundleID:(id)iD title:(id)title subtitle:(id)subtitle eventTimeStamp:(id)stamp parameterKeys:(id)keys;
- (NSArray)parameterKeys;
- (NSData)encodedTool;
- (NSDate)eventTimeStamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXToolKitActionStreamEvent

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolKitActionStreamEvent.encode(with:)(coderCopy);
}

- (NSData)encodedTool
{
  v2 = *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v3 = *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8);
  sub_260DE17F4(v2, v3);
  v4 = sub_260DF5394();
  sub_260DD2994(v2, v3);

  return v4;
}

- (NSDate)eventTimeStamp
{
  v3 = sub_260DF5444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp, v3);
  v7 = sub_260DF5414();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSArray)parameterKeys
{
  if (*(self + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys))
  {

    v2 = sub_260DF5A94();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (ATXToolKitActionStreamEvent)initWithEncodedTool:(id)tool toolID:(id)d bundleID:(id)iD title:(id)title subtitle:(id)subtitle eventTimeStamp:(id)stamp parameterKeys:(id)keys
{
  keysCopy = keys;
  stampCopy = stamp;
  ObjectType = swift_getObjectType();
  v15 = sub_260DF5444();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  toolCopy = tool;
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  subtitleCopy = subtitle;
  v23 = stampCopy;
  v24 = keysCopy;
  v25 = sub_260DF53B4();
  keysCopy = v26;
  stampCopy = v25;

  v27 = sub_260DF59C4();
  v53 = v28;
  v54 = v27;

  v29 = sub_260DF59C4();
  v51 = v30;
  v52 = v29;

  v31 = sub_260DF59C4();
  v33 = v32;

  v34 = sub_260DF59C4();
  v36 = v35;

  sub_260DF5424();
  if (v24)
  {
    v37 = sub_260DF5AB4();
  }

  else
  {
    v37 = 0;
  }

  v38 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v39 = keysCopy;
  *v38 = stampCopy;
  v38[1] = v39;
  v40 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID);
  v41 = v53;
  *v40 = v54;
  v40[1] = v41;
  v42 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID);
  v43 = v51;
  *v42 = v52;
  v42[1] = v43;
  v44 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_title);
  *v44 = v31;
  v44[1] = v33;
  v45 = (self + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle);
  *v45 = v34;
  v45[1] = v36;
  v47 = v58;
  v46 = v59;
  (*(v58 + 16))(self + OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp, v17, v59);
  *(self + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys) = v37;
  v60.receiver = self;
  v60.super_class = ObjectType;
  v48 = [(ATXToolKitActionStreamEvent *)&v60 init];
  (*(v47 + 8))(v17, v46);
  return v48;
}

- (ATXToolKitActionStreamEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end