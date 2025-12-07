uint64_t _CKCheckArgument(uint64_t a1, void *a2, int a3, char a4, int a5, void *a6)
{
  v12 = a2;
  if (!v12)
  {
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v11, @"CKErrorDomain", 12, @"%s can not be nil", a1);
      goto LABEL_9;
    }

LABEL_21:
    v17 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v17 = 1;
    goto LABEL_22;
  }

  v15 = objc_msgSend_length(v12, v13, v14);
  if ((a5 ^ 1 | a3) == 1 && !v15)
  {
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 12, @"%s can not be empty", a1);
LABEL_9:
      *a6 = v17 = 0;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (a3)
  {
    if (v15 < 0x100)
    {
      if ((objc_msgSend_hasPrefix_(v12, v16, @"cloudkit.") & 1) == 0)
      {
        v18 = v12;
        v21 = objc_msgSend_UTF8String(v18, v19, v20);
        v23 = objc_msgSend_lengthOfBytesUsingEncoding_(v12, v22, 4);
        if ((sub_1883F3A8C(v21, v23) & 1) == 0)
        {
          if (a6)
          {
            objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v24, @"CKErrorDomain", 12, @"%s (%@) contains invalid characters", a1, v12);
            goto LABEL_9;
          }

          goto LABEL_21;
        }
      }

      goto LABEL_14;
    }

LABEL_17:
    if (a6)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v16, @"CKErrorDomain", 12, @"%s (%@) is too long", a1, v12);
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v17 = 1;
  if (v15 >= 0x100 && (a4 & 1) != 0)
  {
    goto LABEL_17;
  }

LABEL_22:

  return v17;
}

void sub_1883ECB84(uint64_t a1, const char *a2)
{
  v24[38] = *MEMORY[0x1E69E9840];
  v23[0] = @"com.apple.ActivitySharing";
  v23[1] = @"com.apple.bluetooth";
  v24[0] = &unk_1EFA85650;
  v24[1] = &unk_1EFA85668;
  v23[2] = @"com.apple.clouddocs";
  v23[3] = @"com.apple.test.p01.B.Xaeaeg.com.apple.clouddocs";
  v23[4] = @"com.apple.photos.cloud";
  v23[5] = @"com.apple.test.p01.B.Xaeaeg.com.apple.photos.cloud";
  v24[4] = &unk_1EFA85698;
  v24[5] = &unk_1EFA85698;
  v23[6] = @"com.apple.coremotion.coldstorage";
  v23[7] = @"com.apple.health.sync.secure";
  v23[8] = @"com.apple.willow.config";
  v23[9] = @"com.apple.iad-cloudkit";
  v24[8] = &unk_1EFA856C8;
  v24[9] = &unk_1EFA856E0;
  v23[10] = @"com.apple.pages.sync";
  v23[11] = @"com.apple.numbers.sync";
  v24[10] = &unk_1EFA856F8;
  v24[11] = &unk_1EFA85710;
  v23[12] = @"com.apple.keynote.sync";
  v23[13] = @"com.apple.journal";
  v23[14] = @"com.apple.textinput.KeyboardServices";
  v23[15] = @"com.apple.security.keychain";
  v24[14] = &unk_1EFA85758;
  v24[15] = &unk_1EFA85770;
  v23[16] = @"com.apple.KeyValueService";
  v23[17] = @"com.apple.largeattachment";
  v24[16] = &unk_1EFA85788;
  v24[17] = &unk_1EFA857A0;
  v24[12] = &unk_1EFA85728;
  v24[13] = &unk_1EFA85740;
  v23[18] = @"com.apple.messages.cloud";
  v23[19] = @"com.apple.Avatars";
  v24[18] = &unk_1EFA857B8;
  v24[19] = &unk_1EFA857D0;
  v23[20] = @"com.apple.moments";
  v23[21] = @"com.apple.callhistory.cloud-storage2";
  v24[20] = &unk_1EFA85740;
  v24[21] = &unk_1EFA857E8;
  v23[22] = @"com.apple.FTMessageStoreService";
  v23[23] = @"com.apple.ProactivePredictionsBackup";
  v24[22] = &unk_1EFA85800;
  v24[23] = &unk_1EFA85818;
  v23[24] = @"com.apple.reminders";
  v23[25] = @"com.apple.SafariShared.WBSCloudBookmarksStore";
  v24[24] = &unk_1EFA85830;
  v24[25] = &unk_1EFA85848;
  v24[2] = &unk_1EFA85680;
  v24[3] = &unk_1EFA85680;
  v23[26] = @"com.apple.SafariShared.WBSCloudHistoryStore";
  v23[27] = @"com.apple.SafariShared.CloudTabs";
  v24[26] = &unk_1EFA85860;
  v24[27] = &unk_1EFA85878;
  v23[28] = @"com.apple.test.p01.B.Xaeaeg.com.apple.SafariShared.CloudTabs";
  v23[29] = @"com.apple.test.p01.B.Xaeaeg.com.apple.freeform";
  v24[28] = &unk_1EFA85878;
  v24[29] = &unk_1EFA85890;
  v23[30] = @"com.apple.freeform";
  v23[31] = @"com.apple.sharingd";
  v24[30] = &unk_1EFA85890;
  v24[31] = &unk_1EFA858A8;
  v24[6] = &unk_1EFA856B0;
  v24[7] = &unk_1EFA856B0;
  v23[32] = @"com.apple.socialgaming.sessions";
  v23[33] = @"com.apple.accessibility.TTYCallHistory";
  v24[32] = &unk_1EFA858C0;
  v24[33] = &unk_1EFA858D8;
  v23[34] = @"com.apple.vo2max";
  v23[35] = @"com.apple.managedassets";
  v24[34] = &unk_1EFA856B0;
  v24[35] = &unk_1EFA858F0;
  v23[36] = @"com.apple.test.p01.B.Xaeaeg.com.apple.icloud.events";
  v23[37] = @"com.apple.icloud.events";
  v24[36] = &unk_1EFA85908;
  v24[37] = &unk_1EFA85908;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v24, v23, 38);
  v3 = qword_1ED4B6088;
  qword_1ED4B6088 = v2;

  v21[0] = @"com.apple.backup";
  v21[1] = @"com.apple.notes";
  v22[0] = &unk_1EFA85920;
  v22[1] = &unk_1EFA85938;
  v21[2] = @"com.apple.news";
  v21[3] = @"com.apple.siri";
  v22[2] = &unk_1EFA85950;
  v22[3] = &unk_1EFA85968;
  v21[4] = @"com.apple.pay";
  v21[5] = @"com.apple.homekit";
  v22[4] = &unk_1EFA85980;
  v22[5] = &unk_1EFA856C8;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v22, v21, 6);
  v6 = qword_1ED4B6090;
  qword_1ED4B6090 = v5;

  v19[0] = @"com.apple.clouddocs";
  v19[1] = @"com.apple.test.reminders";
  v20[0] = &unk_1EFA85680;
  v20[1] = &unk_1EFA85830;
  v19[2] = @"com.apple.siri.profile";
  v19[3] = @"com.apple.test.zone_sharing.dugong.zoneish_pcs";
  v20[2] = &unk_1EFA85998;
  v20[3] = &unk_1EFA859B0;
  v19[4] = @"com.apple.test.zone_sharing.dugong.record_pcs";
  v20[4] = &unk_1EFA859B0;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v20, v19, 5);
  v9 = qword_1ED4B6098;
  qword_1ED4B6098 = v8;

  v11 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v10, @"com.apple.ckcode.ckclient.unittests");
  v12 = qword_1ED4B60A0;
  qword_1ED4B60A0 = v11;

  v14 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v13, @"com.apple.test.", @"com.apple.cloudkit.unittest.", 0);
  v15 = qword_1ED4B60A8;
  qword_1ED4B60A8 = v14;

  v17 = objc_msgSend_setWithObjects_(MEMORY[0x1E695DFD8], v16, @"com.apple.", @"iCloud.com.apple.", 0);
  v18 = qword_1ED4B60B0;
  qword_1ED4B60B0 = v17;
}

uint64_t sub_1883ED1F0()
{
  result = dyld_program_sdk_at_least();
  byte_1ED4B65D7 = result;
  return result;
}

