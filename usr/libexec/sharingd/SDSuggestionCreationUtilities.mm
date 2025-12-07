@interface SDSuggestionCreationUtilities
+ (void)retrieveSuggestionForRecipients:(NSArray *)recipients inActivityType:(NSString *)type completionHandler:(id)handler;
- (_TtC16DaemoniOSLibrary29SDSuggestionCreationUtilities)init;
@end

@implementation SDSuggestionCreationUtilities

+ (void)retrieveSuggestionForRecipients:(NSArray *)recipients inActivityType:(NSString *)type completionHandler:(id)handler
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = recipients;
  v13[3] = type;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1007FB9E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10080F2C0;
  v16[5] = v15;
  recipientsCopy = recipients;
  typeCopy = type;
  sub_1006E2B30(0, 0, v11, &unk_1007FB9F0, v16);
}

- (_TtC16DaemoniOSLibrary29SDSuggestionCreationUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SDSuggestionCreationUtilities();
  return [(SDSuggestionCreationUtilities *)&v3 init];
}

@end