@interface _AppExtensionEventEditHostView.HostCoordinator
- (_TtCV10EventKitUI30_AppExtensionEventEditHostView15HostCoordinator)init;
- (void)didCompleteWithAction:(int64_t)action oldToNewObjectIDMap:(id)map waitUntilTimestamp:(id)timestamp serializedDictionary:(id)dictionary objectIDToChangeSetDictionaryMap:(id)dictionaryMap objectIDToPersistentDictionaryMap:(id)persistentDictionaryMap eventConstraints:(id)constraints;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style;
@end

@implementation _AppExtensionEventEditHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1D35C7CC8(activateCopy);
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x90);
  selfCopy = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & selfCopy->super.isa) + 0x98))(0);
}

- (void)requestPresentViewWithName:(id)name viewID:(id)d presentationStyle:(int64_t)style
{
  v7 = sub_1D35DF384();
  v9 = v8;
  v10 = sub_1D35DF384();
  v12 = v11;
  selfCopy = self;
  sub_1D35C929C(v7, v9, v10, v12, style);

  v9, v14, v15, v16, v17, v18, v19, v20;

  v12, v21, v22, v23, v24, v25, v26, v27;
}

- (void)didCompleteWithAction:(int64_t)action oldToNewObjectIDMap:(id)map waitUntilTimestamp:(id)timestamp serializedDictionary:(id)dictionary objectIDToChangeSetDictionaryMap:(id)dictionaryMap objectIDToPersistentDictionaryMap:(id)persistentDictionaryMap eventConstraints:(id)constraints
{
  mapCopy = map;
  if (map)
  {
    sub_1D35A52E0(0, &qword_1EC76AD00, 0x1E6966A68);
    sub_1D35BC1F4();
    mapCopy = sub_1D35DF344();
  }

  if (dictionary)
  {
    dictionary = sub_1D35DF344();
  }

  if (dictionaryMap)
  {
    sub_1D35A52E0(0, &qword_1EC76AD00, 0x1E6966A68);
    sub_1D35BC1F4();
    dictionaryMap = sub_1D35DF344();
  }

  timestampCopy = timestamp;
  persistentDictionaryMapCopy = persistentDictionaryMap;
  constraintsCopy = constraints;
  selfCopy = self;
  if (persistentDictionaryMapCopy)
  {
    sub_1D35A52E0(0, &qword_1EC76AD00, 0x1E6966A68);
    sub_1D35BC1F4();
    v19 = sub_1D35DF344();

    if (constraintsCopy)
    {
LABEL_9:
      v20 = sub_1D35DEF24();
      v22 = v21;

      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
    if (constraintsCopy)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v22 = 0xF000000000000000;
LABEL_12:
  sub_1D35C9698(action, mapCopy, timestampCopy, dictionary, dictionaryMap, v19, v20, v22);
  sub_1D35C12AC(v20, v22);

  v19, v23, v24, v25, v26, v27, v28, v29;
  dictionaryMap, v30, v31, v32, v33, v34, v35, v36;
  dictionary, v37, v38, v39, v40, v41, v42, v43;

  mapCopy, v44, v45, v46, v47, v48, v49, v50;
}

- (_TtCV10EventKitUI30_AppExtensionEventEditHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end