uint64_t sub_1883ED3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__CFString *CKContainerEnvironmentString(uint64_t a1)
{
  v1 = @"UNKNOWN ENVIRONMENT";
  if (a1 == 2)
  {
    v1 = @"Sandbox";
  }

  if (a1 == 1)
  {
    return @"Production";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1883ED834(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED844(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED874(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 sub_1883ED884(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_1883ED890(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED8D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883ED8E0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED90C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883ED938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883ED948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883ED958(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED984(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED9B0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883ED9DC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA08(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA34(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA60(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDA8C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDAB8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDAE4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB10(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB3C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB68(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDB94(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDBC0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDBEC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDC18(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDC44(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDC70(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EDC9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883EDCAC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDCD8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD04(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD30(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD5C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDD88(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDDB4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDDE0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE0C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE38(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE64(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDE90(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDEBC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDEE8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF14(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF40(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF6C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDF98(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDFC4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EDFF0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE01C(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE048(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE074(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE0A0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE0CC(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void *sub_1883EE0F8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EE124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883EE144(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EE170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1883EE190(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1883EE1BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE1FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE20C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE21C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE22C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE23C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE24C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1883EE25C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

NSString *sub_1883EE7E4(uint64_t a1)
{
  v1 = objc_opt_class();

  return NSStringFromClass(v1);
}

id CKErrorUserInfoClasses()
{
  if (qword_1ED4B6660 != -1)
  {
    dispatch_once(&qword_1ED4B6660, &unk_1EFA30AF0);
  }

  v1 = qword_1ED4B6658;

  return v1;
}

uint64_t sub_1883EE968()
{
  v21 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v12 = objc_msgSend_setWithObjects_(v21, v11, v20, v19, v18, v17, v16, v15, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0);
  v13 = qword_1ED4B6658;
  qword_1ED4B6658 = v12;

  return MEMORY[0x1EEE66BB8](v12, v13);
}

id sub_1883EEF04(void *a1)
{
  v14 = 0;
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = CKHexCharFromBytes(v5, v8, &v14, 1);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v11, v9, v14, 1, 1);

  return v12;
}

_BYTE *CKHexCharFromBytes(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v4 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    v5 = "0123456789ABCDEF";
  }

  else
  {
    v5 = "0123456789abcdef";
  }

  if (a2 >= 0x5555555555555556)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = v4;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Warn: Hex string length is too long: %lu", &v19, 0xCu);
    }

    return 0;
  }

  v11 = (a2 - 1) >> 2;
  if (a4)
  {
    v11 = 0;
  }

  result = malloc_type_calloc(v11 + 2 * a2 + 1, 1uLL, 0xBF582324uLL);
  if (v4 < 5)
  {
    v12 = 0;
    v14 = result;
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
    v13 = a1;
    v14 = result;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *v14 = v5[*(v13 + i) >> 4];
        v14[1] = v5[*(v13 + i) & 0xF];
        v14 += 2;
      }

      if ((a4 & 1) == 0)
      {
        *v14++ = 32;
      }

      v12 += 4;
      v4 -= 4;
      v13 += 4;
    }

    while (v4 > 4);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v16 = (a1 + v12);
  do
  {
    *v14 = v5[*v16 >> 4];
    v17 = *v16++;
    v18 = v14 + 2;
    v14[1] = v5[v17 & 0xF];
    v14 += 2;
    --v4;
  }

  while (v4);
  v14 = v18;
LABEL_25:
  *v14 = 0;
  if (a3)
  {
    *a3 = v14 - result;
  }

  return result;
}

id sub_1883EF1AC(void *a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  v3 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], a2, v15, 32, 0);
  v4 = a1;
  v7 = objc_msgSend_bytes(v4, v5, v6);
  v10 = objc_msgSend_length(v4, v8, v9);
  CC_SHA256(v7, v10, v15);
  v13 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v3, v11, v12);

  return v13;
}

void sub_1883EF330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1883EF348(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = geteuid();
  if (v2 == 501 || !v2)
  {
    if (__sTestOverridesAvailable)
    {
      v5 = @"TEST_AccountInfoValidationCounter";
    }

    else
    {
      v5 = @"AccountInfoValidationCounter";
    }

    v6 = objc_msgSend_suiteName(CKUserDefaults, v3, v4);
    v7 = CFPreferencesCopyValue(v5, v6, @"mobile", *MEMORY[0x1E695E898]);
    if (v7)
    {
      v8 = v7;
      CFNumberGetValue(v7, kCFNumberNSIntegerType, &qword_1ED4B6018);
      CFRelease(v8);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11[0] = 67109120;
        v11[1] = geteuid();
        _os_log_impl(&dword_1883EA000, v10, OS_LOG_TYPE_INFO, "Could not fetch account info cache validation counter, running as user %u", v11, 8u);
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = qword_1ED4B6018;
}

void CKOncePerBoot(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  pthread_mutex_lock(&stru_1ED4B5F80);
  if ((byte_1ED4B65DC & 1) == 0)
  {
    byte_1ED4B65DC = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = qword_1ED4B65E8;
    qword_1ED4B65E8 = v6;

    v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v8, v9);
    v12 = objc_msgSend_integerForKey_(v10, v11, @"CKStartupTime");
    v13 = CKBootTime();
    if (v12 == v13)
    {
      v15 = objc_msgSend_objectForKey_(v10, v14, @"CKPerBootTasks");
      objc_msgSend_addObjectsFromArray_(qword_1ED4B65E8, v16, v15);

      qword_1ED4B6758 = 0;
    }

    else
    {
      v17 = v13;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v18 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        LOWORD(v50) = 0;
        _os_log_impl(&dword_1883EA000, v18, OS_LOG_TYPE_INFO, "Detected reboot. Resetting once-per-boot tasks.", &v50, 2u);
      }

      qword_1ED4B6758 = v17;
      if (v17)
      {
        v19 = 1;
        goto LABEL_11;
      }
    }
  }

  v19 = 0;
LABEL_11:
  if (objc_msgSend_containsObject_(qword_1ED4B65E8, v5, v3))
  {
    pthread_mutex_unlock(&stru_1ED4B5F80);
    if (!v19)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v23 = objc_msgSend_objectForKey_(qword_1ED4B65F0, v20, v3);
  if (!v23)
  {
    v30 = qword_1ED4B65F0;
    if (!qword_1ED4B65F0)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v32 = qword_1ED4B65F0;
      qword_1ED4B65F0 = v31;

      v30 = qword_1ED4B65F0;
    }

    v33 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v24, v25);
    objc_msgSend_setObject_forKey_(v30, v34, v33, v3);

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v35 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v50 = 138543362;
      v51 = v3;
      _os_log_impl(&dword_1883EA000, v35, OS_LOG_TYPE_INFO, "Starting once-per-boot task: %{public}@", &v50, 0xCu);
    }

    pthread_mutex_unlock(&stru_1ED4B5F80);
    if (v4)
    {
      v4[2](v4);
    }

    pthread_mutex_lock(&stru_1ED4B5F80);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v36 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      v50 = 138543362;
      v51 = v3;
      _os_log_impl(&dword_1883EA000, v36, OS_LOG_TYPE_INFO, "Completed once-per-boot task: %{public}@", &v50, 0xCu);
    }

    objc_msgSend_addObject_(qword_1ED4B65E8, v37, v3);
    pthread_mutex_lock(&stru_1ED4B5FC0);
    v40 = objc_msgSend_allObjects(qword_1ED4B65E8, v38, v39);
    v41 = qword_1ED4B65F8;
    qword_1ED4B65F8 = v40;

    pthread_mutex_unlock(&stru_1ED4B5FC0);
    v45 = objc_msgSend_count(qword_1ED4B65F0, v42, v43);
    v46 = qword_1ED4B65F0;
    if (v45 == 1)
    {
      qword_1ED4B65F0 = 0;
    }

    else
    {
      objc_msgSend_removeObjectForKey_(qword_1ED4B65F0, v44, v3);
    }

    pthread_cond_broadcast(&stru_1ED4B5F50);
    pthread_mutex_unlock(&stru_1ED4B5F80);
    goto LABEL_36;
  }

  v26 = v23;
  v27 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v24, v25);

  if (v26 == v27)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v28, *MEMORY[0x1E695D930], @"Recursive once per boot initialization is not allowed");
  }

  do
  {
    pthread_cond_wait(&stru_1ED4B5F50, &stru_1ED4B5F80);
  }

  while (!objc_msgSend_containsObject_(qword_1ED4B65E8, v29, v3));

  pthread_mutex_unlock(&stru_1ED4B5F80);
  if (v19)
  {
LABEL_36:
    v47 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v21, v22);
    pthread_mutex_lock(&stru_1ED4B5FC0);
    if (qword_1ED4B6758)
    {
      objc_msgSend_setInteger_forKey_(v47, v48, qword_1ED4B6758, @"CKStartupTime");
      qword_1ED4B6758 = 0;
    }

    if (qword_1ED4B65F8)
    {
      objc_msgSend_setObject_forKey_(v47, v48, qword_1ED4B65F8, @"CKPerBootTasks");
      v49 = qword_1ED4B65F8;
      qword_1ED4B65F8 = 0;
    }

    pthread_mutex_unlock(&stru_1ED4B5FC0);
  }

LABEL_41:
}

uint64_t sub_1883EFE18()
{
  v0 = [CKBehaviorOptions alloc];
  inited = objc_msgSend_initInternal(v0, v1, v2);
  v4 = qword_1ED4B6510;
  qword_1ED4B6510 = inited;

  return MEMORY[0x1EEE66BB8](inited, v4);
}

void sub_1883F0048(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Not using system installed binaries: %@", &v5, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v5) = 0;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Using system installed binaries", &v5, 2u);
    }
  }
}

void ck_log_facilities_setup_logging_facilities()
{
  if (_sCKUseSystemInstalledBinariesPredicate != -1)
  {
    dispatch_once(&_sCKUseSystemInstalledBinariesPredicate, &unk_1EFA30770);
  }

  if (_sCKUseSystemInstalledBinaries == 1 && __sTestOverridesAvailable != 1)
  {
    v0 = "com.apple.cloudkit";
  }

  else
  {
    v0 = "com.apple.cloudkit.test";
  }

  if (qword_1ED4B67C0 != v0)
  {
    qword_1ED4B67C0 = v0;
    v1 = os_log_create(v0, "CK");
    v2 = ck_log_facility_ck;
    ck_log_facility_ck = v1;

    v3 = os_log_create(v0, "PCS");
    v4 = ck_log_facility_pcs;
    ck_log_facility_pcs = v3;

    v5 = os_log_create(v0, "SQL");
    v6 = ck_log_facility_sql;
    ck_log_facility_sql = v5;

    v7 = os_log_create(v0, "STAT");
    v8 = ck_log_facility_status;
    ck_log_facility_status = v7;

    v9 = os_log_create(v0, "Request");
    v10 = ck_log_facility_request;
    ck_log_facility_request = v9;

    v11 = os_log_create(v0, "MMCS");
    v12 = ck_log_facility_mmcs;
    ck_log_facility_mmcs = v11;

    v13 = os_log_create(v0, "Asset");
    v14 = ck_log_facility_asset;
    ck_log_facility_asset = v13;

    v15 = os_log_create(v0, "Package");
    v16 = ck_log_facility_package;
    ck_log_facility_package = v15;

    v17 = os_log_create(v0, "OP");
    v18 = ck_log_facility_op;
    ck_log_facility_op = v17;

    v19 = os_log_create(v0, "TrafficBinary");
    v20 = ck_log_facility_traffic_binary;
    ck_log_facility_traffic_binary = v19;

    v21 = os_log_create(v0, "LogStats");
    v22 = ck_log_facility_logstats;
    ck_log_facility_logstats = v21;

    v23 = os_log_create(v0, "Scheduler");
    v24 = ck_log_facility_scheduler;
    ck_log_facility_scheduler = v23;

    v25 = os_log_create(v0, "NotificationListener");
    v26 = ck_log_facility_notification_listener;
    ck_log_facility_notification_listener = v25;

    v27 = os_log_create(v0, "Engine");
    v28 = ck_log_facility_engine;
    ck_log_facility_engine = v27;

    v29 = os_log_create(v0, "DataRepair");
    v30 = ck_log_facility_data_repair;
    ck_log_facility_data_repair = v29;

    v31 = os_log_create(v0, "DistributedSync");
    v32 = ck_log_facility_distributed_sync;
    ck_log_facility_distributed_sync = v31;

    v33 = os_log_create(v0, "DiscretionaryDaemon");
    v34 = ck_log_facility_ckdd;
    ck_log_facility_ckdd = v33;

    v35 = os_log_create(v0, "MockServer");
    v36 = ck_log_facility_mock;
    ck_log_facility_mock = v35;

    v37 = os_log_create(v0, "TrafficCompressed");
    v38 = ck_log_facility_traffic_compressed;
    ck_log_facility_traffic_compressed = v37;

    MEMORY[0x1EEE66BB8](v37, v38);
  }
}

void sub_1883F049C()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_initially_inactive(v0);

  v1 = dispatch_queue_create("com.apple.cloudkit.global.user_interactive", attr);
  v2 = qword_1ED4B66A0;
  qword_1ED4B66A0 = v1;

  v3 = qword_1ED4B66A0;
  v4 = dispatch_get_global_queue(33, 0);
  dispatch_set_target_queue(v3, v4);

  v5 = dispatch_queue_create("com.apple.cloudkit.global.user_initiated", attr);
  v6 = qword_1ED4B66A8;
  qword_1ED4B66A8 = v5;

  v7 = qword_1ED4B66A8;
  v8 = dispatch_get_global_queue(25, 0);
  dispatch_set_target_queue(v7, v8);

  v9 = dispatch_queue_create("com.apple.cloudkit.default", attr);
  v10 = qword_1ED4B66B0;
  qword_1ED4B66B0 = v9;

  v11 = qword_1ED4B66B0;
  v12 = dispatch_get_global_queue(21, 0);
  dispatch_set_target_queue(v11, v12);

  v13 = dispatch_queue_create("com.apple.cloudkit.global.utility", attr);
  v14 = qword_1ED4B66B8;
  qword_1ED4B66B8 = v13;

  v15 = qword_1ED4B66B8;
  v16 = dispatch_get_global_queue(17, 0);
  dispatch_set_target_queue(v15, v16);

  v17 = dispatch_queue_create("com.apple.cloudkit.global.background", attr);
  v18 = qword_1ED4B66C0;
  qword_1ED4B66C0 = v17;

  v19 = qword_1ED4B66C0;
  v20 = dispatch_get_global_queue(9, 0);
  dispatch_set_target_queue(v19, v20);

  dispatch_activate(qword_1ED4B66A0);
  dispatch_activate(qword_1ED4B66A8);
  dispatch_activate(qword_1ED4B66B0);
  dispatch_activate(qword_1ED4B66B8);
  dispatch_activate(qword_1ED4B66C0);
}

uint64_t CKBootTime()
{
  v18 = *MEMORY[0x1E69E9840];
  result = qword_1ED4B6080;
  if (!qword_1ED4B6080)
  {
    v15[0] = 0;
    v15[1] = 0;
    *v17 = 0x1500000001;
    v16 = 16;
    if (sysctl(v17, 2u, v15, &v16, 0, 0))
    {
      v3 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v1, v2);
      v4 = [CKSignificantIssue alloc];
      v5 = [CKSourceCodeLocation alloc];
      v7 = objc_msgSend_initWithFilePath_lineNumber_(v5, v6, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Utility/CKUtils.m", 3359);
      v9 = objc_msgSend_initWithSourceCodeLocation_format_(v4, v8, v7, @"Failed to fetch system boot time");
      objc_msgSend_handleSignificantIssue_actions_(v3, v10, v9, 0);

      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Failed to fetch system boot time");
      objc_msgSend_UTF8String(v12, v13, v14);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      result = v15[0];
      qword_1ED4B6080 = v15[0];
    }
  }

  return result;
}

BOOL sub_1883F07C8()
{
  result = _CKUseSystemInstalledBinaries();
  _sCKUseSystemInstalledBinaries = result;
  return result;
}

BOOL _CKUseSystemInstalledBinaries()
{
  v0 = getenv("CK_DEBUG_BINARIES");
  v1 = v0 == 0;
  v2 = @"CK_DEBUG_BINARIES is set";
  if (!v0)
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = CKGetGlobalQueue(-1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1883F0048;
  block[3] = &unk_1E70BC388;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  return v1;
}

__CFString *CKStringFromAccountStatus(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown status";
  }

  else
  {
    return off_1E70BCFC8[a1];
  }
}

id sub_1883F08E4(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF90];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_dictionaryWithCapacity_(v4, v6, v5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1883F09B0;
  v14[3] = &unk_1E70C1BF0;
  v15 = v7;
  v8 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v9, v14);
  v12 = objc_msgSend_copy(v8, v10, v11);

  return v12;
}

void sub_1883F09B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_conformsToProtocol_(v6, v7, &unk_1EFA9C3D0))
  {
    v10 = objc_msgSend_CKDeepCopy(v6, v8, v9);
  }

  else
  {
    if (objc_msgSend_conformsToProtocol_(v6, v8, &unk_1EFA8BF50))
    {
      v23 = MEMORY[0x1E696AEC0];
LABEL_17:
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromProtocol(&unk_1EFA9C3D0);
      v29 = objc_msgSend_stringWithFormat_(v23, v28, @"Collection with class %@ does not support %@", v26, v27);

      goto LABEL_20;
    }

    if (!objc_msgSend_conformsToProtocol_(v6, v11, &unk_1EFA87B00))
    {
      v24 = MEMORY[0x1E696AEC0];
LABEL_19:
      v30 = objc_opt_class();
      v26 = NSStringFromClass(v30);
      v29 = objc_msgSend_stringWithFormat_(v24, v31, @"Object with class %@ cannot be copied", v26);
LABEL_20:

      v32 = [CKException alloc];
      v34 = objc_msgSend_initWithName_format_(v32, v33, *MEMORY[0x1E695D940], @"%@", v29);
      objc_exception_throw(v34);
    }

    v10 = objc_msgSend_copyWithZone_(v6, v12, 0);
  }

  v13 = v10;

  v14 = *(a1 + 32);
  v35 = v5;
  if (objc_msgSend_conformsToProtocol_(v35, v15, &unk_1EFA9C3D0))
  {
    v18 = objc_msgSend_CKDeepCopy(v35, v16, v17);
    goto LABEL_11;
  }

  if (objc_msgSend_conformsToProtocol_(v35, v16, &unk_1EFA8BF50))
  {
    v23 = MEMORY[0x1E696AEC0];
    goto LABEL_17;
  }

  if (!objc_msgSend_conformsToProtocol_(v35, v19, &unk_1EFA87B00))
  {
    v24 = MEMORY[0x1E696AEC0];
    goto LABEL_19;
  }

  v18 = objc_msgSend_copyWithZone_(v35, v20, 0);
LABEL_11:
  v21 = v18;

  objc_msgSend_setObject_forKeyedSubscript_(v14, v22, v13, v21);
}

id sub_1883F0BD0(void *a1, const char *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v44, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        if (objc_msgSend_conformsToProtocol_(v14, v15, &unk_1EFA9C3D0))
        {
          v18 = objc_msgSend_CKDeepCopy(v14, v16, v17);
        }

        else
        {
          if (objc_msgSend_conformsToProtocol_(v14, v16, &unk_1EFA8BF50))
          {
            v28 = MEMORY[0x1E696AEC0];
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            v31 = NSStringFromProtocol(&unk_1EFA9C3D0);
            v33 = objc_msgSend_stringWithFormat_(v28, v32, @"Collection with class %@ does not support %@", v30, v31, v40);

            goto LABEL_18;
          }

          if (!objc_msgSend_conformsToProtocol_(v14, v19, &unk_1EFA87B00))
          {
            v34 = MEMORY[0x1E696AEC0];
            v35 = objc_opt_class();
            v30 = NSStringFromClass(v35);
            v33 = objc_msgSend_stringWithFormat_(v34, v36, @"Object with class %@ cannot be copied", v30);
LABEL_18:

            v37 = [CKException alloc];
            v39 = objc_msgSend_initWithName_format_(v37, v38, *MEMORY[0x1E695D940], @"%@", v33);
            objc_exception_throw(v39);
          }

          v18 = objc_msgSend_copyWithZone_(v14, v20, 0);
        }

        v21 = v18;

        objc_msgSend_addObject_(v7, v22, v21);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v40, v44, 16);
    }

    while (v11);
  }

  v26 = objc_msgSend_copy(v7, v24, v25);

  return v26;
}

uint64_t CKIsRunningInSyncBubble()
{
  if (qword_1ED4B66C8 != -1)
  {
    dispatch_once(&qword_1ED4B66C8, &unk_1EFA30BB0);
  }

  return byte_1ED4B65D1;
}

id CKGetGlobalQueue(uint64_t a1)
{
  if (qword_1ED4B6698 != -1)
  {
    dispatch_once(&qword_1ED4B6698, &unk_1EFA30B90);
  }

  v2 = &qword_1ED4B66B0;
  v3 = &qword_1ED4B66A0;
  v4 = &qword_1ED4B66A8;
  v5 = &qword_1ED4B66B8;
  if (a1 <= 16)
  {
    v5 = &qword_1ED4B66C0;
  }

  if (a1 <= 24)
  {
    v4 = v5;
  }

  if (a1 <= 32)
  {
    v3 = v4;
  }

  if (a1 != -1)
  {
    v2 = v3;
  }

  v6 = *v2;

  return v6;
}

void sub_1883F100C(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  if (v1)
  {
    v41.receiver = v1;
    v41.super_class = CKProcessScopedStateManager;
    v4 = objc_msgSendSuper2(&v41, sel_init);
    if (v4)
    {
      v5 = objc_msgSend_UTF8String(@"com.apple.cloudkit.CKProcessScopedStateManager.notificationQueue", v2, v3);
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(v5, v6);
      v8 = v4[6];
      v4[6] = v7;

      v11 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v9, v10);
      v12 = v4[2];
      v4[2] = v11;

      v13 = objc_opt_new();
      v14 = v4[5];
      v4[5] = v13;

      v15 = [CKEntitlements alloc];
      v18 = objc_msgSend_initWithCurrentProcess(v15, v16, v17);
      v19 = v4[3];
      v4[3] = v18;

      sub_1883F1394(v4, v20, v21);
      v24 = objc_msgSend_sharedOptions(CKBehaviorOptions, v22, v23);
      LODWORD(v6) = objc_msgSend_isAppleInternalInstall(v24, v25, v26);

      if (v6)
      {
        out_token = -1;
        v27 = CKNotificationKey(@"com.apple.cloudd.sleepytime", 0);
        v30 = objc_msgSend_UTF8String(v27, v28, v29);
        v31 = CKGetGlobalQueue(25);
        notify_register_dispatch(v30, &out_token, v31, &unk_1EFA30850);

        out_token = -1;
        v32 = CKNotificationKey(@"com.apple.cloudd.pcsIdentityUpdate", 0);

        v35 = objc_msgSend_UTF8String(v32, v33, v34);
        v36 = v4[6];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = sub_1886BE16C;
        v38[3] = &unk_1E70C1EF0;
        v39 = v4;
        notify_register_dispatch(v35, &out_token, v36, v38);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v37 = qword_1ED4B65A0;
  qword_1ED4B65A0 = v4;
}

void sub_1883F1394(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = objc_msgSend_count(*(a1 + 40), a2, a3);
    v5 = *(a1 + 24);
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = v5;
      v9 = objc_msgSend_entitlementsByAddingOverlay_(v7, v8, v6);
      v10 = *(a1 + 32);
      *(a1 + 32) = v9;
    }

    else
    {
      v11 = v5;
      v7 = *(a1 + 32);
      *(a1 + 32) = v11;
    }

    v12 = *(a1 + 32);
    v13 = CKSDKVersion();
    v27 = 0;
    v15 = objc_msgSend_validateEntitlementsWithSDKVersion_error_(v12, v14, v13, &v27);
    v16 = v27;

    if ((v15 & 1) == 0)
    {
      v17 = [CKException alloc];
      v20 = objc_msgSend_code(v16, v18, v19);
      v23 = objc_msgSend_localizedDescription(v16, v21, v22);
      v25 = objc_msgSend_initWithCode_format_(v17, v24, v20, @"%@", v23);
      v26 = v25;

      objc_exception_throw(v25);
    }
  }
}

uint64_t CKSDKVersion()
{
  if (qword_1ED4B6710 != -1)
  {
    dispatch_once(&qword_1ED4B6710, &unk_1EFA30D30);
  }

  return dword_1ED4B65E0;
}

id CKNotificationKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = a1;
  v6 = CKTestNotificationPrefix();
  v8 = v6;
  if (v3)
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"%@%@-%@", v6, v5, v3);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"%@%@", v6, v5);
  }
  v9 = ;

  return v9;
}

__CFString *CKTestNotificationPrefix()
{
  if (__sTestOverridesAvailable)
  {
    return @"com.apple.cloudkit.testing.";
  }

  else
  {
    return &stru_1EFA32970;
  }
}

uint64_t sub_1883F15D4()
{
  result = dyld_get_program_sdk_version();
  dword_1ED4B65E0 = result;
  return result;
}

void sub_1883F15F4(uint64_t a1, const char *a2, uint64_t a3)
{
  if (byte_1EA90C538 == 1)
  {
    v13 = objc_msgSend_sharedManager(MEMORY[0x1E69DF068], a2, a3);
    if (objc_msgSend_isSharedIPad(v13, v3, v4))
    {
      v7 = objc_msgSend_currentUser(v13, v5, v6);
      v10 = objc_msgSend_uid(v7, v8, v9);
      byte_1ED4B65D1 = v10 != geteuid();
    }

    else
    {
      byte_1ED4B65D1 = 0;
    }
  }

  else
  {
    v11 = getenv("CK_IN_SYNC_BUBBLE");
    if (v11)
    {
      v12 = atoi(v11) == 1;
    }

    else
    {
      v12 = 0;
    }

    byte_1ED4B65D1 = v12;
  }
}

id sub_1883F1F0C(void *a1)
{
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_CKShortDescriptionRedact_(a1, v2, 1);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"<%@: %p>", a1, a1);
  }
  v3 = ;

  return v3;
}

id CKXPCSuitableError(void *a1)
{
  v144 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_userInfo(v1, v2, v3);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7 && (objc_msgSend_CKHasCKErrorInUnderlyingErrors(v1, v8, v9) & 1) != 0)
  {
    if (qword_1ED4B6160 != -1)
    {
      dispatch_once(&qword_1ED4B6160, &unk_1EFA2EC08);
    }

    v128 = objc_opt_new();
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v10 = v1;
    v13 = objc_msgSend_userInfo(v1, v11, v12);
    v16 = objc_msgSend_allKeys(v13, v14, v15);

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v137, v143, 16);
    if (v18)
    {
      v20 = v18;
      v21 = *v138;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v138 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v137 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(qword_1ED4B6168, v19, v23) & 1) == 0)
          {
            v25 = objc_msgSend_userInfo(v10, v19, v24);
            v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v23);
            objc_msgSend_setObject_forKeyedSubscript_(v128, v28, v27, v23);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v137, v143, 16);
      }

      while (v20);
    }

    v1 = v10;
    v31 = objc_msgSend_userInfo(v10, v29, v30);
    v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"NotFoundItemID");

    if (v33)
    {
      if (objc_msgSend_conformsToProtocol_(v33, v34, &unk_1EFA96BB0))
      {
        v38 = objc_msgSend_CKXPCSuitableString(v33, v36, v37);
        objc_msgSend_setObject_forKeyedSubscript_(v128, v39, v38, @"NotFoundItemID");
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v128, v36, v33, @"NotFoundItemID");
      }
    }

    v127 = v33;
    v41 = objc_msgSend_userInfo(v10, v34, v35);
    v42 = *MEMORY[0x1E696AA08];
    v44 = objc_msgSend_objectForKeyedSubscript_(v41, v43, *MEMORY[0x1E696AA08]);

    if (v44)
    {
      v47 = CKXPCSuitableError(v44);
      objc_msgSend_setObject_forKeyedSubscript_(v128, v48, v47, v42);
    }

    v49 = objc_msgSend_userInfo(v10, v45, v46);
    v50 = *MEMORY[0x1E696A750];
    v52 = objc_msgSend_objectForKeyedSubscript_(v49, v51, *MEMORY[0x1E696A750]);

    if (v52)
    {
      v55 = objc_msgSend_array(MEMORY[0x1E695DF70], v53, v54);
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v56 = v52;
      v57 = v52;
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v133, v142, 16);
      if (v59)
      {
        v60 = v59;
        v61 = *v134;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v134 != v61)
            {
              objc_enumerationMutation(v57);
            }

            v63 = CKXPCSuitableError(*(*(&v133 + 1) + 8 * j));
            objc_msgSend_addObject_(v55, v64, v63);
          }

          v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v65, &v133, v142, 16);
        }

        while (v60);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v128, v66, v55, v50);
      v1 = v10;
      v52 = v56;
    }

    v67 = objc_msgSend_userInfo(v1, v53, v54);
    v69 = objc_msgSend_objectForKeyedSubscript_(v67, v68, @"CKFunctionError");

    if (v69)
    {
      v72 = CKXPCSuitableError(v69);
      objc_msgSend_setObject_forKeyedSubscript_(v128, v73, v72, @"CKFunctionError");
    }

    v74 = objc_msgSend_userInfo(v1, v70, v71);
    v76 = objc_msgSend_objectForKeyedSubscript_(v74, v75, @"CKSessionReadinessErrorBox");

    if (objc_opt_respondsToSelector())
    {
      v79 = objc_msgSend_CKXPCSuitableString(v76, v77, v78);
      objc_msgSend_setObject_forKeyedSubscript_(v128, v80, v79, @"CKSessionReadinessErrorBox");
    }

    v126 = v44;
    v81 = objc_msgSend_userInfo(v1, v77, v78);
    v83 = objc_msgSend_objectForKeyedSubscript_(v81, v82, @"CKSessionInvalidationContext");

    if (objc_opt_respondsToSelector())
    {
      v86 = objc_msgSend_CKXPCSuitableString(v83, v84, v85);
      objc_msgSend_setObject_forKeyedSubscript_(v128, v87, v86, @"CKSessionInvalidationContext");
    }

    v88 = objc_msgSend_userInfo(v1, v84, v85);
    v90 = objc_msgSend_objectForKeyedSubscript_(v88, v89, @"CKPartialErrors");

    if (objc_msgSend_count(v90, v91, v92))
    {
      v122 = v83;
      v123 = v76;
      v124 = v69;
      v125 = v52;
      v95 = objc_opt_new();
      v129 = 0u;
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v98 = objc_msgSend_allKeys(v90, v96, v97);
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v129, v141, 16);
      if (v100)
      {
        v102 = v100;
        v103 = *v130;
        do
        {
          for (k = 0; k != v102; ++k)
          {
            if (*v130 != v103)
            {
              objc_enumerationMutation(v98);
            }

            v105 = *(*(&v129 + 1) + 8 * k);
            if (objc_msgSend_conformsToProtocol_(v105, v101, &unk_1EFA96BB0))
            {
              v108 = objc_msgSend_CKXPCSuitableString(v105, v106, v107);
              v110 = objc_msgSend_objectForKeyedSubscript_(v90, v109, v105);
              v111 = CKXPCSuitableError(v110);
              objc_msgSend_setObject_forKeyedSubscript_(v95, v112, v111, v108);
            }

            else
            {
              v108 = objc_msgSend_objectForKeyedSubscript_(v90, v106, v105);
              v110 = CKXPCSuitableError(v108);
              objc_msgSend_setObject_forKeyedSubscript_(v95, v113, v110, v105);
            }
          }

          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v101, &v129, v141, 16);
        }

        while (v102);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v128, v114, v95, @"CKPartialErrors");
      v1 = v10;
      v69 = v124;
      v52 = v125;
      v83 = v122;
      v76 = v123;
    }

    v115 = MEMORY[0x1E696ABC0];
    v116 = objc_msgSend_domain(v1, v93, v94);
    v119 = objc_msgSend_code(v1, v117, v118);
    v40 = objc_msgSend_errorWithDomain_code_userInfo_(v115, v120, v116, v119, v128);
  }

  else
  {
    v40 = v1;
  }

  return v40;
}

