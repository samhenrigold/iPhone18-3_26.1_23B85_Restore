@interface EKConferencePersistence
+ (id)deserializeConference:(id)conference;
+ (id)serializeConference:(id)conference;
@end

@implementation EKConferencePersistence

+ (id)serializeConference:(id)conference
{
  conferenceCopy = conference;
  v4 = [ConferenceDatatypeConverter calVirtualConferenceFromEKVirtualConference:conferenceCopy];
  joinMethods = [conferenceCopy joinMethods];
  firstObject = [joinMethods firstObject];
  v7 = [firstObject URL];
  v8 = [EKConferenceUtils synchronousAppTitleOnlyForURL:v7 incomplete:0];

  v10 = EKBundle(v9);
  v11 = [v10 localizedStringForKey:@"Video Call" value:&stru_1F1B49D68 table:0];

  serializationBlockTitle = [conferenceCopy serializationBlockTitle];

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v11;
  }

  if (serializationBlockTitle)
  {
    v13 = serializationBlockTitle;
  }

  v14 = v13;

  v15 = [MEMORY[0x1E6992F38] serializeConference:v4 serializationBlockTitle:v14];

  return v15;
}

+ (id)deserializeConference:(id)conference
{
  v3 = [MEMORY[0x1E6992F38] deserializeConference:conference];
  v4 = [ConferenceDatatypeConverter ekDeserializationResultFromCalDeserializationResult:v3];

  return v4;
}

@end