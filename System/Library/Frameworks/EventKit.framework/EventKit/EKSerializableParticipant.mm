@interface EKSerializableParticipant
+ (id)classesForKey;
- (EKSerializableParticipant)initWithParticipant:(id)participant;
- (id)createAttendee:(id *)attendee;
@end

@implementation EKSerializableParticipant

+ (id)classesForKey
{
  v19[7] = *MEMORY[0x1E69E9840];
  v18[0] = @"name";
  v17 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v19[0] = v2;
  v18[1] = @"emailAddress";
  v16 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v19[1] = v3;
  v18[2] = @"phoneNumber";
  v15 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v19[2] = v4;
  v18[3] = @"url";
  v14 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v19[3] = v5;
  v18[4] = @"participantRole";
  v13 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v19[4] = v6;
  v18[5] = @"participantStatus";
  v12 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v19[5] = v7;
  v18[6] = @"participantType";
  v11 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v19[6] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];

  return v9;
}

- (EKSerializableParticipant)initWithParticipant:(id)participant
{
  participantCopy = participant;
  v11.receiver = self;
  v11.super_class = EKSerializableParticipant;
  v5 = [(EKSerializableParticipant *)&v11 init];
  if (v5)
  {
    name = [participantCopy name];
    [(EKSerializableParticipant *)v5 setName:name];

    emailAddress = [participantCopy emailAddress];
    [(EKSerializableParticipant *)v5 setEmailAddress:emailAddress];

    phoneNumber = [participantCopy phoneNumber];
    [(EKSerializableParticipant *)v5 setPhoneNumber:phoneNumber];

    v9 = [participantCopy URL];
    [(EKSerializableParticipant *)v5 setUrl:v9];

    -[EKSerializableParticipant setParticipantRole:](v5, "setParticipantRole:", [participantCopy participantRole]);
    -[EKSerializableParticipant setParticipantStatus:](v5, "setParticipantStatus:", [participantCopy participantStatus]);
    -[EKSerializableParticipant setParticipantType:](v5, "setParticipantType:", [participantCopy participantType]);
  }

  return v5;
}

- (id)createAttendee:(id *)attendee
{
  v14[1] = *MEMORY[0x1E69E9840];
  phoneNumber = [(EKSerializableParticipant *)self phoneNumber];
  if (phoneNumber || ([(EKSerializableParticipant *)self emailAddress], (phoneNumber = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    name = [(EKSerializableParticipant *)self name];
    emailAddress = [(EKSerializableParticipant *)self emailAddress];
    phoneNumber2 = [(EKSerializableParticipant *)self phoneNumber];
    v9 = [(EKSerializableParticipant *)self url];
    attendee = [EKAttendee attendeeWithName:name emailAddress:emailAddress phoneNumber:phoneNumber2 url:v9];

    [attendee setParticipantRole:{-[EKSerializableParticipant participantRole](self, "participantRole")}];
    [attendee setParticipantType:{-[EKSerializableParticipant participantType](self, "participantType")}];
    [attendee setParticipantStatus:{-[EKSerializableParticipant participantStatus](self, "participantStatus")}];
    goto LABEL_5;
  }

  v11 = [(EKSerializableParticipant *)self url];

  if (v11)
  {
    goto LABEL_4;
  }

  if (attendee)
  {
    v13 = *MEMORY[0x1E696A580];
    v14[0] = @"Either url, phoneNumber or emailAddress should not be nil.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *attendee = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:v12];

    attendee = 0;
  }

LABEL_5:

  return attendee;
}

@end