uint64_t sub_1883F296C(void *a1, const char *a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_CKIsCKError(a1, a2, a3))
  {
    return 1;
  }

  v7 = objc_msgSend_userInfo(a1, v4, v5);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x1E696AA08]);

  if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(v9, v10, v11))
  {
    v6 = 1;
  }

  else
  {
    v14 = objc_msgSend_userInfo(a1, v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *MEMORY[0x1E696A750]);

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = v16;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v50, v55, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v51;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v17);
          }

          if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(*(*(&v50 + 1) + 8 * i), v20, v21))
          {
            v6 = 1;
            v29 = v17;
            goto LABEL_27;
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v50, v55, 16);
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v27 = objc_msgSend_userInfo(a1, v25, v26);
    v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"CKFunctionError");

    if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(v29, v30, v31))
    {
      v6 = 1;
    }

    else
    {
      v34 = objc_msgSend_userInfo(a1, v32, v33);
      v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"CKPartialErrors");

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v39 = objc_msgSend_allValues(v36, v37, v38, 0);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v46, v54, 16);
      if (v6)
      {
        v43 = *v47;
        while (2)
        {
          for (j = 0; j != v6; ++j)
          {
            if (*v47 != v43)
            {
              objc_enumerationMutation(v39);
            }

            if (objc_msgSend_CKHasCKErrorInUnderlyingErrors(*(*(&v46 + 1) + 8 * j), v41, v42))
            {
              v6 = 1;
              goto LABEL_26;
            }
          }

          v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v46, v54, 16);
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:
    }

LABEL_27:
  }

  return v6;
}

uint64_t sub_1883F2C08(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  if (objc_msgSend_isEqualToString_(v4, v5, @"CKErrorDomain"))
  {
    isEqualToString = 1;
  }

  else
  {
    v9 = objc_msgSend_domain(a1, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"CKInternalErrorDomain");
  }

  return isEqualToString;
}

id CKRequiredFeatureSet.init(zoneFeatures:recordFeatures:fieldFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v8 = MEMORY[0x1E69E7CC8];
  *v7 = MEMORY[0x1E69E7CC8];
  v7[1] = v8;
  v7[2] = v8;
  v11.super_class = CKRequiredFeatureSet;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1883F2D94(a1, a2, a3);

  return v9;
}

void sub_1883F2D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1883F4C9C(a1);
  v5 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18CFD59D0](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      return;
    }

    v9 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped];
    v10 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped + 8];
    v12 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped + 16];
    v11 = *&v6[OBJC_IVAR___CKZoneFeature__wrapped + 24];
    sub_188489F14(v9, v10, v12, v11);

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1884771E0(0, *(v49 + 16) + 1, 1, v49);
        v49 = v16;
      }

      v14 = *(v49 + 16);
      v13 = *(v49 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1884771E0(v13 > 1, v14 + 1, 1, v49);
        v49 = v17;
      }

      *(v49 + 16) = v14 + 1;
      v15 = (v49 + 32 * v14);
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v12;
      v15[7] = v11;
      v5 = v8;
    }
  }

  v18 = sub_1883F4C9C(a2);
  v19 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (v18 != v19)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x18CFD59D0](v19, a2);
    }

    else
    {
      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v20 = *(a2 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_45;
    }

    v23 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped];
    v24 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped + 8];
    v25 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped + 16];
    v26 = *&v20[OBJC_IVAR___CKRecordFeature__wrapped + 24];
    sub_188489F14(v23, v24, v25, v26);

    ++v19;
    if (v24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1884771FC(0, *(v51 + 16) + 1, 1, v51);
        v51 = v30;
      }

      v28 = *(v51 + 16);
      v27 = *(v51 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1884771FC(v27 > 1, v28 + 1, 1, v51);
        v51 = v31;
      }

      *(v51 + 16) = v28 + 1;
      v29 = (v51 + 32 * v28);
      v29[4] = v23;
      v29[5] = v24;
      v29[6] = v25;
      v29[7] = v26;
      v19 = v22;
    }
  }

  v32 = sub_1883F4C9C(a3);
  v33 = 0;
  v53 = MEMORY[0x1E69E7CC0];
  while (v32 != v33)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x18CFD59D0](v33, a3);
    }

    else
    {
      if (v33 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v34 = *(a3 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_47;
    }

    v37 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped];
    v38 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped + 8];
    v39 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped + 16];
    v40 = *&v34[OBJC_IVAR___CKFieldFeature__wrapped + 24];
    sub_188489F14(v37, v38, v39, v40);

    ++v33;
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188477218(0, *(v53 + 16) + 1, 1, v53);
        v53 = v44;
      }

      v42 = *(v53 + 16);
      v41 = *(v53 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_188477218(v41 > 1, v42 + 1, 1, v53);
        v53 = v45;
      }

      *(v53 + 16) = v42 + 1;
      v43 = (v53 + 32 * v42);
      v43[4] = v37;
      v43[5] = v38;
      v43[6] = v39;
      v43[7] = v40;
      v33 = v36;
    }
  }

  v46 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  sub_1883F3264(v49, &unk_1EA90DB10, &unk_1886F8A40, sub_188482420);

  sub_1883F3264(v51, &unk_1EA90D8F8, &unk_1886F8A30, sub_1884825C4);

  sub_1883F3264(v53, &unk_1EA90DB60, &unk_1886F8A20, sub_188482768);

  v47 = (v48 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  *v47 = v54;
  v47[1] = v46;
  v47[2] = v46;
}

void sub_1883F3264(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = *(*v4 + 16);
  v6 = *(a1 + 16);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1884056BC(a1, a2);
    sub_18844E6FC(v10, v11);
    Dictionary.reserveCapacity(_:)(v7);
    for (i = a1 + 56; v6; --v6)
    {

      v13 = sub_1883FD9C4();
      a4(v13);

      i += 32;
    }
  }
}

void sub_1883F342C()
{
  v0 = [CKRecordZoneID alloc];
  v4 = objc_msgSend_initWithZoneName_ownerName_(v0, v1, @"_defaultZone", @"__defaultOwner__");
  v2 = sub_188589C18([CKRecordZone alloc], v4, 0);
  v3 = qword_1ED4B61C0;
  qword_1ED4B61C0 = v2;
}

id sub_1883F3530(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696B0B0];
  v3 = CKAcceptablePredicateValueClasses();
  v5 = objc_msgSend__testEncodeAndDecodeObject_allowedClasses_(v2, v4, a1, v3);

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E695D940];
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = a1;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = @"NSXPCCoder unexpectedly returned nil while encoding/decoding predicate";
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Predicate <%@> cannot be deep copied due to %@ (%@)", &v12, 0x20u);
    }

    if (CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9())
    {
      v9 = [CKException alloc];
      v11 = objc_msgSend_initWithName_format_(v9, v10, *MEMORY[0x1E695D940], @"Predicate format incompatible with CloudKit");
      objc_exception_throw(v11);
    }

    v5 = a1;
  }

  return v5;
}

uint64_t sub_1883F3810()
{
  v0 = [CKContainer alloc];
  v2 = objc_msgSend__initWithContainerIdentifier_(v0, v1, 0);
  v3 = qword_1ED4B6108;
  qword_1ED4B6108 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_1883F3854(uint64_t a1)
{
  v1 = objc_opt_self();
  v4 = sub_1883F3978(v1);
  if (v4)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"iCloud.%@", v4);
    goto LABEL_8;
  }

  v6 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v2, v3);
  v9 = objc_msgSend_untrustedEntitlements(v6, v7, v8);
  if (objc_msgSend_hasMasqueradingEntitlement(v9, v10, v11))
  {
    goto LABEL_6;
  }

  v14 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v12, v13);
  v17 = objc_msgSend_untrustedEntitlements(v14, v15, v16);
  v20 = objc_msgSend_clientPrefixEntitlement(v17, v18, v19);

  if (!v20)
  {
    v6 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v21, v22);
    v9 = objc_msgSend_processName(v6, v23, v24);
    CKWarnForInvalidApplicationIdentifier(0, v9);
LABEL_6:
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id sub_1883F3978(uint64_t a1)
{
  objc_opt_self();
  v3 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v1, v2);
  v6 = objc_msgSend_untrustedEntitlements(v3, v4, v5);
  v9 = objc_msgSend_associatedApplicationBundleID(v6, v7, v8);

  if (!v9)
  {
    v12 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v10, v11);
    v15 = objc_msgSend_untrustedEntitlements(v12, v13, v14);
    v9 = objc_msgSend_applicationBundleID(v15, v16, v17);
  }

  return v9;
}

uint64_t sub_1883F3A8C(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("isCStyleIdentifier", "CKUtils.m", 1011, "cs");
  }

  if (!a2)
  {
    __assert_rtn("isCStyleIdentifier", "CKUtils.m", 1012, "length > 0");
  }

  v2 = *a1;
  if ((v2 - 97) < 0x1A || (v2 != 95 ? (v3 = (v2 - 65) > 0x19) : (v3 = 0), !v3))
  {
    v4 = a2 - 1;
    if (a2 == 1)
    {
      return 1;
    }

    v5 = a1 + 1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = ((v7 & 0xDF) - 65);
      v9 = (v7 - 48) >= 0xAu && v8 >= 0x1A;
      if (v9 && v6 != 95 && v6 != 36)
      {
        break;
      }

      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

id sub_1883F4174(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend_valueForEntitlement_(a1, a2, @"application-identifier");
    v2 = vars8;
  }

  return a1;
}

id CKAppIdentifierFromTeamAppTuple(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (qword_1ED4B6690 != -1)
  {
    dispatch_once(&qword_1ED4B6690, &unk_1EFA30B70);
  }

  if (objc_msgSend_hasPrefix_(v3, v4, @"com.apple."))
  {
    v8 = v3;
    goto LABEL_11;
  }

  v9 = qword_1ED4B6688;
  v10 = objc_msgSend_length(v3, v6, v7);
  v12 = objc_msgSend_matchesInString_options_range_(v9, v11, v3, 4, 0, v10);
  if (objc_msgSend_count(v12, v13, v14) != 1)
  {
    goto LABEL_9;
  }

  v16 = objc_msgSend_objectAtIndex_(v12, v15, 0);
  if (objc_msgSend_numberOfRanges(v16, v17, v18) != 2)
  {

LABEL_9:
    CKWarnForInvalidApplicationIdentifier(v3, v5);
    v8 = 0;
    goto LABEL_10;
  }

  v20 = objc_msgSend_rangeAtIndex_(v16, v19, 1);
  v8 = objc_msgSend_substringWithRange_(v3, v21, v20, v21);

LABEL_10:
LABEL_11:

  return v8;
}

void sub_1883F42F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_currentProcess(MEMORY[0x1E69C75D0], a2, a3);
  byte_1ED4B65D0 = objc_msgSend_isDaemon(v5, v3, v4);
}

uint64_t CKCurrentProcessIsDaemon()
{
  if (qword_1ED4B6610 != -1)
  {
    dispatch_once(&qword_1ED4B6610, &unk_1EFA30A50);
  }

  return byte_1ED4B65D0;
}

id CKShortRandomID()
{
  v9 = *MEMORY[0x1E69E9840];
  arc4random_buf(__buf, 8uLL);
  v0 = 0;
  v1 = &v7 + 1;
  do
  {
    v2 = __buf[v0];
    *(v1 - 1) = a0123456789abcd[v2 & 0xF];
    *v1 = a0123456789abcd[v2 >> 4];
    v1 += 2;
    ++v0;
  }

  while (v0 != 8);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_initWithBytes_length_encoding_(v3, v4, &v7, 16, 1);

  return v5;
}

uint64_t sub_1883F4C5C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t CKBoolFromCKTernary(unint64_t result, const char *a2, uint64_t a3)
{
  if (result >= 2)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "BOOL CKBoolFromCKTernary(CKTernary)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"CKUtils.m", 123, @"Can't go from NotSet -> BOOL");

    return 0;
  }

  return result;
}

uint64_t CKCreateDirectoryAtPathWithAttributes(void *a1, void *a2, void *a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  os_unfair_lock_lock(&unk_1EA9123B8);
  v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
  v12 = objc_msgSend_objectForKey_(v6, v10, CKDirectoryEmptyDate);
  if (v12)
  {
    v13 = objc_msgSend_attributesOfItemAtPath_error_(v9, v11, v5, 0);
    v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x1E696A308]);
    v17 = v15;
    if (v15 && objc_msgSend_compare_(v15, v16, v12) == -1)
    {
      objc_msgSend_removeItemAtPath_error_(v9, v18, v5, 0);
    }
  }

  v44 = 0;
  v19 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v9, v11, v5, 1, v6, &v44);
  v20 = v44;
  v23 = v20;
  if (v19)
  {
    goto LABEL_7;
  }

  v36 = objc_msgSend_domain(v20, v21, v22);
  if (!objc_msgSend_isEqualToString_(v36, v37, *MEMORY[0x1E696A250]))
  {

    goto LABEL_14;
  }

  v40 = objc_msgSend_code(v23, v38, v39) == 516;

  if (!v40)
  {
LABEL_14:
    if (a3)
    {
      v41 = v23;
      v35 = 0;
      *a3 = v23;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_17;
  }

LABEL_7:
  v43 = v23;
  v24 = objc_msgSend_attributesOfItemAtPath_error_(v9, v21, v5, &v43);
  v25 = v43;

  v26 = *MEMORY[0x1E696A3A0];
  v28 = objc_msgSend_objectForKeyedSubscript_(v24, v27, *MEMORY[0x1E696A3A0]);
  v29 = *MEMORY[0x1E696A388];
  isEqualToString = objc_msgSend_isEqualToString_(v28, v30, *MEMORY[0x1E696A388]);

  if ((isEqualToString & 1) == 0)
  {
    v45 = v26;
    v46[0] = v29;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, v46, &v45, 1);
    objc_msgSend_setAttributes_ofItemAtPath_error_(v9, v34, v33, v5, 0);
  }

  v35 = 1;
  v23 = v25;
LABEL_17:

  os_unfair_lock_unlock(&unk_1EA9123B8);
  return v35;
}

id sub_1883F50E8(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v5 = objc_msgSend_numberOfArguments(a1, v3, v4);
  if (v5 - 1 >= 2)
  {
    v8 = v5;
    do
    {
      --v8;
      v9 = a1;
      ArgumentTypeAtIndex = objc_msgSend_getArgumentTypeAtIndex_(v9, v10, v8);
      v12 = *ArgumentTypeAtIndex;
      if (v12 == 64)
      {
        if (63 == ArgumentTypeAtIndex[1])
        {
          goto LABEL_7;
        }
      }

      else if (64 == v12)
      {
LABEL_7:
        objc_msgSend_addIndex_(v2, v6, v8);
      }
    }

    while (v8 > 2);
  }

  v13 = objc_msgSend_copy(v2, v6, v7);

  return v13;
}

uint64_t CKObjectsAreBothNilOrEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 == v4)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = 0;
    if (v3 && v4)
    {
      isEqual = objc_msgSend_isEqual_(v3, v5, v4);
    }
  }

  return isEqual;
}

id sub_1883F53A8(void *a1)
{
  v1 = qword_1ED4B6528;
  v3 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED4B6528, &unk_1EFA30690);
  }

  v4 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B6520, v2, v3);

  return v4;
}

id sub_1883F5424(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1883F54FC;
  v13[3] = &unk_1E70BED00;
  v14 = v7;
  v8 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a1, v9, v13);
  v11 = objc_msgSend_componentsJoinedByString_(v8, v10, @", ");

  return v11;
}

void sub_1883F54FC(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = *(a1 + 32);
  v10 = MEMORY[0x1E696AEC0];
  if (isKindOfClass)
  {
    v11 = objc_msgSend_CKPropertiesStyleString(v16, v7, v8);
    objc_msgSend_stringWithFormat_(v10, v12, @"%@={ %@ }", v5, v11);
  }

  else
  {
    v11 = objc_msgSend_description(v16, v7, v8);
    objc_msgSend_stringWithFormat_(v10, v13, @"%@=%@", v5, v11);
  }
  v14 = ;

  objc_msgSend_addObject_(v9, v15, v14);
}

void ck_call_or_dispatch_sync_if_not_key(void *a1, const void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (v5)
  {
    if (dispatch_get_specific(a2))
    {
      v6[2](v6);
    }

    else
    {
      dispatch_sync(v5, v6);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Attempted to call ck_call_or_dispatch_sync_if_not_key with a nil queue", v8, 2u);
    }
  }
}

uint64_t CKCurrentProcessLinkChecke0fc00bd437646efa0e6635c2beaaea9()
{
  if (qword_1ED4B66F8 != -1)
  {
    dispatch_once(&qword_1ED4B66F8, &unk_1EFA30CD0);
  }

  return byte_1ED4B65D7;
}

uint64_t type metadata accessor for SyncEngine(uint64_t a1)
{
  result = qword_1EA90CA50;
  if (!qword_1EA90CA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1883F57B8()
{
  v0 = [objc_allocWithZone(CKOperationGroup) init];
  v1 = [objc_allocWithZone(CKOperationConfiguration) init];
  [v1 setQualityOfService_];
  [v1 setRequestOriginator_];
  [v0 setDefaultConfiguration_];

  return v0;
}

void sub_1883F58E8(void (*a1)(uint64_t *__return_ptr), void (*a2)(uint64_t *, uint64_t, uint64_t))
{
  v6 = sub_1883F6078([v2 operationGroup]);
  v7 = v5;
  if (v5 && (sub_1883F7624(0x6E45636E79534B43, 0xEC000000656E6967, v6, v5) & 1) == 0)
  {
  }

  else
  {
    v11 = [v2 operationGroup];
    type metadata accessor for SyncEngine(0);
    v8 = [v2 scope];
    a1(&v14);

    v12 = v14;
    v13 = v15;
    a2(&v12, v6, v7);

    v9 = sub_1883F7EE0();
    sub_1883F60E8(v9, v10, v11);
  }
}

uint64_t sub_1883F5A54()
{
}

void sub_1883F5A6C()
{
  v2[125] = v0;
  v2[126] = v1;
  v2[130] = 0;
  v2[132] = 0x3000000000000000;
}

void sub_1883F5A94()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F5BA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1883F5BB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1883F5BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1883F7FF0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v12);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_188411130();
  sub_188404A44(v14);
  sub_1883FEFF8();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = v11;
  v15[6] = v9;
  v15[7] = v7;
  v16 = v5;
  v17 = v11;
  sub_1883F5CC0(v9, v7);
  sub_1883FF490();
  sub_188453610();

  sub_1883FDCC0();
}

uint64_t sub_1883F5CC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1883F5E18(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1883F4C5C(0, a5, a6);
    sub_1883F66E4(a7, a5, a6);
    Set.Iterator.init(_cocoa:)();
    v9 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
    v16 = v35;
  }

  else
  {
    v15 = 0;
    v13 = a4 + 56;
    sub_1884110C4();
    v16 = v17 & v18;
  }

  v19 = a3;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v27 = a5;
      v28 = a6;
      v20 = 0;
      v26 = v14;
      v21 = (v14 + 64) >> 6;
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v9 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (sub_1883F4C5C(0, v27, v28), swift_dynamicCast(), v25 = v30, v19 = a3, !v30))
          {
LABEL_23:
            v14 = v26;
            goto LABEL_24;
          }
        }

        else
        {
          if (!v16)
          {
            while (1)
            {
              v23 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              if (v23 >= v21)
              {
                v16 = 0;
                goto LABEL_23;
              }

              v16 = *(v13 + 8 * v23);
              ++v15;
              if (v16)
              {
                v15 = v23;
                goto LABEL_15;
              }
            }

            __break(1u);
            break;
          }

LABEL_15:
          v24 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v25 = *(*(v9 + 48) + ((v15 << 9) | (8 * v24)));
          if (!v25)
          {
            goto LABEL_23;
          }
        }

        *a2++ = v25;
        ++v20;
        if (v22 == v19)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    *a1 = v9;
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
    a1[4] = v16;
  }
}

uint64_t sub_1883F6078(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1883F60E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x18CFD5010](a1);

  [a3 setName_];
}

void sub_1883F6164()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883F6188(char a1@<W8>)
{
  *(v1 + 360) = a1;
  *(v1 + 361) = *v2;
  *(v1 + 364) = *(v2 + 3);
  *(v1 + 368) = 0;
  *(v1 + 376) = 0;
}

BOOL sub_1883F61B0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (sub_1883F7624(0x6E45636E79534B43, 0xEC000000656E6967, a1, a2))
    {
      sub_18845B108();
      v2 = StringProtocol.components<A>(separatedBy:)();
      MEMORY[0x1EEE9AC00](v2);
      v3 = sub_18850DD84();

      if (v3)
      {
        return 1;
      }
    }
  }

  return result;
}

