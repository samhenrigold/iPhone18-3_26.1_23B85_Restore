@interface BlastDoorBasicTextMessageMessageTypeWrapper
- (BlastDoorBasicAudioMessage)audioMessage;
- (BlastDoorBasicEmojiTapback)emojiTapback;
- (BlastDoorBasicMessage)textMessage;
- (BlastDoorBasicTapBack)tapback;
- (BlastDoorBasicTextMessageMessageTypeWrapper)init;
- (BlastDoorBasicTypingIndicator)typingIndicator;
- (BlastDoorUnsupportedMessage)unsupported;
- (NSString)description;
- (unint64_t)type;
@end

@implementation BlastDoorBasicTextMessageMessageTypeWrapper

- (NSString)description
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v24 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v25[0] = v3;
  *(v25 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v20 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v21 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v22 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v23 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v17[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v17[1] = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v18 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v19 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v15[19] = v24;
  v16[0] = v12;
  *(v16 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v15[15] = v20;
  v15[16] = v6;
  v15[17] = v22;
  v15[18] = v2;
  v15[11] = v11;
  v15[12] = v10;
  v15[13] = v18;
  v15[14] = v4;
  sub_21409C7E8(v17, v15);
  sub_2146D9608();
  v13 = sub_2146D9588();

  return v13;
}

- (unint64_t)type
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v9[8] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v10[0] = v2;
  *(v10 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v9[4] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v9[5] = v3;
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v9[6] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v9[7] = v4;
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v9[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v9[1] = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v9[2] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v9[3] = v6;
  v7 = sub_2143223B0(v9);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      nullsub_1();
      return 3;
    }

    else if (v7 == 4)
    {
      nullsub_1();
      return 4;
    }

    else
    {
      nullsub_1();
      return 5;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      nullsub_1();
      return 1;
    }

    else
    {
      nullsub_1();
      return 2;
    }
  }

  else
  {
    nullsub_1();
    return 0;
  }
}

- (BlastDoorBasicTypingIndicator)typingIndicator
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v31 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v32[0] = v3;
  *(v32 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v27 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v28 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v29 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v30 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v23 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v24 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v25 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v26 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v33[8] = v31;
  v34[0] = v12;
  *(v34 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v33[4] = v27;
  v33[5] = v6;
  v33[6] = v29;
  v33[7] = v2;
  v33[0] = v11;
  v33[1] = v10;
  v33[2] = v25;
  v33[3] = v4;
  if (sub_2143223B0(v33))
  {
    v13 = 0;
  }

  else
  {
    nullsub_1();
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = type metadata accessor for _ObjCBasicTypingIndicatorWrapper();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator];
    *v19 = v15;
    *(v19 + 1) = v16;
    v21[1] = v23;
    v21[2] = v24;
    v21[5] = v27;
    v21[6] = v28;
    v21[3] = v25;
    v21[4] = v26;
    *&v22[9] = *(v32 + 9);
    v21[9] = v31;
    *v22 = v32[0];
    v21[7] = v29;
    v21[8] = v30;
    nullsub_1();
    v21[0].receiver = v18;
    v21[0].super_class = v17;

    v13 = [(objc_super *)v21 init];
  }

  return v13;
}

- (BlastDoorBasicMessage)textMessage
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v46 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v47[0] = v3;
  *(v47 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v42 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v43 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v44 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v45 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v38 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v39 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v40 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v41 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v48[8] = v46;
  v49[0] = v12;
  *(v49 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v48[4] = v42;
  v48[5] = v6;
  v48[6] = v44;
  v48[7] = v2;
  v48[0] = v11;
  v48[1] = v10;
  v48[2] = v40;
  v48[3] = v4;
  if (sub_2143223B0(v48) == 1)
  {
    nullsub_1();
    v14 = v13;
    v15 = type metadata accessor for _ObjCBasicMessageWrapper();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR___BlastDoorBasicMessage_basicMessage];
    v19 = v14[1];
    v18 = v14[2];
    *v17 = *v14;
    *(v17 + 1) = v19;
    *(v17 + 2) = v18;
    v21 = v14[4];
    v20 = v14[5];
    v22 = v14[3];
    *(v17 + 89) = *(v14 + 89);
    *(v17 + 4) = v21;
    *(v17 + 5) = v20;
    *(v17 + 3) = v22;
    v36 = v46;
    v37[0] = v47[0];
    *(v37 + 9) = *(v47 + 9);
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    nullsub_1();
    sub_2142E5B20(v23, v27);
    v26.receiver = v16;
    v26.super_class = v15;
    v24 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v26 init];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BlastDoorBasicTapBack)tapback
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v47 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v48[0] = v3;
  *(v48 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v43 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v44 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v45 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v46 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v39 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v40 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v41 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v42 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v49[8] = v47;
  v50[0] = v12;
  *(v50 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v49[4] = v43;
  v49[5] = v6;
  v49[6] = v45;
  v49[7] = v2;
  v49[0] = v11;
  v49[1] = v10;
  v49[2] = v41;
  v49[3] = v4;
  if (sub_2143223B0(v49) == 2)
  {
    nullsub_1();
    v14 = v13;
    v15 = type metadata accessor for _ObjCBasicTapBackWrapper();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR___BlastDoorBasicTapBack_basicTapBack];
    v18 = v14[3];
    v20 = *v14;
    v19 = v14[1];
    *(v17 + 2) = v14[2];
    *(v17 + 3) = v18;
    *v17 = v20;
    *(v17 + 1) = v19;
    v21 = v14[7];
    v23 = v14[4];
    v22 = v14[5];
    *(v17 + 6) = v14[6];
    *(v17 + 7) = v21;
    *(v17 + 4) = v23;
    *(v17 + 5) = v22;
    v29 = v39;
    v30 = v40;
    v33 = v43;
    v34 = v44;
    v31 = v41;
    v32 = v42;
    *(v38 + 9) = *(v48 + 9);
    v37 = v47;
    v38[0] = v48[0];
    v35 = v45;
    v36 = v46;
    nullsub_1();
    sub_2142E5C78(v24, v28);
    v27.receiver = v16;
    v27.super_class = v15;
    v25 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v27 init];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BlastDoorBasicAudioMessage)audioMessage
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v44 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v45[0] = v3;
  *(v45 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v40 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v41 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v42 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v43 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v36 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v37 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v38 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v39 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v46[8] = v44;
  v47[0] = v12;
  *(v47 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v46[4] = v40;
  v46[5] = v6;
  v46[6] = v42;
  v46[7] = v2;
  v46[0] = v11;
  v46[1] = v10;
  v46[2] = v38;
  v46[3] = v4;
  if (sub_2143223B0(v46) == 3)
  {
    nullsub_1();
    v14 = v13;
    v15 = type metadata accessor for _ObjCBasicAudioMessageWrapper();
    v16 = objc_allocWithZone(v15);
    v17 = &v16[OBJC_IVAR___BlastDoorBasicAudioMessage_basicAudioMessage];
    v18 = v14[3];
    v20 = *v14;
    v19 = v14[1];
    *(v17 + 2) = v14[2];
    *(v17 + 3) = v18;
    *v17 = v20;
    *(v17 + 1) = v19;
    v26 = v36;
    v27 = v37;
    v30 = v40;
    v31 = v41;
    v28 = v38;
    v29 = v39;
    *&v35[9] = *(v45 + 9);
    v34 = v44;
    *v35 = v45[0];
    v32 = v42;
    v33 = v43;
    nullsub_1();
    sub_2142E55D0(v21, v25);
    v24.receiver = v16;
    v24.super_class = v15;
    v22 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v24 init];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BlastDoorUnsupportedMessage)unsupported
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v42 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v43[0] = v3;
  *(v43 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v38 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v39 = v5;
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v40 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v41 = v7;
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v34 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v35 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v36 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v37 = v9;
  v12 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  v44[8] = v42;
  v45[0] = v12;
  *(v45 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v44[4] = v38;
  v44[5] = v6;
  v44[6] = v40;
  v44[7] = v2;
  v44[0] = v11;
  v44[1] = v10;
  v44[2] = v36;
  v44[3] = v4;
  if (sub_2143223B0(v44) == 4)
  {
    nullsub_1();
    v14 = v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = type metadata accessor for _ObjCUnsupportedMessageWrapper();
    v22 = *v14;
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
    *v19 = v22;
    *(v19 + 2) = v15;
    v19[24] = v16;
    v24 = v34;
    v25 = v35;
    v28 = v38;
    v29 = v39;
    v26 = v36;
    v27 = v37;
    *&v33[9] = *(v43 + 9);
    v32 = v42;
    *v33 = v43[0];
    v30 = v40;
    v31 = v41;
    nullsub_1();
    v23.receiver = v18;
    v23.super_class = v17;

    v20 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v23 init];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BlastDoorBasicEmojiTapback)emojiTapback
{
  v2 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v3 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v47 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 104];
  v48 = v2;
  v4 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 120];
  v49[0] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  *(v49 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v5 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v6 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v44 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 56];
  v45 = v6;
  v7 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 72];
  v46 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 88];
  v8 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v40 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v41 = v8;
  v9 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 40];
  v11 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType);
  v10 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 8];
  v42 = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 24];
  v43 = v9;
  v50[7] = v47;
  v50[8] = v4;
  v51[0] = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 136];
  *(v51 + 9) = *&self->basicTextMessage_MessageType[OBJC_IVAR___BlastDoorBasicTextMessageMessageTypeWrapper_basicTextMessage_MessageType + 145];
  v50[4] = v44;
  v50[5] = v7;
  v50[6] = v3;
  v50[0] = v11;
  v50[1] = v10;
  v50[2] = v42;
  v50[3] = v5;
  if (sub_2143223B0(v50) == 5)
  {
    nullsub_1();
    v13 = v12;
    v14 = type metadata accessor for _ObjCBasicEmojiTapbackWrapper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR___BlastDoorBasicEmojiTapback_basicEmojiTapback];
    v18 = *(v13 + 16);
    v17 = *(v13 + 32);
    *v16 = *v13;
    *(v16 + 1) = v18;
    *(v16 + 2) = v17;
    v19 = *(v13 + 96);
    v21 = *(v13 + 48);
    v20 = *(v13 + 64);
    *(v16 + 5) = *(v13 + 80);
    *(v16 + 6) = v19;
    *(v16 + 3) = v21;
    *(v16 + 4) = v20;
    v23 = *(v13 + 128);
    v22 = *(v13 + 144);
    v24 = *(v13 + 112);
    *(v16 + 20) = *(v13 + 160);
    *(v16 + 8) = v23;
    *(v16 + 9) = v22;
    *(v16 + 7) = v24;
    v38 = v48;
    v39[0] = v49[0];
    *(v39 + 9) = *(v49 + 9);
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    nullsub_1();
    sub_2142E58CC(v25, v29);
    v28.receiver = v15;
    v28.super_class = v14;
    v26 = [(BlastDoorBasicTextMessageMessageTypeWrapper *)&v28 init];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BlastDoorBasicTextMessageMessageTypeWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end