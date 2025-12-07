@interface CCTypeIdentifierRegistry
+ (Class)itemMessageSubclassForFieldType:(unsigned __int16)type;
+ (Class)itemMessageSubclassForIdentifier:(unsigned __int16)identifier;
+ (Class)itemMessageSubclassForItemType:(unsigned __int16)type;
+ (id)setIdentifierForItemType:(unsigned __int16)type;
+ (unsigned)itemTypeForSetIdentifier:(id)identifier;
@end

@implementation CCTypeIdentifierRegistry

+ (unsigned)itemTypeForSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"ToolKitToolDefinition"])
  {
    v4 = 29397;
  }

  else if ([identifierCopy isEqualToString:@"App.InstalledApp"])
  {
    v4 = -29102;
  }

  else if ([identifierCopy isEqualToString:@"Calendar.Event"])
  {
    v4 = -11151;
  }

  else if ([identifierCopy isEqualToString:@"CarPlay.RadioStation"])
  {
    v4 = -16470;
  }

  else if ([identifierCopy isEqualToString:@"Contacts.Contact"])
  {
    v4 = 19668;
  }

  else if ([identifierCopy isEqualToString:@"FindMy.Device"])
  {
    v4 = 27122;
  }

  else if ([identifierCopy isEqualToString:@"Fitness.Guest"])
  {
    v4 = -11922;
  }

  else if ([identifierCopy isEqualToString:@"Health.Medication"])
  {
    v4 = 12996;
  }

  else if ([identifierCopy isEqualToString:@"HomeKit.Home"])
  {
    v4 = 7690;
  }

  else if ([identifierCopy isEqualToString:@"HomeKit.HomeServiceArea"])
  {
    v4 = 17034;
  }

  else if ([identifierCopy isEqualToString:@"Location.SignificantLocation"])
  {
    v4 = 15757;
  }

  else if ([identifierCopy isEqualToString:@"MediaLibrary.Media"])
  {
    v4 = 18540;
  }

  else if ([identifierCopy isEqualToString:@"PeopleSuggester.ContactPrior"])
  {
    v4 = -24968;
  }

  else if ([identifierCopy isEqualToString:@"Photos.PetRelationship"])
  {
    v4 = -5848;
  }

  else if ([identifierCopy isEqualToString:@"Podcasts.Podcast"])
  {
    v4 = -23352;
  }

  else if ([identifierCopy isEqualToString:@"ToolKit.Tool"])
  {
    v4 = 7556;
  }

  else if ([identifierCopy isEqualToString:@"UserAccount.Identity"])
  {
    v4 = -4027;
  }

  else if ([identifierCopy isEqualToString:@"Wallet.Pass"])
  {
    v4 = -19416;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomCarName"])
  {
    v4 = 800;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomCarProfileName"])
  {
    v4 = 14816;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomContactGroupName"])
  {
    v4 = -2167;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomContactName"])
  {
    v4 = -4184;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomMediaAudiobookAuthorName"])
  {
    v4 = -27285;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomMediaAudiobookTitle"])
  {
    v4 = 14706;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomMediaMusicArtistName"])
  {
    v4 = 7719;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomMediaPlaylistTitle"])
  {
    v4 = -32571;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomMediaShowTitle"])
  {
    v4 = 15572;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomNotebookItemGroupName"])
  {
    v4 = 5595;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomNotebookItemTitle"])
  {
    v4 = 26512;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomPaymentsAccountNickname"])
  {
    v4 = 25883;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomPaymentsOrganizationName"])
  {
    v4 = 16251;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomPhotoAlbumName"])
  {
    v4 = -12054;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomPhotoTag"])
  {
    v4 = 13884;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomVoiceCommandName"])
  {
    v4 = 30598;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.CustomWorkoutActivityName"])
  {
    v4 = -20601;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.GlobalMediaAudiobookAuthor"])
  {
    v4 = 14025;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.GlobalMediaAudiobookTitle"])
  {
    v4 = 8194;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.GlobalMediaMusicArtistName"])
  {
    v4 = 3615;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.GlobalMediaPlaylistTitle"])
  {
    v4 = -31229;
  }

  else if ([identifierCopy isEqualToString:@"App.IntentVocabulary.GlobalMediaShowTitle"])
  {
    v4 = -29477;
  }

  else if ([identifierCopy isEqualToString:@"App.Intents.CuratedEntity"])
  {
    v4 = -26111;
  }

  else if ([identifierCopy isEqualToString:@"App.Intents.ExtractedEntity"])
  {
    v4 = 27325;
  }

  else if ([identifierCopy isEqualToString:@"App.Intents.IndexedEntity"])
  {
    v4 = -18195;
  }

  else if ([identifierCopy isEqualToString:@"App.Intents.IndexedEnum"])
  {
    v4 = -22925;
  }

  else if ([identifierCopy isEqualToString:@"App.Shortcut.Entity"])
  {
    v4 = 7822;
  }

  else if ([identifierCopy isEqualToString:@"App.Shortcut.Phrase"])
  {
    v4 = 12010;
  }

  else if ([identifierCopy isEqualToString:@"Siri.CompanionContext.Audio"])
  {
    v4 = -9026;
  }

  else if ([identifierCopy isEqualToString:@"Siri.Montara.SharedPreferences"])
  {
    v4 = -21006;
  }

  else if ([identifierCopy isEqualToString:@"Siri.PrivateLearning.Contact"])
  {
    v4 = -11935;
  }

  else if ([identifierCopy isEqualToString:@"Siri.PrivateLearning.Media"])
  {
    v4 = -3378;
  }

  else if ([identifierCopy isEqualToString:@"Wallet.PaymentsCommerce.ExtractedOrder"])
  {
    v4 = 7952;
  }

  else
  {
    v4 = *MEMORY[0x1E69939A8];
  }

  return v4;
}

+ (id)setIdentifierForItemType:(unsigned __int16)type
{
  if (type > 29396)
  {
    if (type > 46119)
    {
      if (type > 54384)
      {
        if (type > 61351)
        {
          v3 = 62157;
          v11 = @"App.IntentVocabulary.CustomContactGroupName";
          if (type != 63369)
          {
            v11 = 0;
          }

          if (type == 62158)
          {
            v5 = @"Siri.PrivateLearning.Media";
          }

          else
          {
            v5 = v11;
          }

          v6 = @"App.IntentVocabulary.CustomContactName";
          v7 = type == 61509;
          v8 = @"UserAccount.Identity";
          v9 = 61352;
          goto LABEL_28;
        }

        v32 = 54385;
        v33 = @"Calendar.Event";
        v34 = 56510;
        v35 = @"Siri.CompanionContext.Audio";
        v36 = 59688;
        v37 = @"Photos.PetRelationship";
        goto LABEL_95;
      }

      v3 = 53481;
      v5 = @"App.IntentVocabulary.CustomPhotoAlbumName";
      v30 = @"Fitness.Guest";
      if (type != 53614)
      {
        v30 = 0;
      }

      if (type == 53601)
      {
        v31 = @"Siri.PrivateLearning.Contact";
      }

      else
      {
        v31 = v30;
      }

      if (type != 53482)
      {
        v5 = v31;
      }

      v20 = 46120;
      v21 = @"Wallet.Pass";
      v22 = @"App.Intents.IndexedEntity";
      v23 = 47341;
      v24 = type == 49066;
      v25 = @"CarPlay.RadioStation";
    }

    else
    {
      if (type > 38250)
      {
        if (type > 42183)
        {
          v3 = 44529;
          v4 = @"App.IntentVocabulary.CustomWorkoutActivityName";
          if (type != 44935)
          {
            v4 = 0;
          }

          if (type == 44530)
          {
            v5 = @"Siri.Montara.SharedPreferences";
          }

          else
          {
            v5 = v4;
          }

          v6 = @"Podcasts.Podcast";
          v7 = type == 42611;
          v8 = @"App.Intents.IndexedEnum";
          v9 = 42184;
LABEL_28:
          if (!v7)
          {
            v8 = 0;
          }

          if (type != v9)
          {
            v6 = v8;
          }

LABEL_89:
          if (type <= v3)
          {
            return v6;
          }

          else
          {
            return v5;
          }
        }

        v32 = 38251;
        v33 = @"App.IntentVocabulary.CustomMediaAudiobookAuthorName";
        v34 = 39425;
        v35 = @"App.Intents.CuratedEntity";
        v36 = 40568;
        v37 = @"PeopleSuggester.ContactPrior";
        goto LABEL_95;
      }

      v3 = 34306;
      v5 = @"App.IntentVocabulary.GlobalMediaPlaylistTitle";
      v28 = @"App.InstalledApp";
      if (type != 36434)
      {
        v28 = 0;
      }

      if (type == 36059)
      {
        v29 = @"App.IntentVocabulary.GlobalMediaShowTitle";
      }

      else
      {
        v29 = v28;
      }

      if (type != 34307)
      {
        v5 = v29;
      }

      v20 = 29397;
      v21 = @"ToolKitToolDefinition";
      v22 = @"App.IntentVocabulary.CustomVoiceCommandName";
      v23 = 30598;
      v24 = type == 32965;
      v25 = @"App.IntentVocabulary.CustomMediaPlaylistTitle";
    }

    goto LABEL_82;
  }

  if (type > 14024)
  {
    if (type > 17033)
    {
      if (type > 25882)
      {
        v3 = 27121;
        v10 = @"App.Intents.ExtractedEntity";
        if (type != 27325)
        {
          v10 = 0;
        }

        if (type == 27122)
        {
          v5 = @"FindMy.Device";
        }

        else
        {
          v5 = v10;
        }

        v6 = @"App.IntentVocabulary.CustomPaymentsAccountNickname";
        v7 = type == 26512;
        v8 = @"App.IntentVocabulary.CustomNotebookItemTitle";
        v9 = 25883;
        goto LABEL_28;
      }

      v32 = 17034;
      v33 = @"HomeKit.HomeServiceArea";
      v34 = 18540;
      v35 = @"MediaLibrary.Media";
      v36 = 19668;
      v37 = @"Contacts.Contact";
LABEL_95:
      if (type == v36)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (type == v34)
      {
        v39 = v35;
      }

      else
      {
        v39 = v38;
      }

      if (type == v32)
      {
        return v33;
      }

      else
      {
        return v39;
      }
    }

    v3 = 15571;
    v5 = @"App.IntentVocabulary.CustomMediaShowTitle";
    v18 = @"App.IntentVocabulary.CustomPaymentsOrganizationName";
    if (type != 16251)
    {
      v18 = 0;
    }

    if (type == 15757)
    {
      v19 = @"Location.SignificantLocation";
    }

    else
    {
      v19 = v18;
    }

    if (type != 15572)
    {
      v5 = v19;
    }

    v20 = 14025;
    v21 = @"App.IntentVocabulary.GlobalMediaAudiobookAuthor";
    v22 = @"App.IntentVocabulary.CustomMediaAudiobookTitle";
    v23 = 14706;
    v24 = type == 14816;
    v25 = @"App.IntentVocabulary.CustomCarProfileName";
LABEL_82:
    if (!v24)
    {
      v25 = 0;
    }

    if (type != v23)
    {
      v22 = v25;
    }

    if (type == v20)
    {
      v6 = v21;
    }

    else
    {
      v6 = v22;
    }

    goto LABEL_89;
  }

  if (type > 7821)
  {
    v3 = 12009;
    v5 = @"App.Shortcut.Phrase";
    v26 = @"App.IntentVocabulary.CustomPhotoTag";
    if (type != 13884)
    {
      v26 = 0;
    }

    if (type == 12996)
    {
      v27 = @"Health.Medication";
    }

    else
    {
      v27 = v26;
    }

    if (type != 12010)
    {
      v5 = v27;
    }

    v20 = 7822;
    v21 = @"App.Shortcut.Entity";
    v22 = @"Wallet.PaymentsCommerce.ExtractedOrder";
    v23 = 7952;
    v24 = type == 8194;
    v25 = @"App.IntentVocabulary.GlobalMediaAudiobookTitle";
    goto LABEL_82;
  }

  v12 = @"ToolKit.Tool";
  v13 = @"App.IntentVocabulary.CustomMediaMusicArtistName";
  if (type != 7719)
  {
    v13 = 0;
  }

  if (type == 7690)
  {
    v14 = @"HomeKit.Home";
  }

  else
  {
    v14 = v13;
  }

  v15 = @"App.IntentVocabulary.CustomCarName";
  if (type != 7556)
  {
    v12 = v14;
  }

  v16 = @"App.IntentVocabulary.CustomNotebookItemGroupName";
  if (type != 5595)
  {
    v16 = 0;
  }

  if (type == 3615)
  {
    v16 = @"App.IntentVocabulary.GlobalMediaMusicArtistName";
  }

  if (type != 800)
  {
    v15 = v16;
  }

  if (type <= 7555)
  {
    return v15;
  }

  else
  {
    return v12;
  }
}

+ (Class)itemMessageSubclassForFieldType:(unsigned __int16)type
{
  v4 = 0;
  if (type > 27125)
  {
    if (type <= 29399)
    {
      switch(type)
      {
        case 0x69F6u:
        case 0x69F7u:
        case 0x69F8u:
        case 0x69FBu:
        case 0x69FCu:
        case 0x6ABEu:
        case 0x6ABFu:
        case 0x6AC0u:
        case 0x6AC1u:
        case 0x6AC2u:
        case 0x6AC3u:
        case 0x6AC4u:
        case 0x6AC5u:
        case 0x6AC6u:
        case 0x6AC7u:
        case 0x6AC8u:
        case 0x6AC9u:
        case 0x6ACAu:
        case 0x6ACBu:
        case 0x6ACCu:
        case 0x6ACDu:
        case 0x6ACEu:
        case 0x6ACFu:
        case 0x6AD0u:
        case 0x6AD1u:
        case 0x6AD2u:
        case 0x6AD3u:
        case 0x6AD4u:
        case 0x6AD5u:
        case 0x6AD6u:
        case 0x6AD7u:
        case 0x6AD8u:
        case 0x6AD9u:
        case 0x6ADAu:
        case 0x6ADBu:
        case 0x6ADCu:
        case 0x6ADDu:
        case 0x6ADEu:
        case 0x6ADFu:
        case 0x6AE0u:
        case 0x6AE1u:
        case 0x6AE2u:
        case 0x6AE3u:
        case 0x6AE4u:
        case 0x6AE5u:
        case 0x6AE6u:
        case 0x6AE7u:
        case 0x6AE8u:
        case 0x6AE9u:
        case 0x6AEAu:
        case 0x6AEBu:
        case 0x6AECu:
        case 0x6AEDu:
        case 0x6AEEu:
        case 0x6AEFu:
        case 0x6AF0u:
        case 0x6AF1u:
        case 0x6AF2u:
        case 0x6AF3u:
        case 0x6AF4u:
        case 0x6AF5u:
        case 0x6AF6u:
        case 0x6AF7u:
        case 0x6AF8u:
        case 0x6AF9u:
        case 0x6AFAu:
        case 0x6AFBu:
        case 0x6AFCu:
        case 0x6AFDu:
        case 0x6AFEu:
        case 0x6AFFu:
        case 0x6B00u:
        case 0x6B01u:
        case 0x6B02u:
        case 0x6B03u:
        case 0x6B04u:
        case 0x6B05u:
        case 0x6B06u:
        case 0x6B07u:
        case 0x6B08u:
        case 0x6B09u:
        case 0x6B0Au:
        case 0x6B0Bu:
        case 0x6B0Cu:
        case 0x6B0Du:
        case 0x6B0Eu:
        case 0x6B0Fu:
        case 0x6B10u:
        case 0x6B11u:
        case 0x6B12u:
        case 0x6B13u:
        case 0x6B14u:
        case 0x6B15u:
        case 0x6B16u:
        case 0x6B17u:
        case 0x6B18u:
        case 0x6B19u:
        case 0x6B1Au:
        case 0x6B1Bu:
        case 0x6B1Cu:
        case 0x6B1Du:
        case 0x6B1Eu:
        case 0x6B1Fu:
        case 0x6B20u:
        case 0x6B21u:
        case 0x6B22u:
        case 0x6B23u:
        case 0x6B24u:
        case 0x6B25u:
        case 0x6B26u:
        case 0x6B27u:
        case 0x6B28u:
        case 0x6B29u:
        case 0x6B2Au:
        case 0x6B2Bu:
        case 0x6B2Cu:
        case 0x6B2Du:
        case 0x6B2Eu:
        case 0x6B2Fu:
        case 0x6B30u:
        case 0x6B31u:
        case 0x6B32u:
        case 0x6B33u:
        case 0x6B34u:
        case 0x6B35u:
        case 0x6B36u:
        case 0x6B37u:
        case 0x6B38u:
        case 0x6B39u:
        case 0x6B3Au:
        case 0x6B3Bu:
        case 0x6B3Cu:
        case 0x6B3Du:
        case 0x6B3Eu:
        case 0x6B3Fu:
        case 0x6B40u:
        case 0x6B41u:
        case 0x6B42u:
        case 0x6B43u:
        case 0x6B44u:
        case 0x6B45u:
        case 0x6B46u:
        case 0x6B47u:
        case 0x6B48u:
        case 0x6B49u:
        case 0x6B4Au:
        case 0x6B4Bu:
        case 0x6B4Cu:
        case 0x6B4Du:
        case 0x6B4Eu:
        case 0x6B4Fu:
        case 0x6B50u:
        case 0x6B51u:
        case 0x6B52u:
        case 0x6B53u:
        case 0x6B54u:
        case 0x6B55u:
        case 0x6B56u:
        case 0x6B57u:
        case 0x6B58u:
        case 0x6B59u:
        case 0x6B5Au:
        case 0x6B5Bu:
        case 0x6B5Cu:
        case 0x6B5Du:
        case 0x6B5Eu:
        case 0x6B5Fu:
        case 0x6B60u:
        case 0x6B61u:
        case 0x6B62u:
        case 0x6B63u:
        case 0x6B64u:
        case 0x6B65u:
        case 0x6B66u:
        case 0x6B67u:
        case 0x6B68u:
        case 0x6B69u:
        case 0x6B6Au:
        case 0x6B6Bu:
        case 0x6B6Cu:
        case 0x6B6Du:
        case 0x6B6Eu:
        case 0x6B6Fu:
        case 0x6B70u:
        case 0x6B71u:
        case 0x6B72u:
        case 0x6B73u:
        case 0x6B74u:
        case 0x6B75u:
        case 0x6B76u:
          goto LABEL_299;
        case 0x69F9u:
        case 0x69FAu:
        case 0x69FDu:
        case 0x69FEu:
        case 0x69FFu:
        case 0x6A00u:
        case 0x6A01u:
        case 0x6A02u:
        case 0x6A03u:
        case 0x6A04u:
        case 0x6A05u:
        case 0x6A06u:
        case 0x6A07u:
        case 0x6A08u:
        case 0x6A09u:
        case 0x6A0Au:
        case 0x6A0Bu:
        case 0x6A0Cu:
        case 0x6A0Du:
        case 0x6A0Eu:
        case 0x6A0Fu:
        case 0x6A10u:
        case 0x6A11u:
        case 0x6A12u:
        case 0x6A13u:
        case 0x6A14u:
        case 0x6A15u:
        case 0x6A16u:
        case 0x6A17u:
        case 0x6A18u:
        case 0x6A19u:
        case 0x6A1Au:
        case 0x6A1Bu:
        case 0x6A1Cu:
        case 0x6A1Du:
        case 0x6A1Eu:
        case 0x6A1Fu:
        case 0x6A20u:
        case 0x6A21u:
        case 0x6A22u:
        case 0x6A23u:
        case 0x6A24u:
        case 0x6A25u:
        case 0x6A26u:
        case 0x6A27u:
        case 0x6A28u:
        case 0x6A29u:
        case 0x6A2Au:
        case 0x6A2Bu:
        case 0x6A2Cu:
        case 0x6A2Du:
        case 0x6A2Eu:
        case 0x6A2Fu:
        case 0x6A30u:
        case 0x6A31u:
        case 0x6A32u:
        case 0x6A33u:
        case 0x6A34u:
        case 0x6A35u:
        case 0x6A36u:
        case 0x6A37u:
        case 0x6A38u:
        case 0x6A39u:
        case 0x6A3Au:
        case 0x6A3Bu:
        case 0x6A3Cu:
        case 0x6A3Du:
        case 0x6A3Eu:
        case 0x6A3Fu:
        case 0x6A40u:
        case 0x6A41u:
        case 0x6A42u:
        case 0x6A43u:
        case 0x6A44u:
        case 0x6A45u:
        case 0x6A46u:
        case 0x6A47u:
        case 0x6A48u:
        case 0x6A49u:
        case 0x6A4Au:
        case 0x6A4Bu:
        case 0x6A4Cu:
        case 0x6A4Du:
        case 0x6A4Eu:
        case 0x6A4Fu:
        case 0x6A50u:
        case 0x6A51u:
        case 0x6A52u:
        case 0x6A53u:
        case 0x6A54u:
        case 0x6A55u:
        case 0x6A56u:
        case 0x6A57u:
        case 0x6A58u:
        case 0x6A59u:
        case 0x6A5Au:
        case 0x6A5Bu:
        case 0x6A5Cu:
        case 0x6A5Du:
        case 0x6A5Eu:
        case 0x6A5Fu:
        case 0x6A60u:
        case 0x6A61u:
        case 0x6A62u:
        case 0x6A63u:
        case 0x6A64u:
        case 0x6A65u:
        case 0x6A66u:
        case 0x6A67u:
        case 0x6A68u:
        case 0x6A69u:
        case 0x6A6Au:
        case 0x6A6Bu:
        case 0x6A6Cu:
        case 0x6A6Du:
        case 0x6A6Eu:
        case 0x6A6Fu:
        case 0x6A70u:
        case 0x6A71u:
        case 0x6A72u:
        case 0x6A73u:
        case 0x6A74u:
        case 0x6A75u:
        case 0x6A76u:
        case 0x6A77u:
        case 0x6A78u:
        case 0x6A79u:
        case 0x6A7Au:
        case 0x6A7Bu:
        case 0x6A7Cu:
        case 0x6A7Du:
        case 0x6A7Eu:
        case 0x6A7Fu:
        case 0x6A80u:
        case 0x6A81u:
        case 0x6A82u:
        case 0x6A83u:
        case 0x6A84u:
        case 0x6A85u:
        case 0x6A86u:
        case 0x6A87u:
        case 0x6A88u:
        case 0x6A89u:
        case 0x6A8Au:
        case 0x6A8Bu:
        case 0x6A8Cu:
        case 0x6A8Du:
        case 0x6A8Eu:
        case 0x6A8Fu:
        case 0x6A90u:
        case 0x6A91u:
        case 0x6A92u:
        case 0x6A93u:
        case 0x6A94u:
        case 0x6A95u:
        case 0x6A96u:
        case 0x6A97u:
        case 0x6A98u:
        case 0x6A99u:
        case 0x6A9Au:
        case 0x6A9Bu:
        case 0x6A9Cu:
        case 0x6A9Du:
        case 0x6A9Eu:
        case 0x6A9Fu:
        case 0x6AA0u:
        case 0x6AA1u:
        case 0x6AA2u:
        case 0x6AA3u:
        case 0x6AA4u:
        case 0x6AA5u:
        case 0x6AA6u:
        case 0x6AA7u:
        case 0x6AA8u:
        case 0x6AA9u:
        case 0x6AAAu:
        case 0x6AABu:
        case 0x6AACu:
        case 0x6AADu:
        case 0x6AAEu:
        case 0x6AAFu:
        case 0x6AB0u:
        case 0x6AB1u:
        case 0x6AB2u:
        case 0x6AB3u:
        case 0x6AB4u:
        case 0x6AB5u:
        case 0x6AB6u:
        case 0x6AB7u:
        case 0x6AB8u:
        case 0x6AB9u:
        case 0x6ABAu:
        case 0x6ABBu:
        case 0x6ABCu:
        case 0x6ABDu:
          goto LABEL_300;
        default:
          if ((type - 29398) < 2)
          {
            goto LABEL_299;
          }

          break;
      }

      goto LABEL_300;
    }

    if (type <= 46122)
    {
      if (type <= 40568)
      {
        if (type <= 36442)
        {
          if (type <= 34311)
          {
            if (type > 32967)
            {
              if (type > 32970 && type != 34311)
              {
                goto LABEL_300;
              }
            }

            else if (type > 30601)
            {
              if (type != 30602 && type != 30603)
              {
                goto LABEL_300;
              }
            }

            else if (type != 29400 && type != 30601)
            {
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          if (type <= 36437)
          {
            if (type <= 36063)
            {
              if (type != 34312 && type != 36063)
              {
                goto LABEL_300;
              }

              goto LABEL_299;
            }

            if (type == 36064)
            {
              goto LABEL_299;
            }

            v5 = 36437;
          }

          else
          {
            if (type > 36439)
            {
              if (type != 36440 && type != 36441)
              {
                v5 = 36442;
                goto LABEL_257;
              }

              goto LABEL_299;
            }

            if (type == 36438)
            {
              goto LABEL_299;
            }

            v5 = 36439;
          }

LABEL_257:
          if (type != v5)
          {
            goto LABEL_300;
          }

          goto LABEL_299;
        }

        if (type <= 39426)
        {
          if (type <= 38253)
          {
            if (type > 36444)
            {
              if (type != 36445 && type != 36446)
              {
                goto LABEL_300;
              }

              goto LABEL_299;
            }

            if (type == 36443)
            {
              goto LABEL_299;
            }

            v5 = 36444;
            goto LABEL_257;
          }

          if (type <= 38256)
          {
            goto LABEL_299;
          }

          v13 = 39426;
        }

        else if (type <= 39430)
        {
          if (type > 39428)
          {
            if (type == 39429)
            {
              goto LABEL_299;
            }

            v13 = 39430;
          }

          else
          {
            if (type == 39427)
            {
              goto LABEL_299;
            }

            v13 = 39428;
          }
        }

        else
        {
          if (type > 39432)
          {
            if (type != 39433 && type != 39434 && type != 39435)
            {
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          if (type == 39431)
          {
            goto LABEL_299;
          }

          v13 = 39432;
        }

        if (type != v13)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type <= 42614)
      {
        if (type <= 42184)
        {
          if (type > 40572)
          {
            if (type > 40574)
            {
              if (type != 40575 && type != 40576)
              {
                goto LABEL_300;
              }

              goto LABEL_299;
            }

            if (type == 40573)
            {
              goto LABEL_299;
            }

            v9 = 40574;
          }

          else if (type > 40570)
          {
            if (type == 40571)
            {
              goto LABEL_299;
            }

            v9 = 40572;
          }

          else
          {
            if (type == 40569)
            {
              goto LABEL_299;
            }

            v9 = 40570;
          }

          if (type != v9)
          {
            goto LABEL_300;
          }

          goto LABEL_299;
        }

        if (type <= 42188)
        {
          if (type > 42186)
          {
            if (type == 42187)
            {
              goto LABEL_299;
            }

            v11 = 42188;
          }

          else
          {
            if (type == 42185)
            {
              goto LABEL_299;
            }

            v11 = 42186;
          }
        }

        else
        {
          if (type > 42611)
          {
            if (type == 42612 || type == 42613)
            {
              goto LABEL_299;
            }

            v6 = 42614;
            goto LABEL_252;
          }

          if (type == 42189)
          {
            goto LABEL_299;
          }

          v11 = 42190;
        }

        if (type != v11)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type <= 44530)
      {
        if (type > 42618)
        {
          if (type > 42620)
          {
            if (type == 42621)
            {
              goto LABEL_299;
            }

            v6 = 42622;
          }

          else
          {
            if (type == 42619)
            {
              goto LABEL_299;
            }

            v6 = 42620;
          }
        }

        else if (type > 42616)
        {
          if (type == 42617)
          {
            goto LABEL_299;
          }

          v6 = 42618;
        }

        else
        {
          if (type == 42615)
          {
            goto LABEL_299;
          }

          v6 = 42616;
        }

LABEL_252:
        if (type != v6)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type <= 44937)
      {
        if (type > 44533 && type != 44534)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type <= 44940 || type == 46121)
      {
        goto LABEL_299;
      }

      v7 = 46122;
LABEL_205:
      if (type != v7)
      {
        goto LABEL_300;
      }

      goto LABEL_299;
    }

    if (type > 53486)
    {
      if (type > 59690)
      {
        if (type <= 62159)
        {
          if (type <= 61511)
          {
            if (type > 61355)
            {
              if (type != 61356 && type != 61357)
              {
                goto LABEL_300;
              }
            }

            else if (type != 59691 && type != 61355)
            {
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          if (type <= 61514)
          {
            goto LABEL_299;
          }

          v14 = 62159;
        }

        else
        {
          if (type > 62163)
          {
            if (type <= 63371)
            {
              if (type != 62164 && type != 62165)
              {
                goto LABEL_300;
              }
            }

            else if (type != 63372 && type != 63373 && type != 63374)
            {
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          if (type > 62161)
          {
            if (type == 62162)
            {
              goto LABEL_299;
            }

            v14 = 62163;
          }

          else
          {
            if (type == 62160)
            {
              goto LABEL_299;
            }

            v14 = 62161;
          }
        }

        if (type != v14)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type > 54389)
      {
        if (type <= 56513)
        {
          if (type > 56511)
          {
            if (type == 56512)
            {
              goto LABEL_299;
            }

            v12 = 56513;
          }

          else
          {
            if (type == 54390)
            {
              goto LABEL_299;
            }

            v12 = 56511;
          }
        }

        else
        {
          if (type > 56515)
          {
            if (type != 56516 && type != 59689 && type != 59690)
            {
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          if (type == 56514)
          {
            goto LABEL_299;
          }

          v12 = 56515;
        }

        if (type != v12)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type > 53616)
      {
        if (type <= 54387 && type != 53617 && type != 53618)
        {
          goto LABEL_300;
        }
      }

      else if (type > 53604)
      {
        if (type != 53605 && type != 53606)
        {
          goto LABEL_300;
        }
      }

      else if (type != 53487 && type != 53604)
      {
        goto LABEL_300;
      }
    }

    else
    {
      if (type <= 47342)
      {
        if (type > 46127)
        {
          if (type <= 46129)
          {
            if (type == 46128)
            {
              goto LABEL_299;
            }

            v7 = 46129;
          }

          else
          {
            if (type == 46130 || type == 46131)
            {
              goto LABEL_299;
            }

            v7 = 46132;
          }
        }

        else if (type <= 46124)
        {
          if (type == 46123)
          {
            goto LABEL_299;
          }

          v7 = 46124;
        }

        else
        {
          if (type == 46125 || type == 46126)
          {
            goto LABEL_299;
          }

          v7 = 46127;
        }

        goto LABEL_205;
      }

      if (type <= 49068)
      {
        switch(type)
        {
          case 0xB8EFu:
          case 0xB8F0u:
          case 0xB8F1u:
          case 0xB8F3u:
          case 0xB8F4u:
          case 0xB8F5u:
          case 0xB8F8u:
          case 0xB8F9u:
          case 0xB8FAu:
          case 0xB8FBu:
          case 0xB8FCu:
          case 0xB8FDu:
          case 0xB8FEu:
          case 0xB8FFu:
          case 0xB900u:
          case 0xB901u:
            goto LABEL_299;
          default:
            goto LABEL_300;
        }

        goto LABEL_300;
      }

      if (type <= 49072)
      {
        if (type > 49070)
        {
          if (type == 49071)
          {
            goto LABEL_299;
          }

          v8 = 49072;
        }

        else
        {
          if (type == 49069)
          {
            goto LABEL_299;
          }

          v8 = 49070;
        }

        if (type != v8)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      if (type <= 53484 && type != 49073 && type != 49074)
      {
        goto LABEL_300;
      }
    }

LABEL_299:
    v4 = objc_opt_class();
    goto LABEL_300;
  }

  if (type <= 14710)
  {
    if (type <= 7824)
    {
      if (type <= 5598)
      {
        if (type > 3618)
        {
          if (type != 3619 && type != 3620 && type != 5598)
          {
            goto LABEL_300;
          }
        }

        else if (type != 803 && type != 804 && type != 805)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      switch(type)
      {
        case 0x1E0Bu:
        case 0x1E0Cu:
        case 0x1E0Du:
        case 0x1E0Eu:
        case 0x1E0Fu:
        case 0x1E10u:
        case 0x1E11u:
        case 0x1E12u:
        case 0x1E13u:
        case 0x1E14u:
        case 0x1E15u:
        case 0x1E16u:
        case 0x1E17u:
        case 0x1E18u:
        case 0x1E19u:
        case 0x1E1Au:
        case 0x1E1Bu:
        case 0x1E1Cu:
        case 0x1E1Du:
        case 0x1E1Eu:
        case 0x1E2Au:
        case 0x1E2Bu:
        case 0x1E2Cu:
          goto LABEL_299;
        case 0x1E1Fu:
        case 0x1E20u:
        case 0x1E21u:
        case 0x1E22u:
        case 0x1E23u:
        case 0x1E24u:
        case 0x1E25u:
        case 0x1E26u:
        case 0x1E27u:
        case 0x1E28u:
        case 0x1E29u:
          break;
        default:
          if (type == 5599 || type == 5600)
          {
            goto LABEL_299;
          }

          break;
      }
    }

    else
    {
      if (type > 8197)
      {
        if (type <= 12999)
        {
          if (type > 12014)
          {
            if (type > 12017 && type != 12999)
            {
              goto LABEL_300;
            }
          }

          else if (type <= 12012 && type != 8198 && type != 8199)
          {
            goto LABEL_300;
          }
        }

        else if (type <= 13888)
        {
          if (type <= 13886 && type != 13000 && type != 13001)
          {
            goto LABEL_300;
          }
        }

        else if (type <= 14029)
        {
          if (type != 13889 && type != 14029)
          {
            goto LABEL_300;
          }
        }

        else if (type != 14030 && type != 14709 && type != 14710)
        {
          goto LABEL_300;
        }

        goto LABEL_299;
      }

      switch(type)
      {
        case 0x1E91u:
        case 0x1E92u:
        case 0x1E93u:
        case 0x1E94u:
        case 0x1E95u:
        case 0x1E96u:
        case 0x1F11u:
        case 0x1F12u:
        case 0x1F13u:
        case 0x1F14u:
        case 0x1F15u:
        case 0x1F16u:
        case 0x1F17u:
        case 0x1F18u:
        case 0x1F19u:
        case 0x1F1Au:
        case 0x1F1Bu:
        case 0x1F1Cu:
        case 0x1F1Du:
        case 0x1F1Eu:
        case 0x1F1Fu:
        case 0x1F20u:
        case 0x1F21u:
        case 0x1F22u:
        case 0x1F23u:
        case 0x1F24u:
        case 0x1F25u:
        case 0x1F26u:
        case 0x1F27u:
        case 0x1F28u:
        case 0x1F29u:
        case 0x1F2Au:
        case 0x1F2Bu:
        case 0x1F2Cu:
        case 0x1F2Du:
        case 0x1F2Eu:
        case 0x1F2Fu:
        case 0x1F30u:
        case 0x1F31u:
        case 0x1F32u:
        case 0x1F33u:
        case 0x1F34u:
        case 0x1F35u:
        case 0x1F36u:
        case 0x1F37u:
        case 0x1F38u:
        case 0x1F39u:
        case 0x1F3Au:
        case 0x1F3Bu:
        case 0x1F3Cu:
        case 0x1F3Du:
        case 0x1F3Eu:
        case 0x1F3Fu:
        case 0x1F40u:
        case 0x1F41u:
        case 0x1F42u:
        case 0x1F43u:
        case 0x1F44u:
        case 0x1F45u:
        case 0x1F46u:
        case 0x1F47u:
        case 0x1F48u:
        case 0x1F49u:
        case 0x1F4Au:
        case 0x1F4Bu:
        case 0x1F4Cu:
        case 0x1F4Du:
        case 0x1F4Eu:
        case 0x1F4Fu:
        case 0x1F50u:
        case 0x1F51u:
        case 0x1F52u:
        case 0x1F53u:
        case 0x1F54u:
        case 0x1F55u:
        case 0x1F56u:
        case 0x1F57u:
        case 0x1F58u:
        case 0x1F59u:
        case 0x1F5Au:
        case 0x1F5Bu:
        case 0x1F5Cu:
        case 0x1F5Du:
        case 0x1F5Eu:
        case 0x1F5Fu:
        case 0x1F60u:
        case 0x1F61u:
        case 0x1F62u:
        case 0x1F63u:
        case 0x1F64u:
        case 0x1F65u:
          goto LABEL_299;
        default:
          break;
      }
    }
  }

  else if (type > 19678)
  {
    if (type > 25885)
    {
      if (type > 26514)
      {
        if (type != 26515 && type != 26516 && type != 26517)
        {
          goto LABEL_300;
        }
      }

      else if (type != 25886 && type != 25887 && type != 25888)
      {
        goto LABEL_300;
      }

      goto LABEL_299;
    }

    switch(type)
    {
      case 0x4CDFu:
      case 0x4CE0u:
      case 0x4CE1u:
      case 0x4CE2u:
      case 0x4CE3u:
      case 0x4CE4u:
      case 0x4CE5u:
      case 0x4CE6u:
      case 0x4CE7u:
      case 0x4CE8u:
      case 0x4CE9u:
      case 0x4CEAu:
      case 0x4CEBu:
      case 0x4CECu:
      case 0x4CEDu:
      case 0x4CEEu:
      case 0x4CEFu:
      case 0x4CF0u:
      case 0x4CF1u:
      case 0x4CF2u:
      case 0x4CF3u:
      case 0x4CF4u:
      case 0x4CF5u:
      case 0x4CF6u:
      case 0x4CF8u:
      case 0x4CF9u:
      case 0x4D01u:
      case 0x4D16u:
      case 0x4D17u:
      case 0x4D18u:
      case 0x4D19u:
      case 0x4D1Au:
      case 0x4D1Bu:
      case 0x4D1Cu:
      case 0x4D20u:
      case 0x4D21u:
      case 0x4D22u:
      case 0x4D23u:
      case 0x4D24u:
      case 0x4D25u:
      case 0x4D26u:
      case 0x4D27u:
      case 0x4D28u:
      case 0x4D29u:
      case 0x4D2Au:
      case 0x4D2Bu:
      case 0x4D2Cu:
      case 0x4D2Du:
      case 0x4D2Eu:
      case 0x4D2Fu:
      case 0x4D30u:
      case 0x4D31u:
      case 0x4D32u:
      case 0x4D33u:
      case 0x4D34u:
      case 0x4D35u:
      case 0x4D37u:
      case 0x4D39u:
      case 0x4D3Du:
      case 0x4D3Eu:
      case 0x4D3Fu:
      case 0x4D40u:
      case 0x4D41u:
        goto LABEL_299;
      default:
        break;
    }
  }

  else
  {
    if (type > 17035)
    {
      if (type > 17041)
      {
        switch(type)
        {
          case 0x486Du:
          case 0x486Eu:
          case 0x486Fu:
          case 0x4870u:
          case 0x4871u:
          case 0x4872u:
          case 0x4873u:
          case 0x4874u:
          case 0x4875u:
          case 0x4876u:
          case 0x4877u:
          case 0x4878u:
          case 0x4879u:
          case 0x487Au:
          case 0x487Bu:
          case 0x487Cu:
          case 0x487Du:
          case 0x487Eu:
          case 0x487Fu:
          case 0x4880u:
          case 0x4881u:
          case 0x4882u:
          case 0x4883u:
          case 0x4884u:
          case 0x4885u:
          case 0x4886u:
          case 0x4887u:
          case 0x4888u:
            goto LABEL_299;
          default:
            if (type == 17042 || type == 17043)
            {
              goto LABEL_299;
            }

            break;
        }

        goto LABEL_300;
      }

      if (type > 17038)
      {
        if (type == 17039 || type == 17040)
        {
          goto LABEL_299;
        }

        v10 = 17041;
      }

      else
      {
        if (type == 17036 || type == 17037)
        {
          goto LABEL_299;
        }

        v10 = 17038;
      }

LABEL_285:
      if (type != v10)
      {
        goto LABEL_300;
      }

      goto LABEL_299;
    }

    if (type <= 15761)
    {
      if (type <= 14820)
      {
        if (type != 14711 && type != 14819 && type != 14820)
        {
          goto LABEL_300;
        }
      }

      else if (type > 15575)
      {
        if (type != 15576 && type != 15577)
        {
          goto LABEL_300;
        }
      }

      else if (type != 14821 && type != 15575)
      {
        goto LABEL_300;
      }

      goto LABEL_299;
    }

    if (type > 16253)
    {
      if (type <= 16256)
      {
        goto LABEL_299;
      }

      v10 = 17035;
      goto LABEL_285;
    }

    switch(type)
    {
      case 0x3D92u:
      case 0x3D93u:
      case 0x3D98u:
      case 0x3D99u:
      case 0x3D9Au:
      case 0x3D9Bu:
      case 0x3D9Cu:
      case 0x3D9Du:
      case 0x3D9Eu:
      case 0x3D9Fu:
      case 0x3DA0u:
      case 0x3DA1u:
      case 0x3DA2u:
      case 0x3DA3u:
      case 0x3DA4u:
      case 0x3DA5u:
      case 0x3DA6u:
      case 0x3DA7u:
      case 0x3DA8u:
      case 0x3DA9u:
      case 0x3DAAu:
      case 0x3DABu:
      case 0x3DACu:
      case 0x3DADu:
        goto LABEL_299;
      default:
        break;
    }
  }

LABEL_300:

  return v4;
}

+ (Class)itemMessageSubclassForItemType:(unsigned __int16)type
{
  v4 = 0;
  if (type <= 29396)
  {
    if (type <= 14024)
    {
      if (type > 7821)
      {
        if (type > 12009)
        {
          if (type == 12010 || type == 12996 || type == 13884)
          {
            goto LABEL_88;
          }
        }

        else if (type == 7822 || type == 7952 || type == 8194)
        {
          goto LABEL_88;
        }
      }

      else if (type > 7555)
      {
        if (type == 7556 || type == 7690 || type == 7719)
        {
          goto LABEL_88;
        }
      }

      else if (type == 800 || type == 3615 || type == 5595)
      {
        goto LABEL_88;
      }
    }

    else if (type <= 17033)
    {
      if (type > 15571)
      {
        if (type == 15572 || type == 15757 || type == 16251)
        {
          goto LABEL_88;
        }
      }

      else if (type == 14025 || type == 14706 || type == 14816)
      {
        goto LABEL_88;
      }
    }

    else if (type <= 25882)
    {
      if (type == 17034 || type == 18540 || type == 19668)
      {
        goto LABEL_88;
      }
    }

    else if (type > 27121)
    {
      if (type == 27122 || type == 27325)
      {
        goto LABEL_88;
      }
    }

    else if (type == 25883 || type == 26512)
    {
      goto LABEL_88;
    }
  }

  else if (type > 46119)
  {
    if (type <= 54384)
    {
      if (type > 53481)
      {
        if (type == 53482 || type == 53601 || type == 53614)
        {
          goto LABEL_88;
        }
      }

      else if (type == 46120 || type == 47341 || type == 49066)
      {
        goto LABEL_88;
      }
    }

    else if (type <= 61351)
    {
      if (type == 54385 || type == 56510 || type == 59688)
      {
        goto LABEL_88;
      }
    }

    else if (type > 62157)
    {
      if (type == 62158 || type == 63369)
      {
        goto LABEL_88;
      }
    }

    else if (type == 61352 || type == 61509)
    {
      goto LABEL_88;
    }
  }

  else if (type <= 38250)
  {
    if (type > 34306)
    {
      if (type == 34307 || type == 36059 || type == 36434)
      {
        goto LABEL_88;
      }
    }

    else if (type == 29397 || type == 30598 || type == 32965)
    {
      goto LABEL_88;
    }
  }

  else if (type <= 42183)
  {
    if (type == 38251 || type == 39425 || type == 40568)
    {
      goto LABEL_88;
    }
  }

  else if (type > 44529)
  {
    if (type == 44530 || type == 44935)
    {
      goto LABEL_88;
    }
  }

  else if (type == 42184 || type == 42611)
  {
LABEL_88:
    v4 = objc_opt_class();
  }

  return v4;
}

+ (Class)itemMessageSubclassForIdentifier:(unsigned __int16)identifier
{
  v4 = 0;
  if (identifier <= 27121)
  {
    if (identifier > 14708)
    {
      if (identifier > 19667)
      {
        if (identifier > 25882)
        {
          if (identifier > 26511)
          {
            if (identifier > 26515)
            {
              if (identifier != 26516 && identifier != 26517)
              {
                goto LABEL_371;
              }
            }

            else if (identifier != 26512 && identifier != 26515)
            {
              goto LABEL_371;
            }
          }

          else if (identifier > 25886)
          {
            if (identifier != 25887 && identifier != 25888)
            {
              goto LABEL_371;
            }
          }

          else if (identifier != 25883 && identifier != 25886)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        switch(identifier)
        {
          case 0x4CD4u:
          case 0x4CDFu:
          case 0x4CE0u:
          case 0x4CE1u:
          case 0x4CE2u:
          case 0x4CE3u:
          case 0x4CE4u:
          case 0x4CE5u:
          case 0x4CE6u:
          case 0x4CE7u:
          case 0x4CE8u:
          case 0x4CE9u:
          case 0x4CEAu:
          case 0x4CEBu:
          case 0x4CECu:
          case 0x4CEDu:
          case 0x4CEEu:
          case 0x4CEFu:
          case 0x4CF0u:
          case 0x4CF1u:
          case 0x4CF2u:
          case 0x4CF3u:
          case 0x4CF4u:
          case 0x4CF5u:
          case 0x4CF6u:
          case 0x4CF8u:
          case 0x4CF9u:
          case 0x4D01u:
          case 0x4D16u:
          case 0x4D17u:
          case 0x4D18u:
          case 0x4D19u:
          case 0x4D1Au:
          case 0x4D1Bu:
          case 0x4D1Cu:
          case 0x4D20u:
          case 0x4D21u:
          case 0x4D22u:
          case 0x4D23u:
          case 0x4D24u:
          case 0x4D25u:
          case 0x4D26u:
          case 0x4D27u:
          case 0x4D28u:
          case 0x4D29u:
          case 0x4D2Au:
          case 0x4D2Bu:
          case 0x4D2Cu:
          case 0x4D2Du:
          case 0x4D2Eu:
          case 0x4D2Fu:
          case 0x4D30u:
          case 0x4D31u:
          case 0x4D32u:
          case 0x4D33u:
          case 0x4D34u:
          case 0x4D35u:
          case 0x4D37u:
          case 0x4D39u:
          case 0x4D3Du:
          case 0x4D3Eu:
          case 0x4D3Fu:
          case 0x4D40u:
          case 0x4D41u:
            goto LABEL_370;
          default:
            goto LABEL_371;
        }

        goto LABEL_371;
      }

      if (identifier > 16255)
      {
        if (identifier <= 17041)
        {
          if (identifier <= 17036)
          {
            if (identifier > 17034)
            {
              if (identifier == 17035)
              {
                goto LABEL_370;
              }

              v9 = 17036;
            }

            else
            {
              if (identifier == 16256)
              {
                goto LABEL_370;
              }

              v9 = 17034;
            }
          }

          else if (identifier <= 17038)
          {
            if (identifier == 17037)
            {
              goto LABEL_370;
            }

            v9 = 17038;
          }

          else
          {
            if (identifier == 17039 || identifier == 17040)
            {
              goto LABEL_370;
            }

            v9 = 17041;
          }

          if (identifier != v9)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        switch(identifier)
        {
          case 0x486Cu:
          case 0x486Du:
          case 0x486Eu:
          case 0x486Fu:
          case 0x4870u:
          case 0x4871u:
          case 0x4872u:
          case 0x4873u:
          case 0x4874u:
          case 0x4875u:
          case 0x4876u:
          case 0x4877u:
          case 0x4878u:
          case 0x4879u:
          case 0x487Au:
          case 0x487Bu:
          case 0x487Cu:
          case 0x487Du:
          case 0x487Eu:
          case 0x487Fu:
          case 0x4880u:
          case 0x4881u:
          case 0x4882u:
          case 0x4883u:
          case 0x4884u:
          case 0x4885u:
          case 0x4886u:
          case 0x4887u:
          case 0x4888u:
            goto LABEL_370;
          default:
            if (identifier == 17042 || identifier == 17043)
            {
              goto LABEL_370;
            }

            break;
        }

        goto LABEL_371;
      }

      if (identifier > 15756)
      {
        if (identifier > 16250)
        {
          if (identifier != 16251 && identifier != 16254 && identifier != 16255)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        switch(identifier)
        {
          case 0x3D8Du:
          case 0x3D92u:
          case 0x3D93u:
          case 0x3D98u:
          case 0x3D99u:
          case 0x3D9Au:
          case 0x3D9Bu:
          case 0x3D9Cu:
          case 0x3D9Du:
          case 0x3D9Eu:
          case 0x3D9Fu:
          case 0x3DA0u:
          case 0x3DA1u:
          case 0x3DA2u:
          case 0x3DA3u:
          case 0x3DA4u:
          case 0x3DA5u:
          case 0x3DA6u:
          case 0x3DA7u:
          case 0x3DA8u:
          case 0x3DA9u:
          case 0x3DAAu:
          case 0x3DABu:
          case 0x3DACu:
          case 0x3DADu:
            goto LABEL_370;
          default:
            goto LABEL_371;
        }

        goto LABEL_371;
      }

      if (identifier > 14819)
      {
        if (identifier > 15574)
        {
          if (identifier != 15575 && identifier != 15576 && identifier != 15577)
          {
            goto LABEL_371;
          }
        }

        else if (identifier != 14820 && identifier != 14821 && identifier != 15572)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier > 14710)
      {
        if (identifier != 14711 && identifier != 14816 && identifier != 14819)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier == 14709)
      {
        goto LABEL_370;
      }

      v18 = 14710;
LABEL_345:
      if (identifier != v18)
      {
        goto LABEL_371;
      }

      goto LABEL_370;
    }

    if (identifier <= 7821)
    {
      if (identifier <= 5599)
      {
        if (identifier > 3618)
        {
          if (identifier <= 5594)
          {
            if (identifier != 3619 && identifier != 3620)
            {
              goto LABEL_371;
            }
          }

          else if (identifier != 5595 && identifier != 5598 && identifier != 5599)
          {
            goto LABEL_371;
          }
        }

        else if (identifier <= 803)
        {
          if (identifier != 800 && identifier != 803)
          {
            goto LABEL_371;
          }
        }

        else if (identifier != 804 && identifier != 805 && identifier != 3615)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      switch(identifier)
      {
        case 0x1E0Au:
        case 0x1E0Bu:
        case 0x1E0Cu:
        case 0x1E0Du:
        case 0x1E0Eu:
        case 0x1E0Fu:
        case 0x1E10u:
        case 0x1E11u:
        case 0x1E12u:
        case 0x1E13u:
        case 0x1E14u:
        case 0x1E15u:
        case 0x1E16u:
        case 0x1E17u:
        case 0x1E18u:
        case 0x1E19u:
        case 0x1E1Au:
        case 0x1E1Bu:
        case 0x1E1Cu:
        case 0x1E1Du:
        case 0x1E1Eu:
        case 0x1E27u:
        case 0x1E2Au:
        case 0x1E2Bu:
        case 0x1E2Cu:
          goto LABEL_370;
        case 0x1E1Fu:
        case 0x1E20u:
        case 0x1E21u:
        case 0x1E22u:
        case 0x1E23u:
        case 0x1E24u:
        case 0x1E25u:
        case 0x1E26u:
        case 0x1E28u:
        case 0x1E29u:
          goto LABEL_371;
        default:
          if (identifier == 5600 || identifier == 7556)
          {
            goto LABEL_370;
          }

          break;
      }

      goto LABEL_371;
    }

    if (identifier <= 8193)
    {
      switch(identifier)
      {
        case 0x1E8Eu:
        case 0x1E91u:
        case 0x1E92u:
        case 0x1E93u:
        case 0x1E94u:
        case 0x1E95u:
        case 0x1E96u:
        case 0x1F10u:
        case 0x1F11u:
        case 0x1F12u:
        case 0x1F13u:
        case 0x1F14u:
        case 0x1F15u:
        case 0x1F16u:
        case 0x1F17u:
        case 0x1F18u:
        case 0x1F19u:
        case 0x1F1Au:
        case 0x1F1Bu:
        case 0x1F1Cu:
        case 0x1F1Du:
        case 0x1F1Eu:
        case 0x1F1Fu:
        case 0x1F20u:
        case 0x1F21u:
        case 0x1F22u:
        case 0x1F23u:
        case 0x1F24u:
        case 0x1F25u:
        case 0x1F26u:
        case 0x1F27u:
        case 0x1F28u:
        case 0x1F29u:
        case 0x1F2Au:
        case 0x1F2Bu:
        case 0x1F2Cu:
        case 0x1F2Du:
        case 0x1F2Eu:
        case 0x1F2Fu:
        case 0x1F30u:
        case 0x1F31u:
        case 0x1F32u:
        case 0x1F33u:
        case 0x1F34u:
        case 0x1F35u:
        case 0x1F36u:
        case 0x1F37u:
        case 0x1F38u:
        case 0x1F39u:
        case 0x1F3Au:
        case 0x1F3Bu:
        case 0x1F3Cu:
        case 0x1F3Du:
        case 0x1F3Eu:
        case 0x1F3Fu:
        case 0x1F40u:
        case 0x1F41u:
        case 0x1F42u:
        case 0x1F43u:
        case 0x1F44u:
        case 0x1F45u:
        case 0x1F46u:
        case 0x1F47u:
        case 0x1F48u:
        case 0x1F49u:
        case 0x1F4Au:
        case 0x1F4Bu:
        case 0x1F4Cu:
        case 0x1F4Du:
        case 0x1F4Eu:
        case 0x1F4Fu:
        case 0x1F50u:
        case 0x1F51u:
        case 0x1F52u:
        case 0x1F53u:
        case 0x1F54u:
        case 0x1F55u:
        case 0x1F56u:
        case 0x1F57u:
        case 0x1F58u:
        case 0x1F59u:
        case 0x1F5Au:
        case 0x1F5Bu:
        case 0x1F5Cu:
        case 0x1F5Du:
        case 0x1F5Eu:
        case 0x1F5Fu:
        case 0x1F60u:
        case 0x1F61u:
        case 0x1F62u:
        case 0x1F63u:
        case 0x1F64u:
        case 0x1F65u:
          goto LABEL_370;
        default:
          goto LABEL_371;
      }

      goto LABEL_371;
    }

    if (identifier > 12998)
    {
      if (identifier > 13887)
      {
        if (identifier <= 14028)
        {
          if (identifier != 13888 && identifier != 13889 && identifier != 14025)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier == 14029 || identifier == 14030)
        {
          goto LABEL_370;
        }

        v18 = 14706;
        goto LABEL_345;
      }

      if (identifier > 13000)
      {
        if (identifier != 13001 && identifier != 13884 && identifier != 13887)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier == 12999)
      {
        goto LABEL_370;
      }

      v17 = 13000;
LABEL_349:
      if (identifier != v17)
      {
        goto LABEL_371;
      }

      goto LABEL_370;
    }

    if (identifier > 12013)
    {
      if (identifier > 12015)
      {
        if (identifier == 12016 || identifier == 12017)
        {
          goto LABEL_370;
        }

        v17 = 12996;
        goto LABEL_349;
      }

      if (identifier == 12014)
      {
        goto LABEL_370;
      }

      v11 = 12015;
    }

    else
    {
      if (identifier <= 8198)
      {
        if (identifier != 8194 && identifier != 8198)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier == 8199 || identifier == 12010)
      {
        goto LABEL_370;
      }

      v11 = 12013;
    }

    if (identifier != v11)
    {
      goto LABEL_371;
    }

    goto LABEL_370;
  }

  if (identifier <= 30597)
  {
    switch(identifier)
    {
      case 0x69F2u:
      case 0x69F6u:
      case 0x69F7u:
      case 0x69F8u:
      case 0x69FBu:
      case 0x69FCu:
      case 0x6ABDu:
      case 0x6ABEu:
      case 0x6ABFu:
      case 0x6AC0u:
      case 0x6AC1u:
      case 0x6AC2u:
      case 0x6AC3u:
      case 0x6AC4u:
      case 0x6AC5u:
      case 0x6AC6u:
      case 0x6AC7u:
      case 0x6AC8u:
      case 0x6AC9u:
      case 0x6ACAu:
      case 0x6ACBu:
      case 0x6ACCu:
      case 0x6ACDu:
      case 0x6ACEu:
      case 0x6ACFu:
      case 0x6AD0u:
      case 0x6AD1u:
      case 0x6AD2u:
      case 0x6AD3u:
      case 0x6AD4u:
      case 0x6AD5u:
      case 0x6AD6u:
      case 0x6AD7u:
      case 0x6AD8u:
      case 0x6AD9u:
      case 0x6ADAu:
      case 0x6ADBu:
      case 0x6ADCu:
      case 0x6ADDu:
      case 0x6ADEu:
      case 0x6ADFu:
      case 0x6AE0u:
      case 0x6AE1u:
      case 0x6AE2u:
      case 0x6AE3u:
      case 0x6AE4u:
      case 0x6AE5u:
      case 0x6AE6u:
      case 0x6AE7u:
      case 0x6AE8u:
      case 0x6AE9u:
      case 0x6AEAu:
      case 0x6AEBu:
      case 0x6AECu:
      case 0x6AEDu:
      case 0x6AEEu:
      case 0x6AEFu:
      case 0x6AF0u:
      case 0x6AF1u:
      case 0x6AF2u:
      case 0x6AF3u:
      case 0x6AF4u:
      case 0x6AF5u:
      case 0x6AF6u:
      case 0x6AF7u:
      case 0x6AF8u:
      case 0x6AF9u:
      case 0x6AFAu:
      case 0x6AFBu:
      case 0x6AFCu:
      case 0x6AFDu:
      case 0x6AFEu:
      case 0x6AFFu:
      case 0x6B00u:
      case 0x6B01u:
      case 0x6B02u:
      case 0x6B03u:
      case 0x6B04u:
      case 0x6B05u:
      case 0x6B06u:
      case 0x6B07u:
      case 0x6B08u:
      case 0x6B09u:
      case 0x6B0Au:
      case 0x6B0Bu:
      case 0x6B0Cu:
      case 0x6B0Du:
      case 0x6B0Eu:
      case 0x6B0Fu:
      case 0x6B10u:
      case 0x6B11u:
      case 0x6B12u:
      case 0x6B13u:
      case 0x6B14u:
      case 0x6B15u:
      case 0x6B16u:
      case 0x6B17u:
      case 0x6B18u:
      case 0x6B19u:
      case 0x6B1Au:
      case 0x6B1Bu:
      case 0x6B1Cu:
      case 0x6B1Du:
      case 0x6B1Eu:
      case 0x6B1Fu:
      case 0x6B20u:
      case 0x6B21u:
      case 0x6B22u:
      case 0x6B23u:
      case 0x6B24u:
      case 0x6B25u:
      case 0x6B26u:
      case 0x6B27u:
      case 0x6B28u:
      case 0x6B29u:
      case 0x6B2Au:
      case 0x6B2Bu:
      case 0x6B2Cu:
      case 0x6B2Du:
      case 0x6B2Eu:
      case 0x6B2Fu:
      case 0x6B30u:
      case 0x6B31u:
      case 0x6B32u:
      case 0x6B33u:
      case 0x6B34u:
      case 0x6B35u:
      case 0x6B36u:
      case 0x6B37u:
      case 0x6B38u:
      case 0x6B39u:
      case 0x6B3Au:
      case 0x6B3Bu:
      case 0x6B3Cu:
      case 0x6B3Du:
      case 0x6B3Eu:
      case 0x6B3Fu:
      case 0x6B40u:
      case 0x6B41u:
      case 0x6B42u:
      case 0x6B43u:
      case 0x6B44u:
      case 0x6B45u:
      case 0x6B46u:
      case 0x6B47u:
      case 0x6B48u:
      case 0x6B49u:
      case 0x6B4Au:
      case 0x6B4Bu:
      case 0x6B4Cu:
      case 0x6B4Du:
      case 0x6B4Eu:
      case 0x6B4Fu:
      case 0x6B50u:
      case 0x6B51u:
      case 0x6B52u:
      case 0x6B53u:
      case 0x6B54u:
      case 0x6B55u:
      case 0x6B56u:
      case 0x6B57u:
      case 0x6B58u:
      case 0x6B59u:
      case 0x6B5Au:
      case 0x6B5Bu:
      case 0x6B5Cu:
      case 0x6B5Du:
      case 0x6B5Eu:
      case 0x6B5Fu:
      case 0x6B60u:
      case 0x6B61u:
      case 0x6B62u:
      case 0x6B63u:
      case 0x6B64u:
      case 0x6B65u:
      case 0x6B66u:
      case 0x6B67u:
      case 0x6B68u:
      case 0x6B69u:
      case 0x6B6Au:
      case 0x6B6Bu:
      case 0x6B6Cu:
      case 0x6B6Du:
      case 0x6B6Eu:
      case 0x6B6Fu:
      case 0x6B70u:
      case 0x6B71u:
      case 0x6B72u:
      case 0x6B73u:
      case 0x6B74u:
      case 0x6B75u:
      case 0x6B76u:
        goto LABEL_370;
      case 0x69F3u:
      case 0x69F4u:
      case 0x69F5u:
      case 0x69F9u:
      case 0x69FAu:
      case 0x69FDu:
      case 0x69FEu:
      case 0x69FFu:
      case 0x6A00u:
      case 0x6A01u:
      case 0x6A02u:
      case 0x6A03u:
      case 0x6A04u:
      case 0x6A05u:
      case 0x6A06u:
      case 0x6A07u:
      case 0x6A08u:
      case 0x6A09u:
      case 0x6A0Au:
      case 0x6A0Bu:
      case 0x6A0Cu:
      case 0x6A0Du:
      case 0x6A0Eu:
      case 0x6A0Fu:
      case 0x6A10u:
      case 0x6A11u:
      case 0x6A12u:
      case 0x6A13u:
      case 0x6A14u:
      case 0x6A15u:
      case 0x6A16u:
      case 0x6A17u:
      case 0x6A18u:
      case 0x6A19u:
      case 0x6A1Au:
      case 0x6A1Bu:
      case 0x6A1Cu:
      case 0x6A1Du:
      case 0x6A1Eu:
      case 0x6A1Fu:
      case 0x6A20u:
      case 0x6A21u:
      case 0x6A22u:
      case 0x6A23u:
      case 0x6A24u:
      case 0x6A25u:
      case 0x6A26u:
      case 0x6A27u:
      case 0x6A28u:
      case 0x6A29u:
      case 0x6A2Au:
      case 0x6A2Bu:
      case 0x6A2Cu:
      case 0x6A2Du:
      case 0x6A2Eu:
      case 0x6A2Fu:
      case 0x6A30u:
      case 0x6A31u:
      case 0x6A32u:
      case 0x6A33u:
      case 0x6A34u:
      case 0x6A35u:
      case 0x6A36u:
      case 0x6A37u:
      case 0x6A38u:
      case 0x6A39u:
      case 0x6A3Au:
      case 0x6A3Bu:
      case 0x6A3Cu:
      case 0x6A3Du:
      case 0x6A3Eu:
      case 0x6A3Fu:
      case 0x6A40u:
      case 0x6A41u:
      case 0x6A42u:
      case 0x6A43u:
      case 0x6A44u:
      case 0x6A45u:
      case 0x6A46u:
      case 0x6A47u:
      case 0x6A48u:
      case 0x6A49u:
      case 0x6A4Au:
      case 0x6A4Bu:
      case 0x6A4Cu:
      case 0x6A4Du:
      case 0x6A4Eu:
      case 0x6A4Fu:
      case 0x6A50u:
      case 0x6A51u:
      case 0x6A52u:
      case 0x6A53u:
      case 0x6A54u:
      case 0x6A55u:
      case 0x6A56u:
      case 0x6A57u:
      case 0x6A58u:
      case 0x6A59u:
      case 0x6A5Au:
      case 0x6A5Bu:
      case 0x6A5Cu:
      case 0x6A5Du:
      case 0x6A5Eu:
      case 0x6A5Fu:
      case 0x6A60u:
      case 0x6A61u:
      case 0x6A62u:
      case 0x6A63u:
      case 0x6A64u:
      case 0x6A65u:
      case 0x6A66u:
      case 0x6A67u:
      case 0x6A68u:
      case 0x6A69u:
      case 0x6A6Au:
      case 0x6A6Bu:
      case 0x6A6Cu:
      case 0x6A6Du:
      case 0x6A6Eu:
      case 0x6A6Fu:
      case 0x6A70u:
      case 0x6A71u:
      case 0x6A72u:
      case 0x6A73u:
      case 0x6A74u:
      case 0x6A75u:
      case 0x6A76u:
      case 0x6A77u:
      case 0x6A78u:
      case 0x6A79u:
      case 0x6A7Au:
      case 0x6A7Bu:
      case 0x6A7Cu:
      case 0x6A7Du:
      case 0x6A7Eu:
      case 0x6A7Fu:
      case 0x6A80u:
      case 0x6A81u:
      case 0x6A82u:
      case 0x6A83u:
      case 0x6A84u:
      case 0x6A85u:
      case 0x6A86u:
      case 0x6A87u:
      case 0x6A88u:
      case 0x6A89u:
      case 0x6A8Au:
      case 0x6A8Bu:
      case 0x6A8Cu:
      case 0x6A8Du:
      case 0x6A8Eu:
      case 0x6A8Fu:
      case 0x6A90u:
      case 0x6A91u:
      case 0x6A92u:
      case 0x6A93u:
      case 0x6A94u:
      case 0x6A95u:
      case 0x6A96u:
      case 0x6A97u:
      case 0x6A98u:
      case 0x6A99u:
      case 0x6A9Au:
      case 0x6A9Bu:
      case 0x6A9Cu:
      case 0x6A9Du:
      case 0x6A9Eu:
      case 0x6A9Fu:
      case 0x6AA0u:
      case 0x6AA1u:
      case 0x6AA2u:
      case 0x6AA3u:
      case 0x6AA4u:
      case 0x6AA5u:
      case 0x6AA6u:
      case 0x6AA7u:
      case 0x6AA8u:
      case 0x6AA9u:
      case 0x6AAAu:
      case 0x6AABu:
      case 0x6AACu:
      case 0x6AADu:
      case 0x6AAEu:
      case 0x6AAFu:
      case 0x6AB0u:
      case 0x6AB1u:
      case 0x6AB2u:
      case 0x6AB3u:
      case 0x6AB4u:
      case 0x6AB5u:
      case 0x6AB6u:
      case 0x6AB7u:
      case 0x6AB8u:
      case 0x6AB9u:
      case 0x6ABAu:
      case 0x6ABBu:
      case 0x6ABCu:
        goto LABEL_371;
      default:
        if ((identifier - 29397) < 3 || identifier == 29400)
        {
          goto LABEL_370;
        }

        break;
    }

    goto LABEL_371;
  }

  if (identifier <= 46119)
  {
    if (identifier > 39433)
    {
      if (identifier > 42611)
      {
        if (identifier > 42621)
        {
          if (identifier <= 44533)
          {
            if (identifier <= 44530)
            {
              if (identifier == 42622)
              {
                goto LABEL_370;
              }

              v10 = 44530;
            }

            else
            {
              if (identifier == 44531 || identifier == 44532)
              {
                goto LABEL_370;
              }

              v10 = 44533;
            }

            if (identifier != v10)
            {
              goto LABEL_371;
            }

            goto LABEL_370;
          }

          if (identifier <= 44937)
          {
            if (identifier != 44534 && identifier != 44935)
            {
              goto LABEL_371;
            }
          }

          else if (identifier != 44938 && identifier != 44939 && identifier != 44940)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier > 42616)
        {
          if (identifier <= 42618)
          {
            if (identifier == 42617)
            {
              goto LABEL_370;
            }

            v5 = 42618;
          }

          else
          {
            if (identifier == 42619 || identifier == 42620)
            {
              goto LABEL_370;
            }

            v5 = 42621;
          }
        }

        else if (identifier <= 42613)
        {
          if (identifier == 42612)
          {
            goto LABEL_370;
          }

          v5 = 42613;
        }

        else
        {
          if (identifier == 42614 || identifier == 42615)
          {
            goto LABEL_370;
          }

          v5 = 42616;
        }

LABEL_313:
        if (identifier != v5)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier <= 40574)
      {
        if (identifier <= 40569)
        {
          if (identifier <= 40567)
          {
            if (identifier != 39434 && identifier != 39435)
            {
              goto LABEL_371;
            }

            goto LABEL_370;
          }

          if (identifier == 40568)
          {
            goto LABEL_370;
          }

          v13 = 40569;
        }

        else if (identifier <= 40571)
        {
          if (identifier == 40570)
          {
            goto LABEL_370;
          }

          v13 = 40571;
        }

        else
        {
          if (identifier == 40572 || identifier == 40573)
          {
            goto LABEL_370;
          }

          v13 = 40574;
        }

        if (identifier != v13)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier > 42186)
      {
        if (identifier > 42188)
        {
          if (identifier == 42189 || identifier == 42190)
          {
            goto LABEL_370;
          }

          v5 = 42611;
          goto LABEL_313;
        }

        if (identifier == 42187)
        {
          goto LABEL_370;
        }

        v7 = 42188;
      }

      else
      {
        if (identifier <= 42183)
        {
          if (identifier != 40575 && identifier != 40576)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier == 42184 || identifier == 42185)
        {
          goto LABEL_370;
        }

        v7 = 42186;
      }

      if (identifier != v7)
      {
        goto LABEL_371;
      }

      goto LABEL_370;
    }

    if (identifier > 36440)
    {
      if (identifier > 38255)
      {
        if (identifier > 39428)
        {
          if (identifier <= 39430)
          {
            if (identifier == 39429)
            {
              goto LABEL_370;
            }

            v6 = 39430;
          }

          else
          {
            if (identifier == 39431 || identifier == 39432)
            {
              goto LABEL_370;
            }

            v6 = 39433;
          }
        }

        else if (identifier <= 39425)
        {
          if (identifier == 38256)
          {
            goto LABEL_370;
          }

          v6 = 39425;
        }

        else
        {
          if (identifier == 39426 || identifier == 39427)
          {
            goto LABEL_370;
          }

          v6 = 39428;
        }

        if (identifier != v6)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier > 36444)
      {
        if (identifier <= 38250)
        {
          if (identifier != 36445 && identifier != 36446)
          {
            goto LABEL_371;
          }
        }

        else if (identifier != 38251 && identifier != 38254 && identifier != 38255)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier > 36442)
      {
        if (identifier == 36443)
        {
          goto LABEL_370;
        }

        v14 = 36444;
      }

      else
      {
        if (identifier == 36441)
        {
          goto LABEL_370;
        }

        v14 = 36442;
      }
    }

    else
    {
      if (identifier <= 34310)
      {
        if (identifier <= 32964)
        {
          if (identifier > 30601)
          {
            if (identifier != 30602 && identifier != 30603)
            {
              goto LABEL_371;
            }
          }

          else if (identifier != 30598 && identifier != 30601)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier <= 32968)
        {
          if (identifier != 32965 && identifier != 32968)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier == 32969 || identifier == 32970)
        {
          goto LABEL_370;
        }

        v12 = 34307;
LABEL_281:
        if (identifier != v12)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier <= 36433)
      {
        if (identifier > 36058)
        {
          if (identifier != 36059 && identifier != 36063 && identifier != 36064)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier == 34311)
        {
          goto LABEL_370;
        }

        v12 = 34312;
        goto LABEL_281;
      }

      if (identifier <= 36437)
      {
        if (identifier == 36434)
        {
          goto LABEL_370;
        }

        v14 = 36437;
      }

      else
      {
        if (identifier == 36438 || identifier == 36439)
        {
          goto LABEL_370;
        }

        v14 = 36440;
      }
    }

    if (identifier != v14)
    {
      goto LABEL_371;
    }

    goto LABEL_370;
  }

  if (identifier > 53600)
  {
    if (identifier > 59690)
    {
      if (identifier <= 62158)
      {
        if (identifier <= 61508)
        {
          if (identifier <= 61354)
          {
            if (identifier != 59691 && identifier != 61352)
            {
              goto LABEL_371;
            }
          }

          else if (identifier != 61355 && identifier != 61356 && identifier != 61357)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier <= 61512)
        {
          if (identifier != 61509 && identifier != 61512)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier == 61513 || identifier == 61514)
        {
          goto LABEL_370;
        }

        v15 = 62158;
      }

      else
      {
        if (identifier > 62163)
        {
          if (identifier > 63371)
          {
            if (identifier != 63372 && identifier != 63373 && identifier != 63374)
            {
              goto LABEL_371;
            }
          }

          else if (identifier != 62164 && identifier != 62165 && identifier != 63369)
          {
            goto LABEL_371;
          }

          goto LABEL_370;
        }

        if (identifier <= 62160)
        {
          if (identifier == 62159)
          {
            goto LABEL_370;
          }

          v15 = 62160;
        }

        else
        {
          if (identifier == 62161 || identifier == 62162)
          {
            goto LABEL_370;
          }

          v15 = 62163;
        }
      }

      if (identifier != v15)
      {
        goto LABEL_371;
      }

      goto LABEL_370;
    }

    if (identifier <= 54389)
    {
      if (identifier > 53616)
      {
        if (identifier <= 54384)
        {
          if (identifier != 53617 && identifier != 53618)
          {
            goto LABEL_371;
          }
        }

        else if (identifier != 54385 && identifier != 54388 && identifier != 54389)
        {
          goto LABEL_371;
        }
      }

      else if (identifier <= 53604)
      {
        if (identifier != 53601 && identifier != 53604)
        {
          goto LABEL_371;
        }
      }

      else if (identifier != 53605 && identifier != 53606 && identifier != 53614)
      {
        goto LABEL_371;
      }
    }

    else
    {
      if (identifier <= 56513)
      {
        if (identifier <= 56510)
        {
          if (identifier == 54390)
          {
            goto LABEL_370;
          }

          v16 = 56510;
        }

        else
        {
          if (identifier == 56511 || identifier == 56512)
          {
            goto LABEL_370;
          }

          v16 = 56513;
        }

        if (identifier != v16)
        {
          goto LABEL_371;
        }

        goto LABEL_370;
      }

      if (identifier <= 59687 && identifier != 56514 && identifier != 56515 && identifier != 56516)
      {
        goto LABEL_371;
      }
    }

LABEL_370:
    v4 = objc_opt_class();
    goto LABEL_371;
  }

  if (identifier > 49065)
  {
    if (identifier <= 49072)
    {
      if (identifier <= 49069)
      {
        if (identifier == 49066)
        {
          goto LABEL_370;
        }

        v8 = 49069;
      }

      else
      {
        if (identifier == 49070 || identifier == 49071)
        {
          goto LABEL_370;
        }

        v8 = 49072;
      }

      if (identifier != v8)
      {
        goto LABEL_371;
      }

      goto LABEL_370;
    }

    if (identifier > 53484)
    {
      if (identifier != 53485 && identifier != 53486 && identifier != 53487)
      {
        goto LABEL_371;
      }
    }

    else if (identifier != 49073 && identifier != 49074 && identifier != 53482)
    {
      goto LABEL_371;
    }

    goto LABEL_370;
  }

  switch(identifier)
  {
    case 0xB8EDu:
    case 0xB8EFu:
    case 0xB8F0u:
    case 0xB8F1u:
    case 0xB8F3u:
    case 0xB8F4u:
    case 0xB8F5u:
    case 0xB8F8u:
    case 0xB8F9u:
    case 0xB8FAu:
    case 0xB8FBu:
    case 0xB8FCu:
    case 0xB8FDu:
    case 0xB8FEu:
    case 0xB8FFu:
    case 0xB900u:
    case 0xB901u:
      goto LABEL_370;
    case 0xB8EEu:
    case 0xB8F2u:
    case 0xB8F6u:
    case 0xB8F7u:
      break;
    default:
      switch(identifier)
      {
        case 0xB428u:
        case 0xB429u:
        case 0xB42Au:
        case 0xB42Bu:
        case 0xB42Cu:
        case 0xB42Du:
        case 0xB42Eu:
        case 0xB42Fu:
        case 0xB430u:
        case 0xB431u:
        case 0xB432u:
        case 0xB433u:
        case 0xB434u:
          goto LABEL_370;
        default:
          goto LABEL_371;
      }
  }

LABEL_371:

  return v4;
}

@end