void *sub_1883F62D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v4 = sub_1883FF58C();
  j__malloc_size(v4);
  sub_1883FE878();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_1883F633C(uint64_t a1)
{
  sub_188404C04();
  sub_1883F653C();
  sub_1883F7DB8();
  v1 = swift_task_alloc();
  v2 = sub_1883F7E38(v1);
  *v2 = v3;
  sub_1883F9ED8(v2);
  sub_1883F6548();

  return sub_1883F6A54(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1883F63D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1883F664C(v1, &selRef_zoneIDs, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
  if (v3)
  {
    sub_1883F657C(v3, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
    sub_1883FD9FC();

    v5 = 1;
  }

  else
  {
    v6 = sub_1883FF6D0();
    sub_188404AD0();
    sub_1883F4C5C(v7, v8, v9);
    sub_188404AD0();
    sub_1883F66E4(v10, v11, v12);
    sub_1883FDE28();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v6) = sub_18850E3B8(v13);

    if (v6)
    {
      v1 = 0;
      v5 = 2;
    }

    else
    {
      v1 = sub_1883FF6D0();
      sub_1883FDE28();
      v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1883F657C(v14, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0);
      sub_1883FD9FC();

      v5 = 0;
    }
  }

  *a1 = v1;
  *(a1 + 8) = v5;
  return result;
}

void sub_1883F6560(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

void *sub_1883F657C(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v9 = sub_1883F62D4(v8, 0);

    sub_1883F5E18(&v12, v9 + 4, v8, a1, a2, a3, a4);
    a4 = v10;
    sub_1883F70C4(v12);
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v9;
}

uint64_t sub_1883F664C(void *a1, SEL *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v8 = [a1 *a2];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  sub_1883F4C5C(0, a3, a4);
  sub_1883F66E4(a5, a3, a4);
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_1883F66E4(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1883F4C5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1883F6734(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for SyncEngine(0);
  v2 = sub_1883F8A48();
  sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
  v3 = swift_allocObject();
  v4 = sub_1883F7504(v3, xmmword_1886F8960);
  v4[2].n128_u64[0] = v5;
  v4[2].n128_u64[1] = v6;
  strcpy(&v4[3], "FetchChanges");
  v4[3].n128_u8[13] = 0;
  v4[3].n128_u16[7] = -5120;
  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_6;
    }

    v7 = 0x6369666963657053;
  }

  else
  {
    v7 = 0x646564756C637845;
  }

  v1 = 3;
  sub_1883F93D4();
  sub_1883F8CAC();
  v3 = v8;
  v8[1].n128_u64[0] = 3;
  v8[4].n128_u64[0] = v7;
  v8[4].n128_u64[1] = 0xED000073656E6F5ALL;
LABEL_6:
  if (v1 >= v3[1].n128_u64[1] >> 1)
  {
    sub_1883FA1B0();
    v3 = v15;
  }

  v9 = 0xE600000000000000;
  if (v2)
  {
    v9 = 0xE900000000000063;
  }

  v10 = 0x6C61756E614DLL;
  if (v2)
  {
    v10 = 0x6974616D6F747541;
  }

  v3[1].n128_u64[0] = v1 + 1;
  v11 = &v3[v1];
  v11[2].n128_u64[0] = v10;
  v11[2].n128_u64[1] = v9;
  sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
  v12 = sub_1883F94A4();
  v13 = sub_1883F7D34(v12);

  return v13;
}

uint64_t sub_1883F68C4()
{
  sub_1883F78E0();
  *(v0 + 264) = sub_1883F6A78();
  sub_1883F6B10(v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_188412B68;

  return sub_1883F781C();
}

uint64_t sub_1883F69D8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1883F69F4(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1883F7EE0();
}

uint64_t sub_1883F6A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1883F68C4, 0, 0);
}

uint64_t sub_1883F6A78()
{
  if (*(v1 + OBJC_IVAR___CKSyncEngine_swiftEngine))
  {

    sub_1883FA550();
    sub_1883F793C();

    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000094, 0x8000000188702ED0, "CloudKit/CKSyncEngine_ObjCImplementation.swift", 46, 2, 107);
    __break(1u);
  }

  return result;
}

id sub_1883F6B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 scope];
  sub_1883F63D4(&v87);

  v5 = v87;
  v6 = v88;
  v7 = [v2 operationGroup];
  sub_1883FDECC();
  sub_1883F4C5C(v8, v9, v10);
  sub_1883FDECC();
  sub_1883F66E4(v11, v12, v13);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = Dictionary.init(dictionaryLiteral:)();

  v16 = v7;
  if (!v7)
  {
    type metadata accessor for SyncEngine(0);
    v16 = sub_1883F57B8();
  }

  v78 = v5;
  v79 = v6;
  v80 = v16;
  v81 = v14;
  v82 = v15;
  v83 = 1;
  v84 = 0;
  v85 = 0;
  v86 = 3;
  sub_1883F697C(&v78, &v76);
  v17 = v7;
  sub_1883F69F4(v16);
  v19 = v18;
  v71 = a1;
  v69 = v5;
  v68 = v6;
  v67 = v16;
  if (v18 && (v20 = sub_1883F75D8(), (sub_1883F7624(v20, v21, v22, v19) & 1) == 0))
  {
  }

  else
  {
    v23 = v78;
    v24 = v79;
    type metadata accessor for SyncEngine(0);
    v76 = v23;
    LOBYTE(v77) = v24;

    sub_1883F6734(&v76);

    v25 = sub_1883F7EE0();
    sub_1883F60E8(v25, v26, v16);
  }

  sub_1883F7768(&v78);
  v27 = [v2 prioritizedZoneIDs];
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = v2;
  v29 = [v2 zoneConfigurations];
  sub_1883F4C5C(0, &qword_1EA90C638, off_1E70BA850);
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883FF4BC();
  v31 = Dictionary.init(dictionaryLiteral:)();
  v66 = v28;
  if ((v30 & 0xC000000000000001) != 0)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v33 = ~(-1 << *(v30 + 32));
    v32 = v30 + 64;
    sub_1884110C4();
    v34 = v36 & v37;
    v35 = v30;
  }

  v38 = 0;
  v39 = (v33 + 64) >> 6;
  v73 = v39;
  v74 = v35;
  v72 = v32;
  if ((v35 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v40 = v38;
  v41 = v38;
  if (v34)
  {
LABEL_15:
    sub_1883FA4B8();
    v34 = v43 & v42;
    v45 = (v41 << 9) | (8 * v44);
    v46 = *(*(v35 + 56) + v45);
    v47 = *(*(v35 + 48) + v45);
    v46;
    if (!v47)
    {
LABEL_29:
      sub_1883F70C4(v35);

      v62 = [v70 defaultZoneConfiguration];
      sub_1883F77C8(&v76);

      v63 = v76;
      v64 = v77;
      result = [v70 forceFetchChanges];
      *v71 = v69;
      *(v71 + 8) = v68;
      *(v71 + 16) = v67;
      *(v71 + 24) = v66;
      *(v71 + 32) = v31;
      *(v71 + 40) = v63;
      *(v71 + 48) = v64;
      *(v71 + 56) = result;
      *(v71 + 64) = 3;
      return result;
    }

    while (1)
    {
      v48 = v47;
      sub_1883F77C8(&v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v31;
      sub_188486310();
      v52 = *(v31 + 16);
      v53 = (v51 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        break;
      }

      v55 = v50;
      v56 = v51;
      sub_18844E6FC(&unk_1EA90E620, &unk_1886FBC40);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v54))
      {
        sub_188486310();
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_33;
        }

        v55 = v57;
      }

      v31 = v75;
      if (v56)
      {
        sub_188415178();
      }

      else
      {
        sub_1883FF41C(v75 + 8 * (v55 >> 6));
        *(*(v75 + 48) + 8 * v55) = v48;
        sub_188415178();

        v59 = *(v75 + 16);
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_32;
        }

        *(v75 + 16) = v61;
      }

      v38 = v41;
      v35 = v74;
      v32 = v72;
      v39 = v73;
      if ((v74 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      if (__CocoaDictionary.Iterator.next()())
      {
        swift_dynamicCast();
        v47 = v76;
        swift_dynamicCast();
        v41 = v38;
        if (v47)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  else
  {
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v39)
      {
        goto LABEL_29;
      }

      ++v40;
      if (*(v32 + 8 * v41))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1883F7138(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1883F7264(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1883F72CC(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994870];

  return sub_188431C90(a1, v2);
}

uint64_t sub_1883F7334(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994880];

  return sub_188431628(a1, v2);
}

uint64_t sub_1883F7358(unint64_t *a1)
{
  v2 = MEMORY[0x1E69948D0];

  return sub_1884A4A30(a1, v2);
}

uint64_t sub_1883F737C(unint64_t *a1)
{
  v2 = MEMORY[0x1E69948A0];

  return sub_1884A5854(a1, v2);
}

uint64_t sub_1883F73A0(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994840];

  return sub_1884A5C40(a1, v2);
}

uint64_t sub_1883F73C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, 0, 0xE000000000000000, a6, 38, 2, a9);
}

uint64_t sub_1883F7414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 56) + 16 * v7;
  result = *v8;
  *v8 = v5;
  *(v8 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1883F7480(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1883F7594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_1883F7604(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1883F7624(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  do
  {
    while (1)
    {
      v4 = String.Iterator.next()();
      if (!v4.value._object)
      {

        object = String.Iterator.next()().value._object;

        if (object)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (v4.value._countAndFlagsBits != v5.value._countAndFlagsBits || v4.value._object != v5.value._object)
      {
        break;
      }
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

id sub_1883F77C8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 shouldFetchAssetContents];
  result = [v1 resultsLimit];
  *a1 = v3;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1883F781C()
{
  sub_1883F7120();
  *(v1 + 104) = v0;
  memcpy((v1 + 16), v2, 0x48uLL);
  sub_1883F7FD8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1883F791C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

id sub_1883F7984(id a1, SEL a2)
{

  return [a1 a2];
}

void sub_1883F79A0()
{

  _StringGuts.grow(_:)(34);
}

uint64_t sub_1883F79F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  result = *(v6 + 8 * v5);
  *(v6 + 8 * v5) = v4;
  return result;
}

id sub_1883F7A00(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1883F7A18()
{
}

void sub_1883F7A44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1883F7A64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_188501374(&a9, a2, v9, v10, v11, v12);
}

Swift::Int sub_1883F7B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 40);

  return NSObject._rawHashValue(seed:)(v13);
}

void sub_1883F7B60()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883F7BE8(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t sub_1883F7CE8()
{

  return sub_1883FE340(v0, v1, (v2 - 104));
}

uint64_t sub_1883F7D14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1883F7D34(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_1883F7D58(uint64_t result)
{
  *(v2 + 6504) = result;
  *(result + 16) = &unk_1886FB6C0;
  *(result + 24) = v1;
  return result;
}

void sub_1883F7DC8()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883F7F10()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F8010(uint64_t result)
{
  *(v2 + 1960) = result;
  *(result + 16) = v3;
  *(result + 24) = v1;
  return result;
}

void sub_1883F8038()
{
}

uint64_t sub_1883F8050()
{
  sub_1883F78E0();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_1883F7E38(v3);
  *v4 = v5;
  v4[1] = sub_18840FF64;

  return v7(v1);
}

BOOL sub_1883F813C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_188404AE8(va, a1);
}

uint64_t sub_1883F819C()
{
  v2 = *(v0 + 80);

  return sub_18845D450(v2, nullsub_4);
}

uint64_t sub_1883F81E8()
{

  return _BridgedStoredNSError.userInfo.getter();
}

uint64_t sub_1883F8250()
{

  return sub_1884AB374(v3, v2, v0, v1);
}

uint64_t sub_1883F828C()
{

  return _typeName(_:qualified:)();
}

void sub_1883F82B8()
{

  JUMPOUT(0x18CFD7E80);
}

void sub_1883F8358()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F8370()
{

  return specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
}

uint64_t sub_1883F83D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_18844E6FC(a5, a6);
}

BOOL sub_1883F8438()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_1883F8468(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1883F8488()
{
  v2 = v0[197];
  *(v1 - 136) = v0[199];
  *(v1 - 128) = v2;
  v3 = v0[193];
  *(v1 - 160) = v0[196];
  *(v1 - 152) = v3;
  *(v1 - 144) = v0[168];
}

void *sub_1883F84CC(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
  return a1 + 5;
}

uint64_t sub_1883F8518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1883F6734(va);
}

void sub_1883F8544()
{
}

__n128 sub_1883F85E4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a37, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __n128 a38)
{
  result = a38;
  a1[1] = a38;
  return result;
}

void *sub_1883F8640()
{

  return sub_188470D2C(v0);
}

uint64_t sub_1883F869C()
{
}

uint64_t sub_1883F86B8()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_1883F86D0()
{

  return __CocoaDictionary.makeIterator()();
}

uint64_t sub_1883F86EC(uint64_t a1)
{

  return KeyedDecodingContainer.decode(_:forKey:)();
}

__n128 sub_1883F8724(uint64_t a1)
{
  *(v3 + 56) = a1;
  result = *(v3 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  *(a1 + 40) = v2;
  return result;
}

uint64_t sub_1883F87BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

void sub_1883F87C4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 - 128) = a1;
  *(v3 - 120) = a2;
  *(v3 - 112) = a3 & 1;
  *(v3 - 104) = 0;
  *(v3 - 96) = 1;
}

uint64_t sub_1883F87FC(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1883F8854(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994878];

  return sub_188431C90(a1, v2);
}

uint64_t sub_1883F8890(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994888];

  return sub_188431628(a1, v2);
}

uint64_t sub_1883F88B4(unint64_t *a1)
{
  v2 = MEMORY[0x1E69948D8];

  return sub_1884A4A30(a1, v2);
}

uint64_t sub_1883F88D8(unint64_t *a1)
{
  v2 = MEMORY[0x1E69948A8];

  return sub_1884A5854(a1, v2);
}

uint64_t sub_1883F88FC(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994850];

  return sub_1884A5C40(a1, v2);
}

uint64_t sub_1883F8938()
{

  return _typeName(_:qualified:)();
}

uint64_t sub_1883F899C()
{
}

uint64_t sub_1883F89B8(uint64_t a1)
{

  return swift_once();
}

BOOL sub_1883F8A48()
{

  return sub_1883F61B0(v1, v0);
}

uint64_t sub_1883F8A98()
{

  return MEMORY[0x1EEDC6500](v0, v1, v2);
}

uint64_t sub_1883F8B14(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t sub_1883F8BA4()
{
  result = v1;
  *(v2 - 248) = *(v0 + 8);
  return result;
}

uint64_t sub_1883F8BC4(uint64_t a1)
{

  return _BridgedStoredNSError.code.getter();
}

uint64_t sub_1883F8C00()
{

  return swift_slowAlloc();
}

uint64_t sub_1883F8C2C()
{

  return swift_willThrow();
}

uint64_t sub_1883F8C64()
{
}

void sub_1883F8CAC()
{
  sub_1884007CC();
  if (v4)
  {
    sub_1883F876C();
    if (v5 != v6)
    {
      sub_1883FE588();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1883F9BC4();
    }
  }

  sub_18840AF6C();
  if (v3)
  {
    sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
    v7 = sub_1883FF58C();
    j__malloc_size(v7);
    sub_1883F9194();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1883F8DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

void sub_1883F8EAC()
{
  sub_1883FE944(v0);

  JUMPOUT(0x18CFD7E80);
}

void sub_1883F8EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = *(v10 + 576);

  sub_18850BE74(&a10, 1);
}

uint64_t sub_1883F8F38(uint64_t a1)
{

  return swift_asyncLet_begin();
}

void sub_1883F8F74()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883F8FD0()
{

  return swift_beginAccess();
}

uint64_t sub_1883F9064()
{

  return swift_beginAccess();
}

BOOL sub_1883F9084()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1883F91E4(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

id sub_1883F9228(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void sub_1883F92B0()
{

  _StringGuts.grow(_:)(32);
}

uint64_t sub_1883F9324(uint64_t result)
{
  *(result + 16) = sub_1884C2328;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1883F9468()
{

  return swift_slowAlloc();
}

unint64_t sub_1883F94A4()
{
  result = qword_1EA90C8C8;
  if (!qword_1EA90C8C8)
  {
    sub_18844E798(&qword_1EA90D330, &qword_1886F75D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C8C8);
  }

  return result;
}

uint64_t sub_1883F950C()
{
}

uint64_t sub_1883F95B4()
{
}

void sub_1883F95DC()
{

  JUMPOUT(0x18CFD5140);
}

id sub_1883F9648(uint64_t a1)
{
  *(v2 + 6536) = a1;
  *(a1 + 16) = &unk_1886FB708;
  *(a1 + 24) = v1;

  return v3;
}

uint64_t sub_1883F9674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1883F6734(va);
}

uint64_t sub_1883F96C8()
{

  return sub_18841E3F4(v1, 0, v0, v2);
}

void sub_1883F97E8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F9804()
{
  v4 = *(v2 - 232);

  return sub_1883F9FEC(v4, v0, v1);
}

__n128 sub_1883F984C(__n128 *a1)
{
  v1[9].n128_u64[1] = a1;
  result = v1[4];
  a1[1] = result;
  return result;
}

id sub_1883F986C()
{

  return v0;
}

uint64_t sub_1883F98D8()
{
}

void sub_1883F98FC()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883F992C()
{
}

char *sub_1883F9944@<X0>(unint64_t a1@<X8>)
{

  return sub_18840489C((a1 > 1), v1, 1);
}

uint64_t sub_1883F9984()
{

  return swift_slowAlloc();
}

uint64_t sub_1883F99B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return String.init<A>(_:)();
}

uint64_t sub_1883F99D0(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1883F99F0(void *a1)
{
  *v5 = a1;
  a1[3] = v1;
  a1[4] = v2;
  a1[1] = v4;
  a1[2] = v3;
  return v4;
}

uint64_t sub_1883F9A44(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v1;

  return swift_task_alloc();
}

void sub_1883F9A68()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  sub_1883FE944(v0 + 22);

  sub_1884D11E8(v4, v3, v2, v1);
}

uint64_t sub_1883F9AEC()
{

  return static _DictionaryStorage.convert(_:capacity:)();
}

uint64_t sub_1883F9B0C()
{
}

void sub_1883F9B24()
{
  v1[54] = v0;
  v1[60] = 0;
  v1[62] = 0x7000000000000000;
}

uint64_t sub_1883F9B44(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1883F9C4C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1883F9CA4(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994868];

  return sub_188431C90(a1, v2);
}

uint64_t sub_1883F9CF4(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994890];

  return sub_188431628(a1, v2);
}

uint64_t sub_1883F9D18(unint64_t *a1)
{
  v2 = MEMORY[0x1E69948E0];

  return sub_1884A4A30(a1, v2);
}

uint64_t sub_1883F9D3C(unint64_t *a1)
{
  v2 = MEMORY[0x1E69948B0];

  return sub_1884A5854(a1, v2);
}

uint64_t sub_1883F9D60(unint64_t *a1)
{
  v2 = MEMORY[0x1E6994838];

  return sub_1884A5C40(a1, v2);
}

uint64_t sub_1883F9E2C(uint64_t a1)
{

  return swift_once();
}

void sub_1883F9F18()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883F9F80(uint64_t a1@<X8>)
{
  *(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v3 << v1;
  *(v4[6] + 8 * v1) = v2;
  *(v4[7] + 8 * v1) = v5;
  ++v4[2];
}

uint64_t sub_1883F9FEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18844E6FC(a2, a3);
  sub_1883F7B50();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1883FA058()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FA0B8()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1883FA110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, a4, a5, a6, 40, 2, a9);
}

void sub_1883FA1B0()
{

  sub_1883F8CAC();
}

BOOL sub_1883FA260(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1883FA2D8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 & 1;

  sub_1884613D8(a1, v7, a3, a4, a5, a6, sub_1884601D0);
}

uint64_t sub_1883FA31C(uint64_t a1)
{

  return swift_allocObject();
}

double sub_1883FA34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_18847E460(a1, a2, v11, &a11);
}

uint64_t sub_1883FA380()
{

  return sub_188487EB8(v0, v1, v2);
}

uint64_t sub_1883FA3B4()
{

  return type metadata accessor for UUID();
}

void sub_1883FA3E4()
{

  JUMPOUT(0x18CFD5140);
}

id sub_1883FA3FC()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 273);
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 112) = v3;
  *(v0 + 144) = 0;
  *(v0 + 160) = 0x1000000000000000;
  sub_1884D165C(v1, v2, v3);

  return sub_1884D1670(v1, v2, v3);
}

