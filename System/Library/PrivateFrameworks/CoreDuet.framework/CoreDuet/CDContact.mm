@interface CDContact
@end

@implementation CDContact

void __52___CDContact_BackwardCompatability__typeFromString___block_invoke(uint64_t a1)
{
  v27[24] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v25 = getCNContactPhoneNumbersKey();
  v24 = [v2 normalizedStringKey:v25];
  v26[0] = v24;
  v27[0] = &unk_1F05EE670;
  v3 = *(a1 + 32);
  v23 = getCNContactEmailAddressesKey();
  v22 = [v3 normalizedStringKey:v23];
  v26[1] = v22;
  v27[1] = &unk_1F05EE688;
  v4 = *(a1 + 32);
  v21 = getCNContactInstantMessageAddressesKey();
  v20 = [v4 normalizedStringKey:v21];
  v26[2] = v20;
  v27[2] = &unk_1F05EE6A0;
  v5 = *(a1 + 32);
  v19 = getCNContactGivenNameKey();
  v18 = [v5 normalizedStringKey:v19];
  v26[3] = v18;
  v27[3] = &unk_1F05EE6B8;
  v6 = *(a1 + 32);
  v7 = getCNContactSocialProfilesKey();
  v8 = [v6 normalizedStringKey:v7];
  v26[4] = v8;
  v27[4] = &unk_1F05EE6D0;
  v9 = *(a1 + 32);
  v10 = getCNContactUrlAddressesKey();
  v11 = [v9 normalizedStringKey:v10];
  v26[5] = v11;
  v27[5] = &unk_1F05EE6E8;
  v12 = *(a1 + 32);
  v13 = getCNContactPostalAddressesKey();
  v14 = [v12 normalizedStringKey:v13];
  v26[6] = v14;
  v26[7] = @"phone";
  v27[6] = &unk_1F05EE700;
  v27[7] = &unk_1F05EE670;
  v26[8] = @"phone number";
  v26[9] = @"telelphone";
  v27[8] = &unk_1F05EE670;
  v27[9] = &unk_1F05EE670;
  v26[10] = @"telelphone number";
  v26[11] = @"email";
  v27[10] = &unk_1F05EE670;
  v27[11] = &unk_1F05EE688;
  v26[12] = @"email address";
  v26[13] = @"instantmessage";
  v27[12] = &unk_1F05EE688;
  v27[13] = &unk_1F05EE6A0;
  v26[14] = @"im";
  v26[15] = @"instant message";
  v27[14] = &unk_1F05EE6A0;
  v27[15] = &unk_1F05EE6A0;
  v26[16] = @"name";
  v26[17] = @"twitter";
  v27[16] = &unk_1F05EE6B8;
  v27[17] = &unk_1F05EE6D0;
  v26[18] = @"facebook";
  v26[19] = @"url";
  v27[18] = &unk_1F05EE6D0;
  v27[19] = &unk_1F05EE6E8;
  v26[20] = @"map";
  v26[21] = @"location";
  v27[20] = &unk_1F05EE700;
  v27[21] = &unk_1F05EE700;
  v26[22] = @"map-location";
  v27[22] = &unk_1F05EE700;
  v15 = [*(a1 + 32) normalizedStringKey:0];
  v26[23] = v15;
  v27[23] = &unk_1F05EE718;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:24];
  v17 = typeFromString__lookup;
  typeFromString__lookup = v16;
}

@end