uint64_t sub_1883FA45C()
{

  return swift_task_alloc();
}

uint64_t sub_1883FA47C()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FA4C8()
{
  result = *(v2 + 896);
  *(v2 + 376) = v0;
  *(v2 + 384) = v1;
  return result;
}

uint64_t sub_1883FA4DC()
{
  *(v4 - 248) = v0 & 1;
  *(v4 - 240) = v1;
  *(v4 - 232) = v2;
  *(v4 - 224) = v3;
}

id sub_1883FA504(void *a1)
{

  return [a1 (v3 + 2641)];
}

uint64_t sub_1883FA520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return swift_dynamicCast();
}

void sub_1883FA550()
{
  os_unfair_lock_lock((v0 + 16));
  if (*(v0 + 24))
  {

    os_unfair_lock_unlock((v0 + 16));
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1883FA594(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1883FE340(a1, a2, &a9);
}

uint64_t sub_1883FA5BC()
{
  v6 = v0;
  v1 = *(v0 + 248);
  memcpy(&v5[7], v1, 0x48uLL);
  *(v0 + 16) = 1;
  memcpy((v0 + 17), v5, 0x4FuLL);
  memcpy((v0 + 96), (v0 + 16), 0x50uLL);
  sub_1883F697C(v1, v0 + 176);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 264) = v2;
  *v2 = v3;
  v2[1] = sub_188412940;

  return sub_1883FA8A4();
}

uint64_t sub_1883FA6A8(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_1883FA6E8()
{
}

void sub_1883FA724()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FA75C(uint64_t **a1)
{
}

uint64_t sub_1883FA784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = a2;
  *(v3 + 256) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1883FA5BC, 0, 0);
}

uint64_t sub_1883FA7A4()
{
  sub_1883F7120();
  *(v0 + 96) = 0;
  *(v0 + 88) = 0;
  v1 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v2 = _os_activity_create(&dword_1883EA000, "engine/fetch-changes", v1, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 112) = v2;
  os_activity_scope_enter(v2, (v0 + 88));
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_188412A3C;
  v4 = *(v0 + 104);

  return sub_1883FA784(v3, v0 + 16, v4);
}

uint64_t sub_1883FA8A4()
{
  sub_1883F7120();
  v1[22] = v2;
  v1[23] = v0;
  memcpy(v1 + 2, v2, 0x50uLL);
  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1883FA90C()
{
  sub_1883F78E0();
  v1 = v0[22];
  v2 = v0[23];
  sub_188443314();
  v3 = swift_allocObject();
  v0[24] = v3;
  *(v3 + 16) = v2;
  memcpy((v3 + 24), v1, 0x50uLL);

  sub_1883FAB38((v0 + 2), (v0 + 12));
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_188412820;

  return sub_1883FC82C();
}

uint64_t sub_1883FA9FC()
{

  sub_188443314();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void *sub_1883FAA68()
{

  return memcpy((v0 + 5816), (v0 + 5480), 0x50uLL);
}

uint64_t sub_1883FAA9C()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t sub_1883FAAD4(uint64_t result)
{
  *(v2 + 1936) = result;
  *(result + 16) = v3;
  *(result + 24) = v1;
  return result;
}

void sub_1883FABA8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v27 = type metadata accessor for UUID();
  sub_1883F70DC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1883F7100();
  v16 = v15 - v14;
  v17 = *v5;
  sub_1883FD800();
  sub_1883F8964();
  if (v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v18;
  v22 = v19;
  sub_18844E6FC(a4, a5);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v17))
  {
    goto LABEL_5;
  }

  sub_1883FD800();
  if ((v22 & 1) != (v24 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v21 = v23;
LABEL_5:
  v25 = *v8;
  if (v22)
  {
    *(*(v25 + 56) + 8 * v21) = a1;
    sub_1883F8178();
  }

  else
  {
    (*(v12 + 16))(v16, a2, v27);
    sub_188403C24(v21, v16, a1, v25);
    sub_1883F8178();
  }
}

uint64_t sub_1883FAD40()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1884061E0;
  v2 = sub_1883FE860();

  return sub_1883FAF24(v2, v3);
}

uint64_t sub_1883FADD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1884061E0;

  return v7();
}

uint64_t sub_1883FAF04()
{
}

uint64_t sub_1883FAF24(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x50uLL);
  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_188412E44;

  return sub_1883FAFC8((v2 + 16));
}

uint64_t sub_1883FAFC8(void *__src)
{
  *(v2 + 1856) = v1;
  memcpy((v2 + 16), __src, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1883FB03C, v1, 0);
}

uint64_t sub_1883FB03C()
{
  v31 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v1 = *(v0 + 1856);
  v2 = type metadata accessor for Logger();
  *(v0 + 1864) = sub_1883F85F4(v2, qword_1EA90C9F8);

  sub_1883FAB38(v0 + 16, v0 + 96);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1883FF744();
  sub_1883FB300(v0 + 16);
  if (sub_1883F9084())
  {
    sub_18840FB34();
    v29 = sub_1883FEEE0();
    *v1 = 136315394;
    v4 = sub_1883FE43C();
    sub_1883FA594(v4, v5, v6, v7, v8, v9, v10, v11, v29);
    sub_1883FE2FC();
    sub_1883FED4C();
    sub_1884439D8(__src);
    sub_1883FAB38(v0 + 16, v0 + 1776);
    CKSyncEngine.FetchChangesContext.description.getter();
    sub_188404258();
    memcpy((v0 + 1696), __src, 0x50uLL);
    v12 = sub_1883FB300(v0 + 1696);
    sub_18840C150(v12, v13, &v29);
    sub_188404FC8();

    *(v1 + 14) = __src;
    sub_1883F831C();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    sub_1884022C8();
    sub_1883FD784();
    sub_1883F82B8();
  }

  static Task<>.checkCancellation()();
  sub_1884439D8((v0 + 256));
  _s30FetchChangesPageIterationStateCMa();
  v19 = swift_allocObject();
  *(v0 + 1872) = v19;
  sub_1883FAB38(v0 + 16, v0 + 336);
  *(v19 + 96) = 0;
  *(v19 + 104) = MEMORY[0x1E69E7CC8];
  *(v19 + 112) = 0;
  *(v19 + 120) = 0;
  memcpy((v19 + 16), (v0 + 256), 0x50uLL);
  v20 = *(v0 + 40);
  *(v0 + 1880) = v20;
  sub_1883FB6F8(v20);
  v21 = *(v0 + 72);
  v22 = *(v0 + 88);
  v23 = *(v0 + 64) & 1;
  v24 = *(v0 + 80) & 1 | 0x6000000000000000;
  v25 = *(v0 + 32);
  *(v0 + 416) = *(v0 + 16);
  *(v0 + 432) = v25;
  *(v0 + 448) = *(v0 + 48);
  *(v0 + 464) = v23;
  *(v0 + 472) = v21;
  *(v0 + 480) = v24;
  *(v0 + 488) = v22;
  sub_1883FAB38(v0 + 16, v0 + 496);
  sub_1883FAB38(v0 + 16, v0 + 576);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 1888) = v26;
  *v26 = v27;
  v26[1] = sub_188402A90;

  return sub_1883FBEA8();
}

id sub_1883FB368(void *a1)
{
  *v2 = *(v3 - 128);
  *(v2 + 4) = v1;
  *a1 = v1;

  return v1;
}

uint64_t sub_1883FB38C()
{

  return sub_1883FAB38(v0 + 736, v0 + 816);
}

uint64_t sub_1883FB3A4()
{
}

unint64_t CKSyncEngine.FetchChangesContext.description.getter()
{
  v1 = *v0;
  sub_188512720();

  sub_1883F9424();
  if (v1)
  {
    v2 = 0x6C61756E616DLL;
  }

  else
  {
    v2 = 0x656C756465686373;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE900000000000064;
  }

  MEMORY[0x18CFD5140](v2, v3);

  v4 = sub_188404394();
  MEMORY[0x18CFD5140](v4, 0xE90000000000003DLL);
  Changes = CKSyncEngine.FetchChangesOptions.description.getter();
  MEMORY[0x18CFD5140](Changes);

  sub_1883F8358();
  return 0xD00000000000001CLL;
}

uint64_t sub_1883FB4C4(void *a1)
{
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t sub_1883FB4FC(uint64_t a1, uint64_t a2)
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_1883FB598(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1883FE340(a1, a2, va);
}

uint64_t sub_1883FB634()
{

  return swift_slowAlloc();
}

id sub_1883FB65C()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1883FB698()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E490, &qword_1886FB3B0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1883FB6C8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_18844E6FC(&qword_1EA90E498, &qword_1886FB3B8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1883FB6F8(void *a1)
{
  v2 = v1;
  v4 = [a1 defaultConfiguration];
  if (v4)
  {
    v37 = v4;
    v5 = CKQualityOfServiceOrdering([v4 qualityOfService]);
    if (v5 < CKQualityOfServiceOrdering(17))
    {
      if (qword_1EA90C9F0 != -1)
      {
        sub_1883F7480(&qword_1EA90C9F0);
      }

      v6 = type metadata accessor for Logger();
      sub_1883FDE5C(v6, qword_1EA90C9F8);

      v7 = v37;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v10 = 136315650;
        v11 = sub_1883FE43C();
        v13 = sub_1883FE340(v11, v12, &v38);

        *(v10 + 4) = v13;
        *(v10 + 12) = 2080;
        v14 = [v7 qualityOfService];
        v16 = CKStringForQOS(v14, v15);
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = sub_1883FE340(v17, v19, &v38);

        *(v10 + 14) = v20;
        *(v10 + 22) = 2080;
        v22 = CKStringForQOS(17, v21);
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = sub_1883FE340(v23, v25, &v38);

        *(v10 + 24) = v26;
        _os_log_impl(&dword_1883EA000, v8, v9, "%s overriding operation group QoS from %s to %s", v10, 0x20u);
        swift_arrayDestroy();
        sub_1883F7B60();
        sub_1883F7B60();
      }

      [v7 setQualityOfService:17];
    }

    v27 = *(v2 + 240);
    if (v27)
    {
      v28 = v27;
      v29 = [v37 assetDownloadStagingManager];
      if (v29)
      {
        v30 = v29;

        v28 = v30;
      }

      else
      {
        [v37 setAssetDownloadStagingManager:v28];
      }
    }

    if ([v37 requestOriginator]!= 3)
    {
      [v37 setRequestOriginator:3];
    }
  }

  else
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v31 = type metadata accessor for Logger();
    sub_1883FDE5C(v31, qword_1EA90C9F8);
    v32 = a1;
    v37 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v37, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v32;
      *v35 = v32;
      v36 = v32;
      _os_log_impl(&dword_1883EA000, v37, v33, "BUG IN CLOUDKIT: No configuration on operation group: %@", v34, 0xCu);
      sub_188462FE0(v35);
      sub_1883F7B60();
      sub_1883F7B60();
    }
  }
}

uint64_t sub_1883FBAC4()
{
  v33 = v0;
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v2 = type metadata accessor for Logger();
  sub_1883FDE5C(v2, qword_1EA90C9F8);

  sub_1883FBF10((v0 + 2), (v0 + 12));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  sub_1883FBF6C((v0 + 2));
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v31 = v1;
    *v5 = 136315394;
    v6 = sub_1883FE43C();
    v8 = sub_1883FE340(v6, v7, &v31);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    memcpy(__dst, v0 + 2, sizeof(__dst));
    sub_1883FBF10((v0 + 2), (v0 + 42));
    v9 = CKSyncEngine.Event.description.getter();
    v11 = v10;
    memcpy(v0 + 32, __dst, 0x50uLL);
    sub_1883FBF6C((v0 + 32));
    v12 = sub_1883FE340(v9, v11, &v31);

    *(v5 + 14) = v12;
    sub_1883FDDA4();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    swift_arrayDestroy();
    sub_1883F7B60();
    sub_1883FD784();
  }

  Strong = swift_weakLoadStrong();
  v0[53] = Strong;
  if (Strong)
  {
    v19 = Strong;
    v20 = v0[52];
    v21 = swift_allocObject();
    v0[54] = v21;
    memcpy(v21 + 2, v0 + 2, 0x50uLL);
    v21[12] = v19;
    v21[13] = v20;

    sub_1883FBF10((v0 + 2), (v0 + 22));

    v22 = swift_task_alloc();
    v0[55] = v22;
    *v22 = v0;
    v22[1] = sub_1884076EC;

    return sub_188404984(sub_188404984, &unk_1886FAF08, v21);
  }

  else
  {
    v24 = v0[52];

    v25 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883F9984();
      __dst[0] = sub_1883F8C00();
      *v24 = 136315138;
      v26 = sub_1883FE43C();
      sub_1883FE340(v26, v27, __dst);
      sub_1883FE2FC();
      *(v24 + 4) = v1;
      sub_1883F7A44(&dword_1883EA000, v28, v29, "%s not posting event to deallocated engine");
      sub_1883F8EAC();
      sub_1883F82B8();
    }

    sub_1883F816C();

    return v30();
  }
}

uint64_t sub_1883FBE44()
{
  sub_188407804(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1883FBEA8()
{
  sub_1883F7120();
  *(v1 + 416) = v0;
  memcpy((v1 + 16), v2, 0x50uLL);
  v3 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

char *CKSyncEngine.Event.description.getter()
{
  switch(*(v0 + 64) >> 60)
  {
    case 1:
      return CKSyncEngine.Event.AccountChange.description.getter();
    case 2:
      sub_1884008F8();
      return CKSyncEngine.Event.FetchedDatabaseChanges.description.getter();
    case 3:
      return CKSyncEngine.Event.FetchedRecordZoneChanges.description.getter();
    case 4:
      sub_18840AE04();
      return CKSyncEngine.Event.SentDatabaseChanges.description.getter();
    case 5:
      sub_18840AE04();
      return CKSyncEngine.Event.SentRecordZoneChanges.description.getter();
    case 6:
      v14 = 0xD00000000000001ALL;
      goto LABEL_16;
    case 7:
      sub_1883F8AD0();
      v13 = (v7 + 10);
      v6 = [v8 description];
      goto LABEL_14;
    case 8:
      sub_1884008F8();
      return CKSyncEngine.Event.DidFetchRecordZoneChanges.description.getter();
    case 9:
      v14 = 0xD000000000000019;
LABEL_16:
      Changes = CKSyncEngine.FetchChangesContext.description.getter();
      goto LABEL_19;
    case 0xALL:
      sub_1883FE32C();
      goto LABEL_18;
    case 0xBLL:
      sub_1883FE32C();
      v3 = v2 - 1;
LABEL_18:
      v14 = v3;
      Changes = CKSyncEngine.SendChangesContext.description.getter();
LABEL_19:
      MEMORY[0x18CFD5140](Changes);

      sub_1883F8358();
      return v14;
    case 0xCLL:
      sub_1883F8AD0();
      v13 = (v4 - 3);
      v6 = [v5 description];
      goto LABEL_14;
    case 0xDLL:
      sub_1883F8AD0();
      v13 = (v9 - 5);
      v6 = [v10 description];
LABEL_14:
      v11 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883FF260();

      sub_1883FE78C();

      sub_1883FA058();
      result = v13;
      break;
    case 0xELL:
      sub_1884008F8();
      result = CKSyncEngine.Event.DidFetchAsset.description.getter();
      break;
    default:
      result = CKSyncEngine.Event.StateUpdate.description.getter();
      break;
  }

  return result;
}

uint64_t CKSyncEngine.FetchChangesOptions.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1883F69F4(v3);
  if (v5)
  {
    sub_1884147E8();
    sub_1883F5A94();

    v30 = v25;
    v31 = v28;
  }

  if (v4)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  if (v4)
  {
    v7 = 0x313D6563726F6620;
  }

  else
  {
    v7 = 0;
  }

  sub_1884147E8();
  sub_1883FF004();
  v26 = v8;
  v29 = v9;
  v10 = [v3 operationGroupID];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x18CFD5140](v11, v13);

  MEMORY[0x18CFD5140](v26, v29);

  _StringGuts.grow(_:)(18);

  sub_1883F9424();
  LOBYTE(v24) = v2;
  CKSyncEngine.FetchChangesOptions.Scope.description.getter(v14, v15, v16, v17, v18, v19, v20, v21, v1, v24, 0xD00000000000001BLL, v22);
  MEMORY[0x18CFD5140]();

  MEMORY[0x18CFD5140](v7, v6);

  MEMORY[0x18CFD5140](v30, v31);

  MEMORY[0x18CFD5140](15913, 0xE200000000000000);
  return v27;
}

void CKSyncEngine.FetchChangesOptions.Scope.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  sub_1883FDC24();
  if (!*(v12 + 8))
  {
    sub_1883FE8DC();

    v21 = sub_188405868();
    if (v21)
    {
      sub_1883FEE14(v21);
      if (v13 < 0)
      {
        goto LABEL_31;
      }

      sub_1883F855C();
      do
      {
        if (v14)
        {
          sub_1883FEC14();
        }

        else
        {
          v22 = sub_1883FB65C();
        }

        v23 = [v22 ckShortDescription];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1883F8038();

        sub_1883FDB94();
        if (v19)
        {
          sub_1883F9944(v24);
        }

        sub_1884055D8();
      }

      while (!v20);
    }

    sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
    v28 = sub_1883F94A4();
    sub_188403834(v28);
    sub_18840231C();
    sub_18842D4F8();

    v26 = 41;
    v27 = 0xE100000000000000;
    goto LABEL_28;
  }

  if (*(v12 + 8) != 1)
  {
    goto LABEL_29;
  }

  v15 = sub_1883FDFA4();
  if (!v15)
  {
    goto LABEL_26;
  }

  sub_1883FEE14(v15);
  if ((v13 & 0x8000000000000000) == 0)
  {
    sub_1883F855C();
    do
    {
      if (v14)
      {
        sub_1883FEC14();
      }

      else
      {
        v16 = sub_1883FB65C();
      }

      v17 = [v16 ckShortDescription];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1883F8038();

      sub_1883FDB94();
      if (v19)
      {
        sub_1883F9944(v18);
      }

      sub_1884055D8();
    }

    while (!v20);
LABEL_26:
    sub_18844E6FC(&qword_1EA90D330, &qword_1886F75D0);
    v25 = sub_1883F94A4();
    sub_188403834(v25);
    sub_18840231C();
    sub_18842D4F8();

    v26 = 10537;
    v27 = 0xE200000000000000;
LABEL_28:
    MEMORY[0x18CFD5140](v26, v27);
LABEL_29:
    sub_1883FDC98();
    return;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1883FC684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v35[647] = a29;
  v35[648] = a33;
  v35[649] = a30;
  v35[650] = a34;
  v35[651] = a25;
  v35[652] = a21;
  v35[653] = a17;
  v35[654] = a19;
  v35[655] = a28;
  v35[656] = a31;
  v35[657] = a35;
  v35[658] = *(v36 - 200);

  sub_1884C7AD8(v35 + 659);
}

uint64_t sub_1883FC71C()
{
}

NSArray sub_1883FC750()
{

  return Array._bridgeToObjectiveC()();
}

uint64_t sub_1883FC768(uint64_t a1)
{
  *(v1 + 40) = a1;

  return Identifiable<>.id.getter();
}

unint64_t sub_1883FC788(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1883FE340(a1, a2, va);
}

uint64_t sub_1883FC7AC(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_18850DE28();
}

void sub_1883FC7E4()
{

  JUMPOUT(0x18CFD7E80);
}

id sub_1883FC800()
{
  *(v1 + 480) = v0;

  return v0;
}

uint64_t sub_1883FC82C()
{
  sub_1883F7120();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = type metadata accessor for UUID();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v5);
  v1[17] = swift_task_alloc();
  v6 = sub_1883F7F40();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1883FC918(uint64_t a1)
{
  sub_1884061A4();
  sub_1883FB4AC();
  sub_1883F8674();
  v1 = swift_task_alloc();
  v2 = sub_1883F7E38(v1);
  *v2 = v3;
  v2[1] = sub_1884061E0;
  sub_1883F97D4();
  sub_188404D5C();

  return sub_1883FADD0(v4, v5, v6, v7);
}

id sub_1883FC9B4()
{
  v1 = type metadata accessor for CancellationError();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, v0, 0x50uLL);
  v5 = __dst[0];
  v6 = *(__dst + 1) | ((*(__dst + 5) | (HIBYTE(__dst[0]) << 16)) << 32);
  v7 = __dst[1];
  v8 = __dst[2];
  v9 = __dst[3];
  switch(__dst[8] >> 60)
  {
    case 1uLL:
      v80 = (LOBYTE(__dst[0]) | (v6 << 8));
      if (LOBYTE(__dst[2]))
      {
        if (LOBYTE(__dst[2]) == 1)
        {
          v81 = sub_188405334();
          sub_1884D1670(v81, v82, 1u);
          v83 = 0;
        }

        else
        {
          v122 = v80;
          v123 = v7;
          v83 = v7;
        }
      }

      else
      {
        v120 = sub_188405334();
        sub_1884D1670(v120, v121, 0);
        v83 = v80;
        v80 = 0;
      }

      sub_1883F4C5C(0, &qword_1EA90C5D8, off_1E70BA7E8);
      v124 = sub_188405334();
      sub_1884D1670(v124, v125, v8);
      v89 = sub_1885087DC(v80, v83);

      goto LABEL_78;
    case 2uLL:
      v52 = LOBYTE(__dst[0]) | (v6 << 8);
      v53 = *(v52 + 0x10);
      if (v53)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v54 = (v52 + 32);
        do
        {
          v55 = *v54++;
          [objc_allocWithZone(CKRecordZone) initWithZoneID_];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v53;
        }

        while (v53);
      }

      v56 = v7[2];
      if (v56)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v57 = (v7 + 5);
        do
        {
          v58 = *(v57 - 1);
          v59 = *v57;
          v57 += 16;
          [objc_allocWithZone(CKSyncEngineFetchedZoneDeletion) initWithZoneID:v58 reason:v59];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v56;
        }

        while (v56);
      }

      v60 = objc_allocWithZone(CKSyncEngineFetchedDatabaseChangesEvent);
      return sub_188509AC0();
    case 3uLL:
      v62 = LOBYTE(__dst[0]) | (v6 << 8);
      v63 = *(v62 + 0x10);
      if (v63)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v64 = (v62 + 32);
        do
        {
          v65 = *v64++;
          v66 = v65;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v63;
        }

        while (v63);
      }

      v67 = v7[2];
      if (v67)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v68 = v7 + 6;
        do
        {
          v70 = *(v68 - 2);
          v69 = *(v68 - 1);
          v71 = *v68;
          v68 += 3;
          objc_allocWithZone(CKSyncEngineFetchedRecordDeletion);
          v72 = v70;

          sub_188509B74(v72, v69, v71);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v67;
        }

        while (v67);
      }

      v73 = *(v8 + 16);
      if (v73)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v74 = (v8 + 32);
        do
        {
          v75 = *v74++;
          v76 = v75;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v73;
        }

        while (v73);
      }

      v77 = objc_allocWithZone(CKSyncEngineFetchedRecordZoneChangesEvent);
      return sub_188509BE0();
    case 4uLL:
      v134 = __dst[2];
      v138 = (LOBYTE(__dst[0]) | (v6 << 8));
      v139 = __dst[3];
      v21 = *(__dst[1] + 16);
      if (v21)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v22 = (v7 + 5);
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;
          v25 = objc_allocWithZone(CKSyncEngineFailedZoneSave);
          sub_188509E44(v23, v24, &selRef_initWithZone_error_);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v22 += 2;
          --v21;
        }

        while (v21);
      }

      sub_18844E6FC(&qword_1EA90E758, &unk_1886FCFA0);
      v26 = v139;
      v27 = static _DictionaryStorage.copy(original:)();
      v28 = 0;
      v29 = v26 + 64;
      sub_1883F90E0();
      i = v31 & v30;
      v34 = (v33 + 63) >> 6;
      v36 = v35 + 64;
      if ((v31 & v30) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      v38 = v28;
      while (2)
      {
        v28 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v28 < v34)
        {
          v39 = *(v29 + 8 * v28);
          ++v38;
          if (v39)
          {
            v37 = __clz(__rbit64(v39));
            for (i = (v39 - 1) & v39; ; i &= i - 1)
            {
              v40 = v37 | (v28 << 6);
              v41 = *(*(v139 + 48) + 8 * v40);
              v42 = *(*(v139 + 56) + 8 * v40);
              *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
              *(v27[6] + 8 * v40) = v41;
              *(v27[7] + 8 * v40) = v42;
              v43 = v27[2];
              v44 = __OFADD__(v43, 1);
              v45 = v43 + 1;
              if (v44)
              {
                break;
              }

              v27[2] = v45;
              v46 = v41;
              v47 = v42;
              if (!i)
              {
                goto LABEL_10;
              }

LABEL_9:
              v37 = __clz(__rbit64(i));
            }

LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:

            v142 = 0;
            v143 = 0xE000000000000000;
            _StringGuts.grow(_:)(38);
            MEMORY[0x18CFD5140](0xD000000000000024, 0x80000001886FFF10);
            swift_getErrorValue();
            DefaultStringInterpolation.appendInterpolation<A>(_:)();
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v142, v143, "CloudKit/CKError.swift", 22, 2, 99);
            __break(1u);
            JUMPOUT(0x1883FD72CLL);
          }

          continue;
        }

        break;
      }

      sub_18847EE70();

      v96 = objc_allocWithZone(CKSyncEngineSentDatabaseChangesEvent);
      result = sub_188509CD8();
      break;
    case 5uLL:
      v134 = __dst[2];
      v126[1] = LOBYTE(__dst[0]) | (v6 << 8);
      v84 = *(__dst[1] + 16);
      v132 = v4;
      v133 = v1;
      v139 = __dst[3];
      if (v84)
      {
        v142 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v85 = (v7 + 5);
        do
        {
          v86 = *(v85 - 1);
          v87 = *v85;
          v88 = objc_allocWithZone(CKSyncEngineFailedRecordSave);
          sub_188509E44(v86, v87, &selRef_initWithRecord_error_);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v85 += 2;
          --v84;
        }

        while (v84);
        v126[0] = v142;
        v9 = v139;
      }

      else
      {
        v126[0] = MEMORY[0x1E69E7CC0];
      }

      sub_18844E6FC(&qword_1EA90E750, &qword_1886FCF98);
      v97 = static _DictionaryStorage.copy(original:)();
      v98 = 0;
      v99 = v9 + 8;
      sub_1883F90E0();
      v101 = (v100 + 63) >> 6;
      sub_1883F9424();
      v130 = v103;
      v104 = *MEMORY[0x1E696A578];
      v128 = (v2 + 8);
      v129 = v104;
      v136 = v105 + 8;
      v127 = xmmword_1886F7400;
      v131 = v105;
      if (v102)
      {
        goto LABEL_60;
      }

      while (2)
      {
        v107 = v98;
LABEL_62:
        v98 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          goto LABEL_80;
        }

        if (v98 < v101)
        {
          v108 = v99[v98];
          ++v107;
          if (v108)
          {
            v106 = __clz(__rbit64(v108));
            for (j = (v108 - 1) & v108; ; j = (v102 - 1) & v102)
            {
              v109 = v106 | (v98 << 6);
              v110 = *(v9[6] + 8 * v109);
              v142 = *(v9[7] + 8 * v109);
              v111 = v142;
              v138 = v110;
              sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
              type metadata accessor for CKError(0);
              if (swift_dynamicCast())
              {

                v112 = v140[0];
              }

              else
              {

                v142 = v111;
                v135 = v111;
                v113 = v132;
                v114 = v133;
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_83;
                }

                sub_18844E6FC(&qword_1EA90D728, &qword_1886F8720);
                v115 = swift_allocObject();
                *(v115 + 16) = v127;
                *(v115 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                *(v115 + 40) = v116;
                *(v115 + 48) = 0xD000000000000012;
                *(v115 + 56) = v130;
                Dictionary.init(dictionaryLiteral:)();
                v141[0] = 20;
                sub_18847E984();

                sub_18847A4EC();
                _BridgedStoredNSError.init(_:userInfo:)();

                v112 = v140[0];
                (*v128)(v113, v114);

                v97 = v131;
              }

              *(v136 + ((v109 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v109;
              v9 = v139;
              *(v97[6] + 8 * v109) = v138;
              *(v97[7] + 8 * v109) = v112;
              v117 = v97[2];
              v44 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v44)
              {
                goto LABEL_82;
              }

              v97[2] = v118;
              v102 = j;
              if (!j)
              {
                break;
              }

LABEL_60:
              v106 = __clz(__rbit64(v102));
            }

            continue;
          }

          goto LABEL_62;
        }

        break;
      }

      sub_18847F0E8();

      v119 = objc_allocWithZone(CKSyncEngineSentRecordZoneChangesEvent);
      v95 = sub_188509EB4();
LABEL_74:
      v89 = v95;
LABEL_78:
      result = v89;
      break;
    case 6uLL:
      sub_18840B048();
      sub_188405020();
      sub_188403CCC(&v142, v140);
      sub_188403D04();
      sub_1883FF7A0();
      sub_1883F7768(v140);
      v50 = [objc_allocWithZone(CKSyncEngineFetchChangesContext) initWithReason:v5 & 1 options:v141];
      sub_1883FBF6C(__dst);

      v51 = CKSyncEngineWillFetchChangesEvent;
      goto LABEL_51;
    case 7uLL:
      v48 = LOBYTE(__dst[0]) | (v6 << 8);
      v78 = objc_allocWithZone(CKSyncEngineWillFetchRecordZoneChangesEvent);
      v79 = sel_initWithZoneID_;
      goto LABEL_47;
    case 8uLL:
      v92 = (LOBYTE(__dst[0]) | (v6 << 8));
      v93 = objc_allocWithZone(CKSyncEngineDidFetchRecordZoneChangesEvent);
      v16 = v92;
      v94 = v7;
      v18 = &selRef_initWithZoneID_error_;
      goto LABEL_56;
    case 9uLL:
      sub_18840B048();
      sub_188405020();
      sub_18840E650(&v142, v140);
      sub_188403D04();
      sub_1883FF7A0();
      sub_1883F7768(v140);
      v50 = [objc_allocWithZone(CKSyncEngineFetchChangesContext) initWithReason:v5 & 1 options:v141];
      sub_1883FBF6C(__dst);

      v51 = CKSyncEngineDidFetchChangesEvent;
LABEL_51:
      v89 = [objc_allocWithZone(v51) initWithContext_];

      goto LABEL_78;
    case 0xAuLL:
      sub_1883FA4DC();
      v90 = v9;
      v12 = sub_18841488C();

      v20 = CKSyncEngineWillSendChangesEvent;
      goto LABEL_53;
    case 0xBuLL:
      sub_1883FA4DC();
      v19 = v9;
      v12 = sub_18841488C();

      v20 = CKSyncEngineDidSendChangesEvent;
LABEL_53:
      v13 = [objc_allocWithZone(v20) initWithContext_];
      goto LABEL_54;
    case 0xCuLL:
      v48 = LOBYTE(__dst[0]) | (v6 << 8);
      v49 = CKSyncEngineWillFetchAssetEvent;
      goto LABEL_46;
    case 0xDuLL:
      v48 = LOBYTE(__dst[0]) | (v6 << 8);
      v49 = CKSyncEngineFetchedAssetEvent;
LABEL_46:
      v78 = objc_allocWithZone(v49);
      v79 = sel_initWithAsset_;
LABEL_47:

      return [v78 v79];
    case 0xEuLL:
      v14 = (LOBYTE(__dst[0]) | (v6 << 8));
      v15 = objc_allocWithZone(CKSyncEngineDidFetchAssetEvent);
      v16 = v14;
      v17 = v7;
      v18 = &selRef_initWithAsset_error_;
LABEL_56:
      v95 = sub_18850A020(v16, v7, v18);
      goto LABEL_74;
    default:
      sub_1883F4C5C(0, &unk_1EA90C698, off_1E70BA8E0);
      sub_188423C74(__dst[0], v7);
      v10 = sub_188405334();
      v12 = sub_188508764(v10, v11);
      v13 = [objc_allocWithZone(CKSyncEngineStateUpdateEvent) initWithStateSerialization_];
LABEL_54:
      v91 = v13;

      return v91;
  }

  return result;
}

void sub_1883FD784()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_1883FD7E8(uint64_t a1)
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1883FD800()
{
  sub_188405F00();
  type metadata accessor for UUID();
  sub_188488A64(&unk_1EA90C868, MEMORY[0x1E69695A8]);
  sub_1883F7BC0();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_1883FE2BC();
  sub_18848671C();
}

uint64_t sub_1883FD92C(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, char a33)
{
  *v33 = a1;
  *(v33 + 16) = a2;
  *(v33 + 32) = a32;
  *(v33 + 48) = a33;

  return _HashTable.BucketIterator.currentValue.getter();
}

uint64_t sub_1883FD964(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 176) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *v4;
  return sub_188405594(sub_1884059B4);
}

void sub_1883FDA08()
{

  type metadata accessor for CKError(0);
}

uint64_t sub_1883FDA5C(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1883FDA90()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FDAD8(uint64_t result)
{
  *(v2 - 296) = v1;
  *(v2 - 288) = result;
  return result;
}

uint64_t sub_1883FDAEC()
{

  return sub_1883F5BA0(v1, v0);
}

uint64_t sub_1883FDB04(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

void sub_1883FDB58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1883FDB78()
{

  JUMPOUT(0x18CFD5140);
}

id sub_1883FDBA8()
{

  return sub_1884276B8(v1, v0);
}

uint64_t sub_1883FDD2C()
{

  return swift_task_alloc();
}

uint64_t sub_1883FDD90(uint64_t result)
{
  *(v2 + 8) = v1;
  *(v3 + 16) = 166;
  *(v3 + 24) = result;
  return result;
}

uint64_t sub_1883FDDF4()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FDE10()
{
}

uint64_t sub_1883FDE5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_1883FDEB0(unint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_188404AE8(va, a1);
}

void *sub_1883FDED8(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x50uLL);
}

uint64_t sub_1883FDF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

__n128 sub_1883FDF34(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v11 + 104) = a1;
  result = a10;
  a1[1] = a10;
  a1[2].n128_u64[0] = v10;
  return result;
}

uint64_t sub_1883FDF4C()
{
}

uint64_t sub_1883FDFA4()
{

  return sub_1883F4C9C(v0);
}

id sub_1883FDFD0()
{

  return sub_1884296E8(v1, v0);
}

void *sub_1883FE004(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v11 = a4 & 1;

  return sub_1884881D0(va, a2, a3, v11, a5);
}

uint64_t sub_1883FE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return String.init<A>(_:)();
}

void sub_1883FE048()
{

  JUMPOUT(0x18CFD5140);
}

double sub_1883FE060()
{

  return sub_1884D123C(v3, v1, v0, v2);
}

void sub_1883FE0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v35[271] = *(v36 - 192);
  v35[272] = a23;
  v35[273] = a32;
  v35[274] = a29;
  v35[275] = a33;
  v35[276] = a30;
  v35[277] = a34;
  v35[278] = a25;
  v35[279] = a21;
  v35[280] = a17;
  v35[281] = a19;
  v35[282] = a28;
  v35[283] = a31;
  v35[284] = a35;
  v35[285] = *(v36 - 200);
}

uint64_t sub_1883FE190()
{

  return CheckedContinuation.init(continuation:function:)();
}

__n128 sub_1883FE1F0@<Q0>(__n128 *a1@<X8>, uint64_t a2, __n128 *a3)
{
  result = *a3;
  *a1 = *a3;
  return result;
}

uint64_t sub_1883FE248()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FE2DC()
{

  return sub_1884A11FC(v1, v0);
}

uint64_t sub_1883FE2FC()
{
}

unint64_t sub_1883FE340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1884058A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_188405DF8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1883FE944(v11);
  return v7;
}

uint64_t sub_1883FE404()
{

  return swift_willThrow();
}

void *sub_1883FE424(void *a1)
{

  return memcpy(a1, (v1 + 2488), 0x78uLL);
}

uint64_t sub_1883FE43C()
{
  v1 = v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC8CloudKit10SyncEngine_loggingIDMutex));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v1);
  _StringGuts.grow(_:)(17);

  strcpy(v5, "<CKSyncEngine ");
  MEMORY[0x18CFD5140](v2, v3);

  MEMORY[0x18CFD5140](62, 0xE100000000000000);
  return v5[0];
}

id sub_1883FE500(void *a1)
{

  return a1;
}

void *sub_1883FE518()
{
  v2[247] = v1;
  v2[248] = v0;

  return memcpy(v2 + 249, v2 + v3, 0x50uLL);
}

uint64_t sub_1883FE540()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FE5A0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_1883FE5B8(unint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  *(v5 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  *(v4[6] + 8 * a1) = v3;
  *(v4[7] + 8 * a1) = a3;
  ++v4[2];
}

uint64_t sub_1883FE710()
{

  return swift_asyncLet_begin();
}

void *sub_1883FE764(void *a1)
{

  return memcpy(a1, v1, 0x60uLL);
}

__n128 sub_1883FE77C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_1883FE78C()
{

  JUMPOUT(0x18CFD5140);
}

void sub_1883FE7A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1883FE7C8()
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

uint64_t sub_1883FE828()
{

  return String.hash(into:)();
}

uint64_t sub_1883FE844(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_1883FE89C()
{

  _StringGuts.grow(_:)(65);
}

void sub_1883FE8BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1883FE8DC()
{

  _StringGuts.grow(_:)(16);
}

uint64_t sub_1883FE8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1883FE944(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1883FE9F0()
{

  type metadata accessor for CKError(0);
}

uint64_t sub_1883FEA20()
{
  v7 = *v1;
  *(v7 + 16) = v2 + 1;
  v8 = (v7 + 32 * v2);
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v3;
  v8[7] = v0;
}

void sub_1883FEA58()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FEA90(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1883FEAB4(uint64_t a1)
{

  return swift_once();
}

void sub_1883FEAE8()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FEB04()
{

  return specialized ContiguousArray.reserveCapacity(_:)();
}

uint64_t sub_1883FEB4C()
{
}

uint64_t sub_1883FEB6C()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1883FEBAC()
{

  return sub_1884F3A24(v0 + 3568, v0 + 3688);
}

void sub_1883FEC14()
{

  JUMPOUT(0x18CFD59D0);
}

id sub_1883FEC38(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

void sub_1883FEC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a10 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
  *(*(v11 + 48) + 8 * v10) = v13;
  *(*(v11 + 56) + 8 * v10) = v12;
}

uint64_t sub_1883FECC4()
{
}

uint64_t sub_1883FECF4(uint64_t a1)
{

  return swift_dynamicCast();
}

BOOL sub_1883FED2C()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_1883FED5C()
{

  return swift_asyncLet_begin();
}

uint64_t sub_1883FEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, a4, a5, a6, 32, 2, a9);
}

char *sub_1883FEE14(uint64_t a1)
{

  return sub_18840489C(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_1883FEE7C(uint64_t result)
{
  v2[207] = result;
  v2[84] = v1;
  v2[85] = result;
  v2[90] = 0;
  v2[92] = 0x8000000000000000;
  return result;
}

void *sub_1883FEE9C()
{

  return memcpy((v0 + 16), (v0 + 96), 0x50uLL);
}

uint64_t sub_1883FEEC8()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1883FEEE0()
{

  return swift_slowAlloc();
}

uint64_t sub_1883FEF14()
{
  *(v1 + 120) = v0;

  return swift_task_alloc();
}

uint64_t sub_1883FEF2C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F78B4(v1);

  return v4(v3);
}

uint64_t sub_1883FF014()
{
}

void sub_1883FF02C()
{

  sub_1884DF66C(0, 1, v0, v1, v2);
}

unint64_t sub_1883FF074@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = v4[1];

  return sub_1883FE340(v5, v6, &a2);
}

uint64_t sub_1883FF15C()
{

  return swift_getObjectType();
}

void *sub_1883FF1E0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + 32;

  return memmove(v3, (v3 + 8), 8 * (a1 - 1));
}

id sub_1883FF204(uint64_t a1)
{
  *(v1 + 6520) = a1;
  *(a1 + 16) = &unk_1886FB6F0;
  *(a1 + 24) = v3;

  return v2;
}

uint64_t sub_1883FF240()
{
}

void sub_1883FF26C()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

int8x16_t sub_1883FF2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a15, int8x16_t a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int8x16_t a16, __int128 a18, int8x16_t a19, __int128 a20, __int128 a21, __int128 a23, uint64_t a25, uint64_t a24, uint64_t argA0, uint64_t a26, uint64_t a27)
{
  *(v28 - 192) = *(v27 + 2488);
  *(v28 - 200) = *(v27 + 2600);
  *(v27 + 3344) = a21;
  *(v27 + 3328) = a23;
  *(v27 + 3376) = a18;
  *(v27 + 3360) = a20;
  result = vextq_s8(a16, a16, 8uLL);
  *(v27 + 3408) = vextq_s8(a19, a19, 8uLL);
  *(v27 + 3392) = result;
  *(v27 + 3424) = a27;
  *(v27 + 3432) = a26;
  *(v27 + 3440) = argA0;
  return result;
}

uint64_t sub_1883FF3C8(uint64_t a1)
{
  *(v1 + 1424) = a1;

  return swift_beginAccess();
}

uint64_t sub_1883FF3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1883FF44C(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, __int128 a34, char a35)
{
  *v35 = a1;
  *(v35 + 16) = a2;
  *(v35 + 32) = a34;
  *(v35 + 48) = a35;

  return _HashTable.BucketIterator.currentValue.getter();
}

void sub_1883FF49C()
{
  v2 = *(v0 + 88);
}

void *sub_1883FF504(void *a1)
{

  return memcpy(a1, (v1 + 24), 0x48uLL);
}

void sub_1883FF51C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  sub_18850DE48(a1, a2, v4, a4);
}

uint64_t sub_1883FF548(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_1883FF564(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 & 1;

  sub_1884613D8(a1, v7, a3, a4, a5, a6, sub_188461468);
}

uint64_t sub_1883FF58C()
{

  return swift_allocObject();
}

uint64_t sub_1883FF5A4()
{
}

void sub_1883FF5E4()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_1883FF604(uint64_t result)
{
  *(v2 + 120) = result;
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(result + 32) = v3;
  return result;
}

id sub_1883FF634()
{
  v2 = *(v0 + 2192);

  return objc_allocWithZone(v2);
}

uint64_t sub_1883FF688(uint64_t **a1)
{
}

id sub_1883FF6AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *v18 = a17;
  *(v18 + 4) = v17;
  *a1 = v17;

  return v17;
}

id sub_1883FF6D0()
{

  return [v0 (v1 + 3376)];
}

uint64_t sub_1883FF744()
{
}

void *sub_1883FF7A0()
{

  return memcpy((v0 + 160), (v0 + 240), 0x48uLL);
}

CKPrettyError *sub_1883FF7CC(void *a1)
{
  v122 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_domain(v1, v2, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  if (isEqualToString)
  {
    v9 = objc_msgSend_userInfo(v1, v7, v8);
    v12 = objc_msgSend_mutableCopy(v9, v10, v11);

    v15 = objc_msgSend_CKClientSuitableUnderlyingError(v1, v13, v14);
    v16 = *MEMORY[0x1E696AA08];
    objc_msgSend_setObject_forKeyedSubscript_(v12, v17, v15, *MEMORY[0x1E696AA08]);
    v20 = objc_msgSend_userInfo(v15, v18, v19);
    v21 = *MEMORY[0x1E696A578];
    v23 = objc_msgSend_objectForKeyedSubscript_(v20, v22, *MEMORY[0x1E696A578]);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v24, v23, v21);

    v27 = objc_msgSend_userInfo(v15, v25, v26);
    v29 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"CKErrorDescription");
    objc_msgSend_setObject_forKeyedSubscript_(v12, v30, v29, @"CKErrorDescription");

    v31 = MEMORY[0x1E696AEC0];
    v34 = objc_msgSend_domain(v15, v32, v33);
    v37 = objc_msgSend_code(v15, v35, v36);
    v39 = objc_msgSend_stringWithFormat_(v31, v38, @"%@: %ld", v34, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v40, v39, *MEMORY[0x1E695E618]);

    v45 = objc_msgSend_CKClientSuitableErrorSpecificUserInfo(v15, v41, v42);
    if (v45)
    {
      objc_msgSend_addEntriesFromDictionary_(v12, v43, v45);
    }

    v46 = objc_msgSend_userInfo(v1, v43, v44);
    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, @"CKPartialErrors");

    *&buf = 0;
    *(&buf + 1) = &buf;
    v118 = 0x3032000000;
    v119 = sub_1883ED890;
    v120 = sub_1883EF59C;
    v121 = 0;
    v107 = 0;
    v108 = &v107;
    v109 = 0x3032000000;
    v110 = sub_1883ED890;
    v111 = sub_1883EF59C;
    v112 = 0;
    if (v48)
    {
      v50 = objc_opt_new();
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = sub_188564230;
      v103[3] = &unk_1E70BDA20;
      p_buf = &buf;
      v106 = &v107;
      v51 = v50;
      v104 = v51;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v48, v52, v103);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v53, v51, @"CKPartialErrors");

      v54 = *(*(&buf + 1) + 40);
      if (v54)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v12, v49, v54, @"RequestUUID");
      }
    }

    v55 = v108[5];
    if (v55)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v12, v49, v55, @"ContainerID");
    }

    v56 = objc_msgSend_objectForKeyedSubscript_(v12, v49, v16);
    v59 = objc_msgSend_code(v56, v57, v58);
    v62 = CKErrorCodeForUnderlyingErrorCode(v59, v60, v61);

    v63 = [CKPrettyError alloc];
    v65 = objc_msgSend_initWithDomain_code_userInfo_(v63, v64, @"CKErrorDomain", v62, v12);

    _Block_object_dispose(&v107, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v68 = objc_msgSend_domain(v1, v7, v8);
    v70 = objc_msgSend_isEqualToString_(v68, v69, *MEMORY[0x1E696A978]);

    if (v70)
    {
      v73 = objc_msgSend_code(v1, v71, v72);
      v74 = CKErrorCodeForNSURLErrorCode(v73);
      v75 = objc_opt_new();
      v76 = MEMORY[0x1E696AEC0];
      v79 = objc_msgSend_domain(v1, v77, v78);
      v82 = objc_msgSend_code(v1, v80, v81);
      v84 = objc_msgSend_stringWithFormat_(v76, v83, @"%@: %ld", v79, v82);
      objc_msgSend_setObject_forKeyedSubscript_(v75, v85, v84, *MEMORY[0x1E695E618]);

      objc_msgSend_setObject_forKeyedSubscript_(v75, v86, v1, *MEMORY[0x1E696AA08]);
      v87 = [CKPrettyError alloc];
      v65 = objc_msgSend_initWithDomain_code_userInfo_(v87, v88, @"CKErrorDomain", v74, v75);
    }

    else
    {
      v65 = v1;
      if (objc_msgSend_CKIsXPCConnectionError(v1, v71, v72))
      {
        v89 = *MEMORY[0x1E696A578];
        v115[0] = *MEMORY[0x1E696AA08];
        v115[1] = v89;
        v116[0] = v1;
        v116[1] = @"Error connecting to CloudKit daemon. This could happen for many reasons, for example a daemon exit, a device reboot, a race with the connection inactivity monitor, invalid entitlements, and more. Check the logs around this time to investigate the cause of this error.";
        v115[2] = @"CKErrorDescription";
        v115[3] = @"CKRetryAfter";
        v116[2] = @"Error connecting to CloudKit daemon. This could happen for many reasons, for example a daemon exit, a device reboot, a race with the connection inactivity monitor, invalid entitlements, and more. Check the logs around this time to investigate the cause of this error.";
        v116[3] = &unk_1EFA850B0;
        v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v66, v116, v115, 4);
        v91 = [CKPrettyError alloc];
        v65 = objc_msgSend_initWithDomain_code_userInfo_(v91, v92, @"CKErrorDomain", 6, v90);
      }
    }
  }

  v93 = objc_msgSend_domain(v65, v66, v67);
  isEqual = objc_msgSend_isEqual_(v93, v94, @"CKErrorDomain");

  if ((isEqual & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v96 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v1;
      _os_log_fault_impl(&dword_1883EA000, v96, OS_LOG_TYPE_FAULT, "Could not convert error to a proper CloudKit error. Defaulting to internal error for %@", &buf, 0xCu);
    }

    v113 = *MEMORY[0x1E696AA08];
    v114 = v1;
    v98 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v97, &v114, &v113, 1);
    v99 = [CKPrettyError alloc];
    v101 = objc_msgSend_initWithDomain_code_userInfo_(v99, v100, @"CKErrorDomain", 1, v98);

    v65 = v101;
  }

  return v65;
}

void sub_1883FFE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1883FFE8C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_domain(a1, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x1E696A250]);

  return isEqualToString && ((objc_msgSend_code(a1, v7, v8) - 4097) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

id CKExtendedMethodSignatureForProtocolSelector(void *a1, uint64_t a2)
{
  v3 = a1;
  MethodTypeEncoding = _protocol_getMethodTypeEncoding();
  if (!MethodTypeEncoding || (objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v5, MethodTypeEncoding), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    outCount = 0;
    v7 = protocol_copyProtocolList(v3, &outCount);
    v8 = v7;
    if (outCount)
    {
      v9 = 1;
      v10 = v7;
      do
      {
        v11 = *v10++;
        v12 = CKExtendedMethodSignatureForProtocolSelector(v11, a2);
      }

      while (v9++ < outCount && v12 == 0);
      v15 = v12;
    }

    else
    {
      v15 = 0;
      v6 = 0;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    free(v8);
    v6 = v15;
  }

LABEL_12:

  return v6;
}

uint64_t sub_188400120(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1)
    {
      *(result + 8) = 0;
    }

    result = *(result + 32);
    if (result)
    {
      v2 = sqlite3_step(result);
      if (v2 == 100)
      {
        return 1;
      }

      else
      {
        if (v2 != 101)
        {
          objc_msgSend_invalidate_(v1, v3, @"Failed to step (%d): %@", v2, v1[3]);
        }

        return 0;
      }
    }
  }

  return result;
}

id CKGetRealPath(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v5 = &stru_1EFA32970;
    v6 = v1;
    while (1)
    {
      if (!objc_msgSend_length(v6, v2, v3))
      {
        v17 = v5;
        goto LABEL_10;
      }

      v9 = objc_msgSend_fileSystemRepresentation(v6, v7, v8);
      v10 = realpath_DARWIN_EXTSN(v9, 0);
      if (v10)
      {
        v22 = v10;
        v23 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v11, v12);
        v24 = strlen(v22);
        v26 = objc_msgSend_stringWithFileSystemRepresentation_length_(v23, v25, v22, v24);

        v28 = objc_msgSend_stringByAppendingPathComponent_(v26, v27, v5);

        free(v22);
        v29 = v28;
        v6 = v29;
        goto LABEL_17;
      }

      if (*__error() != 2)
      {
        break;
      }

      v15 = objc_msgSend_lastPathComponent(v6, v13, v14);
      v17 = objc_msgSend_stringByAppendingPathComponent_(v15, v16, v5);

      v20 = objc_msgSend_stringByDeletingLastPathComponent(v6, v18, v19);

      v5 = v17;
      v6 = v20;
      if (!v20)
      {
        goto LABEL_10;
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v30 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v32 = v30;
      v33 = *__error();
      v34 = 138543618;
      v35 = v6;
      v36 = 1024;
      v37 = v33;
      _os_log_error_impl(&dword_1883EA000, v32, OS_LOG_TYPE_ERROR, "realpath failed at %{public}@: %{errno}d", &v34, 0x12u);
    }

    v29 = v4;
LABEL_17:
    v21 = v29;
  }

  else
  {
    v6 = 0;
    v17 = &stru_1EFA32970;
LABEL_10:
    v21 = v4;
    v5 = v17;
  }

  return v21;
}

id sub_1884003F8(void *a1, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  LODWORD(v16) = 0;
  v2 = objc_msgSend_dataUsingEncoding_(a1, a2, 4, 0, 0, v16, v17);
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(v2, v6, v7);
  CC_SHA1(v5, v8, &v15);
  v10 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v9, &v15, 20, 0);
  v13 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v10, v11, v12);

  return v13;
}

id sub_1884004E4(void *a1)
{
  v14 = 0;
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  v9 = CKHexCharFromBytes(v5, v8, &v14, 3);
  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v11, v9, v14, 1, 1);

  return v12;
}

id CKProcessStartDate()
{
  v9 = *MEMORY[0x1E69E9840];
  *v6 = 0xE00000001;
  v7 = 1;
  v8 = getpid();
  memset(v5, 0, 512);
  v4 = 648;
  sysctl(v6, 4u, v5, &v4, 0, 0);
  v2 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v0, v1, SDWORD2(v5[0]) / 1000000.0 + *&v5[0]);

  return v2;
}

id sub_188400684(void *a1, const char *a2)
{
  v3 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], a2, @"\\/:%");
  v6 = objc_msgSend_invertedSet(v3, v4, v5);

  v8 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(a1, v7, v6);

  return v8;
}

void sub_1884007D8(void *a1@<X8>)
{
  a1[5] = v1;
  a1[6] = v2;
  a1[7] = v4;
  a1[8] = v3;
}

uint64_t sub_188400810()
{

  return swift_willThrow();
}

uint64_t sub_188400828()
{

  return type metadata accessor for UUID();
}

uint64_t sub_188400858(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.init<A>(describing:)();
}

uint64_t sub_188400870()
{
  v2 = v0[5];
  v0[18] = v2;
  v0[6] = v2;

  return swift_task_alloc();
}

uint64_t sub_1884008B4()
{
}

uint64_t sub_188400914(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_188400938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1884009F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_188400B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_188400B68(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_188400BAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1883F9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188400BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_188400C40(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      v39 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, sel_columnCount, a1, @"CKSQLiteStatement.m", 281, @"Statement is reset: %@", *(a1 + 24));
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = sqlite3_column_count(v4);
      objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v6, v5);
    }

    else
    {
      v5 = 0;
      objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 0);
    }
    v9 = ;
    if (v5)
    {
      v10 = 0;
      v11 = *MEMORY[0x1E695D920];
      while (1)
      {
        if (*(a1 + 8) == 1)
        {
          v33 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, sel_columnNameAtIndex_, a1, @"CKSQLiteStatement.m", 287, @"Statement is reset: %@", *(a1 + 24));
        }

        v12 = *(a1 + 32);
        if (v12)
        {
          break;
        }

        v21 = 0;
        v16 = 0;
LABEL_45:

        if (v5 == ++v10)
        {
          goto LABEL_48;
        }
      }

      v13 = MEMORY[0x1E696AEC0];
      v14 = sqlite3_column_name(v12, v10);
      v16 = objc_msgSend_stringWithUTF8String_(v13, v15, v14);
      v17 = *(a1 + 32);
      if (v17)
      {
        v18 = sqlite3_column_type(v17, v10);
        if (v18 <= 2)
        {
          if (v18 == 1)
          {
            v29 = MEMORY[0x1E696AD98];
            if (*(a1 + 8) == 1)
            {
              v42 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v37, sel_int64AtIndex_, a1, @"CKSQLiteStatement.m", 299, @"Statement is reset: %@", *(a1 + 24));
            }

            v30 = *(a1 + 32);
            if (v30)
            {
              v31 = sqlite3_column_int64(v30, v10);
              objc_msgSend_numberWithLongLong_(v29, v32, v31);
            }

            else
            {
              objc_msgSend_numberWithLongLong_(v29, v19, 0);
            }
            v25 = ;
            goto LABEL_42;
          }

          if (v18 == 2)
          {
            v22 = MEMORY[0x1E696AD98];
            if (*(a1 + 8) == 1)
            {
              v43 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
              objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v38, sel_doubleAtIndex_, a1, @"CKSQLiteStatement.m", 305, @"Statement is reset: %@", *(a1 + 24));
            }

            v23 = *(a1 + 32);
            if (v23)
            {
              v24 = sqlite3_column_double(v23, v10);
            }

            else
            {
              v24 = 0.0;
            }

            v25 = objc_msgSend_numberWithDouble_(v22, v19, v20, v24);
LABEL_42:
            v21 = v25;
            goto LABEL_43;
          }
        }

        else
        {
          switch(v18)
          {
            case 3:
              v25 = sub_188680A00(a1, v10, v20);
              goto LABEL_42;
            case 4:
              if (*(a1 + 8) == 1)
              {
                v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
                objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, sel_blobAtIndex_, a1, @"CKSQLiteStatement.m", 311, @"Statement is reset: %@", *(a1 + 24));
              }

              v26 = *(a1 + 32);
              if (v26)
              {
                v21 = sqlite3_column_blob(v26, v10);
                if (v21)
                {
                  v27 = sqlite3_column_bytes(*(a1 + 32), v10);
                  v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v28, v21, v27);
                  goto LABEL_42;
                }
              }

              else
              {
                v21 = 0;
              }

LABEL_43:
              if (v21)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v9, v19, v21, v16);
              }

              goto LABEL_45;
            case 5:
              goto LABEL_36;
          }
        }

        objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v19, v11, @"Unexpected column type: %d", v18);
      }

LABEL_36:
      v21 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_48:

  return v9;
}

void sub_18840103C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = sqlite3_finalize(v2);
      if (v3)
      {
        v4 = v3;
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v5 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
        {
          v6 = *(a1 + 24);
          v7[0] = 67109378;
          v7[1] = v4;
          v8 = 2112;
          v9 = v6;
          _os_log_fault_impl(&dword_1883EA000, v5, OS_LOG_TYPE_FAULT, "Error %d finalizing prepared statement: %@", v7, 0x12u);
        }
      }

      *(a1 + 32) = 0;
    }
  }
}

id sub_188401148(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_188401184(void *a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_msgSend_valueForEntitlement_(a1, a2, @"aps-connection-initiate");
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_1884020F4()
{
  sub_1883FB4AC();
  sub_1884CDCE4();
  v1 = sub_1884021B4(&protocol descriptor for CKSyncEngineDelegate);
  *(v0 + 96) = v1;
  v3 = sub_1884038A4(v1, v2);
  sub_1883FDF34(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  swift_task_alloc();
  sub_1883FF2B8();
  *(v0 + 112) = v13;
  *v13 = v14;
  v13[1] = sub_188407510;
  sub_1884110E4();

  return sub_1883FD964(v15, v16, v17, v18);
}

uint64_t sub_1884021B4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    ObjectType = swift_getObjectType();
    result = sub_1884049C0(v3, ObjectType, a1);
    if (!result)
    {
      _StringGuts.grow(_:)(62);
      sub_1883FEB90();
      MEMORY[0x18CFD5140](0xD00000000000003CLL);
      swift_getObjectType();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      result = sub_188410C3C("Fatal error", v5, v6, 0, 0xE000000000000000, "CloudKit/CKSyncEngineDelegate.swift", v7, v8, 237, 0);
      __break(1u);
    }
  }

  return result;
}

__n128 sub_1884022A8(__n128 *a1)
{
  *(v1 + 152) = a1;
  result = *(v1 + 56);
  a1[1] = result;
  return result;
}

uint64_t sub_1884022C8()
{

  return swift_arrayDestroy();
}

uint64_t sub_18840231C()
{
}

uint64_t sub_18840233C()
{
  sub_1883F7120();
  sub_18840506C();
  sub_1883F816C();

  return v0();
}

uint64_t sub_18840239C()
{
  sub_1883F7120();

  sub_1883F816C();

  return v0();
}

void sub_1884023F4()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v4 = sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  sub_1883F7B50();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v58 - v6;
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 56);
  if (sub_188403050() & 1) == 0 || (v10)
  {
    goto LABEL_42;
  }

  if (v9 == 1 && !sub_1883F4C9C(v8))
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v37 = type metadata accessor for Logger();
    sub_1883F85F4(v37, qword_1EA90C9F8);

    v13 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1884F46D0();
    if (!sub_188430A60())
    {
      goto LABEL_11;
    }

    sub_1883F9984();
    v38 = sub_1883F8C00();
    sub_1884F4550(v38);
    v39 = sub_1884F46B8(4.8149e-34);
    sub_1884F45D4(v39, v40);
    sub_1883FEFE0();

    *(v8 + 4) = 1;
    goto LABEL_34;
  }

  v11 = *(v1 + 128);
  if ([*(v11 + 16) needsToFetchDatabaseChanges])
  {
    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v12 = type metadata accessor for Logger();
    sub_1883F85F4(v12, qword_1EA90C9F8);

    v13 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1884F46D0();
    if (!sub_188430A60())
    {
      goto LABEL_11;
    }

    sub_1883F9984();
    v14 = sub_1883F8C00();
    sub_1884F4550(v14);
    v15 = sub_1884F46B8(4.8149e-34);
    sub_1884F45D4(v15, v16);
    sub_1883FEFE0();

    *(v8 + 4) = 1;
    goto LABEL_10;
  }

  if (!sub_188427168())
  {
    v32 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
    sub_1883F4C9C(v32);
    sub_1884F481C();

    if (v4)
    {
      if (v9 == 1)
      {
        v33 = CKSyncEngine.State.zoneIDsWithUnfetchedServerChanges.getter();
        v32 = sub_1884043A8(v33);
        sub_188426CE0(v8, v32);
        v35 = v34;

        if (v35)
        {
          if (qword_1EA90C9F0 != -1)
          {
            sub_1883F7480(&qword_1EA90C9F0);
          }

          v36 = type metadata accessor for Logger();
          sub_1883F85F4(v36, qword_1EA90C9F8);

          v13 = Logger.logObject.getter();
          static os_log_type_t.info.getter();
          sub_1884F46D0();
          if (!sub_188430A60())
          {
            goto LABEL_11;
          }

          goto LABEL_33;
        }

        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F7480(&qword_1EA90C9F0);
        }

        v57 = type metadata accessor for Logger();
        sub_1883F85F4(v57, qword_1EA90C9F8);

        v13 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1884F46D0();
        if (!sub_188430A60())
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (qword_1EA90C9F0 != -1)
        {
          sub_1883F7480(&qword_1EA90C9F0);
        }

        v50 = type metadata accessor for Logger();
        sub_1883F85F4(v50, qword_1EA90C9F8);

        v13 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1884F46D0();
        if (!sub_188430A60())
        {
          goto LABEL_11;
        }
      }

      sub_1883F9984();
      v51 = sub_1883F8C00();
      sub_1884F4550(v51);
      v52 = sub_1884F46B8(4.8149e-34);
      sub_1884F45D4(v52, v53);
      sub_1883FEFE0();

      *(v8 + 4) = v32;
LABEL_10:
      sub_188410C98();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      sub_1883F8EAC();
      sub_1883F82B8();
LABEL_11:

      goto LABEL_42;
    }

    if (qword_1EA90C9F0 != -1)
    {
      sub_1883F7480(&qword_1EA90C9F0);
    }

    v41 = type metadata accessor for Logger();
    sub_1883F85F4(v41, qword_1EA90C9F8);

    v13 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1884F46D0();
    if (!sub_188430A60())
    {
      goto LABEL_11;
    }

LABEL_33:
    sub_1883F9984();
    v42 = sub_1883F8C00();
    sub_1884F4550(v42);
    v43 = sub_1884F46B8(4.8149e-34);
    sub_1884F45D4(v43, v44);
    sub_1883FEFE0();

    *(v8 + 4) = v32;
LABEL_34:
    sub_188410C98();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    sub_1883F8EAC();
    sub_1883F82B8();
    goto LABEL_11;
  }

  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F7480(&qword_1EA90C9F0);
  }

  v22 = type metadata accessor for Logger();
  sub_1883F85F4(v22, qword_1EA90C9F8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = sub_18840FB34();
    v58[1] = sub_18840BE14();
    *v25 = 136315394;
    v26 = sub_1883FE43C();
    sub_1884F45D4(v26, v27);
    sub_1883FEFE0();

    *(v25 + 4) = v1;
    *(v25 + 12) = 2080;
    v28 = [*(v11 + 16) lastFetchDatabaseChangesDate];
    if (v28)
    {
      v29 = v28;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = type metadata accessor for Date();
      v31 = 0;
    }

    else
    {
      v30 = type metadata accessor for Date();
      v31 = 1;
    }

    sub_1883F90F4(v7, v31, 1, v30);
    v54 = String.init<A>(describing:)();
    v56 = sub_1884F45D4(v54, v55);

    *(v25 + 14) = v56;
    _os_log_impl(&dword_1883EA000, v23, v24, "%s will fetch database and zone changes because our last fetch was too long ago: (%s", v25, 0x16u);
    sub_18841FC2C();
    sub_1884F4470();
    sub_1884037D8();
  }

  else
  {
  }

LABEL_42:
  sub_1883F8178();
}

uint64_t CKQualityOfServiceOrdering(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == -1)
    {
      return 2;
    }

    if (a1 == 9)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 33:
        return 4;
      case 25:
        return 3;
      case 17:
        return 1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_188402A90()
{
  sub_1883F7120();
  sub_1883F78EC();
  v2 = v1;
  sub_1883F7B78();
  *v3 = v2;
  v4 = *v0;
  sub_1883F7110();
  *v5 = v4;

  memcpy((v2 + 176), (v2 + 416), 0x50uLL);
  sub_1883FBF6C(v2 + 176);
  v6 = sub_1883FDB2C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_188402B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = v8;
  sub_1884E01A8(a1, a2, a3, a4, a5, a6, a7, a8, v54);
  sub_1884023F4();
  v10 = v9;

  v11 = v8[232];
  v12 = (v8 + 2);
  if (v10)
  {
    sub_1883FAB38(v12, (v8 + 202));
    v13 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    sub_1883FB300((v8 + 2));
    if (sub_1883F9084())
    {
      sub_18840FB34();
      v58 = sub_1883FEEE0();
      *v11 = 136315394;
      v14 = sub_1883FE43C();
      sub_1883FE340(v14, v15, &v58);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_1884E0248();
      CKSyncEngine.FetchChangesOptions.Scope.description.getter(v16, v17, v18, v19, v20, v21, v22, v23, v54, v55, v56, v57);
      sub_188404258();

      sub_18840C150(v24, v25, &v58);
      sub_188404FC8();

      *(v11 + 14) = &v54;
      sub_1883F831C();
      _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
      sub_1884022C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    v31 = swift_task_alloc();
    v8[237] = v31;
    *v31 = v8;
    v31[1] = sub_188411684;

    return sub_1884D0668();
  }

  else
  {
    sub_1883FAB38(v12, (v8 + 82));
    v33 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_1883FF744();
    sub_1883FB300((v8 + 2));
    if (sub_1883F9084())
    {
      sub_18840FB34();
      v58 = sub_1883FEEE0();
      *v11 = 136315394;
      v34 = sub_1883FE43C();
      sub_1883FE340(v34, v35, &v58);
      sub_1883FE2FC();
      sub_1883FED4C();
      sub_1884E0248();
      CKSyncEngine.FetchChangesOptions.Scope.description.getter(v36, v37, v38, v39, v40, v41, v42, v43, v54, v55, v56, v57);
      sub_188404258();

      sub_18840C150(v44, v45, &v58);
      sub_188404FC8();

      *(v11 + 14) = &v54;
      sub_1883F831C();
      _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      sub_1884022C8();
      sub_1883FD784();
      sub_1883F82B8();
    }

    v8[248] = 0;
    v51 = swift_task_alloc();
    v52 = sub_188410CE8(v51);
    *v52 = v53;
    sub_1883F74DC(v52);

    return sub_18840E178();
  }
}

uint64_t sub_188402E3C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t sub_188402E84(void *a1)
{
  sub_188400B68(a1, v1);

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_188402EBC(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_188402ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(a1 + 16) = v17;
}

uint64_t sub_188402EF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[820] = a4;
  v4[821] = a3;
  v4[822] = result;
  return result;
}

void sub_188402F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  sub_1883F60E8(v9, v10, a9);
}

void sub_188403008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188403020()
{
}

uint64_t sub_188403038()
{

  return swift_task_alloc();
}

uint64_t sub_188403098()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18840FF64;

  return sub_188403128();
}

uint64_t sub_188403128()
{
  *(v1 + 280) = v0;
  sub_18844E6FC(&unk_1EA90D7B0, &dword_1886F8780);
  *(v1 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_188403270, v0, 0);
}

uint64_t sub_1884031C4()
{
  sub_1883F7120();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_18840F250;
  v2 = *(v0 + 16);

  return sub_1883FD964(v1, 1, &unk_1886FB2D0, v2);
}

uint64_t sub_188403270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1883F8680();
  sub_1883FC738();
  if (qword_1EA90C9F0 != -1)
  {
    sub_1883F74A0();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  *(v12 + 296) = sub_1883FDE5C(v14, qword_1EA90C9F8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    sub_1883FF1D0();
    v17 = swift_slowAlloc();
    sub_1883F9860();
    v13 = swift_slowAlloc();
    a10 = v13;
    *v17 = 136315138;
    v18 = sub_1883FE43C();
    v22 = sub_1883FC788(v18, v19, v20, v21);

    *(v17 + 4) = v22;
    sub_1883F8468(&dword_1883EA000, v23, v24, "%s updating account info");
    sub_1884101E8();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
  }

  sub_1883FC7A0();
  if (v25)
  {
    v26 = [objc_opt_self() defaultCenter];
    if (qword_1EA90CBB8 != -1)
    {
      swift_once();
    }

    [v26 postNotificationName:qword_1EA919C80 object:*(v12 + 280)];
  }

  sub_1884C7CB8(v12 + 216);
  if (*(v12 + 240))
  {
    v27 = *(v12 + 280);
    sub_18843E080((v12 + 216), v12 + 176);
    type metadata accessor for SyncEngine(0);
    v28 = *(v27 + 128);
    *(v12 + 304) = v28;
    *(v12 + 312) = sub_18850BCF0();
    *(v12 + 320) = v29;
    *(v12 + 328) = v30;
    *(v12 + 336) = v31;
    *(v12 + 344) = [*(v28 + 16) lastKnownUserRecordID];
    v32 = swift_task_alloc();
    *(v12 + 352) = v32;
    *v32 = v12;
    v32[1] = sub_18840B0A0;
    sub_1883F7E58();

    return sub_1884CEED0(v33, v34, v35, v36, v37, v38, v39);
  }

  else
  {
    sub_188442B84(v12 + 216, &qword_1EA90E3D8, &qword_1886FAF80);

    v42 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1883FF744();
    if (sub_1883F9084())
    {
      sub_1883FF1D0();
      v43 = swift_slowAlloc();
      sub_1883F9860();
      swift_slowAlloc();
      sub_1883FF2D4();
      *v43 = 136315138;
      v44 = sub_1883FE43C();
      sub_1883FC788(v44, v45, v46, v47);
      sub_1883FE2FC();
      *(v43 + 4) = v13;
      sub_1883F7A44(&dword_1883EA000, v48, v49, "%s BUG IN CLOUDKIT: CKSyncEngine accountProvider is nil");
      sub_1883F8EAC();
      v50 = sub_1884055A0();
      MEMORY[0x18CFD7E80](v50);
    }

    sub_1883F816C();
    sub_1883F7E58();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
  }
}

uint64_t sub_1884035D0()
{
  sub_1883F7120();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v1[1] = sub_1884061E0;

  return sub_188403098();
}

uint64_t *sub_188403664(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_18840370C()
{
}

double sub_188403724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_18847E460(a1, a2, v11, &a11);
}

uint64_t sub_18840378C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_18844E6FC(a3, a4);
}

void sub_1884037B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1884037D8()
{

  JUMPOUT(0x18CFD7E80);
}

uint64_t sub_188403834(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_188403884(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(v2 - 128) = a1;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1884038A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return swift_task_alloc();
}

uint64_t sub_1884038D4()
{

  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t sub_1884038F4()
{

  return swift_arrayDestroy();
}

void sub_188403A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_188403A50()
{
  sub_1883F653C();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  type metadata accessor for TaskPriority();
  sub_18844334C();
  sub_1883F90F4(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  v10[5] = v3;

  v11 = sub_1884101D8();
  v14 = sub_1884E04A8(v11, v12, v2, v13, v10);
  v0[18] = v14;
  UUID.init()();
  sub_18840C690(v4 + 248, (v0 + 2));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + 248);
  sub_1883FAB94(v14, v1, isUniquelyReferenced_nonNull_native);
  *(v4 + 248) = v23;
  swift_endAccess();
  v16 = swift_task_alloc();
  v0[19] = v16;
  sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
  *v16 = v0;
  v16[1] = sub_1884125A8;
  sub_1883F614C();

  return MEMORY[0x1EEE6DA10](v17, v18, v19, v20, v21);
}

uint64_t sub_188403BE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188403C24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1883F9834(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

id sub_188403D04()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 56);
  v54 = v0[6];
  v55 = v0[4];
  v53 = *(v0 + 40);
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      v0 = [objc_allocWithZone(CKSyncEngineFetchChangesScope) init];
      goto LABEL_7;
    }

    swift_bridgeObjectRetain_n();
    v4 = sub_1884043A8(v1);
    v5 = objc_allocWithZone(CKSyncEngineFetchChangesScope);
    v6 = v4;
    v0 = v5;
    sub_1884044A4(v6, &qword_1ED4B5CC8, off_1E70BA650, &qword_1ED4B5CC0, &selRef_initWithZoneIDs_);
  }

  else
  {
    sub_1883F4C5C(0, &qword_1EA90E7B0, off_1E70BA848);
    sub_1883FD9FC();
    swift_bridgeObjectRetain_n();
    sub_1884043A8(v1);
    sub_18850FDD0();
  }

  sub_1883FD9FC();

LABEL_7:
  v7 = [objc_allocWithZone(CKSyncEngineFetchChangesOptions) initWithScope_];

  [v7 setOperationGroup_];
  [v7 setForceFetchChanges_];
  sub_1883FDECC();
  sub_1883F4C5C(v8, v9, v10);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v52 = v7;
  [v7 setPrioritizedZoneIDs_];

  sub_1883F4C5C(0, &qword_1EA90C638, off_1E70BA850);
  sub_1883FDECC();
  sub_1883F66E4(v12, v13, v14);
  v15 = Dictionary.init(dictionaryLiteral:)();
  sub_1883F8578();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;

  v21 = 0;
  while (v18)
  {
    v22 = v21;
LABEL_13:
    v23 = __clz(__rbit64(v18)) | (v22 << 6);
    v24 = *(*(v55 + 48) + 8 * v23);
    v25 = (*(v55 + 56) + 16 * v23);
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = objc_allocWithZone(CKSyncEngineFetchChangesZoneConfiguration);
    v29 = v24;
    v30 = [v28 init];
    [v30 setShouldFetchAssetContents_];
    [v30 setResultsLimit_];
    v56 = v30;
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 >= 0)
      {
        v15 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v31 = __CocoaSet.count.getter();
      if (__OFADD__(v31, 1))
      {
        goto LABEL_29;
      }

      v15 = sub_188511078(v15, v31 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v29;
    sub_188486310();
    v36 = *(v15 + 16);
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_28;
    }

    v39 = v34;
    v40 = v35;
    sub_18844E6FC(&qword_1EA90E7A8, &qword_1886FE0F0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38))
    {
      sub_188486310();
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_31;
      }

      v39 = v41;
    }

    v18 &= v18 - 1;
    if (v40)
    {
      v43 = *(v15 + 56);
      v44 = *(v43 + 8 * v39);
      *(v43 + 8 * v39) = v56;

      v21 = v22;
    }

    else
    {
      sub_1883FF41C(v15 + 8 * (v39 >> 6));
      *(*(v15 + 48) + 8 * v39) = v33;
      *(*(v15 + 56) + 8 * v39) = v45;

      v46 = *(v15 + 16);
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_30;
      }

      *(v15 + 16) = v48;
      v21 = v22;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      v49 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v52 setZoneConfigurations_];

      v50 = [objc_allocWithZone(CKSyncEngineFetchChangesZoneConfiguration) init];
      [v50 setShouldFetchAssetContents_];
      [v50 setResultsLimit_];
      [v52 setDefaultZoneConfiguration_];

      return v52;
    }

    v18 = *(v55 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1884041DC(uint64_t a1)
{

  return sub_1883F971C(a1, 1, v1);
}

uint64_t sub_188404200()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_188404218(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_188404238(uint64_t a1)
{
  *(v1 + 40) = a1;

  return Identifiable<>.id.getter();
}

void sub_188404264(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_188404284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25[811] = v22;
  v25[810] = v30;
  v25[809] = v31;
  v25[808] = v27;
  v25[807] = v26;
  v25[806] = a17;
  v25[805] = a16;
  v25[804] = a22;
  v25[803] = v23;
  v25[802] = v29;
  v25[801] = a20;
  v25[800] = a19;
  v25[799] = a18;
  v25[798] = v24;
  v25[797] = v28;
  v25[311] = v22;
  v25[312] = v30;
  v25[313] = v31;
  v25[314] = v27;
  v25[315] = v26;
  v25[316] = a17;
  v25[317] = a16;
  v25[318] = a22;
  v25[319] = v23;
  v25[320] = v29;
  v25[321] = a20;
  v25[322] = a19;
  v25[323] = a18;
  v25[324] = v24;
  v25[325] = v28;
  v25[351] = v22;
  v25[352] = v30;
  v25[353] = v31;
  v25[354] = v27;
  v25[355] = v26;
  v25[356] = a17;
  v25[357] = a16;
  v25[358] = a22;
  v25[359] = v23;
  v25[360] = v29;
  v25[361] = a20;
  v25[362] = a19;
  v25[363] = a18;
  v25[364] = v24;
  v25[365] = v28;

  return sub_1884F3A24((v25 + 351), (v25 + 371));
}

id sub_1884044A4(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, SEL *a5)
{
  if (a1)
  {
    sub_1883F4C5C(0, a2, a3);
    sub_1883F66E4(a4, a2, a3);
    v10.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = [v5 *a5];

  return v11;
}

char *sub_188404794(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_18844E6FC(&qword_1EA90D5A8, &unk_1886FE110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_18840489C(char *a1, int64_t a2, char a3)
{
  result = sub_188404794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_188404984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1884020F4, v3, 0);
}

uint64_t sub_1884049A8()
{
}

uint64_t sub_1884049C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188404A28(uint64_t result)
{
  *(v2 + 8) = v1;
  *(v3 + 16) = 166;
  *(v3 + 24) = result;
  return result;
}

uint64_t sub_188404A44(uint64_t a1)
{

  return sub_1883F90F4(v1, 1, 1, a1);
}

void sub_188404A90()
{
  v2 = *(v0 + 1072);
}

BOOL sub_188404AE8(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = MEMORY[0x18CFD5E90](*(v6 + 40));
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      sub_188404DB8(a2, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v13;
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      break;
    }

    v7 = v9 + 1;
  }

  a2 = *(*(v6 + 48) + 8 * v9);
LABEL_7:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_188404BE0()
{

  JUMPOUT(0x18CFD5140);
}

uint64_t sub_188404C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x18CFD5E90](*(a2 + 40), a1);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

uint64_t type metadata accessor for CKAsyncSerialQueue.WaitContext(uint64_t a1)
{
  result = qword_1EA90C808;
  if (!qword_1EA90C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_188404D70()
{

  return sub_1884DEE84(v2, v0 + 32, v3, (v1 + 16), v1 + 32);
}

unint64_t sub_188404DB8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_188501BA4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_188405F64(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x18CFD5E90](*(*v3 + 40), v5);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_188502D28();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_188404EBC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883F7E38(v0);
  *v1 = v2;
  v3 = sub_1883F7A30(v1);

  return sub_1884CC4C4(v3, v4);
}

uint64_t sub_188404F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_188404F6C()
{
}

void sub_188404FD4()
{
  sub_1883FE944(v0);

  JUMPOUT(0x18CFD7E80);
}

id sub_188405008()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_188405020()
{
  *(v1 - 184) &= 0xFFFFFFFFFFFFFFFuLL;

  return sub_1883FBF10(v1 - 168, v0 + 160);
}

uint64_t _s8CloudKit12CKSyncEngineC19FetchChangesOptionsV5scopeAE5ScopeOvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void sub_18840506C()
{
  v1 = sub_18844E6FC(&qword_1EA90E800, &qword_1886FE2B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for CKAsyncSerialQueue.WaitContext(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 128) == 1)
  {
    swift_beginAccess();
    if (*(*(v0 + 136) + 24) < 1)
    {
      v8 = 1;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188514848();
      }

      sub_18840C1A0((*(v0 + 136) + 16), *(v0 + 136) + ((*(v5 + 80) + 40) & ~*(v5 + 80)), v3);
      v8 = 0;
    }

    sub_1883F90F4(v3, v8, 1, v4);
    swift_endAccess();
    if (sub_1883F971C(v3, 1, v4) == 1)
    {
      sub_1884072A4(v3);
      *(v0 + 128) = 0;
    }

    else
    {
      sub_18840C23C(v3, v7);
      sub_18844E6FC(&qword_1EA90E6B0, &unk_1886FBC90);
      CheckedContinuation.resume(returning:)();
      sub_18840BD84(v7);
    }
  }

  else
  {
    __break(1u);
  }
}